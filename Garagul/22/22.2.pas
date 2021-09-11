PROGRAM Encryption(INPUT, OUTPUT); 
{Переводит символы из INPUT в код согласно Chiper  и печатает новые символы в OUTPUT}
CONST
  Len = 20;
TYPE
  Str = ARRAY [1 .. Len] OF CHAR;
  Chiper = ARRAY [CHAR] OF CHAR;
  Lenth = 0 .. Len;
  CharSet = SET OF CHAR;

VAR
  Msg: Str;
  Code: Chiper;
  I: Lenth;
  CodeSet: CharSet;

PROCEDURE Initialize(VAR Code: Chiper; VAR CodeSet: CharSet);
VAR
  F: TEXT;
  Ch1, Ch2, Ch3: CHAR;
{Присвоить Code шифр замены}
BEGIN {Initialize}
  ASSIGN(F, 'alph.txt');
  RESET(F);
  CodeSet := [];
  WHILE NOT EOF(F)
  DO
    BEGIN
      READ(F, Ch1, Ch2, Ch3);
      Code[Ch1] := Ch3;
      CodeSet := CodeSet + [Ch1];
      READLN(F)
    END;
  CLOSE(F)
END;  {Initialize}

PROCEDURE Encode(S: Str; L: Lenth; CodeSet: CharSet);
{Выводит символы из Code, соответствующие символам из S}
VAR
  Index: Lenth;
BEGIN {Encode}
  FOR Index := 1 TO L
  DO
    IF S[Index] IN CodeSet
    THEN
      WRITE(Code[S[Index]])
    ELSE
      WRITE(S[Index]);
  WRITELN
END;  {Encode}

BEGIN {Encryption}
  {Инициализировать Code}
  Initialize(Code, CodeSet);
  WHILE NOT EOF
  DO
    BEGIN
      {читать строку в Msg и распечатать ее}
      I := 0;
      WHILE NOT EOLN AND (I < Len)
      DO
        BEGIN
          I := I + 1;
          READ(Msg[I])
        END;
      READLN;
      WRITELN;
      Encode(Msg, I, CodeSet)
    END
END.  {Encryption}

