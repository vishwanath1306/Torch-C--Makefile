CFLAGS += -I ~/libtorch/include -L ~/libtorch/lib -g -lstdc++ -lpthread -ltorch_cpu -lc10 -Wno-deprecated-declarations

all:
	g++ hack.cpp ${CFLAGS} -o hack.o
