function [ Zc ] = charImpedance(rho,C0,r,sigma,F10,phi)
j = sqrt(-1);

num = rho*C0;
den = pi*r^2*sqrt(1-sigma^2);
coeff = (1-F10)^(-1/2)*exp(j*phi/2);

Zc = (num/den)*coeff;

end