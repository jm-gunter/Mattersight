function check=SolvedCube(B,G,O,R,W,Y)
% SolvedCube.m Returns check=1 if cube is solved otherwise 
% returns check=0.
% Helper function for RubikGUI.m
% Created by Jeff Gunter (April 2011)

% Input
% B,G,O,R,W,Y are handle objects within RubikGUI.m

% Convert input data to numerical matrices
b=cell2mat(get(B,'CData'));
g=cell2mat(get(G,'CData'));
o=cell2mat(get(O,'CData'));
r=cell2mat(get(R,'CData'));
w=cell2mat(get(W,'CData'));
y=cell2mat(get(Y,'CData'));

% Perform check
if all(b==1) && all(g==2) && all(o==3) &&...
        all(r==4) && all(w==5) && all(y==6)
    check=1;
else
    check=0;
end
end