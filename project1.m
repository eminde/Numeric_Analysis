%Project 1 

%Define Functions 


sin_func = @(x)sin(x);
abs_func = @(x)abs(x);
ronge_func = @(x)(1./(1+x.^2));



%Example NewtonIntercep for ronge Funcion  , degree = 10 , chobeishof
%points

n=10;
x = cos((2*(0:n)+1)*pi/(2*n+2));
%x = -5:1:5;
f = ronge_func(x);
t = 5*x ;
s = -5:0.01:5;
[p,a,D] = NewtonInterp(t,f,s);

plot (t,f,'ok',s,ronge_func(s),'-b',s,p,'--k');