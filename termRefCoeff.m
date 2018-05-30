function [ bigGamma ] = termRefCoeff(Zt,Zc)

num = Zt - Zc;
den = Zt + Zc;

bigGamma = num/den;

end