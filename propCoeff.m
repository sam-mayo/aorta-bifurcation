function [ littleGamma ] = propCoeff(omega,C0,sigma,F10,phi)
j = sqrt(-1);

a = j*omega/C0;
b = (1-sigma^2)/(1-F10);

littleGamma = a*sqrt(b)*exp(-j*phi/2);

end