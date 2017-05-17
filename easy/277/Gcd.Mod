MODULE gcd;

IMPORT Out, Modules;

VAR GCD: INTEGER; arg0, arg1: LONGINT;

PROCEDURE Gcd(a, b : INTEGER): INTEGER;
BEGIN
	IF a = 0 THEN RETURN b END;
	IF b = 0 THEN RETURN a END;
	IF b > a THEN RETURN Gcd(b, a);
	ELSE RETURN Gcd(b, a MOD b) END;
END Gcd;

BEGIN
	Modules.GetIntArg(1, arg0); Modules.GetIntArg(2, arg1);
	GCD := Gcd(SHORT(arg0), SHORT(arg1));
	Out.Int(arg0 DIV GCD, 0); Out.Int(arg1 DIV GCD, 10);
	Out.Ln
END gcd.
