function[md]=MD(Adj,Set,distance)
n=length(Set);
Degree=sum(Adj);
d1=min(distance);
for i=1:n
    v=Set(i);
    N_v=find(Adj(v,:)==1);
    m=length(N_v);
    k=0;
    for j=1:m
        k=k+d1(N_v(j));
    end
    md(i)=k/Degree(v);
end
    