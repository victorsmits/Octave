function[I1,I2,I3] = RLC(ug,fg,r1,r2,c,l):
  w = 2*pi*fg;
  zc = 1/(j*w*c);
  zl = j*w*l;
  x = [I1;I2;I3]
  b = [ug;0;0]
  A = [r1 zc 0;0 r2 zl;1 -1 -1]
  x = inv(A)*b
endfunction