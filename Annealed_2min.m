clc
clear all

%Annealed 2min 



Long = [2,1,2,1,2.5,1.5,0.5,1,0.5,1.5,1,0.5,1.5,1.5,1];


Tran = [1,1,2,2,2,1.5,0.5,1,0.5,1,0.5,0.5,1,1.5,1];



AveLong = mean(Long)

AveTran = mean(Tran)

AspRatio = AveLong/AveTran