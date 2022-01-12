package com.company.Database;

import java.sql.*;

/**
 * Used to connect to a booking database that allows the user to add customers and its company, along with making
 * a booking and retrieving information about a booking as well as updating or deleting a booking.
 *
 * @author Benjamin Nilsson
 */
public class DatabaseService {
    private Connection conn = null;
    private PreparedStatement statement;
    private ResultSet resultSet;

    /**
     * Used to establish a connection to the specified database.
     */
    public void connect() {
        try {
            conn = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\b3nni\\Databaser\\Holidaymaker.db");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /** Adds a booking to the database.
     * @param customerID the customer's customerID.
     * @param roomID the roomID of the room to be booked.
     * @param mealPackageID the id that specifies which meal package is chosen.
     * @param checkInDate the date the customer will check in to the hotel.
     * @param checkOutDate the date the customer will check out from to the hotel.
     * @param extraBed specify if the customer wants and extra bed or not.
     * @param totalPrice the total price of the room, the meal package,
     *                  the extra bed calculated with the days stayed.
     * @return the bookingID of the created booking.
     */
    public int addBooking(int customerID,
                           int roomID,
                           int mealPackageID,
                           String checkInDate,
                           String checkOutDate,
                           int extraBed,
                           int totalPrice) {
        int bookingID = 0;
        try {
            statement = conn.prepareStatement("INSERT INTO " +
                    "Bookings(CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) " +
                    "VALUES(?, ?, ?, ?, ?, ?, ?)");
            statement.setInt(1, customerID);
            statement.setInt(2, roomID);
            statement.setInt(3, mealPackageID);
            statement.setString(4, checkInDate);
            statement.setString(5, checkOutDate);
            statement.setInt(6, extraBed);
            statement.setInt(7, totalPrice);
            statement.executeUpdate();
            resultSet = statement.getGeneratedKeys();
            while (resultSet.next()) {
                bookingID = resultSet.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return bookingID;
    }

    /**
     * Allows the user to get all bookings that a customer has and prints them out.
     * @param customerID the customer's customerID.
     */
    public void getACustomersBookings(int customerID) {

        try {
            statement = conn.prepareStatement(
                    "SELECT b.BookingID, b.CustomerID, h.HotelName, r.RoomNumber, b.RoomID, mp.MealPackage," +
                            " b.CheckInDate, b.CheckOutDate, 'true' AS ExtraBed,  b.TotalPrice\n" +
                            "FROM Bookings b\n" +
                            "JOIN MealPackages mp USING(MealPackageID)\n" +
                            "JOIN Rooms r ON r.RoomID = b.RoomID\n" +
                            "JOIN Hotels h USING(HotelID)\n" +
                            "WHERE CustomerID = ? AND ExtraBed = 1\n" +
                            "UNION\n" +
                            "SELECT b.BookingID, b.CustomerID, h.HotelName, r.RoomNumber, b.RoomID, mp.MealPackage," +
                            " b.CheckInDate, b.CheckOutDate, 'false' AS ExtraBed,  b.TotalPrice\n" +
                            "FROM Bookings b\n" +
                            "JOIN MealPackages mp USING(MealPackageID)\n" +
                            "JOIN Rooms r ON r.RoomID = b.RoomID\n" +
                            "JOIN Hotels h USING(HotelID)\n" +
                            "WHERE CustomerID = ? AND ExtraBed = 0"
            );
            statement.setInt(1, customerID);
            statement.setInt(2, customerID);
            resultSet = statement.executeQuery();

            if (!resultSet.next())
                System.out.println("0 bookings found");
            else {
                do {
                    printCustomerBookings();
                }
                while (resultSet.next());
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Allows the user to get a specified booking of a customer and prints it out.
     * @param bookingID the bookingID of the booking that the user wants to retrieve.
     */
    public void getABooking(int bookingID) {
        try {
            statement = conn.prepareStatement(
                    "SELECT b.BookingID, b.CustomerID, h.HotelName, r.RoomNumber, b.RoomID, mp.MealPackage," +
                            " b.CheckInDate, b.CheckOutDate, 'true' AS ExtraBed,  b.TotalPrice\n" +
                            "FROM Bookings b\n" +
                            "JOIN MealPackages mp USING(MealPackageID)\n" +
                            "JOIN Rooms r ON r.RoomID = b.RoomID\n" +
                            "JOIN Hotels h USING(HotelID)\n" +
                            "WHERE BookingID = ? AND ExtraBed = 1\n" +
                            "UNION\n" +
                            "SELECT b.BookingID, b.CustomerID, h.HotelName, r.RoomNumber, b.RoomID, mp.MealPackage," +
                            " b.CheckInDate, b.CheckOutDate, 'false' AS ExtraBed,  b.TotalPrice\n" +
                            "FROM Bookings b\n" +
                            "JOIN MealPackages mp USING(MealPackageID)\n" +
                            "JOIN Rooms r ON r.RoomID = b.RoomID\n" +
                            "JOIN Hotels h USING(HotelID)\n" +
                            "WHERE BookingID = ? AND ExtraBed = 0"
            );
            statement.setInt(1, bookingID);
            statement.setInt(2, bookingID);
            resultSet = statement.executeQuery();

            if (!resultSet.next())
                System.out.println("0 bookings found");
            else {
                do {
                    printCustomerBookings();
                }
                while (resultSet.next());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Deletes a booking from the database and tells the user if it was able to delete the booking based on the
     * parameters given.
     * @param bookingID the bookingID of the booking that the user wants to retrieve.
     * @param customerID the customer's customerID.
     * @return 0 if nothing was deleted and 1 if something was deleted.
     */
    public int cancelBooking(int bookingID, int customerID) {
        int deleted = 0;
        try {
            statement = conn.prepareStatement(
                    "DELETE FROM Bookings\n" +
                            "WHERE BookingID = ? AND CustomerID = ?");
            statement.setInt(1, bookingID);
            statement.setInt(2, customerID);
            deleted = statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return deleted;
    }

    /**
     * Changes the dates of stay of a specified booking to the new days given by the user.
     * @param checkIn the date the customer will check in to the hotel.
     * @param checkOut the date the customer will check out from to the hotel.
     * @param totalPrice the total price of the room, meal package, and extra bed calculated with the days stayed.
     * @param bookingID the bookingID of the booking that the user wants to retrieve.
     */
    public void changeBookingDate(String checkIn, String checkOut, int totalPrice, int bookingID) {
        try {
            statement = conn.prepareStatement(
                    "UPDATE Bookings\n" +
                        "SET CheckInDate = ?, CheckOutDate = ?, TotalPrice = ?\n" +
                        "WHERE BookingID = ?\n"
            );
            statement.setString(1, checkIn);
            statement.setString(2, checkOut);
            statement.setInt(3, totalPrice);
            statement.setInt(4, bookingID);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Find rooms according to the specified criteria that are available and prints them out and tells the user if
     * matches were found.
     * @param checkInDate the date the customer will check in to the hotel.
     * @param checkOutDate the date the customer will check out from to the hotel.
     * @param pool if the hotel has a pool.
     * @param kidsClub if the hotel has a kids club.
     * @param eveningEntertainment if the hotel provides evening entertainment.
     * @param restaurant if the hotel has a restaurant.
     * @param distanceToBeach how long the hotel is from a beach in km.
     * @param distanceToCentre how long the hotel is from the centre in km.
     * @return an empty string if no matches were found and a confirmation message if at least one match was found.
     */
    public String findAvailableRooms(
            String checkInDate, String checkOutDate, int pool, int kidsClub, int eveningEntertainment,
            int restaurant, int distanceToBeach, int distanceToCentre) {
        try {
            statement = conn.prepareStatement("" +
                    "SELECT RoomID, HotelName, Rating, CityName, CountryName, RoomType, NumberOfBeds," +
                    " DistanceToCentre, DistanceToBeach, RoomPrice \n" +
                    "FROM AvailableRooms\n" +
                    "WHERE  RoomID NOT IN (\n" +
                    "    SELECT RoomID\n" +
                    "    FROM Bookings\n" +
                    "    WHERE ? BETWEEN CheckInDate AND CheckOutDate\n" +
                    "    OR ? BETWEEN CheckInDate AND CheckOutDate\n" +
                    "    )\n" +
                    "AND ? > ?" +
                    "AND ? BETWEEN '2021-12-28' AND '2022-12-28'\n" +
                    "AND ? BETWEEN '2021-12-28' AND '2022-12-28'\n" +
                    "AND Pool = ? AND KidsClub = ? AND EveningEntertainment = ? AND Restaurant = ?\n" +
                    "AND DistanceToBeach <= ?\n" +
                    "AND DistanceToCentre <= ?\n"
            );
            statement.setString(1, checkInDate);
            statement.setString(2, checkOutDate);
            statement.setString(3, checkOutDate);
            statement.setString(4, checkInDate);
            statement.setString(5, checkInDate);
            statement.setString(6, checkOutDate);
            statement.setInt(7, pool);
            statement.setInt(8, kidsClub);
            statement.setInt(9, eveningEntertainment);
            statement.setInt(10, restaurant);
            statement.setInt(11, distanceToBeach);
            statement.setInt(12, distanceToCentre);
            resultSet = statement.executeQuery();

            if (!resultSet.next()) {
                System.out.println("0 matches found");
                return "";
            }
            else {
                do {
                    printAvailableRooms();
                }
                while (resultSet.next());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "Matches found";
    }

    /**
     * Find rooms according to the specified criteria that are available and orders the rooms based on their price
     * and then prints them out.
     * @param checkInDate the date the customer will check in to the hotel.
     * @param checkOutDate the date the customer will check out from to the hotel.
     * @param pool if the hotel has a pool.
     * @param kidsClub if the hotel has a kids club.
     * @param eveningEntertainment if the hotel provides evening entertainment.
     * @param restaurant if the hotel has a restaurant.
     * @param distanceToBeach how long the hotel is from a beach in km.
     * @param distanceToCentre how long the hotel is from the centre in km.
     */
    public void availableRoomsByRating(
            String checkInDate, String checkOutDate, int pool, int kidsClub, int eveningEntertainment,
            int restaurant, int distanceToBeach, int distanceToCentre) {
        try {
            statement = conn.prepareStatement("" +
                    "SELECT RoomID, HotelName, Rating, CityName, CountryName, RoomType, NumberOfBeds," +
                    " DistanceToCentre, DistanceToBeach, RoomPrice\n" +
                    "FROM AvailableRooms\n" +
                    "WHERE  RoomID NOT IN (\n" +
                    "    SELECT RoomID\n" +
                    "    FROM Bookings\n" +
                    "    WHERE ? BETWEEN CheckInDate AND CheckOutDate\n" +
                    "    OR ? BETWEEN CheckInDate AND CheckOutDate\n" +
                    "    )\n" +
                    "AND ? > ?" +
                    "AND ? BETWEEN '2021-12-28' AND '2022-12-28'\n" +
                    "AND ? BETWEEN '2021-12-28' AND '2022-12-28'\n" +
                    "AND Pool = ? AND KidsClub = ? AND EveningEntertainment = ? AND Restaurant = ?\n" +
                    "AND DistanceToBeach <= ?\n" +
                    "AND DistanceToCentre <= ?\n" +
                    "ORDER BY Rating DESC");
            statement.setString(1, checkInDate);
            statement.setString(2, checkOutDate);
            statement.setString(3, checkOutDate);
            statement.setString(4, checkInDate);
            statement.setString(5, checkInDate);
            statement.setString(6, checkOutDate);
            statement.setInt(7, pool);
            statement.setInt(8, kidsClub);
            statement.setInt(9, eveningEntertainment);
            statement.setInt(10, restaurant);
            statement.setInt(11, distanceToBeach);
            statement.setInt(12, distanceToCentre);
            resultSet = statement.executeQuery();

            if (!resultSet.next())
                System.out.println("0 matches found");
            else {
                do {
                    printAvailableRooms();
                }
                while (resultSet.next());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Find rooms according to the specified criteria that are available and orders the rooms based on their hotels
     * rating and then prints them out.
     * @param checkInDate the date the customer will check in to the hotel.
     * @param checkOutDate the date the customer will check out from to the hotel.
     * @param pool if the hotel has a pool.
     * @param kidsClub if the hotel has a kids club.
     * @param eveningEntertainment if the hotel provides evening entertainment.
     * @param restaurant if the hotel has a restaurant.
     * @param distanceToBeach how long the hotel is from a beach in km.
     * @param distanceToCentre how long the hotel is from the centre in km.
     */
    public void availableRoomsByPrice(
            String checkInDate, String checkOutDate, int pool, int kidsClub, int eveningEntertainment,
            int restaurant, int distanceToBeach, int distanceToCentre) {
        try {
            statement = conn.prepareStatement("" +
                    "SELECT RoomID, HotelName, Rating, CityName, CountryName, RoomType, NumberOfBeds," +
                    " DistanceToCentre, DistanceToBeach, RoomPrice \n" +
                    "FROM AvailableRooms\n" +
                    "WHERE RoomID NOT IN (\n" +
                    "    SELECT RoomID\n" +
                    "    FROM Bookings\n" +
                    "    WHERE ? BETWEEN CheckInDate AND CheckOutDate\n" +
                    "    OR ? BETWEEN CheckInDate AND CheckOutDate\n" +
                    "    )\n" +
                    "AND ? > ?" +
                    "AND ? BETWEEN '2021-12-28' AND '2022-12-28'\n" +
                    "AND ? BETWEEN '2021-12-28' AND '2022-12-28'\n" +
                    "AND Pool = ? AND KidsClub = ? AND EveningEntertainment = ? AND Restaurant = ?\n" +
                    "AND DistanceToBeach <= ?\n" +
                    "AND DistanceToCentre <= ?\n" +
                    "ORDER BY RoomPrice ASC"
            );

            statement.setString(1, checkInDate);
            statement.setString(2, checkOutDate);
            statement.setString(3, checkOutDate);
            statement.setString(4, checkInDate);
            statement.setString(5, checkInDate);
            statement.setString(6, checkOutDate);
            statement.setInt(7, pool);
            statement.setInt(8, kidsClub);
            statement.setInt(9, eveningEntertainment);
            statement.setInt(10, restaurant);
            statement.setInt(11, distanceToBeach);
            statement.setInt(12, distanceToCentre);
            resultSet = statement.executeQuery();

            if (!resultSet.next())
                System.out.println("0 matches found");
            else {
                do {
                    printAvailableRooms();
                }
                while (resultSet.next());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Responsible for printing information on a customer's booking.
     */
    private void printCustomerBookings() {
        try {
            String customerBooking =
                    "| BookingID: " + resultSet.getInt("BookingID") + " | " +
                            "CustomerID: " + resultSet.getInt("CustomerID") + " | " +
                            "Hotel Name: " + resultSet.getString("HotelName") +  " | " +
                            "Room Number: " + resultSet.getString("RoomNumber") + " | " +
                            "RoomID: " + resultSet.getInt("RoomID") + " | " +
                            "Meal Package: " + resultSet.getString("MealPackage") + " | " +
                            "Check In Date: " + resultSet.getString("CheckInDate") + " | " +
                            "Check Out Date: " + resultSet.getString("CheckOutDate") + " | " +
                            "Extra Bed: " + resultSet.getString("ExtraBed") + " | " +
                            "Total Price: " + resultSet.getInt("TotalPrice") + " |\n";

            System.out.println(customerBooking);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    /**
     * Responsible for printing information on the available rooms.
     */
    private void printAvailableRooms() {
        try {
            String availableRooms =
                    "| RoomID: " + resultSet.getInt("RoomID") + " | " +
                            "HotelName: " + resultSet.getString("HotelName") +  " | " +
                            "Rating: " + resultSet.getInt("Rating") +  " | " +
                            "CityName: " + resultSet.getString("CityName") +  " | " +
                            "CountryName: " + resultSet.getString("CountryName") +  " | " +
                            "RoomType: " + resultSet.getString("RoomType") +  " | " +
                            "NumberOfBeds: " + resultSet.getInt("NumberOfBeds") +  " | " +
                            "DistanceToCentre: " + resultSet.getInt("DistanceToCentre") +  "km | " +
                            "DistanceToBeach: " + resultSet.getInt("DistanceToBeach") +  "km | " +
                            "RoomPrice: $" + resultSet.getString("RoomPrice") + " | \n" +
                            "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------";

            System.out.println(availableRooms);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Adds a customer to the database based on the input and then provides the newly
     * created customer's customerID.
     * @param fullName the full name of the customer.
     * @param birthdate the birthdate of the customer.
     * @param phoneNumber the phone number of the customer.
     * @param email the email of the customer.
     * @return the created customer's customerID.
     */
    public int addCustomer(String fullName, String birthdate, String phoneNumber, String email) {
        int customerID = 0;
        try {
            statement = conn.prepareStatement(
                    "INSERT INTO Customers(FullName, Birthdate, Phone, Email) " +
                    "VALUES(?, ?, ?, ?)");
            statement.setString(1, fullName);
            statement.setString(2, birthdate);
            statement.setString(3, phoneNumber);
            statement.setString(4, email);
            statement.executeUpdate();
            resultSet = statement.getGeneratedKeys();

            while (resultSet.next()) {
                customerID = resultSet.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return customerID;
    }

    /**
     * Adds a customer's companion to the database based on the input.
     * @param customerID the customer's customerID.
     * @param fullName the full name of the customer.
     * @param email the email of the customer.
     * @param phoneNumber the phone number of the customer.
     * @param birthdate the birthdate of the customer.
     */
    public void addCompanion(int customerID, String fullName, String email,  String phoneNumber, String birthdate) {
        try {
            statement = conn.prepareStatement(
                    "INSERT INTO Companies(CustomerID, FullName, Email, Phone, Birthdate)" +
                    "VALUES(?, ?, ?, ?, ?)");
            statement.setInt(1, customerID);
            statement.setString(2, fullName);
            statement.setString(3, email);
            statement.setString(4, phoneNumber);
            statement.setString(5, birthdate);

            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Used for checking if a room is available on the specified dates and if it is returns the room's roomID.
     * @param roomID the roomID of the room to be retrieved.
     * @param checkIn the date the customer will check in to the hotel.
     * @param checkOut the date the customer will check out from to the hotel.
     * @return 0 if no room was found or the room is unavailable on the specified dates.
     * Otherwise it returns the room's roomID.
     */
    public int getRoomID(int roomID, String checkIn, String checkOut) {
        int room = 0;
        try {
            statement = conn.prepareStatement(
                    "SELECT RoomID\n" +
                            "FROM Rooms\n" +
                            "WHERE RoomID = ? AND RoomID NOT IN (\n" +
                            "    SELECT RoomID\n" +
                                    "    FROM Bookings\n" +
                                    "    WHERE ? BETWEEN CheckInDate AND CheckOutDate\n" +
                                    "    OR ? BETWEEN CheckInDate AND CheckOutDate\n" +
                                    "    )\n" +
                            "AND ? > ?" +
                            "AND ? BETWEEN '2021-12-28' AND '2022-12-28'\n" +
                            "AND ? BETWEEN '2021-12-28' AND '2022-12-28'\n"
            );
            statement.setInt(1, roomID);
            statement.setString(2, checkIn);
            statement.setString(3, checkOut);
            statement.setString(4, checkOut);
            statement.setString(5, checkIn);
            statement.setString(6, checkIn);
            statement.setString(7, checkOut);
            resultSet = statement.executeQuery();
            while (this.resultSet.next()) {
                room = resultSet.getInt("RoomID");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return room;
    }

    /**
     * Used to get the price of a meal package based on the meal package id provided.
     * @param mealPackage the meal package id (1. none, 2.half meal package 3. full meal package)
     * @return the price of the specified meal package.
     */
    public int getMealPrice(int mealPackage) {
        int mealPackagePrice = 0;
        try {
            statement = conn.prepareStatement(
                    "SELECT MealPackagePrice\n" +
                    "FROM MealPackages\n" +
                    "WHERE MealPackageID = ?");
            statement.setInt(1, mealPackage);
            resultSet = statement.executeQuery();
            while (this.resultSet.next()) {
                mealPackagePrice = resultSet.getInt("MealPackagePrice");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return mealPackagePrice;
    }

    /**
     * Gets the cost of a room based on the room price and the number of days to be spent in the hotel.
     * @param checkIn the date the customer will check in to the hotel.
     * @param checkOut the date the customer will check out from to the hotel.
     * @param roomID the roomID of the room to be retrieved.
     * @return the cost of the specified room based on the price and days stayed.
     */
    public int costOfRoom(String checkIn, String checkOut, int roomID) {
        int costOfRoom = 0;
        try {
            statement = conn.prepareStatement(
                    "SELECT (JULIANDAY(?) - JULIANDAY(?)) * RoomPrice AS CostOfRoom\n" +
                            "FROM Rooms\n" +
                            "WHERE RoomID = ?");
            statement.setString(1, checkIn);
            statement.setString(2, checkOut);
            statement.setInt(3, roomID);
            resultSet = statement.executeQuery();
            while (this.resultSet.next()) {
                costOfRoom = resultSet.getInt("CostOfRoom");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return costOfRoom;
    }

    /**
     * Provides the number of days a customer will stay at a hotel.
     * @param checkIn the date the customer will check in to the hotel.
     * @param checkOut the date the customer will check out from to the hotel.
     * @return the number of days the customer will spend at the hotel.
     */
    public int getDays(String checkIn, String checkOut) {
        int days = 0;
        try {
            statement = conn.prepareStatement(
                    "SELECT JULIANDAY(?) - JULIANDAY(?)AS Days");
            statement.setString(1, checkIn);
            statement.setString(2, checkOut);
            resultSet = statement.executeQuery();
            while (this.resultSet.next()) {
                days = resultSet.getInt("Days");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return days;
    }

    /**
     * Retrieves the customer's customerId if the provided customerID is in the database.
     * @param customerID the customer's customerID.
     * @return the customer's customerID if the customer is in the database and 0 if the customer
     * is not in the database.
     */
    public int getCustomer(int customerID) {
        int customer = 0;
        try {
            statement = conn.prepareStatement(
                    "SELECT CustomerID\n" +
                            "FROM Customers\n" +
                            "WHERE CustomerID = ?");
            statement.setInt(1, customerID);
            resultSet = statement.executeQuery();
            while (this.resultSet.next()) {
                customer = resultSet.getInt("CustomerID");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return customer;
    }

    /**
     * Get the meal package id of a booking.
     * @param bookingID the bookingID of the booking that the user wants to retrieve.
     * @return the meal package id (1. none, 2.half meal package, 3. full meal package)
     */
    public int getABookingsMealPackageID(int bookingID) {
        int mealPackageID = 0;
        try {
            statement = conn.prepareStatement(
                    "SELECT MealPackageID\n" +
                            "FROM Bookings\n" +
                            "WHERE BookingID = ?");
            statement.setInt(1, bookingID);
            resultSet = statement.executeQuery();
            while (this.resultSet.next()) {
                mealPackageID = resultSet.getInt("MealPackageID");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return mealPackageID;
    }

    /**
     * Check to see if a booking has an extra bed or not and returns it.
     * @param bookingID the bookingID of the booking that the user wants to retrieve.
     * @return 0 if a booking does not have an extra bed and 1 if it does.
     */
    public int bookingHasExtraBed(int bookingID) {
        int extraBed = 0;
        try {
            statement = conn.prepareStatement(
                    "SELECT ExtraBed\n" +
                            "FROM Bookings\n" +
                            "WHERE BookingID = ?");
            statement.setInt(1, bookingID);
            resultSet = statement.executeQuery();
            while (this.resultSet.next()) {
                extraBed = resultSet.getInt("ExtraBed");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return extraBed;
    }


    /**
     * Gets a roomID from the specified booking if the provided bookingId is in the database.
     * @param bookingID the bookingID of the booking that the user wants to retrieve.
     * @return 0 if no booking was found matching the provided bookingID and a roomID if
     * a matching bookingID was found.
     */
    public int getRoomIDFromBooking(int bookingID) {
        int roomID = 0;
        try {
            statement = conn.prepareStatement(
                    "SELECT RoomID\n" +
                            "FROM Bookings\n" +
                            "WHERE BookingID = ?");
            statement.setInt(1, bookingID);
            resultSet = statement.executeQuery();
            while (this.resultSet.next()) {
                roomID = resultSet.getInt("RoomID");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return roomID;
    }
}
