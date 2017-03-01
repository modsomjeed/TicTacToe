function Vertical(n,S)
 
for j=S
    ns=mod(j,3);
    if(ns==0)
        ns=3;
    end
    if(n==ns)
        Vertical=0;
        return;
    end
   
end
Vertical = 1;
