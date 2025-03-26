# Ray Tracing Sequencial e Paralelo: Implementação em C com OpenMP e MPI

Geração de imagens utilizando a técnica de Ray Tracing, totalmente implementado em C, com integração de OpenMP e MPI para paralelização da execução, utilizando paralelismo compartilhado e distribuído para otimização do desempenho na renderização.

## 📌 Integrantes do Grupo
- **João Vitor Farias**  
- **Graziele Fagundes Martins**
- **Otávio Salomão Rocha**  
- **Miguel Rodrigues Botelho**  


# Instalação

Siga os passos abaixos para instalação das bibliotecas necessárias para a exercução do programa.

Caso esteja rodando o programa em uma máquina com sistema operacional como Linux, ignore o primeiro passo.

## 1️⃣ Configuração do Ambiente
É necessário fazer a instalação de ambos para conseguir rodar aplicações com MPI.

Para isso, é necessário instalar o WSL e o Ubuntu para Windows:
 1. Baixe o WSL seguindo sua [documentação oficial](https://learn.microsoft.com/pt-br/windows/wsl/install)
 2. Baixe o Ubuntu diretamente pela Microsoft Store

 
## 2️⃣ Instalar gcc, openmp e mpi
No terminal, execute os seguintes comandos:
```
sudo apt update && sudo apt upgrade -y
 
sudo apt install -y build-essential mpich
```

## 3️⃣ Se não funcionar com o mpich
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
