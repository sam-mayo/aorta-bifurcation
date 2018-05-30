function [ ZinC ] = combinedInputImpedance(Zin1,Zin2)

ZinC = 1/((1/Zin1)+(1/Zin2));

end