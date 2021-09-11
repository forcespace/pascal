PROGRAM Prime(INPUT, OUTPUT);
CONST
  Min = 2;
  Max = 100;
TYPE
  TNumberSet = SET OF Min .. Max;
VAR
  TargetNumber: INTEGER;
  NumbersSet: TNumberSet;

PROCEDURE SieveOfEratosthenes(VAR TargetNumber: TNumberSet; VAR PrimeNumber: INTEGER);
VAR
  Multiple: INTEGER;
BEGIN
  WRITE(OUTPUT, PrimeNumber, ' ');
  Multiple := 1;
  WHILE Multiple * PrimeNumber <= Max
  DO
    BEGIN
      TargetNumber := TargetNumber - [Multiple * PrimeNumber];
      Multiple := Multiple + 1
    END
END;

BEGIN
  WRITE('Prime numbers before ', Max, ': ');
  TargetNumber := 2;
  NumbersSet := [Min .. Max];
  WHILE TargetNumber <= Max
  DO
    BEGIN
      IF TargetNumber IN NumbersSet
      THEN
        SieveOfEratosthenes(NumbersSet, TargetNumber);
      TargetNumber := TargetNumber + 1  
    END;
  WRITELN        
END.   
