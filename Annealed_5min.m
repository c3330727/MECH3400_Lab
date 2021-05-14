clc
clear all

%Annealed 5 min 



Long = [0.5,1,0.5,1,1.5,1.5,1,1,0.5,0.5,1,0.5,2,0.5,1,1,0.5,1,0.5,0.5,1,1,1];

LongFixed = Long.*2;


Tran = [0.5,1,0.5,0.5,1,1.5,1.5,0.5,0.5,0.5,0.5,0.5,1,0.5,1,1.5,0.5,0.5,1,0.5,1.5,1.5,1];

TranFixed = Tran.*2;

AveLong = mean(LongFixed)

AveTran = mean(TranFixed)

AspRatio = AveLong/AveTran