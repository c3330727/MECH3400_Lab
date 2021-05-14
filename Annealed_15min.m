clc
clear all

%Annealed 10 min 



Long = [1,1,0.5,2,4,2,1.5,2,3,2.5,3,1.5,1.5,2,2,2.5,2.5,2.5,1,2,1.5,1,1.5,2.5,1.5,1,1];



Tran = [1.5,1,0.5,1.5,4.5,1.5,2,1.5,1.5,2,2,1.5,1.5,2,3,2,1.5,1.5,1,3,2,1,1.5,2.5,1.5,1,1];


AveLong = mean(Long)

AveTran = mean(Tran)

AspRatio = AveLong/AveTran