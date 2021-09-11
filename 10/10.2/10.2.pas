PROGRAM ProjectOne(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4, W5, Ch, Flag: CHAR;
BEGIN
  {Initialization}
  Flag := '0';
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  W5 := ' ';
  {Initialization}
     
  IF NOT EOLN {BEGIN}
  THEN
    READ(Ch);
  WRITE('BEGIN');
  WRITELN; {BEGIN}
  
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      
      IF Ch = ';' {;}
      THEN
        BEGIN
          W1 := Ch;          
          IF Flag = '1'
          THEN
            WRITE(W1)
          ELSE
            WRITE('  ', W1);  
          WRITELN
        END; {;}
      
      IF Ch = '(' {()}
      THEN
        BEGIN
          W1 := Ch;
          WRITE(W1);         
          WHILE (Ch <> ')') AND (NOT EOLN)
          DO
            BEGIN
              READ(Ch);
              WHILE (NOT EOLN) AND (Ch = ' ')
              DO
                READ(Ch);
              W2 := Ch;
              WRITE(W2);
              IF Ch = ','
              THEN     
                WRITE(' ')
            END         
        END; {()} 
       
      IF Ch = '"' {''}
      THEN
        BEGIN
          W1 := Ch;
          WRITE(W1);          
          WHILE (Ch <> '"') AND (NOT EOLN)
          DO
            BEGIN
              READ(Ch);
              W2 := Ch;
              WRITE(W2)
            END         
        END; {''} 
      
      IF Ch = ',' {,}
      THEN
        BEGIN
          W1 := Ch;
          WRITE(W1, ' ')
        END; {,} 
                    
      IF (Ch = 'W') AND (NOT EOLN) {WRITE}
      THEN
        BEGIN
          Flag := '1'; 
          W1 := Ch;
          READ(Ch);
          WRITE('  ');
          IF (Ch = 'R') AND (NOT EOLN) 
          THEN
            BEGIN
              W2 := Ch;
              READ(Ch)
            END;
          IF (Ch = 'I') AND (NOT EOLN) 
          THEN
            BEGIN
              W3 := Ch;
              READ(Ch)
            END;
          IF (Ch = 'T') AND (NOT EOLN) 
          THEN
            BEGIN
              W4 := Ch;
              READ(Ch)
            END;            
          IF (Ch = 'E') AND (NOT EOLN)
          THEN
            W5 := Ch;
          WRITE(W1, W2, W3, W4, W5) 
        END; {WRITE}

      {Set default value for variables} 
      IF Ch = ';' 
      THEN
         Flag := '0'; 
      {Set default value for variables}  
                           
      IF (Ch = 'R') AND (NOT EOLN) {READ}
      THEN
        BEGIN
          Flag := '1';
          WRITE('  '); 
          W1 := Ch;
          READ(Ch);
          IF (Ch = 'E') AND (NOT EOLN)
          THEN
            BEGIN
              W2 := Ch;
              READ(Ch)
            END;
          IF (Ch = 'A') AND (NOT EOLN)
          THEN
            BEGIN
              W3 := Ch;
              READ(Ch)
            END;          
          IF (Ch = 'D') AND (NOT EOLN)
          THEN
            W4 := Ch;
          WRITE(W1, W2, W3, W4) 
        END; {READ}    

      IF (Ch = 'L') AND (NOT EOLN) {LN} 
      THEN
        BEGIN
          W1 := Ch;
          READ(Ch);
          IF (Ch = 'N') AND (NOT EOLN)
          THEN
            W2 := Ch;
          WRITE(W1, W2)
        END {LN}               
    END;  
         
  IF Flag = '1' {END}
  THEN
    BEGIN
      WRITELN;  
      WRITE('END.')
    END
  ELSE
    WRITE('END.');{END} 
  WRITELN             
END.
