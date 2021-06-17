function[ibp]=IBP(Process,Set)
n=length(Set);
m=length(Process);
for i=1:n
    k=0;
    for j=1:m
        if length(intersect(Set(i),Process(j).gene_ID))>0
            k=k+1;
        end
    end
    ibp(i)=k;
end
    