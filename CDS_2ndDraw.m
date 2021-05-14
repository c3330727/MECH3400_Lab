clc
clear all

%CDS 2nd Draw 



Long = [2.5,1.5,2.5,1.5,3,1.5,1.5,1.5,2.5,3,2.5,2,1,3,1.5,5,3,3.5,2,2.5,3,3.5,3,1,2.5,2.5,2,4,3];
FixedLong = Long.*5;


Tran = [1,1,1.5,1.5,1,0.5,1.5,1,1,4.5,1,1.5,0.5,0.5,0.5,2,0.5,2,2,1.5,2,2,2,1,1.5,1.5,1,1,1];
FixedTran = Tran.*5;


AveLong = mean(FixedLong)

AveTran = mean(FixedTran)

AspRatio = AveLong/AveTran