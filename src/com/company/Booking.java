package com.company;

import com.company.Database.DatabaseService;

/**
 * Responsible for creating, updating or deleting bookings in our database as well as getting a customers or bookings
 * info and printing it out on the console.
 *
 * @author Benjamin Nilsson
 */
public class Booking {
    private DatabaseService databaseService;
    private Customer customer;
    private String checkInDate;
    private String checkOutDate;
    private int pool;
    private int kidsClub;
    private int eveningEntertainment;
    private int restaurant;
    private int distanceBeach;
    private int distanceCentre;

    public Booking() {
        databaseService = new DatabaseService();
        customer = new Customer();
        databaseService.connect();
    }

    /**
     * Get a customer's bookings.
     */
    public void getAUsersBookings() {
        int customerID = Dialogs.promptInt("CustomerID: ");
        databaseService.getACustomersBookings(customerID);
    }

    /**
     * Cancel a customer's booking.
     */
    public void cancelBooking() {
        while (true) {
            int bookingID = Dialogs.promptInt("Please provide the BookingID:");
            int customerID = Dialogs.promptInt("Please provide the CustomerID:");
            int deleted = databaseService.cancelBooking(bookingID, customerID);
            if (deleted == 1)
                break;

            System.out.println("No such booking exists!");
            int choice = Dialogs.promptInt("[1] Try again      [0] Back");
            if (choice == 0)
                return;

        }

        System.out.println("The booking was successfully cancelled!");
    }

    /**
     * Finds available rooms based on the input and prints them out to the console.
     * @return a string saying the booking was successful if at least one room was found or
     * an empty string if no room was found.
     */
    public String findAvailableRooms() {
        checkInDate = Dialogs.prompt("Check In Date (yyyy-mm-dd): ");
        checkOutDate = Dialogs.prompt("Check Out Date (yyyy-mm-dd): ");
        pool = Dialogs.promptInt("Pool: [1] Yes   [0] No", 0, 1);
        kidsClub = Dialogs.promptInt("Kids Club: [1] Yes   [0] No", 0, 1);
        eveningEntertainment = Dialogs.promptInt("EveningEntertainment? [1] Yes   [0] No", 0, 1);
        restaurant = Dialogs.promptInt("Restaurant? [1] Yes   [0] No", 0, 1);
        distanceBeach = Dialogs.promptInt("Distance to beach (km): ");
        distanceCentre = Dialogs.promptInt("Distance to Centre (km): ");


        String availableRooms = databaseService.findAvailableRooms(
                checkInDate, checkOutDate, pool, kidsClub, eveningEntertainment,
                restaurant, distanceBeach, distanceCentre);

        return availableRooms;
    }

    /**
     * Finds available rooms and orders them by price and prints them out to the console.
     */
    public void availableRoomsByPrice() {
        databaseService.availableRoomsByPrice(
                checkInDate, checkOutDate, pool, kidsClub, eveningEntertainment,
                restaurant, distanceBeach, distanceCentre);
    }

    /**
     * Finds available rooms and orders them by the hotel's rating and prints them out to the console.
     */
    public void availableRoomsByRating() {
        databaseService.availableRoomsByRating(
                checkInDate, checkOutDate, pool, kidsClub, eveningEntertainment,
                restaurant, distanceBeach, distanceCentre);
    }

    /**
     * Asks the user for the details regarding a booking, calculates the price of the booking,
     * and then add the booking to the database.
     * It then prints out the booking for the user to see.
     */
    public void bookRoom() {
        int roomID = getRoomID();
        if (roomID == 0)
            return;

        int customerID = addOrGetCustomer();
        if (customerID == 0) {
            return;
        }

        int companions = Dialogs.promptInt("Number of companions?");
        for (var i = 0; i < companions; i++) {
            customer.addCompanion(customerID);
        }

        int mealPackage = Dialogs.promptInt(
                "Choose Meal Package: [1] None    [2] Half Meal (30$)      [3] Full Meal (50$)");
        int extraBed = Dialogs.promptInt(
                "Extra bed (25$ for the whole stay): [1] Yes      [0] No", 0, 1);

        // Calculate the total price of the holiday.
        int daysOfStay = databaseService.getDays(checkInDate, checkOutDate);
        int costOfRoom = databaseService.costOfRoom(checkInDate, checkOutDate, roomID);
        int mealPrice = databaseService.getMealPrice(mealPackage);
        int totalPrice = Math.abs(costOfRoom) + (Math.abs(daysOfStay) * mealPrice);
        if (extraBed == 1) {
            totalPrice += 25;
        }

        int bookingID = databaseService.addBooking(
                customerID, roomID, mealPackage, checkInDate, checkOutDate, extraBed, totalPrice
        );
        System.out.println("Booking was successful!");
        databaseService.getABooking(bookingID);
    }

