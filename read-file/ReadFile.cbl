      ******************************************************************
      * Author: Eduardo Berrocal -- https://eduberrocal.net
      * Date: 04/29/2020
      * Purpose: Simple 'Hello World' in order to learn COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-FILE.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ITEMS ASSIGN TO 'C:\Users\eduar\tmp\INPUT_FILE.txt'
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD ITEMS.
       01 ITEMS-FILE.
           05 ITEM-ID PIC 9(5).
           05 ITEM-NAME PIC A(25).
           05 ITEM-PRICE PIC 9(5)V9(2).

       WORKING-STORAGE SECTION.
       01 WS-ITEMS.
           05 WS-ITEM-ID PIC 9(5).
           05 WS-ITEM-NAME PIC A(25).
           05 WS-ITEM-PRICE PIC 9(5)V9(2).
       01 WS-EOF PIC A(1).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN INPUT ITEMS.
               PERFORM UNTIL WS-EOF='Y'
                   READ ITEMS INTO WS-ITEMS
                       AT END MOVE 'Y' TO WS-EOF
                       NOT AT END DISPLAY WS-ITEMS
                   END-READ
               END-PERFORM.
           CLOSE ITEMS.
           STOP RUN.
       END PROGRAM READ-FILE.
