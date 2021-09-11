PROGRAM TestReadNumber(INPUT, OUTPUT);
VAR 
  Number: INTEGER;

PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
VAR
  Ch: CHAR;
BEGIN
  D := -1;
  IF NOT EOLN
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

PROCEDURE ReadNumber(VAR F: TEXT; VAR N: INTEGER);
VAR
  Ch: CHAR;
  D, YesDigit, Over: INTEGER;
BEGIN
  N := 0;
  YesDigit := 0;
  Over := -1;
  WHILE D <> -1
  DO
    BEGIN
      ReadDigit(F, D);
      IF D <> -1
      THEN
        BEGIN
          IF N <= (MAXINT - D) DIV 10
          THEN
            BEGIN
              N := N * 10 + D;
              YesDigit := 1
            END
          ELSE
            N := Over
         END
      ELSE
        IF YesDigit = 0
        THEN
          N := -1
    END
END;

BEGIN
  ReadNumber(INPUT, Number);
  WRITELN('MAXINT- ', MAXINT);
  WRITELN('Число - ', Number)
END.
