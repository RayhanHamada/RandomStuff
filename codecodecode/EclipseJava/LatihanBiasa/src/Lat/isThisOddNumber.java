package Lat;

import java.util.Scanner;

public class isThisOddNumber {

	private static Scanner scan = new Scanner(System.in);
	private static int num;
	
	public static void main(String[] args) {
		num = scan.nextInt();
		
		if (num%2 == 0)
			System.out.println("num is an even number");
		else
			System.out.println("num is an odd number");
	}
	
}
