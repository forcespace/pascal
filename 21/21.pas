PROGRAM Print(INPUT, OUTPUT);
CONST
  M = [1, 5, 6, 7, 9, 10, 11, 13, 15, 16, 20, 21, 25];
  O = [1, 2, 3, 4, 5, 6, 10, 11, 15, 16, 20, 21, 22, 23, 24, 25];
  L = [1, 6, 11, 16, 21, 22, 23, 24, 25];
  Max = 25;
  Min = 1;
  Multiple = 5;
  Symbol = '#';

TYPE
  GridLayout = SET OF Min .. Max;

VAR
  Ch: CHAR;
  XSet: GridLayout;  

PROCEDURE GetSet(VAR Ch: CHAR; VAR XSet: GridLayout);
BEGIN
  CASE Ch OF
    'M': XSet := M; 
    'O': XSet := O;
    'L': XSet := L
  END
END;

PROCEDURE PrintSet(VAR XSet: GridLayout);
VAR
  Index: INTEGER;

BEGIN
  FOR Index := Min TO Max
  DO
    BEGIN
      IF Index IN XSet
      THEN
        WRITE(Symbol)
      ELSE
        WRITE(' ');     
      IF Index MOD Multiple = 0
      THEN
        WRITELN
    END
END;

BEGIN
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      GetSet(Ch, XSet);
      PrintSet(XSet)
  END
END.
