# Baixar WSL e Ubuntu pra Windows

# Instalar gcc, openmp e mpi:
sudo apt update && sudo apt upgrade -y

sudo apt install -y build-essential mpich

# Se nao funcionar com o mpich:
sudo apt remove mpich -y

sudo apt install openmpi-bin libopenmpi-dev -y

# Comandos para rodar:
mpicc -fopenmp raytracing.c utils.c -o raytracing -lm

mpiexec -n 4 ./raytracing
