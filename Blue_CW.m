function [B,G,O,R,W,Y]=Blue_CW(B,G,O,R,W,Y)
% Blue_CW.m Rotates blue face 90 degrees clockwise
% Helper function for RubikGUI.m
% Created by Jeff Gunter (April 2011)

% Input/Output
% B,G,O,R,W,Y are handle objects within RubikGUI.m

% Record previous tile colors
Bp=cell2mat(get(B,'CData'));
Gp=cell2mat(get(G,'CData'));
Op=cell2mat(get(O,'CData'));
Rp=cell2mat(get(R,'CData'));
Wp=cell2mat(get(W,'CData'));
Yp=cell2mat(get(Y,'CData'));

% Assign blue Faces
set(B(1),'CData',Bp(7))
set(B(2),'CData',Bp(4))
set(B(3),'CData',Bp(1))
set(B(4),'CData',Bp(8))
set(B(6),'CData',Bp(2))
set(B(7),'CData',Bp(9))
set(B(8),'CData',Bp(6))
set(B(9),'CData',Bp(3))


% Assign red Faces
set(R(1),'CData',Yp(7))
set(R(2),'CData',Yp(4))
set(R(3),'CData',Yp(1))

% Assign white Faces
set(W(1),'CData',Rp(1))
set(W(4),'CData',Rp(2))
set(W(7),'CData',Rp(3))

% Assign orange Faces
set(O(1),'CData',Wp(7))
set(O(2),'CData',Wp(4))
set(O(3),'CData',Wp(1))

% Assign yellow Faces
set(Y(1),'CData',Op(1))
set(Y(4),'CData',Op(2))
set(Y(7),'CData',Op(3))

end