	.text
	.file	"blackscholes.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_1:
	.long	3204448256              # float -0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_2:
	.quad	4600858325139338833     # double 0.3989422804014327
.LCPI0_3:
	.quad	4597513799286722574     # double 0.23164190000000001
.LCPI0_4:
	.quad	4607182418800017408     # double 1
.LCPI0_5:
	.quad	4599425086075893996     # double 0.31938153000000002
.LCPI0_6:
	.quad	-4623277134873873829    # double -0.356563782
.LCPI0_7:
	.quad	4610701882545888872     # double 1.781477937
.LCPI0_8:
	.quad	-4612491009938261808    # double -1.8212559779999999
.LCPI0_9:
	.quad	4608669842595391811     # double 1.3302744289999999
	.text
	.globl	CNDF
	.align	16, 0x90
	.type	CNDF,@function
CNDF:                                   # @CNDF
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
	subq	$64, %rsp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_2
# BB#1:
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI0_0(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$1, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	$0, -8(%rbp)
.LBB0_3:
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	callq	exp
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI0_2(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI0_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -28(%rbp)
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -28(%rbp)
	mulss	%xmm1, %xmm1
	movss	%xmm1, -32(%rbp)
	mulss	-28(%rbp), %xmm1
	movss	%xmm1, -36(%rbp)
	mulss	-28(%rbp), %xmm1
	movss	%xmm1, -40(%rbp)
	mulss	-28(%rbp), %xmm1
	movss	%xmm1, -44(%rbp)
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	.LCPI0_5(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -52(%rbp)
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	.LCPI0_6(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -56(%rbp)
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	.LCPI0_7(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -60(%rbp)
	addss	-56(%rbp), %xmm1
	movss	%xmm1, -56(%rbp)
	movss	-40(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	.LCPI0_8(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -60(%rbp)
	addss	-56(%rbp), %xmm1
	movss	%xmm1, -56(%rbp)
	movss	-44(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	.LCPI0_9(%rip), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -60(%rbp)
	addss	-56(%rbp), %xmm1
	movss	%xmm1, -56(%rbp)
	addss	-52(%rbp), %xmm1
	movss	%xmm1, -52(%rbp)
	mulss	-20(%rbp), %xmm1
	movss	%xmm1, -48(%rbp)
	movss	-48(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -48(%rbp)
	movss	%xmm1, -12(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB0_5
# BB#4:
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
.LBB0_5:
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	CNDF, .Lfunc_end0-CNDF
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
.LCPI1_2:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	BlkSchlsEqEuroNoDiv
	.align	16, 0x90
	.type	BlkSchlsEqEuroNoDiv,@function
BlkSchlsEqEuroNoDiv:                    # @BlkSchlsEqEuroNoDiv
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
	subq	$128, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movss	%xmm3, -16(%rbp)
	movss	%xmm4, -20(%rbp)
	movl	%edi, -24(%rbp)
	movss	%xmm5, -28(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -40(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB1_2
# BB#1:                                 # %call.sqrt
	movapd	%xmm1, %xmm0
	callq	sqrt
.LBB1_2:                                # %.split
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	divss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	log
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	movss	%xmm0, -64(%rbp)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-76(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI1_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	addss	-44(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
	mulss	-52(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-68(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -68(%rbp)
	subss	-80(%rbp), %xmm1
	movss	%xmm1, -72(%rbp)
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)
	movss	-72(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)
	movss	-84(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	CNDF
	movss	%xmm0, -96(%rbp)
	movss	-88(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	CNDF
	movss	%xmm0, -100(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI1_1(%rip), %xmm0
	mulss	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	exp
	mulsd	-120(%rbp), %xmm0       # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -92(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB1_3
# BB#4:
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	-100(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)
	mulss	-92(%rbp), %xmm0
	movss	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	-104(%rbp), %xmm1
	jmp	.LBB1_5
.LBB1_3:
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	-96(%rbp), %xmm0
	movss	-92(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-100(%rbp), %xmm1
.LBB1_5:
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	BlkSchlsEqEuroNoDiv, .Lfunc_end1-BlkSchlsEqEuroNoDiv
	.cfi_endproc

	.globl	bs_thread
	.align	16, 0x90
	.type	bs_thread,@function
bs_thread:                              # @bs_thread
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	(%rdi), %esi
	movl	%esi, -28(%rbp)
	movl	numOptions(%rip), %eax
	cltd
	idivl	nThreads(%rip)
	movl	%eax, %ecx
	imull	%esi, %ecx
	movl	%ecx, -32(%rbp)
	movl	numOptions(%rip), %eax
	cltd
	idivl	nThreads(%rip)
	addl	%ecx, %eax
	movl	%eax, -36(%rbp)
	movl	$0, -16(%rbp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	incl	-16(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	cmpl	$99, -16(%rbp)
	jg	.LBB2_6
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_3 Depth=2
	movslq	-12(%rbp), %rax
	movq	sptprice(%rip), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	strike(%rip), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	rate(%rip), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	volatility(%rip), %rcx
	movss	(%rcx,%rax,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	movq	otime(%rip), %rcx
	movss	(%rcx,%rax,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	movq	otype(%rip), %rcx
	movl	(%rcx,%rax,4), %edi
	xorps	%xmm5, %xmm5
	callq	BlkSchlsEqEuroNoDiv
	movss	%xmm0, -20(%rbp)
	movslq	-12(%rbp), %rax
	movq	prices(%rip), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	incl	-12(%rbp)
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB2_4
	jmp	.LBB2_5
.LBB2_6:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	bs_thread, .Lfunc_end2-bs_thread
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movl	$0, -20(%rbp)
	movl	%edi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	fflush
	cmpl	$4, -24(%rbp)
	jne	.LBB3_1
# BB#2:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, nThreads(%rip)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movl	$.L.str.2, %esi
	callq	fopen
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	je	.LBB3_3
# BB#6:
	movq	-40(%rbp), %rdi
	movl	$.L.str.4, %esi
	movl	$numOptions, %edx
	xorl	%eax, %eax
	callq	__isoc99_fscanf
	movl	%eax, -68(%rbp)
	cmpl	$1, %eax
	jne	.LBB3_7
# BB#9:
	movl	nThreads(%rip), %eax
	cmpl	numOptions(%rip), %eax
	jle	.LBB3_11
# BB#10:
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf
	movl	numOptions(%rip), %eax
	movl	%eax, nThreads(%rip)
.LBB3_11:
	cmpl	$1, nThreads(%rip)
	jne	.LBB3_33
# BB#12:
	movslq	numOptions(%rip), %rax
	shlq	$2, %rax
	leaq	(%rax,%rax,8), %rdi
	callq	malloc
	movq	%rax, data(%rip)
	movslq	numOptions(%rip), %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, prices(%rip)
	movl	$0, -48(%rbp)
	jmp	.LBB3_13
	.align	16, 0x90
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=1
	incl	-48(%rbp)
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	numOptions(%rip), %eax
	jge	.LBB3_16
# BB#14:                                #   in Loop: Header=BB3_13 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-48(%rbp), %rax
	movq	data(%rip), %rsi
	leaq	(%rax,%rax,8), %rax
	leaq	(%rsi,%rax,4), %rdx
	leaq	4(%rsi,%rax,4), %rcx
	leaq	8(%rsi,%rax,4), %r8
	leaq	12(%rsi,%rax,4), %r9
	leaq	16(%rsi,%rax,4), %r10
	leaq	20(%rsi,%rax,4), %r11
	leaq	24(%rsi,%rax,4), %r14
	leaq	28(%rsi,%rax,4), %rbx
	leaq	32(%rsi,%rax,4), %rax
	movq	%rax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	callq	__isoc99_fscanf
	movl	%eax, -68(%rbp)
	cmpl	$9, %eax
	je	.LBB3_15
.LBB3_7:
	movq	-80(%rbp), %rsi
	movl	$.L.str.5, %edi
	jmp	.LBB3_8
.LBB3_16:
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	%eax, -68(%rbp)
	testl	%eax, %eax
	jne	.LBB3_17
# BB#19:
	movl	numOptions(%rip), %esi
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.11, %edi
	movl	$100, %esi
	xorl	%eax, %eax
	callq	printf
	movslq	numOptions(%rip), %rax
	leaq	(%rax,%rax,4), %rax
	leaq	256(,%rax,4), %rdi
	callq	malloc
	movq	%rax, -56(%rbp)
	addq	$256, %rax              # imm = 0x100
	andq	$-64, %rax
	movq	%rax, sptprice(%rip)
	movslq	numOptions(%rip), %rcx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, strike(%rip)
	movslq	numOptions(%rip), %rcx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, rate(%rip)
	movslq	numOptions(%rip), %rcx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, volatility(%rip)
	movslq	numOptions(%rip), %rcx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, otime(%rip)
	movslq	numOptions(%rip), %rax
	leaq	256(,%rax,4), %rdi
	callq	malloc
	movq	%rax, -64(%rbp)
	addq	$256, %rax              # imm = 0x100
	andq	$-64, %rax
	movq	%rax, otype(%rip)
	movl	$0, -44(%rbp)
	jmp	.LBB3_20
	.align	16, 0x90
.LBB3_21:                               #   in Loop: Header=BB3_20 Depth=1
	movslq	-44(%rbp), %rax
	movq	data(%rip), %rcx
	leaq	(%rax,%rax,8), %rdx
	movzbl	24(%rcx,%rdx,4), %ecx
	cmpl	$80, %ecx
	sete	%cl
	movq	otype(%rip), %rdx
	movzbl	%cl, %ecx
	movl	%ecx, (%rdx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	data(%rip), %rcx
	leaq	(%rax,%rax,8), %rdx
	movss	(%rcx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	sptprice(%rip), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	data(%rip), %rcx
	leaq	(%rax,%rax,8), %rdx
	movss	4(%rcx,%rdx,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	strike(%rip), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	data(%rip), %rcx
	leaq	(%rax,%rax,8), %rdx
	movss	8(%rcx,%rdx,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	rate(%rip), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	data(%rip), %rcx
	leaq	(%rax,%rax,8), %rdx
	movss	16(%rcx,%rdx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	volatility(%rip), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	data(%rip), %rcx
	leaq	(%rax,%rax,8), %rdx
	movss	20(%rcx,%rdx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	otime(%rip), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	addl	$2, -44(%rbp)
.LBB3_20:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	numOptions(%rip), %eax
	jl	.LBB3_21
# BB#22:
	movslq	numOptions(%rip), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rsi
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, -92(%rbp)
	leaq	-92(%rbp), %rdi
	callq	bs_thread
	movq	-88(%rbp), %rdi
	movl	$.L.str.13, %esi
	callq	fopen
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	je	.LBB3_23
# BB#24:
	movq	-40(%rbp), %rdi
	movl	numOptions(%rip), %edx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	%eax, -68(%rbp)
	testl	%eax, %eax
	js	.LBB3_25
# BB#26:
	movl	$0, -44(%rbp)
	jmp	.LBB3_27
	.align	16, 0x90
.LBB3_29:                               #   in Loop: Header=BB3_27 Depth=1
	incl	-44(%rbp)
.LBB3_27:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	numOptions(%rip), %eax
	jge	.LBB3_30
# BB#28:                                #   in Loop: Header=BB3_27 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-44(%rbp), %rax
	movq	prices(%rip), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.16, %esi
	movb	$1, %al
	callq	fprintf
	movl	%eax, -68(%rbp)
	testl	%eax, %eax
	jns	.LBB3_29
.LBB3_25:
	movq	-88(%rbp), %rsi
	movl	$.L.str.15, %edi
.LBB3_8:
	xorl	%eax, %eax
	callq	printf
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$1, %edi
	callq	exit
.LBB3_30:
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	%eax, -68(%rbp)
	testl	%eax, %eax
	jne	.LBB3_31
# BB#32:
	movq	data(%rip), %rdi
	callq	free
	movq	prices(%rip), %rdi
	callq	free
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB3_1:
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movl	$.L.str.1, %edi
	jmp	.LBB3_5
.LBB3_3:
	movq	-80(%rbp), %rsi
	jmp	.LBB3_4
.LBB3_33:
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB3_17:
	movq	-80(%rbp), %rsi
	movl	$.L.str.9, %edi
	jmp	.LBB3_5
.LBB3_23:
	movq	-88(%rbp), %rsi
.LBB3_4:
	movl	$.L.str.3, %edi
	jmp	.LBB3_5
.LBB3_31:
	movq	-88(%rbp), %rsi
	movl	$.L.str.9, %edi
.LBB3_5:
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc

	.type	numError,@object        # @numError
	.bss
	.globl	numError
	.align	4
numError:
	.long	0                       # 0x0
	.size	numError, 4

	.type	numOptions,@object      # @numOptions
	.comm	numOptions,4,4
	.type	nThreads,@object        # @nThreads
	.comm	nThreads,4,4
	.type	sptprice,@object        # @sptprice
	.comm	sptprice,8,8
	.type	strike,@object          # @strike
	.comm	strike,8,8
	.type	rate,@object            # @rate
	.comm	rate,8,8
	.type	volatility,@object      # @volatility
	.comm	volatility,8,8
	.type	otime,@object           # @otime
	.comm	otime,8,8
	.type	otype,@object           # @otype
	.comm	otype,8,8
	.type	prices,@object          # @prices
	.comm	prices,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"PARSEC Benchmark Suite\n"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Usage:\n\t%s <nthreads> <inputFile> <outputFile>\n"
	.size	.L.str.1, 48

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"r"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ERROR: Unable to open file `%s'.\n"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%i"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ERROR: Unable to read from file `%s'.\n"
	.size	.L.str.5, 39

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"WARNING: Not enough work, reducing number of threads to match number of options.\n"
	.size	.L.str.6, 82

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Error: <nthreads> must be 1 (serial version)\n"
	.size	.L.str.7, 46

	.type	data,@object            # @data
	.comm	data,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%f %f %f %f %f %f %c %f %f"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ERROR: Unable to close file `%s'.\n"
	.size	.L.str.9, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Num of Options: %d\n"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Num of Runs: %d\n"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Size of data: %d\n"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"w"
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%i\n"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"ERROR: Unable to write to file `%s'.\n"
	.size	.L.str.15, 38

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%.18f\n"
	.size	.L.str.16, 7


	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.section	".note.GNU-stack","",@progbits
