      ******************************************************************
      * Author: Eduardo Berrocal -- https://eduberrocal.net
      * Date: 04/29/2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUM-INTEGERS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 n    BINARY-LONG.
       01 i    BINARY-LONG.
       01 t    BINARY-LONG VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Enter a positive integer"
            ACCEPT n
            PERFORM VARYING i FROM 1 BY 1 UNTIL i > n
               ADD i TO t
            END-PERFORM
            DISPLAY "The sum is " t.
            STOP RUN.
       END PROGRAM SUM-INTEGERS.
