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

figure (2), plot(AS_ENG_Strain,AS_ENG_Stress,'DisplayName','AS ENG','LineWidth',1.5,'Color','#E1BE6A')
title('Stress vs Strain Elastic Region')
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
xlim([0 0.01])
ylim([0 0.35])
hold off


figure (3), plot(AS_ENG_Strain,AS_ENG_Stress,'DisplayName','AS ENG','LineWidth',1.5,'Color','#E1BE6A')
title('Stress vs Strain Elastic Region')
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
xlim([0 0.0035])
ylim([0 0.2])
hold on
x = 0.0096;
FD =@(x) 86.4753.*x + 1.8084e-04;
fplot(FD, [0 1]);
hold off
hold on
x = 0.0156;
FD =@(x) 102.9359.*x - 0.0011;
fplot(FD, [0 1]);
hold off
hold off


figure (4), plot(AS_ENG_Strain,AS_ENG_Stress,'DisplayName','AS ENG','LineWidth',1.5,'Color','#E1BE6A')
title('Stress vs Strain')
xlabel('Strain')
ylabel('Stress [MPa]')
grid on
grid minor
legend
xlim([0 0.8])
ylim([0 0.55])
