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
  WHILE Sorted ='N'
  DO
    BEGIN
      {�������� F1 � F2, �������� �����������������
       � ����������� ������ �������� ������� �� ������� 8.1}
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      IF NOT EOLN(F1)
      THEN
        BEGIN
          READ(F1, Ch1);
          WHILE NOT EOLN(F1)
          DO {�� ������� ���� ��� ������� �������� ��� Ch1, Ch2}
            BEGIN
              READ(F1, Ch2);
              {������� min(Ch1, Ch2) �  F2, ���������
               ��������������� ������� 8.1.1}
              IF Ch1 <= Ch2
	          THEN
                BEGIN
                  WRITE(F2, Ch1);
                  Ch1 := Ch2
                END
              ELSE
                BEGIN
                  WRITE(F2, Ch2);
                  Sorted := 'N'
                END
              {������� min(Ch1, Ch2) �  F2, ���������
               ��������������� ������� 8.1.1}
            END;
          WRITELN(F2, Ch1) {������� ��������� ������ � F2}
        END;
      {�������� F1 � F2,�������� �����������������
       � ����������� ������ �������� ������� �� ������� 8.1}
      {�������� F2 � F1 8.4}
      RESET(F2);
      REWRITE(F1);
      WHILE NOT EOLN(F2)
      DO
        BEGIN
          READ(F2, Ch);
          WRITE(F1, Ch);
          WRITE(Ch)
        END;
      WRITELN
      {�������� F2 � F1 8.4}
    END
END. {BubbleSort}
