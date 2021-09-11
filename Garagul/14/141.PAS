PROGRAM ReverseFiles(INPUT, OUTPUT);

PROCEDURE Reverse(VAR FileIn, FileOut: TEXT);
VAR
  Ch: CHAR;
BEGIN {Reverse}
  IF NOT EOLN(FileIn)
  THEN
    BEGIN
      READ(FileIn, Ch);
      Reverse(FileIn, FileOut);
      WRITE(FileOut, Ch)
    END
  ELSE
    WRITELN(FileOut)
END;{Reverse}

BEGIN
  Reverse(INPUT, OUTPUT)
END.  
