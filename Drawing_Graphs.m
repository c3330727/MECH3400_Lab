%MECH3400 Lab assignment
%Drawing lab
%Plotting the stress strain graph from the data gained from the lab

close all
clear all
clc

InitialLoad = 53; %The initial load calculated

%Diameters of wires in mm
T1AS_Di = 2.94;
T1D1_Di = 2.81; 
T1D2_Di = 2.42;
T1D3_Di = 2.03;
T2AS_Di = 2.95;
T2D1_Di = 2.81;
T2D2_Di = 2.45;
T2D3_Di = 2.29;

%Area of samples
T2D1_Area = pi*((T2D1_Di*10^-3 )^2)/4;
T2D2_Area = pi*((T2D2_Di*10^-3 )^2)/4;
T2D3_Area = pi*((T2D3_Di*10^-3 )^2)/4;


%Cold work percent

T1D1_ColdWork_C = 100*((((pi*T1AS_Di^2/4)) - (pi*T1D1_Di^2/4))/ (pi*T1AS_Di^2/4));
T1D2_ColdWork_C = 100*(((pi*T1AS_Di^2/4) - (pi*T1D2_Di^2/4))/ (pi*T1AS_Di^2/4));
T1D3_ColdWork_C = 100*(((pi*T1AS_Di^2/4) - (pi*T1D3_Di^2/4))/ (pi*T1AS_Di^2/4));

T2D1_ColdWork = 100*(((pi*T2AS_Di^2/4) - (pi*T2D1_Di^2/4))/ (pi*T2AS_Di^2/4));
T2D2_ColdWork = 100*(((pi*T2D1_Di^2/4) - (pi*T2D2_Di^2/4))/ (pi*T2D1_Di^2/4));
T2D3_ColdWork = 100*(((pi*T2D2_Di^2/4) - (pi*T2D3_Di^2/4))/ (pi*T2D2_Di^2/4));

T2D1_ColdWork_C = 100*(((pi*T2AS_Di^2/4) - (pi*T2D1_Di^2/4))/ (pi*T2AS_Di^2/4));
T2D2_ColdWork_C = 100*(((pi*T2AS_Di^2/4) - (pi*T2D2_Di^2/4))/ (pi*T2AS_Di^2/4));
T2D3_ColdWork_C = 100*(((pi*T2AS_Di^2/4) - (pi*T2D3_Di^2/4))/ (pi*T2AS_Di^2/4));

%Lengths between markings in mm

T1AS_Length = 50.95;
T1D1_Length = 56.14;
T1D2_Length = 71.40;
T1D3_Length = 82.92;
T2AS_Length = 49.74;
T2D1_Length = 54.32;
T2D2_Length = 71.46;
T2D3_Length = 82.68;


%Length increase by percent

T1D1_Length_IncPer = 100*((T1D1_Length - T1AS_Length)/ T1AS_Length);
T1D2_Length_IncPer = 100*((T1D2_Length - T1AS_Length)/ T1AS_Length);
T1D3_Length_IncPer = 100*((T1D3_Length - T1AS_Length)/ T1AS_Length);

T2D1_Length_IncPer = 100*((T2D1_Length - T2AS_Length)/ T2AS_Length);
T2D2_Length_IncPer = 100*((T2D2_Length - T2AS_Length)/ T2AS_Length);
T2D3_Length_IncPer = 100*((T2D3_Length - T2AS_Length)/ T2AS_Length);


%Volume change percent

T1D1_Volume_IncPer = 100*(((T1D1_Length*pi*T1D1_Di^2/4) - T1AS_Length*pi*T1AS_Di^2/4)/ (T1AS_Length*pi*T1AS_Di^2/4));
T1D2_Volume_IncPer = 100*(((T1D2_Length*pi*T1D2_Di^2/4) - T1AS_Length*pi*T1AS_Di^2/4)/ (T1AS_Length*pi*T1AS_Di^2/4));
T1D3_Volume_IncPer = 100*(((T1D3_Length*pi*T1D3_Di^2/4) - T1AS_Length*pi*T1AS_Di^2/4)/ (T1AS_Length*pi*T1AS_Di^2/4));

T2D1_Volume_IncPer = 100*((T2D1_Length*pi*T2D1_Di^2/4 - T2AS_Length*pi*T2AS_Di^2/4)/ (T2AS_Length*pi*T2AS_Di^2/4));
T2D2_Volume_IncPer = 100*(((T2D2_Length*pi*T2D2_Di^2)/4 - (T2AS_Length*pi*T2AS_Di^2)/4)/ ((T2AS_Length*pi*T2AS_Di^2)/4));
T2D3_Volume_IncPer = 100*(((T2D3_Length*pi*T2D3_Di^2)/4 - (T2AS_Length*pi*T2AS_Di^2)/4)/ ((T2AS_Length*pi*T2AS_Di^2)/4));




%Reading Lab excel file for Test 1 Draw 1
T1D1_data = readtable('Test_1_Draw_1.xlsx','Range','A3:B100');
T1D1_dataArray = table2array(T1D1_data);

%Reading Lab excel file for Test 1 Draw 2
T1D2_data = readtable('Test_1_Draw_2.xlsx','Range','A3:B120');
T1D2_dataArray = table2array(T1D2_data);

%Reading Lab excel file for Test 1 Draw 3
T1D3_data = readtable('Test_1_Draw_3.xlsx','Range','A3:B125');
T1D3_dataArray = table2array(T1D3_data);

%Reading Lab excel file for Test 2 Draw 1
T2D1_data = readtable('Test_2_Draw_1.xlsx','Range','A3:B90');
T2D1_dataArray = table2array(T2D1_data);

%Reading Lab excel file for Test 2 Draw 2
T2D2_data = readtable('Test_2_Draw_2.xlsx','Range','A3:B120');
T2D2_dataArray = table2array(T2D2_data);

