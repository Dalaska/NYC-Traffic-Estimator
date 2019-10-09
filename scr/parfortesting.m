% parfor testing
n=10;
parfor i = 1:n
   t = f(A(i));
   u = g(B(i));
   C(i) = h(t, u);
end