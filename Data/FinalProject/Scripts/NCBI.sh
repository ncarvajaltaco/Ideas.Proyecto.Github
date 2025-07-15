# Crear directorio de salida
mkdir Fasta

# Descarga los genes de la dataset mitocondiales del NCBI
    /u/scratch/d/dechavez/Bioinformatica-PUCE/MastBio/edirect/esearch -db nuccore -query "trnl[Gene] AND Myrcia[Organism]" | \
    /u/scratch/d/dechavez/Bioinformatica-PUCE/MastBio/edirect/efetch -format fasta > "Fasta/trnl.fasta"

