#COMPILER=arm-linux-gnueabihf-g++
all: driver core ip main
COMPILER = g++
COMPILER_FLAGS = -c -Iinclude -O2
OUTS = *.o 

driver:
	$(COMPILER) $(COMPILER_FLAGS) zedboard_driver.cc
core:
	$(COMPILER) $(COMPILER_FLAGS) core.cpp		
ip:
	$(COMPILER) $(COMPILER_FLAGS) main.cc

main:
	$(COMPILER) -o main zedboard_driver.o core.o main.o `pkg-config --cflags --libs opencv`

clean:
	rm -rf ${OUTS} main
