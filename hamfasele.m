%Project 1 

%Define Functions 


sin_func = @(x)sin(x);
abs_func = @(x)abs(x);
ronge_func = @(x)(1./(1+x.^2));



%Example NewtonIntercep for ronge Funcion  , degree = 10 , chobeishof
%points

n=10;
x =linspace(-5,5,11);

f = ronge_func(x);
g = abs_func(x);
h = sin_func(x);
s = -5:0.01:5;

[p1,a1,D1] = NewtonInterp(x,f,s);
[p2,a2,D2] = NewtonInterp(x,g,s);
[p3,a3,D3] = NewtonInterp(x,h,s);

figure
subplot(3,1,1);
plot (x,g,'ok',s,abs_func(s),'-b',s,p2,'--k');
title('Abs - hamfasele')

subplot(3,1,2);
plot (x,f,'ok',s,ronge_func(s),'-b',s,p1,'--k');
title('Ronge -  hamfasele')

subplot(3,1,3);
plot (x,h,'ok',s,sin_func(s),'-b',s,p3,'--k');
title('Sin - hamfasele')