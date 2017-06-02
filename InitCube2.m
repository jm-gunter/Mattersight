function v=InitCube2

% initialize white face
xw=[1,2,2,1];
yw=[1,1,2,2];
zw=[3,3,3,3];
for k=-1:1
    for l=-1:1
        patch(xw+k,yw+l,zw,'w')
    end
end

% intialize red face
xr=[3,3,3,3];
yr=[1,2,2,1];
zr=[1,1,2,2];
for k=-1:1
    for l=-1:1
        patch(xr,yr+k,zr+l,'r')
    end
end
    
% initialize blue face
xb=[1,2,2,1];
yb=[3,3,3,3];
zb=[1,1,2,2];
for k=-1:1
    for l=-1:1
        patch(xb+k,yb,zb+l,'b')
    end
end
    
% initialize orange face
xo=[0,0,0,0];
yo=[1,2,2,1];
zo=[1,1,2,2];
for k=-1:1
    for l=-1:1
        patch(xo,yo+k,zo+l,[1,0.5490,0])
    end
end

% initialize green face
xg=[1,2,2,1];
yg=[0,0,0,0];
zg=[1,1,2,2];
for k=-1:1
    for l=-1:1
        patch(xg+k,yg,zg+l,'g')
    end
end

% initialize yellow face
xy=[1,2,2,1];
yy=[1,1,2,2];
zy=[0,0,0,0];
for k=-1:1
    for l=-1:1
        patch(xy+k,yy+l,zy,'y')
    end
end

%adjust view
view(136,30);
axis off

