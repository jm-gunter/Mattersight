function [B,G,O,R,W,Y]=RandCube2(B,G,O,R,W,Y)
% RandCube.m Sets Rubiks Cube to a random unsolved state.
% Helper function for RubikGUI.
% Written by Jeff Gunter (April 2011).

% Input/Output
% B,G,O,R,W,Y are handle objects within RubikGUI.m

% Reset seed
rand('twister',sum(100*clock));

% For 15 cycles, selects a random face and rotates a random
% selection of 1,2,3,or 4 times.
for n=1:15
    f = ceil(6.*rand(1));
    if f==1
        %rotate blue face
        r=ceil(4.*rand(1));
        for k=1:r
            [B,G,O,R,W,Y]=Blue_CW(B,G,O,R,W,Y);
        end
    elseif f==2
        %rotate green face
        r=ceil(4.*rand(1));
        for k=1:r
            [B,G,O,R,W,Y]=Green_CW(B,G,O,R,W,Y);
        end
    elseif f==3
        %rotate orange face
        r=ceil(4.*rand(1));
        for k=1:r
            [B,G,O,R,W,Y]=Orange_CW(B,G,O,R,W,Y);
        end
    elseif f==4
        %rotate red face
        r=ceil(4.*rand(1));
        for k=1:r
            [B,G,O,R,W,Y]=Red_CW(B,G,O,R,W,Y);
        end
    elseif f==5
        %rotate white face
        r=ceil(4.*rand(1));
        for k=1:r
            [B,G,O,R,W,Y]=White_CW(B,G,O,R,W,Y);
        end
    elseif f==6
        %rotate yellow face
        r=ceil(4.*rand(1));
        for k=1:r
            [B,G,O,R,W,Y]=Yellow_CW(B,G,O,R,W,Y);
        end
    end
        
end