%Graphs for grain sizes

clc
clear all

CDSAnn_AR = 0.7367;
CDSAnn_Long = 6.6000;
CDSAnn_Tran = 8.9583;
CDSAnn_Ave = (CDSAnn_Tran + CDSAnn_Long)/2

CDS1st_AR = 1.1915;
CDS1st_Long = 8.8333;
CDS1st_Tran = 7.4138;
CDS1st_Ave = (CDS1st_Tran + CDS1st_Long)/2

CDS2nd_AR = 1.8101;
CDS2nd_Long = 12.3276;
CDS2nd_Tran = 6.8103;
CDS2nd_Ave = (CDS2nd_Tran + CDS2nd_Long)/2

CDS3rd_AR = 2.0150;
CDS3rd_Long = 12.1739;
CDS3rd_Tran = 6.0417;
CDS3rd_Ave = (CDS3rd_Tran + CDS3rd_Long)/2

figure (1)
title('Cold Drawn Samples Dimensions')
Annx = categorical({'Annealed','1st Draw','2nd Draw','3rd Draw'});
Annx = reordercats(Annx,{'Annealed','1st Draw','2nd Draw','3rd Draw'});
CDSy = [CDSAnn_AR CDSAnn_Long CDSAnn_Tran; CDS1st_AR CDS1st_Long CDS1st_Tran; CDS2nd_AR CDS2nd_Long CDS2nd_Tran; CDS3rd_AR CDS3rd_Long CDS3rd_Tran];
CDSb = bar(Annx,CDSy);
legend('Aspect Ratio','Longitudinal','Transversal','Location','northwest')
grid('on')
grid('minor')

Ann30s_AR = 1.2273;
Ann30s_Long = 0.6429;
Ann30s_Tran = 0.5238;

Ann2m_AR = 1.1176;
Ann2m_Long = 1.2667;
Ann2m_Tran = 1.1333;

Ann5m_AR = 1.0513;
Ann5m_Long = 1.7826;
Ann5m_Tran = 1.6957;

Ann10m_AR = 0.6067;
Ann10m_Long = 0.8426;
Ann10m_Tran =  1.3889;

Ann15m_AR = 1.0638;
Ann15m_Long = 1.8519;
Ann15m_Tran = 1.7407;

Ann1hr_AR = 1.2136;
Ann1hr_Long = 2.0833;
Ann1hr_Tran = 1.7167;

Ann12hr_AR = 1.0526;
Ann12hr_Long = 2.5000;
Ann12hr_Tran = 2.3750;

figure (2)
title('Annealed Samples Dimensions')
Annx = categorical({'Annealed 30 sec','Annealed 2 min','Annealed 5 min','Annealed 10 min', 'Annealed 15 min', 'Annealed 1 hr', 'Annealed 12 hr'});
Annx = reordercats(Annx,{'Annealed 30 sec','Annealed 2 min','Annealed 5 min','Annealed 10 min', 'Annealed 15 min', 'Annealed 1 hr', 'Annealed 12 hr'});
Anny = [Ann30s_AR Ann30s_Long Ann30s_Tran; Ann2m_AR Ann2m_Long Ann2m_Tran; Ann5m_AR Ann5m_Long Ann5m_Tran; Ann10m_AR Ann10m_Long Ann10m_Tran; Ann15m_AR Ann15m_Long Ann15m_Tran;  Ann1hr_AR Ann1hr_Long Ann1hr_Tran;  Ann12hr_AR Ann12hr_Long Ann12hr_Tran];
CDSb = bar(Annx,Anny);
legend('Aspect Ratio','Longitudinal','Transversal','Location','northwest')
grid('on')
grid('minor')






