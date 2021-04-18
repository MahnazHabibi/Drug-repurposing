function[d]=D(Adj,Set,T)
distance=Distance_Between_Vertex_H(Adj,T);
d=min(distance(:,Set));
