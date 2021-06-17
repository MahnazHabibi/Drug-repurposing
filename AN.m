function[an]=AN(Adj,Set)
n=length(Set);
Degree=sum(Adj);
for i=1:n
    v=Set(i);
    N_v=find(Adj(v,:)==1);
    m=length(N_v);
    k=0;
    for j=1:m
        k=k+Degree(N_v(j));
    end
    an=k/Degree(v);
end
    