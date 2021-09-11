PROGRAM TestRemove(INPUT, OUTPUT);

USES Queue;
VAR
  Ch: CHAR;

PROCEDURE RemoveExtraBlanks;

VAR
  Ch ,Blank, LineEnd: CHAR;
BEGIN 
  Blank := ' ';
  LineEnd :='$';
  AddQ(LineEnd); 
  HeadQ(Ch);
  WHILE Ch = Blank
  DO
    BEGIN
      DelQ;
      HeadQ(Ch)
    END;
  WHILE Ch <> LineEnd
  DO
    BEGIN
    
      WHILE (Ch <> Blank) AND (Ch <> LineEnd)
      DO
        BEGIN
          AddQ(Ch);
          DelQ;
          HeadQ(Ch)
        END;
        
      WHILE Ch = Blank
      DO
        BEGIN
          DelQ;
          HeadQ(Ch)
        END;
        
      IF Ch <> LineEnd
      THEN
        AddQ(Blank)
    END;
  DelQ 
END; {RemoveExtraBlanks}

BEGIN {TestRemove}
  EmptyQ;
  WRITE('Before:');
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      AddQ(Ch)
    END;
  WRITELN;
  RemoveExtraBlanks;
  WRITE('After:');
  WriteQ
END. {TestRemove}

