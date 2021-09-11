PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
TYPE
  Score = 0 .. 100;
  Digit = '0' .. '9';
VAR
  WhichScore: 1 .. NumberOfScores;
  Student: 1 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
  F2: TEXT;
  D: Digit;

PROCEDURE SaveName(VAR FIn, FOut: TEXT);
VAR 
  Ch: CHAR;
BEGIN
  RESET(FIn);
  REWRITE(FOut);
  WHILE (Ch <> ' ') AND (NOT EOLN(FIn))
  DO
    BEGIN
       READ(FIn, Ch);
       WRITE(FOut, Ch)
    END;
  WRITELN(FOut)
END;


BEGIN
  SaveName(INPUT, F2);
  WRITELN;
  SaveName(F2, OUTPUT)
END.
