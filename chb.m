%Project 1 

%Define Functions 


sin_func = @(x)sin(x);
abs_func = @(x)abs(x);
ronge_func = @(x)(1./(1+x.^2));



%Example NewtonIntercep for ronge Funcion  , degree = 10 , chobeishof
%points

n=10;
x = cos(((2*(0:n)+1)*pi)/(2*n+2))
t = 5*x;


f = ronge_func(t);
g = abs_func(t);
h = sin_func(t);
s = -5:0.01:5;

[p1,a1,D1] = NewtonInterp(t,f,s);
[p2,a2,D2] = NewtonInterp(t,g,s);
[p3,a3,D3] = NewtonInterp(t,h,s);

figure
subplot(3,1,1);
plot (t,g,'ok',s,abs_func(s),'-b',s,p2,'--k');
title('Abs - chebyshev')

subplot(3,1,2);
plot (t,f,'ok',s,ronge_func(s),'-b',s,p1,'--k');
title('Ronge -  chebyshev')

subplot(3,1,3);
plot (t,h,'ok',s,sin_func(s),'-b',s,p3,'--k');
title('Sin - chebyshev')

figure
subplot(3,1,1);
plot (t,g,'ok',s,abs_func(s),'-b',s,p2,'--k');
title('Abs - chebyshev')

subplot(3,1,2);
plot (t,f,'ok',s,ronge_func(s),'-b',s,p1,'--k');
title('Ronge -  chebyshev')

subplot(3,1,3);
plot (t,h,'ok',s,sin_func(s),'-b',s,p3,'--k');
title('Sin - chebyshev')