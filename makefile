CC=mpicc
CFLAGS=-fopenmp
LDFLAGS=-lm
SRC_PARALLEL=raytracing.c utils.c
OBJ_PARALLEL=$(SRC_PARALLEL:.c=.o)
TARGET_PARALLEL=raytracing

all: $(TARGET_PARALLEL) $(TARGET_SEQUENTIAL)

$(TARGET_PARALLEL): $(OBJ_PARALLEL)
	$(CC) $(CFLAGS) -o $(TARGET_PARALLEL) $(OBJ_PARALLEL) $(LDFLAGS)

$(TARGET_SEQUENTIAL): $(OBJ_SEQUENTIAL)
	gcc -o $(TARGET_SEQUENTIAL) $(OBJ_SEQUENTIAL) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run: $(TARGET_PARALLEL)
	mpiexec -n 4 ./$(TARGET_PARALLEL)

clean:
	rm -f $(OBJ_PARALLEL) $(OBJ_SEQUENTIAL) $(TARGET_PARALLEL) $(TARGET_SEQUENTIAL)