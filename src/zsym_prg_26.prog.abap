*&---------------------------------------------------------------------*
*& Report ZSYM_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSYM_PRG_26.



DATA: BEGIN OF LINE,
        COL1 TYPE I,
        COL2 TYPE I,
      END OF LINE.


DATA ITAB LIKE SORTED TABLE OF LINE WITH UNIQUE KEY COL1.


FIELD-SYMBOLS <FS> LIKE LINE OF ITAB.




DO 4 TIMES.

  LINE-COL1 = SY-INDEX.
  LINE-COL2 = SY-INDEX ** 2.
  APPEND LINE TO ITAB.

ENDDO.





READ TABLE ITAB WITH TABLE KEY COL1 = 2 ASSIGNING <FS>.
<FS>-COL2 = 100.
READ TABLE ITAB WITH TABLE KEY COL1 = 3 ASSIGNING <FS>.
DELETE ITAB INDEX 3.






IF <FS> IS ASSIGNED.

  WRITE '<FS> is assigned!'.

ENDIF.





LOOP AT ITAB ASSIGNING <FS>.

  WRITE: / <FS>-COL1,
           <FS>-COL2.

ENDLOOP.
