PROGRAM Letter(INPUT, OUTPUT);

PROCEDURE Initialization(VAR W1, W2, W3, W4: CHAR);
BEGIN
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' '
END;

PROCEDURE MovingWindow(VAR W1, W2, W3, W4, Looking: CHAR);
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

PROCEDURE Answers(VAR F1: TEXT; VAR Looking: CHAR);
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

PROCEDURE SarahRevere(VAR ReadLetter, AnswersSpace: TEXT);
{Печать сообщения о том как идут британцы, в зависимости
от того, первым во входе встречается 'land' или 'sea'.}
VAR
  WS1, WS2, WS3, WS4, Flag: CHAR;
BEGIN {SarahRevere}
  Initialization(WS1, WS2, WS3, WS4);
  Flag := 'Y';
  WHILE (Flag = 'Y') AND (NOT EOLN(ReadLetter))
  DO
    BEGIN
      MovingWindow(WS1, WS2, WS3, WS4, Flag);
      READ(ReadLetter, WS4);
      FindLand(WS1, WS2, WS3, WS4, Flag);
      FindSea(WS2, WS3, WS4, Flag)
    END;
  Answers(AnswersSpace, Flag)    
END; {Sarah revere}

BEGIN
  SarahRevere(INPUT, OUTPUT)
END.
