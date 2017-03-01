function Horizontal(m,S)
 
for j=1:length(S)
    ms=ceil(S(j)/3);
    if(ms==m)
        Horizontal=0;
        return;
    end
end
Horizontal=1;

