# Graham_2022_ssDNA_Virome_Cress

Github Repository for the paper on the human skin ssDNA virome with focus on Cressdnaviricota skin assocaited viruses

This work is in progress and a link will be provided once published.

To cite this work or code:
**TBD**

__ABSTRACT__
The human skin is our point of contact with the microbial world, yet little is known regarding the diversity of the skin virome. Studies of the human skin virome have focused on bacteriophage and double-stranded DNA viral genomes, however, there have been few efforts to characterize the human skin circular single-stranded DNA (ssDNA) virome. Here, we evaluate the diversity of the circular ssDNA virome collected across three anatomical skin locations from 60 human individuals with five time-point collections spanning 6 months. Our analysis resulted in the identification of 272 novel and unique Rep-encoding ssDNA viruses associated with human skin. Taxonomic frameworks using sequence similarity networks and maximum likelihood estimations of the Rep and Capsid protein amino acid sequences of Cressdnaviricota from our sequencing and public database references, reveal family level stability across the study participants and a larger host-range than previously thought for these multi-host pathogens. 

__FUNDING___
This work was completed using the [Holland Computing Center](https://hcc.unl.edu/) of the University of Nebraska, which receives support from the Nebraska Research Initiative. This work was supported by the Department of Justice, USA [Grant numbers 2017-IJ-CX-0025 and 2019-75-CX-0017] and NIJ Fellowship [Grant number 2019-R2-CX-0048].All of the funding agencies had no role in study design, data collection and interpretation, or the decision to submit the work for publication.

More info:
[Herr Lab Website](http://herrlab.com/);
[Fernando Lab Website](https://fernandolab.unl.edu/)

 ## CODE DIRECTORY ##
 
 This directory contains all scripts used in this study. At the beginning of each script is a description of what files are needed for input to execute the script, a brief general description of the script, and a description of all expected outputs. For any issues or questions or issues experienced in scripts please contact Ema Graham (ema.graham@huskers.unl.edu). All R-markdown scripts were designed to be run using R v.3.6.3. 

__ORDER TO RUN SCRIPTS__

1. Obtain Human Skin Virome Data ([01_Obtain_Virome_Data.sh](https://github.com/HerrLab/Graham_2022_ssDNA_Virome_Cress/blob/main/CODE/01_Obtain_Virome_Data.sh))
2. Virome Assembly ([02_Virome_Assembly.sh](https://github.com/HerrLab/Graham_2022_ssDNA_Virome_Cress/blob/main/CODE/02_Virome_Assembly.sh))
3. Identify Circular Viruses ([03_Identify_Curcular_Virus.sh](https://github.com/HerrLab/Graham_2022_ssDNA_Virome_Cress/blob/main/CODE/03_Identify_Circular_Virus.sh))
4. Rep Protein Sequence Similarity Network ([04_Cress_Rep_Networks.sh](https://github.com/HerrLab/Graham_2022_ssDNA_Virome_Cress/blob/main/CODE/04_Cress_Rep_Networks.sh))
5. Mapping of Reads to Identified Circular Virus Genomes ([05_Viral_Mapping.sh](https://github.com/HerrLab/Graham_2022_ssDNA_Virome_Cress/blob/main/CODE/05_Viral_Mapping.sh))
6. Heatmap of Skin Associated Cressviruses ([06_Heatmap_Cress.Rmd](https://github.com/HerrLab/Graham_2022_ssDNA_Virome_Cress/blob/main/CODE/06_Heatmap_Cress.Rmd))
7. Bargraph of Overall Circular Virus Taxonomic Groupings ([07_Bar_Graph.Rmd](https://github.com/HerrLab/Graham_2022_ssDNA_Virome_Cress/blob/main/CODE/07_Tax_Bar_Graph.Rmd))

__SCRIPTS USED TO MAKE MANUSCRIPT FIGURES__

-Figure 1A: [07_Bar_Graph.Rmd](https://github.com/HerrLab/Graham_2022_ssDNA_Virome_Cress/blob/main/CODE/07_Tax_Bar_Graph.Rmd)
-Figure 2A: [06_Heatmap_Cress.Rmd](https://github.com/HerrLab/Graham_2022_ssDNA_Virome_Cress/blob/main/CODE/06_Heatmap_Cress.Rmd)
-Figure 2B: [06_Heatmap_Cress.Rmd](https://github.com/HerrLab/Graham_2022_ssDNA_Virome_Cress/blob/main/CODE/06_Heatmap_Cress.Rmd)
-All other figures were generated using [iTOL](https://itol.embl.de) and [Cytoscape](https://cytoscape.org)
