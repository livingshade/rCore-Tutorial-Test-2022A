

LIB=-L/home/lbr/local/usr/lib64/
INC=-I/home/lbr/local/usr/include/
TARGETS=kernmaptest.o maptest.o loadprogextest.o naivetest.o
CC=riscv64-linux-musl-gcc
BPF_LIB=bpf.c

clean: 
	rm -f *.o

all: $(TARGETS)

.PHONY: all clean

kernmaptest.o: kernmaptest.c
	$(CC) -g  -o $@ $< $(BPF_LIB)

maptest.o: maptest.c
	$(CC) -g  -o $@ $< $(BPF_LIB)

loadprogextest.o: loadprogextest.c
	$(CC) -g  -o $@ $< $(BPF_LIB)

naivetest.o: naivetest.c
	$(CC) -g  -o $@ $< $(BPF_LIB)

