PROGRAM SelectSort(INPUT, OUTPUT);
{��������� �������, �������������� #, �� INPUT � OUTPUT.
 ��������� ������ ������, ���� � INPUT ����������� #}
VAR
  Ch, Min: CHAR;
  F1, F2: TEXT;
BEGIN {SelectSort}
  {���������� INPUT � F1 � ��� � OUTPUT DP1.1}
  REWRITE(F1);
  WRITE(OUTPUT, 'INPUT DATA: ');
  READ(INPUT, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITE(F1, Ch);
      WRITE(OUTPUT, Ch);
      READ(INPUT, Ch)
    END;
  WRITELN(OUTPUT);
  WRITELN(F1, '#');
  {���������� INPUT � F1 � ��� � OUTPUT DP1.1}
  {�������� �������� ��� ������ Ch �� F1}
  RESET(F1);
  WHILE Ch <> '#'
  DO
    BEGIN
      READ(F1, Ch);
      WRITELN(Ch)
    END  
  {�������� �������� ��� ������ Ch �� F1}
  {����������� F1 � OUTPUT, ��������� ��������� SelectSort}
END. {SelectSort}

