function [iteraciones]=IteracionPuntoFijo (x0, n)
  aprox=x0;
  iteraciones=zeros(1, n);
  iteraciones(1)=x0;
  for i=1:n-1
    aprox=sqrt(1+aprox);
    iteraciones(i+1)=aprox; 
  endfor
endfunction
