### Title: 04_Cress_Rep_Networks.sh ###
### Author: Ema H Graham ###
### For Questions Email: ema.graham@huskers.unl.edu ###

############################################
## -------------------------------------- ##
## ------------- Description ------------ ##
## -------------------------------------- ##
############################################

#Input Notes:
#This is the third step of this pipeline is designed to be used after completing 03_Identify_Circular_Virus.sh
#This pipeline should begin using the .faa file containing all Rep gene sequences identfied from your circular virus contig dataset generated and evaluated using 03_Identify_Circular_Virus.sh
#Reference Rep protein amino acid sequnces were obtained from NCBI-Protein. Only full Rep protein sequnces with known Family level Cress classifications were retained in REP_NCBI.fa

#Output Notes:
#This pipeline will generate a file that can be used as input for Rep gene sequence similarity network assessment
#The next step in this pipeline is the next step in pipeline is 05. Viral_Mapping (05_Viral_Mapping.sh)

#General Notes:
#This pipeline is designed to be run using the Holland Computing Center at the University of Nebraska. Some tool commands may differ depending on installation of the tool. Please refer to the listed Githubs for each tool used as mentioned in script for further information if issues arise 
#Some file locations may differ from yours so this needs to be changed accordingly. This script is designed to be run all in one folder
#This script is designed to be used post the first and second steps of the pipeline, however any contig assembly fasta file can be used with this script

##############################################
## ---------------------------------------- ##
## - Reduce Reference Sequence Redundancy - ##
## ---------------------------------------- ##
##############################################

#CD-HIT was used to reduce all refernce Rep sequnces with greater than 90% sequence similarity
#CD-HIT can be found here: http://weizhong-lab.ucsd.edu/cd-hit/

cp REP_NCBI.fa CRESS_ALL.fasta
cd-hit -i CRESS_ALL.fasta -c 0.90 -o CRESS_ALL_90.fa

#This refernce output was the combined with the human skin associated Rep sequences we identified in 03_Identify_Circular_Virus.sh

cat CRESS_ALL_90.fa REP_CENOTE.faa > CRESS_SSN_READY.fa

#CRESS_SSN_READY.fa was used as the input for EFI-EST (https://efi.igb.illinois.edu) to generate a sequence similarity network
