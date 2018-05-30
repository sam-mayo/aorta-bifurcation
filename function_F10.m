function [ F10 ] = function_F10( alpha )
%FUNCTION_F10 Summary of this function goes here
%   Detailed explanation goes here
j = sqrt(-1);

J0 = besselj(0,alpha*(j)^(3/2));
J1 = besselj(1,alpha*(j)^(3/2));

F10 = (2*J1)/((alpha*(j)^(3/2))*J0);

end

