MODULE LVS;

  IMPORT Out,Strings;

  PROCEDURE LetterValueSum(s:ARRAY OF CHAR):LONGINT;
    VAR
      i,sum:LONGINT;
  BEGIN
    sum := 0;
    IF LEN(s)-1 = 0 THEN RETURN sum END;
    FOR i := 0 TO Strings.Length(s)-1 DO
      sum := sum + (ORD(s[i]) - 96);
    END;
    RETURN sum;
  END LetterValueSum;
  
BEGIN
  Out.Int(LetterValueSum(""),0); Out.Ln;
  Out.Int(LetterValueSum("a"),0); Out.Ln;
  Out.Int(LetterValueSum("z"),0); Out.Ln;
  Out.Int(LetterValueSum("cab"),0); Out.Ln;
  Out.Int(LetterValueSum("excellent"),0); Out.Ln;
  Out.Int(LetterValueSum("microspectrophotometries"),0); Out.Ln;
END LVS.

