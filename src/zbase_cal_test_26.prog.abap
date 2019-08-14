*&---------------------------------------------------------------------*
*& Report ZBASE_CAL_TEST_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBASE_CAL_TEST_26.

WRITE:/ '기본 함수 테스트'.
WRITE:/ '                           1.999'.
WRITE:/ '                           2.001'.


ULINE.

"올림
WRITE:/ '올림 FLOOR'.
WRITE:/ CEIL('1.999').
WRITE:/ CEIL('2.001').

ULINE.

"내림
WRITE:/ '내림 FLOOR'.
WRITE:/ FLOOR('1.999').
WRITE:/ FLOOR('2.001').

ULINE.

"TRUC
WRITE:/ '버림 TRUNC'.
WRITE:/ TRUNC('1.999').
WRITE:/ TRUNC('2.001').

ULINE.

"TRUC
WRITE:/ '남김 FRAC'.
WRITE:/ FRAC('1.999').
WRITE:/ FRAC('2.001').


ULINE.
ULINE.

"SQRT
DATA : RESULT(20) TYPE C,
       INT TYPE I VALUE 2.
RESULT = sqrt( int ).
WRITE:/ RESULT.


"ACOS
RESULT = ACOS( '0.5' ).
WRITE:/ RESULT.
