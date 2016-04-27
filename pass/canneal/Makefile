TARGET := canneal
#LDFLAGS := -lm -pthread
#CFLAGS := -pthread -DENABLE_THREADS

LLVMROOT = ~/llvm-3.7.1-build
CLANG = ~/clang-3.7.1-build/bin/clang

LLVMAS  = $(LLVMROOT)/bin/llvm-as
LLVMDIS = $(LLVMROOT)/bin/llvm-dis
LLVMOPT = $(LLVMROOT)/bin/opt
LLVMLLC = $(LLVMROOT)/bin/llc
LLVMLK = $(LLVMROOT)/bin/llvm-link
LDFLAGS := -lm -pthread

## change library name appropriately for your system
DYLIB   = $(LLVMROOT)/lib/EECE571Project.so

SOURCES := $(wildcard *.cpp)
BC_FILES := $(notdir $(SOURCES:.cpp=.llvm.bc))

default: canneal.op
#debug: $(BC_FILES).bc

canneal.op: $(BC_FILES)
	$(LLVMLK) -o $(TARGET).bc1 *.bc
	$(LLVMOPT) -load $(DYLIB) -CodePerforationPass -o $(TARGET)_perf.bc1 $(TARGET).bc1
	$(LLVMLLC) $(TARGET)_perf.bc1
	g++ *.s -o $(TARGET).op $(LDFLAGS)

%.llvm.bc: %.cpp 
	$(CLANG) -S -emit-llvm -o - $< | $(LLVMAS) > $@
	
#%.bc: %.llvm.bc
#	$(LLVMOPT) -load $(DYLIB) -CodePerforationPass -o $@ $<
#	rm *.llvm.bc

	
clean: 
	$(RM) -f *.debug.bc *.bc *.s *.op *.bc1
