outputtemplate := "%j.mps";

beginfig(1)
  u = 1cm;
  n = 1;

  path fig;

  fig = (0*u,-1/2*u) .. (-1/2*u,-1/2*u) .. (-3/4*u, 0*u) .. (-1/2*u, 1/2*u) .. (0*u,3/4*u) .. (4/5*u, 1/2*u) .. (3/5*u, 0*u) .. (1/2*u, -1/2*u) .. cycle;

  fill fig withcolor (0.8, 0.8, 0.70);

  draw fig;

  for i = -n upto n:
    draw (i,-(n+1/2))*u .. (i,n+1/2)*u;
    draw (-(n+1/2),i)*u .. (n+1/2,i)*u;
  endfor;

  drawarrow (-1/5*u, -1/5*u) .. (0*u, 1/3*u) .. (6/7*u, 6/7*u);

  fill fig shifted ((2*n+2)*u,0) withcolor (0.8, 0.8, 0.70);

  path piece;
  piece = (0*u + (2*n+3)*u,-1/2*u + 1*u) .. (-1/2*u + (2*n+3)*u,-1/2*u + 1*u) .. (-3/4*u + (2*n+3)*u, 0*u + 1*u) -- (0 + (2*n+3)*u,0 + 1*u) -- cycle;

  fill piece withcolor (0.7, 0.8, 0.8);

  draw piece;
  draw fig shifted ((2*n+2)*u,0);

  fill (0,0)*u -- (-1,0)*u -- (-1,-1)*u -- (0,-1)*u -- cycle shifted ((2*n+2)*u,0) withcolor white;

  for i = -n upto n:
    draw (i + 2*n+2,-(n+1/2))*u -- (i + 2*n+2,n+1/2)*u;
    draw (-(n+1/2) + 2*n+2,i)*u -- (n+1/2 + 2*n+2,i)*u;
  endfor;

  pickup pencircle scaled 2pt;
  drawdot (2/3*u + (2*n+2)*u,3/5*u);

endfig;
end
