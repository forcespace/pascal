PROGRAM ReadNumber(INPUT, OUTPUT);
VAR
  Number: INTEGER;

PROCEDURE ReadD(VAR F: TEXT; VAR D: INTEGER);
VAR
  Ch: CHAR;
BEGIN
  D := -1;
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      IF Ch = '0' THEN D := 0 ELSE
      IF Ch = '1' THEN D := 1 ELSE
      IF Ch = '2' THEN D := 2 ELSE
      IF Ch = '3' THEN D := 3 ELSE
      IF Ch = '4' THEN D := 4 ELSE
      IF Ch = '5' THEN D := 5 ELSE
      IF Ch = '6' THEN D := 6 ELSE
      IF Ch = '7' THEN D := 7 ELSE
      IF Ch = '8' THEN D := 8 ELSE
      IF Ch = '9' THEN D := 9
    END
END;

PROCEDURE ReadNumber(VAR F: TEXT; VAR Number: INTEGER);

VAR
  D: INTEGER;
  IssetInteger: BOOLEAN;
BEGIN
  Number := 0;
  D := 0;
  IssetInteger := FALSE;
  WHILE (D <> -1) AND (Number <> -1)
  DO
    BEGIN
      ReadD(F, D);
      IF D <> -1
      THEN
        BEGIN
          IssetInteger := TRUE;
          IF Number <= ((MAXINT - D) DIV 10)
          THEN
            Number := Number * 10 + D
          ELSE
            Number := -1
        END
    END;
  IF NOT IssetInteger
  THEN
    Number := 0
END;

BEGIN
  WRITE('MAXINT: ');
  WRITELN(OUTPUT, MAXINT);
  ReadNumber(INPUT, Number);
  WRITELN(OUTPUT, Number)
END.
