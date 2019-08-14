*&---------------------------------------------------------------------*
*& Report  SAPBC430S_DATA_ELEMENTS                                     *
*&                                                                     *
*&---------------------------------------------------------------------*
*&                                                                     *
*&                                                                     *
*&---------------------------------------------------------------------*

REPORT  zbc430_26_data_elements.

**Replace ## by Your group- or screennumber and
**uncomment the ABAP-coding

DATA:       result   TYPE zassets26.

PARAMETERS: pa_fname TYPE zfirstname26,
            pa_lname TYPE zlastname26,
            pa_activ TYPE zassets26,
            pa_liabs TYPE zliabilities999,
            testasd TYPE CE_OBJ_TXT.

START-OF-SELECTION.

  NEW-LINE.
  WRITE: 'Client:', pa_fname, pa_lname.

  result = pa_activ - pa_liabs.

  NEW-LINE.
  WRITE: 'Finance:', pa_activ, pa_liabs, result.
