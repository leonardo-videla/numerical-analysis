function [L,U]=MyLU(A)
  n=size(A, 2);
  L=zeros(n , n);
  B=A;
  for k=1:n
     L(k,k)=1;
     for i=k+1:n
       L(i,k)=B(i,k)/ B(k,k);
       for j=k+1:n
         B(i,j)=B(i,j)-L(i,k)*B(k,j);
       endfor
   endfor
   
   for j=k:n
     U(k,j)=B(k,j);
   endfor
   
  endfor
endfunction
