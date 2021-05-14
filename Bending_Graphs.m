%MECH3400 Lab assignment
%3 point bending Lab
%Plotting the 3 point bending test from the lab

close all
clear all
clc


%Diameters of wires in mm
AS_Di = 2.94;
D1_Di = 2.79; 
D2_Di = 2.44;
D3_Di = 2.27;


%Distance between points in mm
Point_Di = 19.09;


%Reading Lab excel file for As Supplied Bending
AS_data = readtable('As_Recieved.xlsx','Range','A4:C6014');
AS_dataArray = table2array(AS_data);

%Reading Lab excel file for Draw 1 Bending
D1_data = readtable('first_drawn.xlsx','Range','A4:C6014');
D1_dataArray = table2array(D1_data);

%Reading Lab excel file for Draw 2 Bending
D2_data = readtable('second_drawn.xlsx','Range','A4:C5993');
D2_dataArray = table2array(D2_data);

%Reading Lab excel file for Draw 3 Bending
D3_data = readtable('3rd_drawn.xlsx','Range','A4:C6012');
D3_dataArray = table2array(D3_data);


AS_time = AS_dataArray(:,1);
AS_force = AS_dataArray(:,2)-7.12-5.9737;
AS_stroke = AS_dataArray(:,3)-0.39-0.074;

D1_time = D1_dataArray(:,1);
D1_force = D1_dataArray(:,2)-6.5313-3.4843;
D1_stroke = D1_dataArray(:,3)-0.666-0.026;

D2_time = D2_dataArray(:,1);
D2_force = D2_dataArray(:,2)-7.5781-10.5157-1;
D2_stroke = D2_dataArray(:,3)-0.768-0.1090-0.01;

D3_time = D3_dataArray(:,1);
D3_force = D3_dataArray(:,2)-6.4219-7.5156;
D3_stroke = D3_dataArray(:,3)-1.121-0.105;


%plotting the first 
figure (1), plot(D1_stroke,D1_force,'DisplayName','D1','LineWidth',1.5,'Color','#E1BE6A')
title('Drawing 1')
xlabel('Stroke [mm]')
ylabel('Force [N]')
grid on
grid minor
xlim([0 5])
hold on
x = 0.0867;
D1 =@(x) 222.85.*x - 2.6813;
fplot(D1, [0 1]);
hold off



figure (2), plot(D2_stroke,D2_force,'DisplayName','D2','LineWidth',1.5,'Color','#E1BE6A')
title('Drawing 2')
xlabel('Stroke [mm]')
ylabel('Force [N]')
grid on
grid minor
xlim([0 5])
hold on
x = 0.0821;
D2 =@(x) 154.2175.*x + 0.1872;
fplot(D2, [0 1]);
hold off


figure (3), plot(D3_stroke,D3_force,'DisplayName','D3','LineWidth',1.5,'Color','#E1BE6A')
title('Drawing 3')
xlabel('Stroke [mm]')
ylabel('Force [N]')
grid on
grid minor
xlim([0 5])
hold on
x = 0.0755;
D3 =@(x) 108.5784.*x - 0.0464;
fplot(D3, [0 1]);
hold off


figure (4), plot(AS_stroke,AS_force,'DisplayName','AS','LineWidth',1.5,'Color','#E1BE6A')
title('As Supplied')
xlabel('Stroke [mm]')
ylabel('Force [N]')
grid on
grid minor
xlim([0 5])
hold on
x = 0.0909;
AS =@(x) 237.6189.*x - 0.0174;
fplot(AS, [0 0.2]);
hold off




figure (5), plot(D1_stroke,D1_force,'DisplayName','D1','LineWidth',1.5,'Color','#E1BE6A')
hold on
title('Combined Bending Graphs')
xlabel('Stroke [mm]')
ylabel('Force [N]')
grid on
grid minor
xlim([0 5])
plot(D2_stroke,D2_force,'DisplayName','D2','LineWidth',1.5,'Color','#40B0A6')
hold on
plot(D3_stroke,D3_force,'DisplayName','D3','LineWidth',1.5,'Color','#E66100')
hold on
plot(AS_stroke,AS_force,'DisplayName','AS','LineWidth',1.5,'Color','#5D3A9B')
hold on
legend
hold off

