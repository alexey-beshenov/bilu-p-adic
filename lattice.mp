outputtemplate := "%j.mps";

beginfig(1)
  u = 0.6cm;
  n = 4;

  fill (0,0)--(u, 2*u)--(2*u, 2*u)--(u, 0)--cycle withcolor (0.8, 0.8, 0.75);

  pickup pencircle scaled 0.5pt;
  drawarrow (-(n+1),0)*u .. (n+1,0)*u;
  label.rt (btex $x_1$ etex, ((n+1)*u,0));
  draw (0,-(n+1))*u .. (0,1)*u;
  drawarrow (0,1+3/4)*u .. (0,n+1)*u;
  label.top (btex $x_2$ etex, (0,(n+1)*u));

  label.bot (btex $\underline{\omega}_1$ etex, (1/2*u,0*u));
  label.ulft (btex $\underline{\omega}_2$ etex, (1/2*u,1*u));

  draw (1,2)*u -- (2,2)*u -- (1,0)*u dashed evenly;
  pickup pencircle scaled 0.75pt;
  drawarrow (0,0) -- (1,0)*u;
  drawarrow (0,0) -- (1,2)*u;

  pickup pencircle scaled 2pt;
  for i = -n upto n:
    for j = -n/2 upto n/2:
      drawdot (i,j*2)*u;
    endfor;
  endfor;

endfig;
end
