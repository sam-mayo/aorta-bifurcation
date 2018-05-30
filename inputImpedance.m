function [ Zin ] = inputImpedance(Zc,bigGamma,littleGamma,l)

num = 1 + bigGamma*exp(-2*littleGamma*l);
den = 1 - bigGamma*exp(-2*littleGamma*l);

Zin = Zc*(num/den);

end