       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULATOR.
       AUTHOR. ABHISAM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1            PIC 9(5) VALUE 100.
       01 NUM2            PIC 9(5) VALUE 250.
       01 RESULT          PIC 9(10) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           DISPLAY '================================'
           DISPLAY '   COBOL CALCULATOR PROGRAM    '
           DISPLAY '================================'

           COMPUTE RESULT = NUM1 + NUM2
           DISPLAY 'ADDITION      : ' RESULT

           COMPUTE RESULT = NUM1 - NUM2
           DISPLAY 'SUBTRACTION   : ' RESULT

           COMPUTE RESULT = NUM1 * NUM2
           DISPLAY 'MULTIPLICATION: ' RESULT

           DISPLAY '================================'
           DISPLAY 'PROGRAM COMPLETE - ABHISAMV233'
           DISPLAY '================================'

           STOP RUN.
