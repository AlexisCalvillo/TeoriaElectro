close all;
clear all;
figure(1);
n=linspace(0,90,100);
eo=8.85e-12;
mo=4*pi^-7;
ind=3e8.*sqrt(mo*eo*n);
plot(n,ind),xlabel('n'),ylabel('Medio'), grid on;
hold on;
plot(45*ones(1,length(n)),ind,'o');
plot(80*ones(1,length(n)),ind,'*');
legend('Medio','Glicerina','Agua');

t=[0,1.5915e-7/8,1.5915e-7/4];
x=linspace(0,200,50);
Ex=@(x,t) 25*sin(2*pi*10e6*t-6*x);
figure (2)
    plot3(x,t(1)*ones(1,length(x)),Ex(x,t(1)),'--*',x,t(2)*ones(1,length(x)),Ex(x,t(2)),'-',x,t(3)*ones(1,length(x)),Ex(x,t(3)),'--o');
    hold on;
    grid on;
legend('0','T/8','T/4')
xlabel('x'),ylabel('t'),zlabel('E');