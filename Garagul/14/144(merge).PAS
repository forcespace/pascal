PROGRAM NewSort(INPUT, OUTPUT);
VAR
  FTest1, FTest2, FTest3: TEXT;

PROCEDURE CopyFile(VAR F1, F2: TEXT);
VAR 
  Ch: CHAR;
BEGIN {CopyFile}
  RESET(F1);
  REWRITE(F2);
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(F2, Ch)
    END;
  WRITELN(F2)
END;{CopyFile}


PROCEDURE Merge(VAR F1, F2, F3: TEXT);
{Сливает F2, F3 в F1  в сортированном порядке}
VAR 
  Ch2, Ch3: CHAR;
BEGIN {Merge}
  RESET(F2);
  RESET(F3);
  REWRITE(F1);
  IF NOT EOLN(F2)
  THEN
    READ(F2, Ch2);
  IF NOT EOLN(F3)
  THEN
    READ(F3, Ch3);
  WHILE (NOT(EOLN(F2))) AND (NOT(EOLN(F3)))
  DO
    BEGIN
      IF Ch2 < Ch3
      THEN 
        BEGIN
          WRITE(F1, Ch2);
          READ(F2, Ch2)
        END
      ELSE
        BEGIN
          WRITE(F1, Ch3);
          READ(F3, Ch3)
        END
    END;
  IF NOT EOLN(F2)
  THEN
    BEGIN
      WRITE(F1, Ch2);
      WHILE NOT EOLN(F2)
      DO
        BEGIN
          READ(F2, Ch2);
          WRITE(F1, Ch2)          
        END
    END;
  IF NOT EOLN(F3)
  THEN
    BEGIN
      WRITE(F1, Ch3);
      WHILE NOT EOLN(F3)
      DO
        BEGIN
          READ(F3, Ch3);
          WRITE(F1, Ch3)          
        END
    END;
  WRITELN(F1)
END; {Merge}


BEGIN
  WRITE('FTest2: ');
  CopyFile(INPUT, FTest2);
  WRITELN;
  WRITE('FTest3: ');
  READLN;
  CopyFile(INPUT, FTest3);
  Merge(FTest1, FTest2, FTest3);
  WRITELN;
  WRITE('FTest1 MERGE: ');
  CopyFile(FTest1, OUTPUT)
END.
