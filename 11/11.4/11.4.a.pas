PROGRAM PrintReverse(INPUT, OUTPUT);
VAR
  Ch: CHAR;
  F1: TEXT;
BEGIN {PrintReverse}
  Ch := ' ';
  REWRITE(F1); {DP1 INPUT to F1}
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch)
    END; {DP1 INPUT to F1}  
  RESET(F1); {Print F1}
  WHILE NOT EOF(F1)
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(Ch)  
    END; {Print F1}
  WRITELN                     
END. {PrintReverse}
