function [B,G,O,R,W,Y]=Yellow_CW(B,G,O,R,W,Y)

% Record previous tile colors
Bp=cell2mat(get(B,'CData'));
Gp=cell2mat(get(G,'CData'));
Op=cell2mat(get(O,'CData'));
Rp=cell2mat(get(R,'CData'));
Wp=cell2mat(get(W,'CData'));
Yp=cell2mat(get(Y,'CData'));

% Assign yellow Faces
set(Y(1),'CData',Yp(3))
set(Y(2),'CData',Yp(6))
set(Y(3),'CData',Yp(9))
set(Y(4),'CData',Yp(2))
set(Y(6),'CData',Yp(8))
set(Y(7),'CData',Yp(1))
set(Y(8),'CData',Yp(4))
set(Y(9),'CData',Yp(7))


% Assign red Faces
set(R(1),'CData',Gp(1))
set(R(4),'CData',Gp(4))
set(R(7),'CData',Gp(7))

% Assign blue Faces
set(B(1),'CData',Rp(7))
set(B(4),'CData',Rp(4))
set(B(7),'CData',Rp(1))

% Assign orange Faces
set(O(1),'CData',Bp(1))
set(O(4),'CData',Bp(4))
set(O(7),'CData',Bp(7))

% Assign green Faces
set(G(1),'CData',Op(7))
set(G(4),'CData',Op(4))
set(G(7),'CData',Op(1))