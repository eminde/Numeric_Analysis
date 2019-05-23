f = @(x) exp(x);
x0=0;

cf=1;
h(1)=0.1;
% K=40;
K=40;

for k = 1:K
    x1 = x0 +cf*h(k)
    F = abs(f(x0)-f(x1))/h(k);
    err(k)=abs(F-f(x0));
    h(k+1)=h(k)/2;
end
loglog(h(1:end-1),err)
xlabel('h');
ylabel('Error');