TARGET := blackscholes
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


SOURCES := blackscholes.cpp

default: debug
debug: $(TARGET).bc

#RUNARGS := 1 in_64K.txt output.txt  # simlarge
#TESTARGS := 1 in_10M.txt output.txt  # native
# RUNARGS := 4 in_1M.txt output.txt  # in between

#CLEANMETOO := output.txt blackscholes.m4.cpp

#ACCEPT_DIR := ../../accept
#include $(ACCEPT_DIR)/accept.mk

#blackscholes.m4.cpp: blackscholes.c c.m4.pthreads
#	m4 c.m4.pthreads $< > $@
	
	
%.llvm.bc: %.c
	$(CLANG) -S -emit-llvm -o - $< | $(LLVMAS) > $@
	
%.bc: %.llvm.bc
	$(LLVMOPT) -load $(DYLIB) -CodePerforationPass -o $@ $<
	rm *.llvm.bc
	$(LLVMLK) -o $(TARGET).bc1 *.bc
	$(LLVMLLC) $@
	gcc *.s -o $(TARGET).op $(LDFLAGS)
	
clean: 
	$(RM) -f *.debug.bc *.bc *.s *.op *.bc1
