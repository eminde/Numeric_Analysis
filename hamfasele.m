%Project 1 

%Define Functions 


sin_func = @(x)sin(x);
abs_func = @(x)abs(x);
ronge_func = @(x)(1./(1+x.^2));



%Example NewtonIntercep for ronge Funcion  , degree = 10 , chobeishof
%points

%daraje 10
x11 =linspace(-5,5,11);
%daraje 20
x21 =linspace(-5,5,21);
%daraje 30
x31 =linspace(-5,5,31);


f11 = ronge_func(x11);
f21 = ronge_func(x21);
f31 = ronge_func(x31);

g11 = abs_func(x11);
g21 = abs_func(x21);
g31 = abs_func(x31);

h11 = sin_func(x11);
h21 = sin_func(x21);
h31 = sin_func(x31);

s = -5:0.005:5;

[p11f,a11f,D11f] = NewtonInterp(x11,f11,s);
[p21f,a21f,D21f] = NewtonInterp(x21,f21,s);
[p31f,a31f,D31f] = NewtonInterp(x31,f31,s);

[p11g,a11g,D11g] = NewtonInterp(x11,g11,s);
[p21g,a21g,D21g] = NewtonInterp(x21,g21,s);
[p31g,a31g,D31g] = NewtonInterp(x31,g31,s);

[p11h,a11h,D11h] = NewtonInterp(x11,h11,s);
[p21h,a21h,D21h] = NewtonInterp(x21,h21,s);
[p31h,a31h,D31h] = NewtonInterp(x31,h31,s);


figure
subplot(3,1,1);
plot (x11,g11,'ok',s,abs_func(s),'-b',s,p11g,'--k');
title('Abs - hamfasele - deg=10')
subplot(3,1,2);
plot (x21,g21,'ok',s,abs_func(s),'-b',s,p21g,'--k');
title('Abs - hamfasele - deg=20')
subplot(3,1,3);
plot (x31,g31,'ok',s,abs_func(s),'-b',s,p31g,'--k');
title('Abs - hamfasele - deg=30')

figure
subplot(3,1,1);
plot (x11,f11,'ok',s,ronge_func(s),'-b',s,p11f,'--k');
title('Ronge -  hamfasele - deg=10')
subplot(3,1,2);
plot (x21,f21,'ok',s,ronge_func(s),'-b',s,p21f,'--k');
title('Ronge -  hamfasele - deg=20')
subplot(3,1,3);
plot (x31,f31,'ok',s,ronge_func(s),'-b',s,p31f,'--k');
title('Ronge -  hamfasele - deg=30')

figure
subplot(3,1,1);
plot (x11,h11,'ok',s,sin_func(s),'-b',s,p11h,'--k');
title('Sin - hamfasele - deg=10')
subplot(3,1,2);
plot (x21,h21,'ok',s,sin_func(s),'-b',s,p21h,'--k');
title('Sin - hamfasele - deg=20')
subplot(3,1,3);
plot (x31,h31,'ok',s,sin_func(s),'-b',s,p31h,'--k');
title('Sin - hamfasele - deg=30')
