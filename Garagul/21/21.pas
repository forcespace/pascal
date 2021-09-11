PROGRAM Prime(INPUT, OUTPUT);
CONST
  Max = 25;
  Pixel = 'X';
  M = [1, 5, 6, 7, 9, 10, 11, 13, 15, 16, 20, 21, 25];
  A = [3, 7, 9, 12, 13, 14, 16, 20];
  O = [1, 2, 3, 4, 5, 6, 10, 11, 15, 16, 20, 21, 22, 23, 24, 25];
TYPE
  Grid = SET OF 1 .. Max;
VAR
  GridNumber: INTEGER;
  Ch: CHAR;
  GridSet, InSet: Grid;

PROCEDURE GetSet(VAR Ch: CHAR; VAR XSet: Grid);
BEGIN
  CASE Ch OF
    'A' : XSet := A;
    'O' : XSet := O;
    'M' : XSet := M
  END
END;

PROCEDURE PrintSet(VAR GridSet: Grid);
VAR 
  Number: INTEGER;
BEGIN
  WRITELN;
  FOR Number := 1 TO Max
  DO
    BEGIN
      IF Number IN GridSet
      THEN
         WRITE(Pixel)
      ElSE
         WRITE(' ');
      IF Number MOD 5 = 0
      THEN
         WRITELN
    END
END;

BEGIN
  WHILE NOT EOLN
  DO
  BEGIN
    READ(Ch);
    GetSet(Ch, InSet);
    PrintSet(InSet)
  END
END.

