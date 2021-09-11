PROGRAM Sorting(INPUT, OUTPUT);

PROCEDURE CopyFile(VAR F1, F2: TEXT);
VAR 
  Ch: CHAR;
BEGIN {CopyFile}
  RESET(F1);
  REWRITE(F2);
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(F2, Ch)
    END;
  WRITELN(F2)
END;{CopyFile}

PROCEDURE Buble(VAR F1: TEXT; VAR Sorted: CHAR);
VAR
  F2: TEXT;
  Ch1, Ch2: CHAR;
BEGIN {Buble}
  Sorted := 'Y';
  RESET(F1);
  REWRITE(F2);
  IF NOT EOLN(F1)
  THEN
    BEGIN
      READ(F1, Ch1);
      WHILE NOT EOLN(F1)
      DO { По крайней мере два символа остается для Ch1,Ch2 }
        BEGIN
          READ(F1, Ch2);
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
        END;
      WRITELN(F2, Ch1) { Выводим последний символ в F2 }
    END;
  CopyFile(F2, F1)
END; {Buble}

PROCEDURE BubbleSort(VAR UnsortedFile, SortedFileOut: TEXT);
VAR
  SortedNew: CHAR;
  F1: TEXT;
BEGIN {BubbleSort}
  CopyFile(UnsortedFile, F1);
  SortedNew := 'N';
  WHILE SortedNew = 'N'
  DO
    Buble(F1, SortedNew);
  CopyFile(F1, SortedFileOut)
END;{BubbleSort}

BEGIN
  BubbleSort(INPUT, OUTPUT)
END.
