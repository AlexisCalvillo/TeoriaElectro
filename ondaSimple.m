function ondaSimple(A,w,Kz)
close all;
Xy=@(z,t)A.*cos(w.*t - Kz.*z);
Xx=@(z,t)(A.*(8.85e-12/4*pi*10e-7)^.5).*cos(w.*t-Kz.*z);
z=linspace(0,4*pi/Kz,200);
x=zeros(1,200);
Fz=@(t)Xy(z,t);
Fy=@(t)Xx(z,t);
l=1;
grid on;
for i=0:.1:2*pi/w
    hold off;
    stem3(x,z,Fz(i),'*b')
    hold on
    plot3(Fy(i),z,x,'*k')
    grid on;
    M(l)=getframe;
    l=l+1;
end
movie(M)
end