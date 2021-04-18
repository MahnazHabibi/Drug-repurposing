function[md]=MD(Adj,Set,T)
n=length(Set);
distance=Distance_Between_Vertex_H(Adj,T);
for i=1:n
    v=Set(i);
    N_v=find(Adj(v,:)==1);
    m=length(N_v);
    k=0;
    for j=1:m
        k=k+distance(N_v(j));
    end
    md=k/Degree(v);
end
    