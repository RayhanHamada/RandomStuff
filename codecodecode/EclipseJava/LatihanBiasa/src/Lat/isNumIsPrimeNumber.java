package Lat;

import java.util.Scanner;

public class isNumIsPrimeNumber {

	private static Scanner scan = new Scanner(System.in);
	private static int num;
	private static int dividableCount;
	
	public static void main(String[] args) {
		num = scan.nextInt();
		
		for (int i = 1; i < num+1; i++) {
			if (num%i == 0) 
				dividableCount++;
		}
		
		if (dividableCount > 2 || num == 0)
			System.out.println(num + " is not a prime number");
		else
			System.out.println(num + " is a prime number");
	}
}
