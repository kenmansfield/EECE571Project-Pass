#LEVEL = ..

## change or use make INPUT=inputfilename
TARGET=$(INPUT)

## replace LLVMROOT and CLANG as appropriate

LLVMROOT = ~/llvm-3.7.1-build
CLANG = ~/clang-3.7.1-build/bin/clang

LLVMAS  = $(LLVMROOT)/bin/llvm-as
LLVMDIS = $(LLVMROOT)/bin/llvm-dis
LLVMOPT = $(LLVMROOT)/bin/opt
LLVMLLC = $(LLVMROOT)/bin/llc


## change library name appropriately for your system
DYLIB   = $(LLVMROOT)/lib/EECE571Project.so


default: debug

testsimple: debug

debug: $(TARGET).bc


.PRECIOUS: %.ll


%.ll: %.bc
	$(LLVMDIS) -f $<


%.llvm.bc: %.c
	$(CLANG) -S -emit-llvm -o - $< | $(LLVMAS) > $@


%.bc: %.llvm.bc
	$(LLVMOPT) -load $(DYLIB) -CodePerforationPass -o $@ $<
	$(LLVMLLC) $@.bc
	gcc *.s -o $(INPUT).op
#	$(LLVMOPT) -load $(DYLIB) -loop-simplify -CodePerforationPass -S -o helloPerf $<  


	

clean:
	$(RM) -f *.debug.bc *.bc *.s *.op
