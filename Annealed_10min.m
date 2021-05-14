clc
clear all

%Annealed 10 min 



Long = [0.5,1,0.5,0.5,0.5,0.5,0.5,1,0.5,0.5,0.5,2,0.5,1.5,0.5,0.50,0.75,1,1,1.5,1.75,1,0.5,1,1,0.75,1];

LongFixed = Long.*2;


Tran = [1,2,1,1,1,1,1,2,1,1,1,2,2,1,1,1,1.5,1,1.5,2,2,2,1,1.5,1.5,1.5,2];

%TranFixed = Tran.*2;

AveLong = mean(Long)

AveTran = mean(Tran)

AspRatio = AveLong/AveTran