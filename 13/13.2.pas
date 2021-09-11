PROGRAM Comparison(INPUT, OUTPUT);
VAR
  F1, F2: TEXT;
  TestVariable: CHAR;
  
PROCEDURE Lexico(VAR F1, F2: TEXT; VAR FinalResult: CHAR);
VAR
  Ch1, Ch2: CHAR;
BEGIN {Lexico}
  RESET(F1);
  RESET(F2);
  FinalResult := '0';
  WHILE (NOT EOLN(F1) AND NOT EOLN(F2)) AND (FinalResult = '0')
  DO
    BEGIN
      READ(F1, Ch1);
      READ(F2, Ch2);
      IF (Ch1 < Ch2)
      THEN
        FinalResult := '1'
      ELSE
        IF (Ch1 > Ch2)
        THEN
          FinalResult := '2'
    END;
  IF (NOT EOLN(F1)) AND (EOLN(F2))
  THEN
    FinalResult := '2';
  IF (NOT EOLN(F2)) AND (EOLN(F1))
  THEN
    FinalResult := '1' 
END; {Lexico}

PROCEDURE CopyFile(VAR F1, F2: TEXT);
VAR
  Ch: CHAR;
BEGIN
  RESET(F1);
  REWRITE(F2);
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(F2, Ch)
    END;
  WRITELN(F2)
END;    

BEGIN
  CopyFile(INPUT, F1);
  READLN;
  CopyFile(INPUT, F2);
  Lexico(F1, F2, TestVariable);
  WRITELN(TestVariable)
END.
