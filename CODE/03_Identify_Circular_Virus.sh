### Title: 03_Identify_Circular_Virus ###
### Author: Ema H Graham ###
### For Questions Email: ema.graham@huskers.unl.edu ###

############################################
## -------------------------------------- ##
## ------------- Description ------------ ##
## -------------------------------------- ##
############################################

#Input Notes:
#This is the third step of this pipeline is designed to be used after completing 02_Virome_Assembly.sh
#This pipeline should begin using the fasta files META_unmapped_1000_contigs.fa and SAMPLE_unmapped_1000_contigs.fa generated using 02_Virome_Assembly.sh

#Output Notes:
#This pipeline will identify circular viruses from your viral genome assembles 
#The next step in this pipeline is the next step in pipeline is 4. Cress Rep Networks (04_Cress_Rep_Networks.sh)

#General Notes:
#This pipeline is designed to be run using the Holland Computing Center at the University of Nebraska. Some tool commands may differ depending on installation of the tool. Please refer to the listed Githubs for each tool used as mentioned in script for further information if issues arise 
#Some file locations may differ from yours so this needs to be changed accordingly. This script is designed to be run all in one folder
#This script is designed to be used post the first and second steps of the pipeline, however any contig assembly fasta file can be used with this script

############################################
## -------------------------------------- ##
## ----------- Combine Contigs ---------- ##
## -------------------------------------- ##
############################################

#the meta-assembly contigs and the within sample-assembly were combined together into one file

cat META_unmapped_1000_contigs.fa SAMPLE_unmapped_1000_contigs.fa > ALL_unmapped_1000_contigs.fa

############################################
## -------------------------------------- ##
## ----------- CENOTE-TAKER2 ------------ ##
## -------------------------------------- ##
############################################

#CENOTE-TAKER2 was used to identify circular viruses from combined assembies dataset
#Version cenote-taker2/2.1 was used
#CENOTE-TAKER2 can be found at: https://github.com/mtisza1/Cenote-Taker2

#If assembly file was too large to run through CENOTE so we split it up and run

run_cenote-taker2.py -c ALL_unmapped_1000_contigs.fa  -r CENOTE_META -p True -db virion --minimum_length_linear 1000 --lin_minimum_hallmark_genes 2 -t 32 -m 56 --assembler MEGAHIT --molecule_type DNA --filter_out_plasmids True


#############################################
## --------------------------------------- ##
## --- CENOTE-TAKER2 Output Assessment --- ##
## --------------------------------------- ##
#############################################

cd CENOTE_META/sequin_and_genome_maps

# Gene bank files (*.gbk) were evaluated and were manually categorized into the following categories: Anellovirus, Capsid Only, Cressdnavirus, Inovirus, Microvirus, Papillomavirus, Phage, and Polyomavirus

#fasta and amino acid files were generated for each gbf CDS region (fa and aa) & total sequnce (fa and aa)
#All Rep amino acid sequnces and Rep containing genome Capsid sequences identified will be used for further anaysis.  
