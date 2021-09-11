PROGRAM CopyString(INPUT, OUTPUT);

PROCEDURE RCopy(VAR FileInput, FileOutput: TEXT);
VAR
  Ch: CHAR;
BEGIN
  IF NOT EOLN(FileInput)
  THEN
    BEGIN
      READ(FileInput, Ch);
      WRITE(FileOutput, Ch);
      RCopy(FileInput, FileOutput)
    END
  ELSE
    WRITELN(FileOutput)
END;

BEGIN
  RCopy(INPUT, OUTPUT)
END.
