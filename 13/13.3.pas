PROGRAM TestSplit(INPUT, OUTPUT);
VAR
  Odds, Evens: TEXT;
  Ch: CHAR;

PROCEDURE CopyOut(VAR F1: TEXT; VAR Ch: CHAR);
BEGIN
  RESET(F1);
  WHILE NOT EOF(F1)
  DO
    BEGIN
      WHILE NOT EOLN(F1)
      DO
        BEGIN
          READ(F1, Ch);
          WRITE(OUTPUT, Ch)
        END;
      READLN(F1)
    END
END;

PROCEDURE Split(VAR F1, Odds, Evens: TEXT);
VAR
  Ch, Next: CHAR;
BEGIN
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O';
  WHILE NOT EOF(F1)
  DO
    BEGIN
      WHILE NOT EOLN(F1)
      DO
        BEGIN
          READ(F1, Ch);
          IF Next = 'O'
          THEN
            BEGIN
              WRITE(Odds, Ch);
              Next := 'E'
            END
          ELSE
            BEGIN
              WRITE(Evens, Ch);
              Next := 'O'
            END
         END;	
      READLN(F1);
      WRITELN(Odds);
      WRITELN(Evens)
    END
END;

BEGIN
  Split(INPUT, Odds, Evens);
  CopyOut(Odds, Ch);
  CopyOut(Evens, Ch);
  WRITELN
END.
