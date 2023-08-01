*&---------------------------------------------------------------------*
*& Report y_cte_hunmcp
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y_cte_hunmcp.
DATA carrid TYPE spfli-carrid VALUE 'LH'.
cl_demo_input=>request( CHANGING field = carrid ).

WITH
  +cities AS (
    SELECT cityfrom AS city
           FROM spfli
           WHERE carrid = @carrid
    UNION DISTINCT
    SELECT cityto AS city
           FROM spfli
           WHERE carrid = @carrid )
  SELECT *
         FROM sgeocity
         WHERE city IN ( SELECT city
                                FROM +cities )
         INTO TABLE @DATA(result).

cl_demo_output=>display( result ).
