*&---------------------------------------------------------------------*
*& Report ZDEEP_STRU_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZDEEP_STRU_26.

DATA: GS_EMP TYPE ZSEMP1_26.


*ZSEMP1_26 의 TELNO 인터널 테이블을 위한 스트럭쳐가 필요하다.
DATA: GS_TEL LIKE LINE OF GS_EMP-TELNO.


GS_EMP-PERNR = 10001.

GS_EMP-ORGEH = 11001.

GS_EMP-ORGTX = '재경팀'.

GS_TEL-TELNO = '010-4880-5997'.
APPEND GS_TEL TO GS_EMP-TELNO.


GS_TEL-TELNO = '02-555-9780'.
APPEND GS_TEL TO GS_EMP-TELNO.

GS_TEL-TELNO = '053-644-9191'.
APPEND GS_TEL TO GS_EMP-TELNO.

LOOP AT GS_EMP-TELNO INTO GS_TEL.
  WRITE:/ GS_TEL-TELNO.
ENDLOOP.
