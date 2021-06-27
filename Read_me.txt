A method to calculate topological features.

Version 1.0
Corresponding author: Mahnaz Habibi (Email: mhabibi@ipm.ir)
=============


If you want to find the topological features in new dataset, please
prepare your input#1 file in the following format:

protein#1	protein#2
---	---
---	---
---	---
---	---
---	---
				
Each row refers to one protein interaction pair.
=============
Please prepare your input#2 file in the following format:

protein#1
---
---
---
---
---
				
Each row refers to a human protein as a drug target.
=============
Please prepare your input#3 file in the following format:

protein#1
---
---
---
---
---
				
Each row refers a human protein that interact with proteins of virus.
=============
Please prepare your input#4 file in the following format:

Biological_Process,protein#1,protein#2,protein#3,...,protein#n,
---
---
---
---
---
				
Each row refers to Gene ontology terms (IBP GO term) affected by the virus and the name of proteins in Go term that separated by ','.
for example:
DNA protection [GO:0042262],P35520,P36639,Q9H773,Q9NS18,Q9NV35,
==============

The entry point of the code is the script Topological_Network.m
To run the program, use the following arguments in matlab command line:

"Topological_Network"


You will see the following on the command line--
"Please enter the name of protein interaction network file: "
For example: 'Input#1.txt'

Then you will see the following on the command line--
"Please enter the name of all target proteins file: "
For example: 'Input#2.txt'

Then you will see the following on the command line--
"Please enter the name of host proteins that are targeted by the virus file: "
For example: 'Input#3.txt'

Then you will see the following on the command line--
"Please enter the name of biological processes file "
For example: 'Input#4.txt'


Finally, you will see the following on the command line--

"Please enter the name of output file: "
For example: 'Output.txt'

The output  contain the set of all target proteins  and their topological and statisticl features in "Output.txt" file can be found .

==============


