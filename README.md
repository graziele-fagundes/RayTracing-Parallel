# Baixar WSL e Ubuntu pra Windows

# Instalar gcc, openmp e mpi:
sudo apt update && sudo apt upgrade -y

sudo apt install -y build-essential mpich

# Comandos para rodar:
mpicc -fopenmp raytracing.c utils.c -o raytracing -lm

mpiexec -n 4 ./raytracing
