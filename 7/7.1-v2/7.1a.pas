PROGRAM BubbleSort(INPUT, OUTPUT);
{��������� ������ ������ INPUT � OUTPUT}
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN {BubbleSort}
  {�������� INPUT � F1 8.2}
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch)
    END;
  WRITELN(F1);
  {�������� INPUT � F1 8.2}
  Sorted := 'N';
  RESET(F1);
  WHILE Sorted ='Y'
  DO
    BEGIN
      {�������� F1 � F2, �������� �����������������
       � ����������� ������ �������� ������� �� ������� 8.1}
      {�������� F2 � F1 8.4}
    END;
    {�������� F1 � OUTPUT 8.5}
    RESET(F1);
    WHILE NOT EOLN(F1)
    DO
      BEGIN
        READ(F1, Ch);
        WRITE(Ch)
      END;
    {�������� F1 � OUTPUT 8.5}
  WRITELN
END. {BubbleSort}
