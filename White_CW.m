function [B,G,O,R,W,Y]=White_CW(B,G,O,R,W,Y)

% Record previous tile colors
Bp=cell2mat(get(B,'CData'));
Gp=cell2mat(get(G,'CData'));
Op=cell2mat(get(O,'CData'));
Rp=cell2mat(get(R,'CData'));
Wp=cell2mat(get(W,'CData'));
Yp=cell2mat(get(Y,'CData'));

% Assign white Faces
set(W(1),'CData',Wp(7))
set(W(2),'CData',Wp(4))
set(W(3),'CData',Wp(1))
set(W(4),'CData',Wp(8))
set(W(6),'CData',Wp(2))
set(W(7),'CData',Wp(9))
set(W(8),'CData',Wp(6))
set(W(9),'CData',Wp(3))


% Assign red Faces
set(R(3),'CData',Bp(9))
set(R(6),'CData',Bp(6))
set(R(9),'CData',Bp(3))

% Assign blue Faces
set(B(3),'CData',Op(3))
set(B(6),'CData',Op(6))
set(B(9),'CData',Op(9))

% Assign orange Faces
set(O(3),'CData',Gp(9))
set(O(6),'CData',Gp(6))
set(O(9),'CData',Gp(3))

% Assign green Faces
set(G(3),'CData',Rp(3))
set(G(6),'CData',Rp(6))
set(G(9),'CData',Rp(9))