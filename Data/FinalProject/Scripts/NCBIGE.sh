
# Descarga los genes de la dataset mitocondiales del NCBI
    /u/scratch/d/dechavez/Bioinformatica-PUCE/MastBio/edirect/esearch -db nuccore -query "trnl[Gene] AND Vochysia tomentosa[Organism]" | \
    /u/scratch/d/dechavez/Bioinformatica-PUCE/MastBio/edirect/efetch -format fasta > "Fasta/vt_trnl.fasta"

