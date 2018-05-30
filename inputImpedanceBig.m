function [ Zin ] = inputImpedanceBig(omega,rho,mu,E,h,r,l,sigma,phi0,k,R,L,C,Rc)
%%INPUTIMPEDANCEBIG receives all relevant constants and variables and
%%outputs the input impedance of a vessel
j = sqrt(-1);

phi = wallVisc(phi0,k,omega);
C0 = moensKorteweg(E,h,rho,r);
Zt = terminalImpedance(Rc,omega,L,R,C);
alpha = womersley(r,rho,omega,mu);
F10 = function_F10(alpha);
Zc = charImpedance(rho,C0,r,sigma,F10,phi);
littleGamma = propCoeff(omega,C0,sigma,F10,phi);
bigGamma = termRefCoeff(Zt,Zc);

Zin = inputImpedance(Zc,bigGamma,littleGamma,l);

end