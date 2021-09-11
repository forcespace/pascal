PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
TYPE
  Score = 0 .. 100;
VAR
  WhichScore: 1 .. NumberOfScores;
  Student: 1 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
  F2: TEXT;
  Ch: CHAR;

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
    END
END;

BEGIN {AverageScore}
  ClassTotal := 0;
  Student := 1;
  WHILE Student <= ClassSize
  DO 
    BEGIN
      TotalScore := 0;
      NextScore := 0;
      WhichScore := 1;
      WRITE('Student averages:');
      WHILE (Ch <> ' ') AND (NOT EOLN)
      DO
        BEGIN
          READ(Ch);
          WRITE(Ch)
        END;
      WHILE WhichScore <= 4
      DO
        BEGIN
          READ(NextScore);
          TotalScore := TotalScore + NextScore;
          WhichScore := WhichScore + 1
        END;
      TotalScore := TotalScore * 10;
      Ave := TotalScore DIV NumberOfScores;
      IF Ave MOD 10 >= 5
      THEN
        BEGIN
          
          WRITELN(Ave DIV 10 + 1)
        END
      ELSE
        BEGIN
          WRITELN(Ave DIV 10)
        END;
      ClassTotal := ClassTotal + TotalScore;
      READLN;
      WRITELN;
      Student := Student + 1
    END;
  WRITELN;
  ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
  WRITE('Class average: ');
  WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
END.  {AverageScore}

