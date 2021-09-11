PROGRAM Decryption(INPUT, OUTPUT); 
{��������� ������� �� INPUT � ��� �������� Chiper  � �������� ����� ������� � OUTPUT}
CONST
  Len = 20;
TYPE
  Str = ARRAY [1 .. Len] OF CHAR;
  Chiper = ARRAY [CHAR] OF CHAR;
  Lenth = 0 .. Len;
  CharSet = SET OF CHAR;

VAR
  Msg: Str;
  Code, DeCode: Chiper;
  I: Lenth;
  CodeSet, DeCodeSet: CharSet;

PROCEDURE Initialize(VAR Code, DeCode: Chiper; VAR CodeSet, DeCodeSet: CharSet);
VAR
  F: TEXT;
  Ch1, Ch2, Ch3: CHAR;
{��������� Code ���� ������}
BEGIN {Initialize}
  ASSIGN(F, 'alph.txt');
  RESET(F);
  CodeSet := [];
  DeCodeSet := [];
  WHILE NOT EOF(F)
  DO
    BEGIN
      READ(F, Ch1, Ch2, Ch3);
      IF Ch3 IN DeCodeSet
      THEN
         WRITELN(OUTPUT, '���� ', Ch1, '->', Ch3, ' �� ����� ���� ��������� ���������!')
      ELSE
         BEGIN
           DeCode[Ch3] := Ch1;
           DeCodeSet := DeCodeSet + [Ch3]
         END;
      Code[Ch1] := Ch3;
      CodeSet := CodeSet + [Ch1];
      READLN(F)
    END;
  CLOSE(F)
END;  {Initialize}


PROCEDURE Decrypt(S: Str; L: Lenth; DeCodeSet: CharSet);
{������� ������� �� Code, ��������������� �������� �� S}
VAR
  Index: Lenth;
BEGIN {Encode}
  FOR Index := 1 TO L
  DO
    IF S[Index] IN DeCodeSet
    THEN
      WRITE(DeCode[S[Index]])
    ELSE
      WRITE(S[Index]);
  WRITELN
END;  {Encode}

BEGIN {Encryption}
  {���������������� Code}
  Initialize(Code, Decode, CodeSet, DeCodeSet);
  WHILE NOT EOF
  DO
    BEGIN
      {������ ������ � Msg � ����������� ��}
      I := 0;
      WHILE NOT EOLN AND (I < Len)
      DO
        BEGIN
          I := I + 1;
          READ(Msg[I])
        END;
      READLN;
      WRITELN;
      Decrypt(Msg, I, DeCodeSet)
    END
END.  {Encryption}

