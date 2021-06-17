function []=Topological_Network()
InteractionFile=input('Please enter the name of protein interaction network file: ');
Co=fopen(char(InteractionFile));
t=fgetl(Co);
i=1;
while t~=-1
    x=find(t=='	');
    Interact{i,1}=char(t(1:x-1));
    Interact{i,2}=char(t(x+1:length(t)));
    i=i+1;
    t=fgetl(Co);
end
ListNameProtein=union(Interact(:,1),Interact(:,2));
Adj(length(ListNameProtein),length(ListNameProtein))=0;
for i=1:length(Interact)
    Number1=FindNumber(Interact{i,1},ListNameProtein);
    Number2=FindNumber(Interact{i,2},ListNameProtein); 
    if Number1>0
        if Number2>0
           Adj(Number1,Number2)=1;
           Adj(Number2,Number1)=1;
        end
    end
end
fclose(Co);
save Adj
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DrugTaegetFile=input('Please enter the name of all target proteins file: ');
Co1=fopen(char(DrugTaegetFile));
t=fgetl(Co1);
i=1;
while t~=-1
    ListNameTarget{i}=char(t);
    i=i+1;
    t=fgetl(Co);
end
n=length(ListNameTarget);
Set(1)=0;l=1;
for i=1:n
    Number1=FindNumber(ListNameTarget{i},ListNameProtein);
    if Number1>0
        Set(i)=Number1;
        
        LNT{l}=ListNameTarget{i};
        l=l+1;
    end
end
Set=setdiff(Set,[0]);
fclose(Co1);
save Set
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HostTargetfile=input('Please enter the name of host proteins that are targeted by the virus file: ');
Co2=fopen(char(HostTargetfile));
t=fgetl(Co2);
i=1;
while t~=-1
    ListNameHostTarget{i}=char(t);
    i=i+1;
    t=fgetl(Co2);
end
n=length(ListNameHostTarget);
T(1)=0;
for i=1:n
    Number1=FindNumber(ListNameHostTarget{i},ListNameProtein);
    if Number1>0
        T(i)=Number1;
    end
end
T=setdiff(T,[0]);
fclose(Co2);
save T
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IBPFile=input('Please enter the name of biological processes file: ');
Co3=fopen(char(IBPFile));
t=fgetl(Co3);
k=1;
while t~=-1
    x=find(t==',');
    Process(k).GO=char(t(1:x(1)-1));
    genes={};
    n=length(x);
    if n>1
        for i=1:n-1
            genes{i}=char(t(x(i)+1:x(i+1)-1));
        end
    end
    Process(k).genes=genes;
    genesID=[];
    if n>1
        for i=1:n-1
            genes_ID(i)=FindNumber(char(genes{i}),ListNameProtein);
        end
    end
    Process(k).gene_ID=setdiff(genes_ID,[0]);
    k=k+1;
    t=fgetl(Co);
end
fclose(Co3);
save Process
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ibp=IBP(Process,Set);
Features_Matrix=ibp';
%fprintf('load ppi data and compute the IBP(v) for each protein  ...\n');

dr=DR(Adj,Set,T);
Features_Matrix(:,2)=dr';
%fprintf('load ppi data and compute the DR(v) for each protein  ...\n');

an=AN(Adj,Set);
Features_Matrix(:,3)=an';
%fprintf('load ppi data and compute the AN(v) for each protein  ...\n');

distance=Distance_Between_Vertex_H(Adj,T);
[d]=D(distance,Set);
Features_Matrix(:,4)=d';
%fprintf('load ppi data and compute the D(v,T) for each protein  ...\n');

[md]=MD(Adj,Set,distance);
Features_Matrix(:,5)=md';
%fprintf('load ppi data and compute the MD(v,T) for each protein  ...\n');

p_ibp=P_IBP(Adj,Set,Process);
Features_Matrix(:,6)=p_ibp';
%fprintf('load ppi data and compute the P_IBP(v) for each protein  ...\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OutputFile=input('Please enter the name of output file: ');
C=fopen(char(OutputFile),'a');
n=length(Set);
for i=1:n
    fprintf(C,'%s',char(ListNameTarget{i}));
    for j=1:6
        fprintf(C,', %5.3f',Features_Matrix(i,j));
    end
    fprintf(C,'\n');
end
fclose(C);
    










