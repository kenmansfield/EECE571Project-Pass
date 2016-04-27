	.text
	.file	"fluidanimate_perf.bc1"
	.globl	_Z13cellpool_initP8cellpooli
	.align	16, 0x90
	.type	_Z13cellpool_initP8cellpooli,@function
_Z13cellpool_initP8cellpooli:           # @_Z13cellpool_initP8cellpooli
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$1024, -16(%rbp)        # imm = 0x400
	cmpq	$0, -8(%rbp)
	je	.LBB0_6
# BB#1:
	cmpl	$0, -12(%rbp)
	jle	.LBB0_7
# BB#2:
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%eax, %ecx
	sarl	$4, %ecx
	shll	$2, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_4
# BB#3:
	movl	-16(%rbp), %eax
	jmp	.LBB0_5
.LBB0_4:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
.LBB0_5:
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	_ZL19cellpool_allocblocki
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movl	$128, %ecx
	addq	16(%rax), %rcx
	movq	%rcx, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB0_6:
	movl	$.L.str, %edi
	movl	$.L.str.4, %esi
	movl	$83, %edx
	movl	$.L__PRETTY_FUNCTION__._Z13cellpool_initP8cellpooli, %ecx
	callq	__assert_fail
.LBB0_7:
	movl	$.L.str.5, %edi
	movl	$.L.str.4, %esi
	movl	$84, %edx
	movl	$.L__PRETTY_FUNCTION__._Z13cellpool_initP8cellpooli, %ecx
	callq	__assert_fail
.Lfunc_end0:
	.size	_Z13cellpool_initP8cellpooli, .Lfunc_end0-_Z13cellpool_initP8cellpooli
	.cfi_endproc

	.globl	_Z16cellpool_getcellP8cellpool
	.align	16, 0x90
	.type	_Z16cellpool_getcellP8cellpool,@function
_Z16cellpool_getcellP8cellpool:         # @_Z16cellpool_getcellP8cellpool
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	testq	%rdi, %rdi
	je	.LBB1_4
# BB#1:
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_3
# BB#2:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	_ZL19cellpool_allocblocki
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	shll	8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movl	$128, %ecx
	addq	16(%rax), %rcx
	movq	%rcx, (%rax)
