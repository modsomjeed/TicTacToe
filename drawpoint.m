function [x1,y1,reply] = drawpoint1(ind)


OX={' ',' ',' ',' ',' ',' ',' ',' ',' '};
OX(O)={'O'}; 
OX(X)={'X'};
reshape(OX,[3,3])'


if ind == 3
    x1 = 0.5;
    y1 = 0.5;
    reply = 3;
elseif ind == 6
    x1 = 1.5;
    y1 = 0.5;
    reply = 6;
elseif ind == 9
    x1 = 2.5;
    y1 = 0.5;
    reply = 9;
elseif ind ==2
    x1 = 0.5;
    y1 = 1.5;
    reply = 2;
elseif ind == 5
    x1 = 1.5;
    y1 = 1.5;
    reply = 5;
elseif ind == 8
    x1 = 2.5;
    y1 = 1.5;
    reply = 8;
elseif ind == 1
    x1 = 0.5;
    y1 = 2.5;
    reply = 1;
elseif ind == 4
    x1 = 1.5;
    y1 = 2.5;
    reply = 4;
elseif ind == 7
    x1 = 2.5;
    y1 = 2.5;  
    reply = 7;
end