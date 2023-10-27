clear all;
IA=0:0.05:1;
R=0.42283;
G=0.805;
for ii = 1:length(IA)
    q=(1-IA(ii));
    Q3=q3(1-IA(ii),2);
    Q5=q5(1-IA(ii),2);
    Q6=q6(1-IA(ii),2);
    
    IE_S(ii)=exp(-q*G/R);
    q_total1(ii)=(1.26/4.73)*(Q3)+(0.05/4.73)*(Q5)+(3.42/4.73)*(Q6);
    
    IE_U(ii)=1-q_total1(ii);
    
end
plot(IE_U,IA,'b0-');
hold;
plot(IA, IE_S, 'r*-');

axis([0 1 0 1]);
legend({'User','Time Slot'},'location','northwest')
xlabel('IA_{SN},IE_{UN}');
ylabel('IE_{SN},IA_{UN}');

Figure1=figure(1);
FigW=6;
FigH=5.6;
set(Figure1,'defaulttextinterpreter','latex,'PaperUnits','inches','Papersize',[FigW,FigH],'Paperposition',[0,0,FigW,FigH],'Units','Inches','Position',[0,0,FigW,FigH])
set(gca,'FontSize',10,'FontName','Arial');

text(0.5, 0.5, '$\lambda (x)=\{((3,2), 0.42), + ((5,2, 0.01), ((6,2), 0.57)\}$')
text(0.5, 0.5, '$\Lambda (x)=0.42 x^3 + 0.01 x^5 + 0.57 x^6$')
text(0.5, 0.5, '$\Omega (x)=\exp\{-{\frac{G_m}{R_m}+\frac{G_h}{R_h})+\frac{G_m}{R_m} x_m+\frac{G_h}{R_h} x_h\}$')