function [y, x]=MyLUSolver(L, U, b)
  
  n=size(L, 2);
  y=zeros(n,1);
  x=zeros(n,1);
  y(1,1)=b(1);
  for i=2:n
     suma=0;
     for j=1:i-1
       suma=suma+L(i,j)*y(j);
     endfor
     y(i)=b(i)-suma;
  endfor   
  x(n)=y(n)/U(n,n); 
   for i=n-1:-1:1
     suma=0;
     for j=i+1:n
       suma=suma+U(i,j)*x(j);
      endfor
      x(i)=(y(i)-suma)/U(i,i);
  endfor
endfunction
