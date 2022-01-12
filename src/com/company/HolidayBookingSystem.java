package com.company;

/**
 * Responsible for the different actions that a user can make when using the application such as
 * booking a room, deleting a booking, cancel a booking, finding available rooms, and showing a
 * customer's bookings.
 *
 * @author Benjamin Nilsson
 */
public class HolidayBookingSystem {
    private Booking booking;

    public HolidayBookingSystem() {
        booking = new Booking();
        mainMenu();
    }

    /**
     * Present the user with a menu of actions to chose from, 1 to login 0 to end the application.
     */
    private void mainMenu() {
        while (true) {
            System.out.println("--------------Main Menu--------------");

            int choice = Dialogs.promptInt(
                    "[1] Login  " +
                    "[0] End",
                    0, 1);
            switch (choice) {
                case 1: login();
                        break;
                case 0: System.exit(0);
                        break;
                default: break;
            }
        }
    }

    /**
     * Enables the user to use the application provided the user knows the username and password.
     */
    private void login() {
        System.out.println("--------------Login--------------");
        while (true) {
            String username = Dialogs.prompt("Username: ");
            String password = Dialogs.prompt("Password: ");
            if (username.equals("admin") && password.equals("admin")) {
                System.out.println("Welcome!");
                break;
            }

            System.out.println("Wrong username or password\n");
            System.out.println("Clue: a***n");
        }

        adminMenu();
    }

    /**
     * Present the user with a menu of actions to chose from, 1 to find a customer's bookings, 2 to find available
     * rooms, 3 to cancel a booking, 4 to change a bookings dates, and 0 to logout.
     */
    private void adminMenu() {
        while (true) {
            System.out.println("--------------Admin Menu--------------");

            int choice = Dialogs.promptInt(
                    "[1] Find Customer Bookings      " +
                            "[2] Search for Available Rooms     " +
                            "[3] Cancel Booking     " +
                            "[4] Change Booking Dates    " +
                            "[5] Register Customer      " +
                            "[0] Logout",
                    0, 5);

            switch (choice) {
                case 1: customerBookings();
                        break;
                case 2: String availableRooms = booking.findAvailableRooms();
                            if (!availableRooms.isEmpty()) {
                                bookOrFilter();
                            }
                        break;
                case 3: booking.cancelBooking();
                        break;
                case 4: booking.changeBookedDates();
                        adminMenu();
                        break;
                case 5: booking.addCustomer();
                        adminMenu();
                        break;
                case 0: mainMenu();
                        break;
                default: break;
            }
        }
    }


    /**
     * Present the user with a menu of actions to chose from, 1 to book a room, 2 to order the found results
     * based on price, 3 to order the found results based on rating, and 0 to go back to the previous menu.
     */
    private void bookOrFilter() {
        int choice = Dialogs.promptInt("[1] Book a Room      [2] Order By Price      [3] Order By Rating     [0] Back"
                , 0, 3);
        switch (choice) {
            case 0: adminMenu();
                    break;
            case 1: booking.bookRoom();
                    break;
            case 2: booking.availableRoomsByPrice();
                    bookOrFilter();;
                    break;
            case 3: booking.availableRoomsByRating();
                    bookOrFilter();
                    break;
            default: break;
        }
    }

    /**
     * Allows the user to go back the previous menu.
     */
    private void customerBookings() {
        System.out.println("--------------Bookings--------------");
        booking.getAUsersBookings();

        int choice = Dialogs.promptInt("\n[0] Main Menu", 0, 0);
        if (choice == 0) {
            adminMenu();
        }
    }
}
