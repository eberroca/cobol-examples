      ******************************************************************
      * Author: Eduardo Berrocal -- https://eduberrocal.net
      * Date: 04/29/2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUM-INTEGERS.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.
           Intel-NUC WITH DEBUGGING MODE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  n BINARY-LONG.
       01  i BINARY-LONG.
       01  t BINARY-LONG VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter a positive integer"
           ACCEPT n  *> This is a partial-line comment
           PERFORM VARYING i FROM 1 BY 1 UNTIL i > n
              ADD i TO t
           END-PERFORM
           DISPLAY "The sum is " t.
      D    DISPLAY "[debug] This is a debug comment"
           STOP RUN.
       END PROGRAM SUM-INTEGERS.
