	.text
	.file	"canneal_perf.bc1"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4609434218613702656     # double 1.5
	.text
	.globl	_ZN15annealer_thread3RunEv
	.align	16, 0x90
	.type	_ZN15annealer_thread3RunEv,@function
_ZN15annealer_thread3RunEv:             # @_ZN15annealer_thread3RunEv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# BB#0:
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
.Ltmp25:
	.cfi_offset %rbx, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	%rbx, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$-1, -40(%rbp)
	cvtsi2sdl	16(%rbx), %xmm0
	movsd	%xmm0, -48(%rbp)
	leaq	-56(%rbp), %r14
	movq	%r14, %rdi
	callq	_ZN3RngC2Ev
	movq	(%rbx), %rdi
.Ltmp0:
	leaq	-64(%rbp), %rsi
	movq	$-1, %rdx
	movq	%r14, %rcx
	callq	_ZN7netlist18get_random_elementEPllP3Rng
.Ltmp1:
# BB#1:
	movq	%rax, -80(%rbp)
	movq	(%rbx), %rdi
.Ltmp2:
	leaq	-72(%rbp), %rsi
	leaq	-56(%rbp), %rcx
	movq	$-1, %rdx
	callq	_ZN7netlist18get_random_elementEPllP3Rng
.Ltmp3:
# BB#2:
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
	leaq	-72(%rbp), %r14
	leaq	-56(%rbp), %r15
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	incl	-108(%rbp)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movl	-108(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
.Ltmp5:
	movq	%rbx, %rdi
	callq	_ZN15annealer_thread10keep_goingEiii
.Ltmp6:
# BB#4:                                 #   in Loop: Header=BB0_3 Depth=1
	testb	%al, %al
	je	.LBB0_21
# BB#5:                                 #   in Loop: Header=BB0_3 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	.LCPI0_0(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -112(%rbp)
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_6 Depth=2
	incl	-112(%rbp)
.LBB0_6:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-112(%rbp), %eax
	cmpl	12(%rbx), %eax
	jge	.LBB0_20
# BB#7:                                 #   in Loop: Header=BB0_6 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	(%rbx), %rdi
.Ltmp8:
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	_ZN7netlist18get_random_elementEPllP3Rng
.Ltmp9:
# BB#8:                                 #   in Loop: Header=BB0_6 Depth=2
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rsi
.Ltmp10:
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	_ZN15annealer_thread28calculate_delta_routing_costEP12netlist_elemS1_
.Ltmp11:
# BB#9:                                 #   in Loop: Header=BB0_6 Depth=2
	movsd	%xmm0, -120(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
.Ltmp12:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZN15annealer_thread11accept_moveEddP3Rng
.Ltmp13:
# BB#10:                                #   in Loop: Header=BB0_6 Depth=2
	movl	%eax, -124(%rbp)
	cmpl	$1, %eax
	jne	.LBB0_17
# BB#11:                                #   in Loop: Header=BB0_6 Depth=2
	incl	-40(%rbp)
	movq	(%rbx), %rdi
	movq	-80(%rbp), %rsi
	movq	-104(%rbp), %rdx
.Ltmp16:
	callq	_ZN7netlist14swap_locationsEP12netlist_elemS1_
.Ltmp17:
	jmp	.LBB0_19
	.align	16, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_6 Depth=2
	cmpl	$0, -124(%rbp)
	jne	.LBB0_19
# BB#18:                                #   in Loop: Header=BB0_6 Depth=2
	incl	-36(%rbp)
	movq	(%rbx), %rdi
	movq	-80(%rbp), %rsi
	movq	-104(%rbp), %rdx
.Ltmp14:
	callq	_ZN7netlist14swap_locationsEP12netlist_elemS1_
.Ltmp15:
	jmp	.LBB0_19
.LBB0_12:                               # %.loopexit
.Ltmp18:
.LBB0_15:
	movq	%rax, -88(%rbp)
	movl	%edx, -92(%rbp)
.Ltmp19:
	leaq	-56(%rbp), %rdi
	callq	_ZN3RngD2Ev
.Ltmp20:
# BB#16:
	movq	-88(%rbp), %rdi
	callq	_Unwind_Resume
.LBB0_21:
	leaq	-56(%rbp), %rdi
	callq	_ZN3RngD2Ev
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_22:
.Ltmp21:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_13:                               # %.loopexit.split-lp.loopexit
.Ltmp7:
	jmp	.LBB0_15
.LBB0_14:                               # %.loopexit.split-lp.loopexit.split-lp
.Ltmp4:
	jmp	.LBB0_15
.Lfunc_end0:
	.size	_ZN15annealer_thread3RunEv, .Lfunc_end0-_ZN15annealer_thread3RunEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp3-.Ltmp0           #   Call between .Ltmp0 and .Ltmp3
	.long	.Ltmp4-.Lfunc_begin0    #     jumps to .Ltmp4
	.byte	0                       #   On action: cleanup
	.long	.Ltmp5-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp6-.Ltmp5           #   Call between .Ltmp5 and .Ltmp6
	.long	.Ltmp7-.Lfunc_begin0    #     jumps to .Ltmp7
	.byte	0                       #   On action: cleanup
	.long	.Ltmp8-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Ltmp15-.Ltmp8          #   Call between .Ltmp8 and .Ltmp15
	.long	.Ltmp18-.Lfunc_begin0   #     jumps to .Ltmp18
	.byte	0                       #   On action: cleanup
	.long	.Ltmp19-.Lfunc_begin0   # >> Call Site 5 <<
	.long	.Ltmp20-.Ltmp19         #   Call between .Ltmp19 and .Ltmp20
	.long	.Ltmp21-.Lfunc_begin0   #     jumps to .Ltmp21
	.byte	1                       #   On action: 1
	.long	.Ltmp20-.Lfunc_begin0   # >> Call Site 6 <<
	.long	.Lfunc_end0-.Ltmp20     #   Call between .Ltmp20 and .Lfunc_end0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.text
	.globl	_ZN15annealer_thread10keep_goingEiii
	.align	16, 0x90
	.type	_ZN15annealer_thread10keep_goingEiii,@function
_ZN15annealer_thread10keep_goingEiii:   # @_ZN15annealer_thread10keep_goingEiii
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$-1, 20(%rax)
	je	.LBB1_1
# BB#6:
	movl	-12(%rbp), %ecx
	cmpl	20(%rax), %ecx
	setl	-21(%rbp)
	jmp	.LBB1_7
.LBB1_1:
	testb	$1, 8(%rax)
	je	.LBB1_2
# BB#3:
	movl	-16(%rbp), %ecx
	cmpl	-20(%rbp), %ecx
	setg	%cl
	jmp	.LBB1_4
.LBB1_2:
	xorl	%ecx, %ecx
.LBB1_4:
	movb	%cl, -21(%rbp)
	testb	%cl, %cl
	jne	.LBB1_7
# BB#5:
	movb	$0, 8(%rax)
.LBB1_7:
	movb	-21(%rbp), %al
	andb	$1, %al
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_ZN15annealer_thread10keep_goingEiii, .Lfunc_end1-_ZN15annealer_thread10keep_goingEiii
	.cfi_endproc

	.globl	_ZN15annealer_thread28calculate_delta_routing_costEP12netlist_elemS1_
	.align	16, 0x90
	.type	_ZN15annealer_thread28calculate_delta_routing_costEP12netlist_elemS1_,@function
_ZN15annealer_thread28calculate_delta_routing_costEP12netlist_elemS1_: # @_ZN15annealer_thread28calculate_delta_routing_costEP12netlist_elemS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	addq	$56, %rdi
	callq	_ZNK7threads9AtomicPtrI10location_tE3GetEv
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	addq	$56, %rdi
	callq	_ZNK7threads9AtomicPtrI10location_tE3GetEv
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, %rdx
	callq	_ZN12netlist_elem9swap_costEP10location_tS1_
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_ZN12netlist_elem9swap_costEP10location_tS1_
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_ZN15annealer_thread28calculate_delta_routing_costEP12netlist_elemS1_, .Lfunc_end2-_ZN15annealer_thread28calculate_delta_routing_costEP12netlist_elemS1_
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	_ZN15annealer_thread11accept_moveEddP3Rng
	.align	16, 0x90
	.type	_ZN15annealer_thread11accept_moveEddP3Rng,@function
_ZN15annealer_thread11accept_moveEddP3Rng: # @_ZN15annealer_thread11accept_moveEddP3Rng
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rsi, -40(%rbp)
	xorpd	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB3_2
# BB#1:
	movl	$0, -4(%rbp)
	jmp	.LBB3_5
.LBB3_2:
	movq	-40(%rbp), %rdi
	callq	_ZN3Rng5drandEv
	movsd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	xorpd	.LCPI3_0(%rip), %xmm0
	divsd	-32(%rbp), %xmm0
	callq	exp
	movsd	%xmm0, -56(%rbp)
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB3_4
# BB#3:
	movl	$1, -4(%rbp)
	jmp	.LBB3_5
.LBB3_4:
	movl	$2, -4(%rbp)
.LBB3_5:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_ZN15annealer_thread11accept_moveEddP3Rng, .Lfunc_end3-_ZN15annealer_thread11accept_moveEddP3Rng
	.cfi_endproc

	.section	.text._ZN3RngC2Ev,"axG",@progbits,_ZN3RngC2Ev,comdat
	.weak	_ZN3RngC2Ev
	.align	16, 0x90
	.type	_ZN3RngC2Ev,@function
_ZN3RngC2Ev:                            # @_ZN3RngC2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# BB#0:
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movq	%rbx, -24(%rbp)
	movl	$5008, %edi             # imm = 0x1390
	callq	_Znwm
	movq	%rax, %r14
	movl	_ZN3Rng4seedE(%rip), %eax
	leal	1(%rax), %ecx
	movl	%ecx, _ZN3Rng4seedE(%rip)
	movq	%rax, -32(%rbp)
.Ltmp37:
	leaq	-32(%rbp), %rsi
	movq	%r14, %rdi
	callq	_ZN6MTRandC2ERKm
.Ltmp38:
# BB#1:
	movq	%r14, (%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB4_2:
.Ltmp39:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%r14, %rdi
	callq	_ZdlPv
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end4:
	.size	_ZN3RngC2Ev, .Lfunc_end4-_ZN3RngC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table4:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	41                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
	.long	.Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.long	.Ltmp37-.Lfunc_begin1   #   Call between .Lfunc_begin1 and .Ltmp37
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp37-.Lfunc_begin1   # >> Call Site 2 <<
	.long	.Ltmp38-.Ltmp37         #   Call between .Ltmp37 and .Ltmp38
	.long	.Ltmp39-.Lfunc_begin1   #     jumps to .Ltmp39
	.byte	0                       #   On action: cleanup
	.long	.Ltmp38-.Lfunc_begin1   # >> Call Site 3 <<
	.long	.Lfunc_end4-.Ltmp38     #   Call between .Ltmp38 and .Lfunc_end4
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZN3RngD2Ev,"axG",@progbits,_ZN3RngD2Ev,comdat
	.weak	_ZN3RngD2Ev
	.align	16, 0x90
	.type	_ZN3RngD2Ev,@function
_ZN3RngD2Ev:                            # @_ZN3RngD2Ev
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
	movq	%rdi, -8(%rbp)
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB5_2
# BB#1:
	callq	_ZdlPv
.LBB5_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_ZN3RngD2Ev, .Lfunc_end5-_ZN3RngD2Ev
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
.Lfunc_end6:
	.size	__clang_call_terminate, .Lfunc_end6-__clang_call_terminate

	.section	.text._ZNK7threads9AtomicPtrI10location_tE3GetEv,"axG",@progbits,_ZNK7threads9AtomicPtrI10location_tE3GetEv,comdat
	.weak	_ZNK7threads9AtomicPtrI10location_tE3GetEv
	.align	16, 0x90
	.type	_ZNK7threads9AtomicPtrI10location_tE3GetEv,@function
_ZNK7threads9AtomicPtrI10location_tE3GetEv: # @_ZNK7threads9AtomicPtrI10location_tE3GetEv
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
	movq	%rdi, -8(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_ZNK7threads9AtomicPtrI10location_tE3GetEv, .Lfunc_end7-_ZNK7threads9AtomicPtrI10location_tE3GetEv
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_annealer_thread.cpp,@function
_GLOBAL__sub_I_annealer_thread.cpp:     # @_GLOBAL__sub_I_annealer_thread.cpp
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
	callq	__cxx_global_var_init
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_GLOBAL__sub_I_annealer_thread.cpp, .Lfunc_end8-_GLOBAL__sub_I_annealer_thread.cpp
	.cfi_endproc

	.align	16, 0x90
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
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
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	retq
.Lfunc_end9:
	.size	__cxx_global_var_init, .Lfunc_end9-__cxx_global_var_init
	.cfi_endproc

	.section	.text._ZN6MTRandC2ERKm,"axG",@progbits,_ZN6MTRandC2ERKm,comdat
	.weak	_ZN6MTRandC2ERKm
	.align	16, 0x90
	.type	_ZN6MTRandC2ERKm,@function
_ZN6MTRandC2ERKm:                       # @_ZN6MTRandC2ERKm
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rsi), %rsi
	callq	_ZN6MTRand4seedEm
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_ZN6MTRandC2ERKm, .Lfunc_end10-_ZN6MTRandC2ERKm
	.cfi_endproc

	.section	.text._ZN6MTRand4seedEm,"axG",@progbits,_ZN6MTRand4seedEm,comdat
	.weak	_ZN6MTRand4seedEm
	.align	16, 0x90
	.type	_ZN6MTRand4seedEm,@function
_ZN6MTRand4seedEm:                      # @_ZN6MTRand4seedEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp63:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZN6MTRand10initializeEm
	movq	%rbx, %rdi
	callq	_ZN6MTRand6reloadEv
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_ZN6MTRand4seedEm, .Lfunc_end11-_ZN6MTRand4seedEm
	.cfi_endproc

	.section	.text._ZN6MTRand10initializeEm,"axG",@progbits,_ZN6MTRand10initializeEm,comdat
	.weak	_ZN6MTRand10initializeEm
	.align	16, 0x90
	.type	_ZN6MTRand10initializeEm,@function
_ZN6MTRand10initializeEm:               # @_ZN6MTRand10initializeEm
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
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$1, -36(%rbp)
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	leaq	8(%rdx), %rsi
	movq	%rsi, -24(%rbp)
	movq	%rcx, (%rdx)
	jmp	.LBB12_1
	.align	16, 0x90
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdx
	shrq	$30, %rdx
	xorl	%ecx, %edx
	imull	$1812433253, %edx, %ecx # imm = 0x6C078965
	addl	-36(%rbp), %ecx
	andq	%rax, %rcx
	movq	-24(%rbp), %rdx
	leaq	8(%rdx), %rsi
	movq	%rsi, -24(%rbp)
	movq	%rcx, (%rdx)
	addq	$8, -32(%rbp)
	incl	-36(%rbp)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$623, -36(%rbp)         # imm = 0x26F
	jle	.LBB12_2
# BB#3:
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_ZN6MTRand10initializeEm, .Lfunc_end12-_ZN6MTRand10initializeEm
	.cfi_endproc

	.section	.text._ZN6MTRand6reloadEv,"axG",@progbits,_ZN6MTRand6reloadEv,comdat
	.weak	_ZN6MTRand6reloadEv
	.align	16, 0x90
	.type	_ZN6MTRand6reloadEv,@function
_ZN6MTRand6reloadEv:                    # @_ZN6MTRand6reloadEv
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
	pushq	%rbx
	subq	$24, %rsp
.Ltmp70:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	movq	%rbx, -24(%rbp)
	movl	$227, -28(%rbp)
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rdx
	leaq	3176(%rdx), %rsi
	leaq	8(%rdx), %rcx
	movq	%rbx, %rdi
	callq	_ZNK6MTRand5twistERKmS1_S1_
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$8, -24(%rbp)
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -28(%rbp)
	testl	%eax, %eax
	jne	.LBB13_2
# BB#3:
	movl	$397, -28(%rbp)         # imm = 0x18D
	jmp	.LBB13_4
	.align	16, 0x90
.LBB13_5:                               #   in Loop: Header=BB13_4 Depth=1
	movq	-24(%rbp), %rdx
	leaq	-1816(%rdx), %rsi
	leaq	8(%rdx), %rcx
	movq	%rbx, %rdi
	callq	_ZNK6MTRand5twistERKmS1_S1_
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$8, -24(%rbp)
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	decl	-28(%rbp)
	jne	.LBB13_5
# BB#6:
	movq	-24(%rbp), %rdx
	leaq	-1816(%rdx), %rsi
	movq	%rbx, %rdi
	movq	%rbx, %rcx
	callq	_ZNK6MTRand5twistERKmS1_S1_
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$624, 5000(%rbx)        # imm = 0x270
	movq	%rbx, 4992(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_ZN6MTRand6reloadEv, .Lfunc_end13-_ZN6MTRand6reloadEv
	.cfi_endproc

	.section	.text._ZNK6MTRand5twistERKmS1_S1_,"axG",@progbits,_ZNK6MTRand5twistERKmS1_S1_,comdat
	.weak	_ZNK6MTRand5twistERKmS1_S1_
	.align	16, 0x90
	.type	_ZNK6MTRand5twistERKmS1_S1_,@function
_ZNK6MTRand5twistERKmS1_S1_:            # @_ZNK6MTRand5twistERKmS1_S1_
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
.Ltmp74:
	.cfi_offset %rbx, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	-32(%rbp), %r14
	movq	-40(%rbp), %rax
	movq	(%rax), %r15
	movq	-48(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rcx, %rdx
	callq	_ZNK6MTRand7mixBitsERKmS1_
	movq	%rax, %rbx
	shrq	%rbx
	xorq	%r15, %rbx
	movq	-56(%rbp), %rsi
	movq	%r14, %rdi
	callq	_ZNK6MTRand5loBitERKm
	negl	%eax
	andl	$-1727483681, %eax      # imm = 0xFFFFFFFF9908B0DF
	xorq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_ZNK6MTRand5twistERKmS1_S1_, .Lfunc_end14-_ZNK6MTRand5twistERKmS1_S1_
	.cfi_endproc

	.section	.text._ZNK6MTRand7mixBitsERKmS1_,"axG",@progbits,_ZNK6MTRand7mixBitsERKmS1_,comdat
	.weak	_ZNK6MTRand7mixBitsERKmS1_
	.align	16, 0x90
	.type	_ZNK6MTRand7mixBitsERKmS1_,@function
_ZNK6MTRand7mixBitsERKmS1_:             # @_ZNK6MTRand7mixBitsERKmS1_
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
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Ltmp80:
	.cfi_offset %rbx, -32
.Ltmp81:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNK6MTRand5hiBitERKm
	movq	%rax, %r14
	movq	-40(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNK6MTRand6loBitsERKm
	orq	%r14, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	_ZNK6MTRand7mixBitsERKmS1_, .Lfunc_end15-_ZNK6MTRand7mixBitsERKmS1_
	.cfi_endproc

	.section	.text._ZNK6MTRand5loBitERKm,"axG",@progbits,_ZNK6MTRand5loBitERKm,comdat
	.weak	_ZNK6MTRand5loBitERKm
	.align	16, 0x90
	.type	_ZNK6MTRand5loBitERKm,@function
_ZNK6MTRand5loBitERKm:                  # @_ZNK6MTRand5loBitERKm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	(%rsi), %rax
	andl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	_ZNK6MTRand5loBitERKm, .Lfunc_end16-_ZNK6MTRand5loBitERKm
	.cfi_endproc

	.section	.text._ZNK6MTRand5hiBitERKm,"axG",@progbits,_ZNK6MTRand5hiBitERKm,comdat
	.weak	_ZNK6MTRand5hiBitERKm
	.align	16, 0x90
	.type	_ZNK6MTRand5hiBitERKm,@function
_ZNK6MTRand5hiBitERKm:                  # @_ZNK6MTRand5hiBitERKm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$2147483648, %eax       # imm = 0x80000000
	andq	(%rsi), %rax
	popq	%rbp
	retq
.Lfunc_end17:
	.size	_ZNK6MTRand5hiBitERKm, .Lfunc_end17-_ZNK6MTRand5hiBitERKm
	.cfi_endproc

	.section	.text._ZNK6MTRand6loBitsERKm,"axG",@progbits,_ZNK6MTRand6loBitsERKm,comdat
	.weak	_ZNK6MTRand6loBitsERKm
	.align	16, 0x90
	.type	_ZNK6MTRand6loBitsERKm,@function
_ZNK6MTRand6loBitsERKm:                 # @_ZNK6MTRand6loBitsERKm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	andq	(%rsi), %rax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_ZNK6MTRand6loBitsERKm, .Lfunc_end18-_ZNK6MTRand6loBitsERKm
	.cfi_endproc

	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# BB#0:
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$720, %rsp              # imm = 0x2D0
.Ltmp154:
	.cfi_offset %rbx, -32
.Ltmp155:
	.cfi_offset %r14, -24
	movl	$0, -20(%rbp)
	movl	%edi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$_ZSt4cout, %edi
	movl	$.L.str, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movl	$_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movl	$3, %edi
	callq	srandom
	cmpl	$7, -24(%rbp)
	jne	.LBB19_1
# BB#2:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, -36(%rbp)
	movl	$_ZSt4cout, %edi
	movl	$.L.str.3, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	cmpl	$1, -36(%rbp)
	jne	.LBB19_3
# BB#5:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	atoi
	movl	%eax, -40(%rbp)
	movl	$_ZSt4cout, %edi
	movl	%eax, %esi
	callq	_ZNSolsEi
	movl	$.L.str.5, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	atoi
	movl	%eax, -44(%rbp)
	movl	$_ZSt4cout, %edi
	movl	$.L.str.6, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	callq	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movq	-32(%rbp), %rax
	movq	32(%rax), %rbx
	leaq	-64(%rbp), %r14
	movq	%r14, %rdi
	callq	_ZNSaIcEC1Ev
.Ltmp91:
	leaq	-56(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	_ZNSsC1EPKcRKSaIcE
.Ltmp92:
# BB#6:
	leaq	-64(%rbp), %rdi
	callq	_ZNSaIcED1Ev
.Ltmp94:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.7, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp95:
# BB#7:
.Ltmp96:
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
.Ltmp97:
# BB#8:
.Ltmp98:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp99:
# BB#9:
	movl	$-1, -80(%rbp)
	cmpl	$6, -24(%rbp)
	jne	.LBB19_13
# BB#10:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	callq	atoi
	movl	%eax, -80(%rbp)
.Ltmp100:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.8, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp101:
# BB#11:
	movl	-80(%rbp), %esi
.Ltmp102:
	movq	%rax, %rdi
	callq	_ZNSolsEi
.Ltmp103:
# BB#12:
.Ltmp104:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp105:
.LBB19_13:
.Ltmp106:
	leaq	-192(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	_ZN7netlistC1ERKSs
.Ltmp107:
# BB#14:
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	-80(%rbp), %r9d
.Ltmp108:
	leaq	-216(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	callq	_ZN15annealer_threadC2EP7netlistiiii
.Ltmp109:
# BB#15:
.Ltmp110:
	leaq	-216(%rbp), %rdi
	callq	_ZN15annealer_thread3RunEv
.Ltmp111:
# BB#16:
.Ltmp112:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.9, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
.Ltmp113:
# BB#17:
.Ltmp114:
	leaq	-192(%rbp), %rdi
	callq	_ZN7netlist18total_routing_costEv
.Ltmp115:
# BB#18:
.Ltmp116:
	movq	%rbx, %rdi
	callq	_ZNSolsEd
.Ltmp117:
# BB#19:
.Ltmp118:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp119:
# BB#20:
.Ltmp120:
	leaq	-728(%rbp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
.Ltmp121:
# BB#21:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rbx
.Ltmp122:
	movl	$16, %edi
	movl	$32, %esi
	callq	_ZStorSt13_Ios_OpenmodeS_
.Ltmp123:
# BB#22:
.Ltmp124:
	leaq	-728(%rbp), %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
.Ltmp125:
# BB#23:
.Ltmp126:
	leaq	-192(%rbp), %rdi
	callq	_ZN7netlist18total_routing_costEv
.Ltmp127:
# BB#24:
.Ltmp128:
	leaq	-728(%rbp), %rdi
	callq	_ZNSolsEd
.Ltmp129:
# BB#25:
.Ltmp130:
	leaq	-728(%rbp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.Ltmp131:
# BB#26:
	movl	$0, -20(%rbp)
.Ltmp135:
	leaq	-728(%rbp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.Ltmp136:
# BB#27:
.Ltmp140:
	leaq	-216(%rbp), %rdi
	callq	_ZN15annealer_threadD2Ev
.Ltmp141:
# BB#28:
.Ltmp145:
	leaq	-192(%rbp), %rdi
	callq	_ZN7netlistD2Ev
.Ltmp146:
# BB#29:
	leaq	-56(%rbp), %rdi
	callq	_ZNSsD1Ev
	movl	-20(%rbp), %eax
	addq	$720, %rsp              # imm = 0x2D0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB19_30:
.Ltmp137:
	movq	%rax, -72(%rbp)
	movl	%edx, -76(%rbp)
	jmp	.LBB19_31
.LBB19_38:
.Ltmp147:
	movq	%rax, -72(%rbp)
	movl	%edx, -76(%rbp)
	jmp	.LBB19_34
.LBB19_39:
.Ltmp132:
	movq	%rax, -72(%rbp)
	movl	%edx, -76(%rbp)
.Ltmp133:
	leaq	-728(%rbp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.Ltmp134:
.LBB19_31:
.Ltmp138:
	leaq	-216(%rbp), %rdi
	callq	_ZN15annealer_threadD2Ev
.Ltmp139:
	jmp	.LBB19_33
.LBB19_32:
.Ltmp142:
	movq	%rax, -72(%rbp)
	movl	%edx, -76(%rbp)
.LBB19_33:
.Ltmp143:
	leaq	-192(%rbp), %rdi
	callq	_ZN7netlistD2Ev
.Ltmp144:
.LBB19_34:
.Ltmp148:
	leaq	-56(%rbp), %rdi
	callq	_ZNSsD1Ev
.Ltmp149:
# BB#35:
	movq	-72(%rbp), %rdi
	callq	_Unwind_Resume
.LBB19_36:
.Ltmp150:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB19_1:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	jmp	.LBB19_4
.LBB19_3:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.4, %esi
.LBB19_4:
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
	movl	$1, %edi
	callq	exit
.LBB19_37:
.Ltmp93:
	movq	%rax, -72(%rbp)
	movl	%edx, -76(%rbp)
	leaq	-64(%rbp), %rdi
	callq	_ZNSaIcED1Ev
	movq	-72(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end19:
	.size	main, .Lfunc_end19-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table19:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\245\201\200\200"      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\234\001"              # Call site table length
	.long	.Lfunc_begin2-.Lfunc_begin2 # >> Call Site 1 <<
	.long	.Ltmp91-.Lfunc_begin2   #   Call between .Lfunc_begin2 and .Ltmp91
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp91-.Lfunc_begin2   # >> Call Site 2 <<
	.long	.Ltmp92-.Ltmp91         #   Call between .Ltmp91 and .Ltmp92
	.long	.Ltmp93-.Lfunc_begin2   #     jumps to .Ltmp93
	.byte	0                       #   On action: cleanup
	.long	.Ltmp94-.Lfunc_begin2   # >> Call Site 3 <<
	.long	.Ltmp107-.Ltmp94        #   Call between .Ltmp94 and .Ltmp107
	.long	.Ltmp147-.Lfunc_begin2  #     jumps to .Ltmp147
	.byte	0                       #   On action: cleanup
	.long	.Ltmp108-.Lfunc_begin2  # >> Call Site 4 <<
	.long	.Ltmp109-.Ltmp108       #   Call between .Ltmp108 and .Ltmp109
	.long	.Ltmp142-.Lfunc_begin2  #     jumps to .Ltmp142
	.byte	0                       #   On action: cleanup
	.long	.Ltmp110-.Lfunc_begin2  # >> Call Site 5 <<
	.long	.Ltmp121-.Ltmp110       #   Call between .Ltmp110 and .Ltmp121
	.long	.Ltmp137-.Lfunc_begin2  #     jumps to .Ltmp137
	.byte	0                       #   On action: cleanup
	.long	.Ltmp122-.Lfunc_begin2  # >> Call Site 6 <<
	.long	.Ltmp131-.Ltmp122       #   Call between .Ltmp122 and .Ltmp131
	.long	.Ltmp132-.Lfunc_begin2  #     jumps to .Ltmp132
	.byte	0                       #   On action: cleanup
	.long	.Ltmp135-.Lfunc_begin2  # >> Call Site 7 <<
	.long	.Ltmp136-.Ltmp135       #   Call between .Ltmp135 and .Ltmp136
	.long	.Ltmp137-.Lfunc_begin2  #     jumps to .Ltmp137
	.byte	0                       #   On action: cleanup
	.long	.Ltmp140-.Lfunc_begin2  # >> Call Site 8 <<
	.long	.Ltmp141-.Ltmp140       #   Call between .Ltmp140 and .Ltmp141
	.long	.Ltmp142-.Lfunc_begin2  #     jumps to .Ltmp142
	.byte	0                       #   On action: cleanup
	.long	.Ltmp145-.Lfunc_begin2  # >> Call Site 9 <<
	.long	.Ltmp146-.Ltmp145       #   Call between .Ltmp145 and .Ltmp146
	.long	.Ltmp147-.Lfunc_begin2  #     jumps to .Ltmp147
	.byte	0                       #   On action: cleanup
	.long	.Ltmp146-.Lfunc_begin2  # >> Call Site 10 <<
	.long	.Ltmp133-.Ltmp146       #   Call between .Ltmp146 and .Ltmp133
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp133-.Lfunc_begin2  # >> Call Site 11 <<
	.long	.Ltmp149-.Ltmp133       #   Call between .Ltmp133 and .Ltmp149
	.long	.Ltmp150-.Lfunc_begin2  #     jumps to .Ltmp150
	.byte	1                       #   On action: 1
	.long	.Ltmp149-.Lfunc_begin2  # >> Call Site 12 <<
	.long	.Lfunc_end19-.Ltmp149   #   Call between .Ltmp149 and .Lfunc_end19
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.text
	.globl	_Z8entry_ptPv
	.align	16, 0x90
	.type	_Z8entry_ptPv,@function
_Z8entry_ptPv:                          # @_Z8entry_ptPv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rdi, -24(%rbp)
	callq	_ZN15annealer_thread3RunEv
	ud2
.Lfunc_end20:
	.size	_Z8entry_ptPv, .Lfunc_end20-_Z8entry_ptPv
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_main.cpp,@function
_GLOBAL__sub_I_main.cpp:                # @_GLOBAL__sub_I_main.cpp
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
	callq	__cxx_global_var_init.2
	popq	%rbp
	retq
.Lfunc_end21:
	.size	_GLOBAL__sub_I_main.cpp, .Lfunc_end21-_GLOBAL__sub_I_main.cpp
	.cfi_endproc

	.section	.text._ZN15annealer_threadC2EP7netlistiiii,"axG",@progbits,_ZN15annealer_threadC2EP7netlistiiii,comdat
	.weak	_ZN15annealer_threadC2EP7netlistiiii
	.align	16, 0x90
	.type	_ZN15annealer_threadC2EP7netlistiiii,@function
_ZN15annealer_threadC2EP7netlistiiii:   # @_ZN15annealer_threadC2EP7netlistiiii
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, (%rcx)
	movb	$1, 8(%rcx)
	movl	-24(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, 12(%rcx)
	movl	-28(%rbp), %eax
	movl	%eax, 16(%rcx)
	movl	-32(%rbp), %eax
	movl	%eax, 20(%rcx)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	_ZN15annealer_threadC2EP7netlistiiii, .Lfunc_end22-_ZN15annealer_threadC2EP7netlistiiii
	.cfi_endproc

	.section	.text._ZStorSt13_Ios_OpenmodeS_,"axG",@progbits,_ZStorSt13_Ios_OpenmodeS_,comdat
	.weak	_ZStorSt13_Ios_OpenmodeS_
	.align	16, 0x90
	.type	_ZStorSt13_Ios_OpenmodeS_,@function
_ZStorSt13_Ios_OpenmodeS_:              # @_ZStorSt13_Ios_OpenmodeS_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	orl	-4(%rbp), %esi
	movl	%esi, %eax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	_ZStorSt13_Ios_OpenmodeS_, .Lfunc_end23-_ZStorSt13_Ios_OpenmodeS_
	.cfi_endproc

	.section	.text._ZN15annealer_threadD2Ev,"axG",@progbits,_ZN15annealer_threadD2Ev,comdat
	.weak	_ZN15annealer_threadD2Ev
	.align	16, 0x90
	.type	_ZN15annealer_threadD2Ev,@function
_ZN15annealer_threadD2Ev:               # @_ZN15annealer_threadD2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end24:
	.size	_ZN15annealer_threadD2Ev, .Lfunc_end24-_ZN15annealer_threadD2Ev
	.cfi_endproc

	.section	.text._ZN7netlistD2Ev,"axG",@progbits,_ZN7netlistD2Ev,comdat
	.weak	_ZN7netlistD2Ev
	.align	16, 0x90
	.type	_ZN7netlistD2Ev,@function
_ZN7netlistD2Ev:                        # @_ZN7netlistD2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# BB#0:
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp184:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp185:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	leaq	64(%rbx), %rdi
.Ltmp171:
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEED2Ev
.Ltmp172:
# BB#1:
	leaq	40(%rbx), %rdi
.Ltmp176:
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EED2Ev
.Ltmp177:
# BB#2:
	addq	$16, %rbx
	movq	%rbx, %rdi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EED2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB25_3:
.Ltmp173:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	leaq	40(%rbx), %rdi
.Ltmp174:
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EED2Ev
.Ltmp175:
	jmp	.LBB25_5
.LBB25_4:
.Ltmp178:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
.LBB25_5:
	addq	$16, %rbx
.Ltmp179:
	movq	%rbx, %rdi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EED2Ev
.Ltmp180:
# BB#6:
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume
.LBB25_7:
.Ltmp181:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end25:
	.size	_ZN7netlistD2Ev, .Lfunc_end25-_ZN7netlistD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table25:
.Lexception3:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	73                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Ltmp171-.Lfunc_begin3  # >> Call Site 1 <<
	.long	.Ltmp172-.Ltmp171       #   Call between .Ltmp171 and .Ltmp172
	.long	.Ltmp173-.Lfunc_begin3  #     jumps to .Ltmp173
	.byte	0                       #   On action: cleanup
	.long	.Ltmp176-.Lfunc_begin3  # >> Call Site 2 <<
	.long	.Ltmp177-.Ltmp176       #   Call between .Ltmp176 and .Ltmp177
	.long	.Ltmp178-.Lfunc_begin3  #     jumps to .Ltmp178
	.byte	0                       #   On action: cleanup
	.long	.Ltmp177-.Lfunc_begin3  # >> Call Site 3 <<
	.long	.Ltmp174-.Ltmp177       #   Call between .Ltmp177 and .Ltmp174
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp174-.Lfunc_begin3  # >> Call Site 4 <<
	.long	.Ltmp180-.Ltmp174       #   Call between .Ltmp174 and .Ltmp180
	.long	.Ltmp181-.Lfunc_begin3  #     jumps to .Ltmp181
	.byte	1                       #   On action: 1
	.long	.Ltmp180-.Lfunc_begin3  # >> Call Site 5 <<
	.long	.Lfunc_end25-.Ltmp180   #   Call between .Ltmp180 and .Lfunc_end25
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEED2Ev,"axG",@progbits,_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEED2Ev,comdat
	.weak	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEED2Ev
	.align	16, 0x90
	.type	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEED2Ev,@function
_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEED2Ev: # @_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEED2Ev, .Lfunc_end26-_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEED2Ev
	.cfi_endproc

	.section	.text._ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EED2Ev,comdat
	.weak	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EED2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EED2Ev,@function
_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EED2Ev: # @_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EED2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
# BB#0:
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp199:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
.Ltmp200:
	.cfi_offset %rbx, -40
.Ltmp201:
	.cfi_offset %r14, -32
.Ltmp202:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	%rbx, -32(%rbp)
	movq	(%rbx), %r14
	movq	8(%rbx), %r15
.Ltmp189:
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
.Ltmp190:
# BB#1:
.Ltmp191:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E
.Ltmp192:
# BB#2:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EED2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_3:
.Ltmp193:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
.Ltmp194:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EED2Ev
.Ltmp195:
# BB#4:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.LBB27_5:
.Ltmp196:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end27:
	.size	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EED2Ev, .Lfunc_end27-_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table27:
.Lexception4:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\274"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Ltmp189-.Lfunc_begin4  # >> Call Site 1 <<
	.long	.Ltmp192-.Ltmp189       #   Call between .Ltmp189 and .Ltmp192
	.long	.Ltmp193-.Lfunc_begin4  #     jumps to .Ltmp193
	.byte	0                       #   On action: cleanup
	.long	.Ltmp192-.Lfunc_begin4  # >> Call Site 2 <<
	.long	.Ltmp194-.Ltmp192       #   Call between .Ltmp192 and .Ltmp194
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp194-.Lfunc_begin4  # >> Call Site 3 <<
	.long	.Ltmp195-.Ltmp194       #   Call between .Ltmp194 and .Ltmp195
	.long	.Ltmp196-.Lfunc_begin4  #     jumps to .Ltmp196
	.byte	1                       #   On action: 1
	.long	.Ltmp195-.Lfunc_begin4  # >> Call Site 4 <<
	.long	.Lfunc_end27-.Ltmp195   #   Call between .Ltmp195 and .Lfunc_end27
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt6vectorI12netlist_elemSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI12netlist_elemSaIS0_EED2Ev,comdat
	.weak	_ZNSt6vectorI12netlist_elemSaIS0_EED2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorI12netlist_elemSaIS0_EED2Ev,@function
_ZNSt6vectorI12netlist_elemSaIS0_EED2Ev: # @_ZNSt6vectorI12netlist_elemSaIS0_EED2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception5
# BB#0:
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
.Ltmp214:
	.cfi_offset %rbx, -40
.Ltmp215:
	.cfi_offset %r14, -32
.Ltmp216:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	%rbx, -32(%rbp)
	movq	(%rbx), %r14
	movq	8(%rbx), %r15
.Ltmp203:
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp204:
# BB#1:
.Ltmp205:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E
.Ltmp206:
# BB#2:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EED2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB28_3:
.Ltmp207:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
.Ltmp208:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EED2Ev
.Ltmp209:
# BB#4:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.LBB28_5:
.Ltmp210:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end28:
	.size	_ZNSt6vectorI12netlist_elemSaIS0_EED2Ev, .Lfunc_end28-_ZNSt6vectorI12netlist_elemSaIS0_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table28:
.Lexception5:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\274"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Ltmp203-.Lfunc_begin5  # >> Call Site 1 <<
	.long	.Ltmp206-.Ltmp203       #   Call between .Ltmp203 and .Ltmp206
	.long	.Ltmp207-.Lfunc_begin5  #     jumps to .Ltmp207
	.byte	0                       #   On action: cleanup
	.long	.Ltmp206-.Lfunc_begin5  # >> Call Site 2 <<
	.long	.Ltmp208-.Ltmp206       #   Call between .Ltmp206 and .Ltmp208
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp208-.Lfunc_begin5  # >> Call Site 3 <<
	.long	.Ltmp209-.Ltmp208       #   Call between .Ltmp208 and .Ltmp209
	.long	.Ltmp210-.Lfunc_begin5  #     jumps to .Ltmp210
	.byte	1                       #   On action: 1
	.long	.Ltmp209-.Lfunc_begin5  # >> Call Site 4 <<
	.long	.Lfunc_end28-.Ltmp209   #   Call between .Ltmp209 and .Lfunc_end28
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv, .Lfunc_end29-_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_endproc

	.section	.text._ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E
	.align	16, 0x90
	.type	_ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E,@function
_ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E: # @_ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIP12netlist_elemEvT_S2_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	_ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E, .Lfunc_end30-_ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI12netlist_elemSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI12netlist_elemSaIS0_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EED2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EED2Ev,@function
_ZNSt12_Vector_baseI12netlist_elemSaIS0_EED2Ev: # @_ZNSt12_Vector_baseI12netlist_elemSaIS0_EED2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception6
# BB#0:
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp229:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	movq	(%rbx), %rsi
	movq	16(%rbx), %rdx
	subq	%rsi, %rdx
	sarq	$6, %rdx
.Ltmp223:
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE13_M_deallocateEPS0_m
.Ltmp224:
# BB#1:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implD2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB31_2:
.Ltmp225:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implD2Ev
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end31:
	.size	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EED2Ev, .Lfunc_end31-_ZNSt12_Vector_baseI12netlist_elemSaIS0_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table31:
.Lexception6:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp223-.Lfunc_begin6  # >> Call Site 1 <<
	.long	.Ltmp224-.Ltmp223       #   Call between .Ltmp223 and .Ltmp224
	.long	.Ltmp225-.Lfunc_begin6  #     jumps to .Ltmp225
	.byte	0                       #   On action: cleanup
	.long	.Ltmp224-.Lfunc_begin6  # >> Call Site 2 <<
	.long	.Lfunc_end31-.Ltmp224   #   Call between .Ltmp224 and .Lfunc_end31
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZNSt12_Vector_baseI12netlist_elemSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE13_M_deallocateEPS0_m,comdat
	.weak	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE13_M_deallocateEPS0_m
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE13_M_deallocateEPS0_m,@function
_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE13_M_deallocateEPS0_m: # @_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE13_M_deallocateEPS0_m
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp232:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB32_2
# BB#1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorI12netlist_elemE10deallocateEPS1_m
.LBB32_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE13_M_deallocateEPS0_m, .Lfunc_end32-_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE13_M_deallocateEPS0_m
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implD2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implD2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
.Ltmp234:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp235:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSaI12netlist_elemED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implD2Ev, .Lfunc_end33-_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implD2Ev
	.cfi_endproc

	.section	.text._ZNSaI12netlist_elemED2Ev,"axG",@progbits,_ZNSaI12netlist_elemED2Ev,comdat
	.weak	_ZNSaI12netlist_elemED2Ev
	.align	16, 0x90
	.type	_ZNSaI12netlist_elemED2Ev,@function
_ZNSaI12netlist_elemED2Ev:              # @_ZNSaI12netlist_elemED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp236:
	.cfi_def_cfa_offset 16
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp238:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN9__gnu_cxx13new_allocatorI12netlist_elemED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	_ZNSaI12netlist_elemED2Ev, .Lfunc_end34-_ZNSaI12netlist_elemED2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI12netlist_elemED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI12netlist_elemED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI12netlist_elemED2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI12netlist_elemED2Ev,@function
_ZN9__gnu_cxx13new_allocatorI12netlist_elemED2Ev: # @_ZN9__gnu_cxx13new_allocatorI12netlist_elemED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp239:
	.cfi_def_cfa_offset 16
.Ltmp240:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp241:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end35:
	.size	_ZN9__gnu_cxx13new_allocatorI12netlist_elemED2Ev, .Lfunc_end35-_ZN9__gnu_cxx13new_allocatorI12netlist_elemED2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI12netlist_elemE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI12netlist_elemE10deallocateEPS1_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI12netlist_elemE10deallocateEPS1_m
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI12netlist_elemE10deallocateEPS1_m,@function
_ZN9__gnu_cxx13new_allocatorI12netlist_elemE10deallocateEPS1_m: # @_ZN9__gnu_cxx13new_allocatorI12netlist_elemE10deallocateEPS1_m
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp242:
	.cfi_def_cfa_offset 16
.Ltmp243:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp244:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZdlPv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	_ZN9__gnu_cxx13new_allocatorI12netlist_elemE10deallocateEPS1_m, .Lfunc_end36-_ZN9__gnu_cxx13new_allocatorI12netlist_elemE10deallocateEPS1_m
	.cfi_endproc

	.section	.text._ZSt8_DestroyIP12netlist_elemEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP12netlist_elemEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP12netlist_elemEvT_S2_
	.align	16, 0x90
	.type	_ZSt8_DestroyIP12netlist_elemEvT_S2_,@function
_ZSt8_DestroyIP12netlist_elemEvT_S2_:   # @_ZSt8_DestroyIP12netlist_elemEvT_S2_
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Destroy_auxILb0EE9__destroyIP12netlist_elemEEvT_S4_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	_ZSt8_DestroyIP12netlist_elemEvT_S2_, .Lfunc_end37-_ZSt8_DestroyIP12netlist_elemEvT_S2_
	.cfi_endproc

	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIP12netlist_elemEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIP12netlist_elemEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIP12netlist_elemEEvT_S4_
	.align	16, 0x90
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIP12netlist_elemEEvT_S4_,@function
_ZNSt12_Destroy_auxILb0EE9__destroyIP12netlist_elemEEvT_S4_: # @_ZNSt12_Destroy_auxILb0EE9__destroyIP12netlist_elemEEvT_S4_
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.LBB38_1
	.align	16, 0x90
.LBB38_2:                               #   in Loop: Header=BB38_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_ZSt11__addressofI12netlist_elemEPT_RS1_
	movq	%rax, %rdi
	callq	_ZSt8_DestroyI12netlist_elemEvPT_
	addq	$64, -8(%rbp)
.LBB38_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB38_2
# BB#3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIP12netlist_elemEEvT_S4_, .Lfunc_end38-_ZNSt12_Destroy_auxILb0EE9__destroyIP12netlist_elemEEvT_S4_
	.cfi_endproc

	.section	.text._ZSt11__addressofI12netlist_elemEPT_RS1_,"axG",@progbits,_ZSt11__addressofI12netlist_elemEPT_RS1_,comdat
	.weak	_ZSt11__addressofI12netlist_elemEPT_RS1_
	.align	16, 0x90
	.type	_ZSt11__addressofI12netlist_elemEPT_RS1_,@function
_ZSt11__addressofI12netlist_elemEPT_RS1_: # @_ZSt11__addressofI12netlist_elemEPT_RS1_
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
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end39:
	.size	_ZSt11__addressofI12netlist_elemEPT_RS1_, .Lfunc_end39-_ZSt11__addressofI12netlist_elemEPT_RS1_
	.cfi_endproc

	.section	.text._ZSt8_DestroyI12netlist_elemEvPT_,"axG",@progbits,_ZSt8_DestroyI12netlist_elemEvPT_,comdat
	.weak	_ZSt8_DestroyI12netlist_elemEvPT_
	.align	16, 0x90
	.type	_ZSt8_DestroyI12netlist_elemEvPT_,@function
_ZSt8_DestroyI12netlist_elemEvPT_:      # @_ZSt8_DestroyI12netlist_elemEvPT_
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN12netlist_elemD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	_ZSt8_DestroyI12netlist_elemEvPT_, .Lfunc_end40-_ZSt8_DestroyI12netlist_elemEvPT_
	.cfi_endproc

	.section	.text._ZN12netlist_elemD2Ev,"axG",@progbits,_ZN12netlist_elemD2Ev,comdat
	.weak	_ZN12netlist_elemD2Ev
	.align	16, 0x90
	.type	_ZN12netlist_elemD2Ev,@function
_ZN12netlist_elemD2Ev:                  # @_ZN12netlist_elemD2Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception7
# BB#0:
	pushq	%rbp
.Ltmp268:
	.cfi_def_cfa_offset 16
.Ltmp269:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp270:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp271:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	leaq	32(%rbx), %rdi
.Ltmp257:
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev
.Ltmp258:
# BB#1:
	movq	%rbx, %rdi
	addq	$8, %rdi
.Ltmp262:
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev
.Ltmp263:
# BB#2:
	movq	%rbx, %rdi
	callq	_ZNSsD1Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB41_3:
.Ltmp259:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rbx, %rdi
	addq	$8, %rdi
.Ltmp260:
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev
.Ltmp261:
	jmp	.LBB41_5
.LBB41_4:
.Ltmp264:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
.LBB41_5:
.Ltmp265:
	movq	%rbx, %rdi
	callq	_ZNSsD1Ev
.Ltmp266:
# BB#6:
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume
.LBB41_7:
.Ltmp267:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end41:
	.size	_ZN12netlist_elemD2Ev, .Lfunc_end41-_ZN12netlist_elemD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table41:
.Lexception7:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	73                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Ltmp257-.Lfunc_begin7  # >> Call Site 1 <<
	.long	.Ltmp258-.Ltmp257       #   Call between .Ltmp257 and .Ltmp258
	.long	.Ltmp259-.Lfunc_begin7  #     jumps to .Ltmp259
	.byte	0                       #   On action: cleanup
	.long	.Ltmp262-.Lfunc_begin7  # >> Call Site 2 <<
	.long	.Ltmp263-.Ltmp262       #   Call between .Ltmp262 and .Ltmp263
	.long	.Ltmp264-.Lfunc_begin7  #     jumps to .Ltmp264
	.byte	0                       #   On action: cleanup
	.long	.Ltmp263-.Lfunc_begin7  # >> Call Site 3 <<
	.long	.Ltmp260-.Ltmp263       #   Call between .Ltmp263 and .Ltmp260
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp260-.Lfunc_begin7  # >> Call Site 4 <<
	.long	.Ltmp266-.Ltmp260       #   Call between .Ltmp260 and .Ltmp266
	.long	.Ltmp267-.Lfunc_begin7  #     jumps to .Ltmp267
	.byte	1                       #   On action: 1
	.long	.Ltmp266-.Lfunc_begin7  # >> Call Site 5 <<
	.long	.Lfunc_end41-.Ltmp266   #   Call between .Ltmp266 and .Lfunc_end41
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev,comdat
	.weak	_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev,@function
_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev: # @_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception8
# BB#0:
	pushq	%rbp
.Ltmp280:
	.cfi_def_cfa_offset 16
.Ltmp281:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp282:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
.Ltmp283:
	.cfi_offset %rbx, -40
.Ltmp284:
	.cfi_offset %r14, -32
.Ltmp285:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	%rbx, -32(%rbp)
	movq	(%rbx), %r14
	movq	8(%rbx), %r15
.Ltmp272:
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp273:
# BB#1:
.Ltmp274:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPP12netlist_elemS1_EvT_S3_RSaIT0_E
.Ltmp275:
# BB#2:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EED2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB42_3:
.Ltmp276:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
.Ltmp277:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EED2Ev
.Ltmp278:
# BB#4:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.LBB42_5:
.Ltmp279:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end42:
	.size	_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev, .Lfunc_end42-_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table42:
.Lexception8:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\274"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Ltmp272-.Lfunc_begin8  # >> Call Site 1 <<
	.long	.Ltmp275-.Ltmp272       #   Call between .Ltmp272 and .Ltmp275
	.long	.Ltmp276-.Lfunc_begin8  #     jumps to .Ltmp276
	.byte	0                       #   On action: cleanup
	.long	.Ltmp275-.Lfunc_begin8  # >> Call Site 2 <<
	.long	.Ltmp277-.Ltmp275       #   Call between .Ltmp275 and .Ltmp277
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp277-.Lfunc_begin8  # >> Call Site 3 <<
	.long	.Ltmp278-.Ltmp277       #   Call between .Ltmp277 and .Ltmp278
	.long	.Ltmp279-.Lfunc_begin8  #     jumps to .Ltmp279
	.byte	1                       #   On action: 1
	.long	.Ltmp278-.Lfunc_begin8  # >> Call Site 4 <<
	.long	.Lfunc_end42-.Ltmp278   #   Call between .Ltmp278 and .Lfunc_end42
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp286:
	.cfi_def_cfa_offset 16
.Ltmp287:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp288:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end43:
	.size	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end43-_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_endproc

	.section	.text._ZSt8_DestroyIPP12netlist_elemS1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPP12netlist_elemS1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPP12netlist_elemS1_EvT_S3_RSaIT0_E
	.align	16, 0x90
	.type	_ZSt8_DestroyIPP12netlist_elemS1_EvT_S3_RSaIT0_E,@function
_ZSt8_DestroyIPP12netlist_elemS1_EvT_S3_RSaIT0_E: # @_ZSt8_DestroyIPP12netlist_elemS1_EvT_S3_RSaIT0_E
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIPP12netlist_elemEvT_S3_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	_ZSt8_DestroyIPP12netlist_elemS1_EvT_S3_RSaIT0_E, .Lfunc_end44-_ZSt8_DestroyIPP12netlist_elemS1_EvT_S3_RSaIT0_E
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP12netlist_elemSaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EED2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EED2Ev,@function
_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EED2Ev: # @_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EED2Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception9
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
	subq	$24, %rsp
.Ltmp298:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	movq	(%rbx), %rsi
	movq	16(%rbx), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
.Ltmp292:
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m
.Ltmp293:
# BB#1:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implD2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB45_2:
.Ltmp294:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implD2Ev
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end45:
	.size	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EED2Ev, .Lfunc_end45-_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table45:
.Lexception9:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp292-.Lfunc_begin9  # >> Call Site 1 <<
	.long	.Ltmp293-.Ltmp292       #   Call between .Ltmp292 and .Ltmp293
	.long	.Ltmp294-.Lfunc_begin9  #     jumps to .Ltmp294
	.byte	0                       #   On action: cleanup
	.long	.Ltmp293-.Lfunc_begin9  # >> Call Site 2 <<
	.long	.Lfunc_end45-.Ltmp293   #   Call between .Ltmp293 and .Lfunc_end45
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m,comdat
	.weak	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m,@function
_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m: # @_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB46_2
# BB#1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE10deallocateEPS2_m
.LBB46_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m, .Lfunc_end46-_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implD2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implD2Ev
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSaIP12netlist_elemED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implD2Ev, .Lfunc_end47-_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implD2Ev
	.cfi_endproc

	.section	.text._ZNSaIP12netlist_elemED2Ev,"axG",@progbits,_ZNSaIP12netlist_elemED2Ev,comdat
	.weak	_ZNSaIP12netlist_elemED2Ev
	.align	16, 0x90
	.type	_ZNSaIP12netlist_elemED2Ev,@function
_ZNSaIP12netlist_elemED2Ev:             # @_ZNSaIP12netlist_elemED2Ev
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	_ZNSaIP12netlist_elemED2Ev, .Lfunc_end48-_ZNSaIP12netlist_elemED2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP12netlist_elemED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12netlist_elemED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemED2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIP12netlist_elemED2Ev: # @_ZN9__gnu_cxx13new_allocatorIP12netlist_elemED2Ev
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end49:
	.size	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemED2Ev, .Lfunc_end49-_ZN9__gnu_cxx13new_allocatorIP12netlist_elemED2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP12netlist_elemE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE10deallocateEPS2_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE10deallocateEPS2_m
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE10deallocateEPS2_m,@function
_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE10deallocateEPS2_m: # @_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE10deallocateEPS2_m
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZdlPv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE10deallocateEPS2_m, .Lfunc_end50-_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE10deallocateEPS2_m
	.cfi_endproc

	.section	.text._ZSt8_DestroyIPP12netlist_elemEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPP12netlist_elemEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPP12netlist_elemEvT_S3_
	.align	16, 0x90
	.type	_ZSt8_DestroyIPP12netlist_elemEvT_S3_,@function
_ZSt8_DestroyIPP12netlist_elemEvT_S3_:  # @_ZSt8_DestroyIPP12netlist_elemEvT_S3_
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIPP12netlist_elemEEvT_S5_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	_ZSt8_DestroyIPP12netlist_elemEvT_S3_, .Lfunc_end51-_ZSt8_DestroyIPP12netlist_elemEvT_S3_
	.cfi_endproc

	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPP12netlist_elemEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPP12netlist_elemEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPP12netlist_elemEEvT_S5_
	.align	16, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPP12netlist_elemEEvT_S5_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIPP12netlist_elemEEvT_S5_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIPP12netlist_elemEEvT_S5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp317:
	.cfi_def_cfa_offset 16
.Ltmp318:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp319:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end52:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPP12netlist_elemEEvT_S5_, .Lfunc_end52-_ZNSt12_Destroy_auxILb1EE9__destroyIPP12netlist_elemEEvT_S5_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp320:
	.cfi_def_cfa_offset 16
.Ltmp321:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp322:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end53:
	.size	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv, .Lfunc_end53-_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	.cfi_endproc

	.section	.text._ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E
	.align	16, 0x90
	.type	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E,@function
_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E: # @_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp323:
	.cfi_def_cfa_offset 16
.Ltmp324:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp325:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EEEvT_S5_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E, .Lfunc_end54-_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EED2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EED2Ev,@function
_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EED2Ev: # @_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EED2Ev
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception10
# BB#0:
	pushq	%rbp
.Ltmp329:
	.cfi_def_cfa_offset 16
.Ltmp330:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp331:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp332:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	movq	(%rbx), %rsi
	movq	16(%rbx), %rax
	subq	%rsi, %rax
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %rdx # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %rdx
.Ltmp326:
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE13_M_deallocateEPS3_m
.Ltmp327:
# BB#1:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implD2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB55_2:
.Ltmp328:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implD2Ev
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end55:
	.size	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EED2Ev, .Lfunc_end55-_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table55:
.Lexception10:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp326-.Lfunc_begin10 # >> Call Site 1 <<
	.long	.Ltmp327-.Ltmp326       #   Call between .Ltmp326 and .Ltmp327
	.long	.Ltmp328-.Lfunc_begin10 #     jumps to .Ltmp328
	.byte	0                       #   On action: cleanup
	.long	.Ltmp327-.Lfunc_begin10 # >> Call Site 2 <<
	.long	.Lfunc_end55-.Ltmp327   #   Call between .Ltmp327 and .Lfunc_end55
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE13_M_deallocateEPS3_m,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE13_M_deallocateEPS3_m,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE13_M_deallocateEPS3_m
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE13_M_deallocateEPS3_m,@function
_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE13_M_deallocateEPS3_m: # @_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE13_M_deallocateEPS3_m
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB56_2
# BB#1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE10deallocateEPS4_m
.LBB56_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE13_M_deallocateEPS3_m, .Lfunc_end56-_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE13_M_deallocateEPS3_m
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implD2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implD2Ev
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSaISt6vectorI10location_tSaIS0_EEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implD2Ev, .Lfunc_end57-_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implD2Ev
	.cfi_endproc

	.section	.text._ZNSaISt6vectorI10location_tSaIS0_EEED2Ev,"axG",@progbits,_ZNSaISt6vectorI10location_tSaIS0_EEED2Ev,comdat
	.weak	_ZNSaISt6vectorI10location_tSaIS0_EEED2Ev
	.align	16, 0x90
	.type	_ZNSaISt6vectorI10location_tSaIS0_EEED2Ev,@function
_ZNSaISt6vectorI10location_tSaIS0_EEED2Ev: # @_ZNSaISt6vectorI10location_tSaIS0_EEED2Ev
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	_ZNSaISt6vectorI10location_tSaIS0_EEED2Ev, .Lfunc_end58-_ZNSaISt6vectorI10location_tSaIS0_EEED2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEED2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEED2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEED2Ev: # @_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEED2Ev
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
	popq	%rbp
	retq
.Lfunc_end59:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEED2Ev, .Lfunc_end59-_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEED2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE10deallocateEPS4_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE10deallocateEPS4_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE10deallocateEPS4_m
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE10deallocateEPS4_m,@function
_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE10deallocateEPS4_m: # @_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE10deallocateEPS4_m
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZdlPv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE10deallocateEPS4_m, .Lfunc_end60-_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE10deallocateEPS4_m
	.cfi_endproc

	.section	.text._ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EEEvT_S5_,"axG",@progbits,_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EEEvT_S5_,comdat
	.weak	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EEEvT_S5_
	.align	16, 0x90
	.type	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EEEvT_S5_,@function
_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EEEvT_S5_: # @_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EEEvT_S5_
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI10location_tSaIS3_EEEEvT_S7_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EEEvT_S5_, .Lfunc_end61-_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EEEvT_S5_
	.cfi_endproc

	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI10location_tSaIS3_EEEEvT_S7_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI10location_tSaIS3_EEEEvT_S7_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI10location_tSaIS3_EEEEvT_S7_
	.align	16, 0x90
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI10location_tSaIS3_EEEEvT_S7_,@function
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI10location_tSaIS3_EEEEvT_S7_: # @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI10location_tSaIS3_EEEEvT_S7_
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.LBB62_1
	.align	16, 0x90
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_ZSt11__addressofISt6vectorI10location_tSaIS1_EEEPT_RS4_
	movq	%rax, %rdi
	callq	_ZSt8_DestroyISt6vectorI10location_tSaIS1_EEEvPT_
	addq	$24, -8(%rbp)
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB62_2
# BB#3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI10location_tSaIS3_EEEEvT_S7_, .Lfunc_end62-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI10location_tSaIS3_EEEEvT_S7_
	.cfi_endproc

	.section	.text._ZSt11__addressofISt6vectorI10location_tSaIS1_EEEPT_RS4_,"axG",@progbits,_ZSt11__addressofISt6vectorI10location_tSaIS1_EEEPT_RS4_,comdat
	.weak	_ZSt11__addressofISt6vectorI10location_tSaIS1_EEEPT_RS4_
	.align	16, 0x90
	.type	_ZSt11__addressofISt6vectorI10location_tSaIS1_EEEPT_RS4_,@function
_ZSt11__addressofISt6vectorI10location_tSaIS1_EEEPT_RS4_: # @_ZSt11__addressofISt6vectorI10location_tSaIS1_EEEPT_RS4_
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
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end63:
	.size	_ZSt11__addressofISt6vectorI10location_tSaIS1_EEEPT_RS4_, .Lfunc_end63-_ZSt11__addressofISt6vectorI10location_tSaIS1_EEEPT_RS4_
	.cfi_endproc

	.section	.text._ZSt8_DestroyISt6vectorI10location_tSaIS1_EEEvPT_,"axG",@progbits,_ZSt8_DestroyISt6vectorI10location_tSaIS1_EEEvPT_,comdat
	.weak	_ZSt8_DestroyISt6vectorI10location_tSaIS1_EEEvPT_
	.align	16, 0x90
	.type	_ZSt8_DestroyISt6vectorI10location_tSaIS1_EEEvPT_,@function
_ZSt8_DestroyISt6vectorI10location_tSaIS1_EEEvPT_: # @_ZSt8_DestroyISt6vectorI10location_tSaIS1_EEEvPT_
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt6vectorI10location_tSaIS0_EED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	_ZSt8_DestroyISt6vectorI10location_tSaIS1_EEEvPT_, .Lfunc_end64-_ZSt8_DestroyISt6vectorI10location_tSaIS1_EEEvPT_
	.cfi_endproc

	.section	.text._ZNSt6vectorI10location_tSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI10location_tSaIS0_EED2Ev,comdat
	.weak	_ZNSt6vectorI10location_tSaIS0_EED2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorI10location_tSaIS0_EED2Ev,@function
_ZNSt6vectorI10location_tSaIS0_EED2Ev:  # @_ZNSt6vectorI10location_tSaIS0_EED2Ev
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception11
# BB#0:
	pushq	%rbp
.Ltmp368:
	.cfi_def_cfa_offset 16
.Ltmp369:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp370:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
.Ltmp371:
	.cfi_offset %rbx, -40
.Ltmp372:
	.cfi_offset %r14, -32
.Ltmp373:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	%rbx, -32(%rbp)
	movq	(%rbx), %r14
	movq	8(%rbx), %r15
.Ltmp360:
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp361:
# BB#1:
.Ltmp362:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIP10location_tS0_EvT_S2_RSaIT0_E
.Ltmp363:
# BB#2:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EED2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB65_3:
.Ltmp364:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
.Ltmp365:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EED2Ev
.Ltmp366:
# BB#4:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.LBB65_5:
.Ltmp367:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end65:
	.size	_ZNSt6vectorI10location_tSaIS0_EED2Ev, .Lfunc_end65-_ZNSt6vectorI10location_tSaIS0_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table65:
.Lexception11:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\274"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Ltmp360-.Lfunc_begin11 # >> Call Site 1 <<
	.long	.Ltmp363-.Ltmp360       #   Call between .Ltmp360 and .Ltmp363
	.long	.Ltmp364-.Lfunc_begin11 #     jumps to .Ltmp364
	.byte	0                       #   On action: cleanup
	.long	.Ltmp363-.Lfunc_begin11 # >> Call Site 2 <<
	.long	.Ltmp365-.Ltmp363       #   Call between .Ltmp363 and .Ltmp365
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp365-.Lfunc_begin11 # >> Call Site 3 <<
	.long	.Ltmp366-.Ltmp365       #   Call between .Ltmp365 and .Ltmp366
	.long	.Ltmp367-.Lfunc_begin11 #     jumps to .Ltmp367
	.byte	1                       #   On action: 1
	.long	.Ltmp366-.Lfunc_begin11 # >> Call Site 4 <<
	.long	.Lfunc_end65-.Ltmp366   #   Call between .Ltmp366 and .Lfunc_end65
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp374:
	.cfi_def_cfa_offset 16
.Ltmp375:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp376:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end66:
	.size	_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv, .Lfunc_end66-_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_endproc

	.section	.text._ZSt8_DestroyIP10location_tS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP10location_tS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP10location_tS0_EvT_S2_RSaIT0_E
	.align	16, 0x90
	.type	_ZSt8_DestroyIP10location_tS0_EvT_S2_RSaIT0_E,@function
_ZSt8_DestroyIP10location_tS0_EvT_S2_RSaIT0_E: # @_ZSt8_DestroyIP10location_tS0_EvT_S2_RSaIT0_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp377:
	.cfi_def_cfa_offset 16
.Ltmp378:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp379:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIP10location_tEvT_S2_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	_ZSt8_DestroyIP10location_tS0_EvT_S2_RSaIT0_E, .Lfunc_end67-_ZSt8_DestroyIP10location_tS0_EvT_S2_RSaIT0_E
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI10location_tSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI10location_tSaIS0_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseI10location_tSaIS0_EED2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI10location_tSaIS0_EED2Ev,@function
_ZNSt12_Vector_baseI10location_tSaIS0_EED2Ev: # @_ZNSt12_Vector_baseI10location_tSaIS0_EED2Ev
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception12
# BB#0:
	pushq	%rbp
.Ltmp383:
	.cfi_def_cfa_offset 16
.Ltmp384:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp385:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp386:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	movq	(%rbx), %rsi
	movq	16(%rbx), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
.Ltmp380:
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE13_M_deallocateEPS0_m
.Ltmp381:
# BB#1:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implD2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB68_2:
.Ltmp382:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implD2Ev
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end68:
	.size	_ZNSt12_Vector_baseI10location_tSaIS0_EED2Ev, .Lfunc_end68-_ZNSt12_Vector_baseI10location_tSaIS0_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table68:
.Lexception12:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp380-.Lfunc_begin12 # >> Call Site 1 <<
	.long	.Ltmp381-.Ltmp380       #   Call between .Ltmp380 and .Ltmp381
	.long	.Ltmp382-.Lfunc_begin12 #     jumps to .Ltmp382
	.byte	0                       #   On action: cleanup
	.long	.Ltmp381-.Lfunc_begin12 # >> Call Site 2 <<
	.long	.Lfunc_end68-.Ltmp381   #   Call between .Ltmp381 and .Lfunc_end68
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZNSt12_Vector_baseI10location_tSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI10location_tSaIS0_EE13_M_deallocateEPS0_m,comdat
	.weak	_ZNSt12_Vector_baseI10location_tSaIS0_EE13_M_deallocateEPS0_m
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI10location_tSaIS0_EE13_M_deallocateEPS0_m,@function
_ZNSt12_Vector_baseI10location_tSaIS0_EE13_M_deallocateEPS0_m: # @_ZNSt12_Vector_baseI10location_tSaIS0_EE13_M_deallocateEPS0_m
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp387:
	.cfi_def_cfa_offset 16
.Ltmp388:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp389:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB69_2
# BB#1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorI10location_tE10deallocateEPS1_m
.LBB69_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	_ZNSt12_Vector_baseI10location_tSaIS0_EE13_M_deallocateEPS0_m, .Lfunc_end69-_ZNSt12_Vector_baseI10location_tSaIS0_EE13_M_deallocateEPS0_m
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implD2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implD2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp390:
	.cfi_def_cfa_offset 16
.Ltmp391:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp392:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSaI10location_tED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implD2Ev, .Lfunc_end70-_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implD2Ev
	.cfi_endproc

	.section	.text._ZNSaI10location_tED2Ev,"axG",@progbits,_ZNSaI10location_tED2Ev,comdat
	.weak	_ZNSaI10location_tED2Ev
	.align	16, 0x90
	.type	_ZNSaI10location_tED2Ev,@function
_ZNSaI10location_tED2Ev:                # @_ZNSaI10location_tED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp393:
	.cfi_def_cfa_offset 16
.Ltmp394:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp395:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN9__gnu_cxx13new_allocatorI10location_tED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	_ZNSaI10location_tED2Ev, .Lfunc_end71-_ZNSaI10location_tED2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI10location_tED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI10location_tED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI10location_tED2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI10location_tED2Ev,@function
_ZN9__gnu_cxx13new_allocatorI10location_tED2Ev: # @_ZN9__gnu_cxx13new_allocatorI10location_tED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp396:
	.cfi_def_cfa_offset 16
.Ltmp397:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp398:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end72:
	.size	_ZN9__gnu_cxx13new_allocatorI10location_tED2Ev, .Lfunc_end72-_ZN9__gnu_cxx13new_allocatorI10location_tED2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI10location_tE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI10location_tE10deallocateEPS1_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI10location_tE10deallocateEPS1_m
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI10location_tE10deallocateEPS1_m,@function
_ZN9__gnu_cxx13new_allocatorI10location_tE10deallocateEPS1_m: # @_ZN9__gnu_cxx13new_allocatorI10location_tE10deallocateEPS1_m
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp399:
	.cfi_def_cfa_offset 16
.Ltmp400:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp401:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZdlPv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	_ZN9__gnu_cxx13new_allocatorI10location_tE10deallocateEPS1_m, .Lfunc_end73-_ZN9__gnu_cxx13new_allocatorI10location_tE10deallocateEPS1_m
	.cfi_endproc

	.section	.text._ZSt8_DestroyIP10location_tEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP10location_tEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP10location_tEvT_S2_
	.align	16, 0x90
	.type	_ZSt8_DestroyIP10location_tEvT_S2_,@function
_ZSt8_DestroyIP10location_tEvT_S2_:     # @_ZSt8_DestroyIP10location_tEvT_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp402:
	.cfi_def_cfa_offset 16
.Ltmp403:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp404:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIP10location_tEEvT_S4_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	_ZSt8_DestroyIP10location_tEvT_S2_, .Lfunc_end74-_ZSt8_DestroyIP10location_tEvT_S2_
	.cfi_endproc

	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP10location_tEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP10location_tEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP10location_tEEvT_S4_
	.align	16, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP10location_tEEvT_S4_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIP10location_tEEvT_S4_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIP10location_tEEvT_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp405:
	.cfi_def_cfa_offset 16
.Ltmp406:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp407:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end75:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP10location_tEEvT_S4_, .Lfunc_end75-_ZNSt12_Destroy_auxILb1EE9__destroyIP10location_tEEvT_S4_
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EED2Ev,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EED2Ev
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EED2Ev,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EED2Ev: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EED2Ev
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception13
# BB#0:
	pushq	%rbp
.Ltmp413:
	.cfi_def_cfa_offset 16
.Ltmp414:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp415:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp416:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
.Ltmp408:
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv
.Ltmp409:
# BB#1:
.Ltmp410:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
.Ltmp411:
# BB#2:
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB76_3:
.Ltmp412:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end76:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EED2Ev, .Lfunc_end76-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table76:
.Lexception13:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp408-.Lfunc_begin13 # >> Call Site 1 <<
	.long	.Ltmp411-.Ltmp408       #   Call between .Ltmp408 and .Ltmp411
	.long	.Ltmp412-.Lfunc_begin13 #     jumps to .Ltmp412
	.byte	0                       #   On action: cleanup
	.long	.Ltmp411-.Lfunc_begin13 # >> Call Site 2 <<
	.long	.Lfunc_end76-.Ltmp411   #   Call between .Ltmp411 and .Lfunc_end76
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp417:
	.cfi_def_cfa_offset 16
.Ltmp418:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp419:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end77:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv, .Lfunc_end77-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp420:
	.cfi_def_cfa_offset 16
.Ltmp421:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp422:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp423:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	jmp	.LBB78_1
	.align	16, 0x90
.LBB78_2:                               #   in Loop: Header=BB78_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
	movq	-24(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB78_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB78_2
# BB#3:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end78:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E, .Lfunc_end78-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp424:
	.cfi_def_cfa_offset 16
.Ltmp425:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp426:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev, .Lfunc_end79-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EED2Ev
	.cfi_endproc

	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev,comdat
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev
	.align	16, 0x90
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev,@function
_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev: # @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp427:
	.cfi_def_cfa_offset 16
.Ltmp428:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp429:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev, .Lfunc_end80-_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp430:
	.cfi_def_cfa_offset 16
.Ltmp431:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp432:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end81:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev, .Lfunc_end81-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp433:
	.cfi_def_cfa_offset 16
.Ltmp434:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp435:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	24(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end82:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base, .Lfunc_end82-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp436:
	.cfi_def_cfa_offset 16
.Ltmp437:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp438:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end83:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base, .Lfunc_end83-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception14
# BB#0:
	pushq	%rbp
.Ltmp444:
	.cfi_def_cfa_offset 16
.Ltmp445:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp446:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp447:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	leaq	-32(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13get_allocatorEv
	movq	-24(%rbp), %rdi
	addq	$32, %rdi
.Ltmp439:
	callq	_ZSt11__addressofISt4pairIKSsP12netlist_elemEEPT_RS5_
.Ltmp440:
# BB#1:
.Ltmp441:
	leaq	-32(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE7destroyEPS5_
.Ltmp442:
# BB#2:
	leaq	-32(%rbp), %rdi
	callq	_ZNSaISt4pairIKSsP12netlist_elemEED2Ev
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB84_3:
.Ltmp443:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_ZNSaISt4pairIKSsP12netlist_elemEED2Ev
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end84:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E, .Lfunc_end84-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table84:
.Lexception14:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	41                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
	.long	.Lfunc_begin14-.Lfunc_begin14 # >> Call Site 1 <<
	.long	.Ltmp439-.Lfunc_begin14 #   Call between .Lfunc_begin14 and .Ltmp439
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp439-.Lfunc_begin14 # >> Call Site 2 <<
	.long	.Ltmp442-.Ltmp439       #   Call between .Ltmp439 and .Ltmp442
	.long	.Ltmp443-.Lfunc_begin14 #     jumps to .Ltmp443
	.byte	0                       #   On action: cleanup
	.long	.Ltmp442-.Lfunc_begin14 # >> Call Site 3 <<
	.long	.Lfunc_end84-.Ltmp442   #   Call between .Ltmp442 and .Lfunc_end84
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13get_allocatorEv,"axG",@progbits,_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13get_allocatorEv,comdat
	.weak	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13get_allocatorEv
	.align	16, 0x90
	.type	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13get_allocatorEv,@function
_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13get_allocatorEv: # @_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13get_allocatorEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp448:
	.cfi_def_cfa_offset 16
.Ltmp449:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp450:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp451:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rsi, -16(%rbp)
	movq	%rsi, %rdi
	callq	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE21_M_get_Node_allocatorEv
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSaISt4pairIKSsP12netlist_elemEEC2ISt13_Rb_tree_nodeIS3_EEERKSaIT_E
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end85:
	.size	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13get_allocatorEv, .Lfunc_end85-_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13get_allocatorEv
	.cfi_endproc

	.section	.text._ZSt11__addressofISt4pairIKSsP12netlist_elemEEPT_RS5_,"axG",@progbits,_ZSt11__addressofISt4pairIKSsP12netlist_elemEEPT_RS5_,comdat
	.weak	_ZSt11__addressofISt4pairIKSsP12netlist_elemEEPT_RS5_
	.align	16, 0x90
	.type	_ZSt11__addressofISt4pairIKSsP12netlist_elemEEPT_RS5_,@function
_ZSt11__addressofISt4pairIKSsP12netlist_elemEEPT_RS5_: # @_ZSt11__addressofISt4pairIKSsP12netlist_elemEEPT_RS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp452:
	.cfi_def_cfa_offset 16
.Ltmp453:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp454:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end86:
	.size	_ZSt11__addressofISt4pairIKSsP12netlist_elemEEPT_RS5_, .Lfunc_end86-_ZSt11__addressofISt4pairIKSsP12netlist_elemEEPT_RS5_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE7destroyEPS5_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE7destroyEPS5_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE7destroyEPS5_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE7destroyEPS5_,@function
_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE7destroyEPS5_: # @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE7destroyEPS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp455:
	.cfi_def_cfa_offset 16
.Ltmp456:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp457:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rsi, %rdi
	callq	_ZNSt4pairIKSsP12netlist_elemED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE7destroyEPS5_, .Lfunc_end87-_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE7destroyEPS5_
	.cfi_endproc

	.section	.text._ZNSaISt4pairIKSsP12netlist_elemEED2Ev,"axG",@progbits,_ZNSaISt4pairIKSsP12netlist_elemEED2Ev,comdat
	.weak	_ZNSaISt4pairIKSsP12netlist_elemEED2Ev
	.align	16, 0x90
	.type	_ZNSaISt4pairIKSsP12netlist_elemEED2Ev,@function
_ZNSaISt4pairIKSsP12netlist_elemEED2Ev: # @_ZNSaISt4pairIKSsP12netlist_elemEED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp458:
	.cfi_def_cfa_offset 16
.Ltmp459:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp460:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	_ZNSaISt4pairIKSsP12netlist_elemEED2Ev, .Lfunc_end88-_ZNSaISt4pairIKSsP12netlist_elemEED2Ev
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp461:
	.cfi_def_cfa_offset 16
.Ltmp462:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp463:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %edx
	callq	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE10deallocateEPS7_m
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E, .Lfunc_end89-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE10deallocateEPS7_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE10deallocateEPS7_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE10deallocateEPS7_m
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE10deallocateEPS7_m,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE10deallocateEPS7_m: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE10deallocateEPS7_m
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp464:
	.cfi_def_cfa_offset 16
.Ltmp465:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp466:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZdlPv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE10deallocateEPS7_m, .Lfunc_end90-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE10deallocateEPS7_m
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEED2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEED2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEED2Ev: # @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp467:
	.cfi_def_cfa_offset 16
.Ltmp468:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp469:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end91:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEED2Ev, .Lfunc_end91-_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEED2Ev
	.cfi_endproc

	.section	.text._ZNSt4pairIKSsP12netlist_elemED2Ev,"axG",@progbits,_ZNSt4pairIKSsP12netlist_elemED2Ev,comdat
	.weak	_ZNSt4pairIKSsP12netlist_elemED2Ev
	.align	16, 0x90
	.type	_ZNSt4pairIKSsP12netlist_elemED2Ev,@function
_ZNSt4pairIKSsP12netlist_elemED2Ev:     # @_ZNSt4pairIKSsP12netlist_elemED2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp470:
	.cfi_def_cfa_offset 16
.Ltmp471:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp472:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSsD1Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	_ZNSt4pairIKSsP12netlist_elemED2Ev, .Lfunc_end92-_ZNSt4pairIKSsP12netlist_elemED2Ev
	.cfi_endproc

	.section	.text._ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE21_M_get_Node_allocatorEv,comdat
	.weak	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE21_M_get_Node_allocatorEv
	.align	16, 0x90
	.type	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE21_M_get_Node_allocatorEv,@function
_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE21_M_get_Node_allocatorEv: # @_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE21_M_get_Node_allocatorEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp473:
	.cfi_def_cfa_offset 16
.Ltmp474:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp475:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end93:
	.size	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE21_M_get_Node_allocatorEv, .Lfunc_end93-_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE21_M_get_Node_allocatorEv
	.cfi_endproc

	.section	.text._ZNSaISt4pairIKSsP12netlist_elemEEC2ISt13_Rb_tree_nodeIS3_EEERKSaIT_E,"axG",@progbits,_ZNSaISt4pairIKSsP12netlist_elemEEC2ISt13_Rb_tree_nodeIS3_EEERKSaIT_E,comdat
	.weak	_ZNSaISt4pairIKSsP12netlist_elemEEC2ISt13_Rb_tree_nodeIS3_EEERKSaIT_E
	.align	16, 0x90
	.type	_ZNSaISt4pairIKSsP12netlist_elemEEC2ISt13_Rb_tree_nodeIS3_EEERKSaIT_E,@function
_ZNSaISt4pairIKSsP12netlist_elemEEC2ISt13_Rb_tree_nodeIS3_EEERKSaIT_E: # @_ZNSaISt4pairIKSsP12netlist_elemEEC2ISt13_Rb_tree_nodeIS3_EEERKSaIT_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp476:
	.cfi_def_cfa_offset 16
.Ltmp477:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp478:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	_ZNSaISt4pairIKSsP12netlist_elemEEC2ISt13_Rb_tree_nodeIS3_EEERKSaIT_E, .Lfunc_end94-_ZNSaISt4pairIKSsP12netlist_elemEEC2ISt13_Rb_tree_nodeIS3_EEERKSaIT_E
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEEC2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEEC2Ev: # @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp479:
	.cfi_def_cfa_offset 16
.Ltmp480:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp481:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end95:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEEC2Ev, .Lfunc_end95-_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEEC2Ev
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init.2,@function
__cxx_global_var_init.2:                # @__cxx_global_var_init.2
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp482:
	.cfi_def_cfa_offset 16
.Ltmp483:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp484:
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit.3, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit.3, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	retq
.Lfunc_end96:
	.size	__cxx_global_var_init.2, .Lfunc_end96-__cxx_global_var_init.2
	.cfi_endproc

	.text
	.globl	_ZN7netlist7releaseEP12netlist_elem
	.align	16, 0x90
	.type	_ZN7netlist7releaseEP12netlist_elem,@function
_ZN7netlist7releaseEP12netlist_elem:    # @_ZN7netlist7releaseEP12netlist_elem
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp485:
	.cfi_def_cfa_offset 16
.Ltmp486:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp487:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end97:
	.size	_ZN7netlist7releaseEP12netlist_elem, .Lfunc_end97-_ZN7netlist7releaseEP12netlist_elem
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI98_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	_ZN7netlist18total_routing_costEv
	.align	16, 0x90
	.type	_ZN7netlist18total_routing_costEv,@function
_ZN7netlist18total_routing_costEv:      # @_ZN7netlist18total_routing_costEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp488:
	.cfi_def_cfa_offset 16
.Ltmp489:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp490:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
.Ltmp491:
	.cfi_offset %rbx, -48
.Ltmp492:
	.cfi_offset %r12, -40
.Ltmp493:
	.cfi_offset %r14, -32
.Ltmp494:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	%r14, -40(%rbp)
	movq	$0, -48(%rbp)
	addq	$64, %r14
	movq	%r14, %rdi
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE5beginEv
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %r12
	leaq	-64(%rbp), %r15
	jmp	.LBB98_1
	.align	16, 0x90
.LBB98_2:                               #   in Loop: Header=BB98_1 Depth=1
	movq	%r12, %rdi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEptEv
	movq	8(%rax), %rbx
	movq	%rbx, -72(%rbp)
	leaq	56(%rbx), %rdi
	callq	_ZNK7threads9AtomicPtrI10location_tE3GetEv
	movq	(%rax), %rsi
	movq	%rsi, -80(%rbp)
	movq	%rbx, %rdi
	callq	_ZN12netlist_elem22routing_cost_given_locE10location_t
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	%r12, %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEppEv
.LBB98_1:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE3endEv
	movq	%rax, -64(%rbp)
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEneERKS5_
	testb	%al, %al
	jne	.LBB98_2
# BB#3:
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	.LCPI98_0(%rip), %xmm0
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end98:
	.size	_ZN7netlist18total_routing_costEv, .Lfunc_end98-_ZN7netlist18total_routing_costEv
	.cfi_endproc

	.globl	_ZN7netlist7shuffleEP3Rng
	.align	16, 0x90
	.type	_ZN7netlist7shuffleEP3Rng,@function
_ZN7netlist7shuffleEP3Rng:              # @_ZN7netlist7shuffleEP3Rng
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp495:
	.cfi_def_cfa_offset 16
.Ltmp496:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp497:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
.Ltmp498:
	.cfi_offset %rbx, -40
.Ltmp499:
	.cfi_offset %r14, -32
.Ltmp500:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rbx
	movl	$0, -44(%rbp)
	leaq	-56(%rbp), %r14
	leaq	-64(%rbp), %r15
	jmp	.LBB99_1
	.align	16, 0x90
.LBB99_2:                               #   in Loop: Header=BB99_1 Depth=1
	movq	-40(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_ZN7netlist15get_random_pairEPP12netlist_elemS2_P3Rng
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rbx, %rdi
	callq	_ZN7netlist14swap_locationsEP12netlist_elemS1_
	incl	-44(%rbp)
.LBB99_1:                               # =>This Inner Loop Header: Depth=1
	movl	4(%rbx), %eax
	imull	8(%rbx), %eax
	imull	$1000, %eax, %eax       # imm = 0x3E8
	cmpl	%eax, -44(%rbp)
	jb	.LBB99_2
# BB#3:
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end99:
	.size	_ZN7netlist7shuffleEP3Rng, .Lfunc_end99-_ZN7netlist7shuffleEP3Rng
	.cfi_endproc

	.globl	_ZN7netlist15get_random_pairEPP12netlist_elemS2_P3Rng
	.align	16, 0x90
	.type	_ZN7netlist15get_random_pairEPP12netlist_elemS2_P3Rng,@function
_ZN7netlist15get_random_pairEPP12netlist_elemS2_P3Rng: # @_ZN7netlist15get_random_pairEPP12netlist_elemS2_P3Rng
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp501:
	.cfi_def_cfa_offset 16
.Ltmp502:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp503:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp504:
	.cfi_offset %rbx, -32
.Ltmp505:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %r14
	movl	12(%r14), %esi
	movq	%rcx, %rdi
	callq	_ZN3Rng4randEi
	movq	%rax, -56(%rbp)
	leaq	16(%r14), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EEixEm
	movq	%rax, -64(%rbp)
	.align	16, 0x90
.LBB100_1:                              # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi
	movl	12(%r14), %esi
	callq	_ZN3Rng4randEi
	movq	%rax, -72(%rbp)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EEixEm
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB100_1
# BB#2:
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end100:
	.size	_ZN7netlist15get_random_pairEPP12netlist_elemS2_P3Rng, .Lfunc_end100-_ZN7netlist15get_random_pairEPP12netlist_elemS2_P3Rng
	.cfi_endproc

	.globl	_ZN7netlist14swap_locationsEP12netlist_elemS1_
	.align	16, 0x90
	.type	_ZN7netlist14swap_locationsEP12netlist_elemS1_,@function
_ZN7netlist14swap_locationsEP12netlist_elemS1_: # @_ZN7netlist14swap_locationsEP12netlist_elemS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp506:
	.cfi_def_cfa_offset 16
.Ltmp507:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp508:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	addq	$56, %rdi
	leaq	56(%rdx), %rsi
	callq	_ZN7threads9AtomicPtrI10location_tE4SwapERS2_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	_ZN7netlist14swap_locationsEP12netlist_elemS1_, .Lfunc_end101-_ZN7netlist14swap_locationsEP12netlist_elemS1_
	.cfi_endproc

	.globl	_ZN7netlist18get_random_elementEPllP3Rng
	.align	16, 0x90
	.type	_ZN7netlist18get_random_elementEPllP3Rng,@function
_ZN7netlist18get_random_elementEPllP3Rng: # @_ZN7netlist18get_random_elementEPllP3Rng
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp509:
	.cfi_def_cfa_offset 16
.Ltmp510:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp511:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp512:
	.cfi_offset %rbx, -32
.Ltmp513:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %r14
	movl	12(%r14), %esi
	movq	%rcx, %rdi
	callq	_ZN3Rng4randEi
	movq	%rax, -56(%rbp)
	leaq	16(%r14), %rbx
	jmp	.LBB102_1
	.align	16, 0x90
.LBB102_2:                              #   in Loop: Header=BB102_1 Depth=1
	movq	-48(%rbp), %rdi
	movl	12(%r14), %esi
	callq	_ZN3Rng4randEi
	movq	%rax, -56(%rbp)
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EEixEm
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB102_2
# BB#3:
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end102:
	.size	_ZN7netlist18get_random_elementEPllP3Rng, .Lfunc_end102-_ZN7netlist18get_random_elementEPllP3Rng
	.cfi_endproc

	.globl	_ZN7netlist21netlist_elem_from_locER10location_t
	.align	16, 0x90
	.type	_ZN7netlist21netlist_elem_from_locER10location_t,@function
_ZN7netlist21netlist_elem_from_locER10location_t: # @_ZN7netlist21netlist_elem_from_locER10location_t
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp514:
	.cfi_def_cfa_offset 16
.Ltmp515:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp516:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end103:
	.size	_ZN7netlist21netlist_elem_from_locER10location_t, .Lfunc_end103-_ZN7netlist21netlist_elem_from_locER10location_t
	.cfi_endproc

	.globl	_ZN7netlist22netlist_elem_from_nameERSs
	.align	16, 0x90
	.type	_ZN7netlist22netlist_elem_from_nameERSs,@function
_ZN7netlist22netlist_elem_from_nameERSs: # @_ZN7netlist22netlist_elem_from_nameERSs
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp517:
	.cfi_def_cfa_offset 16
.Ltmp518:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp519:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	addq	$64, %rdi
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEixERS5_
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	_ZN7netlist22netlist_elem_from_nameERSs, .Lfunc_end104-_ZN7netlist22netlist_elem_from_nameERSs
	.cfi_endproc

	.globl	_ZN7netlistC2ERKSs
	.align	16, 0x90
	.type	_ZN7netlistC2ERKSs,@function
_ZN7netlistC2ERKSs:                     # @_ZN7netlistC2ERKSs
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception15
# BB#0:
	pushq	%rbp
.Ltmp643:
	.cfi_def_cfa_offset 16
.Ltmp644:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp645:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$776, %rsp              # imm = 0x308
.Ltmp646:
	.cfi_offset %rbx, -56
.Ltmp647:
	.cfi_offset %r12, -48
.Ltmp648:
	.cfi_offset %r13, -40
.Ltmp649:
	.cfi_offset %r14, -32
.Ltmp650:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rbx
	leaq	16(%rbx), %r14
	movq	%r14, %rdi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EEC2Ev
	leaq	40(%rbx), %r12
.Ltmp520:
	movq	%r12, %rdi
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEC2Ev
.Ltmp521:
# BB#1:
	leaq	64(%rbx), %rdi
	movq	%rdi, -808(%rbp)        # 8-byte Spill
.Ltmp523:
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEC2Ev
.Ltmp524:
# BB#2:
	movq	-56(%rbp), %rdi
.Ltmp526:
	callq	_ZNKSs5c_strEv
.Ltmp527:
# BB#3:
.Ltmp528:
	leaq	-592(%rbp), %rdi
	movl	$8, %edx
	movq	%rax, %rsi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.Ltmp529:
# BB#4:
.Ltmp530:
	leaq	-592(%rbp), %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_ZNSirsERj
.Ltmp531:
# BB#5:
	leaq	4(%rbx), %rsi
.Ltmp532:
	movq	%rax, %rdi
	callq	_ZNSirsERj
.Ltmp533:
# BB#6:
	leaq	8(%rbx), %rsi
.Ltmp534:
	movq	%rax, %rdi
	callq	_ZNSirsERj
.Ltmp535:
# BB#7:
	movl	4(%rbx), %eax
	imull	8(%rbx), %eax
	movl	%eax, 12(%rbx)
	movl	12(%rbx), %r15d
.Ltmp536:
	leaq	-656(%rbp), %rdi
	callq	_ZN12netlist_elemC1Ev
.Ltmp537:
# BB#8:
.Ltmp538:
	leaq	-656(%rbp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EE6resizeEmS0_
.Ltmp539:
# BB#9:
.Ltmp543:
	leaq	-656(%rbp), %rdi
	callq	_ZN12netlist_elemD2Ev
.Ltmp544:
# BB#10:
.Ltmp545:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.13, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp546:
# BB#11:
.Ltmp547:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp548:
# BB#12:
	movl	8(%rbx), %eax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	movq	$0, -688(%rbp)
	leaq	-696(%rbp), %r15
	movq	%r15, %rdi
	callq	_ZNSaI10location_tEC2Ev
.Ltmp549:
	leaq	-680(%rbp), %rdi
	leaq	-688(%rbp), %rdx
	movq	-800(%rbp), %rsi        # 8-byte Reload
	movq	%r15, %rcx
	callq	_ZNSt6vectorI10location_tSaIS0_EEC2EmRKS0_RKS1_
.Ltmp550:
# BB#13:
	leaq	-696(%rbp), %rdi
	callq	_ZNSaI10location_tED2Ev
	movl	4(%rbx), %r15d
.Ltmp552:
	leaq	-720(%rbp), %rdi
	leaq	-680(%rbp), %rsi
	callq	_ZNSt6vectorI10location_tSaIS0_EEC2ERKS2_
.Ltmp553:
# BB#14:
.Ltmp554:
	leaq	-720(%rbp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6resizeEmS2_
.Ltmp555:
# BB#15:
.Ltmp559:
	leaq	-720(%rbp), %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EED2Ev
.Ltmp560:
# BB#16:
	movl	$0, -724(%rbp)
	movl	$0, -728(%rbp)
	jmp	.LBB105_17
	.align	16, 0x90
.LBB105_35:                             #   in Loop: Header=BB105_17 Depth=1
	incl	-728(%rbp)
.LBB105_17:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB105_19 Depth 2
	movl	-728(%rbp), %eax
	cmpl	4(%rbx), %eax
	jae	.LBB105_36
# BB#18:                                #   in Loop: Header=BB105_17 Depth=1
	movl	$0, -732(%rbp)
	jmp	.LBB105_19
	.align	16, 0x90
.LBB105_24:                             #   in Loop: Header=BB105_19 Depth=2
	incl	-724(%rbp)
	incl	-732(%rbp)
.LBB105_19:                             #   Parent Loop BB105_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-732(%rbp), %eax
	cmpl	8(%rbx), %eax
	jae	.LBB105_35
# BB#20:                                #   in Loop: Header=BB105_19 Depth=2
	movslq	-728(%rbp), %rsi
.Ltmp623:
	movq	%r12, %rdi
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE2atEm
.Ltmp624:
# BB#21:                                #   in Loop: Header=BB105_19 Depth=2
	movslq	-732(%rbp), %rsi
.Ltmp625:
	movq	%rax, %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EE2atEm
.Ltmp626:
# BB#22:                                #   in Loop: Header=BB105_19 Depth=2
	movq	%rax, -744(%rbp)
	movl	-728(%rbp), %ecx
	movl	%ecx, (%rax)
	movl	-732(%rbp), %eax
	movq	-744(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-724(%rbp), %esi
.Ltmp627:
	movq	%r14, %rdi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EE2atEm
.Ltmp628:
# BB#23:                                #   in Loop: Header=BB105_19 Depth=2
	addq	$56, %rax
	movq	-744(%rbp), %rsi
.Ltmp629:
	movq	%rax, %rdi
	callq	_ZN7threads9AtomicPtrI10location_tE3SetEPS1_
.Ltmp630:
	jmp	.LBB105_24
.LBB105_32:                             # %.loopexit.split-lp.loopexit
.Ltmp631:
.LBB105_34:
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
	jmp	.LBB105_71
.LBB105_36:
.Ltmp561:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1.14, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp562:
# BB#37:
.Ltmp563:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp564:
# BB#38:
	movl	$0, -748(%rbp)
	leaq	-784(%rbp), %r15
	.align	16, 0x90
.LBB105_39:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB105_51 Depth 2
	movq	-592(%rbp), %rax
	movq	-24(%rax), %rdi
	addq	%r13, %rdi
.Ltmp565:
	callq	_ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv
.Ltmp566:
# BB#40:                                #   in Loop: Header=BB105_39 Depth=1
	testb	%al, %al
	jne	.LBB105_63
# BB#41:                                #   in Loop: Header=BB105_39 Depth=1
	incl	-748(%rbp)
	movslq	-748(%rbp), %rax
	imulq	$351843721, %rax, %rcx  # imm = 0x14F8B589
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$45, %rcx
	addl	%edx, %ecx
	imull	$100000, %ecx, %ecx     # imm = 0x186A0
	cmpl	%ecx, %eax
	jne	.LBB105_45
# BB#42:                                #   in Loop: Header=BB105_39 Depth=1
.Ltmp582:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2.15, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp583:
# BB#43:                                #   in Loop: Header=BB105_39 Depth=1
	movl	-748(%rbp), %esi
.Ltmp584:
	movq	%rax, %rdi
	callq	_ZNSolsEi
.Ltmp585:
# BB#44:                                #   in Loop: Header=BB105_39 Depth=1
.Ltmp586:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp587:
.LBB105_45:                             #   in Loop: Header=BB105_39 Depth=1
.Ltmp588:
	leaq	-760(%rbp), %rdi
	callq	_ZNSsC1Ev
.Ltmp589:
# BB#46:                                #   in Loop: Header=BB105_39 Depth=1
.Ltmp590:
	movq	%r13, %rdi
	leaq	-760(%rbp), %rsi
	callq	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
.Ltmp591:
# BB#47:                                #   in Loop: Header=BB105_39 Depth=1
.Ltmp592:
	movq	%rbx, %rdi
	leaq	-760(%rbp), %rsi
	callq	_ZN7netlist24create_elem_if_necessaryERSs
.Ltmp593:
# BB#48:                                #   in Loop: Header=BB105_39 Depth=1
	movq	%rax, -768(%rbp)
.Ltmp594:
	movq	%rax, %rdi
	leaq	-760(%rbp), %rsi
	callq	_ZNSsaSERKSs
.Ltmp595:
# BB#49:                                #   in Loop: Header=BB105_39 Depth=1
.Ltmp596:
	movq	%r13, %rdi
	leaq	-772(%rbp), %rsi
	callq	_ZNSirsERi
.Ltmp597:
# BB#50:                                #   in Loop: Header=BB105_39 Depth=1
.Ltmp598:
	movq	%r15, %rdi
	callq	_ZNSsC1Ev
.Ltmp599:
	.align	16, 0x90
.LBB105_51:                             #   Parent Loop BB105_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp600:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
.Ltmp601:
# BB#52:                                #   in Loop: Header=BB105_51 Depth=2
	movq	(%rax), %rcx
	addq	-24(%rcx), %rax
.Ltmp602:
	movq	%rax, %rdi
	callq	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv
.Ltmp603:
# BB#53:                                #   in Loop: Header=BB105_51 Depth=2
	testq	%rax, %rax
	je	.LBB105_59
# BB#54:                                #   in Loop: Header=BB105_51 Depth=2
.Ltmp604:
	movl	$.L.str.3.16, %esi
	movq	%r15, %rdi
	callq	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
.Ltmp605:
# BB#55:                                #   in Loop: Header=BB105_51 Depth=2
	testb	%al, %al
	jne	.LBB105_59
# BB#56:                                #   in Loop: Header=BB105_51 Depth=2
.Ltmp606:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZN7netlist24create_elem_if_necessaryERSs
.Ltmp607:
# BB#57:                                #   in Loop: Header=BB105_51 Depth=2
	movq	%rax, -792(%rbp)
	movq	-768(%rbp), %rdi
	addq	$8, %rdi
.Ltmp608:
	leaq	-792(%rbp), %rsi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EE9push_backERKS1_
.Ltmp609:
# BB#58:                                #   in Loop: Header=BB105_51 Depth=2
	movq	-792(%rbp), %rdi
	addq	$32, %rdi
.Ltmp610:
	leaq	-768(%rbp), %rsi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EE9push_backERKS1_
.Ltmp611:
	jmp	.LBB105_51
	.align	16, 0x90
.LBB105_59:                             #   in Loop: Header=BB105_39 Depth=1
.Ltmp615:
	movq	%r15, %rdi
	callq	_ZNSsD1Ev
.Ltmp616:
# BB#60:                                #   in Loop: Header=BB105_39 Depth=1
.Ltmp620:
	leaq	-760(%rbp), %rdi
	callq	_ZNSsD1Ev
.Ltmp621:
	jmp	.LBB105_39
.LBB105_31:                             # %.loopexit1
.Ltmp622:
	jmp	.LBB105_34
.LBB105_63:
.Ltmp567:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.4.17, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp568:
# BB#64:
	movl	-748(%rbp), %esi
	decl	%esi
.Ltmp569:
	movq	%rax, %rdi
	callq	_ZNSolsEi
.Ltmp570:
# BB#65:
.Ltmp571:
	movl	$.L.str.5.18, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp572:
# BB#66:
.Ltmp573:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp574:
# BB#67:
.Ltmp576:
	leaq	-680(%rbp), %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EED2Ev
.Ltmp577:
# BB#68:
.Ltmp579:
	leaq	-592(%rbp), %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.Ltmp580:
# BB#69:
	addq	$776, %rsp              # imm = 0x308
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB105_78:
.Ltmp612:
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
.Ltmp613:
	leaq	-784(%rbp), %rdi
	callq	_ZNSsD1Ev
.Ltmp614:
	jmp	.LBB105_62
.LBB105_61:
.Ltmp617:
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
.LBB105_62:
.Ltmp618:
	leaq	-760(%rbp), %rdi
	callq	_ZNSsD1Ev
.Ltmp619:
	jmp	.LBB105_71
.LBB105_33:                             # %.loopexit.split-lp.loopexit.split-lp
.Ltmp575:
	jmp	.LBB105_34
.LBB105_28:
.Ltmp578:
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
	jmp	.LBB105_72
.LBB105_27:
.Ltmp581:
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
	jmp	.LBB105_73
.LBB105_25:
.Ltmp522:
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
	jmp	.LBB105_75
.LBB105_26:
.Ltmp525:
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
	jmp	.LBB105_74
.LBB105_29:
.Ltmp540:
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
.Ltmp541:
	leaq	-656(%rbp), %rdi
	callq	_ZN12netlist_elemD2Ev
.Ltmp542:
	jmp	.LBB105_72
.LBB105_30:
.Ltmp551:
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
	leaq	-696(%rbp), %rdi
	callq	_ZNSaI10location_tED2Ev
	jmp	.LBB105_72
.LBB105_70:
.Ltmp556:
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
.Ltmp557:
	leaq	-720(%rbp), %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EED2Ev
.Ltmp558:
.LBB105_71:
.Ltmp632:
	leaq	-680(%rbp), %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EED2Ev
.Ltmp633:
.LBB105_72:
.Ltmp634:
	leaq	-592(%rbp), %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.Ltmp635:
.LBB105_73:
.Ltmp636:
	movq	-808(%rbp), %rdi        # 8-byte Reload
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEED2Ev
.Ltmp637:
.LBB105_74:
.Ltmp638:
	movq	%r12, %rdi
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EED2Ev
.Ltmp639:
.LBB105_75:
.Ltmp640:
	movq	%r14, %rdi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EED2Ev
.Ltmp641:
# BB#76:
	movq	-64(%rbp), %rdi
	callq	_Unwind_Resume
.LBB105_77:
.Ltmp642:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end105:
	.size	_ZN7netlistC2ERKSs, .Lfunc_end105-_ZN7netlistC2ERKSs
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table105:
.Lexception15:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.ascii	"\264\002"              # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\253\002"              # Call site table length
	.long	.Lfunc_begin15-.Lfunc_begin15 # >> Call Site 1 <<
	.long	.Ltmp520-.Lfunc_begin15 #   Call between .Lfunc_begin15 and .Ltmp520
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp520-.Lfunc_begin15 # >> Call Site 2 <<
	.long	.Ltmp521-.Ltmp520       #   Call between .Ltmp520 and .Ltmp521
	.long	.Ltmp522-.Lfunc_begin15 #     jumps to .Ltmp522
	.byte	0                       #   On action: cleanup
	.long	.Ltmp523-.Lfunc_begin15 # >> Call Site 3 <<
	.long	.Ltmp524-.Ltmp523       #   Call between .Ltmp523 and .Ltmp524
	.long	.Ltmp525-.Lfunc_begin15 #     jumps to .Ltmp525
	.byte	0                       #   On action: cleanup
	.long	.Ltmp526-.Lfunc_begin15 # >> Call Site 4 <<
	.long	.Ltmp529-.Ltmp526       #   Call between .Ltmp526 and .Ltmp529
	.long	.Ltmp581-.Lfunc_begin15 #     jumps to .Ltmp581
	.byte	0                       #   On action: cleanup
	.long	.Ltmp530-.Lfunc_begin15 # >> Call Site 5 <<
	.long	.Ltmp537-.Ltmp530       #   Call between .Ltmp530 and .Ltmp537
	.long	.Ltmp578-.Lfunc_begin15 #     jumps to .Ltmp578
	.byte	0                       #   On action: cleanup
	.long	.Ltmp538-.Lfunc_begin15 # >> Call Site 6 <<
	.long	.Ltmp539-.Ltmp538       #   Call between .Ltmp538 and .Ltmp539
	.long	.Ltmp540-.Lfunc_begin15 #     jumps to .Ltmp540
	.byte	0                       #   On action: cleanup
	.long	.Ltmp543-.Lfunc_begin15 # >> Call Site 7 <<
	.long	.Ltmp548-.Ltmp543       #   Call between .Ltmp543 and .Ltmp548
	.long	.Ltmp578-.Lfunc_begin15 #     jumps to .Ltmp578
	.byte	0                       #   On action: cleanup
	.long	.Ltmp549-.Lfunc_begin15 # >> Call Site 8 <<
	.long	.Ltmp550-.Ltmp549       #   Call between .Ltmp549 and .Ltmp550
	.long	.Ltmp551-.Lfunc_begin15 #     jumps to .Ltmp551
	.byte	0                       #   On action: cleanup
	.long	.Ltmp552-.Lfunc_begin15 # >> Call Site 9 <<
	.long	.Ltmp553-.Ltmp552       #   Call between .Ltmp552 and .Ltmp553
	.long	.Ltmp575-.Lfunc_begin15 #     jumps to .Ltmp575
	.byte	0                       #   On action: cleanup
	.long	.Ltmp554-.Lfunc_begin15 # >> Call Site 10 <<
	.long	.Ltmp555-.Ltmp554       #   Call between .Ltmp554 and .Ltmp555
	.long	.Ltmp556-.Lfunc_begin15 #     jumps to .Ltmp556
	.byte	0                       #   On action: cleanup
	.long	.Ltmp559-.Lfunc_begin15 # >> Call Site 11 <<
	.long	.Ltmp560-.Ltmp559       #   Call between .Ltmp559 and .Ltmp560
	.long	.Ltmp575-.Lfunc_begin15 #     jumps to .Ltmp575
	.byte	0                       #   On action: cleanup
	.long	.Ltmp623-.Lfunc_begin15 # >> Call Site 12 <<
	.long	.Ltmp630-.Ltmp623       #   Call between .Ltmp623 and .Ltmp630
	.long	.Ltmp631-.Lfunc_begin15 #     jumps to .Ltmp631
	.byte	0                       #   On action: cleanup
	.long	.Ltmp561-.Lfunc_begin15 # >> Call Site 13 <<
	.long	.Ltmp564-.Ltmp561       #   Call between .Ltmp561 and .Ltmp564
	.long	.Ltmp575-.Lfunc_begin15 #     jumps to .Ltmp575
	.byte	0                       #   On action: cleanup
	.long	.Ltmp565-.Lfunc_begin15 # >> Call Site 14 <<
	.long	.Ltmp589-.Ltmp565       #   Call between .Ltmp565 and .Ltmp589
	.long	.Ltmp622-.Lfunc_begin15 #     jumps to .Ltmp622
	.byte	0                       #   On action: cleanup
	.long	.Ltmp590-.Lfunc_begin15 # >> Call Site 15 <<
	.long	.Ltmp599-.Ltmp590       #   Call between .Ltmp590 and .Ltmp599
	.long	.Ltmp617-.Lfunc_begin15 #     jumps to .Ltmp617
	.byte	0                       #   On action: cleanup
	.long	.Ltmp600-.Lfunc_begin15 # >> Call Site 16 <<
	.long	.Ltmp611-.Ltmp600       #   Call between .Ltmp600 and .Ltmp611
	.long	.Ltmp612-.Lfunc_begin15 #     jumps to .Ltmp612
	.byte	0                       #   On action: cleanup
	.long	.Ltmp615-.Lfunc_begin15 # >> Call Site 17 <<
	.long	.Ltmp616-.Ltmp615       #   Call between .Ltmp615 and .Ltmp616
	.long	.Ltmp617-.Lfunc_begin15 #     jumps to .Ltmp617
	.byte	0                       #   On action: cleanup
	.long	.Ltmp620-.Lfunc_begin15 # >> Call Site 18 <<
	.long	.Ltmp621-.Ltmp620       #   Call between .Ltmp620 and .Ltmp621
	.long	.Ltmp622-.Lfunc_begin15 #     jumps to .Ltmp622
	.byte	0                       #   On action: cleanup
	.long	.Ltmp567-.Lfunc_begin15 # >> Call Site 19 <<
	.long	.Ltmp574-.Ltmp567       #   Call between .Ltmp567 and .Ltmp574
	.long	.Ltmp575-.Lfunc_begin15 #     jumps to .Ltmp575
	.byte	0                       #   On action: cleanup
	.long	.Ltmp576-.Lfunc_begin15 # >> Call Site 20 <<
	.long	.Ltmp577-.Ltmp576       #   Call between .Ltmp576 and .Ltmp577
	.long	.Ltmp578-.Lfunc_begin15 #     jumps to .Ltmp578
	.byte	0                       #   On action: cleanup
	.long	.Ltmp579-.Lfunc_begin15 # >> Call Site 21 <<
	.long	.Ltmp580-.Ltmp579       #   Call between .Ltmp579 and .Ltmp580
	.long	.Ltmp581-.Lfunc_begin15 #     jumps to .Ltmp581
	.byte	0                       #   On action: cleanup
	.long	.Ltmp613-.Lfunc_begin15 # >> Call Site 22 <<
	.long	.Ltmp641-.Ltmp613       #   Call between .Ltmp613 and .Ltmp641
	.long	.Ltmp642-.Lfunc_begin15 #     jumps to .Ltmp642
	.byte	1                       #   On action: 1
	.long	.Ltmp641-.Lfunc_begin15 # >> Call Site 23 <<
	.long	.Lfunc_end105-.Ltmp641  #   Call between .Ltmp641 and .Lfunc_end105
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.text
	.globl	_ZN7netlist24create_elem_if_necessaryERSs
	.align	16, 0x90
	.type	_ZN7netlist24create_elem_if_necessaryERSs,@function
_ZN7netlist24create_elem_if_necessaryERSs: # @_ZN7netlist24create_elem_if_necessaryERSs
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp651:
	.cfi_def_cfa_offset 16
.Ltmp652:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp653:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp654:
	.cfi_offset %rbx, -32
.Ltmp655:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	leaq	64(%rbx), %r14
	movq	%r14, %rdi
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE4findERS5_
	movq	%rax, -48(%rbp)
	movq	%r14, %rdi
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE3endEv
	movq	%rax, -56(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEeqERKS5_
	testb	%al, %al
	je	.LBB106_2
# BB#1:
	addq	$16, %rbx
	movl	_ZZN7netlist24create_elem_if_necessaryERSsE11unused_elem(%rip), %esi
	movq	%rbx, %rdi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EE2atEm
	movq	%rax, %rbx
	movq	%rbx, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	%r14, %rdi
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEixERS5_
	movq	%rbx, (%rax)
	incl	_ZZN7netlist24create_elem_if_necessaryERSsE11unused_elem(%rip)
	jmp	.LBB106_3
.LBB106_2:
	leaq	-48(%rbp), %rdi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEptEv
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB106_3:
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end106:
	.size	_ZN7netlist24create_elem_if_necessaryERSs, .Lfunc_end106-_ZN7netlist24create_elem_if_necessaryERSs
	.cfi_endproc

	.globl	_ZN7netlist15print_locationsERKSs
	.align	16, 0x90
	.type	_ZN7netlist15print_locationsERKSs,@function
_ZN7netlist15print_locationsERKSs:      # @_ZN7netlist15print_locationsERKSs
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception16
# BB#0:
	pushq	%rbp
.Ltmp687:
	.cfi_def_cfa_offset 16
.Ltmp688:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp689:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$568, %rsp              # imm = 0x238
.Ltmp690:
	.cfi_offset %rbx, -56
.Ltmp691:
	.cfi_offset %r12, -48
.Ltmp692:
	.cfi_offset %r13, -40
.Ltmp693:
	.cfi_offset %r14, -32
.Ltmp694:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %r14
	movq	%rsi, %rdi
	callq	_ZNKSs5c_strEv
	movq	%rax, %rbx
	movl	$16, %edi
	movl	$32, %esi
	callq	_ZStorSt13_Ios_OpenmodeS_
	leaq	-568(%rbp), %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
	addq	$64, %r14
.Ltmp656:
	movq	%r14, %rdi
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE5beginEv
.Ltmp657:
# BB#1:
	movq	%rax, -576(%rbp)
	leaq	-576(%rbp), %r13
	leaq	-600(%rbp), %r15
	leaq	-568(%rbp), %r12
	.align	16, 0x90
.LBB107_2:                              # =>This Inner Loop Header: Depth=1
.Ltmp659:
	movq	%r14, %rdi
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE3endEv
.Ltmp660:
# BB#3:                                 #   in Loop: Header=BB107_2 Depth=1
	movq	%rax, -600(%rbp)
.Ltmp661:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEneERKS5_
.Ltmp662:
# BB#4:                                 #   in Loop: Header=BB107_2 Depth=1
	testb	%al, %al
	je	.LBB107_20
# BB#5:                                 #   in Loop: Header=BB107_2 Depth=1
.Ltmp663:
	movq	%r13, %rdi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEptEv
.Ltmp664:
# BB#6:                                 #   in Loop: Header=BB107_2 Depth=1
	movq	8(%rax), %rsi
	movq	%rsi, -608(%rbp)
.Ltmp665:
	movq	%r12, %rdi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
.Ltmp666:
# BB#7:                                 #   in Loop: Header=BB107_2 Depth=1
.Ltmp667:
	movl	$.L.str.6.19, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
.Ltmp668:
# BB#8:                                 #   in Loop: Header=BB107_2 Depth=1
	movq	-608(%rbp), %rdi
	addq	$56, %rdi
.Ltmp669:
	callq	_ZNK7threads9AtomicPtrI10location_tE3GetEv
.Ltmp670:
# BB#9:                                 #   in Loop: Header=BB107_2 Depth=1
	movl	(%rax), %esi
.Ltmp671:
	movq	%rbx, %rdi
	callq	_ZNSolsEi
.Ltmp672:
# BB#10:                                #   in Loop: Header=BB107_2 Depth=1
.Ltmp673:
	movl	$.L.str.6.19, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbx
.Ltmp674:
# BB#11:                                #   in Loop: Header=BB107_2 Depth=1
	movq	-608(%rbp), %rdi
	addq	$56, %rdi
.Ltmp675:
	callq	_ZNK7threads9AtomicPtrI10location_tE3GetEv
.Ltmp676:
# BB#12:                                #   in Loop: Header=BB107_2 Depth=1
	movl	4(%rax), %esi
.Ltmp677:
	movq	%rbx, %rdi
	callq	_ZNSolsEi
.Ltmp678:
# BB#13:                                #   in Loop: Header=BB107_2 Depth=1
.Ltmp679:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	callq	_ZNSolsEPFRSoS_E
.Ltmp680:
# BB#14:                                #   in Loop: Header=BB107_2 Depth=1
.Ltmp681:
	movq	%r13, %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEppEv
.Ltmp682:
	jmp	.LBB107_2
.LBB107_15:                             # %.loopexit
.Ltmp683:
.LBB107_17:
	movq	%rax, -584(%rbp)
	movl	%edx, -588(%rbp)
.Ltmp684:
	leaq	-568(%rbp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.Ltmp685:
# BB#18:
	movq	-584(%rbp), %rdi
	callq	_Unwind_Resume
.LBB107_20:
	leaq	-568(%rbp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	addq	$568, %rsp              # imm = 0x238
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB107_19:
.Ltmp686:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB107_16:                             # %.loopexit.split-lp
.Ltmp658:
	jmp	.LBB107_17
.Lfunc_end107:
	.size	_ZN7netlist15print_locationsERKSs, .Lfunc_end107-_ZN7netlist15print_locationsERKSs
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table107:
.Lexception16:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	73                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Lfunc_begin16-.Lfunc_begin16 # >> Call Site 1 <<
	.long	.Ltmp656-.Lfunc_begin16 #   Call between .Lfunc_begin16 and .Ltmp656
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp656-.Lfunc_begin16 # >> Call Site 2 <<
	.long	.Ltmp657-.Ltmp656       #   Call between .Ltmp656 and .Ltmp657
	.long	.Ltmp658-.Lfunc_begin16 #     jumps to .Ltmp658
	.byte	0                       #   On action: cleanup
	.long	.Ltmp659-.Lfunc_begin16 # >> Call Site 3 <<
	.long	.Ltmp682-.Ltmp659       #   Call between .Ltmp659 and .Ltmp682
	.long	.Ltmp683-.Lfunc_begin16 #     jumps to .Ltmp683
	.byte	0                       #   On action: cleanup
	.long	.Ltmp684-.Lfunc_begin16 # >> Call Site 4 <<
	.long	.Ltmp685-.Ltmp684       #   Call between .Ltmp684 and .Ltmp685
	.long	.Ltmp686-.Lfunc_begin16 #     jumps to .Ltmp686
	.byte	1                       #   On action: 1
	.long	.Ltmp685-.Lfunc_begin16 # >> Call Site 5 <<
	.long	.Lfunc_end107-.Ltmp685  #   Call between .Ltmp685 and .Lfunc_end107
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_netlist.cpp,@function
_GLOBAL__sub_I_netlist.cpp:             # @_GLOBAL__sub_I_netlist.cpp
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp695:
	.cfi_def_cfa_offset 16
.Ltmp696:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp697:
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init.23
	popq	%rbp
	retq
.Lfunc_end108:
	.size	_GLOBAL__sub_I_netlist.cpp, .Lfunc_end108-_GLOBAL__sub_I_netlist.cpp
	.cfi_endproc

	.section	.text._ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE5beginEv,"axG",@progbits,_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE5beginEv,comdat
	.weak	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE5beginEv
	.align	16, 0x90
	.type	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE5beginEv,@function
_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE5beginEv: # @_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE5beginEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp698:
	.cfi_def_cfa_offset 16
.Ltmp699:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp700:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE5beginEv
	movq	%rax, -8(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE5beginEv, .Lfunc_end109-_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE5beginEv
	.cfi_endproc

	.section	.text._ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE3endEv,"axG",@progbits,_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE3endEv,comdat
	.weak	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE3endEv
	.align	16, 0x90
	.type	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE3endEv,@function
_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE3endEv: # @_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE3endEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp701:
	.cfi_def_cfa_offset 16
.Ltmp702:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp703:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv
	movq	%rax, -8(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE3endEv, .Lfunc_end110-_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE3endEv
	.cfi_endproc

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEneERKS5_,"axG",@progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEneERKS5_,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEneERKS5_
	.align	16, 0x90
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEneERKS5_,@function
_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEneERKS5_: # @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEneERKS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp704:
	.cfi_def_cfa_offset 16
.Ltmp705:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp706:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	(%rsi), %rax
	setne	%al
	popq	%rbp
	retq
.Lfunc_end111:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEneERKS5_, .Lfunc_end111-_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEneERKS5_
	.cfi_endproc

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEptEv,"axG",@progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEptEv,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEptEv
	.align	16, 0x90
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEptEv,@function
_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEptEv: # @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEptEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp707:
	.cfi_def_cfa_offset 16
.Ltmp708:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp709:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	(%rdi), %rdi
	addq	$32, %rdi
	callq	_ZSt11__addressofISt4pairIKSsP12netlist_elemEEPT_RS5_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEptEv, .Lfunc_end112-_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEptEv
	.cfi_endproc

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEppEv,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEppEv,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEppEv
	.align	16, 0x90
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEppEv,@function
_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEppEv: # @_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEppEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp710:
	.cfi_def_cfa_offset 16
.Ltmp711:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp712:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp713:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	movq	(%rbx), %rdi
	callq	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end113:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEppEv, .Lfunc_end113-_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEppEv
	.cfi_endproc

	.section	.text._ZNSt6vectorI12netlist_elemSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI12netlist_elemSaIS0_EEixEm,comdat
	.weak	_ZNSt6vectorI12netlist_elemSaIS0_EEixEm
	.align	16, 0x90
	.type	_ZNSt6vectorI12netlist_elemSaIS0_EEixEm,@function
_ZNSt6vectorI12netlist_elemSaIS0_EEixEm: # @_ZNSt6vectorI12netlist_elemSaIS0_EEixEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp714:
	.cfi_def_cfa_offset 16
.Ltmp715:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp716:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	shlq	$6, %rsi
	addq	(%rax), %rsi
	movq	%rsi, %rax
	popq	%rbp
	retq
.Lfunc_end114:
	.size	_ZNSt6vectorI12netlist_elemSaIS0_EEixEm, .Lfunc_end114-_ZNSt6vectorI12netlist_elemSaIS0_EEixEm
	.cfi_endproc

	.section	.text._ZN7threads9AtomicPtrI10location_tE4SwapERS2_,"axG",@progbits,_ZN7threads9AtomicPtrI10location_tE4SwapERS2_,comdat
	.weak	_ZN7threads9AtomicPtrI10location_tE4SwapERS2_
	.align	16, 0x90
	.type	_ZN7threads9AtomicPtrI10location_tE4SwapERS2_,@function
_ZN7threads9AtomicPtrI10location_tE4SwapERS2_: # @_ZN7threads9AtomicPtrI10location_tE4SwapERS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp717:
	.cfi_def_cfa_offset 16
.Ltmp718:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp719:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%rsi, %rax
	jae	.LBB115_2
# BB#1:
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	jmp	.LBB115_3
.LBB115_2:
	movq	-16(%rbp), %rcx
	movq	%rcx, -24(%rbp)
.LBB115_3:
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZN7threads9AtomicPtrI10location_tE8CheckoutEv
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN7threads9AtomicPtrI10location_tE10PrivateSetEPS1_
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN7threads9AtomicPtrI10location_tE7CheckinEPS1_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end115:
	.size	_ZN7threads9AtomicPtrI10location_tE4SwapERS2_, .Lfunc_end115-_ZN7threads9AtomicPtrI10location_tE4SwapERS2_
	.cfi_endproc

	.section	.text._ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEixERS5_,"axG",@progbits,_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEixERS5_,comdat
	.weak	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEixERS5_
	.align	16, 0x90
	.type	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEixERS5_,@function
_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEixERS5_: # @_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEixERS5_
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception17
# BB#0:
	pushq	%rbp
.Ltmp726:
	.cfi_def_cfa_offset 16
.Ltmp727:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp728:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp729:
	.cfi_offset %rbx, -32
.Ltmp730:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE11lower_boundERS5_
	movq	%rax, -40(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE3endEv
	movq	%rax, -48(%rbp)
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEeqERKS5_
	testb	%al, %al
	jne	.LBB116_2
# BB#1:
	movq	%rbx, %rdi
	callq	_ZNKSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE8key_compEv
	movq	-32(%rbp), %r14
	leaq	-40(%rbp), %rdi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEdeEv
	leaq	-56(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.LBB116_4
.LBB116_2:
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rsi
	movq	$0, -96(%rbp)
	leaq	-88(%rbp), %r14
	leaq	-96(%rbp), %rdx
	movq	%r14, %rdi
	callq	_ZNSt4pairIKSsP12netlist_elemEC2ERS0_RKS2_
	movq	-72(%rbp), %rsi
.Ltmp720:
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE6insertESt17_Rb_tree_iteratorIS6_ERKS6_
.Ltmp721:
# BB#3:
	movq	%rax, -64(%rbp)
	movq	%rax, -40(%rbp)
	leaq	-88(%rbp), %rdi
	callq	_ZNSt4pairIKSsP12netlist_elemED2Ev
.LBB116_4:
	leaq	-40(%rbp), %rdi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEdeEv
	addq	$8, %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB116_5:
.Ltmp722:
	movq	%rax, -104(%rbp)
	movl	%edx, -108(%rbp)
.Ltmp723:
	leaq	-88(%rbp), %rdi
	callq	_ZNSt4pairIKSsP12netlist_elemED2Ev
.Ltmp724:
# BB#6:
	movq	-104(%rbp), %rdi
	callq	_Unwind_Resume
.LBB116_7:
.Ltmp725:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end116:
	.size	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEixERS5_, .Lfunc_end116-_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEixERS5_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table116:
.Lexception17:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	73                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Lfunc_begin17-.Lfunc_begin17 # >> Call Site 1 <<
	.long	.Ltmp720-.Lfunc_begin17 #   Call between .Lfunc_begin17 and .Ltmp720
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp720-.Lfunc_begin17 # >> Call Site 2 <<
	.long	.Ltmp721-.Ltmp720       #   Call between .Ltmp720 and .Ltmp721
	.long	.Ltmp722-.Lfunc_begin17 #     jumps to .Ltmp722
	.byte	0                       #   On action: cleanup
	.long	.Ltmp721-.Lfunc_begin17 # >> Call Site 3 <<
	.long	.Ltmp723-.Ltmp721       #   Call between .Ltmp721 and .Ltmp723
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp723-.Lfunc_begin17 # >> Call Site 4 <<
	.long	.Ltmp724-.Ltmp723       #   Call between .Ltmp723 and .Ltmp724
	.long	.Ltmp725-.Lfunc_begin17 #     jumps to .Ltmp725
	.byte	1                       #   On action: 1
	.long	.Ltmp724-.Lfunc_begin17 # >> Call Site 5 <<
	.long	.Lfunc_end116-.Ltmp724  #   Call between .Ltmp724 and .Lfunc_end116
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt6vectorI12netlist_elemSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI12netlist_elemSaIS0_EEC2Ev,comdat
	.weak	_ZNSt6vectorI12netlist_elemSaIS0_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorI12netlist_elemSaIS0_EEC2Ev,@function
_ZNSt6vectorI12netlist_elemSaIS0_EEC2Ev: # @_ZNSt6vectorI12netlist_elemSaIS0_EEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp731:
	.cfi_def_cfa_offset 16
.Ltmp732:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp733:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	_ZNSt6vectorI12netlist_elemSaIS0_EEC2Ev, .Lfunc_end117-_ZNSt6vectorI12netlist_elemSaIS0_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEC2Ev,"axG",@progbits,_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEC2Ev,comdat
	.weak	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEC2Ev,@function
_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEC2Ev: # @_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp734:
	.cfi_def_cfa_offset 16
.Ltmp735:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp736:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end118:
	.size	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEC2Ev, .Lfunc_end118-_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEC2Ev,"axG",@progbits,_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEC2Ev,comdat
	.weak	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEC2Ev
	.align	16, 0x90
	.type	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEC2Ev,@function
_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEC2Ev: # @_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp737:
	.cfi_def_cfa_offset 16
.Ltmp738:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp739:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end119:
	.size	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEC2Ev, .Lfunc_end119-_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEEC2Ev
	.cfi_endproc

	.section	.text._ZNSt6vectorI12netlist_elemSaIS0_EE6resizeEmS0_,"axG",@progbits,_ZNSt6vectorI12netlist_elemSaIS0_EE6resizeEmS0_,comdat
	.weak	_ZNSt6vectorI12netlist_elemSaIS0_EE6resizeEmS0_
	.align	16, 0x90
	.type	_ZNSt6vectorI12netlist_elemSaIS0_EE6resizeEmS0_,@function
_ZNSt6vectorI12netlist_elemSaIS0_EE6resizeEmS0_: # @_ZNSt6vectorI12netlist_elemSaIS0_EE6resizeEmS0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp740:
	.cfi_def_cfa_offset 16
.Ltmp741:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp742:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
.Ltmp743:
	.cfi_offset %rbx, -40
.Ltmp744:
	.cfi_offset %r14, -32
.Ltmp745:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, -32(%rbp)
	movq	%rbx, -40(%rbp)
	movq	-32(%rbp), %r15
	movq	%r15, %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	jbe	.LBB120_2
# BB#1:
	movq	%r15, %rdi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EE3endEv
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rbx
	movq	%r15, %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv
	subq	%rax, %rbx
	movq	-48(%rbp), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_
	jmp	.LBB120_4
.LBB120_2:
	movq	-40(%rbp), %rbx
	movq	%r15, %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	jae	.LBB120_4
# BB#3:
	movq	-40(%rbp), %rsi
	shlq	$6, %rsi
	addq	(%r15), %rsi
	movq	%r15, %rdi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EE15_M_erase_at_endEPS0_
.LBB120_4:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end120:
	.size	_ZNSt6vectorI12netlist_elemSaIS0_EE6resizeEmS0_, .Lfunc_end120-_ZNSt6vectorI12netlist_elemSaIS0_EE6resizeEmS0_
	.cfi_endproc

	.section	.text._ZNSaI10location_tEC2Ev,"axG",@progbits,_ZNSaI10location_tEC2Ev,comdat
	.weak	_ZNSaI10location_tEC2Ev
	.align	16, 0x90
	.type	_ZNSaI10location_tEC2Ev,@function
_ZNSaI10location_tEC2Ev:                # @_ZNSaI10location_tEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp746:
	.cfi_def_cfa_offset 16
.Ltmp747:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp748:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN9__gnu_cxx13new_allocatorI10location_tEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	_ZNSaI10location_tEC2Ev, .Lfunc_end121-_ZNSaI10location_tEC2Ev
	.cfi_endproc

	.section	.text._ZNSt6vectorI10location_tSaIS0_EEC2EmRKS0_RKS1_,"axG",@progbits,_ZNSt6vectorI10location_tSaIS0_EEC2EmRKS0_RKS1_,comdat
	.weak	_ZNSt6vectorI10location_tSaIS0_EEC2EmRKS0_RKS1_
	.align	16, 0x90
	.type	_ZNSt6vectorI10location_tSaIS0_EEC2EmRKS0_RKS1_,@function
_ZNSt6vectorI10location_tSaIS0_EEC2EmRKS0_RKS1_: # @_ZNSt6vectorI10location_tSaIS0_EEC2EmRKS0_RKS1_
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception18
# BB#0:
	pushq	%rbp
.Ltmp755:
	.cfi_def_cfa_offset 16
.Ltmp756:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp757:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp758:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rbx
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EEC2EmRKS1_
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
.Ltmp749:
	movq	%rbx, %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EE18_M_fill_initializeEmRKS0_
.Ltmp750:
# BB#1:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB122_2:
.Ltmp751:
	movq	%rax, -48(%rbp)
	movl	%edx, -52(%rbp)
.Ltmp752:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EED2Ev
.Ltmp753:
# BB#3:
	movq	-48(%rbp), %rdi
	callq	_Unwind_Resume
.LBB122_4:
.Ltmp754:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end122:
	.size	_ZNSt6vectorI10location_tSaIS0_EEC2EmRKS0_RKS1_, .Lfunc_end122-_ZNSt6vectorI10location_tSaIS0_EEC2EmRKS0_RKS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table122:
.Lexception18:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\274"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Lfunc_begin18-.Lfunc_begin18 # >> Call Site 1 <<
	.long	.Ltmp749-.Lfunc_begin18 #   Call between .Lfunc_begin18 and .Ltmp749
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp749-.Lfunc_begin18 # >> Call Site 2 <<
	.long	.Ltmp750-.Ltmp749       #   Call between .Ltmp749 and .Ltmp750
	.long	.Ltmp751-.Lfunc_begin18 #     jumps to .Ltmp751
	.byte	0                       #   On action: cleanup
	.long	.Ltmp752-.Lfunc_begin18 # >> Call Site 3 <<
	.long	.Ltmp753-.Ltmp752       #   Call between .Ltmp752 and .Ltmp753
	.long	.Ltmp754-.Lfunc_begin18 #     jumps to .Ltmp754
	.byte	1                       #   On action: 1
	.long	.Ltmp753-.Lfunc_begin18 # >> Call Site 4 <<
	.long	.Lfunc_end122-.Ltmp753  #   Call between .Ltmp753 and .Lfunc_end122
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt6vectorI10location_tSaIS0_EEC2ERKS2_,"axG",@progbits,_ZNSt6vectorI10location_tSaIS0_EEC2ERKS2_,comdat
	.weak	_ZNSt6vectorI10location_tSaIS0_EEC2ERKS2_
	.align	16, 0x90
	.type	_ZNSt6vectorI10location_tSaIS0_EEC2ERKS2_,@function
_ZNSt6vectorI10location_tSaIS0_EEC2ERKS2_: # @_ZNSt6vectorI10location_tSaIS0_EEC2ERKS2_
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception19
# BB#0:
	pushq	%rbp
.Ltmp771:
	.cfi_def_cfa_offset 16
.Ltmp772:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp773:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp774:
	.cfi_offset %rbx, -32
.Ltmp775:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %r14
	movq	%rsi, %rdi
	callq	_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	-32(%rbp), %rdi
	callq	_ZNKSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaI10location_tEE17_S_select_on_copyERKS2_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EEC2EmRKS1_
	movq	-32(%rbp), %rdi
.Ltmp759:
	callq	_ZNKSt6vectorI10location_tSaIS0_EE5beginEv
.Ltmp760:
# BB#1:
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
.Ltmp761:
	callq	_ZNKSt6vectorI10location_tSaIS0_EE3endEv
.Ltmp762:
# BB#2:
	movq	%rax, -64(%rbp)
	movq	(%r14), %rbx
.Ltmp763:
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp764:
# BB#3:
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
.Ltmp765:
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
.Ltmp766:
# BB#4:
	movq	%rax, 8(%r14)
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB123_5:
.Ltmp767:
	movq	%rax, -48(%rbp)
	movl	%edx, -52(%rbp)
.Ltmp768:
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EED2Ev
.Ltmp769:
# BB#6:
	movq	-48(%rbp), %rdi
	callq	_Unwind_Resume
.LBB123_7:
.Ltmp770:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end123:
	.size	_ZNSt6vectorI10location_tSaIS0_EEC2ERKS2_, .Lfunc_end123-_ZNSt6vectorI10location_tSaIS0_EEC2ERKS2_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table123:
.Lexception19:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\274"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Lfunc_begin19-.Lfunc_begin19 # >> Call Site 1 <<
	.long	.Ltmp759-.Lfunc_begin19 #   Call between .Lfunc_begin19 and .Ltmp759
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp759-.Lfunc_begin19 # >> Call Site 2 <<
	.long	.Ltmp766-.Ltmp759       #   Call between .Ltmp759 and .Ltmp766
	.long	.Ltmp767-.Lfunc_begin19 #     jumps to .Ltmp767
	.byte	0                       #   On action: cleanup
	.long	.Ltmp768-.Lfunc_begin19 # >> Call Site 3 <<
	.long	.Ltmp769-.Ltmp768       #   Call between .Ltmp768 and .Ltmp769
	.long	.Ltmp770-.Lfunc_begin19 #     jumps to .Ltmp770
	.byte	1                       #   On action: 1
	.long	.Ltmp769-.Lfunc_begin19 # >> Call Site 4 <<
	.long	.Lfunc_end123-.Ltmp769  #   Call between .Ltmp769 and .Lfunc_end123
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6resizeEmS2_,"axG",@progbits,_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6resizeEmS2_,comdat
	.weak	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6resizeEmS2_
	.align	16, 0x90
	.type	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6resizeEmS2_,@function
_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6resizeEmS2_: # @_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6resizeEmS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp776:
	.cfi_def_cfa_offset 16
.Ltmp777:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp778:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
.Ltmp779:
	.cfi_offset %rbx, -40
.Ltmp780:
	.cfi_offset %r14, -32
.Ltmp781:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, -32(%rbp)
	movq	%rbx, -40(%rbp)
	movq	-32(%rbp), %r15
	movq	%r15, %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv
	cmpq	%rax, %rbx
	jbe	.LBB124_2
# BB#1:
	movq	%r15, %rdi
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE3endEv
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rbx
	movq	%r15, %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv
	subq	%rax, %rbx
	movq	-48(%rbp), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_
	jmp	.LBB124_4
.LBB124_2:
	movq	-40(%rbp), %rbx
	movq	%r15, %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv
	cmpq	%rax, %rbx
	jae	.LBB124_4
# BB#3:
	movq	(%r15), %rax
	movq	-40(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rax,%rcx,8), %rsi
	movq	%r15, %rdi
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE15_M_erase_at_endEPS2_
.LBB124_4:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end124:
	.size	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6resizeEmS2_, .Lfunc_end124-_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6resizeEmS2_
	.cfi_endproc

	.section	.text._ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE2atEm,"axG",@progbits,_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE2atEm,comdat
	.weak	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE2atEm
	.align	16, 0x90
	.type	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE2atEm,@function
_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE2atEm: # @_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE2atEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp782:
	.cfi_def_cfa_offset 16
.Ltmp783:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp784:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp785:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_range_checkEm
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEixEm
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end125:
	.size	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE2atEm, .Lfunc_end125-_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE2atEm
	.cfi_endproc

	.section	.text._ZNSt6vectorI10location_tSaIS0_EE2atEm,"axG",@progbits,_ZNSt6vectorI10location_tSaIS0_EE2atEm,comdat
	.weak	_ZNSt6vectorI10location_tSaIS0_EE2atEm
	.align	16, 0x90
	.type	_ZNSt6vectorI10location_tSaIS0_EE2atEm,@function
_ZNSt6vectorI10location_tSaIS0_EE2atEm: # @_ZNSt6vectorI10location_tSaIS0_EE2atEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp786:
	.cfi_def_cfa_offset 16
.Ltmp787:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp788:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp789:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNKSt6vectorI10location_tSaIS0_EE14_M_range_checkEm
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EEixEm
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end126:
	.size	_ZNSt6vectorI10location_tSaIS0_EE2atEm, .Lfunc_end126-_ZNSt6vectorI10location_tSaIS0_EE2atEm
	.cfi_endproc

	.section	.text._ZNSt6vectorI12netlist_elemSaIS0_EE2atEm,"axG",@progbits,_ZNSt6vectorI12netlist_elemSaIS0_EE2atEm,comdat
	.weak	_ZNSt6vectorI12netlist_elemSaIS0_EE2atEm
	.align	16, 0x90
	.type	_ZNSt6vectorI12netlist_elemSaIS0_EE2atEm,@function
_ZNSt6vectorI12netlist_elemSaIS0_EE2atEm: # @_ZNSt6vectorI12netlist_elemSaIS0_EE2atEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp790:
	.cfi_def_cfa_offset 16
.Ltmp791:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp792:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp793:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE14_M_range_checkEm
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EEixEm
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end127:
	.size	_ZNSt6vectorI12netlist_elemSaIS0_EE2atEm, .Lfunc_end127-_ZNSt6vectorI12netlist_elemSaIS0_EE2atEm
	.cfi_endproc

	.section	.text._ZN7threads9AtomicPtrI10location_tE3SetEPS1_,"axG",@progbits,_ZN7threads9AtomicPtrI10location_tE3SetEPS1_,comdat
	.weak	_ZN7threads9AtomicPtrI10location_tE3SetEPS1_
	.align	16, 0x90
	.type	_ZN7threads9AtomicPtrI10location_tE3SetEPS1_,@function
_ZN7threads9AtomicPtrI10location_tE3SetEPS1_: # @_ZN7threads9AtomicPtrI10location_tE3SetEPS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp794:
	.cfi_def_cfa_offset 16
.Ltmp795:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp796:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN7threads9AtomicPtrI10location_tE10PrivateSetEPS1_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end128:
	.size	_ZN7threads9AtomicPtrI10location_tE3SetEPS1_, .Lfunc_end128-_ZN7threads9AtomicPtrI10location_tE3SetEPS1_
	.cfi_endproc

	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,comdat
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.align	16, 0x90
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,@function
_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_: # @_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp797:
	.cfi_def_cfa_offset 16
.Ltmp798:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp799:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSs7compareEPKc
	testl	%eax, %eax
	sete	%al
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end129:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, .Lfunc_end129-_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP12netlist_elemSaIS1_EE9push_backERKS1_,"axG",@progbits,_ZNSt6vectorIP12netlist_elemSaIS1_EE9push_backERKS1_,comdat
	.weak	_ZNSt6vectorIP12netlist_elemSaIS1_EE9push_backERKS1_
	.align	16, 0x90
	.type	_ZNSt6vectorIP12netlist_elemSaIS1_EE9push_backERKS1_,@function
_ZNSt6vectorIP12netlist_elemSaIS1_EE9push_backERKS1_: # @_ZNSt6vectorIP12netlist_elemSaIS1_EE9push_backERKS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp800:
	.cfi_def_cfa_offset 16
.Ltmp801:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp802:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp803:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	8(%rbx), %rax
	cmpq	16(%rbx), %rax
	je	.LBB130_2
# BB#1:
	movq	8(%rbx), %rsi
	movq	-24(%rbp), %rdx
	movq	%rbx, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE9constructIS2_EEvRS3_PS2_RKT_
	addq	$8, 8(%rbx)
	jmp	.LBB130_3
.LBB130_2:
	movq	%rbx, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EE3endEv
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.LBB130_3:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end130:
	.size	_ZNSt6vectorIP12netlist_elemSaIS1_EE9push_backERKS1_, .Lfunc_end130-_ZNSt6vectorIP12netlist_elemSaIS1_EE9push_backERKS1_
	.cfi_endproc

	.section	.text._ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE4findERS5_,"axG",@progbits,_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE4findERS5_,comdat
	.weak	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE4findERS5_
	.align	16, 0x90
	.type	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE4findERS5_,@function
_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE4findERS5_: # @_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE4findERS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp804:
	.cfi_def_cfa_offset 16
.Ltmp805:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp806:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_
	movq	%rax, -8(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end131:
	.size	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE4findERS5_, .Lfunc_end131-_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE4findERS5_
	.cfi_endproc

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEeqERKS5_,"axG",@progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEeqERKS5_,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEeqERKS5_
	.align	16, 0x90
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEeqERKS5_,@function
_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEeqERKS5_: # @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEeqERKS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp807:
	.cfi_def_cfa_offset 16
.Ltmp808:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp809:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	(%rsi), %rax
	sete	%al
	popq	%rbp
	retq
.Lfunc_end132:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEeqERKS5_, .Lfunc_end132-_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEeqERKS5_
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp810:
	.cfi_def_cfa_offset 16
.Ltmp811:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp812:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp813:
	.cfi_offset %rbx, -32
.Ltmp814:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv
	movq	-40(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS1_
	movq	%rax, -48(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv
	movq	%rax, -56(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEeqERKS5_
	testb	%al, %al
	jne	.LBB133_2
# BB#1:
	movq	-40(%rbp), %r14
	movq	-48(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.LBB133_3
.LBB133_2:
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv
	jmp	.LBB133_4
.LBB133_3:
	movq	-48(%rbp), %rax
.LBB133_4:
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end133:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_, .Lfunc_end133-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4findERS1_
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp815:
	.cfi_def_cfa_offset 16
.Ltmp816:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp817:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	leaq	8(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end134:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv, .Lfunc_end134-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS1_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS1_,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS1_
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS1_,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS1_: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp818:
	.cfi_def_cfa_offset 16
.Ltmp819:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp820:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp821:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rbx
	jmp	.LBB135_1
	.align	16, 0x90
.LBB135_3:                              #   in Loop: Header=BB135_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base
	movq	%rax, -32(%rbp)
.LBB135_1:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB135_5
# BB#2:                                 #   in Loop: Header=BB135_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E
	movq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.LBB135_3
# BB#4:                                 #   in Loop: Header=BB135_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base
	movq	%rax, -32(%rbp)
	jmp	.LBB135_1
.LBB135_5:
	movq	-40(%rbp), %rsi
	leaq	-16(%rbp), %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E
	movq	-16(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end135:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS1_, .Lfunc_end135-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS1_
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp822:
	.cfi_def_cfa_offset 16
.Ltmp823:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp824:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	leaq	8(%rdi), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end136:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv, .Lfunc_end136-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE3endEv
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp825:
	.cfi_def_cfa_offset 16
.Ltmp826:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp827:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base
	leaq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZNKSt10_Select1stISt4pairIKSsP12netlist_elemEEclERKS4_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end137:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base, .Lfunc_end137-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base
	.cfi_endproc

	.section	.text._ZNKSt4lessISsEclERKSsS2_,"axG",@progbits,_ZNKSt4lessISsEclERKSsS2_,comdat
	.weak	_ZNKSt4lessISsEclERKSsS2_
	.align	16, 0x90
	.type	_ZNKSt4lessISsEclERKSsS2_,@function
_ZNKSt4lessISsEclERKSsS2_:              # @_ZNKSt4lessISsEclERKSsS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp828:
	.cfi_def_cfa_offset 16
.Ltmp829:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp830:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdx, %rsi
	callq	_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end138:
	.size	_ZNKSt4lessISsEclERKSsS2_, .Lfunc_end138-_ZNKSt4lessISsEclERKSsS2_
	.cfi_endproc

	.section	.text._ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_,"axG",@progbits,_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_,comdat
	.weak	_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	.align	16, 0x90
	.type	_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_,@function
_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_: # @_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp831:
	.cfi_def_cfa_offset 16
.Ltmp832:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp833:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSs7compareERKSs
	shrl	$31, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end139:
	.size	_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_, .Lfunc_end139-_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp834:
	.cfi_def_cfa_offset 16
.Ltmp835:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp836:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	leaq	32(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end140:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base, .Lfunc_end140-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base
	.cfi_endproc

	.section	.text._ZNKSt10_Select1stISt4pairIKSsP12netlist_elemEEclERKS4_,"axG",@progbits,_ZNKSt10_Select1stISt4pairIKSsP12netlist_elemEEclERKS4_,comdat
	.weak	_ZNKSt10_Select1stISt4pairIKSsP12netlist_elemEEclERKS4_
	.align	16, 0x90
	.type	_ZNKSt10_Select1stISt4pairIKSsP12netlist_elemEEclERKS4_,@function
_ZNKSt10_Select1stISt4pairIKSsP12netlist_elemEEclERKS4_: # @_ZNKSt10_Select1stISt4pairIKSsP12netlist_elemEEclERKS4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp837:
	.cfi_def_cfa_offset 16
.Ltmp838:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp839:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rsi, %rax
	popq	%rbp
	retq
.Lfunc_end141:
	.size	_ZNKSt10_Select1stISt4pairIKSsP12netlist_elemEEclERKS4_, .Lfunc_end141-_ZNKSt10_Select1stISt4pairIKSsP12netlist_elemEEclERKS4_
	.cfi_endproc

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E
	.align	16, 0x90
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E,@function
_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E: # @_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp840:
	.cfi_def_cfa_offset 16
.Ltmp841:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp842:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rsi, (%rax)
	popq	%rbp
	retq
.Lfunc_end142:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E, .Lfunc_end142-_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp843:
	.cfi_def_cfa_offset 16
.Ltmp844:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp845:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E
	leaq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZNKSt10_Select1stISt4pairIKSsP12netlist_elemEEclERKS4_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end143:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E, .Lfunc_end143-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp846:
	.cfi_def_cfa_offset 16
.Ltmp847:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp848:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	leaq	32(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end144:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E, .Lfunc_end144-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE9constructIS2_EEvRS3_PS2_RKT_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE9constructIS2_EEvRS3_PS2_RKT_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE9constructIS2_EEvRS3_PS2_RKT_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE9constructIS2_EEvRS3_PS2_RKT_,@function
_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE9constructIS2_EEvRS3_PS2_RKT_: # @_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE9constructIS2_EEvRS3_PS2_RKT_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp849:
	.cfi_def_cfa_offset 16
.Ltmp850:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp851:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE9constructEPS2_RKS2_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end145:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE9constructIS2_EEvRS3_PS2_RKT_, .Lfunc_end145-_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE9constructIS2_EEvRS3_PS2_RKT_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP12netlist_elemSaIS1_EE3endEv,"axG",@progbits,_ZNSt6vectorIP12netlist_elemSaIS1_EE3endEv,comdat
	.weak	_ZNSt6vectorIP12netlist_elemSaIS1_EE3endEv
	.align	16, 0x90
	.type	_ZNSt6vectorIP12netlist_elemSaIS1_EE3endEv,@function
_ZNSt6vectorIP12netlist_elemSaIS1_EE3endEv: # @_ZNSt6vectorIP12netlist_elemSaIS1_EE3endEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp852:
	.cfi_def_cfa_offset 16
.Ltmp853:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp854:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	leaq	8(%rdi), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS3_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end146:
	.size	_ZNSt6vectorIP12netlist_elemSaIS1_EE3endEv, .Lfunc_end146-_ZNSt6vectorIP12netlist_elemSaIS1_EE3endEv
	.cfi_endproc

	.section	.text._ZNSt6vectorIP12netlist_elemSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_,"axG",@progbits,_ZNSt6vectorIP12netlist_elemSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_,comdat
	.weak	_ZNSt6vectorIP12netlist_elemSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	.align	16, 0x90
	.type	_ZNSt6vectorIP12netlist_elemSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_,@function
_ZNSt6vectorIP12netlist_elemSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_: # @_ZNSt6vectorIP12netlist_elemSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception20
# BB#0:
	pushq	%rbp
.Ltmp884:
	.cfi_def_cfa_offset 16
.Ltmp885:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp886:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
.Ltmp887:
	.cfi_offset %rbx, -48
.Ltmp888:
	.cfi_offset %r12, -40
.Ltmp889:
	.cfi_offset %r14, -32
.Ltmp890:
	.cfi_offset %r15, -24
	movq	%rsi, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rbx
	movq	8(%rbx), %rax
	cmpq	16(%rbx), %rax
	je	.LBB147_2
# BB#1:
	movq	8(%rbx), %rsi
	leaq	-8(%rsi), %rdx
	movq	%rbx, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE9constructIS2_EEvRS3_PS2_RKT_
	addq	$8, 8(%rbx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	leaq	-40(%rbp), %r14
	movq	%r14, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rdi
	movq	8(%rbx), %rdx
	leaq	-16(%rdx), %rsi
	addq	$-8, %rdx
	callq	_ZSt13copy_backwardIPP12netlist_elemS2_ET0_T_S4_S3_
	movq	-64(%rbp), %rbx
	movq	%r14, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEdeEv
	movq	%rbx, (%rax)
	jmp	.LBB147_10
.LBB147_2:
	movl	$1, %esi
	movl	$.L.str.9.20, %edx
	movq	%rbx, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE12_M_check_lenEmPKc
	movq	%rax, -72(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EE5beginEv
	movq	%rax, -88(%rbp)
	leaq	-40(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIPP12netlist_elemSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE11_M_allocateEm
	movq	%rax, -96(%rbp)
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rsi
	shlq	$3, %rsi
	addq	-96(%rbp), %rsi
	movq	-56(%rbp), %rdx
.Ltmp855:
	movq	%rbx, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE9constructIS2_EEvRS3_PS2_RKT_
.Ltmp856:
# BB#3:
	movq	$0, -104(%rbp)
	movq	(%rbx), %r14
.Ltmp857:
	leaq	-40(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
.Ltmp858:
# BB#4:
	movq	(%rax), %r15
	movq	-96(%rbp), %r12
.Ltmp859:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp860:
# BB#5:
.Ltmp861:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIPP12netlist_elemS2_SaIS1_EET0_T_S5_S4_RT1_
.Ltmp862:
# BB#6:
	movq	%rax, -104(%rbp)
	addq	$8, %rax
	movq	%rax, -104(%rbp)
.Ltmp863:
	leaq	-40(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
.Ltmp864:
# BB#7:
	movq	(%rax), %r14
	movq	8(%rbx), %r15
	movq	-104(%rbp), %r12
.Ltmp865:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp866:
# BB#8:
.Ltmp867:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIPP12netlist_elemS2_SaIS1_EET0_T_S5_S4_RT1_
.Ltmp868:
# BB#9:
	movq	%rax, -104(%rbp)
	movq	(%rbx), %r14
	movq	8(%rbx), %r15
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPP12netlist_elemS1_EvT_S3_RSaIT0_E
	movq	(%rbx), %rsi
	movq	16(%rbx), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m
	movq	-96(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-72(%rbp), %rax
	shlq	$3, %rax
	addq	-96(%rbp), %rax
	movq	%rax, 16(%rbx)
.LBB147_10:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB147_11:
.Ltmp869:
	movq	%rax, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	-112(%rbp), %rdi
	callq	__cxa_begin_catch
	cmpq	$0, -104(%rbp)
	je	.LBB147_12
# BB#13:
	movq	-96(%rbp), %r14
	movq	-104(%rbp), %r15
.Ltmp872:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp873:
# BB#14:
.Ltmp874:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPP12netlist_elemS1_EvT_S3_RSaIT0_E
.Ltmp875:
	jmp	.LBB147_15
.LBB147_12:
	movq	-96(%rbp), %rax
	movq	-80(%rbp), %rcx
	leaq	(%rax,%rcx,8), %rsi
.Ltmp870:
	movq	%rbx, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE7destroyERS3_PS2_
.Ltmp871:
.LBB147_15:
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rdx
.Ltmp876:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m
.Ltmp877:
# BB#16:
.Ltmp878:
	callq	__cxa_rethrow
.Ltmp879:
# BB#20:
.LBB147_17:
.Ltmp880:
	movq	%rax, -112(%rbp)
	movl	%edx, -116(%rbp)
.Ltmp881:
	callq	__cxa_end_catch
.Ltmp882:
# BB#18:
	movq	-112(%rbp), %rdi
	callq	_Unwind_Resume
.LBB147_19:
.Ltmp883:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end147:
	.size	_ZNSt6vectorIP12netlist_elemSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_, .Lfunc_end147-_ZNSt6vectorIP12netlist_elemSaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table147:
.Lexception20:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin20-.Lfunc_begin20 # >> Call Site 1 <<
	.long	.Ltmp855-.Lfunc_begin20 #   Call between .Lfunc_begin20 and .Ltmp855
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp855-.Lfunc_begin20 # >> Call Site 2 <<
	.long	.Ltmp868-.Ltmp855       #   Call between .Ltmp855 and .Ltmp868
	.long	.Ltmp869-.Lfunc_begin20 #     jumps to .Ltmp869
	.byte	1                       #   On action: 1
	.long	.Ltmp868-.Lfunc_begin20 # >> Call Site 3 <<
	.long	.Ltmp872-.Ltmp868       #   Call between .Ltmp868 and .Ltmp872
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp872-.Lfunc_begin20 # >> Call Site 4 <<
	.long	.Ltmp879-.Ltmp872       #   Call between .Ltmp872 and .Ltmp879
	.long	.Ltmp880-.Lfunc_begin20 #     jumps to .Ltmp880
	.byte	0                       #   On action: cleanup
	.long	.Ltmp881-.Lfunc_begin20 # >> Call Site 5 <<
	.long	.Ltmp882-.Ltmp881       #   Call between .Ltmp881 and .Ltmp882
	.long	.Ltmp883-.Lfunc_begin20 #     jumps to .Ltmp883
	.byte	1                       #   On action: 1
	.long	.Ltmp882-.Lfunc_begin20 # >> Call Site 6 <<
	.long	.Lfunc_end147-.Ltmp882  #   Call between .Ltmp882 and .Lfunc_end147
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp891:
	.cfi_def_cfa_offset 16
.Ltmp892:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp893:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end148:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv, .Lfunc_end148-_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
	.cfi_endproc

	.section	.text._ZSt13copy_backwardIPP12netlist_elemS2_ET0_T_S4_S3_,"axG",@progbits,_ZSt13copy_backwardIPP12netlist_elemS2_ET0_T_S4_S3_,comdat
	.weak	_ZSt13copy_backwardIPP12netlist_elemS2_ET0_T_S4_S3_
	.align	16, 0x90
	.type	_ZSt13copy_backwardIPP12netlist_elemS2_ET0_T_S4_S3_,@function
_ZSt13copy_backwardIPP12netlist_elemS2_ET0_T_S4_S3_: # @_ZSt13copy_backwardIPP12netlist_elemS2_ET0_T_S4_S3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp894:
	.cfi_def_cfa_offset 16
.Ltmp895:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp896:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp897:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZSt12__miter_baseIPP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES4_
	movq	%rax, %rbx
	movq	-24(%rbp), %rdi
	callq	_ZSt12__miter_baseIPP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES4_
	movq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZSt23__copy_move_backward_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end149:
	.size	_ZSt13copy_backwardIPP12netlist_elemS2_ET0_T_S4_S3_, .Lfunc_end149-_ZSt13copy_backwardIPP12netlist_elemS2_ET0_T_S4_S3_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEdeEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEdeEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEdeEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEdeEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEdeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp898:
	.cfi_def_cfa_offset 16
.Ltmp899:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp900:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end150:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEdeEv, .Lfunc_end150-_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEdeEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP12netlist_elemSaIS1_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIP12netlist_elemSaIS1_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorIP12netlist_elemSaIS1_EE12_M_check_lenEmPKc
	.align	16, 0x90
	.type	_ZNKSt6vectorIP12netlist_elemSaIS1_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorIP12netlist_elemSaIS1_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorIP12netlist_elemSaIS1_EE12_M_check_lenEmPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp901:
	.cfi_def_cfa_offset 16
.Ltmp902:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp903:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp904:
	.cfi_offset %rbx, -32
.Ltmp905:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %r14
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE8max_sizeEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	subq	%rax, %rbx
	cmpq	-32(%rbp), %rbx
	jb	.LBB151_6
# BB#1:
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	addq	(%rax), %rbx
	movq	%rbx, -48(%rbp)
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	cmpq	%rax, %rbx
	jb	.LBB151_3
# BB#2:
	movq	-48(%rbp), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE8max_sizeEv
	cmpq	%rax, %rbx
	jbe	.LBB151_4
.LBB151_3:
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE8max_sizeEv
	jmp	.LBB151_5
.LBB151_4:
	movq	-48(%rbp), %rax
.LBB151_5:
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB151_6:
	movq	-40(%rbp), %rdi
	callq	_ZSt20__throw_length_errorPKc
.Lfunc_end151:
	.size	_ZNKSt6vectorIP12netlist_elemSaIS1_EE12_M_check_lenEmPKc, .Lfunc_end151-_ZNKSt6vectorIP12netlist_elemSaIS1_EE12_M_check_lenEmPKc
	.cfi_endproc

	.section	.text._ZNSt6vectorIP12netlist_elemSaIS1_EE5beginEv,"axG",@progbits,_ZNSt6vectorIP12netlist_elemSaIS1_EE5beginEv,comdat
	.weak	_ZNSt6vectorIP12netlist_elemSaIS1_EE5beginEv
	.align	16, 0x90
	.type	_ZNSt6vectorIP12netlist_elemSaIS1_EE5beginEv,@function
_ZNSt6vectorIP12netlist_elemSaIS1_EE5beginEv: # @_ZNSt6vectorIP12netlist_elemSaIS1_EE5beginEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp906:
	.cfi_def_cfa_offset 16
.Ltmp907:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp908:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS3_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end152:
	.size	_ZNSt6vectorIP12netlist_elemSaIS1_EE5beginEv, .Lfunc_end152-_ZNSt6vectorIP12netlist_elemSaIS1_EE5beginEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxxmiIPP12netlist_elemSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"axG",@progbits,_ZN9__gnu_cxxmiIPP12netlist_elemSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,comdat
	.weak	_ZN9__gnu_cxxmiIPP12netlist_elemSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.align	16, 0x90
	.type	_ZN9__gnu_cxxmiIPP12netlist_elemSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,@function
_ZN9__gnu_cxxmiIPP12netlist_elemSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_: # @_ZN9__gnu_cxxmiIPP12netlist_elemSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp909:
	.cfi_def_cfa_offset 16
.Ltmp910:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp911:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp912:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-24(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
	subq	(%rax), %rbx
	sarq	$3, %rbx
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end153:
	.size	_ZN9__gnu_cxxmiIPP12netlist_elemSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, .Lfunc_end153-_ZN9__gnu_cxxmiIPP12netlist_elemSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE11_M_allocateEm
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE11_M_allocateEm: # @_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE11_M_allocateEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp913:
	.cfi_def_cfa_offset 16
.Ltmp914:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp915:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB154_2
# BB#1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%edx, %edx
	callq	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE8allocateEmPKv
.LBB154_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end154:
	.size	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE11_M_allocateEm, .Lfunc_end154-_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE11_M_allocateEm
	.cfi_endproc

	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPP12netlist_elemS2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIPP12netlist_elemS2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPP12netlist_elemS2_SaIS1_EET0_T_S5_S4_RT1_
	.align	16, 0x90
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPP12netlist_elemS2_SaIS1_EET0_T_S5_S4_RT1_,@function
_ZSt34__uninitialized_move_if_noexcept_aIPP12netlist_elemS2_SaIS1_EET0_T_S5_S4_RT1_: # @_ZSt34__uninitialized_move_if_noexcept_aIPP12netlist_elemS2_SaIS1_EET0_T_S5_S4_RT1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp916:
	.cfi_def_cfa_offset 16
.Ltmp917:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp918:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt22__uninitialized_copy_aIPP12netlist_elemS2_S1_ET0_T_S4_S3_RSaIT1_E
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end155:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPP12netlist_elemS2_SaIS1_EET0_T_S5_S4_RT1_, .Lfunc_end155-_ZSt34__uninitialized_move_if_noexcept_aIPP12netlist_elemS2_SaIS1_EET0_T_S5_S4_RT1_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE7destroyERS3_PS2_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE7destroyERS3_PS2_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE7destroyERS3_PS2_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE7destroyERS3_PS2_,@function
_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE7destroyERS3_PS2_: # @_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE7destroyERS3_PS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp919:
	.cfi_def_cfa_offset 16
.Ltmp920:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp921:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE7destroyEPS2_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end156:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE7destroyERS3_PS2_, .Lfunc_end156-_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE7destroyERS3_PS2_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP12netlist_elemE7destroyEPS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE7destroyEPS2_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE7destroyEPS2_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE7destroyEPS2_,@function
_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE7destroyEPS2_: # @_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE7destroyEPS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp922:
	.cfi_def_cfa_offset 16
.Ltmp923:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp924:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end157:
	.size	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE7destroyEPS2_, .Lfunc_end157-_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE7destroyEPS2_
	.cfi_endproc

	.section	.text._ZSt22__uninitialized_copy_aIPP12netlist_elemS2_S1_ET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPP12netlist_elemS2_S1_ET0_T_S4_S3_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPP12netlist_elemS2_S1_ET0_T_S4_S3_RSaIT1_E
	.align	16, 0x90
	.type	_ZSt22__uninitialized_copy_aIPP12netlist_elemS2_S1_ET0_T_S4_S3_RSaIT1_E,@function
_ZSt22__uninitialized_copy_aIPP12netlist_elemS2_S1_ET0_T_S4_S3_RSaIT1_E: # @_ZSt22__uninitialized_copy_aIPP12netlist_elemS2_S1_ET0_T_S4_S3_RSaIT1_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp925:
	.cfi_def_cfa_offset 16
.Ltmp926:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp927:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt18uninitialized_copyIPP12netlist_elemS2_ET0_T_S4_S3_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end158:
	.size	_ZSt22__uninitialized_copy_aIPP12netlist_elemS2_S1_ET0_T_S4_S3_RSaIT1_E, .Lfunc_end158-_ZSt22__uninitialized_copy_aIPP12netlist_elemS2_S1_ET0_T_S4_S3_RSaIT1_E
	.cfi_endproc

	.section	.text._ZSt18uninitialized_copyIPP12netlist_elemS2_ET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyIPP12netlist_elemS2_ET0_T_S4_S3_,comdat
	.weak	_ZSt18uninitialized_copyIPP12netlist_elemS2_ET0_T_S4_S3_
	.align	16, 0x90
	.type	_ZSt18uninitialized_copyIPP12netlist_elemS2_ET0_T_S4_S3_,@function
_ZSt18uninitialized_copyIPP12netlist_elemS2_ET0_T_S4_S3_: # @_ZSt18uninitialized_copyIPP12netlist_elemS2_ET0_T_S4_S3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp928:
	.cfi_def_cfa_offset 16
.Ltmp929:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp930:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP12netlist_elemS4_EET0_T_S6_S5_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end159:
	.size	_ZSt18uninitialized_copyIPP12netlist_elemS2_ET0_T_S4_S3_, .Lfunc_end159-_ZSt18uninitialized_copyIPP12netlist_elemS2_ET0_T_S4_S3_
	.cfi_endproc

	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP12netlist_elemS4_EET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP12netlist_elemS4_EET0_T_S6_S5_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP12netlist_elemS4_EET0_T_S6_S5_
	.align	16, 0x90
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP12netlist_elemS4_EET0_T_S6_S5_,@function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP12netlist_elemS4_EET0_T_S6_S5_: # @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP12netlist_elemS4_EET0_T_S6_S5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp931:
	.cfi_def_cfa_offset 16
.Ltmp932:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp933:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt4copyIPP12netlist_elemS2_ET0_T_S4_S3_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end160:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP12netlist_elemS4_EET0_T_S6_S5_, .Lfunc_end160-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP12netlist_elemS4_EET0_T_S6_S5_
	.cfi_endproc

	.section	.text._ZSt4copyIPP12netlist_elemS2_ET0_T_S4_S3_,"axG",@progbits,_ZSt4copyIPP12netlist_elemS2_ET0_T_S4_S3_,comdat
	.weak	_ZSt4copyIPP12netlist_elemS2_ET0_T_S4_S3_
	.align	16, 0x90
	.type	_ZSt4copyIPP12netlist_elemS2_ET0_T_S4_S3_,@function
_ZSt4copyIPP12netlist_elemS2_ET0_T_S4_S3_: # @_ZSt4copyIPP12netlist_elemS2_ET0_T_S4_S3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp934:
	.cfi_def_cfa_offset 16
.Ltmp935:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp936:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp937:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZSt12__miter_baseIPP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES4_
	movq	%rax, %rbx
	movq	-24(%rbp), %rdi
	callq	_ZSt12__miter_baseIPP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES4_
	movq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZSt14__copy_move_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end161:
	.size	_ZSt4copyIPP12netlist_elemS2_ET0_T_S4_S3_, .Lfunc_end161-_ZSt4copyIPP12netlist_elemS2_ET0_T_S4_S3_
	.cfi_endproc

	.section	.text._ZSt12__miter_baseIPP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES4_,"axG",@progbits,_ZSt12__miter_baseIPP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES4_,comdat
	.weak	_ZSt12__miter_baseIPP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES4_
	.align	16, 0x90
	.type	_ZSt12__miter_baseIPP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES4_,@function
_ZSt12__miter_baseIPP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES4_: # @_ZSt12__miter_baseIPP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp938:
	.cfi_def_cfa_offset 16
.Ltmp939:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp940:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt10_Iter_baseIPP12netlist_elemLb0EE7_S_baseES2_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end162:
	.size	_ZSt12__miter_baseIPP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES4_, .Lfunc_end162-_ZSt12__miter_baseIPP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES4_
	.cfi_endproc

	.section	.text._ZSt14__copy_move_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	.align	16, 0x90
	.type	_ZSt14__copy_move_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_,@function
_ZSt14__copy_move_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_: # @_ZSt14__copy_move_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp941:
	.cfi_def_cfa_offset 16
.Ltmp942:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp943:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Ltmp944:
	.cfi_offset %rbx, -32
.Ltmp945:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%rax, %r14
	movq	-32(%rbp), %rdi
	callq	_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%rax, %rbx
	movq	-40(%rbp), %rdi
	callq	_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt13__copy_move_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end163:
	.size	_ZSt14__copy_move_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_, .Lfunc_end163-_ZSt14__copy_move_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	.cfi_endproc

	.section	.text._ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_,"axG",@progbits,_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_,comdat
	.weak	_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_
	.align	16, 0x90
	.type	_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_,@function
_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_: # @_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp946:
	.cfi_def_cfa_offset 16
.Ltmp947:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp948:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt10_Iter_baseIPP12netlist_elemLb0EE7_S_baseES2_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end164:
	.size	_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_, .Lfunc_end164-_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_
	.cfi_endproc

	.section	.text._ZSt13__copy_move_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_,comdat
	.weak	_ZSt13__copy_move_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	.align	16, 0x90
	.type	_ZSt13__copy_move_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_,@function
_ZSt13__copy_move_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_: # @_ZSt13__copy_move_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp949:
	.cfi_def_cfa_offset 16
.Ltmp950:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp951:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12netlist_elemEEPT_PKS5_S8_S6_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end165:
	.size	_ZSt13__copy_move_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_, .Lfunc_end165-_ZSt13__copy_move_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	.cfi_endproc

	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12netlist_elemEEPT_PKS5_S8_S6_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12netlist_elemEEPT_PKS5_S8_S6_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12netlist_elemEEPT_PKS5_S8_S6_
	.align	16, 0x90
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12netlist_elemEEPT_PKS5_S8_S6_,@function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12netlist_elemEEPT_PKS5_S8_S6_: # @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12netlist_elemEEPT_PKS5_S8_S6_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp952:
	.cfi_def_cfa_offset 16
.Ltmp953:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp954:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -32(%rbp)
	je	.LBB166_2
# BB#1:
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	callq	memmove
.LBB166_2:
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	addq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end166:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12netlist_elemEEPT_PKS5_S8_S6_, .Lfunc_end166-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12netlist_elemEEPT_PKS5_S8_S6_
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIPP12netlist_elemLb0EE7_S_baseES2_,"axG",@progbits,_ZNSt10_Iter_baseIPP12netlist_elemLb0EE7_S_baseES2_,comdat
	.weak	_ZNSt10_Iter_baseIPP12netlist_elemLb0EE7_S_baseES2_
	.align	16, 0x90
	.type	_ZNSt10_Iter_baseIPP12netlist_elemLb0EE7_S_baseES2_,@function
_ZNSt10_Iter_baseIPP12netlist_elemLb0EE7_S_baseES2_: # @_ZNSt10_Iter_baseIPP12netlist_elemLb0EE7_S_baseES2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp955:
	.cfi_def_cfa_offset 16
.Ltmp956:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp957:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end167:
	.size	_ZNSt10_Iter_baseIPP12netlist_elemLb0EE7_S_baseES2_, .Lfunc_end167-_ZNSt10_Iter_baseIPP12netlist_elemLb0EE7_S_baseES2_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP12netlist_elemE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE8allocateEmPKv
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE8allocateEmPKv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp958:
	.cfi_def_cfa_offset 16
.Ltmp959:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp960:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp961:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rbx
	callq	_ZNK9__gnu_cxx13new_allocatorIP12netlist_elemE8max_sizeEv
	cmpq	%rax, %rbx
	ja	.LBB168_2
# BB#1:
	movq	-24(%rbp), %rdi
	shlq	$3, %rdi
	callq	_Znwm
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB168_2:
	callq	_ZSt17__throw_bad_allocv
.Lfunc_end168:
	.size	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE8allocateEmPKv, .Lfunc_end168-_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE8allocateEmPKv
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx13new_allocatorIP12netlist_elemE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIP12netlist_elemE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIP12netlist_elemE8max_sizeEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIP12netlist_elemE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIP12netlist_elemE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIP12netlist_elemE8max_sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp962:
	.cfi_def_cfa_offset 16
.Ltmp963:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp964:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	popq	%rbp
	retq
.Lfunc_end169:
	.size	_ZNK9__gnu_cxx13new_allocatorIP12netlist_elemE8max_sizeEv, .Lfunc_end169-_ZNK9__gnu_cxx13new_allocatorIP12netlist_elemE8max_sizeEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS3_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS3_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS3_,@function
_ZN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS3_: # @_ZN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp965:
	.cfi_def_cfa_offset 16
.Ltmp966:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp967:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	retq
.Lfunc_end170:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS3_, .Lfunc_end170-_ZN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS3_
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP12netlist_elemSaIS1_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIP12netlist_elemSaIS1_EE8max_sizeEv,comdat
	.weak	_ZNKSt6vectorIP12netlist_elemSaIS1_EE8max_sizeEv
	.align	16, 0x90
	.type	_ZNKSt6vectorIP12netlist_elemSaIS1_EE8max_sizeEv,@function
_ZNKSt6vectorIP12netlist_elemSaIS1_EE8max_sizeEv: # @_ZNKSt6vectorIP12netlist_elemSaIS1_EE8max_sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp968:
	.cfi_def_cfa_offset 16
.Ltmp969:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp970:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNKSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE8max_sizeERKS3_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end171:
	.size	_ZNKSt6vectorIP12netlist_elemSaIS1_EE8max_sizeEv, .Lfunc_end171-_ZNKSt6vectorIP12netlist_elemSaIS1_EE8max_sizeEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv,comdat
	.weak	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	.align	16, 0x90
	.type	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv,@function
_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv: # @_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp971:
	.cfi_def_cfa_offset 16
.Ltmp972:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp973:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	popq	%rbp
	retq
.Lfunc_end172:
	.size	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv, .Lfunc_end172-_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	.cfi_endproc

	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.align	16, 0x90
	.type	_ZSt3maxImERKT_S2_S2_,@function
_ZSt3maxImERKT_S2_S2_:                  # @_ZSt3maxImERKT_S2_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp974:
	.cfi_def_cfa_offset 16
.Ltmp975:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp976:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	(%rsi), %rax
	jae	.LBB173_2
# BB#1:
	movq	-24(%rbp), %rax
	jmp	.LBB173_3
.LBB173_2:
	movq	-16(%rbp), %rax
.LBB173_3:
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end173:
	.size	_ZSt3maxImERKT_S2_S2_, .Lfunc_end173-_ZSt3maxImERKT_S2_S2_
	.cfi_endproc

	.section	.text._ZNKSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
	.align	16, 0x90
	.type	_ZNKSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp977:
	.cfi_def_cfa_offset 16
.Ltmp978:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp979:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end174:
	.size	_ZNKSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end174-_ZNKSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE8max_sizeERKS3_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE8max_sizeERKS3_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE8max_sizeERKS3_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE8max_sizeERKS3_,@function
_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE8max_sizeERKS3_: # @_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE8max_sizeERKS3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp980:
	.cfi_def_cfa_offset 16
.Ltmp981:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp982:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNK9__gnu_cxx13new_allocatorIP12netlist_elemE8max_sizeEv
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end175:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE8max_sizeERKS3_, .Lfunc_end175-_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE8max_sizeERKS3_
	.cfi_endproc

	.section	.text._ZSt23__copy_move_backward_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	.align	16, 0x90
	.type	_ZSt23__copy_move_backward_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_,@function
_ZSt23__copy_move_backward_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_: # @_ZSt23__copy_move_backward_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp983:
	.cfi_def_cfa_offset 16
.Ltmp984:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp985:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Ltmp986:
	.cfi_offset %rbx, -32
.Ltmp987:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%rax, %r14
	movq	-32(%rbp), %rdi
	callq	_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%rax, %rbx
	movq	-40(%rbp), %rdi
	callq	_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt22__copy_move_backward_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end176:
	.size	_ZSt23__copy_move_backward_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_, .Lfunc_end176-_ZSt23__copy_move_backward_a2ILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	.cfi_endproc

	.section	.text._ZSt22__copy_move_backward_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	.align	16, 0x90
	.type	_ZSt22__copy_move_backward_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_,@function
_ZSt22__copy_move_backward_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_: # @_ZSt22__copy_move_backward_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp988:
	.cfi_def_cfa_offset 16
.Ltmp989:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp990:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemEEPT_PKS5_S8_S6_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end177:
	.size	_ZSt22__copy_move_backward_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_, .Lfunc_end177-_ZSt22__copy_move_backward_aILb0EPP12netlist_elemS2_ET1_T0_S4_S3_
	.cfi_endproc

	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemEEPT_PKS5_S8_S6_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemEEPT_PKS5_S8_S6_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemEEPT_PKS5_S8_S6_
	.align	16, 0x90
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemEEPT_PKS5_S8_S6_,@function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemEEPT_PKS5_S8_S6_: # @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemEEPT_PKS5_S8_S6_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp991:
	.cfi_def_cfa_offset 16
.Ltmp992:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp993:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -32(%rbp)
	je	.LBB178_2
# BB#1:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	subq	%rdx, %rdi
	movq	-8(%rbp), %rsi
	callq	memmove
.LBB178_2:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	subq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end178:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemEEPT_PKS5_S8_S6_, .Lfunc_end178-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemEEPT_PKS5_S8_S6_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP12netlist_elemE9constructEPS2_RKS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE9constructEPS2_RKS2_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE9constructEPS2_RKS2_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE9constructEPS2_RKS2_,@function
_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE9constructEPS2_RKS2_: # @_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE9constructEPS2_RKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp994:
	.cfi_def_cfa_offset 16
.Ltmp995:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp996:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	retq
.Lfunc_end179:
	.size	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE9constructEPS2_RKS2_, .Lfunc_end179-_ZN9__gnu_cxx13new_allocatorIP12netlist_elemE9constructEPS2_RKS2_
	.cfi_endproc

	.section	.text._ZN7threads9AtomicPtrI10location_tE10PrivateSetEPS1_,"axG",@progbits,_ZN7threads9AtomicPtrI10location_tE10PrivateSetEPS1_,comdat
	.weak	_ZN7threads9AtomicPtrI10location_tE10PrivateSetEPS1_
	.align	16, 0x90
	.type	_ZN7threads9AtomicPtrI10location_tE10PrivateSetEPS1_,@function
_ZN7threads9AtomicPtrI10location_tE10PrivateSetEPS1_: # @_ZN7threads9AtomicPtrI10location_tE10PrivateSetEPS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp997:
	.cfi_def_cfa_offset 16
.Ltmp998:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp999:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1000:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNK7threads9AtomicPtrI10location_tE3GetEv
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end180:
	.size	_ZN7threads9AtomicPtrI10location_tE10PrivateSetEPS1_, .Lfunc_end180-_ZN7threads9AtomicPtrI10location_tE10PrivateSetEPS1_
	.cfi_endproc

	.section	.text._ZNKSt6vectorI12netlist_elemSaIS0_EE14_M_range_checkEm,"axG",@progbits,_ZNKSt6vectorI12netlist_elemSaIS0_EE14_M_range_checkEm,comdat
	.weak	_ZNKSt6vectorI12netlist_elemSaIS0_EE14_M_range_checkEm
	.align	16, 0x90
	.type	_ZNKSt6vectorI12netlist_elemSaIS0_EE14_M_range_checkEm,@function
_ZNKSt6vectorI12netlist_elemSaIS0_EE14_M_range_checkEm: # @_ZNKSt6vectorI12netlist_elemSaIS0_EE14_M_range_checkEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1001:
	.cfi_def_cfa_offset 16
.Ltmp1002:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1003:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1004:
	.cfi_offset %rbx, -24
	movq	%rsi, %rbx
	movq	%rdi, -16(%rbp)
	movq	%rbx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	jae	.LBB181_2
# BB#1:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB181_2:
	movl	$.L.str.8.21, %edi
	callq	_ZSt20__throw_out_of_rangePKc
.Lfunc_end181:
	.size	_ZNKSt6vectorI12netlist_elemSaIS0_EE14_M_range_checkEm, .Lfunc_end181-_ZNKSt6vectorI12netlist_elemSaIS0_EE14_M_range_checkEm
	.cfi_endproc

	.section	.text._ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv,comdat
	.weak	_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv
	.align	16, 0x90
	.type	_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv,@function
_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv: # @_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1005:
	.cfi_def_cfa_offset 16
.Ltmp1006:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1007:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$6, %rax
	popq	%rbp
	retq
.Lfunc_end182:
	.size	_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv, .Lfunc_end182-_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorI10location_tSaIS0_EE14_M_range_checkEm,"axG",@progbits,_ZNKSt6vectorI10location_tSaIS0_EE14_M_range_checkEm,comdat
	.weak	_ZNKSt6vectorI10location_tSaIS0_EE14_M_range_checkEm
	.align	16, 0x90
	.type	_ZNKSt6vectorI10location_tSaIS0_EE14_M_range_checkEm,@function
_ZNKSt6vectorI10location_tSaIS0_EE14_M_range_checkEm: # @_ZNKSt6vectorI10location_tSaIS0_EE14_M_range_checkEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1008:
	.cfi_def_cfa_offset 16
.Ltmp1009:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1010:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1011:
	.cfi_offset %rbx, -24
	movq	%rsi, %rbx
	movq	%rdi, -16(%rbp)
	movq	%rbx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	jae	.LBB183_2
# BB#1:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB183_2:
	movl	$.L.str.8.21, %edi
	callq	_ZSt20__throw_out_of_rangePKc
.Lfunc_end183:
	.size	_ZNKSt6vectorI10location_tSaIS0_EE14_M_range_checkEm, .Lfunc_end183-_ZNKSt6vectorI10location_tSaIS0_EE14_M_range_checkEm
	.cfi_endproc

	.section	.text._ZNSt6vectorI10location_tSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI10location_tSaIS0_EEixEm,comdat
	.weak	_ZNSt6vectorI10location_tSaIS0_EEixEm
	.align	16, 0x90
	.type	_ZNSt6vectorI10location_tSaIS0_EEixEm,@function
_ZNSt6vectorI10location_tSaIS0_EEixEm:  # @_ZNSt6vectorI10location_tSaIS0_EEixEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1012:
	.cfi_def_cfa_offset 16
.Ltmp1013:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1014:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	leaq	(,%rsi,8), %rax
	addq	(%rcx), %rax
	popq	%rbp
	retq
.Lfunc_end184:
	.size	_ZNSt6vectorI10location_tSaIS0_EEixEm, .Lfunc_end184-_ZNSt6vectorI10location_tSaIS0_EEixEm
	.cfi_endproc

	.section	.text._ZNKSt6vectorI10location_tSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv,comdat
	.weak	_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv
	.align	16, 0x90
	.type	_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv,@function
_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv: # @_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1015:
	.cfi_def_cfa_offset 16
.Ltmp1016:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1017:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	popq	%rbp
	retq
.Lfunc_end185:
	.size	_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv, .Lfunc_end185-_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_range_checkEm,"axG",@progbits,_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_range_checkEm,comdat
	.weak	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_range_checkEm
	.align	16, 0x90
	.type	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_range_checkEm,@function
_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_range_checkEm: # @_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_range_checkEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1018:
	.cfi_def_cfa_offset 16
.Ltmp1019:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1020:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1021:
	.cfi_offset %rbx, -24
	movq	%rsi, %rbx
	movq	%rdi, -16(%rbp)
	movq	%rbx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv
	cmpq	%rax, %rbx
	jae	.LBB186_2
# BB#1:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB186_2:
	movl	$.L.str.8.21, %edi
	callq	_ZSt20__throw_out_of_rangePKc
.Lfunc_end186:
	.size	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_range_checkEm, .Lfunc_end186-_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_range_checkEm
	.cfi_endproc

	.section	.text._ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEixEm,"axG",@progbits,_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEixEm,comdat
	.weak	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEixEm
	.align	16, 0x90
	.type	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEixEm,@function
_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEixEm: # @_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEixEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1022:
	.cfi_def_cfa_offset 16
.Ltmp1023:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1024:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	leaq	(%rsi,%rsi,2), %rax
	shlq	$3, %rax
	addq	(%rcx), %rax
	popq	%rbp
	retq
.Lfunc_end187:
	.size	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEixEm, .Lfunc_end187-_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EEixEm
	.cfi_endproc

	.section	.text._ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv,comdat
	.weak	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv
	.align	16, 0x90
	.type	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv,@function
_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv: # @_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1025:
	.cfi_def_cfa_offset 16
.Ltmp1026:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1027:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	8(%rdi), %rcx
	subq	(%rdi), %rcx
	sarq	$3, %rcx
	movabsq	$-6148914691236517205, %rax # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rax
	popq	%rbp
	retq
.Lfunc_end188:
	.size	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv, .Lfunc_end188-_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv
	.cfi_endproc

	.section	.text._ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE3endEv,"axG",@progbits,_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE3endEv,comdat
	.weak	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE3endEv
	.align	16, 0x90
	.type	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE3endEv,@function
_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE3endEv: # @_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE3endEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1028:
	.cfi_def_cfa_offset 16
.Ltmp1029:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1030:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	leaq	8(%rdi), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEC2ERKS5_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end189:
	.size	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE3endEv, .Lfunc_end189-_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE3endEv
	.cfi_endproc

	.section	.text._ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_,"axG",@progbits,_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_,comdat
	.weak	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_
	.align	16, 0x90
	.type	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_,@function
_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_: # @_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1031:
	.cfi_def_cfa_offset 16
.Ltmp1032:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1033:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end190:
	.size	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_, .Lfunc_end190-_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_
	.cfi_endproc

	.section	.text._ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE15_M_erase_at_endEPS2_,"axG",@progbits,_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE15_M_erase_at_endEPS2_,comdat
	.weak	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE15_M_erase_at_endEPS2_
	.align	16, 0x90
	.type	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE15_M_erase_at_endEPS2_,@function
_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE15_M_erase_at_endEPS2_: # @_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE15_M_erase_at_endEPS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1034:
	.cfi_def_cfa_offset 16
.Ltmp1035:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1036:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1037:
	.cfi_offset %rbx, -40
.Ltmp1038:
	.cfi_offset %r14, -32
.Ltmp1039:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, -32(%rbp)
	movq	%r14, -40(%rbp)
	movq	-32(%rbp), %rbx
	movq	8(%rbx), %r15
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end191:
	.size	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE15_M_erase_at_endEPS2_, .Lfunc_end191-_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE15_M_erase_at_endEPS2_
	.cfi_endproc

	.section	.text._ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_,"axG",@progbits,_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_,comdat
	.weak	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_
	.align	16, 0x90
	.type	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_,@function
_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_: # @_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception21
# BB#0:
	pushq	%rbp
.Ltmp1108:
	.cfi_def_cfa_offset 16
.Ltmp1109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1110:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
.Ltmp1111:
	.cfi_offset %rbx, -56
.Ltmp1112:
	.cfi_offset %r12, -48
.Ltmp1113:
	.cfi_offset %r13, -40
.Ltmp1114:
	.cfi_offset %r14, -32
.Ltmp1115:
	.cfi_offset %r15, -24
	movq	%rsi, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB192_29
# BB#1:
	movq	-56(%rbp), %r15
	movq	16(%r15), %rax
	subq	8(%r15), %rax
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %r13 # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%r13, %rax
	cmpq	-64(%rbp), %rax
	jb	.LBB192_20
# BB#2:
	movq	-72(%rbp), %rsi
	leaq	-96(%rbp), %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EEC2ERKS2_
.Ltmp1072:
	movq	%r15, %rdi
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE3endEv
.Ltmp1073:
# BB#3:
	movq	%rax, -112(%rbp)
.Ltmp1074:
	leaq	-112(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
.Ltmp1075:
# BB#4:
	movq	%rax, -104(%rbp)
	movq	8(%r15), %rax
	movq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jbe	.LBB192_12
# BB#5:
	movq	8(%r15), %r14
	xorl	%ebx, %ebx
	subq	-64(%rbp), %rbx
.Ltmp1090:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
.Ltmp1091:
# BB#6:
	leaq	(%rbx,%rbx,2), %rcx
	leaq	(%r14,%rcx,8), %rdi
.Ltmp1092:
	movq	%r14, %rsi
	movq	%r14, %rdx
	movq	%rax, %rcx
	callq	_ZSt22__uninitialized_move_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_
.Ltmp1093:
# BB#7:
	movq	-64(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	%rax, 8(%r15)
.Ltmp1094:
	leaq	-48(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv
.Ltmp1095:
# BB#8:
	movq	(%rax), %rdi
	movq	-136(%rbp), %rdx
	xorl	%eax, %eax
	subq	-64(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rdx,%rax,8), %rsi
.Ltmp1096:
	callq	_ZSt13copy_backwardIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_
.Ltmp1097:
# BB#9:
.Ltmp1098:
	leaq	-48(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv
.Ltmp1099:
# BB#10:
	movq	(%rax), %rbx
.Ltmp1100:
	leaq	-48(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv
.Ltmp1101:
# BB#11:
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rax,%rcx,8), %rsi
.Ltmp1102:
	leaq	-96(%rbp), %rdx
	movq	%rbx, %rdi
	callq	_ZSt4fillIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RKT0_
.Ltmp1103:
	jmp	.LBB192_19
.LBB192_20:
	movq	-64(%rbp), %rsi
	movl	$.L.str.7.22, %edx
	movq	%r15, %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE12_M_check_lenEmPKc
	movq	%rax, -144(%rbp)
	movq	%r15, %rdi
	callq	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE5beginEv
	movq	%rax, -160(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rsi
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE11_M_allocateEm
	movq	%rax, -168(%rbp)
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$3, %rbx
	addq	-168(%rbp), %rbx
	movq	-64(%rbp), %r14
	movq	-72(%rbp), %r12
.Ltmp1040:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
.Ltmp1041:
# BB#21:
.Ltmp1042:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt24__uninitialized_fill_n_aIPSt6vectorI10location_tSaIS1_EEmS3_S3_EvT_T0_RKT1_RSaIT2_E
.Ltmp1043:
# BB#22:
	movq	$0, -176(%rbp)
	movq	(%r15), %r14
.Ltmp1044:
	leaq	-48(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv
.Ltmp1045:
# BB#23:
	movq	(%rax), %rbx
	movq	-168(%rbp), %r12
.Ltmp1046:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
.Ltmp1047:
# BB#24:
.Ltmp1048:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_
.Ltmp1049:
# BB#25:
	movq	%rax, -176(%rbp)
	movq	-64(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, -176(%rbp)
.Ltmp1050:
	leaq	-48(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv
.Ltmp1051:
# BB#26:
	movq	(%rax), %rbx
	movq	8(%r15), %r14
	movq	-176(%rbp), %r12
.Ltmp1052:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
.Ltmp1053:
# BB#27:
.Ltmp1054:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_
.Ltmp1055:
# BB#28:
	movq	%rax, -176(%rbp)
	movq	(%r15), %rbx
	movq	8(%r15), %r14
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E
	movq	(%r15), %rsi
	movq	16(%r15), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
	imulq	%r13, %rdx
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE13_M_deallocateEPS3_m
	movq	-168(%rbp), %rax
	movq	%rax, (%r15)
	movq	-176(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-144(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	-168(%rbp), %rax
	movq	%rax, 16(%r15)
	jmp	.LBB192_29
.LBB192_12:
	movq	8(%r15), %r14
	movq	-64(%rbp), %rbx
	subq	-104(%rbp), %rbx
.Ltmp1076:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
.Ltmp1077:
# BB#13:
.Ltmp1078:
	leaq	-96(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rcx
	callq	_ZSt24__uninitialized_fill_n_aIPSt6vectorI10location_tSaIS1_EEmS3_S3_EvT_T0_RKT1_RSaIT2_E
.Ltmp1079:
# BB#14:
	movq	-64(%rbp), %rax
	subq	-104(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	%rax, 8(%r15)
.Ltmp1080:
	leaq	-48(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv
.Ltmp1081:
# BB#15:
	movq	(%rax), %rbx
	movq	-136(%rbp), %r14
	movq	8(%r15), %r12
.Ltmp1082:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
.Ltmp1083:
# BB#16:
.Ltmp1084:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt22__uninitialized_move_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_
.Ltmp1085:
# BB#17:
	movq	-104(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	%rax, 8(%r15)
.Ltmp1086:
	leaq	-48(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv
.Ltmp1087:
# BB#18:
	movq	(%rax), %rdi
	movq	-136(%rbp), %rsi
.Ltmp1088:
	leaq	-96(%rbp), %rdx
	callq	_ZSt4fillIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RKT0_
.Ltmp1089:
.LBB192_19:
	leaq	-96(%rbp), %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EED2Ev
.LBB192_29:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB192_38:
.Ltmp1104:
	movq	%rax, -120(%rbp)
	movl	%edx, -124(%rbp)
.Ltmp1105:
	leaq	-96(%rbp), %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EED2Ev
.Ltmp1106:
	jmp	.LBB192_39
.LBB192_30:
.Ltmp1056:
	movq	%rax, -120(%rbp)
	movl	%edx, -124(%rbp)
	movq	-120(%rbp), %rdi
	callq	__cxa_begin_catch
	cmpq	$0, -176(%rbp)
	je	.LBB192_31
# BB#34:
	movq	-168(%rbp), %rbx
	movq	-176(%rbp), %r14
.Ltmp1061:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
.Ltmp1062:
# BB#35:
.Ltmp1063:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E
.Ltmp1064:
	jmp	.LBB192_36
.LBB192_31:
	movq	-152(%rbp), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$3, %r14
	addq	-168(%rbp), %r14
	movq	-64(%rbp), %rbx
.Ltmp1057:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
.Ltmp1058:
# BB#32:
	leaq	(%rbx,%rbx,2), %rcx
	leaq	(%r14,%rcx,8), %rsi
.Ltmp1059:
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RSaIT0_E
.Ltmp1060:
.LBB192_36:
	movq	-168(%rbp), %rsi
	movq	-144(%rbp), %rdx
.Ltmp1065:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE13_M_deallocateEPS3_m
.Ltmp1066:
# BB#37:
.Ltmp1067:
	callq	__cxa_rethrow
.Ltmp1068:
# BB#41:
.LBB192_33:
.Ltmp1069:
	movq	%rax, -120(%rbp)
	movl	%edx, -124(%rbp)
.Ltmp1070:
	callq	__cxa_end_catch
.Ltmp1071:
.LBB192_39:
	movq	-120(%rbp), %rdi
	callq	_Unwind_Resume
.LBB192_40:
.Ltmp1107:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end192:
	.size	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_, .Lfunc_end192-_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table192:
.Lexception21:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\245\201\200\200"      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\234\001"              # Call site table length
	.long	.Lfunc_begin21-.Lfunc_begin21 # >> Call Site 1 <<
	.long	.Ltmp1072-.Lfunc_begin21 #   Call between .Lfunc_begin21 and .Ltmp1072
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1072-.Lfunc_begin21 # >> Call Site 2 <<
	.long	.Ltmp1103-.Ltmp1072     #   Call between .Ltmp1072 and .Ltmp1103
	.long	.Ltmp1104-.Lfunc_begin21 #     jumps to .Ltmp1104
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1103-.Lfunc_begin21 # >> Call Site 3 <<
	.long	.Ltmp1040-.Ltmp1103     #   Call between .Ltmp1103 and .Ltmp1040
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1040-.Lfunc_begin21 # >> Call Site 4 <<
	.long	.Ltmp1055-.Ltmp1040     #   Call between .Ltmp1040 and .Ltmp1055
	.long	.Ltmp1056-.Lfunc_begin21 #     jumps to .Ltmp1056
	.byte	1                       #   On action: 1
	.long	.Ltmp1055-.Lfunc_begin21 # >> Call Site 5 <<
	.long	.Ltmp1076-.Ltmp1055     #   Call between .Ltmp1055 and .Ltmp1076
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1076-.Lfunc_begin21 # >> Call Site 6 <<
	.long	.Ltmp1089-.Ltmp1076     #   Call between .Ltmp1076 and .Ltmp1089
	.long	.Ltmp1104-.Lfunc_begin21 #     jumps to .Ltmp1104
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1089-.Lfunc_begin21 # >> Call Site 7 <<
	.long	.Ltmp1105-.Ltmp1089     #   Call between .Ltmp1089 and .Ltmp1105
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1105-.Lfunc_begin21 # >> Call Site 8 <<
	.long	.Ltmp1106-.Ltmp1105     #   Call between .Ltmp1105 and .Ltmp1106
	.long	.Ltmp1107-.Lfunc_begin21 #     jumps to .Ltmp1107
	.byte	1                       #   On action: 1
	.long	.Ltmp1106-.Lfunc_begin21 # >> Call Site 9 <<
	.long	.Ltmp1061-.Ltmp1106     #   Call between .Ltmp1106 and .Ltmp1061
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1061-.Lfunc_begin21 # >> Call Site 10 <<
	.long	.Ltmp1068-.Ltmp1061     #   Call between .Ltmp1061 and .Ltmp1068
	.long	.Ltmp1069-.Lfunc_begin21 #     jumps to .Ltmp1069
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1070-.Lfunc_begin21 # >> Call Site 11 <<
	.long	.Ltmp1071-.Ltmp1070     #   Call between .Ltmp1070 and .Ltmp1071
	.long	.Ltmp1107-.Lfunc_begin21 #     jumps to .Ltmp1107
	.byte	1                       #   On action: 1
	.long	.Ltmp1071-.Lfunc_begin21 # >> Call Site 12 <<
	.long	.Lfunc_end192-.Ltmp1071 #   Call between .Ltmp1071 and .Lfunc_end192
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZN9__gnu_cxxmiIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,"axG",@progbits,_ZN9__gnu_cxxmiIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,comdat
	.weak	_ZN9__gnu_cxxmiIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.align	16, 0x90
	.type	_ZN9__gnu_cxxmiIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,@function
_ZN9__gnu_cxxmiIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_: # @_ZN9__gnu_cxxmiIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1116:
	.cfi_def_cfa_offset 16
.Ltmp1117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1118:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1119:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv
	movq	(%rax), %rbx
	movq	-24(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv
	subq	(%rax), %rbx
	sarq	$3, %rbx
	movabsq	$-6148914691236517205, %rax # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end193:
	.size	_ZN9__gnu_cxxmiIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_, .Lfunc_end193-_ZN9__gnu_cxxmiIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.cfi_endproc

	.section	.text._ZSt22__uninitialized_move_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_,"axG",@progbits,_ZSt22__uninitialized_move_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_,comdat
	.weak	_ZSt22__uninitialized_move_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_
	.align	16, 0x90
	.type	_ZSt22__uninitialized_move_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_,@function
_ZSt22__uninitialized_move_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_: # @_ZSt22__uninitialized_move_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1120:
	.cfi_def_cfa_offset 16
.Ltmp1121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1122:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt22__uninitialized_copy_aIPSt6vectorI10location_tSaIS1_EES4_S3_ET0_T_S6_S5_RSaIT1_E
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end194:
	.size	_ZSt22__uninitialized_move_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_, .Lfunc_end194-_ZSt22__uninitialized_move_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1123:
	.cfi_def_cfa_offset 16
.Ltmp1124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1125:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end195:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv, .Lfunc_end195-_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEE4baseEv
	.cfi_endproc

	.section	.text._ZSt13copy_backwardIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_,"axG",@progbits,_ZSt13copy_backwardIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_,comdat
	.weak	_ZSt13copy_backwardIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_
	.align	16, 0x90
	.type	_ZSt13copy_backwardIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_,@function
_ZSt13copy_backwardIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_: # @_ZSt13copy_backwardIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1126:
	.cfi_def_cfa_offset 16
.Ltmp1127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1128:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1129:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZSt12__miter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Miter_baseIT_E13iterator_typeES6_
	movq	%rax, %rbx
	movq	-24(%rbp), %rdi
	callq	_ZSt12__miter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Miter_baseIT_E13iterator_typeES6_
	movq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZSt23__copy_move_backward_a2ILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end196:
	.size	_ZSt13copy_backwardIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_, .Lfunc_end196-_ZSt13copy_backwardIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_
	.cfi_endproc

	.section	.text._ZSt4fillIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RKT0_,"axG",@progbits,_ZSt4fillIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RKT0_,comdat
	.weak	_ZSt4fillIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RKT0_
	.align	16, 0x90
	.type	_ZSt4fillIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RKT0_,@function
_ZSt4fillIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RKT0_: # @_ZSt4fillIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RKT0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1130:
	.cfi_def_cfa_offset 16
.Ltmp1131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1132:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1133:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_
	movq	%rax, %rbx
	movq	-24(%rbp), %rdi
	callq	_ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_
	movq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZSt8__fill_aIPSt6vectorI10location_tSaIS1_EES3_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_SA_RKS7_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end197:
	.size	_ZSt4fillIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RKT0_, .Lfunc_end197-_ZSt4fillIPSt6vectorI10location_tSaIS1_EES3_EvT_S5_RKT0_
	.cfi_endproc

	.section	.text._ZSt24__uninitialized_fill_n_aIPSt6vectorI10location_tSaIS1_EEmS3_S3_EvT_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPSt6vectorI10location_tSaIS1_EEmS3_S3_EvT_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIPSt6vectorI10location_tSaIS1_EEmS3_S3_EvT_T0_RKT1_RSaIT2_E
	.align	16, 0x90
	.type	_ZSt24__uninitialized_fill_n_aIPSt6vectorI10location_tSaIS1_EEmS3_S3_EvT_T0_RKT1_RSaIT2_E,@function
_ZSt24__uninitialized_fill_n_aIPSt6vectorI10location_tSaIS1_EEmS3_S3_EvT_T0_RKT1_RSaIT2_E: # @_ZSt24__uninitialized_fill_n_aIPSt6vectorI10location_tSaIS1_EEmS3_S3_EvT_T0_RKT1_RSaIT2_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1134:
	.cfi_def_cfa_offset 16
.Ltmp1135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1136:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt20uninitialized_fill_nIPSt6vectorI10location_tSaIS1_EEmS3_EvT_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end198:
	.size	_ZSt24__uninitialized_fill_n_aIPSt6vectorI10location_tSaIS1_EEmS3_S3_EvT_T0_RKT1_RSaIT2_E, .Lfunc_end198-_ZSt24__uninitialized_fill_n_aIPSt6vectorI10location_tSaIS1_EEmS3_S3_EvT_T0_RKT1_RSaIT2_E
	.cfi_endproc

	.section	.text._ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE12_M_check_lenEmPKc
	.align	16, 0x90
	.type	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE12_M_check_lenEmPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1137:
	.cfi_def_cfa_offset 16
.Ltmp1138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1139:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp1140:
	.cfi_offset %rbx, -32
.Ltmp1141:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %r14
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE8max_sizeEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv
	subq	%rax, %rbx
	cmpq	-32(%rbp), %rbx
	jb	.LBB199_6
# BB#1:
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	addq	(%rax), %rbx
	movq	%rbx, -48(%rbp)
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE4sizeEv
	cmpq	%rax, %rbx
	jb	.LBB199_3
# BB#2:
	movq	-48(%rbp), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE8max_sizeEv
	cmpq	%rax, %rbx
	jbe	.LBB199_4
.LBB199_3:
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE8max_sizeEv
	jmp	.LBB199_5
.LBB199_4:
	movq	-48(%rbp), %rax
.LBB199_5:
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB199_6:
	movq	-40(%rbp), %rdi
	callq	_ZSt20__throw_length_errorPKc
.Lfunc_end199:
	.size	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE12_M_check_lenEmPKc, .Lfunc_end199-_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE12_M_check_lenEmPKc
	.cfi_endproc

	.section	.text._ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE5beginEv,"axG",@progbits,_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE5beginEv,comdat
	.weak	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE5beginEv
	.align	16, 0x90
	.type	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE5beginEv,@function
_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE5beginEv: # @_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE5beginEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1142:
	.cfi_def_cfa_offset 16
.Ltmp1143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1144:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEC2ERKS5_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end200:
	.size	_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE5beginEv, .Lfunc_end200-_ZNSt6vectorIS_I10location_tSaIS0_EESaIS2_EE5beginEv
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE11_M_allocateEm
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE11_M_allocateEm: # @_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE11_M_allocateEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1145:
	.cfi_def_cfa_offset 16
.Ltmp1146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1147:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB201_2
# BB#1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%edx, %edx
	callq	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8allocateEmPKv
.LBB201_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end201:
	.size	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE11_M_allocateEm, .Lfunc_end201-_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE11_M_allocateEm
	.cfi_endproc

	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_
	.align	16, 0x90
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_,@function
_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_: # @_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1148:
	.cfi_def_cfa_offset 16
.Ltmp1149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1150:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt22__uninitialized_copy_aIPSt6vectorI10location_tSaIS1_EES4_S3_ET0_T_S6_S5_RSaIT1_E
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end202:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_, .Lfunc_end202-_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorI10location_tSaIS1_EES4_SaIS3_EET0_T_S7_S6_RT1_
	.cfi_endproc

	.section	.text._ZSt22__uninitialized_copy_aIPSt6vectorI10location_tSaIS1_EES4_S3_ET0_T_S6_S5_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPSt6vectorI10location_tSaIS1_EES4_S3_ET0_T_S6_S5_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPSt6vectorI10location_tSaIS1_EES4_S3_ET0_T_S6_S5_RSaIT1_E
	.align	16, 0x90
	.type	_ZSt22__uninitialized_copy_aIPSt6vectorI10location_tSaIS1_EES4_S3_ET0_T_S6_S5_RSaIT1_E,@function
_ZSt22__uninitialized_copy_aIPSt6vectorI10location_tSaIS1_EES4_S3_ET0_T_S6_S5_RSaIT1_E: # @_ZSt22__uninitialized_copy_aIPSt6vectorI10location_tSaIS1_EES4_S3_ET0_T_S6_S5_RSaIT1_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1151:
	.cfi_def_cfa_offset 16
.Ltmp1152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1153:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt18uninitialized_copyIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end203:
	.size	_ZSt22__uninitialized_copy_aIPSt6vectorI10location_tSaIS1_EES4_S3_ET0_T_S6_S5_RSaIT1_E, .Lfunc_end203-_ZSt22__uninitialized_copy_aIPSt6vectorI10location_tSaIS1_EES4_S3_ET0_T_S6_S5_RSaIT1_E
	.cfi_endproc

	.section	.text._ZSt18uninitialized_copyIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_,"axG",@progbits,_ZSt18uninitialized_copyIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_,comdat
	.weak	_ZSt18uninitialized_copyIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_
	.align	16, 0x90
	.type	_ZSt18uninitialized_copyIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_,@function
_ZSt18uninitialized_copyIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_: # @_ZSt18uninitialized_copyIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1154:
	.cfi_def_cfa_offset 16
.Ltmp1155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1156:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorI10location_tSaIS3_EES6_EET0_T_S8_S7_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end204:
	.size	_ZSt18uninitialized_copyIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_, .Lfunc_end204-_ZSt18uninitialized_copyIPSt6vectorI10location_tSaIS1_EES4_ET0_T_S6_S5_
	.cfi_endproc

	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorI10location_tSaIS3_EES6_EET0_T_S8_S7_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorI10location_tSaIS3_EES6_EET0_T_S8_S7_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorI10location_tSaIS3_EES6_EET0_T_S8_S7_
	.align	16, 0x90
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorI10location_tSaIS3_EES6_EET0_T_S8_S7_,@function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorI10location_tSaIS3_EES6_EET0_T_S8_S7_: # @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorI10location_tSaIS3_EES6_EET0_T_S8_S7_
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception22
# BB#0:
	pushq	%rbp
.Ltmp1170:
	.cfi_def_cfa_offset 16
.Ltmp1171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1172:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdx, -32(%rbp)
	jmp	.LBB205_1
	.align	16, 0x90
.LBB205_4:                              #   in Loop: Header=BB205_1 Depth=1
	addq	$24, -8(%rbp)
	addq	$24, -32(%rbp)
.LBB205_1:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB205_7
# BB#2:                                 #   in Loop: Header=BB205_1 Depth=1
	movq	-32(%rbp), %rdi
.Ltmp1157:
	callq	_ZSt11__addressofISt6vectorI10location_tSaIS1_EEEPT_RS4_
.Ltmp1158:
# BB#3:                                 #   in Loop: Header=BB205_1 Depth=1
	movq	-8(%rbp), %rsi
.Ltmp1159:
	movq	%rax, %rdi
	callq	_ZSt10_ConstructISt6vectorI10location_tSaIS1_EES3_EvPT_RKT0_
.Ltmp1160:
	jmp	.LBB205_4
.LBB205_5:
.Ltmp1161:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
.Ltmp1162:
	callq	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EEEvT_S5_
.Ltmp1163:
# BB#6:
.Ltmp1164:
	callq	__cxa_rethrow
.Ltmp1165:
.LBB205_7:
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB205_8:
.Ltmp1166:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
.Ltmp1167:
	callq	__cxa_end_catch
.Ltmp1168:
# BB#9:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.LBB205_10:
.Ltmp1169:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end205:
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorI10location_tSaIS3_EES6_EET0_T_S8_S7_, .Lfunc_end205-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorI10location_tSaIS3_EES6_EET0_T_S8_S7_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table205:
.Lexception22:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	73                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Ltmp1157-.Lfunc_begin22 # >> Call Site 1 <<
	.long	.Ltmp1160-.Ltmp1157     #   Call between .Ltmp1157 and .Ltmp1160
	.long	.Ltmp1161-.Lfunc_begin22 #     jumps to .Ltmp1161
	.byte	1                       #   On action: 1
	.long	.Ltmp1160-.Lfunc_begin22 # >> Call Site 2 <<
	.long	.Ltmp1162-.Ltmp1160     #   Call between .Ltmp1160 and .Ltmp1162
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1162-.Lfunc_begin22 # >> Call Site 3 <<
	.long	.Ltmp1165-.Ltmp1162     #   Call between .Ltmp1162 and .Ltmp1165
	.long	.Ltmp1166-.Lfunc_begin22 #     jumps to .Ltmp1166
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1167-.Lfunc_begin22 # >> Call Site 4 <<
	.long	.Ltmp1168-.Ltmp1167     #   Call between .Ltmp1167 and .Ltmp1168
	.long	.Ltmp1169-.Lfunc_begin22 #     jumps to .Ltmp1169
	.byte	1                       #   On action: 1
	.long	.Ltmp1168-.Lfunc_begin22 # >> Call Site 5 <<
	.long	.Lfunc_end205-.Ltmp1168 #   Call between .Ltmp1168 and .Lfunc_end205
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZSt10_ConstructISt6vectorI10location_tSaIS1_EES3_EvPT_RKT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorI10location_tSaIS1_EES3_EvPT_RKT0_,comdat
	.weak	_ZSt10_ConstructISt6vectorI10location_tSaIS1_EES3_EvPT_RKT0_
	.align	16, 0x90
	.type	_ZSt10_ConstructISt6vectorI10location_tSaIS1_EES3_EvPT_RKT0_,@function
_ZSt10_ConstructISt6vectorI10location_tSaIS1_EES3_EvPT_RKT0_: # @_ZSt10_ConstructISt6vectorI10location_tSaIS1_EES3_EvPT_RKT0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1173:
	.cfi_def_cfa_offset 16
.Ltmp1174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1175:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EEC2ERKS2_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end206:
	.size	_ZSt10_ConstructISt6vectorI10location_tSaIS1_EES3_EvPT_RKT0_, .Lfunc_end206-_ZSt10_ConstructISt6vectorI10location_tSaIS1_EES3_EvPT_RKT0_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8allocateEmPKv
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8allocateEmPKv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1176:
	.cfi_def_cfa_offset 16
.Ltmp1177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1178:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1179:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rbx
	callq	_ZNK9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8max_sizeEv
	cmpq	%rax, %rbx
	ja	.LBB207_2
# BB#1:
	movq	-24(%rbp), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	_Znwm
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB207_2:
	callq	_ZSt17__throw_bad_allocv
.Lfunc_end207:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8allocateEmPKv, .Lfunc_end207-_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8allocateEmPKv
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8max_sizeEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8max_sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1180:
	.cfi_def_cfa_offset 16
.Ltmp1181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1182:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$768614336404564650, %rax # imm = 0xAAAAAAAAAAAAAAA
	popq	%rbp
	retq
.Lfunc_end208:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8max_sizeEv, .Lfunc_end208-_ZNK9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8max_sizeEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEC2ERKS5_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEC2ERKS5_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEC2ERKS5_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEC2ERKS5_,@function
_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEC2ERKS5_: # @_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEC2ERKS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1183:
	.cfi_def_cfa_offset 16
.Ltmp1184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1185:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	retq
.Lfunc_end209:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEC2ERKS5_, .Lfunc_end209-_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorI10location_tSaIS2_EES1_IS4_SaIS4_EEEC2ERKS5_
	.cfi_endproc

	.section	.text._ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE8max_sizeEv,comdat
	.weak	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE8max_sizeEv
	.align	16, 0x90
	.type	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE8max_sizeEv,@function
_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE8max_sizeEv: # @_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE8max_sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1186:
	.cfi_def_cfa_offset 16
.Ltmp1187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1188:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNKSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI10location_tSaIS2_EEEE8max_sizeERKS5_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end210:
	.size	_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE8max_sizeEv, .Lfunc_end210-_ZNKSt6vectorIS_I10location_tSaIS0_EESaIS2_EE8max_sizeEv
	.cfi_endproc

	.section	.text._ZNKSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	.align	16, 0x90
	.type	_ZNKSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1189:
	.cfi_def_cfa_offset 16
.Ltmp1190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1191:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end211:
	.size	_ZNKSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv, .Lfunc_end211-_ZNKSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI10location_tSaIS2_EEEE8max_sizeERKS5_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI10location_tSaIS2_EEEE8max_sizeERKS5_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI10location_tSaIS2_EEEE8max_sizeERKS5_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI10location_tSaIS2_EEEE8max_sizeERKS5_,@function
_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI10location_tSaIS2_EEEE8max_sizeERKS5_: # @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI10location_tSaIS2_EEEE8max_sizeERKS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1192:
	.cfi_def_cfa_offset 16
.Ltmp1193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1194:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNK9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEE8max_sizeEv
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end212:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI10location_tSaIS2_EEEE8max_sizeERKS5_, .Lfunc_end212-_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI10location_tSaIS2_EEEE8max_sizeERKS5_
	.cfi_endproc

	.section	.text._ZSt20uninitialized_fill_nIPSt6vectorI10location_tSaIS1_EEmS3_EvT_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPSt6vectorI10location_tSaIS1_EEmS3_EvT_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIPSt6vectorI10location_tSaIS1_EEmS3_EvT_T0_RKT1_
	.align	16, 0x90
	.type	_ZSt20uninitialized_fill_nIPSt6vectorI10location_tSaIS1_EEmS3_EvT_T0_RKT1_,@function
_ZSt20uninitialized_fill_nIPSt6vectorI10location_tSaIS1_EEmS3_EvT_T0_RKT1_: # @_ZSt20uninitialized_fill_nIPSt6vectorI10location_tSaIS1_EEmS3_EvT_T0_RKT1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1195:
	.cfi_def_cfa_offset 16
.Ltmp1196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1197:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI10location_tSaIS3_EEmS5_EEvT_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end213:
	.size	_ZSt20uninitialized_fill_nIPSt6vectorI10location_tSaIS1_EEmS3_EvT_T0_RKT1_, .Lfunc_end213-_ZSt20uninitialized_fill_nIPSt6vectorI10location_tSaIS1_EEmS3_EvT_T0_RKT1_
	.cfi_endproc

	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI10location_tSaIS3_EEmS5_EEvT_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI10location_tSaIS3_EEmS5_EEvT_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI10location_tSaIS3_EEmS5_EEvT_T0_RKT1_
	.align	16, 0x90
	.type	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI10location_tSaIS3_EEmS5_EEvT_T0_RKT1_,@function
_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI10location_tSaIS3_EEmS5_EEvT_T0_RKT1_: # @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI10location_tSaIS3_EEmS5_EEvT_T0_RKT1_
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception23
# BB#0:
	pushq	%rbp
.Ltmp1211:
	.cfi_def_cfa_offset 16
.Ltmp1212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1213:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB214_1
	.align	16, 0x90
.LBB214_4:                              #   in Loop: Header=BB214_1 Depth=1
	decq	-16(%rbp)
	addq	$24, -32(%rbp)
.LBB214_1:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB214_7
# BB#2:                                 #   in Loop: Header=BB214_1 Depth=1
	movq	-32(%rbp), %rdi
.Ltmp1198:
	callq	_ZSt11__addressofISt6vectorI10location_tSaIS1_EEEPT_RS4_
.Ltmp1199:
# BB#3:                                 #   in Loop: Header=BB214_1 Depth=1
	movq	-24(%rbp), %rsi
.Ltmp1200:
	movq	%rax, %rdi
	callq	_ZSt10_ConstructISt6vectorI10location_tSaIS1_EES3_EvPT_RKT0_
.Ltmp1201:
	jmp	.LBB214_4
.LBB214_5:
.Ltmp1202:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
.Ltmp1203:
	callq	_ZSt8_DestroyIPSt6vectorI10location_tSaIS1_EEEvT_S5_
.Ltmp1204:
# BB#6:
.Ltmp1205:
	callq	__cxa_rethrow
.Ltmp1206:
.LBB214_7:
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB214_8:
.Ltmp1207:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
.Ltmp1208:
	callq	__cxa_end_catch
.Ltmp1209:
# BB#9:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.LBB214_10:
.Ltmp1210:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end214:
	.size	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI10location_tSaIS3_EEmS5_EEvT_T0_RKT1_, .Lfunc_end214-_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI10location_tSaIS3_EEmS5_EEvT_T0_RKT1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table214:
.Lexception23:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	73                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Ltmp1198-.Lfunc_begin23 # >> Call Site 1 <<
	.long	.Ltmp1201-.Ltmp1198     #   Call between .Ltmp1198 and .Ltmp1201
	.long	.Ltmp1202-.Lfunc_begin23 #     jumps to .Ltmp1202
	.byte	1                       #   On action: 1
	.long	.Ltmp1201-.Lfunc_begin23 # >> Call Site 2 <<
	.long	.Ltmp1203-.Ltmp1201     #   Call between .Ltmp1201 and .Ltmp1203
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1203-.Lfunc_begin23 # >> Call Site 3 <<
	.long	.Ltmp1206-.Ltmp1203     #   Call between .Ltmp1203 and .Ltmp1206
	.long	.Ltmp1207-.Lfunc_begin23 #     jumps to .Ltmp1207
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1208-.Lfunc_begin23 # >> Call Site 4 <<
	.long	.Ltmp1209-.Ltmp1208     #   Call between .Ltmp1208 and .Ltmp1209
	.long	.Ltmp1210-.Lfunc_begin23 #     jumps to .Ltmp1210
	.byte	1                       #   On action: 1
	.long	.Ltmp1209-.Lfunc_begin23 # >> Call Site 5 <<
	.long	.Lfunc_end214-.Ltmp1209 #   Call between .Ltmp1209 and .Lfunc_end214
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_,"axG",@progbits,_ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_,comdat
	.weak	_ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_
	.align	16, 0x90
	.type	_ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_,@function
_ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_: # @_ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1214:
	.cfi_def_cfa_offset 16
.Ltmp1215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1216:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt10_Iter_baseIPSt6vectorI10location_tSaIS1_EELb0EE7_S_baseES4_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end215:
	.size	_ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_, .Lfunc_end215-_ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_
	.cfi_endproc

	.section	.text._ZSt8__fill_aIPSt6vectorI10location_tSaIS1_EES3_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_SA_RKS7_,"axG",@progbits,_ZSt8__fill_aIPSt6vectorI10location_tSaIS1_EES3_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_SA_RKS7_,comdat
	.weak	_ZSt8__fill_aIPSt6vectorI10location_tSaIS1_EES3_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_SA_RKS7_
	.align	16, 0x90
	.type	_ZSt8__fill_aIPSt6vectorI10location_tSaIS1_EES3_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_SA_RKS7_,@function
_ZSt8__fill_aIPSt6vectorI10location_tSaIS1_EES3_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_SA_RKS7_: # @_ZSt8__fill_aIPSt6vectorI10location_tSaIS1_EES3_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_SA_RKS7_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1217:
	.cfi_def_cfa_offset 16
.Ltmp1218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1219:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.LBB216_1
	.align	16, 0x90
.LBB216_2:                              #   in Loop: Header=BB216_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_ZNSt6vectorI10location_tSaIS0_EEaSERKS2_
	addq	$24, -8(%rbp)
.LBB216_1:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB216_2
# BB#3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end216:
	.size	_ZSt8__fill_aIPSt6vectorI10location_tSaIS1_EES3_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_SA_RKS7_, .Lfunc_end216-_ZSt8__fill_aIPSt6vectorI10location_tSaIS1_EES3_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_SA_RKS7_
	.cfi_endproc

	.section	.text._ZNSt6vectorI10location_tSaIS0_EEaSERKS2_,"axG",@progbits,_ZNSt6vectorI10location_tSaIS0_EEaSERKS2_,comdat
	.weak	_ZNSt6vectorI10location_tSaIS0_EEaSERKS2_
	.align	16, 0x90
	.type	_ZNSt6vectorI10location_tSaIS0_EEaSERKS2_,@function
_ZNSt6vectorI10location_tSaIS0_EEaSERKS2_: # @_ZNSt6vectorI10location_tSaIS0_EEaSERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1220:
	.cfi_def_cfa_offset 16
.Ltmp1221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1222:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
.Ltmp1223:
	.cfi_offset %rbx, -48
.Ltmp1224:
	.cfi_offset %r12, -40
.Ltmp1225:
	.cfi_offset %r14, -32
.Ltmp1226:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %r14
	cmpq	%r14, %rsi
	je	.LBB217_7
# BB#1:
	movq	-48(%rbp), %rdi
	callq	_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	%rbx, -56(%rbp)
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI10location_tSaIS0_EE8capacityEv
	cmpq	%rax, %rbx
	jbe	.LBB217_3
# BB#2:
	movq	-56(%rbp), %rbx
	movq	-48(%rbp), %rdi
	callq	_ZNKSt6vectorI10location_tSaIS0_EE5beginEv
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rdi
	callq	_ZNKSt6vectorI10location_tSaIS0_EE3endEv
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rcx
	callq	_ZNSt6vectorI10location_tSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_
	movq	%rax, -64(%rbp)
	movq	(%r14), %rbx
	movq	8(%r14), %r15
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIP10location_tS0_EvT_S2_RSaIT0_E
	movq	(%r14), %rsi
	movq	16(%r14), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE13_M_deallocateEPS0_m
	movq	-64(%rbp), %rax
	movq	%rax, (%r14)
	movq	-56(%rbp), %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, 16(%r14)
	jmp	.LBB217_6
.LBB217_3:
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv
	cmpq	-56(%rbp), %rax
	jb	.LBB217_5
# BB#4:
	movq	-48(%rbp), %rdi
	callq	_ZNKSt6vectorI10location_tSaIS0_EE5beginEv
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rdi
	callq	_ZNKSt6vectorI10location_tSaIS0_EE3endEv
	movq	%rax, -104(%rbp)
	movq	%r14, %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EE5beginEv
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	%rax, %rdx
	callq	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_
	movq	%rax, -88(%rbp)
	movq	%r14, %rdi
	callq	_ZNSt6vectorI10location_tSaIS0_EE3endEv
	movq	%rax, -120(%rbp)
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
	movq	-88(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E
	jmp	.LBB217_6
.LBB217_5:
	movq	-48(%rbp), %rax
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv
	leaq	(%rbx,%rax,8), %rsi
	movq	(%r14), %rdx
	movq	%rbx, %rdi
	callq	_ZSt4copyIP10location_tS1_ET0_T_S3_S2_
	movq	-48(%rbp), %rax
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI10location_tSaIS0_EE4sizeEv
	leaq	(%rbx,%rax,8), %r15
	movq	-48(%rbp), %rax
	movq	8(%rax), %rbx
	movq	8(%r14), %r12
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt22__uninitialized_copy_aIP10location_tS1_S0_ET0_T_S3_S2_RSaIT1_E
.LBB217_6:
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	addq	(%r14), %rax
	movq	%rax, 8(%r14)
.LBB217_7:
	movq	%r14, %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end217:
	.size	_ZNSt6vectorI10location_tSaIS0_EEaSERKS2_, .Lfunc_end217-_ZNSt6vectorI10location_tSaIS0_EEaSERKS2_
	.cfi_endproc

	.section	.text._ZNKSt6vectorI10location_tSaIS0_EE8capacityEv,"axG",@progbits,_ZNKSt6vectorI10location_tSaIS0_EE8capacityEv,comdat
	.weak	_ZNKSt6vectorI10location_tSaIS0_EE8capacityEv
	.align	16, 0x90
	.type	_ZNKSt6vectorI10location_tSaIS0_EE8capacityEv,@function
_ZNKSt6vectorI10location_tSaIS0_EE8capacityEv: # @_ZNKSt6vectorI10location_tSaIS0_EE8capacityEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1227:
	.cfi_def_cfa_offset 16
.Ltmp1228:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1229:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	16(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	popq	%rbp
	retq
.Lfunc_end218:
	.size	_ZNKSt6vectorI10location_tSaIS0_EE8capacityEv, .Lfunc_end218-_ZNKSt6vectorI10location_tSaIS0_EE8capacityEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorI10location_tSaIS0_EE5beginEv,"axG",@progbits,_ZNKSt6vectorI10location_tSaIS0_EE5beginEv,comdat
	.weak	_ZNKSt6vectorI10location_tSaIS0_EE5beginEv
	.align	16, 0x90
	.type	_ZNKSt6vectorI10location_tSaIS0_EE5beginEv,@function
_ZNKSt6vectorI10location_tSaIS0_EE5beginEv: # @_ZNKSt6vectorI10location_tSaIS0_EE5beginEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1230:
	.cfi_def_cfa_offset 16
.Ltmp1231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1232:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -24(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEEC2ERKS3_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end219:
	.size	_ZNKSt6vectorI10location_tSaIS0_EE5beginEv, .Lfunc_end219-_ZNKSt6vectorI10location_tSaIS0_EE5beginEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorI10location_tSaIS0_EE3endEv,"axG",@progbits,_ZNKSt6vectorI10location_tSaIS0_EE3endEv,comdat
	.weak	_ZNKSt6vectorI10location_tSaIS0_EE3endEv
	.align	16, 0x90
	.type	_ZNKSt6vectorI10location_tSaIS0_EE3endEv,@function
_ZNKSt6vectorI10location_tSaIS0_EE3endEv: # @_ZNKSt6vectorI10location_tSaIS0_EE3endEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1233:
	.cfi_def_cfa_offset 16
.Ltmp1234:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1235:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	8(%rdi), %rax
	movq	%rax, -24(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEEC2ERKS3_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end220:
	.size	_ZNKSt6vectorI10location_tSaIS0_EE3endEv, .Lfunc_end220-_ZNKSt6vectorI10location_tSaIS0_EE3endEv
	.cfi_endproc

	.section	.text._ZNSt6vectorI10location_tSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_,"axG",@progbits,_ZNSt6vectorI10location_tSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_,comdat
	.weak	_ZNSt6vectorI10location_tSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_
	.align	16, 0x90
	.type	_ZNSt6vectorI10location_tSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_,@function
_ZNSt6vectorI10location_tSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_: # @_ZNSt6vectorI10location_tSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception24
# BB#0:
	pushq	%rbp
.Ltmp1249:
	.cfi_def_cfa_offset 16
.Ltmp1250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1251:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp1252:
	.cfi_offset %rbx, -32
.Ltmp1253:
	.cfi_offset %r14, -24
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %r14
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE11_M_allocateEm
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rbx
.Ltmp1236:
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp1237:
# BB#1:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
.Ltmp1238:
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
.Ltmp1239:
# BB#2:
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB221_3:
.Ltmp1240:
	movq	%rax, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
.Ltmp1241:
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE13_M_deallocateEPS0_m
.Ltmp1242:
# BB#4:
.Ltmp1243:
	callq	__cxa_rethrow
.Ltmp1244:
# BB#8:
.LBB221_5:
.Ltmp1245:
	movq	%rax, -80(%rbp)
	movl	%edx, -84(%rbp)
.Ltmp1246:
	callq	__cxa_end_catch
.Ltmp1247:
# BB#6:
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume
.LBB221_7:
.Ltmp1248:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end221:
	.size	_ZNSt6vectorI10location_tSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_, .Lfunc_end221-_ZNSt6vectorI10location_tSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table221:
.Lexception24:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin24-.Lfunc_begin24 # >> Call Site 1 <<
	.long	.Ltmp1236-.Lfunc_begin24 #   Call between .Lfunc_begin24 and .Ltmp1236
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1236-.Lfunc_begin24 # >> Call Site 2 <<
	.long	.Ltmp1239-.Ltmp1236     #   Call between .Ltmp1236 and .Ltmp1239
	.long	.Ltmp1240-.Lfunc_begin24 #     jumps to .Ltmp1240
	.byte	1                       #   On action: 1
	.long	.Ltmp1239-.Lfunc_begin24 # >> Call Site 3 <<
	.long	.Ltmp1241-.Ltmp1239     #   Call between .Ltmp1239 and .Ltmp1241
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1241-.Lfunc_begin24 # >> Call Site 4 <<
	.long	.Ltmp1244-.Ltmp1241     #   Call between .Ltmp1241 and .Ltmp1244
	.long	.Ltmp1245-.Lfunc_begin24 #     jumps to .Ltmp1245
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1246-.Lfunc_begin24 # >> Call Site 5 <<
	.long	.Ltmp1247-.Ltmp1246     #   Call between .Ltmp1246 and .Ltmp1247
	.long	.Ltmp1248-.Lfunc_begin24 #     jumps to .Ltmp1248
	.byte	1                       #   On action: 1
	.long	.Ltmp1247-.Lfunc_begin24 # >> Call Site 6 <<
	.long	.Lfunc_end221-.Ltmp1247 #   Call between .Ltmp1247 and .Lfunc_end221
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt6vectorI10location_tSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI10location_tSaIS0_EE5beginEv,comdat
	.weak	_ZNSt6vectorI10location_tSaIS0_EE5beginEv
	.align	16, 0x90
	.type	_ZNSt6vectorI10location_tSaIS0_EE5beginEv,@function
_ZNSt6vectorI10location_tSaIS0_EE5beginEv: # @_ZNSt6vectorI10location_tSaIS0_EE5beginEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1254:
	.cfi_def_cfa_offset 16
.Ltmp1255:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1256:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end222:
	.size	_ZNSt6vectorI10location_tSaIS0_EE5beginEv, .Lfunc_end222-_ZNSt6vectorI10location_tSaIS0_EE5beginEv
	.cfi_endproc

	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_
	.align	16, 0x90
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_,@function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_: # @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1257:
	.cfi_def_cfa_offset 16
.Ltmp1258:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1259:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Miter_baseIT_E13iterator_typeESA_
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Miter_baseIT_E13iterator_typeESA_
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_
	movq	%rax, -8(%rbp)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end223:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_, .Lfunc_end223-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_
	.cfi_endproc

	.section	.text._ZNSt6vectorI10location_tSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI10location_tSaIS0_EE3endEv,comdat
	.weak	_ZNSt6vectorI10location_tSaIS0_EE3endEv
	.align	16, 0x90
	.type	_ZNSt6vectorI10location_tSaIS0_EE3endEv,@function
_ZNSt6vectorI10location_tSaIS0_EE3endEv: # @_ZNSt6vectorI10location_tSaIS0_EE3endEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1260:
	.cfi_def_cfa_offset 16
.Ltmp1261:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1262:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	leaq	8(%rdi), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end224:
	.size	_ZNSt6vectorI10location_tSaIS0_EE3endEv, .Lfunc_end224-_ZNSt6vectorI10location_tSaIS0_EE3endEv
	.cfi_endproc

	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E
	.align	16, 0x90
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E,@function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E: # @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1263:
	.cfi_def_cfa_offset 16
.Ltmp1264:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1265:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEEvT_S8_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end225:
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E, .Lfunc_end225-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEES2_EvT_S8_RSaIT0_E
	.cfi_endproc

	.section	.text._ZSt4copyIP10location_tS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4copyIP10location_tS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt4copyIP10location_tS1_ET0_T_S3_S2_
	.align	16, 0x90
	.type	_ZSt4copyIP10location_tS1_ET0_T_S3_S2_,@function
_ZSt4copyIP10location_tS1_ET0_T_S3_S2_: # @_ZSt4copyIP10location_tS1_ET0_T_S3_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1266:
	.cfi_def_cfa_offset 16
.Ltmp1267:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1268:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1269:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZSt12__miter_baseIP10location_tENSt11_Miter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	-24(%rbp), %rdi
	callq	_ZSt12__miter_baseIP10location_tENSt11_Miter_baseIT_E13iterator_typeES3_
	movq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZSt14__copy_move_a2ILb0EP10location_tS1_ET1_T0_S3_S2_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end226:
	.size	_ZSt4copyIP10location_tS1_ET0_T_S3_S2_, .Lfunc_end226-_ZSt4copyIP10location_tS1_ET0_T_S3_S2_
	.cfi_endproc

	.section	.text._ZSt22__uninitialized_copy_aIP10location_tS1_S0_ET0_T_S3_S2_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIP10location_tS1_S0_ET0_T_S3_S2_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIP10location_tS1_S0_ET0_T_S3_S2_RSaIT1_E
	.align	16, 0x90
	.type	_ZSt22__uninitialized_copy_aIP10location_tS1_S0_ET0_T_S3_S2_RSaIT1_E,@function
_ZSt22__uninitialized_copy_aIP10location_tS1_S0_ET0_T_S3_S2_RSaIT1_E: # @_ZSt22__uninitialized_copy_aIP10location_tS1_S0_ET0_T_S3_S2_RSaIT1_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1270:
	.cfi_def_cfa_offset 16
.Ltmp1271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1272:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt18uninitialized_copyIP10location_tS1_ET0_T_S3_S2_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end227:
	.size	_ZSt22__uninitialized_copy_aIP10location_tS1_S0_ET0_T_S3_S2_RSaIT1_E, .Lfunc_end227-_ZSt22__uninitialized_copy_aIP10location_tS1_S0_ET0_T_S3_S2_RSaIT1_E
	.cfi_endproc

	.section	.text._ZSt18uninitialized_copyIP10location_tS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt18uninitialized_copyIP10location_tS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt18uninitialized_copyIP10location_tS1_ET0_T_S3_S2_
	.align	16, 0x90
	.type	_ZSt18uninitialized_copyIP10location_tS1_ET0_T_S3_S2_,@function
_ZSt18uninitialized_copyIP10location_tS1_ET0_T_S3_S2_: # @_ZSt18uninitialized_copyIP10location_tS1_ET0_T_S3_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1273:
	.cfi_def_cfa_offset 16
.Ltmp1274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1275:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP10location_tS3_EET0_T_S5_S4_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end228:
	.size	_ZSt18uninitialized_copyIP10location_tS1_ET0_T_S3_S2_, .Lfunc_end228-_ZSt18uninitialized_copyIP10location_tS1_ET0_T_S3_S2_
	.cfi_endproc

	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP10location_tS3_EET0_T_S5_S4_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP10location_tS3_EET0_T_S5_S4_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP10location_tS3_EET0_T_S5_S4_
	.align	16, 0x90
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP10location_tS3_EET0_T_S5_S4_,@function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP10location_tS3_EET0_T_S5_S4_: # @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP10location_tS3_EET0_T_S5_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1276:
	.cfi_def_cfa_offset 16
.Ltmp1277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1278:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt4copyIP10location_tS1_ET0_T_S3_S2_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end229:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP10location_tS3_EET0_T_S5_S4_, .Lfunc_end229-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIP10location_tS3_EET0_T_S5_S4_
	.cfi_endproc

	.section	.text._ZSt12__miter_baseIP10location_tENSt11_Miter_baseIT_E13iterator_typeES3_,"axG",@progbits,_ZSt12__miter_baseIP10location_tENSt11_Miter_baseIT_E13iterator_typeES3_,comdat
	.weak	_ZSt12__miter_baseIP10location_tENSt11_Miter_baseIT_E13iterator_typeES3_
	.align	16, 0x90
	.type	_ZSt12__miter_baseIP10location_tENSt11_Miter_baseIT_E13iterator_typeES3_,@function
_ZSt12__miter_baseIP10location_tENSt11_Miter_baseIT_E13iterator_typeES3_: # @_ZSt12__miter_baseIP10location_tENSt11_Miter_baseIT_E13iterator_typeES3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1279:
	.cfi_def_cfa_offset 16
.Ltmp1280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1281:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt10_Iter_baseIP10location_tLb0EE7_S_baseES1_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end230:
	.size	_ZSt12__miter_baseIP10location_tENSt11_Miter_baseIT_E13iterator_typeES3_, .Lfunc_end230-_ZSt12__miter_baseIP10location_tENSt11_Miter_baseIT_E13iterator_typeES3_
	.cfi_endproc

	.section	.text._ZSt14__copy_move_a2ILb0EP10location_tS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EP10location_tS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EP10location_tS1_ET1_T0_S3_S2_
	.align	16, 0x90
	.type	_ZSt14__copy_move_a2ILb0EP10location_tS1_ET1_T0_S3_S2_,@function
_ZSt14__copy_move_a2ILb0EP10location_tS1_ET1_T0_S3_S2_: # @_ZSt14__copy_move_a2ILb0EP10location_tS1_ET1_T0_S3_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1282:
	.cfi_def_cfa_offset 16
.Ltmp1283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1284:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Ltmp1285:
	.cfi_offset %rbx, -32
.Ltmp1286:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %r14
	movq	-32(%rbp), %rdi
	callq	_ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	-40(%rbp), %rdi
	callq	_ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt13__copy_move_aILb0EP10location_tS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end231:
	.size	_ZSt14__copy_move_a2ILb0EP10location_tS1_ET1_T0_S3_S2_, .Lfunc_end231-_ZSt14__copy_move_a2ILb0EP10location_tS1_ET1_T0_S3_S2_
	.cfi_endproc

	.section	.text._ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_,"axG",@progbits,_ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_,comdat
	.weak	_ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_
	.align	16, 0x90
	.type	_ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_,@function
_ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_: # @_ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1287:
	.cfi_def_cfa_offset 16
.Ltmp1288:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1289:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt10_Iter_baseIP10location_tLb0EE7_S_baseES1_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end232:
	.size	_ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_, .Lfunc_end232-_ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_
	.cfi_endproc

	.section	.text._ZSt13__copy_move_aILb0EP10location_tS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0EP10location_tS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt13__copy_move_aILb0EP10location_tS1_ET1_T0_S3_S2_
	.align	16, 0x90
	.type	_ZSt13__copy_move_aILb0EP10location_tS1_ET1_T0_S3_S2_,@function
_ZSt13__copy_move_aILb0EP10location_tS1_ET1_T0_S3_S2_: # @_ZSt13__copy_move_aILb0EP10location_tS1_ET1_T0_S3_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1290:
	.cfi_def_cfa_offset 16
.Ltmp1291:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1292:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI10location_tEEPT_PKS4_S7_S5_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end233:
	.size	_ZSt13__copy_move_aILb0EP10location_tS1_ET1_T0_S3_S2_, .Lfunc_end233-_ZSt13__copy_move_aILb0EP10location_tS1_ET1_T0_S3_S2_
	.cfi_endproc

	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI10location_tEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI10location_tEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI10location_tEEPT_PKS4_S7_S5_
	.align	16, 0x90
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI10location_tEEPT_PKS4_S7_S5_,@function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI10location_tEEPT_PKS4_S7_S5_: # @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI10location_tEEPT_PKS4_S7_S5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1293:
	.cfi_def_cfa_offset 16
.Ltmp1294:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1295:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -32(%rbp)
	je	.LBB234_2
# BB#1:
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	callq	memmove
.LBB234_2:
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	addq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end234:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI10location_tEEPT_PKS4_S7_S5_, .Lfunc_end234-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI10location_tEEPT_PKS4_S7_S5_
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIP10location_tLb0EE7_S_baseES1_,"axG",@progbits,_ZNSt10_Iter_baseIP10location_tLb0EE7_S_baseES1_,comdat
	.weak	_ZNSt10_Iter_baseIP10location_tLb0EE7_S_baseES1_
	.align	16, 0x90
	.type	_ZNSt10_Iter_baseIP10location_tLb0EE7_S_baseES1_,@function
_ZNSt10_Iter_baseIP10location_tLb0EE7_S_baseES1_: # @_ZNSt10_Iter_baseIP10location_tLb0EE7_S_baseES1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1296:
	.cfi_def_cfa_offset 16
.Ltmp1297:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1298:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end235:
	.size	_ZNSt10_Iter_baseIP10location_tLb0EE7_S_baseES1_, .Lfunc_end235-_ZNSt10_Iter_baseIP10location_tLb0EE7_S_baseES1_
	.cfi_endproc

	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEEvT_S8_,"axG",@progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEEvT_S8_,comdat
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEEvT_S8_
	.align	16, 0x90
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEEvT_S8_,@function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEEvT_S8_: # @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEEvT_S8_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1299:
	.cfi_def_cfa_offset 16
.Ltmp1300:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1301:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS4_SaIS4_EEEEEEvT_SA_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end236:
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEEvT_S8_, .Lfunc_end236-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEEvT_S8_
	.cfi_endproc

	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS4_SaIS4_EEEEEEvT_SA_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS4_SaIS4_EEEEEEvT_SA_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS4_SaIS4_EEEEEEvT_SA_
	.align	16, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS4_SaIS4_EEEEEEvT_SA_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS4_SaIS4_EEEEEEvT_SA_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS4_SaIS4_EEEEEEvT_SA_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1302:
	.cfi_def_cfa_offset 16
.Ltmp1303:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1304:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end237:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS4_SaIS4_EEEEEEvT_SA_, .Lfunc_end237-_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS4_SaIS4_EEEEEEvT_SA_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEEC2ERKS2_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEEC2ERKS2_,@function
_ZN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEEC2ERKS2_: # @_ZN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1305:
	.cfi_def_cfa_offset 16
.Ltmp1306:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1307:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	retq
.Lfunc_end238:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEEC2ERKS2_, .Lfunc_end238-_ZN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_endproc

	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Miter_baseIT_E13iterator_typeESA_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Miter_baseIT_E13iterator_typeESA_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Miter_baseIT_E13iterator_typeESA_
	.align	16, 0x90
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Miter_baseIT_E13iterator_typeESA_,@function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Miter_baseIT_E13iterator_typeESA_: # @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Miter_baseIT_E13iterator_typeESA_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1308:
	.cfi_def_cfa_offset 16
.Ltmp1309:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1310:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rdi, -24(%rbp)
	callq	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb0EE7_S_baseES8_
	movq	%rax, -8(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end239:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Miter_baseIT_E13iterator_typeESA_, .Lfunc_end239-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Miter_baseIT_E13iterator_typeESA_
	.cfi_endproc

	.section	.text._ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_
	.align	16, 0x90
	.type	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_,@function
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_: # @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1311:
	.cfi_def_cfa_offset 16
.Ltmp1312:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1313:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp1314:
	.cfi_offset %rbx, -32
.Ltmp1315:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)
	callq	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_
	movq	%rax, %r14
	movq	-40(%rbp), %rdi
	movq	%rdi, -72(%rbp)
	callq	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_
	movq	%rax, %rbx
	movq	-48(%rbp), %rdi
	movq	%rdi, -80(%rbp)
	callq	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt13__copy_move_aILb0EPK10location_tPS0_ET1_T0_S5_S4_
	movq	%rax, -56(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end240:
	.size	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_, .Lfunc_end240-_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET1_T0_SC_SB_
	.cfi_endproc

	.section	.text._ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_,"axG",@progbits,_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_,comdat
	.weak	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_
	.align	16, 0x90
	.type	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_,@function
_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_: # @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1316:
	.cfi_def_cfa_offset 16
.Ltmp1317:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1318:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	callq	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES8_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end241:
	.size	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_, .Lfunc_end241-_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_
	.cfi_endproc

	.section	.text._ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeES9_,"axG",@progbits,_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeES9_,comdat
	.weak	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	.align	16, 0x90
	.type	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeES9_,@function
_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeES9_: # @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1319:
	.cfi_def_cfa_offset 16
.Ltmp1320:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1321:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	callq	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES7_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end242:
	.size	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeES9_, .Lfunc_end242-_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	.cfi_endproc

	.section	.text._ZSt13__copy_move_aILb0EPK10location_tPS0_ET1_T0_S5_S4_,"axG",@progbits,_ZSt13__copy_move_aILb0EPK10location_tPS0_ET1_T0_S5_S4_,comdat
	.weak	_ZSt13__copy_move_aILb0EPK10location_tPS0_ET1_T0_S5_S4_
	.align	16, 0x90
	.type	_ZSt13__copy_move_aILb0EPK10location_tPS0_ET1_T0_S5_S4_,@function
_ZSt13__copy_move_aILb0EPK10location_tPS0_ET1_T0_S5_S4_: # @_ZSt13__copy_move_aILb0EPK10location_tPS0_ET1_T0_S5_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1322:
	.cfi_def_cfa_offset 16
.Ltmp1323:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1324:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mI10location_tEEPT_PKS4_S7_S5_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end243:
	.size	_ZSt13__copy_move_aILb0EPK10location_tPS0_ET1_T0_S5_S4_, .Lfunc_end243-_ZSt13__copy_move_aILb0EPK10location_tPS0_ET1_T0_S5_S4_
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES7_,"axG",@progbits,_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES7_,comdat
	.weak	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES7_
	.align	16, 0x90
	.type	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES7_,@function
_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES7_: # @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES7_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1325:
	.cfi_def_cfa_offset 16
.Ltmp1326:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1327:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end244:
	.size	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES7_, .Lfunc_end244-_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES7_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEE4baseEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1328:
	.cfi_def_cfa_offset 16
.Ltmp1329:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1330:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end245:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEE4baseEv, .Lfunc_end245-_ZNK9__gnu_cxx17__normal_iteratorIP10location_tSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES8_,"axG",@progbits,_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES8_,comdat
	.weak	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES8_
	.align	16, 0x90
	.type	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES8_,@function
_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES8_: # @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES8_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1331:
	.cfi_def_cfa_offset 16
.Ltmp1332:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1333:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end246:
	.size	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES8_, .Lfunc_end246-_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb1EE7_S_baseES8_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEE4baseEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1334:
	.cfi_def_cfa_offset 16
.Ltmp1335:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1336:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end247:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEE4baseEv, .Lfunc_end247-_ZNK9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb0EE7_S_baseES8_,"axG",@progbits,_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb0EE7_S_baseES8_,comdat
	.weak	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb0EE7_S_baseES8_
	.align	16, 0x90
	.type	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb0EE7_S_baseES8_,@function
_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb0EE7_S_baseES8_: # @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb0EE7_S_baseES8_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1337:
	.cfi_def_cfa_offset 16
.Ltmp1338:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1339:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end248:
	.size	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb0EE7_S_baseES8_, .Lfunc_end248-_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEELb0EE7_S_baseES8_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI10location_tSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI10location_tSaIS0_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseI10location_tSaIS0_EE11_M_allocateEm
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI10location_tSaIS0_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseI10location_tSaIS0_EE11_M_allocateEm: # @_ZNSt12_Vector_baseI10location_tSaIS0_EE11_M_allocateEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1340:
	.cfi_def_cfa_offset 16
.Ltmp1341:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1342:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB249_2
# BB#1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%edx, %edx
	callq	_ZN9__gnu_cxx13new_allocatorI10location_tE8allocateEmPKv
.LBB249_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end249:
	.size	_ZNSt12_Vector_baseI10location_tSaIS0_EE11_M_allocateEm, .Lfunc_end249-_ZNSt12_Vector_baseI10location_tSaIS0_EE11_M_allocateEm
	.cfi_endproc

	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
	.align	16, 0x90
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E,@function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E: # @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1343:
	.cfi_def_cfa_offset 16
.Ltmp1344:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1345:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end250:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E, .Lfunc_end250-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
	.cfi_endproc

	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.align	16, 0x90
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,@function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_: # @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1346:
	.cfi_def_cfa_offset 16
.Ltmp1347:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1348:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end251:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, .Lfunc_end251-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.cfi_endproc

	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	.align	16, 0x90
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_,@function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_: # @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1349:
	.cfi_def_cfa_offset 16
.Ltmp1350:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1351:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end252:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_, .Lfunc_end252-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	.cfi_endproc

	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.align	16, 0x90
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,@function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_: # @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1352:
	.cfi_def_cfa_offset 16
.Ltmp1353:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1354:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Miter_baseIT_E13iterator_typeESA_
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Miter_baseIT_E13iterator_typeESA_
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end253:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, .Lfunc_end253-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.cfi_endproc

	.section	.text._ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_
	.align	16, 0x90
	.type	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_,@function
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_: # @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1355:
	.cfi_def_cfa_offset 16
.Ltmp1356:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1357:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp1358:
	.cfi_offset %rbx, -32
.Ltmp1359:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	callq	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_
	movq	%rax, %r14
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)
	callq	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_
	movq	%rax, %rbx
	movq	-40(%rbp), %rdi
	callq	_ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt13__copy_move_aILb0EPK10location_tPS0_ET1_T0_S5_S4_
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end254:
	.size	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_, .Lfunc_end254-_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS2_SaIS2_EEEEPS2_ET1_T0_SB_SA_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI10location_tE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI10location_tE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI10location_tE8allocateEmPKv
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI10location_tE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorI10location_tE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorI10location_tE8allocateEmPKv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1360:
	.cfi_def_cfa_offset 16
.Ltmp1361:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1362:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1363:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rbx
	callq	_ZNK9__gnu_cxx13new_allocatorI10location_tE8max_sizeEv
	cmpq	%rax, %rbx
	ja	.LBB255_2
# BB#1:
	movq	-24(%rbp), %rdi
	shlq	$3, %rdi
	callq	_Znwm
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB255_2:
	callq	_ZSt17__throw_bad_allocv
.Lfunc_end255:
	.size	_ZN9__gnu_cxx13new_allocatorI10location_tE8allocateEmPKv, .Lfunc_end255-_ZN9__gnu_cxx13new_allocatorI10location_tE8allocateEmPKv
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx13new_allocatorI10location_tE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI10location_tE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorI10location_tE8max_sizeEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorI10location_tE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorI10location_tE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorI10location_tE8max_sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1364:
	.cfi_def_cfa_offset 16
.Ltmp1365:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1366:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	popq	%rbp
	retq
.Lfunc_end256:
	.size	_ZNK9__gnu_cxx13new_allocatorI10location_tE8max_sizeEv, .Lfunc_end256-_ZNK9__gnu_cxx13new_allocatorI10location_tE8max_sizeEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEEC2ERKS3_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEEC2ERKS3_,@function
_ZN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEEC2ERKS3_: # @_ZN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1367:
	.cfi_def_cfa_offset 16
.Ltmp1368:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1369:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	retq
.Lfunc_end257:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEEC2ERKS3_, .Lfunc_end257-_ZN9__gnu_cxx17__normal_iteratorIPK10location_tSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIPSt6vectorI10location_tSaIS1_EELb0EE7_S_baseES4_,"axG",@progbits,_ZNSt10_Iter_baseIPSt6vectorI10location_tSaIS1_EELb0EE7_S_baseES4_,comdat
	.weak	_ZNSt10_Iter_baseIPSt6vectorI10location_tSaIS1_EELb0EE7_S_baseES4_
	.align	16, 0x90
	.type	_ZNSt10_Iter_baseIPSt6vectorI10location_tSaIS1_EELb0EE7_S_baseES4_,@function
_ZNSt10_Iter_baseIPSt6vectorI10location_tSaIS1_EELb0EE7_S_baseES4_: # @_ZNSt10_Iter_baseIPSt6vectorI10location_tSaIS1_EELb0EE7_S_baseES4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1370:
	.cfi_def_cfa_offset 16
.Ltmp1371:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1372:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end258:
	.size	_ZNSt10_Iter_baseIPSt6vectorI10location_tSaIS1_EELb0EE7_S_baseES4_, .Lfunc_end258-_ZNSt10_Iter_baseIPSt6vectorI10location_tSaIS1_EELb0EE7_S_baseES4_
	.cfi_endproc

	.section	.text._ZSt12__miter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Miter_baseIT_E13iterator_typeES6_,"axG",@progbits,_ZSt12__miter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Miter_baseIT_E13iterator_typeES6_,comdat
	.weak	_ZSt12__miter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Miter_baseIT_E13iterator_typeES6_
	.align	16, 0x90
	.type	_ZSt12__miter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Miter_baseIT_E13iterator_typeES6_,@function
_ZSt12__miter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Miter_baseIT_E13iterator_typeES6_: # @_ZSt12__miter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Miter_baseIT_E13iterator_typeES6_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1373:
	.cfi_def_cfa_offset 16
.Ltmp1374:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1375:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt10_Iter_baseIPSt6vectorI10location_tSaIS1_EELb0EE7_S_baseES4_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end259:
	.size	_ZSt12__miter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Miter_baseIT_E13iterator_typeES6_, .Lfunc_end259-_ZSt12__miter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Miter_baseIT_E13iterator_typeES6_
	.cfi_endproc

	.section	.text._ZSt23__copy_move_backward_a2ILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_
	.align	16, 0x90
	.type	_ZSt23__copy_move_backward_a2ILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_,@function
_ZSt23__copy_move_backward_a2ILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_: # @_ZSt23__copy_move_backward_a2ILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1376:
	.cfi_def_cfa_offset 16
.Ltmp1377:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1378:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Ltmp1379:
	.cfi_offset %rbx, -32
.Ltmp1380:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_
	movq	%rax, %r14
	movq	-32(%rbp), %rdi
	callq	_ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_
	movq	%rax, %rbx
	movq	-40(%rbp), %rdi
	callq	_ZSt12__niter_baseIPSt6vectorI10location_tSaIS1_EEENSt11_Niter_baseIT_E13iterator_typeES6_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt22__copy_move_backward_aILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end260:
	.size	_ZSt23__copy_move_backward_a2ILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_, .Lfunc_end260-_ZSt23__copy_move_backward_a2ILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_
	.cfi_endproc

	.section	.text._ZSt22__copy_move_backward_aILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_
	.align	16, 0x90
	.type	_ZSt22__copy_move_backward_aILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_,@function
_ZSt22__copy_move_backward_aILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_: # @_ZSt22__copy_move_backward_aILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1381:
	.cfi_def_cfa_offset 16
.Ltmp1382:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1383:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorI10location_tSaIS4_EES7_EET0_T_S9_S8_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end261:
	.size	_ZSt22__copy_move_backward_aILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_, .Lfunc_end261-_ZSt22__copy_move_backward_aILb0EPSt6vectorI10location_tSaIS1_EES4_ET1_T0_S6_S5_
	.cfi_endproc

	.section	.text._ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorI10location_tSaIS4_EES7_EET0_T_S9_S8_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorI10location_tSaIS4_EES7_EET0_T_S9_S8_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorI10location_tSaIS4_EES7_EET0_T_S9_S8_
	.align	16, 0x90
	.type	_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorI10location_tSaIS4_EES7_EET0_T_S9_S8_,@function
_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorI10location_tSaIS4_EES7_EET0_T_S9_S8_: # @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorI10location_tSaIS4_EES7_EET0_T_S9_S8_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1384:
	.cfi_def_cfa_offset 16
.Ltmp1385:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1386:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %rcx # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB262_1
	.align	16, 0x90
.LBB262_2:                              #   in Loop: Header=BB262_1 Depth=1
	movq	-24(%rbp), %rdi
	addq	$-24, %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rsi
	addq	$-24, %rsi
	movq	%rsi, -16(%rbp)
	callq	_ZNSt6vectorI10location_tSaIS0_EEaSERKS2_
	decq	-32(%rbp)
.LBB262_1:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	jg	.LBB262_2
# BB#3:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end262:
	.size	_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorI10location_tSaIS4_EES7_EET0_T_S9_S8_, .Lfunc_end262-_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorI10location_tSaIS4_EES7_EET0_T_S9_S8_
	.cfi_endproc

	.section	.text._ZNKSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
	.align	16, 0x90
	.type	_ZNKSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1387:
	.cfi_def_cfa_offset 16
.Ltmp1388:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1389:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end263:
	.size	_ZNKSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv, .Lfunc_end263-_ZNKSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaI10location_tEE17_S_select_on_copyERKS2_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaI10location_tEE17_S_select_on_copyERKS2_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaI10location_tEE17_S_select_on_copyERKS2_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaI10location_tEE17_S_select_on_copyERKS2_,@function
_ZN9__gnu_cxx14__alloc_traitsISaI10location_tEE17_S_select_on_copyERKS2_: # @_ZN9__gnu_cxx14__alloc_traitsISaI10location_tEE17_S_select_on_copyERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1390:
	.cfi_def_cfa_offset 16
.Ltmp1391:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1392:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end264:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaI10location_tEE17_S_select_on_copyERKS2_, .Lfunc_end264-_ZN9__gnu_cxx14__alloc_traitsISaI10location_tEE17_S_select_on_copyERKS2_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI10location_tSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt12_Vector_baseI10location_tSaIS0_EEC2EmRKS1_,comdat
	.weak	_ZNSt12_Vector_baseI10location_tSaIS0_EEC2EmRKS1_
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI10location_tSaIS0_EEC2EmRKS1_,@function
_ZNSt12_Vector_baseI10location_tSaIS0_EEC2EmRKS1_: # @_ZNSt12_Vector_baseI10location_tSaIS0_EEC2EmRKS1_
.Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception25
# BB#0:
	pushq	%rbp
.Ltmp1396:
	.cfi_def_cfa_offset 16
.Ltmp1397:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1398:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp1399:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implC2ERKS1_
	movq	-24(%rbp), %rsi
.Ltmp1393:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE17_M_create_storageEm
.Ltmp1394:
# BB#1:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB265_2:
.Ltmp1395:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implD2Ev
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end265:
	.size	_ZNSt12_Vector_baseI10location_tSaIS0_EEC2EmRKS1_, .Lfunc_end265-_ZNSt12_Vector_baseI10location_tSaIS0_EEC2EmRKS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table265:
.Lexception25:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp1393-.Lfunc_begin25 # >> Call Site 1 <<
	.long	.Ltmp1394-.Ltmp1393     #   Call between .Ltmp1393 and .Ltmp1394
	.long	.Ltmp1395-.Lfunc_begin25 #     jumps to .Ltmp1395
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1394-.Lfunc_begin25 # >> Call Site 2 <<
	.long	.Lfunc_end265-.Ltmp1394 #   Call between .Ltmp1394 and .Lfunc_end265
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implC2ERKS1_,"axG",@progbits,_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implC2ERKS1_,comdat
	.weak	_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implC2ERKS1_
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implC2ERKS1_,@function
_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implC2ERKS1_: # @_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implC2ERKS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1400:
	.cfi_def_cfa_offset 16
.Ltmp1401:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1402:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1403:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSaI10location_tEC2ERKS0_
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end266:
	.size	_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implC2ERKS1_, .Lfunc_end266-_ZNSt12_Vector_baseI10location_tSaIS0_EE12_Vector_implC2ERKS1_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI10location_tSaIS0_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseI10location_tSaIS0_EE17_M_create_storageEm,comdat
	.weak	_ZNSt12_Vector_baseI10location_tSaIS0_EE17_M_create_storageEm
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI10location_tSaIS0_EE17_M_create_storageEm,@function
_ZNSt12_Vector_baseI10location_tSaIS0_EE17_M_create_storageEm: # @_ZNSt12_Vector_baseI10location_tSaIS0_EE17_M_create_storageEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1404:
	.cfi_def_cfa_offset 16
.Ltmp1405:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1406:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1407:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE11_M_allocateEm
	movq	%rax, (%rbx)
	movq	%rax, 8(%rbx)
	movq	-24(%rbp), %rax
	shlq	$3, %rax
	addq	(%rbx), %rax
	movq	%rax, 16(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end267:
	.size	_ZNSt12_Vector_baseI10location_tSaIS0_EE17_M_create_storageEm, .Lfunc_end267-_ZNSt12_Vector_baseI10location_tSaIS0_EE17_M_create_storageEm
	.cfi_endproc

	.section	.text._ZNSaI10location_tEC2ERKS0_,"axG",@progbits,_ZNSaI10location_tEC2ERKS0_,comdat
	.weak	_ZNSaI10location_tEC2ERKS0_
	.align	16, 0x90
	.type	_ZNSaI10location_tEC2ERKS0_,@function
_ZNSaI10location_tEC2ERKS0_:            # @_ZNSaI10location_tEC2ERKS0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1408:
	.cfi_def_cfa_offset 16
.Ltmp1409:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1410:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorI10location_tEC2ERKS2_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end268:
	.size	_ZNSaI10location_tEC2ERKS0_, .Lfunc_end268-_ZNSaI10location_tEC2ERKS0_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI10location_tEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI10location_tEC2ERKS2_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI10location_tEC2ERKS2_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI10location_tEC2ERKS2_,@function
_ZN9__gnu_cxx13new_allocatorI10location_tEC2ERKS2_: # @_ZN9__gnu_cxx13new_allocatorI10location_tEC2ERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1411:
	.cfi_def_cfa_offset 16
.Ltmp1412:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1413:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end269:
	.size	_ZN9__gnu_cxx13new_allocatorI10location_tEC2ERKS2_, .Lfunc_end269-_ZN9__gnu_cxx13new_allocatorI10location_tEC2ERKS2_
	.cfi_endproc

	.section	.text._ZNSt6vectorI10location_tSaIS0_EE18_M_fill_initializeEmRKS0_,"axG",@progbits,_ZNSt6vectorI10location_tSaIS0_EE18_M_fill_initializeEmRKS0_,comdat
	.weak	_ZNSt6vectorI10location_tSaIS0_EE18_M_fill_initializeEmRKS0_
	.align	16, 0x90
	.type	_ZNSt6vectorI10location_tSaIS0_EE18_M_fill_initializeEmRKS0_,@function
_ZNSt6vectorI10location_tSaIS0_EE18_M_fill_initializeEmRKS0_: # @_ZNSt6vectorI10location_tSaIS0_EE18_M_fill_initializeEmRKS0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1414:
	.cfi_def_cfa_offset 16
.Ltmp1415:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1416:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
.Ltmp1417:
	.cfi_offset %rbx, -48
.Ltmp1418:
	.cfi_offset %r12, -40
.Ltmp1419:
	.cfi_offset %r14, -32
.Ltmp1420:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%r14, -56(%rbp)
	movq	-40(%rbp), %rbx
	movq	(%rbx), %r15
	movq	-48(%rbp), %r12
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI10location_tSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%rax, %rcx
	callq	_ZSt24__uninitialized_fill_n_aIP10location_tmS0_S0_EvT_T0_RKT1_RSaIT2_E
	movq	16(%rbx), %rax
	movq	%rax, 8(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end270:
	.size	_ZNSt6vectorI10location_tSaIS0_EE18_M_fill_initializeEmRKS0_, .Lfunc_end270-_ZNSt6vectorI10location_tSaIS0_EE18_M_fill_initializeEmRKS0_
	.cfi_endproc

	.section	.text._ZSt24__uninitialized_fill_n_aIP10location_tmS0_S0_EvT_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIP10location_tmS0_S0_EvT_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIP10location_tmS0_S0_EvT_T0_RKT1_RSaIT2_E
	.align	16, 0x90
	.type	_ZSt24__uninitialized_fill_n_aIP10location_tmS0_S0_EvT_T0_RKT1_RSaIT2_E,@function
_ZSt24__uninitialized_fill_n_aIP10location_tmS0_S0_EvT_T0_RKT1_RSaIT2_E: # @_ZSt24__uninitialized_fill_n_aIP10location_tmS0_S0_EvT_T0_RKT1_RSaIT2_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1421:
	.cfi_def_cfa_offset 16
.Ltmp1422:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1423:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt20uninitialized_fill_nIP10location_tmS0_EvT_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end271:
	.size	_ZSt24__uninitialized_fill_n_aIP10location_tmS0_S0_EvT_T0_RKT1_RSaIT2_E, .Lfunc_end271-_ZSt24__uninitialized_fill_n_aIP10location_tmS0_S0_EvT_T0_RKT1_RSaIT2_E
	.cfi_endproc

	.section	.text._ZSt20uninitialized_fill_nIP10location_tmS0_EvT_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIP10location_tmS0_EvT_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIP10location_tmS0_EvT_T0_RKT1_
	.align	16, 0x90
	.type	_ZSt20uninitialized_fill_nIP10location_tmS0_EvT_T0_RKT1_,@function
_ZSt20uninitialized_fill_nIP10location_tmS0_EvT_T0_RKT1_: # @_ZSt20uninitialized_fill_nIP10location_tmS0_EvT_T0_RKT1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1424:
	.cfi_def_cfa_offset 16
.Ltmp1425:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1426:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIP10location_tmS2_EEvT_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end272:
	.size	_ZSt20uninitialized_fill_nIP10location_tmS0_EvT_T0_RKT1_, .Lfunc_end272-_ZSt20uninitialized_fill_nIP10location_tmS0_EvT_T0_RKT1_
	.cfi_endproc

	.section	.text._ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIP10location_tmS2_EEvT_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIP10location_tmS2_EEvT_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIP10location_tmS2_EEvT_T0_RKT1_
	.align	16, 0x90
	.type	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIP10location_tmS2_EEvT_T0_RKT1_,@function
_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIP10location_tmS2_EEvT_T0_RKT1_: # @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIP10location_tmS2_EEvT_T0_RKT1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1427:
	.cfi_def_cfa_offset 16
.Ltmp1428:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1429:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt6fill_nIP10location_tmS0_ET_S2_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end273:
	.size	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIP10location_tmS2_EEvT_T0_RKT1_, .Lfunc_end273-_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIP10location_tmS2_EEvT_T0_RKT1_
	.cfi_endproc

	.section	.text._ZSt6fill_nIP10location_tmS0_ET_S2_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIP10location_tmS0_ET_S2_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIP10location_tmS0_ET_S2_T0_RKT1_
	.align	16, 0x90
	.type	_ZSt6fill_nIP10location_tmS0_ET_S2_T0_RKT1_,@function
_ZSt6fill_nIP10location_tmS0_ET_S2_T0_RKT1_: # @_ZSt6fill_nIP10location_tmS0_ET_S2_T0_RKT1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1430:
	.cfi_def_cfa_offset 16
.Ltmp1431:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1432:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__niter_baseIP10location_tENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZSt10__fill_n_aIP10location_tmS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES5_T0_RKS4_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end274:
	.size	_ZSt6fill_nIP10location_tmS0_ET_S2_T0_RKT1_, .Lfunc_end274-_ZSt6fill_nIP10location_tmS0_ET_S2_T0_RKT1_
	.cfi_endproc

	.section	.text._ZSt10__fill_n_aIP10location_tmS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES5_T0_RKS4_,"axG",@progbits,_ZSt10__fill_n_aIP10location_tmS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES5_T0_RKS4_,comdat
	.weak	_ZSt10__fill_n_aIP10location_tmS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES5_T0_RKS4_
	.align	16, 0x90
	.type	_ZSt10__fill_n_aIP10location_tmS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES5_T0_RKS4_,@function
_ZSt10__fill_n_aIP10location_tmS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES5_T0_RKS4_: # @_ZSt10__fill_n_aIP10location_tmS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES5_T0_RKS4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1433:
	.cfi_def_cfa_offset 16
.Ltmp1434:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1435:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB275_1
	.align	16, 0x90
.LBB275_2:                              #   in Loop: Header=BB275_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	decq	-32(%rbp)
	addq	$8, -8(%rbp)
.LBB275_1:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB275_2
# BB#3:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end275:
	.size	_ZSt10__fill_n_aIP10location_tmS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES5_T0_RKS4_, .Lfunc_end275-_ZSt10__fill_n_aIP10location_tmS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT1_EE7__valueET_E6__typeES5_T0_RKS4_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI10location_tEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI10location_tEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI10location_tEC2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI10location_tEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorI10location_tEC2Ev: # @_ZN9__gnu_cxx13new_allocatorI10location_tEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1436:
	.cfi_def_cfa_offset 16
.Ltmp1437:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1438:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end276:
	.size	_ZN9__gnu_cxx13new_allocatorI10location_tEC2Ev, .Lfunc_end276-_ZN9__gnu_cxx13new_allocatorI10location_tEC2Ev
	.cfi_endproc

	.section	.text._ZNSt6vectorI12netlist_elemSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI12netlist_elemSaIS0_EE3endEv,comdat
	.weak	_ZNSt6vectorI12netlist_elemSaIS0_EE3endEv
	.align	16, 0x90
	.type	_ZNSt6vectorI12netlist_elemSaIS0_EE3endEv,@function
_ZNSt6vectorI12netlist_elemSaIS0_EE3endEv: # @_ZNSt6vectorI12netlist_elemSaIS0_EE3endEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1439:
	.cfi_def_cfa_offset 16
.Ltmp1440:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1441:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	leaq	8(%rdi), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end277:
	.size	_ZNSt6vectorI12netlist_elemSaIS0_EE3endEv, .Lfunc_end277-_ZNSt6vectorI12netlist_elemSaIS0_EE3endEv
	.cfi_endproc

	.section	.text._ZNSt6vectorI12netlist_elemSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_,"axG",@progbits,_ZNSt6vectorI12netlist_elemSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_,comdat
	.weak	_ZNSt6vectorI12netlist_elemSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_
	.align	16, 0x90
	.type	_ZNSt6vectorI12netlist_elemSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_,@function
_ZNSt6vectorI12netlist_elemSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_: # @_ZNSt6vectorI12netlist_elemSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1442:
	.cfi_def_cfa_offset 16
.Ltmp1443:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1444:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end278:
	.size	_ZNSt6vectorI12netlist_elemSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_, .Lfunc_end278-_ZNSt6vectorI12netlist_elemSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_
	.cfi_endproc

	.section	.text._ZNSt6vectorI12netlist_elemSaIS0_EE15_M_erase_at_endEPS0_,"axG",@progbits,_ZNSt6vectorI12netlist_elemSaIS0_EE15_M_erase_at_endEPS0_,comdat
	.weak	_ZNSt6vectorI12netlist_elemSaIS0_EE15_M_erase_at_endEPS0_
	.align	16, 0x90
	.type	_ZNSt6vectorI12netlist_elemSaIS0_EE15_M_erase_at_endEPS0_,@function
_ZNSt6vectorI12netlist_elemSaIS0_EE15_M_erase_at_endEPS0_: # @_ZNSt6vectorI12netlist_elemSaIS0_EE15_M_erase_at_endEPS0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1445:
	.cfi_def_cfa_offset 16
.Ltmp1446:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1447:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1448:
	.cfi_offset %rbx, -40
.Ltmp1449:
	.cfi_offset %r14, -32
.Ltmp1450:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, -32(%rbp)
	movq	%r14, -40(%rbp)
	movq	-32(%rbp), %rbx
	movq	8(%rbx), %r15
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end279:
	.size	_ZNSt6vectorI12netlist_elemSaIS0_EE15_M_erase_at_endEPS0_, .Lfunc_end279-_ZNSt6vectorI12netlist_elemSaIS0_EE15_M_erase_at_endEPS0_
	.cfi_endproc

	.section	.text._ZNSt6vectorI12netlist_elemSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_,"axG",@progbits,_ZNSt6vectorI12netlist_elemSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_,comdat
	.weak	_ZNSt6vectorI12netlist_elemSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_
	.align	16, 0x90
	.type	_ZNSt6vectorI12netlist_elemSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_,@function
_ZNSt6vectorI12netlist_elemSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_: # @_ZNSt6vectorI12netlist_elemSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_
.Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception26
# BB#0:
	pushq	%rbp
.Ltmp1519:
	.cfi_def_cfa_offset 16
.Ltmp1520:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1521:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
.Ltmp1522:
	.cfi_offset %rbx, -48
.Ltmp1523:
	.cfi_offset %r12, -40
.Ltmp1524:
	.cfi_offset %r14, -32
.Ltmp1525:
	.cfi_offset %r15, -24
	movq	%rsi, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB280_29
# BB#1:
	movq	-48(%rbp), %r15
	movq	16(%r15), %rax
	subq	8(%r15), %rax
	sarq	$6, %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB280_20
# BB#2:
	movq	-64(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	callq	_ZN12netlist_elemC2ERKS_
.Ltmp1483:
	movq	%r15, %rdi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EE3endEv
.Ltmp1484:
# BB#3:
	movq	%rax, -144(%rbp)
.Ltmp1485:
	leaq	-144(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIP12netlist_elemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
.Ltmp1486:
# BB#4:
	movq	%rax, -136(%rbp)
	movq	8(%r15), %rax
	movq	%rax, -168(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB280_12
# BB#5:
	movq	8(%r15), %r14
	movq	-56(%rbp), %rbx
.Ltmp1501:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp1502:
# BB#6:
	shlq	$6, %rbx
	movq	%r14, %rdi
	subq	%rbx, %rdi
.Ltmp1503:
	movq	%r14, %rsi
	movq	%r14, %rdx
	movq	%rax, %rcx
	callq	_ZSt22__uninitialized_move_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_
.Ltmp1504:
# BB#7:
	movq	-56(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, 8(%r15)
.Ltmp1505:
	leaq	-40(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv
.Ltmp1506:
# BB#8:
	movq	(%rax), %rdi
	movq	-168(%rbp), %rdx
	movq	-56(%rbp), %rax
	shlq	$6, %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
.Ltmp1507:
	callq	_ZSt13copy_backwardIP12netlist_elemS1_ET0_T_S3_S2_
.Ltmp1508:
# BB#9:
.Ltmp1509:
	leaq	-40(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv
.Ltmp1510:
# BB#10:
	movq	(%rax), %rbx
.Ltmp1511:
	leaq	-40(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv
.Ltmp1512:
# BB#11:
	movq	-56(%rbp), %rsi
	shlq	$6, %rsi
	addq	(%rax), %rsi
.Ltmp1513:
	leaq	-128(%rbp), %rdx
	movq	%rbx, %rdi
	callq	_ZSt4fillIP12netlist_elemS0_EvT_S2_RKT0_
.Ltmp1514:
	jmp	.LBB280_19
.LBB280_20:
	movq	-56(%rbp), %rsi
	movl	$.L.str.7.22, %edx
	movq	%r15, %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE12_M_check_lenEmPKc
	movq	%rax, -176(%rbp)
	movq	%r15, %rdi
	callq	_ZNSt6vectorI12netlist_elemSaIS0_EE5beginEv
	movq	%rax, -192(%rbp)
	leaq	-40(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIP12netlist_elemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rsi
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE11_M_allocateEm
	movq	%rax, -200(%rbp)
	movq	%rax, -208(%rbp)
	movq	-184(%rbp), %rbx
	shlq	$6, %rbx
	addq	-200(%rbp), %rbx
	movq	-56(%rbp), %r14
	movq	-64(%rbp), %r12
.Ltmp1451:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp1452:
# BB#21:
.Ltmp1453:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt24__uninitialized_fill_n_aIP12netlist_elemmS0_S0_EvT_T0_RKT1_RSaIT2_E
.Ltmp1454:
# BB#22:
	movq	$0, -208(%rbp)
	movq	(%r15), %r14
.Ltmp1455:
	leaq	-40(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv
.Ltmp1456:
# BB#23:
	movq	(%rax), %rbx
	movq	-200(%rbp), %r12
.Ltmp1457:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp1458:
# BB#24:
.Ltmp1459:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_
.Ltmp1460:
# BB#25:
	movq	%rax, -208(%rbp)
	movq	-56(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rax, %rcx
	movq	%rcx, -208(%rbp)
.Ltmp1461:
	leaq	-40(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv
.Ltmp1462:
# BB#26:
	movq	(%rax), %rbx
	movq	8(%r15), %r14
	movq	-208(%rbp), %r12
.Ltmp1463:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp1464:
# BB#27:
.Ltmp1465:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt34__uninitialized_move_if_noexcept_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_
.Ltmp1466:
# BB#28:
	movq	%rax, -208(%rbp)
	movq	(%r15), %rbx
	movq	8(%r15), %r14
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E
	movq	(%r15), %rsi
	movq	16(%r15), %rdx
	subq	%rsi, %rdx
	sarq	$6, %rdx
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE13_M_deallocateEPS0_m
	movq	-200(%rbp), %rax
	movq	%rax, (%r15)
	movq	-208(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-176(%rbp), %rax
	shlq	$6, %rax
	addq	-200(%rbp), %rax
	movq	%rax, 16(%r15)
	jmp	.LBB280_29
.LBB280_12:
	movq	8(%r15), %r14
	movq	-56(%rbp), %rbx
	subq	-136(%rbp), %rbx
.Ltmp1487:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp1488:
# BB#13:
.Ltmp1489:
	leaq	-128(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rcx
	callq	_ZSt24__uninitialized_fill_n_aIP12netlist_elemmS0_S0_EvT_T0_RKT1_RSaIT2_E
.Ltmp1490:
# BB#14:
	movq	-56(%rbp), %rax
	subq	-136(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, 8(%r15)
.Ltmp1491:
	leaq	-40(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv
.Ltmp1492:
# BB#15:
	movq	(%rax), %rbx
	movq	-168(%rbp), %r14
	movq	8(%r15), %r12
.Ltmp1493:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp1494:
# BB#16:
.Ltmp1495:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt22__uninitialized_move_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_
.Ltmp1496:
# BB#17:
	movq	-136(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, 8(%r15)
.Ltmp1497:
	leaq	-40(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv
.Ltmp1498:
# BB#18:
	movq	(%rax), %rdi
	movq	-168(%rbp), %rsi
.Ltmp1499:
	leaq	-128(%rbp), %rdx
	callq	_ZSt4fillIP12netlist_elemS0_EvT_S2_RKT0_
.Ltmp1500:
.LBB280_19:
	leaq	-128(%rbp), %rdi
	callq	_ZN12netlist_elemD2Ev
.LBB280_29:
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB280_38:
.Ltmp1515:
	movq	%rax, -152(%rbp)
	movl	%edx, -156(%rbp)
.Ltmp1516:
	leaq	-128(%rbp), %rdi
	callq	_ZN12netlist_elemD2Ev
.Ltmp1517:
	jmp	.LBB280_39
.LBB280_30:
.Ltmp1467:
	movq	%rax, -152(%rbp)
	movl	%edx, -156(%rbp)
	movq	-152(%rbp), %rdi
	callq	__cxa_begin_catch
	cmpq	$0, -208(%rbp)
	je	.LBB280_31
# BB#34:
	movq	-200(%rbp), %rbx
	movq	-208(%rbp), %r14
.Ltmp1472:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp1473:
# BB#35:
.Ltmp1474:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E
.Ltmp1475:
	jmp	.LBB280_36
.LBB280_31:
	movq	-184(%rbp), %r14
	shlq	$6, %r14
	addq	-200(%rbp), %r14
	movq	-56(%rbp), %rbx
.Ltmp1468:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
.Ltmp1469:
# BB#32:
	shlq	$6, %rbx
.Ltmp1470:
	leaq	(%rbx,%r14), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIP12netlist_elemS0_EvT_S2_RSaIT0_E
.Ltmp1471:
.LBB280_36:
	movq	-200(%rbp), %rsi
	movq	-176(%rbp), %rdx
.Ltmp1476:
	movq	%r15, %rdi
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE13_M_deallocateEPS0_m
.Ltmp1477:
# BB#37:
.Ltmp1478:
	callq	__cxa_rethrow
.Ltmp1479:
# BB#41:
.LBB280_33:
.Ltmp1480:
	movq	%rax, -152(%rbp)
	movl	%edx, -156(%rbp)
.Ltmp1481:
	callq	__cxa_end_catch
.Ltmp1482:
.LBB280_39:
	movq	-152(%rbp), %rdi
	callq	_Unwind_Resume
.LBB280_40:
.Ltmp1518:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end280:
	.size	_ZNSt6vectorI12netlist_elemSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_, .Lfunc_end280-_ZNSt6vectorI12netlist_elemSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table280:
.Lexception26:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\245\201\200\200"      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\234\001"              # Call site table length
	.long	.Lfunc_begin26-.Lfunc_begin26 # >> Call Site 1 <<
	.long	.Ltmp1483-.Lfunc_begin26 #   Call between .Lfunc_begin26 and .Ltmp1483
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1483-.Lfunc_begin26 # >> Call Site 2 <<
	.long	.Ltmp1514-.Ltmp1483     #   Call between .Ltmp1483 and .Ltmp1514
	.long	.Ltmp1515-.Lfunc_begin26 #     jumps to .Ltmp1515
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1514-.Lfunc_begin26 # >> Call Site 3 <<
	.long	.Ltmp1451-.Ltmp1514     #   Call between .Ltmp1514 and .Ltmp1451
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1451-.Lfunc_begin26 # >> Call Site 4 <<
	.long	.Ltmp1466-.Ltmp1451     #   Call between .Ltmp1451 and .Ltmp1466
	.long	.Ltmp1467-.Lfunc_begin26 #     jumps to .Ltmp1467
	.byte	1                       #   On action: 1
	.long	.Ltmp1466-.Lfunc_begin26 # >> Call Site 5 <<
	.long	.Ltmp1487-.Ltmp1466     #   Call between .Ltmp1466 and .Ltmp1487
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1487-.Lfunc_begin26 # >> Call Site 6 <<
	.long	.Ltmp1500-.Ltmp1487     #   Call between .Ltmp1487 and .Ltmp1500
	.long	.Ltmp1515-.Lfunc_begin26 #     jumps to .Ltmp1515
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1500-.Lfunc_begin26 # >> Call Site 7 <<
	.long	.Ltmp1516-.Ltmp1500     #   Call between .Ltmp1500 and .Ltmp1516
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1516-.Lfunc_begin26 # >> Call Site 8 <<
	.long	.Ltmp1517-.Ltmp1516     #   Call between .Ltmp1516 and .Ltmp1517
	.long	.Ltmp1518-.Lfunc_begin26 #     jumps to .Ltmp1518
	.byte	1                       #   On action: 1
	.long	.Ltmp1517-.Lfunc_begin26 # >> Call Site 9 <<
	.long	.Ltmp1472-.Ltmp1517     #   Call between .Ltmp1517 and .Ltmp1472
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1472-.Lfunc_begin26 # >> Call Site 10 <<
	.long	.Ltmp1479-.Ltmp1472     #   Call between .Ltmp1472 and .Ltmp1479
	.long	.Ltmp1480-.Lfunc_begin26 #     jumps to .Ltmp1480
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1481-.Lfunc_begin26 # >> Call Site 11 <<
	.long	.Ltmp1482-.Ltmp1481     #   Call between .Ltmp1481 and .Ltmp1482
	.long	.Ltmp1518-.Lfunc_begin26 #     jumps to .Ltmp1518
	.byte	1                       #   On action: 1
	.long	.Ltmp1482-.Lfunc_begin26 # >> Call Site 12 <<
	.long	.Lfunc_end280-.Ltmp1482 #   Call between .Ltmp1482 and .Lfunc_end280
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZN12netlist_elemC2ERKS_,"axG",@progbits,_ZN12netlist_elemC2ERKS_,comdat
	.weak	_ZN12netlist_elemC2ERKS_
	.align	16, 0x90
	.type	_ZN12netlist_elemC2ERKS_,@function
_ZN12netlist_elemC2ERKS_:               # @_ZN12netlist_elemC2ERKS_
.Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception27
# BB#0:
	pushq	%rbp
.Ltmp1542:
	.cfi_def_cfa_offset 16
.Ltmp1543:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1544:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
.Ltmp1545:
	.cfi_offset %rbx, -40
.Ltmp1546:
	.cfi_offset %r14, -32
.Ltmp1547:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSsC1ERKSs
	leaq	8(%rbx), %r14
	movq	-40(%rbp), %rsi
	addq	$8, %rsi
.Ltmp1526:
	movq	%r14, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EEC2ERKS3_
.Ltmp1527:
# BB#1:
	leaq	32(%rbx), %r15
	movq	-40(%rbp), %rsi
	addq	$32, %rsi
.Ltmp1529:
	movq	%r15, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EEC2ERKS3_
.Ltmp1530:
# BB#2:
	leaq	56(%rbx), %rdi
	movq	-40(%rbp), %rsi
	addq	$56, %rsi
.Ltmp1532:
	callq	_ZN7threads9AtomicPtrI10location_tEC2ERKS2_
.Ltmp1533:
# BB#3:
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB281_4:
.Ltmp1528:
	movq	%rax, -48(%rbp)
	movl	%edx, -52(%rbp)
	jmp	.LBB281_8
.LBB281_5:
.Ltmp1531:
	movq	%rax, -48(%rbp)
	movl	%edx, -52(%rbp)
	jmp	.LBB281_7
.LBB281_6:
.Ltmp1534:
	movq	%rax, -48(%rbp)
	movl	%edx, -52(%rbp)
.Ltmp1535:
	movq	%r15, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev
.Ltmp1536:
.LBB281_7:
.Ltmp1537:
	movq	%r14, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev
.Ltmp1538:
.LBB281_8:
.Ltmp1539:
	movq	%rbx, %rdi
	callq	_ZNSsD1Ev
.Ltmp1540:
# BB#9:
	movq	-48(%rbp), %rdi
	callq	_Unwind_Resume
.LBB281_10:
.Ltmp1541:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end281:
	.size	_ZN12netlist_elemC2ERKS_, .Lfunc_end281-_ZN12netlist_elemC2ERKS_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table281:
.Lexception27:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin27-.Lfunc_begin27 # >> Call Site 1 <<
	.long	.Ltmp1526-.Lfunc_begin27 #   Call between .Lfunc_begin27 and .Ltmp1526
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1526-.Lfunc_begin27 # >> Call Site 2 <<
	.long	.Ltmp1527-.Ltmp1526     #   Call between .Ltmp1526 and .Ltmp1527
	.long	.Ltmp1528-.Lfunc_begin27 #     jumps to .Ltmp1528
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1529-.Lfunc_begin27 # >> Call Site 3 <<
	.long	.Ltmp1530-.Ltmp1529     #   Call between .Ltmp1529 and .Ltmp1530
	.long	.Ltmp1531-.Lfunc_begin27 #     jumps to .Ltmp1531
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1532-.Lfunc_begin27 # >> Call Site 4 <<
	.long	.Ltmp1533-.Ltmp1532     #   Call between .Ltmp1532 and .Ltmp1533
	.long	.Ltmp1534-.Lfunc_begin27 #     jumps to .Ltmp1534
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1535-.Lfunc_begin27 # >> Call Site 5 <<
	.long	.Ltmp1540-.Ltmp1535     #   Call between .Ltmp1535 and .Ltmp1540
	.long	.Ltmp1541-.Lfunc_begin27 #     jumps to .Ltmp1541
	.byte	1                       #   On action: 1
	.long	.Ltmp1540-.Lfunc_begin27 # >> Call Site 6 <<
	.long	.Lfunc_end281-.Ltmp1540 #   Call between .Ltmp1540 and .Lfunc_end281
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZN9__gnu_cxxmiIP12netlist_elemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP12netlist_elemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.weak	_ZN9__gnu_cxxmiIP12netlist_elemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.align	16, 0x90
	.type	_ZN9__gnu_cxxmiIP12netlist_elemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,@function
_ZN9__gnu_cxxmiIP12netlist_elemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_: # @_ZN9__gnu_cxxmiIP12netlist_elemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1548:
	.cfi_def_cfa_offset 16
.Ltmp1549:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1550:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1551:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-24(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv
	subq	(%rax), %rbx
	sarq	$6, %rbx
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end282:
	.size	_ZN9__gnu_cxxmiIP12netlist_elemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .Lfunc_end282-_ZN9__gnu_cxxmiIP12netlist_elemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.cfi_endproc

	.section	.text._ZSt22__uninitialized_move_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt22__uninitialized_move_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt22__uninitialized_move_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_
	.align	16, 0x90
	.type	_ZSt22__uninitialized_move_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_,@function
_ZSt22__uninitialized_move_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_: # @_ZSt22__uninitialized_move_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1552:
	.cfi_def_cfa_offset 16
.Ltmp1553:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1554:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt22__uninitialized_copy_aIP12netlist_elemS1_S0_ET0_T_S3_S2_RSaIT1_E
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end283:
	.size	_ZSt22__uninitialized_move_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_, .Lfunc_end283-_ZSt22__uninitialized_move_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1555:
	.cfi_def_cfa_offset 16
.Ltmp1556:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1557:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end284:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv, .Lfunc_end284-_ZNK9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEE4baseEv
	.cfi_endproc

	.section	.text._ZSt13copy_backwardIP12netlist_elemS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13copy_backwardIP12netlist_elemS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt13copy_backwardIP12netlist_elemS1_ET0_T_S3_S2_
	.align	16, 0x90
	.type	_ZSt13copy_backwardIP12netlist_elemS1_ET0_T_S3_S2_,@function
_ZSt13copy_backwardIP12netlist_elemS1_ET0_T_S3_S2_: # @_ZSt13copy_backwardIP12netlist_elemS1_ET0_T_S3_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1558:
	.cfi_def_cfa_offset 16
.Ltmp1559:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1560:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1561:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZSt12__miter_baseIP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	-24(%rbp), %rdi
	callq	_ZSt12__miter_baseIP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES3_
	movq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZSt23__copy_move_backward_a2ILb0EP12netlist_elemS1_ET1_T0_S3_S2_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end285:
	.size	_ZSt13copy_backwardIP12netlist_elemS1_ET0_T_S3_S2_, .Lfunc_end285-_ZSt13copy_backwardIP12netlist_elemS1_ET0_T_S3_S2_
	.cfi_endproc

	.section	.text._ZSt4fillIP12netlist_elemS0_EvT_S2_RKT0_,"axG",@progbits,_ZSt4fillIP12netlist_elemS0_EvT_S2_RKT0_,comdat
	.weak	_ZSt4fillIP12netlist_elemS0_EvT_S2_RKT0_
	.align	16, 0x90
	.type	_ZSt4fillIP12netlist_elemS0_EvT_S2_RKT0_,@function
_ZSt4fillIP12netlist_elemS0_EvT_S2_RKT0_: # @_ZSt4fillIP12netlist_elemS0_EvT_S2_RKT0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1562:
	.cfi_def_cfa_offset 16
.Ltmp1563:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1564:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1565:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	-24(%rbp), %rdi
	callq	_ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZSt8__fill_aIP12netlist_elemS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end286:
	.size	_ZSt4fillIP12netlist_elemS0_EvT_S2_RKT0_, .Lfunc_end286-_ZSt4fillIP12netlist_elemS0_EvT_S2_RKT0_
	.cfi_endproc

	.section	.text._ZSt24__uninitialized_fill_n_aIP12netlist_elemmS0_S0_EvT_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIP12netlist_elemmS0_S0_EvT_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIP12netlist_elemmS0_S0_EvT_T0_RKT1_RSaIT2_E
	.align	16, 0x90
	.type	_ZSt24__uninitialized_fill_n_aIP12netlist_elemmS0_S0_EvT_T0_RKT1_RSaIT2_E,@function
_ZSt24__uninitialized_fill_n_aIP12netlist_elemmS0_S0_EvT_T0_RKT1_RSaIT2_E: # @_ZSt24__uninitialized_fill_n_aIP12netlist_elemmS0_S0_EvT_T0_RKT1_RSaIT2_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1566:
	.cfi_def_cfa_offset 16
.Ltmp1567:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1568:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt20uninitialized_fill_nIP12netlist_elemmS0_EvT_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end287:
	.size	_ZSt24__uninitialized_fill_n_aIP12netlist_elemmS0_S0_EvT_T0_RKT1_RSaIT2_E, .Lfunc_end287-_ZSt24__uninitialized_fill_n_aIP12netlist_elemmS0_S0_EvT_T0_RKT1_RSaIT2_E
	.cfi_endproc

	.section	.text._ZNKSt6vectorI12netlist_elemSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI12netlist_elemSaIS0_EE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorI12netlist_elemSaIS0_EE12_M_check_lenEmPKc
	.align	16, 0x90
	.type	_ZNKSt6vectorI12netlist_elemSaIS0_EE12_M_check_lenEmPKc,@function
_ZNKSt6vectorI12netlist_elemSaIS0_EE12_M_check_lenEmPKc: # @_ZNKSt6vectorI12netlist_elemSaIS0_EE12_M_check_lenEmPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1569:
	.cfi_def_cfa_offset 16
.Ltmp1570:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1571:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp1572:
	.cfi_offset %rbx, -32
.Ltmp1573:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %r14
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE8max_sizeEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv
	subq	%rax, %rbx
	cmpq	-32(%rbp), %rbx
	jb	.LBB288_6
# BB#1:
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	addq	(%rax), %rbx
	movq	%rbx, -48(%rbp)
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	jb	.LBB288_3
# BB#2:
	movq	-48(%rbp), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE8max_sizeEv
	cmpq	%rax, %rbx
	jbe	.LBB288_4
.LBB288_3:
	movq	%r14, %rdi
	callq	_ZNKSt6vectorI12netlist_elemSaIS0_EE8max_sizeEv
	jmp	.LBB288_5
.LBB288_4:
	movq	-48(%rbp), %rax
.LBB288_5:
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB288_6:
	movq	-40(%rbp), %rdi
	callq	_ZSt20__throw_length_errorPKc
.Lfunc_end288:
	.size	_ZNKSt6vectorI12netlist_elemSaIS0_EE12_M_check_lenEmPKc, .Lfunc_end288-_ZNKSt6vectorI12netlist_elemSaIS0_EE12_M_check_lenEmPKc
	.cfi_endproc

	.section	.text._ZNSt6vectorI12netlist_elemSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI12netlist_elemSaIS0_EE5beginEv,comdat
	.weak	_ZNSt6vectorI12netlist_elemSaIS0_EE5beginEv
	.align	16, 0x90
	.type	_ZNSt6vectorI12netlist_elemSaIS0_EE5beginEv,@function
_ZNSt6vectorI12netlist_elemSaIS0_EE5beginEv: # @_ZNSt6vectorI12netlist_elemSaIS0_EE5beginEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1574:
	.cfi_def_cfa_offset 16
.Ltmp1575:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1576:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEEC2ERKS2_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end289:
	.size	_ZNSt6vectorI12netlist_elemSaIS0_EE5beginEv, .Lfunc_end289-_ZNSt6vectorI12netlist_elemSaIS0_EE5beginEv
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI12netlist_elemSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE11_M_allocateEm
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE11_M_allocateEm: # @_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE11_M_allocateEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1577:
	.cfi_def_cfa_offset 16
.Ltmp1578:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1579:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB290_2
# BB#1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%edx, %edx
	callq	_ZN9__gnu_cxx13new_allocatorI12netlist_elemE8allocateEmPKv
.LBB290_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end290:
	.size	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE11_M_allocateEm, .Lfunc_end290-_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE11_M_allocateEm
	.cfi_endproc

	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_
	.align	16, 0x90
	.type	_ZSt34__uninitialized_move_if_noexcept_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_,@function
_ZSt34__uninitialized_move_if_noexcept_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_: # @_ZSt34__uninitialized_move_if_noexcept_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1580:
	.cfi_def_cfa_offset 16
.Ltmp1581:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1582:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt22__uninitialized_copy_aIP12netlist_elemS1_S0_ET0_T_S3_S2_RSaIT1_E
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end291:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_, .Lfunc_end291-_ZSt34__uninitialized_move_if_noexcept_aIP12netlist_elemS1_SaIS0_EET0_T_S4_S3_RT1_
	.cfi_endproc

	.section	.text._ZSt22__uninitialized_copy_aIP12netlist_elemS1_S0_ET0_T_S3_S2_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIP12netlist_elemS1_S0_ET0_T_S3_S2_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIP12netlist_elemS1_S0_ET0_T_S3_S2_RSaIT1_E
	.align	16, 0x90
	.type	_ZSt22__uninitialized_copy_aIP12netlist_elemS1_S0_ET0_T_S3_S2_RSaIT1_E,@function
_ZSt22__uninitialized_copy_aIP12netlist_elemS1_S0_ET0_T_S3_S2_RSaIT1_E: # @_ZSt22__uninitialized_copy_aIP12netlist_elemS1_S0_ET0_T_S3_S2_RSaIT1_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1583:
	.cfi_def_cfa_offset 16
.Ltmp1584:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1585:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt18uninitialized_copyIP12netlist_elemS1_ET0_T_S3_S2_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end292:
	.size	_ZSt22__uninitialized_copy_aIP12netlist_elemS1_S0_ET0_T_S3_S2_RSaIT1_E, .Lfunc_end292-_ZSt22__uninitialized_copy_aIP12netlist_elemS1_S0_ET0_T_S3_S2_RSaIT1_E
	.cfi_endproc

	.section	.text._ZSt18uninitialized_copyIP12netlist_elemS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt18uninitialized_copyIP12netlist_elemS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt18uninitialized_copyIP12netlist_elemS1_ET0_T_S3_S2_
	.align	16, 0x90
	.type	_ZSt18uninitialized_copyIP12netlist_elemS1_ET0_T_S3_S2_,@function
_ZSt18uninitialized_copyIP12netlist_elemS1_ET0_T_S3_S2_: # @_ZSt18uninitialized_copyIP12netlist_elemS1_ET0_T_S3_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1586:
	.cfi_def_cfa_offset 16
.Ltmp1587:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1588:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP12netlist_elemS3_EET0_T_S5_S4_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end293:
	.size	_ZSt18uninitialized_copyIP12netlist_elemS1_ET0_T_S3_S2_, .Lfunc_end293-_ZSt18uninitialized_copyIP12netlist_elemS1_ET0_T_S3_S2_
	.cfi_endproc

	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP12netlist_elemS3_EET0_T_S5_S4_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP12netlist_elemS3_EET0_T_S5_S4_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP12netlist_elemS3_EET0_T_S5_S4_
	.align	16, 0x90
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP12netlist_elemS3_EET0_T_S5_S4_,@function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP12netlist_elemS3_EET0_T_S5_S4_: # @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP12netlist_elemS3_EET0_T_S5_S4_
.Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception28
# BB#0:
	pushq	%rbp
.Ltmp1602:
	.cfi_def_cfa_offset 16
.Ltmp1603:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1604:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdx, -32(%rbp)
	jmp	.LBB294_1
	.align	16, 0x90
.LBB294_4:                              #   in Loop: Header=BB294_1 Depth=1
	addq	$64, -8(%rbp)
	addq	$64, -32(%rbp)
.LBB294_1:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB294_7
# BB#2:                                 #   in Loop: Header=BB294_1 Depth=1
	movq	-32(%rbp), %rdi
.Ltmp1589:
	callq	_ZSt11__addressofI12netlist_elemEPT_RS1_
.Ltmp1590:
# BB#3:                                 #   in Loop: Header=BB294_1 Depth=1
	movq	-8(%rbp), %rsi
.Ltmp1591:
	movq	%rax, %rdi
	callq	_ZSt10_ConstructI12netlist_elemS0_EvPT_RKT0_
.Ltmp1592:
	jmp	.LBB294_4
.LBB294_5:
.Ltmp1593:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
.Ltmp1594:
	callq	_ZSt8_DestroyIP12netlist_elemEvT_S2_
.Ltmp1595:
# BB#6:
.Ltmp1596:
	callq	__cxa_rethrow
.Ltmp1597:
.LBB294_7:
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB294_8:
.Ltmp1598:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
.Ltmp1599:
	callq	__cxa_end_catch
.Ltmp1600:
# BB#9:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.LBB294_10:
.Ltmp1601:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end294:
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP12netlist_elemS3_EET0_T_S5_S4_, .Lfunc_end294-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP12netlist_elemS3_EET0_T_S5_S4_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table294:
.Lexception28:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	73                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Ltmp1589-.Lfunc_begin28 # >> Call Site 1 <<
	.long	.Ltmp1592-.Ltmp1589     #   Call between .Ltmp1589 and .Ltmp1592
	.long	.Ltmp1593-.Lfunc_begin28 #     jumps to .Ltmp1593
	.byte	1                       #   On action: 1
	.long	.Ltmp1592-.Lfunc_begin28 # >> Call Site 2 <<
	.long	.Ltmp1594-.Ltmp1592     #   Call between .Ltmp1592 and .Ltmp1594
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1594-.Lfunc_begin28 # >> Call Site 3 <<
	.long	.Ltmp1597-.Ltmp1594     #   Call between .Ltmp1594 and .Ltmp1597
	.long	.Ltmp1598-.Lfunc_begin28 #     jumps to .Ltmp1598
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1599-.Lfunc_begin28 # >> Call Site 4 <<
	.long	.Ltmp1600-.Ltmp1599     #   Call between .Ltmp1599 and .Ltmp1600
	.long	.Ltmp1601-.Lfunc_begin28 #     jumps to .Ltmp1601
	.byte	1                       #   On action: 1
	.long	.Ltmp1600-.Lfunc_begin28 # >> Call Site 5 <<
	.long	.Lfunc_end294-.Ltmp1600 #   Call between .Ltmp1600 and .Lfunc_end294
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZSt10_ConstructI12netlist_elemS0_EvPT_RKT0_,"axG",@progbits,_ZSt10_ConstructI12netlist_elemS0_EvPT_RKT0_,comdat
	.weak	_ZSt10_ConstructI12netlist_elemS0_EvPT_RKT0_
	.align	16, 0x90
	.type	_ZSt10_ConstructI12netlist_elemS0_EvPT_RKT0_,@function
_ZSt10_ConstructI12netlist_elemS0_EvPT_RKT0_: # @_ZSt10_ConstructI12netlist_elemS0_EvPT_RKT0_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1605:
	.cfi_def_cfa_offset 16
.Ltmp1606:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1607:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN12netlist_elemC2ERKS_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end295:
	.size	_ZSt10_ConstructI12netlist_elemS0_EvPT_RKT0_, .Lfunc_end295-_ZSt10_ConstructI12netlist_elemS0_EvPT_RKT0_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI12netlist_elemE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI12netlist_elemE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI12netlist_elemE8allocateEmPKv
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI12netlist_elemE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorI12netlist_elemE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorI12netlist_elemE8allocateEmPKv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1608:
	.cfi_def_cfa_offset 16
.Ltmp1609:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1610:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1611:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rbx
	callq	_ZNK9__gnu_cxx13new_allocatorI12netlist_elemE8max_sizeEv
	cmpq	%rax, %rbx
	ja	.LBB296_2
# BB#1:
	movq	-24(%rbp), %rdi
	shlq	$6, %rdi
	callq	_Znwm
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB296_2:
	callq	_ZSt17__throw_bad_allocv
.Lfunc_end296:
	.size	_ZN9__gnu_cxx13new_allocatorI12netlist_elemE8allocateEmPKv, .Lfunc_end296-_ZN9__gnu_cxx13new_allocatorI12netlist_elemE8allocateEmPKv
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx13new_allocatorI12netlist_elemE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI12netlist_elemE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorI12netlist_elemE8max_sizeEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorI12netlist_elemE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorI12netlist_elemE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorI12netlist_elemE8max_sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1612:
	.cfi_def_cfa_offset 16
.Ltmp1613:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1614:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$288230376151711743, %rax # imm = 0x3FFFFFFFFFFFFFF
	popq	%rbp
	retq
.Lfunc_end297:
	.size	_ZNK9__gnu_cxx13new_allocatorI12netlist_elemE8max_sizeEv, .Lfunc_end297-_ZNK9__gnu_cxx13new_allocatorI12netlist_elemE8max_sizeEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEEC2ERKS2_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEEC2ERKS2_,@function
_ZN9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEEC2ERKS2_: # @_ZN9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1615:
	.cfi_def_cfa_offset 16
.Ltmp1616:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1617:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	retq
.Lfunc_end298:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEEC2ERKS2_, .Lfunc_end298-_ZN9__gnu_cxx17__normal_iteratorIP12netlist_elemSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.cfi_endproc

	.section	.text._ZNKSt6vectorI12netlist_elemSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI12netlist_elemSaIS0_EE8max_sizeEv,comdat
	.weak	_ZNKSt6vectorI12netlist_elemSaIS0_EE8max_sizeEv
	.align	16, 0x90
	.type	_ZNKSt6vectorI12netlist_elemSaIS0_EE8max_sizeEv,@function
_ZNKSt6vectorI12netlist_elemSaIS0_EE8max_sizeEv: # @_ZNKSt6vectorI12netlist_elemSaIS0_EE8max_sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1618:
	.cfi_def_cfa_offset 16
.Ltmp1619:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1620:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNKSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaI12netlist_elemEE8max_sizeERKS2_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end299:
	.size	_ZNKSt6vectorI12netlist_elemSaIS0_EE8max_sizeEv, .Lfunc_end299-_ZNKSt6vectorI12netlist_elemSaIS0_EE8max_sizeEv
	.cfi_endproc

	.section	.text._ZNKSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
	.align	16, 0x90
	.type	_ZNKSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1621:
	.cfi_def_cfa_offset 16
.Ltmp1622:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1623:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end300:
	.size	_ZNKSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv, .Lfunc_end300-_ZNKSt12_Vector_baseI12netlist_elemSaIS0_EE19_M_get_Tp_allocatorEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaI12netlist_elemEE8max_sizeERKS2_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaI12netlist_elemEE8max_sizeERKS2_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaI12netlist_elemEE8max_sizeERKS2_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaI12netlist_elemEE8max_sizeERKS2_,@function
_ZN9__gnu_cxx14__alloc_traitsISaI12netlist_elemEE8max_sizeERKS2_: # @_ZN9__gnu_cxx14__alloc_traitsISaI12netlist_elemEE8max_sizeERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1624:
	.cfi_def_cfa_offset 16
.Ltmp1625:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1626:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNK9__gnu_cxx13new_allocatorI12netlist_elemE8max_sizeEv
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end301:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaI12netlist_elemEE8max_sizeERKS2_, .Lfunc_end301-_ZN9__gnu_cxx14__alloc_traitsISaI12netlist_elemEE8max_sizeERKS2_
	.cfi_endproc

	.section	.text._ZSt20uninitialized_fill_nIP12netlist_elemmS0_EvT_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIP12netlist_elemmS0_EvT_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIP12netlist_elemmS0_EvT_T0_RKT1_
	.align	16, 0x90
	.type	_ZSt20uninitialized_fill_nIP12netlist_elemmS0_EvT_T0_RKT1_,@function
_ZSt20uninitialized_fill_nIP12netlist_elemmS0_EvT_T0_RKT1_: # @_ZSt20uninitialized_fill_nIP12netlist_elemmS0_EvT_T0_RKT1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1627:
	.cfi_def_cfa_offset 16
.Ltmp1628:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1629:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP12netlist_elemmS2_EEvT_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end302:
	.size	_ZSt20uninitialized_fill_nIP12netlist_elemmS0_EvT_T0_RKT1_, .Lfunc_end302-_ZSt20uninitialized_fill_nIP12netlist_elemmS0_EvT_T0_RKT1_
	.cfi_endproc

	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP12netlist_elemmS2_EEvT_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP12netlist_elemmS2_EEvT_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP12netlist_elemmS2_EEvT_T0_RKT1_
	.align	16, 0x90
	.type	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP12netlist_elemmS2_EEvT_T0_RKT1_,@function
_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP12netlist_elemmS2_EEvT_T0_RKT1_: # @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP12netlist_elemmS2_EEvT_T0_RKT1_
.Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception29
# BB#0:
	pushq	%rbp
.Ltmp1643:
	.cfi_def_cfa_offset 16
.Ltmp1644:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1645:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB303_1
	.align	16, 0x90
.LBB303_4:                              #   in Loop: Header=BB303_1 Depth=1
	decq	-16(%rbp)
	addq	$64, -32(%rbp)
.LBB303_1:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB303_7
# BB#2:                                 #   in Loop: Header=BB303_1 Depth=1
	movq	-32(%rbp), %rdi
.Ltmp1630:
	callq	_ZSt11__addressofI12netlist_elemEPT_RS1_
.Ltmp1631:
# BB#3:                                 #   in Loop: Header=BB303_1 Depth=1
	movq	-24(%rbp), %rsi
.Ltmp1632:
	movq	%rax, %rdi
	callq	_ZSt10_ConstructI12netlist_elemS0_EvPT_RKT0_
.Ltmp1633:
	jmp	.LBB303_4
.LBB303_5:
.Ltmp1634:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
.Ltmp1635:
	callq	_ZSt8_DestroyIP12netlist_elemEvT_S2_
.Ltmp1636:
# BB#6:
.Ltmp1637:
	callq	__cxa_rethrow
.Ltmp1638:
.LBB303_7:
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB303_8:
.Ltmp1639:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
.Ltmp1640:
	callq	__cxa_end_catch
.Ltmp1641:
# BB#9:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.LBB303_10:
.Ltmp1642:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end303:
	.size	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP12netlist_elemmS2_EEvT_T0_RKT1_, .Lfunc_end303-_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP12netlist_elemmS2_EEvT_T0_RKT1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table303:
.Lexception29:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	73                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Ltmp1630-.Lfunc_begin29 # >> Call Site 1 <<
	.long	.Ltmp1633-.Ltmp1630     #   Call between .Ltmp1630 and .Ltmp1633
	.long	.Ltmp1634-.Lfunc_begin29 #     jumps to .Ltmp1634
	.byte	1                       #   On action: 1
	.long	.Ltmp1633-.Lfunc_begin29 # >> Call Site 2 <<
	.long	.Ltmp1635-.Ltmp1633     #   Call between .Ltmp1633 and .Ltmp1635
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1635-.Lfunc_begin29 # >> Call Site 3 <<
	.long	.Ltmp1638-.Ltmp1635     #   Call between .Ltmp1635 and .Ltmp1638
	.long	.Ltmp1639-.Lfunc_begin29 #     jumps to .Ltmp1639
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1640-.Lfunc_begin29 # >> Call Site 4 <<
	.long	.Ltmp1641-.Ltmp1640     #   Call between .Ltmp1640 and .Ltmp1641
	.long	.Ltmp1642-.Lfunc_begin29 #     jumps to .Ltmp1642
	.byte	1                       #   On action: 1
	.long	.Ltmp1641-.Lfunc_begin29 # >> Call Site 5 <<
	.long	.Lfunc_end303-.Ltmp1641 #   Call between .Ltmp1641 and .Lfunc_end303
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_,"axG",@progbits,_ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_,comdat
	.weak	_ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_
	.align	16, 0x90
	.type	_ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_,@function
_ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_: # @_ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1646:
	.cfi_def_cfa_offset 16
.Ltmp1647:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1648:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt10_Iter_baseIP12netlist_elemLb0EE7_S_baseES1_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end304:
	.size	_ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_, .Lfunc_end304-_ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_
	.cfi_endproc

	.section	.text._ZSt8__fill_aIP12netlist_elemS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_,"axG",@progbits,_ZSt8__fill_aIP12netlist_elemS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_,comdat
	.weak	_ZSt8__fill_aIP12netlist_elemS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_
	.align	16, 0x90
	.type	_ZSt8__fill_aIP12netlist_elemS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_,@function
_ZSt8__fill_aIP12netlist_elemS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_: # @_ZSt8__fill_aIP12netlist_elemS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1649:
	.cfi_def_cfa_offset 16
.Ltmp1650:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1651:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.LBB305_1
	.align	16, 0x90
.LBB305_2:                              #   in Loop: Header=BB305_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_ZN12netlist_elemaSERKS_
	addq	$64, -8(%rbp)
.LBB305_1:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB305_2
# BB#3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end305:
	.size	_ZSt8__fill_aIP12netlist_elemS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_, .Lfunc_end305-_ZSt8__fill_aIP12netlist_elemS0_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S7_RKS4_
	.cfi_endproc

	.section	.text._ZN12netlist_elemaSERKS_,"axG",@progbits,_ZN12netlist_elemaSERKS_,comdat
	.weak	_ZN12netlist_elemaSERKS_
	.align	16, 0x90
	.type	_ZN12netlist_elemaSERKS_,@function
_ZN12netlist_elemaSERKS_:               # @_ZN12netlist_elemaSERKS_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1652:
	.cfi_def_cfa_offset 16
.Ltmp1653:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1654:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1655:
	.cfi_offset %rbx, -40
.Ltmp1656:
	.cfi_offset %r14, -32
.Ltmp1657:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSsaSERKSs
	leaq	8(%rbx), %rdi
	movq	-40(%rbp), %rsi
	addq	$8, %rsi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EEaSERKS3_
	leaq	32(%rbx), %rdi
	movq	-40(%rbp), %rsi
	addq	$32, %rsi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EEaSERKS3_
	leaq	56(%rbx), %r14
	movq	-40(%rbp), %rsi
	addq	$56, %rsi
	leaq	-48(%rbp), %r15
	movq	%r15, %rdi
	callq	_ZN7threads9AtomicPtrI10location_tEC2ERKS2_
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZN7threads9AtomicPtrI10location_tEaSES2_
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end306:
	.size	_ZN12netlist_elemaSERKS_, .Lfunc_end306-_ZN12netlist_elemaSERKS_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP12netlist_elemSaIS1_EEaSERKS3_,"axG",@progbits,_ZNSt6vectorIP12netlist_elemSaIS1_EEaSERKS3_,comdat
	.weak	_ZNSt6vectorIP12netlist_elemSaIS1_EEaSERKS3_
	.align	16, 0x90
	.type	_ZNSt6vectorIP12netlist_elemSaIS1_EEaSERKS3_,@function
_ZNSt6vectorIP12netlist_elemSaIS1_EEaSERKS3_: # @_ZNSt6vectorIP12netlist_elemSaIS1_EEaSERKS3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1658:
	.cfi_def_cfa_offset 16
.Ltmp1659:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1660:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
.Ltmp1661:
	.cfi_offset %rbx, -48
.Ltmp1662:
	.cfi_offset %r12, -40
.Ltmp1663:
	.cfi_offset %r14, -32
.Ltmp1664:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %r14
	cmpq	%r14, %rsi
	je	.LBB307_7
# BB#1:
	movq	-48(%rbp), %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	movq	%rax, %rbx
	movq	%rbx, -56(%rbp)
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE8capacityEv
	cmpq	%rax, %rbx
	jbe	.LBB307_3
# BB#2:
	movq	-56(%rbp), %rbx
	movq	-48(%rbp), %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE5beginEv
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE3endEv
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rcx
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_
	movq	%rax, -64(%rbp)
	movq	(%r14), %rbx
	movq	8(%r14), %r15
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPP12netlist_elemS1_EvT_S3_RSaIT0_E
	movq	(%r14), %rsi
	movq	16(%r14), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m
	movq	-64(%rbp), %rax
	movq	%rax, (%r14)
	movq	-56(%rbp), %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, 16(%r14)
	jmp	.LBB307_6
.LBB307_3:
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	cmpq	-56(%rbp), %rax
	jb	.LBB307_5
# BB#4:
	movq	-48(%rbp), %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE5beginEv
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE3endEv
	movq	%rax, -104(%rbp)
	movq	%r14, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EE5beginEv
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	%rax, %rdx
	callq	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_
	movq	%rax, -88(%rbp)
	movq	%r14, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EE3endEv
	movq	%rax, -120(%rbp)
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
	movq	-88(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E
	jmp	.LBB307_6
.LBB307_5:
	movq	-48(%rbp), %rax
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	leaq	(%rbx,%rax,8), %rsi
	movq	(%r14), %rdx
	movq	%rbx, %rdi
	callq	_ZSt4copyIPP12netlist_elemS2_ET0_T_S4_S3_
	movq	-48(%rbp), %rax
	movq	(%rax), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	leaq	(%rbx,%rax,8), %r15
	movq	-48(%rbp), %rax
	movq	8(%rax), %rbx
	movq	8(%r14), %r12
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt22__uninitialized_copy_aIPP12netlist_elemS2_S1_ET0_T_S4_S3_RSaIT1_E
.LBB307_6:
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	addq	(%r14), %rax
	movq	%rax, 8(%r14)
.LBB307_7:
	movq	%r14, %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end307:
	.size	_ZNSt6vectorIP12netlist_elemSaIS1_EEaSERKS3_, .Lfunc_end307-_ZNSt6vectorIP12netlist_elemSaIS1_EEaSERKS3_
	.cfi_endproc

	.section	.text._ZN7threads9AtomicPtrI10location_tEC2ERKS2_,"axG",@progbits,_ZN7threads9AtomicPtrI10location_tEC2ERKS2_,comdat
	.weak	_ZN7threads9AtomicPtrI10location_tEC2ERKS2_
	.align	16, 0x90
	.type	_ZN7threads9AtomicPtrI10location_tEC2ERKS2_,@function
_ZN7threads9AtomicPtrI10location_tEC2ERKS2_: # @_ZN7threads9AtomicPtrI10location_tEC2ERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1665:
	.cfi_def_cfa_offset 16
.Ltmp1666:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1667:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1668:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rsi, %rdi
	callq	_ZNK7threads9AtomicPtrI10location_tE3GetEv
	movq	%rax, (%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end308:
	.size	_ZN7threads9AtomicPtrI10location_tEC2ERKS2_, .Lfunc_end308-_ZN7threads9AtomicPtrI10location_tEC2ERKS2_
	.cfi_endproc

	.section	.text._ZN7threads9AtomicPtrI10location_tEaSES2_,"axG",@progbits,_ZN7threads9AtomicPtrI10location_tEaSES2_,comdat
	.weak	_ZN7threads9AtomicPtrI10location_tEaSES2_
	.align	16, 0x90
	.type	_ZN7threads9AtomicPtrI10location_tEaSES2_,@function
_ZN7threads9AtomicPtrI10location_tEaSES2_: # @_ZN7threads9AtomicPtrI10location_tEaSES2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1669:
	.cfi_def_cfa_offset 16
.Ltmp1670:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1671:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	(%rsi), %rsi
	movq	%rsi, -16(%rbp)
	callq	_ZN7threads9AtomicPtrI10location_tE3SetEPS1_
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end309:
	.size	_ZN7threads9AtomicPtrI10location_tEaSES2_, .Lfunc_end309-_ZN7threads9AtomicPtrI10location_tEaSES2_
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP12netlist_elemSaIS1_EE8capacityEv,"axG",@progbits,_ZNKSt6vectorIP12netlist_elemSaIS1_EE8capacityEv,comdat
	.weak	_ZNKSt6vectorIP12netlist_elemSaIS1_EE8capacityEv
	.align	16, 0x90
	.type	_ZNKSt6vectorIP12netlist_elemSaIS1_EE8capacityEv,@function
_ZNKSt6vectorIP12netlist_elemSaIS1_EE8capacityEv: # @_ZNKSt6vectorIP12netlist_elemSaIS1_EE8capacityEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1672:
	.cfi_def_cfa_offset 16
.Ltmp1673:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1674:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	16(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	popq	%rbp
	retq
.Lfunc_end310:
	.size	_ZNKSt6vectorIP12netlist_elemSaIS1_EE8capacityEv, .Lfunc_end310-_ZNKSt6vectorIP12netlist_elemSaIS1_EE8capacityEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP12netlist_elemSaIS1_EE5beginEv,"axG",@progbits,_ZNKSt6vectorIP12netlist_elemSaIS1_EE5beginEv,comdat
	.weak	_ZNKSt6vectorIP12netlist_elemSaIS1_EE5beginEv
	.align	16, 0x90
	.type	_ZNKSt6vectorIP12netlist_elemSaIS1_EE5beginEv,@function
_ZNKSt6vectorIP12netlist_elemSaIS1_EE5beginEv: # @_ZNKSt6vectorIP12netlist_elemSaIS1_EE5beginEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1675:
	.cfi_def_cfa_offset 16
.Ltmp1676:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1677:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -24(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS4_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end311:
	.size	_ZNKSt6vectorIP12netlist_elemSaIS1_EE5beginEv, .Lfunc_end311-_ZNKSt6vectorIP12netlist_elemSaIS1_EE5beginEv
	.cfi_endproc

	.section	.text._ZNKSt6vectorIP12netlist_elemSaIS1_EE3endEv,"axG",@progbits,_ZNKSt6vectorIP12netlist_elemSaIS1_EE3endEv,comdat
	.weak	_ZNKSt6vectorIP12netlist_elemSaIS1_EE3endEv
	.align	16, 0x90
	.type	_ZNKSt6vectorIP12netlist_elemSaIS1_EE3endEv,@function
_ZNKSt6vectorIP12netlist_elemSaIS1_EE3endEv: # @_ZNKSt6vectorIP12netlist_elemSaIS1_EE3endEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1678:
	.cfi_def_cfa_offset 16
.Ltmp1679:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1680:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	8(%rdi), %rax
	movq	%rax, -24(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS4_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end312:
	.size	_ZNKSt6vectorIP12netlist_elemSaIS1_EE3endEv, .Lfunc_end312-_ZNKSt6vectorIP12netlist_elemSaIS1_EE3endEv
	.cfi_endproc

	.section	.text._ZNSt6vectorIP12netlist_elemSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_,"axG",@progbits,_ZNSt6vectorIP12netlist_elemSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_,comdat
	.weak	_ZNSt6vectorIP12netlist_elemSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_
	.align	16, 0x90
	.type	_ZNSt6vectorIP12netlist_elemSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_,@function
_ZNSt6vectorIP12netlist_elemSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_: # @_ZNSt6vectorIP12netlist_elemSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_
.Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception30
# BB#0:
	pushq	%rbp
.Ltmp1694:
	.cfi_def_cfa_offset 16
.Ltmp1695:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1696:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp1697:
	.cfi_offset %rbx, -32
.Ltmp1698:
	.cfi_offset %r14, -24
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %r14
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE11_M_allocateEm
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rbx
.Ltmp1681:
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp1682:
# BB#1:
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
.Ltmp1683:
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
.Ltmp1684:
# BB#2:
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB313_3:
.Ltmp1685:
	movq	%rax, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
.Ltmp1686:
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE13_M_deallocateEPS1_m
.Ltmp1687:
# BB#4:
.Ltmp1688:
	callq	__cxa_rethrow
.Ltmp1689:
# BB#8:
.LBB313_5:
.Ltmp1690:
	movq	%rax, -80(%rbp)
	movl	%edx, -84(%rbp)
.Ltmp1691:
	callq	__cxa_end_catch
.Ltmp1692:
# BB#6:
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume
.LBB313_7:
.Ltmp1693:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end313:
	.size	_ZNSt6vectorIP12netlist_elemSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_, .Lfunc_end313-_ZNSt6vectorIP12netlist_elemSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table313:
.Lexception30:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin30-.Lfunc_begin30 # >> Call Site 1 <<
	.long	.Ltmp1681-.Lfunc_begin30 #   Call between .Lfunc_begin30 and .Ltmp1681
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1681-.Lfunc_begin30 # >> Call Site 2 <<
	.long	.Ltmp1684-.Ltmp1681     #   Call between .Ltmp1681 and .Ltmp1684
	.long	.Ltmp1685-.Lfunc_begin30 #     jumps to .Ltmp1685
	.byte	1                       #   On action: 1
	.long	.Ltmp1684-.Lfunc_begin30 # >> Call Site 3 <<
	.long	.Ltmp1686-.Ltmp1684     #   Call between .Ltmp1684 and .Ltmp1686
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1686-.Lfunc_begin30 # >> Call Site 4 <<
	.long	.Ltmp1689-.Ltmp1686     #   Call between .Ltmp1686 and .Ltmp1689
	.long	.Ltmp1690-.Lfunc_begin30 #     jumps to .Ltmp1690
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1691-.Lfunc_begin30 # >> Call Site 5 <<
	.long	.Ltmp1692-.Ltmp1691     #   Call between .Ltmp1691 and .Ltmp1692
	.long	.Ltmp1693-.Lfunc_begin30 #     jumps to .Ltmp1693
	.byte	1                       #   On action: 1
	.long	.Ltmp1692-.Lfunc_begin30 # >> Call Site 6 <<
	.long	.Lfunc_end313-.Ltmp1692 #   Call between .Ltmp1692 and .Lfunc_end313
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_
	.align	16, 0x90
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_,@function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_: # @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1699:
	.cfi_def_cfa_offset 16
.Ltmp1700:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1701:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_
	movq	%rax, -8(%rbp)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end314:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_, .Lfunc_end314-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_
	.cfi_endproc

	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E
	.align	16, 0x90
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E,@function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E: # @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1702:
	.cfi_def_cfa_offset 16
.Ltmp1703:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1704:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEEvT_S9_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end315:
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E, .Lfunc_end315-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E
	.cfi_endproc

	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEEvT_S9_,"axG",@progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEEvT_S9_,comdat
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEEvT_S9_
	.align	16, 0x90
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEEvT_S9_,@function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEEvT_S9_: # @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEEvT_S9_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1705:
	.cfi_def_cfa_offset 16
.Ltmp1706:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1707:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS5_SaIS5_EEEEEEvT_SB_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end316:
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEEvT_S9_, .Lfunc_end316-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEEvT_S9_
	.cfi_endproc

	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS5_SaIS5_EEEEEEvT_SB_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS5_SaIS5_EEEEEEvT_SB_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS5_SaIS5_EEEEEEvT_SB_
	.align	16, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS5_SaIS5_EEEEEEvT_SB_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS5_SaIS5_EEEEEEvT_SB_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS5_SaIS5_EEEEEEvT_SB_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1708:
	.cfi_def_cfa_offset 16
.Ltmp1709:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1710:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end317:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS5_SaIS5_EEEEEEvT_SB_, .Lfunc_end317-_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS5_SaIS5_EEEEEEvT_SB_
	.cfi_endproc

	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_
	.align	16, 0x90
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_,@function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_: # @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1711:
	.cfi_def_cfa_offset 16
.Ltmp1712:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1713:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rdi, -24(%rbp)
	callq	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb0EE7_S_baseES9_
	movq	%rax, -8(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end318:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_, .Lfunc_end318-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_
	.cfi_endproc

	.section	.text._ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_
	.align	16, 0x90
	.type	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_,@function
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_: # @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1714:
	.cfi_def_cfa_offset 16
.Ltmp1715:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1716:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp1717:
	.cfi_offset %rbx, -32
.Ltmp1718:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)
	callq	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_
	movq	%rax, %r14
	movq	-40(%rbp), %rdi
	movq	%rdi, -72(%rbp)
	callq	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_
	movq	%rax, %rbx
	movq	-48(%rbp), %rdi
	movq	%rdi, -80(%rbp)
	callq	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt13__copy_move_aILb0EPKP12netlist_elemPS1_ET1_T0_S6_S5_
	movq	%rax, -56(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS3_
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end319:
	.size	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_, .Lfunc_end319-_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_
	.cfi_endproc

	.section	.text._ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_,"axG",@progbits,_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_,comdat
	.weak	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_
	.align	16, 0x90
	.type	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_,@function
_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_: # @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1719:
	.cfi_def_cfa_offset 16
.Ltmp1720:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1721:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	callq	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES9_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end320:
	.size	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_, .Lfunc_end320-_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_
	.cfi_endproc

	.section	.text._ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_,"axG",@progbits,_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_,comdat
	.weak	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_
	.align	16, 0x90
	.type	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_,@function
_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_: # @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1722:
	.cfi_def_cfa_offset 16
.Ltmp1723:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1724:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	callq	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES8_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end321:
	.size	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_, .Lfunc_end321-_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESA_
	.cfi_endproc

	.section	.text._ZSt13__copy_move_aILb0EPKP12netlist_elemPS1_ET1_T0_S6_S5_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKP12netlist_elemPS1_ET1_T0_S6_S5_,comdat
	.weak	_ZSt13__copy_move_aILb0EPKP12netlist_elemPS1_ET1_T0_S6_S5_
	.align	16, 0x90
	.type	_ZSt13__copy_move_aILb0EPKP12netlist_elemPS1_ET1_T0_S6_S5_,@function
_ZSt13__copy_move_aILb0EPKP12netlist_elemPS1_ET1_T0_S6_S5_: # @_ZSt13__copy_move_aILb0EPKP12netlist_elemPS1_ET1_T0_S6_S5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1725:
	.cfi_def_cfa_offset 16
.Ltmp1726:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1727:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP12netlist_elemEEPT_PKS5_S8_S6_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end322:
	.size	_ZSt13__copy_move_aILb0EPKP12netlist_elemPS1_ET1_T0_S6_S5_, .Lfunc_end322-_ZSt13__copy_move_aILb0EPKP12netlist_elemPS1_ET1_T0_S6_S5_
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES8_,"axG",@progbits,_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES8_,comdat
	.weak	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES8_
	.align	16, 0x90
	.type	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES8_,@function
_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES8_: # @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES8_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1728:
	.cfi_def_cfa_offset 16
.Ltmp1729:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1730:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end323:
	.size	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES8_, .Lfunc_end323-_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES8_
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES9_,"axG",@progbits,_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES9_,comdat
	.weak	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES9_
	.align	16, 0x90
	.type	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES9_,@function
_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES9_: # @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES9_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1731:
	.cfi_def_cfa_offset 16
.Ltmp1732:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1733:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end324:
	.size	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES9_, .Lfunc_end324-_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb1EE7_S_baseES9_
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1734:
	.cfi_def_cfa_offset 16
.Ltmp1735:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1736:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end325:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv, .Lfunc_end325-_ZNK9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEE4baseEv
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb0EE7_S_baseES9_,"axG",@progbits,_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb0EE7_S_baseES9_,comdat
	.weak	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb0EE7_S_baseES9_
	.align	16, 0x90
	.type	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb0EE7_S_baseES9_,@function
_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb0EE7_S_baseES9_: # @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb0EE7_S_baseES9_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1737:
	.cfi_def_cfa_offset 16
.Ltmp1738:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1739:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end326:
	.size	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb0EE7_S_baseES9_, .Lfunc_end326-_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEELb0EE7_S_baseES9_
	.cfi_endproc

	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
	.align	16, 0x90
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E,@function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E: # @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1740:
	.cfi_def_cfa_offset 16
.Ltmp1741:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1742:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end327:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E, .Lfunc_end327-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
	.cfi_endproc

	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.align	16, 0x90
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,@function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_: # @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1743:
	.cfi_def_cfa_offset 16
.Ltmp1744:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1745:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end328:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_, .Lfunc_end328-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.cfi_endproc

	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
	.align	16, 0x90
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_,@function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_: # @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1746:
	.cfi_def_cfa_offset 16
.Ltmp1747:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1748:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end329:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_, .Lfunc_end329-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
	.cfi_endproc

	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.align	16, 0x90
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,@function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_: # @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1749:
	.cfi_def_cfa_offset 16
.Ltmp1750:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1751:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Miter_baseIT_E13iterator_typeESB_
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end330:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_, .Lfunc_end330-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.cfi_endproc

	.section	.text._ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_
	.align	16, 0x90
	.type	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_,@function
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_: # @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1752:
	.cfi_def_cfa_offset 16
.Ltmp1753:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1754:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp1755:
	.cfi_offset %rbx, -32
.Ltmp1756:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	callq	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_
	movq	%rax, %r14
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)
	callq	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEENSt11_Niter_baseIT_E13iterator_typeESB_
	movq	%rax, %rbx
	movq	-40(%rbp), %rdi
	callq	_ZSt12__niter_baseIPP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt13__copy_move_aILb0EPKP12netlist_elemPS1_ET1_T0_S6_S5_
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end331:
	.size	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_, .Lfunc_end331-_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS4_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS4_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS4_,@function
_ZN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS4_: # @_ZN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1757:
	.cfi_def_cfa_offset 16
.Ltmp1758:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1759:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	retq
.Lfunc_end332:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS4_, .Lfunc_end332-_ZN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS2_SaIS2_EEEC2ERKS4_
	.cfi_endproc

	.section	.text._ZNSt10_Iter_baseIP12netlist_elemLb0EE7_S_baseES1_,"axG",@progbits,_ZNSt10_Iter_baseIP12netlist_elemLb0EE7_S_baseES1_,comdat
	.weak	_ZNSt10_Iter_baseIP12netlist_elemLb0EE7_S_baseES1_
	.align	16, 0x90
	.type	_ZNSt10_Iter_baseIP12netlist_elemLb0EE7_S_baseES1_,@function
_ZNSt10_Iter_baseIP12netlist_elemLb0EE7_S_baseES1_: # @_ZNSt10_Iter_baseIP12netlist_elemLb0EE7_S_baseES1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1760:
	.cfi_def_cfa_offset 16
.Ltmp1761:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1762:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end333:
	.size	_ZNSt10_Iter_baseIP12netlist_elemLb0EE7_S_baseES1_, .Lfunc_end333-_ZNSt10_Iter_baseIP12netlist_elemLb0EE7_S_baseES1_
	.cfi_endproc

	.section	.text._ZSt12__miter_baseIP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES3_,"axG",@progbits,_ZSt12__miter_baseIP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES3_,comdat
	.weak	_ZSt12__miter_baseIP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES3_
	.align	16, 0x90
	.type	_ZSt12__miter_baseIP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES3_,@function
_ZSt12__miter_baseIP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES3_: # @_ZSt12__miter_baseIP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1763:
	.cfi_def_cfa_offset 16
.Ltmp1764:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1765:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt10_Iter_baseIP12netlist_elemLb0EE7_S_baseES1_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end334:
	.size	_ZSt12__miter_baseIP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES3_, .Lfunc_end334-_ZSt12__miter_baseIP12netlist_elemENSt11_Miter_baseIT_E13iterator_typeES3_
	.cfi_endproc

	.section	.text._ZSt23__copy_move_backward_a2ILb0EP12netlist_elemS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EP12netlist_elemS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EP12netlist_elemS1_ET1_T0_S3_S2_
	.align	16, 0x90
	.type	_ZSt23__copy_move_backward_a2ILb0EP12netlist_elemS1_ET1_T0_S3_S2_,@function
_ZSt23__copy_move_backward_a2ILb0EP12netlist_elemS1_ET1_T0_S3_S2_: # @_ZSt23__copy_move_backward_a2ILb0EP12netlist_elemS1_ET1_T0_S3_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1766:
	.cfi_def_cfa_offset 16
.Ltmp1767:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1768:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Ltmp1769:
	.cfi_offset %rbx, -32
.Ltmp1770:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %r14
	movq	-32(%rbp), %rdi
	callq	_ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%rax, %rbx
	movq	-40(%rbp), %rdi
	callq	_ZSt12__niter_baseIP12netlist_elemENSt11_Niter_baseIT_E13iterator_typeES3_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt22__copy_move_backward_aILb0EP12netlist_elemS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end335:
	.size	_ZSt23__copy_move_backward_a2ILb0EP12netlist_elemS1_ET1_T0_S3_S2_, .Lfunc_end335-_ZSt23__copy_move_backward_a2ILb0EP12netlist_elemS1_ET1_T0_S3_S2_
	.cfi_endproc

	.section	.text._ZSt22__copy_move_backward_aILb0EP12netlist_elemS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EP12netlist_elemS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EP12netlist_elemS1_ET1_T0_S3_S2_
	.align	16, 0x90
	.type	_ZSt22__copy_move_backward_aILb0EP12netlist_elemS1_ET1_T0_S3_S2_,@function
_ZSt22__copy_move_backward_aILb0EP12netlist_elemS1_ET1_T0_S3_S2_: # @_ZSt22__copy_move_backward_aILb0EP12netlist_elemS1_ET1_T0_S3_S2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1771:
	.cfi_def_cfa_offset 16
.Ltmp1772:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1773:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemS4_EET0_T_S6_S5_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end336:
	.size	_ZSt22__copy_move_backward_aILb0EP12netlist_elemS1_ET1_T0_S3_S2_, .Lfunc_end336-_ZSt22__copy_move_backward_aILb0EP12netlist_elemS1_ET1_T0_S3_S2_
	.cfi_endproc

	.section	.text._ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemS4_EET0_T_S6_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemS4_EET0_T_S6_S5_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemS4_EET0_T_S6_S5_
	.align	16, 0x90
	.type	_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemS4_EET0_T_S6_S5_,@function
_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemS4_EET0_T_S6_S5_: # @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemS4_EET0_T_S6_S5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1774:
	.cfi_def_cfa_offset 16
.Ltmp1775:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1776:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	sarq	$6, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB337_1
	.align	16, 0x90
.LBB337_2:                              #   in Loop: Header=BB337_1 Depth=1
	movq	-24(%rbp), %rdi
	addq	$-64, %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rsi
	addq	$-64, %rsi
	movq	%rsi, -16(%rbp)
	callq	_ZN12netlist_elemaSERKS_
	decq	-32(%rbp)
.LBB337_1:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	jg	.LBB337_2
# BB#3:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end337:
	.size	_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemS4_EET0_T_S6_S5_, .Lfunc_end337-_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIP12netlist_elemS4_EET0_T_S6_S5_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP12netlist_elemSaIS1_EEC2ERKS3_,"axG",@progbits,_ZNSt6vectorIP12netlist_elemSaIS1_EEC2ERKS3_,comdat
	.weak	_ZNSt6vectorIP12netlist_elemSaIS1_EEC2ERKS3_
	.align	16, 0x90
	.type	_ZNSt6vectorIP12netlist_elemSaIS1_EEC2ERKS3_,@function
_ZNSt6vectorIP12netlist_elemSaIS1_EEC2ERKS3_: # @_ZNSt6vectorIP12netlist_elemSaIS1_EEC2ERKS3_
.Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception31
# BB#0:
	pushq	%rbp
.Ltmp1789:
	.cfi_def_cfa_offset 16
.Ltmp1790:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1791:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp1792:
	.cfi_offset %rbx, -32
.Ltmp1793:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %r14
	movq	%rsi, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	movq	%rax, %rbx
	movq	-32(%rbp), %rdi
	callq	_ZNKSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE17_S_select_on_copyERKS3_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2EmRKS2_
	movq	-32(%rbp), %rdi
.Ltmp1777:
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE5beginEv
.Ltmp1778:
# BB#1:
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
.Ltmp1779:
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE3endEv
.Ltmp1780:
# BB#2:
	movq	%rax, -64(%rbp)
	movq	(%r14), %rbx
.Ltmp1781:
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp1782:
# BB#3:
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
.Ltmp1783:
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP12netlist_elemSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
.Ltmp1784:
# BB#4:
	movq	%rax, 8(%r14)
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB338_5:
.Ltmp1785:
	movq	%rax, -48(%rbp)
	movl	%edx, -52(%rbp)
.Ltmp1786:
	movq	%r14, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EED2Ev
.Ltmp1787:
# BB#6:
	movq	-48(%rbp), %rdi
	callq	_Unwind_Resume
.LBB338_7:
.Ltmp1788:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end338:
	.size	_ZNSt6vectorIP12netlist_elemSaIS1_EEC2ERKS3_, .Lfunc_end338-_ZNSt6vectorIP12netlist_elemSaIS1_EEC2ERKS3_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table338:
.Lexception31:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\274"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Lfunc_begin31-.Lfunc_begin31 # >> Call Site 1 <<
	.long	.Ltmp1777-.Lfunc_begin31 #   Call between .Lfunc_begin31 and .Ltmp1777
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1777-.Lfunc_begin31 # >> Call Site 2 <<
	.long	.Ltmp1784-.Ltmp1777     #   Call between .Ltmp1777 and .Ltmp1784
	.long	.Ltmp1785-.Lfunc_begin31 #     jumps to .Ltmp1785
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1786-.Lfunc_begin31 # >> Call Site 3 <<
	.long	.Ltmp1787-.Ltmp1786     #   Call between .Ltmp1786 and .Ltmp1787
	.long	.Ltmp1788-.Lfunc_begin31 #     jumps to .Ltmp1788
	.byte	1                       #   On action: 1
	.long	.Ltmp1787-.Lfunc_begin31 # >> Call Site 4 <<
	.long	.Lfunc_end338-.Ltmp1787 #   Call between .Ltmp1787 and .Lfunc_end338
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE17_S_select_on_copyERKS3_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE17_S_select_on_copyERKS3_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE17_S_select_on_copyERKS3_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE17_S_select_on_copyERKS3_,@function
_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE17_S_select_on_copyERKS3_: # @_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE17_S_select_on_copyERKS3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1794:
	.cfi_def_cfa_offset 16
.Ltmp1795:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1796:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end339:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE17_S_select_on_copyERKS3_, .Lfunc_end339-_ZN9__gnu_cxx14__alloc_traitsISaIP12netlist_elemEE17_S_select_on_copyERKS3_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2EmRKS2_,comdat
	.weak	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2EmRKS2_
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2EmRKS2_,@function
_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2EmRKS2_: # @_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2EmRKS2_
.Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception32
# BB#0:
	pushq	%rbp
.Ltmp1800:
	.cfi_def_cfa_offset 16
.Ltmp1801:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1802:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp1803:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2ERKS2_
	movq	-24(%rbp), %rsi
.Ltmp1797:
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE17_M_create_storageEm
.Ltmp1798:
# BB#1:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB340_2:
.Ltmp1799:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implD2Ev
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end340:
	.size	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2EmRKS2_, .Lfunc_end340-_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2EmRKS2_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table340:
.Lexception32:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp1797-.Lfunc_begin32 # >> Call Site 1 <<
	.long	.Ltmp1798-.Ltmp1797     #   Call between .Ltmp1797 and .Ltmp1798
	.long	.Ltmp1799-.Lfunc_begin32 #     jumps to .Ltmp1799
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1798-.Lfunc_begin32 # >> Call Site 2 <<
	.long	.Lfunc_end340-.Ltmp1798 #   Call between .Ltmp1798 and .Lfunc_end340
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2ERKS2_,comdat
	.weak	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2ERKS2_
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2ERKS2_,@function
_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2ERKS2_: # @_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2ERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1804:
	.cfi_def_cfa_offset 16
.Ltmp1805:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1806:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1807:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSaIP12netlist_elemEC2ERKS1_
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end341:
	.size	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2ERKS2_, .Lfunc_end341-_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2ERKS2_
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE17_M_create_storageEm,comdat
	.weak	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE17_M_create_storageEm
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE17_M_create_storageEm,@function
_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE17_M_create_storageEm: # @_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE17_M_create_storageEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1808:
	.cfi_def_cfa_offset 16
.Ltmp1809:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1810:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1811:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE11_M_allocateEm
	movq	%rax, (%rbx)
	movq	%rax, 8(%rbx)
	movq	-24(%rbp), %rax
	shlq	$3, %rax
	addq	(%rbx), %rax
	movq	%rax, 16(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end342:
	.size	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE17_M_create_storageEm, .Lfunc_end342-_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE17_M_create_storageEm
	.cfi_endproc

	.section	.text._ZNSaIP12netlist_elemEC2ERKS1_,"axG",@progbits,_ZNSaIP12netlist_elemEC2ERKS1_,comdat
	.weak	_ZNSaIP12netlist_elemEC2ERKS1_
	.align	16, 0x90
	.type	_ZNSaIP12netlist_elemEC2ERKS1_,@function
_ZNSaIP12netlist_elemEC2ERKS1_:         # @_ZNSaIP12netlist_elemEC2ERKS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1812:
	.cfi_def_cfa_offset 16
.Ltmp1813:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1814:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2ERKS3_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end343:
	.size	_ZNSaIP12netlist_elemEC2ERKS1_, .Lfunc_end343-_ZNSaIP12netlist_elemEC2ERKS1_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2ERKS3_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2ERKS3_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2ERKS3_,@function
_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2ERKS3_: # @_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2ERKS3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1815:
	.cfi_def_cfa_offset 16
.Ltmp1816:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1817:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end344:
	.size	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2ERKS3_, .Lfunc_end344-_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2ERKS3_
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EEC2Ev,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EEC2Ev,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EEC2Ev: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1818:
	.cfi_def_cfa_offset 16
.Ltmp1819:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1820:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end345:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EEC2Ev, .Lfunc_end345-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EEC2Ev,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EEC2Ev
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EEC2Ev,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EEC2Ev: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EEC2Ev
.Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception33
# BB#0:
	pushq	%rbp
.Ltmp1824:
	.cfi_def_cfa_offset 16
.Ltmp1825:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1826:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1827:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	callq	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rbx)
	movups	%xmm0, 8(%rbx)
	movq	$0, 40(%rbx)
.Ltmp1821:
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EE13_M_initializeEv
.Ltmp1822:
# BB#1:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB346_2:
.Ltmp1823:
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rbx, %rdi
	callq	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEED2Ev
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end346:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EEC2Ev, .Lfunc_end346-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EEC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table346:
.Lexception33:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp1821-.Lfunc_begin33 # >> Call Site 1 <<
	.long	.Ltmp1822-.Ltmp1821     #   Call between .Ltmp1821 and .Ltmp1822
	.long	.Ltmp1823-.Lfunc_begin33 #     jumps to .Ltmp1823
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1822-.Lfunc_begin33 # >> Call Site 2 <<
	.long	.Lfunc_end346-.Ltmp1822 #   Call between .Ltmp1822 and .Lfunc_end346
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev,comdat
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev
	.align	16, 0x90
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev,@function
_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev: # @_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1828:
	.cfi_def_cfa_offset 16
.Ltmp1829:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1830:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end347:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev, .Lfunc_end347-_ZNSaISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EE13_M_initializeEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EE13_M_initializeEv,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EE13_M_initializeEv
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EE13_M_initializeEv,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EE13_M_initializeEv: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EE13_M_initializeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1831:
	.cfi_def_cfa_offset 16
.Ltmp1832:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1833:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	leaq	8(%rdi), %rax
	movl	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movq	%rax, 24(%rdi)
	movq	%rax, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end348:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EE13_M_initializeEv, .Lfunc_end348-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13_Rb_tree_implIS8_Lb0EE13_M_initializeEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1834:
	.cfi_def_cfa_offset 16
.Ltmp1835:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1836:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end349:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev, .Lfunc_end349-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEEC2Ev
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EEC2Ev,@function
_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EEC2Ev: # @_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1837:
	.cfi_def_cfa_offset 16
.Ltmp1838:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1839:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end350:
	.size	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EEC2Ev, .Lfunc_end350-_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implC2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1840:
	.cfi_def_cfa_offset 16
.Ltmp1841:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1842:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp1843:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	callq	_ZNSaISt6vectorI10location_tSaIS0_EEEC2Ev
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end351:
	.size	_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implC2Ev, .Lfunc_end351-_ZNSt12_Vector_baseISt6vectorI10location_tSaIS1_EESaIS3_EE12_Vector_implC2Ev
	.cfi_endproc

	.section	.text._ZNSaISt6vectorI10location_tSaIS0_EEEC2Ev,"axG",@progbits,_ZNSaISt6vectorI10location_tSaIS0_EEEC2Ev,comdat
	.weak	_ZNSaISt6vectorI10location_tSaIS0_EEEC2Ev
	.align	16, 0x90
	.type	_ZNSaISt6vectorI10location_tSaIS0_EEEC2Ev,@function
_ZNSaISt6vectorI10location_tSaIS0_EEEC2Ev: # @_ZNSaISt6vectorI10location_tSaIS0_EEEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1844:
	.cfi_def_cfa_offset 16
.Ltmp1845:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1846:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end352:
	.size	_ZNSaISt6vectorI10location_tSaIS0_EEEC2Ev, .Lfunc_end352-_ZNSaISt6vectorI10location_tSaIS0_EEEC2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEEC2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEEC2Ev: # @_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1847:
	.cfi_def_cfa_offset 16
.Ltmp1848:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1849:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end353:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEEC2Ev, .Lfunc_end353-_ZN9__gnu_cxx13new_allocatorISt6vectorI10location_tSaIS2_EEEC2Ev
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI12netlist_elemSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI12netlist_elemSaIS0_EEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EEC2Ev,@function
_ZNSt12_Vector_baseI12netlist_elemSaIS0_EEC2Ev: # @_ZNSt12_Vector_baseI12netlist_elemSaIS0_EEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1850:
	.cfi_def_cfa_offset 16
.Ltmp1851:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1852:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end354:
	.size	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EEC2Ev, .Lfunc_end354-_ZNSt12_Vector_baseI12netlist_elemSaIS0_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implC2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1853:
	.cfi_def_cfa_offset 16
.Ltmp1854:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1855:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp1856:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	callq	_ZNSaI12netlist_elemEC2Ev
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end355:
	.size	_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implC2Ev, .Lfunc_end355-_ZNSt12_Vector_baseI12netlist_elemSaIS0_EE12_Vector_implC2Ev
	.cfi_endproc

	.section	.text._ZNSaI12netlist_elemEC2Ev,"axG",@progbits,_ZNSaI12netlist_elemEC2Ev,comdat
	.weak	_ZNSaI12netlist_elemEC2Ev
	.align	16, 0x90
	.type	_ZNSaI12netlist_elemEC2Ev,@function
_ZNSaI12netlist_elemEC2Ev:              # @_ZNSaI12netlist_elemEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1857:
	.cfi_def_cfa_offset 16
.Ltmp1858:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1859:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN9__gnu_cxx13new_allocatorI12netlist_elemEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end356:
	.size	_ZNSaI12netlist_elemEC2Ev, .Lfunc_end356-_ZNSaI12netlist_elemEC2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorI12netlist_elemEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI12netlist_elemEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI12netlist_elemEC2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI12netlist_elemEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorI12netlist_elemEC2Ev: # @_ZN9__gnu_cxx13new_allocatorI12netlist_elemEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1860:
	.cfi_def_cfa_offset 16
.Ltmp1861:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1862:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end357:
	.size	_ZN9__gnu_cxx13new_allocatorI12netlist_elemEC2Ev, .Lfunc_end357-_ZN9__gnu_cxx13new_allocatorI12netlist_elemEC2Ev
	.cfi_endproc

	.section	.text._ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE11lower_boundERS5_,"axG",@progbits,_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE11lower_boundERS5_,comdat
	.weak	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE11lower_boundERS5_
	.align	16, 0x90
	.type	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE11lower_boundERS5_,@function
_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE11lower_boundERS5_: # @_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE11lower_boundERS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1863:
	.cfi_def_cfa_offset 16
.Ltmp1864:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1865:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_
	movq	%rax, -8(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end358:
	.size	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE11lower_boundERS5_, .Lfunc_end358-_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE11lower_boundERS5_
	.cfi_endproc

	.section	.text._ZNKSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE8key_compEv,"axG",@progbits,_ZNKSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE8key_compEv,comdat
	.weak	_ZNKSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE8key_compEv
	.align	16, 0x90
	.type	_ZNKSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE8key_compEv,@function
_ZNKSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE8key_compEv: # @_ZNKSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE8key_compEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1866:
	.cfi_def_cfa_offset 16
.Ltmp1867:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1868:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	callq	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8key_compEv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end359:
	.size	_ZNKSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE8key_compEv, .Lfunc_end359-_ZNKSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE8key_compEv
	.cfi_endproc

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEdeEv,"axG",@progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEdeEv,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEdeEv
	.align	16, 0x90
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEdeEv,@function
_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEdeEv: # @_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEdeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1869:
	.cfi_def_cfa_offset 16
.Ltmp1870:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1871:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	(%rdi), %rax
	addq	$32, %rax
	popq	%rbp
	retq
.Lfunc_end360:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEdeEv, .Lfunc_end360-_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEdeEv
	.cfi_endproc

	.section	.text._ZNSt4pairIKSsP12netlist_elemEC2ERS0_RKS2_,"axG",@progbits,_ZNSt4pairIKSsP12netlist_elemEC2ERS0_RKS2_,comdat
	.weak	_ZNSt4pairIKSsP12netlist_elemEC2ERS0_RKS2_
	.align	16, 0x90
	.type	_ZNSt4pairIKSsP12netlist_elemEC2ERS0_RKS2_,@function
_ZNSt4pairIKSsP12netlist_elemEC2ERS0_RKS2_: # @_ZNSt4pairIKSsP12netlist_elemEC2ERS0_RKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1872:
	.cfi_def_cfa_offset 16
.Ltmp1873:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1874:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1875:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rbx
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSsC1ERKSs
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end361:
	.size	_ZNSt4pairIKSsP12netlist_elemEC2ERS0_RKS2_, .Lfunc_end361-_ZNSt4pairIKSsP12netlist_elemEC2ERS0_RKS2_
	.cfi_endproc

	.section	.text._ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE6insertESt17_Rb_tree_iteratorIS6_ERKS6_,"axG",@progbits,_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE6insertESt17_Rb_tree_iteratorIS6_ERKS6_,comdat
	.weak	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE6insertESt17_Rb_tree_iteratorIS6_ERKS6_
	.align	16, 0x90
	.type	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE6insertESt17_Rb_tree_iteratorIS6_ERKS6_,@function
_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE6insertESt17_Rb_tree_iteratorIS6_ERKS6_: # @_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE6insertESt17_Rb_tree_iteratorIS6_ERKS6_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1876:
	.cfi_def_cfa_offset 16
.Ltmp1877:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1878:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp1879:
	.cfi_offset %rbx, -24
	movq	%rsi, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rbx
	leaq	-48(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEEC2ERKSt17_Rb_tree_iteratorIS4_E
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_
	movq	%rax, -16(%rbp)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end362:
	.size	_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE6insertESt17_Rb_tree_iteratorIS6_ERKS6_, .Lfunc_end362-_ZNSt3mapISsP12netlist_elemSt4lessISsESaISt4pairIKSsS1_EEE6insertESt17_Rb_tree_iteratorIS6_ERKS6_
	.cfi_endproc

	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEEC2ERKSt17_Rb_tree_iteratorIS4_E,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEEC2ERKSt17_Rb_tree_iteratorIS4_E,comdat
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEEC2ERKSt17_Rb_tree_iteratorIS4_E
	.align	16, 0x90
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEEC2ERKSt17_Rb_tree_iteratorIS4_E,@function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEEC2ERKSt17_Rb_tree_iteratorIS4_E: # @_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEEC2ERKSt17_Rb_tree_iteratorIS4_E
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1880:
	.cfi_def_cfa_offset 16
.Ltmp1881:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1882:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	retq
.Lfunc_end363:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEEC2ERKSt17_Rb_tree_iteratorIS4_E, .Lfunc_end363-_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEEC2ERKSt17_Rb_tree_iteratorIS4_E
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1883:
	.cfi_def_cfa_offset 16
.Ltmp1884:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1885:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp1886:
	.cfi_offset %rbx, -24
	movq	%rsi, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rsi
	leaq	-72(%rbp), %rdi
	callq	_ZNKSt10_Select1stISt4pairIKSsP12netlist_elemEEclERKS4_
	movq	-64(%rbp), %rsi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	testq	%rdx, %rdx
	je	.LBB364_2
# BB#1:
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPSt18_Rb_tree_node_baseSC_RKS4_
	movq	%rax, -16(%rbp)
	jmp	.LBB364_3
.LBB364_2:
	movq	-56(%rbp), %rsi
	leaq	-16(%rbp), %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E
.LBB364_3:
	movq	-16(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end364:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_, .Lfunc_end364-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS4_ERKS4_
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1887:
	.cfi_def_cfa_offset 16
.Ltmp1888:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1889:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp1890:
	.cfi_offset %rbx, -32
.Ltmp1891:
	.cfi_offset %r14, -24
	movq	%rsi, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %r14
	leaq	-40(%rbp), %rdi
	callq	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEE13_M_const_castEv
	movq	%rax, %rbx
	movq	%rbx, -64(%rbp)
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv
	cmpq	%rax, %rbx
	je	.LBB365_1
# BB#5:
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.LBB365_13
# BB#6:
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rbx
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv
	cmpq	(%rax), %rbx
	je	.LBB365_7
# BB#8:
	leaq	-80(%rbp), %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEmmEv
	movq	(%rax), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	-56(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.LBB365_20
# BB#9:
	movq	-80(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base
	testq	%rax, %rax
	je	.LBB365_10
# BB#11:
	leaq	-32(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movq	%rsi, %rdx
	jmp	.LBB365_22
.LBB365_1:
	movq	%r14, %rdi
	callq	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4sizeEv
	testq	%rax, %rax
	je	.LBB365_20
# BB#2:
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv
	movq	(%rax), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	-56(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.LBB365_20
# BB#3:
	movq	$0, -72(%rbp)
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv
	leaq	-32(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	movq	%rax, %rdx
	jmp	.LBB365_22
.LBB365_13:
	movq	-64(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	-56(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.LBB365_21
# BB#14:
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rbx
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv
	cmpq	(%rax), %rbx
	je	.LBB365_15
# BB#16:
	movq	-56(%rbp), %rbx
	leaq	-96(%rbp), %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEppEv
	movq	(%rax), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.LBB365_20
# BB#17:
	movq	-64(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base
	testq	%rax, %rax
	je	.LBB365_18
# BB#19:
	leaq	-32(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	movq	%rsi, %rdx
	jmp	.LBB365_22
.LBB365_20:
	movq	-56(%rbp), %rsi
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE24_M_get_insert_unique_posERS1_
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.LBB365_23
.LBB365_21:
	movq	$0, -120(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	jmp	.LBB365_22
.LBB365_7:
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv
	leaq	-32(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	jmp	.LBB365_22
.LBB365_15:
	movq	$0, -104(%rbp)
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv
	leaq	-32(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	movq	%rax, %rdx
	jmp	.LBB365_22
.LBB365_10:
	movq	$0, -88(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	jmp	.LBB365_22
.LBB365_18:
	movq	$0, -112(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	leaq	-64(%rbp), %rdx
.LBB365_22:
	callq	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_
.LBB365_23:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end365:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_, .Lfunc_end365-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPSt18_Rb_tree_node_baseSC_RKS4_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPSt18_Rb_tree_node_baseSC_RKS4_,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPSt18_Rb_tree_node_baseSC_RKS4_
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPSt18_Rb_tree_node_baseSC_RKS4_,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPSt18_Rb_tree_node_baseSC_RKS4_: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPSt18_Rb_tree_node_baseSC_RKS4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1892:
	.cfi_def_cfa_offset 16
.Ltmp1893:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1894:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
.Ltmp1895:
	.cfi_offset %rbx, -40
.Ltmp1896:
	.cfi_offset %r14, -32
.Ltmp1897:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rbx
	movb	$1, %r14b
	cmpq	$0, -48(%rbp)
	jne	.LBB366_3
# BB#1:
	movq	-56(%rbp), %r15
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv
	cmpq	%rax, %r15
	je	.LBB366_3
# BB#2:
	movq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdi
	callq	_ZNKSt10_Select1stISt4pairIKSsP12netlist_elemEEclERKS4_
	movq	%rax, %r14
	movq	-56(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessISsEclERKSsS2_
	movb	%al, %r14b
.LBB366_3:
	movb	%r14b, -65(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_create_nodeERKS4_
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rdx
	leaq	8(%rbx), %rcx
	movzbl	-65(%rbp), %edi
	andl	$1, %edi
	movq	%rax, %rsi
	callq	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	incq	40(%rbx)
	movq	-80(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E
	movq	-32(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end366:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPSt18_Rb_tree_node_baseSC_RKS4_, .Lfunc_end366-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE10_M_insert_EPSt18_Rb_tree_node_baseSC_RKS4_
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_create_nodeERKS4_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_create_nodeERKS4_,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_create_nodeERKS4_
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_create_nodeERKS4_,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_create_nodeERKS4_: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_create_nodeERKS4_
.Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception34
# BB#0:
	pushq	%rbp
.Ltmp1914:
	.cfi_def_cfa_offset 16
.Ltmp1915:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1916:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp1917:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_get_nodeEv
	movq	%rax, -32(%rbp)
.Ltmp1898:
	leaq	-40(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE13get_allocatorEv
.Ltmp1899:
# BB#1:
	movq	-32(%rbp), %rdi
	addq	$32, %rdi
.Ltmp1901:
	callq	_ZSt11__addressofISt4pairIKSsP12netlist_elemEEPT_RS5_
.Ltmp1902:
# BB#2:
	movq	-24(%rbp), %rdx
.Ltmp1903:
	leaq	-40(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE9constructEPS5_RKS5_
.Ltmp1904:
# BB#3:
	leaq	-40(%rbp), %rdi
	callq	_ZNSaISt4pairIKSsP12netlist_elemEED2Ev
	movq	-32(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB367_4:
.Ltmp1905:
	movq	%rax, -48(%rbp)
	movl	%edx, -52(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSaISt4pairIKSsP12netlist_elemEED2Ev
	jmp	.LBB367_5
.LBB367_11:
.Ltmp1900:
	movq	%rax, -48(%rbp)
	movl	%edx, -52(%rbp)
.LBB367_5:
	movq	-48(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	-32(%rbp), %rsi
.Ltmp1906:
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E
.Ltmp1907:
# BB#6:
.Ltmp1908:
	callq	__cxa_rethrow
.Ltmp1909:
# BB#10:
.LBB367_7:
.Ltmp1910:
	movq	%rax, -48(%rbp)
	movl	%edx, -52(%rbp)
.Ltmp1911:
	callq	__cxa_end_catch
.Ltmp1912:
# BB#8:
	movq	-48(%rbp), %rdi
	callq	_Unwind_Resume
.LBB367_9:
.Ltmp1913:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end367:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_create_nodeERKS4_, .Lfunc_end367-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_create_nodeERKS4_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table367:
.Lexception34:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\343\200"              # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	91                      # Call site table length
	.long	.Lfunc_begin34-.Lfunc_begin34 # >> Call Site 1 <<
	.long	.Ltmp1898-.Lfunc_begin34 #   Call between .Lfunc_begin34 and .Ltmp1898
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1898-.Lfunc_begin34 # >> Call Site 2 <<
	.long	.Ltmp1899-.Ltmp1898     #   Call between .Ltmp1898 and .Ltmp1899
	.long	.Ltmp1900-.Lfunc_begin34 #     jumps to .Ltmp1900
	.byte	1                       #   On action: 1
	.long	.Ltmp1901-.Lfunc_begin34 # >> Call Site 3 <<
	.long	.Ltmp1904-.Ltmp1901     #   Call between .Ltmp1901 and .Ltmp1904
	.long	.Ltmp1905-.Lfunc_begin34 #     jumps to .Ltmp1905
	.byte	1                       #   On action: 1
	.long	.Ltmp1904-.Lfunc_begin34 # >> Call Site 4 <<
	.long	.Ltmp1906-.Ltmp1904     #   Call between .Ltmp1904 and .Ltmp1906
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1906-.Lfunc_begin34 # >> Call Site 5 <<
	.long	.Ltmp1909-.Ltmp1906     #   Call between .Ltmp1906 and .Ltmp1909
	.long	.Ltmp1910-.Lfunc_begin34 #     jumps to .Ltmp1910
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1911-.Lfunc_begin34 # >> Call Site 6 <<
	.long	.Ltmp1912-.Ltmp1911     #   Call between .Ltmp1911 and .Ltmp1912
	.long	.Ltmp1913-.Lfunc_begin34 #     jumps to .Ltmp1913
	.byte	1                       #   On action: 1
	.long	.Ltmp1912-.Lfunc_begin34 # >> Call Site 7 <<
	.long	.Lfunc_end367-.Ltmp1912 #   Call between .Ltmp1912 and .Lfunc_end367
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_get_nodeEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_get_nodeEv,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_get_nodeEv
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_get_nodeEv,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_get_nodeEv: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_get_nodeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1918:
	.cfi_def_cfa_offset 16
.Ltmp1919:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1920:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, %esi
	xorl	%edx, %edx
	callq	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8allocateEmPKv
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end368:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_get_nodeEv, .Lfunc_end368-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_get_nodeEv
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE9constructEPS5_RKS5_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE9constructEPS5_RKS5_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE9constructEPS5_RKS5_
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE9constructEPS5_RKS5_,@function
_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE9constructEPS5_RKS5_: # @_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE9constructEPS5_RKS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1921:
	.cfi_def_cfa_offset 16
.Ltmp1922:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1923:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdx, %rsi
	callq	_ZNSt4pairIKSsP12netlist_elemEC2ERKS3_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end369:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE9constructEPS5_RKS5_, .Lfunc_end369-_ZN9__gnu_cxx13new_allocatorISt4pairIKSsP12netlist_elemEE9constructEPS5_RKS5_
	.cfi_endproc

	.section	.text._ZNSt4pairIKSsP12netlist_elemEC2ERKS3_,"axG",@progbits,_ZNSt4pairIKSsP12netlist_elemEC2ERKS3_,comdat
	.weak	_ZNSt4pairIKSsP12netlist_elemEC2ERKS3_
	.align	16, 0x90
	.type	_ZNSt4pairIKSsP12netlist_elemEC2ERKS3_,@function
_ZNSt4pairIKSsP12netlist_elemEC2ERKS3_: # @_ZNSt4pairIKSsP12netlist_elemEC2ERKS3_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1924:
	.cfi_def_cfa_offset 16
.Ltmp1925:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1926:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1927:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSsC1ERKSs
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end370:
	.size	_ZNSt4pairIKSsP12netlist_elemEC2ERKS3_, .Lfunc_end370-_ZNSt4pairIKSsP12netlist_elemEC2ERKS3_
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8allocateEmPKv
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8allocateEmPKv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1928:
	.cfi_def_cfa_offset 16
.Ltmp1929:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1930:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1931:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rbx
	callq	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8max_sizeEv
	cmpq	%rax, %rbx
	ja	.LBB371_2
# BB#1:
	movq	-24(%rbp), %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	_Znwm
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB371_2:
	callq	_ZSt17__throw_bad_allocv
.Lfunc_end371:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8allocateEmPKv, .Lfunc_end371-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8allocateEmPKv
	.cfi_endproc

	.section	.text._ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8max_sizeEv
	.align	16, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8max_sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1932:
	.cfi_def_cfa_offset 16
.Ltmp1933:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1934:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$384307168202282325, %rax # imm = 0x555555555555555
	popq	%rbp
	retq
.Lfunc_end372:
	.size	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8max_sizeEv, .Lfunc_end372-_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsP12netlist_elemEEE8max_sizeEv
	.cfi_endproc

	.section	.text._ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEE13_M_const_castEv,"axG",@progbits,_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEE13_M_const_castEv,comdat
	.weak	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEE13_M_const_castEv
	.align	16, 0x90
	.type	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEE13_M_const_castEv,@function
_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEE13_M_const_castEv: # @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEE13_M_const_castEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1935:
	.cfi_def_cfa_offset 16
.Ltmp1936:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1937:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	(%rdi), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end373:
	.size	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEE13_M_const_castEv, .Lfunc_end373-_ZNKSt23_Rb_tree_const_iteratorISt4pairIKSsP12netlist_elemEE13_M_const_castEv
	.cfi_endproc

	.section	.text._ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4sizeEv,"axG",@progbits,_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4sizeEv,comdat
	.weak	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4sizeEv
	.align	16, 0x90
	.type	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4sizeEv,@function
_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4sizeEv: # @_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4sizeEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1938:
	.cfi_def_cfa_offset 16
.Ltmp1939:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1940:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	40(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end374:
	.size	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4sizeEv, .Lfunc_end374-_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE4sizeEv
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1941:
	.cfi_def_cfa_offset 16
.Ltmp1942:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1943:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	leaq	32(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end375:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv, .Lfunc_end375-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE12_M_rightmostEv
	.cfi_endproc

	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_,comdat
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_
	.align	16, 0x90
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_,@function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_: # @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1944:
	.cfi_def_cfa_offset 16
.Ltmp1945:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1946:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end376:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_, .Lfunc_end376-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE24_M_get_insert_unique_posERS1_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE24_M_get_insert_unique_posERS1_,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE24_M_get_insert_unique_posERS1_
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE24_M_get_insert_unique_posERS1_,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE24_M_get_insert_unique_posERS1_: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE24_M_get_insert_unique_posERS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1947:
	.cfi_def_cfa_offset 16
.Ltmp1948:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1949:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp1950:
	.cfi_offset %rbx, -32
.Ltmp1951:
	.cfi_offset %r14, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %r14
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv
	movq	%rax, -56(%rbp)
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv
	movq	%rax, -64(%rbp)
	movb	$1, -65(%rbp)
	jmp	.LBB377_1
	.align	16, 0x90
.LBB377_3:                              #   in Loop: Header=BB377_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base
	movq	%rax, -56(%rbp)
.LBB377_1:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB377_5
# BB#2:                                 #   in Loop: Header=BB377_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rbx
	movq	-56(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessISsEclERKSsS2_
	movb	%al, -65(%rbp)
	testb	%al, %al
	jne	.LBB377_3
# BB#4:                                 #   in Loop: Header=BB377_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base
	movq	%rax, -56(%rbp)
	jmp	.LBB377_1
.LBB377_5:
	movq	-64(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E
	testb	$1, -65(%rbp)
	je	.LBB377_9
# BB#6:
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE5beginEv
	movq	%rax, -88(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEeqERKS5_
	testb	%al, %al
	je	.LBB377_8
# BB#7:
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	jmp	.LBB377_12
.LBB377_8:
	leaq	-80(%rbp), %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEmmEv
.LBB377_9:
	movq	-80(%rbp), %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	-48(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.LBB377_11
# BB#10:
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	jmp	.LBB377_12
.LBB377_11:
	movq	$0, -128(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-128(%rbp), %rdx
.LBB377_12:
	callq	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end377:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE24_M_get_insert_unique_posERS1_, .Lfunc_end377-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE24_M_get_insert_unique_posERS1_
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1952:
	.cfi_def_cfa_offset 16
.Ltmp1953:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1954:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	leaq	24(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end378:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv, .Lfunc_end378-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11_M_leftmostEv
	.cfi_endproc

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEmmEv,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEmmEv,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEmmEv
	.align	16, 0x90
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEmmEv,@function
_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEmmEv: # @_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEmmEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1955:
	.cfi_def_cfa_offset 16
.Ltmp1956:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1957:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp1958:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	movq	(%rbx), %rdi
	callq	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end379:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEmmEv, .Lfunc_end379-_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEmmEv
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE5beginEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE5beginEv,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE5beginEv
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE5beginEv,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE5beginEv: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE5beginEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1959:
	.cfi_def_cfa_offset 16
.Ltmp1960:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1961:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	24(%rdi), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKSsP12netlist_elemEEC2EPSt13_Rb_tree_nodeIS4_E
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end380:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE5beginEv, .Lfunc_end380-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE5beginEv
	.cfi_endproc

	.section	.text._ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8key_compEv,"axG",@progbits,_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8key_compEv,comdat
	.weak	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8key_compEv
	.align	16, 0x90
	.type	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8key_compEv,@function
_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8key_compEv: # @_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8key_compEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1962:
	.cfi_def_cfa_offset 16
.Ltmp1963:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1964:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end381:
	.size	_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8key_compEv, .Lfunc_end381-_ZNKSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8key_compEv
	.cfi_endproc

	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_
	.align	16, 0x90
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_,@function
_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_: # @_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1965:
	.cfi_def_cfa_offset 16
.Ltmp1966:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1967:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Ltmp1968:
	.cfi_offset %rbx, -32
.Ltmp1969:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE8_M_beginEv
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE6_M_endEv
	movq	-40(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS1_
	movq	%rax, -24(%rbp)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end382:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_, .Lfunc_end382-_ZNSt8_Rb_treeISsSt4pairIKSsP12netlist_elemESt10_Select1stIS4_ESt4lessISsESaIS4_EE11lower_boundERS1_
	.cfi_endproc

	.section	.text._ZN7threads9AtomicPtrI10location_tE8CheckoutEv,"axG",@progbits,_ZN7threads9AtomicPtrI10location_tE8CheckoutEv,comdat
	.weak	_ZN7threads9AtomicPtrI10location_tE8CheckoutEv
	.align	16, 0x90
	.type	_ZN7threads9AtomicPtrI10location_tE8CheckoutEv,@function
_ZN7threads9AtomicPtrI10location_tE8CheckoutEv: # @_ZN7threads9AtomicPtrI10location_tE8CheckoutEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1970:
	.cfi_def_cfa_offset 16
.Ltmp1971:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1972:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_ZN7threads9AtomicPtrI10location_tE11ATOMIC_NULLE(%rip), %rsi
	callq	_ZN7threads9AtomicPtrI10location_tE10PrivateSetEPS1_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end383:
	.size	_ZN7threads9AtomicPtrI10location_tE8CheckoutEv, .Lfunc_end383-_ZN7threads9AtomicPtrI10location_tE8CheckoutEv
	.cfi_endproc

	.section	.text._ZN7threads9AtomicPtrI10location_tE7CheckinEPS1_,"axG",@progbits,_ZN7threads9AtomicPtrI10location_tE7CheckinEPS1_,comdat
	.weak	_ZN7threads9AtomicPtrI10location_tE7CheckinEPS1_
	.align	16, 0x90
	.type	_ZN7threads9AtomicPtrI10location_tE7CheckinEPS1_,@function
_ZN7threads9AtomicPtrI10location_tE7CheckinEPS1_: # @_ZN7threads9AtomicPtrI10location_tE7CheckinEPS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1973:
	.cfi_def_cfa_offset 16
.Ltmp1974:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1975:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rsi, (%rax)
	popq	%rbp
	retq
.Lfunc_end384:
	.size	_ZN7threads9AtomicPtrI10location_tE7CheckinEPS1_, .Lfunc_end384-_ZN7threads9AtomicPtrI10location_tE7CheckinEPS1_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init.23,@function
__cxx_global_var_init.23:               # @__cxx_global_var_init.23
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp1976:
	.cfi_def_cfa_offset 16
.Ltmp1977:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1978:
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit.24, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit.24, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	retq
.Lfunc_end385:
	.size	__cxx_global_var_init.23, .Lfunc_end385-__cxx_global_var_init.23
	.cfi_endproc

	.text
	.globl	_ZN12netlist_elemC2Ev
	.align	16, 0x90
	.type	_ZN12netlist_elemC2Ev,@function
_ZN12netlist_elemC2Ev:                  # @_ZN12netlist_elemC2Ev
.Lfunc_begin35:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception35
# BB#0:
	pushq	%rbp
.Ltmp1995:
	.cfi_def_cfa_offset 16
.Ltmp1996:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1997:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
.Ltmp1998:
	.cfi_offset %rbx, -40
.Ltmp1999:
	.cfi_offset %r14, -32
.Ltmp2000:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	%rbx, -32(%rbp)
	callq	_ZNSsC1Ev
	leaq	8(%rbx), %r14
.Ltmp1979:
	movq	%r14, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EEC2Ev
.Ltmp1980:
# BB#1:
	leaq	32(%rbx), %r15
.Ltmp1982:
	movq	%r15, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EEC2Ev
.Ltmp1983:
# BB#2:
	leaq	56(%rbx), %rdi
.Ltmp1985:
	xorl	%esi, %esi
	callq	_ZN7threads9AtomicPtrI10location_tEC2EPS1_
.Ltmp1986:
# BB#3:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB386_4:
.Ltmp1981:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
	jmp	.LBB386_8
.LBB386_5:
.Ltmp1984:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
	jmp	.LBB386_7
.LBB386_6:
.Ltmp1987:
	movq	%rax, -40(%rbp)
	movl	%edx, -44(%rbp)
.Ltmp1988:
	movq	%r15, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev
.Ltmp1989:
.LBB386_7:
.Ltmp1990:
	movq	%r14, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EED2Ev
.Ltmp1991:
.LBB386_8:
.Ltmp1992:
	movq	%rbx, %rdi
	callq	_ZNSsD1Ev
.Ltmp1993:
# BB#9:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.LBB386_10:
.Ltmp1994:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end386:
	.size	_ZN12netlist_elemC2Ev, .Lfunc_end386-_ZN12netlist_elemC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table386:
.Lexception35:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin35-.Lfunc_begin35 # >> Call Site 1 <<
	.long	.Ltmp1979-.Lfunc_begin35 #   Call between .Lfunc_begin35 and .Ltmp1979
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1979-.Lfunc_begin35 # >> Call Site 2 <<
	.long	.Ltmp1980-.Ltmp1979     #   Call between .Ltmp1979 and .Ltmp1980
	.long	.Ltmp1981-.Lfunc_begin35 #     jumps to .Ltmp1981
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1982-.Lfunc_begin35 # >> Call Site 3 <<
	.long	.Ltmp1983-.Ltmp1982     #   Call between .Ltmp1982 and .Ltmp1983
	.long	.Ltmp1984-.Lfunc_begin35 #     jumps to .Ltmp1984
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1985-.Lfunc_begin35 # >> Call Site 4 <<
	.long	.Ltmp1986-.Ltmp1985     #   Call between .Ltmp1985 and .Ltmp1986
	.long	.Ltmp1987-.Lfunc_begin35 #     jumps to .Ltmp1987
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1988-.Lfunc_begin35 # >> Call Site 5 <<
	.long	.Ltmp1993-.Ltmp1988     #   Call between .Ltmp1988 and .Ltmp1993
	.long	.Ltmp1994-.Lfunc_begin35 #     jumps to .Ltmp1994
	.byte	1                       #   On action: 1
	.long	.Ltmp1993-.Lfunc_begin35 # >> Call Site 6 <<
	.long	.Lfunc_end386-.Ltmp1993 #   Call between .Ltmp1993 and .Lfunc_end386
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI387_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	_ZN12netlist_elem22routing_cost_given_locE10location_t
	.align	16, 0x90
	.type	_ZN12netlist_elem22routing_cost_given_locE10location_t,@function
_ZN12netlist_elem22routing_cost_given_locE10location_t: # @_ZN12netlist_elem22routing_cost_given_locE10location_t
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2001:
	.cfi_def_cfa_offset 16
.Ltmp2002:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2003:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$88, %rsp
.Ltmp2004:
	.cfi_offset %rbx, -40
.Ltmp2005:
	.cfi_offset %r14, -32
.Ltmp2006:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	%rsi, -32(%rbp)
	movq	%r14, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	leaq	8(%r14), %r15
	jmp	.LBB387_1
	.align	16, 0x90
.LBB387_2:                              #   in Loop: Header=BB387_1 Depth=1
	movslq	-60(%rbp), %rsi
	movq	%r15, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EEixEm
	movq	(%rax), %rdi
	addq	$56, %rdi
	callq	_ZNK7threads9AtomicPtrI10location_tE3GetEv
	movq	%rax, -72(%rbp)
	movl	-32(%rbp), %ecx
	subl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movapd	.LCPI387_0(%rip), %xmm1 # xmm1 = [9223372036854775807,9223372036854775807]
	movapd	%xmm1, %xmm2
	andpd	%xmm2, %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-28(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	4(%rcx), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	andpd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	incl	-60(%rbp)
.LBB387_1:                              # =>This Inner Loop Header: Depth=1
	movslq	-60(%rbp), %rbx
	movq	%r15, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	cmpq	%rax, %rbx
	jb	.LBB387_2
# BB#3:
	movl	$0, -76(%rbp)
	addq	$32, %r14
	jmp	.LBB387_4
	.align	16, 0x90
.LBB387_5:                              #   in Loop: Header=BB387_4 Depth=1
	movslq	-76(%rbp), %rsi
	movq	%r14, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EEixEm
	movq	(%rax), %rdi
	addq	$56, %rdi
	callq	_ZNK7threads9AtomicPtrI10location_tE3GetEv
	movq	%rax, -88(%rbp)
	movl	-32(%rbp), %ecx
	subl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movapd	.LCPI387_0(%rip), %xmm1 # xmm1 = [9223372036854775807,9223372036854775807]
	movapd	%xmm1, %xmm2
	andpd	%xmm2, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-28(%rbp), %eax
	movq	-88(%rbp), %rcx
	subl	4(%rcx), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	andpd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	incl	-76(%rbp)
.LBB387_4:                              # =>This Inner Loop Header: Depth=1
	movslq	-76(%rbp), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	cmpq	%rax, %rbx
	jb	.LBB387_5
# BB#6:
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end387:
	.size	_ZN12netlist_elem22routing_cost_given_locE10location_t, .Lfunc_end387-_ZN12netlist_elem22routing_cost_given_locE10location_t
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI388_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	_ZN12netlist_elem9swap_costEP10location_tS1_
	.align	16, 0x90
	.type	_ZN12netlist_elem9swap_costEP10location_tS1_,@function
_ZN12netlist_elem9swap_costEP10location_tS1_: # @_ZN12netlist_elem9swap_costEP10location_tS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2007:
	.cfi_def_cfa_offset 16
.Ltmp2008:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2009:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$88, %rsp
.Ltmp2010:
	.cfi_offset %rbx, -40
.Ltmp2011:
	.cfi_offset %r14, -32
.Ltmp2012:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %r14
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	leaq	8(%r14), %r15
	jmp	.LBB388_1
	.align	16, 0x90
.LBB388_2:                              #   in Loop: Header=BB388_1 Depth=1
	movslq	-68(%rbp), %rsi
	movq	%r15, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EEixEm
	movq	(%rax), %rdi
	addq	$56, %rdi
	callq	_ZNK7threads9AtomicPtrI10location_tE3GetEv
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movapd	.LCPI388_0(%rip), %xmm2 # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movq	-80(%rbp), %rcx
	subl	4(%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	andpd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movq	-80(%rbp), %rcx
	subl	(%rcx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	andpd	%xmm2, %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movq	-80(%rbp), %rcx
	subl	4(%rcx), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	andpd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	incl	-68(%rbp)
.LBB388_1:                              # =>This Inner Loop Header: Depth=1
	movslq	-68(%rbp), %rbx
	movq	%r15, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	cmpq	%rax, %rbx
	jb	.LBB388_2
# BB#3:
	movl	$0, -84(%rbp)
	addq	$32, %r14
	jmp	.LBB388_4
	.align	16, 0x90
.LBB388_5:                              #   in Loop: Header=BB388_4 Depth=1
	movslq	-84(%rbp), %rsi
	movq	%r14, %rdi
	callq	_ZNSt6vectorIP12netlist_elemSaIS1_EEixEm
	movq	(%rax), %rdi
	addq	$56, %rdi
	callq	_ZNK7threads9AtomicPtrI10location_tE3GetEv
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movapd	.LCPI388_0(%rip), %xmm2 # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movq	-96(%rbp), %rcx
	subl	4(%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	andpd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movq	-96(%rbp), %rcx
	subl	(%rcx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	andpd	%xmm2, %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movq	-96(%rbp), %rcx
	subl	4(%rcx), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	andpd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	incl	-84(%rbp)
.LBB388_4:                              # =>This Inner Loop Header: Depth=1
	movslq	-84(%rbp), %rbx
	movq	%r14, %rdi
	callq	_ZNKSt6vectorIP12netlist_elemSaIS1_EE4sizeEv
	cmpq	%rax, %rbx
	jb	.LBB388_5
# BB#6:
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end388:
	.size	_ZN12netlist_elem9swap_costEP10location_tS1_, .Lfunc_end388-_ZN12netlist_elem9swap_costEP10location_tS1_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP12netlist_elemSaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorIP12netlist_elemSaIS1_EEC2Ev,comdat
	.weak	_ZNSt6vectorIP12netlist_elemSaIS1_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt6vectorIP12netlist_elemSaIS1_EEC2Ev,@function
_ZNSt6vectorIP12netlist_elemSaIS1_EEC2Ev: # @_ZNSt6vectorIP12netlist_elemSaIS1_EEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2013:
	.cfi_def_cfa_offset 16
.Ltmp2014:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2015:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end389:
	.size	_ZNSt6vectorIP12netlist_elemSaIS1_EEC2Ev, .Lfunc_end389-_ZNSt6vectorIP12netlist_elemSaIS1_EEC2Ev
	.cfi_endproc

	.section	.text._ZN7threads9AtomicPtrI10location_tEC2EPS1_,"axG",@progbits,_ZN7threads9AtomicPtrI10location_tEC2EPS1_,comdat
	.weak	_ZN7threads9AtomicPtrI10location_tEC2EPS1_
	.align	16, 0x90
	.type	_ZN7threads9AtomicPtrI10location_tEC2EPS1_,@function
_ZN7threads9AtomicPtrI10location_tEC2EPS1_: # @_ZN7threads9AtomicPtrI10location_tEC2EPS1_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2016:
	.cfi_def_cfa_offset 16
.Ltmp2017:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2018:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rsi, (%rax)
	popq	%rbp
	retq
.Lfunc_end390:
	.size	_ZN7threads9AtomicPtrI10location_tEC2EPS1_, .Lfunc_end390-_ZN7threads9AtomicPtrI10location_tEC2EPS1_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP12netlist_elemSaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIP12netlist_elemSaIS1_EEixEm,comdat
	.weak	_ZNSt6vectorIP12netlist_elemSaIS1_EEixEm
	.align	16, 0x90
	.type	_ZNSt6vectorIP12netlist_elemSaIS1_EEixEm,@function
_ZNSt6vectorIP12netlist_elemSaIS1_EEixEm: # @_ZNSt6vectorIP12netlist_elemSaIS1_EEixEm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2019:
	.cfi_def_cfa_offset 16
.Ltmp2020:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2021:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	leaq	(,%rsi,8), %rax
	addq	(%rcx), %rax
	popq	%rbp
	retq
.Lfunc_end391:
	.size	_ZNSt6vectorIP12netlist_elemSaIS1_EEixEm, .Lfunc_end391-_ZNSt6vectorIP12netlist_elemSaIS1_EEixEm
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2Ev,@function
_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2Ev: # @_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2022:
	.cfi_def_cfa_offset 16
.Ltmp2023:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2024:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end392:
	.size	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2Ev, .Lfunc_end392-_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EEC2Ev
	.cfi_endproc

	.section	.text._ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2Ev
	.align	16, 0x90
	.type	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2025:
	.cfi_def_cfa_offset 16
.Ltmp2026:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2027:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp2028:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	callq	_ZNSaIP12netlist_elemEC2Ev
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end393:
	.size	_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2Ev, .Lfunc_end393-_ZNSt12_Vector_baseIP12netlist_elemSaIS1_EE12_Vector_implC2Ev
	.cfi_endproc

	.section	.text._ZNSaIP12netlist_elemEC2Ev,"axG",@progbits,_ZNSaIP12netlist_elemEC2Ev,comdat
	.weak	_ZNSaIP12netlist_elemEC2Ev
	.align	16, 0x90
	.type	_ZNSaIP12netlist_elemEC2Ev,@function
_ZNSaIP12netlist_elemEC2Ev:             # @_ZNSaIP12netlist_elemEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2029:
	.cfi_def_cfa_offset 16
.Ltmp2030:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2031:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end394:
	.size	_ZNSaIP12netlist_elemEC2Ev, .Lfunc_end394-_ZNSaIP12netlist_elemEC2Ev
	.cfi_endproc

	.section	.text._ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2Ev
	.align	16, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2Ev: # @_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2Ev
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2032:
	.cfi_def_cfa_offset 16
.Ltmp2033:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2034:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end395:
	.size	_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2Ev, .Lfunc_end395-_ZN9__gnu_cxx13new_allocatorIP12netlist_elemEC2Ev
	.cfi_endproc

	.text
	.globl	_ZN3Rng4randEi
	.align	16, 0x90
	.type	_ZN3Rng4randEi,@function
_ZN3Rng4randEi:                         # @_ZN3Rng4randEi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2035:
	.cfi_def_cfa_offset 16
.Ltmp2036:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2037:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-12(%rbp), %rax
	decq	%rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rsi
	callq	_ZN6MTRand7randIntERKm
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end396:
	.size	_ZN3Rng4randEi, .Lfunc_end396-_ZN3Rng4randEi
	.cfi_endproc

	.globl	_ZN3Rng4randEv
	.align	16, 0x90
	.type	_ZN3Rng4randEv,@function
_ZN3Rng4randEv:                         # @_ZN3Rng4randEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2038:
	.cfi_def_cfa_offset 16
.Ltmp2039:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2040:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	(%rdi), %rdi
	callq	_ZN6MTRand7randIntEv
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end397:
	.size	_ZN3Rng4randEv, .Lfunc_end397-_ZN3Rng4randEv
	.cfi_endproc

	.globl	_ZN3Rng5drandEv
	.align	16, 0x90
	.type	_ZN3Rng5drandEv,@function
_ZN3Rng5drandEv:                        # @_ZN3Rng5drandEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2041:
	.cfi_def_cfa_offset 16
.Ltmp2042:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2043:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	(%rdi), %rdi
	callq	_ZN6MTRand4randEv
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end398:
	.size	_ZN3Rng5drandEv, .Lfunc_end398-_ZN3Rng5drandEv
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_rng.cpp,@function
_GLOBAL__sub_I_rng.cpp:                 # @_GLOBAL__sub_I_rng.cpp
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2044:
	.cfi_def_cfa_offset 16
.Ltmp2045:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2046:
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init.38
	popq	%rbp
	retq
.Lfunc_end399:
	.size	_GLOBAL__sub_I_rng.cpp, .Lfunc_end399-_GLOBAL__sub_I_rng.cpp
	.cfi_endproc

	.section	.text._ZN6MTRand7randIntERKm,"axG",@progbits,_ZN6MTRand7randIntERKm,comdat
	.weak	_ZN6MTRand7randIntERKm
	.align	16, 0x90
	.type	_ZN6MTRand7randIntERKm,@function
_ZN6MTRand7randIntERKm:                 # @_ZN6MTRand7randIntERKm
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2047:
	.cfi_def_cfa_offset 16
.Ltmp2048:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2049:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp2050:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rbx
	movq	(%rsi), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, %rcx
	shrq	%rcx
	orq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	%rcx, %rax
	shrq	$2, %rax
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	%rax, %rcx
	shrq	$4, %rcx
	orq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	%rcx, %rax
	shrq	$8, %rax
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	%rax, %rcx
	shrq	$16, %rcx
	orq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	.align	16, 0x90
.LBB400_1:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_ZN6MTRand7randIntEv
	andq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	ja	.LBB400_1
# BB#2:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end400:
	.size	_ZN6MTRand7randIntERKm, .Lfunc_end400-_ZN6MTRand7randIntERKm
	.cfi_endproc

	.section	.text._ZN6MTRand7randIntEv,"axG",@progbits,_ZN6MTRand7randIntEv,comdat
	.weak	_ZN6MTRand7randIntEv
	.align	16, 0x90
	.type	_ZN6MTRand7randIntEv,@function
_ZN6MTRand7randIntEv:                   # @_ZN6MTRand7randIntEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2051:
	.cfi_def_cfa_offset 16
.Ltmp2052:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2053:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp2054:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rbx, -16(%rbp)
	cmpl	$0, 5000(%rbx)
	jne	.LBB401_2
# BB#1:
	movq	%rbx, %rdi
	callq	_ZN6MTRand6reloadEv
.LBB401_2:
	decl	5000(%rbx)
	movq	4992(%rbx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 4992(%rbx)
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, %rcx
	shrq	$11, %rcx
	xorq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	movq	%rcx, %rax
	andq	$20601005, %rax         # imm = 0x13A58AD
	shlq	$7, %rax
	xorq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	%rax, %rcx
	shlq	$15, %rcx
	movl	$2636928640, %edx       # imm = 0x9D2C5680
	addq	$1385802112, %rdx       # imm = 0x5299A980
	andq	%rcx, %rdx
	xorq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	movq	%rdx, %rax
	shrq	$18, %rax
	xorq	%rdx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end401:
	.size	_ZN6MTRand7randIntEv, .Lfunc_end401-_ZN6MTRand7randIntEv
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI402_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI402_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI402_2:
	.quad	4463067230725210112     # double 2.3283064370807974E-10
	.section	.text._ZN6MTRand4randEv,"axG",@progbits,_ZN6MTRand4randEv,comdat
	.weak	_ZN6MTRand4randEv
	.align	16, 0x90
	.type	_ZN6MTRand4randEv,@function
_ZN6MTRand4randEv:                      # @_ZN6MTRand4randEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2055:
	.cfi_def_cfa_offset 16
.Ltmp2056:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2057:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_ZN6MTRand7randIntEv
	movd	%rax, %xmm1
	punpckldq	.LCPI402_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI402_1(%rip), %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	mulsd	.LCPI402_2(%rip), %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end402:
	.size	_ZN6MTRand4randEv, .Lfunc_end402-_ZN6MTRand4randEv
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init.38,@function
__cxx_global_var_init.38:               # @__cxx_global_var_init.38
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2058:
	.cfi_def_cfa_offset 16
.Ltmp2059:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2060:
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit.39, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit.39, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	retq
.Lfunc_end403:
	.size	__cxx_global_var_init.38, .Lfunc_end403-__cxx_global_var_init.38
	.cfi_endproc

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_annealer_thread.cpp
	.quad	_GLOBAL__sub_I_main.cpp
	.quad	_GLOBAL__sub_I_netlist.cpp
	.quad	_GLOBAL__sub_I_rng.cpp
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"PARSEC Benchmark Suite"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Usage: "
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" NTHREADS NSWAPS TEMP NETLIST [NSTEPS]"
	.size	.L.str.2, 39

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Threadcount: "
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"NTHREADS must be 1 (serial version)"
	.size	.L.str.4, 36

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" swaps per temperature step"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"start temperature: "
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"netlist filename: "
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"number of temperature steps: "
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Final routing is: "
	.size	.L.str.9, 19

	.type	_ZStL8__ioinit.3,@object # @_ZStL8__ioinit.3
	.local	_ZStL8__ioinit.3
	.comm	_ZStL8__ioinit.3,1,1
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"locs created"
	.size	.L.str.13, 13

	.type	.L.str.1.14,@object     # @.str.1.14
.L.str.1.14:
	.asciz	"locs assigned"
	.size	.L.str.1.14, 14

	.type	.L.str.2.15,@object     # @.str.2.15
.L.str.2.15:
	.asciz	"Just saw element: "
	.size	.L.str.2.15, 19

	.type	.L.str.3.16,@object     # @.str.3.16
.L.str.3.16:
	.asciz	"END"
	.size	.L.str.3.16, 4

	.type	.L.str.4.17,@object     # @.str.4.17
.L.str.4.17:
	.asciz	"netlist created. "
	.size	.L.str.4.17, 18

	.type	.L.str.5.18,@object     # @.str.5.18
.L.str.5.18:
	.asciz	" elements."
	.size	.L.str.5.18, 11

	.type	_ZZN7netlist24create_elem_if_necessaryERSsE11unused_elem,@object # @_ZZN7netlist24create_elem_if_necessaryERSsE11unused_elem
	.local	_ZZN7netlist24create_elem_if_necessaryERSsE11unused_elem
	.comm	_ZZN7netlist24create_elem_if_necessaryERSsE11unused_elem,4,4
	.type	.L.str.6.19,@object     # @.str.6.19
.L.str.6.19:
	.asciz	"\t"
	.size	.L.str.6.19, 2

	.type	.L.str.9.20,@object     # @.str.9.20
.L.str.9.20:
	.asciz	"vector::_M_insert_aux"
	.size	.L.str.9.20, 22

	.type	.L.str.8.21,@object     # @.str.8.21
.L.str.8.21:
	.asciz	"vector::_M_range_check"
	.size	.L.str.8.21, 23

	.type	.L.str.7.22,@object     # @.str.7.22
.L.str.7.22:
	.asciz	"vector::_M_fill_insert"
	.size	.L.str.7.22, 23

	.type	_ZN7threads9AtomicPtrI10location_tE11ATOMIC_NULLE,@object # @_ZN7threads9AtomicPtrI10location_tE11ATOMIC_NULLE
	.section	.data._ZN7threads9AtomicPtrI10location_tE11ATOMIC_NULLE,"aGw",@progbits,_ZN7threads9AtomicPtrI10location_tE11ATOMIC_NULLE,comdat
	.weak	_ZN7threads9AtomicPtrI10location_tE11ATOMIC_NULLE
	.align	8
_ZN7threads9AtomicPtrI10location_tE11ATOMIC_NULLE:
	.quad	1
	.size	_ZN7threads9AtomicPtrI10location_tE11ATOMIC_NULLE, 8

	.type	_ZStL8__ioinit.24,@object # @_ZStL8__ioinit.24
	.local	_ZStL8__ioinit.24
	.comm	_ZStL8__ioinit.24,1,1
	.type	_ZN3Rng4seedE,@object   # @_ZN3Rng4seedE
	.bss
	.globl	_ZN3Rng4seedE
	.align	4
_ZN3Rng4seedE:
	.long	0                       # 0x0
	.size	_ZN3Rng4seedE, 4

	.type	_ZStL8__ioinit.39,@object # @_ZStL8__ioinit.39
	.local	_ZStL8__ioinit.39
	.comm	_ZStL8__ioinit.39,1,1

	.globl	_ZN7netlistC1ERKSs
_ZN7netlistC1ERKSs = _ZN7netlistC2ERKSs
	.globl	_ZN12netlist_elemC1Ev
_ZN12netlist_elemC1Ev = _ZN12netlist_elemC2Ev
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.section	".note.GNU-stack","",@progbits
