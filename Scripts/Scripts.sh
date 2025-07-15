# Descargar secuencias del gen *trnl* en NCBI #

# Entrar a supercomputadora
#Entrar a carpeta FinalProject

cd $SCRATCH/Bioinformatica-PUCE/RediseBio/NicolasCT/FinalProject

#Crear directorio de salida

mkdir Fasta

# Descarga los genes *trnl* de la dataset cloroplasticos del NCBI
    /u/scratch/d/dechavez/Bioinformatica-PUCE/MastBio/edirect/esearch -db nuccore -query "trnl[>
    /u/scratch/d/dechavez/Bioinformatica-PUCE/MastBio/edirect/efetch -format fasta > "Fasta/trn>

#entrar a directorio Fasta

#Como la secuencia de genes descargados desde el NCBI va a tener toda la información de los genes (como codigo de acceso, numero de voucher, etc), esta información se va a editar mediante la aplicacion Atom , que permite editar el texto. Solo necesitaremos el nombre de la especie y el numero de voucher

#Descargamos desde nuestro escritorio el archivo .fasta desde la supercomputadora

scp .........../trnl.fasta .

#Se descarga Atom y se ingresa

#Se abre la secuencia fasta en Atom

#Seleccionar el comando en regex que puedes usar en Atom (con la opción de Find in File / Replace, activando .* para usar expresiones regulares)

# pegar en la sección Buscar (Find) ^>(\S+)\s+(\w)(?:\w*)\s+(?:cf\.\s+)?(\w+)\s+(\w+).*
# pegar en la sección Reemplazar (Replace) $2_$3_$1_$4

#Guardar el archivo en el escritorio y descargar desde Hoffman el archivo corregido por Atom.

#Subir el archivo a carpeta FASTA y eliminar el antiguo

#Hacer lo mismo ahora con el mismo gen pero con un grupo externo en este caso se tomara Vochysia tomentosa

#juntar el grupo externo con las secuencias actuales

cat trnl.fasta vt_trnl.fasta > trnL.fasta

#Crear carpeta Muscle y mover Programa muscle que se encuentra en carpeta Scripts

mv Scripts/muscle3.8.31_i86linux64 Muscle/

#Correr el comando para alinear las secuencias
./muscle3.8.31_i86linux64 -in ../Fasta/trnl.fasta -out muscle_trnl.fasta

#Crear carpeta IQTREE y entrar

#Para realizar los arboles filogeneticos usando los genes *trnl*
## Cargar iqtree
module load iqtree/2.2.2.6

#Para hacer las filogenias con los genes *trnl*
iqtree2 -s ../Muscle/muscle_trnl.fasta

#Descargar archivo .treefile de la supercomputadora al escritorio

scp 



