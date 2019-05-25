
%Different Functions 
f =@(x)  exp(x);
fprime =@(x) exp(x);

%f =@(x) sin(x);
%fprime =@(x) cos(x);

%f =@(x) (1/(1+x^2));
%fprime =@(x) (-2*x/(1+x^2)^2);


x0=0;
cf=1;
h(1)=0.1;

K=40;
%K=10;

for k = 1:K
    x1 = x0 + (cf*h(k));
    F =abs(f(x1)-f(x0))/h(k);
    err(k)=abs(F-fprime(x0));
    h(k+1)=h(k)/2;
end

loglog(h(1:end-1),err)
xlabel('h');
ylabel('Error');