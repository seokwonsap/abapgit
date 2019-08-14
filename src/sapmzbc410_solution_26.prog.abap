
*&---------------------------------------------------------------------*
*& Module Pool      SAPMZBC410_SOLUTION_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

INCLUDE MZBC410_SOLUTION_26TOP                  .    " Global Data


INCLUDE MZBC410_SOLUTION_26O01                  .  " PBO-Modules
INCLUDE MZBC410_SOLUTION_26I01                  .  " PAI-Modules
INCLUDE MZBC410_SOLUTION_26F01                  .  " FORM-Routines





*&---------------------------------------------------------------------*
*& Form SET_MODE
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM SET_MODE .
  IF GV_MODE = 'D'.
    GV_MODE = 'C'.
  ELSEIF GV_MODE = 'C'.
    GV_MODE = 'D'.
  ENDIF.
ENDFORM.
