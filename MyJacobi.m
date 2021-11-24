function [iter, s]=MyJacobi (A, b, tol, init)
  n=size(A, 1);
  D=A .* eye(n, n);
  LU=A-D;
  F=inv(D);
  M=-F*LU;
  c=F*b;
  xant=init;
  x=M*xant+c;
  iter=1;
  while (norm (x-xant)> tol)
    xant=x; 
    x=M*x+c;
    iter=iter+1;
  endwhile
  s=x;
endfunction

