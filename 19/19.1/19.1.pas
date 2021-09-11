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
BEGIN {AverageScore}
  ClassTotal := 0; 
  Student := 1;
  WHILE Student <= ClassSize 
  DO 
    BEGIN
      TotalScore := 0;
      NextScore := 0;  
      WhichScore := 1;
      WRITELN('Student averages:');
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
        WRITE('AverageScore: ', Ave DIV 10 + 1)
      ELSE
        WRITE('AverageScore: ', Ave DIV 10);
      ClassTotal := ClassTotal + TotalScore;
      READLN;
      WRITELN;
      Student := Student + 1
    END;
  WRITELN;
  ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
  WRITELN('Class average:');
  WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
END.  {AverageScore}