%Reading Lab excel file for Test 2 Draw 3
T2D3_data = readtable('Test_2_Draw_3.xlsx','Range','A3:B115');
T2D3_dataArray = table2array(T2D3_data);


T1D1_time = T1D1_dataArray(:,1);
T1D1_weight = T1D1_dataArray(:,2);


T1D2_time = T1D2_dataArray(:,1);
T1D2_weight = T1D2_dataArray(:,2);

T1D3_time = T1D3_dataArray(:,1);
T1D3_weight = T1D3_dataArray(:,2);

T2D1_time = T2D1_dataArray(:,1)-2.2-0.17;
T2D1_weight = T2D1_dataArray(:,2)-31;
T2D1_Unlub_Force = T2D1_dataArray(27:58,2);
T2D1_Unlub_Average = mean(T2D1_Unlub_Force);
T2D1_lub_Force = T2D1_dataArray(58:77,2);
T2D1_lub_Average = mean(T2D1_lub_Force);
T2D1_Lub_Work = T2D1_lub_Average*T2D1_Length*0.001
T2D1_UnLub_Work = T2D1_Unlub_Average*T2D1_Length*0.001
T2D1_Lub_Work_PUV = T2D1_Lub_Work * T2D1_Length*0.001 * T2D1_Area
T2D1_UnLub_Work_PUV = T2D1_UnLub_Work * T2D1_Length*0.001 * T2D1_Area

T2D2_time = T2D2_dataArray(:,1)-3.68-0.17;
T2D2_weight = T2D2_dataArray(:,2)-31;
T2D2_Unlub_Force = T2D2_dataArray(43:83,2);
T2D2_Unlub_Average = mean(T2D2_Unlub_Force);
T2D2_lub_Force = T2D2_dataArray(83:108,2);
T2D2_lub_Average = mean(T2D2_lub_Force);
T2D2_Lub_Work = T2D2_lub_Average*T2D2_Length*1000;
T2D2_UnLub_Work = T2D2_Unlub_Average*T2D2_Length*1000;
T2D2_Lub_Work_PUV = T2D2_Lub_Work * T2D2_Length*1000 * T2D2_Area
T2D2_UnLub_Work_PUV = T2D2_UnLub_Work * T2D2_Length*1000 * T2D2_Area

T2D3_time = T2D3_dataArray(:,1)-1.95-0.17;
T2D3_weight = T2D3_dataArray(:,2)-31;
T2D3_Unlub_Force = T2D3_dataArray(27:74,2);
T2D3_Unlub_Average = mean(T2D3_Unlub_Force);
T2D3_lub_Force = T2D3_dataArray(74:104,2);
T2D3_lub_Average = mean(T2D3_lub_Force);
T2D3_Lub_Work = T2D3_lub_Average*T2D3_Length*1000;
T2D3_UnLub_Work = T2D3_Unlub_Average*T2D3_Length*1000;
T2D3_Lub_Work_PUV  = T2D3_Lub_Work * T2D3_Length*  T2D3_Area
T2D3_UnLub_Work_PUV = T2D3_UnLub_Work * T2D3_Length* T2D3_Area

figure (1), plot(T1D1_time,T1D1_weight,'DisplayName','T1D1','LineWidth',1.5,'Color','#E1BE6A')
title('Drawing 1 Test 1 and Test 2')
xlabel('Time [sec]')
ylabel('Force [N]')
grid on
grid minor
hold on
plot(T2D1_time,T2D1_weight,'DisplayName','T2D1','LineWidth',1.5,'Color','#40B0A6')
hold on
legend
hold off

figure (2), plot(T1D2_time,T1D2_weight,'DisplayName','T1D2','LineWidth',1.5,'Color','#E1BE6A')
title('Drawing 2 Test 1 and Test 2')
xlabel('Time [sec]')
ylabel('Force [N]')
grid on
grid minor
hold on
plot(T2D2_time,T2D2_weight,'DisplayName','T2D2','LineWidth',1.5,'Color','#40B0A6')
hold on
legend
hold off

figure (3), plot(T1D3_time,T1D3_weight,'DisplayName','T1D3','LineWidth',1.5,'Color','#E1BE6A')
title('Drawing 3 Test 1 and Test 2')
xlabel('Time [sec]')
ylabel('Force [N]')
grid on
grid minor
hold on
plot(T2D3_time,T2D3_weight,'DisplayName','T2D3','LineWidth',1.5,'Color','#40B0A6')
hold on
legend
hold off


figure (4), plot(T1D1_time,T1D1_weight,'DisplayName','T1D1','LineWidth',1.5,'Color','#E1BE6A')
title('Test 1 Drawing 1, 2, and 3')
xlabel('Time [sec]')
ylabel('Force [N]')
grid on
grid minor
hold on
plot(T1D2_time,T1D2_weight,'DisplayName','T1D2','LineWidth',1.5,'Color','#40B0A6')
hold on
plot(T1D3_time,T1D3_weight,'DisplayName','T1D3','LineWidth',1.5,'Color','#E66100')
hold on
legend
hold off

figure (5), plot(T2D1_time,T2D1_weight,'DisplayName','T2D1','LineWidth',1.5,'Color','#E1BE6A')
title('Test 2 Drawing 1, 2, and 3')
xlabel('Time [sec]')
ylabel('Force [N]')
grid on
grid minor
hold on
plot(T2D2_time,T2D2_weight,'DisplayName','T2D2','LineWidth',1.5,'Color','#40B0A6')
hold on
plot(T2D3_time,T2D3_weight,'DisplayName','T2D3','LineWidth',1.5,'Color','#E66100')
hold on
legend
xlim([0 10])
ylim([0 1000])
hold off



