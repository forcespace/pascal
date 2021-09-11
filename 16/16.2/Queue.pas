UNIT Queue;
INTERFACE

PROCEDURE EmptyQ;
PROCEDURE AddQ(VAR Elt: CHAR);
PROCEDURE DelQ;
PROCEDURE HeadQ(VAR Elt: CHAR);
PROCEDURE WriteQ;

IMPLEMENTATION

VAR
  Q: TEXT;

PROCEDURE CopyOpen(VAR F1, F2: TEXT);
VAR
  Ch: CHAR;
BEGIN {CopyOpen}
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(F2, Ch)
    END
END;{CopyOpen}

PROCEDURE EmptyQ; {Q := <,/,R>}
BEGIN {EmptyQ}
  REWRITE(Q);
  WRITELN(Q);
  RESET(Q)
END{EmptyQ};

PROCEDURE AddQ(VAR Elt: CHAR); 
{Q = <,x/,R>,��� x ������ � Elt = a --> Q = <,xa/,R> }
VAR
  Temp: TEXT;
BEGIN {AddQ}
  REWRITE(Temp);
  CopyOpen(Q, Temp);
  WRITELN(Temp, Elt);
  RESET(Temp);
  REWRITE(Q);
  CopyOpen(Temp, Q);
  WRITELN(Q);
  RESET(Q)
END; {AddQ}

PROCEDURE DelQ;
{(Q = <,/,R> -->)|(Q = <,ax/,R>,��� a ������ � x ������  --> Q:= <,x/,R> }
VAR
  Ch: CHAR;
  Temp: TEXT;
BEGIN {DelQ} 
  READ(Q, Ch);
  IF NOT EOF(Q)
  THEN 
    BEGIN
      REWRITE(Temp);
      CopyOpen(Q, Temp);
      WRITELN(Temp);
      {�������� Temp � Q}
      RESET(Temp);
      REWRITE(Q);
      CopyOpen(Temp, Q);
      WRITELN(Q)
    END;
  RESET(Q)
END {DelQ};

PROCEDURE HeadQ(VAR Elt: CHAR);
{(Q = <,/,R> --> Elt := '#')| (Q = <,ax/,R>,��� a ������ � x ������-->Elt:= 'a'}
BEGIN {HeadQ}
  IF NOT EOLN(Q)
  THEN
    BEGIN
      READ(Q, Elt);
      RESET(Q)
    END
  ELSE
    Elt := '#'
END; {HeadQ}

PROCEDURE WriteQ;
{(Q = <,x/,R> � OUTPUT =<y,,W>,��� y � x ������  -->OUTPUT := <y&x/,,W> }
BEGIN {WriteQ}
  CopyOpen(Q, OUTPUT);
  WRITELN(OUTPUT);
  RESET(Q)
END;{WriteQ}

BEGIN
END.
