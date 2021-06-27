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



To calculate 4 topological and 2 statistical features of proteins from PPI networks, we run an algorithm "Topological_Network.m". To run the algorithm follow the "Read_me.txt" steps. See the output at "Output.txt" file. Two other features (Cov(v) and ClD(v)) are calculated by Covid-Drug and Clinical-Drug groups reported in DrugBank.

To select a final set of candidate proteins related to disease pathology, we evaluated these proteins with respect to the related pathways with DAVID tools (see "pathway related essential genes.xlsx" file).
