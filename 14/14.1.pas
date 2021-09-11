PROGRAM ReverseString(INPUT, OUTPUT);

PROCEDURE Reverse(VAR FileInput, FileOutput: TEXT);
VAR
  Ch: CHAR;
BEGIN
  IF NOT EOLN(FileInput)
  THEN
    BEGIN
      READ(FileInput, Ch);
      Reverse(FileInput, FileOutput);
      WRITE(FileOutput, Ch)
    END
END;

BEGIN
  Reverse(INPUT, OUTPUT)
END.
