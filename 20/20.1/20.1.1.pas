PROGRAM Prime(INPUT, OUTPUT);
CONST
  Min = 2;
  Max = 100;
TYPE
  TNumberSet = SET OF 2 .. Max;
VAR
  Number: INTEGER;
  NumbersSet: TNumberSet;

PROCEDURE Sieve(VAR Number: TNumberSet; VAR PrimeNumber: INTEGER);
VAR
  Multiple: INTEGER;
BEGIN
  WRITE(OUTPUT, PrimeNumber, ' ');
  Multiple := 1;
  WHILE Multiple * PrimeNumber <= Max
  DO
    BEGIN
      Number := Number - [Multiple * PrimeNumber];
      Multiple := Multiple + 1
    END
END;

BEGIN
  WRITE('Prime numbers before ', Max, ': ');
  Number := 2;
  NumbersSet := [2..Max];
  WHILE Number <= Max
  DO
    BEGIN
      IF Number IN NumbersSet
      THEN
        Sieve(NumbersSet, Number);
      Number := Number + 1  
    END;
  WRITELN        
END.   