    /**
     * Used to get a room's roomID if it is available on the provided dates.
     * @return the roomID of the room specified.
     */
    private int getRoomID() {
        int roomID = 0;
        while (roomID == 0) {
            int room = Dialogs.promptInt("RoomID: ");
            roomID = databaseService.getRoomID(room, checkInDate, checkOutDate);

            if (roomID == 0) {
                System.out.println(
                        "Sorry the room is already booked these dates!"
                );

                int choice = Dialogs.promptInt("[1] Choose another date      [0] Back");
                if (choice == 0)
                    return roomID;
            }
        }

        return roomID;
    }

    /**
     * Used to add a customer and get its customerID or get an existing customer's customerID.
     * @return the customerID of either an existing or a new customer.
     */
    private int addOrGetCustomer() {
        int customerID = 0;
        int alreadyCustomer = Dialogs.promptInt("Are you already a customer?      [1] Yes  [0] No");
        if (alreadyCustomer == 0) {
            customerID = addCustomer();
        } else {
            while (customerID == 0) {
                customerID = customer.getCustomer();

                if (customerID == 0) {
                    System.out.println(
                            "Sorry no customer was found with CustomerID: " + customerID);

                    int choice = Dialogs.promptInt("[1] Try again      [0] Back");
                    if (choice == 0)
                        return customerID;
                }

            }
        }

        return customerID;
    }

    /**
     * Used to change the booking dates of an already made booking and recalculate the cost of the stay accordingly,
     * as well as to update the booking to match the newly set dates and price.
     */
    public void changeBookedDates() {
        int bookingID = Dialogs.promptInt("To update the booking please provide the bookingID:");
        databaseService.getABooking(bookingID);
        int roomID = 0;
        while (roomID == 0) {
            roomID = databaseService.getRoomIDFromBooking(bookingID);
            checkInDate = Dialogs.prompt("New Check In Date (yyyy-mmm-dd): ");
            checkOutDate = Dialogs.prompt("New Check Out Date (yyyy-mmm-dd): ");

            roomID = databaseService.getRoomID(roomID, checkInDate, checkOutDate);

            if (roomID == 0) {
                System.out.println(
                        "Sorry the room is already booked these dates!"
                );

                int choice = Dialogs.promptInt("[1] Choose another date      [0] Back");
                if (choice == 0)
                    return;
            }
        }

        int mealPackageID = databaseService.getABookingsMealPackageID(bookingID);
        int hasExtraBed = databaseService.bookingHasExtraBed(bookingID);
        int daysOfStay = databaseService.getDays(checkInDate, checkOutDate);
        int costOfRoom = databaseService.costOfRoom(checkInDate, checkOutDate, roomID);
        int mealPrice = databaseService.getMealPrice(mealPackageID);
        int totalPrice = Math.abs(costOfRoom) + (Math.abs(daysOfStay) * mealPrice);
        if (hasExtraBed == 1) {
            totalPrice += 25;
        }

        databaseService.changeBookingDate(checkInDate, checkOutDate, totalPrice, bookingID);
        System.out.println("Changed dates successfully!");
        databaseService.getABooking(bookingID);
    }

    /**
     * Adds a customer to the database and returns his/her customerID.
     * @return the newly created customer's customerID.
     */
    public int addCustomer() {
        return customer.addCustomer();
    }
}
