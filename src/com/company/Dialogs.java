package com.company;

import java.util.Scanner;

/**
 * Responsible for asking questions or making statements to the user
 * and returns the user's response.
 *
 * @author Benjamin Nilsson
 */
public class Dialogs {
    private static Scanner scanner = new Scanner(System.in);

    /**
     * Asks the user for input and returns that input.
     *
     * @param prompt clarify what the user should put in.
     * @return the input the user put in as a String.
     */
    public static String prompt(String prompt) {
        System.out.println(prompt);

        return scanner.nextLine();
    }

    /**
     * Sends a question to the user and gets a number in return that
     * is in between the specified the minimum and maximum amount.
     * @param prompt clarify what the user should put in.
     * @param min the minimum number you want from the user.
     * @param max the maximum number you want from the user.
     * @return the number provided by the user.
     */
    public static int promptInt(String prompt, int min, int max) {
        while (true) {
            System.out.println(prompt);
            int input;
            try {
                input = Integer.parseInt(scanner.nextLine());
                if (input >= min && input <= max) {
                    return input;
                }
            } catch (Exception e) {
                System.out.println("Wrong input!");
            }
        }
    }

    /**
     * Sends a question to the user and gets a number in return.
     * @param prompt clarify what the user should put in.
     * @return the number provided by the user.
     */
    public static int promptInt(String prompt) {
        while (true) {
            System.out.println(prompt);
            int input;
            try {
                input = Integer.parseInt(scanner.nextLine());
                if (input > -1)
                return input;
            } catch (Exception e) {
                System.out.println("Wrong input!");
            }
        }
    }
}
