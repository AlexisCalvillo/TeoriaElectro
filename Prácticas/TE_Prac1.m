%Práctica 1. Teoría electromagnética
%Grafique la potencia en dBm correspondiente a un rango de potencia que va
%desde -10mW hasta 10mW. Interprete la gráfica
wats=linspace(-10e-3,10e-3,1000);
dBm=(10*log(wats/1e-3));
plot(wats,real(dBm),'--r');
hold on;
plot(wats,imag(dBm),'--k');
legend('parte real','parte imaginaria');
title('Potencia en dBm');
xlabel('mili Watts');
ylabel('dBm');
grid on;