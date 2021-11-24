function [iter, sol]=SOR_solver (A, b, tol, w)
  n=size(A, 1);
  [L,D,U]= LDU (A);
  in=inv(D+w*L);
  C = in*((1-w)*D-w*U);
  d= w*in*b;
  
  sol=zeros(n, 1);
  s=C*sol+d;
  iter=1;
  while (norm (sol-s, inf) > tol)
    sol=s;
    s=C*sol+d;
    iter++;
  endwhile
endfunction
