function [D]=Distance_Between_Vertex_H(Adj,H)
M=sparse(Adj);
n=length(H);
m=length(Adj);
for i=1:n
    for j=1:m
        D(i,j)=graphshortestpath(M,H(i),j);
    end
end