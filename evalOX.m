function [V,PO,PX]=evalOX(O,X)  
% V=1+PX-SO
PX=0;
PO=0;
for i=1:length(O)
    mo=ceil(O(i)/3);
    no=mod(O(i),3);
    if(no==0)
        no=3;
    end
    SO=SO+Horizontal(mo,X)+Vertical(no,X)+diagonalLeft(mo,no,X)+diagonalRight(mo,no,X);
end
for j=1:length(X)
   mx=ceil(X(j)/3);
   nx=mod(X(j),3);
   if(nx==0)
       nx=3;
   end
   PX=PX+Horizontal(mx,O)+Vertical(nx,O)+diagonalLeft(mx,nx,O)+diagonalRight(mx,nx,O);
end
SO=SO;
PX=PX;
V=1+PX-SO;

