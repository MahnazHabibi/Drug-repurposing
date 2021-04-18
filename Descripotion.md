Descripotion:

This repository contains the data and MATLAB code for the "Topological Network based drug repurposing for Coronavirus 2019" paper:

Data set:

File "All interaction.xlsx" contains 304,730 interactions between 25,260 proteins in Human cells.

File "Process related to 332 proteins.xlsx" contains 1,374 Informative Biological Processes (IBP) Gene Ontology (GO) terms as high confidence SARS-Cov-2 human protein-protein intraction (PPI).

File "List name proteins.xlsx" contains 25,260 proteins in PPI network.

File "candidate drug targets.xlsx" contains three sets of essential protein related to Covid-19

File "Gene_Lists.xlsx" cantains 2898 proteins that target by at least one of the known drugs reported in Uniprot.

File "essential genes related to covid-19 pathology.xlsx" contains 35 essential genes related to COVID-19 pathology.

File "pathway related essential genes.xlsx" contains top significantly enrichment signaling and diseases pathways identified by bio-pathways DAVID tools.


To calculate topological features of proteins from PPI networks we use We use an algorithm Topological_features.m code.
to run the procedure follow the Readme.txt steps. See the output of Algorithm in "candidate drug targets.xlsx" file.

Next, we identify proteins in our candidate set that are associated with some underlying diseases related to COVID-19.
We select 35 proteins as a final set of essential proteins related to disease pathology.
To access the 35 proteins see essential genes related to covid-19 pathology.xlsx file.

Finally, we evaluated these proteins with respect to the related pathways with DAVID tools (see "pathway related essential genes.xlsx" file).
