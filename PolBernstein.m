function sum=PolBernstein (n,x)
  sum=0;
  g=@(z) cos (4*z)*exp(-z^2);  
  num=n;
  den=1;
  for i=1:n-1
    t=-3+6*i/n;
    sum=sum+(num/den)*g(t) *((x+3)/6)^i*(1-(x+3)/6)^(n-i);
    num=num*(n-i);
    den=den*(i+1); 
  endfor
  sum=sum+g(-3)*(1-(x+3)/6)^(n);
  sum=sum+g(3)*((x+3)/6)^n;
  
  
  
endfunction
