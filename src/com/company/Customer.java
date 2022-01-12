package com.company;

import com.company.Database.DatabaseService;

/**
 * Responsible for adding a customer as well as his/her company to the database.
 * Also used for fetching a customer's customerID.
 *
 * @author Benjamin Nilsson
 */
public class Customer {
    private DatabaseService databaseService;

    public Customer() {
        databaseService = new DatabaseService();
        databaseService.connect();
    }

    /**
     * Adds a customer to the database based on the input given by the user
     * and provides the user with the created customer's customerID.
     * @return the created customer's customerID.
     */
    public int addCustomer() {
        System.out.println("---Person responsible for the booking---");
        String customerName = Dialogs.prompt("Full Name:");
        String birthdate = Dialogs.prompt("Birthdate (yyyy-mm-dd):");
        String phone = Dialogs.prompt("Phone number (***-***-****):");
        String email = Dialogs.prompt("Email (smh@smh.com):");
        int customerID = databaseService.addCustomer(customerName, birthdate, phone, email);

        return customerID;
    }

    /**Adds a companion to the customer according to the input given by the user.
     * @param customerID the customer that the company belongs to.
     */
    public void addCompanion(int customerID) {
        System.out.println("Companion");
        String customerName = Dialogs.prompt("Full Name:");
        String email = Dialogs.prompt("Email (smh@smh.com):");
        String phone = Dialogs.prompt("Phone number (***-***-****):");
        String birthdate = Dialogs.prompt("Birthdate (yyyy-mm-dd):");
        databaseService.addCompanion(customerID, customerName,email, phone, birthdate);
    }

    /**
     * Asks for the customerID from a user and uses it to get the customerID in return
     * if the customerID matches one in the database.
     * @return the customer's customerID
     */
    public int getCustomer() {
        int customerID = Dialogs.promptInt("CustomerID: ");

        return databaseService.getCustomer(customerID);
    }
}
