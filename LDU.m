function [L, D, U]= LDU (A)
  D=diag(diag(A));
  L=tril(A, -1);
  U=triu(A, 1);
endfunction
