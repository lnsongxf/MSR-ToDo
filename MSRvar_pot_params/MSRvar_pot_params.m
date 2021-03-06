

function MSRvar_pot_params
clc;
close all;
bet = load('beta_pot_Portf.txt', '-ascii');
ksi = load('ksi_pot_Portf.txt', '-ascii');
u   = load('u_pot_Portf.txt', '-ascii');
%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^PLOTS
plot(bet)
grid on
hold on
plot(ksi, 'Color', 'red')
plot(u, 'Color', 'm');
hold off
legend('Scale Parameter','Shape Parameter','Threshold')
title('Parameters in Peaks Over Threshold Model')
xlim([-3 1755])%xlim([-1.5 1752])
set(gca,'XTick',[261 521 782 1043 1304 1566 1826]-250)
set(gca,'XTickLabel',{'Jan 2000' 'Jan 2001' ...
   'Jan 2002' 'Jan 2003' 'Jan 2004' 'Jan 2005' 'Jan 2006'})