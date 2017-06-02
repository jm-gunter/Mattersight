function InitCube
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


load('rcm.mat')
clf, newplot, axis off, hold on
colormap(rcm)

% initialize white face
xw=[1,2,2,1];
yw=[1,1,2,2];
zw=[3,3,3,3];
w=patch(xw,yw,zw,1);
w1=patch(xw+1,yw,zw,1);
w2=patch(xw+1,yw+1,zw,1);
w3=patch(xw,yw+1,zw,1);
w4=patch(xw-1,yw+1,zw,1);
w5=patch(xw-1,yw,zw,1);
w6=patch(xw-1,yw-1,zw,1);
w7=patch(xw,yw-1,zw,1);
w8=patch(xw+1,yw-1,zw,1);
        

% intialize red face
xr=[3,3,3,3];
yr=[1,2,2,1];
zr=[1,1,2,2];
r=patch(xr,yr,zr,2);
r1=patch(xr,yr+1,zr,2);
r2=patch(xr,yr+1,zr+1,2);
r3=patch(xr,yr,zr+1,2);
r4=patch(xr,yr-1,zr+1,2);
r5=patch(xr,yr-1,zr,2);
r6=patch(xr,yr-1,zr-1,2);
r7=patch(xr,yr,zr-1,2);
r8=patch(xr,yr+1,zr-1,2);

% initialize blue face
xb=[1,2,2,1];
yb=[3,3,3,3];
zb=[1,1,2,2];
b=patch(xb,yb,zb,3);
b1=patch(xb+1,yb,zb,3);
b2=patch(xb+1,yb,zb-1,3);
b3=patch(xb,yb,zb-1,3);
b4=patch(xb-1,yb,zb-1,3);
b5=patch(xb-1,yb,zb,3);
b6=patch(xb-1,yb,zb+1,3);
b7=patch(xb,yb,zb+1,3);
b8=patch(xb+1,yb,zb+1,3);

% initialize orange face
xo=[0,0,0,0];
yo=[1,2,2,1];
zo=[1,1,2,2];
o=patch(xo,yo,zo,4);
o1=patch(xo,yo+1,zo,4);
o2=patch(xo,yo+1,zo+1,4);
o3=patch(xo,yo,zo+1,4);
o4=patch(xo,yo-1,zo+1,4);
o5=patch(xo,yo-1,zo,4);
o6=patch(xo,yo-1,zo-1,4);
o7=patch(xo,yo,zo-1,4);
o8=patch(xo,yo+1,zo-1,4);

% initialize green face
xg=[1,2,2,1];
yg=[0,0,0,0];
zg=[1,1,2,2];
g=patch(xg,yg,zg,5);
g1=patch(xg+1,yg,zg,5);
g2=patch(xg+1,yg,zg-1,5);
g3=patch(xg,yg,zg-1,5);
g4=patch(xg-1,yg,zg-1,5);
g5=patch(xg-1,yg,zg,5);
g6=patch(xg-1,yg,zg+1,5);
g7=patch(xg,yg,zg+1,5);
g8=patch(xg+1,yg,zg+1,5);

% initialize yellow face
xy=[1,2,2,1];
yy=[1,1,2,2];
zy=[0,0,0,0];
y=patch(xy,yy,zy,6);
y1=patch(xy+1,yy,zy,6);
y2=patch(xy+1,yy+1,zy,6);
y3=patch(xy,yy+1,zy,6);
y4=patch(xy-1,yy+1,zy,6);
y5=patch(xy-1,yy,zy,6);
y6=patch(xy-1,yy-1,zy,6);
y7=patch(xy,yy-1,zy,6);
y8=patch(xy+1,yy-1,zy,6);

%adjust view
view(136,30);
hold off


end

