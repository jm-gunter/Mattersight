function [B,G,O,R,W,Y]=RandCube(B,G,O,R,W,Y)
% RandCube.m Sets Rubiks Cube to a random unsolved state.
% Helper function for RubikGUI.

% Reset seed
% RandStream.setDefaultStream(RandStream('mt19937ar','seed',sum(100*clock)));

% For 15 cycles, selects a random face and rotates a random
% number of 1-4 times.
for n=1:15
    f=randi(6,1);
    if f==1
        %rotate blue face
        r=randi(4,1);
        for k=1:r
            [B,G,O,R,W,Y]=Blue_CW(B,G,O,R,W,Y);
        end
    elseif f==2
        %rotate green face
        r=randi(4,1);
        for k=1:r
            [B,G,O,R,W,Y]=Green_CW(B,G,O,R,W,Y);
        end
    elseif f==3
        %rotate orange face
        r=randi(4,1);
        for k=1:r
            [B,G,O,R,W,Y]=Orange_CW(B,G,O,R,W,Y);
        end
    elseif f==4
        %rotate red face
        r=randi(4,1);
        for k=1:r
            [B,G,O,R,W,Y]=Red_CW(B,G,O,R,W,Y);
        end
    elseif f==5
        %rotate white face
        r=randi(4,1);
        for k=1:r
            [B,G,O,R,W,Y]=White_CW(B,G,O,R,W,Y);
        end
    elseif f==6
        %rotate yellow face
        r=randi(4,1);
        for k=1:r
            [B,G,O,R,W,Y]=Yellow_CW(B,G,O,R,W,Y);
        end
    end
        
end