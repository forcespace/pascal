PROGRAM Encryption(INPUT, OUTPUT);
CONST
  Len = 20;
TYPE
  Str = ARRAY [1 .. Len] OF CHAR;
  Chiper = ARRAY [CHAR] OF CHAR;
  Length = 0 .. Len;
VAR
  I: Length;
  Msg: Str;
  Code: Chiper;

PROCEDURE Init(VAR Code: Chiper);
VAR
 Ch1, Ch2, Ch3: CHAR;
 F: TEXT;
BEGIN
 ASSIGN(F, 'alph.txt');
 RESET(F);
 WHILE NOT EOF(F)
 DO
   BEGIN
     READLN(F, Ch1, Ch2, Ch3);
     Code[Ch3] := Ch1
   END;
  CLOSE(F) 
END; 
 
PROCEDURE Encode(VAR S: Str; VAR L: Length);
VAR
  Index: Length;
BEGIN {Encode}
  FOR Index := 1 TO L
  DO
    IF S[Index] IN [' ' .. 'Z']
    THEN
      WRITE(Code[S[Index]])
    ELSE
      WRITE(S[Index]);
  WRITELN
END;  {Encode}

BEGIN {Encryption}
  Init(Code);
  WHILE NOT EOF
  DO
    BEGIN
      I := 0;
      WHILE NOT EOLN AND (I < Len)
      DO
        BEGIN
          I := I + 1;
          READ(Msg[I])
        END;
      READLN;
      WRITELN;
      Encode(Msg, I)
    END
END.  {Encryption}
