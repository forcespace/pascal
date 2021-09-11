PROGRAM Prime(INPUT, OUTPUT);
CONST
  Max = 255;
TYPE
  TNumberSet = SET OF 2 .. Max;
VAR
  Number, MaxNumber: INTEGER;
  NumbersSet: TNumberSet;

PROCEDURE Sieve(VAR NumbersSet: TNumberSet; VAR PrimeNumber: INTEGER);
VAR
  Multiple: INTEGER;
BEGIN
  WRITE(OUTPUT, PrimeNumber, ' ');
  Multiple := 1;
  WHILE Multiple * PrimeNumber <= Max
  DO
    BEGIN
      NumbersSet := NumbersSet - [Multiple * PrimeNumber];
      Multiple := Multiple + 1
    END
END;

BEGIN
  READLN(MaxNumber);
  IF MaxNumber <= Max
  THEN
    BEGIN
      WRITE('Простые числа в диапазоне до ', MaxNumber, ' будут:');
      Number := 2;
      NumbersSet := [2 .. MaxNumber];
      WHILE Number <= MaxNumber
      DO
        BEGIN
          IF Number IN NumbersSet
          THEN
            Sieve(NumbersSet, Number);
          Number := Number + 1 
        END
    END
  ELSE
    WRITE('Error');
  WRITELN
END.
