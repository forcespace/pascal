PROGRAM IFSort3(INPUT, OUTPUT);
{��������� 3-������ �� INPUT � OUTPUT}
VAR
  Ch1, Ch2, Ch3: CHAR;
BEGIN {IFSort3}
  READ(Ch1, Ch2, Ch3);
  {��������� Ch1, Ch2, Ch3 � OUTPUT}
  WRITELN('������� ������: ', Ch1, Ch2, Ch3);
  WRITE('C������������ ������: ');
  BEGIN {��������� Ch1, Ch2, Ch3 � OUTPUT}
    IF Ch1 < Ch2
    THEN
      {Ch1 < Ch2:��������� Ch1, Ch2, Ch3 � OUTPUT}
      IF Ch2 < Ch3
      THEN {Ch1 < Ch2 < Ch3:��������� Ch1, Ch2, Ch3 � OUTPUT}
        WRITELN(Ch1, Ch2, Ch3)
      ELSE
        {Ch1 < Ch2, Ch3 <= Ch2:��������� Ch1, Ch2, Ch3 � OUTPUT}
        IF Ch1 < Ch3
        THEN {Ch1 < Ch3 <= Ch2:��������� Ch1, Ch2, Ch3 � OUTPUT}
          WRITELN(Ch1, Ch3, Ch2)
        ELSE {Ch3 <= Ch1 < Ch2:��������� Ch1, Ch2, Ch3 � OUTPUT}
          WRITELN(Ch3, Ch1, Ch2)
    ELSE
  END;
  WRITELN
END. {IFsort3}
