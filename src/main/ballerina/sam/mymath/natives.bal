
documentation {
        Returns exp of float.
        P{{val}} float value to get exp
        R{{}} Exp of parameter
}
public native function exp (float val) returns (float);


documentation {
        Returns the value of the 'a' raised to the power of 'b'
        P{{a}} a: the base value
        P{{b}} b: the exponent value
        R{{}} float: result value
}
public native function pow (float a, float b) returns (float);

documentation {
        Returns a random number between 0.0 and 1.0
        R{{}} float: random value
}
public native function random () returns (float);