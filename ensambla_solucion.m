function sol=ensambla_solucion(s)N=ceil(sqrt(size(s, 1)));sol=zeros(N+2, N+2);for i=2:N+1  sol(i, 2:N+1)=s(N*(i-2)+1:N*(i-2)+N);endforsurf(sol);endfunction