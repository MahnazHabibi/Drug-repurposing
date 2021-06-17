function[p_ibp]=P_IBP(Adj,Set,Process)
n=length(Set);
for i=1:n
    v=Set(i);
    N_v=find(Adj(v,:)==1);
    m=length(Process);
    for j=1:m
        A(j)=length(intersect(N_v,Process(j).gene_ID));
    end
    a=sum(A);
    if a>0
       p_ibp(i)=1-sum((A./a).^2);
    else
       p_ibp(i)=0;
    end
end