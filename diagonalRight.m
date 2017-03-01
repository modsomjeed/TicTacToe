function diagonalRight(m,n,S)
if((m+n)~=4) 
    diagonalRight =0;
    return;
else
    for j=1:length(S)
        ms=ceil(S(j)/3);
        ns=mod(S(j),3);
        if(ns==0)
            ns=3;
        end
        
        if((ms+ns)==4)
            diagonalRight =0;
            return;
        end
    end
    diagonalRight=1;
end
