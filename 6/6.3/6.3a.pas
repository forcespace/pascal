PROGRAM SelectSort(INPUT, OUTPUT);
{Сортирует символы, предшествующие #, из INPUT в OUTPUT.
 Программа выдаст ошибку, если в INPUT отсутствует #}
VAR
  Ch, Min: CHAR;
  F1, F2: TEXT;
BEGIN {SelectSort}
  {Копировать INPUT в F1 и эхо в OUTPUT DP1.1}
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
  {Копировать INPUT в F1 и эхо в OUTPUT DP1.1}
  {Тестовый оператор для вывода Ch из F1}
  RESET(F1);
  WHILE Ch <> '#'
  DO
    BEGIN
      READ(F1, Ch);
      WRITELN(Ch)
    END  
  {Тестовый оператор для вывода Ch из F1}
  {Сортировать F1 в OUTPUT, используя стратегию SelectSort}
END. {SelectSort}

