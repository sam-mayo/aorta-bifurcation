function [ Zt ] = terminalImpedance(Rc,omega,L,R,C)
j = sqrt(-1);

Zt = Rc + j*omega*L + (R/(1 + j*omega*R*C));

end
