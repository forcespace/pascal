PROGRAM PrintReverse(INPUT, OUTPUT);
VAR
  Ch: CHAR;
  F1, F2: TEXT;
BEGIN {PrintReverse}
  Ch := ' ';
  REWRITE(F1);
  REWRITE(F2);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch)
    END;
  RESET(F1);
  WHILE NOT EOF(F1)
  DO
    BEGIN
      WRITE(Ch);
      RESET(F1);
      REWRITE(F2);      
      WHILE NOT EOF(F1)
      DO
        BEGIN
          READ(F1, Ch);
          IF NOT EOF(F1)
          THEN
            WRITE(F2, Ch)
        END;
      REWRITE(F1);      
      RESET(F2);
      WHILE NOT EOF(F2)
      DO
        BEGIN
          READ(F2, Ch);
          WRITE(F1, Ch)
         END
 
    END;
  WRITELN                     
END. {PrintReverse}
