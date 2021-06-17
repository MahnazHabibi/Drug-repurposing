function[Number]=FindNumber(Name,ListNameProtein)
w=111;
k=1;
Number=0;
while w==111
    if length(Name)==length(ListNameProtein{k})
        B=ListNameProtein{k};
        if length(Name)>6
            if char(Name(1:6))==char(B(1:6))
                Number=k;
                w=112;
            end
        else
            if char(Name)==char(B)
                Number=k;
                w=112;
            end
        end
    end
    k=k+1;
    if k>length(ListNameProtein)
        w=112;
    end
end