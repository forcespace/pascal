PROGRAM SarahMessage(INPUT, OUTPUT);

PROCEDURE Init(VAR W1, W2, W3, W4: CHAR);
BEGIN
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' '
END;

PROCEDURE Mov(VAR W1, W2, W3, W4: CHAR);
BEGIN
  W1 := W2;
  W2 := W3;
  W3 := W4
END;

PROCEDURE FindLand(VAR W1, W2, W3, W4, Looking: CHAR);
BEGIN
  IF (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd')
  THEN 
    Looking := 'L'
END;

PROCEDURE FindSea(VAR W2, W3, W4, Looking: CHAR);
BEGIN
  IF (W2 = 's') AND (W3 = 'e') AND (W4 = 'a')
  THEN 
    Looking := 'S'
END;

PROCEDURE Success(VAR F1: TEXT; VAR Looking: CHAR);
BEGIN
  IF Looking = 'L'
  THEN
    WRITE(F1, 'The British are coming by land.')
  ELSE
    IF Looking = 'S'
    THEN
      WRITE(F1, 'The British coming by sea.')
    ELSE
      WRITE(F1, 'Sarah didn''t say');
  WRITELN(F1)
END;

PROCEDURE SarahRevere(VAR ReadLetter, SuccessText: TEXT);
VAR
  S1, S2, S3, S4, Flag: CHAR;
BEGIN {SarahRevere}
  Init(S1, S2, S3, S4);
  Flag := 'Y';
  WHILE (Flag = 'Y') AND (NOT EOLN(ReadLetter))
  DO
    BEGIN
      Mov(S1, S2, S3, S4);
      READ(ReadLetter, S4);
      FindLand(S1, S2, S3, S4, Flag);
      FindSea(S2, S3, S4, Flag)
    END;
  Success(SuccessText, Flag)    
END; {Sarah revere}

BEGIN
  SarahRevere(INPUT, OUTPUT)
END.
