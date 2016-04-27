	.text
	.file	"x264_perf.bc1"
	.globl	mk_createWriter
	.align	16, 0x90
	.type	mk_createWriter,@function
mk_createWriter:                        # @mk_createWriter
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$112, %edi
	callq	malloc
	movq	%rax, -24(%rbp)
	testq	%rax, %rax
	je	.LBB0_1
# BB#2:
	movq	-24(%rbp), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 96(%rax)
	movups	%xmm0, 80(%rax)
	movups	%xmm0, 64(%rax)
	movups	%xmm0, 48(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	mk_createContext
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_3
# BB#4:
	movq	-16(%rbp), %rdi
	movl	$.L.str, %esi
	callq	fopen
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_5
# BB#6:
	movq	-24(%rbp), %rax
	movq	$1000000, 64(%rax)      # imm = 0xF4240
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_7
.LBB0_5:
	movq	-24(%rbp), %rdi
	callq	mk_destroyContexts
.LBB0_3:
	movq	-24(%rbp), %rdi
	callq	free
	movq	$0, -8(%rbp)
.LBB0_7:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mk_createWriter, .Lfunc_end0-mk_createWriter
	.cfi_endproc

	.globl	mk_writeHeader
	.align	16, 0x90
	.type	mk_writeHeader,@function
mk_writeHeader:                         # @mk_writeHeader
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	movl	48(%rbp), %r10d
	movl	40(%rbp), %r11d
	movl	32(%rbp), %r14d
	movl	24(%rbp), %ebx
	movq	16(%rbp), %rax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	movq	%rax, -80(%rbp)
	movl	%ebx, -84(%rbp)
	movl	%r14d, -88(%rbp)
	movl	%r11d, -92(%rbp)
	movl	%r10d, -96(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 104(%rax)
	je	.LBB1_2
# BB#1:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_2:
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rsi
	movl	$440786851, %edx        # imm = 0x1A45DFA3
	callq	mk_createContext
	movq	%rax, -104(%rbp)
	testq	%rax, %rax
	je	.LBB1_3
# BB#4:
	movq	-104(%rbp), %rdi
	movl	$17030, %esi            # imm = 0x4286
	movl	$1, %edx
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_5
# BB#6:
	movq	-104(%rbp), %rdi
	movl	$17143, %esi            # imm = 0x42F7
	movl	$1, %edx
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_7
# BB#8:
	movq	-104(%rbp), %rdi
	movl	$17138, %esi            # imm = 0x42F2
	movl	$4, %edx
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_9
# BB#10:
	movq	-104(%rbp), %rdi
	movl	$17139, %esi            # imm = 0x42F3
	movl	$8, %edx
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_11
# BB#12:
	movq	-104(%rbp), %rdi
	movl	$17026, %esi            # imm = 0x4282
	movl	$.L.str.1, %edx
	callq	mk_writeStr
	testl	%eax, %eax
	js	.LBB1_13
# BB#14:
	movq	-104(%rbp), %rdi
	movl	$17031, %esi            # imm = 0x4287
	movl	$1, %edx
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_15
# BB#16:
	movq	-104(%rbp), %rdi
	movl	$17029, %esi            # imm = 0x4285
	movl	$1, %edx
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_17
# BB#18:
	movq	-104(%rbp), %rdi
	xorl	%esi, %esi
	callq	mk_closeContext
	testl	%eax, %eax
	js	.LBB1_19
# BB#20:
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rsi
	movl	$408125543, %edx        # imm = 0x18538067
	callq	mk_createContext
	movq	%rax, -104(%rbp)
	testq	%rax, %rax
	je	.LBB1_21
# BB#22:
	movq	-104(%rbp), %rdi
	callq	mk_flushContextID
	testl	%eax, %eax
	js	.LBB1_23
# BB#24:
	movq	-104(%rbp), %rdi
	xorl	%esi, %esi
	callq	mk_closeContext
	testl	%eax, %eax
	js	.LBB1_25
# BB#26:
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rsi
	movl	$357149030, %edx        # imm = 0x1549A966
	callq	mk_createContext
	movq	%rax, -104(%rbp)
	testq	%rax, %rax
	je	.LBB1_27
# BB#28:
	movq	-104(%rbp), %rdi
	movl	$19840, %esi            # imm = 0x4D80
	movl	$.L.str.2, %edx
	callq	mk_writeStr
	testl	%eax, %eax
	js	.LBB1_29
# BB#30:
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	$22337, %esi            # imm = 0x5741
	callq	mk_writeStr
	testl	%eax, %eax
	js	.LBB1_31
# BB#32:
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdx
	movl	$2807729, %esi          # imm = 0x2AD7B1
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_33
# BB#34:
	movq	-104(%rbp), %rdi
	movl	$17545, %esi            # imm = 0x4489
	xorps	%xmm0, %xmm0
	callq	mk_writeFloat
	testl	%eax, %eax
	js	.LBB1_35
# BB#36:
	movq	-104(%rbp), %rax
	movl	48(%rax), %eax
	addl	$-4, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rsi
	addq	$8, %rsi
	callq	mk_closeContext
	testl	%eax, %eax
	js	.LBB1_37
# BB#38:
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rsi
	movl	$374648427, %edx        # imm = 0x1654AE6B
	callq	mk_createContext
	movq	%rax, -104(%rbp)
	testq	%rax, %rax
	je	.LBB1_39
# BB#40:
	movq	-32(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	$174, %edx
	callq	mk_createContext
	movq	%rax, -112(%rbp)
	testq	%rax, %rax
	je	.LBB1_41
# BB#42:
	movq	-112(%rbp), %rdi
	movl	$215, %esi
	movl	$1, %edx
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_43
# BB#44:
	movq	-112(%rbp), %rdi
	movl	$29637, %esi            # imm = 0x73C5
	movl	$1, %edx
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_45
# BB#46:
	movq	-112(%rbp), %rdi
	movl	$131, %esi
	movl	$1, %edx
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_47
# BB#48:
	movq	-112(%rbp), %rdi
	movl	$156, %esi
	xorl	%edx, %edx
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_49
# BB#50:
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movl	$134, %esi
	callq	mk_writeStr
	testl	%eax, %eax
	js	.LBB1_51
# BB#52:
	cmpl	$0, -60(%rbp)
	je	.LBB1_55
# BB#53:
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	$25506, %esi            # imm = 0x63A2
	callq	mk_writeBin
	testl	%eax, %eax
	js	.LBB1_54
.LBB1_55:
	cmpq	$0, -72(%rbp)
	je	.LBB1_58
# BB#56:
	movq	-112(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movl	$2352003, %esi          # imm = 0x23E383
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_57
.LBB1_58:
	movq	-32(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	$224, %edx
	callq	mk_createContext
	movq	%rax, -120(%rbp)
	testq	%rax, %rax
	je	.LBB1_59
# BB#60:
	movq	-120(%rbp), %rdi
	movl	-84(%rbp), %edx
	movl	$176, %esi
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_61
# BB#62:
	movq	-120(%rbp), %rdi
	movl	-88(%rbp), %edx
	movl	$186, %esi
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_63
# BB#64:
	movq	-120(%rbp), %rdi
	movl	-92(%rbp), %edx
	movl	$21680, %esi            # imm = 0x54B0
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_65
# BB#66:
	movq	-120(%rbp), %rdi
	movl	-96(%rbp), %edx
	movl	$21690, %esi            # imm = 0x54BA
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB1_67
# BB#68:
	movq	-120(%rbp), %rdi
	xorl	%esi, %esi
	callq	mk_closeContext
	testl	%eax, %eax
	js	.LBB1_69
# BB#70:
	movq	-112(%rbp), %rdi
	xorl	%esi, %esi
	callq	mk_closeContext
	testl	%eax, %eax
	js	.LBB1_71
# BB#72:
	movq	-104(%rbp), %rdi
	xorl	%esi, %esi
	callq	mk_closeContext
	testl	%eax, %eax
	js	.LBB1_73
# BB#74:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	mk_flushContextData
	testl	%eax, %eax
	js	.LBB1_75
# BB#76:
	movq	-32(%rbp), %rax
	movb	$1, 104(%rax)
	movl	$0, -20(%rbp)
	jmp	.LBB1_77
.LBB1_3:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_5:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_7:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_9:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_11:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_13:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_15:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_17:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_19:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_21:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_23:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_25:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_27:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_29:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_31:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_33:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_35:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_37:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_39:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_41:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_43:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_45:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_47:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_49:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_51:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_54:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_59:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_57:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_61:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_63:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_65:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_67:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_69:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_71:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_73:
	movl	$-1, -20(%rbp)
	jmp	.LBB1_77
.LBB1_75:
	movl	$-1, -20(%rbp)
.LBB1_77:
	movl	-20(%rbp), %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mk_writeHeader, .Lfunc_end1-mk_writeHeader
	.cfi_endproc

	.globl	mk_startFrame
	.align	16, 0x90
	.type	mk_startFrame,@function
mk_startFrame:                          # @mk_startFrame
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	callq	mk_flushFrame
	testl	%eax, %eax
	js	.LBB2_1
# BB#2:
	movq	-16(%rbp), %rax
	movb	$1, 105(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 106(%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB2_3
.LBB2_1:
	movl	$-1, -4(%rbp)
.LBB2_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	mk_startFrame, .Lfunc_end2-mk_startFrame
	.cfi_endproc

	.globl	mk_setFrameFlags
	.align	16, 0x90
	.type	mk_setFrameFlags,@function
mk_setFrameFlags:                       # @mk_setFrameFlags
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 105(%rax)
	je	.LBB3_1
# BB#2:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 80(%rcx)
	cmpl	$0, -28(%rbp)
	movq	-16(%rbp), %rax
	setne	106(%rax)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB3_4
# BB#3:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 96(%rcx)
.LBB3_4:
	movl	$0, -4(%rbp)
	jmp	.LBB3_5
.LBB3_1:
	movl	$-1, -4(%rbp)
.LBB3_5:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mk_setFrameFlags, .Lfunc_end3-mk_setFrameFlags
	.cfi_endproc

	.globl	mk_addFrameData
	.align	16, 0x90
	.type	mk_addFrameData,@function
mk_addFrameData:                        # @mk_addFrameData
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 105(%rax)
	je	.LBB4_1
# BB#2:
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB4_5
# BB#3:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	mk_createContext
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	testq	%rax, %rax
	je	.LBB4_4
.LBB4_5:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	mk_appendContextData
	movl	%eax, -4(%rbp)
	jmp	.LBB4_6
.LBB4_1:
	movl	$-1, -4(%rbp)
	jmp	.LBB4_6
.LBB4_4:
	movl	$-1, -4(%rbp)
.LBB4_6:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	mk_addFrameData, .Lfunc_end4-mk_addFrameData
	.cfi_endproc

	.globl	mk_close
	.align	16, 0x90
	.type	mk_close,@function
mk_close:                               # @mk_close
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	mk_flushFrame
	testl	%eax, %eax
	js	.LBB5_2
# BB#1:
	movq	-8(%rbp), %rdi
	callq	mk_closeCluster
	testl	%eax, %eax
	jns	.LBB5_3
.LBB5_2:
	movl	$-1, -12(%rbp)
.LBB5_3:
	movq	-8(%rbp), %rax
	cmpb	$0, 104(%rax)
	je	.LBB5_7
# BB#4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	8(%rax), %esi
	xorl	%edx, %edx
	callq	fseek
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	96(%rax), %rcx
	addq	56(%rax), %rcx
	cvtsi2sdq	%rcx, %xmm0
	cvtsi2sdq	64(%rax), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	callq	mk_writeFloatRaw
	testl	%eax, %eax
	js	.LBB5_6
# BB#5:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	mk_flushContextData
	testl	%eax, %eax
	jns	.LBB5_7
.LBB5_6:
	movl	$-1, -12(%rbp)
.LBB5_7:
	movq	-8(%rbp), %rdi
	callq	mk_destroyContexts
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	fclose
	movq	-8(%rbp), %rdi
	callq	free
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mk_close, .Lfunc_end5-mk_close
	.cfi_endproc

	.align	16, 0x90
	.type	mk_createContext,@function
mk_createContext:                       # @mk_createContext
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB6_2
# BB#1:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 40(%rax)
	jmp	.LBB6_3
.LBB6_2:
	movl	$56, %edi
	callq	malloc
	movq	%rax, -40(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	movq	$0, 48(%rax)
.LBB6_3:
	cmpq	$0, -40(%rbp)
	je	.LBB6_4
# BB#5:
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB6_7
# BB#6:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, 8(%rcx)
.LBB6_7:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	addq	$48, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rax, 48(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_8
.LBB6_4:
	movq	$0, -8(%rbp)
.LBB6_8:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	mk_createContext, .Lfunc_end6-mk_createContext
	.cfi_endproc

	.align	16, 0x90
	.type	mk_destroyContexts,@function
mk_destroyContexts:                     # @mk_destroyContexts
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	40(%rdi), %rax
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	free
	movq	-16(%rbp), %rdi
	callq	free
	movq	-24(%rbp), %rax
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#3:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	jmp	.LBB7_4
	.align	16, 0x90
.LBB7_5:                                #   in Loop: Header=BB7_4 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	free
	movq	-16(%rbp), %rdi
	callq	free
	movq	-24(%rbp), %rax
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_5
# BB#6:
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	mk_destroyContexts, .Lfunc_end7-mk_destroyContexts
	.cfi_endproc

	.align	16, 0x90
	.type	mk_writeUInt,@function
mk_writeUInt:                           # @mk_writeUInt
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp29:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movb	-33(%rbp), %al
	movb	%al, -48(%rbp)
	movb	-34(%rbp), %al
	movb	%al, -47(%rbp)
	movb	-35(%rbp), %al
	movb	%al, -46(%rbp)
	movb	-36(%rbp), %al
	movb	%al, -45(%rbp)
	movb	-37(%rbp), %al
	movb	%al, -44(%rbp)
	movb	-38(%rbp), %al
	movb	%al, -43(%rbp)
	movb	-39(%rbp), %al
	movb	%al, -42(%rbp)
	movb	-40(%rbp), %al
	movb	%al, -41(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	mk_writeID
	testl	%eax, %eax
	jns	.LBB8_2
# BB#1:
	movl	$-1, -12(%rbp)
	jmp	.LBB8_12
	.align	16, 0x90
.LBB8_6:                                #   in Loop: Header=BB8_2 Depth=1
	incl	-52(%rbp)
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	$6, -52(%rbp)
	ja	.LBB8_3
# BB#4:                                 #   in Loop: Header=BB8_2 Depth=1
	movl	-52(%rbp), %eax
	cmpb	$0, -48(%rbp,%rax)
	sete	%al
	jmp	.LBB8_5
	.align	16, 0x90
.LBB8_3:                                #   in Loop: Header=BB8_2 Depth=1
	xorl	%eax, %eax
.LBB8_5:                                #   in Loop: Header=BB8_2 Depth=1
	testb	%al, %al
	jne	.LBB8_6
# BB#7:
	movq	-24(%rbp), %rdi
	movl	$8, %ebx
	movl	$8, %esi
	subl	-52(%rbp), %esi
	callq	mk_writeSize
	testl	%eax, %eax
	js	.LBB8_8
# BB#9:
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %eax
	leaq	-48(%rbp,%rax), %rsi
	subl	%eax, %ebx
	movl	%ebx, %edx
	callq	mk_appendContextData
	testl	%eax, %eax
	js	.LBB8_10
# BB#11:
	movl	$0, -12(%rbp)
	jmp	.LBB8_12
.LBB8_8:
	movl	$-1, -12(%rbp)
	jmp	.LBB8_12
.LBB8_10:
	movl	$-1, -12(%rbp)
.LBB8_12:
	movl	-12(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	mk_writeUInt, .Lfunc_end8-mk_writeUInt
	.cfi_endproc

	.align	16, 0x90
	.type	mk_writeStr,@function
mk_writeStr:                            # @mk_writeStr
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rdx, %rdi
	callq	strlen
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	mk_writeID
	testl	%eax, %eax
	js	.LBB9_1
# BB#2:
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	mk_writeSize
	testl	%eax, %eax
	js	.LBB9_3
# BB#4:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-40(%rbp), %edx
	callq	mk_appendContextData
	testl	%eax, %eax
	js	.LBB9_5
# BB#6:
	movl	$0, -4(%rbp)
	jmp	.LBB9_7
.LBB9_1:
	movl	$-1, -4(%rbp)
	jmp	.LBB9_7
.LBB9_3:
	movl	$-1, -4(%rbp)
	jmp	.LBB9_7
.LBB9_5:
	movl	$-1, -4(%rbp)
.LBB9_7:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	mk_writeStr, .Lfunc_end9-mk_writeStr
	.cfi_endproc

	.align	16, 0x90
	.type	mk_closeContext,@function
mk_closeContext:                        # @mk_closeContext
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB10_5
# BB#1:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	32(%rax), %esi
	callq	mk_writeID
	testl	%eax, %eax
	js	.LBB10_2
# BB#3:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	48(%rax), %esi
	callq	mk_writeSize
	testl	%eax, %eax
	js	.LBB10_4
.LBB10_5:
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB10_8
# BB#6:
	cmpq	$0, -24(%rbp)
	je	.LBB10_8
# BB#7:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	movq	-24(%rbp), %rcx
	addl	%eax, (%rcx)
.LBB10_8:
	movq	-16(%rbp), %rdi
	callq	mk_flushContextData
	testl	%eax, %eax
	js	.LBB10_9
# BB#10:
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_12
# BB#11:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rax, 8(%rcx)
.LBB10_12:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rax, 40(%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB10_13
.LBB10_2:
	movl	$-1, -4(%rbp)
	jmp	.LBB10_13
.LBB10_9:
	movl	$-1, -4(%rbp)
	jmp	.LBB10_13
.LBB10_4:
	movl	$-1, -4(%rbp)
.LBB10_13:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	mk_closeContext, .Lfunc_end10-mk_closeContext
	.cfi_endproc

	.align	16, 0x90
	.type	mk_flushContextID,@function
mk_flushContextID:                      # @mk_flushContextID
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movb	$-1, -17(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB11_6
# BB#1:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	32(%rax), %esi
	callq	mk_writeID
	testl	%eax, %eax
	js	.LBB11_2
# BB#3:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	-17(%rbp), %rsi
	movl	$1, %edx
	callq	mk_appendContextData
	testl	%eax, %eax
	js	.LBB11_4
# BB#5:
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
.LBB11_6:
	movl	$0, -4(%rbp)
	jmp	.LBB11_7
.LBB11_2:
	movl	$-1, -4(%rbp)
	jmp	.LBB11_7
.LBB11_4:
	movl	$-1, -4(%rbp)
.LBB11_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	mk_flushContextID, .Lfunc_end11-mk_flushContextID
	.cfi_endproc

	.align	16, 0x90
	.type	mk_writeFloat,@function
mk_writeFloat:                          # @mk_writeFloat
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movss	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	mk_writeID
	testl	%eax, %eax
	js	.LBB12_1
# BB#2:
	movq	-16(%rbp), %rdi
	movl	$4, %esi
	callq	mk_writeSize
	testl	%eax, %eax
	js	.LBB12_3
# BB#4:
	movq	-16(%rbp), %rdi
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	mk_writeFloatRaw
	testl	%eax, %eax
	js	.LBB12_5
# BB#6:
	movl	$0, -4(%rbp)
	jmp	.LBB12_7
.LBB12_1:
	movl	$-1, -4(%rbp)
	jmp	.LBB12_7
.LBB12_3:
	movl	$-1, -4(%rbp)
	jmp	.LBB12_7
.LBB12_5:
	movl	$-1, -4(%rbp)
.LBB12_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	mk_writeFloat, .Lfunc_end12-mk_writeFloat
	.cfi_endproc

	.align	16, 0x90
	.type	mk_writeBin,@function
mk_writeBin:                            # @mk_writeBin
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	mk_writeID
	testl	%eax, %eax
	js	.LBB13_1
# BB#2:
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	mk_writeSize
	testl	%eax, %eax
	js	.LBB13_3
# BB#4:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	mk_appendContextData
	testl	%eax, %eax
	js	.LBB13_5
# BB#6:
	movl	$0, -4(%rbp)
	jmp	.LBB13_7
.LBB13_1:
	movl	$-1, -4(%rbp)
	jmp	.LBB13_7
.LBB13_3:
	movl	$-1, -4(%rbp)
	jmp	.LBB13_7
.LBB13_5:
	movl	$-1, -4(%rbp)
.LBB13_7:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	mk_writeBin, .Lfunc_end13-mk_writeBin
	.cfi_endproc

	.align	16, 0x90
	.type	mk_flushContextData,@function
mk_flushContextData:                    # @mk_flushContextData
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpl	$0, 48(%rdi)
	je	.LBB14_7
# BB#1:
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB14_4
# BB#2:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	40(%rax), %rsi
	movl	48(%rax), %edx
	callq	mk_appendContextData
	testl	%eax, %eax
	jns	.LBB14_6
# BB#3:
	movl	$-1, -4(%rbp)
	jmp	.LBB14_8
.LBB14_4:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	40(%rax), %rdi
	movl	48(%rax), %esi
	movq	(%rcx), %rcx
	movl	$1, %edx
	callq	fwrite
	cmpq	$1, %rax
	je	.LBB14_6
# BB#5:
	movl	$-1, -4(%rbp)
	jmp	.LBB14_8
.LBB14_6:
	movq	-16(%rbp), %rax
	movl	$0, 48(%rax)
.LBB14_7:
	movl	$0, -4(%rbp)
.LBB14_8:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	mk_flushContextData, .Lfunc_end14-mk_flushContextData
	.cfi_endproc

	.align	16, 0x90
	.type	mk_flushFrame,@function
mk_flushFrame:                          # @mk_flushFrame
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp51:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 105(%rax)
	je	.LBB15_37
# BB#1:
	movq	-24(%rbp), %rcx
	movq	80(%rcx), %rax
	cqto
	idivq	64(%rcx)
	subq	72(%rcx), %rax
	movq	%rax, -32(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jg	.LBB15_3
# BB#2:
	cmpq	$-32769, -32(%rbp)      # imm = 0xFFFFFFFFFFFF7FFF
	jg	.LBB15_5
.LBB15_3:
	movq	-24(%rbp), %rdi
	callq	mk_closeCluster
	testl	%eax, %eax
	js	.LBB15_4
.LBB15_5:
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB15_11
# BB#6:
	movq	-24(%rbp), %rcx
	movq	80(%rcx), %rax
	cqto
	idivq	64(%rcx)
	movq	%rax, 72(%rcx)
	movq	-24(%rbp), %rdi
	movq	16(%rdi), %rsi
	movl	$524531317, %edx        # imm = 0x1F43B675
	callq	mk_createContext
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB15_7
# BB#8:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	72(%rax), %rdx
	movl	$231, %esi
	callq	mk_writeUInt
	testl	%eax, %eax
	js	.LBB15_9
# BB#10:
	movq	$0, -32(%rbp)
.LBB15_11:
	movq	-24(%rbp), %rax
	xorl	%ebx, %ebx
	cmpq	$0, 32(%rax)
	je	.LBB15_13
# BB#12:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	48(%rax), %ebx
.LBB15_13:
	movl	%ebx, -44(%rbp)
	leal	4(%rbx), %edi
	callq	mk_ebmlSizeSize
	leal	5(%rbx,%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 106(%rax)
	jne	.LBB15_15
# BB#14:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	subq	72(%rax), %rdi
	subq	-32(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	callq	mk_ebmlSIntSize
	movl	-48(%rbp), %ecx
	leal	2(%rax,%rcx), %eax
	movl	%eax, -48(%rbp)
.LBB15_15:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movl	$160, %esi
	callq	mk_writeID
	testl	%eax, %eax
	js	.LBB15_16
# BB#17:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movl	-48(%rbp), %esi
	callq	mk_writeSize
	testl	%eax, %eax
	js	.LBB15_18
# BB#19:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movl	$161, %esi
	callq	mk_writeID
	testl	%eax, %eax
	js	.LBB15_20
# BB#21:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movl	-44(%rbp), %esi
	addl	$4, %esi
	callq	mk_writeSize
	testl	%eax, %eax
	js	.LBB15_22
# BB#23:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movl	$1, %esi
	callq	mk_writeSize
	testl	%eax, %eax
	js	.LBB15_24
# BB#25:
	movb	-31(%rbp), %al
	movb	%al, -51(%rbp)
	movb	-32(%rbp), %al
	movb	%al, -50(%rbp)
	movb	$0, -49(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	-51(%rbp), %rsi
	movl	$3, %edx
	callq	mk_appendContextData
	testl	%eax, %eax
	js	.LBB15_26
# BB#27:
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB15_31
# BB#28:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	32(%rax), %rax
	movq	40(%rax), %rsi
	movl	48(%rax), %edx
	callq	mk_appendContextData
	testl	%eax, %eax
	js	.LBB15_29
# BB#30:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 48(%rax)
.LBB15_31:
	movq	-24(%rbp), %rax
	cmpb	$0, 106(%rax)
	jne	.LBB15_34
# BB#32:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-40(%rbp), %rdx
	movl	$251, %esi
	callq	mk_writeSInt
	testl	%eax, %eax
	js	.LBB15_33
.LBB15_34:
	movq	-24(%rbp), %rax
	movb	$0, 105(%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, 88(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpl	$1048577, 48(%rax)      # imm = 0x100001
	jb	.LBB15_37
# BB#35:
	movq	-24(%rbp), %rdi
	callq	mk_closeCluster
	testl	%eax, %eax
	js	.LBB15_36
.LBB15_37:
	movl	$0, -12(%rbp)
	jmp	.LBB15_38
.LBB15_4:
	movl	$-1, -12(%rbp)
	jmp	.LBB15_38
.LBB15_16:
	movl	$-1, -12(%rbp)
	jmp	.LBB15_38
.LBB15_18:
	movl	$-1, -12(%rbp)
	jmp	.LBB15_38
.LBB15_7:
	movl	$-1, -12(%rbp)
	jmp	.LBB15_38
.LBB15_20:
	movl	$-1, -12(%rbp)
	jmp	.LBB15_38
.LBB15_9:
	movl	$-1, -12(%rbp)
	jmp	.LBB15_38
.LBB15_22:
	movl	$-1, -12(%rbp)
	jmp	.LBB15_38
.LBB15_24:
	movl	$-1, -12(%rbp)
	jmp	.LBB15_38
.LBB15_26:
	movl	$-1, -12(%rbp)
	jmp	.LBB15_38
.LBB15_29:
	movl	$-1, -12(%rbp)
	jmp	.LBB15_38
.LBB15_36:
	movl	$-1, -12(%rbp)
	jmp	.LBB15_38
.LBB15_33:
	movl	$-1, -12(%rbp)
.LBB15_38:
	movl	-12(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	mk_flushFrame, .Lfunc_end15-mk_flushFrame
	.cfi_endproc

	.align	16, 0x90
	.type	mk_appendContextData,@function
mk_appendContextData:                   # @mk_appendContextData
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rax
	addl	48(%rax), %edx
	movl	%edx, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpl	52(%rax), %edx
	jbe	.LBB16_9
# BB#1:
	movq	-16(%rbp), %rcx
	movl	$16, %eax
	cmpl	$0, 52(%rcx)
	je	.LBB16_3
# BB#2:
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	addl	%eax, %eax
.LBB16_3:
	movl	%eax, -44(%rbp)
	jmp	.LBB16_4
	.align	16, 0x90
.LBB16_5:                               #   in Loop: Header=BB16_4 Depth=1
	shll	-44(%rbp)
.LBB16_4:                               # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	ja	.LBB16_5
# BB#6:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	realloc
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	je	.LBB16_7
# BB#8:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 52(%rcx)
.LBB16_9:
	movq	-16(%rbp), %rax
	movl	48(%rax), %edi
	addq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	memcpy
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB16_10
.LBB16_7:
	movl	$-1, -4(%rbp)
.LBB16_10:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	mk_appendContextData, .Lfunc_end16-mk_appendContextData
	.cfi_endproc

	.align	16, 0x90
	.type	mk_closeCluster,@function
mk_closeCluster:                        # @mk_closeCluster
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, 24(%rdi)
	je	.LBB17_5
# BB#1:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	xorl	%esi, %esi
	callq	mk_closeContext
	testl	%eax, %eax
	js	.LBB17_2
# BB#3:
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	mk_flushContextData
	testl	%eax, %eax
	js	.LBB17_4
.LBB17_5:
	movl	$0, -4(%rbp)
	jmp	.LBB17_6
.LBB17_2:
	movl	$-1, -4(%rbp)
	jmp	.LBB17_6
.LBB17_4:
	movl	$-1, -4(%rbp)
.LBB17_6:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	mk_closeCluster, .Lfunc_end17-mk_closeCluster
	.cfi_endproc

	.align	16, 0x90
	.type	mk_writeFloatRaw,@function
mk_writeFloatRaw:                       # @mk_writeFloatRaw
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movb	-13(%rbp), %al
	movb	%al, -20(%rbp)
	movb	-14(%rbp), %al
	movb	%al, -19(%rbp)
	movb	-15(%rbp), %al
	movb	%al, -18(%rbp)
	movb	-16(%rbp), %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	callq	mk_appendContextData
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	mk_writeFloatRaw, .Lfunc_end18-mk_writeFloatRaw
	.cfi_endproc

	.align	16, 0x90
	.type	mk_ebmlSizeSize,@function
mk_ebmlSizeSize:                        # @mk_ebmlSizeSize
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	cmpl	$126, %edi
	ja	.LBB19_2
# BB#1:
	movl	$1, -4(%rbp)
	jmp	.LBB19_9
.LBB19_2:
	cmpl	$16382, -8(%rbp)        # imm = 0x3FFE
	ja	.LBB19_4
# BB#3:
	movl	$2, -4(%rbp)
	jmp	.LBB19_9
.LBB19_4:
	cmpl	$2097150, -8(%rbp)      # imm = 0x1FFFFE
	ja	.LBB19_6
# BB#5:
	movl	$3, -4(%rbp)
	jmp	.LBB19_9
.LBB19_6:
	cmpl	$268435454, -8(%rbp)    # imm = 0xFFFFFFE
	ja	.LBB19_8
# BB#7:
	movl	$4, -4(%rbp)
	jmp	.LBB19_9
.LBB19_8:
	movl	$5, -4(%rbp)
.LBB19_9:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	mk_ebmlSizeSize, .Lfunc_end19-mk_ebmlSizeSize
	.cfi_endproc

	.align	16, 0x90
	.type	mk_ebmlSIntSize,@function
mk_ebmlSIntSize:                        # @mk_ebmlSIntSize
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movb	-1(%rbp), %al
	movb	%al, -16(%rbp)
	movb	-2(%rbp), %al
	movb	%al, -15(%rbp)
	movb	-3(%rbp), %al
	movb	%al, -14(%rbp)
	movb	-4(%rbp), %al
	movb	%al, -13(%rbp)
	movb	-5(%rbp), %al
	movb	%al, -12(%rbp)
	movb	-6(%rbp), %al
	movb	%al, -11(%rbp)
	movb	-7(%rbp), %al
	movb	%al, -10(%rbp)
	movb	-8(%rbp), %al
	movb	%al, -9(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -8(%rbp)
	jns	.LBB20_8
	jmp	.LBB20_1
	.align	16, 0x90
.LBB20_14:                              #   in Loop: Header=BB20_8 Depth=1
	incl	-20(%rbp)
.LBB20_8:                               # =>This Inner Loop Header: Depth=1
	cmpl	$6, -20(%rbp)
	ja	.LBB20_9
# BB#10:                                #   in Loop: Header=BB20_8 Depth=1
	movl	-20(%rbp), %eax
	cmpb	$0, -16(%rbp,%rax)
	je	.LBB20_12
# BB#11:                                #   in Loop: Header=BB20_8 Depth=1
	xorl	%eax, %eax
	jmp	.LBB20_13
	.align	16, 0x90
.LBB20_9:                               #   in Loop: Header=BB20_8 Depth=1
	xorl	%eax, %eax
	jmp	.LBB20_13
.LBB20_12:                              #   in Loop: Header=BB20_8 Depth=1
	movl	-20(%rbp), %eax
	incl	%eax
	movzbl	-16(%rbp,%rax), %eax
	testb	$-128, %al
	sete	%al
	.align	16, 0x90
.LBB20_13:                              #   in Loop: Header=BB20_8 Depth=1
	testb	%al, %al
	jne	.LBB20_14
	jmp	.LBB20_15
	.align	16, 0x90
.LBB20_7:                               #   in Loop: Header=BB20_1 Depth=1
	incl	-20(%rbp)
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$6, -20(%rbp)
	ja	.LBB20_2
# BB#3:                                 #   in Loop: Header=BB20_1 Depth=1
	movl	-20(%rbp), %eax
	movzbl	-16(%rbp,%rax), %eax
	cmpl	$255, %eax
	jne	.LBB20_4
# BB#5:                                 #   in Loop: Header=BB20_1 Depth=1
	movl	-20(%rbp), %eax
	incl	%eax
	movzbl	-16(%rbp,%rax), %eax
	shrl	$7, %eax
	jmp	.LBB20_6
	.align	16, 0x90
.LBB20_2:                               #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
	jmp	.LBB20_6
	.align	16, 0x90
.LBB20_4:                               #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
.LBB20_6:                               #   in Loop: Header=BB20_1 Depth=1
	testb	%al, %al
	jne	.LBB20_7
.LBB20_15:
	movl	$8, %eax
	subl	-20(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	mk_ebmlSIntSize, .Lfunc_end20-mk_ebmlSIntSize
	.cfi_endproc

	.align	16, 0x90
	.type	mk_writeID,@function
mk_writeID:                             # @mk_writeID
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movb	-17(%rbp), %al
	movb	%al, -24(%rbp)
	movb	-18(%rbp), %al
	movb	%al, -23(%rbp)
	movb	-19(%rbp), %al
	movb	%al, -22(%rbp)
	movb	-20(%rbp), %al
	movb	%al, -21(%rbp)
	cmpb	$0, -24(%rbp)
	je	.LBB21_2
# BB#1:
	movq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movl	$4, %edx
	jmp	.LBB21_7
.LBB21_2:
	cmpb	$0, -23(%rbp)
	je	.LBB21_4
# BB#3:
	movq	-16(%rbp), %rdi
	leaq	-23(%rbp), %rsi
	movl	$3, %edx
	jmp	.LBB21_7
.LBB21_4:
	cmpb	$0, -22(%rbp)
	je	.LBB21_6
# BB#5:
	movq	-16(%rbp), %rdi
	leaq	-22(%rbp), %rsi
	movl	$2, %edx
	jmp	.LBB21_7
.LBB21_6:
	movq	-16(%rbp), %rdi
	leaq	-21(%rbp), %rsi
	movl	$1, %edx
.LBB21_7:
	callq	mk_appendContextData
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	mk_writeID, .Lfunc_end21-mk_writeID
	.cfi_endproc

	.align	16, 0x90
	.type	mk_writeSize,@function
mk_writeSize:                           # @mk_writeSize
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movb	$8, -25(%rbp)
	movb	-17(%rbp), %al
	movb	%al, -24(%rbp)
	movb	-18(%rbp), %al
	movb	%al, -23(%rbp)
	movb	-19(%rbp), %al
	movb	%al, -22(%rbp)
	movb	-20(%rbp), %al
	movb	%al, -21(%rbp)
	cmpl	$126, -20(%rbp)
	ja	.LBB22_2
# BB#1:
	leaq	-21(%rbp), %rsi
	movzbl	-21(%rbp), %eax
	orl	$128, %eax
	movb	%al, -21(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %edx
	jmp	.LBB22_9
.LBB22_2:
	cmpl	$16382, -20(%rbp)       # imm = 0x3FFE
	ja	.LBB22_4
# BB#3:
	leaq	-22(%rbp), %rsi
	movzbl	-22(%rbp), %eax
	orl	$64, %eax
	movb	%al, -22(%rbp)
	movq	-16(%rbp), %rdi
	movl	$2, %edx
	jmp	.LBB22_9
.LBB22_4:
	cmpl	$2097150, -20(%rbp)     # imm = 0x1FFFFE
	ja	.LBB22_6
# BB#5:
	leaq	-23(%rbp), %rsi
	movzbl	-23(%rbp), %eax
	orl	$32, %eax
	movb	%al, -23(%rbp)
	movq	-16(%rbp), %rdi
	movl	$3, %edx
	jmp	.LBB22_9
.LBB22_6:
	cmpl	$268435454, -20(%rbp)   # imm = 0xFFFFFFE
	ja	.LBB22_8
# BB#7:
	leaq	-24(%rbp), %rsi
	movzbl	-24(%rbp), %eax
	orl	$16, %eax
	movb	%al, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$4, %edx
	jmp	.LBB22_9
.LBB22_8:
	movq	-16(%rbp), %rdi
	leaq	-25(%rbp), %rsi
	movl	$5, %edx
.LBB22_9:
	callq	mk_appendContextData
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	mk_writeSize, .Lfunc_end22-mk_writeSize
	.cfi_endproc

	.align	16, 0x90
	.type	mk_writeSInt,@function
mk_writeSInt:                           # @mk_writeSInt
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp76:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movb	-33(%rbp), %al
	movb	%al, -48(%rbp)
	movb	-34(%rbp), %al
	movb	%al, -47(%rbp)
	movb	-35(%rbp), %al
	movb	%al, -46(%rbp)
	movb	-36(%rbp), %al
	movb	%al, -45(%rbp)
	movb	-37(%rbp), %al
	movb	%al, -44(%rbp)
	movb	-38(%rbp), %al
	movb	%al, -43(%rbp)
	movb	-39(%rbp), %al
	movb	%al, -42(%rbp)
	movb	-40(%rbp), %al
	movb	%al, -41(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	mk_writeID
	testl	%eax, %eax
	js	.LBB23_1
# BB#2:
	cmpq	$0, -40(%rbp)
	jns	.LBB23_10
	jmp	.LBB23_3
	.align	16, 0x90
.LBB23_16:                              #   in Loop: Header=BB23_10 Depth=1
	incl	-52(%rbp)
.LBB23_10:                              # =>This Inner Loop Header: Depth=1
	cmpl	$6, -52(%rbp)
	ja	.LBB23_11
# BB#12:                                #   in Loop: Header=BB23_10 Depth=1
	movl	-52(%rbp), %eax
	cmpb	$0, -48(%rbp,%rax)
	je	.LBB23_14
# BB#13:                                #   in Loop: Header=BB23_10 Depth=1
	xorl	%eax, %eax
	jmp	.LBB23_15
	.align	16, 0x90
.LBB23_11:                              #   in Loop: Header=BB23_10 Depth=1
	xorl	%eax, %eax
	jmp	.LBB23_15
.LBB23_14:                              #   in Loop: Header=BB23_10 Depth=1
	movl	-52(%rbp), %eax
	incl	%eax
	movzbl	-48(%rbp,%rax), %eax
	testb	$-128, %al
	sete	%al
	.align	16, 0x90
.LBB23_15:                              #   in Loop: Header=BB23_10 Depth=1
	testb	%al, %al
	jne	.LBB23_16
	jmp	.LBB23_17
	.align	16, 0x90
.LBB23_9:                               #   in Loop: Header=BB23_3 Depth=1
	incl	-52(%rbp)
.LBB23_3:                               # =>This Inner Loop Header: Depth=1
	cmpl	$6, -52(%rbp)
	ja	.LBB23_4
# BB#5:                                 #   in Loop: Header=BB23_3 Depth=1
	movl	-52(%rbp), %eax
	movzbl	-48(%rbp,%rax), %eax
	cmpl	$255, %eax
	jne	.LBB23_6
# BB#7:                                 #   in Loop: Header=BB23_3 Depth=1
	movl	-52(%rbp), %eax
	incl	%eax
	movzbl	-48(%rbp,%rax), %eax
	shrl	$7, %eax
	jmp	.LBB23_8
	.align	16, 0x90
.LBB23_4:                               #   in Loop: Header=BB23_3 Depth=1
	xorl	%eax, %eax
	jmp	.LBB23_8
	.align	16, 0x90
.LBB23_6:                               #   in Loop: Header=BB23_3 Depth=1
	xorl	%eax, %eax
.LBB23_8:                               #   in Loop: Header=BB23_3 Depth=1
	testb	%al, %al
	jne	.LBB23_9
.LBB23_17:
	movq	-24(%rbp), %rdi
	movl	$8, %ebx
	movl	$8, %esi
	subl	-52(%rbp), %esi
	callq	mk_writeSize
	testl	%eax, %eax
	js	.LBB23_18
# BB#19:
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %eax
	leaq	-48(%rbp,%rax), %rsi
	subl	%eax, %ebx
	movl	%ebx, %edx
	callq	mk_appendContextData
	testl	%eax, %eax
	js	.LBB23_20
# BB#21:
	movl	$0, -12(%rbp)
	jmp	.LBB23_22
.LBB23_1:
	movl	$-1, -12(%rbp)
	jmp	.LBB23_22
.LBB23_18:
	movl	$-1, -12(%rbp)
	jmp	.LBB23_22
.LBB23_20:
	movl	$-1, -12(%rbp)
.LBB23_22:
	movl	-12(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end23:
	.size	mk_writeSInt, .Lfunc_end23-mk_writeSInt
	.cfi_endproc

	.globl	open_file_yuv
	.align	16, 0x90
	.type	open_file_yuv,@function
open_file_yuv:                          # @open_file_yuv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$24, %edi
	callq	malloc
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	%ecx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-40(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB24_1
# BB#2:
	movq	-16(%rbp), %rdi
	movl	$.L.str.1.4, %esi
	callq	fopen64
	jmp	.LBB24_3
.LBB24_1:
	movq	stdin(%rip), %rax
.LBB24_3:
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_4
# BB#5:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB24_6
.LBB24_4:
	movl	$-1, -4(%rbp)
.LBB24_6:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	open_file_yuv, .Lfunc_end24-open_file_yuv
	.cfi_endproc

	.globl	get_frame_total_yuv
	.align	16, 0x90
	.type	get_frame_total_yuv,@function
get_frame_total_yuv:                    # @get_frame_total_yuv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	fseeko64
	testl	%eax, %eax
	jne	.LBB25_2
# BB#1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	ftello64
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	fseeko64
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	imull	12(%rcx), %edx
	leal	(%rdx,%rdx,2), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	movslq	%edx, %rcx
	xorl	%edx, %edx
	divq	%rcx
	movl	%eax, -20(%rbp)
.LBB25_2:
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	get_frame_total_yuv, .Lfunc_end25-get_frame_total_yuv
	.cfi_endproc

	.globl	read_frame_yuv
	.align	16, 0x90
	.type	read_frame_yuv,@function
read_frame_yuv:                         # @read_frame_yuv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %ecx
	cmpl	16(%rax), %ecx
	je	.LBB26_3
# BB#1:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-28(%rbp), %rcx
	movslq	8(%rax), %rdx
	imulq	%rcx, %rdx
	movslq	12(%rax), %rax
	imulq	%rdx, %rax
	leaq	(%rax,%rax,2), %rsi
	shrq	%rsi
	xorl	%edx, %edx
	callq	fseeko64
	testl	%eax, %eax
	je	.LBB26_3
# BB#2:
	movl	$-1, -4(%rbp)
	jmp	.LBB26_8
.LBB26_3:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-40(%rbp), %rax
	movslq	8(%rax), %rcx
	movslq	12(%rax), %rdx
	imulq	%rcx, %rdx
	movq	(%rax), %rcx
	movl	$1, %esi
	callq	fread
	testq	%rax, %rax
	je	.LBB26_6
# BB#4:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	imull	12(%rax), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	addl	%ecx, %edx
	sarl	$2, %edx
	movslq	%edx, %rdx
	movq	(%rax), %rcx
	movl	$1, %esi
	callq	fread
	testq	%rax, %rax
	je	.LBB26_6
# BB#5:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	imull	12(%rax), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	addl	%ecx, %edx
	sarl	$2, %edx
	movslq	%edx, %rdx
	movq	(%rax), %rcx
	movl	$1, %esi
	callq	fread
	testq	%rax, %rax
	jne	.LBB26_7
.LBB26_6:
	movl	$-1, -4(%rbp)
.LBB26_8:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB26_7:
	movl	-28(%rbp), %eax
	incl	%eax
	movq	-40(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB26_8
.Lfunc_end26:
	.size	read_frame_yuv, .Lfunc_end26-read_frame_yuv
	.cfi_endproc

	.globl	close_file_yuv
	.align	16, 0x90
	.type	close_file_yuv,@function
close_file_yuv:                         # @close_file_yuv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rdi, -24(%rbp)
	testq	%rdi, %rdi
	je	.LBB27_3
# BB#1:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_3
# BB#2:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	fclose
	movq	-24(%rbp), %rdi
	callq	free
.LBB27_3:
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	close_file_yuv, .Lfunc_end27-close_file_yuv
	.cfi_endproc

	.globl	open_file_y4m
	.align	16, 0x90
	.type	open_file_y4m,@function
open_file_y4m:                          # @open_file_y4m
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$200, %rsp
.Ltmp92:
	.cfi_offset %rbx, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$32, %edi
	callq	malloc
	movq	%rax, -208(%rbp)
	movl	$0, 16(%rax)
	movq	-40(%rbp), %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB28_1
# BB#2:
	movq	-40(%rbp), %rdi
	movl	$.L.str.1.4, %esi
	callq	fopen64
	jmp	.LBB28_3
.LBB28_1:
	movq	stdin(%rip), %rax
.LBB28_3:
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-208(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_4
# BB#5:
	movq	-208(%rbp), %rax
	movl	$6, 24(%rax)
	movl	$0, -60(%rbp)
	jmp	.LBB28_6
	.align	16, 0x90
.LBB28_47:                              #   in Loop: Header=BB28_6 Depth=1
	incl	-60(%rbp)
.LBB28_6:                               # =>This Inner Loop Header: Depth=1
	cmpl	$79, -60(%rbp)
	jg	.LBB28_9
# BB#7:                                 #   in Loop: Header=BB28_6 Depth=1
	movq	-208(%rbp), %rax
	movq	(%rax), %rdi
	callq	fgetc
	movslq	-60(%rbp), %rcx
	movb	%al, -176(%rbp,%rcx)
	movslq	-60(%rbp), %rax
	movzbl	-176(%rbp,%rax), %eax
	cmpl	$10, %eax
	jne	.LBB28_47
# BB#8:
	movslq	-60(%rbp), %rax
	leaq	-176(%rbp), %rcx
	movb	$32, 1(%rax,%rcx)
	movslq	-60(%rbp), %rax
	movb	$0, 2(%rax,%rcx)
.LBB28_9:
	cmpl	$80, -60(%rbp)
	je	.LBB28_11
# BB#10:
	leaq	-176(%rbp), %rbx
	movl	$.L.str.2.5, %esi
	movl	$9, %edx
	movq	%rbx, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB28_12
.LBB28_11:
	movl	$-1, -28(%rbp)
	jmp	.LBB28_46
.LBB28_4:
	movl	$-1, -28(%rbp)
	jmp	.LBB28_46
.LBB28_12:
	movslq	-60(%rbp), %rax
	leaq	1(%rax,%rbx), %rax
	movq	%rax, -200(%rbp)
	movl	-60(%rbp), %eax
	incl	%eax
	movq	-208(%rbp), %rcx
	movl	%eax, 20(%rcx)
	leaq	-166(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-192(%rbp), %r14
	leaq	-64(%rbp), %r15
	leaq	-68(%rbp), %rbx
	jmp	.LBB28_13
	.align	16, 0x90
.LBB28_27:                              #   in Loop: Header=BB28_13 Depth=1
	incq	-184(%rbp)
.LBB28_13:                              # =>This Inner Loop Header: Depth=1
	movq	-184(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jae	.LBB28_45
# BB#14:                                #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$32, %eax
	je	.LBB28_27
# BB#15:                                #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -184(%rbp)
	movsbl	(%rax), %eax
	leal	-65(%rax), %ecx
	cmpl	$8, %ecx
	jbe	.LBB28_48
# BB#16:                                #   in Loop: Header=BB28_13 Depth=1
	cmpl	$88, %eax
	je	.LBB28_40
# BB#17:                                #   in Loop: Header=BB28_13 Depth=1
	cmpl	$87, %eax
	jne	.LBB28_27
# BB#18:                                #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rdi
	movl	$10, %edx
	movq	%r14, %rsi
	callq	strtol
	movq	-56(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-208(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-192(%rbp), %rax
	jmp	.LBB28_33
	.align	16, 0x90
.LBB28_48:                              #   in Loop: Header=BB28_13 Depth=1
	jmpq	*.LJTI28_0(,%rcx,8)
.LBB28_34:                              #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rdi
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB28_32
# BB#35:                                #   in Loop: Header=BB28_13 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB28_32
# BB#36:                                #   in Loop: Header=BB28_13 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB28_32
# BB#37:                                #   in Loop: Header=BB28_13 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 36(%rax)
	jne	.LBB28_32
# BB#38:                                #   in Loop: Header=BB28_13 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB28_32
# BB#39:                                #   in Loop: Header=BB28_13 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	x264_reduce_fraction
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movl	-68(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 32(%rcx)
	jmp	.LBB28_32
.LBB28_21:                              #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rsi
	movl	$.L.str.3.6, %edi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB28_32
	jmp	.LBB28_22
.LBB28_28:                              #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rdi
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB28_32
# BB#29:                                #   in Loop: Header=BB28_13 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB28_32
# BB#30:                                #   in Loop: Header=BB28_13 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB28_32
# BB#31:                                #   in Loop: Header=BB28_13 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	x264_reduce_fraction
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movl	-68(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 72(%rcx)
	jmp	.LBB28_32
.LBB28_20:                              #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rdi
	movl	$10, %edx
	movq	%r14, %rsi
	callq	strtol
	movq	-56(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-208(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-192(%rbp), %rax
	jmp	.LBB28_33
.LBB28_24:                              #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -184(%rbp)
	movzbl	(%rax), %eax
	cmpl	$112, %eax
	jne	.LBB28_26
# BB#25:                                #   in Loop: Header=BB28_13 Depth=1
	movl	$0, -72(%rbp)
	incq	-184(%rbp)
	jmp	.LBB28_13
.LBB28_40:                              #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rsi
	movl	$.L.str.7, %edi
	movl	$6, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB28_32
# BB#41:                                #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rsi
	addq	$6, %rsi
	movq	%rsi, -184(%rbp)
	movl	$.L.str.8, %edi
	movl	$7, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB28_32
# BB#42:                                #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rsi
	movl	$.L.str.9, %edi
	movl	$8, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB28_32
# BB#43:                                #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rsi
	movl	$.L.str.10, %edi
	movl	$8, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB28_44
.LBB28_32:                              #   in Loop: Header=BB28_13 Depth=1
	movq	-184(%rbp), %rdi
	movl	$32, %esi
	callq	strchr
.LBB28_33:                              #   in Loop: Header=BB28_13 Depth=1
	movq	%rax, -184(%rbp)
	incq	-184(%rbp)
	jmp	.LBB28_13
.LBB28_26:                              #   in Loop: Header=BB28_13 Depth=1
	movl	$1, -72(%rbp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB28_27
.LBB28_45:
	movq	stderr(%rip), %rdi
	movq	-208(%rbp), %rax
	movl	8(%rax), %edx
	movl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	68(%rax), %r8d
	movl	72(%rax), %r9d
	movl	32(%rax), %esi
	movl	36(%rax), %eax
	movl	%esi, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-208(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -28(%rbp)
.LBB28_46:
	movl	-28(%rbp), %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB28_22:
	movq	stderr(%rip), %rdi
	movl	$.L.str.4, %esi
.LBB28_23:
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, -28(%rbp)
	jmp	.LBB28_46
.LBB28_44:
	movq	stderr(%rip), %rdi
	movl	$.L.str.11, %esi
	jmp	.LBB28_23
.Lfunc_end28:
	.size	open_file_y4m, .Lfunc_end28-open_file_y4m
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI28_0:
	.quad	.LBB28_34
	.quad	.LBB28_27
	.quad	.LBB28_21
	.quad	.LBB28_27
	.quad	.LBB28_27
	.quad	.LBB28_28
	.quad	.LBB28_27
	.quad	.LBB28_20
	.quad	.LBB28_24

	.text
	.globl	get_frame_total_y4m
	.align	16, 0x90
	.type	get_frame_total_y4m,@function
get_frame_total_y4m:                    # @get_frame_total_y4m
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	ftello64
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	fseeko64
	testl	%eax, %eax
	jne	.LBB29_2
# BB#1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	ftello64
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	xorl	%edx, %edx
	callq	fseeko64
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	20(%rcx), %rdx
	subq	%rdx, %rax
	movl	8(%rcx), %edx
	imull	12(%rcx), %edx
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	sarl	%esi
	movslq	24(%rcx), %rcx
	movslq	%esi, %rsi
	addq	%rcx, %rsi
	xorl	%edx, %edx
	divq	%rsi
	movl	%eax, -20(%rbp)
.LBB29_2:
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	get_frame_total_y4m, .Lfunc_end29-get_frame_total_y4m
	.cfi_endproc

	.globl	read_frame_y4m
	.align	16, 0x90
	.type	read_frame_y4m,@function
read_frame_y4m:                         # @read_frame_y4m
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$5, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-28(%rbp), %ecx
	cmpl	16(%rax), %ecx
	je	.LBB30_3
# BB#1:
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-28(%rbp), %r8
	movl	8(%rax), %edx
	imull	12(%rax), %edx
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	sarl	%esi
	movslq	24(%rax), %rdx
	movslq	%esi, %rcx
	addq	%rdx, %rcx
	imulq	%r8, %rcx
	movslq	20(%rax), %rsi
	addq	%rcx, %rsi
	xorl	%edx, %edx
	callq	fseeko64
	testl	%eax, %eax
	je	.LBB30_3
# BB#2:
	movl	$-1, -4(%rbp)
	jmp	.LBB30_19
.LBB30_3:
	movslq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-64(%rbp), %rdi
	movl	$1, %esi
	callq	fread
	movslq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB30_5
# BB#4:
	movl	$-1, -4(%rbp)
	jmp	.LBB30_19
.LBB30_5:
	movslq	-32(%rbp), %rax
	movb	$0, -64(%rbp,%rax)
	movslq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rdi
	movl	$.L.str.13, %esi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB30_7
# BB#6:
	movq	stderr(%rip), %rdi
	movl	-64(%rbp), %edx
	leaq	-64(%rbp), %rcx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, -4(%rbp)
	jmp	.LBB30_19
	.align	16, 0x90
.LBB30_11:                              #   in Loop: Header=BB30_7 Depth=1
	incl	-36(%rbp)
.LBB30_7:                               # =>This Inner Loop Header: Depth=1
	cmpl	$79, -36(%rbp)
	jg	.LBB30_8
# BB#9:                                 #   in Loop: Header=BB30_7 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	callq	fgetc
	cmpl	$10, %eax
	setne	%al
	jmp	.LBB30_10
	.align	16, 0x90
.LBB30_8:                               #   in Loop: Header=BB30_7 Depth=1
	xorl	%eax, %eax
.LBB30_10:                              #   in Loop: Header=BB30_7 Depth=1
	testb	%al, %al
	jne	.LBB30_11
# BB#12:
	cmpl	$80, -36(%rbp)
	jne	.LBB30_14
# BB#13:
	movq	stderr(%rip), %rdi
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, -4(%rbp)
	jmp	.LBB30_19
.LBB30_14:
	movl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	leal	1(%rax,%rcx), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-72(%rbp), %rax
	movslq	8(%rax), %rcx
	movslq	12(%rax), %rdx
	imulq	%rcx, %rdx
	movq	(%rax), %rcx
	movl	$1, %esi
	callq	fread
	testq	%rax, %rax
	je	.LBB30_17
# BB#15:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-72(%rbp), %rax
	movl	8(%rax), %ecx
	imull	12(%rax), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	addl	%ecx, %edx
	sarl	$2, %edx
	movslq	%edx, %rdx
	movq	(%rax), %rcx
	movl	$1, %esi
	callq	fread
	testq	%rax, %rax
	je	.LBB30_17
# BB#16:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-72(%rbp), %rax
	movl	8(%rax), %ecx
	imull	12(%rax), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	addl	%ecx, %edx
	sarl	$2, %edx
	movslq	%edx, %rdx
	movq	(%rax), %rcx
	movl	$1, %esi
	callq	fread
	testq	%rax, %rax
	jne	.LBB30_18
.LBB30_17:
	movl	$-1, -4(%rbp)
.LBB30_19:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.LBB30_18:
	movl	-28(%rbp), %eax
	incl	%eax
	movq	-72(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB30_19
.Lfunc_end30:
	.size	read_frame_y4m, .Lfunc_end30-read_frame_y4m
	.cfi_endproc

	.globl	close_file_y4m
	.align	16, 0x90
	.type	close_file_y4m,@function
close_file_y4m:                         # @close_file_y4m
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rdi, -24(%rbp)
	testq	%rdi, %rdi
	je	.LBB31_3
# BB#1:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_3
# BB#2:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	fclose
	movq	-24(%rbp), %rdi
	callq	free
.LBB31_3:
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	close_file_y4m, .Lfunc_end31-close_file_y4m
	.cfi_endproc

	.globl	open_file_thread
	.align	16, 0x90
	.type	open_file_thread,@function
open_file_thread:                       # @open_file_thread
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$128, %edi
	callq	malloc
	movq	%rax, -32(%rbp)
	leaq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	movl	16(%rax), %ecx
	movl	$1, %esi
	callq	x264_picture_alloc
	movq	p_read_frame(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	p_close_infile(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movl	$0, 112(%rax)
	movq	-32(%rbp), %rax
	movl	$-1, 104(%rax)
	movl	$24, %edi
	callq	malloc
	movq	-32(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movl	$0, 20(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	*p_get_frame_total(%rip)
	movq	-32(%rbp), %rcx
	movl	%eax, 108(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	open_file_thread, .Lfunc_end32-open_file_thread
	.cfi_endproc

	.globl	get_frame_total_thread
	.align	16, 0x90
	.type	get_frame_total_thread,@function
get_frame_total_thread:                 # @get_frame_total_thread
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	108(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end33:
	.size	get_frame_total_thread, .Lfunc_end33-get_frame_total_thread
	.cfi_endproc

	.globl	read_frame_thread
	.align	16, 0x90
	.type	read_frame_thread,@function
read_frame_thread:                      # @read_frame_thread
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 104(%rax)
	js	.LBB34_2
# BB#1:
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdi
	leaq	-40(%rbp), %rsi
	callq	pthread_join
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movl	20(%rax), %eax
	orl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 112(%rax)
.LBB34_2:
	movq	-32(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB34_4
# BB#3:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	88(%rcx), %rdx
	movq	%rdx, 64(%rax)
	movups	24(%rcx), %xmm0
	movups	40(%rcx), %xmm1
	movups	56(%rcx), %xmm2
	movups	72(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, 88(%rax)
	movaps	-128(%rbp), %xmm0
	movaps	-112(%rbp), %xmm1
	movaps	-96(%rbp), %xmm2
	movaps	-80(%rbp), %xmm3
	movups	%xmm3, 72(%rax)
	movups	%xmm2, 56(%rax)
	movups	%xmm1, 40(%rax)
	movups	%xmm0, 24(%rax)
	jmp	.LBB34_5
.LBB34_4:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	16(%rax), %rsi
	movl	-20(%rbp), %edx
	callq	*(%rax)
	orl	%eax, -44(%rbp)
.LBB34_5:
	movq	-32(%rbp), %rax
	cmpl	$0, 108(%rax)
	je	.LBB34_7
# BB#6:
	movl	-20(%rbp), %eax
	incl	%eax
	movq	-32(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jge	.LBB34_8
.LBB34_7:
	movl	-20(%rbp), %eax
	incl	%eax
	movq	-32(%rbp), %rcx
	movq	120(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movq	-32(%rbp), %rcx
	movl	%eax, 104(%rcx)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rcx
	addq	$24, %rax
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rdi
	movq	120(%rdi), %rcx
	addq	$96, %rdi
	xorl	%esi, %esi
	movl	$read_frame_thread_int, %edx
	callq	pthread_create
	movq	-32(%rbp), %rax
	movl	$1, 112(%rax)
	jmp	.LBB34_9
.LBB34_8:
	movq	-32(%rbp), %rax
	movl	$-1, 104(%rax)
.LBB34_9:
	movl	-44(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	read_frame_thread, .Lfunc_end34-read_frame_thread
	.cfi_endproc

	.globl	close_file_thread
	.align	16, 0x90
	.type	close_file_thread,@function
close_file_thread:                      # @close_file_thread
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	16(%rax), %rdi
	callq	*8(%rax)
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	callq	x264_picture_clean
	movq	-16(%rbp), %rax
	cmpl	$0, 112(%rax)
	je	.LBB35_2
# BB#1:
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	xorl	%esi, %esi
	callq	pthread_join
.LBB35_2:
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	free
	movq	-16(%rbp), %rdi
	callq	free
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	close_file_thread, .Lfunc_end35-close_file_thread
	.cfi_endproc

	.globl	open_file_bsf
	.align	16, 0x90
	.type	open_file_bsf,@function
open_file_bsf:                          # @open_file_bsf
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.16, %esi
	callq	fopen64
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	testq	%rax, %rax
	je	.LBB36_1
# BB#2:
	movl	$0, -4(%rbp)
	jmp	.LBB36_3
.LBB36_1:
	movl	$-1, -4(%rbp)
.LBB36_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	open_file_bsf, .Lfunc_end36-open_file_bsf
	.cfi_endproc

	.globl	set_param_bsf
	.align	16, 0x90
	.type	set_param_bsf,@function
set_param_bsf:                          # @set_param_bsf
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end37:
	.size	set_param_bsf, .Lfunc_end37-set_param_bsf
	.cfi_endproc

	.globl	write_nalu_bsf
	.align	16, 0x90
	.type	write_nalu_bsf,@function
write_nalu_bsf:                         # @write_nalu_bsf
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	testq	%rax, %rax
	je	.LBB38_2
# BB#1:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB38_3
.LBB38_2:
	movl	$-1, -4(%rbp)
.LBB38_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	write_nalu_bsf, .Lfunc_end38-write_nalu_bsf
	.cfi_endproc

	.globl	set_eop_bsf
	.align	16, 0x90
	.type	set_eop_bsf,@function
set_eop_bsf:                            # @set_eop_bsf
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end39:
	.size	set_eop_bsf, .Lfunc_end39-set_eop_bsf
	.cfi_endproc

	.globl	close_file_bsf
	.align	16, 0x90
	.type	close_file_bsf,@function
close_file_bsf:                         # @close_file_bsf
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	testq	%rdi, %rdi
	je	.LBB40_2
# BB#1:
	movq	-16(%rbp), %rax
	cmpq	stdout(%rip), %rax
	je	.LBB40_2
# BB#3:
	movq	-16(%rbp), %rdi
	callq	fclose
	movl	%eax, -4(%rbp)
	jmp	.LBB40_4
.LBB40_2:
	movl	$0, -4(%rbp)
.LBB40_4:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	close_file_bsf, .Lfunc_end40-close_file_bsf
	.cfi_endproc

	.globl	open_file_mkv
	.align	16, 0x90
	.type	open_file_mkv,@function
open_file_mkv:                          # @open_file_mkv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, (%rsi)
	movl	$72, %edi
	callq	malloc
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	je	.LBB41_1
# BB#2:
	movq	-32(%rbp), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	movq	$0, 64(%rax)
	movq	-16(%rbp), %rdi
	callq	mk_createWriter
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_3
# BB#4:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB41_5
.LBB41_1:
	movl	$-1, -4(%rbp)
	jmp	.LBB41_5
.LBB41_3:
	movq	-32(%rbp), %rdi
	callq	free
	movl	$-1, -4(%rbp)
.LBB41_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	open_file_mkv, .Lfunc_end41-open_file_mkv
	.cfi_endproc

	.globl	set_param_mkv
	.align	16, 0x90
	.type	set_param_mkv,@function
set_param_mkv:                          # @set_param_mkv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	jle	.LBB42_2
# BB#1:
	movq	-16(%rbp), %rcx
	movslq	72(%rcx), %rax
	imulq	$1000000000, %rax, %rax # imm = 0x3B9ACA00
	movslq	68(%rcx), %rcx
	cqto
	idivq	%rcx
	movq	-24(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	movl	68(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 56(%rcx)
	jmp	.LBB42_3
.LBB42_2:
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 56(%rax)
.LBB42_3:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	-16(%rbp), %rax
	cmpl	$0, 36(%rax)
	je	.LBB42_6
# BB#4:
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB42_6
# BB#5:
	movq	-16(%rbp), %rax
	movslq	12(%rax), %rcx
	movslq	36(%rax), %rax
	imulq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movslq	16(%rax), %rcx
	movslq	32(%rax), %rax
	imulq	%rcx, %rax
	jmp	.LBB42_7
.LBB42_6:
	movq	-16(%rbp), %rax
	movslq	12(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movslq	16(%rax), %rax
.LBB42_7:
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jle	.LBB42_10
# BB#8:
	cmpq	$0, -40(%rbp)
	jle	.LBB42_10
# BB#9:
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gcd
	movq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cqto
	idivq	-48(%rbp)
	movq	%rax, -40(%rbp)
.LBB42_10:
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 44(%rcx)
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	set_param_mkv, .Lfunc_end42-set_param_mkv
	.cfi_endproc

	.globl	write_nalu_mkv
	.align	16, 0x90
	.type	write_nalu_mkv,@function
write_nalu_mkv:                         # @write_nalu_mkv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %eax
	andl	$31, %eax
	movb	%al, -41(%rbp)
	movzbl	-41(%rbp), %eax
	decl	%eax
	cmpl	$7, %eax
	ja	.LBB43_7
# BB#1:
	jmpq	*.LJTI43_0(,%rax,8)
.LBB43_16:
	movq	-40(%rbp), %rax
	cmpb	$0, 64(%rax)
	jne	.LBB43_20
# BB#17:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	mk_startFrame
	testl	%eax, %eax
	js	.LBB43_18
# BB#19:
	movq	-40(%rbp), %rax
	movb	$1, 64(%rax)
.LBB43_20:
	movl	-28(%rbp), %eax
	addl	$-4, %eax
	movl	%eax, -52(%rbp)
	movb	-49(%rbp), %al
	movb	%al, -45(%rbp)
	movb	-50(%rbp), %al
	movb	%al, -44(%rbp)
	movb	-51(%rbp), %al
	movb	%al, -43(%rbp)
	movb	-52(%rbp), %al
	movb	%al, -42(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	leaq	-45(%rbp), %rsi
	movl	$4, %edx
	callq	mk_addFrameData
	testl	%eax, %eax
	js	.LBB43_22
# BB#21:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	addq	$4, %rsi
	movl	-28(%rbp), %edx
	addl	$-4, %edx
	callq	mk_addFrameData
	testl	%eax, %eax
	jns	.LBB43_7
.LBB43_22:
	movl	$-1, -4(%rbp)
	jmp	.LBB43_24
.LBB43_2:
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB43_7
# BB#3:
	movslq	-28(%rbp), %rdi
	addq	$-4, %rdi
	callq	malloc
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB43_4
# BB#5:
	movl	-28(%rbp), %eax
	addl	$-4, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.LBB43_6
.LBB43_12:
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB43_7
# BB#13:
	movslq	-28(%rbp), %rdi
	addq	$-4, %rdi
	callq	malloc
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB43_14
# BB#15:
	movl	-28(%rbp), %eax
	addl	$-4, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
.LBB43_6:
	movq	-24(%rbp), %rsi
	addq	$4, %rsi
	movslq	-28(%rbp), %rdx
	addq	$-4, %rdx
	callq	memcpy
.LBB43_7:
	movq	-40(%rbp), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB43_23
# BB#8:
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB43_23
# BB#9:
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB43_23
# BB#10:
	movq	-40(%rbp), %rdi
	callq	write_header_mkv
	testl	%eax, %eax
	js	.LBB43_11
.LBB43_23:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB43_24:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB43_11:
	movl	$-1, -4(%rbp)
	jmp	.LBB43_24
.LBB43_18:
	movl	$-1, -4(%rbp)
	jmp	.LBB43_24
.LBB43_4:
	movl	$-1, -4(%rbp)
	jmp	.LBB43_24
.LBB43_14:
	movl	$-1, -4(%rbp)
	jmp	.LBB43_24
.Lfunc_end43:
	.size	write_nalu_mkv, .Lfunc_end43-write_nalu_mkv
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI43_0:
	.quad	.LBB43_16
	.quad	.LBB43_7
	.quad	.LBB43_7
	.quad	.LBB43_7
	.quad	.LBB43_16
	.quad	.LBB43_16
	.quad	.LBB43_2
	.quad	.LBB43_12

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI44_0:
	.quad	4741671816366391296     # double 1.0E+9
	.text
	.globl	set_eop_mkv
	.align	16, 0x90
	.type	set_eop_mkv,@function
set_eop_mkv:                            # @set_eop_mkv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rcx
	cvtsi2sdq	8(%rcx), %xmm0
	mulsd	.LCPI44_0(%rip), %xmm0
	cvtsi2sdl	56(%rax), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	cmpl	$1, (%rax)
	sete	%al
	movzbl	%al, %edx
	callq	mk_setFrameFlags
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	set_eop_mkv, .Lfunc_end44-set_eop_mkv
	.cfi_endproc

	.globl	close_file_mkv
	.align	16, 0x90
	.type	close_file_mkv,@function
close_file_mkv:                         # @close_file_mkv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	cmpq	$0, 8(%rdi)
	je	.LBB45_2
# BB#1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB45_2:
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB45_4
# BB#3:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB45_4:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	mk_close
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	free
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	close_file_mkv, .Lfunc_end45-close_file_mkv
	.cfi_endproc

	.align	16, 0x90
	.type	read_frame_thread_int,@function
read_frame_thread_int:                  # @read_frame_thread_int
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	movq	16(%rcx), %rsi
	movl	16(%rdi), %edx
	movq	%rax, %rdi
	callq	*(%rcx)
	movq	-8(%rbp), %rcx
	movl	%eax, 20(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	read_frame_thread_int, .Lfunc_end46-read_frame_thread_int
	.cfi_endproc

	.align	16, 0x90
	.type	gcd,@function
gcd:                                    # @gcd
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.LBB47_1
	.align	16, 0x90
.LBB47_3:                               #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	%rdx, -24(%rbp)
	testq	%rdx, %rdx
	jne	.LBB47_3
# BB#2:
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gcd, .Lfunc_end47-gcd
	.cfi_endproc

	.align	16, 0x90
	.type	write_header_mkv,@function
write_header_mkv:                       # @write_header_mkv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, 8(%rdi)
	je	.LBB48_6
# BB#1:
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB48_6
# BB#2:
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB48_6
# BB#3:
	movq	-16(%rbp), %rax
	cmpl	$0, 36(%rax)
	je	.LBB48_6
# BB#4:
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB48_6
# BB#5:
	movq	-16(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB48_6
# BB#7:
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	28(%rax), %eax
	leal	11(%rcx,%rax), %eax
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rdi
	callq	malloc
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	je	.LBB48_8
# BB#9:
	movq	-32(%rbp), %rax
	movb	$1, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movb	1(%rax), %al
	movq	-32(%rbp), %rcx
	movb	%al, 1(%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movb	2(%rax), %al
	movq	-32(%rbp), %rcx
	movb	%al, 2(%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movb	3(%rax), %al
	movq	-32(%rbp), %rcx
	movb	%al, 3(%rcx)
	movq	-32(%rbp), %rax
	movb	$-1, 4(%rax)
	movq	-32(%rbp), %rax
	movb	$-31, 5(%rax)
	movq	-16(%rbp), %rax
	movb	25(%rax), %al
	movq	-32(%rbp), %rcx
	movb	%al, 6(%rcx)
	movq	-16(%rbp), %rax
	movb	24(%rax), %al
	movq	-32(%rbp), %rcx
	movb	%al, 7(%rcx)
	movq	-32(%rbp), %rdi
	addq	$8, %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	24(%rax), %rdx
	callq	memcpy
	movq	-16(%rbp), %rax
	movslq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movb	$1, 8(%rax,%rcx)
	movq	-16(%rbp), %rax
	movb	29(%rax), %cl
	movslq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movb	%cl, 9(%rax,%rdx)
	movq	-16(%rbp), %rax
	movb	28(%rax), %cl
	movslq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movb	%cl, 10(%rax,%rdx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	24(%rcx), %rdx
	leaq	11(%rax,%rdx), %rdi
	movq	16(%rcx), %rsi
	movslq	28(%rcx), %rdx
	callq	memcpy
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movq	48(%rax), %r9
	movl	32(%rax), %r10d
	movl	36(%rax), %esi
	movl	40(%rax), %edx
	movl	44(%rax), %eax
	movl	%eax, 32(%rsp)
	movl	%edx, 24(%rsp)
	movl	%esi, 16(%rsp)
	movl	%r10d, 8(%rsp)
	movq	$50000, (%rsp)          # imm = 0xC350
	movl	$.L.str.17, %esi
	movl	$.L.str.18, %edx
	callq	mk_writeHeader
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rdi
	callq	free
	movq	-16(%rbp), %rax
	movl	$1, 60(%rax)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB48_10
.LBB48_6:
	movl	$-1, -4(%rbp)
.LBB48_10:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.LBB48_8:
	movl	$-1, -4(%rbp)
	jmp	.LBB48_10
.Lfunc_end48:
	.size	write_header_mkv, .Lfunc_end48-write_header_mkv
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp158:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	fflush
	leaq	-640(%rbp), %rbx
	movq	%rbx, %rdi
	callq	x264_param_default
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rsi
	leaq	-672(%rbp), %rcx
	movq	%rbx, %rdx
	callq	Parse
	testl	%eax, %eax
	js	.LBB49_1
# BB#2:
	movl	$2, %edi
	movl	$SigIntHandler, %esi
	callq	signal
	leaq	-640(%rbp), %rdi
	leaq	-672(%rbp), %rsi
	callq	Encode
	movl	%eax, -676(%rbp)
	movl	%eax, -12(%rbp)
	jmp	.LBB49_3
.LBB49_1:
	movl	$-1, -12(%rbp)
.LBB49_3:
	movl	-12(%rbp), %eax
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end49:
	.size	main, .Lfunc_end49-main
	.cfi_endproc

	.align	16, 0x90
	.type	Parse,@function
Parse:                                  # @Parse
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$704, %rsp              # imm = 0x2C0
.Ltmp162:
	.cfi_offset %rbx, -32
.Ltmp163:
	.cfi_offset %r14, -24
	movl	%edi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-40(%rbp), %rsi
	leaq	-672(%rbp), %rdi
	movl	$616, %edx              # imm = 0x268
	callq	memcpy
	movl	$0, -684(%rbp)
	movl	$0, -688(%rbp)
	movl	$0, -692(%rbp)
	movq	-48(%rbp), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	movq	$open_file_yuv, p_open_infile(%rip)
	movq	$get_frame_total_yuv, p_get_frame_total(%rip)
	movq	$read_frame_yuv, p_read_frame(%rip)
	movq	$close_file_yuv, p_close_infile(%rip)
	movq	$open_file_bsf, p_open_outfile(%rip)
	movq	$set_param_bsf, p_set_outfile_param(%rip)
	movq	$write_nalu_bsf, p_write_nalu(%rip)
	movq	$set_eop_bsf, p_set_eop(%rip)
	movq	$close_file_bsf, p_close_outfile(%rip)
	leaq	-700(%rbp), %r14
	.align	16, 0x90
.LBB50_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_34 Depth 2
	movl	$0, -696(%rbp)
	movl	$-1, -700(%rbp)
	movl	-24(%rbp), %edi
	movq	-32(%rbp), %rsi
	movl	$.L.str.101, %edx
	movl	$Parse.long_options, %ecx
	movq	%r14, %r8
	callq	getopt_long
	movl	%eax, -704(%rbp)
	cmpl	$-1, %eax
	je	.LBB50_45
# BB#2:                                 #   in Loop: Header=BB50_1 Depth=1
	movl	-704(%rbp), %eax
	cmpl	$117, %eax
	jle	.LBB50_3
# BB#8:                                 #   in Loop: Header=BB50_1 Depth=1
	leal	-256(%rax), %ecx
	cmpl	$7, %ecx
	jbe	.LBB50_11
# BB#9:                                 #   in Loop: Header=BB50_1 Depth=1
	cmpl	$118, %eax
	je	.LBB50_10
.LBB50_32:                              #   in Loop: Header=BB50_1 Depth=1
	cmpl	$0, -700(%rbp)
	jns	.LBB50_39
# BB#33:                                #   in Loop: Header=BB50_1 Depth=1
	movl	$0, -708(%rbp)
	jmp	.LBB50_34
	.align	16, 0x90
.LBB50_94:                              #   in Loop: Header=BB50_34 Depth=2
	incl	-708(%rbp)
.LBB50_34:                              #   Parent Loop BB50_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-708(%rbp), %rax
	shlq	$5, %rax
	cmpq	$0, Parse.long_options(%rax)
	je	.LBB50_37
# BB#35:                                #   in Loop: Header=BB50_34 Depth=2
	movslq	-708(%rbp), %rax
	shlq	$5, %rax
	movl	Parse.long_options+24(%rax), %eax
	cmpl	-704(%rbp), %eax
	jne	.LBB50_94
# BB#36:                                #   in Loop: Header=BB50_1 Depth=1
	movl	-708(%rbp), %eax
	movl	%eax, -700(%rbp)
.LBB50_37:                              #   in Loop: Header=BB50_1 Depth=1
	cmpl	$0, -700(%rbp)
	js	.LBB50_38
.LBB50_39:                              #   in Loop: Header=BB50_1 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-700(%rbp), %rax
	shlq	$5, %rax
	movq	Parse.long_options(%rax), %rsi
	movq	optarg(%rip), %rdx
	callq	x264_param_parse
	orl	%eax, -696(%rbp)
	jmp	.LBB50_40
	.align	16, 0x90
.LBB50_11:                              #   in Loop: Header=BB50_1 Depth=1
	jmpq	*.LJTI50_0(,%rcx,8)
.LBB50_14:                              #   in Loop: Header=BB50_1 Depth=1
	movq	optarg(%rip), %rdi
	callq	atoi
	movq	-40(%rbp), %rcx
	movl	%eax, 28(%rcx)
	jmp	.LBB50_40
	.align	16, 0x90
.LBB50_3:                               #   in Loop: Header=BB50_1 Depth=1
	cmpl	$111, %eax
	jne	.LBB50_4
# BB#16:                                #   in Loop: Header=BB50_1 Depth=1
	movq	optarg(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	-4(%rbx,%rax), %rdi
	movl	$.L.str.105, %esi
	movl	$4, %edx
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB50_17
# BB#19:                                #   in Loop: Header=BB50_1 Depth=1
	movq	optarg(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	-4(%rbx,%rax), %rdi
	movl	$.L.str.107, %esi
	movl	$4, %edx
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB50_21
# BB#20:                                #   in Loop: Header=BB50_1 Depth=1
	movq	$open_file_mkv, p_open_outfile(%rip)
	movq	$write_nalu_mkv, p_write_nalu(%rip)
	movq	$set_param_mkv, p_set_outfile_param(%rip)
	movq	$set_eop_mkv, p_set_eop(%rip)
	movq	$close_file_mkv, p_close_outfile(%rip)
.LBB50_21:                              #   in Loop: Header=BB50_1 Depth=1
	movq	optarg(%rip), %rdi
	movl	$.L.str.108, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB50_22
# BB#23:                                #   in Loop: Header=BB50_1 Depth=1
	movq	optarg(%rip), %rdi
	movq	-48(%rbp), %rsi
	addq	$16, %rsi
	callq	*p_open_outfile(%rip)
	testl	%eax, %eax
	je	.LBB50_40
	jmp	.LBB50_24
.LBB50_22:                              #   in Loop: Header=BB50_1 Depth=1
	movq	stdout(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB50_40
.LBB50_15:                              #   in Loop: Header=BB50_1 Depth=1
	movq	optarg(%rip), %rdi
	callq	atoi
	movq	-48(%rbp), %rcx
	movl	%eax, 4(%rcx)
	jmp	.LBB50_40
.LBB50_25:                              #   in Loop: Header=BB50_1 Depth=1
	movq	optarg(%rip), %rdi
	movl	$.L.str.110, %esi
	callq	fopen
	movq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-48(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB50_26
# BB#27:                                #   in Loop: Header=BB50_1 Depth=1
	movq	-40(%rbp), %rax
	movl	$-1, 88(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 100(%rax)
	jmp	.LBB50_40
.LBB50_28:                              #   in Loop: Header=BB50_1 Depth=1
	movl	$1, -692(%rbp)
	jmp	.LBB50_40
.LBB50_29:                              #   in Loop: Header=BB50_1 Depth=1
	movq	-40(%rbp), %rax
	movl	$-1, 360(%rax)
	jmp	.LBB50_40
.LBB50_30:                              #   in Loop: Header=BB50_1 Depth=1
	movq	-48(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB50_40
.LBB50_31:                              #   in Loop: Header=BB50_1 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str.112, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB50_40
.LBB50_10:                              #   in Loop: Header=BB50_1 Depth=1
	movq	-40(%rbp), %rax
	movl	$3, 360(%rax)
	.align	16, 0x90
.LBB50_40:                              #   in Loop: Header=BB50_1 Depth=1
	cmpl	$0, -696(%rbp)
	je	.LBB50_1
	jmp	.LBB50_41
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	cmpl	$86, %eax
	je	.LBB50_13
# BB#5:                                 #   in Loop: Header=BB50_1 Depth=1
	cmpl	$104, %eax
	jne	.LBB50_32
# BB#6:
	leaq	-672(%rbp), %rdi
	xorl	%esi, %esi
	jmp	.LBB50_7
.LBB50_45:
	movl	-24(%rbp), %eax
	decl	%eax
	cmpl	%eax, optind(%rip)
	jg	.LBB50_47
# BB#46:
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB50_47
# BB#51:
	movslq	optind(%rip), %rax
	leal	1(%rax), %ecx
	movl	%ecx, optind(%rip)
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rbx
	movq	%rbx, -56(%rbp)
	movq	%rbx, %rdi
	callq	strlen
	leaq	-1(%rbx,%rax), %rax
	movq	%rax, -680(%rbp)
	jmp	.LBB50_52
	.align	16, 0x90
.LBB50_56:                              #   in Loop: Header=BB50_52 Depth=1
	decq	-680(%rbp)
.LBB50_52:                              # =>This Inner Loop Header: Depth=1
	movq	-680(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB50_53
# BB#54:                                #   in Loop: Header=BB50_52 Depth=1
	movq	-680(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$46, %eax
	setne	%al
	jmp	.LBB50_55
	.align	16, 0x90
.LBB50_53:                              #   in Loop: Header=BB50_52 Depth=1
	xorl	%eax, %eax
.LBB50_55:                              #   in Loop: Header=BB50_52 Depth=1
	testb	%al, %al
	jne	.LBB50_56
# BB#57:
	movq	-680(%rbp), %rdi
	movl	$.L.str.116, %esi
	movl	$4, %edx
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB50_59
# BB#58:
	movq	-680(%rbp), %rdi
	movl	$.L.str.117, %esi
	movl	$4, %edx
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB50_60
.LBB50_59:
	movl	$1, -684(%rbp)
.LBB50_60:
	movq	-680(%rbp), %rdi
	movl	$.L.str.118, %esi
	movl	$4, %edx
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB50_62
# BB#61:
	movl	$1, -688(%rbp)
.LBB50_62:
	cmpl	$0, -684(%rbp)
	jne	.LBB50_74
# BB#63:
	cmpl	$0, -688(%rbp)
	jne	.LBB50_74
# BB#64:
	movl	-24(%rbp), %eax
	decl	%eax
	cmpl	%eax, optind(%rip)
	jle	.LBB50_73
# BB#65:
	movq	-56(%rbp), %rax
	movq	%rax, -680(%rbp)
	jmp	.LBB50_66
.LBB50_41:
	cmpl	$0, -700(%rbp)
	jle	.LBB50_43
# BB#42:
	movslq	-700(%rbp), %rax
	shlq	$5, %rax
	movq	Parse.long_options(%rax), %rdx
	jmp	.LBB50_44
.LBB50_47:
	movq	stderr(%rip), %rdi
	movl	-24(%rbp), %eax
	decl	%eax
	movl	$.L.str.115, %edx
	cmpl	%eax, optind(%rip)
	jg	.LBB50_49
# BB#48:                                # %select.mid
	movl	$.L.str.32, %edx
.LBB50_49:                              # %select.end
	movl	$.L.str.114, %esi
.LBB50_50:
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, -20(%rbp)
	jmp	.LBB50_93
	.align	16, 0x90
.LBB50_72:                              #   in Loop: Header=BB50_66 Depth=1
	incq	-680(%rbp)
.LBB50_66:                              # =>This Inner Loop Header: Depth=1
	movq	-680(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB50_74
# BB#67:                                #   in Loop: Header=BB50_66 Depth=1
	movq	-680(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$48, %eax
	jl	.LBB50_72
# BB#68:                                #   in Loop: Header=BB50_66 Depth=1
	movq	-680(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$57, %eax
	jg	.LBB50_72
# BB#69:                                #   in Loop: Header=BB50_66 Depth=1
	movq	-680(%rbp), %rdi
	movq	-40(%rbp), %rcx
	leaq	12(%rcx), %rdx
	addq	$16, %rcx
	movl	$.L.str.119, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB50_72
# BB#70:
	movq	-40(%rbp), %rax
	cmpl	$2, 360(%rax)
	jl	.LBB50_74
# BB#71:
	movq	stderr(%rip), %rdi
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movl	16(%rax), %ecx
	movl	$.L.str.120, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB50_74
.LBB50_43:
	movslq	optind(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-16(%rcx,%rax,8), %rdx
.LBB50_44:
	movq	%rdx, -720(%rbp)
	movq	stderr(%rip), %rdi
	movq	optarg(%rip), %rcx
	movl	$.L.str.113, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, -20(%rbp)
	jmp	.LBB50_93
.LBB50_17:
	movq	stderr(%rip), %rdi
	movl	$.L.str.106, %esi
	jmp	.LBB50_18
.LBB50_24:
	movq	stderr(%rip), %rdi
	movq	optarg(%rip), %rdx
	movl	$.L.str.109, %esi
	jmp	.LBB50_50
.LBB50_38:
	movl	$-1, -20(%rbp)
	jmp	.LBB50_93
.LBB50_26:
	movq	stderr(%rip), %rdi
	movq	optarg(%rip), %rdx
	movl	$.L.str.111, %esi
	jmp	.LBB50_50
.LBB50_73:
	movslq	optind(%rip), %rax
	leal	1(%rax), %ecx
	movl	%ecx, optind(%rip)
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-40(%rbp), %rcx
	leaq	12(%rcx), %rdx
	addq	$16, %rcx
	movl	$.L.str.119, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
.LBB50_74:
	cmpl	$0, -684(%rbp)
	jne	.LBB50_79
# BB#75:
	cmpl	$0, -688(%rbp)
	jne	.LBB50_79
# BB#76:
	movq	-40(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB50_78
# BB#77:
	movq	-40(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB50_78
.LBB50_79:
	cmpl	$0, -684(%rbp)
	je	.LBB50_81
# BB#80:
	movq	stderr(%rip), %rdi
	movl	$.L.str.122, %esi
.LBB50_18:
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, -20(%rbp)
.LBB50_93:
	movl	-20(%rbp), %eax
	addq	$704, %rsp              # imm = 0x2C0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB50_81:
	cmpl	$0, -688(%rbp)
	je	.LBB50_83
# BB#82:
	movq	$open_file_y4m, p_open_infile(%rip)
	movq	$get_frame_total_y4m, p_get_frame_total(%rip)
	movq	$read_frame_y4m, p_read_frame(%rip)
	movq	$close_file_y4m, p_close_infile(%rip)
.LBB50_83:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	addq	$8, %rsi
	movq	-40(%rbp), %rdx
	callq	*p_open_infile(%rip)
	testl	%eax, %eax
	je	.LBB50_85
# BB#84:
	movq	stderr(%rip), %rdi
	movq	-56(%rbp), %rdx
	movl	$.L.str.123, %esi
	jmp	.LBB50_50
.LBB50_85:
	cmpl	$0, -692(%rbp)
	jne	.LBB50_89
# BB#86:
	movq	-40(%rbp), %rax
	cmpl	$1, 4(%rax)
	jg	.LBB50_89
# BB#87:
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB50_92
# BB#88:
	callq	x264_cpu_num_processors
	cmpl	$2, %eax
	jl	.LBB50_92
.LBB50_89:
	movq	-48(%rbp), %rsi
	addq	$8, %rsi
	movq	-40(%rbp), %rdx
	xorl	%edi, %edi
	callq	open_file_thread
	testl	%eax, %eax
	je	.LBB50_91
# BB#90:
	movq	stderr(%rip), %rdi
	movl	$.L.str.124, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB50_92
.LBB50_78:
	movq	stderr(%rip), %rdi
	movl	$.L.str.121, %esi
	jmp	.LBB50_18
.LBB50_91:
	movq	$open_file_thread, p_open_infile(%rip)
	movq	$get_frame_total_thread, p_get_frame_total(%rip)
	movq	$read_frame_thread, p_read_frame(%rip)
	movq	$close_file_thread, p_close_infile(%rip)
.LBB50_92:
	movl	$0, -20(%rbp)
	jmp	.LBB50_93
.LBB50_13:
	movl	$.L.str.102, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.103, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.104, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB50_12:
	leaq	-672(%rbp), %rdi
	movl	$1, %esi
.LBB50_7:
	callq	Help
	xorl	%edi, %edi
	callq	exit
.Lfunc_end50:
	.size	Parse, .Lfunc_end50-Parse
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI50_0:
	.quad	.LBB50_14
	.quad	.LBB50_15
	.quad	.LBB50_25
	.quad	.LBB50_28
	.quad	.LBB50_29
	.quad	.LBB50_30
	.quad	.LBB50_31
	.quad	.LBB50_12

	.text
	.align	16, 0x90
	.type	SigIntHandler,@function
SigIntHandler:                          # @SigIntHandler
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, b_exit_on_ctrl_c(%rip)
	jne	.LBB51_2
# BB#1:
	movl	$1, b_ctrl_c(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB51_2:
	xorl	%edi, %edi
	callq	exit
.Lfunc_end51:
	.size	SigIntHandler, .Lfunc_end51-SigIntHandler
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI52_0:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI52_1:
	.quad	4620693217682128896     # double 8
.LCPI52_2:
	.quad	4652007308841189376     # double 1000
.LCPI52_3:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	Encode,@function
Encode:                                 # @Encode
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$400, %rsp              # imm = 0x190
.Ltmp170:
	.cfi_offset %rbx, -48
.Ltmp171:
	.cfi_offset %r12, -40
.Ltmp172:
	.cfi_offset %r14, -32
.Ltmp173:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 360(%rax)
	setl	%al
	movzbl	%al, %eax
	andl	%eax, (%rsi)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	callq	*p_get_frame_total(%rip)
	movl	%eax, -144(%rbp)
	movq	-56(%rbp), %rcx
	subl	4(%rcx), %eax
	movl	%eax, -144(%rbp)
	je	.LBB52_2
# BB#1:
	movq	-48(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB52_4
.LBB52_2:
	movq	-48(%rbp), %rax
	cmpl	$0, 28(%rax)
	jle	.LBB52_4
# BB#3:
	movq	-48(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -144(%rbp)
.LBB52_4:
	movl	-144(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movl	$10, %eax
	cmpl	$0, -144(%rbp)
	je	.LBB52_6
# BB#5:
	movslq	-144(%rbp), %rax
	imulq	$274877907, %rax, %rdi  # imm = 0x10624DD3
	movq	%rdi, %rax
	shrq	$63, %rax
	sarq	$38, %rdi
	addl	%eax, %edi
	movl	$1, %esi
	movl	$10, %edx
	callq	x264_clip3
.LBB52_6:
	movl	%eax, -176(%rbp)
	movq	-48(%rbp), %rdi
	callq	x264_encoder_open
	movq	%rax, -64(%rbp)
	testq	%rax, %rax
	je	.LBB52_7
# BB#8:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	*p_set_outfile_param(%rip)
	testl	%eax, %eax
	je	.LBB52_10
# BB#9:
	movq	stderr(%rip), %rdi
	movl	$.L.str.264, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	callq	*p_close_infile(%rip)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	*p_close_outfile(%rip)
	movl	$-1, -36(%rbp)
	jmp	.LBB52_36
.LBB52_7:
	movq	stderr(%rip), %rdi
	movl	$.L.str.263, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	callq	*p_close_infile(%rip)
	movl	$-1, -36(%rbp)
	jmp	.LBB52_36
.LBB52_10:
	movq	-48(%rbp), %rax
	movl	12(%rax), %edx
	movl	16(%rax), %ecx
	leaq	-136(%rbp), %r12
	movl	$1, %esi
	movq	%r12, %rdi
	callq	x264_picture_alloc
	callq	x264_mdate
	movq	%rax, -152(%rbp)
	movl	$0, -140(%rbp)
	movq	$0, -168(%rbp)
	leaq	-384(%rbp), %r14
	leaq	-379(%rbp), %r15
	jmp	.LBB52_11
	.align	16, 0x90
.LBB52_27:                              #   in Loop: Header=BB52_11 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str.267, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	fprintf
	movq	stderr(%rip), %rdi
	callq	fflush
.LBB52_11:                              # =>This Inner Loop Header: Depth=1
	cmpl	$0, b_ctrl_c(%rip)
	je	.LBB52_13
# BB#12:                                #   in Loop: Header=BB52_11 Depth=1
	xorl	%eax, %eax
	jmp	.LBB52_15
	.align	16, 0x90
.LBB52_13:                              #   in Loop: Header=BB52_11 Depth=1
	movl	-140(%rbp), %ecx
	movb	$1, %al
	cmpl	-144(%rbp), %ecx
	jl	.LBB52_15
# BB#14:                                #   in Loop: Header=BB52_11 Depth=1
	cmpl	$0, -144(%rbp)
	sete	%al
	.align	16, 0x90
.LBB52_15:                              #   in Loop: Header=BB52_11 Depth=1
	testb	%al, %al
	je	.LBB52_28
# BB#16:                                #   in Loop: Header=BB52_11 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-140(%rbp), %edx
	addl	4(%rax), %edx
	movq	%r12, %rdi
	callq	*p_read_frame(%rip)
	testl	%eax, %eax
	jne	.LBB52_28
# BB#17:                                #   in Loop: Header=BB52_11 Depth=1
	movslq	-140(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	72(%rcx), %rcx
	imulq	%rax, %rcx
	movq	%rcx, -128(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB52_19
# BB#18:                                #   in Loop: Header=BB52_11 Depth=1
	movq	-56(%rbp), %rdi
	movl	-140(%rbp), %edx
	addl	4(%rdi), %edx
	movq	%r12, %rsi
	callq	parse_qpfile
	jmp	.LBB52_20
	.align	16, 0x90
.LBB52_19:                              #   in Loop: Header=BB52_11 Depth=1
	movq	$0, -136(%rbp)
.LBB52_20:                              #   in Loop: Header=BB52_11 Depth=1
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rsi
	movq	%r12, %rdx
	callq	Encode_frame
	cltq
	addq	%rax, -168(%rbp)
	incl	-140(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB52_11
# BB#21:                                #   in Loop: Header=BB52_11 Depth=1
	movl	-140(%rbp), %eax
	cltd
	idivl	-176(%rbp)
	testl	%edx, %edx
	jne	.LBB52_11
# BB#22:                                #   in Loop: Header=BB52_11 Depth=1
	callq	x264_mdate
	subq	-152(%rbp), %rax
	movq	%rax, -392(%rbp)
	xorpd	%xmm0, %xmm0
	testq	%rax, %rax
	jle	.LBB52_24
# BB#23:                                #   in Loop: Header=BB52_11 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-140(%rbp), %xmm0
	mulsd	.LCPI52_0(%rip), %xmm0
	cvtsi2sdq	-392(%rbp), %xmm1
	divsd	%xmm1, %xmm0
.LBB52_24:                              #   in Loop: Header=BB52_11 Depth=1
	movsd	%xmm0, -400(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sdq	-168(%rbp), %xmm0
	mulsd	.LCPI52_1(%rip), %xmm0
	movq	-48(%rbp), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	68(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	72(%rax), %xmm0
	cvtsi2sdl	-140(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	mulsd	.LCPI52_2(%rip), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -408(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB52_26
# BB#25:                                #   in Loop: Header=BB52_11 Depth=1
	movslq	-144(%rbp), %rax
	movslq	-140(%rbp), %rcx
	subq	%rcx, %rax
	imulq	-392(%rbp), %rax
	imulq	$1000000, %rcx, %rcx    # imm = 0xF4240
	cqto
	idivq	%rcx
	movl	%eax, -412(%rbp)
	movl	-140(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	mulsd	.LCPI52_3(%rip), %xmm0
	movslq	-412(%rbp), %rax
	imulq	$-1851608123, %rax, %r8 # imm = 0xFFFFFFFF91A2B3C5
	shrq	$32, %r8
	addl	%eax, %r8d
	movl	%r8d, %ecx
	shrl	$31, %ecx
	sarl	$11, %r8d
	addl	%ecx, %r8d
	imulq	$-2004318071, %rax, %rcx # imm = 0xFFFFFFFF88888889
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, %esi
	shrl	$31, %esi
	sarl	$5, %ecx
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	imulq	$-2004318071, %rcx, %rsi # imm = 0xFFFFFFFF88888889
	shrq	$32, %rsi
	movl	%ecx, %r9d
	imull	$60, %ecx, %edi
	movl	%ecx, %ebx
	addl	%esi, %ebx
	movl	%ebx, %ecx
	shrl	$31, %ecx
	sarl	$5, %ebx
	addl	%ecx, %ebx
	movl	-144(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	-400(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-408(%rbp), %xmm2       # xmm2 = mem[0],zero
	imull	$60, %ebx, %esi
	subl	%esi, %r9d
	subl	%edi, %eax
	movl	%eax, (%rsp)
	movl	$.L.str.265, %esi
	movb	$3, %al
	movq	%r14, %rdi
	callq	sprintf
	jmp	.LBB52_27
.LBB52_26:                              #   in Loop: Header=BB52_11 Depth=1
	movl	-140(%rbp), %edx
	movsd	-400(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	$.L.str.266, %esi
	movb	$2, %al
	movq	%r14, %rdi
	callq	sprintf
	jmp	.LBB52_27
	.align	16, 0x90
.LBB52_28:                              # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rsi
	xorl	%edx, %edx
	callq	Encode_frame
	movl	%eax, -172(%rbp)
	cltq
	addq	%rax, -168(%rbp)
	cmpl	$0, -172(%rbp)
	jne	.LBB52_28
# BB#29:
	callq	x264_mdate
	movq	%rax, -160(%rbp)
	leaq	-136(%rbp), %rdi
	callq	x264_picture_clean
	movq	-56(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB52_31
# BB#30:
	movq	stderr(%rip), %rdi
	movl	$.L.str.268, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB52_31:
	movq	-64(%rbp), %rdi
	callq	x264_encoder_close
	movq	mux_buffer(%rip), %rdi
	callq	x264_free
	movq	stderr(%rip), %rdi
	movl	$.L.str.129, %esi
	xorl	%eax, %eax
	callq	fprintf
	cmpl	$0, b_ctrl_c(%rip)
	je	.LBB52_33
# BB#32:
	movq	stderr(%rip), %rdi
	movq	-56(%rbp), %rax
	movl	4(%rax), %edx
	addl	-140(%rbp), %edx
	movl	$.L.str.269, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB52_33:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	callq	*p_close_infile(%rip)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	*p_close_outfile(%rip)
	cmpl	$0, -140(%rbp)
	jle	.LBB52_35
# BB#34:
	cvtsi2sdl	-140(%rbp), %xmm0
	mulsd	.LCPI52_0(%rip), %xmm0
	movq	-160(%rbp), %rax
	subq	-152(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -424(%rbp)
	movq	stderr(%rip), %rdi
	movl	-140(%rbp), %edx
	cvtsi2sdq	-168(%rbp), %xmm2
	mulsd	.LCPI52_1(%rip), %xmm2
	movq	-48(%rbp), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	68(%rax), %xmm1
	mulsd	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	72(%rax), %xmm2
	cvtsi2sdl	%edx, %xmm3
	mulsd	%xmm2, %xmm3
	mulsd	.LCPI52_2(%rip), %xmm3
	divsd	%xmm3, %xmm1
	movl	$.L.str.270, %esi
	movb	$2, %al
	callq	fprintf
.LBB52_35:
	movl	$0, -36(%rbp)
.LBB52_36:
	movl	-36(%rbp), %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Encode, .Lfunc_end52-Encode
	.cfi_endproc

	.align	16, 0x90
	.type	x264_clip3,@function
x264_clip3:                             # @x264_clip3
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB53_2
# BB#1:
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
.LBB53_2:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB53_4
# BB#3:
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
.LBB53_4:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end53:
	.size	x264_clip3, .Lfunc_end53-x264_clip3
	.cfi_endproc

	.align	16, 0x90
	.type	parse_qpfile,@function
parse_qpfile:                           # @parse_qpfile
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
.Ltmp180:
	.cfi_offset %rbx, -40
.Ltmp181:
	.cfi_offset %r14, -32
.Ltmp182:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	$-1, -48(%rbp)
	leaq	-48(%rbp), %r14
	leaq	-57(%rbp), %r15
	leaq	-52(%rbp), %rbx
	.align	16, 0x90
.LBB54_1:                               # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB54_21
# BB#2:                                 #   in Loop: Header=BB54_1 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	ftello
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	movl	$.L.str.271, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%rbx, %r8
	callq	__isoc99_fscanf
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	.LBB54_4
# BB#3:                                 #   in Loop: Header=BB54_1 Depth=1
	cmpl	$-1, -56(%rbp)
	je	.LBB54_4
# BB#5:                                 #   in Loop: Header=BB54_1 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB54_1
# BB#6:                                 #   in Loop: Header=BB54_1 Depth=1
	movl	-52(%rbp), %eax
	incl	%eax
	movq	-40(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movzbl	-57(%rbp), %eax
	cmpl	$73, %eax
	jne	.LBB54_8
# BB#7:                                 #   in Loop: Header=BB54_1 Depth=1
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB54_17
	.align	16, 0x90
.LBB54_8:                               #   in Loop: Header=BB54_1 Depth=1
	movzbl	-57(%rbp), %eax
	cmpl	$105, %eax
	jne	.LBB54_10
# BB#9:                                 #   in Loop: Header=BB54_1 Depth=1
	movq	-40(%rbp), %rax
	movl	$2, (%rax)
	jmp	.LBB54_17
.LBB54_10:                              #   in Loop: Header=BB54_1 Depth=1
	movzbl	-57(%rbp), %eax
	cmpl	$80, %eax
	jne	.LBB54_12
# BB#11:                                #   in Loop: Header=BB54_1 Depth=1
	movq	-40(%rbp), %rax
	movl	$3, (%rax)
	jmp	.LBB54_17
.LBB54_12:                              #   in Loop: Header=BB54_1 Depth=1
	movzbl	-57(%rbp), %eax
	cmpl	$66, %eax
	jne	.LBB54_14
# BB#13:                                #   in Loop: Header=BB54_1 Depth=1
	movq	-40(%rbp), %rax
	movl	$4, (%rax)
	jmp	.LBB54_17
.LBB54_14:                              #   in Loop: Header=BB54_1 Depth=1
	movzbl	-57(%rbp), %eax
	cmpl	$98, %eax
	jne	.LBB54_16
# BB#15:                                #   in Loop: Header=BB54_1 Depth=1
	movq	-40(%rbp), %rax
	movl	$5, (%rax)
	jmp	.LBB54_17
.LBB54_16:                              #   in Loop: Header=BB54_1 Depth=1
	movl	$0, -56(%rbp)
	.align	16, 0x90
.LBB54_17:                              #   in Loop: Header=BB54_1 Depth=1
	cmpl	$3, -56(%rbp)
	jne	.LBB54_20
# BB#18:                                #   in Loop: Header=BB54_1 Depth=1
	cmpl	$-1, -52(%rbp)
	jl	.LBB54_20
# BB#19:                                #   in Loop: Header=BB54_1 Depth=1
	cmpl	$52, -52(%rbp)
	jl	.LBB54_1
.LBB54_20:
	movq	stderr(%rip), %rdi
	movl	-44(%rbp), %edx
	movl	$.L.str.272, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fclose
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, 4(%rax)
	jmp	.LBB54_21
.LBB54_4:
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-72(%rbp), %rsi
	xorl	%edx, %edx
	callq	fseeko
.LBB54_21:
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	parse_qpfile, .Lfunc_end54-parse_qpfile
	.cfi_endproc

	.align	16, 0x90
	.type	Encode_frame,@function
Encode_frame:                           # @Encode_frame
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Ltmp186:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -124(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	leaq	-112(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	leaq	-104(%rbp), %r8
	callq	x264_encoder_encode
	testl	%eax, %eax
	jns	.LBB55_2
# BB#1:
	movq	stderr(%rip), %rdi
	movl	$.L.str.273, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB55_2:
	movl	$0, -120(%rbp)
	leaq	-128(%rbp), %rbx
	jmp	.LBB55_3
	.align	16, 0x90
.LBB55_6:                               #   in Loop: Header=BB55_3 Depth=1
	movl	mux_buffer_size(%rip), %eax
	movl	%eax, -128(%rbp)
	movq	mux_buffer(%rip), %rdi
	movslq	-120(%rbp), %rax
	movq	-112(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,8), %rcx
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	x264_nal_encode
	movq	-24(%rbp), %rdi
	movq	mux_buffer(%rip), %rsi
	movl	-128(%rbp), %edx
	callq	*p_write_nalu(%rip)
	addl	%eax, -124(%rbp)
	incl	-120(%rbp)
.LBB55_3:                               # =>This Inner Loop Header: Depth=1
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB55_7
# BB#4:                                 #   in Loop: Header=BB55_3 Depth=1
	movslq	-120(%rbp), %rax
	movq	-112(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	imull	$3, 8(%rcx,%rax,8), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	$4, %ecx
	cmpl	%ecx, mux_buffer_size(%rip)
	jge	.LBB55_6
# BB#5:                                 #   in Loop: Header=BB55_3 Depth=1
	movslq	-120(%rbp), %rax
	movq	-112(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	8(%rcx,%rax,8), %eax
	leal	4(%rax,%rax), %eax
	movl	%eax, mux_buffer_size(%rip)
	movq	mux_buffer(%rip), %rdi
	callq	x264_free
	movl	mux_buffer_size(%rip), %edi
	callq	x264_malloc
	movq	%rax, mux_buffer(%rip)
	jmp	.LBB55_6
.LBB55_7:
	cmpl	$0, -116(%rbp)
	je	.LBB55_9
# BB#8:
	movq	-24(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	callq	*p_set_eop(%rip)
.LBB55_9:
	movl	-124(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end55:
	.size	Encode_frame, .Lfunc_end55-Encode_frame
	.cfi_endproc

	.align	16, 0x90
	.type	Help,@function
Help:                                   # @Help
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$.L.str.125, %edi
	movl	$65, %esi
	movl	$.L.str.126, %edx
	movl	$.L.str.127, %ecx
	movl	$.L.str.127, %r8d
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.128, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-8(%rbp), %rax
	movl	80(%rax), %esi
	movl	$.L.str.130, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_2
# BB#1:
	movq	-8(%rbp), %rax
	movl	84(%rax), %esi
	movl	$.L.str.131, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_2:
	cmpl	$0, -12(%rbp)
	je	.LBB56_4
# BB#3:
	movq	-8(%rbp), %rax
	movl	88(%rax), %esi
	movl	$.L.str.132, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_4:
	cmpl	$0, -12(%rbp)
	je	.LBB56_6
# BB#5:
	movl	$.L.str.133, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_6:
	movq	-8(%rbp), %rax
	movl	96(%rax), %esi
	movl	$.L.str.134, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_8
# BB#7:
	movq	-8(%rbp), %rax
	movl	100(%rax), %esi
	movl	$.L.str.135, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_8:
	cmpl	$0, -12(%rbp)
	je	.LBB56_10
# BB#9:
	movq	-8(%rbp), %rax
	movl	104(%rax), %esi
	movl	$.L.str.136, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_10:
	movl	$.L.str.137, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.138, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-8(%rbp), %rax
	movl	76(%rax), %esi
	movl	$.L.str.139, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_12
# BB#11:
	movl	$.L.str.140, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_12:
	movq	-8(%rbp), %rax
	movl	116(%rax), %esi
	movl	120(%rax), %edx
	movl	$.L.str.141, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.142, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.143, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-8(%rbp), %rax
	movl	476(%rax), %esi
	movl	$.L.str.144, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.145, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.146, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_14
# BB#13:
	movq	-8(%rbp), %rax
	movl	504(%rax), %esi
	movl	$.L.str.147, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_14:
	movq	-8(%rbp), %rax
	movl	508(%rax), %esi
	movl	$.L.str.148, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_16
# BB#15:
	movq	-8(%rbp), %rax
	movss	512(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.149, %edi
	movb	$1, %al
	callq	printf
.LBB56_16:
	cmpl	$0, -12(%rbp)
	je	.LBB56_18
# BB#17:
	movq	-8(%rbp), %rax
	movl	480(%rax), %esi
	movl	$.L.str.150, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_18:
	cmpl	$0, -12(%rbp)
	je	.LBB56_20
# BB#19:
	movq	-8(%rbp), %rax
	movl	484(%rax), %esi
	movl	$.L.str.151, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_20:
	cmpl	$0, -12(%rbp)
	je	.LBB56_22
# BB#21:
	movq	-8(%rbp), %rax
	movl	488(%rax), %esi
	movl	$.L.str.152, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_22:
	movq	-8(%rbp), %rax
	movss	500(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.153, %edi
	movb	$1, %al
	callq	printf
	movq	-8(%rbp), %rax
	movss	516(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.154, %edi
	movb	$1, %al
	callq	printf
	movq	-8(%rbp), %rax
	movss	520(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.155, %edi
	movb	$1, %al
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_24
# BB#23:
	movq	-8(%rbp), %rax
	movl	400(%rax), %esi
	movl	$.L.str.156, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_24:
	cmpl	$0, -12(%rbp)
	je	.LBB56_26
# BB#25:
	movq	-8(%rbp), %rax
	movl	524(%rax), %esi
	movl	$.L.str.157, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_26:
	movq	-8(%rbp), %rax
	movss	528(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.158, %edi
	movb	$1, %al
	callq	printf
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.159, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-8(%rbp), %rax
	movq	536(%rax), %rsi
	movl	$.L.str.160, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-8(%rbp), %rax
	movss	560(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.161, %edi
	movb	$1, %al
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_28
# BB#27:
	movq	-8(%rbp), %rax
	movss	568(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.162, %edi
	movb	$1, %al
	callq	printf
.LBB56_28:
	cmpl	$0, -12(%rbp)
	je	.LBB56_30
# BB#29:
	movq	-8(%rbp), %rax
	movss	564(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.163, %edi
	movb	$1, %al
	callq	printf
.LBB56_30:
	movl	$.L.str.164, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_32
# BB#31:
	movl	$.L.str.165, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_32:
	cmpl	$0, -12(%rbp)
	je	.LBB56_34
# BB#33:
	movl	$.L.str.166, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_34:
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.167, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.168, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-8(%rbp), %rax
	movl	392(%rax), %esi
	movl	$x264_direct_pred_names, %edi
	callq	strtable_lookup
	movq	%rax, %rcx
	movl	$.L.str.169, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_36
# BB#35:
	movq	-8(%rbp), %rax
	movl	396(%rax), %esi
	movl	$.L.str.170, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_36:
	movl	$.L.str.171, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-8(%rbp), %rax
	movl	404(%rax), %esi
	movl	$x264_motion_est_names, %edi
	callq	strtable_lookup
	movq	%rax, %rcx
	movl	$.L.str.172, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_38
# BB#37:
	movl	$.L.str.173, %edi
	jmp	.LBB56_39
.LBB56_38:
	movl	$.L.str.174, %edi
.LBB56_39:
	xorl	%eax, %eax
	callq	printf
	movq	-8(%rbp), %rax
	movl	408(%rax), %esi
	movl	$.L.str.175, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_41
# BB#40:
	movl	$.L.str.176, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_41:
	cmpl	$0, -12(%rbp)
	je	.LBB56_43
# BB#42:
	movl	$.L.str.177, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_43:
	movq	-8(%rbp), %rax
	movl	420(%rax), %esi
	movl	$.L.str.178, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_45
# BB#44:
	movl	$.L.str.179, %edi
	jmp	.LBB56_46
.LBB56_45:
	movl	$.L.str.180, %edi
.LBB56_46:
	xorl	%eax, %eax
	callq	printf
	movq	-8(%rbp), %rax
	movss	448(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	452(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movl	$.L.str.181, %edi
	movb	$2, %al
	callq	printf
	movl	$.L.str.182, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_48
# BB#47:
	movl	$.L.str.183, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_48:
	movl	$.L.str.184, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-8(%rbp), %rax
	movl	432(%rax), %esi
	movl	$.L.str.185, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.186, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.187, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-8(%rbp), %rax
	movl	444(%rax), %esi
	movl	$.L.str.188, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_50
# BB#49:
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_50:
	cmpl	$0, -12(%rbp)
	je	.LBB56_52
# BB#51:
	movq	-8(%rbp), %rax
	movl	456(%rax), %esi
	movl	$.L.str.189, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_52:
	cmpl	$0, -12(%rbp)
	je	.LBB56_54
# BB#53:
	movq	-8(%rbp), %rax
	movl	460(%rax), %esi
	movl	$.L.str.190, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_54:
	cmpl	$0, -12(%rbp)
	je	.LBB56_56
# BB#55:
	movl	$.L.str.191, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_56:
	cmpl	$0, -12(%rbp)
	je	.LBB56_58
# BB#57:
	movl	$.L.str.192, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_58:
	movl	$.L.str.193, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_60
# BB#59:
	movl	$.L.str.194, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_60:
	cmpl	$0, -12(%rbp)
	je	.LBB56_62
# BB#61:
	movl	$.L.str.195, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_62:
	cmpl	$0, -12(%rbp)
	je	.LBB56_64
# BB#63:
	movl	$.L.str.196, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_64:
	cmpl	$0, -12(%rbp)
	je	.LBB56_66
# BB#65:
	movl	$.L.str.197, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_66:
	cmpl	$0, -12(%rbp)
	je	.LBB56_68
# BB#67:
	movl	$.L.str.198, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_68:
	cmpl	$0, -12(%rbp)
	je	.LBB56_70
# BB#69:
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_70:
	cmpl	$0, -12(%rbp)
	je	.LBB56_72
# BB#71:
	movl	$.L.str.199, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_72:
	cmpl	$0, -12(%rbp)
	je	.LBB56_74
# BB#73:
	movl	$.L.str.200, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_74:
	cmpl	$0, -12(%rbp)
	je	.LBB56_76
# BB#75:
	movl	$.L.str.201, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_76:
	cmpl	$0, -12(%rbp)
	je	.LBB56_78
# BB#77:
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_78:
	cmpl	$0, -12(%rbp)
	je	.LBB56_80
# BB#79:
	movq	-8(%rbp), %rax
	movl	40(%rax), %esi
	movl	$x264_overscan_names, %edi
	callq	strtable_lookup
	movq	%rax, %rcx
	movl	$.L.str.202, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
.LBB56_80:
	cmpl	$0, -12(%rbp)
	je	.LBB56_82
# BB#81:
	movq	-8(%rbp), %rax
	movl	44(%rax), %esi
	movl	$x264_vidformat_names, %edi
	callq	strtable_lookup
	movq	%rax, %rcx
	movl	$.L.str.203, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
.LBB56_82:
	cmpl	$0, -12(%rbp)
	je	.LBB56_84
# BB#83:
	movq	-8(%rbp), %rax
	movl	48(%rax), %esi
	movl	$x264_fullrange_names, %edi
	callq	strtable_lookup
	movq	%rax, %rcx
	movl	$.L.str.204, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
.LBB56_84:
	cmpl	$0, -12(%rbp)
	je	.LBB56_86
# BB#85:
	movq	-8(%rbp), %rax
	movl	52(%rax), %esi
	movl	$x264_colorprim_names, %edi
	callq	strtable_lookup
	movq	%rax, %rcx
	movl	$.L.str.205, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
.LBB56_86:
	cmpl	$0, -12(%rbp)
	je	.LBB56_88
# BB#87:
	movq	-8(%rbp), %rax
	movl	56(%rax), %esi
	movl	$x264_transfer_names, %edi
	callq	strtable_lookup
	movq	%rax, %rcx
	movl	$.L.str.206, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
.LBB56_88:
	cmpl	$0, -12(%rbp)
	je	.LBB56_90
# BB#89:
	movq	-8(%rbp), %rax
	movl	60(%rax), %esi
	movl	$x264_colmatrix_names, %edi
	callq	strtable_lookup
	movq	%rax, %rcx
	movl	$.L.str.207, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
.LBB56_90:
	cmpl	$0, -12(%rbp)
	je	.LBB56_92
# BB#91:
	movq	-8(%rbp), %rax
	movl	64(%rax), %esi
	movl	$.L.str.208, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_92:
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.209, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.210, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.211, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.212, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.213, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.214, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.215, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.216, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.217, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.218, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.219, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.220, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.221, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.222, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, -12(%rbp)
	je	.LBB56_94
# BB#93:
	movl	$.L.str.223, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_94:
	cmpl	$0, -12(%rbp)
	je	.LBB56_96
# BB#95:
	movl	$.L.str.224, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_96:
	cmpl	$0, -12(%rbp)
	je	.LBB56_98
# BB#97:
	movl	$.L.str.225, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_98:
	cmpl	$0, -12(%rbp)
	je	.LBB56_100
# BB#99:
	movl	$.L.str.226, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_100:
	cmpl	$0, -12(%rbp)
	je	.LBB56_102
# BB#101:
	movl	$.L.str.227, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_102:
	cmpl	$0, -12(%rbp)
	je	.LBB56_104
# BB#103:
	movq	-8(%rbp), %rax
	movl	608(%rax), %esi
	movl	$.L.str.228, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_104:
	cmpl	$0, -12(%rbp)
	je	.LBB56_106
# BB#105:
	movl	$.L.str.229, %edi
	xorl	%eax, %eax
	callq	printf
.LBB56_106:
	movl	$.L.str.129, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	Help, .Lfunc_end56-Help
	.cfi_endproc

	.align	16, 0x90
	.type	strtable_lookup,@function
strtable_lookup:                        # @strtable_lookup
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.LBB57_1
	.align	16, 0x90
.LBB57_2:                               #   in Loop: Header=BB57_1 Depth=1
	incl	-16(%rbp)
.LBB57_1:                               # =>This Inner Loop Header: Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB57_2
# BB#3:
	movl	$.L.str.230, %eax
	cmpl	$0, -12(%rbp)
	js	.LBB57_6
# BB#4:
	movl	-12(%rbp), %ecx
	movl	$.L.str.230, %eax
	cmpl	-16(%rbp), %ecx
	jge	.LBB57_6
# BB#5:
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
.LBB57_6:
	popq	%rbp
	retq
.Lfunc_end57:
	.size	strtable_lookup, .Lfunc_end57-strtable_lookup
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"wb"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"matroska"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Haali Matroska Writer b0"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"-"
	.size	.L.str.3, 2

	.type	.L.str.1.4,@object      # @.str.1.4
.L.str.1.4:
	.asciz	"rb"
	.size	.L.str.1.4, 3

	.type	.L.str.2.5,@object      # @.str.2.5
.L.str.2.5:
	.asciz	"YUV4MPEG2"
	.size	.L.str.2.5, 10

	.type	.L.str.3.6,@object      # @.str.3.6
.L.str.3.6:
	.asciz	"420"
	.size	.L.str.3.6, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Colorspace unhandled\n"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Warning, this sequence might be interlaced\n"
	.size	.L.str.5, 44

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%d:%d"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"YSCSS="
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"420JPEG"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"420MPEG2"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"420PALDV"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Unsupported extended colorspace\n"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"yuv4mpeg: %ix%i@%i/%ifps, %i:%i\n"
	.size	.L.str.12, 33

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"FRAME"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Bad header magic (%08X <=> %s)\n"
	.size	.L.str.14, 32

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Bad frame header!\n"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"w+b"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"x264"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"V_MPEG4/ISO/AVC"
	.size	.L.str.18, 16

	.type	mux_buffer,@object      # @mux_buffer
	.bss
	.globl	mux_buffer
	.align	8
mux_buffer:
	.quad	0
	.size	mux_buffer, 8

	.type	mux_buffer_size,@object # @mux_buffer_size
	.globl	mux_buffer_size
	.align	4
mux_buffer_size:
	.long	0                       # 0x0
	.size	mux_buffer_size, 4

	.type	p_open_infile,@object   # @p_open_infile
	.comm	p_open_infile,8,8
	.type	p_get_frame_total,@object # @p_get_frame_total
	.comm	p_get_frame_total,8,8
	.type	p_read_frame,@object    # @p_read_frame
	.comm	p_read_frame,8,8
	.type	p_close_infile,@object  # @p_close_infile
	.comm	p_close_infile,8,8
	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"PARSEC Benchmark Suite\n"
	.size	.L.str.19, 24

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"x264 [error]: x264_encoder_open failed\n"
	.size	.L.str.263, 40

	.type	p_set_outfile_param,@object # @p_set_outfile_param
	.local	p_set_outfile_param
	.comm	p_set_outfile_param,8,8
	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"x264 [error]: can't set outfile param\n"
	.size	.L.str.264, 39

	.type	p_close_outfile,@object # @p_close_outfile
	.local	p_close_outfile
	.comm	p_close_outfile,8,8
	.type	b_ctrl_c,@object        # @b_ctrl_c
	.local	b_ctrl_c
	.comm	b_ctrl_c,4,4
	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"x264 [%.1f%%] %d/%d frames, %.2f fps, %.2f kb/s, eta %d:%02d:%02d"
	.size	.L.str.265, 66

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"x264 %d frames: %.2f fps, %.2f kb/s"
	.size	.L.str.266, 36

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"%s  \r"
	.size	.L.str.267, 6

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"                                                                               \r"
	.size	.L.str.268, 81

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"\n"
	.size	.L.str.129, 2

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"aborted at input frame %d\n"
	.size	.L.str.269, 27

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"encoded %d frames, %.2f fps, %.2f kb/s\n"
	.size	.L.str.270, 40

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"x264 [error]: x264_encoder_encode failed\n"
	.size	.L.str.273, 42

	.type	p_write_nalu,@object    # @p_write_nalu
	.local	p_write_nalu
	.comm	p_write_nalu,8,8
	.type	p_set_eop,@object       # @p_set_eop
	.local	p_set_eop
	.comm	p_set_eop,8,8
	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"%d %c %d\n"
	.size	.L.str.271, 10

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"x264 [error]: can't parse qpfile for frame %d\n"
	.size	.L.str.272, 47

	.type	b_exit_on_ctrl_c,@object # @b_exit_on_ctrl_c
	.local	b_exit_on_ctrl_c
	.comm	b_exit_on_ctrl_c,4,4
	.type	p_open_outfile,@object  # @p_open_outfile
	.local	p_open_outfile
	.comm	p_open_outfile,8,8
	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"8A:B:b:f:hI:i:m:o:p:q:r:t:Vvw"
	.size	.L.str.101, 30

	.type	Parse.long_options,@object # @Parse.long_options
	.data
	.align	16
Parse.long_options:
	.quad	.L.str.1.20
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	104                     # 0x68
	.zero	4
	.quad	.L.str.2.21
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	263                     # 0x107
	.zero	4
	.quad	.L.str.3.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	86                      # 0x56
	.zero	4
	.quad	.L.str.4.23
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	66                      # 0x42
	.zero	4
	.quad	.L.str.5.24
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	98                      # 0x62
	.zero	4
	.quad	.L.str.6.25
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.7.26
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8.27
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.9.28
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10.29
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	105                     # 0x69
	.zero	4
	.quad	.L.str.11.30
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	73                      # 0x49
	.zero	4
	.quad	.L.str.12.31
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.13.32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14.33
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.15.34
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16.35
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.17.36
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	102                     # 0x66
	.zero	4
	.quad	.L.str.18.37
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.19.38
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	113                     # 0x71
	.zero	4
	.quad	.L.str.21
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.23
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.24
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.25
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	114                     # 0x72
	.zero	4
	.quad	.L.str.26
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.27
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.28
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.29
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.30
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	256                     # 0x100
	.zero	4
	.quad	.L.str.31
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	257                     # 0x101
	.zero	4
	.quad	.L.str.32
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	111                     # 0x6f
	.zero	4
	.quad	.L.str.33
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.34
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	65                      # 0x41
	.zero	4
	.quad	.L.str.35
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.36
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.37
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	119                     # 0x77
	.zero	4
	.quad	.L.str.38
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.39
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.40
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.41
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.42
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	109                     # 0x6d
	.zero	4
	.quad	.L.str.43
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.44
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.45
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.46
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	56                      # 0x38
	.zero	4
	.quad	.L.str.47
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	116                     # 0x74
	.zero	4
	.quad	.L.str.48
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.49
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.50
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.51
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.52
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.53
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.54
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.55
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.56
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.57
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.58
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.59
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.60
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.61
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.62
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	112                     # 0x70
	.zero	4
	.quad	.L.str.63
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.64
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.65
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.66
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.67
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.68
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	258                     # 0x102
	.zero	4
	.quad	.L.str.69
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.70
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	259                     # 0x103
	.zero	4
	.quad	.L.str.71
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.72
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.73
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.74
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	260                     # 0x104
	.zero	4
	.quad	.L.str.75
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	118                     # 0x76
	.zero	4
	.quad	.L.str.76
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	261                     # 0x105
	.zero	4
	.quad	.L.str.77
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	262                     # 0x106
	.zero	4
	.quad	.L.str.78
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.79
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.80
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.81
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.82
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.83
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.84
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.85
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.86
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.87
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.88
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.89
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.90
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.91
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.92
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.93
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.94
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.95
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.96
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.97
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.98
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.99
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.100
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.zero	32
	.size	Parse.long_options, 3232

	.type	.L.str.102,@object      # @.str.102
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.102:
	.asciz	"x264 0.65.1047M f773bf0\n"
	.size	.L.str.102, 25

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"built on Apr 26 2016, "
	.size	.L.str.103, 23

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gcc: 4.2.1 Compatible Clang 3.7.1 (tags/RELEASE_371/final)\n"
	.size	.L.str.104, 60

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	".mp4"
	.size	.L.str.105, 5

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"x264 [error]: not compiled with MP4 output support\n"
	.size	.L.str.106, 52

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	".mkv"
	.size	.L.str.107, 5

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"-"
	.size	.L.str.108, 2

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"x264 [error]: can't open output file `%s'\n"
	.size	.L.str.109, 43

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"r"
	.size	.L.str.110, 2

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"x264 [error]: can't open `%s'\n"
	.size	.L.str.111, 31

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"x264 [warning]: not compiled with visualization support\n"
	.size	.L.str.112, 57

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"x264 [error]: invalid argument: %s = %s\n"
	.size	.L.str.113, 41

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"input"
	.size	.L.str.115, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"output"
	.size	.L.str.32, 7

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"x264 [error]: No %s file. Run x264 --help for a list of options.\n"
	.size	.L.str.114, 66

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	".avi"
	.size	.L.str.116, 5

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	".avs"
	.size	.L.str.117, 5

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	".y4m"
	.size	.L.str.118, 5

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"%ux%u"
	.size	.L.str.119, 6

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"x264 [info]: file name gives %dx%d\n"
	.size	.L.str.120, 36

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"x264 [error]: Rawyuv input requires a resolution.\n"
	.size	.L.str.121, 51

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"x264 [error]: not compiled with AVIS input support\n"
	.size	.L.str.122, 52

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"x264 [error]: could not open input file '%s'\n"
	.size	.L.str.123, 46

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"x264 [warning]: threaded input failed\n"
	.size	.L.str.124, 39

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"x264 core:%d%s\nSyntax: x264 [options] -o outfile infile [widthxheight]\n\nInfile can be raw YUV 4:2:0 (in which case resolution is required),\n  or YUV4MPEG 4:2:0 (*.y4m),\n  or AVI or Avisynth if compiled with AVIS support (%s).\nOutfile type is selected by filename:\n .264 -> Raw bytestream\n .mkv -> Matroska\n .mp4 -> MP4 if compiled with GPAC support (%s)\n\nOptions:\n\n  -h, --help                  List the more commonly used options\n      --longhelp              List all options\n\n"
	.size	.L.str.125, 480

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	" r1047M f773bf0"
	.size	.L.str.126, 16

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"no"
	.size	.L.str.127, 3

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Frame-type options:\n"
	.size	.L.str.128, 21

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"  -I, --keyint <integer>      Maximum GOP size [%d]\n"
	.size	.L.str.130, 53

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"  -i, --min-keyint <integer>  Minimum GOP size [%d]\n"
	.size	.L.str.131, 53

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"      --scenecut <integer>    How aggressively to insert extra I-frames [%d]\n"
	.size	.L.str.132, 78

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"      --pre-scenecut          Faster, less precise scenecut detection.\n                                  Required and implied by multi-threading.\n"
	.size	.L.str.133, 147

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"  -b, --bframes <integer>     Number of B-frames between I and P [%d]\n"
	.size	.L.str.134, 71

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"      --b-adapt               Adaptive B-frame decision method [%d]\n                                  Higher values may lower threading efficiency.\n                                  - 0: Disabled\n                                  - 1: Fast\n                                  - 2: Optimal (slow with high --bframes)\n"
	.size	.L.str.135, 315

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"      --b-bias <integer>      Influences how often B-frames are used [%d]\n"
	.size	.L.str.136, 75

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"      --b-pyramid             Keep some B-frames as references\n"
	.size	.L.str.137, 64

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"      --no-cabac              Disable CABAC\n"
	.size	.L.str.138, 45

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"  -r, --ref <integer>         Number of reference frames [%d]\n"
	.size	.L.str.139, 63

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"      --no-deblock            Disable loop filter\n"
	.size	.L.str.140, 51

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"  -f, --deblock <alpha:beta>  Loop filter AlphaC0 and Beta parameters [%d:%d]\n"
	.size	.L.str.141, 79

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"      --interlaced            Enable pure-interlaced mode\n"
	.size	.L.str.142, 59

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"Ratecontrol:\n"
	.size	.L.str.143, 14

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"  -q, --qp <integer>          Set QP (0=lossless) [%d]\n"
	.size	.L.str.144, 56

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"  -B, --bitrate <integer>     Set bitrate (kbit/s)\n"
	.size	.L.str.145, 52

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"      --crf <float>           Quality-based VBR (nominal QP)\n"
	.size	.L.str.146, 62

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"      --vbv-maxrate <integer> Max local bitrate (kbit/s) [%d]\n"
	.size	.L.str.147, 63

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"      --vbv-bufsize <integer> Enable CBR and set size of the VBV buffer (kbit) [%d]\n"
	.size	.L.str.148, 85

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"      --vbv-init <float>      Initial VBV buffer occupancy [%.1f]\n"
	.size	.L.str.149, 67

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"      --qpmin <integer>       Set min QP [%d]\n"
	.size	.L.str.150, 47

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"      --qpmax <integer>       Set max QP [%d]\n"
	.size	.L.str.151, 47

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"      --qpstep <integer>      Set max QP step [%d]\n"
	.size	.L.str.152, 52

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"      --ratetol <float>       Allowed variance of average bitrate [%.1f]\n"
	.size	.L.str.153, 74

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"      --ipratio <float>       QP factor between I and P [%.2f]\n"
	.size	.L.str.154, 64

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"      --pbratio <float>       QP factor between P and B [%.2f]\n"
	.size	.L.str.155, 64

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"      --chroma-qp-offset <integer>  QP difference between chroma and luma [%d]\n"
	.size	.L.str.156, 80

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"      --aq-mode <integer>     AQ method [%d]\n                                  - 0: Disabled\n                                  - 1: Variance AQ (complexity mask)\n"
	.size	.L.str.157, 163

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"      --aq-strength <float>   Reduces blocking and blurring in flat and\n                              textured areas. [%.1f]\n                                  - 0.5: weak AQ\n                                  - 1.5: strong AQ\n"
	.size	.L.str.158, 226

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"  -p, --pass <1|2|3>          Enable multipass ratecontrol\n                                  - 1: First pass, creates stats file\n                                  - 2: Last pass, does not overwrite stats file\n                                  - 3: Nth pass, overwrites stats file\n"
	.size	.L.str.159, 281

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"      --stats <string>        Filename for 2 pass stats [\"%s\"]\n"
	.size	.L.str.160, 64

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"      --qcomp <float>         QP curve compression: 0.0 => CBR, 1.0 => CQP [%.2f]\n"
	.size	.L.str.161, 83

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"      --cplxblur <float>      Reduce fluctuations in QP (before curve compression) [%.1f]\n"
	.size	.L.str.162, 91

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"      --qblur <float>         Reduce fluctuations in QP (after curve compression) [%.1f]\n"
	.size	.L.str.163, 90

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"      --zones <zone0>/<zone1>/...  Tweak the bitrate of some regions of the video\n"
	.size	.L.str.164, 83

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"                              Each zone is of the form\n                                  <start frame>,<end frame>,<option>\n                                  where <option> is either\n                                      q=<integer> (force QP)\n                                  or  b=<float> (bitrate multiplier)\n"
	.size	.L.str.165, 314

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"      --qpfile <string>       Force frametypes and QPs\n"
	.size	.L.str.166, 56

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"Analysis:\n"
	.size	.L.str.167, 11

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"  -A, --partitions <string>   Partitions to consider [\"p8x8,b8x8,i8x8,i4x4\"]\n                                  - p8x8, p4x4, b8x8, i8x8, i4x4\n                                  - none, all\n                                  (p4x4 requires p8x8. i8x8 requires --8x8dct.)\n"
	.size	.L.str.168, 269

	.type	x264_direct_pred_names,@object # @x264_direct_pred_names
	.section	.rodata,"a",@progbits
	.align	16
x264_direct_pred_names:
	.quad	.L.str.231
	.quad	.L.str.232
	.quad	.L.str.233
	.quad	.L.str.234
	.quad	0
	.size	x264_direct_pred_names, 40

	.type	.L.str.169,@object      # @.str.169
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.169:
	.asciz	"      --direct <string>       Direct MV prediction mode [\"%s\"]\n                                  - none, spatial, temporal, auto\n"
	.size	.L.str.169, 130

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"      --direct-8x8 <-1|0|1>   Direct prediction size [%d]\n                                  -  0: 4x4\n                                  -  1: 8x8\n                                  - -1: smallest possible according to level\n"
	.size	.L.str.170, 224

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"  -w, --weightb               Weighted prediction for B-frames\n"
	.size	.L.str.171, 64

	.type	x264_motion_est_names,@object # @x264_motion_est_names
	.section	.rodata,"a",@progbits
	.align	16
x264_motion_est_names:
	.quad	.L.str.235
	.quad	.L.str.236
	.quad	.L.str.237
	.quad	.L.str.238
	.quad	.L.str.239
	.quad	0
	.size	x264_motion_est_names, 48

	.type	.L.str.172,@object      # @.str.172
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.172:
	.asciz	"      --me <string>           Integer pixel motion estimation method [\"%s\"]\n"
	.size	.L.str.172, 77

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"                                  - dia: diamond search, radius 1 (fast)\n                                  - hex: hexagonal search, radius 2\n                                  - umh: uneven multi-hexagon search\n                                  - esa: exhaustive search\n                                  - tesa: hadamard exhaustive search (slow)\n"
	.size	.L.str.173, 346

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"                                  - dia, hex, umh\n"
	.size	.L.str.174, 51

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"      --merange <integer>     Maximum motion vector search range [%d]\n"
	.size	.L.str.175, 71

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"      --mvrange <integer>     Maximum motion vector length [-1 (auto)]\n"
	.size	.L.str.176, 72

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"      --mvrange-thread <int>  Minimum buffer between threads [-1 (auto)]\n"
	.size	.L.str.177, 74

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"  -m, --subme <integer>       Subpixel motion estimation and mode decision [%d]\n"
	.size	.L.str.178, 81

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"                                  - 0: fullpel only (not recommended)\n                                  - 1: SAD mode decision, one qpel iteration\n                                  - 2: SATD mode decision\n                                  - 3-5: Progressively more qpel\n                                  - 6: RD mode decision for I/P-frames\n                                  - 7: RD mode decision for all frames\n                                  - 8: RD refinement for I/P-frames\n                                  - 9: RD refinement for all frames\n"
	.size	.L.str.179, 549

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"                                  decision quality: 1=fast, 9=best.\n"
	.size	.L.str.180, 69

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"      --psy-rd                Strength of psychovisual optimization [\"%.1f:%.1f\"]\n                                  #1: RD (requires subme>=6)\n                                  #2: Trellis (requires trellis, experimental)\n"
	.size	.L.str.181, 223

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"      --mixed-refs            Decide references on a per partition basis\n"
	.size	.L.str.182, 74

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"      --no-chroma-me          Ignore chroma in motion estimation\n"
	.size	.L.str.183, 66

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"  -8, --8x8dct                Adaptive spatial transform size\n"
	.size	.L.str.184, 63

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"  -t, --trellis <integer>     Trellis RD quantization. Requires CABAC. [%d]\n                                  - 0: disabled\n                                  - 1: enabled only on the final encode of a MB\n                                  - 2: enabled on all mode decisions\n"
	.size	.L.str.185, 274

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"      --no-fast-pskip         Disables early SKIP detection on P-frames\n"
	.size	.L.str.186, 73

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"      --no-dct-decimate       Disables coefficient thresholding on P-frames\n"
	.size	.L.str.187, 77

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"      --nr <integer>          Noise reduction [%d]\n"
	.size	.L.str.188, 52

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"      --deadzone-inter <int>  Set the size of the inter luma quantization deadzone [%d]\n"
	.size	.L.str.189, 89

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"      --deadzone-intra <int>  Set the size of the intra luma quantization deadzone [%d]\n"
	.size	.L.str.190, 89

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"                                  Deadzones should be in the range 0 - 32.\n"
	.size	.L.str.191, 76

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"      --cqm <string>          Preset quant matrices [\"flat\"]\n                                  - jvt, flat\n"
	.size	.L.str.192, 108

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"      --cqmfile <string>      Read custom quant matrices from a JM-compatible file\n"
	.size	.L.str.193, 84

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"                                  Overrides any other --cqm* options.\n"
	.size	.L.str.194, 71

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"      --cqm4 <list>           Set all 4x4 quant matrices\n                                  Takes a comma-separated list of 16 integers.\n"
	.size	.L.str.195, 137

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"      --cqm8 <list>           Set all 8x8 quant matrices\n                                  Takes a comma-separated list of 64 integers.\n"
	.size	.L.str.196, 137

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"      --cqm4i, --cqm4p, --cqm8i, --cqm8p\n                              Set both luma and chroma quant matrices\n"
	.size	.L.str.197, 112

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"      --cqm4iy, --cqm4ic, --cqm4py, --cqm4pc\n                              Set individual quant matrices\n"
	.size	.L.str.198, 106

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"Video Usability Info (Annex E):\n"
	.size	.L.str.199, 33

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"The VUI settings are not used by the encoder but are merely suggestions to\n"
	.size	.L.str.200, 76

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"the playback equipment. See doc/vui.txt for details. Use at your own risk.\n"
	.size	.L.str.201, 76

	.type	x264_overscan_names,@object # @x264_overscan_names
	.section	.rodata,"a",@progbits
	.align	16
x264_overscan_names:
	.quad	.L.str.240
	.quad	.L.str.241
	.quad	.L.str.242
	.quad	0
	.size	x264_overscan_names, 32

	.type	.L.str.202,@object      # @.str.202
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.202:
	.asciz	"      --overscan <string>     Specify crop overscan setting [\"%s\"]\n                                  - undef, show, crop\n"
	.size	.L.str.202, 122

	.type	x264_vidformat_names,@object # @x264_vidformat_names
	.section	.rodata,"a",@progbits
	.align	16
x264_vidformat_names:
	.quad	.L.str.243
	.quad	.L.str.244
	.quad	.L.str.245
	.quad	.L.str.246
	.quad	.L.str.247
	.quad	.L.str.240
	.quad	0
	.size	x264_vidformat_names, 56

	.type	.L.str.203,@object      # @.str.203
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.203:
	.asciz	"      --videoformat <string>  Specify video format [\"%s\"]\n                                  - component, pal, ntsc, secam, mac, undef\n"
	.size	.L.str.203, 135

	.type	x264_fullrange_names,@object # @x264_fullrange_names
	.section	.rodata,"a",@progbits
	.align	16
x264_fullrange_names:
	.quad	.L.str.248
	.quad	.L.str.249
	.quad	0
	.size	x264_fullrange_names, 24

	.type	.L.str.204,@object      # @.str.204
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.204:
	.asciz	"      --fullrange <string>    Specify full range samples setting [\"%s\"]\n                                  - off, on\n"
	.size	.L.str.204, 117

	.type	x264_colorprim_names,@object # @x264_colorprim_names
	.section	.rodata,"a",@progbits
	.align	16
x264_colorprim_names:
	.quad	.L.str.250
	.quad	.L.str.251
	.quad	.L.str.240
	.quad	.L.str.250
	.quad	.L.str.252
	.quad	.L.str.253
	.quad	.L.str.254
	.quad	.L.str.255
	.quad	.L.str.256
	.quad	0
	.size	x264_colorprim_names, 80

	.type	.L.str.205,@object      # @.str.205
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.205:
	.asciz	"      --colorprim <string>    Specify color primaries [\"%s\"]\n                                  - undef, bt709, bt470m, bt470bg\n                                    smpte170m, smpte240m, film\n"
	.size	.L.str.205, 191

	.type	x264_transfer_names,@object # @x264_transfer_names
	.section	.rodata,"a",@progbits
	.align	16
x264_transfer_names:
	.quad	.L.str.250
	.quad	.L.str.251
	.quad	.L.str.240
	.quad	.L.str.250
	.quad	.L.str.252
	.quad	.L.str.253
	.quad	.L.str.254
	.quad	.L.str.255
	.quad	.L.str.257
	.quad	.L.str.258
	.quad	.L.str.259
	.quad	0
	.size	x264_transfer_names, 96

	.type	.L.str.206,@object      # @.str.206
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.206:
	.asciz	"      --transfer <string>     Specify transfer characteristics [\"%s\"]\n                                  - undef, bt709, bt470m, bt470bg, linear,\n                                    log100, log316, smpte170m, smpte240m\n"
	.size	.L.str.206, 219

	.type	x264_colmatrix_names,@object # @x264_colmatrix_names
	.section	.rodata,"a",@progbits
	.align	16
x264_colmatrix_names:
	.quad	.L.str.260
	.quad	.L.str.251
	.quad	.L.str.240
	.quad	.L.str.250
	.quad	.L.str.261
	.quad	.L.str.253
	.quad	.L.str.254
	.quad	.L.str.255
	.quad	.L.str.262
	.quad	0
	.size	x264_colmatrix_names, 80

	.type	.L.str.207,@object      # @.str.207
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.207:
	.asciz	"      --colormatrix <string>  Specify color matrix setting [\"%s\"]\n                                  - undef, bt709, fcc, bt470bg\n                                    smpte170m, smpte240m, GBR, YCgCo\n"
	.size	.L.str.207, 199

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"      --chromaloc <integer>   Specify chroma sample location (0 to 5) [%d]\n"
	.size	.L.str.208, 76

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"Input/Output:\n"
	.size	.L.str.209, 15

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"  -o, --output                Specify output file\n"
	.size	.L.str.210, 51

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"      --sar width:height      Specify Sample Aspect Ratio\n"
	.size	.L.str.211, 59

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"      --fps <float|rational>  Specify framerate\n"
	.size	.L.str.212, 49

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"      --seek <integer>        First frame to encode\n"
	.size	.L.str.213, 53

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"      --frames <integer>      Maximum number of frames to encode\n"
	.size	.L.str.214, 66

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"      --level <string>        Specify level (as defined by Annex A)\n"
	.size	.L.str.215, 69

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"  -v, --verbose               Print stats for each frame\n"
	.size	.L.str.216, 58

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"      --progress              Show a progress indicator while encoding\n"
	.size	.L.str.217, 72

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"      --quiet                 Quiet Mode\n"
	.size	.L.str.218, 42

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"      --no-psnr               Disable PSNR computation\n"
	.size	.L.str.219, 56

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"      --no-ssim               Disable SSIM computation\n"
	.size	.L.str.220, 56

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"      --threads <integer>     Parallel encoding\n"
	.size	.L.str.221, 49

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"      --thread-input          Run Avisynth in its own thread\n"
	.size	.L.str.222, 62

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"      --non-deterministic     Slightly improve quality of SMP, at the cost of repeatability\n"
	.size	.L.str.223, 93

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"      --asm <integer>         Override CPU detection\n"
	.size	.L.str.224, 54

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"      --no-asm                Disable all CPU optimizations\n"
	.size	.L.str.225, 61

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"      --visualize             Show MB types overlayed on the encoded video\n"
	.size	.L.str.226, 76

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"      --dump-yuv <string>     Save reconstructed frames\n"
	.size	.L.str.227, 57

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"      --sps-id <integer>      Set SPS and PPS id numbers [%d]\n"
	.size	.L.str.228, 63

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"      --aud                   Use access unit delimiters\n"
	.size	.L.str.229, 58

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"GBR"
	.size	.L.str.260, 4

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"bt709"
	.size	.L.str.251, 6

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"undef"
	.size	.L.str.240, 6

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.zero	1
	.size	.L.str.250, 1

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"fcc"
	.size	.L.str.261, 4

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"bt470bg"
	.size	.L.str.253, 8

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"smpte170m"
	.size	.L.str.254, 10

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"smpte240m"
	.size	.L.str.255, 10

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"YCgCo"
	.size	.L.str.262, 6

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"bt470m"
	.size	.L.str.252, 7

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"linear"
	.size	.L.str.257, 7

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"log100"
	.size	.L.str.258, 7

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"log316"
	.size	.L.str.259, 7

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"film"
	.size	.L.str.256, 5

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"off"
	.size	.L.str.248, 4

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"on"
	.size	.L.str.249, 3

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"component"
	.size	.L.str.243, 10

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"pal"
	.size	.L.str.244, 4

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"ntsc"
	.size	.L.str.245, 5

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"secam"
	.size	.L.str.246, 6

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"mac"
	.size	.L.str.247, 4

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"show"
	.size	.L.str.241, 5

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"crop"
	.size	.L.str.242, 5

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"dia"
	.size	.L.str.235, 4

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"hex"
	.size	.L.str.236, 4

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"umh"
	.size	.L.str.237, 4

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"esa"
	.size	.L.str.238, 4

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"tesa"
	.size	.L.str.239, 5

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"???"
	.size	.L.str.230, 4

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"none"
	.size	.L.str.231, 5

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"spatial"
	.size	.L.str.232, 8

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"temporal"
	.size	.L.str.233, 9

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"auto"
	.size	.L.str.234, 5

	.type	.L.str.1.20,@object     # @.str.1.20
.L.str.1.20:
	.asciz	"help"
	.size	.L.str.1.20, 5

	.type	.L.str.2.21,@object     # @.str.2.21
.L.str.2.21:
	.asciz	"longhelp"
	.size	.L.str.2.21, 9

	.type	.L.str.3.22,@object     # @.str.3.22
.L.str.3.22:
	.asciz	"version"
	.size	.L.str.3.22, 8

	.type	.L.str.4.23,@object     # @.str.4.23
.L.str.4.23:
	.asciz	"bitrate"
	.size	.L.str.4.23, 8

	.type	.L.str.5.24,@object     # @.str.5.24
.L.str.5.24:
	.asciz	"bframes"
	.size	.L.str.5.24, 8

	.type	.L.str.6.25,@object     # @.str.6.25
.L.str.6.25:
	.asciz	"b-adapt"
	.size	.L.str.6.25, 8

	.type	.L.str.7.26,@object     # @.str.7.26
.L.str.7.26:
	.asciz	"no-b-adapt"
	.size	.L.str.7.26, 11

	.type	.L.str.8.27,@object     # @.str.8.27
.L.str.8.27:
	.asciz	"b-bias"
	.size	.L.str.8.27, 7

	.type	.L.str.9.28,@object     # @.str.9.28
.L.str.9.28:
	.asciz	"b-pyramid"
	.size	.L.str.9.28, 10

	.type	.L.str.10.29,@object    # @.str.10.29
.L.str.10.29:
	.asciz	"min-keyint"
	.size	.L.str.10.29, 11

	.type	.L.str.11.30,@object    # @.str.11.30
.L.str.11.30:
	.asciz	"keyint"
	.size	.L.str.11.30, 7

	.type	.L.str.12.31,@object    # @.str.12.31
.L.str.12.31:
	.asciz	"scenecut"
	.size	.L.str.12.31, 9

	.type	.L.str.13.32,@object    # @.str.13.32
.L.str.13.32:
	.asciz	"pre-scenecut"
	.size	.L.str.13.32, 13

	.type	.L.str.14.33,@object    # @.str.14.33
.L.str.14.33:
	.asciz	"nf"
	.size	.L.str.14.33, 3

	.type	.L.str.15.34,@object    # @.str.15.34
.L.str.15.34:
	.asciz	"no-deblock"
	.size	.L.str.15.34, 11

	.type	.L.str.16.35,@object    # @.str.16.35
.L.str.16.35:
	.asciz	"filter"
	.size	.L.str.16.35, 7

	.type	.L.str.17.36,@object    # @.str.17.36
.L.str.17.36:
	.asciz	"deblock"
	.size	.L.str.17.36, 8

	.type	.L.str.18.37,@object    # @.str.18.37
.L.str.18.37:
	.asciz	"interlaced"
	.size	.L.str.18.37, 11

	.type	.L.str.19.38,@object    # @.str.19.38
.L.str.19.38:
	.asciz	"no-cabac"
	.size	.L.str.19.38, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"qp"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"qpmin"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"qpmax"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"qpstep"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"crf"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ref"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"asm"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"no-asm"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"sar"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"fps"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"frames"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"seek"
	.size	.L.str.31, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"analyse"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"partitions"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"direct"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"direct-8x8"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"weightb"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"me"
	.size	.L.str.38, 3

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"merange"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"mvrange"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"mvrange-thread"
	.size	.L.str.41, 15

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"subme"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"psy-rd"
	.size	.L.str.43, 7

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"mixed-refs"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"no-chroma-me"
	.size	.L.str.45, 13

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"8x8dct"
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"trellis"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"no-fast-pskip"
	.size	.L.str.48, 14

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"no-dct-decimate"
	.size	.L.str.49, 16

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"aq-strength"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"aq-mode"
	.size	.L.str.51, 8

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"deadzone-inter"
	.size	.L.str.52, 15

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"deadzone-intra"
	.size	.L.str.53, 15

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"level"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"ratetol"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"vbv-maxrate"
	.size	.L.str.56, 12

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"vbv-bufsize"
	.size	.L.str.57, 12

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"vbv-init"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"ipratio"
	.size	.L.str.59, 8

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"pbratio"
	.size	.L.str.60, 8

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"chroma-qp-offset"
	.size	.L.str.61, 17

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"pass"
	.size	.L.str.62, 5

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"stats"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"qcomp"
	.size	.L.str.64, 6

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"qblur"
	.size	.L.str.65, 6

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"cplxblur"
	.size	.L.str.66, 9

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"zones"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"qpfile"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"threads"
	.size	.L.str.69, 8

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"thread-input"
	.size	.L.str.70, 13

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"non-deterministic"
	.size	.L.str.71, 18

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"no-psnr"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"no-ssim"
	.size	.L.str.73, 8

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"quiet"
	.size	.L.str.74, 6

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"verbose"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"progress"
	.size	.L.str.76, 9

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"visualize"
	.size	.L.str.77, 10

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"dump-yuv"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"sps-id"
	.size	.L.str.79, 7

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"aud"
	.size	.L.str.80, 4

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"nr"
	.size	.L.str.81, 3

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"cqm"
	.size	.L.str.82, 4

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"cqmfile"
	.size	.L.str.83, 8

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"cqm4"
	.size	.L.str.84, 5

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"cqm4i"
	.size	.L.str.85, 6

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"cqm4iy"
	.size	.L.str.86, 7

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"cqm4ic"
	.size	.L.str.87, 7

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"cqm4p"
	.size	.L.str.88, 6

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"cqm4py"
	.size	.L.str.89, 7

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"cqm4pc"
	.size	.L.str.90, 7

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"cqm8"
	.size	.L.str.91, 5

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"cqm8i"
	.size	.L.str.92, 6

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"cqm8p"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"overscan"
	.size	.L.str.94, 9

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"videoformat"
	.size	.L.str.95, 12

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"fullrange"
	.size	.L.str.96, 10

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"colorprim"
	.size	.L.str.97, 10

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"transfer"
	.size	.L.str.98, 9

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"colormatrix"
	.size	.L.str.99, 12

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"chromaloc"
	.size	.L.str.100, 10


	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.section	".note.GNU-stack","",@progbits
