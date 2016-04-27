TARGET := x264
LDFLAGS := -lm 



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

#SOURCES := $(wildcard *.c) $(wildcard encoder/*.c) $(wildcard common/*.c)

SOURCES := common/mc.c common/predict.c common/pixel.c common/macroblock.c common/frame.c common/dct.c common/cpu.c common/cabac.c common/common.c common/mdate.c common/set.c common/quant.c common/vlc.c encoder/analyse.c encoder/me.c encoder/ratecontrol.c encoder/set.c encoder/macroblock.c encoder/cabac.c encoder/cavlc.c encoder/encoder.c x264.c matroska.c muxers.c
		
		
		
VPATH := $(dir $(SOURCES))

BC_FILES := common/mc.llvm.bc common/predict.llvm.bc common/pixel.llvm.bc common/macroblock.llvm.bc common/frame.llvm.bc common/dct.llvm.bc common/cpu.llvm.bc common/cabac.llvm.bc common/common.llvm.bc common/mdate.llvm.bc common/set.llvm.bc common/quant.llvm.bc common/vlc.llvm.bc  encoder/analyse.llvm.bc encoder/me.llvm.bc encoder/ratecontrol.llvm.bc encoder/set.llvm.bc encoder/macroblock.llvm.bc encoder/cabac.llvm.bc encoder/cavlc.llvm.bc encoder/encoder.llvm.bc x264.llvm.bc matroska.llvm.bc muxers.llvm.bc

#$(SOURCES:.c=.llvm.bc)
#$(SOURCES:.c=.llvm.bc)

HEADERS := $(wildcard *.h) $(wildcard common/*.h) $(wildcard common/x86/*.h) $(wildcard encoder/*.h)
	       
HEADERDIR := -I/common -I/common/x86 -I. -Wno-array-bounds -Wno-incompatible-pointer-types -DHAVE_STDINT_H -DHAVE_PTHREAD



default: x264.op
#debug: $(BC_FILES).bc

x264.op: $(BC_FILES)
	$(LLVMLK) -o $(TARGET).bc1 *.bc
	$(LLVMOPT) -load $(DYLIB) -CodePerforationPass -o $(TARGET)_perf.bc1 $(TARGET).bc1
	$(LLVMLLC) $(TARGET)_perf.bc1
	gcc *.s -o $(TARGET).op $(LDFLAGS)

%.llvm.bc: %.c
	$(CLANG) $(HEADERDIR) -S -emit-llvm $(HEADERDIR) -o - $<  | $(LLVMAS) > $@

common/%.llvm.bc: %.c Makefile
	$(CLANG) $(HEADERDIR) -S -emit-llvm $(HEADERDIR) -o - $<  | $(LLVMAS) > $@
	
encoder/%.llvm.bc: encoder/%.c
	$(CLANG) $(HEADERDIR) -S -emit-llvm $(HEADERDIR) -o - $<  | $(LLVMAS) > $@
	
#%.bc: %.llvm.bc
#	$(LLVMOPT) -load $(DYLIB) -CodePerforationPass -o $@ $<
#	rm *.llvm.bc

	
clean: 
	$(RM) -f *.debug.bc *.bc *.s *.op *.bc1
