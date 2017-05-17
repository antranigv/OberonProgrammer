MODULE subsum;

IMPORT Out, Modules;

VAR s : POINTER TO ARRAY OF LONGINT; i : LONGINT;

(* old one --antranigv
PROCEDURE Check ( a : ARRAY OF LONGINT ) : BOOLEAN;
VAR i , sum : LONGINT;
BEGIN
	sum := 0;
	FOR i:=0 TO LEN(a) - 1 DO
		IF a[i] = 0 THEN RETURN TRUE END;
		sum := sum + a[i];
	END;
	Out.Int(sum, 0); Out.Ln;
	IF sum = 0 THEN RETURN TRUE ELSE RETURN FALSE END;
END Check;
*)

PROCEDURE Check ( a : ARRAY OF LONGINT ) : BOOLEAN;
VAR i , sum : LONGINT; ret : BOOLEAN;
BEGIN
	sum	:= 0;
	ret := FALSE;
	i	:= 0;
	REPEAT
		sum := sum + a[i];
		INC(i);
	UNTIL ((i = LEN(a)) OR (a[i -1] = 0));
	IF ((sum = 0) OR (a[i -1] = 0)) THEN ret := TRUE END;
	RETURN ret;
END Check;

BEGIN
	NEW(s, Modules.ArgCount - 1);
	FOR i:=0 TO LEN(s^) - 1 DO
		Modules.GetIntArg(SHORT(i) + 1, s^[i]);
	END;
	Out.String("Hello World"); Out.Ln;
	IF Check(s^) THEN Out.String("True") ELSE Out.String("False") END; Out.Ln;
END subsum.
