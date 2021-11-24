g=taylor (f, x, "order", ORDER)
valores=[-1:0.02:1];
s1=subs(f, x, valores);
s2=subs(g, x, valores);
y1=eval(s1);
y2=eval(s2);
figure 1;
plot (valores, y1, "b", valores, y2, "r");