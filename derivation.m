
%Different Functions
syms x 
f(x) =  exp(x);
fprime(x) = exp(x);

%f(x) = sin(x);
%f(x) = abs(x);
%f(x) = (1./(1+x.^2));
%f(x)= exp((-x.^2)./2);



x0=0;

cf=1;
h=0.1;

h(1)=h;
K=40;
%K=10;

for k = 1:K
    x1 = x0 +cf*h(k);
    F =eval( abs(f(x0)-f(x1))/h(k))
    
    err(k)=abs(F-eval(fprime(x0)));
    
    h(k+1)=h(k)/2;
end

loglog(h(1:end-1),err)
xlabel('h');
ylabel('Error');