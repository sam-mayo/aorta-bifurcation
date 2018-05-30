function [ ZinCReal,ZinCImag ] = ZvsF( f,param )
%ZVSF receives a vector of frequencies and a parameters structure and 
%outputs the real and imaginary components of the impedances.
%   Detailed explanation goes here

scaleFactor = 0.1;
omega = angFreq(f);
len_om = length(omega);
i = 1;
Zin1 = zeros(0,len_om);
Zin2 = zeros(0,len_om);
ZinC = zeros(0,len_om);
ZinCReal = zeros(0,len_om);
ZinCImag = zeros(0,len_om);

while i < (len_om+1)
    Zin1(i) = inputImpedanceBig(omega(i),param.rho,param.visc,param.E1,param.h1,param.r1,param.l1,param.sigma,param.phi0,param.k,param.R,param.L,param.C1,param.Rc1);
    Zin2(i) = inputImpedanceBig(omega(i),param.rho,param.visc,param.E2,param.h2,param.r2,param.l2,param.sigma,param.phi0,param.k,param.R,param.L,param.C2,param.Rc2);
    ZinC(i) = combinedInputImpedance(Zin1(i),Zin2(i));
    ZinCReal(i) = abs(ZinC(i))*scaleFactor;
    ZinCImag(i) = angle(ZinC(i));
    i = i + 1;
end

end

