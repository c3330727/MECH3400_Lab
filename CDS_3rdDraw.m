clc
clear all

%CDS 3rd Draw



Long = [2,2,3,1.5,1,2.5,2,2,1,3,1.5,5,2.5,3,2,2.,3,3.5,2.5,2.5,2,4,2.5];
LongFixed = Long.*5;

Tran = [1.5,1.5,1,0.5,1,1,1,1.5,0.5,0.5,0.5,2,0.5,1.5,1.5,1.5,2,2,2,1,1.5,1,1,1];
TranFixed = Tran.*5;


AveLong = mean(LongFixed)

AveTran = mean(TranFixed)

AspRatio = AveLong/AveTran