%Project 1 

%Define Functions 


sin_func = @(x)sin(x);
abs_func = @(x)abs(x);
ronge_func = @(x)(1./(1+x.^2));



%Example NewtonIntercep for ronge Funcion  , degree = 10 , chobeishof
%points
t11 = cos(((2*(0:10)+1)*pi)/(2*10+2))
t51 = cos(((2*(0:50)+1)*pi)/(2*50+2))
t101 = cos(((2*(0:101)+1)*pi)/(2*101+2))

%daraje 10
x11 =5*t11;
%daraje 50
x51 =5*t51;
%daraje 100
x101 =5*t101;


f11 = ronge_func(x11);
f51 = ronge_func(x51);
f101 = ronge_func(x101);

g11 = abs_func(x11);
g51 = abs_func(x51);
g101 = abs_func(x101);

h11 = sin_func(x11);
h51 = sin_func(x51);
h101 = sin_func(x101);

s = -5:0.005:5;

[p11f,a11f,D11f] = NewtonInterp(x11,f11,s);
[p51f,a51f,D51f] = NewtonInterp(x51,f51,s);
[p101f,a101f,D101f] = NewtonInterp(x101,f101,s);

[p11g,a11g,D11g] = NewtonInterp(x11,g11,s);
[p51g,a51g,D51g] = NewtonInterp(x51,g51,s);
[p101g,a101g,D101g] = NewtonInterp(x101,g101,s);

[p11h,a11h,D11h] = NewtonInterp(x11,h11,s);
[p51h,a51h,D51h] = NewtonInterp(x51,h51,s);
[p101h,a101h,D101h] = NewtonInterp(x101,h101,s);


figure
subplot(3,3,1);
plot (x11,g11,'ok',s,abs_func(s),'-b',s,p11g,'--k');
title('Abs - chebyshev')
subplot(3,3,2);
plot (x51,g51,'ok',s,abs_func(s),'-b',s,p51g,'--k');
title('Abs - chebyshev')
subplot(3,3,3);
plot (x101,g101,'ok',s,abs_func(s),'-b',s,p101g,'--k');
title('Abs - chebyshev')

subplot(3,3,4);
plot (x11,f11,'ok',s,ronge_func(s),'-b',s,p11f,'--k');
title('Ronge -  chebyshev')
subplot(3,3,5);
plot (x51,f51,'ok',s,ronge_func(s),'-b',s,p51f,'--k');
title('Ronge -  chebyshev')
subplot(3,3,6);
plot (x101,f101,'ok',s,ronge_func(s),'-b',s,p101f,'--k');
title('Ronge -  chebyshev')

subplot(3,3,7);
plot (x11,h11,'ok',s,sin_func(s),'-b',s,p11h,'--k');
title('Sin - chebyshev')
subplot(3,3,8);
plot (x51,h51,'ok',s,sin_func(s),'-b',s,p51h,'--k');
title('Sin - chebyshev')
subplot(3,3,9);
plot (x101,h101,'ok',s,sin_func(s),'-b',s,p101h,'--k');
title('Sin - chebyshev')
