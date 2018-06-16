package Lat;



import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collections;

public class FibbonaciSequence {

	private static ArrayList<Integer> arr = new ArrayList<>();
	private static Scanner scan = new Scanner(System.in);
	private static int border;
	
	public static void main(String[] args) {
	
		try {
		System.out.println("Enter first number \n");
		arr.add(scan.nextInt());
		System.out.println("Enter second number \n");
		arr.add(scan.nextInt());
		System.out.println("Enter border number \n");
		border = scan.nextInt();

		} catch (Exception e) {
			System.out.println("Input harus Integer, please try again \n");
		}
		
		while(Collections.max(arr) <= border)
			arr.add(arr.get(arr.size()-1) + arr.get(arr.size()-2) );
		
		arr.remove(arr.size()-1);
		
		System.out.println(arr.get(arr.size()-1));
	
		
		
	}

}
