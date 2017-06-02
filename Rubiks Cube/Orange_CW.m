function [B,G,O,R,W,Y]=Orange_CW(B,G,O,R,W,Y)

% Record previous tile colors
Bp=cell2mat(get(B,'CData'));
Gp=cell2mat(get(G,'CData'));
Op=cell2mat(get(O,'CData'));
Rp=cell2mat(get(R,'CData'));
Wp=cell2mat(get(W,'CData'));
Yp=cell2mat(get(Y,'CData'));

% Assign orange Faces
set(O(1),'CData',Op(7))
set(O(2),'CData',Op(4))
set(O(3),'CData',Op(1))
set(O(4),'CData',Op(8))
set(O(6),'CData',Op(2))
set(O(7),'CData',Op(9))
set(O(8),'CData',Op(6))
set(O(9),'CData',Op(3))


% Assign blue Faces
set(B(7),'CData',Yp(9))
set(B(8),'CData',Yp(8))
set(B(9),'CData',Yp(7))

% Assign white Faces
set(W(7),'CData',Bp(7))
set(W(8),'CData',Bp(8))
set(W(9),'CData',Bp(9))

% Assign green Faces
set(G(7),'CData',Wp(9))
set(G(8),'CData',Wp(8))
set(G(9),'CData',Wp(7))

% Assign yellow Faces
set(Y(7),'CData',Gp(7))
set(Y(8),'CData',Gp(8))
set(Y(9),'CData',Gp(9))