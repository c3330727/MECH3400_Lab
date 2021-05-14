%Part 1 Q1

clc 
clear all

%Cold Work perecent

S1_15_ColdWork = 60.4;
S2_15_ColdWork = 37.1;
S3_15_ColdWork = 20.6;
S4_15_ColdWork = 11.1;
S5_15_ColdWork = 0;
ColdWork_15 = [0 11.1 20.6 37.1 60.4];    

S1_70_ColdWork = 60.4;
S2_70_ColdWork = 37.1;
S3_70_ColdWork = 20.6;
S4_70_ColdWork = 11.1;
S5_70_ColdWork = 0;
ColdWork_70 = [0 11.1 20.6 37.1 60.4]; 

%Proof Stress

S1_15_ProofStress = 482;
S2_15_ProofStress = 444;
S3_15_ProofStress = 378;
S4_15_ProofStress = 304;
S5_15_ProofStress = 192;
ProofStress_15 = [192 304 378 444 482];
diff_15 = [ProofStress_15(2:end)./ProofStress_15(1:end-1)-1]*100;


S1_70_ProofStress = 413;
S2_70_ProofStress = 359;
S3_70_ProofStress = 284;
S4_70_ProofStress = 246;
S5_70_ProofStress = 123;
ProofStress_70 = [123 246 284 359 413];
diff_70 = [ProofStress_70(2:end)./ProofStress_70(1:end-1)-1]*100;

CDS_ColdWork = [0 9.27 31.03 39.74];

Diff_ProofStress = [69 58 94 85];
Diff_ProofStress_Per_Micron = Diff_ProofStress./(70-15);

CDS_Ave = [7.77915 8.12355 9.56895 9.1078];
CDS_Ave_Diff = 15 - CDS_Ave;
CDS_Proof_Increase = CDS_Ave_Diff .* Diff_ProofStress_Per_Micron;

CDS_at_15_Proof = [192 280 430 455];

CDS_Proof = CDS_at_15_Proof + CDS_Proof_Increase;




% figure(1), scatter(ColdWork_15, ProofStress_15,'DisplayName','15 micrometer grain','LineWidth',1.5,'Color','#E1BE6A')
% title('Grain Size Comparrison of 0.1 % Proof Stress vs Cold Work')
% xlabel('Cold Work (%)')
% ylabel('0.1% Proof Stress (MPa)')
% grid on
% grid minor
% hold on
% scatter(ColdWork_15, ProofStress_70,'DisplayName','70 Micrometer Grain','LineWidth',1.5,'Color','#40B0A6')
% hold on
% legend
% hold off
c = [225; 190; 106];
figure(1), scatter(ColdWork_15, ProofStress_15,'MarkerEdgeColor',[0.3633 0.2266 0.6055],...
              'MarkerFaceColor',[0.3633 0.2266 0.6055],...
              'LineWidth',1,'DisplayName','15 micrometer grain')
title('Grain Size Comparrison of 0.1 % Proof Stress vs Cold Work')
xlabel('Cold Work (%)')
ylabel('0.1% Proof Stress (MPa)')
grid on
grid minor
hold on
c = [64; 176; 166];
scatter(ColdWork_15, ProofStress_70,'MarkerEdgeColor',[0.8984 0.3789 0],...
              'MarkerFaceColor',[0.8984 0.3789 0],...
              'LineWidth',1,'DisplayName','70 Micrometer Grain')

hold on
p15 = polyfit(ColdWork_15,ProofStress_15,2);
f15 = polyval(p15,ColdWork_15);
plot(ColdWork_15,f15,'r--','Color','#40B0A6','DisplayName','2nd Degree Poly fit')
hold on
p70 = polyfit(ColdWork_70,ProofStress_70,2);
f70 = polyval(p70,ColdWork_70);
plot(ColdWork_70,f70,'r--','Color','#E1BE6A','DisplayName','2nd Degree Poly fit')
legend
hold off


figure(2), scatter(ColdWork_15, ProofStress_15,'MarkerEdgeColor',[0.3633 0.2266 0.6055],...
              'MarkerFaceColor',[0.3633 0.2266 0.6055],...
              'LineWidth',1,'DisplayName','15 micrometer grain')
title('Grain Size Comparrison of 0.1 % Proof Stress vs Cold Work')
xlabel('Cold Work (%)')
ylabel('0.1% Proof Stress (MPa)')
grid on
grid minor
hold on
scatter(ColdWork_15, ProofStress_70,'MarkerEdgeColor',[0.8984 0.3789 0],...
              'MarkerFaceColor',[0.8984 0.3789 0],...
              'LineWidth',1,'DisplayName','70 Micrometer Grain')

hold on
p15 = polyfit(ColdWork_15,ProofStress_15,2);
f15 = polyval(p15,ColdWork_15);
plot(ColdWork_15,f15,'r--','Color','#40B0A6','DisplayName','2nd Degree Poly fit')
hold on
p70 = polyfit(ColdWork_70,ProofStress_70,2);
f70 = polyval(p70,ColdWork_70);
plot(ColdWork_70,f70,'r--','Color','#E1BE6A','DisplayName','2nd Degree Poly fit')
legend
scatter(CDS_ColdWork, CDS_Proof,'MarkerEdgeColor',[0.8789 0.7422 0.4141],...
              'MarkerFaceColor',[0.8789 0.7422 0.4141],...
              'LineWidth',1,'DisplayName','Cold Drawn Samples')
hold off
