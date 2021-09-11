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
    WRITE(OUTPUT, '¬ходные данные записаны неверно')
  ELSE
    IF M1 = M2
    THEN
      BEGIN
        WRITE(OUTPUT, 'ќба мес€ца ');
        WriteMonth(OUTPUT, M1)
      END
    ELSE
      BEGIN
        WriteMonth(OUTPUT, M1);
        IF M1 < M2
        THEN
          WRITE(OUTPUT, ' предшествует ')
        ELSE
          WRITE(OUTPUT, ' следует за ');
        WriteMonth(OUTPUT, M2)
      END;
  WRITELN(OUTPUT)
END.
