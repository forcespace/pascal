PROGRAM SortMonth(INPUT, OUTPUT);
USES
  DateIO;
VAR
   M1, M2: Month;
BEGIN
  IF NOT EOLN(INPUT)
  THEN
    ReadMonth(INPUT, M1);
  IF NOT EOLN(INPUT)
  THEN
    ReadMonth(INPUT, M2);
  IF (M1 = NoMonth) OR (M2 = NoMonth)
  THEN
    WRITE(OUTPUT, '������� ������ �������� �������')
  ELSE
    IF M1 = M2
    THEN
      BEGIN
        WRITE(OUTPUT, '��� ������ ');
        WriteMonth(OUTPUT, M1)
      END
    ELSE
      BEGIN
        WriteMonth(OUTPUT, M1);
        IF M1 < M2
        THEN
          WRITE(OUTPUT, ' ������������ ')
        ELSE
          WRITE(OUTPUT, ' ������� �� ');
        WriteMonth(OUTPUT, M2)
      END;
  WRITELN(OUTPUT)
END.