.LBB1_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	832(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 832(%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB1_4:
	movl	$.L.str, %edi
	movl	$.L.str.4, %esi
	movl	$98, %edx
	movl	$.L__PRETTY_FUNCTION__._Z16cellpool_getcellP8cellpool, %ecx
	callq	__assert_fail
.Lfunc_end1:
	.size	_Z16cellpool_getcellP8cellpool, .Lfunc_end1-_Z16cellpool_getcellP8cellpool
	.cfi_endproc

	.globl	_Z19cellpool_returncellP8cellpoolP4Cell
	.align	16, 0x90
	.type	_Z19cellpool_returncellP8cellpoolP4Cell,@function
_Z19cellpool_returncellP8cellpoolP4Cell: # @_Z19cellpool_returncellP8cellpoolP4Cell
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#1:
	cmpq	$0, -16(%rbp)
	je	.LBB2_4
# BB#2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 832(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB2_3:
	movl	$.L.str, %edi
	movl	$.L.str.4, %esi
	movl	$119, %edx
	movl	$.L__PRETTY_FUNCTION__._Z19cellpool_returncellP8cellpoolP4Cell, %ecx
	callq	__assert_fail
.LBB2_4:
	movl	$.L.str.6, %edi
	movl	$.L.str.4, %esi
	movl	$120, %edx
	movl	$.L__PRETTY_FUNCTION__._Z19cellpool_returncellP8cellpoolP4Cell, %ecx
	callq	__assert_fail
.Lfunc_end2:
	.size	_Z19cellpool_returncellP8cellpoolP4Cell, .Lfunc_end2-_Z19cellpool_returncellP8cellpoolP4Cell
	.cfi_endproc

	.globl	_Z16cellpool_destroyP8cellpool
	.align	16, 0x90
	.type	_Z16cellpool_destroyP8cellpool,@function
_Z16cellpool_destroyP8cellpool:         # @_Z16cellpool_destroyP8cellpool
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	testq	%rdi, %rdi
	je	.LBB3_5
# BB#1:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_2
	.align	16, 0x90
.LBB3_3:                                #   in Loop: Header=BB3_2 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	free
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#4:
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB3_5:
	movl	$.L.str, %edi
	movl	$.L.str.4, %esi
	movl	$127, %edx
	movl	$.L__PRETTY_FUNCTION__._Z16cellpool_destroyP8cellpool, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	_Z16cellpool_destroyP8cellpool, .Lfunc_end3-_Z16cellpool_destroyP8cellpool
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL19cellpool_allocblocki,@function
_ZL19cellpool_allocblocki:              # @_ZL19cellpool_allocblocki
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB4_9
# BB#1:
	movslq	-4(%rbp), %rax
	imulq	$896, %rax, %rdx        # imm = 0x380
	subq	$-128, %rdx
	leaq	-16(%rbp), %rdi
	movl	$128, %esi
	callq	posix_memalign
	movl	%eax, -40(%rbp)
	testl	%eax, %eax
	jne	.LBB4_10
# BB#2:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$128, %eax
	addq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
	movl	$896, %eax              # imm = 0x380
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	movq	-24(%rbp), %rcx
	addq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rcx, 832(%rdx)
	movq	-32(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	incl	-36(%rbp)
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %ecx
	cmpl	-4(%rbp), %ecx
	jge	.LBB4_8
# BB#4:                                 #   in Loop: Header=BB4_3 Depth=1
	testb	$7, -24(%rbp)
	jne	.LBB4_11
# BB#5:                                 #   in Loop: Header=BB4_3 Depth=1
	movl	-4(%rbp), %ecx
	decl	%ecx
	cmpl	%ecx, -36(%rbp)
	jne	.LBB4_6
# BB#7:                                 #   in Loop: Header=BB4_3 Depth=1
	movq	-24(%rbp), %rcx
	movq	$0, 832(%rcx)
	incl	-36(%rbp)
	jmp	.LBB4_3
.LBB4_8:
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB4_11:
	movl	$.L.str.9, %edi
	movl	$.L.str.4, %esi
	movl	$63, %edx
	movl	$.L__PRETTY_FUNCTION__._ZL19cellpool_allocblocki, %ecx
	callq	__assert_fail
.LBB4_9:
	movl	$.L.str.7, %edi
	movl	$.L.str.4, %esi
	movl	$46, %edx
	movl	$.L__PRETTY_FUNCTION__._ZL19cellpool_allocblocki, %ecx
	callq	__assert_fail
.LBB4_10:
	movl	$.L.str.8, %edi
	movl	$.L.str.4, %esi
	movl	$54, %edx
	movl	$.L__PRETTY_FUNCTION__._ZL19cellpool_allocblocki, %ecx
	callq	__assert_fail
.Lfunc_end4:
	.size	_ZL19cellpool_allocblocki, .Lfunc_end4-_ZL19cellpool_allocblocki
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_cellpool.cpp,@function
_GLOBAL__sub_I_cellpool.cpp:            # @_GLOBAL__sub_I_cellpool.cpp
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	callq	__cxx_global_var_init.1
	callq	__cxx_global_var_init.2
	callq	__cxx_global_var_init.3
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_GLOBAL__sub_I_cellpool.cpp, .Lfunc_end5-_GLOBAL__sub_I_cellpool.cpp
	.cfi_endproc

	.align	16, 0x90
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	retq
.Lfunc_end6:
	.size	__cxx_global_var_init, .Lfunc_end6-__cxx_global_var_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	3239890125              # float -9.80000019
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init.1,@function
__cxx_global_var_init.1:                # @__cxx_global_var_init.1
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	movss	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	$_ZL20externalAcceleration, %edi
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	callq	_ZN4Vec3C2Efff
	popq	%rbp
	retq
.Lfunc_end7:
	.size	__cxx_global_var_init.1, .Lfunc_end7-__cxx_global_var_init.1
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	3181631242              # float -0.0799999982
.LCPI8_1:
	.long	3179617976              # float -0.0649999976
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init.2,@function
__cxx_global_var_init.2:                # @__cxx_global_var_init.2
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	movss	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI8_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$_ZL9domainMin, %edi
	movaps	%xmm0, %xmm2
	callq	_ZN4Vec3C2Efff
	popq	%rbp
	retq
.Lfunc_end8:
	.size	__cxx_global_var_init.2, .Lfunc_end8-__cxx_global_var_init.2
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1036831949              # float 0.100000001
.LCPI9_1:
	.long	1032134328              # float 0.0649999976
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init.3,@function
__cxx_global_var_init.3:                # @__cxx_global_var_init.3
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	movss	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$_ZL9domainMax, %edi
	movaps	%xmm0, %xmm2
	callq	_ZN4Vec3C2Efff
	popq	%rbp
	retq
.Lfunc_end9:
	.size	__cxx_global_var_init.3, .Lfunc_end9-__cxx_global_var_init.3
	.cfi_endproc

	.section	.text._ZN4Vec3C2Efff,"axG",@progbits,_ZN4Vec3C2Efff,comdat
	.weak	_ZN4Vec3C2Efff
	.align	16, 0x90
	.type	_ZN4Vec3C2Efff,@function
_ZN4Vec3C2Efff:                         # @_ZN4Vec3C2Efff
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
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movss	%xmm2, -20(%rbp)
	movq	-8(%rbp), %rax
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax)
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rax)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_ZN4Vec3C2Efff, .Lfunc_end10-_ZN4Vec3C2Efff
	.cfi_endproc

	.text
	.globl	_Z19parsec_barrier_initP16parsec_barrier_tPKij
	.align	16, 0x90
	.type	_Z19parsec_barrier_initP16parsec_barrier_tPKij,@function
_Z19parsec_barrier_initP16parsec_barrier_tPKij: # @_Z19parsec_barrier_initP16parsec_barrier_tPKij
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
	movl	%edx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB11_1
# BB#2:
	cmpl	$0, -28(%rbp)
	jne	.LBB11_4
# BB#3:
	movl	$22, -4(%rbp)
	jmp	.LBB11_11
.LBB11_1:
	movl	$22, -4(%rbp)
	jmp	.LBB11_11
.LBB11_4:
	cmpq	$0, -24(%rbp)
	je	.LBB11_7
# BB#5:
	movq	-24(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB11_7
# BB#6:
	movl	$.L__FUNCTION__._Z19parsec_barrier_initP16parsec_barrier_tPKij, %edi
	movl	$.L.str.1, %esi
	movl	$69, %edx
	callq	_ZL15Not_ImplementedPKcS0_j
.LBB11_7:
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 92(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 96(%rax)
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	movl	%eax, -32(%rbp)
	testl	%eax, %eax
	je	.LBB11_9
# BB#8:
	movl	-32(%rbp), %eax
	jmp	.LBB11_10
.LBB11_9:
	movq	-16(%rbp), %rdi
	addq	$40, %rdi
	xorl	%esi, %esi
	callq	pthread_cond_init
	movl	%eax, -32(%rbp)
.LBB11_10:
	movl	%eax, -4(%rbp)
.LBB11_11:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_Z19parsec_barrier_initP16parsec_barrier_tPKij, .Lfunc_end11-_Z19parsec_barrier_initP16parsec_barrier_tPKij
	.cfi_endproc

	.globl	_Z22parsec_barrier_destroyP16parsec_barrier_t
	.align	16, 0x90
	.type	_Z22parsec_barrier_destroyP16parsec_barrier_t,@function
_Z22parsec_barrier_destroyP16parsec_barrier_t: # @_Z22parsec_barrier_destroyP16parsec_barrier_t
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
	testq	%rdi, %rdi
	je	.LBB12_8
# BB#1:
	movq	-16(%rbp), %rdi
	callq	pthread_mutex_destroy
	movl	%eax, -20(%rbp)
	testl	%eax, %eax
	jne	.LBB12_2
# BB#3:
	movq	-16(%rbp), %rdi
	addq	$40, %rdi
	callq	pthread_cond_destroy
	movl	%eax, -20(%rbp)
	testl	%eax, %eax
	je	.LBB12_4
.LBB12_2:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB12_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB12_4:
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	je	.LBB12_6
# BB#5:
	movl	$16, -4(%rbp)
	jmp	.LBB12_7
.LBB12_6:
	movl	$0, -4(%rbp)
	jmp	.LBB12_7
.LBB12_8:
	movl	$.L.str.1.2, %edi
	movl	$.L.str.1, %esi
	movl	$84, %edx
	movl	$.L__PRETTY_FUNCTION__._Z22parsec_barrier_destroyP16parsec_barrier_t, %ecx
	callq	__assert_fail
.Lfunc_end12:
	.size	_Z22parsec_barrier_destroyP16parsec_barrier_t, .Lfunc_end12-_Z22parsec_barrier_destroyP16parsec_barrier_t
	.cfi_endproc

	.globl	_Z26parsec_barrierattr_destroyPi
	.align	16, 0x90
	.type	_Z26parsec_barrierattr_destroyPi,@function
_Z26parsec_barrierattr_destroyPi:       # @_Z26parsec_barrierattr_destroyPi
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
	movq	%rdi, -16(%rbp)
	testq	%rdi, %rdi
	je	.LBB13_1
# BB#2:
	movl	$0, -4(%rbp)
	jmp	.LBB13_3
.LBB13_1:
	movl	$22, -4(%rbp)
.LBB13_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_Z26parsec_barrierattr_destroyPi, .Lfunc_end13-_Z26parsec_barrierattr_destroyPi
	.cfi_endproc

	.globl	_Z23parsec_barrierattr_initPi
	.align	16, 0x90
	.type	_Z23parsec_barrierattr_initPi,@function
_Z23parsec_barrierattr_initPi:          # @_Z23parsec_barrierattr_initPi
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
	movq	%rdi, -16(%rbp)
	testq	%rdi, %rdi
	je	.LBB14_1
# BB#2:
	movl	$0, -4(%rbp)
	jmp	.LBB14_3
.LBB14_1:
	movl	$22, -4(%rbp)
.LBB14_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_Z23parsec_barrierattr_initPi, .Lfunc_end14-_Z23parsec_barrierattr_initPi
	.cfi_endproc

	.globl	_Z29parsec_barrierattr_getpsharedPKiPi
	.align	16, 0x90
	.type	_Z29parsec_barrierattr_getpsharedPKiPi,@function
_Z29parsec_barrierattr_getpsharedPKiPi: # @_Z29parsec_barrierattr_getpsharedPKiPi
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB15_2
# BB#1:
	cmpq	$0, -24(%rbp)
	je	.LBB15_2
# BB#3:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB15_4
.LBB15_2:
	movl	$22, -4(%rbp)
.LBB15_4:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	_Z29parsec_barrierattr_getpsharedPKiPi, .Lfunc_end15-_Z29parsec_barrierattr_getpsharedPKiPi
	.cfi_endproc

	.globl	_Z29parsec_barrierattr_setpsharedPii
	.align	16, 0x90
	.type	_Z29parsec_barrierattr_setpsharedPii,@function
_Z29parsec_barrierattr_setpsharedPii:   # @_Z29parsec_barrierattr_setpsharedPii
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB16_1
# BB#2:
	cmpl	$0, -20(%rbp)
	je	.LBB16_5
# BB#3:
	cmpl	$1, -20(%rbp)
	je	.LBB16_5
# BB#4:
	movl	$22, -4(%rbp)
	jmp	.LBB16_8
.LBB16_5:
	cmpl	$1, -20(%rbp)
	je	.LBB16_7
# BB#6:
	movl	$.L__FUNCTION__._Z29parsec_barrierattr_setpsharedPii, %edi
	movl	$.L.str.1, %esi
	movl	$121, %edx
	callq	_ZL15Not_ImplementedPKcS0_j
.LBB16_7:
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB16_8
.LBB16_1:
	movl	$22, -4(%rbp)
.LBB16_8:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	_Z29parsec_barrierattr_setpsharedPii, .Lfunc_end16-_Z29parsec_barrierattr_setpsharedPii
	.cfi_endproc

	.globl	_Z19parsec_barrier_waitP16parsec_barrier_t
	.align	16, 0x90
	.type	_Z19parsec_barrier_waitP16parsec_barrier_t,@function
_Z19parsec_barrier_waitP16parsec_barrier_t: # @_Z19parsec_barrier_waitP16parsec_barrier_t
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	testq	%rdi, %rdi
	je	.LBB17_1
# BB#2:
	movq	-16(%rbp), %rdi
	callq	pthread_mutex_lock
	movl	%eax, -24(%rbp)
	testl	%eax, %eax
	jne	.LBB17_3
# BB#4:
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB17_16
# BB#5:
	movq	-16(%rbp), %rdi
	callq	pthread_mutex_unlock
	movq	$0, -32(%rbp)
	jmp	.LBB17_6
	.align	16, 0x90
.LBB17_10:                              #   in Loop: Header=BB17_6 Depth=1
	incq	-32(%rbp)
.LBB17_6:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	je	.LBB17_8
# BB#7:                                 #   in Loop: Header=BB17_6 Depth=1
	xorl	%eax, %eax
	jmp	.LBB17_9
	.align	16, 0x90
.LBB17_8:                               #   in Loop: Header=BB17_6 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$35000, %rax            # imm = 0x88B8
	setb	%al
.LBB17_9:                               #   in Loop: Header=BB17_6 Depth=1
	testb	%al, %al
	jne	.LBB17_10
	.align	16, 0x90
.LBB17_11:                              # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	pthread_mutex_trylock
	movl	%eax, -24(%rbp)
	cmpl	$16, %eax
	je	.LBB17_11
# BB#12:
	cmpl	$0, -24(%rbp)
	jne	.LBB17_3
	.align	16, 0x90
.LBB17_13:                              # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB17_16
# BB#14:                                #   in Loop: Header=BB17_13 Depth=1
	movq	-16(%rbp), %rsi
	leaq	40(%rsi), %rdi
	callq	pthread_cond_wait
	movl	%eax, -24(%rbp)
	testl	%eax, %eax
	je	.LBB17_13
	jmp	.LBB17_15
.LBB17_1:
	movl	$22, -4(%rbp)
	jmp	.LBB17_23
.LBB17_16:
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	incl	92(%rax)
	movq	-16(%rbp), %rax
	movl	92(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	88(%rcx), %eax
	jb	.LBB17_24
# BB#17:
	movq	-16(%rbp), %rax
	movl	$0, 96(%rax)
	movq	-16(%rbp), %rdi
	addq	$40, %rdi
	callq	pthread_cond_broadcast
	jmp	.LBB17_18
.LBB17_24:
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	je	.LBB17_18
# BB#25:
	movq	-16(%rbp), %rdi
	callq	pthread_mutex_unlock
	movq	$0, -40(%rbp)
	jmp	.LBB17_26
	.align	16, 0x90
.LBB17_30:                              #   in Loop: Header=BB17_26 Depth=1
	incq	-40(%rbp)
.LBB17_26:                              # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	je	.LBB17_27
# BB#28:                                #   in Loop: Header=BB17_26 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$35000, %rax            # imm = 0x88B8
	setb	%al
	jmp	.LBB17_29
	.align	16, 0x90
.LBB17_27:                              #   in Loop: Header=BB17_26 Depth=1
	xorl	%eax, %eax
.LBB17_29:                              #   in Loop: Header=BB17_26 Depth=1
	testb	%al, %al
	jne	.LBB17_30
	.align	16, 0x90
.LBB17_31:                              # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	pthread_mutex_trylock
	movl	%eax, -24(%rbp)
	cmpl	$16, %eax
	je	.LBB17_31
# BB#32:
	cmpl	$0, -24(%rbp)
	je	.LBB17_33
.LBB17_3:
	movl	-24(%rbp), %eax
.LBB17_22:                              # %select.end
	movl	%eax, -4(%rbp)
.LBB17_23:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.align	16, 0x90
.LBB17_33:                              # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	je	.LBB17_18
# BB#34:                                #   in Loop: Header=BB17_33 Depth=1
	movq	-16(%rbp), %rsi
	leaq	40(%rsi), %rdi
	callq	pthread_cond_wait
	movl	%eax, -24(%rbp)
	testl	%eax, %eax
	je	.LBB17_33
.LBB17_15:
	movq	-16(%rbp), %rdi
	callq	pthread_mutex_unlock
	movl	-24(%rbp), %eax
	jmp	.LBB17_22
.LBB17_18:
	movq	-16(%rbp), %rax
	decl	92(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB17_20
# BB#19:
	movq	-16(%rbp), %rax
	movl	$1, 96(%rax)
	movq	-16(%rbp), %rdi
	addq	$40, %rdi
	callq	pthread_cond_broadcast
.LBB17_20:
	movq	-16(%rbp), %rdi
	callq	pthread_mutex_unlock
	movl	$4, %eax
	cmpl	$0, -20(%rbp)
	jne	.LBB17_22
# BB#21:                                # %select.mid
	xorl	%eax, %eax
	jmp	.LBB17_22
.Lfunc_end17:
	.size	_Z19parsec_barrier_waitP16parsec_barrier_t, .Lfunc_end17-_Z19parsec_barrier_waitP16parsec_barrier_t
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL15Not_ImplementedPKcS0_j,@function
_ZL15Not_ImplementedPKcS0_j:            # @_ZL15Not_ImplementedPKcS0_j
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edx, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	stderr(%rip), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end18:
	.size	_ZL15Not_ImplementedPKcS0_j, .Lfunc_end18-_ZL15Not_ImplementedPKcS0_j
	.cfi_endproc

	.globl	_Z9hmgweightjPi
	.align	16, 0x90
	.type	_Z9hmgweightjPi,@function
_Z9hmgweightjPi:                        # @_Z9hmgweightjPi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$1, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.LBB19_1
	.align	16, 0x90
.LBB19_5:                               #   in Loop: Header=BB19_1 Depth=1
	shrl	-4(%rbp)
	incl	-28(%rbp)
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	je	.LBB19_6
# BB#2:                                 #   in Loop: Header=BB19_1 Depth=1
	movl	-4(%rbp), %eax
	andl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-4(%rbp), %eax
	andl	-24(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB19_5
# BB#3:                                 #   in Loop: Header=BB19_1 Depth=1
	incl	-20(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB19_5
# BB#4:                                 #   in Loop: Header=BB19_1 Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB19_5
.LBB19_6:
	movl	-20(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	_Z9hmgweightjPi, .Lfunc_end19-_Z9hmgweightjPi
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI20_0:
	.long	1071183299              # float 1.69500005
.LCPI20_1:
	.long	1091567616              # float 9
.LCPI20_4:
	.long	1086324736              # float 6
.LCPI20_5:
	.long	1078530011              # float 3.14159274
.LCPI20_11:
	.long	1053609165              # float 0.400000006
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_2:
	.quad	4641278254513127424     # double 201.06193542480469
.LCPI20_3:
	.quad	4644249154795601920     # double 315
.LCPI20_6:
	.quad	4624633867356078080     # double 15
.LCPI20_7:
	.quad	4631530004285489152     # double 45
.LCPI20_8:
	.quad	4652007308841189376     # double 1000
.LCPI20_9:
	.quad	4613937818241073152     # double 3
.LCPI20_10:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	_Z7InitSimPKcj
	.align	16, 0x90
	.type	_Z7InitSimPKcj,@function
_Z7InitSimPKcj:                         # @_Z7InitSimPKcj
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# BB#0:
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$792, %rsp              # imm = 0x318
.Ltmp169:
	.cfi_offset %rbx, -56
.Ltmp170:
	.cfi_offset %r12, -48
.Ltmp171:
	.cfi_offset %r13, -40
.Ltmp172:
	.cfi_offset %r14, -32
.Ltmp173:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	leaq	-56(%rbp), %rax
	movl	%esi, %edi
	movq	%rax, %rsi
	callq	_Z9hmgweightjPi
	cmpl	$1, %eax
	jne	.LBB20_164
# BB#1:
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	shrl	%ecx
	movl	$1, %eax
	movl	$1, %edx
	shll	%cl, %edx
	movl	%edx, XDIVS(%rip)
	movl	-56(%rbp), %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	shrl	%ecx
	shll	%cl, %eax
	movl	%eax, ZDIVS(%rip)
	imull	XDIVS(%rip), %eax
	cmpl	-52(%rbp), %eax
	je	.LBB20_3
# BB#2:
	shll	XDIVS(%rip)
.LBB20_3:
	movl	XDIVS(%rip), %eax
	imull	ZDIVS(%rip), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB20_165
# BB#4:
	movslq	XDIVS(%rip), %rcx
	movslq	ZDIVS(%rip), %rax
	imulq	%rcx, %rax
	movl	$8, %ecx
	mulq	%rcx
	movq	$-1, %rbx
	cmovoq	%rbx, %rax
	movq	%rax, %rdi
	callq	_Znam
	movq	%rax, thread(%rip)
	movslq	XDIVS(%rip), %rcx
	movslq	ZDIVS(%rip), %rax
	imulq	%rcx, %rax
	movl	$128, %ecx
	mulq	%rcx
	cmovoq	%rbx, %rax
	movq	%rax, %rdi
	callq	_Znam
	movq	%rax, grids(%rip)
	movslq	XDIVS(%rip), %rcx
	movslq	ZDIVS(%rip), %rax
	imulq	%rcx, %rax
	movl	$24, %ecx
	mulq	%rcx
	cmovnoq	%rax, %rbx
	movq	%rbx, %rdi
	callq	_Znam
	movq	%rax, pools(%rip)
	movl	$_ZSt4cout, %edi
	movl	$.L.str.7.13, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.8.14, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movq	-48(%rbp), %rsi
	leaq	-576(%rbp), %rbx
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
	movq	-576(%rbp), %rax
	addq	-24(%rax), %rbx
.Ltmp60:
	movq	%rbx, %rdi
	callq	_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv
.Ltmp61:
# BB#5:
	testb	%al, %al
	jne	.LBB20_6
# BB#16:
.Ltmp62:
	leaq	-576(%rbp), %rdi
	leaq	-592(%rbp), %rsi
	movl	$4, %edx
	callq	_ZNSi4readEPcl
.Ltmp63:
# BB#17:
.Ltmp64:
	leaq	-576(%rbp), %rdi
	leaq	-596(%rbp), %rsi
	movl	$4, %edx
	callq	_ZNSi4readEPcl
.Ltmp65:
# BB#18:
.Ltmp66:
	callq	_ZL14isLittleEndianv
.Ltmp67:
# BB#19:
	testl	%eax, %eax
	je	.LBB20_20
# BB#22:
	movss	-592(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, restParticlesPerMeter(%rip)
	movl	-596(%rbp), %eax
	jmp	.LBB20_23
.LBB20_20:
	movss	-592(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
.Ltmp68:
	callq	_ZL11bswap_floatf
.Ltmp69:
# BB#21:
	movss	%xmm0, restParticlesPerMeter(%rip)
	movl	-596(%rbp), %edi
.Ltmp70:
	callq	_ZL11bswap_int32i
.Ltmp71:
.LBB20_23:
	movl	%eax, numParticles(%rip)
	movl	$0, -600(%rbp)
	jmp	.LBB20_24
	.align	16, 0x90
.LBB20_26:                              #   in Loop: Header=BB20_24 Depth=1
	incl	-600(%rbp)
.LBB20_24:                              # =>This Inner Loop Header: Depth=1
	movl	XDIVS(%rip), %eax
	imull	ZDIVS(%rip), %eax
	cmpl	%eax, -600(%rbp)
	jge	.LBB20_27
# BB#25:                                #   in Loop: Header=BB20_24 Depth=1
	movslq	-600(%rbp), %rax
	leaq	(%rax,%rax,2), %rdi
	shlq	$3, %rdi
	addq	pools(%rip), %rdi
	movl	numParticles(%rip), %eax
	movl	XDIVS(%rip), %ecx
	imull	ZDIVS(%rip), %ecx
	cltd
	idivl	%ecx
.Ltmp155:
	movl	%eax, %esi
	callq	_Z13cellpool_initP8cellpooli
.Ltmp156:
	jmp	.LBB20_26
.LBB20_12:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp157:
	jmp	.LBB20_14
.LBB20_27:
	movss	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	divss	restParticlesPerMeter(%rip), %xmm0
	movss	%xmm0, h(%rip)
	mulss	%xmm0, %xmm0
	movss	%xmm0, hSq(%rip)
	movss	h(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI20_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	callq	powf
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI20_2(%rip), %xmm0
	movsd	.LCPI20_3(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -604(%rbp)
	movss	h(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI20_4(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	callq	powf
	mulss	.LCPI20_5(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI20_6(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -608(%rbp)
	movss	h(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI20_4(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	callq	powf
	mulss	.LCPI20_5(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI20_7(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -612(%rbp)
	movss	restParticlesPerMeter(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	mulss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	.LCPI20_8(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -616(%rbp)
	mulss	-604(%rbp), %xmm0
	movss	%xmm0, densityCoeff(%rip)
	movss	-608(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI20_9(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	.LCPI20_10(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movss	-616(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, pressureCoeff(%rip)
	movss	-612(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI20_11(%rip), %xmm0
	mulss	-616(%rbp), %xmm0
	movss	%xmm0, viscosityCoeff(%rip)
.Ltmp72:
	movl	$_ZL9domainMax.16, %edi
	movl	$_ZL9domainMin.17, %esi
	callq	_ZNK4Vec3miERKS_
.Ltmp73:
# BB#28:
	movlps	%xmm0, -648(%rbp)
	movss	%xmm1, -640(%rbp)
	movl	-640(%rbp), %eax
	movl	%eax, -624(%rbp)
	movq	-648(%rbp), %rax
	movq	%rax, -632(%rbp)
	movss	-632(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	divss	h(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, nx(%rip)
	movss	-628(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	divss	h(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, ny(%rip)
	movss	-624(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	divss	h(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, nz(%rip)
	cmpl	$0, nx(%rip)
	jle	.LBB20_166
# BB#29:
	cmpl	$0, ny(%rip)
	jle	.LBB20_166
# BB#30:
	cmpl	$0, nz(%rip)
	jle	.LBB20_166
# BB#31:
	movl	nx(%rip), %eax
	imull	ny(%rip), %eax
	imull	nz(%rip), %eax
	movl	%eax, numCells(%rip)
.Ltmp74:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.11, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp75:
# BB#32:
	movl	numCells(%rip), %esi
.Ltmp76:
	movq	%rax, %rdi
	callq	_ZNSolsEi
.Ltmp77:
# BB#33:
.Ltmp78:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp79:
# BB#34:
	movss	-632(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	nx(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, delta(%rip)
	movss	-628(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtsi2ssl	ny(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, delta+4(%rip)
	movss	-624(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtsi2ssl	nz(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, delta+8(%rip)
	movss	delta(%rip), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	h(%rip), %xmm0
	jb	.LBB20_167
# BB#35:
	movss	delta+4(%rip), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	h(%rip), %xmm0
	jb	.LBB20_167
# BB#36:
	movss	delta+8(%rip), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	h(%rip), %xmm0
	jb	.LBB20_167
# BB#37:
.Ltmp80:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.13, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp81:
# BB#38:
	movss	delta(%rip), %xmm0      # xmm0 = mem[0],zero,zero,zero
.Ltmp82:
	movq	%rax, %rdi
	callq	_ZNSolsEf
.Ltmp83:
# BB#39:
.Ltmp84:
	movl	$.L.str.14, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp85:
# BB#40:
	movss	delta+4(%rip), %xmm0    # xmm0 = mem[0],zero,zero,zero
.Ltmp86:
	movq	%rax, %rdi
	callq	_ZNSolsEf
.Ltmp87:
# BB#41:
.Ltmp88:
	movl	$.L.str.14, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp89:
# BB#42:
	movss	delta+8(%rip), %xmm0    # xmm0 = mem[0],zero,zero,zero
.Ltmp90:
	movq	%rax, %rdi
	callq	_ZNSolsEf
.Ltmp91:
# BB#43:
.Ltmp92:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp93:
# BB#44:
	movl	nx(%rip), %eax
	cmpl	XDIVS(%rip), %eax
	jl	.LBB20_168
# BB#45:
	movl	nz(%rip), %eax
	cmpl	ZDIVS(%rip), %eax
	jl	.LBB20_168
# BB#46:
	movl	$0, -652(%rbp)
	movl	$0, -664(%rbp)
	movl	$0, -672(%rbp)
	movsd	.LCPI20_10(%rip), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB20_47
	.align	16, 0x90
.LBB20_53:                              #   in Loop: Header=BB20_47 Depth=1
	incl	-672(%rbp)
.LBB20_47:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_50 Depth 2
	movl	-672(%rbp), %eax
	cmpl	XDIVS(%rip), %eax
	jge	.LBB20_54
# BB#48:                                #   in Loop: Header=BB20_47 Depth=1
	movl	-664(%rbp), %eax
	movl	%eax, -656(%rbp)
	cvtsi2ssl	nx(%rip), %xmm1
	cvtsi2ssl	XDIVS(%rip), %xmm2
	divss	%xmm2, %xmm1
	movl	-672(%rbp), %eax
	incl	%eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -664(%rbp)
	cmpl	%eax, -656(%rbp)
	jge	.LBB20_169
# BB#49:                                #   in Loop: Header=BB20_47 Depth=1
	movl	$0, -668(%rbp)
	movl	$0, -676(%rbp)
	jmp	.LBB20_50
	.align	16, 0x90
.LBB20_52:                              #   in Loop: Header=BB20_50 Depth=2
	movl	-656(%rbp), %eax
	movslq	-652(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	movl	%eax, (%rdx,%rcx)
	movl	-664(%rbp), %eax
	movslq	-652(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	movl	%eax, 12(%rdx,%rcx)
	movslq	-652(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	$0, 4(%rcx,%rax)
	movl	ny(%rip), %eax
	movslq	-652(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	movl	%eax, 16(%rdx,%rcx)
	movl	-660(%rbp), %eax
	movslq	-652(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	movl	%eax, 8(%rdx,%rcx)
	movl	-668(%rbp), %eax
	movslq	-652(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	movl	%eax, 20(%rdx,%rcx)
	incl	-676(%rbp)
	incl	-652(%rbp)
.LBB20_50:                              #   Parent Loop BB20_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-676(%rbp), %eax
	cmpl	ZDIVS(%rip), %eax
	jge	.LBB20_53
# BB#51:                                #   in Loop: Header=BB20_50 Depth=2
	movl	-668(%rbp), %eax
	movl	%eax, -660(%rbp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	nz(%rip), %xmm1
	cvtsi2ssl	ZDIVS(%rip), %xmm2
	divss	%xmm2, %xmm1
	movl	-676(%rbp), %eax
	incl	%eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -668(%rbp)
	cmpl	%eax, -660(%rbp)
	jl	.LBB20_52
# BB#170:
	movl	$.L.str.17, %edi
	movl	$.L.str.6.12, %esi
	movl	$209, %edx
	movl	$.L__PRETTY_FUNCTION__._Z7InitSimPKcj, %ecx
	callq	__assert_fail
.LBB20_54:
	movl	XDIVS(%rip), %eax
	imull	ZDIVS(%rip), %eax
	cmpl	%eax, -652(%rbp)
	jne	.LBB20_171
# BB#55:
	movslq	numCells(%rip), %rax
	testq	%rax, %rax
	movq	$-1, %rdi
	cmovnsq	%rax, %rdi
.Ltmp94:
	callq	_Znam
.Ltmp95:
# BB#56:
	movq	%rax, border(%rip)
	movl	$0, -680(%rbp)
	jmp	.LBB20_57
	.align	16, 0x90
.LBB20_96:                              #   in Loop: Header=BB20_57 Depth=1
	incl	-680(%rbp)
.LBB20_57:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_59 Depth 2
                                        #       Child Loop BB20_61 Depth 3
                                        #         Child Loop BB20_63 Depth 4
                                        #           Child Loop BB20_65 Depth 5
                                        #             Child Loop BB20_67 Depth 6
                                        #               Child Loop BB20_69 Depth 7
	movl	XDIVS(%rip), %eax
	imull	ZDIVS(%rip), %eax
	cmpl	%eax, -680(%rbp)
	jge	.LBB20_97
# BB#58:                                #   in Loop: Header=BB20_57 Depth=1
	movslq	-680(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	8(%rcx,%rax), %eax
	movl	%eax, -684(%rbp)
	jmp	.LBB20_59
	.align	16, 0x90
.LBB20_95:                              #   in Loop: Header=BB20_59 Depth=2
	incl	-684(%rbp)
.LBB20_59:                              #   Parent Loop BB20_57 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_61 Depth 3
                                        #         Child Loop BB20_63 Depth 4
                                        #           Child Loop BB20_65 Depth 5
                                        #             Child Loop BB20_67 Depth 6
                                        #               Child Loop BB20_69 Depth 7
	movl	-684(%rbp), %eax
	movslq	-680(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	20(%rdx,%rcx), %eax
	jge	.LBB20_96
# BB#60:                                #   in Loop: Header=BB20_59 Depth=2
	movslq	-680(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	4(%rcx,%rax), %eax
	movl	%eax, -688(%rbp)
	jmp	.LBB20_61
	.align	16, 0x90
.LBB20_94:                              #   in Loop: Header=BB20_61 Depth=3
	incl	-688(%rbp)
.LBB20_61:                              #   Parent Loop BB20_57 Depth=1
                                        #     Parent Loop BB20_59 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB20_63 Depth 4
                                        #           Child Loop BB20_65 Depth 5
                                        #             Child Loop BB20_67 Depth 6
                                        #               Child Loop BB20_69 Depth 7
	movl	-688(%rbp), %eax
	movslq	-680(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	16(%rdx,%rcx), %eax
	jge	.LBB20_95
# BB#62:                                #   in Loop: Header=BB20_61 Depth=3
	movslq	-680(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, -692(%rbp)
	jmp	.LBB20_63
	.align	16, 0x90
.LBB20_93:                              #   in Loop: Header=BB20_63 Depth=4
	incl	-692(%rbp)
.LBB20_63:                              #   Parent Loop BB20_57 Depth=1
                                        #     Parent Loop BB20_59 Depth=2
                                        #       Parent Loop BB20_61 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB20_65 Depth 5
                                        #             Child Loop BB20_67 Depth 6
                                        #               Child Loop BB20_69 Depth 7
	movl	-692(%rbp), %eax
	movslq	-680(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	12(%rdx,%rcx), %eax
	jge	.LBB20_94
# BB#64:                                #   in Loop: Header=BB20_63 Depth=4
	movl	-684(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-688(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-692(%rbp), %eax
	movl	%eax, -696(%rbp)
	movslq	-696(%rbp), %rax
	movq	border(%rip), %rcx
	movb	$0, (%rcx,%rax)
	movl	$-1, -700(%rbp)
	jmp	.LBB20_65
	.align	16, 0x90
.LBB20_92:                              #   in Loop: Header=BB20_65 Depth=5
	incl	-700(%rbp)
.LBB20_65:                              #   Parent Loop BB20_57 Depth=1
                                        #     Parent Loop BB20_59 Depth=2
                                        #       Parent Loop BB20_61 Depth=3
                                        #         Parent Loop BB20_63 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB20_67 Depth 6
                                        #               Child Loop BB20_69 Depth 7
	cmpl	$1, -700(%rbp)
	jg	.LBB20_93
# BB#66:                                #   in Loop: Header=BB20_65 Depth=5
	movl	$-1, -704(%rbp)
	jmp	.LBB20_67
	.align	16, 0x90
.LBB20_90:                              #   in Loop: Header=BB20_67 Depth=6
	incl	-704(%rbp)
.LBB20_67:                              #   Parent Loop BB20_57 Depth=1
                                        #     Parent Loop BB20_59 Depth=2
                                        #       Parent Loop BB20_61 Depth=3
                                        #         Parent Loop BB20_63 Depth=4
                                        #           Parent Loop BB20_65 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB20_69 Depth 7
	cmpl	$1, -704(%rbp)
	jg	.LBB20_91
# BB#68:                                #   in Loop: Header=BB20_67 Depth=6
	movl	$-1, -708(%rbp)
	jmp	.LBB20_69
	.align	16, 0x90
.LBB20_172:                             #   in Loop: Header=BB20_69 Depth=7
	incl	-708(%rbp)
.LBB20_69:                              #   Parent Loop BB20_57 Depth=1
                                        #     Parent Loop BB20_59 Depth=2
                                        #       Parent Loop BB20_61 Depth=3
                                        #         Parent Loop BB20_63 Depth=4
                                        #           Parent Loop BB20_65 Depth=5
                                        #             Parent Loop BB20_67 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	cmpl	$1, -708(%rbp)
	jg	.LBB20_89
# BB#70:                                #   in Loop: Header=BB20_69 Depth=7
	movl	-692(%rbp), %eax
	addl	-708(%rbp), %eax
	movl	%eax, -712(%rbp)
	movl	-688(%rbp), %eax
	addl	-704(%rbp), %eax
	movl	%eax, -716(%rbp)
	movl	-684(%rbp), %eax
	addl	-700(%rbp), %eax
	movl	%eax, -720(%rbp)
	cmpl	$0, -712(%rbp)
	js	.LBB20_71
# BB#72:                                #   in Loop: Header=BB20_69 Depth=7
	movl	nx(%rip), %eax
	decl	%eax
	cmpl	%eax, -712(%rbp)
	jle	.LBB20_74
# BB#73:                                #   in Loop: Header=BB20_69 Depth=7
	movl	nx(%rip), %eax
	decl	%eax
	movl	%eax, -712(%rbp)
	jmp	.LBB20_74
	.align	16, 0x90
.LBB20_71:                              #   in Loop: Header=BB20_69 Depth=7
	movl	$0, -712(%rbp)
.LBB20_74:                              #   in Loop: Header=BB20_69 Depth=7
	cmpl	$0, -716(%rbp)
	js	.LBB20_75
# BB#76:                                #   in Loop: Header=BB20_69 Depth=7
	movl	ny(%rip), %eax
	decl	%eax
	cmpl	%eax, -716(%rbp)
	jle	.LBB20_78
# BB#77:                                #   in Loop: Header=BB20_69 Depth=7
	movl	ny(%rip), %eax
	decl	%eax
	movl	%eax, -716(%rbp)
	jmp	.LBB20_78
	.align	16, 0x90
.LBB20_75:                              #   in Loop: Header=BB20_69 Depth=7
	movl	$0, -716(%rbp)
.LBB20_78:                              #   in Loop: Header=BB20_69 Depth=7
	cmpl	$0, -720(%rbp)
	js	.LBB20_79
# BB#80:                                #   in Loop: Header=BB20_69 Depth=7
	movl	nz(%rip), %eax
	decl	%eax
	cmpl	%eax, -720(%rbp)
	jle	.LBB20_82
# BB#81:                                #   in Loop: Header=BB20_69 Depth=7
	movl	nz(%rip), %eax
	decl	%eax
	movl	%eax, -720(%rbp)
	jmp	.LBB20_82
	.align	16, 0x90
.LBB20_79:                              #   in Loop: Header=BB20_69 Depth=7
	movl	$0, -720(%rbp)
.LBB20_82:                              #   in Loop: Header=BB20_69 Depth=7
	movl	-712(%rbp), %eax
	movslq	-680(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	(%rdx,%rcx), %eax
	jl	.LBB20_88
# BB#83:                                #   in Loop: Header=BB20_69 Depth=7
	movl	-712(%rbp), %eax
	movslq	-680(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	12(%rdx,%rcx), %eax
	jge	.LBB20_88
# BB#84:                                #   in Loop: Header=BB20_69 Depth=7
	movl	-716(%rbp), %eax
	movslq	-680(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	4(%rdx,%rcx), %eax
	jl	.LBB20_88
# BB#85:                                #   in Loop: Header=BB20_69 Depth=7
	movl	-716(%rbp), %eax
	movslq	-680(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	16(%rdx,%rcx), %eax
	jge	.LBB20_88
# BB#86:                                #   in Loop: Header=BB20_69 Depth=7
	movl	-720(%rbp), %eax
	movslq	-680(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	8(%rdx,%rcx), %eax
	jl	.LBB20_88
# BB#87:                                #   in Loop: Header=BB20_69 Depth=7
	movl	-720(%rbp), %eax
	movslq	-680(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	20(%rdx,%rcx), %eax
	jl	.LBB20_172
	.align	16, 0x90
.LBB20_88:                              #   in Loop: Header=BB20_67 Depth=6
	movslq	-696(%rbp), %rax
	movq	border(%rip), %rcx
	movb	$1, (%rcx,%rax)
.LBB20_89:                              #   in Loop: Header=BB20_67 Depth=6
	movslq	-696(%rbp), %rax
	movq	border(%rip), %rcx
	testb	$1, (%rcx,%rax)
	je	.LBB20_90
.LBB20_91:                              #   in Loop: Header=BB20_65 Depth=5
	movslq	-696(%rbp), %rax
	movq	border(%rip), %rcx
	testb	$1, (%rcx,%rax)
	je	.LBB20_92
	jmp	.LBB20_93
.LBB20_97:
	movl	$attr, %edi
	callq	pthread_attr_init
	movl	$attr, %edi
	xorl	%esi, %esi
	callq	pthread_attr_setdetachstate
	movslq	numCells(%rip), %rax
	movl	$8, %ecx
	mulq	%rcx
	movq	$-1, %r14
	cmovoq	%r14, %rax
.Ltmp96:
	movq	%rax, %rdi
	callq	_Znam
.Ltmp97:
# BB#98:
	movq	%rax, mutex(%rip)
	movl	$0, -724(%rbp)
	movl	$128, %r15d
	movl	$40, %ebx
	jmp	.LBB20_99
	.align	16, 0x90
.LBB20_104:                             #   in Loop: Header=BB20_99 Depth=1
	incl	-724(%rbp)
.LBB20_99:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_102 Depth 2
	movl	-724(%rbp), %eax
	cmpl	numCells(%rip), %eax
	jge	.LBB20_105
# BB#100:                               #   in Loop: Header=BB20_99 Depth=1
	movslq	-724(%rbp), %rax
	movq	border(%rip), %rcx
	testb	$1, (%rcx,%rax)
	movl	$1, %eax
	cmovnel	%r15d, %eax
	movl	%eax, -728(%rbp)
	movslq	-728(%rbp), %rax
	mulq	%rbx
	cmovoq	%r14, %rax
.Ltmp152:
	movq	%rax, %rdi
	callq	_Znam
.Ltmp153:
# BB#101:                               #   in Loop: Header=BB20_99 Depth=1
	movslq	-724(%rbp), %rcx
	movq	mutex(%rip), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	$0, -732(%rbp)
	jmp	.LBB20_102
	.align	16, 0x90
.LBB20_103:                             #   in Loop: Header=BB20_102 Depth=2
	movslq	-732(%rbp), %rax
	movslq	-724(%rbp), %rcx
	movq	mutex(%rip), %rdx
	leaq	(%rax,%rax,4), %rdi
	shlq	$3, %rdi
	addq	(%rdx,%rcx,8), %rdi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	incl	-732(%rbp)
.LBB20_102:                             #   Parent Loop BB20_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-732(%rbp), %eax
	cmpl	-728(%rbp), %eax
	jl	.LBB20_103
	jmp	.LBB20_104
.LBB20_105:
	movl	XDIVS(%rip), %edx
	imull	ZDIVS(%rip), %edx
.Ltmp98:
	movl	$barrier, %edi
	xorl	%esi, %esi
	callq	_Z19parsec_barrier_initP16parsec_barrier_tPKij
.Ltmp99:
# BB#106:
	movslq	numCells(%rip), %rax
	imulq	$896, %rax, %rdx        # imm = 0x380
	movl	$cells, %edi
	movl	$128, %esi
	callq	posix_memalign
	movl	%eax, -736(%rbp)
	movslq	numCells(%rip), %rax
	imulq	$896, %rax, %rdx        # imm = 0x380
	movl	$cells2, %edi
	movl	$128, %esi
	callq	posix_memalign
	movl	%eax, -740(%rbp)
	movslq	numCells(%rip), %rdx
	shlq	$2, %rdx
	movl	$cnumPars, %edi
	movl	$128, %esi
	callq	posix_memalign
	movl	%eax, -744(%rbp)
	movslq	numCells(%rip), %rdx
	shlq	$2, %rdx
	movl	$cnumPars2, %edi
	movl	$128, %esi
	callq	posix_memalign
	movl	%eax, -748(%rbp)
	movslq	numCells(%rip), %rdx
	shlq	$3, %rdx
	movl	$last_cells, %edi
	movl	$128, %esi
	callq	posix_memalign
	movl	%eax, -752(%rbp)
	cmpl	$0, -736(%rbp)
	jne	.LBB20_173
# BB#107:
	cmpl	$0, -740(%rbp)
	jne	.LBB20_173
# BB#108:
	cmpl	$0, -744(%rbp)
	jne	.LBB20_173
# BB#109:
	cmpl	$0, -748(%rbp)
	jne	.LBB20_173
# BB#110:
	cmpl	$0, -752(%rbp)
	jne	.LBB20_173
# BB#111:
	movl	$0, -756(%rbp)
	jmp	.LBB20_112
	.align	16, 0x90
.LBB20_115:                             #   in Loop: Header=BB20_112 Depth=1
	incl	-756(%rbp)
.LBB20_112:                             # =>This Inner Loop Header: Depth=1
	movl	-756(%rbp), %eax
	cmpl	numCells(%rip), %eax
	jge	.LBB20_116
# BB#113:                               #   in Loop: Header=BB20_112 Depth=1
	movslq	-756(%rbp), %rax
	imulq	$896, %rax, %rdi        # imm = 0x380
	addq	cells(%rip), %rdi
.Ltmp147:
	callq	_ZN4CellC2Ev
.Ltmp148:
# BB#114:                               #   in Loop: Header=BB20_112 Depth=1
	movslq	-756(%rbp), %rax
	imulq	$896, %rax, %rdi        # imm = 0x380
	addq	cells2(%rip), %rdi
.Ltmp149:
	callq	_ZN4CellC2Ev
.Ltmp150:
	jmp	.LBB20_115
.LBB20_10:                              # %.loopexit.split-lp.loopexit
.Ltmp151:
	jmp	.LBB20_14
.LBB20_116:
	movq	cnumPars(%rip), %rdi
	movslq	numCells(%rip), %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
	movl	$0, -760(%rbp)
	movl	$0, -800(%rbp)
	leaq	-576(%rbp), %rbx
	leaq	-784(%rbp), %r15
	leaq	-788(%rbp), %r12
	leaq	-792(%rbp), %r13
	leaq	-796(%rbp), %r14
	jmp	.LBB20_117
	.align	16, 0x90
.LBB20_158:                             #   in Loop: Header=BB20_117 Depth=1
	movss	-764(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-828(%rbp), %rax
	movq	-824(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm0, (%rcx,%rax,4)
	movss	-768(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-828(%rbp), %rax
	movq	-824(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm0, 4(%rcx,%rax,4)
	movss	-772(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-828(%rbp), %rax
	movq	-824(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm0, 8(%rcx,%rax,4)
	movss	-776(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-828(%rbp), %rax
	movq	-824(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm0, 192(%rcx,%rax,4)
	movss	-780(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-828(%rbp), %rax
	movq	-824(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm0, 196(%rcx,%rax,4)
	movss	-784(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-828(%rbp), %rax
	movq	-824(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm0, 200(%rcx,%rax,4)
	movss	-788(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-828(%rbp), %rax
	movq	-824(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm0, 384(%rcx,%rax,4)
	movss	-792(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-828(%rbp), %rax
	movq	-824(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm0, 388(%rcx,%rax,4)
	movss	-796(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-828(%rbp), %rax
	movq	-824(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm0, 392(%rcx,%rax,4)
	movslq	-816(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	incl	(%rcx,%rax,4)
	incl	-800(%rbp)
.LBB20_117:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_152 Depth 2
	movl	-800(%rbp), %eax
	cmpl	numParticles(%rip), %eax
	jge	.LBB20_159
# BB#118:                               #   in Loop: Header=BB20_117 Depth=1
.Ltmp106:
	movl	$4, %edx
	movq	%rbx, %rdi
	leaq	-764(%rbp), %rsi
	callq	_ZNSi4readEPcl
.Ltmp107:
# BB#119:                               #   in Loop: Header=BB20_117 Depth=1
.Ltmp108:
	movl	$4, %edx
	movq	%rbx, %rdi
	leaq	-768(%rbp), %rsi
	callq	_ZNSi4readEPcl
.Ltmp109:
# BB#120:                               #   in Loop: Header=BB20_117 Depth=1
.Ltmp110:
	movl	$4, %edx
	movq	%rbx, %rdi
	leaq	-772(%rbp), %rsi
	callq	_ZNSi4readEPcl
.Ltmp111:
# BB#121:                               #   in Loop: Header=BB20_117 Depth=1
.Ltmp112:
	movl	$4, %edx
	movq	%rbx, %rdi
	leaq	-776(%rbp), %rsi
	callq	_ZNSi4readEPcl
.Ltmp113:
# BB#122:                               #   in Loop: Header=BB20_117 Depth=1
.Ltmp114:
	movl	$4, %edx
	movq	%rbx, %rdi
	leaq	-780(%rbp), %rsi
	callq	_ZNSi4readEPcl
.Ltmp115:
# BB#123:                               #   in Loop: Header=BB20_117 Depth=1
.Ltmp116:
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZNSi4readEPcl
.Ltmp117:
# BB#124:                               #   in Loop: Header=BB20_117 Depth=1
.Ltmp118:
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_ZNSi4readEPcl
.Ltmp119:
# BB#125:                               #   in Loop: Header=BB20_117 Depth=1
.Ltmp120:
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_ZNSi4readEPcl
.Ltmp121:
# BB#126:                               #   in Loop: Header=BB20_117 Depth=1
.Ltmp122:
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZNSi4readEPcl
.Ltmp123:
# BB#127:                               #   in Loop: Header=BB20_117 Depth=1
.Ltmp124:
	callq	_ZL14isLittleEndianv
.Ltmp125:
# BB#128:                               #   in Loop: Header=BB20_117 Depth=1
	testl	%eax, %eax
	jne	.LBB20_139
# BB#129:                               #   in Loop: Header=BB20_117 Depth=1
	movss	-764(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
.Ltmp126:
	callq	_ZL11bswap_floatf
.Ltmp127:
# BB#130:                               #   in Loop: Header=BB20_117 Depth=1
	movss	%xmm0, -764(%rbp)
	movss	-768(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
.Ltmp128:
	callq	_ZL11bswap_floatf
.Ltmp129:
# BB#131:                               #   in Loop: Header=BB20_117 Depth=1
	movss	%xmm0, -768(%rbp)
	movss	-772(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
.Ltmp130:
	callq	_ZL11bswap_floatf
.Ltmp131:
# BB#132:                               #   in Loop: Header=BB20_117 Depth=1
	movss	%xmm0, -772(%rbp)
	movss	-776(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
.Ltmp132:
	callq	_ZL11bswap_floatf
.Ltmp133:
# BB#133:                               #   in Loop: Header=BB20_117 Depth=1
	movss	%xmm0, -776(%rbp)
	movss	-780(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
.Ltmp134:
	callq	_ZL11bswap_floatf
.Ltmp135:
# BB#134:                               #   in Loop: Header=BB20_117 Depth=1
	movss	%xmm0, -780(%rbp)
	movss	-784(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
.Ltmp136:
	callq	_ZL11bswap_floatf
.Ltmp137:
# BB#135:                               #   in Loop: Header=BB20_117 Depth=1
	movss	%xmm0, -784(%rbp)
	movss	-788(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
.Ltmp138:
	callq	_ZL11bswap_floatf
.Ltmp139:
# BB#136:                               #   in Loop: Header=BB20_117 Depth=1
	movss	%xmm0, -788(%rbp)
	movss	-792(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
.Ltmp140:
	callq	_ZL11bswap_floatf
.Ltmp141:
# BB#137:                               #   in Loop: Header=BB20_117 Depth=1
	movss	%xmm0, -792(%rbp)
	movss	-796(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
.Ltmp142:
	callq	_ZL11bswap_floatf
.Ltmp143:
# BB#138:                               #   in Loop: Header=BB20_117 Depth=1
	movss	%xmm0, -796(%rbp)
.LBB20_139:                             #   in Loop: Header=BB20_117 Depth=1
	movss	-764(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	subss	_ZL9domainMin.17(%rip), %xmm0
	divss	delta(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -804(%rbp)
	movss	-768(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	subss	_ZL9domainMin.17+4(%rip), %xmm0
	divss	delta+4(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -808(%rbp)
	movss	-772(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	subss	_ZL9domainMin.17+8(%rip), %xmm0
	divss	delta+8(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -812(%rbp)
	cmpl	$0, -804(%rbp)
	js	.LBB20_140
# BB#141:                               #   in Loop: Header=BB20_117 Depth=1
	movl	nx(%rip), %eax
	decl	%eax
	cmpl	%eax, -804(%rbp)
	jle	.LBB20_143
# BB#142:                               #   in Loop: Header=BB20_117 Depth=1
	movl	nx(%rip), %eax
	decl	%eax
	movl	%eax, -804(%rbp)
	jmp	.LBB20_143
	.align	16, 0x90
.LBB20_140:                             #   in Loop: Header=BB20_117 Depth=1
	movl	$0, -804(%rbp)
.LBB20_143:                             #   in Loop: Header=BB20_117 Depth=1
	cmpl	$0, -808(%rbp)
	js	.LBB20_144
# BB#145:                               #   in Loop: Header=BB20_117 Depth=1
	movl	ny(%rip), %eax
	decl	%eax
	cmpl	%eax, -808(%rbp)
	jle	.LBB20_147
# BB#146:                               #   in Loop: Header=BB20_117 Depth=1
	movl	ny(%rip), %eax
	decl	%eax
	movl	%eax, -808(%rbp)
	jmp	.LBB20_147
	.align	16, 0x90
.LBB20_144:                             #   in Loop: Header=BB20_117 Depth=1
	movl	$0, -808(%rbp)
.LBB20_147:                             #   in Loop: Header=BB20_117 Depth=1
	cmpl	$0, -812(%rbp)
	js	.LBB20_148
# BB#149:                               #   in Loop: Header=BB20_117 Depth=1
	movl	nz(%rip), %eax
	decl	%eax
	cmpl	%eax, -812(%rbp)
	jle	.LBB20_151
# BB#150:                               #   in Loop: Header=BB20_117 Depth=1
	movl	nz(%rip), %eax
	decl	%eax
	movl	%eax, -812(%rbp)
	jmp	.LBB20_151
	.align	16, 0x90
.LBB20_148:                             #   in Loop: Header=BB20_117 Depth=1
	movl	$0, -812(%rbp)
.LBB20_151:                             #   in Loop: Header=BB20_117 Depth=1
	movl	-812(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-808(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-804(%rbp), %eax
	movl	%eax, -816(%rbp)
	movslq	-816(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells(%rip), %rax
	movq	%rax, -824(%rbp)
	movslq	-816(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -828(%rbp)
	jmp	.LBB20_152
	.align	16, 0x90
.LBB20_153:                             #   in Loop: Header=BB20_152 Depth=2
	movq	-824(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -824(%rbp)
	addl	$-16, -828(%rbp)
.LBB20_152:                             #   Parent Loop BB20_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$17, -828(%rbp)
	jge	.LBB20_153
# BB#154:                               #   in Loop: Header=BB20_117 Depth=1
	movl	-828(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	cmpl	%ecx, %eax
	jne	.LBB20_158
# BB#155:                               #   in Loop: Header=BB20_117 Depth=1
	movslq	-816(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB20_158
# BB#156:                               #   in Loop: Header=BB20_117 Depth=1
	movslq	-760(%rbp), %rax
	leaq	(%rax,%rax,2), %rdi
	shlq	$3, %rdi
	addq	pools(%rip), %rdi
.Ltmp144:
	callq	_Z16cellpool_getcellP8cellpool
.Ltmp145:
# BB#157:                               #   in Loop: Header=BB20_117 Depth=1
	movq	-824(%rbp), %rcx
	movq	%rax, 832(%rcx)
	movl	-760(%rbp), %eax
	incl	%eax
	movl	XDIVS(%rip), %ecx
	imull	ZDIVS(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -760(%rbp)
	movq	-824(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -824(%rbp)
	addl	$-16, -828(%rbp)
	jmp	.LBB20_158
.LBB20_159:
.Ltmp100:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.20, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp101:
# BB#160:
	movl	numParticles(%rip), %esi
.Ltmp102:
	movq	%rax, %rdi
	callq	_ZNSolsEi
.Ltmp103:
# BB#161:
.Ltmp104:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp105:
# BB#162:
	leaq	-576(%rbp), %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	addq	$792, %rsp              # imm = 0x318
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_9:                               # %.loopexit
.Ltmp146:
.LBB20_14:
	movq	%rax, -584(%rbp)
	movl	%edx, -588(%rbp)
.Ltmp163:
	leaq	-576(%rbp), %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.Ltmp164:
# BB#15:
	movq	-584(%rbp), %rdi
	callq	_Unwind_Resume
.LBB20_163:
.Ltmp165:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB20_169:
	movl	$.L.str.16, %edi
	movl	$.L.str.6.12, %esi
	movl	$202, %edx
	movl	$.L__PRETTY_FUNCTION__._Z7InitSimPKcj, %ecx
	callq	__assert_fail
.LBB20_11:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp154:
	jmp	.LBB20_14
.LBB20_173:
	movl	$.L.str.19, %edi
	movl	$.L.str.6.12, %esi
	movl	$301, %edx              # imm = 0x12D
	movl	$.L__PRETTY_FUNCTION__._Z7InitSimPKcj, %ecx
	callq	__assert_fail
.LBB20_166:
	movl	$.L.str.10.18, %edi
	movl	$.L.str.6.12, %esi
	movl	$184, %edx
	movl	$.L__PRETTY_FUNCTION__._Z7InitSimPKcj, %ecx
	callq	__assert_fail
.LBB20_167:
	movl	$.L.str.12, %edi
	movl	$.L.str.6.12, %esi
	movl	$190, %edx
	movl	$.L__PRETTY_FUNCTION__._Z7InitSimPKcj, %ecx
	callq	__assert_fail
.LBB20_168:
	movl	$.L.str.15, %edi
	movl	$.L.str.6.12, %esi
	movl	$194, %edx
	movl	$.L__PRETTY_FUNCTION__._Z7InitSimPKcj, %ecx
	callq	__assert_fail
.LBB20_164:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.10, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movl	$1, %edi
	callq	exit
.LBB20_165:
	movl	$.L.str.5.11, %edi
	movl	$.L.str.6.12, %esi
	movl	$132, %edx
	movl	$.L__PRETTY_FUNCTION__._Z7InitSimPKcj, %ecx
	callq	__assert_fail
.LBB20_6:
.Ltmp158:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9.15, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp159:
# BB#7:
.Ltmp160:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp161:
# BB#8:
	movl	$1, %edi
	callq	exit
.LBB20_13:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
.Ltmp162:
	jmp	.LBB20_14
.LBB20_171:
	movl	$.L.str.18, %edi
	movl	$.L.str.6.12, %esi
	movl	$219, %edx
	movl	$.L__PRETTY_FUNCTION__._Z7InitSimPKcj, %ecx
	callq	__assert_fail
.Lfunc_end20:
	.size	_Z7InitSimPKcj, .Lfunc_end20-_Z7InitSimPKcj
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table20:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\277\201"              # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\266\001"              # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp60-.Lfunc_begin0   #   Call between .Lfunc_begin0 and .Ltmp60
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp60-.Lfunc_begin0   # >> Call Site 2 <<
	.long	.Ltmp71-.Ltmp60         #   Call between .Ltmp60 and .Ltmp71
	.long	.Ltmp162-.Lfunc_begin0  #     jumps to .Ltmp162
	.byte	0                       #   On action: cleanup
	.long	.Ltmp155-.Lfunc_begin0  # >> Call Site 3 <<
	.long	.Ltmp156-.Ltmp155       #   Call between .Ltmp155 and .Ltmp156
	.long	.Ltmp157-.Lfunc_begin0  #     jumps to .Ltmp157
	.byte	0                       #   On action: cleanup
	.long	.Ltmp72-.Lfunc_begin0   # >> Call Site 4 <<
	.long	.Ltmp97-.Ltmp72         #   Call between .Ltmp72 and .Ltmp97
	.long	.Ltmp162-.Lfunc_begin0  #     jumps to .Ltmp162
	.byte	0                       #   On action: cleanup
	.long	.Ltmp152-.Lfunc_begin0  # >> Call Site 5 <<
	.long	.Ltmp153-.Ltmp152       #   Call between .Ltmp152 and .Ltmp153
	.long	.Ltmp154-.Lfunc_begin0  #     jumps to .Ltmp154
	.byte	0                       #   On action: cleanup
	.long	.Ltmp98-.Lfunc_begin0   # >> Call Site 6 <<
	.long	.Ltmp99-.Ltmp98         #   Call between .Ltmp98 and .Ltmp99
	.long	.Ltmp162-.Lfunc_begin0  #     jumps to .Ltmp162
	.byte	0                       #   On action: cleanup
	.long	.Ltmp147-.Lfunc_begin0  # >> Call Site 7 <<
	.long	.Ltmp150-.Ltmp147       #   Call between .Ltmp147 and .Ltmp150
	.long	.Ltmp151-.Lfunc_begin0  #     jumps to .Ltmp151
	.byte	0                       #   On action: cleanup
	.long	.Ltmp150-.Lfunc_begin0  # >> Call Site 8 <<
	.long	.Ltmp106-.Ltmp150       #   Call between .Ltmp150 and .Ltmp106
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp106-.Lfunc_begin0  # >> Call Site 9 <<
	.long	.Ltmp145-.Ltmp106       #   Call between .Ltmp106 and .Ltmp145
	.long	.Ltmp146-.Lfunc_begin0  #     jumps to .Ltmp146
	.byte	0                       #   On action: cleanup
	.long	.Ltmp100-.Lfunc_begin0  # >> Call Site 10 <<
	.long	.Ltmp105-.Ltmp100       #   Call between .Ltmp100 and .Ltmp105
	.long	.Ltmp162-.Lfunc_begin0  #     jumps to .Ltmp162
	.byte	0                       #   On action: cleanup
	.long	.Ltmp105-.Lfunc_begin0  # >> Call Site 11 <<
	.long	.Ltmp163-.Ltmp105       #   Call between .Ltmp105 and .Ltmp163
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp163-.Lfunc_begin0  # >> Call Site 12 <<
	.long	.Ltmp164-.Ltmp163       #   Call between .Ltmp163 and .Ltmp164
	.long	.Ltmp165-.Lfunc_begin0  #     jumps to .Ltmp165
	.byte	1                       #   On action: 1
	.long	.Ltmp164-.Lfunc_begin0  # >> Call Site 13 <<
	.long	.Ltmp158-.Ltmp164       #   Call between .Ltmp164 and .Ltmp158
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp158-.Lfunc_begin0  # >> Call Site 14 <<
	.long	.Ltmp161-.Ltmp158       #   Call between .Ltmp158 and .Ltmp161
	.long	.Ltmp162-.Lfunc_begin0  #     jumps to .Ltmp162
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.text
	.globl	_Z8SaveFilePKc
	.align	16, 0x90
	.type	_Z8SaveFilePKc,@function
_Z8SaveFilePKc:                         # @_Z8SaveFilePKc
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# BB#0:
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
.Ltmp234:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp235:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$616, %rsp              # imm = 0x268
.Ltmp236:
	.cfi_offset %rbx, -56
.Ltmp237:
	.cfi_offset %r12, -48
.Ltmp238:
	.cfi_offset %r13, -40
.Ltmp239:
	.cfi_offset %r14, -32
.Ltmp240:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movl	$_ZSt4cout, %edi
	movl	$.L.str.21, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.8.14, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movq	-48(%rbp), %rsi
	leaq	-560(%rbp), %rbx
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
	movq	-560(%rbp), %rax
	addq	-24(%rax), %rbx
.Ltmp174:
	movq	%rbx, %rdi
	callq	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv
.Ltmp175:
# BB#1:
	testq	%rax, %rax
	je	.LBB21_2
# BB#7:
.Ltmp176:
	callq	_ZL14isLittleEndianv
.Ltmp177:
# BB#8:
	testl	%eax, %eax
	je	.LBB21_9
# BB#13:
.Ltmp186:
	leaq	-560(%rbp), %rdi
	movl	$restParticlesPerMeter, %esi
	movl	$4, %edx
	callq	_ZNSo5writeEPKcl
.Ltmp187:
# BB#14:
.Ltmp188:
	leaq	-560(%rbp), %rdi
	movl	$numParticles, %esi
	movl	$4, %edx
	callq	_ZNSo5writeEPKcl
.Ltmp189:
	jmp	.LBB21_15
.LBB21_9:
	movss	restParticlesPerMeter(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
.Ltmp178:
	callq	_ZL11bswap_floatf
.Ltmp179:
# BB#10:
	movss	%xmm0, -576(%rbp)
	movl	numParticles(%rip), %edi
.Ltmp180:
	callq	_ZL11bswap_int32i
.Ltmp181:
# BB#11:
	movl	%eax, -580(%rbp)
.Ltmp182:
	leaq	-560(%rbp), %rdi
	leaq	-576(%rbp), %rsi
	movl	$4, %edx
	callq	_ZNSo5writeEPKcl
.Ltmp183:
# BB#12:
.Ltmp184:
	leaq	-560(%rbp), %rdi
	leaq	-580(%rbp), %rsi
	movl	$4, %edx
	callq	_ZNSo5writeEPKcl
.Ltmp185:
.LBB21_15:
	movl	$0, -584(%rbp)
	movl	$0, -588(%rbp)
	leaq	-560(%rbp), %rbx
	leaq	-632(%rbp), %r15
	leaq	-636(%rbp), %r12
	leaq	-640(%rbp), %r13
	leaq	-644(%rbp), %r14
	jmp	.LBB21_16
	.align	16, 0x90
.LBB21_43:                              #   in Loop: Header=BB21_16 Depth=1
	incl	-588(%rbp)
.LBB21_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_18 Depth 2
	movl	-588(%rbp), %eax
	cmpl	numCells(%rip), %eax
	jge	.LBB21_44
# BB#17:                                #   in Loop: Header=BB21_16 Depth=1
	movslq	-588(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells(%rip), %rax
	movq	%rax, -600(%rbp)
	movslq	-588(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -604(%rbp)
	movl	$0, -608(%rbp)
	jmp	.LBB21_18
	.align	16, 0x90
.LBB21_42:                              #   in Loop: Header=BB21_18 Depth=2
	incl	-608(%rbp)
.LBB21_18:                              #   Parent Loop BB21_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-608(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jge	.LBB21_43
# BB#19:                                #   in Loop: Header=BB21_18 Depth=2
.Ltmp191:
	callq	_ZL14isLittleEndianv
.Ltmp192:
# BB#20:                                #   in Loop: Header=BB21_18 Depth=2
	testl	%eax, %eax
	je	.LBB21_21
# BB#30:                                #   in Loop: Header=BB21_18 Depth=2
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -612(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	4(%rcx,%rax,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -616(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	8(%rcx,%rax,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -620(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	192(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -624(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	196(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -628(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	200(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -632(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	384(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -636(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	388(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -640(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	392(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB21_31
	.align	16, 0x90
.LBB21_21:                              #   in Loop: Header=BB21_18 Depth=2
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
.Ltmp193:
	callq	_ZL11bswap_floatf
.Ltmp194:
# BB#22:                                #   in Loop: Header=BB21_18 Depth=2
	movss	%xmm0, -612(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	4(%rcx,%rax,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
.Ltmp195:
	callq	_ZL11bswap_floatf
.Ltmp196:
# BB#23:                                #   in Loop: Header=BB21_18 Depth=2
	movss	%xmm0, -616(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	8(%rcx,%rax,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
.Ltmp197:
	callq	_ZL11bswap_floatf
.Ltmp198:
# BB#24:                                #   in Loop: Header=BB21_18 Depth=2
	movss	%xmm0, -620(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	192(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
.Ltmp199:
	callq	_ZL11bswap_floatf
.Ltmp200:
# BB#25:                                #   in Loop: Header=BB21_18 Depth=2
	movss	%xmm0, -624(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	196(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
.Ltmp201:
	callq	_ZL11bswap_floatf
.Ltmp202:
# BB#26:                                #   in Loop: Header=BB21_18 Depth=2
	movss	%xmm0, -628(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	200(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
.Ltmp203:
	callq	_ZL11bswap_floatf
.Ltmp204:
# BB#27:                                #   in Loop: Header=BB21_18 Depth=2
	movss	%xmm0, -632(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	384(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
.Ltmp205:
	callq	_ZL11bswap_floatf
.Ltmp206:
# BB#28:                                #   in Loop: Header=BB21_18 Depth=2
	movss	%xmm0, -636(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	388(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
.Ltmp207:
	callq	_ZL11bswap_floatf
.Ltmp208:
# BB#29:                                #   in Loop: Header=BB21_18 Depth=2
	movss	%xmm0, -640(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-600(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	392(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
.Ltmp209:
	callq	_ZL11bswap_floatf
.Ltmp210:
.LBB21_31:                              #   in Loop: Header=BB21_18 Depth=2
	movss	%xmm0, -644(%rbp)
.Ltmp211:
	movl	$4, %edx
	movq	%rbx, %rdi
	leaq	-612(%rbp), %rsi
	callq	_ZNSo5writeEPKcl
.Ltmp212:
# BB#32:                                #   in Loop: Header=BB21_18 Depth=2
.Ltmp213:
	movl	$4, %edx
	movq	%rbx, %rdi
	leaq	-616(%rbp), %rsi
	callq	_ZNSo5writeEPKcl
.Ltmp214:
# BB#33:                                #   in Loop: Header=BB21_18 Depth=2
.Ltmp215:
	movl	$4, %edx
	movq	%rbx, %rdi
	leaq	-620(%rbp), %rsi
	callq	_ZNSo5writeEPKcl
.Ltmp216:
# BB#34:                                #   in Loop: Header=BB21_18 Depth=2
.Ltmp217:
	movl	$4, %edx
	movq	%rbx, %rdi
	leaq	-624(%rbp), %rsi
	callq	_ZNSo5writeEPKcl
.Ltmp218:
# BB#35:                                #   in Loop: Header=BB21_18 Depth=2
.Ltmp219:
	movl	$4, %edx
	movq	%rbx, %rdi
	leaq	-628(%rbp), %rsi
	callq	_ZNSo5writeEPKcl
.Ltmp220:
# BB#36:                                #   in Loop: Header=BB21_18 Depth=2
.Ltmp221:
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZNSo5writeEPKcl
.Ltmp222:
# BB#37:                                #   in Loop: Header=BB21_18 Depth=2
.Ltmp223:
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_ZNSo5writeEPKcl
.Ltmp224:
# BB#38:                                #   in Loop: Header=BB21_18 Depth=2
.Ltmp225:
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_ZNSo5writeEPKcl
.Ltmp226:
# BB#39:                                #   in Loop: Header=BB21_18 Depth=2
.Ltmp227:
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZNSo5writeEPKcl
.Ltmp228:
# BB#40:                                #   in Loop: Header=BB21_18 Depth=2
	incl	-584(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cmpl	$15, %eax
	jne	.LBB21_42
# BB#41:                                #   in Loop: Header=BB21_18 Depth=2
	movq	-600(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -600(%rbp)
	jmp	.LBB21_42
.LBB21_44:
	movl	-584(%rbp), %eax
	cmpl	numParticles(%rip), %eax
	jne	.LBB21_47
# BB#45:
	leaq	-560(%rbp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_3:                               # %.loopexit
.Ltmp229:
.LBB21_5:
	movq	%rax, -568(%rbp)
	movl	%edx, -572(%rbp)
.Ltmp230:
	leaq	-560(%rbp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.Ltmp231:
# BB#6:
	movq	-568(%rbp), %rdi
	callq	_Unwind_Resume
.LBB21_46:
.Ltmp232:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB21_4:                               # %.loopexit.split-lp
.Ltmp190:
	jmp	.LBB21_5
.LBB21_2:
	movl	$.L.str.22, %edi
	movl	$.L.str.6.12, %esi
	movl	$396, %edx              # imm = 0x18C
	movl	$.L__PRETTY_FUNCTION__._Z8SaveFilePKc, %ecx
	callq	__assert_fail
.LBB21_47:
	movl	$.L.str.23, %edi
	movl	$.L.str.6.12, %esi
	movl	$460, %edx              # imm = 0x1CC
	movl	$.L__PRETTY_FUNCTION__._Z8SaveFilePKc, %ecx
	callq	__assert_fail
.Lfunc_end21:
	.size	_Z8SaveFilePKc, .Lfunc_end21-_Z8SaveFilePKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table21:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.long	.Ltmp174-.Lfunc_begin1  #   Call between .Lfunc_begin1 and .Ltmp174
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp174-.Lfunc_begin1  # >> Call Site 2 <<
	.long	.Ltmp185-.Ltmp174       #   Call between .Ltmp174 and .Ltmp185
	.long	.Ltmp190-.Lfunc_begin1  #     jumps to .Ltmp190
	.byte	0                       #   On action: cleanup
	.long	.Ltmp191-.Lfunc_begin1  # >> Call Site 3 <<
	.long	.Ltmp228-.Ltmp191       #   Call between .Ltmp191 and .Ltmp228
	.long	.Ltmp229-.Lfunc_begin1  #     jumps to .Ltmp229
	.byte	0                       #   On action: cleanup
	.long	.Ltmp228-.Lfunc_begin1  # >> Call Site 4 <<
	.long	.Ltmp230-.Ltmp228       #   Call between .Ltmp228 and .Ltmp230
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp230-.Lfunc_begin1  # >> Call Site 5 <<
	.long	.Ltmp231-.Ltmp230       #   Call between .Ltmp230 and .Ltmp231
	.long	.Ltmp232-.Lfunc_begin1  #     jumps to .Ltmp232
	.byte	1                       #   On action: 1
	.long	.Ltmp231-.Lfunc_begin1  # >> Call Site 6 <<
	.long	.Lfunc_end21-.Ltmp231   #   Call between .Ltmp231 and .Lfunc_end21
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.text
	.globl	_Z10CleanUpSimv
	.align	16, 0x90
	.type	_Z10CleanUpSimv,@function
_Z10CleanUpSimv:                        # @_Z10CleanUpSimv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp241:
	.cfi_def_cfa_offset 16
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp243:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp244:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	jmp	.LBB22_1
	.align	16, 0x90
.LBB22_5:                               #   in Loop: Header=BB22_1 Depth=1
	incl	-12(%rbp)
.LBB22_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_3 Depth 2
	movl	-12(%rbp), %eax
	cmpl	numCells(%rip), %eax
	jge	.LBB22_6
# BB#2:                                 #   in Loop: Header=BB22_1 Depth=1
	movslq	-12(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB22_3
	.align	16, 0x90
.LBB22_4:                               #   in Loop: Header=BB22_3 Depth=2
	movq	-24(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	832(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 832(%rcx)
	movq	pools(%rip), %rdi
	movq	-32(%rbp), %rsi
	callq	_Z19cellpool_returncellP8cellpoolP4Cell
.LBB22_3:                               #   Parent Loop BB22_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	cmpq	$0, 832(%rax)
	jne	.LBB22_4
	jmp	.LBB22_5
.LBB22_6:
	movl	$0, -36(%rbp)
	jmp	.LBB22_7
	.align	16, 0x90
.LBB22_8:                               #   in Loop: Header=BB22_7 Depth=1
	movslq	-36(%rbp), %rax
	leaq	(%rax,%rax,2), %rdi
	shlq	$3, %rdi
	addq	pools(%rip), %rdi
	callq	_Z16cellpool_destroyP8cellpool
	incl	-36(%rbp)
.LBB22_7:                               # =>This Inner Loop Header: Depth=1
	movl	XDIVS(%rip), %eax
	imull	ZDIVS(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jl	.LBB22_8
# BB#9:
	movl	$attr, %edi
	callq	pthread_attr_destroy
	movl	$0, -40(%rbp)
	movl	$128, %ebx
	jmp	.LBB22_10
	.align	16, 0x90
.LBB22_16:                              #   in Loop: Header=BB22_10 Depth=1
	incl	-40(%rbp)
.LBB22_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_12 Depth 2
	movl	-40(%rbp), %eax
	cmpl	numCells(%rip), %eax
	jge	.LBB22_17
# BB#11:                                #   in Loop: Header=BB22_10 Depth=1
	movslq	-40(%rbp), %rax
	movq	border(%rip), %rcx
	testb	$1, (%rcx,%rax)
	movl	$1, %eax
	cmovnel	%ebx, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
	jmp	.LBB22_12
	.align	16, 0x90
.LBB22_13:                              #   in Loop: Header=BB22_12 Depth=2
	movslq	-48(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	mutex(%rip), %rdx
	leaq	(%rax,%rax,4), %rdi
	shlq	$3, %rdi
	addq	(%rdx,%rcx,8), %rdi
	callq	pthread_mutex_destroy
	incl	-48(%rbp)
.LBB22_12:                              #   Parent Loop BB22_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB22_13
# BB#14:                                #   in Loop: Header=BB22_10 Depth=1
	movslq	-40(%rbp), %rax
	movq	mutex(%rip), %rcx
	movq	(%rcx,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.LBB22_16
# BB#15:                                #   in Loop: Header=BB22_10 Depth=1
	callq	_ZdaPv
	jmp	.LBB22_16
.LBB22_17:
	movq	mutex(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB22_19
# BB#18:
	callq	_ZdaPv
.LBB22_19:
	movl	$barrier, %edi
	callq	_Z22parsec_barrier_destroyP16parsec_barrier_t
	movq	border(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB22_21
# BB#20:
	callq	_ZdaPv
.LBB22_21:
	movq	cells(%rip), %rdi
	callq	free
	movq	cells2(%rip), %rdi
	callq	free
	movq	cnumPars(%rip), %rdi
	callq	free
	movq	cnumPars2(%rip), %rdi
	callq	free
	movq	last_cells(%rip), %rdi
	callq	free
	movq	thread(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB22_23
# BB#22:
	callq	_ZdaPv
.LBB22_23:
	movq	grids(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB22_25
# BB#24:
	callq	_ZdaPv
.LBB22_25:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	_Z10CleanUpSimv, .Lfunc_end22-_Z10CleanUpSimv
	.cfi_endproc

	.globl	_Z16ClearParticlesMTi
	.align	16, 0x90
	.type	_Z16ClearParticlesMTi,@function
_Z16ClearParticlesMTi:                  # @_Z16ClearParticlesMTi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp245:
	.cfi_def_cfa_offset 16
.Ltmp246:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp247:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	8(%rcx,%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB23_1
	.align	16, 0x90
.LBB23_8:                               #   in Loop: Header=BB23_1 Depth=1
	incl	-8(%rbp)
.LBB23_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_3 Depth 2
                                        #       Child Loop BB23_5 Depth 3
	movl	-8(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	20(%rdx,%rcx), %eax
	jge	.LBB23_9
# BB#2:                                 #   in Loop: Header=BB23_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	4(%rcx,%rax), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB23_3
	.align	16, 0x90
.LBB23_7:                               #   in Loop: Header=BB23_3 Depth=2
	incl	-12(%rbp)
.LBB23_3:                               #   Parent Loop BB23_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_5 Depth 3
	movl	-12(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	16(%rdx,%rcx), %eax
	jge	.LBB23_8
# BB#4:                                 #   in Loop: Header=BB23_3 Depth=2
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB23_5
	.align	16, 0x90
.LBB23_6:                               #   in Loop: Header=BB23_5 Depth=3
	movl	-8(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-12(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	$0, (%rcx,%rax,4)
	movslq	-20(%rbp), %rax
	movq	cells(%rip), %rcx
	imulq	$896, %rax, %rax        # imm = 0x380
	movq	$0, 832(%rcx,%rax)
	movslq	-20(%rbp), %rax
	imulq	$896, %rax, %rcx        # imm = 0x380
	addq	cells(%rip), %rcx
	movq	last_cells(%rip), %rdx
	movq	%rcx, (%rdx,%rax,8)
	incl	-16(%rbp)
.LBB23_5:                               #   Parent Loop BB23_1 Depth=1
                                        #     Parent Loop BB23_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-16(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	12(%rdx,%rcx), %eax
	jl	.LBB23_6
	jmp	.LBB23_7
.LBB23_9:
	popq	%rbp
	retq
.Lfunc_end23:
	.size	_Z16ClearParticlesMTi, .Lfunc_end23-_Z16ClearParticlesMTi
	.cfi_endproc

	.globl	_Z13RebuildGridMTi
	.align	16, 0x90
	.type	_Z13RebuildGridMTi,@function
_Z13RebuildGridMTi:                     # @_Z13RebuildGridMTi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp248:
	.cfi_def_cfa_offset 16
.Ltmp249:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp250:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	8(%rcx,%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB24_1
	.align	16, 0x90
.LBB24_36:                              #   in Loop: Header=BB24_1 Depth=1
	incl	-8(%rbp)
.LBB24_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_3 Depth 2
                                        #       Child Loop BB24_5 Depth 3
                                        #         Child Loop BB24_7 Depth 4
	movl	-8(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	20(%rdx,%rcx), %eax
	jge	.LBB24_37
# BB#2:                                 #   in Loop: Header=BB24_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	4(%rcx,%rax), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB24_3
	.align	16, 0x90
.LBB24_35:                              #   in Loop: Header=BB24_3 Depth=2
	incl	-12(%rbp)
.LBB24_3:                               #   Parent Loop BB24_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_5 Depth 3
                                        #         Child Loop BB24_7 Depth 4
	movl	-12(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	16(%rdx,%rcx), %eax
	jge	.LBB24_36
# BB#4:                                 #   in Loop: Header=BB24_3 Depth=2
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB24_5
	.align	16, 0x90
.LBB24_34:                              #   in Loop: Header=BB24_5 Depth=3
	incl	-16(%rbp)
.LBB24_5:                               #   Parent Loop BB24_1 Depth=1
                                        #     Parent Loop BB24_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB24_7 Depth 4
	movl	-16(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	12(%rdx,%rcx), %eax
	jge	.LBB24_35
# BB#6:                                 #   in Loop: Header=BB24_5 Depth=3
	movl	-8(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-12(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells2(%rip), %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	movq	cnumPars2(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.LBB24_7
	.align	16, 0x90
.LBB24_30:                              #   in Loop: Header=BB24_7 Depth=4
	incl	-40(%rbp)
.LBB24_7:                               #   Parent Loop BB24_1 Depth=1
                                        #     Parent Loop BB24_3 Depth=2
                                        #       Parent Loop BB24_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB24_31
# BB#8:                                 #   in Loop: Header=BB24_7 Depth=4
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	subss	_ZL9domainMin.17(%rip), %xmm0
	divss	delta(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	4(%rcx,%rax,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	_ZL9domainMin.17+4(%rip), %xmm0
	divss	delta+4(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	8(%rcx,%rax,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	_ZL9domainMin.17+8(%rip), %xmm0
	divss	delta+8(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -44(%rbp)
	js	.LBB24_9
# BB#10:                                #   in Loop: Header=BB24_7 Depth=4
	movl	nx(%rip), %eax
	decl	%eax
	cmpl	%eax, -44(%rbp)
	jle	.LBB24_12
# BB#11:                                #   in Loop: Header=BB24_7 Depth=4
	movl	nx(%rip), %eax
	decl	%eax
	movl	%eax, -44(%rbp)
	jmp	.LBB24_12
	.align	16, 0x90
.LBB24_9:                               #   in Loop: Header=BB24_7 Depth=4
	movl	$0, -44(%rbp)
.LBB24_12:                              #   in Loop: Header=BB24_7 Depth=4
	cmpl	$0, -48(%rbp)
	js	.LBB24_13
# BB#14:                                #   in Loop: Header=BB24_7 Depth=4
	movl	ny(%rip), %eax
	decl	%eax
	cmpl	%eax, -48(%rbp)
	jle	.LBB24_16
# BB#15:                                #   in Loop: Header=BB24_7 Depth=4
	movl	ny(%rip), %eax
	decl	%eax
	movl	%eax, -48(%rbp)
	jmp	.LBB24_16
	.align	16, 0x90
.LBB24_13:                              #   in Loop: Header=BB24_7 Depth=4
	movl	$0, -48(%rbp)
.LBB24_16:                              #   in Loop: Header=BB24_7 Depth=4
	cmpl	$0, -52(%rbp)
	js	.LBB24_17
# BB#18:                                #   in Loop: Header=BB24_7 Depth=4
	movl	nz(%rip), %eax
	decl	%eax
	cmpl	%eax, -52(%rbp)
	jle	.LBB24_20
# BB#19:                                #   in Loop: Header=BB24_7 Depth=4
	movl	nz(%rip), %eax
	decl	%eax
	movl	%eax, -52(%rbp)
	jmp	.LBB24_20
	.align	16, 0x90
.LBB24_17:                              #   in Loop: Header=BB24_7 Depth=4
	movl	$0, -52(%rbp)
.LBB24_20:                              #   in Loop: Header=BB24_7 Depth=4
	movl	-52(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-48(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -56(%rbp)
	movslq	-56(%rbp), %rax
	movq	border(%rip), %rcx
	testb	$1, (%rcx,%rax)
	je	.LBB24_22
# BB#21:                                #   in Loop: Header=BB24_7 Depth=4
	movslq	-56(%rbp), %rax
	movq	mutex(%rip), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	pthread_mutex_lock
.LBB24_22:                              #   in Loop: Header=BB24_7 Depth=4
	movslq	-56(%rbp), %rax
	movq	last_cells(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movslq	-56(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -68(%rbp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	cmpl	%ecx, %eax
	jne	.LBB24_25
# BB#23:                                #   in Loop: Header=BB24_7 Depth=4
	movslq	-56(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB24_25
# BB#24:                                #   in Loop: Header=BB24_7 Depth=4
	movslq	-4(%rbp), %rax
	leaq	(%rax,%rax,2), %rdi
	shlq	$3, %rdi
	addq	pools(%rip), %rdi
	callq	_Z16cellpool_getcellP8cellpool
	movq	-64(%rbp), %rcx
	movq	%rax, 832(%rcx)
	movq	-64(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -64(%rbp)
	movslq	-56(%rbp), %rcx
	movq	last_cells(%rip), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB24_25:                              #   in Loop: Header=BB24_7 Depth=4
	movslq	-56(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	incl	(%rcx,%rax,4)
	movslq	-56(%rbp), %rax
	movq	border(%rip), %rcx
	testb	$1, (%rcx,%rax)
	je	.LBB24_27
# BB#26:                                #   in Loop: Header=BB24_7 Depth=4
	movslq	-56(%rbp), %rax
	movq	mutex(%rip), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	pthread_mutex_unlock
.LBB24_27:                              #   in Loop: Header=BB24_7 Depth=4
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-64(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	-40(%rbp), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	leal	(%rsi,%rdx), %esi
	andl	$-16, %esi
	subl	%esi, %edx
	movslq	%edx, %rdx
	movq	-32(%rbp), %rsi
	leaq	(%rdx,%rdx,2), %rdx
	movl	8(%rsi,%rdx,4), %edi
	movl	%edi, 8(%rcx,%rax,4)
	movq	(%rsi,%rdx,4), %rdx
	movq	%rdx, (%rcx,%rax,4)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-64(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	-40(%rbp), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	leal	(%rsi,%rdx), %esi
	andl	$-16, %esi
	subl	%esi, %edx
	movslq	%edx, %rdx
	movq	-32(%rbp), %rsi
	leaq	(%rdx,%rdx,2), %rdx
	movl	200(%rsi,%rdx,4), %edi
	movl	%edi, 200(%rcx,%rax,4)
	movq	192(%rsi,%rdx,4), %rdx
	movq	%rdx, 192(%rcx,%rax,4)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-64(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	-40(%rbp), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	leal	(%rsi,%rdx), %esi
	andl	$-16, %esi
	subl	%esi, %edx
	movslq	%edx, %rdx
	movq	-32(%rbp), %rsi
	leaq	(%rdx,%rdx,2), %rdx
	movl	392(%rsi,%rdx,4), %edi
	movl	%edi, 392(%rcx,%rax,4)
	movq	384(%rsi,%rdx,4), %rdx
	movq	%rdx, 384(%rcx,%rax,4)
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cmpl	$15, %eax
	jne	.LBB24_30
# BB#28:                                #   in Loop: Header=BB24_7 Depth=4
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells2(%rip), %rax
	cmpq	%rax, -80(%rbp)
	je	.LBB24_30
# BB#29:                                #   in Loop: Header=BB24_7 Depth=4
	movslq	-4(%rbp), %rax
	leaq	(%rax,%rax,2), %rdi
	shlq	$3, %rdi
	addq	pools(%rip), %rdi
	movq	-80(%rbp), %rsi
	callq	_Z19cellpool_returncellP8cellpoolP4Cell
	jmp	.LBB24_30
	.align	16, 0x90
.LBB24_31:                              #   in Loop: Header=BB24_5 Depth=3
	cmpq	$0, -32(%rbp)
	je	.LBB24_34
# BB#32:                                #   in Loop: Header=BB24_5 Depth=3
	movslq	-20(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells2(%rip), %rax
	cmpq	%rax, -32(%rbp)
	je	.LBB24_34
# BB#33:                                #   in Loop: Header=BB24_5 Depth=3
	movslq	-4(%rbp), %rax
	leaq	(%rax,%rax,2), %rdi
	shlq	$3, %rdi
	addq	pools(%rip), %rdi
	movq	-32(%rbp), %rsi
	callq	_Z19cellpool_returncellP8cellpoolP4Cell
	jmp	.LBB24_34
.LBB24_37:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	_Z13RebuildGridMTi, .Lfunc_end24-_Z13RebuildGridMTi
	.cfi_endproc

	.globl	_Z17InitNeighCellListiiiPi
	.align	16, 0x90
	.type	_Z17InitNeighCellListiiiPi,@function
_Z17InitNeighCellListiiiPi:             # @_Z17InitNeighCellListiiiPi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp251:
	.cfi_def_cfa_offset 16
.Ltmp252:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp253:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	-12(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-8(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -32(%rbp)
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	incl	-28(%rbp)
	movl	$-1, -36(%rbp)
	jmp	.LBB25_1
	.align	16, 0x90
.LBB25_17:                              #   in Loop: Header=BB25_1 Depth=1
	incl	-36(%rbp)
.LBB25_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_3 Depth 2
                                        #       Child Loop BB25_5 Depth 3
	cmpl	$1, -36(%rbp)
	jg	.LBB25_18
# BB#2:                                 #   in Loop: Header=BB25_1 Depth=1
	movl	$-1, -40(%rbp)
	jmp	.LBB25_3
	.align	16, 0x90
.LBB25_16:                              #   in Loop: Header=BB25_3 Depth=2
	incl	-40(%rbp)
.LBB25_3:                               #   Parent Loop BB25_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_5 Depth 3
	cmpl	$1, -40(%rbp)
	jg	.LBB25_17
# BB#4:                                 #   in Loop: Header=BB25_3 Depth=2
	movl	$-1, -44(%rbp)
	jmp	.LBB25_5
	.align	16, 0x90
.LBB25_15:                              #   in Loop: Header=BB25_5 Depth=3
	incl	-44(%rbp)
.LBB25_5:                               #   Parent Loop BB25_1 Depth=1
                                        #     Parent Loop BB25_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$1, -44(%rbp)
	jg	.LBB25_16
# BB#6:                                 #   in Loop: Header=BB25_5 Depth=3
	movl	-4(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-8(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-12(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -48(%rbp)
	js	.LBB25_15
# BB#7:                                 #   in Loop: Header=BB25_5 Depth=3
	movl	-48(%rbp), %eax
	cmpl	nx(%rip), %eax
	jge	.LBB25_15
# BB#8:                                 #   in Loop: Header=BB25_5 Depth=3
	cmpl	$0, -52(%rbp)
	js	.LBB25_15
# BB#9:                                 #   in Loop: Header=BB25_5 Depth=3
	movl	-52(%rbp), %eax
	cmpl	ny(%rip), %eax
	jge	.LBB25_15
# BB#10:                                #   in Loop: Header=BB25_5 Depth=3
	cmpl	$0, -56(%rbp)
	js	.LBB25_15
# BB#11:                                #   in Loop: Header=BB25_5 Depth=3
	movl	-56(%rbp), %eax
	cmpl	nz(%rip), %eax
	jge	.LBB25_15
# BB#12:                                #   in Loop: Header=BB25_5 Depth=3
	movl	-56(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-52(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	cmpl	-32(%rbp), %eax
	jge	.LBB25_15
# BB#13:                                #   in Loop: Header=BB25_5 Depth=3
	movslq	-60(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB25_15
# BB#14:                                #   in Loop: Header=BB25_5 Depth=3
	movl	-60(%rbp), %eax
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	incl	-28(%rbp)
	jmp	.LBB25_15
.LBB25_18:
	movl	-28(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	_Z17InitNeighCellListiiiPi, .Lfunc_end25-_Z17InitNeighCellListiiiPi
	.cfi_endproc

	.globl	_Z24InitDensitiesAndForcesMTi
	.align	16, 0x90
	.type	_Z24InitDensitiesAndForcesMTi,@function
_Z24InitDensitiesAndForcesMTi:          # @_Z24InitDensitiesAndForcesMTi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
.Ltmp255:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp256:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	8(%rcx,%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB26_1
	.align	16, 0x90
.LBB26_13:                              #   in Loop: Header=BB26_1 Depth=1
	incl	-8(%rbp)
.LBB26_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_3 Depth 2
                                        #       Child Loop BB26_5 Depth 3
                                        #         Child Loop BB26_7 Depth 4
	movl	-8(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	20(%rdx,%rcx), %eax
	jge	.LBB26_14
# BB#2:                                 #   in Loop: Header=BB26_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	4(%rcx,%rax), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB26_3
	.align	16, 0x90
.LBB26_12:                              #   in Loop: Header=BB26_3 Depth=2
	incl	-12(%rbp)
.LBB26_3:                               #   Parent Loop BB26_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_5 Depth 3
                                        #         Child Loop BB26_7 Depth 4
	movl	-12(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	16(%rdx,%rcx), %eax
	jge	.LBB26_13
# BB#4:                                 #   in Loop: Header=BB26_3 Depth=2
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB26_5
	.align	16, 0x90
.LBB26_11:                              #   in Loop: Header=BB26_5 Depth=3
	incl	-16(%rbp)
.LBB26_5:                               #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB26_7 Depth 4
	movl	-16(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	12(%rdx,%rcx), %eax
	jge	.LBB26_12
# BB#6:                                 #   in Loop: Header=BB26_5 Depth=3
	movl	-8(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-12(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells(%rip), %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.LBB26_7
	.align	16, 0x90
.LBB26_10:                              #   in Loop: Header=BB26_7 Depth=4
	incl	-40(%rbp)
.LBB26_7:                               #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_3 Depth=2
                                        #       Parent Loop BB26_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB26_11
# BB#8:                                 #   in Loop: Header=BB26_7 Depth=4
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-32(%rbp), %rcx
	movl	$0, 768(%rcx,%rax,4)
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	_ZL20externalAcceleration.19+8(%rip), %edx
	movl	%edx, 584(%rcx,%rax,4)
	movq	_ZL20externalAcceleration.19(%rip), %rdx
	movq	%rdx, 576(%rcx,%rax,4)
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cmpl	$15, %eax
	jne	.LBB26_10
# BB#9:                                 #   in Loop: Header=BB26_7 Depth=4
	movq	-32(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB26_10
.LBB26_14:
	popq	%rbp
	retq
.Lfunc_end26:
	.size	_Z24InitDensitiesAndForcesMTi, .Lfunc_end26-_Z24InitDensitiesAndForcesMTi
	.cfi_endproc

	.globl	_Z18ComputeDensitiesMTi
	.align	16, 0x90
	.type	_Z18ComputeDensitiesMTi,@function
_Z18ComputeDensitiesMTi:                # @_Z18ComputeDensitiesMTi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp257:
	.cfi_def_cfa_offset 16
.Ltmp258:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp259:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$224, %rsp
.Ltmp260:
	.cfi_offset %rbx, -32
.Ltmp261:
	.cfi_offset %r14, -24
	movl	%edi, -20(%rbp)
	movslq	-20(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	8(%rcx,%rax), %eax
	movl	%eax, -132(%rbp)
	leaq	-128(%rbp), %r14
	leaq	-208(%rbp), %rbx
	jmp	.LBB27_1
	.align	16, 0x90
.LBB27_30:                              #   in Loop: Header=BB27_1 Depth=1
	incl	-132(%rbp)
.LBB27_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_3 Depth 2
                                        #       Child Loop BB27_5 Depth 3
                                        #         Child Loop BB27_8 Depth 4
                                        #           Child Loop BB27_10 Depth 5
                                        #             Child Loop BB27_12 Depth 6
	movl	-132(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	20(%rdx,%rcx), %eax
	jge	.LBB27_31
# BB#2:                                 #   in Loop: Header=BB27_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	4(%rcx,%rax), %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB27_3
	.align	16, 0x90
.LBB27_29:                              #   in Loop: Header=BB27_3 Depth=2
	incl	-136(%rbp)
.LBB27_3:                               #   Parent Loop BB27_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_5 Depth 3
                                        #         Child Loop BB27_8 Depth 4
                                        #           Child Loop BB27_10 Depth 5
                                        #             Child Loop BB27_12 Depth 6
	movl	-136(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	16(%rdx,%rcx), %eax
	jge	.LBB27_30
# BB#4:                                 #   in Loop: Header=BB27_3 Depth=2
	movslq	-20(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB27_5
	.align	16, 0x90
.LBB27_28:                              #   in Loop: Header=BB27_5 Depth=3
	incl	-140(%rbp)
.LBB27_5:                               #   Parent Loop BB27_1 Depth=1
                                        #     Parent Loop BB27_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB27_8 Depth 4
                                        #           Child Loop BB27_10 Depth 5
                                        #             Child Loop BB27_12 Depth 6
	movl	-140(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	12(%rdx,%rcx), %eax
	jge	.LBB27_29
# BB#6:                                 #   in Loop: Header=BB27_5 Depth=3
	movl	-132(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-136(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	movslq	-144(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -148(%rbp)
	testl	%eax, %eax
	je	.LBB27_28
# BB#7:                                 #   in Loop: Header=BB27_5 Depth=3
	movl	-140(%rbp), %edi
	movl	-136(%rbp), %esi
	movl	-132(%rbp), %edx
	movq	%r14, %rcx
	callq	_Z17InitNeighCellListiiiPi
	movl	%eax, -152(%rbp)
	movslq	-144(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells(%rip), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -164(%rbp)
	jmp	.LBB27_8
	.align	16, 0x90
.LBB27_27:                              #   in Loop: Header=BB27_8 Depth=4
	incl	-164(%rbp)
.LBB27_8:                               #   Parent Loop BB27_1 Depth=1
                                        #     Parent Loop BB27_3 Depth=2
                                        #       Parent Loop BB27_5 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB27_10 Depth 5
                                        #             Child Loop BB27_12 Depth 6
	movl	-164(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB27_28
# BB#9:                                 #   in Loop: Header=BB27_8 Depth=4
	movl	$0, -168(%rbp)
	jmp	.LBB27_10
	.align	16, 0x90
.LBB27_24:                              #   in Loop: Header=BB27_10 Depth=5
	incl	-168(%rbp)
.LBB27_10:                              #   Parent Loop BB27_1 Depth=1
                                        #     Parent Loop BB27_3 Depth=2
                                        #       Parent Loop BB27_5 Depth=3
                                        #         Parent Loop BB27_8 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB27_12 Depth 6
	movl	-168(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jge	.LBB27_25
# BB#11:                                #   in Loop: Header=BB27_10 Depth=5
	movslq	-168(%rbp), %rax
	movl	-128(%rbp,%rax,4), %eax
	movl	%eax, -172(%rbp)
	movslq	-172(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells(%rip), %rax
	movq	%rax, -184(%rbp)
	movslq	-172(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -188(%rbp)
	movl	$0, -192(%rbp)
	jmp	.LBB27_12
	.align	16, 0x90
.LBB27_23:                              #   in Loop: Header=BB27_12 Depth=6
	incl	-192(%rbp)
.LBB27_12:                              #   Parent Loop BB27_1 Depth=1
                                        #     Parent Loop BB27_3 Depth=2
                                        #       Parent Loop BB27_5 Depth=3
                                        #         Parent Loop BB27_8 Depth=4
                                        #           Parent Loop BB27_10 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-192(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jge	.LBB27_24
# BB#13:                                #   in Loop: Header=BB27_12 Depth=6
	movl	-192(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	leaq	(%rax,%rax,2), %rax
	shlq	$2, %rax
	addq	-184(%rbp), %rax
	movl	-164(%rbp), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	leal	(%rdx,%rcx), %edx
	andl	$-16, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$2, %rcx
	addq	-160(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB27_21
# BB#14:                                #   in Loop: Header=BB27_12 Depth=6
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-160(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,4), %rdi
	movl	-192(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-184(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,4), %rsi
	callq	_ZNK4Vec3miERKS_
	movss	%xmm1, -216(%rbp)
	movlps	%xmm0, -224(%rbp)
	movl	-216(%rbp), %eax
	movl	%eax, -200(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	%rbx, %rdi
	callq	_ZNK4Vec311GetLengthSqEv
	movss	%xmm0, -196(%rbp)
	movss	hSq(%rip), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB27_21
# BB#15:                                #   in Loop: Header=BB27_12 Depth=6
	movss	hSq(%rip), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-196(%rbp), %xmm0
	movss	%xmm0, -228(%rbp)
	movaps	%xmm0, %xmm1
	mulss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -232(%rbp)
	movslq	-144(%rbp), %rax
	movq	border(%rip), %rcx
	testb	$1, (%rcx,%rax)
	je	.LBB27_17
# BB#16:                                #   in Loop: Header=BB27_12 Depth=6
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-128, %ecx
	subl	%ecx, %eax
	cltq
	movslq	-144(%rbp), %rcx
	movq	mutex(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %rdi
	callq	pthread_mutex_lock
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-160(%rbp), %rcx
	movss	768(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	addss	-232(%rbp), %xmm0
	movss	%xmm0, 768(%rcx,%rax,4)
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-128, %ecx
	subl	%ecx, %eax
	cltq
	movslq	-144(%rbp), %rcx
	movq	mutex(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB27_18
.LBB27_17:                              #   in Loop: Header=BB27_12 Depth=6
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-160(%rbp), %rcx
	movss	768(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	addss	-232(%rbp), %xmm0
	movss	%xmm0, 768(%rcx,%rax,4)
.LBB27_18:                              #   in Loop: Header=BB27_12 Depth=6
	movslq	-172(%rbp), %rax
	movq	border(%rip), %rcx
	testb	$1, (%rcx,%rax)
	je	.LBB27_20
# BB#19:                                #   in Loop: Header=BB27_12 Depth=6
	movl	-192(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-128, %ecx
	subl	%ecx, %eax
	cltq
	movslq	-172(%rbp), %rcx
	movq	mutex(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %rdi
	callq	pthread_mutex_lock
	movl	-192(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-184(%rbp), %rcx
	movss	768(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	addss	-232(%rbp), %xmm0
	movss	%xmm0, 768(%rcx,%rax,4)
	movl	-192(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-128, %ecx
	subl	%ecx, %eax
	cltq
	movslq	-172(%rbp), %rcx
	movq	mutex(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB27_21
.LBB27_20:                              #   in Loop: Header=BB27_12 Depth=6
	movl	-192(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-184(%rbp), %rcx
	movss	768(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	addss	-232(%rbp), %xmm0
	movss	%xmm0, 768(%rcx,%rax,4)
	.align	16, 0x90
.LBB27_21:                              #   in Loop: Header=BB27_12 Depth=6
	movl	-192(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cmpl	$15, %eax
	jne	.LBB27_23
# BB#22:                                #   in Loop: Header=BB27_12 Depth=6
	movq	-184(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB27_23
	.align	16, 0x90
.LBB27_25:                              #   in Loop: Header=BB27_8 Depth=4
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cmpl	$15, %eax
	jne	.LBB27_27
# BB#26:                                #   in Loop: Header=BB27_8 Depth=4
	movq	-160(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB27_27
.LBB27_31:
	addq	$224, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end27:
	.size	_Z18ComputeDensitiesMTi, .Lfunc_end27-_Z18ComputeDensitiesMTi
	.cfi_endproc

	.globl	_Z19ComputeDensities2MTi
	.align	16, 0x90
	.type	_Z19ComputeDensities2MTi,@function
_Z19ComputeDensities2MTi:               # @_Z19ComputeDensities2MTi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp262:
	.cfi_def_cfa_offset 16
.Ltmp263:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp264:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movss	hSq(%rip), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	mulss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -8(%rbp)
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	8(%rcx,%rax), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB28_1
	.align	16, 0x90
.LBB28_13:                              #   in Loop: Header=BB28_1 Depth=1
	incl	-12(%rbp)
.LBB28_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_3 Depth 2
                                        #       Child Loop BB28_5 Depth 3
                                        #         Child Loop BB28_7 Depth 4
	movl	-12(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	20(%rdx,%rcx), %eax
	jge	.LBB28_14
# BB#2:                                 #   in Loop: Header=BB28_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	4(%rcx,%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB28_3
	.align	16, 0x90
.LBB28_12:                              #   in Loop: Header=BB28_3 Depth=2
	incl	-16(%rbp)
.LBB28_3:                               #   Parent Loop BB28_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_5 Depth 3
                                        #         Child Loop BB28_7 Depth 4
	movl	-16(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	16(%rdx,%rcx), %eax
	jge	.LBB28_13
# BB#4:                                 #   in Loop: Header=BB28_3 Depth=2
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB28_5
	.align	16, 0x90
.LBB28_11:                              #   in Loop: Header=BB28_5 Depth=3
	incl	-20(%rbp)
.LBB28_5:                               #   Parent Loop BB28_1 Depth=1
                                        #     Parent Loop BB28_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB28_7 Depth 4
	movl	-20(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	12(%rdx,%rcx), %eax
	jge	.LBB28_12
# BB#6:                                 #   in Loop: Header=BB28_5 Depth=3
	movl	-12(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-16(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movslq	-24(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells(%rip), %rax
	movq	%rax, -32(%rbp)
	movslq	-24(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.LBB28_7
	.align	16, 0x90
.LBB28_10:                              #   in Loop: Header=BB28_7 Depth=4
	incl	-40(%rbp)
.LBB28_7:                               #   Parent Loop BB28_1 Depth=1
                                        #     Parent Loop BB28_3 Depth=2
                                        #       Parent Loop BB28_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB28_11
# BB#8:                                 #   in Loop: Header=BB28_7 Depth=4
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-32(%rbp), %rcx
	movss	768(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	addss	-8(%rbp), %xmm0
	movss	%xmm0, 768(%rcx,%rax,4)
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-32(%rbp), %rcx
	movss	768(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	mulss	densityCoeff(%rip), %xmm0
	movss	%xmm0, 768(%rcx,%rax,4)
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cmpl	$15, %eax
	jne	.LBB28_10
# BB#9:                                 #   in Loop: Header=BB28_7 Depth=4
	movq	-32(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB28_10
.LBB28_14:
	popq	%rbp
	retq
.Lfunc_end28:
	.size	_Z19ComputeDensities2MTi, .Lfunc_end28-_Z19ComputeDensities2MTi
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI29_0:
	.long	3304718336              # float -2000
	.text
	.globl	_Z15ComputeForcesMTi
	.align	16, 0x90
	.type	_Z15ComputeForcesMTi,@function
_Z15ComputeForcesMTi:                   # @_Z15ComputeForcesMTi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp265:
	.cfi_def_cfa_offset 16
.Ltmp266:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp267:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp268:
	.cfi_offset %rbx, -56
.Ltmp269:
	.cfi_offset %r12, -48
.Ltmp270:
	.cfi_offset %r13, -40
.Ltmp271:
	.cfi_offset %r14, -32
.Ltmp272:
	.cfi_offset %r15, -24
	movl	%edi, -44(%rbp)
	movslq	-44(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	8(%rcx,%rax), %eax
	movl	%eax, -164(%rbp)
	leaq	-240(%rbp), %rbx
	leaq	-400(%rbp), %r15
	leaq	-432(%rbp), %r12
	leaq	-288(%rbp), %r13
	leaq	-384(%rbp), %r14
	jmp	.LBB29_1
	.align	16, 0x90
.LBB29_32:                              #   in Loop: Header=BB29_1 Depth=1
	incl	-164(%rbp)
.LBB29_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_3 Depth 2
                                        #       Child Loop BB29_5 Depth 3
                                        #         Child Loop BB29_8 Depth 4
                                        #           Child Loop BB29_10 Depth 5
                                        #             Child Loop BB29_12 Depth 6
	movl	-164(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	20(%rdx,%rcx), %eax
	jge	.LBB29_33
# BB#2:                                 #   in Loop: Header=BB29_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	4(%rcx,%rax), %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB29_3
	.align	16, 0x90
.LBB29_31:                              #   in Loop: Header=BB29_3 Depth=2
	incl	-168(%rbp)
.LBB29_3:                               #   Parent Loop BB29_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_5 Depth 3
                                        #         Child Loop BB29_8 Depth 4
                                        #           Child Loop BB29_10 Depth 5
                                        #             Child Loop BB29_12 Depth 6
	movl	-168(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	16(%rdx,%rcx), %eax
	jge	.LBB29_32
# BB#4:                                 #   in Loop: Header=BB29_3 Depth=2
	movslq	-44(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB29_5
	.align	16, 0x90
.LBB29_30:                              #   in Loop: Header=BB29_5 Depth=3
	incl	-172(%rbp)
.LBB29_5:                               #   Parent Loop BB29_1 Depth=1
                                        #     Parent Loop BB29_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB29_8 Depth 4
                                        #           Child Loop BB29_10 Depth 5
                                        #             Child Loop BB29_12 Depth 6
	movl	-172(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	12(%rdx,%rcx), %eax
	jge	.LBB29_31
# BB#6:                                 #   in Loop: Header=BB29_5 Depth=3
	movl	-164(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-168(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	movslq	-176(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -180(%rbp)
	testl	%eax, %eax
	je	.LBB29_30
# BB#7:                                 #   in Loop: Header=BB29_5 Depth=3
	movl	-172(%rbp), %edi
	movl	-168(%rbp), %esi
	movl	-164(%rbp), %edx
	leaq	-160(%rbp), %rcx
	callq	_Z17InitNeighCellListiiiPi
	movl	%eax, -184(%rbp)
	movslq	-176(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells(%rip), %rax
	movq	%rax, -192(%rbp)
	movl	$0, -196(%rbp)
	jmp	.LBB29_8
	.align	16, 0x90
.LBB29_29:                              #   in Loop: Header=BB29_8 Depth=4
	incl	-196(%rbp)
.LBB29_8:                               #   Parent Loop BB29_1 Depth=1
                                        #     Parent Loop BB29_3 Depth=2
                                        #       Parent Loop BB29_5 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB29_10 Depth 5
                                        #             Child Loop BB29_12 Depth 6
	movl	-196(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB29_30
# BB#9:                                 #   in Loop: Header=BB29_8 Depth=4
	movl	$0, -200(%rbp)
	jmp	.LBB29_10
	.align	16, 0x90
.LBB29_26:                              #   in Loop: Header=BB29_10 Depth=5
	incl	-200(%rbp)
.LBB29_10:                              #   Parent Loop BB29_1 Depth=1
                                        #     Parent Loop BB29_3 Depth=2
                                        #       Parent Loop BB29_5 Depth=3
                                        #         Parent Loop BB29_8 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB29_12 Depth 6
	movl	-200(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jge	.LBB29_27
# BB#11:                                #   in Loop: Header=BB29_10 Depth=5
	movslq	-200(%rbp), %rax
	movl	-160(%rbp,%rax,4), %eax
	movl	%eax, -204(%rbp)
	movslq	-204(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells(%rip), %rax
	movq	%rax, -216(%rbp)
	movslq	-204(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -220(%rbp)
	movl	$0, -224(%rbp)
	jmp	.LBB29_12
	.align	16, 0x90
.LBB29_25:                              #   in Loop: Header=BB29_12 Depth=6
	incl	-224(%rbp)
.LBB29_12:                              #   Parent Loop BB29_1 Depth=1
                                        #     Parent Loop BB29_3 Depth=2
                                        #       Parent Loop BB29_5 Depth=3
                                        #         Parent Loop BB29_8 Depth=4
                                        #           Parent Loop BB29_10 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-224(%rbp), %eax
	cmpl	-220(%rbp), %eax
	jge	.LBB29_26
# BB#13:                                #   in Loop: Header=BB29_12 Depth=6
	movl	-224(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	leaq	(%rax,%rax,2), %rax
	shlq	$2, %rax
	addq	-216(%rbp), %rax
	movl	-196(%rbp), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	leal	(%rdx,%rcx), %edx
	andl	$-16, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$2, %rcx
	addq	-192(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB29_23
# BB#14:                                #   in Loop: Header=BB29_12 Depth=6
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-192(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,4), %rdi
	movl	-224(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-216(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,4), %rsi
	callq	_ZNK4Vec3miERKS_
	movss	%xmm1, -248(%rbp)
	movlps	%xmm0, -256(%rbp)
	movl	-248(%rbp), %eax
	movl	%eax, -232(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	%rbx, %rdi
	callq	_ZNK4Vec311GetLengthSqEv
	movss	%xmm0, -260(%rbp)
	movss	hSq(%rip), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB29_23
# BB#15:                                #   in Loop: Header=BB29_12 Depth=6
	movl	$730643660, -268(%rbp)  # imm = 0x2B8CBCCC
	leaq	-260(%rbp), %rdi
	leaq	-268(%rbp), %rsi
	callq	_ZSt3maxIfERKT_S2_S2_
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	sqrtss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm0
	jnp	.LBB29_17
# BB#16:                                # %call.sqrt
                                        #   in Loop: Header=BB29_12 Depth=6
	movaps	%xmm1, %xmm0
	callq	sqrtf
.LBB29_17:                              # %.split
                                        #   in Loop: Header=BB29_12 Depth=6
	movss	%xmm0, -264(%rbp)
	movss	h(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, -272(%rbp)
	movss	pressureCoeff(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movq	%rbx, %rdi
	callq	_ZNK4Vec3mlEf
	movss	%xmm1, -312(%rbp)
	movlps	%xmm0, -320(%rbp)
	movl	-312(%rbp), %eax
	movl	%eax, -296(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -304(%rbp)
	movss	-272(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	divss	-264(%rbp), %xmm0
	leaq	-304(%rbp), %rdi
	callq	_ZNK4Vec3mlEf
	movss	%xmm1, -344(%rbp)
	movlps	%xmm0, -352(%rbp)
	movl	-344(%rbp), %eax
	movl	%eax, -328(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -336(%rbp)
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-192(%rbp), %rcx
	movss	768(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movl	-224(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-216(%rbp), %rcx
	addss	768(%rcx,%rax,4), %xmm0
	addss	.LCPI29_0(%rip), %xmm0
	leaq	-336(%rbp), %rdi
	callq	_ZNK4Vec3mlEf
	movss	%xmm1, -360(%rbp)
	movlps	%xmm0, -368(%rbp)
	movl	-360(%rbp), %eax
	movl	%eax, -280(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -288(%rbp)
	movl	-224(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-216(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	384(%rcx,%rax,4), %rdi
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-192(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	384(%rcx,%rax,4), %rsi
	callq	_ZNK4Vec3miERKS_
	movss	%xmm1, -408(%rbp)
	movlps	%xmm0, -416(%rbp)
	movl	-408(%rbp), %eax
	movl	%eax, -392(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -400(%rbp)
	movss	viscosityCoeff(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movq	%r15, %rdi
	callq	_ZNK4Vec3mlEf
	movss	%xmm1, -440(%rbp)
	movlps	%xmm0, -448(%rbp)
	movl	-440(%rbp), %eax
	movl	%eax, -424(%rbp)
	movq	-448(%rbp), %rax
	movq	%rax, -432(%rbp)
	movss	-272(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	%r12, %rdi
	callq	_ZNK4Vec3mlEf
	movss	%xmm1, -456(%rbp)
	movlps	%xmm0, -464(%rbp)
	movl	-456(%rbp), %eax
	movl	%eax, -376(%rbp)
	movq	-464(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_ZN4Vec3pLERKS_
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-192(%rbp), %rcx
	movss	768(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movl	-224(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-216(%rbp), %rcx
	mulss	768(%rcx,%rax,4), %xmm0
	movq	%r13, %rdi
	callq	_ZN4Vec3dVEf
	movslq	-176(%rbp), %rax
	movq	border(%rip), %rcx
	testb	$1, (%rcx,%rax)
	je	.LBB29_19
# BB#18:                                #   in Loop: Header=BB29_12 Depth=6
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-128, %ecx
	subl	%ecx, %eax
	cltq
	movslq	-176(%rbp), %rcx
	movq	mutex(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %rdi
	callq	pthread_mutex_lock
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-192(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	576(%rcx,%rax,4), %rdi
	movq	%r13, %rsi
	callq	_ZN4Vec3pLERKS_
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-128, %ecx
	subl	%ecx, %eax
	cltq
	movslq	-176(%rbp), %rcx
	movq	mutex(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB29_20
.LBB29_19:                              #   in Loop: Header=BB29_12 Depth=6
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-192(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	576(%rcx,%rax,4), %rdi
	movq	%r13, %rsi
	callq	_ZN4Vec3pLERKS_
.LBB29_20:                              #   in Loop: Header=BB29_12 Depth=6
	movslq	-204(%rbp), %rax
	movq	border(%rip), %rcx
	testb	$1, (%rcx,%rax)
	je	.LBB29_22
# BB#21:                                #   in Loop: Header=BB29_12 Depth=6
	movl	-224(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-128, %ecx
	subl	%ecx, %eax
	cltq
	movslq	-204(%rbp), %rcx
	movq	mutex(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %rdi
	callq	pthread_mutex_lock
	movl	-224(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-216(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	576(%rcx,%rax,4), %rdi
	movq	%r13, %rsi
	callq	_ZN4Vec3mIERKS_
	movl	-224(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-128, %ecx
	subl	%ecx, %eax
	cltq
	movslq	-204(%rbp), %rcx
	movq	mutex(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB29_23
.LBB29_22:                              #   in Loop: Header=BB29_12 Depth=6
	movl	-224(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-216(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	576(%rcx,%rax,4), %rdi
	movq	%r13, %rsi
	callq	_ZN4Vec3mIERKS_
	.align	16, 0x90
.LBB29_23:                              #   in Loop: Header=BB29_12 Depth=6
	movl	-224(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cmpl	$15, %eax
	jne	.LBB29_25
# BB#24:                                #   in Loop: Header=BB29_12 Depth=6
	movq	-216(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB29_25
	.align	16, 0x90
.LBB29_27:                              #   in Loop: Header=BB29_8 Depth=4
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cmpl	$15, %eax
	jne	.LBB29_29
# BB#28:                                #   in Loop: Header=BB29_8 Depth=4
	movq	-192(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB29_29
.LBB29_33:
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	_Z15ComputeForcesMTi, .Lfunc_end29-_Z15ComputeForcesMTi
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI30_0:
	.long	961656599               # float 1.99999995E-4
.LCPI30_1:
	.long	786163455               # float 1.00000001E-10
.LCPI30_2:
	.long	1189765120              # float 3.0E+4
.LCPI30_3:
	.long	3271557120              # float -128
.LCPI30_4:
	.long	1124073472              # float 128
	.text
	.globl	_Z19ProcessCollisionsMTi
	.align	16, 0x90
	.type	_Z19ProcessCollisionsMTi,@function
_Z19ProcessCollisionsMTi:               # @_Z19ProcessCollisionsMTi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp276:
	.cfi_offset %rbx, -32
.Ltmp277:
	.cfi_offset %r14, -24
	movl	%edi, -20(%rbp)
	movslq	-20(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	8(%rcx,%rax), %eax
	movl	%eax, -24(%rbp)
	leaq	-88(%rbp), %r14
	jmp	.LBB30_1
	.align	16, 0x90
.LBB30_36:                              #   in Loop: Header=BB30_1 Depth=1
	incl	-24(%rbp)
.LBB30_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_3 Depth 2
                                        #       Child Loop BB30_5 Depth 3
                                        #         Child Loop BB30_12 Depth 4
	movl	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	20(%rdx,%rcx), %eax
	jge	.LBB30_37
# BB#2:                                 #   in Loop: Header=BB30_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	4(%rcx,%rax), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB30_3
	.align	16, 0x90
.LBB30_35:                              #   in Loop: Header=BB30_3 Depth=2
	incl	-28(%rbp)
.LBB30_3:                               #   Parent Loop BB30_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB30_5 Depth 3
                                        #         Child Loop BB30_12 Depth 4
	movl	-28(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	16(%rdx,%rcx), %eax
	jge	.LBB30_36
# BB#4:                                 #   in Loop: Header=BB30_3 Depth=2
	movslq	-20(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB30_5
	.align	16, 0x90
.LBB30_34:                              #   in Loop: Header=BB30_5 Depth=3
	incl	-32(%rbp)
.LBB30_5:                               #   Parent Loop BB30_1 Depth=1
                                        #     Parent Loop BB30_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB30_12 Depth 4
	movl	-32(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	12(%rdx,%rcx), %eax
	jge	.LBB30_35
# BB#6:                                 #   in Loop: Header=BB30_5 Depth=3
	cmpl	$0, -32(%rbp)
	je	.LBB30_11
# BB#7:                                 #   in Loop: Header=BB30_5 Depth=3
	cmpl	$0, -28(%rbp)
	je	.LBB30_11
# BB#8:                                 #   in Loop: Header=BB30_5 Depth=3
	cmpl	$0, -24(%rbp)
	je	.LBB30_11
# BB#9:                                 #   in Loop: Header=BB30_5 Depth=3
	movl	nx(%rip), %eax
	decl	%eax
	cmpl	%eax, -32(%rbp)
	je	.LBB30_11
# BB#10:                                #   in Loop: Header=BB30_5 Depth=3
	movl	ny(%rip), %eax
	decl	%eax
	cmpl	%eax, -28(%rbp)
	sete	%al
	movl	nz(%rip), %ecx
	decl	%ecx
	cmpl	%ecx, -24(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB30_34
	.align	16, 0x90
.LBB30_11:                              #   in Loop: Header=BB30_5 Depth=3
	movl	-24(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-28(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells(%rip), %rax
	movq	%rax, -48(%rbp)
	movslq	-36(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	jmp	.LBB30_12
	.align	16, 0x90
.LBB30_33:                              #   in Loop: Header=BB30_12 Depth=4
	incl	-56(%rbp)
.LBB30_12:                              #   Parent Loop BB30_1 Depth=1
                                        #     Parent Loop BB30_3 Depth=2
                                        #       Parent Loop BB30_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB30_34
# BB#13:                                #   in Loop: Header=BB30_12 Depth=4
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,4), %rbx
	leaq	192(%rcx,%rax,4), %rdi
	movss	_ZL8timeStep(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	callq	_ZNK4Vec3mlEf
	movss	%xmm1, -96(%rbp)
	movlps	%xmm0, -104(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZNK4Vec3plERKS_
	movss	%xmm1, -112(%rbp)
	movlps	%xmm0, -120(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpl	$0, -32(%rbp)
	movss	.LCPI30_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	jne	.LBB30_16
# BB#14:                                #   in Loop: Header=BB30_12 Depth=4
	movss	-72(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	_ZL9domainMin.17(%rip), %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -124(%rbp)
	ucomiss	.LCPI30_1(%rip), %xmm1
	jbe	.LBB30_16
# BB#15:                                #   in Loop: Header=BB30_12 Depth=4
	movss	-124(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI30_2(%rip), %xmm0
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	384(%rcx,%rax,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI30_3(%rip), %xmm1
	addss	%xmm0, %xmm1
	addss	576(%rcx,%rax,4), %xmm1
	movss	%xmm1, 576(%rcx,%rax,4)
	.align	16, 0x90
.LBB30_16:                              #   in Loop: Header=BB30_12 Depth=4
	movl	nx(%rip), %eax
	decl	%eax
	cmpl	%eax, -32(%rbp)
	jne	.LBB30_19
# BB#17:                                #   in Loop: Header=BB30_12 Depth=4
	movss	_ZL9domainMax.16(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	subss	-72(%rbp), %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -128(%rbp)
	ucomiss	.LCPI30_1(%rip), %xmm1
	jbe	.LBB30_19
# BB#18:                                #   in Loop: Header=BB30_12 Depth=4
	movss	-128(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI30_2(%rip), %xmm0
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	384(%rcx,%rax,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI30_4(%rip), %xmm1
	addss	%xmm0, %xmm1
	movss	576(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, 576(%rcx,%rax,4)
.LBB30_19:                              #   in Loop: Header=BB30_12 Depth=4
	cmpl	$0, -28(%rbp)
	jne	.LBB30_22
# BB#20:                                #   in Loop: Header=BB30_12 Depth=4
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	_ZL9domainMin.17+4(%rip), %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -132(%rbp)
	ucomiss	.LCPI30_1(%rip), %xmm1
	jbe	.LBB30_22
# BB#21:                                #   in Loop: Header=BB30_12 Depth=4
	movss	-132(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI30_2(%rip), %xmm0
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	388(%rcx,%rax,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI30_3(%rip), %xmm1
	addss	%xmm0, %xmm1
	addss	580(%rcx,%rax,4), %xmm1
	movss	%xmm1, 580(%rcx,%rax,4)
	.align	16, 0x90
.LBB30_22:                              #   in Loop: Header=BB30_12 Depth=4
	movl	ny(%rip), %eax
	decl	%eax
	cmpl	%eax, -28(%rbp)
	jne	.LBB30_25
# BB#23:                                #   in Loop: Header=BB30_12 Depth=4
	movss	_ZL9domainMax.16+4(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	subss	-68(%rbp), %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -136(%rbp)
	ucomiss	.LCPI30_1(%rip), %xmm1
	jbe	.LBB30_25
# BB#24:                                #   in Loop: Header=BB30_12 Depth=4
	movss	-136(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI30_2(%rip), %xmm0
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	388(%rcx,%rax,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI30_4(%rip), %xmm1
	addss	%xmm0, %xmm1
	movss	580(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, 580(%rcx,%rax,4)
.LBB30_25:                              #   in Loop: Header=BB30_12 Depth=4
	cmpl	$0, -24(%rbp)
	jne	.LBB30_28
# BB#26:                                #   in Loop: Header=BB30_12 Depth=4
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	_ZL9domainMin.17+8(%rip), %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -140(%rbp)
	ucomiss	.LCPI30_1(%rip), %xmm1
	jbe	.LBB30_28
# BB#27:                                #   in Loop: Header=BB30_12 Depth=4
	movss	-140(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI30_2(%rip), %xmm0
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	392(%rcx,%rax,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI30_3(%rip), %xmm1
	addss	%xmm0, %xmm1
	addss	584(%rcx,%rax,4), %xmm1
	movss	%xmm1, 584(%rcx,%rax,4)
	.align	16, 0x90
.LBB30_28:                              #   in Loop: Header=BB30_12 Depth=4
	movl	nz(%rip), %eax
	decl	%eax
	cmpl	%eax, -24(%rbp)
	jne	.LBB30_31
# BB#29:                                #   in Loop: Header=BB30_12 Depth=4
	movss	_ZL9domainMax.16+8(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	subss	-64(%rbp), %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -144(%rbp)
	ucomiss	.LCPI30_1(%rip), %xmm1
	jbe	.LBB30_31
# BB#30:                                #   in Loop: Header=BB30_12 Depth=4
	movss	-144(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI30_2(%rip), %xmm0
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	392(%rcx,%rax,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI30_4(%rip), %xmm1
	addss	%xmm0, %xmm1
	movss	584(%rcx,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, 584(%rcx,%rax,4)
.LBB30_31:                              #   in Loop: Header=BB30_12 Depth=4
	cmpl	$15, -60(%rbp)
	jne	.LBB30_33
# BB#32:                                #   in Loop: Header=BB30_12 Depth=4
	movq	-48(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB30_33
.LBB30_37:
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end30:
	.size	_Z19ProcessCollisionsMTi, .Lfunc_end30-_Z19ProcessCollisionsMTi
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI31_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	_Z20ProcessCollisions2MTi
	.align	16, 0x90
	.type	_Z20ProcessCollisions2MTi,@function
_Z20ProcessCollisions2MTi:              # @_Z20ProcessCollisions2MTi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp278:
	.cfi_def_cfa_offset 16
.Ltmp279:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp280:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	8(%rcx,%rax), %eax
	movl	%eax, -8(%rbp)
	xorps	%xmm0, %xmm0
	movaps	.LCPI31_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	jmp	.LBB31_1
	.align	16, 0x90
.LBB31_31:                              #   in Loop: Header=BB31_1 Depth=1
	incl	-8(%rbp)
.LBB31_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_3 Depth 2
                                        #       Child Loop BB31_5 Depth 3
                                        #         Child Loop BB31_7 Depth 4
	movl	-8(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	20(%rdx,%rcx), %eax
	jge	.LBB31_32
# BB#2:                                 #   in Loop: Header=BB31_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	4(%rcx,%rax), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB31_3
	.align	16, 0x90
.LBB31_30:                              #   in Loop: Header=BB31_3 Depth=2
	incl	-12(%rbp)
.LBB31_3:                               #   Parent Loop BB31_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_5 Depth 3
                                        #         Child Loop BB31_7 Depth 4
	movl	-12(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	16(%rdx,%rcx), %eax
	jge	.LBB31_31
# BB#4:                                 #   in Loop: Header=BB31_3 Depth=2
	movslq	-4(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB31_5
	.align	16, 0x90
.LBB31_29:                              #   in Loop: Header=BB31_5 Depth=3
	incl	-16(%rbp)
.LBB31_5:                               #   Parent Loop BB31_1 Depth=1
                                        #     Parent Loop BB31_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB31_7 Depth 4
	movl	-16(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	12(%rdx,%rcx), %eax
	jge	.LBB31_30
# BB#6:                                 #   in Loop: Header=BB31_5 Depth=3
	movl	-8(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-12(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells(%rip), %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.LBB31_7
	.align	16, 0x90
.LBB31_28:                              #   in Loop: Header=BB31_7 Depth=4
	incl	-40(%rbp)
.LBB31_7:                               #   Parent Loop BB31_1 Depth=1
                                        #     Parent Loop BB31_3 Depth=2
                                        #       Parent Loop BB31_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB31_29
# BB#8:                                 #   in Loop: Header=BB31_7 Depth=4
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	8(%rcx,%rax,4), %edx
	movl	%edx, -48(%rbp)
	movq	(%rcx,%rax,4), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB31_11
# BB#9:                                 #   in Loop: Header=BB31_7 Depth=4
	movss	-56(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	_ZL9domainMin.17(%rip), %xmm2
	movss	%xmm2, -60(%rbp)
	ucomiss	%xmm2, %xmm0
	jbe	.LBB31_11
# BB#10:                                #   in Loop: Header=BB31_7 Depth=4
	movss	_ZL9domainMin.17(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	subss	-60(%rbp), %xmm2
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm2, (%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	384(%rcx,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 384(%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	192(%rcx,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 192(%rcx,%rax,4)
	.align	16, 0x90
.LBB31_11:                              #   in Loop: Header=BB31_7 Depth=4
	movl	nx(%rip), %eax
	decl	%eax
	cmpl	%eax, -16(%rbp)
	jne	.LBB31_14
# BB#12:                                #   in Loop: Header=BB31_7 Depth=4
	movss	_ZL9domainMax.16(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	subss	-56(%rbp), %xmm2
	movss	%xmm2, -64(%rbp)
	ucomiss	%xmm2, %xmm0
	jbe	.LBB31_14
# BB#13:                                #   in Loop: Header=BB31_7 Depth=4
	movss	_ZL9domainMax.16(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	addss	-64(%rbp), %xmm2
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm2, (%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	384(%rcx,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 384(%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	192(%rcx,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 192(%rcx,%rax,4)
.LBB31_14:                              #   in Loop: Header=BB31_7 Depth=4
	cmpl	$0, -12(%rbp)
	jne	.LBB31_17
# BB#15:                                #   in Loop: Header=BB31_7 Depth=4
	movss	-52(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	_ZL9domainMin.17+4(%rip), %xmm2
	movss	%xmm2, -68(%rbp)
	ucomiss	%xmm2, %xmm0
	jbe	.LBB31_17
# BB#16:                                #   in Loop: Header=BB31_7 Depth=4
	movss	_ZL9domainMin.17+4(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	subss	-68(%rbp), %xmm2
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm2, 4(%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	388(%rcx,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 388(%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	196(%rcx,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 196(%rcx,%rax,4)
	.align	16, 0x90
.LBB31_17:                              #   in Loop: Header=BB31_7 Depth=4
	movl	ny(%rip), %eax
	decl	%eax
	cmpl	%eax, -12(%rbp)
	jne	.LBB31_20
# BB#18:                                #   in Loop: Header=BB31_7 Depth=4
	movss	_ZL9domainMax.16+4(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	subss	-52(%rbp), %xmm2
	movss	%xmm2, -72(%rbp)
	ucomiss	%xmm2, %xmm0
	jbe	.LBB31_20
# BB#19:                                #   in Loop: Header=BB31_7 Depth=4
	movss	_ZL9domainMax.16+4(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	addss	-72(%rbp), %xmm2
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm2, 4(%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	388(%rcx,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 388(%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	196(%rcx,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 196(%rcx,%rax,4)
.LBB31_20:                              #   in Loop: Header=BB31_7 Depth=4
	cmpl	$0, -8(%rbp)
	jne	.LBB31_23
# BB#21:                                #   in Loop: Header=BB31_7 Depth=4
	movss	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	_ZL9domainMin.17+8(%rip), %xmm2
	movss	%xmm2, -76(%rbp)
	ucomiss	%xmm2, %xmm0
	jbe	.LBB31_23
# BB#22:                                #   in Loop: Header=BB31_7 Depth=4
	movss	_ZL9domainMin.17+8(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	subss	-76(%rbp), %xmm2
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm2, 8(%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	392(%rcx,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 392(%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	200(%rcx,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 200(%rcx,%rax,4)
	.align	16, 0x90
.LBB31_23:                              #   in Loop: Header=BB31_7 Depth=4
	movl	nz(%rip), %eax
	decl	%eax
	cmpl	%eax, -8(%rbp)
	jne	.LBB31_26
# BB#24:                                #   in Loop: Header=BB31_7 Depth=4
	movss	_ZL9domainMax.16+8(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	subss	-48(%rbp), %xmm2
	movss	%xmm2, -80(%rbp)
	ucomiss	%xmm2, %xmm0
	jbe	.LBB31_26
# BB#25:                                #   in Loop: Header=BB31_7 Depth=4
	movss	_ZL9domainMax.16+8(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	addss	-80(%rbp), %xmm2
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	%xmm2, 8(%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	392(%rcx,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 392(%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movss	200(%rcx,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm2
	movss	%xmm2, 200(%rcx,%rax,4)
.LBB31_26:                              #   in Loop: Header=BB31_7 Depth=4
	cmpl	$15, -44(%rbp)
	jne	.LBB31_28
# BB#27:                                #   in Loop: Header=BB31_7 Depth=4
	movq	-32(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB31_28
.LBB31_32:
	popq	%rbp
	retq
.Lfunc_end31:
	.size	_Z20ProcessCollisions2MTi, .Lfunc_end31-_Z20ProcessCollisions2MTi
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI32_0:
	.long	1056964608              # float 0.5
	.text
	.globl	_Z18AdvanceParticlesMTi
	.align	16, 0x90
	.type	_Z18AdvanceParticlesMTi,@function
_Z18AdvanceParticlesMTi:                # @_Z18AdvanceParticlesMTi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp281:
	.cfi_def_cfa_offset 16
.Ltmp282:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp283:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp284:
	.cfi_offset %rbx, -56
.Ltmp285:
	.cfi_offset %r12, -48
.Ltmp286:
	.cfi_offset %r13, -40
.Ltmp287:
	.cfi_offset %r14, -32
.Ltmp288:
	.cfi_offset %r15, -24
	movl	%edi, -44(%rbp)
	movslq	-44(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	8(%rcx,%rax), %eax
	movl	%eax, -48(%rbp)
	leaq	-112(%rbp), %r14
	leaq	-96(%rbp), %r12
	leaq	-160(%rbp), %r15
	jmp	.LBB32_1
	.align	16, 0x90
.LBB32_13:                              #   in Loop: Header=BB32_1 Depth=1
	incl	-48(%rbp)
.LBB32_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_3 Depth 2
                                        #       Child Loop BB32_5 Depth 3
                                        #         Child Loop BB32_7 Depth 4
	movl	-48(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	20(%rdx,%rcx), %eax
	jge	.LBB32_14
# BB#2:                                 #   in Loop: Header=BB32_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	4(%rcx,%rax), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB32_3
	.align	16, 0x90
.LBB32_12:                              #   in Loop: Header=BB32_3 Depth=2
	incl	-52(%rbp)
.LBB32_3:                               #   Parent Loop BB32_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_5 Depth 3
                                        #         Child Loop BB32_7 Depth 4
	movl	-52(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	16(%rdx,%rcx), %eax
	jge	.LBB32_13
# BB#4:                                 #   in Loop: Header=BB32_3 Depth=2
	movslq	-44(%rbp), %rax
	movq	grids(%rip), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB32_5
	.align	16, 0x90
.LBB32_11:                              #   in Loop: Header=BB32_5 Depth=3
	incl	-56(%rbp)
.LBB32_5:                               #   Parent Loop BB32_1 Depth=1
                                        #     Parent Loop BB32_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB32_7 Depth 4
	movl	-56(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	grids(%rip), %rdx
	shlq	$7, %rcx
	cmpl	12(%rdx,%rcx), %eax
	jge	.LBB32_12
# BB#6:                                 #   in Loop: Header=BB32_5 Depth=3
	movl	-48(%rbp), %eax
	imull	ny(%rip), %eax
	addl	-52(%rbp), %eax
	imull	nx(%rip), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movslq	-60(%rbp), %rax
	imulq	$896, %rax, %rax        # imm = 0x380
	addq	cells(%rip), %rax
	movq	%rax, -72(%rbp)
	movslq	-60(%rbp), %rax
	movq	cnumPars(%rip), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -76(%rbp)
	movl	$0, -80(%rbp)
	jmp	.LBB32_7
	.align	16, 0x90
.LBB32_10:                              #   in Loop: Header=BB32_7 Depth=4
	incl	-80(%rbp)
.LBB32_7:                               #   Parent Loop BB32_1 Depth=1
                                        #     Parent Loop BB32_3 Depth=2
                                        #       Parent Loop BB32_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB32_11
# BB#8:                                 #   in Loop: Header=BB32_7 Depth=4
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-72(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	192(%rcx,%rax,4), %rbx
	leaq	576(%rcx,%rax,4), %rdi
	movss	_ZL8timeStep(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	callq	_ZNK4Vec3mlEf
	movss	%xmm1, -120(%rbp)
	movlps	%xmm0, -128(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZNK4Vec3plERKS_
	movss	%xmm1, -136(%rbp)
	movlps	%xmm0, -144(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-72(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,4), %rbx
	movss	_ZL8timeStep(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movq	%r12, %rdi
	callq	_ZNK4Vec3mlEf
	movss	%xmm1, -168(%rbp)
	movlps	%xmm0, -176(%rbp)
	movl	-168(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZN4Vec3pLERKS_
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-72(%rbp), %r13
	leaq	(%rax,%rax,2), %rbx
	leaq	192(%r13,%rbx,4), %rdi
	movq	%r12, %rsi
	callq	_ZNK4Vec3plERKS_
	movss	%xmm1, -200(%rbp)
	movlps	%xmm0, -208(%rbp)
	movl	-200(%rbp), %eax
	movl	%eax, -184(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-184(%rbp), %eax
	movl	%eax, 392(%r13,%rbx,4)
	movq	-192(%rbp), %rax
	movq	%rax, 384(%r13,%rbx,4)
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-72(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	384(%rcx,%rax,4), %rdi
	movss	.LCPI32_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	callq	_ZN4Vec3mLEf
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cltq
	movq	-72(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	-88(%rbp), %edx
	movl	%edx, 200(%rcx,%rax,4)
	movq	-96(%rbp), %rdx
	movq	%rdx, 192(%rcx,%rax,4)
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-16, %ecx
	subl	%ecx, %eax
	cmpl	$15, %eax
	jne	.LBB32_10
# BB#9:                                 #   in Loop: Header=BB32_7 Depth=4
	movq	-72(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB32_10
.LBB32_14:
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	_Z18AdvanceParticlesMTi, .Lfunc_end32-_Z18AdvanceParticlesMTi
	.cfi_endproc

	.globl	_Z14AdvanceFrameMTi
	.align	16, 0x90
	.type	_Z14AdvanceFrameMTi,@function
_Z14AdvanceFrameMTi:                    # @_Z14AdvanceFrameMTi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
.Ltmp290:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp291:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	testl	%edi, %edi
	jne	.LBB33_2
# BB#1:
	movl	$cells, %edi
	movl	$cells2, %esi
	callq	_ZSt4swapIP4CellEvRT_S3_
	movl	$cnumPars, %edi
	movl	$cnumPars2, %esi
	callq	_ZSt4swapIPiEvRT_S2_
.LBB33_2:
	movl	$barrier, %edi
	callq	_Z19parsec_barrier_waitP16parsec_barrier_t
	movl	-4(%rbp), %edi
	callq	_Z16ClearParticlesMTi
	movl	$barrier, %edi
	callq	_Z19parsec_barrier_waitP16parsec_barrier_t
	movl	-4(%rbp), %edi
	callq	_Z13RebuildGridMTi
	movl	$barrier, %edi
	callq	_Z19parsec_barrier_waitP16parsec_barrier_t
	movl	-4(%rbp), %edi
	callq	_Z24InitDensitiesAndForcesMTi
	movl	$barrier, %edi
	callq	_Z19parsec_barrier_waitP16parsec_barrier_t
	movl	-4(%rbp), %edi
	callq	_Z18ComputeDensitiesMTi
	movl	$barrier, %edi
	callq	_Z19parsec_barrier_waitP16parsec_barrier_t
	movl	-4(%rbp), %edi
	callq	_Z19ComputeDensities2MTi
	movl	$barrier, %edi
	callq	_Z19parsec_barrier_waitP16parsec_barrier_t
	movl	-4(%rbp), %edi
	callq	_Z15ComputeForcesMTi
	movl	$barrier, %edi
	callq	_Z19parsec_barrier_waitP16parsec_barrier_t
	movl	-4(%rbp), %edi
	callq	_Z19ProcessCollisionsMTi
	movl	$barrier, %edi
	callq	_Z19parsec_barrier_waitP16parsec_barrier_t
	movl	-4(%rbp), %edi
	callq	_Z18AdvanceParticlesMTi
	movl	$barrier, %edi
	callq	_Z19parsec_barrier_waitP16parsec_barrier_t
	movl	-4(%rbp), %edi
	callq	_Z20ProcessCollisions2MTi
	movl	$barrier, %edi
	callq	_Z19parsec_barrier_waitP16parsec_barrier_t
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	_Z14AdvanceFrameMTi, .Lfunc_end33-_Z14AdvanceFrameMTi
	.cfi_endproc

	.globl	_Z15AdvanceFramesMTPv
	.align	16, 0x90
	.type	_Z15AdvanceFramesMTPv,@function
_Z15AdvanceFramesMTPv:                  # @_Z15AdvanceFramesMTPv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp292:
	.cfi_def_cfa_offset 16
.Ltmp293:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp294:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB34_1
	.align	16, 0x90
.LBB34_2:                               #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	_Z14AdvanceFrameMTi
	incl	-20(%rbp)
.LBB34_1:                               # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jl	.LBB34_2
# BB#3:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	_Z15AdvanceFramesMTPv, .Lfunc_end34-_Z15AdvanceFramesMTPv
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp295:
	.cfi_def_cfa_offset 16
.Ltmp296:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp297:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp298:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$_ZSt4cout, %edi
	movl	$.L.str.24, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movl	$_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	cmpl	$4, -16(%rbp)
	jl	.LBB35_2
# BB#1:
	cmpl	$6, -16(%rbp)
	jl	.LBB35_3
.LBB35_2:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.25, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.26, %esi
	movq	%rax, %rdi
.LBB35_5:
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movl	$-1, -12(%rbp)
.LBB35_17:
	movl	-12(%rbp), %eax
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB35_3:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	atoi
	movl	%eax, -32(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.LBB35_4
# BB#6:
	cmpl	$0, -32(%rbp)
	jle	.LBB35_7
# BB#8:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movl	-28(%rbp), %esi
	callq	_Z7InitSimPKcj
	movl	-28(%rbp), %eax
	movq	%rsp, -40(%rbp)
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      # imm = 0xFFFFFFFF0
	andq	%rax, %rcx
	movq	%rsp, %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rsp
	movl	$0, -44(%rbp)
	jmp	.LBB35_9
	.align	16, 0x90
.LBB35_10:                              #   in Loop: Header=BB35_9 Depth=1
	movslq	-44(%rbp), %rax
	movl	%eax, (%rbx,%rax,8)
	movl	-32(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movl	%eax, 4(%rbx,%rcx,8)
	movslq	-44(%rbp), %rax
	leaq	(,%rax,8), %rdi
	addq	thread(%rip), %rdi
	leaq	(%rbx,%rax,8), %rcx
	movl	$attr, %esi
	movl	$_Z15AdvanceFramesMTPv, %edx
	callq	pthread_create
	incl	-44(%rbp)
.LBB35_9:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB35_10
# BB#11:
	movl	$0, -48(%rbp)
	jmp	.LBB35_12
	.align	16, 0x90
.LBB35_13:                              #   in Loop: Header=BB35_12 Depth=1
	movslq	-48(%rbp), %rax
	movq	thread(%rip), %rcx
	movq	(%rcx,%rax,8), %rdi
	xorl	%esi, %esi
	callq	pthread_join
	incl	-48(%rbp)
.LBB35_12:                              # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB35_13
# BB#14:
	cmpl	$5, -16(%rbp)
	jl	.LBB35_16
# BB#15:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_Z8SaveFilePKc
.LBB35_16:
	callq	_Z10CleanUpSimv
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rsp
	jmp	.LBB35_17
.LBB35_4:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.27, %esi
	jmp	.LBB35_5
.LBB35_7:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.28, %esi
	jmp	.LBB35_5
.Lfunc_end35:
	.size	main, .Lfunc_end35-main
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_pthreads.cpp,@function
_GLOBAL__sub_I_pthreads.cpp:            # @_GLOBAL__sub_I_pthreads.cpp
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp299:
	.cfi_def_cfa_offset 16
.Ltmp300:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp301:
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init.20
	callq	__cxx_global_var_init.1.21
	callq	__cxx_global_var_init.2.22
	callq	__cxx_global_var_init.3.23
	callq	__cxx_global_var_init.4
	popq	%rbp
	retq
.Lfunc_end36:
	.size	_GLOBAL__sub_I_pthreads.cpp, .Lfunc_end36-_GLOBAL__sub_I_pthreads.cpp
	.cfi_endproc

	.text
	.align	16, 0x90
	.type	_ZL14isLittleEndianv,@function
_ZL14isLittleEndianv:                   # @_ZL14isLittleEndianv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp302:
	.cfi_def_cfa_offset 16
.Ltmp303:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp304:
	.cfi_def_cfa_register %rbp
	movw	$255, -8(%rbp)
	movzbl	-8(%rbp), %eax
	cmpl	$255, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end37:
	.size	_ZL14isLittleEndianv, .Lfunc_end37-_ZL14isLittleEndianv
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL11bswap_floatf,@function
_ZL11bswap_floatf:                      # @_ZL11bswap_floatf
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp305:
	.cfi_def_cfa_offset 16
.Ltmp306:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp307:
	.cfi_def_cfa_register %rbp
	movss	%xmm0, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movl	%eax, %edx
	andl	$16711680, %edx         # imm = 0xFF0000
	shrl	$8, %edx
	orl	%ecx, %edx
	movl	%eax, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%edx, %ecx
	shll	$24, %eax
	orl	%ecx, %eax
	movl	%eax, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end38:
	.size	_ZL11bswap_floatf, .Lfunc_end38-_ZL11bswap_floatf
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL11bswap_int32i,@function
_ZL11bswap_int32i:                      # @_ZL11bswap_int32i
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp308:
	.cfi_def_cfa_offset 16
.Ltmp309:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp310:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%edi, %eax
	shrl	$24, %eax
	movl	%edi, %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	leal	(%rcx,%rax), %eax
	movl	%edi, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	shll	$24, %edi
	orl	%edi, %eax
	popq	%rbp
	retq
.Lfunc_end39:
	.size	_ZL11bswap_int32i, .Lfunc_end39-_ZL11bswap_int32i
	.cfi_endproc

	.section	.text._ZNK4Vec3miERKS_,"axG",@progbits,_ZNK4Vec3miERKS_,comdat
	.weak	_ZNK4Vec3miERKS_
	.align	16, 0x90
	.type	_ZNK4Vec3miERKS_,@function
_ZNK4Vec3miERKS_:                       # @_ZNK4Vec3miERKS_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp311:
	.cfi_def_cfa_offset 16
.Ltmp312:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp313:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	subss	(%rsi), %xmm0
	subss	4(%rsi), %xmm1
	movss	8(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	8(%rsi), %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3C2Efff
	movl	-8(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movss	-40(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	_ZNK4Vec3miERKS_, .Lfunc_end40-_ZNK4Vec3miERKS_
	.cfi_endproc

	.section	.text._ZN4CellC2Ev,"axG",@progbits,_ZN4CellC2Ev,comdat
	.weak	_ZN4CellC2Ev
	.align	16, 0x90
	.type	_ZN4CellC2Ev,@function
_ZN4CellC2Ev:                           # @_ZN4CellC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp314:
	.cfi_def_cfa_offset 16
.Ltmp315:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp316:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
.Ltmp317:
	.cfi_offset %rbx, -48
.Ltmp318:
	.cfi_offset %r12, -40
.Ltmp319:
	.cfi_offset %r14, -32
.Ltmp320:
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movq	%r15, -40(%rbp)
	movq	%r15, %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB41_1:                               # =>This Inner Loop Header: Depth=1
	leaq	(%r15,%rbx), %rdi
	callq	_ZN4Vec3C2Ev
	addq	$12, %rbx
	cmpq	$192, %rbx
	jne	.LBB41_1
# BB#2:
	leaq	192(%r15), %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB41_3:                               # =>This Inner Loop Header: Depth=1
	leaq	(%r12,%rbx), %rdi
	callq	_ZN4Vec3C2Ev
	addq	$12, %rbx
	cmpq	$192, %rbx
	jne	.LBB41_3
# BB#4:
	leaq	384(%r15), %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB41_5:                               # =>This Inner Loop Header: Depth=1
	leaq	(%r12,%rbx), %rdi
	callq	_ZN4Vec3C2Ev
	addq	$12, %rbx
	cmpq	$192, %rbx
	jne	.LBB41_5
# BB#6:
	addq	$576, %r15              # imm = 0x240
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB41_7:                               # =>This Inner Loop Header: Depth=1
	leaq	(%r15,%rbx), %rdi
	callq	_ZN4Vec3C2Ev
	addq	$12, %rbx
	cmpq	$192, %rbx
	jne	.LBB41_7
# BB#8:
	movq	$0, 832(%r14)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	_ZN4CellC2Ev, .Lfunc_end41-_ZN4CellC2Ev
	.cfi_endproc

	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate
	.weak	__clang_call_terminate
	.align	16, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# BB#0:
	pushq	%rax
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end42:
	.size	__clang_call_terminate, .Lfunc_end42-__clang_call_terminate

	.section	.text._ZNK4Vec311GetLengthSqEv,"axG",@progbits,_ZNK4Vec311GetLengthSqEv,comdat
	.weak	_ZNK4Vec311GetLengthSqEv
	.align	16, 0x90
	.type	_ZNK4Vec311GetLengthSqEv,@function
_ZNK4Vec311GetLengthSqEv:               # @_ZNK4Vec311GetLengthSqEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp321:
	.cfi_def_cfa_offset 16
.Ltmp322:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp323:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end43:
	.size	_ZNK4Vec311GetLengthSqEv, .Lfunc_end43-_ZNK4Vec311GetLengthSqEv
	.cfi_endproc

	.section	.text._ZSt3maxIfERKT_S2_S2_,"axG",@progbits,_ZSt3maxIfERKT_S2_S2_,comdat
	.weak	_ZSt3maxIfERKT_S2_S2_
	.align	16, 0x90
	.type	_ZSt3maxIfERKT_S2_S2_,@function
_ZSt3maxIfERKT_S2_S2_:                  # @_ZSt3maxIfERKT_S2_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp324:
	.cfi_def_cfa_offset 16
.Ltmp325:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp326:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	(%rax), %xmm0
	jbe	.LBB44_2
# BB#1:
	movq	-24(%rbp), %rax
	jmp	.LBB44_3
.LBB44_2:
	movq	-16(%rbp), %rax
.LBB44_3:
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end44:
	.size	_ZSt3maxIfERKT_S2_S2_, .Lfunc_end44-_ZSt3maxIfERKT_S2_S2_
	.cfi_endproc

	.section	.text._ZNK4Vec3mlEf,"axG",@progbits,_ZNK4Vec3mlEf,comdat
	.weak	_ZNK4Vec3mlEf
	.align	16, 0x90
	.type	_ZNK4Vec3mlEf,@function
_ZNK4Vec3mlEf:                          # @_ZNK4Vec3mlEf
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp327:
	.cfi_def_cfa_offset 16
.Ltmp328:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp329:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movaps	%xmm0, %xmm2
	movq	%rdi, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	mulss	8(%rax), %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3C2Efff
	movl	-8(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movss	-40(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	_ZNK4Vec3mlEf, .Lfunc_end45-_ZNK4Vec3mlEf
	.cfi_endproc

	.section	.text._ZN4Vec3pLERKS_,"axG",@progbits,_ZN4Vec3pLERKS_,comdat
	.weak	_ZN4Vec3pLERKS_
	.align	16, 0x90
	.type	_ZN4Vec3pLERKS_,@function
_ZN4Vec3pLERKS_:                        # @_ZN4Vec3pLERKS_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp330:
	.cfi_def_cfa_offset 16
.Ltmp331:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp332:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	(%rsi), %xmm0
	movss	%xmm0, (%rax)
	movq	-16(%rbp), %rcx
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	4(%rcx), %xmm0
	movss	%xmm0, 4(%rax)
	movq	-16(%rbp), %rcx
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	8(%rcx), %xmm0
	movss	%xmm0, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end46:
	.size	_ZN4Vec3pLERKS_, .Lfunc_end46-_ZN4Vec3pLERKS_
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI47_0:
	.long	1065353216              # float 1
	.section	.text._ZN4Vec3dVEf,"axG",@progbits,_ZN4Vec3dVEf,comdat
	.weak	_ZN4Vec3dVEf
	.align	16, 0x90
	.type	_ZN4Vec3dVEf,@function
_ZN4Vec3dVEf:                           # @_ZN4Vec3dVEf
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp333:
	.cfi_def_cfa_offset 16
.Ltmp334:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp335:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	-8(%rbp), %rax
	movss	.LCPI47_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	mulss	(%rax), %xmm1
	movss	%xmm1, (%rax)
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm0
	movss	%xmm0, 4(%rax)
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm0
	movss	%xmm0, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end47:
	.size	_ZN4Vec3dVEf, .Lfunc_end47-_ZN4Vec3dVEf
	.cfi_endproc

	.section	.text._ZN4Vec3mIERKS_,"axG",@progbits,_ZN4Vec3mIERKS_,comdat
	.weak	_ZN4Vec3mIERKS_
	.align	16, 0x90
	.type	_ZN4Vec3mIERKS_,@function
_ZN4Vec3mIERKS_:                        # @_ZN4Vec3mIERKS_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp336:
	.cfi_def_cfa_offset 16
.Ltmp337:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp338:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	(%rsi), %xmm0
	movss	%xmm0, (%rax)
	movq	-16(%rbp), %rcx
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	subss	4(%rcx), %xmm0
	movss	%xmm0, 4(%rax)
	movq	-16(%rbp), %rcx
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	subss	8(%rcx), %xmm0
	movss	%xmm0, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end48:
	.size	_ZN4Vec3mIERKS_, .Lfunc_end48-_ZN4Vec3mIERKS_
	.cfi_endproc

	.section	.text._ZNK4Vec3plERKS_,"axG",@progbits,_ZNK4Vec3plERKS_,comdat
	.weak	_ZNK4Vec3plERKS_
	.align	16, 0x90
	.type	_ZNK4Vec3plERKS_,@function
_ZNK4Vec3plERKS_:                       # @_ZNK4Vec3plERKS_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp339:
	.cfi_def_cfa_offset 16
.Ltmp340:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp341:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	addss	(%rsi), %xmm0
	addss	4(%rsi), %xmm1
	movss	8(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	addss	8(%rsi), %xmm2
	leaq	-16(%rbp), %rdi
	callq	_ZN4Vec3C2Efff
	movl	-8(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movss	-40(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	_ZNK4Vec3plERKS_, .Lfunc_end49-_ZNK4Vec3plERKS_
	.cfi_endproc

	.section	.text._ZN4Vec3mLEf,"axG",@progbits,_ZN4Vec3mLEf,comdat
	.weak	_ZN4Vec3mLEf
	.align	16, 0x90
	.type	_ZN4Vec3mLEf,@function
_ZN4Vec3mLEf:                           # @_ZN4Vec3mLEf
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp342:
	.cfi_def_cfa_offset 16
.Ltmp343:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp344:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	-8(%rbp), %rax
	mulss	(%rax), %xmm0
	movss	%xmm0, (%rax)
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	-12(%rbp), %xmm0
	movss	%xmm0, 4(%rax)
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	-12(%rbp), %xmm0
	movss	%xmm0, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end50:
	.size	_ZN4Vec3mLEf, .Lfunc_end50-_ZN4Vec3mLEf
	.cfi_endproc

	.section	.text._ZSt4swapIP4CellEvRT_S3_,"axG",@progbits,_ZSt4swapIP4CellEvRT_S3_,comdat
	.weak	_ZSt4swapIP4CellEvRT_S3_
	.align	16, 0x90
	.type	_ZSt4swapIP4CellEvRT_S3_,@function
_ZSt4swapIP4CellEvRT_S3_:               # @_ZSt4swapIP4CellEvRT_S3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp345:
	.cfi_def_cfa_offset 16
.Ltmp346:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp347:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end51:
	.size	_ZSt4swapIP4CellEvRT_S3_, .Lfunc_end51-_ZSt4swapIP4CellEvRT_S3_
	.cfi_endproc

	.section	.text._ZSt4swapIPiEvRT_S2_,"axG",@progbits,_ZSt4swapIPiEvRT_S2_,comdat
	.weak	_ZSt4swapIPiEvRT_S2_
	.align	16, 0x90
	.type	_ZSt4swapIPiEvRT_S2_,@function
_ZSt4swapIPiEvRT_S2_:                   # @_ZSt4swapIPiEvRT_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp348:
	.cfi_def_cfa_offset 16
.Ltmp349:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp350:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end52:
	.size	_ZSt4swapIPiEvRT_S2_, .Lfunc_end52-_ZSt4swapIPiEvRT_S2_
	.cfi_endproc

	.section	.text._ZN4Vec3C2Ev,"axG",@progbits,_ZN4Vec3C2Ev,comdat
	.weak	_ZN4Vec3C2Ev
	.align	16, 0x90
	.type	_ZN4Vec3C2Ev,@function
_ZN4Vec3C2Ev:                           # @_ZN4Vec3C2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp351:
	.cfi_def_cfa_offset 16
.Ltmp352:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp353:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end53:
	.size	_ZN4Vec3C2Ev, .Lfunc_end53-_ZN4Vec3C2Ev
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init.20,@function
__cxx_global_var_init.20:               # @__cxx_global_var_init.20
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp354:
	.cfi_def_cfa_offset 16
.Ltmp355:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp356:
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit.24, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit.24, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	retq
.Lfunc_end54:
	.size	__cxx_global_var_init.20, .Lfunc_end54-__cxx_global_var_init.20
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI55_0:
	.long	3239890125              # float -9.80000019
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init.1.21,@function
__cxx_global_var_init.1.21:             # @__cxx_global_var_init.1.21
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp357:
	.cfi_def_cfa_offset 16
.Ltmp358:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp359:
	.cfi_def_cfa_register %rbp
	movss	.LCPI55_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movl	$_ZL20externalAcceleration.19, %edi
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	callq	_ZN4Vec3C2Efff
	popq	%rbp
	retq
.Lfunc_end55:
	.size	__cxx_global_var_init.1.21, .Lfunc_end55-__cxx_global_var_init.1.21
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI56_0:
	.long	3181631242              # float -0.0799999982
.LCPI56_1:
	.long	3179617976              # float -0.0649999976
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init.2.22,@function
__cxx_global_var_init.2.22:             # @__cxx_global_var_init.2.22
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp360:
	.cfi_def_cfa_offset 16
.Ltmp361:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp362:
	.cfi_def_cfa_register %rbp
	movss	.LCPI56_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI56_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	$_ZL9domainMin.17, %edi
	movaps	%xmm0, %xmm2
	callq	_ZN4Vec3C2Efff
	popq	%rbp
	retq
.Lfunc_end56:
	.size	__cxx_global_var_init.2.22, .Lfunc_end56-__cxx_global_var_init.2.22
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI57_0:
	.long	1036831949              # float 0.100000001
.LCPI57_1:
	.long	1032134328              # float 0.0649999976
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init.3.23,@function
__cxx_global_var_init.3.23:             # @__cxx_global_var_init.3.23
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp363:
	.cfi_def_cfa_offset 16
.Ltmp364:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp365:
	.cfi_def_cfa_register %rbp
	movss	.LCPI57_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI57_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	$_ZL9domainMax.16, %edi
	movaps	%xmm0, %xmm2
	callq	_ZN4Vec3C2Efff
	popq	%rbp
	retq
.Lfunc_end57:
	.size	__cxx_global_var_init.3.23, .Lfunc_end57-__cxx_global_var_init.3.23
	.cfi_endproc

	.align	16, 0x90
	.type	__cxx_global_var_init.4,@function
__cxx_global_var_init.4:                # @__cxx_global_var_init.4
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp366:
	.cfi_def_cfa_offset 16
.Ltmp367:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp368:
	.cfi_def_cfa_register %rbp
	movl	$delta, %edi
	callq	_ZN4Vec3C2Ev
	popq	%rbp
	retq
.Lfunc_end58:
	.size	__cxx_global_var_init.4, .Lfunc_end58-__cxx_global_var_init.4
	.cfi_endproc

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_cellpool.cpp
	.quad	_GLOBAL__sub_I_pthreads.cpp
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pool != __null"
	.size	.L.str, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"cellpool.cpp"
	.size	.L.str.4, 13

	.type	.L__PRETTY_FUNCTION__._Z13cellpool_initP8cellpooli,@object # @__PRETTY_FUNCTION__._Z13cellpool_initP8cellpooli
.L__PRETTY_FUNCTION__._Z13cellpool_initP8cellpooli:
	.asciz	"void cellpool_init(cellpool *, int)"
	.size	.L__PRETTY_FUNCTION__._Z13cellpool_initP8cellpooli, 36

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"particles > 0"
	.size	.L.str.5, 14

	.type	.L__PRETTY_FUNCTION__._Z16cellpool_getcellP8cellpool,@object # @__PRETTY_FUNCTION__._Z16cellpool_getcellP8cellpool
.L__PRETTY_FUNCTION__._Z16cellpool_getcellP8cellpool:
	.asciz	"Cell *cellpool_getcell(cellpool *)"
	.size	.L__PRETTY_FUNCTION__._Z16cellpool_getcellP8cellpool, 35

	.type	.L__PRETTY_FUNCTION__._Z19cellpool_returncellP8cellpoolP4Cell,@object # @__PRETTY_FUNCTION__._Z19cellpool_returncellP8cellpoolP4Cell
.L__PRETTY_FUNCTION__._Z19cellpool_returncellP8cellpoolP4Cell:
	.asciz	"void cellpool_returncell(cellpool *, Cell *)"
	.size	.L__PRETTY_FUNCTION__._Z19cellpool_returncellP8cellpoolP4Cell, 45

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cell != __null"
	.size	.L.str.6, 15

	.type	.L__PRETTY_FUNCTION__._Z16cellpool_destroyP8cellpool,@object # @__PRETTY_FUNCTION__._Z16cellpool_destroyP8cellpool
.L__PRETTY_FUNCTION__._Z16cellpool_destroyP8cellpool:
	.asciz	"void cellpool_destroy(cellpool *)"
	.size	.L__PRETTY_FUNCTION__._Z16cellpool_destroyP8cellpool, 34

	.type	_ZL9domainMax,@object   # @_ZL9domainMax
	.local	_ZL9domainMax
	.comm	_ZL9domainMax,12,4
	.type	_ZL9domainMin,@object   # @_ZL9domainMin
	.local	_ZL9domainMin
	.comm	_ZL9domainMin,12,4
	.type	_ZL20externalAcceleration,@object # @_ZL20externalAcceleration
	.local	_ZL20externalAcceleration
	.comm	_ZL20externalAcceleration,12,4
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"cells > 0"
	.size	.L.str.7, 10

	.type	.L__PRETTY_FUNCTION__._ZL19cellpool_allocblocki,@object # @__PRETTY_FUNCTION__._ZL19cellpool_allocblocki
.L__PRETTY_FUNCTION__._ZL19cellpool_allocblocki:
	.asciz	"struct datablockhdr *cellpool_allocblock(int)"
	.size	.L__PRETTY_FUNCTION__._ZL19cellpool_allocblocki, 46

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"!rv"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"(uint64_t)(temp1) % sizeof(void *) == 0"
	.size	.L.str.9, 40

	.type	.L__FUNCTION__._Z19parsec_barrier_initP16parsec_barrier_tPKij,@object # @__FUNCTION__._Z19parsec_barrier_initP16parsec_barrier_tPKij
.L__FUNCTION__._Z19parsec_barrier_initP16parsec_barrier_tPKij:
	.asciz	"parsec_barrier_init"
	.size	.L__FUNCTION__._Z19parsec_barrier_initP16parsec_barrier_tPKij, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"parsec_barrier.cpp"
	.size	.L.str.1, 19

	.type	.L.str.1.2,@object      # @.str.1.2
.L.str.1.2:
	.asciz	"barrier!=__null"
	.size	.L.str.1.2, 16

	.type	.L__PRETTY_FUNCTION__._Z22parsec_barrier_destroyP16parsec_barrier_t,@object # @__PRETTY_FUNCTION__._Z22parsec_barrier_destroyP16parsec_barrier_t
.L__PRETTY_FUNCTION__._Z22parsec_barrier_destroyP16parsec_barrier_t:
	.asciz	"int parsec_barrier_destroy(parsec_barrier_t *)"
	.size	.L__PRETTY_FUNCTION__._Z22parsec_barrier_destroyP16parsec_barrier_t, 47

	.type	.L__FUNCTION__._Z29parsec_barrierattr_setpsharedPii,@object # @__FUNCTION__._Z29parsec_barrierattr_setpsharedPii
.L__FUNCTION__._Z29parsec_barrierattr_setpsharedPii:
	.asciz	"parsec_barrierattr_setpshared"
	.size	.L__FUNCTION__._Z29parsec_barrierattr_setpsharedPii, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ERROR: Something in function %s in file %s, line %u is not implemented.\n"
	.size	.L.str.2, 73

	.type	pools,@object           # @pools
	.bss
	.globl	pools
	.align	8
pools:
	.quad	0
	.size	pools, 8

	.type	restParticlesPerMeter,@object # @restParticlesPerMeter
	.globl	restParticlesPerMeter
	.align	4
restParticlesPerMeter:
	.long	0                       # float 0
	.size	restParticlesPerMeter, 4

	.type	h,@object               # @h
	.globl	h
	.align	4
h:
	.long	0                       # float 0
	.size	h, 4

	.type	hSq,@object             # @hSq
	.globl	hSq
	.align	4
hSq:
	.long	0                       # float 0
	.size	hSq, 4

	.type	densityCoeff,@object    # @densityCoeff
	.globl	densityCoeff
	.align	4
densityCoeff:
	.long	0                       # float 0
	.size	densityCoeff, 4

	.type	pressureCoeff,@object   # @pressureCoeff
	.globl	pressureCoeff
	.align	4
pressureCoeff:
	.long	0                       # float 0
	.size	pressureCoeff, 4

	.type	viscosityCoeff,@object  # @viscosityCoeff
	.globl	viscosityCoeff
	.align	4
viscosityCoeff:
	.long	0                       # float 0
	.size	viscosityCoeff, 4

	.type	nx,@object              # @nx
	.globl	nx
	.align	4
nx:
	.long	0                       # 0x0
	.size	nx, 4

	.type	ny,@object              # @ny
	.globl	ny
	.align	4
ny:
	.long	0                       # 0x0
	.size	ny, 4

	.type	nz,@object              # @nz
	.globl	nz
	.align	4
nz:
	.long	0                       # 0x0
	.size	nz, 4

	.type	delta,@object           # @delta
	.globl	delta
	.align	4
delta:
	.zero	12
	.size	delta, 12

	.type	numParticles,@object    # @numParticles
	.globl	numParticles
	.align	4
numParticles:
	.long	0                       # 0x0
	.size	numParticles, 4

	.type	numCells,@object        # @numCells
	.globl	numCells
	.align	4
numCells:
	.long	0                       # 0x0
	.size	numCells, 4

	.type	cells,@object           # @cells
	.globl	cells
	.align	8
cells:
	.quad	0
	.size	cells, 8

	.type	cells2,@object          # @cells2
	.globl	cells2
	.align	8
cells2:
	.quad	0
	.size	cells2, 8

	.type	cnumPars,@object        # @cnumPars
	.globl	cnumPars
	.align	8
cnumPars:
	.quad	0
	.size	cnumPars, 8

	.type	cnumPars2,@object       # @cnumPars2
	.globl	cnumPars2
	.align	8
cnumPars2:
	.quad	0
	.size	cnumPars2, 8

	.type	last_cells,@object      # @last_cells
	.globl	last_cells
	.align	8
last_cells:
	.quad	0
	.size	last_cells, 8

	.type	XDIVS,@object           # @XDIVS
	.data
	.globl	XDIVS
	.align	4
XDIVS:
	.long	1                       # 0x1
	.size	XDIVS, 4

	.type	ZDIVS,@object           # @ZDIVS
	.globl	ZDIVS
	.align	4
ZDIVS:
	.long	1                       # 0x1
	.size	ZDIVS, 4

	.type	grids,@object           # @grids
	.bss
	.globl	grids
	.align	8
grids:
	.quad	0
	.size	grids, 8

	.type	border,@object          # @border
	.globl	border
	.align	8
border:
	.quad	0
	.size	border, 8

	.type	attr,@object            # @attr
	.globl	attr
	.align	8
attr:
	.zero	56
	.size	attr, 56

	.type	thread,@object          # @thread
	.globl	thread
	.align	8
thread:
	.quad	0
	.size	thread, 8

	.type	mutex,@object           # @mutex
	.globl	mutex
	.align	8
mutex:
	.quad	0
	.size	mutex, 8

	.type	barrier,@object         # @barrier
	.globl	barrier
	.align	8
barrier:
	.zero	104
	.size	barrier, 104

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Number of threads must be a power of 2"
	.size	.L.str.10, 39

	.type	.L.str.5.11,@object     # @.str.5.11
.L.str.5.11:
	.asciz	"XDIVS * ZDIVS == threadnum"
	.size	.L.str.5.11, 27

	.type	.L.str.6.12,@object     # @.str.6.12
.L.str.6.12:
	.asciz	"pthreads.cpp"
	.size	.L.str.6.12, 13

	.type	.L__PRETTY_FUNCTION__._Z7InitSimPKcj,@object # @__PRETTY_FUNCTION__._Z7InitSimPKcj
.L__PRETTY_FUNCTION__._Z7InitSimPKcj:
	.asciz	"void InitSim(const char *, unsigned int)"
	.size	.L__PRETTY_FUNCTION__._Z7InitSimPKcj, 41

	.type	.L.str.7.13,@object     # @.str.7.13
.L.str.7.13:
	.asciz	"Loading file \""
	.size	.L.str.7.13, 15

	.type	.L.str.8.14,@object     # @.str.8.14
.L.str.8.14:
	.asciz	"\"..."
	.size	.L.str.8.14, 5

	.type	.L.str.9.15,@object     # @.str.9.15
.L.str.9.15:
	.asciz	"Error opening file. Aborting."
	.size	.L.str.9.15, 30

	.type	_ZL9domainMax.16,@object # @_ZL9domainMax.16
	.local	_ZL9domainMax.16
	.comm	_ZL9domainMax.16,12,4
	.type	_ZL9domainMin.17,@object # @_ZL9domainMin.17
	.local	_ZL9domainMin.17
	.comm	_ZL9domainMin.17,12,4
	.type	.L.str.10.18,@object    # @.str.10.18
.L.str.10.18:
	.asciz	"nx >= 1 && ny >= 1 && nz >= 1"
	.size	.L.str.10.18, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Number of cells: "
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"delta.x >= h && delta.y >= h && delta.z >= h"
	.size	.L.str.12, 45

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Grids steps over x, y, z: "
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	" "
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"nx >= XDIVS && nz >= ZDIVS"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"sx < ex"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"sz < ez"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gi == ((XDIVS) * (ZDIVS))"
	.size	.L.str.18, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"(rv0==0) && (rv1==0) && (rv2==0) && (rv3==0) && (rv4==0)"
	.size	.L.str.19, 57

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Number of particles: "
	.size	.L.str.20, 22

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Saving file \""
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"file"
	.size	.L.str.22, 5

	.type	.L__PRETTY_FUNCTION__._Z8SaveFilePKc,@object # @__PRETTY_FUNCTION__._Z8SaveFilePKc
.L__PRETTY_FUNCTION__._Z8SaveFilePKc:
	.asciz	"void SaveFile(const char *)"
	.size	.L__PRETTY_FUNCTION__._Z8SaveFilePKc, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"count == numParticles"
	.size	.L.str.23, 22

	.type	_ZL20externalAcceleration.19,@object # @_ZL20externalAcceleration.19
	.local	_ZL20externalAcceleration.19
	.comm	_ZL20externalAcceleration.19,12,4
	.type	_ZL8timeStep,@object    # @_ZL8timeStep
	.data
	.align	4
_ZL8timeStep:
	.long	981668463               # float 0.00100000005
	.size	_ZL8timeStep, 4

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"PARSEC Benchmark Suite"
	.size	.L.str.24, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Usage: "
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	" <threadnum> <framenum> <.fluid input file> [.fluid output file]"
	.size	.L.str.26, 65

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"<threadnum> must at least be 1"
	.size	.L.str.27, 31

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"<framenum> must at least be 1"
	.size	.L.str.28, 30

	.type	_ZStL8__ioinit.24,@object # @_ZStL8__ioinit.24
	.local	_ZStL8__ioinit.24
	.comm	_ZStL8__ioinit.24,1,1

	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.section	".note.GNU-stack","",@progbits
