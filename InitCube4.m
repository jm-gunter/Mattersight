function [B,G,O,R,W,Y]=InitCube4
% Initcube3.m creates a 3X3 Rubiks Cube in its solved state.
% Helper function for RubikGUI.m

% Output
% B,G,O,R,W,Y = 1x9 arrays of patch objects.
% B corresponds to the blue tiles, G to the green tiles, etc.

% Load colormap
load('rcm.mat')
colormap(rcm)

% Create generic output array
F=ones(3);

% Initialize white face
W=F;
x=[0,1,1,0];
y=[0,0,1,1];
z=[3,3,3,3];
for k=0:2
    for l=0:2
        W(k+1,l+1)=patch(x+k,y+l,z,1);
    end
end

% Initialize blue face
B=F;
x=[0,1,1,0];
y=[0,0,0,0];
z=[0,0,1,1];
for k=0:2
    for l=0:2
        B(k+1,l+1)=patch(x+k,y,z+l,2);
    end
end

% Initialize orange face
O=F;
x=[3,3,3,3];
y=[0,1,1,0];
z=[0,0,1,1];
for k=0:2
    for l=0:2
        O(k+1,l+1)=patch(x,y+k,z+l,3);
    end
end

% Initialize green face
G=F;
x=[0,1,1,0];
y=[3,3,3,3];
z=[0,0,1,1];
for k=0:2
    for l=0:2
        G(k+1,l+1)=patch(x+k,y,z+l,4);
    end
end

% Initialize red face
R=F;
x=[0,0,0,0];
y=[0,1,1,0];
z=[0,0,1,1];
for k=0:2
    for l=0:2
        R(k+1,l+1)=patch(x,y+k,z+l,5);
    end
end

% Initialize yellow face
Y=F;
x=[0,1,1,0];
y=[0,0,1,1];
z=[0,0,0,0];
for k=0:2
    for l=0:2
        Y(k+1,l+1)=patch(x+k,y+l,z,6);
    end
end

% Adjust view & axis
view(-45,30)
axis off
set([B(1:9),G(1:9),O(1:9),R(1:9),W(1:9),Y(1:9)],'LineWidth',2.5)

% Allow user to rotate with mouse
rotate3d on
set(gca,'DataAspectRatio',[1,1,1],'PlotBoxAspectRatio',[1,1,1])

end
