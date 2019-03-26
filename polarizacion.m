function polarizacion(Ax, Ay, fix, fiy,ciclos,f1,f2)
close all;
t=linspace(0,ciclos/f1,5000);
x=Ax.*cos(2*pi*f1*t+fix);
y=Ay.*cos(2*pi*f2*t+fiy);
dx=-2*pi*f1*Ax.*sin(2*pi*f1*t+fix);
dy=-2*pi*f2*Ay.*sin(2*pi*f2*t+fiy);
aux=randi(length(t),1,20);
figure(1);
plot(x,y,'k'),title('Polarización');
hold on;
quiver(x(aux),y(aux),dx(aux),dy(aux),'r');
grid on;
%figure(2);
line([0 Ax/Ay*cos(fix-fiy)],[0,Ax/Ay*sin(fix-fiy)],'Marker','x'),legend('Figura','Dirección','Fasor')
axis([-10,10,-10,10]);
end