	.text
	.file	"swaptions_perf.bc1"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4620693217682128896    # double -0.5
.LCPI0_2:
	.quad	4601237667291888353     # double 0.41999999999999998
.LCPI0_3:
	.quad	4607182418800017408     # double 1
.LCPI0_5:
	.quad	0                       # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
.LCPI0_4:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	_Z12CumNormalInvd
	.align	16, 0x90
	.type	_Z12CumNormalInvd,@function
_Z12CumNormalInvd:                      # @_Z12CumNormalInvd
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
	movsd	%xmm0, -16(%rbp)
	addsd	.LCPI0_0(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	andpd	.LCPI0_1(%rip), %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_2
# BB#1:
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	_ZL1a+24(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	_ZL1a+16(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	_ZL1a+8(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	_ZL1a(%rip), %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	_ZL1b+24(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	_ZL1b+16(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	_ZL1b+8(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	_ZL1b(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	.LCPI0_3(%rip), %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_4
# BB#3:
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB0_4:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log
	xorpd	.LCPI0_4(%rip), %xmm0
	callq	log
	movsd	%xmm0, -32(%rbp)
	movsd	_ZL1c+64(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	_ZL1c+56(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	_ZL1c+48(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	_ZL1c+40(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	_ZL1c+32(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	_ZL1c+24(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	_ZL1c+16(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	_ZL1c+8(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	_ZL1c(%rip), %xmm1
	movsd	%xmm1, -32(%rbp)
	xorpd	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB0_6
# BB#5:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	xorpd	.LCPI0_4(%rip), %xmm0
	movlpd	%xmm0, -32(%rbp)
.LBB0_6:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
.LBB0_7:
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z12CumNormalInvd, .Lfunc_end0-_Z12CumNormalInvd
	.cfi_endproc

	.globl	_Z17HJM_SimPath_YieldPPdiidS_S0_Pl
	.align	16, 0x90
	.type	_Z17HJM_SimPath_YieldPPdiidS_S0_Pl,@function
_Z17HJM_SimPath_YieldPPdiidS_S0_Pl:     # @_Z17HJM_SimPath_YieldPPdiidS_S0_Pl
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -60(%rbp)
	movslq	-20(%rbp), %rsi
	decq	%rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -72(%rbp)
	movslq	-24(%rbp), %rsi
	decq	%rsi
	movslq	-20(%rbp), %rcx
	addq	$-2, %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	_Z7dmatrixllll
	movq	%rax, -80(%rbp)
	movslq	-20(%rbp), %rsi
	addq	$-2, %rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	_Z20HJM_Yield_to_ForwardPdiS_
	movl	%eax, -60(%rbp)
	cmpl	$1, %eax
	jne	.LBB1_1
# BB#2:
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %r8
	callq	_Z10HJM_DriftsPdPS_iidS0_
	movl	%eax, -60(%rbp)
	cmpl	$1, %eax
	jne	.LBB1_1
# BB#3:
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-56(%rbp), %rax
	movq	%rax, (%rsp)
	callq	_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl
	movl	%eax, -60(%rbp)
	cmpl	$1, %eax
	je	.LBB1_4
.LBB1_1:
	movq	-72(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	decq	%rdx
	xorl	%esi, %esi
	callq	_Z12free_dvectorPdll
	movq	-80(%rbp), %rdi
	movslq	-24(%rbp), %rdx
	decq	%rdx
	movslq	-20(%rbp), %r8
	addq	$-2, %r8
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	callq	_Z12free_dmatrixPPdllll
	movq	-88(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	decq	%rdx
	xorl	%esi, %esi
	callq	_Z12free_dvectorPdll
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_5:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.LBB1_4:
	movq	-72(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	decq	%rdx
	xorl	%esi, %esi
	callq	_Z12free_dvectorPdll
	movq	-80(%rbp), %rdi
	movslq	-24(%rbp), %rdx
	decq	%rdx
	movslq	-20(%rbp), %r8
	addq	$-2, %r8
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	callq	_Z12free_dmatrixPPdllll
	movq	-88(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	decq	%rdx
	xorl	%esi, %esi
	callq	_Z12free_dvectorPdll
	movl	$1, -60(%rbp)
	movl	$1, -4(%rbp)
	jmp	.LBB1_5
.Lfunc_end1:
	.size	_Z17HJM_SimPath_YieldPPdiidS_S0_Pl, .Lfunc_end1-_Z17HJM_SimPath_YieldPPdiidS_S0_Pl
	.cfi_endproc

	.globl	_Z20HJM_Yield_to_ForwardPdiS_
	.align	16, 0x90
	.type	_Z20HJM_Yield_to_ForwardPdiS_,@function
_Z20HJM_Yield_to_ForwardPdiS_:          # @_Z20HJM_Yield_to_ForwardPdiS_
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -32(%rbp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	movslq	-32(%rbp), %rax
	leal	1(%rax), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movq	-24(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	cvtsi2sdl	%eax, %xmm1
	mulsd	-8(%rcx,%rax,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-32(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -32(%rbp)
	jle	.LBB2_2
# BB#3:
	movl	$1, -28(%rbp)
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_Z20HJM_Yield_to_ForwardPdiS_, .Lfunc_end2-_Z20HJM_Yield_to_ForwardPdiS_
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	_Z10HJM_DriftsPdPS_iidS0_
	.align	16, 0x90
	.type	_Z10HJM_DriftsPdPS_iidS0_,@function
_Z10HJM_DriftsPdPS_iidS0_:              # @_Z10HJM_DriftsPdPS_iidS0_
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -44(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	$0, -48(%rbp)
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movsd	(%rcx), %xmm2           # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	mulsd	%xmm2, %xmm1
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsd	%xmm1, (%rax)
	incl	-48(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	decl	%eax
	cmpl	%eax, -48(%rbp)
	jle	.LBB3_2
# BB#3:
	movl	$0, -48(%rbp)
	jmp	.LBB3_4
	.align	16, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_4 Depth=1
	incl	-48(%rbp)
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
                                        #       Child Loop BB3_8 Depth 3
                                        #       Child Loop BB3_11 Depth 3
	movl	-24(%rbp), %eax
	decl	%eax
	cmpl	%eax, -48(%rbp)
	jg	.LBB3_15
# BB#5:                                 #   in Loop: Header=BB3_4 Depth=1
	movl	$1, -52(%rbp)
	jmp	.LBB3_6
	.align	16, 0x90
.LBB3_13:                               #   in Loop: Header=BB3_6 Depth=2
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	mulsd	%xmm2, %xmm1
	movslq	-52(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	addsd	(%rcx,%rax,8), %xmm1
	movsd	%xmm1, (%rcx,%rax,8)
	incl	-52(%rbp)
.LBB3_6:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_8 Depth 3
                                        #       Child Loop BB3_11 Depth 3
	movl	-20(%rbp), %eax
	addl	$-2, %eax
	cmpl	%eax, -52(%rbp)
	jg	.LBB3_14
# BB#7:                                 #   in Loop: Header=BB3_6 Depth=2
	movslq	-52(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	$0, (%rcx,%rax,8)
	movl	$0, -56(%rbp)
	jmp	.LBB3_8
	.align	16, 0x90
.LBB3_9:                                #   in Loop: Header=BB3_8 Depth=3
	movslq	-56(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movslq	-52(%rbp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	subsd	(%rcx,%rax,8), %xmm1
	movsd	%xmm1, (%rcx,%rdx,8)
	incl	-56(%rbp)
.LBB3_8:                                #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-52(%rbp), %eax
	decl	%eax
	cmpl	%eax, -56(%rbp)
	jle	.LBB3_9
# BB#10:                                #   in Loop: Header=BB3_6 Depth=2
	movq	$0, -72(%rbp)
	movl	$0, -56(%rbp)
	jmp	.LBB3_11
	.align	16, 0x90
.LBB3_12:                               #   in Loop: Header=BB3_11 Depth=3
	movslq	-56(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	(%rcx,%rax,8), %xmm1
	movsd	%xmm1, -72(%rbp)
	incl	-56(%rbp)
.LBB3_11:                               #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB3_12
	jmp	.LBB3_13
.LBB3_15:
	movl	$0, -48(%rbp)
	jmp	.LBB3_16
	.align	16, 0x90
.LBB3_20:                               #   in Loop: Header=BB3_16 Depth=1
	incl	-48(%rbp)
.LBB3_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
	movl	-20(%rbp), %eax
	addl	$-2, %eax
	cmpl	%eax, -48(%rbp)
	jg	.LBB3_21
# BB#17:                                #   in Loop: Header=BB3_16 Depth=1
	movslq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movl	$0, -52(%rbp)
	jmp	.LBB3_18
	.align	16, 0x90
.LBB3_19:                               #   in Loop: Header=BB3_18 Depth=2
	movslq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	incl	-52(%rbp)
.LBB3_18:                               #   Parent Loop BB3_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	decl	%eax
	cmpl	%eax, -52(%rbp)
	jle	.LBB3_19
	jmp	.LBB3_20
.LBB3_21:
	movl	$1, -44(%rbp)
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_Z10HJM_DriftsPdPS_iidS0_, .Lfunc_end3-_Z10HJM_DriftsPdPS_iidS0_
	.cfi_endproc

	.globl	_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl
	.align	16, 0x90
	.type	_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl,@function
_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl: # @_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl
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
	subq	$112, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movslq	-16(%rbp), %rsi
	decq	%rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -96(%rbp)
	movl	$0, -64(%rbp)
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	incl	-64(%rbp)
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -64(%rbp)
	jg	.LBB4_6
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -68(%rbp)
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_3 Depth=2
	movslq	-68(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	$0, (%rcx,%rax,8)
	incl	-68(%rbp)
.LBB4_3:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -68(%rbp)
	jle	.LBB4_4
	jmp	.LBB4_5
.LBB4_6:
	movl	$0, -64(%rbp)
	jmp	.LBB4_7
	.align	16, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_7 Depth=1
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-64(%rbp)
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -64(%rbp)
	jle	.LBB4_8
# BB#9:
	movl	$1, -68(%rbp)
	jmp	.LBB4_10
	.align	16, 0x90
.LBB4_22:                               #   in Loop: Header=BB4_10 Depth=1
	incl	-68(%rbp)
.LBB4_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #     Child Loop BB4_15 Depth 2
                                        #       Child Loop BB4_17 Depth 3
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -68(%rbp)
	jg	.LBB4_23
# BB#11:                                #   in Loop: Header=BB4_10 Depth=1
	movl	$0, -72(%rbp)
	jmp	.LBB4_12
	.align	16, 0x90
.LBB4_13:                               #   in Loop: Header=BB4_12 Depth=2
	movq	-56(%rbp), %rdi
	callq	_Z7RanUnifPl
	callq	_Z12CumNormalInvd
	movslq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-72(%rbp)
.LBB4_12:                               #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	decl	%eax
	cmpl	%eax, -72(%rbp)
	jle	.LBB4_13
# BB#14:                                #   in Loop: Header=BB4_10 Depth=1
	movl	$0, -72(%rbp)
	jmp	.LBB4_15
	.align	16, 0x90
.LBB4_21:                               #   in Loop: Header=BB4_15 Depth=2
	mulsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm2
	movslq	-72(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	%xmm2, (%rcx,%rax,8)
	incl	-72(%rbp)
.LBB4_15:                               #   Parent Loop BB4_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_17 Depth 3
	movl	-12(%rbp), %eax
	movl	-68(%rbp), %ecx
	incl	%ecx
	subl	%ecx, %eax
	cmpl	%eax, -72(%rbp)
	jg	.LBB4_22
# BB#16:                                #   in Loop: Header=BB4_15 Depth=2
	movq	$0, -88(%rbp)
	movl	$0, -64(%rbp)
	jmp	.LBB4_17
	.align	16, 0x90
.LBB4_18:                               #   in Loop: Header=BB4_17 Depth=3
	movslq	-72(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	mulsd	(%rax,%rcx,8), %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	incl	-64(%rbp)
.LBB4_17:                               #   Parent Loop BB4_10 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-16(%rbp), %eax
	decl	%eax
	cmpl	%eax, -64(%rbp)
	jle	.LBB4_18
# BB#19:                                #   in Loop: Header=BB4_15 Depth=2
	movslq	-72(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-8(%rdx,%rcx,8), %rcx
	movq	-40(%rbp), %rdx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	(%rdx,%rax,8), %xmm2    # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	8(%rcx,%rax,8), %xmm2
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB4_21
# BB#20:                                # %call.sqrt
                                        #   in Loop: Header=BB4_15 Depth=2
	movsd	%xmm2, -104(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	jmp	.LBB4_21
.LBB4_23:
	movq	-96(%rbp), %rdi
	movslq	-16(%rbp), %rdx
	decq	%rdx
	xorl	%esi, %esi
	callq	_Z12free_dvectorPdll
	movl	$1, -60(%rbp)
	movl	$1, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl, .Lfunc_end4-_Z19HJM_SimPath_ForwardPPdiidS_S_S0_Pl
	.cfi_endproc

	.globl	_Z11HJM_FactorsPPdiiS_S0_
	.align	16, 0x90
	.type	_Z11HJM_FactorsPPdiiS_S0_,@function
_Z11HJM_FactorsPPdiiS_S0_:              # @_Z11HJM_FactorsPPdiiS_S0_
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -36(%rbp)
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_1 Depth=1
	incl	-36(%rbp)
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-16(%rbp), %eax
	decl	%eax
	cmpl	%eax, -36(%rbp)
	jg	.LBB5_8
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -40(%rbp)
	jmp	.LBB5_3
	.align	16, 0x90
.LBB5_6:                                #   in Loop: Header=BB5_3 Depth=2
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-40(%rbp)
.LBB5_3:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	addl	$-2, %eax
	cmpl	%eax, -40(%rbp)
	jg	.LBB5_7
# BB#4:                                 #   in Loop: Header=BB5_3 Depth=2
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	-24(%rbp), %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB5_6
# BB#5:                                 # %call.sqrt
                                        #   in Loop: Header=BB5_3 Depth=2
	movapd	%xmm1, %xmm0
	callq	sqrt
	jmp	.LBB5_6
.LBB5_8:
	movl	$1, -44(%rbp)
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_Z11HJM_FactorsPPdiiS_S0_, .Lfunc_end5-_Z11HJM_FactorsPPdiiS_S0_
	.cfi_endproc

	.globl	_Z16HJM_CorrelationsPPdiiS0_
	.align	16, 0x90
	.type	_Z16HJM_CorrelationsPPdiiS0_,@function
_Z16HJM_CorrelationsPPdiiS0_:           # @_Z16HJM_CorrelationsPPdiiS0_
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -28(%rbp)
	movslq	-12(%rbp), %rsi
	addq	$-2, %rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -48(%rbp)
	movslq	-16(%rbp), %rsi
	decq	%rsi
	movslq	-12(%rbp), %rcx
	addq	$-2, %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	_Z7dmatrixllll
	movq	%rax, -56(%rbp)
	movl	$0, -32(%rbp)
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_7:                                #   in Loop: Header=BB6_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-32(%rbp)
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-12(%rbp), %eax
	addl	$-2, %eax
	cmpl	%eax, -32(%rbp)
	jg	.LBB6_8
# BB#2:                                 #   in Loop: Header=BB6_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movl	$0, -36(%rbp)
	jmp	.LBB6_3
	.align	16, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_3 Depth=2
	movslq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movq	-48(%rbp), %rcx
	addsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-36(%rbp)
.LBB6_3:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	decl	%eax
	cmpl	%eax, -36(%rbp)
	jle	.LBB6_4
# BB#5:                                 #   in Loop: Header=BB6_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB6_7
# BB#6:                                 # %call.sqrt
                                        #   in Loop: Header=BB6_1 Depth=1
	movapd	%xmm1, %xmm0
	callq	sqrt
	jmp	.LBB6_7
.LBB6_8:
	movl	$0, -32(%rbp)
	jmp	.LBB6_9
	.align	16, 0x90
.LBB6_13:                               #   in Loop: Header=BB6_9 Depth=1
	incl	-32(%rbp)
.LBB6_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
	movl	-12(%rbp), %eax
	addl	$-2, %eax
	cmpl	%eax, -32(%rbp)
	jg	.LBB6_14
# BB#10:                                #   in Loop: Header=BB6_9 Depth=1
	movl	$0, -36(%rbp)
	jmp	.LBB6_11
	.align	16, 0x90
.LBB6_12:                               #   in Loop: Header=BB6_11 Depth=2
	movslq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdx
	divsd	(%rdx,%rax,8), %xmm0
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-36(%rbp)
.LBB6_11:                               #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	decl	%eax
	cmpl	%eax, -36(%rbp)
	jle	.LBB6_12
	jmp	.LBB6_13
.LBB6_14:
	movl	$0, -32(%rbp)
	jmp	.LBB6_15
	.align	16, 0x90
.LBB6_19:                               #   in Loop: Header=BB6_15 Depth=1
	incl	-32(%rbp)
.LBB6_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_17 Depth 2
	movl	-12(%rbp), %eax
	addl	$-2, %eax
	cmpl	%eax, -32(%rbp)
	jg	.LBB6_20
# BB#16:                                #   in Loop: Header=BB6_15 Depth=1
	movl	$0, -36(%rbp)
	jmp	.LBB6_17
	.align	16, 0x90
.LBB6_18:                               #   in Loop: Header=BB6_17 Depth=2
	movslq	-36(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	$0, (%rcx,%rax,8)
	incl	-36(%rbp)
.LBB6_17:                               #   Parent Loop BB6_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	addl	$-2, %eax
	cmpl	%eax, -36(%rbp)
	jle	.LBB6_18
	jmp	.LBB6_19
.LBB6_20:
	movl	$0, -32(%rbp)
	jmp	.LBB6_21
	.align	16, 0x90
.LBB6_28:                               #   in Loop: Header=BB6_21 Depth=1
	incl	-32(%rbp)
.LBB6_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_23 Depth 2
                                        #       Child Loop BB6_25 Depth 3
	movl	-12(%rbp), %eax
	addl	$-2, %eax
	cmpl	%eax, -32(%rbp)
	jg	.LBB6_29
# BB#22:                                #   in Loop: Header=BB6_21 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_23
	.align	16, 0x90
.LBB6_27:                               #   in Loop: Header=BB6_23 Depth=2
	incl	-36(%rbp)
.LBB6_23:                               #   Parent Loop BB6_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_25 Depth 3
	movl	-12(%rbp), %eax
	addl	$-2, %eax
	cmpl	%eax, -36(%rbp)
	jg	.LBB6_28
# BB#24:                                #   in Loop: Header=BB6_23 Depth=2
	movl	$0, -40(%rbp)
	jmp	.LBB6_25
	.align	16, 0x90
.LBB6_26:                               #   in Loop: Header=BB6_25 Depth=3
	movslq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm0
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	addsd	(%rax,%rdx,8), %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	incl	-40(%rbp)
.LBB6_25:                               #   Parent Loop BB6_21 Depth=1
                                        #     Parent Loop BB6_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-16(%rbp), %eax
	decl	%eax
	cmpl	%eax, -40(%rbp)
	jle	.LBB6_26
	jmp	.LBB6_27
.LBB6_29:
	movq	-48(%rbp), %rdi
	movslq	-12(%rbp), %rdx
	addq	$-2, %rdx
	xorl	%esi, %esi
	callq	_Z12free_dvectorPdll
	movq	-56(%rbp), %rdi
	movslq	-16(%rbp), %rdx
	decq	%rdx
	movslq	-12(%rbp), %r8
	addq	$-2, %r8
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	callq	_Z12free_dmatrixPPdllll
	movl	$1, -28(%rbp)
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_Z16HJM_CorrelationsPPdiiS0_, .Lfunc_end6-_Z16HJM_CorrelationsPPdiiS0_
	.cfi_endproc

	.globl	_Z20HJM_Forward_to_YieldPdiS_
	.align	16, 0x90
	.type	_Z20HJM_Forward_to_YieldPdiS_,@function
_Z20HJM_Forward_to_YieldPdiS_:          # @_Z20HJM_Forward_to_YieldPdiS_
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -32(%rbp)
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	movslq	-32(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	-8(%rbp), %rcx
	mulsd	-8(%rcx,%rax,8), %xmm0
	movq	-24(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm0
	leal	1(%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-32(%rbp)
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -32(%rbp)
	jle	.LBB7_2
# BB#3:
	movl	$1, -28(%rbp)
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_Z20HJM_Forward_to_YieldPdiS_, .Lfunc_end7-_Z20HJM_Forward_to_YieldPdiS_
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	_Z16Discount_FactorsPdidS_
	.align	16, 0x90
	.type	_Z16Discount_FactorsPdidS_,@function
_Z16Discount_FactorsPdidS_:             # @_Z16Discount_FactorsPdidS_
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	$0, -36(%rbp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	jmp	.LBB8_1
	.align	16, 0x90
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	incl	-36(%rbp)
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %ecx
	decl	%ecx
	cmpl	%ecx, -36(%rbp)
	jle	.LBB8_2
# BB#3:
	movl	$1, -36(%rbp)
	jmp	.LBB8_4
	.align	16, 0x90
.LBB8_8:                                #   in Loop: Header=BB8_4 Depth=1
	incl	-36(%rbp)
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -36(%rbp)
	jg	.LBB8_9
# BB#5:                                 #   in Loop: Header=BB8_4 Depth=1
	movl	$0, -40(%rbp)
	jmp	.LBB8_6
	.align	16, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_6 Depth=2
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	xorpd	.LCPI8_0(%rip), %xmm0
	mulsd	-56(%rbp), %xmm0
	callq	exp
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-40(%rbp)
.LBB8_6:                                #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	decl	%eax
	cmpl	%eax, -40(%rbp)
	jle	.LBB8_7
	jmp	.LBB8_8
.LBB8_9:
	movl	$1, -44(%rbp)
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_Z16Discount_FactorsPdidS_, .Lfunc_end8-_Z16Discount_FactorsPdidS_
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	_Z20Discount_Factors_optPdidS_
	.align	16, 0x90
	.type	_Z20Discount_Factors_optPdidS_,@function
_Z20Discount_Factors_optPdidS_:         # @_Z20Discount_Factors_optPdidS_
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movslq	-12(%rbp), %rsi
	addq	$-2, %rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	jmp	.LBB9_1
	.align	16, 0x90
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	incl	-36(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %ecx
	decl	%ecx
	cmpl	%ecx, -36(%rbp)
	jle	.LBB9_2
# BB#3:
	movl	$0, -40(%rbp)
	movapd	.LCPI9_0(%rip), %xmm0   # xmm0 = [9223372036854775808,9223372036854775808]
	jmp	.LBB9_4
	.align	16, 0x90
.LBB9_5:                                #   in Loop: Header=BB9_4 Depth=1
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movq	-64(%rbp), %rcx
	movsd	%xmm1, (%rcx,%rax,8)
	incl	-40(%rbp)
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	addl	$-2, %eax
	cmpl	%eax, -40(%rbp)
	jle	.LBB9_5
# BB#6:
	movl	$0, -40(%rbp)
	jmp	.LBB9_7
	.align	16, 0x90
.LBB9_8:                                #   in Loop: Header=BB9_7 Depth=1
	movslq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	callq	exp
	movslq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-40(%rbp)
.LBB9_7:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	addl	$-2, %eax
	cmpl	%eax, -40(%rbp)
	jle	.LBB9_8
# BB#9:
	movl	$1, -36(%rbp)
	jmp	.LBB9_10
	.align	16, 0x90
.LBB9_14:                               #   in Loop: Header=BB9_10 Depth=1
	incl	-36(%rbp)
.LBB9_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_12 Depth 2
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -36(%rbp)
	jg	.LBB9_15
# BB#11:                                #   in Loop: Header=BB9_10 Depth=1
	movl	$0, -40(%rbp)
	jmp	.LBB9_12
	.align	16, 0x90
.LBB9_13:                               #   in Loop: Header=BB9_12 Depth=2
	movslq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movsd	(%rsi,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rsi,%rdx,8)
	incl	-40(%rbp)
.LBB9_12:                               #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	decl	%eax
	cmpl	%eax, -40(%rbp)
	jle	.LBB9_13
	jmp	.LBB9_14
.LBB9_15:
	movq	-64(%rbp), %rdi
	movslq	-12(%rbp), %rdx
	addq	$-2, %rdx
	xorl	%esi, %esi
	callq	_Z12free_dvectorPdll
	movl	$1, -44(%rbp)
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_Z20Discount_Factors_optPdidS_, .Lfunc_end9-_Z20Discount_Factors_optPdidS_
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	_Z25Discount_Factors_BlockingPdidS_i
	.align	16, 0x90
	.type	_Z25Discount_Factors_BlockingPdidS_i,@function
_Z25Discount_Factors_BlockingPdidS_i:   # @_Z25Discount_Factors_BlockingPdidS_i
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movslq	-12(%rbp), %rax
	decq	%rax
	movslq	-36(%rbp), %rsi
	imulq	%rax, %rsi
	decq	%rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -72(%rbp)
	movl	$0, -44(%rbp)
	movapd	.LCPI10_0(%rip), %xmm0  # xmm0 = [9223372036854775808,9223372036854775808]
	jmp	.LBB10_1
	.align	16, 0x90
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movq	-72(%rbp), %rcx
	movsd	%xmm1, (%rcx,%rax,8)
	incl	-44(%rbp)
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	decl	%eax
	imull	-36(%rbp), %eax
	decl	%eax
	cmpl	%eax, -44(%rbp)
	jle	.LBB10_2
# BB#3:
	movl	$0, -44(%rbp)
	jmp	.LBB10_4
	.align	16, 0x90
.LBB10_5:                               #   in Loop: Header=BB10_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	-72(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	callq	exp
	movslq	-44(%rbp), %rax
	movq	-72(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-44(%rbp)
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	decl	%eax
	imull	-36(%rbp), %eax
	decl	%eax
	cmpl	%eax, -44(%rbp)
	jle	.LBB10_5
# BB#6:
	movl	$0, -40(%rbp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	jmp	.LBB10_7
	.align	16, 0x90
.LBB10_8:                               #   in Loop: Header=BB10_7 Depth=1
	movslq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	incl	-40(%rbp)
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %ecx
	imull	-36(%rbp), %ecx
	cmpl	%ecx, -40(%rbp)
	jl	.LBB10_8
# BB#9:
	movl	$1, -40(%rbp)
	jmp	.LBB10_10
	.align	16, 0x90
.LBB10_17:                              #   in Loop: Header=BB10_10 Depth=1
	incl	-40(%rbp)
.LBB10_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_12 Depth 2
                                        #       Child Loop BB10_14 Depth 3
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -40(%rbp)
	jg	.LBB10_18
# BB#11:                                #   in Loop: Header=BB10_10 Depth=1
	movl	$0, -48(%rbp)
	jmp	.LBB10_12
	.align	16, 0x90
.LBB10_16:                              #   in Loop: Header=BB10_12 Depth=2
	incl	-48(%rbp)
.LBB10_12:                              #   Parent Loop BB10_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_14 Depth 3
	movl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB10_17
# BB#13:                                #   in Loop: Header=BB10_12 Depth=2
	movl	$0, -44(%rbp)
	jmp	.LBB10_14
	.align	16, 0x90
.LBB10_15:                              #   in Loop: Header=BB10_14 Depth=3
	movslq	-44(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	%rcx, %rax
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	-72(%rbp), %rsi
	movslq	-40(%rbp), %rdi
	imulq	%rcx, %rdi
	addq	%rdx, %rdi
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	(%rsi,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%rdi,8)
	incl	-44(%rbp)
.LBB10_14:                              #   Parent Loop BB10_10 Depth=1
                                        #     Parent Loop BB10_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-40(%rbp), %eax
	decl	%eax
	cmpl	%eax, -44(%rbp)
	jle	.LBB10_15
	jmp	.LBB10_16
.LBB10_18:
	movq	-72(%rbp), %rdi
	movslq	-12(%rbp), %rax
	decq	%rax
	movslq	-36(%rbp), %rdx
	imulq	%rax, %rdx
	decq	%rdx
	xorl	%esi, %esi
	callq	_Z12free_dvectorPdll
	movl	$1, -52(%rbp)
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_Z25Discount_Factors_BlockingPdidS_i, .Lfunc_end10-_Z25Discount_Factors_BlockingPdidS_i
	.cfi_endproc

	.globl	_Z6workerPv
	.align	16, 0x90
	.type	_Z6workerPv,@function
_Z6workerPv:                            # @_Z6workerPv
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp36:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	(%rdi), %ecx
	movl	%ecx, -20(%rbp)
	movl	nSwaptions(%rip), %eax
	cltd
	idivl	nThreads(%rip)
	cmpl	%edx, %ecx
	jge	.LBB11_2
# BB#1:
	movl	nSwaptions(%rip), %eax
	cltd
	idivl	nThreads(%rip)
	incl	%eax
	movl	%eax, -60(%rbp)
	imull	-20(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	incl	%eax
	imull	-60(%rbp), %eax
	jmp	.LBB11_3
.LBB11_2:
	movl	nSwaptions(%rip), %eax
	cltd
	idivl	nThreads(%rip)
	movl	%eax, -60(%rbp)
	movl	nSwaptions(%rip), %eax
	cltd
	idivl	nThreads(%rip)
	movl	%edx, -64(%rbp)
	movl	-60(%rbp), %eax
	incl	%eax
	imull	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-20(%rbp), %ecx
	subl	-64(%rbp), %ecx
	imull	-60(%rbp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	-20(%rbp), %eax
	subl	-64(%rbp), %eax
	incl	%eax
	imull	-60(%rbp), %eax
	addl	-68(%rbp), %eax
.LBB11_3:
	movl	%eax, -56(%rbp)
	movl	nThreads(%rip), %eax
	decl	%eax
	cmpl	%eax, -20(%rbp)
	jne	.LBB11_5
# BB#4:
	movl	nSwaptions(%rip), %eax
	movl	%eax, -56(%rbp)
.LBB11_5:
	movl	-52(%rbp), %eax
	movl	%eax, -72(%rbp)
	leaq	-48(%rbp), %rbx
	jmp	.LBB11_6
	.align	16, 0x90
.LBB11_8:                               #   in Loop: Header=BB11_6 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-72(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movsd	%xmm0, 8(%rcx,%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-72(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movsd	%xmm0, 16(%rcx,%rax)
	incl	-72(%rbp)
.LBB11_6:                               # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB11_9
# BB#7:                                 #   in Loop: Header=BB11_6 Depth=1
	movslq	-72(%rbp), %r9
	movq	swaptions(%rip), %rax
	imulq	$104, %r9, %rdi
	movsd	24(%rax,%rdi), %xmm0    # xmm0 = mem[0],zero
	movsd	32(%rax,%rdi), %xmm1    # xmm1 = mem[0],zero
	movsd	40(%rax,%rdi), %xmm2    # xmm2 = mem[0],zero
	movsd	48(%rax,%rdi), %xmm3    # xmm3 = mem[0],zero
	movsd	56(%rax,%rdi), %xmm4    # xmm4 = mem[0],zero
	movl	64(%rax,%rdi), %esi
	movl	80(%rax,%rdi), %edx
	movsd	72(%rax,%rdi), %xmm5    # xmm5 = mem[0],zero
	movq	88(%rax,%rdi), %rcx
	movq	96(%rax,%rdi), %r8
	addq	swaption_seed(%rip), %r9
	movslq	NUM_TRIALS(%rip), %rax
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	movl	$16, 8(%rsp)
	movq	%rbx, %rdi
	callq	_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii
	movl	%eax, -76(%rbp)
	cmpl	$1, %eax
	je	.LBB11_8
# BB#10:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$110, %edx
	movl	$.L__PRETTY_FUNCTION__._Z6workerPv, %ecx
	callq	__assert_fail
.LBB11_9:
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_Z6workerPv, .Lfunc_end11-_Z6workerPv
	.cfi_endproc

	.globl	_Z11print_usagePc
	.align	16, 0x90
	.type	_Z11print_usagePc,@function
_Z11print_usagePc:                      # @_Z11print_usagePc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rcx
	movq	%rcx, -8(%rbp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	callq	fprintf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_Z11print_usagePc, .Lfunc_end12-_Z11print_usagePc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI13_1:
	.quad	4633641066610819072     # double 60
.LCPI13_2:
	.quad	4598175219545276416     # double 0.25
.LCPI13_3:
	.quad	4617315517961601024     # double 5
.LCPI13_4:
	.quad	4632092954238910464     # double 49
.LCPI13_5:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI13_6:
	.quad	4572414629676717179     # double 0.0050000000000000001
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
.Ltmp43:
	.cfi_offset %rbx, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
	movl	$0, -28(%rbp)
	movl	%edi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -64(%rbp)
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	fflush
	cmpl	$1, -32(%rbp)
	je	.LBB13_34
# BB#1:
	movl	$1, -68(%rbp)
	jmp	.LBB13_2
	.align	16, 0x90
.LBB13_4:                               #   in Loop: Header=BB13_2 Depth=1
	movslq	-68(%rbp), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	callq	atoi
	movl	%eax, NUM_TRIALS(%rip)
	incl	-68(%rbp)
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB13_11
# BB#3:                                 #   in Loop: Header=BB13_2 Depth=1
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movl	$.L.str.9, %edi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB13_4
# BB#5:                                 #   in Loop: Header=BB13_2 Depth=1
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movl	$.L.str.10, %edi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB13_6
# BB#7:                                 #   in Loop: Header=BB13_2 Depth=1
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movl	$.L.str.11, %edi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB13_8
# BB#9:                                 #   in Loop: Header=BB13_2 Depth=1
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movl	$.L.str.12, %edi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB13_33
# BB#10:                                #   in Loop: Header=BB13_2 Depth=1
	movslq	-68(%rbp), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	callq	atoi
	cltq
	movq	%rax, seed(%rip)
	incl	-68(%rbp)
	jmp	.LBB13_2
	.align	16, 0x90
.LBB13_6:                               #   in Loop: Header=BB13_2 Depth=1
	movslq	-68(%rbp), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	callq	atoi
	movl	%eax, nThreads(%rip)
	incl	-68(%rbp)
	jmp	.LBB13_2
.LBB13_8:                               #   in Loop: Header=BB13_2 Depth=1
	movslq	-68(%rbp), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	callq	atoi
	movl	%eax, nSwaptions(%rip)
	incl	-68(%rbp)
	jmp	.LBB13_2
.LBB13_11:
	movl	nSwaptions(%rip), %eax
	cmpl	nThreads(%rip), %eax
	jl	.LBB13_12
# BB#13:
	movl	NUM_TRIALS(%rip), %esi
	movl	nThreads(%rip), %edx
	movl	nSwaptions(%rip), %ecx
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$seed, %edi
	callq	_Z7RanUnifPl
	mulsd	.LCPI13_0(%rip), %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, swaption_seed(%rip)
	cmpl	$1, nThreads(%rip)
	jne	.LBB13_35
# BB#14:
	movslq	iFactors(%rip), %rsi
	decq	%rsi
	movslq	iN(%rip), %rcx
	addq	$-2, %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	_Z7dmatrixllll
	movq	%rax, -64(%rbp)
	movq	(%rax), %rax
	movabsq	$4576918229304087675, %rcx # imm = 0x3F847AE147AE147B
	movq	%rcx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, 8(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, 16(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, 24(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, 32(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, 40(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, 56(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, 64(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, 72(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$4576369438667894816, %rcx # imm = 0x3F8287C200C0F020
	movq	%rcx, (%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$4575873105960161568, %rcx # imm = 0x3F80C4588A04D120
	movq	%rcx, 8(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$4575190864659810466, %rcx # imm = 0x3F7E57D9DBA908A2
	movq	%rcx, 16(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$4574378054999062639, %rcx # imm = 0x3F7B749ADC8FB86F
	movq	%rcx, 24(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$4573642491079123471, %rcx # imm = 0x3F78D79D0A67620F
	movq	%rcx, 32(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$4572977255370965320, %rcx # imm = 0x3F767A95C853C148
	movq	%rcx, 40(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$4572375430345560546, %rcx # imm = 0x3F74573A797891E2
	movq	%rcx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$4571830098473881507, %rcx # imm = 0x3F72674080F98FA3
	movq	%rcx, 56(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$4571337800991414384, %rcx # imm = 0x3F70A78290689870
	movq	%rcx, 64(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$4570629618957209628, %rcx # imm = 0x3F6E236C15D2D01C
	movq	%rcx, 72(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$4562254508917369340, %rcx # imm = 0x3F50624DD2F1A9FC
	movq	%rcx, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$4560056752299212538, %rcx # imm = 0x3F489374BC6A7EFA
	movq	%rcx, 8(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$4557750909289998844, %rcx # imm = 0x3F40624DD2F1A9FC
	movq	%rcx, 16(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$4553247309662628348, %rcx # imm = 0x3F30624DD2F1A9FC
	movq	%rcx, 24(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 32(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$-4670124727192147460, %rcx # imm = 0xBF30624DD2F1A9FC
	movq	%rcx, 40(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$-4665621127564776964, %rcx # imm = 0xBF40624DD2F1A9FC
	movq	%rcx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$-4663315284555563270, %rcx # imm = 0xBF489374BC6A7EFA
	movq	%rcx, 56(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$-4661117527937406468, %rcx # imm = 0xBF50624DD2F1A9FC
	movq	%rcx, 64(%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movabsq	$-4659964606432799621, %rcx # imm = 0xBF547AE147AE147B
	movq	%rcx, 72(%rax)
	movslq	nSwaptions(%rip), %rax
	imulq	$104, %rax, %rdi
	callq	malloc
	movq	%rax, swaptions(%rip)
	movl	$0, -48(%rbp)
	movabsq	$4607182418800017408, %rbx # imm = 0x3FF0000000000000
	movabsq	$4611686018427387904, %r14 # imm = 0x4000000000000000
	movabsq	$4591870180066957722, %r15 # imm = 0x3FB999999999999A
	jmp	.LBB13_15
	.align	16, 0x90
.LBB13_25:                              #   in Loop: Header=BB13_15 Depth=1
	incl	-48(%rbp)
.LBB13_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_17 Depth 2
                                        #     Child Loop BB13_20 Depth 2
                                        #       Child Loop BB13_22 Depth 3
	movl	-48(%rbp), %eax
	cmpl	nSwaptions(%rip), %eax
	jge	.LBB13_26
# BB#16:                                #   in Loop: Header=BB13_15 Depth=1
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rdx
	movl	%eax, (%rcx,%rdx)
	movl	iN(%rip), %eax
	movslq	-48(%rbp), %rcx
	movq	swaptions(%rip), %rdx
	imulq	$104, %rcx, %rcx
	movl	%eax, 64(%rdx,%rcx)
	movl	iFactors(%rip), %eax
	movslq	-48(%rbp), %rcx
	movq	swaptions(%rip), %rdx
	imulq	$104, %rcx, %rcx
	movl	%eax, 80(%rdx,%rcx)
	movl	$seed, %edi
	callq	_Z7RanUnifPl
	mulsd	.LCPI13_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI13_2(%rip), %xmm0
	addsd	.LCPI13_3(%rip), %xmm0
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movsd	%xmm0, 72(%rcx,%rax)
	movl	$seed, %edi
	callq	_Z7RanUnifPl
	mulsd	.LCPI13_4(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI13_5(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	%xmm1, %xmm0
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movsd	%xmm0, 24(%rcx,%rax)
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movq	$0, 32(%rcx,%rax)
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movq	%rbx, 40(%rcx,%rax)
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movq	%r14, 48(%rcx,%rax)
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movq	%rbx, 56(%rcx,%rax)
	movslq	iN(%rip), %rsi
	decq	%rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movslq	-48(%rbp), %rcx
	movq	swaptions(%rip), %rdx
	imulq	$104, %rcx, %rcx
	movq	%rax, 88(%rdx,%rcx)
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movq	88(%rcx,%rax), %rax
	movq	%r15, (%rax)
	movl	$1, -52(%rbp)
	jmp	.LBB13_17
	.align	16, 0x90
.LBB13_18:                              #   in Loop: Header=BB13_17 Depth=2
	movslq	-52(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	swaptions(%rip), %rdx
	imulq	$104, %rcx, %rcx
	movq	88(%rdx,%rcx), %rcx
	movsd	-8(%rcx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	addsd	.LCPI13_6(%rip), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-52(%rbp)
.LBB13_17:                              #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movl	64(%rcx,%rax), %eax
	decl	%eax
	cmpl	%eax, -52(%rbp)
	jle	.LBB13_18
# BB#19:                                #   in Loop: Header=BB13_15 Depth=1
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movslq	80(%rcx,%rax), %rsi
	decq	%rsi
	movslq	64(%rcx,%rax), %rcx
	addq	$-2, %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	_Z7dmatrixllll
	movslq	-48(%rbp), %rcx
	movq	swaptions(%rip), %rdx
	imulq	$104, %rcx, %rcx
	movq	%rax, 96(%rdx,%rcx)
	movl	$0, -72(%rbp)
	jmp	.LBB13_20
	.align	16, 0x90
.LBB13_24:                              #   in Loop: Header=BB13_20 Depth=2
	incl	-72(%rbp)
.LBB13_20:                              #   Parent Loop BB13_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_22 Depth 3
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movl	80(%rcx,%rax), %eax
	decl	%eax
	cmpl	%eax, -72(%rbp)
	jg	.LBB13_25
# BB#21:                                #   in Loop: Header=BB13_20 Depth=2
	movl	$0, -52(%rbp)
	jmp	.LBB13_22
	.align	16, 0x90
.LBB13_23:                              #   in Loop: Header=BB13_22 Depth=3
	movslq	-52(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-48(%rbp), %rdx
	movq	swaptions(%rip), %rsi
	imulq	$104, %rdx, %rdx
	movq	96(%rsi,%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-52(%rbp)
.LBB13_22:                              #   Parent Loop BB13_15 Depth=1
                                        #     Parent Loop BB13_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movl	64(%rcx,%rax), %eax
	addl	$-2, %eax
	cmpl	%eax, -52(%rbp)
	jle	.LBB13_23
	jmp	.LBB13_24
.LBB13_26:
	movl	$0, -76(%rbp)
	leaq	-76(%rbp), %rdi
	callq	_Z6workerPv
	movl	$0, -48(%rbp)
	jmp	.LBB13_27
	.align	16, 0x90
.LBB13_28:                              #   in Loop: Header=BB13_27 Depth=1
	movq	stderr(%rip), %rdi
	movslq	-48(%rbp), %rdx
	movq	swaptions(%rip), %rax
	imulq	$104, %rdx, %rcx
	movsd	8(%rax,%rcx), %xmm0     # xmm0 = mem[0],zero
	movsd	16(%rax,%rcx), %xmm1    # xmm1 = mem[0],zero
	movl	$.L.str.17, %esi
	movb	$2, %al
	callq	fprintf
	incl	-48(%rbp)
.LBB13_27:                              # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	nSwaptions(%rip), %eax
	jl	.LBB13_28
# BB#29:
	movl	$0, -48(%rbp)
	jmp	.LBB13_30
	.align	16, 0x90
.LBB13_31:                              #   in Loop: Header=BB13_30 Depth=1
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movq	88(%rcx,%rax), %rdi
	movslq	64(%rcx,%rax), %rdx
	decq	%rdx
	xorl	%esi, %esi
	callq	_Z12free_dvectorPdll
	movslq	-48(%rbp), %rax
	movq	swaptions(%rip), %rcx
	imulq	$104, %rax, %rax
	movq	96(%rcx,%rax), %rdi
	movslq	80(%rcx,%rax), %rdx
	decq	%rdx
	movslq	64(%rcx,%rax), %r8
	addq	$-2, %r8
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	callq	_Z12free_dmatrixPPdllll
	incl	-48(%rbp)
.LBB13_30:                              # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	nSwaptions(%rip), %eax
	jl	.LBB13_31
# BB#32:
	movq	swaptions(%rip), %rdi
	callq	free
	movl	-44(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_33:
	movq	stderr(%rip), %rdi
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB13_34:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	_Z11print_usagePc
	movl	$1, %edi
	callq	exit
.LBB13_12:
	movq	stderr(%rip), %rdi
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB13_34
.LBB13_35:
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end13:
	.size	main, .Lfunc_end13-main
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_HJM_Securities.cpp,@function
_GLOBAL__sub_I_HJM_Securities.cpp:      # @_GLOBAL__sub_I_HJM_Securities.cpp
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_GLOBAL__sub_I_HJM_Securities.cpp, .Lfunc_end14-_GLOBAL__sub_I_HJM_Securities.cpp
	.cfi_endproc

	.align	16, 0x90
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	retq
.Lfunc_end15:
	.size	__cxx_global_var_init, .Lfunc_end15-__cxx_global_var_init
	.cfi_endproc

	.text
	.globl	_Z7serialBPPdS0_iii
	.align	16, 0x90
	.type	_Z7serialBPPdS0_iii,@function
_Z7serialBPPdS0_iii:                    # @_Z7serialBPPdS0_iii
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	$0, -32(%rbp)
	jmp	.LBB16_1
	.align	16, 0x90
.LBB16_8:                               #   in Loop: Header=BB16_1 Depth=1
	incl	-32(%rbp)
.LBB16_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_3 Depth 2
                                        #       Child Loop BB16_5 Depth 3
	movl	-28(%rbp), %eax
	decl	%eax
	cmpl	%eax, -32(%rbp)
	jg	.LBB16_9
# BB#2:                                 #   in Loop: Header=BB16_1 Depth=1
	movl	$0, -36(%rbp)
	jmp	.LBB16_3
	.align	16, 0x90
.LBB16_7:                               #   in Loop: Header=BB16_3 Depth=2
	incl	-36(%rbp)
.LBB16_3:                               #   Parent Loop BB16_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_5 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB16_8
# BB#4:                                 #   in Loop: Header=BB16_3 Depth=2
	movl	$1, -40(%rbp)
	jmp	.LBB16_5
	.align	16, 0x90
.LBB16_6:                               #   in Loop: Header=BB16_5 Depth=3
	movslq	-20(%rbp), %rax
	movslq	-40(%rbp), %rcx
	imulq	%rax, %rcx
	movslq	-36(%rbp), %rax
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	callq	_Z12CumNormalInvd
	movslq	-20(%rbp), %rax
	movslq	-40(%rbp), %rcx
	imulq	%rax, %rcx
	movslq	-36(%rbp), %rax
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-40(%rbp)
.LBB16_5:                               #   Parent Loop BB16_1 Depth=1
                                        #     Parent Loop BB16_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-24(%rbp), %eax
	decl	%eax
	cmpl	%eax, -40(%rbp)
	jle	.LBB16_6
	jmp	.LBB16_7
.LBB16_9:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	_Z7serialBPPdS0_iii, .Lfunc_end16-_Z7serialBPPdS0_iii
	.cfi_endproc

	.globl	_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli
	.align	16, 0x90
	.type	_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli,@function
_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli: # @_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli
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
	subq	$144, %rsp
	movl	24(%rbp), %r10d
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	%r10d, -60(%rbp)
	movl	$0, -64(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB17_2
# BB#1:                                 # %call.sqrt
	callq	sqrt
	movapd	%xmm0, %xmm1
.LBB17_2:                               # %.split
	movsd	%xmm1, -120(%rbp)
	movslq	-16(%rbp), %rsi
	decq	%rsi
	movslq	-12(%rbp), %rax
	movslq	-60(%rbp), %rcx
	imulq	%rax, %rcx
	decq	%rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	_Z7dmatrixllll
	movq	%rax, -88(%rbp)
	movslq	-16(%rbp), %rsi
	decq	%rsi
	movslq	-12(%rbp), %rax
	movslq	-60(%rbp), %rcx
	imulq	%rax, %rcx
	decq	%rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	_Z7dmatrixllll
	movq	%rax, -96(%rbp)
	movl	$0, -124(%rbp)
	jmp	.LBB17_3
	.align	16, 0x90
.LBB17_10:                              #   in Loop: Header=BB17_3 Depth=1
	incl	-124(%rbp)
.LBB17_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
                                        #       Child Loop BB17_7 Depth 3
	movl	-124(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB17_11
# BB#4:                                 #   in Loop: Header=BB17_3 Depth=1
	movl	$0, -72(%rbp)
	jmp	.LBB17_5
	.align	16, 0x90
.LBB17_9:                               #   in Loop: Header=BB17_5 Depth=2
	incl	-72(%rbp)
.LBB17_5:                               #   Parent Loop BB17_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_7 Depth 3
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -72(%rbp)
	jg	.LBB17_10
# BB#6:                                 #   in Loop: Header=BB17_5 Depth=2
	movslq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-60(%rbp), %rcx
	imulq	%rax, %rcx
	movslq	-124(%rbp), %rax
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movl	$1, -68(%rbp)
	jmp	.LBB17_7
	.align	16, 0x90
.LBB17_8:                               #   in Loop: Header=BB17_7 Depth=3
	movslq	-60(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rax, %rcx
	movslq	-124(%rbp), %rax
	addq	%rcx, %rax
	movslq	-68(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	$0, (%rcx,%rax,8)
	incl	-68(%rbp)
.LBB17_7:                               #   Parent Loop BB17_3 Depth=1
                                        #     Parent Loop BB17_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -68(%rbp)
	jle	.LBB17_8
	jmp	.LBB17_9
.LBB17_11:
	movl	$0, -128(%rbp)
	jmp	.LBB17_12
	.align	16, 0x90
.LBB17_22:                              #   in Loop: Header=BB17_12 Depth=1
	incl	-128(%rbp)
.LBB17_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_14 Depth 2
                                        #       Child Loop BB17_16 Depth 3
                                        #         Child Loop BB17_18 Depth 4
	movl	-128(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB17_23
# BB#13:                                #   in Loop: Header=BB17_12 Depth=1
	movl	$0, -132(%rbp)
	jmp	.LBB17_14
	.align	16, 0x90
.LBB17_21:                              #   in Loop: Header=BB17_14 Depth=2
	incl	-132(%rbp)
.LBB17_14:                              #   Parent Loop BB17_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_16 Depth 3
                                        #         Child Loop BB17_18 Depth 4
	cmpl	$0, -132(%rbp)
	jg	.LBB17_22
# BB#15:                                #   in Loop: Header=BB17_14 Depth=2
	movl	$1, -72(%rbp)
	jmp	.LBB17_16
	.align	16, 0x90
.LBB17_20:                              #   in Loop: Header=BB17_16 Depth=3
	incl	-72(%rbp)
.LBB17_16:                              #   Parent Loop BB17_12 Depth=1
                                        #     Parent Loop BB17_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_18 Depth 4
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -72(%rbp)
	jg	.LBB17_21
# BB#17:                                #   in Loop: Header=BB17_16 Depth=3
	movl	$0, -76(%rbp)
	jmp	.LBB17_18
	.align	16, 0x90
.LBB17_19:                              #   in Loop: Header=BB17_18 Depth=4
	movq	-56(%rbp), %rdi
	callq	_Z7RanUnifPl
	movslq	-60(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rax, %rcx
	movslq	-128(%rbp), %rax
	addq	%rcx, %rax
	movslq	-132(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-76(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movsd	%xmm0, (%rax,%rcx,8)
	incl	-76(%rbp)
.LBB17_18:                              #   Parent Loop BB17_12 Depth=1
                                        #     Parent Loop BB17_14 Depth=2
                                        #       Parent Loop BB17_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-16(%rbp), %eax
	decl	%eax
	cmpl	%eax, -76(%rbp)
	jle	.LBB17_19
	jmp	.LBB17_20
.LBB17_23:
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	callq	_Z7serialBPPdS0_iii
	movl	$0, -136(%rbp)
	jmp	.LBB17_24
	.align	16, 0x90
.LBB17_34:                              #   in Loop: Header=BB17_24 Depth=1
	incl	-136(%rbp)
.LBB17_24:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_26 Depth 2
                                        #       Child Loop BB17_28 Depth 3
                                        #         Child Loop BB17_30 Depth 4
	movl	-136(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB17_35
# BB#25:                                #   in Loop: Header=BB17_24 Depth=1
	movl	$1, -72(%rbp)
	jmp	.LBB17_26
	.align	16, 0x90
.LBB17_33:                              #   in Loop: Header=BB17_26 Depth=2
	incl	-72(%rbp)
.LBB17_26:                              #   Parent Loop BB17_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_28 Depth 3
                                        #         Child Loop BB17_30 Depth 4
	movl	-12(%rbp), %eax
	decl	%eax
	cmpl	%eax, -72(%rbp)
	jg	.LBB17_34
# BB#27:                                #   in Loop: Header=BB17_26 Depth=2
	movl	$0, -76(%rbp)
	jmp	.LBB17_28
	.align	16, 0x90
.LBB17_32:                              #   in Loop: Header=BB17_28 Depth=3
	movslq	-60(%rbp), %rax
	movslq	-76(%rbp), %rcx
	leaq	1(%rcx), %rdx
	imulq	%rax, %rdx
	movslq	-136(%rbp), %r8
	addq	%r8, %rdx
	movslq	-72(%rbp), %r10
	movq	-8(%rbp), %rsi
	movq	-8(%rsi,%r10,8), %r9
	movq	-40(%rbp), %rdi
	movsd	(%rdi,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	addsd	(%r9,%rdx,8), %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	imulq	%rcx, %rax
	addq	%r8, %rax
	movq	(%rsi,%r10,8), %rcx
	movsd	%xmm1, (%rcx,%rax,8)
	incl	-76(%rbp)
.LBB17_28:                              #   Parent Loop BB17_24 Depth=1
                                        #     Parent Loop BB17_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_30 Depth 4
	movl	-12(%rbp), %eax
	movl	-72(%rbp), %ecx
	incl	%ecx
	subl	%ecx, %eax
	cmpl	%eax, -76(%rbp)
	jg	.LBB17_33
# BB#29:                                #   in Loop: Header=BB17_28 Depth=3
	movq	$0, -104(%rbp)
	movl	$0, -68(%rbp)
	jmp	.LBB17_30
	.align	16, 0x90
.LBB17_31:                              #   in Loop: Header=BB17_30 Depth=4
	movslq	-76(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-60(%rbp), %rax
	movslq	-72(%rbp), %rdx
	imulq	%rax, %rdx
	movslq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	incl	-68(%rbp)
.LBB17_30:                              #   Parent Loop BB17_24 Depth=1
                                        #     Parent Loop BB17_26 Depth=2
                                        #       Parent Loop BB17_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-16(%rbp), %eax
	decl	%eax
	cmpl	%eax, -68(%rbp)
	jle	.LBB17_31
	jmp	.LBB17_32
.LBB17_35:
	movq	-88(%rbp), %rdi
	movslq	-16(%rbp), %rdx
	decq	%rdx
	movslq	-12(%rbp), %rax
	movslq	-60(%rbp), %r8
	imulq	%rax, %r8
	decq	%r8
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	callq	_Z12free_dmatrixPPdllll
	movq	-96(%rbp), %rdi
	movslq	-16(%rbp), %rdx
	decq	%rdx
	movslq	-12(%rbp), %rax
	movslq	-60(%rbp), %r8
	imulq	%rax, %r8
	decq	%r8
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	callq	_Z12free_dmatrixPPdllll
	movl	$1, -64(%rbp)
	movl	$1, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli, .Lfunc_end17-_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4602678819172646912     # double 0.5
.LCPI18_1:
	.quad	4607182418800017408     # double 1
.LCPI18_2:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii
	.align	16, 0x90
	.type	_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii,@function
_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii: # @_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii
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
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp61:
	.cfi_offset %rbx, -24
	movl	32(%rbp), %r10d
	movl	24(%rbp), %ebx
	movq	16(%rbp), %rax
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movsd	%xmm4, -64(%rbp)
	movl	%esi, -68(%rbp)
	movl	%edx, -72(%rbp)
	movsd	%xmm5, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	movq	%rax, -112(%rbp)
	movl	%ebx, -116(%rbp)
	movl	%r10d, -120(%rbp)
	movl	$0, -124(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	.LCPI18_0(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -156(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB18_2
	jp	.LBB18_2
# BB#1:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB18_3
.LBB18_2:
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -328(%rbp)       # 8-byte Spill
	mulsd	-32(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	callq	log
	mulsd	-328(%rbp), %xmm0       # 8-byte Folded Reload
.LBB18_3:
	movsd	%xmm0, -168(%rbp)
	movslq	-68(%rbp), %rax
	movslq	-116(%rbp), %rcx
	imulq	%rax, %rcx
	leaq	-1(%rax), %rsi
	decq	%rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	_Z7dmatrixllll
	movq	%rax, -184(%rbp)
	movslq	-68(%rbp), %rsi
	decq	%rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -192(%rbp)
	movslq	-72(%rbp), %rsi
	decq	%rsi
	movslq	-68(%rbp), %rcx
	addq	$-2, %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	_Z7dmatrixllll
	movq	%rax, -200(%rbp)
	movslq	-68(%rbp), %rsi
	addq	$-2, %rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -208(%rbp)
	movslq	-68(%rbp), %rax
	movslq	-116(%rbp), %rsi
	imulq	%rax, %rsi
	decq	%rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -224(%rbp)
	movslq	-68(%rbp), %rax
	movslq	-116(%rbp), %rsi
	imulq	%rax, %rsi
	decq	%rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -216(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-152(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	addsd	.LCPI18_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -172(%rbp)
	movslq	-172(%rbp), %rax
	movslq	-116(%rbp), %rsi
	imulq	%rax, %rsi
	decq	%rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -232(%rbp)
	movslq	-172(%rbp), %rax
	movslq	-116(%rbp), %rsi
	imulq	%rax, %rsi
	decq	%rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -240(%rbp)
	movslq	-172(%rbp), %rsi
	decq	%rsi
	xorl	%edi, %edi
	callq	_Z7dvectorll
	movq	%rax, -248(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-152(%rbp), %xmm0
	movsd	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -252(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-152(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -256(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-172(%rbp), %xmm0
	mulsd	-152(%rbp), %xmm0
	movsd	%xmm0, -264(%rbp)
	movl	$0, -128(%rbp)
	jmp	.LBB18_4
	.align	16, 0x90
.LBB18_5:                               #   in Loop: Header=BB18_4 Depth=1
	movslq	-128(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	incl	-128(%rbp)
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	movl	-172(%rbp), %eax
	decl	%eax
	cmpl	%eax, -128(%rbp)
	jle	.LBB18_5
# BB#6:
	movl	-156(%rbp), %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB18_7
	.align	16, 0x90
.LBB18_12:                              #   in Loop: Header=BB18_7 Depth=1
	movl	-156(%rbp), %eax
	addl	%eax, -128(%rbp)
.LBB18_7:                               # =>This Inner Loop Header: Depth=1
	movl	-128(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jg	.LBB18_13
# BB#8:                                 #   in Loop: Header=BB18_7 Depth=1
	movl	-128(%rbp), %eax
	cmpl	-256(%rbp), %eax
	je	.LBB18_10
# BB#9:                                 #   in Loop: Header=BB18_7 Depth=1
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	callq	exp
	addsd	.LCPI18_2(%rip), %xmm0
	movslq	-128(%rbp), %rax
	movq	-248(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
.LBB18_10:                              #   in Loop: Header=BB18_7 Depth=1
	movl	-128(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jne	.LBB18_12
# BB#11:                                #   in Loop: Header=BB18_7 Depth=1
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	callq	exp
	movslq	-128(%rbp), %rax
	movq	-248(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	jmp	.LBB18_12
.LBB18_13:
	movq	-192(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-88(%rbp), %rdx
	callq	_Z20HJM_Yield_to_ForwardPdiS_
	movl	%eax, -124(%rbp)
	cmpl	$1, %eax
	jne	.LBB18_14
# BB#15:
	movq	-208(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-96(%rbp), %r8
	callq	_Z10HJM_DriftsPdPS_iidS0_
	movl	%eax, -124(%rbp)
	cmpl	$1, %eax
	jne	.LBB18_14
# BB#16:
	movq	$0, -296(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -144(%rbp)
	leaq	-104(%rbp), %rbx
	jmp	.LBB18_17
	.align	16, 0x90
.LBB18_39:                              #   in Loop: Header=BB18_17 Depth=1
	movslq	-116(%rbp), %rax
	addq	%rax, -144(%rbp)
.LBB18_17:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_20 Depth 2
                                        #       Child Loop BB18_22 Depth 3
                                        #     Child Loop BB18_27 Depth 2
                                        #       Child Loop BB18_29 Depth 3
                                        #     Child Loop BB18_34 Depth 2
                                        #       Child Loop BB18_36 Depth 3
	movq	-112(%rbp), %rax
	decq	%rax
	cmpq	%rax, -144(%rbp)
	jg	.LBB18_40
# BB#18:                                #   in Loop: Header=BB18_17 Depth=1
	movq	-184(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-192(%rbp), %rcx
	movq	-208(%rbp), %r8
	movq	-96(%rbp), %r9
	movl	-116(%rbp), %eax
	movl	%eax, 8(%rsp)
	movq	%rbx, (%rsp)
	callq	_Z28HJM_SimPath_Forward_BlockingPPdiidS_S_S0_Pli
	movl	%eax, -124(%rbp)
	cmpl	$1, %eax
	jne	.LBB18_14
# BB#19:                                #   in Loop: Header=BB18_17 Depth=1
	movl	$0, -128(%rbp)
	jmp	.LBB18_20
	.align	16, 0x90
.LBB18_24:                              #   in Loop: Header=BB18_20 Depth=2
	incl	-128(%rbp)
.LBB18_20:                              #   Parent Loop BB18_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_22 Depth 3
	movl	-68(%rbp), %eax
	decl	%eax
	cmpl	%eax, -128(%rbp)
	jg	.LBB18_25
# BB#21:                                #   in Loop: Header=BB18_20 Depth=2
	movl	$0, -132(%rbp)
	jmp	.LBB18_22
	.align	16, 0x90
.LBB18_23:                              #   in Loop: Header=BB18_22 Depth=3
	movslq	-132(%rbp), %rax
	movslq	-128(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-116(%rbp), %rdx
	imulq	%rcx, %rdx
	addq	%rax, %rdx
	movq	-216(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	incl	-132(%rbp)
.LBB18_22:                              #   Parent Loop BB18_17 Depth=1
                                        #     Parent Loop BB18_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	decl	%eax
	cmpl	%eax, -132(%rbp)
	jle	.LBB18_23
	jmp	.LBB18_24
	.align	16, 0x90
.LBB18_25:                              #   in Loop: Header=BB18_17 Depth=1
	movq	-224(%rbp), %rdi
	movl	-68(%rbp), %esi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-216(%rbp), %rdx
	movl	-116(%rbp), %ecx
	callq	_Z25Discount_Factors_BlockingPdidS_i
	movl	%eax, -124(%rbp)
	cmpl	$1, %eax
	jne	.LBB18_14
# BB#26:                                #   in Loop: Header=BB18_17 Depth=1
	movl	$0, -128(%rbp)
	jmp	.LBB18_27
	.align	16, 0x90
.LBB18_31:                              #   in Loop: Header=BB18_27 Depth=2
	incl	-128(%rbp)
.LBB18_27:                              #   Parent Loop BB18_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_29 Depth 3
	movl	-172(%rbp), %eax
	decl	%eax
	cmpl	%eax, -128(%rbp)
	jg	.LBB18_32
# BB#28:                                #   in Loop: Header=BB18_27 Depth=2
	movl	$0, -132(%rbp)
	jmp	.LBB18_29
	.align	16, 0x90
.LBB18_30:                              #   in Loop: Header=BB18_29 Depth=3
	movslq	-128(%rbp), %rax
	movslq	-116(%rbp), %rcx
	imulq	%rax, %rcx
	movslq	-132(%rbp), %rax
	addq	%rcx, %rax
	movslq	-252(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movq	-232(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-132(%rbp)
.LBB18_29:                              #   Parent Loop BB18_17 Depth=1
                                        #     Parent Loop BB18_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-132(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.LBB18_30
	jmp	.LBB18_31
	.align	16, 0x90
.LBB18_32:                              #   in Loop: Header=BB18_17 Depth=1
	movq	-240(%rbp), %rdi
	movl	-172(%rbp), %esi
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-232(%rbp), %rdx
	movl	-116(%rbp), %ecx
	callq	_Z25Discount_Factors_BlockingPdidS_i
	movl	%eax, -124(%rbp)
	cmpl	$1, %eax
	jne	.LBB18_14
# BB#33:                                #   in Loop: Header=BB18_17 Depth=1
	movl	$0, -132(%rbp)
	jmp	.LBB18_34
	.align	16, 0x90
.LBB18_38:                              #   in Loop: Header=BB18_34 Depth=2
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	.LCPI18_2(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	callq	_Z4dMaxdd
	movsd	%xmm0, -272(%rbp)
	movslq	-252(%rbp), %rax
	movslq	-116(%rbp), %rcx
	imulq	%rax, %rcx
	movslq	-132(%rbp), %rax
	addq	%rcx, %rax
	movq	-224(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, -280(%rbp)
	addsd	-296(%rbp), %xmm0
	movsd	%xmm0, -296(%rbp)
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	-304(%rbp), %xmm0
	movsd	%xmm0, -304(%rbp)
	incl	-132(%rbp)
.LBB18_34:                              #   Parent Loop BB18_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_36 Depth 3
	movl	-132(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB18_39
# BB#35:                                #   in Loop: Header=BB18_34 Depth=2
	movq	$0, -288(%rbp)
	movl	$0, -128(%rbp)
	jmp	.LBB18_36
	.align	16, 0x90
.LBB18_37:                              #   in Loop: Header=BB18_36 Depth=3
	movslq	-128(%rbp), %rax
	movq	-248(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-116(%rbp), %rcx
	imulq	%rax, %rcx
	movslq	-132(%rbp), %rax
	addq	%rcx, %rax
	movq	-240(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -288(%rbp)
	incl	-128(%rbp)
.LBB18_36:                              #   Parent Loop BB18_17 Depth=1
                                        #     Parent Loop BB18_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-172(%rbp), %eax
	decl	%eax
	cmpl	%eax, -128(%rbp)
	jle	.LBB18_37
	jmp	.LBB18_38
.LBB18_14:
	movl	-124(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB18_45:
	movl	-12(%rbp), %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%rbp
	retq
.LBB18_40:
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdq	-112(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -312(%rbp)
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	cvtsi2sdq	-112(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	addsd	.LCPI18_2(%rip), %xmm2
	divsd	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	sqrtsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm2
	jnp	.LBB18_42
# BB#41:                                # %call.sqrt
	callq	sqrt
	movapd	%xmm0, %xmm2
.LBB18_42:                              # %.split
	xorps	%xmm1, %xmm1
	cvtsi2sdq	-112(%rbp), %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB18_44
# BB#43:                                # %call.sqrt1
	movapd	%xmm1, %xmm0
	movsd	%xmm2, -328(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-328(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
.LBB18_44:                              # %.split.split
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -320(%rbp)
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	$1, -124(%rbp)
	movl	$1, -12(%rbp)
	jmp	.LBB18_45
.Lfunc_end18:
	.size	_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii, .Lfunc_end18-_Z21HJM_Swaption_BlockingPddddddiidS_PS_llii
	.cfi_endproc

	.globl	_Z4dMaxdd
	.align	16, 0x90
	.type	_Z4dMaxdd,@function
_Z4dMaxdd:                              # @_Z4dMaxdd
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB19_2
# BB#1:
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.LBB19_2:
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end19:
	.size	_Z4dMaxdd, .Lfunc_end19-_Z4dMaxdd
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4467570830353391464     # double 4.6566128750000002E-10
	.text
	.globl	_Z7RanUnifPl
	.align	16, 0x90
	.type	_Z7RanUnifPl,@function
_Z7RanUnifPl:                           # @_Z7RanUnifPl
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rbp)
	movabsq	$4730756183288445817, %rcx # imm = 0x41A705AF1FE3FB79
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$15, %rdx
	addq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	imulq	$127773, %rdx, %rcx     # imm = 0x1F31D
	subq	%rcx, %rax
	imulq	$16807, %rax, %rax      # imm = 0x41A7
	imulq	$2836, %rdx, %rcx       # imm = 0xB14
	subq	%rcx, %rax
	movq	%rax, -16(%rbp)
	jns	.LBB20_2
# BB#1:
	addq	$2147483647, -16(%rbp)  # imm = 0x7FFFFFFF
.LBB20_2:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	cvtsi2sdq	-16(%rbp), %xmm0
	mulsd	.LCPI20_0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	_Z7RanUnifPl, .Lfunc_end20-_Z7RanUnifPl
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4582646808030102946     # double 0.024250000000000001
.LCPI21_1:
	.quad	4606963994218089939     # double 0.97575
.LCPI21_2:
	.quad	4607182418800017408     # double 1
.LCPI21_3:
	.quad	-4611686018427387904    # double -2
.LCPI21_4:
	.quad	-4647746642994606112    # double -0.0077848940024302926
.LCPI21_5:
	.quad	-4623892638663671368    # double -0.32239645804113648
.LCPI21_6:
	.quad	-4610783591013542056    # double -2.4007582771618381
.LCPI21_7:
	.quad	-4610448130797716966    # double -2.5497325393437338
.LCPI21_8:
	.quad	4616611452376731079     # double 4.3746641414649678
.LCPI21_9:
	.quad	4613798575908835234     # double 2.9381639826987831
.LCPI21_11:
	.quad	4575625165243457492     # double 0.0077846957090414622
.LCPI21_12:
	.quad	4599480671287182180     # double 0.32246712907003983
.LCPI21_13:
	.quad	4612688371394471446     # double 2.445134137142996
.LCPI21_14:
	.quad	4615636595525398809     # double 3.7544086619074162
.LCPI21_15:
	.quad	-4620693217682128896    # double -0.5
.LCPI21_16:
	.quad	-4592588387355065051    # double -39.696830286653757
.LCPI21_17:
	.quad	4641977866302784411     # double 220.9460984245205
.LCPI21_18:
	.quad	-4579810234972423271    # double -275.92851044696869
.LCPI21_19:
	.quad	4639072047187312667     # double 138.357751867269
.LCPI21_20:
	.quad	-4594047445851141171    # double -30.66479806614716
.LCPI21_21:
	.quad	4612826843888178297     # double 2.5066282774592392
.LCPI21_22:
	.quad	-4590508390225017660    # double -54.476098798224058
.LCPI21_23:
	.quad	4639889312772538999     # double 161.58583685804089
.LCPI21_24:
	.quad	-4583689849449293614    # double -155.69897985988661
.LCPI21_25:
	.quad	4634401141363829182     # double 66.80131188771972
.LCPI21_26:
	.quad	-4599706059738417114    # double -13.280681552885721
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI21_10:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	_Z13icdf_baselineiPdS_
	.align	16, 0x90
	.type	_Z13icdf_baselineiPdS_,@function
_Z13icdf_baselineiPdS_:                 # @_Z13icdf_baselineiPdS_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movabsq	$-4592588387355065051, %rax # imm = 0xC043D931BC1E0525
	movq	%rax, -48(%rbp)
	movabsq	$4641977866302784411, %rax # imm = 0x406B9E467034039B
	movq	%rax, -56(%rbp)
	movabsq	$-4579810234972423271, %rax # imm = 0xC0713EDB2DC53B99
	movq	%rax, -64(%rbp)
	movabsq	$4639072047187312667, %rax # imm = 0x40614B72B40B401B
	movq	%rax, -72(%rbp)
	movabsq	$-4594047445851141171, %rax # imm = 0xC03EAA3034C08BCD
	movq	%rax, -80(%rbp)
	movabsq	$4612826843888178297, %rax # imm = 0x40040D9320575479
	movq	%rax, -88(%rbp)
	movabsq	$-4590508390225017660, %rax # imm = 0xC04B3CF0CE3004C4
	movq	%rax, -96(%rbp)
	movabsq	$4639889312772538999, %rax # imm = 0x406432BF2CF04277
	movq	%rax, -104(%rbp)
	movabsq	$-4583689849449293614, %rax # imm = 0xC063765E0B02D8D2
	movq	%rax, -112(%rbp)
	movabsq	$4634401141363829182, %rax # imm = 0x4050B348B1A7E9BE
	movq	%rax, -120(%rbp)
	movabsq	$-4599706059738417114, %rax # imm = 0xC02A8FB57E147826
	movq	%rax, -128(%rbp)
	movabsq	$-4647746642994606112, %rax # imm = 0xBF7FE30D924ACFE0
	movq	%rax, -136(%rbp)
	movabsq	$-4623892638663671368, %rax # imm = 0xBFD4A224C0E881B8
	movq	%rax, -144(%rbp)
	movabsq	$-4610783591013542056, %rax # imm = 0xC00334C0C1701758
	movq	%rax, -152(%rbp)
	movabsq	$-4610448130797716966, %rax # imm = 0xC00465DA2C703A1A
	movq	%rax, -160(%rbp)
	movabsq	$4616611452376731079, %rax # imm = 0x40117FA7F4EA4DC7
	movq	%rax, -168(%rbp)
	movabsq	$4613798575908835234, %rax # imm = 0x4007815C1E3FCFA2
	movq	%rax, -176(%rbp)
	movabsq	$4575625165243457492, %rax # imm = 0x3F7FE2D857AC9FD4
	movq	%rax, -184(%rbp)
	movabsq	$4599480671287182180, %rax # imm = 0x3FD4A34D2B590364
	movq	%rax, -192(%rbp)
	movabsq	$4612688371394471446, %rax # imm = 0x40038FA27C8AE616
	movq	%rax, -200(%rbp)
	movabsq	$4615636595525398809, %rax # imm = 0x400E09076895B119
	movq	%rax, -208(%rbp)
	movabsq	$4582646808030102946, %rax # imm = 0x3F98D4FDF3B645A2
	movq	%rax, -216(%rbp)
	movabsq	$4606963994218089939, %rax # imm = 0x3FEF395810624DD3
	movq	%rax, -224(%rbp)
	movl	$0, -228(%rbp)
	jmp	.LBB21_1
	.align	16, 0x90
.LBB21_11:                              #   in Loop: Header=BB21_1 Depth=1
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-228(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-228(%rbp)
.LBB21_1:                               # =>This Inner Loop Header: Depth=1
	movl	-228(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB21_12
# BB#2:                                 #   in Loop: Header=BB21_1 Depth=1
	movslq	-228(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)
	movsd	.LCPI21_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_6
# BB#3:                                 #   in Loop: Header=BB21_1 Depth=1
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	log
	movapd	%xmm0, %xmm1
	mulsd	.LCPI21_3(%rip), %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB21_5
# BB#4:                                 # %call.sqrt
                                        #   in Loop: Header=BB21_1 Depth=1
	movapd	%xmm1, %xmm0
	callq	sqrt
.LBB21_5:                               # %.split
                                        #   in Loop: Header=BB21_1 Depth=1
	movsd	%xmm0, -32(%rbp)
	movapd	%xmm0, %xmm1
	mulsd	.LCPI21_4(%rip), %xmm1
	addsd	.LCPI21_5(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI21_6(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI21_7(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI21_8(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI21_9(%rip), %xmm1
	movapd	%xmm0, %xmm2
	mulsd	.LCPI21_11(%rip), %xmm2
	addsd	.LCPI21_12(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI21_13(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI21_14(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	movsd	.LCPI21_2(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm2
	jmp	.LBB21_11
	.align	16, 0x90
.LBB21_6:                               #   in Loop: Header=BB21_1 Depth=1
	movsd	.LCPI21_1(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-240(%rbp), %xmm0
	movsd	.LCPI21_2(%rip), %xmm3  # xmm3 = mem[0],zero
	jb	.LBB21_8
# BB#7:                                 #   in Loop: Header=BB21_1 Depth=1
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	.LCPI21_15(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movapd	%xmm0, %xmm1
	mulsd	.LCPI21_16(%rip), %xmm1
	addsd	.LCPI21_17(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI21_18(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI21_19(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI21_20(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI21_21(%rip), %xmm1
	mulsd	-32(%rbp), %xmm1
	movapd	%xmm0, %xmm2
	mulsd	.LCPI21_22(%rip), %xmm2
	addsd	.LCPI21_23(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI21_24(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI21_25(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI21_26(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm3, %xmm2
	jmp	.LBB21_11
	.align	16, 0x90
.LBB21_8:                               #   in Loop: Header=BB21_1 Depth=1
	movapd	%xmm3, %xmm0
	subsd	-240(%rbp), %xmm0
	callq	log
	movapd	%xmm0, %xmm1
	mulsd	.LCPI21_3(%rip), %xmm1
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB21_10
# BB#9:                                 # %call.sqrt2
                                        #   in Loop: Header=BB21_1 Depth=1
	movapd	%xmm1, %xmm0
	callq	sqrt
.LBB21_10:                              # %.split1
                                        #   in Loop: Header=BB21_1 Depth=1
	movsd	%xmm0, -32(%rbp)
	movapd	%xmm0, %xmm1
	mulsd	.LCPI21_4(%rip), %xmm1
	addsd	.LCPI21_5(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI21_6(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI21_7(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI21_8(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI21_9(%rip), %xmm1
	xorpd	.LCPI21_10(%rip), %xmm1
	movapd	%xmm0, %xmm2
	mulsd	.LCPI21_11(%rip), %xmm2
	addsd	.LCPI21_12(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI21_13(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI21_14(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI21_2(%rip), %xmm2
	jmp	.LBB21_11
.LBB21_12:
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	_Z13icdf_baselineiPdS_, .Lfunc_end21-_Z13icdf_baselineiPdS_
	.cfi_endproc

	.globl	nrerror
	.align	16, 0x90
	.type	nrerror,@function
nrerror:                                # @nrerror
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	-8(%rbp), %rdx
	movl	$.L.str.1.19, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.2.20, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end22:
	.size	nrerror, .Lfunc_end22-nrerror
	.cfi_endproc

	.globl	choldc
	.align	16, 0x90
	.type	choldc,@function
choldc:                                 # @choldc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$1, -24(%rbp)
	xorps	%xmm2, %xmm2
	jmp	.LBB23_1
	.align	16, 0x90
.LBB23_15:                              #   in Loop: Header=BB23_1 Depth=1
	incl	-24(%rbp)
.LBB23_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_3 Depth 2
                                        #       Child Loop BB23_5 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB23_16
# BB#2:                                 #   in Loop: Header=BB23_1 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB23_3
	.align	16, 0x90
.LBB23_13:                              #   in Loop: Header=BB23_3 Depth=2
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-28(%rbp)
.LBB23_3:                               #   Parent Loop BB23_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_5 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB23_15
# BB#4:                                 #   in Loop: Header=BB23_3 Depth=2
	movslq	-28(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movl	-24(%rbp), %eax
	decl	%eax
	movl	%eax, -32(%rbp)
	jmp	.LBB23_5
	.align	16, 0x90
.LBB23_6:                               #   in Loop: Header=BB23_5 Depth=3
	movslq	-32(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rcx
	movq	(%rdx,%rcx,8), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	decl	-32(%rbp)
.LBB23_5:                               #   Parent Loop BB23_1 Depth=1
                                        #     Parent Loop BB23_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, -32(%rbp)
	jg	.LBB23_6
# BB#7:                                 #   in Loop: Header=BB23_3 Depth=2
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB23_14
# BB#8:                                 #   in Loop: Header=BB23_3 Depth=2
	ucomisd	-40(%rbp), %xmm2
	jae	.LBB23_9
# BB#10:                                #   in Loop: Header=BB23_3 Depth=2
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jnp	.LBB23_12
# BB#11:                                # %call.sqrt
                                        #   in Loop: Header=BB23_3 Depth=2
	movapd	%xmm1, %xmm0
	callq	sqrt
	xorps	%xmm2, %xmm2
.LBB23_12:                              # %.split
                                        #   in Loop: Header=BB23_3 Depth=2
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	jmp	.LBB23_13
	.align	16, 0x90
.LBB23_14:                              #   in Loop: Header=BB23_3 Depth=2
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	divsd	(%rdx,%rax,8), %xmm0
	movslq	-28(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	jmp	.LBB23_13
.LBB23_9:
	movl	$0, -4(%rbp)
.LBB23_23:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB23_16:
	movl	$1, -24(%rbp)
	jmp	.LBB23_17
	.align	16, 0x90
.LBB23_21:                              #   in Loop: Header=BB23_17 Depth=1
	incl	-24(%rbp)
.LBB23_17:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_19 Depth 2
	movl	-20(%rbp), %eax
	decl	%eax
	cmpl	%eax, -24(%rbp)
	jg	.LBB23_22
# BB#18:                                #   in Loop: Header=BB23_17 Depth=1
	movl	-24(%rbp), %eax
	incl	%eax
	movl	%eax, -28(%rbp)
	jmp	.LBB23_19
	.align	16, 0x90
.LBB23_20:                              #   in Loop: Header=BB23_19 Depth=2
	movslq	-28(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	$0, (%rcx,%rax,8)
	incl	-28(%rbp)
.LBB23_19:                              #   Parent Loop BB23_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB23_20
	jmp	.LBB23_21
.LBB23_22:
	movl	$1, -4(%rbp)
	jmp	.LBB23_23
.Lfunc_end23:
	.size	choldc, .Lfunc_end23-choldc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4607182418800017408     # double 1
.LCPI24_2:
	.quad	0                       # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI24_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gaussj
	.align	16, 0x90
	.type	gaussj,@function
gaussj:                                 # @gaussj
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp80:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movslq	-20(%rbp), %rsi
	movl	$1, %edi
	callq	ivector
	movq	%rax, -48(%rbp)
	movslq	-20(%rbp), %rsi
	movl	$1, %edi
	callq	ivector
	movq	%rax, -56(%rbp)
	movslq	-20(%rbp), %rsi
	movl	$1, %edi
	callq	ivector
	movq	%rax, -64(%rbp)
	movl	$-1, -72(%rbp)
	movl	$-1, -76(%rbp)
	movl	$1, -80(%rbp)
	jmp	.LBB24_1
	.align	16, 0x90
.LBB24_2:                               #   in Loop: Header=BB24_1 Depth=1
	movslq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$0, (%rcx,%rax,4)
	incl	-80(%rbp)
.LBB24_1:                               # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB24_2
# BB#3:
	movl	$1, -68(%rbp)
	movabsq	$4607182418800017408, %rbx # imm = 0x3FF0000000000000
	jmp	.LBB24_4
	.align	16, 0x90
.LBB24_42:                              #   in Loop: Header=BB24_4 Depth=1
	incl	-68(%rbp)
.LBB24_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_6 Depth 2
                                        #       Child Loop BB24_9 Depth 3
                                        #     Child Loop BB24_19 Depth 2
                                        #     Child Loop BB24_22 Depth 2
                                        #     Child Loop BB24_27 Depth 2
                                        #     Child Loop BB24_30 Depth 2
                                        #     Child Loop BB24_33 Depth 2
                                        #       Child Loop BB24_36 Depth 3
                                        #       Child Loop BB24_39 Depth 3
	movl	-68(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB24_43
# BB#5:                                 #   in Loop: Header=BB24_4 Depth=1
	movq	$0, -104(%rbp)
	movl	$1, -80(%rbp)
	jmp	.LBB24_6
	.align	16, 0x90
.LBB24_16:                              #   in Loop: Header=BB24_6 Depth=2
	incl	-80(%rbp)
.LBB24_6:                               #   Parent Loop BB24_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_9 Depth 3
	movl	-80(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB24_17
# BB#7:                                 #   in Loop: Header=BB24_6 Depth=2
	movslq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	cmpl	$1, (%rcx,%rax,4)
	je	.LBB24_16
# BB#8:                                 #   in Loop: Header=BB24_6 Depth=2
	movl	$1, -84(%rbp)
	jmp	.LBB24_9
	.align	16, 0x90
.LBB24_15:                              #   in Loop: Header=BB24_9 Depth=3
	incl	-84(%rbp)
.LBB24_9:                               #   Parent Loop BB24_4 Depth=1
                                        #     Parent Loop BB24_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-84(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB24_16
# BB#10:                                #   in Loop: Header=BB24_9 Depth=3
	movslq	-84(%rbp), %rax
	movq	-64(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB24_11
# BB#13:                                #   in Loop: Header=BB24_9 Depth=3
	movslq	-84(%rbp), %rax
	movq	-64(%rbp), %rcx
	cmpl	$2, (%rcx,%rax,4)
	jl	.LBB24_15
# BB#14:                                #   in Loop: Header=BB24_9 Depth=3
	movl	$.L.str.3.21, %edi
	callq	nrerror
	jmp	.LBB24_15
	.align	16, 0x90
.LBB24_11:                              #   in Loop: Header=BB24_9 Depth=3
	movslq	-84(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	andpd	.LCPI24_1(%rip), %xmm0
	ucomisd	-104(%rbp), %xmm0
	jb	.LBB24_15
# BB#12:                                #   in Loop: Header=BB24_9 Depth=3
	movslq	-84(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	andpd	.LCPI24_1(%rip), %xmm0
	movlpd	%xmm0, -104(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -72(%rbp)
	incl	-84(%rbp)
	jmp	.LBB24_9
	.align	16, 0x90
.LBB24_17:                              #   in Loop: Header=BB24_4 Depth=1
	movslq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	incl	(%rcx,%rax,4)
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	je	.LBB24_24
# BB#18:                                #   in Loop: Header=BB24_4 Depth=1
	movl	$1, -88(%rbp)
	jmp	.LBB24_19
	.align	16, 0x90
.LBB24_20:                              #   in Loop: Header=BB24_19 Depth=2
	movslq	-88(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movslq	-88(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-76(%rbp), %rcx
	movq	(%rdx,%rcx,8), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-88(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-88(%rbp)
.LBB24_19:                              #   Parent Loop BB24_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB24_20
# BB#21:                                #   in Loop: Header=BB24_4 Depth=1
	movl	$1, -88(%rbp)
	jmp	.LBB24_22
	.align	16, 0x90
.LBB24_23:                              #   in Loop: Header=BB24_22 Depth=2
	movslq	-88(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movslq	-88(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-76(%rbp), %rcx
	movq	(%rdx,%rcx,8), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-88(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-88(%rbp)
.LBB24_22:                              #   Parent Loop BB24_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB24_23
.LBB24_24:                              #   in Loop: Header=BB24_4 Depth=1
	movl	-76(%rbp), %eax
	movslq	-68(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-72(%rbp), %eax
	movslq	-68(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movslq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	.LCPI24_2, %xmm0
	jne	.LBB24_26
	jp	.LBB24_26
# BB#25:                                #   in Loop: Header=BB24_4 Depth=1
	movl	$.L.str.4.22, %edi
	callq	nrerror
.LBB24_26:                              #   in Loop: Header=BB24_4 Depth=1
	movslq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, -120(%rbp)
	movslq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	%rbx, (%rcx,%rax,8)
	movl	$1, -88(%rbp)
	jmp	.LBB24_27
	.align	16, 0x90
.LBB24_28:                              #   in Loop: Header=BB24_27 Depth=2
	movslq	-88(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-88(%rbp)
.LBB24_27:                              #   Parent Loop BB24_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB24_28
# BB#29:                                #   in Loop: Header=BB24_4 Depth=1
	movl	$1, -88(%rbp)
	jmp	.LBB24_30
	.align	16, 0x90
.LBB24_31:                              #   in Loop: Header=BB24_30 Depth=2
	movslq	-88(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-88(%rbp)
.LBB24_30:                              #   Parent Loop BB24_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB24_31
# BB#32:                                #   in Loop: Header=BB24_4 Depth=1
	movl	$1, -92(%rbp)
	jmp	.LBB24_33
	.align	16, 0x90
.LBB24_41:                              #   in Loop: Header=BB24_33 Depth=2
	incl	-92(%rbp)
.LBB24_33:                              #   Parent Loop BB24_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_36 Depth 3
                                        #       Child Loop BB24_39 Depth 3
	movl	-92(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB24_42
# BB#34:                                #   in Loop: Header=BB24_33 Depth=2
	movl	-92(%rbp), %eax
	cmpl	-72(%rbp), %eax
	je	.LBB24_41
# BB#35:                                #   in Loop: Header=BB24_33 Depth=2
	movslq	-72(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movslq	-72(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	$0, (%rcx,%rax,8)
	movl	$1, -88(%rbp)
	jmp	.LBB24_36
	.align	16, 0x90
.LBB24_37:                              #   in Loop: Header=BB24_36 Depth=3
	movslq	-88(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movslq	-92(%rbp), %rcx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx,%rax,8)
	incl	-88(%rbp)
.LBB24_36:                              #   Parent Loop BB24_4 Depth=1
                                        #     Parent Loop BB24_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-88(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB24_37
# BB#38:                                #   in Loop: Header=BB24_33 Depth=2
	movl	$1, -88(%rbp)
	jmp	.LBB24_39
	.align	16, 0x90
.LBB24_40:                              #   in Loop: Header=BB24_39 Depth=3
	movslq	-88(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movslq	-92(%rbp), %rcx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx,%rax,8)
	incl	-88(%rbp)
.LBB24_39:                              #   Parent Loop BB24_4 Depth=1
                                        #     Parent Loop BB24_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-88(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB24_40
	jmp	.LBB24_41
.LBB24_43:
	movl	-20(%rbp), %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB24_44
	.align	16, 0x90
.LBB24_49:                              #   in Loop: Header=BB24_44 Depth=1
	decl	-88(%rbp)
.LBB24_44:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_47 Depth 2
	cmpl	$0, -88(%rbp)
	jle	.LBB24_50
# BB#45:                                #   in Loop: Header=BB24_44 Depth=1
	movslq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	cmpl	(%rdx,%rax,4), %ecx
	je	.LBB24_49
# BB#46:                                #   in Loop: Header=BB24_44 Depth=1
	movl	$1, -84(%rbp)
	jmp	.LBB24_47
	.align	16, 0x90
.LBB24_48:                              #   in Loop: Header=BB24_47 Depth=2
	movslq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movslq	-84(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movslq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rcx
	movslq	-84(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-56(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movsd	%xmm0, (%rdx,%rax,8)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movslq	-84(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	incl	-84(%rbp)
.LBB24_47:                              #   Parent Loop BB24_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB24_48
	jmp	.LBB24_49
.LBB24_50:
	movq	-64(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	movl	$1, %esi
	callq	free_ivector
	movq	-56(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	movl	$1, %esi
	callq	free_ivector
	movq	-48(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	movl	$1, %esi
	callq	free_ivector
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gaussj, .Lfunc_end24-gaussj
	.cfi_endproc

	.globl	ivector
	.align	16, 0x90
	.type	ivector,@function
ivector:                                # @ivector
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	subq	-8(%rbp), %rsi
	leaq	8(,%rsi,4), %rdi
	callq	malloc
	movq	%rax, -24(%rbp)
	testq	%rax, %rax
	jne	.LBB25_2
# BB#1:
	movl	$.L.str.5.23, %edi
	callq	nrerror
.LBB25_2:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$2, %rcx
	subq	%rcx, %rax
	addq	$4, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	ivector, .Lfunc_end25-ivector
	.cfi_endproc

	.globl	free_ivector
	.align	16, 0x90
	.type	free_ivector,@function
free_ivector:                           # @free_ivector
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	leaq	-4(%rax,%rcx,4), %rdi
	callq	free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	free_ivector, .Lfunc_end26-free_ivector
	.cfi_endproc

	.globl	dvector
	.align	16, 0x90
	.type	dvector,@function
dvector:                                # @dvector
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	subq	-8(%rbp), %rsi
	leaq	16(,%rsi,8), %rdi
	callq	malloc
	movq	%rax, -24(%rbp)
	testq	%rax, %rax
	jne	.LBB27_2
# BB#1:
	movl	$.L.str.6.24, %edi
	callq	nrerror
.LBB27_2:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$3, %rcx
	subq	%rcx, %rax
	addq	$8, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	dvector, .Lfunc_end27-dvector
	.cfi_endproc

	.globl	free_dvector
	.align	16, 0x90
	.type	free_dvector,@function
free_dvector:                           # @free_dvector
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	leaq	-8(%rax,%rcx,8), %rdi
	callq	free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	free_dvector, .Lfunc_end28-free_dvector
	.cfi_endproc

	.globl	dmatrix
	.align	16, 0x90
	.type	dmatrix,@function
dmatrix:                                # @dmatrix
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	incq	%rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	incq	%rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	leaq	8(,%rax,8), %rdi
	callq	malloc
	movq	%rax, -64(%rbp)
	testq	%rax, %rax
	jne	.LBB29_2
# BB#1:
	movl	$.L.str.7.25, %edi
	callq	nrerror
.LBB29_2:
	movq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	-8(%rbp), %rcx
	shlq	$3, %rcx
	negq	%rcx
	leaq	8(%rax,%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	imulq	-56(%rbp), %rax
	leaq	8(,%rax,8), %rdi
	callq	malloc
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB29_4
# BB#3:
	movl	$.L.str.8.26, %edi
	callq	nrerror
.LBB29_4:
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$8, (%rcx,%rax,8)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rdx
	shlq	$3, %rax
	subq	%rax, (%rdx,%rcx,8)
	movq	-8(%rbp), %rax
	incq	%rax
	movq	%rax, -40(%rbp)
	jmp	.LBB29_5
	.align	16, 0x90
.LBB29_6:                               #   in Loop: Header=BB29_5 Depth=1
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	shlq	$3, %rdx
	addq	-8(%rcx,%rax,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	incq	-40(%rbp)
.LBB29_5:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB29_6
# BB#7:
	movq	-64(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	dmatrix, .Lfunc_end29-dmatrix
	.cfi_endproc

	.globl	free_dmatrix
	.align	16, 0x90
	.type	free_dmatrix,@function
free_dmatrix:                           # @free_dmatrix
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-32(%rbp), %rcx
	leaq	-8(%rax,%rcx,8), %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	leaq	-8(%rax,%rcx,8), %rdi
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	free_dmatrix, .Lfunc_end30-free_dmatrix
	.cfi_endproc

	.type	_ZL1a,@object           # @_ZL1a
	.data
	.align	16
_ZL1a:
	.quad	4612826843801215501     # double 2.506628e+00
	.quad	-4597439162305174562    # double -1.861500e+01
	.quad	4631022110518789884     # double 4.139120e+01
	.quad	-4595517797261936776    # double -2.544106e+01
	.size	_ZL1a, 32

	.type	_ZL1b,@object           # @_ZL1b
	.align	16
_ZL1b:
	.quad	-4602412256216152275    # double -8.473511e+00
	.quad	4627190607993983020     # double 2.308337e+01
	.quad	-4596750325372557955    # double -2.106224e+01
	.quad	4614232419180317255     # double 3.130829e+00
	.size	_ZL1b, 32

	.type	_ZL1c,@object           # @_ZL1c
	.align	16
_ZL1c:
	.quad	4599751037742744424     # double 3.374755e-01
	.quad	4606967768406540589     # double 9.761690e-01
	.quad	4594961377766475394     # double 1.607980e-01
	.quad	4583625027636970039     # double 2.764388e-02
	.quad	4571002180785301381     # double 3.840573e-03
	.quad	4555925586000316486     # double 3.951897e-04
	.quad	4539873280574980616     # double 3.217679e-05
	.quad	4509055221273164630     # double 2.888167e-07
	.quad	4511080451250771373     # double 3.960315e-07
	.size	_ZL1c, 72

	.type	NUM_TRIALS,@object      # @NUM_TRIALS
	.globl	NUM_TRIALS
	.align	4
NUM_TRIALS:
	.long	102400                  # 0x19000
	.size	NUM_TRIALS, 4

	.type	nThreads,@object        # @nThreads
	.globl	nThreads
	.align	4
nThreads:
	.long	1                       # 0x1
	.size	nThreads, 4

	.type	nSwaptions,@object      # @nSwaptions
	.globl	nSwaptions
	.align	4
nSwaptions:
	.long	1                       # 0x1
	.size	nSwaptions, 4

	.type	iN,@object              # @iN
	.globl	iN
	.align	4
iN:
	.long	11                      # 0xb
	.size	iN, 4

	.type	iFactors,@object        # @iFactors
	.globl	iFactors
	.align	4
iFactors:
	.long	3                       # 0x3
	.size	iFactors, 4

	.type	swaptions,@object       # @swaptions
	.bss
	.globl	swaptions
	.align	8
swaptions:
	.quad	0
	.size	swaptions, 8

	.type	seed,@object            # @seed
	.data
	.globl	seed
	.align	8
seed:
	.quad	1979                    # 0x7bb
	.size	seed, 8

	.type	swaption_seed,@object   # @swaption_seed
	.bss
	.globl	swaption_seed
	.align	8
swaption_seed:
	.quad	0                       # 0x0
	.size	swaption_seed, 8

	.type	dSumSimSwaptionPrice_global_ptr,@object # @dSumSimSwaptionPrice_global_ptr
	.globl	dSumSimSwaptionPrice_global_ptr
	.align	8
dSumSimSwaptionPrice_global_ptr:
	.quad	0
	.size	dSumSimSwaptionPrice_global_ptr, 8

	.type	dSumSquareSimSwaptionPrice_global_ptr,@object # @dSumSquareSimSwaptionPrice_global_ptr
	.globl	dSumSquareSimSwaptionPrice_global_ptr
	.align	8
dSumSquareSimSwaptionPrice_global_ptr:
	.quad	0
	.size	dSumSquareSimSwaptionPrice_global_ptr, 8

	.type	chunksize,@object       # @chunksize
	.globl	chunksize
	.align	4
chunksize:
	.long	0                       # 0x0
	.size	chunksize, 4

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_HJM_Securities.cpp
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"iSuccess == 1"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"HJM_Securities.cpp"
	.size	.L.str.1, 19

	.type	.L__PRETTY_FUNCTION__._Z6workerPv,@object # @__PRETTY_FUNCTION__._Z6workerPv
.L__PRETTY_FUNCTION__._Z6workerPv:
	.asciz	"void *worker(void *)"
	.size	.L__PRETTY_FUNCTION__._Z6workerPv, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Usage: %s OPTION [OPTIONS]...\n"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Options:\n"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\t-ns [number of swaptions (should be > number of threads]\n"
	.size	.L.str.4, 59

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\t-sm [number of simulations]\n"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\t-nt [number of threads]\n"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\t-sd [random number seed]\n"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"PARSEC Benchmark Suite\n"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"-sm"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"-nt"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-ns"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"-sd"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Error: Unknown option: %s\n"
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Error: Fewer swaptions than threads.\n"
	.size	.L.str.14, 38

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Number of Simulations: %d,  Number of threads: %d Number of swaptions: %d\n"
	.size	.L.str.15, 75

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Number of threads must be 1 (serial version)\n"
	.size	.L.str.16, 46

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Swaption %d: [SwaptionPrice: %.10lf StdError: %.10lf] \n"
	.size	.L.str.17, 56

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Numerical Recipes run-time error...\n"
	.size	.L.str.18, 37

	.type	.L.str.1.19,@object     # @.str.1.19
.L.str.1.19:
	.asciz	"%s\n"
	.size	.L.str.1.19, 4

	.type	.L.str.2.20,@object     # @.str.2.20
.L.str.2.20:
	.asciz	"...now exiting to system...\n"
	.size	.L.str.2.20, 29

	.type	.L.str.3.21,@object     # @.str.3.21
.L.str.3.21:
	.asciz	"gaussj: Singular Matrix-1"
	.size	.L.str.3.21, 26

	.type	.L.str.4.22,@object     # @.str.4.22
.L.str.4.22:
	.asciz	"gaussj: Singular Matrix-2"
	.size	.L.str.4.22, 26

	.type	.L.str.5.23,@object     # @.str.5.23
.L.str.5.23:
	.asciz	"allocation failure in ivector()"
	.size	.L.str.5.23, 32

	.type	.L.str.6.24,@object     # @.str.6.24
.L.str.6.24:
	.asciz	"allocation failure in dvector()"
	.size	.L.str.6.24, 32

	.type	.L.str.7.25,@object     # @.str.7.25
.L.str.7.25:
	.asciz	"allocation failure 1 in dmatrix()"
	.size	.L.str.7.25, 34

	.type	.L.str.8.26,@object     # @.str.8.26
.L.str.8.26:
	.asciz	"allocation failure 2 in dmatrix()"
	.size	.L.str.8.26, 34


	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.section	".note.GNU-stack","",@progbits
