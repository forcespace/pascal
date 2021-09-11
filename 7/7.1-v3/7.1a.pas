PROGRAM BubbleSort(INPUT, OUTPUT);
{Сортируем первую строку INPUT в OUTPUT}
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN {BubbleSort}
  {Копируем INPUT в F1 8.2}
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch)
    END;
  WRITELN(F1);
  {Копируем INPUT в F1 8.2}
  Sorted := 'N';
  RESET(F1);
  WHILE Sorted ='Y'
  DO
    BEGIN
      {Копируем F1 в F2, проверяя отсортированность
       и переставляя первые соседние символы по порядку 8.1}
      {Копируем F2 в F1 8.4}
    END;
    {Копируем F1 в OUTPUT 8.5}
    RESET(F1);
    WHILE NOT EOLN(F1)
    DO
      BEGIN
        READ(F1, Ch);
        WRITE(Ch)
      END;
    {Копируем F1 в OUTPUT 8.5}
  WRITELN
END. {BubbleSort}
