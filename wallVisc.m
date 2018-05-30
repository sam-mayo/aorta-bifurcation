function [ phi ] = wallVisc(phi0,k,omega)

phi = phi0*(1-exp(-k*omega));

end