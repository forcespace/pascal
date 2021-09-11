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
  {����������� F1 � OUTPUT, ��������� ��������� SelectSort DP1.2}
  WRITE(OUTPUT, 'Min: ');
  RESET(F1);
  READ(F1, Ch);
  WHILE Ch <> '#'
  DO {Ch <> '#' � Ch1 � ������ ������ F1}
    BEGIN
      {�������� ����������� �� F1 � �������� ������� F1 � F2 DP1.2.1}
      REWRITE(F2);
      Min := Ch;
      READ(F1, Ch);
      WHILE Ch <> '#'
      DO {Ch <> '#' � Ch1 � ������ ������ F1}
        BEGIN
          {�������� ����������� �� (Ch, Min)
          �������� ������ ������ � F2 DP1.2.1.1}
          IF Ch < Min
          THEN  {Ch - ����������� �� (Ch, Min)}
            BEGIN
              WRITE(F2, Min);
              Min := Ch;
            END
          ELSE {Min - ����������� �� (Ch, Min)}
            WRITE(F2, Ch);
          {�������� ����������� �� (Ch, Min)
          �������� ������ ������ � F2 DP1.2.1.1}
          READ(F1, Ch)
        END;
      WRITE(F2, '#');
      {�������� ����������� �� F1 � �������� ������� F1 � F2 DP1.2.1}
      WRITELN(OUTPUT, Min);
      {�������� F2 � F1 DP1.2.2}
    END
  {����������� F1 � OUTPUT, ��������� ��������� SelectSort DP1.2}
END. {SelectSort}
