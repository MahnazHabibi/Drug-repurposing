# Drug-repurposing
Descripotion:

This repository contains the data and MATLAB code for the "Topological Network based drug repurposing for Coronavirus 2019" paper:

Data set:

File "All interaction.xlsx" contains 304,730 interactions between 25,260 proteins in Human cells.

File "Process related to 332 proteins.xlsx" contains 1,374 Informative Biological Processes (IBP) Gene Ontology (GO) terms affected by the SARS-Cov-2.

File "List name proteins.xlsx" contains 25,260 proteins in PPI network.

File "candidate drug targets.xlsx" contains three sets of candidate set of target proteins related to Covid-19

File "Gene_Lists.xlsx" cantains 2898 proteins that target by at least one of the known drugs reported in Uniprot.

File "essential genes related to covid-19 pathology.xlsx" contains 35 disease-associated genes related to COVID-19.

File "pathway related essential genes.xlsx" contains top significantly enrichment signaling and diseases pathways identified by bio-pathways DAVID tools.



To calculate 4 topological and 2 statistical features of proteins from PPI networks. We use an algorithm "Topological_Network.m" code. to run the procedure follow the Read_me.txt steps. See the output of Algorithm in "Output.txt" file. Two other features (Cov(v) and ClD(v)) are calculated by 

Next, we identify proteins in our candidate set that are associated with some underlying diseases related to COVID-19. We select 35 proteins as a final set of essential proteins related to disease pathology. To access the 35 proteins see essential genes related to covid-19 pathology.xlsx file.

Finally, we evaluated these proteins with respect to the related pathways with DAVID tools (see "pathway related essential genes.xlsx" file).
