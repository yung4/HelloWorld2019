/**
 * HelloWorld
 *
 * @author Chris Yung, yung4@purdue.edu
 *
 * @version 9/11/19
 *
 */

import java.util.Scanner;

public class Chris {
    public static void main(String[] args) {
        new Scanner s = Scanner(System.in);

        System.out.print("Input your favorite phrase! ");
        String phrase = s.nextLine();

        if (phrase.equals("我沒有朋友")) {
            System.out.println("我也沒有朋友");
        } else {
            System.out.println("Nice.");
        }
    }
}