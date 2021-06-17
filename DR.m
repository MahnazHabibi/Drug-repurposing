function[dr]=DR(Adj,Set,T)
n=length(Set);
Degree=sum(Adj);
for i=1:n
    v=Set(i);
    N_v=find(Adj(v,:)==1);
    dr(i)=length(intersect(T,N_v))/Degree(v);
end
    