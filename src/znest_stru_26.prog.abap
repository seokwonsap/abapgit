*&---------------------------------------------------------------------*
*& Report ZNEST_STRU_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZNEST_STRU_26.



DATA: GS_EMP TYPE ZSEMP1_26.

GS_EMP-PERNR = 1000001.
GS_EMP-ORGEH = 11000.
GS_EMP-ORGTX = '재경팀'.

*GS_EMP-DEPT-ORGEH = 11000.
*GS_EMP-DEPT-ORGTX = '재경팀'.

WRITE:/ GS_EMP-PERNR,
        GS_EMP-ORGEH,
        GS_EMP-ORGTX.
