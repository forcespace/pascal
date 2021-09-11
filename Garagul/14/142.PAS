PROGRAM CopyFiles(INPUT, OUTPUT);

PROCEDURE RCopy(VAR FileIn, FileOut: TEXT);
VAR
  Ch: CHAR;
BEGIN {Reverse}
  IF NOT EOLN(FileIn)
  THEN
    BEGIN
      READ(FileIn, Ch);
      WRITE(FileOut, Ch);
      RCopy(FileIn, FileOut)
    END
  ELSE
    WRITELN(FileOut)
END;{Reverse}

BEGIN
  RCopy(INPUT, OUTPUT)
END.  
