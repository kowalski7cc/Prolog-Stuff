celsius_fahrenheit(C, F) :- var(C), !, C is 5/9 * (F - 32).
celsius_fahrenheit(C, F) :- var(F), !, F is (9/5 * C) + 32.