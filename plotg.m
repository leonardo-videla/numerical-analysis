function t=plotg ()
  
    g=@(z) cos (4*z)*exp(-z^2);  
    x=[-2.9:0.1:2.9];
    y=zeros(1, size (x, 1));
    for i=1:59
      y(i)= g(x(i));
    endfor
    plot (x, y, "b");
endfunction
