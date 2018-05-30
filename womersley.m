function [ alpha ] = womersley(r,rho,omega,mu)

alpha = r*sqrt((rho*omega)/(mu));

end