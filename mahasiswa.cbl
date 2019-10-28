      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Daftar-Mahasiswa.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       *> bwat simpen nama sementara
       01 WS-NAMA PIC A(40).
       *> bwat simpen NPM sementara
       01 WS-NPM PIC 9(8).
       *> bwat ngeloop
       01 WS-LOOP PIC 9(1) VALUE 0.
       *> array NPM isi numerik maksimal 8 angka
       01 NPM OCCURS 5 TIMES PIC 9(8).
       *> array NAMA isi alfabet maksimal 40 karakter
       01 NAMA OCCURS 5 TIMES PIC A(40).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
             *> ambil nama sama npm ampe 5 kali
             PERFORM VARYING WS-LOOP FROM 1 BY 1 UNTIL WS-LOOP > 5
                   DISPLAY 'MASUKKAN NAMA MAHASISWA KE-'WS-LOOP' : '
                   ACCEPT WS-NAMA
                   MOVE WS-NAMA TO NAMA(WS-LOOP)
                   MOVE ' ' TO WS-NAMA
                   DISPLAY 'MASUKKAN NPM MAHASISWA KE-'WS-LOOP' : '
                   ACCEPT WS-NPM
                   MOVE WS-NPM TO NPM(WS-LOOP)
                   MOVE 0 TO WS-NPM
             END-PERFORM.

             *> reset WS-LOOP ke 1
             MOVE 1 TO WS-LOOP.

             *> tampilin kolom npm sama nama
             DISPLAY "=============================================".
             DISPLAY "NPM          NAMA".
             DISPLAY "=============================================".

             *> tampilin semua npm dan nama mahasiswa
             PERFORM VARYING WS-LOOP FROM 1 BY 1 UNTIL WS-LOOP > 5
                   DISPLAY NPM(WS-LOOP) '     ' NAMA(WS-LOOP)
             END-PERFORM
            STOP RUN.
       END PROGRAM Daftar-Mahasiswa.
