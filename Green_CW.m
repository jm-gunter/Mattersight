function [B,G,O,R,W,Y]=Green_CW(B,G,O,R,W,Y)

% Record previous tile colors
Bp=cell2mat(get(B,'CData'));
Gp=cell2mat(get(G,'CData'));
Op=cell2mat(get(O,'CData'));
Rp=cell2mat(get(R,'CData'));
Wp=cell2mat(get(W,'CData'));
Yp=cell2mat(get(Y,'CData'));

% Assign green Faces
set(G(1),'CData',Gp(3))
set(G(2),'CData',Gp(6))
set(G(3),'CData',Gp(9))
set(G(4),'CData',Gp(2))
set(G(6),'CData',Gp(8))
set(G(7),'CData',Gp(1))
set(G(8),'CData',Gp(4))
set(G(9),'CData',Gp(7))


% Assign orange Faces
set(O(7),'CData',Yp(3))
set(O(8),'CData',Yp(6))
set(O(9),'CData',Yp(9))

% Assign white Faces
set(W(3),'CData',Op(9))
set(W(6),'CData',Op(8))
set(W(9),'CData',Op(7))

% Assign red Faces
set(R(7),'CData',Wp(3))
set(R(8),'CData',Wp(6))
set(R(9),'CData',Wp(9))

% Assign yellow Faces
set(Y(3),'CData',Rp(9))
set(Y(6),'CData',Rp(8))
set(Y(9),'CData',Rp(7))