package LatB;

import java.util.ArrayList;


public class AngkaToSentenceConverter {

	
	
	public static String convert(String angka)
	{
		String patternError = "([^0-9]+[0-9]+|[0-9]+[^0-9]+|[^0-9]+[0-9]+[^0-9]+|[0-9]+[^0-9]+[0-9]+)+";
		String[] kalimat = new String[100];
		int placeCount = 0;
	
		
		String[] satuan = {"Satu", "Dua", "Tiga", "Empat", "Lima", "Enam", "Tujuh", "Delapan", "Sembilan",
								"Se"};
		String[] decBesar = {"Belas", "Puluh", "Ratus", "Ribu", "Juta", "Milyar", "Triliun"};
		
		char[] ratus = new char[3], ribu = new char[3], juta = new char[3],
				 milyar = new char[3], triliun = new char[3];
		
		
		if (angka.matches(patternError))
		{
			System.out.println("Angka tidak boleh mengandung selain angka (0-9), periksa kembali input anda !!!");
			return "Error";
		}else
		{
		
			char[] chrAngka = angka.replaceAll("\\s+", "").toCharArray();
			
			
			
			for (int i = 0; i < Math.ceil(chrAngka.length); i++)
			{
				if (i == 0)
				{
					for (int j = 0;j < 3; j++)
					{
						ratus[j] = chrAngka[chrAngka.length-3+j];
					}
				}
			}
				
				
			
			
			
			return "";
		}
		
		
	
		
		
		
		
		
		
		
	}
	
	
	
	public static void main(String[] args) {
		
		System.out.println(convert("200 0"));
		
		
	}

}
