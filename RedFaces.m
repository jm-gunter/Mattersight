function RedFaces

x=[0,1,1,0];
Y=[0,0,0,0];
z=[0,0,1,1];


for kx=0:2
    X=x+kx;
        for kz=0:2
            Z=z+kz;
            patch(X,Y,Z,'r')
        end
end
