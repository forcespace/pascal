PROGRAM PrintReverse(INPUT, OUTPUT);
VAR
  Ch: CHAR;
  F1, F2: TEXT;
BEGIN {PrintReverse}
  Ch := ' ';
  REWRITE(F1);
  REWRITE(F2);
  WHILE NOT EOLN {DP1 INPUT to F1}
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch)
    END; {DP1 INPUT to F1}
  RESET(F1);
  WHILE NOT EOF(F1)
  DO
    BEGIN {DP2 Set last INPUT symbol in first position and print this}
      WRITE(Ch);  
      WHILE NOT EOF(F1)
      DO
        BEGIN
          READ(F1, Ch);
          IF EOF(F1)
          THEN
            WRITE(F2, Ch)
        END;    
      REWRITE(F1);
      WRITE(F1, Ch) 
    END; {DP2 Set last INPUT symbol in first position and print this}
  WRITELN                     
END. {PrintReverse}
