close all;
corrientePuente=[3 2.95 2.95 2.8 2.7 2.5 1.8];
potDc=[2.25 2.18 2.18 1.96 1.82 1.56 0.81];
potRf=[0 0 0 0.21 0.16 0.25 0.63];
di=[0 corrientePuente(2:7)-corrientePuente(1:6)];
figure(1),title("Corriente vs potDc y potRd");
plot(corrientePuente,potDc,'--*')
hold on;
plot(corrientePuente,potRf,'--o'),legend("Potencia DC","Potencia RF"),xlabel("mA")
ylabel("mW");
figure(2),title("Diferencias corriente vs potDc y potRd");
plot(di,potDc,'--*')
hold on;
plot(di,potRf,'--o'),legend("Potencia DC","Potencia RF"),xlabel("Dif mA")
ylabel("mW");