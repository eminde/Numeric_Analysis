f = @(x) exp(x);
h(1)=0.1;
% K=40;
K=10;

for k = 1:K
    F = (f(h(k))-f(0))/h(k);
    err(k)=abs(F-f(0));
    h(k+1)=h(k)/2;
end
loglog(h(1:end-1),err)
xlabel('h');
ylabel('Error');