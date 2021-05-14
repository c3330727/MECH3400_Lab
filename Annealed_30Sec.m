clc
clear all

%Annealed 30 second


Long = [0.5, 0.5, 1, 1, 1,1,0.5,0.5,0.5,1,1,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5];


Tran = [0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,1,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5];



AveLong = mean(Long)

AveTran = mean(Tran)

AspRatio = AveLong/AveTran