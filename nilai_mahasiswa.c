#include<stdio.h>

int main() {
    int daftarBanyakNilai[5] = {0, 0, 0, 0, 0}; 
    for (int i = 0;i < 10; i++){
        char c;

        printf("Nilai Mahasiswa %d : ", i + 1);
        scanf("\n%c", &c);

        switch(c) {
            case 'A':
                daftarBanyakNilai[0]++;
                break;
            case 'B':
                daftarBanyakNilai[1]++;
                break;
            case 'C':
                daftarBanyakNilai[2]++;
                break;
            case 'D':
                daftarBanyakNilai[3]++;
                break;
            case 'E':
                daftarBanyakNilai[4]++;
            default:
                break;
        }
    }

    for (int j = 0; j < 5; j++) {
        printf("Total Nilai %c : %d\n", (char)65 + j, daftarBanyakNilai[j]);
    }
}