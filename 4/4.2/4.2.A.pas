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
    BEGIN {ƒвигать окно, провер€ть конец данных}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      WRITELN(W1, W2, W3, W4);
      IF W4 = '#'
      THEN
        Looking := 'N'
    END {ƒвигать окно, провер€ть конец данных}
  {создать сообщение Sarah}
END. {Sarah revere}
