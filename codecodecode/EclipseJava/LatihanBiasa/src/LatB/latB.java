package LatB;



public class latB {
	public static String[][] array_mahasiswa = {{"dono", "60"}, {"danu", "68"}, {"doni", "79"}, {"dino", "74"}};
	
	public static void main(String[] args) {
		
		for (String[] i : array_mahasiswa)
		{
			double tempVal = Double.parseDouble(i[1]);
			String tempName = i[0];
			
			if (tempVal >= 0 && tempVal < 40) System.out.println(tempName + " = E"); 
			else if (tempVal >= 40 && tempVal < 43.75) System.out.println(tempName + " = D");
			else if (tempVal >= 43.75 && tempVal < 51.25) System.out.println(tempName + " = D+");
			else if (tempVal >= 51.25 && tempVal < 55) System.out.println(tempName + " = C-");
			else if (tempVal >= 55 && tempVal < 57.5) System.out.println(tempName + " = C");
			else if (tempVal >= 57.5 && tempVal < 62.5) System.out.println(tempName + " = C+");
			else if (tempVal >= 62.5 && tempVal < 65) System.out.println(tempName + " = B-");
			else if (tempVal >= 65 && tempVal < 68.75) System.out.println(tempName + " = B");
			else if (tempVal >= 68.75 && tempVal < 76.25) System.out.println(tempName + " = B+");
			else if (tempVal >= 76.25 && tempVal < 80) System.out.println(tempName + " = A-");
			else if (tempVal >= 80) System.out.println(tempName + " = A");
			
 		}
		
		
	}
	
}
