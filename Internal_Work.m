%MECH3400 Lab assignment
%Stress strain graphs
%Plotting the stress strain graph from the data gained from the lab

close all
clear all
clc

%Reading Lab excel file for as supplied
AS_data = readtable('as_supplied_09032021_110633.xlsx','Range','A2:L13965');
AS_noRead = [4,5,6,7,8,9,10];
AS_data(:, AS_noRead) = [];
AS_dataArray = table2array(AS_data);

%Reading Lab excel file for first draw
FD_data = readtable('first_draw_09032021_111537.xlsx','Range','A2:L13965');
FD_noRead = [4,5,6,7,8,9,10];
FD_data(:, FD_noRead) = [];
FD_dataArray = table2array(FD_data);



AS_time = AS_dataArray(:,1);
AS_load = AS_dataArray(:,2);
AS_extension = AS_dataArray(:,3)+0.00001;
AS_ENG_Stress = AS_dataArray(:,4)-0.0166;
AS_ENG_Strain = 0.01.*AS_dataArray(:,5);
AS_TRUE_Stress = AS_ENG_Stress.*(1 + AS_ENG_Strain);
AS_TRUE_Strain = log(1 + AS_ENG_Strain);


FD_time = FD_dataArray(:,1);
FD_load = FD_dataArray(:,2)-0.35;
FD_extension = FD_dataArray(:,3);
FD_ENG_Stress = FD_dataArray(:,4)-0.0064;
FD_ENG_Strain = 0.01.*FD_dataArray(:,5);
FD_TRUE_Stress = FD_ENG_Stress.*(1 + FD_ENG_Strain);
FD_TRUE_Strain = log(1 + FD_ENG_Strain);





figure (1), plot(AS_ENG_Strain,AS_ENG_Stress,'DisplayName','AS ENG','LineWidth',1.5,'Color','#E1BE6A')
title('Stress vs Strain')
xlabel('Strain')
ylabel('Stress [MPa]')
grid on
grid minor
hold on
plot(AS_TRUE_Strain,AS_TRUE_Stress,'DisplayName','AS TRUE','LineWidth',1.5,'Color','#40B0A6')
hold on
plot(FD_ENG_Strain,FD_ENG_Stress,'DisplayName','FD ENG','LineWidth',1.5,'Color','#E66100')
hold on
plot(FD_TRUE_Strain,FD_TRUE_Stress,'DisplayName','FD TRUE','LineWidth',1.5,'Color','#5D3A9B')
legend
xlim([0 0.8])
ylim([0 0.55])
hold off

figure (2),plot(FD_TRUE_Strain,FD_TRUE_Stress,'DisplayName','FD TRUE','LineWidth',1.5,'Color','#5D3A9B')
legend
xlim([0 0.8])
ylim([0 0.55])
hold off

FD_ENG_X = [0.0127 0.0127 0.10469 0.19627 0.31953 0.40004 0.395];
FD_ENG_Y = [0 0.29495 0.33751 0.35633 0.37142 0.3706 0];

figure (3), plot(FD_ENG_X,FD_ENG_Y,'DisplayName','FD ENG','LineWidth',1.5,'Color','#40B0A6')
legend('Location','NorthWest')
title('Stress vs Strain')
xlabel('Strain')
ylabel('Stress [MPa]')
grid on
grid minor


FD_TRU_X = [0.016831 0.016831 0.058739 0.13014 0.19426 0.27646 0.3365 0.332];
FD_TRU_Y = [0 0.30467 0.34262 0.3934 0.43788 0.48936 0.51885 0];

figure (4), plot(FD_TRU_X,FD_TRU_Y,'DisplayName','AS TRUE','LineWidth',1.5,'Color','#40B0A6')
legend('Location','NorthWest')
title('Stress vs Strain')
xlabel('Strain')
ylabel('Stress [MPa]')
grid on
grid minor

Area_FD_ENG = trapz(FD_ENG_X,FD_ENG_Y);
Area_FD_TRU = trapz(FD_TRU_X,FD_TRU_Y);


Work_PUV_FD_ENG = Area_FD_ENG *54.32 *pi*((2.81 )^2)/4
Work_PUV_FD_TRU = Area_FD_TRU*10^6 *54.32*10^-3* pi*((2.81*10^-3 )^2)/4