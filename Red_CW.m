function [B,G,O,R,W,Y]=Red_CW(B,G,O,R,W,Y)

% Record previous tile colors
Bp=cell2mat(get(B,'CData'));
Gp=cell2mat(get(G,'CData'));
Op=cell2mat(get(O,'CData'));
Rp=cell2mat(get(R,'CData'));
Wp=cell2mat(get(W,'CData'));
Yp=cell2mat(get(Y,'CData'));

% Assign red Faces
set(R(1),'CData',Rp(3))
set(R(2),'CData',Rp(6))
set(R(3),'CData',Rp(9))
set(R(4),'CData',Rp(2))
set(R(6),'CData',Rp(8))
set(R(7),'CData',Rp(1))
set(R(8),'CData',Rp(4))
set(R(9),'CData',Rp(7))


% Assign blue Faces
set(B(1),'CData',Wp(1))
set(B(2),'CData',Wp(2))
set(B(3),'CData',Wp(3))

% Assign white Faces
set(W(1),'CData',Gp(3))
set(W(2),'CData',Gp(2))
set(W(3),'CData',Gp(1))

% Assign green Faces
set(G(1),'CData',Yp(1))
set(G(2),'CData',Yp(2))
set(G(3),'CData',Yp(3))

% Assign yellow Faces
set(Y(1),'CData',Bp(3))
set(Y(2),'CData',Bp(2))
set(Y(3),'CData',Bp(1))