
 
function index=turnO(surplus,O,X,first)
Oi=100;PO=0;PX=0;
precheckO=checkBelongsTo(O,X,2);
    for i=1:length(surplus)
        m=ceil(surplus(i)/3);
        n=mod(surplus(i),3);
        if(n==0)
            n=3;
        end
        if(precheckO(1)==m)
            index=i;
            return;
        elseif(precheckO(2)==n)
            index=i;
            return;
        elseif(precheckO(3)==1&&m==n)
            index=i;
            return;
        elseif(precheckO(4)==1&&m+n==4)
            index=i;
            return;
        end
        
    end
precheckX=checkBelongsTo(X,O,2);
 
    for i=1:length(surplus)
        m=ceil(surplus(i)/3);
        n=mod(surplus(i),3);
        if(n==0)
            n=3;
        end
        if(precheckX(1)==m)
            index=i;
            return;
        elseif(precheckX(2)==n)
            index=i;
            return;
        elseif(precheckX(3)==1&&m==n)
            index=i;
            return;
        elseif(precheckX(4)==1&&m+n==4)
            index=i;
            return;
        end
        
    end
 
for i=1:length(surplus)
    [tmp,tPO,tPX]=evalOX(POrt([O,surplus(i)]),X);
    if(tmp<Oi)
        Oi=tmp;
        PO=tPO;
        PX=tPX;
        index=i;
    elseif(Oi==tmp)
        if(tPO>PO&&first=='O')
            PO=tPO;
            PX=tPX;
            index=i;
        elseif(tPX<PX&&first=='X')
            PO=tPO;
            PX=tPX;
            index=i;
        elseif(tPO==PO)
            if(tPX<PX)
            PO=tPO;
            PX=tPX;
            index=i;
            end
        end
    end
end

