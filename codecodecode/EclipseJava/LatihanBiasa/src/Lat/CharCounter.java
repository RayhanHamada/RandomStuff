package Lat;

import java.util.Scanner;
import java.util.ArrayList;

public class CharCounter {

		private static Scanner scan = new Scanner(System.in);
		private static char[] s;
		private static ArrayList<Character> alp = new ArrayList<>();
		private static ArrayList<Integer> alpValue = new ArrayList<>();
		private static int charCount;
		
		public static void main(String[] args) {
			s = (scan.nextLine()).toCharArray();
			
			for (int i = 97; i < 123; i++)
				alp.add((char)i);
			
			for (char a : alp) {
				for (char s : s) {
					if (a == s)
						charCount++;
				}
				
				alpValue.add(charCount);
				charCount = 0;
			}
			
			for (char i : alp)
				System.out.println(i+ " - "+ alpValue.get((int)i - 97));
			
		}
	}
