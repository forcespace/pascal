PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN
  {��������� INPUT �� Odds � Evens}
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O';
  READ(INPUT, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
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
        END;
      READ(INPUT, Ch)
    END;
  WRITELN(Odds, '#');
  WRITELN(Evens, '#');
  BEGIN{������� Odds � OUTPUT}
    RESET(Odds);
    READ(Odds, Ch);
    WHILE Ch <> '#'
    DO
      BEGIN
        WRITE(OUTPUT, Ch);
        READ(Odds, Ch)
      END
  END;{������� Odds � OUTPUT}
  BEGIN{������� Evens � OUTPUT}
    RESET(Evens);
    READ(Evens, Ch);
    WHILE Ch <> '#'
    DO
      BEGIN
        WRITE(OUTPUT, Ch);
        READ(Evens, Ch)
      END
  END;{������� Evens � OUTPUT}
  WRITELN(OUTPUT)
END.
