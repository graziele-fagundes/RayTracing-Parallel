# Ray Tracing Recursivo Paralelo e Distribuído em C

Geração de imagens utilizando a técnica de Ray Tracing Recursivo, totalmente implementado em C, com integração de OpenMP e MPI para paralelização da execução.


# Instalação

Siga os passos abaixos para instalação das bibliotecas necessárias para a exercução do programa.

Caso esteja rodando o programa em uma máquina com sistema operacional como Linux, ignore o primeiro passo.

## 1️⃣ Baixar WSL e Ubuntu pra Windows
É necessário fazer a instalação de ambos para conseguir rodar aplicações com MPI.
 
## 2️⃣ Instalar gcc, openmp e mpi:
```
sudo apt update && sudo apt upgrade -y
 
sudo apt install -y build-essential mpich
```

## 3️⃣ Se nao funcionar com o mpich:
```
sudo apt remove mpich -y
 
sudo apt install openmpi-bin libopenmpi-dev -y
```

# Execução:
Rode os seguintes comandos, em ordem, para compilar e executar o programa.

```
make

make run
```
A execução é feita utilizando o número padrão de processos 4.
