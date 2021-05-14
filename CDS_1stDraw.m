clc
clear all

%CDS 1st Draw 



Long = [1.5,0.5,1.5,2,2,2,1,3,1,1.5,2,1.5,1.5,3,2,1,1.5,1,2.5,1.5,1,3,2.5,2.5,1,1.5,1.5,3.5,1.5,1.5];
FixedLong = Long.*5;


Tran = [1,0.5,2,1.5,2,2,1,2,1,1.5,1.5,1,1.5,2,1.5,1.5,1.5,0.5,2,1.5,1,2.5,1.5,1,1,1,3,2,1];
FixedTran = Tran.*5;


AveLong = mean(FixedLong)

AveTran = mean(FixedTran)

AspRatio = AveLong/AveTran