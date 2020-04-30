      ******************************************************************
      * Author: Eduardo Berrocal -- https://eduberrocal.net
      * Date: 04/29/2020
      * Purpose: Simple 'Hello World' in order to learn COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world, Eduardo"
            STOP RUN.
       END PROGRAM HELLO-WORLD.
