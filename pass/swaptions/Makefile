TARGET := swaptions
LDFLAGS := -lm -std=c++0x -lblas
#CFLAGS := -pthread -DENABLE_THREADS

LLVMROOT = ~/llvm-3.7.1-build
CLANG = ~/clang-3.7.1-build/bin/clang

LLVMAS  = $(LLVMROOT)/bin/llvm-as
LLVMDIS = $(LLVMROOT)/bin/llvm-dis
LLVMOPT = $(LLVMROOT)/bin/opt
LLVMLLC = $(LLVMROOT)/bin/llc
LLVMLK = $(LLVMROOT)/bin/llvm-link
LDFLAGS := -lm

## change library name appropriately for your system
DYLIB   = $(LLVMROOT)/lib/EECE571Project.so

SOURCES := $(wildcard *.cpp) $(wildcard *.c)
BC_FILES := CumNormalInv.bc MaxFunction.bc RanUnif.bc nr_routines.bc icdf.bc \
	HJM_SimPath_Forward_Blocking.bc HJM.bc HJM_Swaption_Blocking.bc  \
	HJM_Securities.bc

default: swaptions.op
#debug: $(BC_FILES).bc

swaptions.op: $(BC_FILES)
	$(LLVMLK) -o $(TARGET).bc1 *.bc
	$(LLVMOPT) -load $(DYLIB) -CodePerforationPass -o $(TARGET)_perf.bc1 $(TARGET).bc1
	$(LLVMLLC) $(TARGET)_perf.bc1
	g++ $(LDFLAGS) *.s -o $(TARGET).op 

%.bc: %.cpp
	$(CLANG) -S -emit-llvm -o - $< | $(LLVMAS) > $@
	
%.bc: %.c
	$(CLANG) -S -emit-llvm -o - $< | $(LLVMAS) > $@

#%.bc: %.llvm.bc
#	$(LLVMOPT) -load $(DYLIB) -CodePerforationPass -o $@ $<
#	rm *.llvm.bc

	
clean: 
	$(RM) -f *.debug.bc *.bc *.s *.op *.bc1
