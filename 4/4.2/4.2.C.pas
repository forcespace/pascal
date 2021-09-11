PROGRAM SarahRevere(INPUT, OUTPUT);
{ѕечать сообщени€ о том как идут британцы, в зависимости 
от того, первым во входе встречаетс€ 'land' или 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  {инициализаци€ W1, W2, W3, W4, Looking}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := 'Y';
  WHILE Looking = 'Y'
  DO
    BEGIN
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      IF W4 = '#'
      THEN
        Looking := 'N';
      {ѕроверка окна дл€  'land'}
      IF W1 = 'l'
      THEN
        IF W2 = 'a'
        THEN
          IF W3 = 'n'
          THEN
            IF W4 = 'd'
            THEN
              Looking := 'L';
      IF W2 = 's'
      THEN
        IF W3 = 'e'
        THEN
          IF W4 = 'a'
          THEN
            Looking := 'S'
     END;
      {создать сообщение Sarah}
     IF Looking = 'L'
     THEN
       WRITELN('The British are coming by land.')
     ELSE
       IF Looking = 'S'
       THEN
         WRITELN('The British are coming by sea.')
       ELSE
         WRITELN('Sarah didn''t say')     
END. {Sarah revere}
