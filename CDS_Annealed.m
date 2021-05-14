clc
clear all

%CDS Annealed 



Long = [1.5,2.5,1.5,1.5,1,2,0.5,2,2.5,1.5,1,1.5,1,1.5,0.5,1,1,1,1.5,2,1,1,0.5,1,1];
FixedLong = Long.*5;


Tran = [2,2.5,1,3.5,1,1.5,0.5,3,2,1.5,1,1,1,1,0.5,1,1,1.5,11.5,1,2,0.5,1,0.5];
FixedTran = Tran.*5;



AveLong = mean(FixedLong)

AveTran = mean(FixedTran)

AspRatio = AveLong/AveTran