	.text
	.file	"f3"
	.section	.text._ZN6Halide7Runtime8Internal14default_mallocEPvm,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal14default_mallocEPvm
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal14default_mallocEPvm,@function
_ZN6Halide7Runtime8Internal14default_mallocEPvm: # @_ZN6Halide7Runtime8Internal14default_mallocEPvm
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$-128, %rsi
	movq	%rsi, %rdi
	callq	malloc@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB0_2
# BB#1:                                 # %if.end
	movq	%rcx, %rax
	addq	$135, %rax
	andq	$-128, %rax
	movq	%rcx, -8(%rax)
.LBB0_2:                                # %cleanup
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_ZN6Halide7Runtime8Internal14default_mallocEPvm, .Lfunc_end0-_ZN6Halide7Runtime8Internal14default_mallocEPvm

	.section	.text._ZN6Halide7Runtime8Internal12default_freeEPvS2_,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal12default_freeEPvS2_
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal12default_freeEPvS2_,@function
_ZN6Halide7Runtime8Internal12default_freeEPvS2_: # @_ZN6Halide7Runtime8Internal12default_freeEPvS2_
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	-8(%rsi), %rdi
	popq	%rbp
	jmp	free@PLT                # TAILCALL
.Lfunc_end1:
	.size	_ZN6Halide7Runtime8Internal12default_freeEPvS2_, .Lfunc_end1-_ZN6Halide7Runtime8Internal12default_freeEPvS2_

	.section	.text.halide_set_custom_malloc,"ax",@progbits
	.weak	halide_set_custom_malloc
	.align	16, 0x90
	.type	halide_set_custom_malloc,@function
halide_set_custom_malloc:               # @halide_set_custom_malloc
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal13custom_mallocE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	halide_set_custom_malloc, .Lfunc_end2-halide_set_custom_malloc

	.section	.text.halide_set_custom_free,"ax",@progbits
	.weak	halide_set_custom_free
	.align	16, 0x90
	.type	halide_set_custom_free,@function
halide_set_custom_free:                 # @halide_set_custom_free
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal11custom_freeE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	halide_set_custom_free, .Lfunc_end3-halide_set_custom_free

	.section	.text.halide_malloc,"ax",@progbits
	.weak	halide_malloc
	.align	16, 0x90
	.type	halide_malloc,@function
halide_malloc:                          # @halide_malloc
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal13custom_mallocE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end4:
	.size	halide_malloc, .Lfunc_end4-halide_malloc

	.section	.text.halide_free,"ax",@progbits
	.weak	halide_free
	.align	16, 0x90
	.type	halide_free,@function
halide_free:                            # @halide_free
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal11custom_freeE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end5:
	.size	halide_free, .Lfunc_end5-halide_free

	.section	.text._ZN6Halide7Runtime8Internal21default_error_handlerEPvPKc,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal21default_error_handlerEPvPKc
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal21default_error_handlerEPvPKc,@function
_ZN6Halide7Runtime8Internal21default_error_handlerEPvPKc: # @_ZN6Halide7Runtime8Internal21default_error_handlerEPvPKc
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp             # imm = 0x1000
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	-34(%rbp), %r12
	leaq	.L.str(%rip), %rdx
	leaq	-4128(%rbp), %r14
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	halide_string_to_string@PLT
	movzbl	-1(%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB6_2
# BB#1:                                 # %if.then
	movw	$10, (%rax)
	addq	$1, %rax
.LBB6_2:                                # %if.end
	movl	$1, %edx
	subq	%r14, %rdx
	addq	%rax, %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	halide_print@PLT
	callq	abort@PLT
	addq	$4096, %rsp             # imm = 0x1000
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_ZN6Halide7Runtime8Internal21default_error_handlerEPvPKc, .Lfunc_end6-_ZN6Halide7Runtime8Internal21default_error_handlerEPvPKc

	.section	.text.halide_error,"ax",@progbits
	.weak	halide_error
	.align	16, 0x90
	.type	halide_error,@function
halide_error:                           # @halide_error
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal13error_handlerE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end7:
	.size	halide_error, .Lfunc_end7-halide_error

	.section	.text.halide_set_error_handler,"ax",@progbits
	.weak	halide_set_error_handler
	.align	16, 0x90
	.type	halide_set_error_handler,@function
halide_set_error_handler:               # @halide_set_error_handler
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal13error_handlerE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	halide_set_error_handler, .Lfunc_end8-halide_set_error_handler

	.section	.text.halide_print,"ax",@progbits
	.weak	halide_print
	.align	16, 0x90
	.type	halide_print,@function
halide_print:                           # @halide_print
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal12custom_printE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end9:
	.size	halide_print, .Lfunc_end9-halide_print

	.section	.text.halide_set_custom_print,"ax",@progbits
	.weak	halide_set_custom_print
	.align	16, 0x90
	.type	halide_set_custom_print,@function
halide_set_custom_print:                # @halide_set_custom_print
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal12custom_printE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	halide_set_custom_print, .Lfunc_end10-halide_set_custom_print

	.section	.text.halide_start_clock,"ax",@progbits
	.weak	halide_start_clock
	.align	16, 0x90
	.type	halide_start_clock,@function
halide_start_clock:                     # @halide_start_clock
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	halide_reference_clock_inited@GOTPCREL(%rip), %rbx
	cmpb	$0, (%rbx)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	halide_reference_clock@GOTPCREL(%rip), %rdx
	movl	$228, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	syscall@PLT
	movb	$1, (%rbx)
.LBB11_2:                               # %if.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	halide_start_clock, .Lfunc_end11-halide_start_clock

	.section	.text.halide_current_time_ns,"ax",@progbits
	.weak	halide_current_time_ns
	.align	16, 0x90
	.type	halide_current_time_ns,@function
halide_current_time_ns:                 # @halide_current_time_ns
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rdx
	movl	$228, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	syscall@PLT
	movq	halide_reference_clock@GOTPCREL(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	(%rcx), %rdx
	imulq	$1000000000, %rdx, %rdx # imm = 0x3B9ACA00
	subq	8(%rcx), %rax
	addq	%rdx, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	halide_current_time_ns, .Lfunc_end12-halide_current_time_ns

	.section	.text.halide_sleep_ms,"ax",@progbits
	.weak	halide_sleep_ms
	.align	16, 0x90
	.type	halide_sleep_ms,@function
halide_sleep_ms:                        # @halide_sleep_ms
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	imull	$1000, %esi, %edi       # imm = 0x3E8
	popq	%rbp
	jmp	usleep@PLT              # TAILCALL
.Lfunc_end13:
	.size	halide_sleep_ms, .Lfunc_end13-halide_sleep_ms

	.section	.text._ZN6Halide7Runtime8Internal17halide_print_implEPvPKc,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal17halide_print_implEPvPKc
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal17halide_print_implEPvPKc,@function
_ZN6Halide7Runtime8Internal17halide_print_implEPvPKc: # @_ZN6Halide7Runtime8Internal17halide_print_implEPvPKc
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	movl	$2, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	write@PLT               # TAILCALL
.Lfunc_end14:
	.size	_ZN6Halide7Runtime8Internal17halide_print_implEPvPKc, .Lfunc_end14-_ZN6Halide7Runtime8Internal17halide_print_implEPvPKc

	.section	.text.halide_create_temp_file,"ax",@progbits
	.weak	halide_create_temp_file
	.align	16, 0x90
	.type	halide_create_temp_file,@function
halide_create_temp_file:                # @halide_create_temp_file
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r8, %r13
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movl	$-22, %edx
	testq	%rbx, %rbx
	je	.LBB15_7
# BB#1:                                 # %entry
	testq	%r12, %r12
	je	.LBB15_7
# BB#2:                                 # %entry
	testq	%rcx, %rcx
	je	.LBB15_7
# BB#3:                                 # %if.end
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	leaq	.L.str.7(%rip), %rdi
	callq	strlen@PLT
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	strlen@PLT
	movq	%rax, %r14
	leaq	.L.str.1(%rip), %rdi
	callq	strlen@PLT
	movq	%rax, %r15
	movq	%r12, %rdi
	callq	strlen@PLT
	addq	-48(%rbp), %r14         # 8-byte Folded Reload
	addq	%r15, %r14
	leaq	1(%rax,%r14), %rax
	cmpq	%r13, %rax
	jbe	.LBB15_5
# BB#4:
	movl	$-22, %edx
	jmp	.LBB15_7
.LBB15_5:                               # %if.end.11
	movq	-56(%rbp), %r15         # 8-byte Reload
	leaq	-1(%r15,%r13), %r14
	leaq	.L.str.7(%rip), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.1(%rip), %rdx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	halide_string_to_string@PLT
	movb	$0, (%rax)
	movq	%r12, %rdi
	callq	strlen@PLT
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	mkstemps@PLT
	cmpl	$-1, %eax
	movl	$-22, %edx
	je	.LBB15_7
# BB#6:                                 # %if.end.21
	movl	%eax, %edi
	callq	close@PLT
	xorl	%edx, %edx
.LBB15_7:                               # %return
	movl	%edx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	halide_create_temp_file, .Lfunc_end15-halide_create_temp_file

	.section	.text.halide_host_cpu_count,"ax",@progbits
	.weak	halide_host_cpu_count
	.align	16, 0x90
	.type	halide_host_cpu_count,@function
halide_host_cpu_count:                  # @halide_host_cpu_count
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$84, %edi
	popq	%rbp
	jmp	sysconf@PLT             # TAILCALL
.Lfunc_end16:
	.size	halide_host_cpu_count, .Lfunc_end16-halide_host_cpu_count

	.section	.text._ZN6Halide7Runtime8Internal19spawn_thread_helperEPv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv,@function
_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv: # @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	8(%rax), %rdi
	callq	*(%rax)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end17:
	.size	_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv, .Lfunc_end17-_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv

	.section	.text.halide_spawn_thread,"ax",@progbits
	.weak	halide_spawn_thread
	.align	16, 0x90
	.type	halide_spawn_thread,@function
halide_spawn_thread:                    # @halide_spawn_thread
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$24, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movq	%r15, (%rbx)
	movq	%r14, 8(%rbx)
	leaq	16(%rbx), %rdi
	movq	$0, 16(%rbx)
	movq	_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv@GOTPCREL(%rip), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rcx
	callq	pthread_create@PLT
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	halide_spawn_thread, .Lfunc_end18-halide_spawn_thread

	.section	.text.halide_join_thread,"ax",@progbits
	.weak	halide_join_thread
	.align	16, 0x90
	.type	halide_join_thread,@function
halide_join_thread:                     # @halide_join_thread
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	$0, -16(%rbp)
	movq	16(%rbx), %rdi
	leaq	-16(%rbp), %rsi
	callq	pthread_join@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	halide_join_thread, .Lfunc_end19-halide_join_thread

	.section	.text.halide_mutex_lock,"ax",@progbits
	.weak	halide_mutex_lock
	.align	16, 0x90
	.type	halide_mutex_lock,@function
halide_mutex_lock:                      # @halide_mutex_lock
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	pthread_mutex_lock@PLT  # TAILCALL
.Lfunc_end20:
	.size	halide_mutex_lock, .Lfunc_end20-halide_mutex_lock

	.section	.text.halide_mutex_unlock,"ax",@progbits
	.weak	halide_mutex_unlock
	.align	16, 0x90
	.type	halide_mutex_unlock,@function
halide_mutex_unlock:                    # @halide_mutex_unlock
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	pthread_mutex_unlock@PLT # TAILCALL
.Lfunc_end21:
	.size	halide_mutex_unlock, .Lfunc_end21-halide_mutex_unlock

	.section	.text.halide_mutex_destroy,"ax",@progbits
	.weak	halide_mutex_destroy
	.align	16, 0x90
	.type	halide_mutex_destroy,@function
halide_mutex_destroy:                   # @halide_mutex_destroy
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	pthread_mutex_destroy@PLT
	xorl	%esi, %esi
	movl	$64, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	memset@PLT              # TAILCALL
.Lfunc_end22:
	.size	halide_mutex_destroy, .Lfunc_end22-halide_mutex_destroy

	.section	.text.halide_cond_init,"ax",@progbits
	.weak	halide_cond_init
	.align	16, 0x90
	.type	halide_cond_init,@function
halide_cond_init:                       # @halide_cond_init
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	popq	%rbp
	jmp	pthread_cond_init@PLT   # TAILCALL
.Lfunc_end23:
	.size	halide_cond_init, .Lfunc_end23-halide_cond_init

	.section	.text.halide_cond_destroy,"ax",@progbits
	.weak	halide_cond_destroy
	.align	16, 0x90
	.type	halide_cond_destroy,@function
halide_cond_destroy:                    # @halide_cond_destroy
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	pthread_cond_destroy@PLT # TAILCALL
.Lfunc_end24:
	.size	halide_cond_destroy, .Lfunc_end24-halide_cond_destroy

	.section	.text.halide_cond_broadcast,"ax",@progbits
	.weak	halide_cond_broadcast
	.align	16, 0x90
	.type	halide_cond_broadcast,@function
halide_cond_broadcast:                  # @halide_cond_broadcast
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	pthread_cond_broadcast@PLT # TAILCALL
.Lfunc_end25:
	.size	halide_cond_broadcast, .Lfunc_end25-halide_cond_broadcast

	.section	.text.halide_cond_wait,"ax",@progbits
	.weak	halide_cond_wait
	.align	16, 0x90
	.type	halide_cond_wait,@function
halide_cond_wait:                       # @halide_cond_wait
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	pthread_cond_wait@PLT   # TAILCALL
.Lfunc_end26:
	.size	halide_cond_wait, .Lfunc_end26-halide_cond_wait

	.section	.text._ZN6Halide7Runtime8Internal15default_do_taskEPvPFiS2_iPhEiS3_,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal15default_do_taskEPvPFiS2_iPhEiS3_
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal15default_do_taskEPvPFiS2_iPhEiS3_,@function
_ZN6Halide7Runtime8Internal15default_do_taskEPvPFiS2_iPhEiS3_: # @_ZN6Halide7Runtime8Internal15default_do_taskEPvPFiS2_iPhEiS3_
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rax
	movl	%edx, %esi
	movq	%rcx, %rdx
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end27:
	.size	_ZN6Halide7Runtime8Internal15default_do_taskEPvPFiS2_iPhEiS3_, .Lfunc_end27-_ZN6Halide7Runtime8Internal15default_do_taskEPvPFiS2_iPhEiS3_

	.section	.text._ZN6Halide7Runtime8Internal17clamp_num_threadsEi,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi,@function
_ZN6Halide7Runtime8Internal17clamp_num_threadsEi: # @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$64, %edi
	jle	.LBB28_1
# BB#2:                                 # %if.end.3
	movl	$64, %eax
	popq	%rbp
	retq
.LBB28_1:                               # %if.else
	testl	%edi, %edi
	movl	$1, %eax
	cmovgl	%edi, %eax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi, .Lfunc_end28-_ZN6Halide7Runtime8Internal17clamp_num_threadsEi

	.section	.text._ZN6Halide7Runtime8Internal27default_desired_num_threadsEv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv,@function
_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv: # @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str.8(%rip), %rdi
	callq	getenv@PLT
	testq	%rax, %rax
	jne	.LBB29_2
# BB#1:                                 # %if.end
	leaq	.L.str.1.9(%rip), %rdi
	callq	getenv@PLT
	testq	%rax, %rax
	je	.LBB29_3
.LBB29_2:                               # %if.then.3
	movq	%rax, %rdi
	popq	%rbp
	jmp	atoi@PLT                # TAILCALL
.LBB29_3:                               # %if.else
	popq	%rbp
	jmp	halide_host_cpu_count@PLT # TAILCALL
.Lfunc_end29:
	.size	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv, .Lfunc_end29-_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv

	.section	.text._ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE,@function
_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE: # @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %rbx
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB30_13
# BB#1:
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r13
	leaq	80(%r13), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB30_2
	.align	16, 0x90
.LBB30_28:                              # %if.then.3.us
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	halide_cond_wait@PLT
.LBB30_2:                               # %cond.true.us
                                        # =>This Inner Loop Header: Depth=1
	movl	24(%rbx), %eax
	cmpl	28(%rbx), %eax
	jl	.LBB30_4
# BB#3:                                 # %cond.end.us
                                        #   in Loop: Header=BB30_2 Depth=1
	cmpl	$0, 40(%rbx)
	jle	.LBB30_20
.LBB30_4:                               # %while.body.us
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	64(%r13), %r12
	testq	%r12, %r12
	je	.LBB30_28
# BB#5:                                 # %if.else.8.us
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	8(%r12), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	16(%r12), %r15
	movq	24(%r12), %rbx
	movq	32(%r12), %r14
	leal	1(%rbx), %eax
	movl	%eax, 24(%r12)
	movq	%rbx, %rcx
	shrq	$32, %rcx
	cmpl	%ecx, %eax
	jne	.LBB30_7
# BB#6:                                 # %if.then.12.us
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	(%r12), %rax
	movq	%rax, 64(%r13)
.LBB30_7:                               # %if.end.13.us
                                        #   in Loop: Header=BB30_2 Depth=1
	incl	40(%r12)
	movq	%r13, %rdi
	callq	halide_mutex_unlock@PLT
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%ebx, %edx
	movq	%r14, %rcx
	callq	halide_do_task@PLT
	movl	%eax, %ebx
	movq	%r13, %rdi
	callq	halide_mutex_lock@PLT
	testl	%ebx, %ebx
	je	.LBB30_9
# BB#8:                                 # %if.then.18.us
                                        #   in Loop: Header=BB30_2 Depth=1
	movl	%ebx, 44(%r12)
.LBB30_9:                               # %if.end.19.us
                                        #   in Loop: Header=BB30_2 Depth=1
	movl	40(%r12), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 40(%r12)
	movl	24(%r12), %ecx
	cmpl	28(%r12), %ecx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jl	.LBB30_2
# BB#10:                                # %_ZN6Halide7Runtime8Internal4work7runningEv.exit65.us
                                        #   in Loop: Header=BB30_2 Depth=1
	cmpq	%rbx, %r12
	je	.LBB30_2
# BB#11:                                # %_ZN6Halide7Runtime8Internal4work7runningEv.exit65.us
                                        #   in Loop: Header=BB30_2 Depth=1
	cmpl	$1, %eax
	jg	.LBB30_2
# BB#12:                                # %if.then.24.us
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	halide_cond_broadcast@PLT
	jmp	.LBB30_2
.LBB30_13:                              # %cond.false.preheader
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rbx
	cmpb	$0, 792(%rbx)
	jne	.LBB30_20
# BB#14:
	leaq	208(%rbx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	leaq	144(%rbx), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	leaq	80(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	.align	16, 0x90
.LBB30_15:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rbx), %r13
	testq	%r13, %r13
	je	.LBB30_16
# BB#21:                                # %if.else.8
                                        #   in Loop: Header=BB30_15 Depth=1
	movq	8(%r13), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	16(%r13), %r15
	movq	24(%r13), %r14
	movq	32(%r13), %r12
	leal	1(%r14), %eax
	movl	%eax, 24(%r13)
	movq	%r14, %rcx
	shrq	$32, %rcx
	cmpl	%ecx, %eax
	jne	.LBB30_23
# BB#22:                                # %if.then.12
                                        #   in Loop: Header=BB30_15 Depth=1
	movq	(%r13), %rax
	movq	%rax, 64(%rbx)
.LBB30_23:                              # %if.end.13
                                        #   in Loop: Header=BB30_15 Depth=1
	incl	40(%r13)
	movq	%rbx, %rdi
	callq	halide_mutex_unlock@PLT
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%r14d, %edx
	movq	%r12, %rcx
	callq	halide_do_task@PLT
	movl	%eax, %r14d
	movq	%rbx, %rdi
	callq	halide_mutex_lock@PLT
	testl	%r14d, %r14d
	je	.LBB30_25
# BB#24:                                # %if.then.18
                                        #   in Loop: Header=BB30_15 Depth=1
	movl	%r14d, 44(%r13)
.LBB30_25:                              # %if.end.19
                                        #   in Loop: Header=BB30_15 Depth=1
	movl	40(%r13), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 40(%r13)
	cmpl	$1, %eax
	jg	.LBB30_19
# BB#26:                                # %if.end.19
                                        #   in Loop: Header=BB30_15 Depth=1
	movl	28(%r13), %eax
	cmpl	%eax, 24(%r13)
	jl	.LBB30_19
# BB#27:                                # %if.then.24
                                        #   in Loop: Header=BB30_15 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	halide_cond_broadcast@PLT
	jmp	.LBB30_19
	.align	16, 0x90
.LBB30_16:                              # %if.else
                                        #   in Loop: Header=BB30_15 Depth=1
	movq	72(%rbx), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	cmpl	%ecx, %eax
	jle	.LBB30_17
# BB#18:                                # %if.else.6
                                        #   in Loop: Header=BB30_15 Depth=1
	leal	-1(%rax), %eax
	movl	%eax, 72(%rbx)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	halide_cond_wait@PLT
	incl	72(%rbx)
	jmp	.LBB30_19
.LBB30_17:                              # %if.then.5
                                        #   in Loop: Header=BB30_15 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	halide_cond_wait@PLT
	.align	16, 0x90
.LBB30_19:                              # %cond.false.backedge
                                        #   in Loop: Header=BB30_15 Depth=1
	cmpb	$0, 792(%rbx)
	je	.LBB30_15
.LBB30_20:                              # %while.end
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE, .Lfunc_end30-_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE

	.section	.text.halide_do_task,"ax",@progbits
	.weak	halide_do_task
	.align	16, 0x90
	.type	halide_do_task,@function
halide_do_task:                         # @halide_do_task
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	custom_do_task@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end31:
	.size	halide_do_task, .Lfunc_end31-halide_do_task

	.section	.text._ZN6Halide7Runtime8Internal13worker_threadEPv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal13worker_threadEPv
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal13worker_threadEPv,@function
_ZN6Halide7Runtime8Internal13worker_threadEPv: # @_ZN6Halide7Runtime8Internal13worker_threadEPv
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	halide_mutex_lock@PLT
	xorl	%edi, %edi
	callq	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE@PLT
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	halide_mutex_unlock@PLT # TAILCALL
.Lfunc_end32:
	.size	_ZN6Halide7Runtime8Internal13worker_threadEPv, .Lfunc_end32-_ZN6Halide7Runtime8Internal13worker_threadEPv

	.section	.text._ZN6Halide7Runtime8Internal18default_do_par_forEPvPFiS2_iPhEiiS3_,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal18default_do_par_forEPvPFiS2_iPhEiiS3_
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal18default_do_par_forEPvPFiS2_iPhEiiS3_,@function
_ZN6Halide7Runtime8Internal18default_do_par_forEPvPFiS2_iPhEiiS3_: # @_ZN6Halide7Runtime8Internal18default_do_par_forEPvPFiS2_iPhEiiS3_
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movl	%ecx, %r14d
	movl	%edx, %r12d
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rdi, %r13
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	halide_mutex_lock@PLT
	cmpb	$0, 793(%rbx)
	je	.LBB33_2
# BB#1:                                 # %entry.while.cond.preheader_crit_edge
	movq	784(%rbx), %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	jmp	.LBB33_5
.LBB33_2:                               # %if.then
	movb	$0, 792(%rbx)
	leaq	80(%rbx), %rdi
	callq	halide_cond_init@PLT
	leaq	144(%rbx), %rdi
	callq	halide_cond_init@PLT
	leaq	208(%rbx), %rdi
	callq	halide_cond_init@PLT
	movq	$0, 64(%rbx)
	movl	788(%rbx), %edi
	testl	%edi, %edi
	jne	.LBB33_4
# BB#3:                                 # %if.then.2
	callq	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv@PLT
	movl	%eax, %edi
	movl	%edi, 788(%rbx)
.LBB33_4:                               # %if.end
	callq	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi@PLT
	movl	%eax, 788(%rbx)
	movl	$0, 784(%rbx)
	movl	%eax, 72(%rbx)
	movb	$1, 793(%rbx)
	xorl	%ecx, %ecx
.LBB33_5:                               # %while.cond.preheader
	leal	-1(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB33_8
# BB#6:
	movq	_ZN6Halide7Runtime8Internal13worker_threadEPv@GOTPCREL(%rip), %r15
	.align	16, 0x90
.LBB33_7:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	halide_spawn_thread@PLT
	movslq	784(%rbx), %rcx
	leal	1(%rcx), %edx
	movl	%edx, 784(%rbx)
	movq	%rax, 272(%rbx,%rcx,8)
	movq	784(%rbx), %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	leal	-1(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB33_7
.LBB33_8:                               # %while.end
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -80(%rbp)
	movq	%r13, -72(%rbp)
	movl	%r12d, -64(%rbp)
	leal	(%r12,%r14), %ecx
	movl	%ecx, -60(%rbp)
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	64(%rbx), %rcx
	testq	%rcx, %rcx
	movl	%eax, %edx
	cmovel	%r14d, %edx
	cmpl	%r14d, %eax
	cmovlel	%eax, %edx
	movl	%edx, 76(%rbx)
	movq	%rcx, -88(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, 64(%rbx)
	leaq	144(%rbx), %rdi
	callq	halide_cond_broadcast@PLT
	movl	76(%rbx), %eax
	cmpl	72(%rbx), %eax
	jle	.LBB33_10
# BB#9:                                 # %if.then.14
	movl	$208, %edi
	addq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rdi
	callq	halide_cond_broadcast@PLT
.LBB33_10:                              # %if.end.15
	leaq	-88(%rbp), %rdi
	callq	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE@PLT
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
	movl	-44(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	_ZN6Halide7Runtime8Internal18default_do_par_forEPvPFiS2_iPhEiiS3_, .Lfunc_end33-_ZN6Halide7Runtime8Internal18default_do_par_forEPvPFiS2_iPhEiiS3_

	.section	.text.halide_set_num_threads,"ax",@progbits
	.weak	halide_set_num_threads
	.align	16, 0x90
	.type	halide_set_num_threads,@function
halide_set_num_threads:                 # @halide_set_num_threads
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	testl	%ebx, %ebx
	js	.LBB34_1
# BB#2:                                 # %if.end
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	testl	%ebx, %ebx
	jne	.LBB34_4
# BB#3:                                 # %if.then.2
	callq	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv@PLT
	movl	%eax, %ebx
	jmp	.LBB34_4
.LBB34_1:                               # %if.end.thread
	leaq	.L.str.2(%rip), %rsi
	xorl	%edi, %edi
	callq	halide_error@PLT
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
.LBB34_4:                               # %if.end.3
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r14
	movl	788(%r14), %r15d
	movl	%ebx, %edi
	callq	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi@PLT
	movl	%eax, 788(%r14)
	movq	%r14, %rdi
	callq	halide_mutex_unlock@PLT
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	halide_set_num_threads, .Lfunc_end34-halide_set_num_threads

	.section	.text.halide_shutdown_thread_pool,"ax",@progbits
	.weak	halide_shutdown_thread_pool
	.align	16, 0x90
	.type	halide_shutdown_thread_pool,@function
halide_shutdown_thread_pool:            # @halide_shutdown_thread_pool
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	_ZN6Halide7Runtime8Internal10work_queueE@GOTPCREL(%rip), %r13
	cmpb	$0, 793(%r13)
	je	.LBB35_5
# BB#1:                                 # %if.end
	movq	%r13, %rdi
	callq	halide_mutex_lock@PLT
	movb	$1, 792(%r13)
	leaq	80(%r13), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	halide_cond_broadcast@PLT
	leaq	144(%r13), %r15
	movq	%r15, %rdi
	callq	halide_cond_broadcast@PLT
	leaq	208(%r13), %r12
	movq	%r12, %rdi
	callq	halide_cond_broadcast@PLT
	movq	%r13, %rdi
	callq	halide_mutex_unlock@PLT
	xorl	%ebx, %ebx
	cmpl	$0, 784(%r13)
	jle	.LBB35_4
# BB#2:
	leaq	272(%r13), %r14
	.align	16, 0x90
.LBB35_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	callq	halide_join_thread@PLT
	addq	$1, %rbx
	movslq	784(%r13), %rax
	addq	$8, %r14
	cmpq	%rax, %rbx
	jl	.LBB35_3
.LBB35_4:                               # %for.cond.cleanup
	movq	%r13, %rdi
	callq	halide_mutex_destroy@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	halide_cond_destroy@PLT
	movq	%r15, %rdi
	callq	halide_cond_destroy@PLT
	movq	%r12, %rdi
	callq	halide_cond_destroy@PLT
	movb	$0, 793(%r13)
.LBB35_5:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	halide_shutdown_thread_pool, .Lfunc_end35-halide_shutdown_thread_pool

	.section	.text.halide_thread_pool_cleanup,"ax",@progbits
	.weak	halide_thread_pool_cleanup
	.align	16, 0x90
	.type	halide_thread_pool_cleanup,@function
halide_thread_pool_cleanup:             # @halide_thread_pool_cleanup
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	halide_shutdown_thread_pool@PLT # TAILCALL
.Lfunc_end36:
	.size	halide_thread_pool_cleanup, .Lfunc_end36-halide_thread_pool_cleanup

	.section	.text.halide_set_custom_do_task,"ax",@progbits
	.weak	halide_set_custom_do_task
	.align	16, 0x90
	.type	halide_set_custom_do_task,@function
halide_set_custom_do_task:              # @halide_set_custom_do_task
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	custom_do_task@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end37:
	.size	halide_set_custom_do_task, .Lfunc_end37-halide_set_custom_do_task

	.section	.text.halide_set_custom_do_par_for,"ax",@progbits
	.weak	halide_set_custom_do_par_for
	.align	16, 0x90
	.type	halide_set_custom_do_par_for,@function
halide_set_custom_do_par_for:           # @halide_set_custom_do_par_for
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	custom_do_par_for@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end38:
	.size	halide_set_custom_do_par_for, .Lfunc_end38-halide_set_custom_do_par_for

	.section	.text.halide_do_par_for,"ax",@progbits
	.weak	halide_do_par_for
	.align	16, 0x90
	.type	halide_do_par_for,@function
halide_do_par_for:                      # @halide_do_par_for
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	custom_do_par_for@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end39:
	.size	halide_do_par_for, .Lfunc_end39-halide_do_par_for

	.section	.text._ZN6Halide7Runtime8Internal22halide_get_symbol_implEPKc,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal22halide_get_symbol_implEPKc
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal22halide_get_symbol_implEPKc,@function
_ZN6Halide7Runtime8Internal22halide_get_symbol_implEPKc: # @_ZN6Halide7Runtime8Internal22halide_get_symbol_implEPKc
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	xorl	%edi, %edi
	movq	%rax, %rsi
	popq	%rbp
	jmp	dlsym@PLT               # TAILCALL
.Lfunc_end40:
	.size	_ZN6Halide7Runtime8Internal22halide_get_symbol_implEPKc, .Lfunc_end40-_ZN6Halide7Runtime8Internal22halide_get_symbol_implEPKc

	.section	.text._ZN6Halide7Runtime8Internal24halide_load_library_implEPKc,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal24halide_load_library_implEPKc
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal24halide_load_library_implEPKc,@function
_ZN6Halide7Runtime8Internal24halide_load_library_implEPKc: # @_ZN6Halide7Runtime8Internal24halide_load_library_implEPKc
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$1, %esi
	callq	dlopen@PLT
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB41_2
# BB#1:                                 # %if.then
	callq	dlerror@PLT
.LBB41_2:                               # %if.end
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end41:
	.size	_ZN6Halide7Runtime8Internal24halide_load_library_implEPKc, .Lfunc_end41-_ZN6Halide7Runtime8Internal24halide_load_library_implEPKc

	.section	.text._ZN6Halide7Runtime8Internal30halide_get_library_symbol_implEPvPKc,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal30halide_get_library_symbol_implEPvPKc
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal30halide_get_library_symbol_implEPvPKc,@function
_ZN6Halide7Runtime8Internal30halide_get_library_symbol_implEPvPKc: # @_ZN6Halide7Runtime8Internal30halide_get_library_symbol_implEPvPKc
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	dlsym@PLT               # TAILCALL
.Lfunc_end42:
	.size	_ZN6Halide7Runtime8Internal30halide_get_library_symbol_implEPvPKc, .Lfunc_end42-_ZN6Halide7Runtime8Internal30halide_get_library_symbol_implEPvPKc

	.section	.text.halide_set_custom_get_symbol,"ax",@progbits
	.weak	halide_set_custom_get_symbol
	.align	16, 0x90
	.type	halide_set_custom_get_symbol,@function
halide_set_custom_get_symbol:           # @halide_set_custom_get_symbol
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal17custom_get_symbolE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end43:
	.size	halide_set_custom_get_symbol, .Lfunc_end43-halide_set_custom_get_symbol

	.section	.text.halide_set_custom_load_library,"ax",@progbits
	.weak	halide_set_custom_load_library
	.align	16, 0x90
	.type	halide_set_custom_load_library,@function
halide_set_custom_load_library:         # @halide_set_custom_load_library
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal19custom_load_libraryE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end44:
	.size	halide_set_custom_load_library, .Lfunc_end44-halide_set_custom_load_library

	.section	.text.halide_set_custom_get_library_symbol,"ax",@progbits
	.weak	halide_set_custom_get_library_symbol
	.align	16, 0x90
	.type	halide_set_custom_get_library_symbol,@function
halide_set_custom_get_library_symbol:   # @halide_set_custom_get_library_symbol
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end45:
	.size	halide_set_custom_get_library_symbol, .Lfunc_end45-halide_set_custom_get_library_symbol

	.section	.text.halide_get_symbol,"ax",@progbits
	.weak	halide_get_symbol
	.align	16, 0x90
	.type	halide_get_symbol,@function
halide_get_symbol:                      # @halide_get_symbol
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal17custom_get_symbolE@GOTPCREL(%rip), %rax
	popq	%rbp
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end46:
	.size	halide_get_symbol, .Lfunc_end46-halide_get_symbol

	.section	.text.halide_load_library,"ax",@progbits
	.weak	halide_load_library
	.align	16, 0x90
	.type	halide_load_library,@function
halide_load_library:                    # @halide_load_library
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal19custom_load_libraryE@GOTPCREL(%rip), %rax
	popq	%rbp
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end47:
	.size	halide_load_library, .Lfunc_end47-halide_load_library

	.section	.text.halide_get_library_symbol,"ax",@progbits
	.weak	halide_get_library_symbol
	.align	16, 0x90
	.type	halide_get_library_symbol,@function
halide_get_library_symbol:              # @halide_get_library_symbol
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end48:
	.size	halide_get_library_symbol, .Lfunc_end48-halide_get_library_symbol

	.section	.text.halide_set_gpu_device,"ax",@progbits
	.weak	halide_set_gpu_device
	.align	16, 0x90
	.type	halide_set_gpu_device,@function
halide_set_gpu_device:                  # @halide_set_gpu_device
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE@GOTPCREL(%rip), %rax
	movl	%edi, (%rax)
	movq	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	popq	%rbp
	retq
.Lfunc_end49:
	.size	halide_set_gpu_device, .Lfunc_end49-halide_set_gpu_device

	.section	.text.halide_get_gpu_device,"ax",@progbits
	.weak	halide_get_gpu_device
	.align	16, 0x90
	.type	halide_get_gpu_device,@function
halide_get_gpu_device:                  # @halide_get_gpu_device
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE@GOTPCREL(%rip), %rbx
	.align	16, 0x90
.LBB50_1:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	xchgl	%eax, (%rbx)
	testl	%eax, %eax
	jne	.LBB50_1
# BB#2:                                 # %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
	movq	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE@GOTPCREL(%rip), %r14
	cmpb	$0, (%r14)
	je	.LBB50_4
# BB#3:                                 # %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit.if.end.4_crit_edge
	movq	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	jmp	.LBB50_7
.LBB50_4:                               # %if.then
	leaq	.L.str.10(%rip), %rdi
	callq	getenv@PLT
	movq	%rax, %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB50_6
# BB#5:                                 # %if.then.2
	movq	%rcx, %rdi
	callq	atoi@PLT
.LBB50_6:                               # %if.end
	movq	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movb	$1, (%r14)
.LBB50_7:                               # %if.end.4
	movl	$0, (%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end50:
	.size	halide_get_gpu_device, .Lfunc_end50-halide_get_gpu_device

	.section	.text._ZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_t,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_t
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_t,@function
_ZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_t: # @_ZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_t
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4168, %rsp             # imm = 0x1048
	movq	%rsi, %r12
	movq	%rdi, -4160(%rbp)       # 8-byte Spill
	movl	$1, %r14d
	lock		xaddl	%r14d, _ZZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_tE3ids(%rip)
	callq	halide_get_trace_file@PLT
	testl	%eax, %eax
	jle	.LBB51_10
# BB#1:                                 # %if.then
	movl	%eax, %r15d
	movzwl	26(%r12), %eax
	movzbl	25(%r12), %r13d
	addl	$7, %r13d
	shrl	$3, %r13d
	imulq	%rax, %r13
	movl	40(%r12), %ebx
	leal	(,%rbx,4), %eax
	movl	%eax, -4192(%rbp)       # 4-byte Spill
	movq	(%r12), %rdi
	callq	strlen@PLT
	addq	$1, %rax
	movq	%rax, -4168(%rbp)       # 8-byte Spill
	leal	(%r13,%rbx,4), %ecx
	leal	28(%rax,%rcx), %edx
	movl	%edx, -4196(%rbp)       # 4-byte Spill
	leal	31(%rax,%rcx), %eax
	andl	$-4, %eax
	movl	%eax, -4152(%rbp)       # 4-byte Spill
	movl	%eax, -4144(%rbp)
	movl	%r14d, -4140(%rbp)
	movl	%r14d, -4172(%rbp)      # 4-byte Spill
	vmovupd	24(%r12), %xmm0
	vmovupd	%xmm0, -4136(%rbp)
	movl	%ebx, -4120(%rbp)
	movq	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE@GOTPCREL(%rip), %r14
	.align	16, 0x90
.LBB51_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	xchgl	%eax, (%r14)
	testl	%eax, %eax
	jne	.LBB51_2
# BB#3:                                 # %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
	leaq	-4144(%rbp), %rsi
	movl	$28, %edx
	movl	%r15d, %ebx
	movl	%ebx, %edi
	callq	write@PLT
	movq	%rax, %r15
	movq	%r12, %rcx
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB51_5
# BB#4:                                 # %if.then.19
	movl	-4192(%rbp), %edx       # 4-byte Reload
	movq	%rcx, %r12
	movl	%ebx, %edi
	callq	write@PLT
	movq	%r12, %rcx
	addq	%rax, %r15
.LBB51_5:                               # %if.end
	movq	%r15, -4192(%rbp)       # 8-byte Spill
	movl	%ebx, %r15d
	movl	-4152(%rbp), %r12d      # 4-byte Reload
	subl	-4196(%rbp), %r12d      # 4-byte Folded Reload
	movq	8(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB51_6
# BB#7:                                 # %if.then.25
	movq	%rcx, %rbx
	movl	%r15d, %edi
	movq	%r13, %rdx
	callq	write@PLT
	movq	%rbx, %rcx
	movq	-4192(%rbp), %r13       # 8-byte Reload
	addq	%rax, %r13
	jmp	.LBB51_8
.LBB51_10:                              # %if.else
	leaq	-49(%rbp), %r15
	movb	$0, -49(%rbp)
	movzbl	25(%r12), %eax
	movl	$8, %ecx
	.align	16, 0x90
.LBB51_11:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	leal	(%rdx,%rdx), %ecx
	cmpl	%eax, %edx
	jl	.LBB51_11
# BB#12:                                # %while.end
	cmpl	$65, %edx
	movq	%rdx, -4168(%rbp)       # 8-byte Spill
	jl	.LBB51_14
# BB#13:                                # %if.then.46
	leaq	.L.str.1.15(%rip), %rsi
	movq	-4160(%rbp), %rdi       # 8-byte Reload
	callq	halide_print@PLT
	callq	abort@PLT
.LBB51_14:                              # %if.end.47
	movl	28(%r12), %r13d
	leaq	.L_ZZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_tE11event_types(%rip), %rax
	movq	(%rax,%r13,8), %rdx
	leaq	-4144(%rbp), %rdi
	movq	%r12, %rbx
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	leaq	.L.str.20.122(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movq	(%rbx), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	leaq	.L.str.28(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movslq	36(%rbx), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.22.124(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rsi
	movzwl	26(%rbx), %eax
	cmpl	$2, %eax
	jb	.LBB51_15
# BB#16:                                # %if.then.63
	movq	%r13, -4152(%rbp)       # 8-byte Spill
	leaq	.L.str.15(%rip), %rdx
	movq	%rsi, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rsi
	jmp	.LBB51_17
.LBB51_6:
	movq	-4192(%rbp), %r13       # 8-byte Reload
.LBB51_8:                               # %if.end.30
	movq	(%rcx), %rsi
	movq	-4168(%rbp), %rax       # 8-byte Reload
	movl	%eax, %edx
	movl	%r15d, %edi
	callq	write@PLT
	movq	%rax, %rbx
	addq	%r13, %rbx
	movl	$0, -44(%rbp)
	movl	%r12d, %edx
	leaq	-44(%rbp), %rsi
	movl	%r15d, %edi
	callq	write@PLT
	addq	%rbx, %rax
	movl	$0, (%r14)
	movl	-4152(%rbp), %ecx       # 4-byte Reload
	cmpq	%rcx, %rax
	je	.LBB51_45
# BB#9:                                 # %if.then.40
	leaq	.L.str.14(%rip), %rsi
	movq	-4160(%rbp), %rdi       # 8-byte Reload
	callq	halide_print@PLT
	callq	abort@PLT
	jmp	.LBB51_45
.LBB51_15:
	movq	%r13, -4152(%rbp)       # 8-byte Spill
.LBB51_17:                              # %for.cond.preheader
	movq	%r15, %r13
	cmpl	$0, 40(%rbx)
	jle	.LBB51_18
# BB#21:                                # %for.body.lr.ph
	movl	%r14d, -4172(%rbp)      # 4-byte Spill
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB51_22:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	jle	.LBB51_28
# BB#23:                                # %if.then.69
                                        #   in Loop: Header=BB51_22 Depth=1
	movzwl	26(%rbx), %ecx
	cmpl	$2, %ecx
	jb	.LBB51_26
# BB#24:                                # %land.lhs.true
                                        #   in Loop: Header=BB51_22 Depth=1
	movl	%r12d, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.LBB51_25
.LBB51_26:                              # %if.else.80
                                        #   in Loop: Header=BB51_22 Depth=1
	movq	%rsi, %rdi
	movq	%r13, %rsi
	leaq	.L.str.17(%rip), %rdx
	jmp	.LBB51_27
.LBB51_25:                              # %if.then.78
                                        #   in Loop: Header=BB51_22 Depth=1
	movq	%rsi, %rdi
	movq	%r13, %rsi
	leaq	.L.str.16(%rip), %rdx
	.align	16, 0x90
.LBB51_27:                              # %if.end.83
                                        #   in Loop: Header=BB51_22 Depth=1
	callq	halide_string_to_string@PLT
	movq	%rax, %rsi
.LBB51_28:                              # %if.end.83
                                        #   in Loop: Header=BB51_22 Depth=1
	movq	16(%rbx), %rax
	movslq	(%rax,%r15), %rdx
	movl	$1, %ecx
	movq	%rsi, %rdi
	movq	%r13, %rsi
	callq	halide_int64_to_string@PLT
	movq	%rax, %rsi
	addq	$1, %r14
	movslq	40(%rbx), %rax
	addq	$4, %r15
	addl	$1, %r12d
	cmpq	%rax, %r14
	jl	.LBB51_22
	jmp	.LBB51_19
.LBB51_18:
	movl	%r14d, -4172(%rbp)      # 4-byte Spill
.LBB51_19:                              # %for.cond.cleanup
	movzwl	26(%rbx), %eax
	cmpl	$1, %eax
	jbe	.LBB51_29
# BB#20:                                # %if.then.92
	leaq	.L.str.18(%rip), %rdx
	jmp	.LBB51_30
.LBB51_29:                              # %if.else.94
	leaq	.L.str.8.76(%rip), %rdx
.LBB51_30:                              # %if.end.96
	movq	%rsi, %rdi
	movq	%r13, %r15
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	-4160(%rbp), %r12       # 8-byte Reload
	movq	-4152(%rbp), %rax       # 8-byte Reload
	cmpl	$1, %eax
	jg	.LBB51_42
# BB#31:                                # %if.then.98
	movzwl	26(%rbx), %eax
	cmpl	$2, %eax
	jb	.LBB51_33
# BB#32:                                # %if.then.103
	leaq	.L.str.20(%rip), %rdx
	jmp	.LBB51_34
.LBB51_33:                              # %if.else.105
	leaq	.L.str.21(%rip), %rdx
.LBB51_34:                              # %for.cond.109.preheader
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	cmpw	$0, 26(%rbx)
	je	.LBB51_42
# BB#35:                                # %for.body.115.lr.ph
	movq	%r12, -4160(%rbp)       # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -4152(%rbp)       # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB51_36:                              # %for.body.115
                                        # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	jle	.LBB51_38
# BB#37:                                # %if.then.117
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	%r15, %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
.LBB51_38:                              # %if.end.119
                                        #   in Loop: Header=BB51_36 Depth=1
	movzbl	24(%rbx), %eax
	cmpq	$3, %rax
	ja	.LBB51_74
# BB#39:                                # %if.end.119
                                        #   in Loop: Header=BB51_36 Depth=1
	leaq	.LJTI51_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	movq	-4168(%rbp), %rdx       # 8-byte Reload
	jmpq	*%rax
.LBB51_46:                              # %if.then.123
                                        #   in Loop: Header=BB51_36 Depth=1
	cmpl	$16, %edx
	jne	.LBB51_47
# BB#50:                                # %if.then.133
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	8(%rbx), %rax
	movswq	(%rax,%r12), %rdx
	jmp	.LBB51_49
.LBB51_56:                              # %if.then.159
                                        #   in Loop: Header=BB51_36 Depth=1
	cmpl	$16, %edx
	jne	.LBB51_57
# BB#59:                                # %if.then.169
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	8(%rbx), %rax
	movzwl	(%rax,%r12), %edx
	jmp	.LBB51_49
.LBB51_64:                              # %if.then.195
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	%rbx, -4184(%rbp)       # 8-byte Spill
	movq	%rdi, %rbx
	cmpl	$15, %edx
	jle	.LBB51_65
# BB#67:                                # %if.end.198
                                        #   in Loop: Header=BB51_36 Depth=1
	cmpl	$32, %edx
	movq	-4184(%rbp), %rax       # 8-byte Reload
	jne	.LBB51_70
# BB#68:                                # %if.then.200
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	8(%rax), %rax
	movq	-4152(%rbp), %rcx       # 8-byte Reload
	vcvtss2sd	(%rax,%rcx), %xmm0, %xmm0
	xorl	%edx, %edx
	jmp	.LBB51_69
.LBB51_72:                              # %if.then.224
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	8(%rbx), %rax
	movq	(%rax,%r13), %rdx
	movq	%r15, %rsi
	callq	halide_pointer_to_string@PLT
	jmp	.LBB51_73
.LBB51_47:                              # %if.then.123
                                        #   in Loop: Header=BB51_36 Depth=1
	cmpl	$8, %edx
	jne	.LBB51_51
# BB#48:                                # %if.then.125
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	8(%rbx), %rax
	movsbq	(%rax,%r14), %rdx
	jmp	.LBB51_49
.LBB51_57:                              # %if.then.159
                                        #   in Loop: Header=BB51_36 Depth=1
	cmpl	$8, %edx
	jne	.LBB51_60
# BB#58:                                # %if.then.161
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	8(%rbx), %rax
	movzbl	(%rax,%r14), %edx
.LBB51_49:                              # %for.inc.233
                                        #   in Loop: Header=BB51_36 Depth=1
	movl	$1, %ecx
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	jmp	.LBB51_73
.LBB51_65:                              # %if.else.205.thread
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	-4160(%rbp), %rdi       # 8-byte Reload
	leaq	.L.str.22(%rip), %rsi
	callq	halide_print@PLT
	callq	abort@PLT
	movq	-4184(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rax
	jmp	.LBB51_66
.LBB51_70:                              # %if.else.205
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	8(%rax), %rax
	cmpl	$16, %edx
	jne	.LBB51_66
# BB#71:                                # %if.then.207
                                        #   in Loop: Header=BB51_36 Depth=1
	movzwl	(%rax,%r12), %edi
	callq	halide_float16_bits_to_double@PLT
	movl	$1, %edx
.LBB51_69:                              # %for.inc.233
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	halide_double_to_string@PLT
	movq	-4184(%rbp), %rbx       # 8-byte Reload
	.align	16, 0x90
.LBB51_73:                              # %for.inc.233
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	%rax, %rdi
	jmp	.LBB51_74
.LBB51_66:                              # %if.else.212
                                        #   in Loop: Header=BB51_36 Depth=1
	vmovsd	(%rax,%r13), %xmm0      # xmm0 = mem[0],zero
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	halide_double_to_string@PLT
	jmp	.LBB51_55
.LBB51_51:                              # %if.else.139
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	8(%rbx), %rax
	movq	%rbx, -4184(%rbp)       # 8-byte Spill
	cmpl	$32, %edx
	jne	.LBB51_53
# BB#52:                                # %if.then.141
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	-4152(%rbp), %rcx       # 8-byte Reload
	movslq	(%rax,%rcx), %rdx
	jmp	.LBB51_54
.LBB51_60:                              # %if.else.175
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	8(%rbx), %rax
	movq	%rbx, -4184(%rbp)       # 8-byte Spill
	cmpl	$32, %edx
	jne	.LBB51_62
# BB#61:                                # %if.then.177
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	-4152(%rbp), %rcx       # 8-byte Reload
	movl	(%rax,%rcx), %edx
	jmp	.LBB51_63
.LBB51_53:                              # %if.else.146
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	(%rax,%r13), %rdx
.LBB51_54:                              # %for.inc.233
                                        #   in Loop: Header=BB51_36 Depth=1
	movl	$1, %ecx
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	jmp	.LBB51_55
.LBB51_62:                              # %if.else.182
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	(%rax,%r13), %rdx
.LBB51_63:                              # %for.inc.233
                                        #   in Loop: Header=BB51_36 Depth=1
	movl	$1, %ecx
	movq	%r15, %rsi
	callq	halide_uint64_to_string@PLT
.LBB51_55:                              # %for.inc.233
                                        #   in Loop: Header=BB51_36 Depth=1
	movq	%rax, %rdi
	movq	-4184(%rbp), %rbx       # 8-byte Reload
	.align	16, 0x90
.LBB51_74:                              # %for.inc.233
                                        #   in Loop: Header=BB51_36 Depth=1
	addq	$1, %r14
	movzwl	26(%rbx), %eax
	addq	$8, %r13
	addq	$2, %r12
	addq	$4, -4152(%rbp)         # 8-byte Folded Spill
	cmpq	%rax, %r14
	jl	.LBB51_36
# BB#40:                                # %for.cond.cleanup.114
	movzwl	%ax, %eax
	cmpl	$1, %eax
	movq	-4160(%rbp), %r12       # 8-byte Reload
	jbe	.LBB51_42
# BB#41:                                # %if.then.240
	leaq	.L.str.23(%rip), %rdx
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
.LBB51_42:                              # %if.end.243
	leaq	.L.str.7.109(%rip), %rdx
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %r15d
	leaq	-4144(%rbp), %rsi
	subq	%rsi, %r15
	addq	%rax, %r15
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE@GOTPCREL(%rip), %rbx
	.align	16, 0x90
.LBB51_43:                              # %while.cond.i.353
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	xchgl	%eax, (%rbx)
	testl	%eax, %eax
	jne	.LBB51_43
# BB#44:                                # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EED2Ev.exit
	leaq	-4144(%rbp), %r14
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	halide_print@PLT
	movl	$0, (%rbx)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	halide_msan_annotate_memory_is_initialized@PLT
.LBB51_45:                              # %if.end.247
	movl	-4172(%rbp), %eax       # 4-byte Reload
	addq	$4168, %rsp             # imm = 0x1048
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end51:
	.size	_ZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_t, .Lfunc_end51-_ZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_t
	.section	.rodata._ZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_t,"a",@progbits
	.align	4
.LJTI51_0:
	.long	.LBB51_46-.LJTI51_0
	.long	.LBB51_56-.LJTI51_0
	.long	.LBB51_64-.LJTI51_0
	.long	.LBB51_72-.LJTI51_0

	.section	.text.halide_get_trace_file,"ax",@progbits
	.weak	halide_get_trace_file
	.align	16, 0x90
	.type	halide_get_trace_file,@function
halide_get_trace_file:                  # @halide_get_trace_file
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE@GOTPCREL(%rip), %rbx
	.align	16, 0x90
.LBB52_1:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	xchgl	%eax, (%rbx)
	testl	%eax, %eax
	jne	.LBB52_1
# BB#2:                                 # %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
	movq	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	.LBB52_8
# BB#3:                                 # %if.then
	leaq	.L.str.25(%rip), %rdi
	callq	getenv@PLT
	testq	%rax, %rax
	je	.LBB52_7
# BB#4:                                 # %if.then.2
	movl	$1089, %esi             # imm = 0x441
	movl	$420, %edx              # imm = 0x1A4
	movq	%rax, %rdi
	callq	open@PLT
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jg	.LBB52_6
# BB#5:                                 # %if.then.4
	leaq	.L.str.26(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB52_6:                               # %if.end
	movl	%r15d, %edi
	callq	halide_set_trace_file@PLT
	movq	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	jmp	.LBB52_8
.LBB52_7:                               # %if.else
	xorl	%edi, %edi
	callq	halide_set_trace_file@PLT
.LBB52_8:                               # %if.end.6
	movq	_ZN6Halide7Runtime8Internal17halide_trace_fileE@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	$0, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	halide_get_trace_file, .Lfunc_end52-halide_get_trace_file

	.section	.text.halide_set_custom_trace,"ax",@progbits
	.weak	halide_set_custom_trace
	.align	16, 0x90
	.type	halide_set_custom_trace,@function
halide_set_custom_trace:                # @halide_set_custom_trace
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal19halide_custom_traceE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end53:
	.size	halide_set_custom_trace, .Lfunc_end53-halide_set_custom_trace

	.section	.text.halide_set_trace_file,"ax",@progbits
	.weak	halide_set_trace_file
	.align	16, 0x90
	.type	halide_set_trace_file,@function
halide_set_trace_file:                  # @halide_set_trace_file
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal17halide_trace_fileE@GOTPCREL(%rip), %rax
	movl	%edi, (%rax)
	movq	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	popq	%rbp
	retq
.Lfunc_end54:
	.size	halide_set_trace_file, .Lfunc_end54-halide_set_trace_file

	.section	.text.halide_trace,"ax",@progbits
	.weak	halide_trace
	.align	16, 0x90
	.type	halide_trace,@function
halide_trace:                           # @halide_trace
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal19halide_custom_traceE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end55:
	.size	halide_trace, .Lfunc_end55-halide_trace

	.section	.text.halide_shutdown_trace,"ax",@progbits
	.weak	halide_shutdown_trace
	.align	16, 0x90
	.type	halide_shutdown_trace,@function
halide_shutdown_trace:                  # @halide_shutdown_trace
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE@GOTPCREL(%rip), %rbx
	cmpb	$0, (%rbx)
	je	.LBB56_2
# BB#1:                                 # %if.then
	movq	_ZN6Halide7Runtime8Internal17halide_trace_fileE@GOTPCREL(%rip), %r14
	movl	(%r14), %edi
	callq	close@PLT
	movl	$0, (%r14)
	movq	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE@GOTPCREL(%rip), %rcx
	movb	$0, (%rcx)
	movb	$0, (%rbx)
	jmp	.LBB56_3
.LBB56_2:                               # %return
	xorl	%eax, %eax
.LBB56_3:                               # %return
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end56:
	.size	halide_shutdown_trace, .Lfunc_end56-halide_shutdown_trace

	.section	.text.halide_trace_cleanup,"ax",@progbits
	.weak	halide_trace_cleanup
	.align	16, 0x90
	.type	halide_trace_cleanup,@function
halide_trace_cleanup:                   # @halide_trace_cleanup
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	halide_shutdown_trace@PLT # TAILCALL
.Lfunc_end57:
	.size	halide_trace_cleanup, .Lfunc_end57-halide_trace_cleanup

	.section	.text.halide_trace_helper,"ax",@progbits
	.weak	halide_trace_helper
	.align	16, 0x90
	.type	halide_trace_helper,@function
halide_trace_helper:                    # @halide_trace_helper
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movl	40(%rbp), %r10d
	movl	32(%rbp), %r11d
	movl	24(%rbp), %eax
	movl	16(%rbp), %ebx
	movq	%rsi, -56(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movb	%r8b, -32(%rbp)
	movb	%r9b, -31(%rbp)
	movw	%bx, -30(%rbp)
	movl	%eax, -28(%rbp)
	movl	%r11d, -24(%rbp)
	movl	%r10d, -20(%rbp)
	movzwl	%bx, %eax
	cmpl	$1, %eax
	movl	$1, %ecx
	cmoval	%eax, %ecx
	imull	48(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	leaq	-56(%rbp), %rsi
	callq	halide_trace@PLT
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end58:
	.size	halide_trace_helper, .Lfunc_end58-halide_trace_helper

	.section	.text._ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc,@function
_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc: # @_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	.align	16, 0x90
.LBB59_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	leaq	1(%rcx), %rax
	cmpb	$0, (%rcx)
	jne	.LBB59_1
# BB#2:                                 # %while.cond.1.preheader
	xorl	%eax, %eax
	cmpq	%rdi, %rcx
	je	.LBB59_19
	.align	16, 0x90
.LBB59_3:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	jne	.LBB59_4
# BB#7:                                 # %while.body.5
                                        #   in Loop: Header=BB59_3 Depth=1
	movzbl	-1(%rcx), %edx
	addq	$-1, %rcx
	cmpl	$46, %edx
	sete	%al
	cmpq	%rcx, %rdi
	jne	.LBB59_3
# BB#8:                                 # %while.end.7
	movzbl	%dl, %eax
	cmpl	$46, %eax
	je	.LBB59_5
# BB#9:
	xorl	%eax, %eax
	popq	%rbp
	retq
.LBB59_4:
	movq	%rcx, %rdi
.LBB59_5:                               # %if.end
	movb	1(%rdi), %al
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$116, %eax
	jne	.LBB59_6
# BB#10:                                # %if.end.16
	movb	2(%rdi), %al
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$105, %eax
	jne	.LBB59_11
# BB#12:                                # %if.end.24
	movb	3(%rdi), %al
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$102, %eax
	jne	.LBB59_13
# BB#14:                                # %if.end.32
	movb	4(%rdi), %cl
	movb	$1, %al
	testb	%cl, %cl
	je	.LBB59_19
# BB#15:                                # %if.end.32
	movzbl	%cl, %eax
	cmpl	$70, %eax
	je	.LBB59_18
# BB#16:                                # %if.end.32
	cmpl	$102, %eax
	jne	.LBB59_17
.LBB59_18:                              # %if.end.44
	cmpb	$0, 5(%rdi)
	sete	%al
.LBB59_19:                              # %cleanup
	popq	%rbp
	retq
.LBB59_6:
	xorl	%eax, %eax
	popq	%rbp
	retq
.LBB59_11:
	xorl	%eax, %eax
	popq	%rbp
	retq
.LBB59_13:
	xorl	%eax, %eax
	popq	%rbp
	retq
.LBB59_17:                              # %if.then.43
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end59:
	.size	_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc, .Lfunc_end59-_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc

	.section	.text._ZN6Halide7Runtime8Internal19get_pointer_to_dataEiiiiPK8buffer_t,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal19get_pointer_to_dataEiiiiPK8buffer_t
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal19get_pointer_to_dataEiiiiPK8buffer_t,@function
_ZN6Halide7Runtime8Internal19get_pointer_to_dataEiiiiPK8buffer_t: # @_ZN6Halide7Runtime8Internal19get_pointer_to_dataEiiiiPK8buffer_t
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	64(%r8), %r9
	imull	32(%r8), %edi
	imull	36(%r8), %esi
	addl	%edi, %esi
	imull	40(%r8), %edx
	addl	%esi, %edx
	imull	44(%r8), %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	imulq	%r9, %rax
	addq	8(%r8), %rax
	popq	%rbp
	retq
.Lfunc_end60:
	.size	_ZN6Halide7Runtime8Internal19get_pointer_to_dataEiiiiPK8buffer_t, .Lfunc_end60-_ZN6Halide7Runtime8Internal19get_pointer_to_dataEiiiiPK8buffer_t

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI61_0:
	.long	1                       # 0x1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI61_1:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.section	.text.halide_debug_to_file,"ax",@progbits
	.weak	halide_debug_to_file
	.align	16, 0x90
	.type	halide_debug_to_file,@function
halide_debug_to_file:                   # @halide_debug_to_file
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4232, %rsp             # imm = 0x1088
	movq	%rcx, %r12
	movq	%r12, -4152(%rbp)       # 8-byte Spill
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%r12, %rsi
	callq	halide_copy_to_host@PLT
	leaq	.L.str.27(%rip), %rsi
	movq	%rbx, %rdi
	callq	fopen@PLT
	movq	%rax, %r14
	movl	$-1, %r13d
	testq	%r14, %r14
	je	.LBB61_44
# BB#1:                                 # %if.end
	vmovdqu	16(%r12), %xmm1
	vmovdqa	%xmm1, -4208(%rbp)      # 16-byte Spill
	vpbroadcastd	.LCPI61_0(%rip), %xmm0
	vpmaxsd	%xmm0, %xmm1, %xmm0
	vmovdqa	%xmm0, -4176(%rbp)      # 16-byte Spill
	movslq	64(%r12), %r12
	movq	%r12, -4184(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc@PLT
	testb	%al, %al
	je	.LBB61_18
# BB#2:                                 # %if.then.19
	vmovdqa	-4176(%rbp), %xmm0      # 16-byte Reload
	vpextrd	$3, %xmm0, %ecx
	cmpl	$2, %ecx
	setb	%bl
	vpextrd	$2, %xmm0, %eax
	cmpl	$5, %eax
	setl	%dl
	andb	%bl, %dl
	movl	$1, %esi
	cmovel	%eax, %esi
	movl	%esi, -4212(%rbp)       # 4-byte Spill
	movl	%ecx, %r13d
	cmovnel	%eax, %r13d
	movw	$18761, -4144(%rbp)     # imm = 0x4949
	movw	$42, -4142(%rbp)
	movl	$8, -4140(%rbp)
	movw	$15, -4136(%rbp)
	movw	$256, -4134(%rbp)       # imm = 0x100
	movw	$4, -4132(%rbp)
	movl	$1, -4130(%rbp)
	vmovd	%xmm0, %r8d
	vmovd	%xmm0, -4126(%rbp)
	movw	$257, -4122(%rbp)       # imm = 0x101
	movw	$4, -4120(%rbp)
	movl	$1, -4118(%rbp)
	vpextrd	$1, %xmm0, -4114(%rbp)
	leal	(,%r12,8), %edi
	movw	$258, -4110(%rbp)       # imm = 0x102
	movw	$3, -4108(%rbp)
	movl	$1, -4106(%rbp)
	movw	%di, -4102(%rbp)
	movw	$259, -4098(%rbp)       # imm = 0x103
	movw	$3, -4096(%rbp)
	movl	$1, -4094(%rbp)
	movw	$1, -4090(%rbp)
	cmpl	$2, %r13d
	setg	%bl
	movzbl	%bl, %edi
	addl	$1, %edi
	movw	$262, -4086(%rbp)       # imm = 0x106
	movw	$3, -4084(%rbp)
	movl	$1, -4082(%rbp)
	movw	%di, -4078(%rbp)
	movw	$273, -4074(%rbp)       # imm = 0x111
	movw	$4, -4072(%rbp)
	movl	%r13d, -4070(%rbp)
	movl	$210, -4066(%rbp)
	testb	%dl, %dl
	movw	%cx, %dx
	cmovnew	%ax, %dx
	movw	$277, -4062(%rbp)       # imm = 0x115
	movw	$3, -4060(%rbp)
	movl	$1, -4058(%rbp)
	movw	%dx, -4054(%rbp)
	movw	$278, -4050(%rbp)       # imm = 0x116
	movw	$4, -4048(%rbp)
	movl	$1, -4046(%rbp)
	vpextrd	$1, %xmm0, -4042(%rbp)
	vpextrd	$1, %xmm0, %ebx
	imull	%r8d, %ebx
	imull	%ebx, %eax
	imull	%r12d, %eax
	imull	%ecx, %eax
	cmpl	$1, %r13d
	leal	210(,%r13,4), %ecx
	cmovel	%eax, %ecx
	movw	$279, -4038(%rbp)       # imm = 0x117
	movw	$4, -4036(%rbp)
	movl	%r13d, -4034(%rbp)
	movl	%ecx, -4030(%rbp)
	movw	$282, -4026(%rbp)       # imm = 0x11A
	movw	$5, -4024(%rbp)
	movl	$1, -4022(%rbp)
	movl	$194, -4018(%rbp)
	movw	$283, -4014(%rbp)       # imm = 0x11B
	movw	$5, -4012(%rbp)
	movl	$1, -4010(%rbp)
	movl	$202, -4006(%rbp)
	movw	$284, -4002(%rbp)       # imm = 0x11C
	movw	$3, -4000(%rbp)
	movl	$1, -3998(%rbp)
	movw	$2, -3994(%rbp)
	movw	$296, -3990(%rbp)       # imm = 0x128
	movw	$3, -3988(%rbp)
	movl	$1, -3986(%rbp)
	movw	$1, -3982(%rbp)
	movslq	%r15d, %rax
	movq	_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE@GOTPCREL(%rip), %rcx
	movw	(%rcx,%rax,2), %ax
	movw	$339, -3978(%rbp)       # imm = 0x153
	movw	$3, -3976(%rbp)
	movl	$1, -3974(%rbp)
	movw	%ax, -3970(%rbp)
	movw	$-32539, -3966(%rbp)    # imm = 0xFFFFFFFFFFFF80E5
	movw	$4, -3964(%rbp)
	movl	$1, -3962(%rbp)
	movl	%esi, -3958(%rbp)
	vmovdqa	.LCPI61_1(%rip), %xmm0  # xmm0 = [0,1,1,1]
	vmovdqu	%xmm0, -3954(%rbp)
	movl	$1, -3938(%rbp)
	leaq	-4144(%rbp), %rdi
	movl	$210, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB61_3
# BB#4:                                 # %if.end.67
	cmpl	$2, %r13d
	jl	.LBB61_11
# BB#5:                                 # %for.body.lr.ph
	movq	%r14, %r12
	movl	%ebx, -4216(%rbp)       # 4-byte Spill
	movq	-4184(%rbp), %rax       # 8-byte Reload
	imull	%eax, %ebx
	imull	-4212(%rbp), %ebx       # 4-byte Folded Reload
	leal	210(,%r13,8), %eax
	movl	%eax, -44(%rbp)
	xorl	%r15d, %r15d
	leaq	-44(%rbp), %r14
	.align	16, 0x90
.LBB61_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$4, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r12, %rcx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB61_16
# BB#7:                                 # %if.end.80
                                        #   in Loop: Header=BB61_6 Depth=1
	addl	%ebx, -44(%rbp)
	addl	$1, %r15d
	cmpl	%r13d, %r15d
	jl	.LBB61_6
# BB#8:                                 # %for.body.91.lr.ph
	movl	-4212(%rbp), %eax       # 4-byte Reload
	imull	-4216(%rbp), %eax       # 4-byte Folded Reload
	movl	%eax, -48(%rbp)
	xorl	%ebx, %ebx
	leaq	-48(%rbp), %r15
	movq	%r12, %r14
	.align	16, 0x90
.LBB61_10:                              # %for.body.91
                                        # =>This Inner Loop Header: Depth=1
	movl	$4, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB61_3
# BB#9:                                 # %for.cond.88
                                        #   in Loop: Header=BB61_10 Depth=1
	addl	$1, %ebx
	cmpl	%r13d, %ebx
	jl	.LBB61_10
.LBB61_11:                              # %cleanup.106.thread
	movq	-4184(%rbp), %r12       # 8-byte Reload
	jmp	.LBB61_12
.LBB61_18:                              # %if.else.116
	vmovdqa	-4176(%rbp), %xmm0      # 16-byte Reload
	vmovdqa	%xmm0, -4144(%rbp)
	movl	%r15d, -4128(%rbp)
	leaq	-4144(%rbp), %rdi
	movl	$20, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB61_19
.LBB61_12:                              # %if.end.130
	movl	$4096, %eax             # imm = 0x1000
	xorl	%edx, %edx
	idivl	%r12d
	xorl	%r13d, %r13d
	vmovdqa	-4176(%rbp), %xmm0      # 16-byte Reload
	vpextrd	$3, %xmm0, %r10d
	testl	%r10d, %r10d
	jle	.LBB61_43
# BB#13:                                # %for.cond.135.preheader.lr.ph
	vmovd	%xmm0, %r9d
	movl	%r9d, -4216(%rbp)       # 4-byte Spill
	movl	%eax, %ecx
	imull	%r12d, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -4232(%rbp)       # 8-byte Spill
	vmovdqa	-4208(%rbp), %xmm1      # 16-byte Reload
	vpextrd	$2, %xmm1, %ecx
	testl	%ecx, %ecx
	movl	$1, %ebx
	cmovgl	%ecx, %ebx
	movq	%rbx, -4248(%rbp)       # 8-byte Spill
	leal	-128(%rbx), %r8d
	movl	%r8d, -4252(%rbp)       # 4-byte Spill
	movl	%r8d, %edi
	shrl	$7, %edi
	addl	$1, %edi
	vpextrd	$1, %xmm0, -4236(%rbp)  # 4-byte Folded Spill
	vpextrd	$2, %xmm0, %esi
	movl	%esi, -4260(%rbp)       # 4-byte Spill
	movl	%ebx, %r11d
	andl	$-128, %r11d
	movl	%r11d, -4264(%rbp)      # 4-byte Spill
	andl	$7, %edi
	movl	%edi, -4256(%rbp)       # 4-byte Spill
	movl	%edi, %r12d
	negl	%r12d
	movl	%r12d, -4268(%rbp)      # 4-byte Spill
	movl	$0, -4208(%rbp)         # 4-byte Folded Spill
	xorl	%r15d, %r15d
.LBB61_14:                              # %for.cond.143.preheader.lr.ph.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_23 Depth 2
                                        #     Child Loop BB61_26 Depth 2
                                        #     Child Loop BB61_29 Depth 2
                                        #     Child Loop BB61_40 Depth 2
                                        #       Child Loop BB61_34 Depth 3
                                        #         Child Loop BB61_35 Depth 4
	testl	%r9d, %r9d
	jle	.LBB61_20
# BB#15:                                #   in Loop: Header=BB61_14 Depth=1
	movl	$0, -4212(%rbp)         # 4-byte Folded Spill
.LBB61_40:                              # %for.body.146.lr.ph.us.us.preheader.us
                                        #   Parent Loop BB61_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB61_34 Depth 3
                                        #         Child Loop BB61_35 Depth 4
	movl	%r10d, -4240(%rbp)      # 4-byte Spill
	movl	%eax, %r12d
	movq	%r14, -4224(%rbp)       # 8-byte Spill
	movl	$0, -4176(%rbp)         # 4-byte Folded Spill
.LBB61_34:                              # %for.body.146.lr.ph.us.us.us
                                        #   Parent Loop BB61_14 Depth=1
                                        #     Parent Loop BB61_40 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB61_35 Depth 4
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB61_35:                              # %for.body.146.us.us.us
                                        #   Parent Loop BB61_14 Depth=1
                                        #     Parent Loop BB61_40 Depth=2
                                        #       Parent Loop BB61_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leal	1(%r15), %r14d
	movl	%r13d, %edi
	movl	-4176(%rbp), %esi       # 4-byte Reload
	movl	-4212(%rbp), %edx       # 4-byte Reload
	movl	-4208(%rbp), %ecx       # 4-byte Reload
	movq	-4152(%rbp), %r8        # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal19get_pointer_to_dataEiiiiPK8buffer_t@PLT
	movq	-4184(%rbp), %rdx       # 8-byte Reload
	movl	%edx, %ecx
	imull	%r15d, %ecx
	movslq	%ecx, %rcx
	leaq	-4144(%rbp,%rcx), %rdi
	movq	%rax, %rsi
	callq	memcpy@PLT
	movl	%r14d, %r15d
	cmpl	%r12d, %r14d
	jne	.LBB61_37
# BB#36:                                # %if.then.153.us.us.us
                                        #   in Loop: Header=BB61_35 Depth=4
	movl	$1, %edx
	leaq	-4144(%rbp), %rdi
	movq	-4232(%rbp), %rsi       # 8-byte Reload
	movq	-4224(%rbp), %rcx       # 8-byte Reload
	callq	fwrite@PLT
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB61_41
.LBB61_37:                              # %for.inc.167.us.us.us
                                        #   in Loop: Header=BB61_35 Depth=4
	addl	$1, %r13d
	cmpl	-4216(%rbp), %r13d      # 4-byte Folded Reload
	jl	.LBB61_35
# BB#38:                                # %for.inc.172.us.us.us
                                        #   in Loop: Header=BB61_34 Depth=3
	movl	-4176(%rbp), %eax       # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -4176(%rbp)       # 4-byte Spill
	cmpl	-4236(%rbp), %eax       # 4-byte Folded Reload
	jl	.LBB61_34
# BB#39:                                # %for.inc.177.us.us
                                        #   in Loop: Header=BB61_40 Depth=2
	movl	-4212(%rbp), %eax       # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -4212(%rbp)       # 4-byte Spill
	movl	-4260(%rbp), %esi       # 4-byte Reload
	cmpl	%esi, %eax
	movq	-4224(%rbp), %r14       # 8-byte Reload
	movl	$0, %r13d
	movl	%r12d, %eax
	movl	-4240(%rbp), %r10d      # 4-byte Reload
	movl	-4216(%rbp), %r9d       # 4-byte Reload
	movq	-4248(%rbp), %rbx       # 8-byte Reload
	movl	-4252(%rbp), %r8d       # 4-byte Reload
	movl	-4256(%rbp), %edi       # 4-byte Reload
	movl	-4264(%rbp), %r11d      # 4-byte Reload
	movl	-4268(%rbp), %r12d      # 4-byte Reload
	jl	.LBB61_40
	jmp	.LBB61_30
.LBB61_20:                              # %overflow.checked.preheader
                                        #   in Loop: Header=BB61_14 Depth=1
	xorl	%edx, %edx
	testl	%ebx, %ebx
	je	.LBB61_29
# BB#21:                                # %overflow.checked61
                                        #   in Loop: Header=BB61_14 Depth=1
	xorl	%edx, %edx
	testl	%r11d, %r11d
	je	.LBB61_28
# BB#22:                                # %vector.body.preheader
                                        #   in Loop: Header=BB61_14 Depth=1
	xorl	%ecx, %ecx
	movl	%r12d, %edx
	testl	%edi, %edi
	je	.LBB61_24
	.align	16, 0x90
.LBB61_23:                              # %vector.body.prol
                                        #   Parent Loop BB61_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subl	$-128, %ecx
	addl	$1, %edx
	jne	.LBB61_23
.LBB61_24:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB61_14 Depth=1
	movl	%r11d, %edx
	cmpl	$896, %r8d              # imm = 0x380
	jb	.LBB61_28
# BB#25:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB61_14 Depth=1
	movl	%r11d, %edx
	subl	%ecx, %edx
	.align	16, 0x90
.LBB61_26:                              # %vector.body
                                        #   Parent Loop BB61_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$-1024, %edx            # imm = 0xFFFFFFFFFFFFFC00
	jne	.LBB61_26
# BB#27:                                #   in Loop: Header=BB61_14 Depth=1
	movl	%r11d, %edx
.LBB61_28:                              # %middle.block
                                        #   in Loop: Header=BB61_14 Depth=1
	cmpl	%edx, %ebx
	je	.LBB61_30
	.align	16, 0x90
.LBB61_29:                              # %overflow.checked
                                        #   Parent Loop BB61_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$1, %edx
	cmpl	%esi, %edx
	jl	.LBB61_29
.LBB61_30:                              # %for.inc.182
                                        #   in Loop: Header=BB61_14 Depth=1
	movl	-4208(%rbp), %ecx       # 4-byte Reload
	addl	$1, %ecx
	movl	%ecx, -4208(%rbp)       # 4-byte Spill
	cmpl	%r10d, %ecx
	movq	-4184(%rbp), %rcx       # 8-byte Reload
	jl	.LBB61_14
# BB#31:                                # %for.end.186
	testl	%r15d, %r15d
	jle	.LBB61_43
# BB#32:                                # %if.then.188
	imull	%ecx, %r15d
	movslq	%r15d, %rsi
	leaq	-4144(%rbp), %rdi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB61_33
.LBB61_43:                              # %if.end.197
	movq	%r14, %rdi
	callq	fclose@PLT
	jmp	.LBB61_44
.LBB61_41:                              # %cleanup.184
	movq	-4224(%rbp), %rdi       # 8-byte Reload
.LBB61_42:                              # %cleanup.199
	callq	fclose@PLT
	movl	$-1, %r13d
	jmp	.LBB61_44
.LBB61_3:                               # %if.then.65
	movq	%r14, %rdi
	jmp	.LBB61_17
.LBB61_19:                              # %if.then.124
	movq	%r14, %rdi
	jmp	.LBB61_17
.LBB61_16:                              # %cleanup
	movq	%r12, %rdi
.LBB61_17:                              # %cleanup.106.thread415
	callq	fclose@PLT
	movl	$-2, %r13d
.LBB61_44:                              # %cleanup.209
	movl	%r13d, %eax
	addq	$4232, %rsp             # imm = 0x1088
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB61_33:                              # %if.then.194
	movq	%r14, %rdi
	jmp	.LBB61_42
.Lfunc_end61:
	.size	halide_debug_to_file, .Lfunc_end61-halide_debug_to_file

	.section	.text._ZN6Halide7Runtime8Internal8buf_sizeEPK8buffer_t,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal8buf_sizeEPK8buffer_t
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal8buf_sizeEPK8buffer_t,@function
_ZN6Halide7Runtime8Internal8buf_sizeEPK8buffer_t: # @_ZN6Halide7Runtime8Internal8buf_sizeEPK8buffer_t
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	64(%rdi), %r8
	movl	32(%rdi), %eax
	movl	36(%rdi), %edx
	movl	%eax, %esi
	negl	%esi
	cmovll	%eax, %esi
	movslq	%esi, %rax
	movslq	16(%rdi), %rsi
	imulq	%r8, %rsi
	imulq	%rax, %rsi
	cmpq	%r8, %rsi
	cmovbeq	%r8, %rsi
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	cltq
	movslq	20(%rdi), %rdx
	imulq	%r8, %rdx
	imulq	%rax, %rdx
	cmpq	%rsi, %rdx
	cmovbeq	%rsi, %rdx
	movl	40(%rdi), %eax
	movl	%eax, %esi
	negl	%esi
	cmovll	%eax, %esi
	movslq	24(%rdi), %rcx
	imulq	%r8, %rcx
	movslq	%esi, %rax
	imulq	%rax, %rcx
	cmpq	%rdx, %rcx
	cmovbeq	%rdx, %rcx
	movl	44(%rdi), %eax
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	movslq	%edx, %rdx
	movslq	28(%rdi), %rax
	imulq	%r8, %rax
	imulq	%rdx, %rax
	cmpq	%rcx, %rax
	cmovbeq	%rcx, %rax
	popq	%rbp
	retq
.Lfunc_end62:
	.size	_ZN6Halide7Runtime8Internal8buf_sizeEPK8buffer_t, .Lfunc_end62-_ZN6Halide7Runtime8Internal8buf_sizeEPK8buffer_t

	.section	.text._ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m,@function
_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m: # @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	callq	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	popq	%rbp
	retq
.Lfunc_end63:
	.size	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m, .Lfunc_end63-_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m

	.section	.text._ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_,@function
_ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_: # @_ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movl	64(%rdi), %eax
	cmpl	64(%rsi), %eax
	jne	.LBB64_13
# BB#1:                                 # %for.cond.preheader
	movl	48(%rdi), %eax
	cmpl	48(%rsi), %eax
	jne	.LBB64_13
# BB#2:                                 # %lor.lhs.false
	movl	16(%rdi), %eax
	cmpl	16(%rsi), %eax
	jne	.LBB64_13
# BB#3:                                 # %lor.lhs.false.10
	movl	32(%rdi), %eax
	cmpl	32(%rsi), %eax
	jne	.LBB64_13
# BB#4:                                 # %for.cond
	movl	52(%rdi), %eax
	cmpl	52(%rsi), %eax
	jne	.LBB64_13
# BB#5:                                 # %lor.lhs.false.1
	movl	20(%rdi), %eax
	cmpl	20(%rsi), %eax
	jne	.LBB64_13
# BB#6:                                 # %lor.lhs.false.10.1
	movl	36(%rdi), %eax
	cmpl	36(%rsi), %eax
	jne	.LBB64_13
# BB#7:                                 # %for.cond.1
	movl	56(%rdi), %eax
	cmpl	56(%rsi), %eax
	jne	.LBB64_13
# BB#8:                                 # %lor.lhs.false.2
	movl	24(%rdi), %eax
	cmpl	24(%rsi), %eax
	jne	.LBB64_13
# BB#9:                                 # %lor.lhs.false.10.2
	movl	40(%rdi), %eax
	cmpl	40(%rsi), %eax
	jne	.LBB64_13
# BB#10:                                # %for.cond.2
	movl	60(%rdi), %eax
	cmpl	60(%rsi), %eax
	jne	.LBB64_13
# BB#11:                                # %lor.lhs.false.3
	movl	28(%rdi), %eax
	cmpl	28(%rsi), %eax
	jne	.LBB64_13
# BB#12:                                # %lor.lhs.false.10.3
	movl	44(%rdi), %eax
	cmpl	44(%rsi), %eax
	sete	%al
	popq	%rbp
	retq
.LBB64_13:                              # %cleanup
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end64:
	.size	_ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_, .Lfunc_end64-_ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_

	.section	.text._ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh,@function
_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh: # @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	-16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end65:
	.size	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh, .Lfunc_end65-_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI66_0:
	.zero	16
	.section	.text._ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjRK8buffer_tiPPS5_,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjRK8buffer_tiPPS5_
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjRK8buffer_tiPPS5_,@function
_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjRK8buffer_tiPPS5_: # @_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjRK8buffer_tiPPS5_
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r13)
	movq	$0, 16(%r13)
	movq	%rdx, 24(%r13)
	movl	%ecx, 40(%r13)
	movl	$0, 44(%r13)
	movl	%r9d, 48(%r13)
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	movq	%rdx, %rsi
	callq	halide_malloc@PLT
	movq	%rax, 32(%r13)
	testq	%rax, %rax
	je	.LBB66_7
# BB#1:                                 # %if.end
	movq	64(%r12), %rcx
	movq	%rcx, 120(%r13)
	vmovups	(%r12), %ymm0
	vmovups	32(%r12), %ymm1
	vmovups	%ymm1, 88(%r13)
	vmovups	%ymm0, 56(%r13)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 56(%r13)
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB66_4
# BB#2:                                 # %for.body.preheader
	movb	(%r14), %dl
	movb	%dl, (%rax)
	cmpq	$2, %rcx
	jb	.LBB66_4
# BB#3:                                 # %for.body.for.body_crit_edge.preheader
	movb	1(%r14), %cl
	movb	%cl, 1(%rax)
	movl	$2, %eax
	cmpq	$2, 24(%r13)
	jbe	.LBB66_4
	.align	16, 0x90
.LBB66_8:                               # %for.body.for.body_crit_edge.for.body.for.body_crit_edge_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rcx
	movb	(%r14,%rax), %dl
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	cmpq	24(%r13), %rax
	jb	.LBB66_8
.LBB66_4:                               # %for.cond.11.preheader
	movb	$1, %r15b
	cmpl	$0, 48(%r13)
	je	.LBB66_7
# BB#5:
	movq	16(%rbp), %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB66_6:                               # %for.body.15
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%ebx, %esi
	vzeroupper
	callq	_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi@PLT
	movl	%ebx, %ecx
	movq	(%r14,%rcx,8), %rcx
	movq	64(%rcx), %rdx
	movq	%rdx, 64(%rax)
	vmovups	(%rcx), %ymm0
	vmovups	32(%rcx), %ymm1
	vmovups	%ymm1, 32(%rax)
	vmovups	%ymm0, (%rax)
	addl	$1, %ebx
	cmpl	48(%r13), %ebx
	jb	.LBB66_6
.LBB66_7:                               # %return
	movb	%r15b, %al
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end66:
	.size	_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjRK8buffer_tiPPS5_, .Lfunc_end66-_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjRK8buffer_tiPPS5_

	.section	.text._ZN6Halide7Runtime8Internal10CacheEntry6bufferEi,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi,@function
_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi: # @_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	%esi, %rax
	leaq	(%rax,%rax,8), %rax
	leaq	128(%rdi,%rax,8), %rax
	popq	%rbp
	retq
.Lfunc_end67:
	.size	_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi, .Lfunc_end67-_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi

	.section	.text._ZN6Halide7Runtime8Internal10CacheEntry7destroyEv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv,@function
_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv: # @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	32(%r14), %rsi
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	callq	halide_free@PLT
	cmpl	$0, 48(%r14)
	je	.LBB68_2
	.align	16, 0x90
.LBB68_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi@PLT
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	halide_device_free@PLT
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi@PLT
	movq	8(%rax), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	halide_free@PLT
	addl	$1, %ebx
	cmpl	48(%r14), %ebx
	jb	.LBB68_1
.LBB68_2:                               # %for.cond.cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end68:
	.size	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv, .Lfunc_end68-_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv

	.section	.text._ZN6Halide7Runtime8Internal8djb_hashEPKhm,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal8djb_hashEPKhm
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal8djb_hashEPKhm,@function
_ZN6Halide7Runtime8Internal8djb_hashEPKhm: # @_ZN6Halide7Runtime8Internal8djb_hashEPKhm
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$5381, %eax             # imm = 0x1505
	testq	%rsi, %rsi
	je	.LBB69_8
# BB#1:                                 # %for.body.preheader
	leaq	-1(%rsi), %r8
	xorl	%ecx, %ecx
	testb	$7, %sil
	je	.LBB69_2
# BB#3:                                 # %for.body.prol.preheader
	movl	%esi, %r9d
	andl	$7, %r9d
	movl	$5381, %eax             # imm = 0x1505
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB69_4:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	imull	$33, %eax, %edx
	movzbl	(%rdi,%rcx), %eax
	addl	%edx, %eax
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.LBB69_4
	jmp	.LBB69_5
.LBB69_2:
	movl	$5381, %eax             # imm = 0x1505
.LBB69_5:                               # %for.body.preheader.split
	cmpq	$7, %r8
	jb	.LBB69_8
# BB#6:                                 # %for.body.preheader.split.split
	movq	%rcx, %r9
	subq	%rsi, %r9
	leaq	(%rdi,%rcx), %r8
	xorl	%esi, %esi
	.align	16, 0x90
.LBB69_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	imull	$33, %eax, %eax
	movzbl	(%r8,%rsi), %edx
	addl	%eax, %edx
	imull	$33, %edx, %r10d
	leaq	(%rcx,%rsi), %rdx
	movzbl	1(%rdi,%rdx), %eax
	addl	%r10d, %eax
	imull	$33, %eax, %r10d
	movzbl	2(%rdi,%rdx), %eax
	addl	%r10d, %eax
	imull	$33, %eax, %r10d
	movzbl	3(%rdi,%rdx), %eax
	addl	%r10d, %eax
	imull	$33, %eax, %r10d
	movzbl	4(%rdi,%rdx), %eax
	addl	%r10d, %eax
	imull	$33, %eax, %r10d
	movzbl	5(%rdi,%rdx), %eax
	addl	%r10d, %eax
	imull	$33, %eax, %r10d
	movzbl	6(%rdi,%rdx), %eax
	addl	%r10d, %eax
	imull	$33, %eax, %r10d
	movzbl	7(%rdi,%rdx), %eax
	addl	%r10d, %eax
	addq	$8, %rsi
	movq	%r9, %rdx
	addq	%rsi, %rdx
	jne	.LBB69_7
.LBB69_8:                               # %for.cond.cleanup
	popq	%rbp
	retq
.Lfunc_end69:
	.size	_ZN6Halide7Runtime8Internal8djb_hashEPKhm, .Lfunc_end69-_ZN6Halide7Runtime8Internal8djb_hashEPKhm

	.section	.text._ZN6Halide7Runtime8Internal11prune_cacheEv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal11prune_cacheEv
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal11prune_cacheEv,@function
_ZN6Halide7Runtime8Internal11prune_cacheEv: # @_ZN6Halide7Runtime8Internal11prune_cacheEv
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	_ZN6Halide7Runtime8Internal19least_recently_usedE@GOTPCREL(%rip), %r15
	movq	(%r15), %r14
	testq	%r14, %r14
	je	.LBB70_21
# BB#1:                                 # %entry
	movq	_ZN6Halide7Runtime8Internal18current_cache_sizeE@GOTPCREL(%rip), %r12
	movq	(%r12), %rax
	movq	_ZN6Halide7Runtime8Internal14max_cache_sizeE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	jmp	.LBB70_2
	.align	16, 0x90
.LBB70_20:                              # %while.cond.backedge
                                        #   in Loop: Header=BB70_2 Depth=1
	movq	%r13, %r14
.LBB70_2:                               # %entry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_6 Depth 2
                                        #     Child Loop BB70_23 Depth 2
	cmpq	%rcx, %rax
	jle	.LBB70_21
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB70_2 Depth=1
	movq	8(%r14), %r13
	cmpl	$0, 44(%r14)
	jne	.LBB70_19
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB70_2 Depth=1
	movzbl	40(%r14), %eax
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax,8), %rcx
	cmpq	%r14, %rcx
	je	.LBB70_5
	.align	16, 0x90
.LBB70_6:                               # %while.cond.9
                                        #   Parent Loop BB70_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	testq	%rax, %rax
	je	.LBB70_22
# BB#7:                                 # %land.rhs.11
                                        #   in Loop: Header=BB70_6 Depth=2
	movq	(%rax), %rcx
	cmpq	%r14, %rcx
	jne	.LBB70_6
# BB#8:                                 # %if.end
                                        #   in Loop: Header=BB70_2 Depth=1
	movq	(%r14), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB70_9
.LBB70_5:                               # %if.then.6
                                        #   in Loop: Header=BB70_2 Depth=1
	movq	(%r14), %rcx
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx,%rax,8)
.LBB70_9:                               # %if.end.21
                                        #   in Loop: Header=BB70_2 Depth=1
	cmpq	%r14, (%r15)
	jne	.LBB70_11
# BB#10:                                # %if.then.23
                                        #   in Loop: Header=BB70_2 Depth=1
	movq	%r13, (%r15)
.LBB70_11:                              # %if.end.24
                                        #   in Loop: Header=BB70_2 Depth=1
	testq	%r13, %r13
	je	.LBB70_13
# BB#12:                                # %if.then.26
                                        #   in Loop: Header=BB70_2 Depth=1
	movq	16(%r14), %rax
	movq	%rax, 16(%r13)
.LBB70_13:                              # %if.end.28
                                        #   in Loop: Header=BB70_2 Depth=1
	movq	_ZN6Halide7Runtime8Internal18most_recently_usedE@GOTPCREL(%rip), %rax
	cmpq	%r14, (%rax)
	jne	.LBB70_15
# BB#14:                                # %if.then.30
                                        #   in Loop: Header=BB70_2 Depth=1
	movq	16(%r14), %rax
	movq	_ZN6Halide7Runtime8Internal18most_recently_usedE@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
.LBB70_15:                              # %if.end.32
                                        #   in Loop: Header=BB70_2 Depth=1
	cmpq	$0, 16(%r14)
	je	.LBB70_17
# BB#16:                                # %if.then.35
                                        #   in Loop: Header=BB70_2 Depth=1
	movq	%r13, 16(%r14)
.LBB70_17:                              # %for.cond.preheader
                                        #   in Loop: Header=BB70_2 Depth=1
	xorl	%ebx, %ebx
	cmpl	$0, 48(%r14)
	je	.LBB70_18
	.align	16, 0x90
.LBB70_23:                              # %for.body
                                        #   Parent Loop BB70_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi@PLT
	movq	%rax, %rdi
	callq	_ZN6Halide7Runtime8Internal8buf_sizeEPK8buffer_t@PLT
	subq	%rax, (%r12)
	addl	$1, %ebx
	cmpl	48(%r14), %ebx
	jb	.LBB70_23
.LBB70_18:                              # %for.cond.cleanup
                                        #   in Loop: Header=BB70_2 Depth=1
	movq	%r14, %rdi
	callq	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv@PLT
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	halide_free@PLT
	movq	(%r12), %rax
	movq	_ZN6Halide7Runtime8Internal14max_cache_sizeE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
.LBB70_19:                              # %while.cond.backedge
                                        #   in Loop: Header=BB70_2 Depth=1
	testq	%r13, %r13
	jne	.LBB70_20
.LBB70_21:                              # %while.end.41
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB70_22:                              # %if.then.18
	leaq	.L.str.3.29(%rip), %rsi
	xorl	%edi, %edi
	callq	halide_print@PLT
	callq	abort@PLT
.Lfunc_end70:
	.size	_ZN6Halide7Runtime8Internal11prune_cacheEv, .Lfunc_end70-_ZN6Halide7Runtime8Internal11prune_cacheEv

	.section	.text.halide_memoization_cache_set_size,"ax",@progbits
	.weak	halide_memoization_cache_set_size
	.align	16, 0x90
	.type	halide_memoization_cache_set_size,@function
halide_memoization_cache_set_size:      # @halide_memoization_cache_set_size
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%rdi, %rdi
	movl	$1048576, %ebx          # imm = 0x100000
	cmovneq	%rdi, %rbx
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	halide_mutex_lock@PLT
	movq	_ZN6Halide7Runtime8Internal14max_cache_sizeE@GOTPCREL(%rip), %rax
	movq	%rbx, (%rax)
	callq	_ZN6Halide7Runtime8Internal11prune_cacheEv@PLT
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_mutex_unlock@PLT # TAILCALL
.Lfunc_end71:
	.size	halide_memoization_cache_set_size, .Lfunc_end71-halide_memoization_cache_set_size

	.section	.text.halide_memoization_cache_lookup,"ax",@progbits
	.weak	halide_memoization_cache_lookup
	.align	16, 0x90
	.type	halide_memoization_cache_lookup,@function
halide_memoization_cache_lookup:        # @halide_memoization_cache_lookup
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movslq	%edx, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	_ZN6Halide7Runtime8Internal8djb_hashEPKhm@PLT
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movzbl	%al, %ebx
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rax
	movq	(%rax,%rbx,8), %rbx
	testq	%rbx, %rbx
	je	.LBB72_11
# BB#1:                                 # %while.body.lr.ph
	movl	-84(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jle	.LBB72_18
# BB#2:                                 # %while.body.lr.ph.split.us
	cltq
	movq	%rax, -64(%rbp)         # 8-byte Spill
	.align	16, 0x90
.LBB72_3:                               # %while.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_8 Depth 2
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 40(%rbx)
	jne	.LBB72_10
# BB#4:                                 # %land.lhs.true.us
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 24(%rbx)
	jne	.LBB72_10
# BB#5:                                 # %land.lhs.true.7.us
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	32(%rbx), %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m@PLT
	testb	%al, %al
	je	.LBB72_10
# BB#6:                                 # %land.lhs.true.10.us
                                        #   in Loop: Header=BB72_3 Depth=1
	leaq	56(%rbx), %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_@PLT
	testb	%al, %al
	je	.LBB72_10
# BB#7:                                 # %land.lhs.true.13.us
                                        #   in Loop: Header=BB72_3 Depth=1
	xorl	%r15d, %r15d
	movl	-84(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 48(%rbx)
	movq	-104(%rbp), %r14        # 8-byte Reload
	movl	$1, %r13d
	jne	.LBB72_10
	.align	16, 0x90
.LBB72_8:                               # %for.body.us
                                        #   Parent Loop BB72_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r14), %r12
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	_ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_@PLT
	cmpq	-64(%rbp), %r13         # 8-byte Folded Reload
	jge	.LBB72_9
# BB#43:                                # %for.body.us
                                        #   in Loop: Header=BB72_8 Depth=2
	addq	$1, %r13
	addl	$1, %r15d
	addq	$8, %r14
	testb	%al, %al
	jne	.LBB72_8
.LBB72_9:                               # %for.cond.cleanup.us
                                        #   in Loop: Header=BB72_3 Depth=1
	testb	%al, %al
	jne	.LBB72_23
	.align	16, 0x90
.LBB72_10:                              # %if.end.64.us
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB72_3
	jmp	.LBB72_11
	.align	16, 0x90
.LBB72_18:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 40(%rbx)
	jne	.LBB72_17
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB72_18 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 24(%rbx)
	jne	.LBB72_17
# BB#20:                                # %land.lhs.true.7
                                        #   in Loop: Header=BB72_18 Depth=1
	movq	32(%rbx), %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m@PLT
	testb	%al, %al
	je	.LBB72_17
# BB#21:                                # %land.lhs.true.10
                                        #   in Loop: Header=BB72_18 Depth=1
	leaq	56(%rbx), %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_@PLT
	testb	%al, %al
	je	.LBB72_17
# BB#22:                                # %land.lhs.true.13
                                        #   in Loop: Header=BB72_18 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 48(%rbx)
	je	.LBB72_23
	.align	16, 0x90
.LBB72_17:                              # %if.end.64
                                        #   in Loop: Header=BB72_18 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB72_18
.LBB72_11:                              # %for.cond.66.preheader
	movl	$1, %r12d
	movl	-84(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jle	.LBB72_42
# BB#12:                                # %for.body.69.lr.ph
	movslq	%eax, %r12
	xorl	%r15d, %r15d
	movq	-104(%rbp), %r13        # 8-byte Reload
	movq	%r13, %r14
	.align	16, 0x90
.LBB72_13:                              # %for.body.69
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rbx
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal8buf_sizeEPK8buffer_t@PLT
	leaq	16(%rax), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	halide_malloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB72_14
# BB#40:                                # %for.inc.103
                                        #   in Loop: Header=BB72_13 Depth=1
	addq	$16, %rax
	movq	%rax, 8(%rbx)
	movq	%rax, %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 8(%rax)
	movq	$0, (%rax)
	addq	$1, %r15
	addq	$8, %r14
	cmpq	%r12, %r15
	jl	.LBB72_13
# BB#41:
	movl	$1, %r12d
	jmp	.LBB72_42
.LBB72_14:                              # %for.cond.79.preheader
	movl	$-1, %r12d
	testl	%r15d, %r15d
	jle	.LBB72_42
# BB#15:                                # %for.body.82.lr.ph
	movslq	%r15d, %r14
	leaq	-8(%r13,%r14,8), %rbx
	addq	$1, %r14
	movq	-72(%rbp), %r15         # 8-byte Reload
	.align	16, 0x90
.LBB72_16:                              # %for.body.82
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	halide_free@PLT
	movq	(%rbx), %rax
	movq	$0, 8(%rax)
	addq	$-1, %r14
	addq	$-8, %rbx
	cmpq	$1, %r14
	jg	.LBB72_16
	jmp	.LBB72_42
.LBB72_23:                              # %if.then.22
	movq	_ZN6Halide7Runtime8Internal18most_recently_usedE@GOTPCREL(%rip), %r14
	cmpq	(%r14), %rbx
	movq	-104(%rbp), %r12        # 8-byte Reload
	movl	-84(%rbp), %r13d        # 4-byte Reload
	je	.LBB72_36
# BB#24:                                # %if.then.24
	cmpq	$0, 8(%rbx)
	jne	.LBB72_26
# BB#25:                                # %if.then.26
	leaq	.L.str.4.30(%rip), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	halide_print@PLT
	callq	abort@PLT
.LBB72_26:                              # %if.end
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.LBB72_28
# BB#27:                                # %if.then.28
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB72_31
.LBB72_28:                              # %if.else
	movq	_ZN6Halide7Runtime8Internal19least_recently_usedE@GOTPCREL(%rip), %r15
	cmpq	%rbx, (%r15)
	je	.LBB72_30
# BB#29:                                # %if.then.33
	leaq	.L.str.5.31(%rip), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	halide_print@PLT
	callq	abort@PLT
.LBB72_30:                              # %if.end.34
	movq	8(%rbx), %rax
	movq	%rax, (%r15)
.LBB72_31:                              # %if.end.36
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB72_33
# BB#32:                                # %if.then.39
	leaq	.L.str.6.32(%rip), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	halide_print@PLT
	callq	abort@PLT
	movq	8(%rbx), %rax
.LBB72_33:                              # %if.end.40
	movq	16(%rbx), %rcx
	movq	%rcx, 16(%rax)
	movq	$0, 8(%rbx)
	movq	(%r14), %rax
	movq	%rax, 16(%rbx)
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.LBB72_35
# BB#34:                                # %if.then.47
	movq	%rbx, 8(%rax)
.LBB72_35:                              # %if.end.49
	movq	%rbx, (%r14)
.LBB72_36:                              # %for.cond.52.preheader
	testl	%r13d, %r13d
	jle	.LBB72_39
# BB#37:
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB72_38:                              # %for.body.55
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %r15
	movq	%rbx, %rdi
	movl	%r14d, %esi
	vzeroupper
	callq	_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi@PLT
	movq	64(%rax), %rcx
	movq	%rcx, 64(%r15)
	vmovups	(%rax), %ymm0
	vmovups	32(%rax), %ymm1
	vmovups	%ymm1, 32(%r15)
	vmovups	%ymm0, (%r15)
	addl	$1, %r14d
	addq	$8, %r12
	cmpl	%r14d, %r13d
	jne	.LBB72_38
.LBB72_39:                              # %for.cond.cleanup.54
	addl	%r13d, 44(%rbx)
	xorl	%r12d, %r12d
.LBB72_42:                              # %cleanup.108
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	vzeroupper
	callq	halide_mutex_unlock@PLT
	movl	%r12d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end72:
	.size	halide_memoization_cache_lookup, .Lfunc_end72-halide_memoization_cache_lookup

	.section	.text.halide_memoization_cache_store,"ax",@progbits
	.weak	halide_memoization_cache_store
	.align	16, 0x90
	.type	halide_memoization_cache_store,@function
halide_memoization_cache_store:         # @halide_memoization_cache_store
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%r9, %r13
	movl	%r8d, %r14d
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movq	%rsi, %r15
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	(%r13), %rax
	movq	8(%rax), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movl	8(%rax), %ebx
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	movzbl	%bl, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax,8), %r12
	testq	%r12, %r12
	je	.LBB73_14
# BB#1:                                 # %while.body.lr.ph
	movslq	-100(%rbp), %rax        # 4-byte Folded Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB73_16
# BB#2:                                 # %while.body.lr.ph.split.us
	movslq	%r14d, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	.align	16, 0x90
.LBB73_3:                               # %while.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB73_9 Depth 2
	cmpl	%ebx, 40(%r12)
	jne	.LBB73_13
# BB#4:                                 # %land.lhs.true.us
                                        #   in Loop: Header=BB73_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 24(%r12)
	jne	.LBB73_13
# BB#5:                                 # %land.lhs.true.12.us
                                        #   in Loop: Header=BB73_3 Depth=1
	movq	32(%r12), %rdi
	movq	%r15, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m@PLT
	testb	%al, %al
	je	.LBB73_13
# BB#6:                                 # %land.lhs.true.15.us
                                        #   in Loop: Header=BB73_3 Depth=1
	leaq	56(%r12), %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_@PLT
	testb	%al, %al
	je	.LBB73_13
# BB#7:                                 # %land.lhs.true.18.us
                                        #   in Loop: Header=BB73_3 Depth=1
	cmpl	%r14d, 48(%r12)
	jne	.LBB73_13
# BB#8:                                 #   in Loop: Header=BB73_3 Depth=1
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	%r15, -88(%rbp)         # 8-byte Spill
	movq	%r14, -136(%rbp)        # 8-byte Spill
	movb	$1, %al
	movl	%eax, -68(%rbp)         # 4-byte Spill
	xorl	%r15d, %r15d
	movq	%r13, %rbx
	movq	%r13, -128(%rbp)        # 8-byte Spill
	movl	$1, %r13d
	.align	16, 0x90
.LBB73_9:                               # %for.body.us
                                        #   Parent Loop BB73_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %r14
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_@PLT
	movb	%al, -41(%rbp)          # 1-byte Spill
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi@PLT
	movq	8(%rax), %rax
	cmpq	8(%r14), %rax
	jne	.LBB73_11
# BB#10:                                #   in Loop: Header=BB73_9 Depth=2
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
.LBB73_11:                              # %select.mid
                                        #   in Loop: Header=BB73_9 Depth=2
	movb	-41(%rbp), %cl          # 1-byte Reload
	cmpq	-64(%rbp), %r13         # 8-byte Folded Reload
	setl	%al
	addq	$1, %r13
	addl	$1, %r15d
	addq	$8, %rbx
	testb	%cl, %al
	jne	.LBB73_9
# BB#12:                                # %for.cond.cleanup.us
                                        #   in Loop: Header=BB73_3 Depth=1
	testb	%cl, %cl
	movq	-128(%rbp), %r13        # 8-byte Reload
	movq	-136(%rbp), %r14        # 8-byte Reload
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	jne	.LBB73_22
	.align	16, 0x90
.LBB73_13:                              # %if.end.56.us
                                        #   in Loop: Header=BB73_3 Depth=1
	movq	(%r12), %r12
	testq	%r12, %r12
	jne	.LBB73_3
	jmp	.LBB73_14
	.align	16, 0x90
.LBB73_16:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, 40(%r12)
	jne	.LBB73_21
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB73_16 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 24(%r12)
	jne	.LBB73_21
# BB#18:                                # %land.lhs.true.12
                                        #   in Loop: Header=BB73_16 Depth=1
	movq	32(%r12), %rdi
	movq	%r15, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m@PLT
	testb	%al, %al
	je	.LBB73_21
# BB#19:                                # %land.lhs.true.15
                                        #   in Loop: Header=BB73_16 Depth=1
	leaq	56(%r12), %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	_ZN6Halide7Runtime8Internal12bounds_equalERK8buffer_tS4_@PLT
	testb	%al, %al
	je	.LBB73_21
# BB#20:                                # %land.lhs.true.18
                                        #   in Loop: Header=BB73_16 Depth=1
	cmpl	%r14d, 48(%r12)
	je	.LBB73_24
	.align	16, 0x90
.LBB73_21:                              # %if.end.56
                                        #   in Loop: Header=BB73_16 Depth=1
	movq	(%r12), %r12
	testq	%r12, %r12
	jne	.LBB73_16
.LBB73_14:                              # %for.cond.60.preheader
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	%r15, -88(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	testl	%r14d, %r14d
	movq	%r14, %rax
	jle	.LBB73_15
# BB#26:
	movq	%r13, %rbx
	movl	%eax, %r14d
	movq	%rax, %r12
	.align	16, 0x90
.LBB73_27:                              # %for.body.63
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	_ZN6Halide7Runtime8Internal8buf_sizeEPK8buffer_t@PLT
	addq	%rax, %r15
	addq	$8, %rbx
	addl	$-1, %r14d
	jne	.LBB73_27
	jmp	.LBB73_28
.LBB73_15:
	movq	%rax, %r12
.LBB73_28:                              # %for.cond.cleanup.62
	movq	_ZN6Halide7Runtime8Internal18current_cache_sizeE@GOTPCREL(%rip), %r14
	addq	%r15, (%r14)
	callq	_ZN6Halide7Runtime8Internal11prune_cacheEv@PLT
	movq	%r12, %rbx
	leal	-1(%rbx), %eax
	cltq
	leaq	(%rax,%rax,8), %rax
	leaq	200(,%rax,8), %rsi
	xorl	%edi, %edi
	callq	halide_malloc@PLT
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB73_29
# BB#31:                                # %if.end.96
	movslq	-100(%rbp), %rdx        # 4-byte Folded Reload
	movq	%r13, (%rsp)
	movq	%r12, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movl	%ebx, %r9d
	callq	_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjRK8buffer_tiPPS5_@PLT
	testb	%al, %al
	je	.LBB73_32
# BB#35:                                # %if.end.120
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, (%r12)
	movq	_ZN6Halide7Runtime8Internal18most_recently_usedE@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, 16(%r12)
	testq	%rcx, %rcx
	je	.LBB73_37
# BB#36:                                # %if.then.125
	movq	%r12, 8(%rcx)
.LBB73_37:                              # %if.end.126
	movq	%r12, (%rax)
	movq	_ZN6Halide7Runtime8Internal19least_recently_usedE@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	jne	.LBB73_39
# BB#38:                                # %if.then.128
	movq	%r12, (%rax)
.LBB73_39:                              # %if.end.129
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %rcx
	movq	%r12, (%rcx,%rax,8)
	movl	%ebx, 44(%r12)
	testl	%ebx, %ebx
	jle	.LBB73_41
	.align	16, 0x90
.LBB73_40:                              # %for.body.137
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movq	8(%rax), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movq	%r12, (%rax)
	addq	$8, %r13
	addl	$-1, %ebx
	jne	.LBB73_40
	jmp	.LBB73_41
.LBB73_29:                              # %if.then.79
	subq	%r15, (%r14)
	testl	%ebx, %ebx
	jle	.LBB73_41
	.align	16, 0x90
.LBB73_30:                              # %for.body.86
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movq	8(%rax), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movq	$0, (%rax)
	addq	$8, %r13
	addl	$-1, %ebx
	jne	.LBB73_30
	jmp	.LBB73_41
.LBB73_32:                              # %if.then.103
	subq	%r15, (%r14)
	testl	%ebx, %ebx
	jle	.LBB73_33
	.align	16, 0x90
.LBB73_34:                              # %for.body.110
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movq	8(%rax), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movq	$0, (%rax)
	addq	$8, %r13
	addl	$-1, %ebx
	jne	.LBB73_34
.LBB73_33:                              # %for.cond.cleanup.109
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%r12, %rsi
	callq	halide_free@PLT
.LBB73_41:                              # %cleanup.153
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB73_22:                              # %if.then.36
	movl	-68(%rbp), %eax         # 4-byte Reload
	testb	$1, %al
	jne	.LBB73_24
# BB#23:                                # %if.then.38
	leaq	.L.str.8.33(%rip), %rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	halide_print@PLT
	callq	abort@PLT
.LBB73_24:                              # %for.cond.42.preheader
	testl	%r14d, %r14d
	jle	.LBB73_41
	.align	16, 0x90
.LBB73_25:                              # %for.body.45
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movq	8(%rax), %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movq	$0, (%rax)
	addq	$8, %r13
	addl	$-1, %r14d
	jne	.LBB73_25
	jmp	.LBB73_41
.Lfunc_end73:
	.size	halide_memoization_cache_store, .Lfunc_end73-halide_memoization_cache_store

	.section	.text.halide_memoization_cache_release,"ax",@progbits
	.weak	halide_memoization_cache_release
	.align	16, 0x90
	.type	halide_memoization_cache_release,@function
halide_memoization_cache_release:       # @halide_memoization_cache_release
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh@PLT
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB74_4
# BB#1:                                 # %if.else
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	movl	44(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB74_3
# BB#2:                                 # %if.then.6
	leaq	.L.str.11.34(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
	movl	44(%rbx), %eax
.LBB74_3:                               # %if.end
	addl	$-1, %eax
	movl	%eax, 44(%rbx)
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_mutex_unlock@PLT # TAILCALL
.LBB74_4:                               # %if.then
	movq	%r14, %rdi
	movq	%rax, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_free@PLT         # TAILCALL
.Lfunc_end74:
	.size	halide_memoization_cache_release, .Lfunc_end74-halide_memoization_cache_release

	.section	.text.halide_memoization_cache_cleanup,"ax",@progbits
	.weak	halide_memoization_cache_cleanup
	.align	16, 0x90
	.type	halide_memoization_cache_cleanup,@function
halide_memoization_cache_cleanup:       # @halide_memoization_cache_cleanup
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	xorl	%r14d, %r14d
	movq	_ZN6Halide7Runtime8Internal13cache_entriesE@GOTPCREL(%rip), %r15
	.align	16, 0x90
.LBB75_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_2 Depth 2
	movq	(%r15,%r14,8), %rbx
	movq	$0, (%r15,%r14,8)
	testq	%rbx, %rbx
	je	.LBB75_3
	.align	16, 0x90
.LBB75_2:                               # %while.body
                                        #   Parent Loop BB75_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %r12
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv@PLT
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	halide_free@PLT
	movq	%r12, %rbx
	testq	%r12, %r12
	jne	.LBB75_2
.LBB75_3:                               # %while.end
                                        #   in Loop: Header=BB75_1 Depth=1
	addq	$1, %r14
	cmpq	$256, %r14              # imm = 0x100
	jne	.LBB75_1
# BB#4:                                 # %for.cond.cleanup
	movq	_ZN6Halide7Runtime8Internal18current_cache_sizeE@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
	movq	_ZN6Halide7Runtime8Internal16memoization_lockE@GOTPCREL(%rip), %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	halide_mutex_destroy@PLT # TAILCALL
.Lfunc_end75:
	.size	halide_memoization_cache_cleanup, .Lfunc_end75-halide_memoization_cache_cleanup

	.section	.text.halide_cache_cleanup,"ax",@progbits
	.weak	halide_cache_cleanup
	.align	16, 0x90
	.type	halide_cache_cleanup,@function
halide_cache_cleanup:                   # @halide_cache_cleanup
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	halide_memoization_cache_cleanup@PLT # TAILCALL
.Lfunc_end76:
	.size	halide_cache_cleanup, .Lfunc_end76-halide_cache_cleanup

	.section	.text.halide_string_to_string,"ax",@progbits
	.weak	halide_string_to_string
	.align	16, 0x90
	.type	halide_string_to_string,@function
halide_string_to_string:                # @halide_string_to_string
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	%rsi, %rdi
	jae	.LBB77_3
# BB#1:                                 # %while.body.preheader
	je	.LBB77_2
	.align	16, 0x90
.LBB77_4:                               # %if.end.3
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rdx), %al
	movb	%al, (%rdi)
	testb	%al, %al
	je	.LBB77_3
# BB#5:                                 # %if.end.6
                                        #   in Loop: Header=BB77_4 Depth=1
	addq	$1, %rdi
	addq	$1, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB77_4
# BB#6:
	movq	%rsi, %rdi
.LBB77_2:                               # %if.then.2
	movb	$0, -1(%rdi)
.LBB77_3:                               # %return
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end77:
	.size	halide_string_to_string, .Lfunc_end77-halide_string_to_string

	.section	.text.halide_uint64_to_string,"ax",@progbits
	.weak	halide_uint64_to_string
	.align	16, 0x90
	.type	halide_uint64_to_string,@function
halide_uint64_to_string:                # @halide_uint64_to_string
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, -1(%rbp)
	leaq	-2(%rbp), %r8
	movl	$1, %r9d
	testq	%rdx, %rdx
	jne	.LBB78_2
# BB#1:                                 # %entry
	testl	%ecx, %ecx
	jle	.LBB78_4
	.align	16, 0x90
.LBB78_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %r11
	movl	%r9d, %r10d
	movabsq	$-3689348814741910323, %r9 # imm = 0xCCCCCCCCCCCCCCCD
	mulxq	%r9, %rax, %rdx
	shrq	$3, %rdx
	imull	$-10, %edx, %eax
	leal	48(%r11,%rax), %eax
	movb	%al, (%r8)
	addq	$-1, %r8
	leal	1(%r10), %r9d
	cmpq	$9, %r11
	ja	.LBB78_2
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB78_2 Depth=1
	cmpl	%ecx, %r10d
	jl	.LBB78_2
.LBB78_4:                               # %for.cond.cleanup
	addq	$1, %r8
	movq	%r8, %rdx
	callq	halide_string_to_string@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	halide_uint64_to_string, .Lfunc_end78-halide_uint64_to_string

	.section	.text.halide_int64_to_string,"ax",@progbits
	.weak	halide_int64_to_string
	.align	16, 0x90
	.type	halide_int64_to_string,@function
halide_int64_to_string:                 # @halide_int64_to_string
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	%rsi, %rdi
	jae	.LBB79_3
# BB#1:                                 # %entry
	testq	%rdx, %rdx
	jns	.LBB79_3
# BB#2:                                 # %if.then
	movb	$45, (%rdi)
	addq	$1, %rdi
	negq	%rdx
.LBB79_3:                               # %if.end
	popq	%rbp
	jmp	halide_uint64_to_string@PLT # TAILCALL
.Lfunc_end79:
	.size	halide_int64_to_string, .Lfunc_end79-halide_int64_to_string

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI80_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI80_6:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI80_7:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI80_1:
	.quad	4607182418800017408     # double 1
.LCPI80_2:
	.quad	4621819117588971520     # double 10
.LCPI80_3:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI80_4:
	.quad	4602678819172646912     # double 0.5
.LCPI80_5:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.section	.text.halide_double_to_string,"ax",@progbits
	.weak	halide_double_to_string
	.align	16, 0x90
	.type	halide_double_to_string,@function
halide_double_to_string:                # @halide_double_to_string
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
	movl	%edx, %ebx
	vmovapd	%xmm0, -592(%rbp)       # 16-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r14
	vmovsd	%xmm0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy@PLT
	movq	-56(%rbp), %rax
	movb	$52, %cl
	bzhiq	%rcx, %rax, %r13
	movq	%rax, %r15
	shrq	$52, %r15
	andl	$2047, %r15d            # imm = 0x7FF
	shrq	$63, %rax
	cmpl	$2047, %r15d            # imm = 0x7FF
	jne	.LBB80_9
# BB#1:                                 # %if.then
	testq	%r13, %r13
	je	.LBB80_6
# BB#2:                                 # %if.then.4
	testl	%eax, %eax
	je	.LBB80_5
# BB#3:                                 # %if.then.6
	leaq	.L.str.45(%rip), %rdx
	jmp	.LBB80_4
.LBB80_9:                               # %if.else.15
	testq	%r13, %r13
	jne	.LBB80_18
# BB#10:                                # %if.else.15
	testl	%r15d, %r15d
	jne	.LBB80_18
# BB#11:                                # %if.then.18
	testl	%ebx, %ebx
	je	.LBB80_15
# BB#12:                                # %if.then.20
	testl	%eax, %eax
	je	.LBB80_14
# BB#13:                                # %if.then.22
	leaq	.L.str.4.49(%rip), %rdx
	jmp	.LBB80_4
.LBB80_18:                              # %if.end.32
	testl	%eax, %eax
	je	.LBB80_19
# BB#20:                                # %if.then.34
	leaq	.L.str.8.53(%rip), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %r14
	vmovapd	-592(%rbp), %xmm2       # 16-byte Reload
	vxorpd	.LCPI80_0(%rip), %xmm2, %xmm2
	vmovlpd	%xmm2, -48(%rbp)
	jmp	.LBB80_21
.LBB80_6:                               # %if.else.9
	testl	%eax, %eax
	je	.LBB80_8
# BB#7:                                 # %if.then.11
	leaq	.L.str.2.47(%rip), %rdx
	jmp	.LBB80_4
.LBB80_5:                               # %if.else
	leaq	.L.str.1.46(%rip), %rdx
	jmp	.LBB80_4
.LBB80_15:                              # %if.else.26
	testl	%eax, %eax
	je	.LBB80_17
# BB#16:                                # %if.then.28
	leaq	.L.str.6.51(%rip), %rdx
	jmp	.LBB80_4
.LBB80_19:
	vmovapd	-592(%rbp), %xmm2       # 16-byte Reload
.LBB80_21:                              # %if.end.37
	testl	%ebx, %ebx
	je	.LBB80_36
# BB#22:                                # %while.condthread-pre-split
	xorl	%ebx, %ebx
	vmovsd	.LCPI80_1(%rip), %xmm0  # xmm0 = mem[0],zero
	vucomisd	%xmm2, %xmm0
	jbe	.LBB80_26
# BB#23:
	vmovsd	.LCPI80_2(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB80_24:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	vmulsd	%xmm1, %xmm2, %xmm2
	addl	$-1, %ebx
	vucomisd	%xmm2, %xmm0
	ja	.LBB80_24
# BB#25:                                # %while.cond.while.cond.41thread-pre-split_crit_edge
	vmovsd	%xmm2, -48(%rbp)
.LBB80_26:                              # %while.cond.41thread-pre-split
	vucomisd	.LCPI80_2(%rip), %xmm2
	jb	.LBB80_30
# BB#27:
	vmovsd	.LCPI80_2(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB80_28:                              # %while.body.43
                                        # =>This Inner Loop Header: Depth=1
	vdivsd	%xmm0, %xmm2, %xmm2
	addl	$1, %ebx
	vucomisd	%xmm0, %xmm2
	jae	.LBB80_28
# BB#29:                                # %while.cond.41.while.end.44_crit_edge
	vmovsd	%xmm2, -48(%rbp)
.LBB80_30:                              # %while.end.44
	vmovsd	.LCPI80_3(%rip), %xmm0  # xmm0 = mem[0],zero
	vfmadd213sd	.LCPI80_4(%rip), %xmm2, %xmm0
	vmovsd	.LCPI80_5(%rip), %xmm1  # xmm1 = mem[0],zero
	vsubsd	%xmm1, %xmm0, %xmm2
	vcvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	vcvttsd2si	%xmm0, %rdx
	vucomisd	%xmm1, %xmm0
	cmovaeq	%rcx, %rdx
	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
	mulxq	%rax, %rcx, %rax
	shrq	$18, %rax
	imulq	$-1000000, %rax, %r15   # imm = 0xFFFFFFFFFFF0BDC0
	addq	%rdx, %r15
	movl	$1, %ecx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.28(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movl	$6, %ecx
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	halide_int64_to_string@PLT
	testl	%ebx, %ebx
	js	.LBB80_32
# BB#31:                                # %if.then.54
	leaq	.L.str.10.55(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	jmp	.LBB80_33
.LBB80_36:                              # %if.else.62
	testl	%r15d, %r15d
	je	.LBB80_37
# BB#38:                                # %if.end.66
	movabsq	$4503599627370496, %rax # imm = 0x10000000000000
	orq	%rax, %r13
	leal	-1075(%r15), %ecx
	cmpl	$1074, %r15d            # imm = 0x432
	ja	.LBB80_39
# BB#40:                                # %if.then.72
	cmpl	$-52, %ecx
	jge	.LBB80_42
# BB#41:
	xorl	%eax, %eax
	jmp	.LBB80_43
.LBB80_8:                               # %if.else.13
	leaq	.L.str.3.48(%rip), %rdx
	jmp	.LBB80_4
.LBB80_14:                              # %if.else.24
	leaq	.L.str.5.50(%rip), %rdx
	jmp	.LBB80_4
.LBB80_32:                              # %if.else.56
	leaq	.L.str.11.56(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	negl	%ebx
.LBB80_33:                              # %if.end.59
	movslq	%ebx, %rdx
	movl	$2, %ecx
	movq	%r12, %rsi
	jmp	.LBB80_34
.LBB80_17:                              # %if.else.30
	leaq	.L.str.7.52(%rip), %rdx
.LBB80_4:                               # %cleanup.148
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	jmp	.LBB80_35
.LBB80_37:                              # %if.then.64
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_double_to_string@PLT
	jmp	.LBB80_35
.LBB80_39:
	xorl	%eax, %eax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	movl	%ecx, %ebx
	jmp	.LBB80_44
.LBB80_42:                              # %if.else.76
	movl	$1075, %edx             # imm = 0x433
	subl	%r15d, %edx
	shrxq	%rdx, %r13, %rax
	shlxq	%rdx, %rax, %rdx
	subq	%rdx, %r13
.LBB80_43:                              # %if.end.84
	vmovq	%r13, %xmm0
	vmovdqa	.LCPI80_6(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	vpunpckldq	%xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	vmovapd	.LCPI80_7(%rip), %xmm2  # xmm2 = [4.503600e+15,1.934281e+25]
	vsubpd	%xmm2, %xmm0, %xmm0
	vhaddpd	%xmm0, %xmm0, %xmm0
	shlq	$52, %rcx
	movabsq	$4696837146684686336, %rdx # imm = 0x412E848000000000
	addq	%rcx, %rdx
	vmovq	%rdx, %xmm3
	vfmadd213sd	.LCPI80_4(%rip), %xmm0, %xmm3
	vmovsd	.LCPI80_5(%rip), %xmm0  # xmm0 = mem[0],zero
	vsubsd	%xmm0, %xmm3, %xmm4
	vcvttsd2si	%xmm4, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rcx, %rdx
	vcvttsd2si	%xmm3, %rcx
	vucomisd	%xmm0, %xmm3
	cmovaeq	%rdx, %rcx
	vmovq	%rcx, %xmm0
	vpunpckldq	%xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	vsubpd	%xmm2, %xmm0, %xmm0
	vhaddpd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm3, %xmm0
	setnp	%dl
	sete	%bl
	andb	%dl, %bl
	andb	%cl, %bl
	movzbl	%bl, %edx
	subq	%rdx, %rcx
	cmpq	$1000000, %rcx          # imm = 0xF4240
	sete	%dl
	movzbl	%dl, %r13d
	movl	$0, %edx
	cmovneq	%rcx, %rdx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	addq	%rax, %r13
	xorl	%ebx, %ebx
.LBB80_44:                              # %if.end.105
	leaq	-56(%rbp), %rsi
	leaq	-88(%rbp), %r15
	movl	$1, %ecx
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	halide_int64_to_string@PLT
	testl	%ebx, %ebx
	movq	%rbx, %r13
	jle	.LBB80_65
# BB#45:                                # %for.cond.112.preheader.preheader
	testb	$1, %r13b
	jne	.LBB80_47
# BB#46:
	xorl	%r8d, %r8d
	jmp	.LBB80_53
.LBB80_47:                              # %for.cond.112.preheader.prol
	movl	$1, %r8d
	cmpq	%r15, %rax
	je	.LBB80_48
# BB#49:                                # %for.body.116.preheader.prol
	movl	$480, %ecx              # imm = 0x1E0
	subq	%rax, %rcx
	leaq	-568(%rbp,%rcx), %r11
	leaq	-1(%rax), %rsi
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB80_50:                              # %for.body.116.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rsi), %cl
	addb	$-48, %cl
	movsbl	%cl, %edi
	addl	%edi, %edi
	orl	%r9d, %edi
	movsbl	%dil, %r10d
	leal	246(%rdi), %ecx
	cmpl	$9, %r10d
	setg	%dl
	movzbl	%dl, %r9d
	cmovlel	%edi, %ecx
	addl	$48, %ecx
	movb	%cl, (%rsi)
	addq	$-1, %rsi
	addq	$1, %r11
	jne	.LBB80_50
# BB#51:                                # %for.cond.cleanup.115.prol
	cmpl	$10, %r10d
	jl	.LBB80_53
# BB#52:                                # %if.then.136.prol
	leaq	-89(%rbp), %r15
	movb	$49, -89(%rbp)
	jmp	.LBB80_53
.LBB80_48:
	movq	%rax, %r15
.LBB80_53:                              # %for.cond.112.preheader.preheader.split
	cmpl	$1, %r13d
	je	.LBB80_65
	.align	16, 0x90
.LBB80_54:                              # %for.cond.112.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB80_55 Depth 2
                                        #     Child Loop BB80_60 Depth 2
	xorl	%r9d, %r9d
	movq	%rax, %rsi
	movq	%rax, %r10
	cmpq	%r15, %rax
	je	.LBB80_59
	.align	16, 0x90
.LBB80_55:                              # %for.body.116
                                        #   Parent Loop BB80_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-1(%rsi), %cl
	addb	$-48, %cl
	movsbl	%cl, %edx
	addl	%edx, %edx
	orl	%r9d, %edx
	movsbl	%dl, %edi
	leal	246(%rdx), %ebx
	cmpl	$9, %edi
	setg	%cl
	movzbl	%cl, %r9d
	cmovlel	%edx, %ebx
	addl	$48, %ebx
	movb	%bl, -1(%rsi)
	leaq	-1(%rsi), %rsi
	cmpq	%rsi, %r15
	jne	.LBB80_55
# BB#56:                                # %for.cond.cleanup.115
                                        #   in Loop: Header=BB80_54 Depth=1
	cmpl	$9, %edi
	jle	.LBB80_58
# BB#57:                                # %if.then.136
                                        #   in Loop: Header=BB80_54 Depth=1
	movb	$49, -1(%r15)
	addq	$-1, %r15
.LBB80_58:                              # %if.end.138
                                        #   in Loop: Header=BB80_54 Depth=1
	movq	%r15, %r10
.LBB80_59:                              # %if.end.138
                                        #   in Loop: Header=BB80_54 Depth=1
	xorl	%r9d, %r9d
	movq	%rax, %rsi
	movq	%rax, %r15
	cmpq	%r10, %rax
	je	.LBB80_64
	.align	16, 0x90
.LBB80_60:                              # %for.body.116.1
                                        #   Parent Loop BB80_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-1(%rsi), %cl
	addb	$-48, %cl
	movsbl	%cl, %ebx
	addl	%ebx, %ebx
	orl	%r9d, %ebx
	movsbl	%bl, %edi
	leal	246(%rbx), %edx
	cmpl	$9, %edi
	setg	%cl
	movzbl	%cl, %r9d
	cmovlel	%ebx, %edx
	addl	$48, %edx
	movb	%dl, -1(%rsi)
	leaq	-1(%rsi), %rsi
	cmpq	%rsi, %r10
	jne	.LBB80_60
# BB#61:                                # %for.cond.cleanup.115.1
                                        #   in Loop: Header=BB80_54 Depth=1
	cmpl	$10, %edi
	jl	.LBB80_63
# BB#62:                                # %if.then.136.1
                                        #   in Loop: Header=BB80_54 Depth=1
	movb	$49, -1(%r10)
	addq	$-1, %r10
.LBB80_63:                              # %if.end.138.1
                                        #   in Loop: Header=BB80_54 Depth=1
	movq	%r10, %r15
.LBB80_64:                              # %if.end.138.1
                                        #   in Loop: Header=BB80_54 Depth=1
	addl	$2, %r8d
	cmpl	%r13d, %r8d
	jne	.LBB80_54
.LBB80_65:                              # %for.cond.cleanup
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.28(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movl	$6, %ecx
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	-592(%rbp), %rdx        # 8-byte Reload
.LBB80_34:                              # %cleanup.148
	callq	halide_int64_to_string@PLT
.LBB80_35:                              # %cleanup.148
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end80:
	.size	halide_double_to_string, .Lfunc_end80-halide_double_to_string

	.section	.text.halide_pointer_to_string,"ax",@progbits
	.weak	halide_pointer_to_string
	.align	16, 0x90
	.type	halide_pointer_to_string,@function
halide_pointer_to_string:               # @halide_pointer_to_string
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -32(%rbp)
	movl	$0, -16(%rbp)
	leaq	-14(%rbp), %r10
	leaq	-13(%rbp), %r8
	movl	$1, %ecx
	leaq	.L.str.12.57(%rip), %r9
	.align	16, 0x90
.LBB81_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %eax
	andl	$15, %eax
	movb	(%rax,%r9), %al
	movb	%al, (%r10)
	addq	$-1, %r10
	addq	$-1, %r8
	cmpl	$15, %ecx
	jg	.LBB81_3
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB81_1 Depth=1
	shrq	$4, %rdx
	addl	$1, %ecx
	testq	%rdx, %rdx
	jne	.LBB81_1
.LBB81_3:                               # %cleanup
	movq	%r8, %rdx
	addq	$-2, %rdx
	movb	$120, (%r10)
	movb	$48, -2(%r8)
	callq	halide_string_to_string@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	halide_pointer_to_string, .Lfunc_end81-halide_pointer_to_string

	.section	.text.halide_get_device_handle,"ax",@progbits
	.weak	halide_get_device_handle
	.align	16, 0x90
	.type	halide_get_device_handle,@function
halide_get_device_handle:               # @halide_get_device_handle
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB82_2
# BB#1:                                 # %if.end
	movq	(%rdi), %rax
.LBB82_2:                               # %cleanup
	popq	%rbp
	retq
.Lfunc_end82:
	.size	halide_get_device_handle, .Lfunc_end82-halide_get_device_handle

	.section	.text._ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP8buffer_t,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP8buffer_t
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP8buffer_t,@function
_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP8buffer_t: # @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP8buffer_t
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%eax, %eax
	cmpb	$0, 69(%rbx)
	je	.LBB83_5
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	callq	halide_get_device_interface@PLT
	movq	%rax, %rcx
	movl	$-14, %eax
	cmpb	$0, 68(%rbx)
	jne	.LBB83_5
# BB#2:                                 # %if.end.10
	movl	$-19, %eax
	testq	%rcx, %rcx
	je	.LBB83_5
# BB#3:                                 # %if.end.16
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*48(%rcx)
	movl	%eax, %ecx
	movl	$-14, %eax
	testl	%ecx, %ecx
	jne	.LBB83_5
# BB#4:                                 # %if.end.25
	movb	$0, 69(%rbx)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	halide_msan_annotate_buffer_is_initialized@PLT
	xorl	%eax, %eax
.LBB83_5:                               # %return
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end83:
	.size	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP8buffer_t, .Lfunc_end83-_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP8buffer_t

	.section	.text.halide_get_device_interface,"ax",@progbits
	.weak	halide_get_device_interface
	.align	16, 0x90
	.type	halide_get_device_interface,@function
halide_get_device_interface:            # @halide_get_device_interface
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB84_2
# BB#1:                                 # %if.end
	movq	8(%rdi), %rax
.LBB84_2:                               # %return
	popq	%rbp
	retq
.Lfunc_end84:
	.size	halide_get_device_interface, .Lfunc_end84-halide_get_device_interface

	.section	.text.halide_new_device_wrapper,"ax",@progbits
	.weak	halide_new_device_wrapper
	.align	16, 0x90
	.type	halide_new_device_wrapper,@function
halide_new_device_wrapper:              # @halide_new_device_wrapper
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$16, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB85_2
# BB#1:                                 # %if.end
	movq	%r14, (%rbx)
	movq	%r15, 8(%rbx)
	callq	*(%r15)
	movq	%rbx, %rax
.LBB85_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end85:
	.size	halide_new_device_wrapper, .Lfunc_end85-halide_new_device_wrapper

	.section	.text.halide_delete_device_wrapper,"ax",@progbits
	.weak	halide_delete_device_wrapper
	.align	16, 0x90
	.type	halide_delete_device_wrapper,@function
halide_delete_device_wrapper:           # @halide_delete_device_wrapper
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	callq	*8(%rax)
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	free@PLT                # TAILCALL
.Lfunc_end86:
	.size	halide_delete_device_wrapper, .Lfunc_end86-halide_delete_device_wrapper

	.section	.text.halide_device_release,"ax",@progbits
	.weak	halide_device_release
	.align	16, 0x90
	.type	halide_device_release,@function
halide_device_release:                  # @halide_device_release
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmpq	*40(%rsi)               # TAILCALL
.Lfunc_end87:
	.size	halide_device_release, .Lfunc_end87-halide_device_release

	.section	.text.halide_copy_to_host,"ax",@progbits
	.weak	halide_copy_to_host
	.align	16, 0x90
	.type	halide_copy_to_host,@function
halide_copy_to_host:                    # @halide_copy_to_host
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %r15
	movq	%r15, %rdi
	callq	halide_mutex_lock@PLT
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP8buffer_t@PLT
	movl	%eax, %ebx
	movq	%r15, %rdi
	callq	halide_mutex_unlock@PLT
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end88:
	.size	halide_copy_to_host, .Lfunc_end88-halide_copy_to_host

	.section	.text.halide_copy_to_device,"ax",@progbits
	.weak	halide_copy_to_device
	.align	16, 0x90
	.type	halide_copy_to_device,@function
halide_copy_to_device:                  # @halide_copy_to_device
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_lock@PLT
	movq	(%r12), %rdi
	callq	halide_get_device_interface@PLT
	testq	%r15, %r15
	jne	.LBB89_2
# BB#1:                                 # %if.then
	movl	$-19, %ebx
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB89_17
.LBB89_2:                               # %if.end.24
	movq	(%r12), %rcx
	cmpq	%r15, %rax
	je	.LBB89_11
# BB#3:                                 # %if.end.24
	testq	%rcx, %rcx
	je	.LBB89_11
# BB#4:                                 # %if.then.28
	testq	%rax, %rax
	je	.LBB89_9
# BB#5:                                 # %land.lhs.true.34
	cmpb	$0, 69(%r12)
	je	.LBB89_9
# BB#6:                                 # %if.then.37
	cmpb	$0, 68(%r12)
	je	.LBB89_8
# BB#7:                                 # %if.then.40
	leaq	.L.str.25.64(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB89_8:                               # %if.end.41
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP8buffer_t@PLT
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jne	.LBB89_17
.LBB89_9:                               # %if.end.50
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_device_free@PLT
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jne	.LBB89_17
# BB#10:                                # %if.end.58
	movb	$1, 68(%r12)
	movq	(%r12), %rcx
.LBB89_11:                              # %if.end.60
	testq	%rcx, %rcx
	jne	.LBB89_13
# BB#12:                                # %if.then.63
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	halide_device_malloc@PLT
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jne	.LBB89_17
.LBB89_13:                              # %if.end.72
	xorl	%ebx, %ebx
	cmpb	$0, 68(%r12)
	je	.LBB89_17
# BB#14:                                # %if.then.75
	cmpb	$0, 69(%r12)
	jne	.LBB89_17
# BB#15:                                # %if.else
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*56(%r15)
	movl	$-15, %ebx
	testl	%eax, %eax
	jne	.LBB89_17
# BB#16:                                # %if.then.89
	movb	$0, 68(%r12)
	xorl	%ebx, %ebx
.LBB89_17:                              # %cleanup
	movq	_ZN6Halide7Runtime8Internal17device_copy_mutexE@GOTPCREL(%rip), %rdi
	callq	halide_mutex_unlock@PLT
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end89:
	.size	halide_copy_to_device, .Lfunc_end89-halide_copy_to_device

	.section	.text.halide_device_free,"ax",@progbits
	.weak	halide_device_free
	.align	16, 0x90
	.type	halide_device_free,@function
halide_device_free:                     # @halide_device_free
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r13
	movq	%rdi, %r14
	testq	%r13, %r13
	je	.LBB90_1
# BB#3:                                 # %if.then.8
	movq	(%r13), %rbx
	movq	%rbx, %rdi
	callq	halide_get_device_interface@PLT
	movq	%rbx, %rdi
	callq	halide_get_device_interface@PLT
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB90_2
# BB#4:                                 # %if.then.12
	callq	*(%r12)
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*24(%r12)
	movl	%eax, %r15d
	callq	*8(%r12)
	cmpq	$0, (%r13)
	je	.LBB90_6
# BB#5:                                 # %if.then.17
	leaq	.L.str.40(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB90_6:                               # %cleanup.22
	testl	%r15d, %r15d
	movl	$-18, %eax
	cmovel	%r15d, %eax
	jmp	.LBB90_7
.LBB90_1:                               # %if.end
	xorl	%edi, %edi
	callq	halide_get_device_interface@PLT
.LBB90_2:                               # %if.end.23
	movb	$0, 69(%r13)
	xorl	%eax, %eax
.LBB90_7:                               # %cleanup.24
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end90:
	.size	halide_device_free, .Lfunc_end90-halide_device_free

	.section	.text.halide_device_malloc,"ax",@progbits
	.weak	halide_device_malloc
	.align	16, 0x90
	.type	halide_device_malloc,@function
halide_device_malloc:                   # @halide_device_malloc
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%r15), %rdi
	callq	halide_get_device_interface@PLT
	testq	%rax, %rax
	je	.LBB91_6
# BB#1:                                 # %entry
	cmpq	%rbx, %rax
	je	.LBB91_6
# BB#2:                                 # %if.then
	movl	$1024, %esi             # imm = 0x400
	movq	%r14, %rdi
	callq	halide_malloc@PLT
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB91_3
# BB#4:                                 # %if.else.i
	leaq	1023(%rbx), %rsi
	movb	$0, 1023(%rbx)
	leaq	.L.str.37(%rip), %rdx
	movq	%rbx, %rdi
	callq	halide_string_to_string@PLT
	movl	$1, %edx
	subq	%rbx, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB91_5
.LBB91_6:                               # %if.end
	callq	*(%rbx)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*16(%rbx)
	movl	%eax, %r14d
	callq	*8(%rbx)
	testl	%r14d, %r14d
	movl	$-16, %eax
	cmovel	%r14d, %eax
	jmp	.LBB91_7
.LBB91_3:                               # %if.then.i
	leaq	.L.str.37(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB91_5:                               # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	halide_free@PLT
	movl	$-16, %eax
.LBB91_7:                               # %cleanup.23
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end91:
	.size	halide_device_malloc, .Lfunc_end91-halide_device_malloc

	.section	.text.halide_device_sync,"ax",@progbits
	.weak	halide_device_sync
	.align	16, 0x90
	.type	halide_device_sync,@function
halide_device_sync:                     # @halide_device_sync
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$-19, %r14d
	testq	%rbx, %rbx
	je	.LBB92_3
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	callq	halide_get_device_interface@PLT
	testq	%rax, %rax
	je	.LBB92_3
# BB#2:                                 # %if.end.2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*32(%rax)
	testl	%eax, %eax
	movl	$-17, %r14d
	cmovel	%eax, %r14d
.LBB92_3:                               # %cleanup.7
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end92:
	.size	halide_device_sync, .Lfunc_end92-halide_device_sync

	.section	.text.halide_weak_device_free,"ax",@progbits
	.weak	halide_weak_device_free
	.align	16, 0x90
	.type	halide_weak_device_free,@function
halide_weak_device_free:                # @halide_weak_device_free
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	halide_device_free@PLT  # TAILCALL
.Lfunc_end93:
	.size	halide_weak_device_free, .Lfunc_end93-halide_weak_device_free

	.section	.text.halide_device_free_as_destructor,"ax",@progbits
	.weak	halide_device_free_as_destructor
	.align	16, 0x90
	.type	halide_device_free_as_destructor,@function
halide_device_free_as_destructor:       # @halide_device_free_as_destructor
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	halide_device_free@PLT  # TAILCALL
.Lfunc_end94:
	.size	halide_device_free_as_destructor, .Lfunc_end94-halide_device_free_as_destructor

	.section	.text.halide_device_and_host_malloc,"ax",@progbits
	.weak	halide_device_and_host_malloc
	.align	16, 0x90
	.type	halide_device_and_host_malloc,@function
halide_device_and_host_malloc:          # @halide_device_and_host_malloc
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%r15), %rdi
	callq	halide_get_device_interface@PLT
	testq	%rax, %rax
	je	.LBB95_6
# BB#1:                                 # %entry
	cmpq	%rbx, %rax
	je	.LBB95_6
# BB#2:                                 # %if.then
	movl	$1024, %esi             # imm = 0x400
	movq	%r14, %rdi
	callq	halide_malloc@PLT
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB95_3
# BB#4:                                 # %if.else.i
	leaq	1023(%rbx), %rsi
	movb	$0, 1023(%rbx)
	leaq	.L.str.42(%rip), %rdx
	movq	%rbx, %rdi
	callq	halide_string_to_string@PLT
	movl	$1, %edx
	subq	%rbx, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB95_5
.LBB95_6:                               # %if.end
	callq	*(%rbx)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*64(%rbx)
	movl	%eax, %r14d
	callq	*8(%rbx)
	testl	%r14d, %r14d
	movl	$-16, %eax
	cmovel	%r14d, %eax
	jmp	.LBB95_7
.LBB95_3:                               # %if.then.i
	leaq	.L.str.42(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	halide_string_to_string@PLT
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB95_5:                               # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	halide_free@PLT
	movl	$-16, %eax
.LBB95_7:                               # %cleanup.23
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end95:
	.size	halide_device_and_host_malloc, .Lfunc_end95-halide_device_and_host_malloc

	.section	.text.halide_device_and_host_free,"ax",@progbits
	.weak	halide_device_and_host_free
	.align	16, 0x90
	.type	halide_device_and_host_free,@function
halide_device_and_host_free:            # @halide_device_and_host_free
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r13
	movq	%rdi, %r14
	testq	%r13, %r13
	je	.LBB96_1
# BB#3:                                 # %if.then.8
	movq	(%r13), %rbx
	movq	%rbx, %rdi
	callq	halide_get_device_interface@PLT
	movq	%rbx, %rdi
	callq	halide_get_device_interface@PLT
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB96_2
# BB#4:                                 # %if.then.12
	callq	*(%r12)
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*72(%r12)
	movl	%eax, %r15d
	callq	*8(%r12)
	cmpq	$0, (%r13)
	je	.LBB96_6
# BB#5:                                 # %if.then.17
	leaq	.L.str.44(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB96_6:                               # %cleanup.22
	testl	%r15d, %r15d
	movl	$-18, %eax
	cmovel	%r15d, %eax
	jmp	.LBB96_7
.LBB96_1:                               # %if.end
	xorl	%edi, %edi
	callq	halide_get_device_interface@PLT
.LBB96_2:                               # %if.end.23
	movb	$0, 69(%r13)
	xorl	%eax, %eax
.LBB96_7:                               # %cleanup.24
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end96:
	.size	halide_device_and_host_free, .Lfunc_end96-halide_device_and_host_free

	.section	.text.halide_default_device_and_host_malloc,"ax",@progbits
	.weak	halide_default_device_and_host_malloc
	.align	16, 0x90
	.type	halide_default_device_and_host_malloc,@function
halide_default_device_and_host_malloc:  # @halide_default_device_and_host_malloc
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	_ZN6Halide7Runtime8Internal8buf_sizeEPK8buffer_t@PLT
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	halide_malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, 8(%rbx)
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB97_3
# BB#1:                                 # %if.end
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_device_malloc@PLT
	movl	%eax, %r15d
	xorl	%eax, %eax
	testl	%r15d, %r15d
	je	.LBB97_3
# BB#2:                                 # %if.then.5
	movq	8(%rbx), %rsi
	movq	%r14, %rdi
	callq	halide_free@PLT
	movq	$0, 8(%rbx)
	movl	%r15d, %eax
.LBB97_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end97:
	.size	halide_default_device_and_host_malloc, .Lfunc_end97-halide_default_device_and_host_malloc

	.section	.text.halide_default_device_and_host_free,"ax",@progbits
	.weak	halide_default_device_and_host_free
	.align	16, 0x90
	.type	halide_default_device_and_host_free,@function
halide_default_device_and_host_free:    # @halide_default_device_and_host_free
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	halide_device_free@PLT
	movl	%eax, %r15d
	movq	8(%rbx), %rsi
	movq	%r14, %rdi
	callq	halide_free@PLT
	movq	$0, 8(%rbx)
	movw	$0, 68(%rbx)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end98:
	.size	halide_default_device_and_host_free, .Lfunc_end98-halide_default_device_and_host_free

	.section	.text.halide_device_and_host_free_as_destructor,"ax",@progbits
	.weak	halide_device_and_host_free_as_destructor
	.align	16, 0x90
	.type	halide_device_and_host_free_as_destructor,@function
halide_device_and_host_free_as_destructor: # @halide_device_and_host_free_as_destructor
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	jmp	halide_device_and_host_free@PLT # TAILCALL
.Lfunc_end99:
	.size	halide_device_and_host_free_as_destructor, .Lfunc_end99-halide_device_and_host_free_as_destructor

	.section	.text.halide_device_host_nop_free,"ax",@progbits
	.weak	halide_device_host_nop_free
	.align	16, 0x90
	.type	halide_device_host_nop_free,@function
halide_device_host_nop_free:            # @halide_device_host_nop_free
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	halide_device_host_nop_free, .Lfunc_end100-halide_device_host_nop_free

	.section	.text.halide_float16_bits_to_float,"ax",@progbits
	.weak	halide_float16_bits_to_float
	.align	16, 0x90
	.type	halide_float16_bits_to_float,@function
halide_float16_bits_to_float:           # @halide_float16_bits_to_float
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	shll	$16, %eax
	andl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	$1290, %ecx             # imm = 0x50A
	bextrl	%ecx, %edi, %ecx
	andl	$1023, %edi             # imm = 0x3FF
	je	.LBB101_3
# BB#1:                                 # %entry
	testl	%ecx, %ecx
	jne	.LBB101_3
# BB#2:                                 # %if.then
	lzcntl	%edi, %ecx
	xorl	$31, %ecx
	movl	$-2, %edx
	roll	%cl, %edx
	andl	%edi, %edx
	movl	$23, %esi
	subl	%ecx, %esi
	shlxl	%esi, %edx, %edx
	shll	$23, %ecx
	addl	$864026624, %ecx        # imm = 0x33800000
	orl	%eax, %ecx
	orl	%edx, %ecx
	movl	%ecx, %edi
	jmp	.LBB101_7
.LBB101_3:                              # %if.else
	shll	$13, %edi
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	.LBB101_6
# BB#4:                                 # %if.else.18
	movl	$2139095040, %edx       # imm = 0x7F800000
	cmpl	$31, %ecx
	je	.LBB101_6
# BB#5:                                 # %if.else.21
	shll	$23, %ecx
	addl	$939524096, %ecx        # imm = 0x38000000
	movl	%ecx, %edx
.LBB101_6:                              # %if.end.23
	orl	%eax, %edi
	orl	%edx, %edi
.LBB101_7:                              # %if.end.28
	vmovd	%edi, %xmm0
	popq	%rbp
	retq
.Lfunc_end101:
	.size	halide_float16_bits_to_float, .Lfunc_end101-halide_float16_bits_to_float

	.section	.text.halide_float16_bits_to_double,"ax",@progbits
	.weak	halide_float16_bits_to_double
	.align	16, 0x90
	.type	halide_float16_bits_to_double,@function
halide_float16_bits_to_double:          # @halide_float16_bits_to_double
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	callq	halide_float16_bits_to_float@PLT
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	popq	%rbp
	retq
.Lfunc_end102:
	.size	halide_float16_bits_to_double, .Lfunc_end102-halide_float16_bits_to_double

	.section	.text.halide_error_bounds_inference_call_failed,"ax",@progbits
	.weak	halide_error_bounds_inference_call_failed
	.align	16, 0x90
	.type	halide_error_bounds_inference_call_failed,@function
halide_error_bounds_inference_call_failed: # @halide_error_bounds_inference_call_failed
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB103_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB103_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.68(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.1.69(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r14d, %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	testq	%r12, %r12
	je	.LBB103_3
# BB#4:                                 # %if.else.i.20
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r15, %rdi
	movq	%r12, %rsi
	jmp	.LBB103_5
.LBB103_3:                              # %if.then.i.19
	leaq	.L.str.53(%rip), %rsi
	movq	%r15, %rdi
.LBB103_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end103:
	.size	halide_error_bounds_inference_call_failed, .Lfunc_end103-halide_error_bounds_inference_call_failed

	.section	.text.halide_error_extern_stage_failed,"ax",@progbits
	.weak	halide_error_extern_stage_failed
	.align	16, 0x90
	.type	halide_error_extern_stage_failed,@function
halide_error_extern_stage_failed:       # @halide_error_extern_stage_failed
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB104_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB104_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.2.70(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.1.69(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r14d, %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	testq	%r12, %r12
	je	.LBB104_3
# BB#4:                                 # %if.else.i.20
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r15, %rdi
	movq	%r12, %rsi
	jmp	.LBB104_5
.LBB104_3:                              # %if.then.i.19
	leaq	.L.str.53(%rip), %rsi
	movq	%r15, %rdi
.LBB104_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end104:
	.size	halide_error_extern_stage_failed, .Lfunc_end104-halide_error_extern_stage_failed

	.section	.text.halide_error_explicit_bounds_too_small,"ax",@progbits
	.weak	halide_error_explicit_bounds_too_small
	.align	16, 0x90
	.type	halide_error_explicit_bounds_too_small,@function
halide_error_explicit_bounds_too_small: # @halide_error_explicit_bounds_too_small
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	je	.LBB105_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r15), %rbx
	movb	$0, 1023(%r15)
.LBB105_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.3.71(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.4.72(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.5.73(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-52(%rbp), %rdx         # 4-byte Folded Reload
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.6.74(%rip), %r12
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	halide_string_to_string@PLT
	movslq	-48(%rbp), %rdx         # 4-byte Folded Reload
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.7.75(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	halide_string_to_string@PLT
	movslq	16(%rbp), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.8.76(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB105_3
# BB#4:                                 # %if.else.i.58
	movl	$1, %edx
	subq	%r15, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	jmp	.LBB105_5
.LBB105_3:                              # %if.then.i.57
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB105_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	halide_free@PLT
	movl	$-2, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end105:
	.size	halide_error_explicit_bounds_too_small, .Lfunc_end105-halide_error_explicit_bounds_too_small

	.section	.text.halide_error_bad_elem_size,"ax",@progbits
	.weak	halide_error_bad_elem_size
	.align	16, 0x90
	.type	halide_error_bad_elem_size,@function
halide_error_bad_elem_size:             # @halide_error_bad_elem_size
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB106_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB106_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.9.77(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.10.78(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-48(%rbp), %rdx         # 4-byte Folded Reload
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.11.79(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	testq	%r12, %r12
	je	.LBB106_3
# BB#4:                                 # %if.else.i.32
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB106_5
.LBB106_3:                              # %if.then.i.31
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB106_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-3, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end106:
	.size	halide_error_bad_elem_size, .Lfunc_end106-halide_error_bad_elem_size

	.section	.text.halide_error_access_out_of_bounds,"ax",@progbits
	.weak	halide_error_access_out_of_bounds
	.align	16, 0x90
	.type	halide_error_access_out_of_bounds,@function
halide_error_access_out_of_bounds:      # @halide_error_access_out_of_bounds
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%r9d, %r13d
	movl	%r8d, %r15d
	movl	%ecx, %r14d
	cmpl	%r13d, %r14d
	jge	.LBB107_6
# BB#1:                                 # %if.then
	movq	%rsi, %r15
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	$1024, %esi             # imm = 0x400
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB107_3
# BB#2:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB107_3:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.12.80(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r14d, %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.13.81(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r13d, %rdx
	jmp	.LBB107_4
.LBB107_6:                              # %if.else
	movl	16(%rbp), %r14d
	cmpl	%r14d, %r15d
	jle	.LBB107_12
# BB#7:                                 # %if.then.8
	movq	%rsi, %r13
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	$1024, %esi             # imm = 0x400
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB107_9
# BB#8:                                 # %if.then.i.61
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB107_9:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit65
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.12.80(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r15d, %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.15.83(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r14d, %rdx
.LBB107_4:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.14.82(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	testq	%r12, %r12
	je	.LBB107_5
# BB#10:                                # %if.else.i.98
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%rbx, %rdi
	movq	%r12, %rsi
	jmp	.LBB107_11
.LBB107_5:                              # %if.then.i.50
	leaq	.L.str.53(%rip), %rsi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
.LBB107_11:                             # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit103
	callq	halide_error@PLT
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
.LBB107_12:                             # %if.end.17
	movl	$-4, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end107:
	.size	halide_error_access_out_of_bounds, .Lfunc_end107-halide_error_access_out_of_bounds

	.section	.text.halide_error_buffer_allocation_too_large,"ax",@progbits
	.weak	halide_error_buffer_allocation_too_large
	.align	16, 0x90
	.type	halide_error_buffer_allocation_too_large,@function
halide_error_buffer_allocation_too_large: # @halide_error_buffer_allocation_too_large
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB108_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB108_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.16.84(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.17.85(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_uint64_to_string@PLT
	leaq	.L.str.18.86(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	halide_uint64_to_string@PLT
	testq	%r12, %r12
	je	.LBB108_3
# BB#4:                                 # %if.else.i.27
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB108_5
.LBB108_3:                              # %if.then.i.26
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB108_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-5, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end108:
	.size	halide_error_buffer_allocation_too_large, .Lfunc_end108-halide_error_buffer_allocation_too_large

	.section	.text.halide_error_buffer_extents_negative,"ax",@progbits
	.weak	halide_error_buffer_extents_negative
	.align	16, 0x90
	.type	halide_error_buffer_extents_negative,@function
halide_error_buffer_extents_negative:   # @halide_error_buffer_extents_negative
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%edx, %r13d
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB109_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB109_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.19.87(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.20.88(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r13d, %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.21.89(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.8.76(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB109_3
# BB#4:                                 # %if.else.i.32
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB109_5
.LBB109_3:                              # %if.then.i.31
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB109_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-28, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end109:
	.size	halide_error_buffer_extents_negative, .Lfunc_end109-halide_error_buffer_extents_negative

	.section	.text.halide_error_buffer_extents_too_large,"ax",@progbits
	.weak	halide_error_buffer_extents_too_large
	.align	16, 0x90
	.type	halide_error_buffer_extents_too_large,@function
halide_error_buffer_extents_too_large:  # @halide_error_buffer_extents_too_large
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB110_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB110_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.22.90(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.17.85(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.18.86(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	halide_int64_to_string@PLT
	testq	%r12, %r12
	je	.LBB110_3
# BB#4:                                 # %if.else.i.27
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB110_5
.LBB110_3:                              # %if.then.i.26
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB110_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-6, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end110:
	.size	halide_error_buffer_extents_too_large, .Lfunc_end110-halide_error_buffer_extents_too_large

	.section	.text.halide_error_constraints_make_required_region_smaller,"ax",@progbits
	.weak	halide_error_constraints_make_required_region_smaller
	.align	16, 0x90
	.type	halide_error_constraints_make_required_region_smaller,@function
halide_error_constraints_make_required_region_smaller: # @halide_error_constraints_make_required_region_smaller
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%r9d, %r13d
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	16(%rbp), %eax
	leal	-1(%r13,%rax), %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	leal	-1(%rcx,%rax), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	je	.LBB111_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r15), %rbx
	movb	$0, 1023(%r15)
.LBB111_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.23.91(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.24.92(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	leaq	.L.str.25.93(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r13d, %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.6.74(%rip), %r13
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	movslq	-60(%rbp), %rdx         # 4-byte Folded Reload
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.26.94(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	leaq	.L.str.27.95(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movslq	%ecx, %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.28(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r15, %r15
	je	.LBB111_3
# BB#4:                                 # %if.else.i.65
	movl	$1, %edx
	subq	%r15, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	jmp	.LBB111_5
.LBB111_3:                              # %if.then.i.64
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB111_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	halide_free@PLT
	movl	$-7, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end111:
	.size	halide_error_constraints_make_required_region_smaller, .Lfunc_end111-halide_error_constraints_make_required_region_smaller

	.section	.text.halide_error_constraint_violated,"ax",@progbits
	.weak	halide_error_constraint_violated
	.align	16, 0x90
	.type	halide_error_constraint_violated,@function
halide_error_constraint_violated:       # @halide_error_constraint_violated
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB112_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB112_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.29(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.30(%rip), %r13
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	movslq	-52(%rbp), %rdx         # 4-byte Folded Reload
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.31(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.8.76(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB112_3
# BB#4:                                 # %if.else.i.40
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB112_5
.LBB112_3:                              # %if.then.i.39
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB112_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-8, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end112:
	.size	halide_error_constraint_violated, .Lfunc_end112-halide_error_constraint_violated

	.section	.text.halide_error_param_too_small_i64,"ax",@progbits
	.weak	halide_error_param_too_small_i64
	.align	16, 0x90
	.type	halide_error_param_too_small_i64,@function
halide_error_param_too_small_i64:       # @halide_error_param_too_small_i64
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB113_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB113_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.32(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.17.85(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.33(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	halide_int64_to_string@PLT
	testq	%r12, %r12
	je	.LBB113_3
# BB#4:                                 # %if.else.i.27
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB113_5
.LBB113_3:                              # %if.then.i.26
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB113_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-9, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end113:
	.size	halide_error_param_too_small_i64, .Lfunc_end113-halide_error_param_too_small_i64

	.section	.text.halide_error_param_too_small_u64,"ax",@progbits
	.weak	halide_error_param_too_small_u64
	.align	16, 0x90
	.type	halide_error_param_too_small_u64,@function
halide_error_param_too_small_u64:       # @halide_error_param_too_small_u64
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB114_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB114_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.32(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.17.85(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_uint64_to_string@PLT
	leaq	.L.str.33(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	halide_uint64_to_string@PLT
	testq	%r12, %r12
	je	.LBB114_3
# BB#4:                                 # %if.else.i.27
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB114_5
.LBB114_3:                              # %if.then.i.26
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB114_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-9, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end114:
	.size	halide_error_param_too_small_u64, .Lfunc_end114-halide_error_param_too_small_u64

	.section	.text.halide_error_param_too_small_f64,"ax",@progbits
	.weak	halide_error_param_too_small_f64
	.align	16, 0x90
	.type	halide_error_param_too_small_f64,@function
halide_error_param_too_small_f64:       # @halide_error_param_too_small_f64
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	vmovsd	%xmm1, -40(%rbp)        # 8-byte Spill
	vmovsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	je	.LBB115_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r15), %rbx
	movb	$0, 1023(%r15)
.LBB115_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.32(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.17.85(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	vmovsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	halide_double_to_string@PLT
	leaq	.L.str.33(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	vmovsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	halide_double_to_string@PLT
	testq	%r15, %r15
	je	.LBB115_3
# BB#4:                                 # %if.else.i.27
	movl	$1, %edx
	subq	%r15, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	jmp	.LBB115_5
.LBB115_3:                              # %if.then.i.26
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB115_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	halide_free@PLT
	movl	$-9, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end115:
	.size	halide_error_param_too_small_f64, .Lfunc_end115-halide_error_param_too_small_f64

	.section	.text.halide_error_param_too_large_i64,"ax",@progbits
	.weak	halide_error_param_too_large_i64
	.align	16, 0x90
	.type	halide_error_param_too_large_i64,@function
halide_error_param_too_large_i64:       # @halide_error_param_too_large_i64
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB116_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB116_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.32(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.17.85(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_int64_to_string@PLT
	leaq	.L.str.34(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	halide_int64_to_string@PLT
	testq	%r12, %r12
	je	.LBB116_3
# BB#4:                                 # %if.else.i.27
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB116_5
.LBB116_3:                              # %if.then.i.26
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB116_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-10, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end116:
	.size	halide_error_param_too_large_i64, .Lfunc_end116-halide_error_param_too_large_i64

	.section	.text.halide_error_param_too_large_u64,"ax",@progbits
	.weak	halide_error_param_too_large_u64
	.align	16, 0x90
	.type	halide_error_param_too_large_u64,@function
halide_error_param_too_large_u64:       # @halide_error_param_too_large_u64
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB117_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB117_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.32(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.17.85(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_uint64_to_string@PLT
	leaq	.L.str.34(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	halide_uint64_to_string@PLT
	testq	%r12, %r12
	je	.LBB117_3
# BB#4:                                 # %if.else.i.27
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB117_5
.LBB117_3:                              # %if.then.i.26
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB117_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-10, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end117:
	.size	halide_error_param_too_large_u64, .Lfunc_end117-halide_error_param_too_large_u64

	.section	.text.halide_error_param_too_large_f64,"ax",@progbits
	.weak	halide_error_param_too_large_f64
	.align	16, 0x90
	.type	halide_error_param_too_large_f64,@function
halide_error_param_too_large_f64:       # @halide_error_param_too_large_f64
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	vmovsd	%xmm1, -40(%rbp)        # 8-byte Spill
	vmovsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	je	.LBB118_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r15), %rbx
	movb	$0, 1023(%r15)
.LBB118_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.32(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.17.85(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	vmovsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	halide_double_to_string@PLT
	leaq	.L.str.34(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	vmovsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	halide_double_to_string@PLT
	testq	%r15, %r15
	je	.LBB118_3
# BB#4:                                 # %if.else.i.27
	movl	$1, %edx
	subq	%r15, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	jmp	.LBB118_5
.LBB118_3:                              # %if.then.i.26
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB118_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	halide_free@PLT
	movl	$-10, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end118:
	.size	halide_error_param_too_large_f64, .Lfunc_end118-halide_error_param_too_large_f64

	.section	.text.halide_error_out_of_memory,"ax",@progbits
	.weak	halide_error_out_of_memory
	.align	16, 0x90
	.type	halide_error_out_of_memory,@function
halide_error_out_of_memory:             # @halide_error_out_of_memory
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str.35(%rip), %rsi
	callq	halide_error@PLT
	movl	$-11, %eax
	popq	%rbp
	retq
.Lfunc_end119:
	.size	halide_error_out_of_memory, .Lfunc_end119-halide_error_out_of_memory

	.section	.text.halide_error_buffer_argument_is_null,"ax",@progbits
	.weak	halide_error_buffer_argument_is_null
	.align	16, 0x90
	.type	halide_error_buffer_argument_is_null,@function
halide_error_buffer_argument_is_null:   # @halide_error_buffer_argument_is_null
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB120_2
# BB#1:                                 # %if.then.i
	leaq	1023(%rbx), %r12
	movb	$0, 1023(%rbx)
.LBB120_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.36(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.37.96(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	halide_string_to_string@PLT
	testq	%rbx, %rbx
	je	.LBB120_3
# BB#4:                                 # %if.else.i.15
	movl	$1, %edx
	subq	%rbx, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB120_5
.LBB120_3:                              # %if.then.i.14
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB120_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	halide_free@PLT
	movl	$-12, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end120:
	.size	halide_error_buffer_argument_is_null, .Lfunc_end120-halide_error_buffer_argument_is_null

	.section	.text.halide_error_debug_to_file_failed,"ax",@progbits
	.weak	halide_error_debug_to_file_failed
	.align	16, 0x90
	.type	halide_error_debug_to_file_failed,@function
halide_error_debug_to_file_failed:      # @halide_error_debug_to_file_failed
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB121_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB121_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.38(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.39(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.40.97(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	testq	%r12, %r12
	je	.LBB121_3
# BB#4:                                 # %if.else.i.27
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB121_5
.LBB121_3:                              # %if.then.i.26
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB121_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-13, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end121:
	.size	halide_error_debug_to_file_failed, .Lfunc_end121-halide_error_debug_to_file_failed

	.section	.text.halide_error_unaligned_host_ptr,"ax",@progbits
	.weak	halide_error_unaligned_host_ptr
	.align	16, 0x90
	.type	halide_error_unaligned_host_ptr,@function
halide_error_unaligned_host_ptr:        # @halide_error_unaligned_host_ptr
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r15d
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB122_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB122_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.41(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.42.98(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r15d, %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.43(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB122_3
# BB#4:                                 # %if.else.i.23
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB122_5
.LBB122_3:                              # %if.then.i.22
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB122_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-24, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end122:
	.size	halide_error_unaligned_host_ptr, .Lfunc_end122-halide_error_unaligned_host_ptr

	.section	.text.halide_error_bad_fold,"ax",@progbits
	.weak	halide_error_bad_fold
	.align	16, 0x90
	.type	halide_error_bad_fold,@function
halide_error_bad_fold:                  # @halide_error_bad_fold
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB123_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB123_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.44.99(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.45.100(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.46(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	halide_string_to_string@PLT
	leaq	.L.str.28(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB123_3
# BB#4:                                 # %if.else.i.31
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB123_5
.LBB123_3:                              # %if.then.i.30
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB123_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-25, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end123:
	.size	halide_error_bad_fold, .Lfunc_end123-halide_error_bad_fold

	.section	.text.halide_error_fold_factor_too_small,"ax",@progbits
	.weak	halide_error_fold_factor_too_small
	.align	16, 0x90
	.type	halide_error_fold_factor_too_small,@function
halide_error_fold_factor_too_small:     # @halide_error_fold_factor_too_small
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movl	%ecx, %r15d
	movq	%rdx, %r13
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB124_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB124_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.47(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	%r15d, %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.48(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.45.100(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	halide_string_to_string@PLT
	leaq	.L.str.49(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	halide_string_to_string@PLT
	leaq	.L.str.30(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_int64_to_string@PLT
	leaq	.L.str.50(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB124_3
# BB#4:                                 # %if.else.i.48
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB124_5
.LBB124_3:                              # %if.then.i.47
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB124_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-26, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end124:
	.size	halide_error_fold_factor_too_small, .Lfunc_end124-halide_error_fold_factor_too_small

	.section	.text.halide_error_requirement_failed,"ax",@progbits
	.weak	halide_error_requirement_failed
	.align	16, 0x90
	.type	halide_error_requirement_failed,@function
halide_error_requirement_failed:        # @halide_error_requirement_failed
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$1024, %esi             # imm = 0x400
	callq	halide_malloc@PLT
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB125_2
# BB#1:                                 # %if.then.i
	leaq	1023(%r12), %rbx
	movb	$0, 1023(%r12)
.LBB125_2:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	leaq	.L.str.51(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	halide_string_to_string@PLT
	leaq	.L.str.52(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	halide_string_to_string@PLT
	testq	%r12, %r12
	je	.LBB125_3
# BB#4:                                 # %if.else.i.19
	movl	$1, %edx
	subq	%r12, %rdx
	addq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_msan_annotate_memory_is_initialized@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	jmp	.LBB125_5
.LBB125_3:                              # %if.then.i.18
	leaq	.L.str.53(%rip), %rsi
	movq	%r14, %rdi
.LBB125_5:                              # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	callq	halide_error@PLT
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	halide_free@PLT
	movl	$-27, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end125:
	.size	halide_error_requirement_failed, .Lfunc_end125-halide_error_requirement_failed

	.section	.text.halide_profiler_get_state,"ax",@progbits
	.weak	halide_profiler_get_state
	.align	16, 0x90
	.type	halide_profiler_get_state,@function
halide_profiler_get_state:              # @halide_profiler_get_state
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_ZZ25halide_profiler_get_stateE1s(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end126:
	.size	halide_profiler_get_state, .Lfunc_end126-halide_profiler_get_state

	.section	.text._ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy,@function
_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy: # @_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r12
	movl	%esi, %r13d
	movq	%rdi, %rbx
	callq	halide_profiler_get_state@PLT
	movq	%rax, %r14
	movq	80(%r14), %rax
	jmp	.LBB127_1
	.align	16, 0x90
.LBB127_4:                              # %for.inc
                                        #   in Loop: Header=BB127_1 Depth=1
	movq	64(%rax), %rax
.LBB127_1:                              # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB127_5
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB127_1 Depth=1
	cmpq	%rbx, 48(%rax)
	jne	.LBB127_4
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB127_1 Depth=1
	cmpl	%r13d, 72(%rax)
	jne	.LBB127_4
	jmp	.LBB127_16
.LBB127_5:                              # %for.end.critedge
	movl	$96, %edi
	callq	malloc@PLT
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB127_16
# BB#6:                                 # %if.end.7
	movq	80(%r14), %rax
	movq	%rax, 64(%r15)
	movq	%rbx, 48(%r15)
	movl	68(%r14), %eax
	movl	%eax, 76(%r15)
	movl	%r13d, 72(%r15)
	movl	$0, 80(%r15)
	movl	$0, 84(%r15)
	movl	$0, 88(%r15)
	movslq	%r13d, %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,8), %rdi
	vxorps	%ymm0, %ymm0, %ymm0
	vmovups	%ymm0, 16(%r15)
	vmovups	%ymm0, (%r15)
	vzeroupper
	callq	malloc@PLT
	movq	%rax, 56(%r15)
	testq	%rax, %rax
	je	.LBB127_15
# BB#7:                                 # %for.cond.17.preheader
	testl	%r13d, %r13d
	jle	.LBB127_14
# BB#8:                                 # %for.body.20.preheader
	leal	-1(%r13), %r8d
	xorl	%ecx, %ecx
	testb	$3, %r13b
	je	.LBB127_11
# BB#9:                                 # %for.body.20.prol.preheader
	movl	%r13d, %esi
	andl	$3, %esi
	negl	%esi
	xorl	%ecx, %ecx
	vxorps	%ymm0, %ymm0, %ymm0
	movq	%r12, %rdi
	movq	%rax, %rbx
	.align	16, 0x90
.LBB127_10:                             # %for.body.20.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rbx)
	movq	(%rdi), %rdx
	movq	%rdx, 56(%rbx)
	movl	$0, 64(%rbx)
	addq	$1, %rcx
	vmovups	%ymm0, 24(%rbx)
	vmovups	%ymm0, 8(%rbx)
	addq	$72, %rbx
	addq	$8, %rdi
	addl	$1, %esi
	jne	.LBB127_10
.LBB127_11:                             # %for.body.20.preheader.split
	cmpl	$3, %r8d
	jb	.LBB127_14
# BB#12:                                # %for.body.20.preheader.split.split
	movl	%r13d, %edx
	subl	%ecx, %edx
	leaq	(%rcx,%rcx,8), %rsi
	leaq	(%rax,%rsi,8), %rax
	leaq	(%r12,%rcx,8), %rcx
	vxorps	%ymm0, %ymm0, %ymm0
	.align	16, 0x90
.LBB127_13:                             # %for.body.20
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	movq	(%rcx), %rsi
	movq	%rsi, 56(%rax)
	movl	$0, 64(%rax)
	vmovups	%ymm0, 24(%rax)
	vmovups	%ymm0, 8(%rax)
	movq	$0, 72(%rax)
	movq	8(%rcx), %rsi
	movq	%rsi, 128(%rax)
	movl	$0, 136(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 80(%rax)
	movq	$0, 144(%rax)
	movq	16(%rcx), %rsi
	movq	%rsi, 200(%rax)
	movl	$0, 208(%rax)
	vmovups	%ymm0, 168(%rax)
	vmovups	%ymm0, 152(%rax)
	movq	$0, 216(%rax)
	movq	24(%rcx), %rsi
	movq	%rsi, 272(%rax)
	movl	$0, 280(%rax)
	vmovups	%ymm0, 240(%rax)
	vmovups	%ymm0, 224(%rax)
	addq	$288, %rax              # imm = 0x120
	addq	$32, %rcx
	addl	$-4, %edx
	jne	.LBB127_13
.LBB127_14:                             # %for.cond.cleanup.19
	addl	%r13d, 68(%r14)
	movq	%r15, 80(%r14)
	movq	%r15, %rax
	jmp	.LBB127_16
.LBB127_15:                             # %if.then.15
	movq	%r15, %rdi
	callq	free@PLT
	xorl	%eax, %eax
.LBB127_16:                             # %cleanup.62
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end127:
	.size	_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy, .Lfunc_end127-_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy

	.section	.text._ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi,@function
_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi: # @_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	80(%rdi), %r8
	xorl	%r9d, %r9d
	testq	%r8, %r8
	je	.LBB128_8
# BB#1:
	movq	%r8, %rax
	.align	16, 0x90
.LBB128_2:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r11
	movslq	76(%r11), %r10
	cmpl	%esi, %r10d
	jg	.LBB128_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB128_2 Depth=1
	movl	72(%r11), %eax
	addl	%r10d, %eax
	cmpl	%esi, %eax
	jg	.LBB128_4
.LBB128_7:                              # %if.end.23
                                        #   in Loop: Header=BB128_2 Depth=1
	movq	64(%r11), %rax
	movq	%r11, %r9
	testq	%rax, %rax
	jne	.LBB128_2
.LBB128_8:                              # %cleanup.25
	popq	%rbp
	retq
.LBB128_4:                              # %if.then
	testq	%r9, %r9
	je	.LBB128_6
# BB#5:                                 # %if.then.4
	movq	64(%r11), %rax
	movq	%rax, 64(%r9)
	movq	%r8, 64(%r11)
	movq	%r11, 80(%rdi)
.LBB128_6:                              # %if.end
	movslq	%esi, %rax
	leaq	(%rax,%rax,8), %rax
	shlq	$3, %rax
	addq	56(%r11), %rax
	negq	%r10
	leaq	(%r10,%r10,8), %rsi
	addq	%rdx, (%rax,%rsi,8)
	movslq	%ecx, %rcx
	movl	$1, %edi
	vmovq	%rdi, %xmm0
	vmovq	%rcx, %xmm1
	vpunpcklqdq	%xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0]
	vpaddq	40(%rax,%rsi,8), %xmm0, %xmm1
	vmovdqu	%xmm1, 40(%rax,%rsi,8)
	addq	%rdx, (%r11)
	incl	84(%r11)
	vpaddq	32(%r11), %xmm0, %xmm0
	vmovdqu	%xmm0, 32(%r11)
	popq	%rbp
	retq
.Lfunc_end128:
	.size	_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi, .Lfunc_end128-_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi

	.section	.text._ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv,@function
_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv: # @_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	callq	halide_profiler_get_state@PLT
	movq	%rax, %r13
	movq	%r13, %rdi
	callq	halide_mutex_lock@PLT
	cmpl	$-2, 72(%r13)
	je	.LBB129_11
# BB#1:                                 # %while.body.lr.ph
	leaq	-44(%rbp), %r14
	leaq	-48(%rbp), %r15
	.align	16, 0x90
.LBB129_2:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB129_3 Depth 2
	xorl	%edi, %edi
	callq	halide_current_time_ns@PLT
	movq	%rax, %r12
	jmp	.LBB129_3
	.align	16, 0x90
.LBB129_9:                              # %cleanup.thread
                                        #   in Loop: Header=BB129_3 Depth=2
	movl	64(%r13), %r12d
	movq	%r13, %rdi
	callq	halide_mutex_unlock@PLT
	xorl	%edi, %edi
	movl	%r12d, %esi
	callq	halide_sleep_ms@PLT
	movq	%r13, %rdi
	callq	halide_mutex_lock@PLT
	movq	%rbx, %r12
.LBB129_3:                              # %while.body.3
                                        #   Parent Loop BB129_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	88(%r13), %rax
	testq	%rax, %rax
	je	.LBB129_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB129_3 Depth=2
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*%rax
	jmp	.LBB129_6
	.align	16, 0x90
.LBB129_5:                              # %if.else
                                        #   in Loop: Header=BB129_3 Depth=2
	movl	72(%r13), %eax
	movl	%eax, -44(%rbp)
	movl	76(%r13), %eax
	movl	%eax, -48(%rbp)
.LBB129_6:                              # %if.end
                                        #   in Loop: Header=BB129_3 Depth=2
	xorl	%edi, %edi
	callq	halide_current_time_ns@PLT
	movq	%rax, %rbx
	movl	-44(%rbp), %esi
	cmpl	$-2, %esi
	je	.LBB129_10
# BB#7:                                 # %if.else.10
                                        #   in Loop: Header=BB129_3 Depth=2
	testl	%esi, %esi
	js	.LBB129_9
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB129_3 Depth=2
	movq	%rbx, %rdx
	subq	%r12, %rdx
	movl	-48(%rbp), %ecx
	movq	%r13, %rdi
	callq	_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi@PLT
	jmp	.LBB129_9
	.align	16, 0x90
.LBB129_10:                             # %cleanup
                                        #   in Loop: Header=BB129_2 Depth=1
	cmpl	$-2, 72(%r13)
	jne	.LBB129_2
.LBB129_11:                             # %while.end.19
	movb	$0, 96(%r13)
	movq	%r13, %rdi
	callq	halide_mutex_unlock@PLT
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end129:
	.size	_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv, .Lfunc_end129-_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv

	.section	.text.halide_profiler_get_pipeline_state,"ax",@progbits
	.weak	halide_profiler_get_pipeline_state
	.align	16, 0x90
	.type	halide_profiler_get_pipeline_state,@function
halide_profiler_get_pipeline_state:     # @halide_profiler_get_pipeline_state
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	halide_profiler_get_state@PLT
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	halide_mutex_lock@PLT
	movq	80(%r14), %rax
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB130_5
# BB#1:
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB130_2:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, 48(%rax)
	je	.LBB130_3
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB130_2 Depth=1
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.LBB130_2
	jmp	.LBB130_5
.LBB130_3:
	movq	%rax, %r15
.LBB130_5:                              # %cleanup
	movq	%r14, %rdi
	callq	halide_mutex_unlock@PLT
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end130:
	.size	halide_profiler_get_pipeline_state, .Lfunc_end130-halide_profiler_get_pipeline_state

	.section	.text.halide_profiler_pipeline_start,"ax",@progbits
	.weak	halide_profiler_pipeline_start
	.align	16, 0x90
	.type	halide_profiler_pipeline_start,@function
halide_profiler_pipeline_start:         # @halide_profiler_pipeline_start
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r15
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %r14
	callq	halide_profiler_get_state@PLT
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	halide_mutex_lock@PLT
	cmpb	$0, 96(%rbx)
	jne	.LBB131_2
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	callq	halide_start_clock@PLT
	movq	_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv@GOTPCREL(%rip), %rdi
	xorl	%esi, %esi
	callq	halide_spawn_thread@PLT
	movb	$1, 96(%rbx)
.LBB131_2:                              # %if.end
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	callq	_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy@PLT
	testq	%rax, %rax
	je	.LBB131_3
# BB#4:                                 # %if.end.9
	incl	80(%rax)
	movl	76(%rax), %r14d
	jmp	.LBB131_5
.LBB131_3:                              # %if.then.7
	movq	%r14, %rdi
	callq	halide_error_out_of_memory@PLT
	movl	%eax, %r14d
.LBB131_5:                              # %cleanup
	movq	%rbx, %rdi
	callq	halide_mutex_unlock@PLT
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end131:
	.size	halide_profiler_pipeline_start, .Lfunc_end131-halide_profiler_pipeline_start

	.section	.text.halide_profiler_stack_peak_update,"ax",@progbits
	.weak	halide_profiler_stack_peak_update
	.align	16, 0x90
	.type	halide_profiler_stack_peak_update,@function
halide_profiler_stack_peak_update:      # @halide_profiler_stack_peak_update
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %rbx
	testq	%rbx, %rbx
	jne	.LBB132_2
# BB#1:                                 # %if.then
	leaq	.L.str.102(%rip), %rsi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB132_2:                              # %for.cond.preheader
	movl	72(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB132_10
# BB#3:                                 # %for.body.lr.ph
	xorl	%edx, %edx
	.align	16, 0x90
.LBB132_4:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB132_6 Depth 2
	movq	(%r14,%rdx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB132_9
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB132_4 Depth=1
	movq	56(%rbx), %rax
	leaq	(%rdx,%rdx,8), %rcx
	leaq	32(%rax,%rcx,8), %rdi
	movq	32(%rax,%rcx,8), %rcx
	.align	16, 0x90
.LBB132_6:                              # %while.cond.i
                                        #   Parent Loop BB132_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rsi, %rcx
	jae	.LBB132_8
# BB#7:                                 # %while.body.i
                                        #   in Loop: Header=BB132_6 Depth=2
	movq	%rcx, %rax
	lock		cmpxchgq	%rsi, (%rdi)
	cmpq	%rax, %rcx
	movq	%rax, %rcx
	jne	.LBB132_6
.LBB132_8:                              # %for.inc.loopexit
                                        #   in Loop: Header=BB132_4 Depth=1
	movl	72(%rbx), %eax
.LBB132_9:                              # %for.inc
                                        #   in Loop: Header=BB132_4 Depth=1
	addq	$1, %rdx
	movslq	%eax, %rcx
	cmpq	%rcx, %rdx
	jl	.LBB132_4
.LBB132_10:                             # %for.cond.cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end132:
	.size	halide_profiler_stack_peak_update, .Lfunc_end132-halide_profiler_stack_peak_update

	.section	.text.halide_profiler_memory_allocate,"ax",@progbits
	.weak	halide_profiler_memory_allocate
	.align	16, 0x90
	.type	halide_profiler_memory_allocate,@function
halide_profiler_memory_allocate:        # @halide_profiler_memory_allocate
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testq	%r14, %r14
	je	.LBB133_13
# BB#1:                                 # %if.end
	testq	%rbx, %rbx
	jne	.LBB133_3
# BB#2:                                 # %if.then.2
	leaq	.L.str.1.103(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB133_3:                              # %if.end.3
	testl	%r15d, %r15d
	jns	.LBB133_5
# BB#4:                                 # %if.then.5
	leaq	.L.str.2.104(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB133_5:                              # %if.end.6
	cmpl	%r15d, 72(%rbx)
	jg	.LBB133_7
# BB#6:                                 # %if.then.8
	leaq	.L.str.3.105(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB133_7:                              # %if.end.9
	movq	56(%rbx), %rdx
	lock		addl	$1, 88(%rbx)
	lock		addq	%r14, 24(%rbx)
	movq	%r14, %rsi
	lock		xaddq	%rsi, 8(%rbx)
	movslq	%r15d, %rdi
	addq	%r14, %rsi
	movq	16(%rbx), %rcx
	addq	$16, %rbx
	.align	16, 0x90
.LBB133_8:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rcx
	jae	.LBB133_10
# BB#9:                                 # %while.body.i
                                        #   in Loop: Header=BB133_8 Depth=1
	movq	%rcx, %rax
	lock		cmpxchgq	%rsi, (%rbx)
	cmpq	%rax, %rcx
	movq	%rax, %rcx
	jne	.LBB133_8
.LBB133_10:                             # %_ZN12_GLOBAL__N_125sync_compare_max_and_swapIyEEvPT_S1_.exit
	leaq	(%rdi,%rdi,8), %rax
	lock		addl	$1, 64(%rdx,%rax,8)
	lock		addq	%r14, 24(%rdx,%rax,8)
	movq	%r14, %rsi
	lock		xaddq	%rsi, 8(%rdx,%rax,8)
	addq	%r14, %rsi
	leaq	16(%rdx,%rax,8), %rdi
	movq	16(%rdx,%rax,8), %rcx
	.align	16, 0x90
.LBB133_11:                             # %while.cond.i.37
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rcx
	jae	.LBB133_13
# BB#12:                                # %while.body.i.39
                                        #   in Loop: Header=BB133_11 Depth=1
	movq	%rcx, %rax
	lock		cmpxchgq	%rsi, (%rdi)
	cmpq	%rax, %rcx
	movq	%rax, %rcx
	jne	.LBB133_11
.LBB133_13:                             # %return
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end133:
	.size	halide_profiler_memory_allocate, .Lfunc_end133-halide_profiler_memory_allocate

	.section	.text.halide_profiler_memory_free,"ax",@progbits
	.weak	halide_profiler_memory_free
	.align	16, 0x90
	.type	halide_profiler_memory_free,@function
halide_profiler_memory_free:            # @halide_profiler_memory_free
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %rbx
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	testq	%rbx, %rbx
	je	.LBB134_8
# BB#1:                                 # %if.end
	testq	%r15, %r15
	jne	.LBB134_3
# BB#2:                                 # %if.then.2
	leaq	.L.str.4.106(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB134_3:                              # %if.end.3
	testl	%r14d, %r14d
	jns	.LBB134_5
# BB#4:                                 # %if.then.5
	leaq	.L.str.5.107(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB134_5:                              # %if.end.6
	cmpl	%r14d, 72(%r15)
	jg	.LBB134_7
# BB#6:                                 # %if.then.8
	leaq	.L.str.6.108(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB134_7:                              # %if.end.9
	movq	56(%r15), %rax
	negq	%rbx
	lock		addq	%rbx, 8(%r15)
	movslq	%r14d, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	lock		addq	%rbx, 8(%rax,%rcx,8)
.LBB134_8:                              # %return
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end134:
	.size	halide_profiler_memory_free, .Lfunc_end134-halide_profiler_memory_free

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI135_0:
	.long	1232348160              # float 1.0E+6
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI135_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI135_2:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI135_3:
	.quad	4457293557087583675     # double 1.0E-10
	.section	.text.halide_profiler_report_unlocked,"ax",@progbits
	.weak	halide_profiler_report_unlocked
	.align	16, 0x90
	.type	halide_profiler_report_unlocked,@function
halide_profiler_report_unlocked:        # @halide_profiler_report_unlocked
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1144, %rsp             # imm = 0x478
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	leaq	-1064(%rbp), %rbx
	movb	$0, -41(%rbp)
	movq	80(%rsi), %r13
	testq	%r13, %r13
	je	.LBB135_50
# BB#1:
	leaq	-41(%rbp), %r15
	leaq	-1064(%rbp), %r12
	leaq	.L.str.20.122(%rip), %r14
	leaq	-1064(%rbp), %rbx
	.align	16, 0x90
.LBB135_2:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB135_13 Depth 2
                                        #     Child Loop BB135_16 Depth 2
                                        #       Child Loop BB135_19 Depth 3
                                        #       Child Loop BB135_26 Depth 3
                                        #       Child Loop BB135_30 Depth 3
                                        #       Child Loop BB135_35 Depth 3
                                        #       Child Loop BB135_41 Depth 3
                                        #       Child Loop BB135_43 Depth 3
	movq	%r13, -1072(%rbp)       # 8-byte Spill
	movq	(%r13), %rax
	movl	%eax, %ecx
	andl	$1, %ecx
	testq	%rax, %rax
	js	.LBB135_3
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB135_2 Depth=1
	vcvtsi2ssq	%rax, %xmm0, %xmm0
	jmp	.LBB135_5
	.align	16, 0x90
.LBB135_3:                              #   in Loop: Header=BB135_2 Depth=1
	shrq	%rax
	orq	%rax, %rcx
	vcvtsi2ssq	%rcx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
.LBB135_5:                              # %for.body
                                        #   in Loop: Header=BB135_2 Depth=1
	cmpl	$0, 80(%r13)
	je	.LBB135_49
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB135_2 Depth=1
	vdivss	.LCPI135_0(%rip), %xmm0, %xmm0
	vmovss	%xmm0, -1080(%rbp)      # 4-byte Spill
	movb	$0, -1064(%rbp)
	movq	32(%r13), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	movq	40(%r13), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	movq	48(%r13), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.7.109(%rip), %rbx
	movq	%rbx, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.8.110(%rip), %rdx
	callq	halide_string_to_string@PLT
	vmovss	-1080(%rbp), %xmm0      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_double_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.9.111(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.10.112(%rip), %rdx
	callq	halide_string_to_string@PLT
	movslq	84(%r13), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.11.113(%rip), %rdx
	callq	halide_string_to_string@PLT
	movslq	80(%r13), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.12.114(%rip), %rdx
	callq	halide_string_to_string@PLT
	vcvtsi2ssl	80(%r13), %xmm0, %xmm0
	vmovss	-1080(%rbp), %xmm1      # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vdivss	%xmm0, %xmm1, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_double_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.13.115(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	-1128(%rbp), %rdx       # 8-byte Reload
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	cmpq	%rdx, %rcx
	je	.LBB135_8
# BB#7:                                 # %if.then.31
                                        #   in Loop: Header=BB135_2 Depth=1
	vmovq	%rcx, %xmm0
	vmovdqa	.LCPI135_1(%rip), %xmm1 # xmm1 = [1127219200,1160773632,0,0]
	vmovdqa	%xmm1, %xmm2
	vpunpckldq	%xmm2, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	vmovapd	.LCPI135_2(%rip), %xmm1 # xmm1 = [4.503600e+15,1.934281e+25]
	vmovapd	%xmm1, %xmm3
	vsubpd	%xmm3, %xmm0, %xmm0
	vhaddpd	%xmm0, %xmm0, %xmm0
	vmovq	%rdx, %xmm1
	vpunpckldq	%xmm2, %xmm1, %xmm1 # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	vsubpd	%xmm3, %xmm1, %xmm1
	vhaddpd	%xmm1, %xmm1, %xmm1
	vaddsd	.LCPI135_3(%rip), %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -1080(%rbp)      # 4-byte Spill
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.14.116(%rip), %rdx
	callq	halide_string_to_string@PLT
	vmovss	-1080(%rbp), %xmm0      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_double_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	halide_string_to_string@PLT
.LBB135_8:                              # %if.end.35
                                        #   in Loop: Header=BB135_2 Depth=1
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.15.117(%rip), %rdx
	callq	halide_string_to_string@PLT
	movslq	88(%r13), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.16.118(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	16(%r13), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_uint64_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.17.119(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rbx
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%r12, %rsi
	callq	halide_print@PLT
	cmpq	$0, (%r13)
	jne	.LBB135_14
# BB#9:                                 # %lor.end
                                        #   in Loop: Header=BB135_2 Depth=1
	cmpq	$0, 24(%r13)
	jne	.LBB135_14
# BB#10:                                # %for.cond.50.preheader
                                        #   in Loop: Header=BB135_2 Depth=1
	movslq	72(%r13), %rax
	testq	%rax, %rax
	jle	.LBB135_49
# BB#11:                                # %for.body.53.lr.ph
                                        #   in Loop: Header=BB135_2 Depth=1
	movq	56(%r13), %rcx
	addq	$32, %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB135_13:                             # %for.body.53
                                        #   Parent Loop BB135_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, (%rcx)
	jne	.LBB135_14
# BB#12:                                # %for.cond.50
                                        #   in Loop: Header=BB135_13 Depth=2
	addq	$1, %rdx
	addq	$72, %rcx
	cmpq	%rax, %rdx
	jl	.LBB135_13
	jmp	.LBB135_49
	.align	16, 0x90
.LBB135_14:                             # %for.cond.62.preheader
                                        #   in Loop: Header=BB135_2 Depth=1
	cmpl	$0, 72(%r13)
	jle	.LBB135_49
# BB#15:                                # %if.then.i.352.lr.ph
                                        #   in Loop: Header=BB135_2 Depth=1
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB135_16:                             # %if.then.i.352
                                        #   Parent Loop BB135_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB135_19 Depth 3
                                        #       Child Loop BB135_26 Depth 3
                                        #       Child Loop BB135_30 Depth 3
                                        #       Child Loop BB135_35 Depth 3
                                        #       Child Loop BB135_41 Depth 3
                                        #       Child Loop BB135_43 Depth 3
	movb	$0, -1064(%rbp)
	movq	56(%r13), %rax
	leaq	(%rcx,%rcx,8), %r8
	leaq	(%rax,%r8,8), %rdx
	testl	%ecx, %ecx
	jne	.LBB135_18
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB135_16 Depth=2
	cmpq	$0, (%rdx)
	movq	%r12, %rbx
	je	.LBB135_48
.LBB135_18:                             # %if.end.75
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	%rdx, -1088(%rbp)       # 8-byte Spill
	movq	%rcx, -1096(%rbp)       # 8-byte Spill
	movq	%rax, %r13
	movq	%r12, %rdi
	movq	%r15, %rsi
	leaq	.L.str.18.120(%rip), %rdx
	movq	%r8, %rbx
	movq	%rbx, -1080(%rbp)       # 8-byte Spill
	callq	halide_string_to_string@PLT
	movq	56(%r13,%rbx,8), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.19.121(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rcx
	subq	%r12, %rcx
	cmpq	$24, %rcx
	ja	.LBB135_20
	.align	16, 0x90
.LBB135_19:                             # %while.body
                                        #   Parent Loop BB135_2 Depth=1
                                        #     Parent Loop BB135_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rcx
	subq	%r12, %rcx
	cmpq	$25, %rcx
	jb	.LBB135_19
.LBB135_20:                             # %while.end
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	movq	(%rcx), %rcx
	movl	%ecx, %edx
	andl	$1, %edx
	testq	%rcx, %rcx
	js	.LBB135_21
# BB#22:                                # %while.end
                                        #   in Loop: Header=BB135_16 Depth=2
	vcvtsi2ssq	%rcx, %xmm0, %xmm0
	jmp	.LBB135_23
	.align	16, 0x90
.LBB135_21:                             #   in Loop: Header=BB135_16 Depth=2
	shrq	%rcx
	orq	%rcx, %rdx
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
.LBB135_23:                             # %while.end
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	vcvtsi2ssl	80(%rcx), %xmm0, %xmm1
	vmulss	.LCPI135_0(%rip), %xmm1, %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_double_to_string@PLT
	movl	$0, %edi
	testq	%rax, %rax
	je	.LBB135_25
# BB#24:                                # %if.then.i.382
                                        #   in Loop: Header=BB135_16 Depth=2
	addq	$-3, %rax
	cmpq	%r12, %rax
	cmovbq	%r12, %rax
	movb	$0, (%rax)
	movq	%rax, %rdi
.LBB135_25:                             # %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5eraseEi.exit
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	%r15, %rsi
	leaq	.L.str.21.123(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rcx
	subq	%r12, %rax
	cmpq	$34, %rax
	ja	.LBB135_27
	.align	16, 0x90
.LBB135_26:                             # %while.body.95
                                        #   Parent Loop BB135_2 Depth=1
                                        #     Parent Loop BB135_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rcx
	subq	%r12, %rax
	cmpq	$35, %rax
	jb	.LBB135_26
.LBB135_27:                             # %while.end.97
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rsi
	movl	$0, %ebx
	testq	%rsi, %rsi
	je	.LBB135_29
# BB#28:                                # %if.then.100
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	-1088(%rbp), %rax       # 8-byte Reload
	imulq	$100, (%rax), %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rax, %rbx
.LBB135_29:                             # %if.end.106
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	%rcx, %rdi
	movq	%r15, %rsi
	leaq	.L.str.22.124(%rip), %rdx
	callq	halide_string_to_string@PLT
	movslq	%ebx, %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.23.125(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rcx
	subq	%r12, %rax
	cmpq	$42, %rax
	ja	.LBB135_31
	.align	16, 0x90
.LBB135_30:                             # %while.body.114
                                        #   Parent Loop BB135_2 Depth=1
                                        #     Parent Loop BB135_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rcx
	subq	%r12, %rax
	cmpq	$43, %rax
	jb	.LBB135_30
.LBB135_31:                             # %while.end.116
                                        #   in Loop: Header=BB135_16 Depth=2
	movl	$58, %ebx
	movq	-1128(%rbp), %rax       # 8-byte Reload
	cmpq	%rax, -1120(%rbp)       # 8-byte Folded Reload
	je	.LBB135_36
# BB#32:                                # %if.then.118
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	-1080(%rbp), %rax       # 8-byte Reload
	vmovq	40(%r13,%rax,8), %xmm0  # xmm0 = mem[0],zero
	vmovdqa	.LCPI135_1(%rip), %xmm1 # xmm1 = [1127219200,1160773632,0,0]
	vmovdqa	%xmm1, %xmm2
	vpunpckldq	%xmm2, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	vmovapd	.LCPI135_2(%rip), %xmm1 # xmm1 = [4.503600e+15,1.934281e+25]
	vmovapd	%xmm1, %xmm3
	vsubpd	%xmm3, %xmm0, %xmm0
	vhaddpd	%xmm0, %xmm0, %xmm0
	vmovq	48(%r13,%rax,8), %xmm1  # xmm1 = mem[0],zero
	vpunpckldq	%xmm2, %xmm1, %xmm1 # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	vsubpd	%xmm3, %xmm1, %xmm1
	vhaddpd	%xmm1, %xmm1, %xmm1
	vaddsd	.LCPI135_3(%rip), %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -1088(%rbp)      # 4-byte Spill
	movq	%rcx, %rdi
	movq	%r15, %rsi
	leaq	.L.str.24.126(%rip), %rdx
	callq	halide_string_to_string@PLT
	vmovss	-1088(%rbp), %xmm0      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_double_to_string@PLT
	movl	$0, %ecx
	testq	%rax, %rax
	je	.LBB135_34
# BB#33:                                # %if.then.i.429
                                        #   in Loop: Header=BB135_16 Depth=2
	addq	$-3, %rax
	cmpq	%r12, %rax
	cmovbq	%r12, %rax
	movb	$0, (%rax)
	movq	%rax, %rcx
.LBB135_34:                             # %while.cond.130.preheader
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	%rcx, %rax
	subq	%r12, %rax
	movl	$73, %ebx
	cmpq	$57, %rax
	ja	.LBB135_36
	.align	16, 0x90
.LBB135_35:                             # %while.body.133
                                        #   Parent Loop BB135_2 Depth=1
                                        #     Parent Loop BB135_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rcx
	subq	%r12, %rax
	movl	$73, %ebx
	cmpq	$58, %rax
	jb	.LBB135_35
.LBB135_36:                             # %if.end.136
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	%r13, %rdi
	movq	-1080(%rbp), %rsi       # 8-byte Reload
	movslq	64(%rdi,%rsi,8), %r8
	movl	$0, %eax
	testq	%r8, %r8
	je	.LBB135_38
# BB#37:                                # %if.then.140
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	24(%rdi,%rsi,8), %rax
	xorl	%edx, %edx
	divq	%r8
.LBB135_38:                             # %if.end.146
                                        #   in Loop: Header=BB135_16 Depth=2
	cmpq	$0, 16(%rdi,%rsi,8)
	movq	-1072(%rbp), %r13       # 8-byte Reload
	je	.LBB135_45
# BB#39:                                # %if.then.149
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	leaq	64(%rdi,%rsi,8), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	leaq	16(%rdi,%rsi,8), %r13
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%r15, %rsi
	leaq	.L.str.25.127(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	(%r13), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_uint64_to_string@PLT
	jmp	.LBB135_41
	.align	16, 0x90
.LBB135_40:                             # %while.body.157
                                        #   in Loop: Header=BB135_41 Depth=3
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
.LBB135_41:                             # %while.body.157
                                        #   Parent Loop BB135_2 Depth=1
                                        #     Parent Loop BB135_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rcx
	subq	%r12, %rcx
	movq	%rax, %rdi
	movq	%r15, %rsi
	cmpq	%rbx, %rcx
	jb	.LBB135_40
# BB#42:                                # %while.end.159
                                        #   in Loop: Header=BB135_16 Depth=2
	leaq	.L.str.26.128(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	movslq	(%rcx), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	addq	$15, %rbx
	movq	%rax, %rcx
	subq	%r12, %rcx
	cmpq	%rbx, %rcx
	movq	-1072(%rbp), %r13       # 8-byte Reload
	jae	.LBB135_44
	.align	16, 0x90
.LBB135_43:                             # %while.body.167
                                        #   Parent Loop BB135_2 Depth=1
                                        #     Parent Loop BB135_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rcx
	subq	%r12, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB135_43
.LBB135_44:                             # %while.end.169
                                        #   in Loop: Header=BB135_16 Depth=2
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.27.129(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	movslq	%ecx, %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	movq	%rax, %rcx
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	-1080(%rbp), %rsi       # 8-byte Reload
.LBB135_45:                             # %if.end.172
                                        #   in Loop: Header=BB135_16 Depth=2
	cmpq	$0, 32(%rdi,%rsi,8)
	je	.LBB135_47
# BB#46:                                # %if.then.175
                                        #   in Loop: Header=BB135_16 Depth=2
	leaq	32(%rdi,%rsi,8), %rbx
	movq	%rcx, %rdi
	movq	%r15, %rsi
	leaq	.L.str.28.130(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	(%rbx), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_uint64_to_string@PLT
	movq	%rax, %rcx
.LBB135_47:                             # %if.end.179
                                        #   in Loop: Header=BB135_16 Depth=2
	leaq	.L.str.7.109(%rip), %rdx
	movq	%rcx, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rbx
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%r12, %rsi
	callq	halide_print@PLT
	movq	-1096(%rbp), %rcx       # 8-byte Reload
.LBB135_48:                             # %cleanup.182
                                        #   in Loop: Header=BB135_16 Depth=2
	addq	$1, %rcx
	movslq	72(%r13), %rax
	cmpq	%rax, %rcx
	jl	.LBB135_16
.LBB135_49:                             # %cleanup.191
                                        #   in Loop: Header=BB135_2 Depth=1
	movq	64(%r13), %r13
	testq	%r13, %r13
	jne	.LBB135_2
.LBB135_50:                             # %if.else.i
	movl	$1, %edx
	leaq	-1064(%rbp), %rsi
	subq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	callq	halide_msan_annotate_memory_is_initialized@PLT
	addq	$1144, %rsp             # imm = 0x478
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end135:
	.size	halide_profiler_report_unlocked, .Lfunc_end135-halide_profiler_report_unlocked

	.section	.text.halide_profiler_report,"ax",@progbits
	.weak	halide_profiler_report
	.align	16, 0x90
	.type	halide_profiler_report,@function
halide_profiler_report:                 # @halide_profiler_report
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	callq	halide_profiler_get_state@PLT
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	halide_mutex_lock@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	halide_profiler_report_unlocked@PLT
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_mutex_unlock@PLT # TAILCALL
.Lfunc_end136:
	.size	halide_profiler_report, .Lfunc_end136-halide_profiler_report

	.section	.text.halide_profiler_reset,"ax",@progbits
	.weak	halide_profiler_reset
	.align	16, 0x90
	.type	halide_profiler_reset,@function
halide_profiler_reset:                  # @halide_profiler_reset
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	halide_profiler_get_state@PLT
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	halide_mutex_lock@PLT
	jmp	.LBB137_2
	.align	16, 0x90
.LBB137_1:                              # %while.body
                                        #   in Loop: Header=BB137_2 Depth=1
	movq	64(%rbx), %rax
	movq	%rax, 80(%r14)
	movq	56(%rbx), %rdi
	callq	free@PLT
	movq	%rbx, %rdi
	callq	free@PLT
.LBB137_2:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB137_1
# BB#3:                                 # %while.end
	movl	$0, 68(%r14)
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	halide_mutex_unlock@PLT # TAILCALL
.Lfunc_end137:
	.size	halide_profiler_reset, .Lfunc_end137-halide_profiler_reset

	.section	.text.halide_profiler_shutdown,"ax",@progbits
	.weak	halide_profiler_shutdown
	.align	16, 0x90
	.type	halide_profiler_shutdown,@function
halide_profiler_shutdown:               # @halide_profiler_shutdown
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	callq	halide_profiler_get_state@PLT
	cmpb	$0, 96(%rax)
	je	.LBB138_4
# BB#1:                                 # %if.end
	movl	$-2, 72(%rax)
	.align	16, 0x90
.LBB138_2:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	mfence
	cmpb	$0, 96(%rax)
	jne	.LBB138_2
# BB#3:                                 # %do.end
	movl	$-1, 72(%rax)
	xorl	%edi, %edi
	movq	%rax, %rsi
	popq	%rbp
	jmp	halide_profiler_report_unlocked@PLT # TAILCALL
.LBB138_4:                              # %cleanup
	popq	%rbp
	retq
.Lfunc_end138:
	.size	halide_profiler_shutdown, .Lfunc_end138-halide_profiler_shutdown

	.section	.text.halide_profiler_pipeline_end,"ax",@progbits
	.weak	halide_profiler_pipeline_end
	.align	16, 0x90
	.type	halide_profiler_pipeline_end,@function
halide_profiler_pipeline_end:           # @halide_profiler_pipeline_end
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-1, 72(%rsi)
	popq	%rbp
	retq
.Lfunc_end139:
	.size	halide_profiler_pipeline_end, .Lfunc_end139-halide_profiler_pipeline_end

	.section	.text.halide_msan_annotate_memory_is_initialized,"ax",@progbits
	.weak	halide_msan_annotate_memory_is_initialized
	.align	16, 0x90
	.type	halide_msan_annotate_memory_is_initialized,@function
halide_msan_annotate_memory_is_initialized: # @halide_msan_annotate_memory_is_initialized
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end140:
	.size	halide_msan_annotate_memory_is_initialized, .Lfunc_end140-halide_msan_annotate_memory_is_initialized

	.section	.text.halide_msan_annotate_buffer_is_initialized,"ax",@progbits
	.weak	halide_msan_annotate_buffer_is_initialized
	.align	16, 0x90
	.type	halide_msan_annotate_buffer_is_initialized,@function
halide_msan_annotate_buffer_is_initialized: # @halide_msan_annotate_buffer_is_initialized
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end141:
	.size	halide_msan_annotate_buffer_is_initialized, .Lfunc_end141-halide_msan_annotate_buffer_is_initialized

	.section	.text.halide_msan_annotate_buffer_is_initialized_as_destructor,"ax",@progbits
	.weak	halide_msan_annotate_buffer_is_initialized_as_destructor
	.align	16, 0x90
	.type	halide_msan_annotate_buffer_is_initialized_as_destructor,@function
halide_msan_annotate_buffer_is_initialized_as_destructor: # @halide_msan_annotate_buffer_is_initialized_as_destructor
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end142:
	.size	halide_msan_annotate_buffer_is_initialized_as_destructor, .Lfunc_end142-halide_msan_annotate_buffer_is_initialized_as_destructor

	.section	.text.halide_default_can_use_target_features,"ax",@progbits
	.weak	halide_default_can_use_target_features
	.align	16, 0x90
	.type	halide_default_can_use_target_features,@function
halide_default_can_use_target_features: # @halide_default_can_use_target_features
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movb	_ZZ38halide_default_can_use_target_featuresE11initialized(%rip), %al
	andb	$1, %al
	jne	.LBB143_2
# BB#1:                                 # %if.then
	leaq	-24(%rbp), %rdi
	callq	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv@PLT
	vmovups	-24(%rbp), %xmm0
	vmovups	%xmm0, _ZZ38halide_default_can_use_target_featuresE12cpu_features(%rip)
	movb	$1, _ZZ38halide_default_can_use_target_featuresE11initialized(%rip)
.LBB143_2:                              # %if.end
	andq	_ZZ38halide_default_can_use_target_featuresE12cpu_features(%rip), %rbx
	je	.LBB143_4
# BB#3:                                 # %if.then.1
	movq	_ZZ38halide_default_can_use_target_featuresE12cpu_features+8(%rip), %rcx
	andq	%rbx, %rcx
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	jne	.LBB143_5
.LBB143_4:                              # %if.end.6
	movl	$1, %eax
.LBB143_5:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end143:
	.size	halide_default_can_use_target_features, .Lfunc_end143-halide_default_can_use_target_features

	.section	.text.halide_set_custom_can_use_target_features,"ax",@progbits
	.weak	halide_set_custom_can_use_target_features
	.align	16, 0x90
	.type	halide_set_custom_can_use_target_features,@function
halide_set_custom_can_use_target_features: # @halide_set_custom_can_use_target_features
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rdi, (%rcx)
	popq	%rbp
	retq
.Lfunc_end144:
	.size	halide_set_custom_can_use_target_features, .Lfunc_end144-halide_set_custom_can_use_target_features

	.section	.text.halide_can_use_target_features,"ax",@progbits
	.weak	halide_can_use_target_features
	.align	16, 0x90
	.type	halide_can_use_target_features,@function
halide_can_use_target_features:         # @halide_can_use_target_features
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE@GOTPCREL(%rip), %rax
	popq	%rbp
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end145:
	.size	halide_can_use_target_features, .Lfunc_end145-halide_can_use_target_features

	.section	.text._ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv,"ax",@progbits
	.weak	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
	.align	16, 0x90
	.type	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv,@function
_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv: # @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movl	$1, -24(%rbp)
	#APP

	xchgl	%esi, %ebx
	movl	-24(%rbp), %eax
	movl	$0, %ecx
	cpuid
	movl	%eax, -24(%rbp)
	movl	%ebx, -20(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%edx, -12(%rbp)
	xchgl	%esi, %ebx

	#NO_APP
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	andl	$524288, %ecx           # imm = 0x80000
	shrq	$15, %rcx
	movl	%eax, %edx
	shrl	$23, %edx
	andl	$32, %edx
	orq	%rcx, %rdx
	movl	%eax, %ecx
	shrl	$20, %ecx
	andl	$512, %ecx              # imm = 0x200
	orq	%rdx, %rcx
	movl	%eax, %r8d
	shrl	$5, %r8d
	andl	$128, %r8d
	orq	%rcx, %r8
	andl	$1879048192, %eax       # imm = 0x70000000
	cmpl	$1879048192, %eax       # imm = 0x70000000
	jne	.LBB146_4
# BB#1:                                 # %if.then.33
	movl	$7, -40(%rbp)
	#APP

	xchgl	%esi, %ebx
	movl	-40(%rbp), %eax
	movl	$0, %ecx
	cpuid
	movl	%eax, -40(%rbp)
	movl	%ebx, -36(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%edx, -28(%rbp)
	xchgl	%esi, %ebx

	#NO_APP
	movl	-36(%rbp), %ecx
	movl	%ecx, %eax
	andl	$32, %eax
	addq	%rax, %rax
	orq	%r8, %rax
	movl	%ecx, %edx
	andl	$268500992, %edx        # imm = 0x10010000
	cmpl	$268500992, %edx        # imm = 0x10010000
	jne	.LBB146_3
# BB#2:                                 # %if.then.44
	movl	%ecx, %edx
	andl	$469827584, %edx        # imm = 0x1C010000
	cmpl	$469827584, %edx        # imm = 0x1C010000
	movabsq	$824633720832, %rdx     # imm = 0xC000000000
	movabsq	$274877906944, %rsi     # imm = 0x4000000000
	cmoveq	%rdx, %rsi
	orq	%rsi, %rax
	movl	%ecx, %edx
	andl	$-805109760, %edx       # imm = 0xFFFFFFFFD0030000
	movabsq	$1099511627776, %rsi    # imm = 0x10000000000
	orq	%rax, %rsi
	cmpl	$-805109760, %edx       # imm = 0xFFFFFFFFD0030000
	cmovneq	%rax, %rsi
	andl	$-803012608, %ecx       # imm = 0xFFFFFFFFD0230000
	movabsq	$2199023255552, %rax    # imm = 0x20000000000
	orq	%rsi, %rax
	cmpl	$-803012608, %ecx       # imm = 0xFFFFFFFFD0230000
	cmovneq	%rsi, %rax
.LBB146_3:                              # %if.end.64
	movq	%rax, %r8
.LBB146_4:                              # %if.end.65
	movabsq	$4123168604912, %rax    # imm = 0x3C0000002F0
	movq	%rax, (%rdi)
	movq	%r8, 8(%rdi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end146:
	.size	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv, .Lfunc_end146-_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv

	.section	.rodata,"a",@progbits
	.align	32
.LCPI147_0:
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI147_1:
	.long	3                       # 0x3
	.long	4096                    # 0x1000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.section	.text.__f3,"ax",@progbits
	.globl	__f3
	.align	16, 0x90
	.type	__f3,@function
__f3:                                   # @__f3
# BB#0:                                 # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$472, %rsp              # imm = 0x1D8
	testq	%rdi, %rdi
	je	.LBB147_1
# BB#7:                                 # %assert succeeded
	testq	%rcx, %rcx
	je	.LBB147_8
# BB#9:                                 # %assert succeeded11
	testq	%r8, %r8
	je	.LBB147_10
# BB#11:                                # %assert succeeded30
	testq	%r9, %r9
	je	.LBB147_12
# BB#13:                                # %assert succeeded49
	movq	%r9, 248(%rsp)          # 8-byte Spill
	movq	600(%rsp), %rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB147_14
# BB#15:                                # %assert succeeded68
	movq	616(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB147_16
# BB#17:                                # %assert succeeded87
	movl	16(%rdi), %ecx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	movq	%rdi, 256(%rsp)         # 8-byte Spill
	movq	256(%rsp), %rax         # 8-byte Reload
	movl	20(%rax), %r12d
	movq	%r12, 168(%rsp)         # 8-byte Spill
	movq	256(%rsp), %rax         # 8-byte Reload
	movl	48(%rax), %r14d
	movq	%r14, 176(%rsp)         # 8-byte Spill
	movq	256(%rsp), %rax         # 8-byte Reload
	movl	52(%rax), %r13d
	movq	%r13, 184(%rsp)         # 8-byte Spill
	movl	16(%rbp), %r15d
	movl	48(%rbp), %r8d
	movq	%r8, 280(%rsp)          # 8-byte Spill
	movl	52(%rbp), %r11d
	movq	%r11, 232(%rsp)         # 8-byte Spill
	leal	(%r14,%rcx), %r10d
	cmpl	%r8d, %r10d
	movl	%r10d, %eax
	cmovgl	%r8d, %eax
	addl	$-1, %eax
	cmpl	%r14d, %eax
	cmovll	%r14d, %eax
	leal	-1(%rcx), %esi
	leal	(%rcx,%rcx), %edi
	leal	-2(%rcx,%rcx), %r9d
	movl	$2, %edx
	movl	$2, %ebx
	subl	%edi, %ebx
	cmpl	$1, %edi
	cmovgl	%r9d, %ebx
	subl	%ecx, %ebx
	cmpl	%ebx, %esi
	cmoval	%esi, %ebx
	leal	-1(%rcx,%r14), %esi
	subl	%ebx, %esi
	cmpl	%eax, %esi
	cmovgl	%eax, %esi
	movl	%esi, 244(%rsp)         # 4-byte Spill
	leal	1(%r15), %eax
	andl	$-32, %eax
	leal	30(%rax,%r8), %eax
	leal	-1(%r14,%rcx), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	cmpl	%r14d, %eax
	cmovll	%r14d, %eax
	leal	1(%rax), %ecx
	cmpl	%r10d, %eax
	cmovll	%r10d, %ecx
	movl	%ecx, 216(%rsp)         # 4-byte Spill
	leal	(%r13,%r12), %esi
	cmpl	%r11d, %esi
	movl	%esi, %eax
	cmovgl	%r11d, %eax
	addl	$-1, %eax
	cmpl	%r13d, %eax
	cmovll	%r13d, %eax
	leal	(%r12,%r12), %ecx
	subl	%ecx, %edx
	cmpl	$1, %ecx
	leal	-2(%r12,%r12), %ecx
	cmovgl	%ecx, %edx
	leal	-1(%r12), %ecx
	subl	%r12d, %edx
	cmpl	%edx, %ecx
	cmoval	%ecx, %edx
	leal	-1(%r12,%r13), %ecx
	subl	%edx, %ecx
	movl	20(%rbp), %edi
	cmpl	%eax, %ecx
	cmovgl	%eax, %ecx
	leal	(%r11,%rdi), %edx
	movq	%rdx, 264(%rsp)         # 8-byte Spill
	leal	-1(%r13,%r12), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movq	256(%rsp), %r8          # 8-byte Reload
	cmpl	%edx, %eax
	cmovgl	%edx, %eax
	cmpl	%r13d, %eax
	cmovll	%r13d, %eax
	cmpl	%esi, %eax
	leal	1(%rax), %r14d
	cmovll	%esi, %r14d
	movq	248(%rsp), %rsi         # 8-byte Reload
	movq	8(%rsi), %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	(%rsi), %rax
	orq	%rdx, %rax
	vmovss	552(%rsp), %xmm12       # xmm12 = mem[0],zero,zero,zero
	vmovss	544(%rsp), %xmm11       # xmm11 = mem[0],zero,zero,zero
	vmovss	536(%rsp), %xmm10       # xmm10 = mem[0],zero,zero,zero
	vmovss	528(%rsp), %xmm9        # xmm9 = mem[0],zero,zero,zero
	movb	608(%rsp), %al
	movb	%al, 111(%rsp)          # 1-byte Spill
	sete	%r13b
	movq	%rsi, %r9
	movq	(%r8), %r10
	movq	8(%r8), %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movl	32(%r8), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	36(%r8), %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movl	64(%r8), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movslq	16(%r9), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movslq	20(%r9), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	32(%r9), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	36(%r9), %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	movl	48(%r9), %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	52(%r9), %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	64(%r9), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movq	8(%rax), %rdx
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movslq	16(%rax), %rdx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movslq	20(%rax), %rdx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movl	32(%rax), %edx
	movl	%edx, 72(%rsp)          # 4-byte Spill
	movl	36(%rax), %edx
	movl	%edx, 112(%rsp)         # 4-byte Spill
	movl	48(%rax), %edx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movl	52(%rax), %esi
	movq	%rsi, 160(%rsp)         # 8-byte Spill
	movl	64(%rax), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movq	(%rbp), %rax
	movq	8(%rbp), %rsi
	movl	24(%rbp), %edx
	movl	32(%rbp), %ebx
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	movslq	36(%rbp), %rbx
	movq	%rbx, 272(%rsp)         # 8-byte Spill
	movl	40(%rbp), %ebx
	movl	%ebx, 56(%rsp)          # 4-byte Spill
	movl	56(%rbp), %ebx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movl	64(%rbp), %r12d
	jne	.LBB147_19
# BB#18:                                # %true_bb
	vxorps	%xmm8, %xmm8, %xmm8
	movq	248(%rsp), %rbx         # 8-byte Reload
	vmovups	%xmm8, (%rbx)
	movl	$4, 64(%rbx)
	movb	$0, 68(%rbx)
	movb	$0, 69(%rbx)
	movl	$0, 48(%rbx)
	movl	$0, 52(%rbx)
	movl	$0, 56(%rbx)
	movl	$0, 60(%rbx)
	vmovaps	.LCPI147_0(%rip), %ymm8 # ymm8 = [3,3,0,0,1,3,0,0]
	vmovups	%ymm8, 16(%rbx)
.LBB147_19:                             # %after_bb
	orq	%rsi, %rax
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	sete	%r11b
	jne	.LBB147_21
# BB#20:                                # %true_bb105
	vxorps	%xmm8, %xmm8, %xmm8
	vmovups	%xmm8, (%rbp)
	movl	$2, 64(%rbp)
	movb	$0, 68(%rbp)
	movb	$0, 69(%rbp)
	movq	280(%rsp), %rax         # 8-byte Reload
	movl	%eax, 48(%rbp)
	movl	%r15d, 16(%rbp)
	movl	$3, 32(%rbp)
	movq	232(%rsp), %rax         # 8-byte Reload
	movl	%eax, 52(%rbp)
	movl	%edi, 20(%rbp)
	movl	%r15d, 36(%rbp)
	movl	$0, 56(%rbp)
	movl	$3, 24(%rbp)
	movl	$1, 40(%rbp)
	movl	$0, 60(%rbp)
	movl	$0, 28(%rbp)
	movl	$0, 44(%rbp)
.LBB147_21:                             # %after_bb107
	orq	208(%rsp), %r10         # 8-byte Folded Reload
	sete	%al
	jne	.LBB147_23
# BB#22:                                # %true_bb108
	movl	216(%rsp), %esi         # 4-byte Reload
	movl	244(%rsp), %ebp         # 4-byte Reload
	subl	%ebp, %esi
	movl	%r14d, %ebx
	subl	%ecx, %ebx
	vxorps	%xmm8, %xmm8, %xmm8
	vmovups	%xmm8, (%r8)
	movl	$2, 64(%r8)
	movb	$0, 68(%r8)
	movb	$0, 69(%r8)
	movl	%ebp, 48(%r8)
	movl	%esi, 16(%r8)
	movl	$1, 32(%r8)
	movl	%ecx, 52(%r8)
	movl	%ebx, 20(%r8)
	movl	%esi, 36(%r8)
	movl	$0, 56(%r8)
	movl	$0, 24(%r8)
	movl	$0, 40(%r8)
	movl	$0, 60(%r8)
	movl	$0, 28(%r8)
	movl	$0, 44(%r8)
.LBB147_23:                             # %after_bb110
	orq	200(%rsp), %r9          # 8-byte Folded Reload
	sete	%bl
	jne	.LBB147_25
# BB#24:                                # %after_bb113.thread
	vxorps	%xmm0, %xmm0, %xmm0
	movq	224(%rsp), %rax         # 8-byte Reload
	vmovups	%xmm0, (%rax)
	movl	$2, 64(%rax)
	movb	$0, 68(%rax)
	movb	$0, 69(%rax)
	movl	$0, 48(%rax)
	movl	$0, 52(%rax)
	movl	$0, 56(%rax)
	movl	$0, 60(%rax)
	vmovaps	.LCPI147_1(%rip), %ymm0 # ymm0 = [3,4096,0,0,1,3,0,0]
	vmovups	%ymm0, 16(%rax)
	xorl	%ebp, %ebp
	jmp	.LBB147_5
.LBB147_25:                             # %after_bb113
	orb	%r11b, %r13b
	orb	%r13b, %al
	xorl	%ebp, %ebp
	orb	%al, %bl
	movq	%r15, %r13
	jne	.LBB147_5
# BB#26:                                # %true_bb114
	movl	32(%rsp), %eax          # 4-byte Reload
	cmpl	$4, %eax
	jne	.LBB147_27
# BB#28:                                # %assert succeeded118
	cmpl	$2, %r12d
	movq	%rdi, %r8
	movq	176(%rsp), %r9          # 8-byte Reload
	movq	192(%rsp), %rsi         # 8-byte Reload
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	%rdx, %r11
	movl	48(%rsp), %eax          # 4-byte Reload
	jne	.LBB147_29
# BB#30:                                # %assert succeeded120
	cmpl	$2, %eax
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
	jne	.LBB147_31
# BB#35:                                # %assert succeeded122
	movl	36(%rsp), %eax          # 4-byte Reload
	cmpl	$2, %eax
	movq	136(%rsp), %rbx         # 8-byte Reload
	jne	.LBB147_36
# BB#37:                                # %assert succeeded124
	testl	%ebx, %ebx
	jg	.LBB147_39
# BB#38:                                # %assert succeeded124
	movl	$3, %eax
	subl	%edi, %eax
	cmpl	%ebx, %eax
	jg	.LBB147_39
# BB#40:                                # %assert succeeded126
	testl	%edi, %edi
	js	.LBB147_41
# BB#42:                                # %assert succeeded128
	testl	%edx, %edx
	movq	64(%rsp), %rbp          # 8-byte Reload
	jg	.LBB147_44
# BB#43:                                # %assert succeeded128
	movl	$3, %eax
	subl	%r10d, %eax
	cmpl	%edx, %eax
	jg	.LBB147_44
# BB#45:                                # %assert succeeded130
	testl	%r10d, %r10d
	js	.LBB147_46
# BB#47:                                # %assert succeeded132
	testl	%r13d, %r13d
	js	.LBB147_48
# BB#49:                                # %assert succeeded134
	testl	%r8d, %r8d
	js	.LBB147_50
# BB#51:                                # %assert succeeded136
	testl	%ebp, %ebp
	jg	.LBB147_53
# BB#52:                                # %assert succeeded136
	movl	$3, %eax
	subl	%r11d, %eax
	cmpl	%ebp, %eax
	jg	.LBB147_53
# BB#54:                                # %assert succeeded138
	testl	%r11d, %r11d
	js	.LBB147_55
# BB#56:                                # %assert succeeded140
	cmpl	244(%rsp), %r9d         # 4-byte Folded Reload
	jg	.LBB147_58
# BB#57:                                # %assert succeeded140
	movl	216(%rsp), %eax         # 4-byte Reload
	subl	%esi, %eax
	cmpl	%r9d, %eax
	jg	.LBB147_58
# BB#59:                                # %assert succeeded142
	testl	%esi, %esi
	js	.LBB147_60
# BB#61:                                # %assert succeeded144
	movq	184(%rsp), %r9          # 8-byte Reload
	cmpl	%ecx, %r9d
	movq	168(%rsp), %r15         # 8-byte Reload
	jg	.LBB147_63
# BB#62:                                # %assert succeeded144
	movl	%r14d, %eax
	subl	%r15d, %eax
	cmpl	%r9d, %eax
	jg	.LBB147_63
# BB#64:                                # %assert succeeded146
	movq	%rbp, %rbx
	movq	%r11, %rsi
	testl	%r15d, %r15d
	js	.LBB147_65
# BB#66:                                # %assert succeeded148
	movq	144(%rsp), %r9          # 8-byte Reload
	testl	%r9d, %r9d
	movq	160(%rsp), %r11         # 8-byte Reload
	movq	96(%rsp), %r14          # 8-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	jg	.LBB147_68
# BB#67:                                # %assert succeeded148
	movl	$3, %eax
	subl	%ecx, %eax
	cmpl	%r9d, %eax
	jg	.LBB147_68
# BB#71:                                # %assert succeeded150
	testl	%ecx, %ecx
	js	.LBB147_72
# BB#75:                                # %assert succeeded152
	testl	%r11d, %r11d
	jg	.LBB147_77
# BB#76:                                # %assert succeeded152
	movl	$4096, %eax             # imm = 0x1000
	subl	%r14d, %eax
	cmpl	%r11d, %eax
	jg	.LBB147_77
# BB#78:                                # %assert succeeded154
	testl	%r14d, %r14d
	js	.LBB147_79
# BB#80:                                # %assert succeeded156
	movl	60(%rsp), %ebp          # 4-byte Reload
	cmpl	$1, %ebp
	movl	76(%rsp), %edx          # 4-byte Reload
	movq	%rsi, %rax
	jne	.LBB147_81
# BB#85:                                # %assert succeeded158
	movl	52(%rsp), %ebp          # 4-byte Reload
	cmpl	$3, %ebp
	jne	.LBB147_86
# BB#87:                                # %assert succeeded160
	movl	56(%rsp), %ebp          # 4-byte Reload
	cmpl	$1, %ebp
	jne	.LBB147_88
# BB#89:                                # %assert succeeded162
	testl	%ebx, %ebx
	jne	.LBB147_90
# BB#91:                                # %assert succeeded164
	cmpl	$3, %eax
	jne	.LBB147_92
# BB#93:                                # %assert succeeded166
	cmpl	$1, %edx
	jne	.LBB147_94
# BB#96:                                # %assert succeeded168
	movl	72(%rsp), %edx          # 4-byte Reload
	cmpl	$1, %edx
	jne	.LBB147_97
# BB#98:                                # %assert succeeded172
	movslq	132(%rsp), %rax         # 4-byte Folded Reload
	imulq	%r10, %rax
	movq	%rax, %rdx
	negq	%rdx
	cmovlq	%rax, %rdx
	testq	$-2147483648, %rdx      # imm = 0xFFFFFFFF80000000
	jne	.LBB147_99
# BB#102:                               # %assert succeeded174
	imulq	%rdi, %r10
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %r10
	jge	.LBB147_103
# BB#104:                               # %assert succeeded176
	movslq	%r13d, %rdi
	leaq	(%rdi,%rdi,2), %rdx
	testq	$-2147483648, %rdx      # imm = 0xFFFFFFFF80000000
	jne	.LBB147_105
# BB#106:                               # %assert succeeded178
	movslq	%r8d, %rdx
	movq	272(%rsp), %rsi         # 8-byte Reload
	imulq	%rdx, %rsi
	movq	%rsi, %rax
	negq	%rax
	cmovlq	%rsi, %rax
	testq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jne	.LBB147_107
# BB#109:                               # %assert succeeded180
	imulq	%rdi, %rdx
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %rdx
	jge	.LBB147_110
# BB#113:                               # %assert succeeded182
	cmpq	$715827883, %rdx        # imm = 0x2AAAAAAB
	jge	.LBB147_114
# BB#115:                               # %assert succeeded186
	movslq	%r15d, %rdx
	movslq	116(%rsp), %rsi         # 4-byte Folded Reload
	imulq	%rdx, %rsi
	movq	%rsi, %rax
	negq	%rax
	cmovlq	%rsi, %rax
	testq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jne	.LBB147_116
# BB#117:                               # %assert succeeded188
	movq	192(%rsp), %rax         # 8-byte Reload
	cltq
	imulq	%rax, %rdx
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %rdx
	jge	.LBB147_118
# BB#119:                               # %assert succeeded192
	movslq	112(%rsp), %rax         # 4-byte Folded Reload
	imulq	%r14, %rax
	movq	%rax, %rdx
	negq	%rdx
	cmovlq	%rax, %rdx
	testq	$-2147483648, %rdx      # imm = 0xFFFFFFFF80000000
	jne	.LBB147_120
# BB#121:                               # %assert succeeded194
	imulq	%rcx, %r14
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %r14
	jge	.LBB147_122
# BB#123:                               # %assert succeeded196
	vmovss	%xmm12, 32(%rsp)        # 4-byte Spill
	vmovss	%xmm11, 36(%rsp)        # 4-byte Spill
	vmovss	%xmm10, 40(%rsp)        # 4-byte Spill
	vmovss	%xmm9, 48(%rsp)         # 4-byte Spill
	vmovss	%xmm2, 52(%rsp)         # 4-byte Spill
	vmovss	%xmm1, 56(%rsp)         # 4-byte Spill
	vmovss	%xmm0, 60(%rsp)         # 4-byte Spill
	vmovss	%xmm7, 64(%rsp)         # 4-byte Spill
	vmovss	%xmm6, 72(%rsp)         # 4-byte Spill
	vmovss	%xmm5, 76(%rsp)         # 4-byte Spill
	vmovss	%xmm4, 80(%rsp)         # 4-byte Spill
	vmovss	%xmm3, 88(%rsp)         # 4-byte Spill
	movq	264(%rsp), %rax         # 8-byte Reload
	leal	-32(%rax), %ecx
	movq	232(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ecx
	cmovgl	%eax, %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	280(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax,%r13), %r14d
	leal	-1(%r13), %ecx
	movl	%ecx, 244(%rsp)         # 4-byte Spill
	orl	$31, %ecx
	addl	%eax, %ecx
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	cmpl	%ecx, %r14d
	cmovll	%ecx, %r14d
	cmpl	$31, %r8d
	movl	$32, %r12d
	cmovgl	%r8d, %r12d
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movl	%r14d, %r15d
	subl	%eax, %r15d
	movq	%rax, %rbx
	addl	$1, %r15d
	movl	%r12d, %eax
	leaq	(%r15,%r15), %rdx
	movl	%edx, %ecx
	imulq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rbp
	movl	%edx, %edx
	cmpq	$2147483647, %rbp       # imm = 0x7FFFFFFF
	ja	.LBB147_125
# BB#124:                               # %assert succeeded196
	imulq	%rax, %rcx
	shrq	$32, %rcx
	movq	%r15, %rsi
	shrq	$31, %rsi
	negq	%rsi
	andq	%rax, %rsi
	addq	%rcx, %rsi
	leaq	(%rdx,%rdx,2), %rax
	shrq	$32, %rax
	leaq	(%rsi,%rsi,2), %rcx
	addq	%rax, %rcx
	orq	%rsi, %rcx
	shrq	$32, %rcx
	jne	.LBB147_125
# BB#126:                               # %assert succeeded198
	leaq	2(%rbp), %rsi
	xorl	%edi, %edi
	vzeroupper
	callq	halide_malloc@PLT
	movq	%rax, %rcx
	addq	$2, %rbp
	je	.LBB147_128
# BB#127:                               # %assert succeeded198
	testq	%rcx, %rcx
	je	.LBB147_156
.LBB147_128:                            # %assert succeeded200
	imull	%r12d, %r15d
	vmovss	52(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 288(%rsp)
	vmovss	56(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 292(%rsp)
	vmovss	60(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 296(%rsp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	%eax, 300(%rsp)
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	%eax, 304(%rsp)
	movl	132(%rsp), %eax         # 4-byte Reload
	movl	%eax, 308(%rsp)
	vmovss	32(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 312(%rsp)
	vmovss	36(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 316(%rsp)
	vmovss	40(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 320(%rsp)
	vmovss	48(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 324(%rsp)
	vmovss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 328(%rsp)
	vmovss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 332(%rsp)
	movl	%r15d, 336(%rsp)
	movl	%r14d, 340(%rsp)
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 344(%rsp)
	movl	%r13d, 348(%rsp)
	movq	8(%rsp), %r15           # 8-byte Reload
	movl	%r15d, 352(%rsp)
	movl	%ebx, 356(%rsp)
	movq	232(%rsp), %rax         # 8-byte Reload
	movl	%eax, 360(%rsp)
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%eax, 364(%rsp)
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	%eax, 368(%rsp)
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	%eax, 372(%rsp)
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%eax, 376(%rsp)
	movl	116(%rsp), %eax         # 4-byte Reload
	movl	%eax, 380(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, 384(%rsp)
	movq	160(%rsp), %rax         # 8-byte Reload
	movl	%eax, 388(%rsp)
	movl	112(%rsp), %eax         # 4-byte Reload
	movl	%eax, 392(%rsp)
	vmovss	76(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 396(%rsp)
	vmovss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 400(%rsp)
	vmovss	88(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 404(%rsp)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 408(%rsp)
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	%rax, 416(%rsp)
	movq	%rcx, 424(%rsp)
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movq	$0, 432(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	%rax, 440(%rsp)
	movq	256(%rsp), %rax         # 8-byte Reload
	movq	%rax, 448(%rsp)
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	%rax, 456(%rsp)
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	%rax, 464(%rsp)
	leal	31(%r15), %ecx
	sarl	$5, %ecx
	leaq	par_for___f3_f2.s0.v16.v19(%rip), %rsi
	leaq	288(%rsp), %r8
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	halide_do_par_for@PLT
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB147_3
# BB#129:                               # %for f3.s0.v17.preheader
	testl	%r15d, %r15d
	movq	152(%rsp), %r8          # 8-byte Reload
	jle	.LBB147_138
# BB#130:                               # %for f3.s0.v16.preheader.us
	movzbl	111(%rsp), %eax         # 1-byte Folded Reload
	andl	$1, %eax
	testl	%r13d, %r13d
	jle	.LBB147_138
# BB#131:                               # %for f3.s0.v15.preheader.us.us.preheader
	movslq	%ebx, %r10
	movq	%r10, 256(%rsp)         # 8-byte Spill
	movq	232(%rsp), %r14         # 8-byte Reload
	movslq	%r14d, %rdi
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	addq	%rax, %rax
	movl	%r13d, %r9d
	andl	$3, %r9d
	movl	%r9d, 248(%rsp)         # 4-byte Spill
	movq	272(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, %rcx
	movq	%rcx, 272(%rsp)         # 8-byte Spill
	leal	-1(%rbx,%r13), %ecx
	movl	96(%rsp), %edx          # 4-byte Reload
	cmpl	%edx, %ecx
	cmovll	%edx, %ecx
	movslq	%ecx, %rdx
	leaq	1(%rdx), %rbp
	subq	%r10, %rbp
	movq	%rbp, 176(%rsp)         # 8-byte Spill
	movl	$31, %ecx
	subl	%r14d, %ecx
	subl	%r15d, %ecx
	movl	%r14d, %esi
	notl	%esi
	movl	%esi, 132(%rsp)         # 4-byte Spill
	cmpl	%esi, %ecx
	cmovll	%esi, %ecx
	notl	%ecx
	movslq	%ecx, %rsi
	movq	%rdi, %rcx
	subq	%rsi, %rcx
	imulq	%rbp, %rcx
	cmpl	$31, %r15d
	movl	$32, %esi
	cmovgl	%r15d, %esi
	addl	$1, %edx
	subl	%ebx, %edx
	imull	%esi, %edx
	leal	(%rbx,%r13), %esi
	movl	%esi, 200(%rsp)         # 4-byte Spill
	movq	%r13, 144(%rsp)         # 8-byte Spill
	movslq	%edx, %rdx
	imulq	%rax, %rdx
	leaq	(%rdx,%rdx), %rax
	leaq	(%rax,%rcx,2), %rax
	movq	216(%rsp), %rsi         # 8-byte Reload
	leaq	(%rax,%rsi), %rbx
	leaq	(%rbp,%rbp), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	negl	%r9d
	movl	%r9d, 160(%rsp)         # 4-byte Spill
	leaq	(%rcx,%rdx), %rdi
	leaq	3(%rcx,%rdx), %rbp
	leaq	2(%rcx,%rdx), %rsi
	leaq	1(%rcx,%rdx), %rcx
	imulq	$-6, %r10, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	subq	%r10, %rbp
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	subq	%r10, %rsi
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	subq	%r10, %rdi
	subq	%r10, %rcx
	movq	%rcx, %r10
	leaq	(%r8,%rax), %rsi
	movq	%r8, %r15
	movl	%r14d, %eax
	.align	16, 0x90
.LBB147_133:                            # %for f3.s0.v15.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB147_134 Depth 2
                                        #     Child Loop BB147_137 Depth 2
	movq	%rbx, 224(%rsp)         # 8-byte Spill
	movl	160(%rsp), %ecx         # 4-byte Reload
	movq	%rbx, %rdx
	movq	%r15, %rbp
	movq	256(%rsp), %r11         # 8-byte Reload
	movq	280(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %r14d
	cmpl	$0, 248(%rsp)           # 4-byte Folded Reload
	je	.LBB147_135
	.align	16, 0x90
.LBB147_134:                            # %for f3.s0.v15.us.us.prol
                                        #   Parent Loop BB147_133 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	(%rdx), %bx
	movw	%bx, (%rbp)
	addl	$1, %r14d
	addq	$1, %r11
	addq	$6, %rbp
	addq	$2, %rdx
	addl	$1, %ecx
	jne	.LBB147_134
.LBB147_135:                            # %for f3.s0.v15.preheader.us.us.split
                                        #   in Loop: Header=BB147_133 Depth=1
	cmpl	$3, 244(%rsp)           # 4-byte Folded Reload
	jb	.LBB147_132
# BB#136:                               # %for f3.s0.v15.preheader.us.us.split.split
                                        #   in Loop: Header=BB147_133 Depth=1
	leaq	(%r11,%r11), %rcx
	leaq	(%rcx,%rcx,2), %r12
	movq	192(%rsp), %rcx         # 8-byte Reload
	leaq	(%r11,%rcx), %rcx
	movq	216(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,2), %r8
	movq	184(%rsp), %rcx         # 8-byte Reload
	leaq	(%r11,%rcx), %rcx
	leaq	(%rdx,%rcx,2), %r9
	leaq	(%r11,%rdi), %rcx
	leaq	(%rdx,%rcx,2), %r13
	addq	%r10, %r11
	leaq	(%rdx,%r11,2), %rdx
	movl	200(%rsp), %ecx         # 4-byte Reload
	subl	%r14d, %ecx
	movq	%rsi, %rbx
	.align	16, 0x90
.LBB147_137:                            # %for f3.s0.v15.us.us
                                        #   Parent Loop BB147_133 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	(%r13), %bp
	movw	%bp, (%r12,%rbx)
	movw	(%rdx), %bp
	movw	%bp, 6(%r12,%rbx)
	movw	(%r9), %bp
	movw	%bp, 12(%r12,%rbx)
	movw	(%r8), %bp
	movw	%bp, 18(%r12,%rbx)
	addq	$24, %rbx
	addq	$8, %r8
	addq	$8, %r9
	addq	$8, %r13
	addq	$8, %rdx
	addl	$-4, %ecx
	jne	.LBB147_137
.LBB147_132:                            # %end for f3.s0.v15.us.us
                                        #   in Loop: Header=BB147_133 Depth=1
	addl	$1, %eax
	movq	272(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, %r15
	movq	224(%rsp), %rbx         # 8-byte Reload
	addq	168(%rsp), %rbx         # 8-byte Folded Reload
	addq	%rcx, %rsi
	movq	176(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, 192(%rsp)         # 8-byte Folded Spill
	addq	%rcx, 184(%rsp)         # 8-byte Folded Spill
	addq	%rcx, %rdi
	addq	%rcx, %r10
	movq	264(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB147_133
# BB#140:                               # %for f3.s0.v16.preheader.us.1
	movq	144(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB147_139
# BB#141:                               # %for f3.s0.v15.preheader.us.us.1.preheader
	movq	280(%rsp), %rsi         # 8-byte Reload
	leal	-1(%rsi,%rax), %eax
	movl	96(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %eax
	cmovll	%ecx, %eax
	cltq
	leaq	1(%rax), %rdi
	movq	256(%rsp), %rbx         # 8-byte Reload
	subq	%rbx, %rdi
	movq	%rdi, 192(%rsp)         # 8-byte Spill
	movl	$31, %ecx
	movq	232(%rsp), %r9          # 8-byte Reload
	subl	%r9d, %ecx
	movq	8(%rsp), %rbp           # 8-byte Reload
	subl	%ebp, %ecx
	movl	132(%rsp), %edx         # 4-byte Reload
	cmpl	%edx, %ecx
	cmovll	%edx, %ecx
	notl	%ecx
	movslq	%ecx, %rcx
	movq	136(%rsp), %rdx         # 8-byte Reload
	subq	%rcx, %rdx
	imulq	%rdi, %rdx
	cmpl	$31, %ebp
	movl	$32, %ecx
	cmovgl	%ebp, %ecx
	addl	$1, %eax
	subl	%esi, %eax
	imull	%ecx, %eax
	movq	152(%rsp), %rsi         # 8-byte Reload
	leaq	2(%rsi), %r13
	cltq
	leaq	(%rax,%rax), %rcx
	leaq	(%rcx,%rdx,2), %rcx
	movq	216(%rsp), %rbp         # 8-byte Reload
	leaq	(%rcx,%rbp), %r8
	leaq	(%rdi,%rdi), %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movl	248(%rsp), %ecx         # 4-byte Reload
	negl	%ecx
	movl	%ecx, 176(%rsp)         # 4-byte Spill
	movq	208(%rsp), %rcx         # 8-byte Reload
	leaq	(%rsi,%rcx), %rsi
	leaq	(%rdx,%rax), %r10
	leaq	3(%rdx,%rax), %rcx
	subq	%rbx, %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	leaq	2(%rdx,%rax), %r15
	subq	%rbx, %r15
	leaq	1(%rdx,%rax), %r11
	subq	%rbx, %r11
	subq	%rbx, %r10
	.align	16, 0x90
.LBB147_142:                            # %for f3.s0.v15.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB147_143 Depth 2
                                        #     Child Loop BB147_146 Depth 2
	movl	176(%rsp), %eax         # 4-byte Reload
	movq	%r8, %rdx
	movq	%r13, %rbp
	movq	256(%rsp), %rbx         # 8-byte Reload
	movq	280(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %edi
	cmpl	$0, 248(%rsp)           # 4-byte Folded Reload
	je	.LBB147_144
	.align	16, 0x90
.LBB147_143:                            # %for f3.s0.v15.us.us.1.prol
                                        #   Parent Loop BB147_142 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	(%rdx), %cx
	movw	%cx, (%rbp)
	addl	$1, %edi
	addq	$1, %rbx
	addq	$6, %rbp
	addq	$2, %rdx
	addl	$1, %eax
	jne	.LBB147_143
.LBB147_144:                            # %for f3.s0.v15.preheader.us.us.1.split
                                        #   in Loop: Header=BB147_142 Depth=1
	cmpl	$3, 244(%rsp)           # 4-byte Folded Reload
	jb	.LBB147_147
# BB#145:                               # %for f3.s0.v15.preheader.us.us.1.split.split
                                        #   in Loop: Header=BB147_142 Depth=1
	leaq	(%rbx,%rbx), %rax
	leaq	(%rax,%rax,2), %rdx
	movq	224(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %rax
	movq	216(%rsp), %rcx         # 8-byte Reload
	movq	%rsi, %r14
	movq	%rcx, %rsi
	leaq	(%rsi,%rax,2), %r12
	leaq	(%rbx,%r15), %rax
	leaq	(%rsi,%rax,2), %rax
	leaq	(%rbx,%r11), %rcx
	leaq	(%rsi,%rcx,2), %rbp
	addq	%r10, %rbx
	leaq	(%rsi,%rbx,2), %rbx
	movq	%r14, %rsi
	movl	200(%rsp), %r14d        # 4-byte Reload
	subl	%edi, %r14d
	movq	%rsi, %rdi
	.align	16, 0x90
.LBB147_146:                            # %for f3.s0.v15.us.us.1
                                        #   Parent Loop BB147_142 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	(%rbx), %cx
	movw	%cx, 2(%rdx,%rdi)
	movw	(%rbp), %cx
	movw	%cx, 8(%rdx,%rdi)
	movw	(%rax), %cx
	movw	%cx, 14(%rdx,%rdi)
	movw	(%r12), %cx
	movw	%cx, 20(%rdx,%rdi)
	addq	$24, %rdi
	addq	$8, %r12
	addq	$8, %rax
	addq	$8, %rbp
	addq	$8, %rbx
	addl	$-4, %r14d
	jne	.LBB147_146
.LBB147_147:                            # %end for f3.s0.v15.us.us.1
                                        #   in Loop: Header=BB147_142 Depth=1
	addl	$1, %r9d
	movq	272(%rsp), %rax         # 8-byte Reload
	addq	%rax, %r13
	addq	184(%rsp), %r8          # 8-byte Folded Reload
	addq	%rax, %rsi
	movq	192(%rsp), %rax         # 8-byte Reload
	addq	%rax, 224(%rsp)         # 8-byte Folded Spill
	addq	%rax, %r15
	addq	%rax, %r11
	addq	%rax, %r10
	movq	264(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r9d
	jne	.LBB147_142
# BB#148:                               # %for f3.s0.v16.preheader.us.2
	testb	$1, 111(%rsp)           # 1-byte Folded Reload
	sete	%al
	movzbl	%al, %r9d
	movq	144(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB147_139
# BB#149:                               # %for f3.s0.v15.preheader.us.us.2.preheader
	addq	%r9, %r9
	movq	152(%rsp), %r8          # 8-byte Reload
	leaq	4(%r8), %r15
	movq	280(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax,%rcx), %ecx
	movl	96(%rsp), %edx          # 4-byte Reload
	cmpl	%edx, %ecx
	cmovgel	%ecx, %edx
	movslq	%edx, %rcx
	leaq	1(%rcx), %rsi
	movq	256(%rsp), %rbx         # 8-byte Reload
	subq	%rbx, %rsi
	movq	%rsi, 224(%rsp)         # 8-byte Spill
	movl	$31, %edx
	movq	232(%rsp), %rdi         # 8-byte Reload
	subl	%edi, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	subl	%edi, %edx
	movl	132(%rsp), %ebp         # 4-byte Reload
	cmpl	%ebp, %edx
	cmovll	%ebp, %edx
	notl	%edx
	movslq	%edx, %rdx
	movq	136(%rsp), %rbp         # 8-byte Reload
	subq	%rdx, %rbp
	imulq	%rsi, %rbp
	cmpl	$31, %edi
	movl	$32, %edx
	cmovgl	%edi, %edx
	addl	$1, %ecx
	subl	%eax, %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	imulq	%r9, %rcx
	leaq	(%rcx,%rcx), %rax
	leaq	(%rax,%rbp,2), %rax
	movq	216(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx), %r10
	leaq	(%rsi,%rsi), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	addq	%r8, 208(%rsp)          # 8-byte Folded Spill
	leaq	(%rbp,%rcx), %r12
	leaq	3(%rbp,%rcx), %r14
	leaq	2(%rbp,%rcx), %r13
	leaq	1(%rbp,%rcx), %r11
	movl	248(%rsp), %eax         # 4-byte Reload
	negl	%eax
	movl	%eax, 184(%rsp)         # 4-byte Spill
	subq	%rbx, %r14
	subq	%rbx, %r13
	subq	%rbx, %r11
	subq	%rbx, %r12
	.align	16, 0x90
.LBB147_150:                            # %for f3.s0.v15.preheader.us.us.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB147_151 Depth 2
                                        #     Child Loop BB147_154 Depth 2
	movl	184(%rsp), %eax         # 4-byte Reload
	movq	%r10, %rdi
	movq	%r15, %rbp
	movq	256(%rsp), %rsi         # 8-byte Reload
	movq	280(%rsp), %rcx         # 8-byte Reload
	cmpl	$0, 248(%rsp)           # 4-byte Folded Reload
	je	.LBB147_152
	.align	16, 0x90
.LBB147_151:                            # %for f3.s0.v15.us.us.2.prol
                                        #   Parent Loop BB147_150 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	(%rdi), %bx
	movw	%bx, (%rbp)
	addl	$1, %ecx
	addq	$1, %rsi
	addq	$6, %rbp
	addq	$2, %rdi
	addl	$1, %eax
	jne	.LBB147_151
.LBB147_152:                            # %for f3.s0.v15.preheader.us.us.2.split
                                        #   in Loop: Header=BB147_150 Depth=1
	cmpl	$3, 244(%rsp)           # 4-byte Folded Reload
	jb	.LBB147_155
# BB#153:                               # %for f3.s0.v15.preheader.us.us.2.split.split
                                        #   in Loop: Header=BB147_150 Depth=1
	leaq	(%rsi,%rsi), %rax
	leaq	(%rax,%rax,2), %rdi
	leaq	(%rsi,%r14), %rax
	movq	216(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax,2), %rbp
	leaq	(%rsi,%r13), %rax
	leaq	(%rdx,%rax,2), %rax
	leaq	(%rsi,%r11), %rbx
	leaq	(%rdx,%rbx,2), %rbx
	addq	%r12, %rsi
	leaq	(%rdx,%rsi,2), %rsi
	movl	200(%rsp), %r8d         # 4-byte Reload
	subl	%ecx, %r8d
	movq	208(%rsp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB147_154:                            # %for f3.s0.v15.us.us.2
                                        #   Parent Loop BB147_150 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	(%rsi), %r9w
	movw	%r9w, 4(%rdi,%rcx)
	movw	(%rbx), %dx
	movw	%dx, 10(%rdi,%rcx)
	movw	(%rax), %dx
	movw	%dx, 16(%rdi,%rcx)
	movw	(%rbp), %dx
	movw	%dx, 22(%rdi,%rcx)
	addq	$24, %rcx
	addq	$8, %rbp
	addq	$8, %rax
	addq	$8, %rbx
	addq	$8, %rsi
	addl	$-4, %r8d
	jne	.LBB147_154
.LBB147_155:                            # %end for f3.s0.v15.us.us.2
                                        #   in Loop: Header=BB147_150 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movq	272(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, %r15
	addq	192(%rsp), %r10         # 8-byte Folded Reload
	addq	%rcx, 208(%rsp)         # 8-byte Folded Spill
	movq	224(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, %r14
	addq	%rcx, %r13
	addq	%rcx, %r11
	addq	%rcx, %r12
	movq	264(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB147_150
	jmp	.LBB147_139
.LBB147_1:                              # %assert failed
	leaq	.Lstr(%rip), %rsi
	jmp	.LBB147_2
.LBB147_8:                              # %assert failed10
	leaq	.Lstr.137(%rip), %rsi
	jmp	.LBB147_2
.LBB147_10:                             # %assert failed29
	leaq	.Lstr.138(%rip), %rsi
	jmp	.LBB147_2
.LBB147_12:                             # %assert failed48
	leaq	.Lstr.139(%rip), %rsi
	jmp	.LBB147_2
.LBB147_14:                             # %assert failed67
	leaq	.Lstr.140(%rip), %rsi
	jmp	.LBB147_2
.LBB147_16:                             # %assert failed86
	leaq	.Lstr.141(%rip), %rsi
.LBB147_2:                              # %assert failed
	xorl	%edi, %edi
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	halide_error_buffer_argument_is_null@PLT # TAILCALL
.LBB147_138:                            # %end for f3.s0.v17
	xorl	%ebp, %ebp
	cmpq	$0, 216(%rsp)           # 8-byte Folded Reload
	je	.LBB147_5
.LBB147_139:                            # %if.then.i.204
	xorl	%ebp, %ebp
.LBB147_4:                              # %if.then.i
	xorl	%edi, %edi
	movq	216(%rsp), %rsi         # 8-byte Reload
	callq	halide_free@PLT
.LBB147_5:                              # %call_destructor.exit
	movl	%ebp, %eax
.LBB147_6:                              # %call_destructor.exit
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.LBB147_27:                             # %assert failed117
	leaq	.Lstr.142(%rip), %rsi
	leaq	.Lstr.143(%rip), %rdx
	xorl	%edi, %edi
	movl	$4, %r8d
	jmp	.LBB147_33
.LBB147_29:                             # %assert failed119
	leaq	.Lstr.144(%rip), %rsi
	leaq	.Lstr.145(%rip), %rdx
	xorl	%edi, %edi
	movl	$2, %r8d
	movl	%r12d, %ecx
	jmp	.LBB147_34
.LBB147_31:                             # %assert failed121
	leaq	.Lstr.146(%rip), %rsi
	jmp	.LBB147_32
.LBB147_36:                             # %assert failed123
	leaq	.Lstr.147(%rip), %rsi
.LBB147_32:                             # %assert failed121
	leaq	.Lstr.145(%rip), %rdx
	xorl	%edi, %edi
	movl	$2, %r8d
.LBB147_33:                             # %assert failed121
	movl	%eax, %ecx
.LBB147_34:                             # %assert failed121
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	jmp	halide_error_bad_elem_size@PLT # TAILCALL
.LBB147_39:                             # %assert failed125
	leal	-1(%rdi,%rbx), %eax
	movl	%eax, (%rsp)
	leaq	.Lstr.142(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movl	%ebx, %r9d
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB147_6
.LBB147_41:                             # %assert failed127
	leaq	.Lstr.142(%rip), %rsi
	movq	%rdi, %rcx
	jmp	.LBB147_73
.LBB147_44:                             # %assert failed129
	leal	-1(%r10,%rdx), %eax
	movl	%eax, (%rsp)
	leaq	.Lstr.142(%rip), %rsi
	movq	%rdx, %r9
	xorl	%edi, %edi
	movl	$1, %edx
	jmp	.LBB147_69
.LBB147_46:                             # %assert failed131
	leaq	.Lstr.142(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movl	%r10d, %ecx
	jmp	.LBB147_74
.LBB147_48:                             # %assert failed133
	leaq	.Lstr.144(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	movl	%r13d, %ecx
	jmp	.LBB147_74
.LBB147_50:                             # %assert failed135
	leaq	.Lstr.144(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movl	%r8d, %ecx
	jmp	.LBB147_74
.LBB147_53:                             # %assert failed137
	leal	-1(%r11,%rbp), %eax
	movl	%eax, (%rsp)
	leaq	.Lstr.144(%rip), %rsi
	xorl	%edi, %edi
	movl	$2, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movl	%ebp, %r9d
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB147_6
.LBB147_55:                             # %assert failed139
	leaq	.Lstr.144(%rip), %rsi
	xorl	%edi, %edi
	movl	$2, %edx
	movl	%r11d, %ecx
	jmp	.LBB147_74
.LBB147_58:                             # %assert failed141
	movl	216(%rsp), %r8d         # 4-byte Reload
	addl	$-1, %r8d
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	leaq	.Lstr.146(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	movl	244(%rsp), %ecx         # 4-byte Reload
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB147_6
.LBB147_60:                             # %assert failed143
	movq	%rsi, %rcx
	leaq	.Lstr.146(%rip), %rsi
	jmp	.LBB147_73
.LBB147_63:                             # %assert failed145
	addl	$-1, %r14d
	movl	16(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	leaq	.Lstr.146(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movl	%r14d, %r8d
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB147_6
.LBB147_65:                             # %assert failed147
	leaq	.Lstr.146(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movl	%r15d, %ecx
	jmp	.LBB147_74
.LBB147_68:                             # %assert failed149
	leal	-1(%rcx,%r9), %eax
	movl	%eax, (%rsp)
	leaq	.Lstr.147(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
.LBB147_69:                             # %assert failed149
	xorl	%ecx, %ecx
	movl	$2, %r8d
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB147_6
.LBB147_72:                             # %assert failed151
	leaq	.Lstr.147(%rip), %rsi
.LBB147_73:                             # %assert failed151
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.LBB147_74
.LBB147_77:                             # %assert failed153
	leal	-1(%r14,%r11), %eax
	movl	%eax, (%rsp)
	leaq	.Lstr.147(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	$4095, %r8d             # imm = 0xFFF
	movl	%r11d, %r9d
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB147_6
.LBB147_79:                             # %assert failed155
	leaq	.Lstr.147(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movl	%r14d, %ecx
.LBB147_74:                             # %assert failed151
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	jmp	halide_error_buffer_extents_negative@PLT # TAILCALL
.LBB147_81:                             # %assert failed157
	leaq	.Lstr.148(%rip), %rsi
	jmp	.LBB147_82
.LBB147_86:                             # %assert failed159
	leaq	.Lstr.150(%rip), %rsi
	leaq	.Lstr.151(%rip), %rcx
	xorl	%edi, %edi
	movl	$3, %r8d
	jmp	.LBB147_83
.LBB147_88:                             # %assert failed161
	leaq	.Lstr.152(%rip), %rsi
.LBB147_82:                             # %assert failed157
	leaq	.Lstr.149(%rip), %rcx
	xorl	%edi, %edi
	movl	$1, %r8d
.LBB147_83:                             # %assert failed157
	movl	%ebp, %edx
	jmp	.LBB147_84
.LBB147_90:                             # %assert failed163
	leaq	.Lstr.153(%rip), %rsi
	leaq	.Lstr.154(%rip), %rcx
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	movl	%ebx, %edx
	jmp	.LBB147_84
.LBB147_92:                             # %assert failed165
	leaq	.Lstr.155(%rip), %rsi
	leaq	.Lstr.151(%rip), %rcx
	xorl	%edi, %edi
	movl	$3, %r8d
	movl	%eax, %edx
	jmp	.LBB147_84
.LBB147_94:                             # %assert failed167
	leaq	.Lstr.156(%rip), %rsi
	jmp	.LBB147_95
.LBB147_97:                             # %assert failed169
	leaq	.Lstr.157(%rip), %rsi
.LBB147_95:                             # %assert failed167
	leaq	.Lstr.149(%rip), %rcx
	xorl	%edi, %edi
	movl	$1, %r8d
.LBB147_84:                             # %assert failed157
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	jmp	halide_error_constraint_violated@PLT # TAILCALL
.LBB147_99:                             # %assert failed173
	leaq	.Lstr.139(%rip), %rsi
	jmp	.LBB147_100
.LBB147_103:                            # %assert failed175
	leaq	.Lstr.139(%rip), %rsi
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movq	%r10, %rdx
	jmp	.LBB147_112
.LBB147_105:                            # %assert failed177
	leaq	.Lstr.141(%rip), %rsi
	jmp	.LBB147_100
.LBB147_107:                            # %assert failed179
	leaq	.Lstr.141(%rip), %rsi
	jmp	.LBB147_108
.LBB147_114:                            # %assert failed183
	leaq	(%rdx,%rdx,2), %rdx
.LBB147_110:                            # %assert failed181
	leaq	.Lstr.141(%rip), %rsi
	jmp	.LBB147_111
.LBB147_116:                            # %assert failed187
	leaq	.Lstr(%rip), %rsi
.LBB147_108:                            # %assert failed179
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movq	%rax, %rdx
	jmp	.LBB147_101
.LBB147_118:                            # %assert failed189
	leaq	.Lstr(%rip), %rsi
.LBB147_111:                            # %assert failed181
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	jmp	.LBB147_112
.LBB147_120:                            # %assert failed193
	leaq	.Lstr.140(%rip), %rsi
.LBB147_100:                            # %assert failed173
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	jmp	.LBB147_101
.LBB147_122:                            # %assert failed195
	leaq	.Lstr.140(%rip), %rsi
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movq	%r14, %rdx
.LBB147_112:                            # %assert failed181
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	jmp	halide_error_buffer_extents_too_large@PLT # TAILCALL
.LBB147_125:                            # %assert failed197
	leaq	.Lstr.158(%rip), %rsi
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movq	%rbp, %rdx
.LBB147_101:                            # %assert failed173
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	jmp	halide_error_buffer_allocation_too_large@PLT # TAILCALL
.LBB147_3:                              # %destructor_block
	cmpq	$0, 216(%rsp)           # 8-byte Folded Reload
	jne	.LBB147_4
	jmp	.LBB147_5
.LBB147_156:                            # %assert failed199
	xorl	%edi, %edi
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	halide_error_out_of_memory@PLT # TAILCALL
.Lfunc_end147:
	.size	__f3, .Lfunc_end147-__f3

	.section	.rodata,"a",@progbits
	.align	32
.LCPI148_0:
	.long	0                       # 0x0
	.long	4294967294              # 0xfffffffe
	.long	4294967292              # 0xfffffffc
	.long	4294967290              # 0xfffffffa
	.long	4294967288              # 0xfffffff8
	.long	4294967286              # 0xfffffff6
	.long	4294967284              # 0xfffffff4
	.long	4294967282              # 0xfffffff2
.LCPI148_1:
	.long	4294967280              # 0xfffffff0
	.long	4294967278              # 0xffffffee
	.long	4294967276              # 0xffffffec
	.long	4294967274              # 0xffffffea
	.long	4294967272              # 0xffffffe8
	.long	4294967270              # 0xffffffe6
	.long	4294967268              # 0xffffffe4
	.long	4294967266              # 0xffffffe2
.LCPI148_3:
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	4                       # 0x4
	.byte	5                       # 0x5
	.byte	8                       # 0x8
	.byte	9                       # 0x9
	.byte	12                      # 0xc
	.byte	13                      # 0xd
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	4                       # 0x4
	.byte	5                       # 0x5
	.byte	8                       # 0x8
	.byte	9                       # 0x9
	.byte	12                      # 0xc
	.byte	13                      # 0xd
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
.LCPI148_6:
	.long	16                      # 0x10
	.long	18                      # 0x12
	.long	20                      # 0x14
	.long	22                      # 0x16
	.long	24                      # 0x18
	.long	26                      # 0x1a
	.long	28                      # 0x1c
	.long	30                      # 0x1e
.LCPI148_7:
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	8                       # 0x8
	.long	10                      # 0xa
	.long	12                      # 0xc
	.long	14                      # 0xe
.LCPI148_8:
	.zero	4
	.long	4                       # 0x4
	.zero	4
	.long	5                       # 0x5
	.zero	4
	.long	6                       # 0x6
	.zero	4
	.long	7                       # 0x7
.LCPI148_9:
	.long	4                       # 0x4
	.zero	4
	.long	5                       # 0x5
	.zero	4
	.long	6                       # 0x6
	.zero	4
	.long	7                       # 0x7
	.zero	4
.LCPI148_10:
	.zero	4
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.zero	4
	.long	2                       # 0x2
	.zero	4
	.long	3                       # 0x3
.LCPI148_11:
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.zero	4
	.long	2                       # 0x2
	.zero	4
	.long	3                       # 0x3
	.zero	4
.LCPI148_17:
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	4                       # 0x4
	.byte	5                       # 0x5
	.byte	8                       # 0x8
	.byte	9                       # 0x9
	.byte	12                      # 0xc
	.byte	13                      # 0xd
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.byte	6                       # 0x6
	.byte	7                       # 0x7
	.byte	10                      # 0xa
	.byte	11                      # 0xb
	.byte	14                      # 0xe
	.byte	15                      # 0xf
	.byte	16                      # 0x10
	.byte	17                      # 0x11
	.byte	20                      # 0x14
	.byte	21                      # 0x15
	.byte	24                      # 0x18
	.byte	25                      # 0x19
	.byte	28                      # 0x1c
	.byte	29                      # 0x1d
	.byte	18                      # 0x12
	.byte	19                      # 0x13
	.byte	22                      # 0x16
	.byte	23                      # 0x17
	.byte	26                      # 0x1a
	.byte	27                      # 0x1b
	.byte	30                      # 0x1e
	.byte	31                      # 0x1f
.LCPI148_18:
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.byte	6                       # 0x6
	.byte	7                       # 0x7
	.byte	10                      # 0xa
	.byte	11                      # 0xb
	.byte	14                      # 0xe
	.byte	15                      # 0xf
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	4                       # 0x4
	.byte	5                       # 0x5
	.byte	8                       # 0x8
	.byte	9                       # 0x9
	.byte	12                      # 0xc
	.byte	13                      # 0xd
	.byte	18                      # 0x12
	.byte	19                      # 0x13
	.byte	22                      # 0x16
	.byte	23                      # 0x17
	.byte	26                      # 0x1a
	.byte	27                      # 0x1b
	.byte	30                      # 0x1e
	.byte	31                      # 0x1f
	.byte	16                      # 0x10
	.byte	17                      # 0x11
	.byte	20                      # 0x14
	.byte	21                      # 0x15
	.byte	24                      # 0x18
	.byte	25                      # 0x19
	.byte	28                      # 0x1c
	.byte	29                      # 0x1d
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI148_2:
	.long	1                       # 0x1
.LCPI148_12:
	.long	1199570688              # float 65535
.LCPI148_13:
	.long	1065353216              # float 1
.LCPI148_14:
	.long	1056964608              # float 0.5
.LCPI148_15:
	.long	1048576000              # float 0.25
.LCPI148_16:
	.long	1166012416              # float 4095
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI148_4:
	.byte	0                       # 0x0
	.byte	2                       # 0x2
	.byte	4                       # 0x4
	.byte	6                       # 0x6
	.byte	8                       # 0x8
	.byte	10                      # 0xa
	.byte	12                      # 0xc
	.byte	14                      # 0xe
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI148_5:
	.zero	16,1
	.section	.text.par_for___f3_f2.s0.v16.v19,"ax",@progbits
	.align	16, 0x90
	.type	par_for___f3_f2.s0.v16.v19,@function
par_for___f3_f2.s0.v16.v19:             # @par_for___f3_f2.s0.v16.v19
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$3392, %rsp             # imm = 0xD40
	movl	60(%rdx), %r8d
	movq	%r8, 792(%rsp)          # 8-byte Spill
	movl	64(%rdx), %r9d
	movq	%r9, 720(%rsp)          # 8-byte Spill
	movl	68(%rdx), %ebx
	movq	%rbx, 2168(%rsp)        # 8-byte Spill
	movl	72(%rdx), %ecx
	movq	%rcx, 728(%rsp)         # 8-byte Spill
	shll	$5, %esi
	movq	%rsi, 712(%rsp)         # 8-byte Spill
	leal	(%rcx,%rsi), %eax
	leal	-32(%r9,%rcx), %ecx
	cmpl	%eax, %ecx
	cmovgl	%eax, %ecx
	movq	%rcx, 400(%rsp)         # 8-byte Spill
	leal	31(%r8), %eax
	movl	%eax, 856(%rsp)         # 4-byte Spill
	andl	$-32, %eax
	leal	(%rax,%rbx), %ecx
	leal	-32(%rax,%rcx), %ecx
	leal	30(%rax,%rbx), %eax
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	subl	%ebx, %eax
	movq	%rax, 904(%rsp)         # 8-byte Spill
	leal	2(%rax), %eax
	movq	%rax, 2552(%rsp)        # 8-byte Spill
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB148_2
# BB#1:                                 # %entry
	movb	$1, %cl
	testb	%cl, %cl
	je	.LBB148_2
# BB#3:                                 # %assert succeeded
	vmovss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 476(%rsp)        # 4-byte Spill
	vmovss	4(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 528(%rsp)        # 4-byte Spill
	vmovss	8(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 592(%rsp)        # 4-byte Spill
	movl	12(%rdx), %ecx
	movl	%ecx, 440(%rsp)         # 4-byte Spill
	movl	16(%rdx), %ecx
	movl	%ecx, 464(%rsp)         # 4-byte Spill
	movslq	20(%rdx), %rcx
	movq	%rcx, 544(%rsp)         # 8-byte Spill
	vmovss	24(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 480(%rsp)        # 4-byte Spill
	vmovss	28(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 512(%rsp)        # 4-byte Spill
	vmovss	32(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 412(%rsp)        # 4-byte Spill
	vmovss	36(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 472(%rsp)        # 4-byte Spill
	vmovss	40(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 456(%rsp)        # 4-byte Spill
	vmovss	44(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 392(%rsp)        # 4-byte Spill
	movslq	48(%rdx), %rcx
	movq	%rcx, 504(%rsp)         # 8-byte Spill
	movslq	52(%rdx), %rcx
	movq	%rcx, 944(%rsp)         # 8-byte Spill
	movslq	56(%rdx), %rcx
	movq	%rcx, 584(%rsp)         # 8-byte Spill
	movl	76(%rdx), %ecx
	movq	%rcx, 872(%rsp)         # 8-byte Spill
	movl	80(%rdx), %r12d
	movl	84(%rdx), %ecx
	movq	%rcx, 936(%rsp)         # 8-byte Spill
	movslq	88(%rdx), %rcx
	movq	%rcx, 664(%rsp)         # 8-byte Spill
	movl	92(%rdx), %r14d
	movl	96(%rdx), %ecx
	movl	%ecx, 416(%rsp)         # 4-byte Spill
	movl	100(%rdx), %ecx
	movl	%ecx, 432(%rsp)         # 4-byte Spill
	vmovss	108(%rdx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 640(%rsp)        # 4-byte Spill
	vmovss	112(%rdx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 448(%rsp)        # 4-byte Spill
	vmovss	116(%rdx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 384(%rsp)        # 4-byte Spill
	movl	104(%rdx), %ecx
	movl	%ecx, 424(%rsp)         # 4-byte Spill
	movq	120(%rdx), %rcx
	movq	%rcx, 576(%rsp)         # 8-byte Spill
	movq	136(%rdx), %rcx
	movq	%rcx, 864(%rsp)         # 8-byte Spill
	movq	152(%rdx), %rcx
	movq	%rcx, 1736(%rsp)        # 8-byte Spill
	movq	168(%rdx), %r15
	orq	$4, %rax
	movq	%rdi, 280(%rsp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	halide_malloc@PLT
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB148_4
# BB#6:                                 # %assert succeeded2
	movl	856(%rsp), %ecx         # 4-byte Reload
	sarl	$5, %ecx
	movl	%ecx, 564(%rsp)         # 4-byte Spill
	movq	792(%rsp), %rbx         # 8-byte Reload
	addl	$63, %ebx
	sarl	$5, %ebx
	movq	%rbx, 792(%rsp)         # 8-byte Spill
	leal	(%r12,%r12), %eax
	leal	-2(%r12,%r12), %edx
	movl	%edx, 628(%rsp)         # 4-byte Spill
	movl	$2, %esi
	subl	%eax, %esi
	cmpl	$1, %eax
	cmovgl	%edx, %esi
	movl	%esi, 624(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	movl	%r14d, 788(%rsp)        # 4-byte Spill
	movq	664(%rsp), %rdx         # 8-byte Reload
	imull	%edx, %eax
	movq	2168(%rsp), %r14        # 8-byte Reload
	movslq	%r14d, %rsi
	movq	%rsi, 880(%rsp)         # 8-byte Spill
	movq	936(%rsp), %r9          # 8-byte Reload
	addl	%r9d, %eax
	vmovd	%eax, %xmm0
	vmovaps	%ymm0, 736(%rsp)        # 32-byte Spill
	movq	872(%rsp), %rdx         # 8-byte Reload
	leal	(%r9,%rdx), %eax
	subl	%r14d, %eax
	movq	%rax, 800(%rsp)         # 8-byte Spill
	leal	1(%rax), %eax
	vmovd	%eax, %xmm0
	movl	%r9d, %eax
	subl	%r14d, %eax
	movq	%rax, 496(%rsp)         # 8-byte Spill
	leal	1(%rax), %eax
	vmovd	%eax, %xmm1
	leal	-2(%rdx,%rdx), %eax
	vmovd	%eax, %xmm2
	vmovd	%eax, %xmm3
	leal	-1(%r9,%rdx), %eax
	vmovd	%eax, %xmm4
	movl	%r14d, %eax
	andl	$1, %eax
	movl	%eax, 784(%rsp)         # 4-byte Spill
	movl	%r14d, %r11d
	subl	%r9d, %r11d
	movq	%r11, 1912(%rsp)        # 8-byte Spill
	movl	%ecx, %eax
	shll	$6, %eax
	movq	%rax, 568(%rsp)         # 8-byte Spill
	leal	-32(%r14,%rax), %eax
	shll	$5, %ecx
	movq	%rcx, 552(%rsp)         # 8-byte Spill
	leal	30(%r14,%rcx), %edx
	cmpl	%edx, %eax
	cmovgel	%eax, %edx
	movq	%r12, %r10
	movslq	%edx, %r12
	movq	%r12, %rdx
	shlq	$5, %rdx
	leaq	160(%rdx), %rax
	movq	%rsi, %r8
	shlq	$5, %r8
	movq	%r8, 672(%rsp)          # 8-byte Spill
	subq	%r8, %rax
	movq	%rax, 1016(%rsp)        # 8-byte Spill
	leaq	2(%r12), %rax
	subq	%rsi, %rax
	shlq	$2, %rax
	movq	%rax, 896(%rsp)         # 8-byte Spill
	movq	728(%rsp), %rsi         # 8-byte Reload
	movl	%esi, %eax
	notl	%eax
	movq	%rax, 1976(%rsp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	712(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ecx
	movl	%ecx, 860(%rsp)         # 4-byte Spill
	movl	$31, %eax
	movq	720(%rsp), %rdi         # 8-byte Reload
	subl	%edi, %eax
	subl	%esi, %eax
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	movl	$-2, %esi
	subl	%eax, %esi
	vpbroadcastd	%xmm0, %ymm0
	vmovdqa	.LCPI148_0(%rip), %ymm5 # ymm5 = [0,4294967294,4294967292,4294967290,4294967288,4294967286,4294967284,4294967282]
	vpaddd	%ymm5, %ymm0, %ymm6
	vmovdqa	%ymm6, 1856(%rsp)       # 32-byte Spill
	vmovdqa	.LCPI148_1(%rip), %ymm6 # ymm6 = [4294967280,4294967278,4294967276,4294967274,4294967272,4294967270,4294967268,4294967266]
	vpaddd	%ymm6, %ymm0, %ymm0
	vmovdqa	%ymm0, 1824(%rsp)       # 32-byte Spill
	vpbroadcastd	%xmm1, %ymm0
	vpaddd	%ymm5, %ymm0, %ymm1
	vmovdqa	%ymm1, 1664(%rsp)       # 32-byte Spill
	vpaddd	%ymm6, %ymm0, %ymm0
	vmovdqa	%ymm0, 1632(%rsp)       # 32-byte Spill
	vmovd	%r9d, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	movq	872(%rsp), %rax         # 8-byte Reload
	vmovd	%eax, %xmm1
	vpbroadcastd	%xmm1, %ymm1
	vbroadcastss	%xmm3, %ymm3
	vmovaps	%ymm3, 1920(%rsp)       # 32-byte Spill
	vbroadcastss	%xmm2, %xmm2
	vmovaps	%xmm2, 912(%rsp)        # 16-byte Spill
	vpbroadcastd	.LCPI148_2(%rip), %ymm2
	vpsubd	%ymm1, %ymm2, %ymm2
	vmovdqa	%ymm2, 2112(%rsp)       # 32-byte Spill
	vpaddd	%ymm0, %ymm1, %ymm0
	vpcmpeqd	%ymm1, %ymm1, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
	vmovdqa	%ymm0, 2048(%rsp)       # 32-byte Spill
	vbroadcastss	%xmm4, %xmm0
	vmovaps	%xmm0, 2032(%rsp)       # 16-byte Spill
	vmovd	%r9d, %xmm0
	vbroadcastss	%xmm0, %xmm0
	vmovaps	%xmm0, 2096(%rsp)       # 16-byte Spill
	movq	800(%rsp), %rax         # 8-byte Reload
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vpaddd	%ymm5, %ymm0, %ymm1
	vmovdqa	%ymm1, 1792(%rsp)       # 32-byte Spill
	vpaddd	%ymm6, %ymm0, %ymm0
	vmovdqa	%ymm0, 1760(%rsp)       # 32-byte Spill
	movq	496(%rsp), %rax         # 8-byte Reload
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vpaddd	%ymm5, %ymm0, %ymm1
	vmovdqa	%ymm1, 1600(%rsp)       # 32-byte Spill
	vpaddd	%ymm6, %ymm0, %ymm0
	vmovdqa	%ymm0, 1568(%rsp)       # 32-byte Spill
	subq	%r8, %rdx
	movq	%rdx, 1024(%rsp)        # 8-byte Spill
	shlq	$4, %r12
	movq	880(%rsp), %r8          # 8-byte Reload
	shlq	$4, %r8
	movq	%r8, 488(%rsp)          # 8-byte Spill
	subq	%r8, %r12
	movq	%r12, 960(%rsp)         # 8-byte Spill
	movq	400(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %ecx
	movq	%rcx, 1088(%rsp)        # 8-byte Spill
	leal	2(%rax), %eax
	movl	%eax, 892(%rsp)         # 4-byte Spill
	movq	664(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%r10), %eax
	movl	%eax, 660(%rsp)         # 4-byte Spill
	leal	-1(%r10,%rcx), %eax
	movl	%eax, 620(%rsp)         # 4-byte Spill
	leal	-1(%rcx,%r10), %eax
	movl	%eax, 616(%rsp)         # 4-byte Spill
	leal	-1(%r14), %eax
	movq	%rax, 1752(%rsp)        # 8-byte Spill
	leal	-1(%r11), %eax
	movq	%rax, 1744(%rsp)        # 8-byte Spill
	leaq	64(%rdx), %rax
	movq	%rax, 1008(%rsp)        # 8-byte Spill
	movq	%r10, 632(%rsp)         # 8-byte Spill
	movq	1736(%rsp), %r8         # 8-byte Reload
	.align	16, 0x90
.LBB148_7:                              # %for deinterleaved$3.s0.v16
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB148_9 Depth 2
	movl	%esi, 952(%rsp)         # 4-byte Spill
	movzbl	%sil, %esi
	andl	$3, %esi
	testl	%ebx, %ebx
	jle	.LBB148_39
# BB#8:                                 # %for deinterleaved$3.s0.v15.v15.preheader
                                        #   in Loop: Header=BB148_7 Depth=1
	imulq	896(%rsp), %rsi         # 8-byte Folded Reload
	movq	1088(%rsp), %rbx        # 8-byte Reload
	movl	%ebx, %eax
	movq	664(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	cltd
	idivl	628(%rsp)               # 4-byte Folded Reload
	leaq	(%rsi,%r13), %rdi
	movl	%edx, %eax
	sarl	$31, %eax
	andl	624(%rsp), %eax         # 4-byte Folded Reload
	movq	632(%rsp), %rsi         # 8-byte Reload
	subl	%esi, %edx
	leal	(%rdx,%rax), %esi
	leal	1(%rdx,%rax), %eax
	cmpl	$-2, %esi
	notl	%esi
	cmovgl	%eax, %esi
	movl	620(%rsp), %eax         # 4-byte Reload
	subl	%esi, %eax
	movl	616(%rsp), %edx         # 4-byte Reload
	cmpl	%ebx, %edx
	cmovgl	%ebx, %edx
	cmpl	%ecx, %edx
	cmovll	%ecx, %edx
	cmpl	%ebx, 660(%rsp)         # 4-byte Folded Reload
	cmovlel	%eax, %edx
	cmpl	%ecx, %ebx
	cmovll	%eax, %edx
	movl	784(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	setne	%r9b
	sete	%sil
	imull	788(%rsp), %edx         # 4-byte Folded Reload
	movl	%ebx, %r10d
	andl	$1, %r10d
	movl	%r10d, 1080(%rsp)       # 4-byte Spill
	vmovd	%edx, %xmm1
	vpabsd	912(%rsp), %xmm0        # 16-byte Folded Reload
	vinserti128	$1, %xmm0, %ymm0, %ymm0
	vmovdqa	%ymm0, 2304(%rsp)       # 32-byte Spill
	vpsubd	736(%rsp), %ymm1, %ymm1 # 32-byte Folded Reload
	vpbroadcastd	%xmm1, %ymm0
	vmovdqa	%ymm0, 2272(%rsp)       # 32-byte Spill
	sete	%al
	movb	%r10b, %dl
	andb	%sil, %dl
	movb	%dl, 1064(%rsp)         # 1-byte Spill
	testl	%ebx, %ecx
	setne	%dl
	movl	%ebx, %esi
	movq	2168(%rsp), %rcx        # 8-byte Reload
	orl	%ecx, %esi
	testb	$1, %sil
	sete	%bl
	orb	%dl, %bl
	movb	%bl, 1056(%rsp)         # 1-byte Spill
	andb	%r9b, %al
	movb	%al, 1072(%rsp)         # 1-byte Spill
	xorl	%ecx, %ecx
	movq	792(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB148_9:                              # %for deinterleaved$3.s0.v15.v15
                                        #   Parent Loop BB148_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, 2560(%rsp)        # 8-byte Spill
	movl	%eax, 2208(%rsp)        # 4-byte Spill
	movq	%rdi, 2240(%rsp)        # 8-byte Spill
	testl	%r10d, %r10d
	sete	2176(%rsp)              # 1-byte Folded Spill
	setne	1712(%rsp)              # 1-byte Folded Spill
	movq	1744(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rcx), %eax
	vmovd	%eax, %xmm1
	vpbroadcastd	%xmm1, %ymm1
	vmovdqa	.LCPI148_7(%rip), %ymm12 # ymm12 = [0,2,4,6,8,10,12,14]
	vpaddd	%ymm12, %ymm1, %ymm3
	vextracti128	$1, %ymm3, %xmm4
	vpextrd	$1, %xmm4, %eax
	vmovdqa	1920(%rsp), %ymm0       # 32-byte Reload
	vextracti128	$1, %ymm0, %xmm5
	vpextrd	$1, %xmm5, %ebx
	movl	%ebx, 1488(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, %r9d
	vmovd	%xmm4, %eax
	vmovd	%xmm5, %r12d
	movl	%r12d, 1480(%rsp)       # 4-byte Spill
	cltd
	idivl	%r12d
	movl	%edx, %esi
	vpextrd	$2, %xmm4, %eax
	vpextrd	$2, %xmm5, %r10d
	movl	%r10d, 1472(%rsp)       # 4-byte Spill
	cltd
	idivl	%r10d
	movl	%edx, %r14d
	vpextrd	$3, %xmm4, %eax
	vpextrd	$3, %xmm5, %ecx
	movl	%ecx, 2336(%rsp)        # 4-byte Spill
	cltd
	idivl	%ecx
	movl	%edx, 2528(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm3, %eax
	vpextrd	$1, %xmm0, %edi
	movl	%edi, 1216(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, %edi
	vmovd	%esi, %xmm4
	vmovd	%xmm3, %eax
	vmovd	%xmm0, %esi
	movl	%esi, 1184(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r11d
	vpinsrd	$1, %r9d, %xmm4, %xmm4
	vpextrd	$2, %xmm3, %eax
	vpextrd	$2, %xmm0, %esi
	movl	%esi, 1152(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r9d
	vpinsrd	$2, %r14d, %xmm4, %xmm5
	vpextrd	$3, %xmm3, %eax
	vpextrd	$3, %xmm0, %esi
	movl	%esi, 1120(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r14d
	vmovdqa	.LCPI148_6(%rip), %ymm9 # ymm9 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm9, %ymm1, %ymm4
	vextracti128	$1, %ymm4, %xmm6
	vpextrd	$1, %xmm6, %eax
	cltd
	idivl	%ebx
	movl	%edx, %esi
	vpinsrd	$3, 2528(%rsp), %xmm5, %xmm15 # 4-byte Folded Reload
	vmovd	%r11d, %xmm3
	vmovd	%xmm6, %eax
	cltd
	idivl	%r12d
	movl	%edx, %ebx
	vpinsrd	$1, %edi, %xmm3, %xmm3
	vpinsrd	$2, %r9d, %xmm3, %xmm3
	vpextrd	$2, %xmm6, %eax
	cltd
	idivl	%r10d
	movl	%edx, %edi
	vpinsrd	$3, %r14d, %xmm3, %xmm3
	vmovd	%ebx, %xmm5
	vpextrd	$3, %xmm6, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebx
	vpinsrd	$1, %esi, %xmm5, %xmm5
	vpextrd	$1, %xmm4, %eax
	vpextrd	$1, %xmm0, %ecx
	movl	%ecx, 1280(%rsp)        # 4-byte Spill
	cltd
	idivl	%ecx
	movl	%edx, %esi
	vpinsrd	$2, %edi, %xmm5, %xmm5
	vmovd	%xmm4, %eax
	vmovd	%xmm0, %ecx
	movl	%ecx, 1248(%rsp)        # 4-byte Spill
	cltd
	idivl	%ecx
	movl	%edx, %edi
	vpinsrd	$3, %ebx, %xmm5, %xmm6
	vpextrd	$2, %xmm4, %eax
	vpextrd	$2, %xmm0, %ecx
	movl	%ecx, 1464(%rsp)        # 4-byte Spill
	cltd
	idivl	%ecx
	movl	%edx, %ebx
	vmovd	%edi, %xmm5
	vpextrd	$3, %xmm4, %eax
	vpextrd	$3, %xmm0, %ecx
	movl	%ecx, 1456(%rsp)        # 4-byte Spill
	cltd
	idivl	%ecx
	vpinsrd	$1, %esi, %xmm5, %xmm4
	movq	2560(%rsp), %rcx        # 8-byte Reload
	vpinsrd	$2, %ebx, %xmm4, %xmm7
	vmovd	%ecx, %xmm4
	vpbroadcastd	%xmm4, %ymm5
	vmovdqa	1856(%rsp), %ymm0       # 32-byte Reload
	vpcmpgtd	%ymm5, %ymm0, %ymm4
	vmovdqa	.LCPI148_3(%rip), %ymm0 # ymm0 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vmovdqa	%ymm0, %ymm10
	vpshufb	%ymm10, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vmovdqa	1824(%rsp), %ymm0       # 32-byte Reload
	vpcmpgtd	%ymm5, %ymm0, %ymm8
	vpshufb	%ymm10, %ymm8, %ymm8
	vpermq	$232, %ymm8, %ymm8      # ymm8 = ymm8[0,2,2,3]
	vmovdqa	.LCPI148_4(%rip), %xmm0 # xmm0 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vmovdqa	%xmm0, %xmm1
	vpshufb	%xmm1, %xmm8, %xmm0
	vpshufb	%xmm1, %xmm4, %xmm4
	vpunpcklqdq	%xmm0, %xmm4, %xmm0 # xmm0 = xmm4[0],xmm0[0]
	vpxor	.LCPI148_5(%rip), %xmm0, %xmm0
	vmovdqa	1664(%rsp), %ymm2       # 32-byte Reload
	vpcmpgtd	%ymm5, %ymm2, %ymm4
	vpshufb	%ymm10, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vmovdqa	1632(%rsp), %ymm2       # 32-byte Reload
	vpcmpgtd	%ymm5, %ymm2, %ymm8
	vpshufb	%ymm10, %ymm8, %ymm8
	vpermq	$232, %ymm8, %ymm8      # ymm8 = ymm8[0,2,2,3]
	vpshufb	%xmm1, %xmm8, %xmm2
	vpshufb	%xmm1, %xmm4, %xmm4
	vpunpcklqdq	%xmm2, %xmm4, %xmm2 # xmm2 = xmm4[0],xmm2[0]
	vpor	%xmm0, %xmm2, %xmm13
	vpinsrd	$3, %edx, %xmm7, %xmm0
	vinserti128	$1, %xmm6, %ymm0, %ymm0
	vpsrad	$31, %ymm0, %ymm2
	vmovdqa	2304(%rsp), %ymm11      # 32-byte Reload
	vpand	%ymm2, %ymm11, %ymm2
	vmovdqa	2112(%rsp), %ymm8       # 32-byte Reload
	vpaddd	%ymm0, %ymm8, %ymm0
	vpaddd	%ymm2, %ymm0, %ymm0
	vpabsd	%xmm0, %xmm2
	vextracti128	$1, %ymm0, %xmm0
	vpabsd	%xmm0, %xmm0
	vinserti128	$1, %xmm0, %ymm2, %ymm0
	vmovdqa	2048(%rsp), %ymm10      # 32-byte Reload
	vpsubd	%ymm0, %ymm10, %ymm0
	movq	1752(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rcx), %edx
	movl	%edx, 1984(%rsp)        # 4-byte Spill
	vmovd	%edx, %xmm2
	vpbroadcastd	%xmm2, %ymm14
	vpaddd	%ymm9, %ymm14, %ymm2
	vmovdqa	2032(%rsp), %xmm4       # 16-byte Reload
	vpminsd	%xmm4, %xmm2, %xmm7
	vextracti128	$1, %ymm2, %xmm2
	vpminsd	%xmm4, %xmm2, %xmm2
	vmovdqa	2096(%rsp), %xmm6       # 16-byte Reload
	vpmaxsd	%xmm6, %xmm7, %xmm7
	vpmaxsd	%xmm6, %xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm7, %ymm2
	vpunpckhbw	%xmm13, %xmm13, %xmm7 # xmm7 = xmm13[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm7, %ymm7    # ymm7 = xmm7[0],zero,xmm7[1],zero,xmm7[2],zero,xmm7[3],zero,xmm7[4],zero,xmm7[5],zero,xmm7[6],zero,xmm7[7],zero
	vpslld	$31, %ymm7, %ymm7
	vblendvps	%ymm7, %ymm0, %ymm2, %ymm0
	vmovdqa	2272(%rsp), %ymm9       # 32-byte Reload
	vpaddd	%ymm0, %ymm9, %ymm7
	vmovq	%xmm7, %r9
	movslq	%r9d, %rax
	movq	%rax, 1960(%rsp)        # 8-byte Spill
	movzwl	(%r8,%rax,2), %eax
	vmovd	%eax, %xmm0
	vinserti128	$1, %xmm15, %ymm3, %ymm1
	vpsrad	$31, %ymm1, %ymm2
	vpand	%ymm2, %ymm11, %ymm2
	vpaddd	%ymm1, %ymm8, %ymm1
	vpaddd	%ymm2, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm2
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm2, %ymm1
	vpaddd	%ymm12, %ymm14, %ymm2
	vmovdqa	%ymm12, %ymm15
	vpminsd	%xmm4, %xmm2, %xmm3
	vextracti128	$1, %ymm2, %xmm2
	vpminsd	%xmm4, %xmm2, %xmm2
	vmovdqa	%xmm4, %xmm14
	vpmaxsd	%xmm6, %xmm3, %xmm3
	vpmaxsd	%xmm6, %xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm3, %ymm2
	vpsubd	%ymm1, %ymm10, %ymm1
	vpmovzxbd	%xmm13, %ymm3   # ymm3 = xmm13[0],zero,zero,zero,xmm13[1],zero,zero,zero,xmm13[2],zero,zero,zero,xmm13[3],zero,zero,zero,xmm13[4],zero,zero,zero,xmm13[5],zero,zero,zero,xmm13[6],zero,zero,zero,xmm13[7],zero,zero,zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm1, %ymm2, %ymm1
	vpaddd	%ymm1, %ymm9, %ymm1
	vmovq	%xmm1, %rdi
	movslq	%edi, %rax
	movq	%rax, 2368(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	vpextrq	$1, %xmm1, %rsi
	movslq	%esi, %rax
	movq	%rax, 2496(%rsp)        # 8-byte Spill
	sarq	$32, %rsi
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rcx
	movslq	%ecx, %rax
	movq	%rax, 2464(%rsp)        # 8-byte Spill
	sarq	$32, %rcx
	vpextrq	$1, %xmm1, %rbx
	movslq	%ebx, %rax
	movq	%rax, 2528(%rsp)        # 8-byte Spill
	sarq	$32, %rbx
	sarq	$32, %r9
	movq	%r9, 2432(%rsp)         # 8-byte Spill
	vpextrq	$1, %xmm7, %r12
	movslq	%r12d, %r10
	movq	%r10, 1312(%rsp)        # 8-byte Spill
	sarq	$32, %r12
	movq	%r12, 1408(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm7, %xmm1
	vmovq	%xmm1, %r11
	movslq	%r11d, %rax
	movq	%rax, 2400(%rsp)        # 8-byte Spill
	sarq	$32, %r11
	movq	%r11, 1376(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %r14
	movslq	%r14d, %r9
	movq	%r9, 1344(%rsp)         # 8-byte Spill
	sarq	$32, %r14
	movq	%r14, 1448(%rsp)        # 8-byte Spill
	andl	$1, %edx
	movl	%edx, 1968(%rsp)        # 4-byte Spill
	sete	%al
	andb	1712(%rsp), %al         # 1-byte Folded Reload
	movq	2432(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$1, (%r8,%rdx,2), %xmm0, %xmm0
	vpinsrw	$2, (%r8,%r10,2), %xmm0, %xmm0
	vpinsrw	$3, (%r8,%r12,2), %xmm0, %xmm0
	movq	2400(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$4, (%r8,%rdx,2), %xmm0, %xmm0
	vpinsrw	$5, (%r8,%r11,2), %xmm0, %xmm0
	vpinsrw	$6, (%r8,%r9,2), %xmm0, %xmm0
	vpinsrw	$7, (%r8,%r14,2), %xmm0, %xmm4
	jne	.LBB148_10
# BB#11:                                # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vpxor	%ymm1, %ymm1, %ymm1
	movq	2496(%rsp), %r10        # 8-byte Reload
	movq	2528(%rsp), %r9         # 8-byte Reload
	movq	2464(%rsp), %rdx        # 8-byte Reload
	jmp	.LBB148_12
	.align	16, 0x90
.LBB148_10:                             #   in Loop: Header=BB148_9 Depth=2
	movq	2368(%rsp), %rdx        # 8-byte Reload
	movzwl	(%r8,%rdx,2), %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, (%r8,%rdi,2), %xmm0, %xmm0
	movq	2496(%rsp), %r10        # 8-byte Reload
	vpinsrw	$2, (%r8,%r10,2), %xmm0, %xmm0
	vpinsrw	$3, (%r8,%rsi,2), %xmm0, %xmm0
	movq	2464(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$4, (%r8,%rdx,2), %xmm0, %xmm0
	vpinsrw	$5, (%r8,%rcx,2), %xmm0, %xmm0
	movq	2528(%rsp), %r9         # 8-byte Reload
	vpinsrw	$6, (%r8,%r9,2), %xmm0, %xmm0
	vpinsrw	$7, (%r8,%rbx,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm1
.LBB148_12:                             # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	testb	%al, %al
	jne	.LBB148_13
# BB#14:                                # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	movq	%rdx, 2464(%rsp)        # 8-byte Spill
	movq	%r10, 2496(%rsp)        # 8-byte Spill
	movq	%r9, 2528(%rsp)         # 8-byte Spill
	movq	%rdi, 1504(%rsp)        # 8-byte Spill
	movq	%rcx, 1536(%rsp)        # 8-byte Spill
	movq	%rsi, 1696(%rsp)        # 8-byte Spill
	movq	%rbx, 1712(%rsp)        # 8-byte Spill
	vpxor	%ymm4, %ymm4, %ymm4
	jmp	.LBB148_15
	.align	16, 0x90
.LBB148_13:                             #   in Loop: Header=BB148_9 Depth=2
	movq	%rdx, 2464(%rsp)        # 8-byte Spill
	movq	%r10, 2496(%rsp)        # 8-byte Spill
	movq	%r9, 2528(%rsp)         # 8-byte Spill
	movq	%rdi, 1504(%rsp)        # 8-byte Spill
	movq	%rcx, 1536(%rsp)        # 8-byte Spill
	movq	%rsi, 1696(%rsp)        # 8-byte Spill
	movq	%rbx, 1712(%rsp)        # 8-byte Spill
	vpmovzxwd	%xmm4, %ymm0    # ymm0 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vcvtdq2ps	%ymm0, %ymm4
.LBB148_15:                             # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	movq	1912(%rsp), %rax        # 8-byte Reload
	movq	2560(%rsp), %rcx        # 8-byte Reload
	leal	(%rax,%rcx), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm6
	vpaddd	%ymm15, %ymm6, %ymm7
	vextracti128	$1, %ymm7, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	movl	1488(%rsp), %r10d       # 4-byte Reload
	idivl	%r10d
	movl	%edx, 1104(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	movl	1480(%rsp), %r11d       # 4-byte Reload
	idivl	%r11d
	movl	%edx, 1096(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	movl	1472(%rsp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, 1112(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	movl	2336(%rsp), %r12d       # 4-byte Reload
	idivl	%r12d
	movl	%edx, %esi
	vpextrd	$1, %xmm7, %eax
	cltd
	idivl	1216(%rsp)              # 4-byte Folded Reload
	movl	%edx, %edi
	vmovd	%xmm7, %eax
	cltd
	idivl	1184(%rsp)              # 4-byte Folded Reload
	movl	%edx, %ebx
	vpextrd	$2, %xmm7, %eax
	cltd
	idivl	1152(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r14d
	vpextrd	$3, %xmm7, %eax
	cltd
	idivl	1120(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r9d
	vmovdqa	.LCPI148_6(%rip), %ymm13 # ymm13 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm13, %ymm6, %ymm6
	vextracti128	$1, %ymm6, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, %r10d
	vmovd	%xmm0, %eax
	cltd
	idivl	%r11d
	movl	%edx, %r11d
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, 1488(%rsp)        # 4-byte Spill
	vmovd	1096(%rsp), %xmm2       # 4-byte Folded Reload
                                        # xmm2 = mem[0],zero,zero,zero
	vpinsrd	$1, 1104(%rsp), %xmm2, %xmm2 # 4-byte Folded Reload
	vmovdqa	1792(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm5, %ymm3, %ymm7
	vmovdqa	.LCPI148_3(%rip), %ymm11 # ymm11 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vpshufb	%ymm11, %ymm7, %ymm7
	vpermq	$232, %ymm7, %ymm7      # ymm7 = ymm7[0,2,2,3]
	vmovdqa	1760(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm5, %ymm3, %ymm8
	vpshufb	%ymm11, %ymm8, %ymm8
	vpermq	$232, %ymm8, %ymm8      # ymm8 = ymm8[0,2,2,3]
	vmovdqa	.LCPI148_4(%rip), %xmm12 # xmm12 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vpshufb	%xmm12, %xmm8, %xmm3
	vpshufb	%xmm12, %xmm7, %xmm7
	vpunpcklqdq	%xmm3, %xmm7, %xmm3 # xmm3 = xmm7[0],xmm3[0]
	vpxor	.LCPI148_5(%rip), %xmm3, %xmm3
	vmovdqa	1600(%rsp), %ymm7       # 32-byte Reload
	vpcmpgtd	%ymm5, %ymm7, %ymm7
	vpshufb	%ymm11, %ymm7, %ymm7
	vpermq	$232, %ymm7, %ymm7      # ymm7 = ymm7[0,2,2,3]
	vmovdqa	1568(%rsp), %ymm8       # 32-byte Reload
	vpcmpgtd	%ymm5, %ymm8, %ymm5
	vpshufb	%ymm11, %ymm5, %ymm5
	vpermq	$232, %ymm5, %ymm5      # ymm5 = ymm5[0,2,2,3]
	vpshufb	%xmm12, %xmm5, %xmm5
	vpshufb	%xmm12, %xmm7, %xmm7
	vpunpcklqdq	%xmm5, %xmm7, %xmm5 # xmm5 = xmm7[0],xmm5[0]
	vpor	%xmm3, %xmm5, %xmm5
	vpinsrd	$2, 1112(%rsp), %xmm2, %xmm2 # 4-byte Folded Reload
	vpinsrd	$3, %esi, %xmm2, %xmm2
	vmovd	%ebx, %xmm3
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%r12d
	movl	%edx, %esi
	vpinsrd	$1, %edi, %xmm3, %xmm0
	vpinsrd	$2, %r14d, %xmm0, %xmm0
	vpextrd	$1, %xmm6, %eax
	cltd
	idivl	1280(%rsp)              # 4-byte Folded Reload
	movl	%edx, %edi
	vpinsrd	$3, %r9d, %xmm0, %xmm0
	vinserti128	$1, %xmm2, %ymm0, %ymm0
	vmovd	%xmm6, %eax
	cltd
	idivl	1248(%rsp)              # 4-byte Folded Reload
	movl	%edx, %ebx
	vpsrad	$31, %ymm0, %ymm2
	vmovdqa	2304(%rsp), %ymm8       # 32-byte Reload
	vpand	%ymm8, %ymm2, %ymm2
	vmovdqa	2112(%rsp), %ymm9       # 32-byte Reload
	vpaddd	%ymm0, %ymm9, %ymm0
	vpaddd	%ymm2, %ymm0, %ymm0
	vpabsd	%xmm0, %xmm2
	vextracti128	$1, %ymm0, %xmm0
	vpabsd	%xmm0, %xmm0
	vinserti128	$1, %xmm0, %ymm2, %ymm0
	vpsubd	%ymm0, %ymm10, %ymm0
	movq	2168(%rsp), %rax        # 8-byte Reload
	movq	2560(%rsp), %rcx        # 8-byte Reload
	leal	(%rax,%rcx), %eax
	vmovd	%eax, %xmm2
	vpbroadcastd	%xmm2, %ymm7
	vpaddd	%ymm15, %ymm7, %ymm2
	vpminsd	%xmm14, %xmm2, %xmm3
	vextracti128	$1, %ymm2, %xmm2
	vpminsd	%xmm14, %xmm2, %xmm2
	vmovdqa	2096(%rsp), %xmm15      # 16-byte Reload
	vpmaxsd	%xmm15, %xmm3, %xmm3
	vpmaxsd	%xmm15, %xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm3, %ymm2
	vpmovzxbd	%xmm5, %ymm3    # ymm3 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm0, %ymm2, %ymm0
	vmovd	%r11d, %xmm2
	vpextrd	$2, %xmm6, %eax
	cltd
	idivl	1464(%rsp)              # 4-byte Folded Reload
	vpinsrd	$1, %r10d, %xmm2, %xmm2
	vpinsrd	$2, 1488(%rsp), %xmm2, %xmm2 # 4-byte Folded Reload
	vpinsrd	$3, %esi, %xmm2, %xmm2
	vpextrd	$3, %xmm6, %eax
	vmovd	%ebx, %xmm3
	vpinsrd	$1, %edi, %xmm3, %xmm3
	vpinsrd	$2, %edx, %xmm3, %xmm3
	cltd
	idivl	1456(%rsp)              # 4-byte Folded Reload
	vpinsrd	$3, %edx, %xmm3, %xmm3
	vinserti128	$1, %xmm2, %ymm3, %ymm2
	vpsrad	$31, %ymm2, %ymm3
	vpand	%ymm8, %ymm3, %ymm3
	vpaddd	%ymm2, %ymm9, %ymm2
	vpaddd	%ymm3, %ymm2, %ymm2
	vpabsd	%xmm2, %xmm3
	vextracti128	$1, %ymm2, %xmm2
	vpabsd	%xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm3, %ymm2
	vpaddd	%ymm13, %ymm7, %ymm3
	vpminsd	%xmm14, %xmm3, %xmm6
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm14, %xmm3, %xmm3
	vpmaxsd	%xmm15, %xmm6, %xmm6
	vpmaxsd	%xmm15, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm6, %ymm3
	vpsubd	%ymm2, %ymm10, %ymm2
	vpunpckhbw	%xmm5, %xmm5, %xmm5 # xmm5 = xmm5[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm5, %ymm5    # ymm5 = xmm5[0],zero,xmm5[1],zero,xmm5[2],zero,xmm5[3],zero,xmm5[4],zero,xmm5[5],zero,xmm5[6],zero,xmm5[7],zero
	vpslld	$31, %ymm5, %ymm5
	vblendvps	%ymm5, %ymm2, %ymm3, %ymm2
	vmovdqa	2272(%rsp), %ymm3       # 32-byte Reload
	vpaddd	%ymm2, %ymm3, %ymm2
	vpaddd	%ymm0, %ymm3, %ymm0
	vpextrq	$1, %xmm0, %r14
	vmovq	%xmm0, %r10
	movslq	%r10d, %rax
	movq	%rax, 1120(%rsp)        # 8-byte Spill
	sarq	$32, %r10
	movslq	%r14d, %rax
	movq	%rax, 1104(%rsp)        # 8-byte Spill
	sarq	$32, %r14
	vextracti128	$1, %ymm0, %xmm0
	vpextrq	$1, %xmm0, %r12
	vmovq	%xmm0, %r9
	movslq	%r9d, %rax
	movq	%rax, 1112(%rsp)        # 8-byte Spill
	sarq	$32, %r9
	movslq	%r12d, %rax
	movq	%rax, 2336(%rsp)        # 8-byte Spill
	sarq	$32, %r12
	vpextrq	$1, %xmm2, %rcx
	vmovq	%xmm2, %rbx
	movslq	%ebx, %rax
	movq	%rax, 1216(%rsp)        # 8-byte Spill
	sarq	$32, %rbx
	movq	%rbx, 1152(%rsp)        # 8-byte Spill
	movslq	%ecx, %r11
	movq	%r11, 1184(%rsp)        # 8-byte Spill
	sarq	$32, %rcx
	vextracti128	$1, %ymm2, %xmm0
	vmovq	%xmm0, %rsi
	movzwl	(%r8,%rax,2), %edx
	vmovd	%edx, %xmm2
	movslq	%esi, %rdi
	movq	%rdi, 1480(%rsp)        # 8-byte Spill
	sarq	$32, %rsi
	movq	%rsi, 1248(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rdx
	movslq	%edx, %rax
	movq	%rax, 1488(%rsp)        # 8-byte Spill
	sarq	$32, %rdx
	vpinsrw	$1, (%r8,%rbx,2), %xmm2, %xmm0
	vpinsrw	$2, (%r8,%r11,2), %xmm0, %xmm0
	vpinsrw	$3, (%r8,%rcx,2), %xmm0, %xmm6
	cmpb	$0, 1064(%rsp)          # 1-byte Folded Reload
	movzwl	(%r8,%rdi,2), %edi
	movl	%edi, 1280(%rsp)        # 4-byte Spill
	movzwl	(%r8,%rsi,2), %edi
	movl	%edi, 1456(%rsp)        # 4-byte Spill
	movzwl	(%r8,%rax,2), %eax
	movl	%eax, 1464(%rsp)        # 4-byte Spill
	movzwl	(%r8,%rdx,2), %eax
	movl	%eax, 1472(%rsp)        # 4-byte Spill
	jne	.LBB148_16
# BB#17:                                # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	movq	1104(%rsp), %r11        # 8-byte Reload
	vxorps	%ymm5, %ymm5, %ymm5
	vmovaps	.LCPI148_8(%rip), %ymm11 # ymm11 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI148_9(%rip), %ymm12 # ymm12 = <4,u,5,u,6,u,7,u>
	movq	2240(%rsp), %rdi        # 8-byte Reload
	movq	2528(%rsp), %rbx        # 8-byte Reload
	movq	1120(%rsp), %rax        # 8-byte Reload
	movq	1112(%rsp), %rsi        # 8-byte Reload
	jmp	.LBB148_18
	.align	16, 0x90
.LBB148_16:                             #   in Loop: Header=BB148_9 Depth=2
	movq	1120(%rsp), %rax        # 8-byte Reload
	movzwl	(%r8,%rax,2), %r11d
	vmovd	%r11d, %xmm0
	vpinsrw	$1, (%r8,%r10,2), %xmm0, %xmm0
	movq	1104(%rsp), %r11        # 8-byte Reload
	vpinsrw	$2, (%r8,%r11,2), %xmm0, %xmm0
	vpinsrw	$3, (%r8,%r14,2), %xmm0, %xmm0
	movq	1112(%rsp), %rsi        # 8-byte Reload
	vpinsrw	$4, (%r8,%rsi,2), %xmm0, %xmm0
	vpinsrw	$5, (%r8,%r9,2), %xmm0, %xmm0
	movq	2336(%rsp), %rdi        # 8-byte Reload
	vpinsrw	$6, (%r8,%rdi,2), %xmm0, %xmm0
	vpinsrw	$7, (%r8,%r12,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm5
	vmovaps	.LCPI148_8(%rip), %ymm11 # ymm11 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI148_9(%rip), %ymm12 # ymm12 = <4,u,5,u,6,u,7,u>
	movq	2240(%rsp), %rdi        # 8-byte Reload
	movq	2528(%rsp), %rbx        # 8-byte Reload
.LBB148_18:                             # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	jne	.LBB148_19
# BB#20:                                # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vpxor	%ymm6, %ymm6, %ymm6
	jmp	.LBB148_21
	.align	16, 0x90
.LBB148_19:                             #   in Loop: Header=BB148_9 Depth=2
	vpinsrw	$4, 1280(%rsp), %xmm6, %xmm0 # 4-byte Folded Reload
	vpinsrw	$5, 1456(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$6, 1464(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$7, 1472(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm6
.LBB148_21:                             # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vpermps	%ymm6, %ymm11, %ymm0
	vpermps	%ymm4, %ymm12, %ymm2
	vblendps	$170, %ymm0, %ymm2, %ymm0 # ymm0 = ymm2[0],ymm0[1],ymm2[2],ymm0[3],ymm2[4],ymm0[5],ymm2[6],ymm0[7]
	vmovaps	.LCPI148_10(%rip), %ymm2 # ymm2 = <u,0,u,1,u,2,u,3>
	vmovaps	%ymm2, %ymm7
	vpermps	%ymm6, %ymm7, %ymm2
	vmovaps	.LCPI148_11(%rip), %ymm3 # ymm3 = <0,u,1,u,2,u,3,u>
	vmovaps	%ymm3, %ymm6
	vpermps	%ymm4, %ymm6, %ymm3
	vblendps	$170, %ymm2, %ymm3, %ymm2 # ymm2 = ymm3[0],ymm2[1],ymm3[2],ymm2[3],ymm3[4],ymm2[5],ymm3[6],ymm2[7]
	vpermps	%ymm5, %ymm11, %ymm3
	vpermps	%ymm1, %ymm12, %ymm4
	vblendps	$170, %ymm3, %ymm4, %ymm3 # ymm3 = ymm4[0],ymm3[1],ymm4[2],ymm3[3],ymm4[4],ymm3[5],ymm4[6],ymm3[7]
	vpermps	%ymm5, %ymm7, %ymm4
	vmovaps	%ymm7, %ymm13
	vpermps	%ymm1, %ymm6, %ymm1
	vmovaps	%ymm6, %ymm14
	vblendps	$170, %ymm4, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm4[1],ymm1[2],ymm4[3],ymm1[4],ymm4[5],ymm1[6],ymm4[7]
	vmovups	%ymm1, (%rdi)
	vmovups	%ymm3, 32(%rdi)
	vmovups	%ymm2, 64(%rdi)
	vmovups	%ymm0, 96(%rdi)
	movzwl	(%r8,%rax,2), %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, (%r8,%r10,2), %xmm0, %xmm0
	vpinsrw	$2, (%r8,%r11,2), %xmm0, %xmm0
	vpinsrw	$3, (%r8,%r14,2), %xmm0, %xmm0
	vpinsrw	$4, (%r8,%rsi,2), %xmm0, %xmm0
	vpinsrw	$5, (%r8,%r9,2), %xmm0, %xmm0
	movq	2336(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%r8,%rax,2), %xmm0, %xmm0
	vpinsrw	$7, (%r8,%r12,2), %xmm0, %xmm6
	movq	1216(%rsp), %rax        # 8-byte Reload
	vpinsrw	$0, (%r8,%rax,2), %xmm0, %xmm0
	movq	1152(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%r8,%rax,2), %xmm0, %xmm0
	movq	1184(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%r8,%rax,2), %xmm0, %xmm0
	vpinsrw	$3, (%r8,%rcx,2), %xmm0, %xmm1
	movq	1960(%rsp), %rax        # 8-byte Reload
	movzwl	(%r8,%rax,2), %eax
	vmovd	%eax, %xmm0
	movq	2432(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%r8,%rax,2), %xmm0, %xmm0
	movq	1312(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%r8,%rax,2), %xmm0, %xmm0
	movq	1408(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%r8,%rax,2), %xmm0, %xmm0
	movq	2400(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%r8,%rax,2), %xmm0, %xmm0
	movq	1376(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%r8,%rax,2), %xmm0, %xmm0
	movq	1344(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%r8,%rax,2), %xmm0, %xmm0
	movq	1448(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%r8,%rax,2), %xmm0, %xmm0
	movq	2368(%rsp), %rax        # 8-byte Reload
	movzwl	(%r8,%rax,2), %eax
	vmovd	%eax, %xmm2
	movq	1504(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%r8,%rax,2), %xmm2, %xmm2
	movq	2496(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%r8,%rax,2), %xmm2, %xmm2
	movq	1696(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%r8,%rax,2), %xmm2, %xmm2
	movq	2464(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%r8,%rax,2), %xmm2, %xmm2
	movq	1536(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%r8,%rax,2), %xmm2, %xmm2
	vpinsrw	$6, (%r8,%rbx,2), %xmm2, %xmm2
	movq	1712(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%r8,%rax,2), %xmm2, %xmm2
	movl	1080(%rsp), %r10d       # 4-byte Reload
	movl	1984(%rsp), %ebx        # 4-byte Reload
	testl	%ebx, %r10d
	setne	%al
	movq	1088(%rsp), %rsi        # 8-byte Reload
	orl	%esi, %ebx
	testb	$1, %bl
	sete	%bl
	orb	%al, %bl
	vpmovzxwd	%xmm0, %ymm5    # ymm5 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpmovzxwd	%xmm2, %ymm0    # ymm0 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm0, %ymm4
	vmovaps	%ymm4, %ymm7
	jne	.LBB148_23
# BB#22:                                # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vxorps	%ymm7, %ymm7, %ymm7
.LBB148_23:                             # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vcvtdq2ps	%ymm5, %ymm5
	vmovaps	%ymm5, %ymm8
	movq	2560(%rsp), %rcx        # 8-byte Reload
	jne	.LBB148_25
# BB#24:                                # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vxorps	%ymm8, %ymm8, %ymm8
.LBB148_25:                             # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vpmovzxwd	%xmm6, %ymm0    # ymm0 = xmm6[0],zero,xmm6[1],zero,xmm6[2],zero,xmm6[3],zero,xmm6[4],zero,xmm6[5],zero,xmm6[6],zero,xmm6[7],zero
	vcvtdq2ps	%ymm0, %ymm6
	vmovaps	%ymm6, %ymm9
	cmpb	$0, 1056(%rsp)          # 1-byte Folded Reload
	jne	.LBB148_27
# BB#26:                                # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vxorps	%ymm9, %ymm9, %ymm9
.LBB148_27:                             # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	jne	.LBB148_28
# BB#29:                                # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vpxor	%ymm10, %ymm10, %ymm10
	jmp	.LBB148_30
	.align	16, 0x90
.LBB148_28:                             #   in Loop: Header=BB148_9 Depth=2
	vpinsrw	$4, 1280(%rsp), %xmm1, %xmm0 # 4-byte Folded Reload
	vpinsrw	$5, 1456(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$6, 1464(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$7, 1472(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm10
.LBB148_30:                             # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vpermps	%ymm10, %ymm11, %ymm0
	vpermps	%ymm8, %ymm12, %ymm2
	vblendps	$170, %ymm0, %ymm2, %ymm0 # ymm0 = ymm2[0],ymm0[1],ymm2[2],ymm0[3],ymm2[4],ymm0[5],ymm2[6],ymm0[7]
	vpermps	%ymm10, %ymm13, %ymm2
	vpermps	%ymm8, %ymm14, %ymm3
	vblendps	$170, %ymm2, %ymm3, %ymm2 # ymm2 = ymm3[0],ymm2[1],ymm3[2],ymm2[3],ymm3[4],ymm2[5],ymm3[6],ymm2[7]
	vpermps	%ymm9, %ymm11, %ymm3
	vpermps	%ymm7, %ymm12, %ymm8
	vblendps	$170, %ymm3, %ymm8, %ymm3 # ymm3 = ymm8[0],ymm3[1],ymm8[2],ymm3[3],ymm8[4],ymm3[5],ymm8[6],ymm3[7]
	vpermps	%ymm9, %ymm13, %ymm8
	vmovaps	%ymm13, %ymm9
	vpermps	%ymm7, %ymm14, %ymm7
	vmovaps	%ymm14, %ymm10
	vblendps	$170, %ymm8, %ymm7, %ymm7 # ymm7 = ymm7[0],ymm8[1],ymm7[2],ymm8[3],ymm7[4],ymm8[5],ymm7[6],ymm8[7]
	movq	960(%rsp), %rax         # 8-byte Reload
	vmovups	%ymm7, 32(%rax,%rdi)
	vmovups	%ymm3, 64(%rax,%rdi)
	vmovups	%ymm2, 96(%rax,%rdi)
	vmovups	%ymm0, 128(%rax,%rdi)
	movb	2176(%rsp), %al         # 1-byte Reload
	movl	1968(%rsp), %ebx        # 4-byte Reload
	andb	%bl, %al
	jne	.LBB148_32
# BB#31:                                # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vxorps	%ymm4, %ymm4, %ymm4
.LBB148_32:                             # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	testb	%al, %al
	vxorps	%ymm2, %ymm2, %ymm2
	jne	.LBB148_34
# BB#33:                                # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vxorps	%ymm5, %ymm5, %ymm5
.LBB148_34:                             # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	movq	1480(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%r8,%rax,2), %xmm1, %xmm0
	movq	1248(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%r8,%rax,2), %xmm0, %xmm1
	movq	1488(%rsp), %rax        # 8-byte Reload
	movzwl	(%r8,%rax,2), %eax
	movzwl	(%r8,%rdx,2), %edx
	cmpb	$0, 1072(%rsp)          # 1-byte Folded Reload
	jne	.LBB148_36
# BB#35:                                # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vxorps	%ymm6, %ymm6, %ymm6
.LBB148_36:                             # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	je	.LBB148_38
# BB#37:                                #   in Loop: Header=BB148_9 Depth=2
	vpinsrw	$6, %eax, %xmm1, %xmm0
	vpinsrw	$7, %edx, %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm2
.LBB148_38:                             # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_9 Depth=2
	vpermps	%ymm5, %ymm12, %ymm0
	vpermps	%ymm2, %ymm11, %ymm1
	vblendps	$170, %ymm1, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm1[1],ymm0[2],ymm1[3],ymm0[4],ymm1[5],ymm0[6],ymm1[7]
	vpermps	%ymm5, %ymm10, %ymm1
	vpermps	%ymm2, %ymm9, %ymm2
	vblendps	$170, %ymm2, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm2[1],ymm1[2],ymm2[3],ymm1[4],ymm2[5],ymm1[6],ymm2[7]
	vpermps	%ymm6, %ymm11, %ymm2
	vpermps	%ymm4, %ymm12, %ymm3
	vblendps	$170, %ymm2, %ymm3, %ymm2 # ymm2 = ymm3[0],ymm2[1],ymm3[2],ymm2[3],ymm3[4],ymm2[5],ymm3[6],ymm2[7]
	vpermps	%ymm6, %ymm9, %ymm3
	vpermps	%ymm4, %ymm10, %ymm4
	vblendps	$170, %ymm3, %ymm4, %ymm3 # ymm3 = ymm4[0],ymm3[1],ymm4[2],ymm3[3],ymm4[4],ymm3[5],ymm4[6],ymm3[7]
	movq	1008(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm3, (%rax,%rdi)
	movq	1024(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm2, 96(%rax,%rdi)
	vmovups	%ymm1, 128(%rax,%rdi)
	movq	1016(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm0, (%rax,%rdi)
	addl	$32, %ecx
	subq	$-128, %rdi
	movl	2208(%rsp), %eax        # 4-byte Reload
	addl	$-1, %eax
	jne	.LBB148_9
.LBB148_39:                             # %end for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB148_7 Depth=1
	movq	1088(%rsp), %rdx        # 8-byte Reload
	leal	1(%rdx), %eax
	movl	952(%rsp), %esi         # 4-byte Reload
	addb	$1, %sil
	cmpl	892(%rsp), %edx         # 4-byte Folded Reload
	movq	%rax, 1088(%rsp)        # 8-byte Spill
	movq	792(%rsp), %rbx         # 8-byte Reload
	jne	.LBB148_7
# BB#40:                                # %consume deinterleaved$3
	vmovss	.LCPI148_12(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	vmovss	592(%rsp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vsubss	%xmm3, %xmm0, %xmm1
	vmovss	392(%rsp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	vmulss	%xmm4, %xmm1, %xmm2
	vmovss	384(%rsp), %xmm5        # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	vdivss	%xmm5, %xmm2, %xmm2
	vaddss	%xmm2, %xmm3, %xmm2
	vmovss	412(%rsp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vsubss	%xmm4, %xmm3, %xmm3
	vmulss	%xmm3, %xmm1, %xmm1
	vdivss	%xmm1, %xmm5, %xmm1
	vbroadcastss	%xmm1, %xmm1
	vmovaps	%xmm1, 1696(%rsp)       # 16-byte Spill
	vbroadcastss	%xmm2, %xmm12
	vmovaps	%xmm12, 592(%rsp)       # 16-byte Spill
	cmpl	$0, 564(%rsp)           # 4-byte Folded Reload
	jle	.LBB148_41
# BB#42:                                # %produce demosaiced$3.preheader
	movq	%r8, 1736(%rsp)         # 8-byte Spill
	vmovss	528(%rsp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vsubss	%xmm3, %xmm0, %xmm2
	vmovss	456(%rsp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	vmulss	%xmm4, %xmm2, %xmm1
	vmovss	448(%rsp), %xmm5        # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	vdivss	%xmm5, %xmm1, %xmm1
	vaddss	%xmm1, %xmm3, %xmm1
	vmovss	512(%rsp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vsubss	%xmm4, %xmm3, %xmm3
	vmulss	%xmm3, %xmm2, %xmm2
	vdivss	%xmm2, %xmm5, %xmm2
	vmovss	476(%rsp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	vsubss	%xmm4, %xmm0, %xmm3
	vmovss	472(%rsp), %xmm7        # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
	vmulss	%xmm7, %xmm3, %xmm0
	vmovss	640(%rsp), %xmm5        # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	vdivss	%xmm5, %xmm0, %xmm0
	vaddss	%xmm0, %xmm4, %xmm0
	movq	544(%rsp), %rbx         # 8-byte Reload
	movl	464(%rsp), %eax         # 4-byte Reload
	imull	%ebx, %eax
	vmovss	480(%rsp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	vsubss	%xmm7, %xmm4, %xmm4
	movl	432(%rsp), %ecx         # 4-byte Reload
	movl	424(%rsp), %edx         # 4-byte Reload
	imull	%edx, %ecx
	vmulss	%xmm4, %xmm3, %xmm3
	addl	440(%rsp), %eax         # 4-byte Folded Reload
	addl	416(%rsp), %ecx         # 4-byte Folded Reload
	vmovd	%ecx, %xmm4
	vmovaps	%ymm4, 2208(%rsp)       # 32-byte Spill
	vmovd	%edx, %xmm4
	cltq
	leaq	(%rbx,%rbx), %rdx
	subq	%rax, %rdx
	movq	576(%rsp), %rdi         # 8-byte Reload
	leaq	8(%rdi,%rdx,4), %rcx
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	vbroadcastss	8(%rdi,%rdx,4), %ymm7
	vmovaps	%ymm7, 1408(%rsp)       # 32-byte Spill
	leaq	4(%rdi,%rdx,4), %rcx
	movq	%rcx, 384(%rsp)         # 8-byte Spill
	vbroadcastss	4(%rdi,%rdx,4), %ymm7
	vmovaps	%ymm7, 1376(%rsp)       # 32-byte Spill
	leaq	(%rdi,%rdx,4), %rcx
	movq	%rcx, 376(%rsp)         # 8-byte Spill
	vbroadcastss	(%rdi,%rdx,4), %ymm7
	vmovaps	%ymm7, 1344(%rsp)       # 32-byte Spill
	subq	%rax, %rbx
	leaq	8(%rdi,%rbx,4), %rcx
	movq	%rcx, 368(%rsp)         # 8-byte Spill
	vbroadcastss	8(%rdi,%rbx,4), %ymm7
	vmovaps	%ymm7, 1312(%rsp)       # 32-byte Spill
	movl	$2, %edx
	subq	%rax, %rdx
	movl	$1, %esi
	subq	%rax, %rsi
	shlq	$2, %rax
	movq	%rdi, %rcx
	subq	%rax, %rcx
	movq	%rcx, 328(%rsp)         # 8-byte Spill
	negq	%rax
	vbroadcastss	(%rdi,%rax), %ymm7
	vmovaps	%ymm7, 1280(%rsp)       # 32-byte Spill
	leaq	4(%rdi,%rbx,4), %rax
	movq	%rax, 360(%rsp)         # 8-byte Spill
	vbroadcastss	4(%rdi,%rbx,4), %ymm7
	vmovaps	%ymm7, 1248(%rsp)       # 32-byte Spill
	vbroadcastss	(%rdi,%rbx,4), %ymm7
	vmovaps	%ymm7, 1216(%rsp)       # 32-byte Spill
	leaq	(%rdi,%rbx,4), %rax
	movq	%rax, 352(%rsp)         # 8-byte Spill
	vbroadcastss	(%rdi,%rdx,4), %ymm7
	vmovaps	%ymm7, 1184(%rsp)       # 32-byte Spill
	leaq	(%rdi,%rdx,4), %rax
	movq	%rax, 344(%rsp)         # 8-byte Spill
	vpbroadcastd	(%rdi,%rsi,4), %ymm7
	vmovdqa	%ymm7, 1152(%rsp)       # 32-byte Spill
	leaq	(%rdi,%rsi,4), %rax
	movq	%rax, 336(%rsp)         # 8-byte Spill
	movl	$31, %edi
	movq	720(%rsp), %rax         # 8-byte Reload
	subl	%eax, %edi
	movq	400(%rsp), %rax         # 8-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, 440(%rsp)         # 8-byte Spill
	movq	728(%rsp), %rax         # 8-byte Reload
	subl	%eax, %edi
	movl	%edi, 1072(%rsp)        # 4-byte Spill
	movq	904(%rsp), %rax         # 8-byte Reload
	leal	(,%rax,4), %edx
	movl	%edx, 896(%rsp)         # 4-byte Spill
	shll	$3, %eax
	movq	%rax, 904(%rsp)         # 8-byte Spill
	movq	1976(%rsp), %rsi        # 8-byte Reload
	movq	712(%rsp), %rax         # 8-byte Reload
	subl	%eax, %esi
	movq	584(%rsp), %r8          # 8-byte Reload
	subq	%r8, %rcx
	movq	%rcx, 1064(%rsp)        # 8-byte Spill
	movq	880(%rsp), %r9          # 8-byte Reload
	movq	%r9, %rbx
	negq	%rbx
	cmpl	%edi, %esi
	cmovll	%edi, %esi
	movl	%esi, %r12d
	notl	%r12d
	movslq	%r12d, %rax
	subq	%r8, %rax
	vbroadcastss	%xmm2, %xmm2
	vmovaps	%xmm2, 528(%rsp)        # 16-byte Spill
	vbroadcastss	%xmm1, %xmm1
	vmovaps	%xmm1, 512(%rsp)        # 16-byte Spill
	vdivss	%xmm3, %xmm5, %xmm1
	vbroadcastss	%xmm1, %xmm1
	vmovaps	%xmm1, 640(%rsp)        # 16-byte Spill
	vbroadcastss	%xmm0, %xmm0
	vmovaps	%xmm0, 1488(%rsp)       # 16-byte Spill
	vpbroadcastd	%xmm4, %ymm0
	vmovdqa	%ymm0, 2176(%rsp)       # 32-byte Spill
	movl	$2, %r11d
	subl	%esi, %r11d
	negl	%esi
	movq	%rsi, 1976(%rsp)        # 8-byte Spill
	movl	$64, %edi
	subq	%r9, %rdi
	movl	$128, %edx
	subq	%r9, %rdx
	movq	944(%rsp), %rsi         # 8-byte Reload
	leaq	1(%rsi), %rcx
	movq	%rcx, 544(%rsp)         # 8-byte Spill
	addq	$1, %rsi
	subq	%r9, %rsi
	imulq	%rsi, %rax
	addq	%rsi, %rsi
	movq	%rsi, 944(%rsp)         # 8-byte Spill
	movq	864(%rsp), %rcx         # 8-byte Reload
	leaq	32(%rcx,%rax,2), %rsi
	movq	%rsi, 1968(%rsp)        # 8-byte Spill
	leaq	(%rcx,%rax,2), %rax
	movq	%rax, 1960(%rsp)        # 8-byte Spill
	vbroadcastss	.LCPI148_13(%rip), %xmm0
	vmovaps	%xmm0, 2560(%rsp)       # 16-byte Spill
	movq	504(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rax), %rax
	movq	%rax, 1712(%rsp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 1120(%rsp)        # 8-byte Spill
	movq	2168(%rsp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	vxorps	%xmm8, %xmm8, %xmm8
	vbroadcastss	.LCPI148_14(%rip), %xmm0
	vmovaps	%xmm0, 2528(%rsp)       # 16-byte Spill
	vbroadcastss	.LCPI148_15(%rip), %xmm0
	vmovaps	%xmm0, 2496(%rsp)       # 16-byte Spill
	vpbroadcastd	.LCPI148_16(%rip), %ymm0
	vmovdqa	%ymm0, 1536(%rsp)       # 32-byte Spill
	.align	16, 0x90
.LBB148_43:                             # %produce demosaiced$3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB148_44 Depth 2
                                        #       Child Loop BB148_45 Depth 3
                                        #     Child Loop BB148_62 Depth 2
                                        #       Child Loop BB148_63 Depth 3
                                        #     Child Loop BB148_78 Depth 2
                                        #       Child Loop BB148_79 Depth 3
                                        #     Child Loop BB148_97 Depth 2
                                        #       Child Loop BB148_98 Depth 3
	movq	%rcx, 1080(%rsp)        # 8-byte Spill
	movl	%eax, 1088(%rsp)        # 4-byte Spill
	movq	%rdx, 1096(%rsp)        # 8-byte Spill
	movq	%rdi, 1104(%rsp)        # 8-byte Spill
	movq	%rbx, 1112(%rsp)        # 8-byte Spill
	cltq
	leaq	(%rdx,%rax), %rdx
	leaq	2592(%rsp,%rdx,4), %rdx
	movq	%rdx, 1480(%rsp)        # 8-byte Spill
	leaq	(%rdi,%rax), %rdx
	leaq	2592(%rsp,%rdx,4), %rdx
	movq	%rdx, 1472(%rsp)        # 8-byte Spill
	leaq	(%rax,%rbx), %rax
	leaq	2592(%rsp,%rax,4), %r14
	shll	$5, %ecx
	movq	2168(%rsp), %rax        # 8-byte Reload
	addl	%eax, %ecx
	movq	%rcx, 1504(%rsp)        # 8-byte Spill
	xorl	%eax, %eax
	xorl	%esi, %esi
	movq	1976(%rsp), %rcx        # 8-byte Reload
	.align	16, 0x90
.LBB148_44:                             # %for demosaiced$3.s0.v15.v15
                                        #   Parent Loop BB148_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB148_45 Depth 3
	movq	%rsi, 1448(%rsp)        # 8-byte Spill
	movq	%rax, 1456(%rsp)        # 8-byte Spill
	movq	%r14, 1464(%rsp)        # 8-byte Spill
	movq	1504(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rsi,8), %r8d
	movl	%eax, %r9d
	andl	$1, %r9d
	movq	2168(%rsp), %rax        # 8-byte Reload
	subl	%eax, %r8d
	xorl	%eax, %eax
	.align	16, 0x90
.LBB148_45:                             # %for demosaiced$3.s0.v16
                                        #   Parent Loop BB148_43 Depth=1
                                        #     Parent Loop BB148_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%r11,%rax), %edi
	andl	$3, %edi
	movq	2552(%rsp), %rsi        # 8-byte Reload
	imull	%esi, %edi
	leal	(%r12,%rax), %r10d
	addl	%r8d, %edi
	leal	(%rcx,%rax), %ebx
	andl	$3, %ebx
	imull	%esi, %ebx
	movl	%r10d, %edx
	andl	$3, %edx
	imull	%esi, %edx
	addl	%r8d, %ebx
	addl	%r8d, %edx
	movslq	%edi, %rdi
	vmovups	(%r13,%rdi,4), %xmm0
	vmovaps	%xmm0, 2240(%rsp)       # 16-byte Spill
	vmovups	16(%r13,%rdi,4), %xmm1
	vmovaps	%xmm1, 1984(%rsp)       # 16-byte Spill
	vshufps	$221, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[1,3],xmm1[1,3]
	vsubps	%xmm12, %xmm0, %xmm0
	vmovaps	1696(%rsp), %xmm3       # 16-byte Reload
	vmulps	%xmm0, %xmm3, %xmm0
	vmovaps	%xmm0, 2400(%rsp)       # 16-byte Spill
	movslq	%ebx, %rbx
	vmovups	(%r13,%rbx,4), %xmm10
	vmovups	16(%r13,%rbx,4), %xmm13
	vshufps	$221, %xmm13, %xmm10, %xmm0 # xmm0 = xmm10[1,3],xmm13[1,3]
	vsubps	%xmm12, %xmm0, %xmm0
	vmulps	%xmm0, %xmm3, %xmm11
	vmovups	8(%r13,%rdi,4), %xmm0
	vmovaps	%xmm0, 2368(%rsp)       # 16-byte Spill
	vmovups	24(%r13,%rdi,4), %xmm1
	vmovaps	%xmm1, 2336(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0,2],xmm1[0,2]
	vsubps	%xmm12, %xmm0, %xmm0
	vmulps	%xmm0, %xmm3, %xmm7
	vmovups	8(%r13,%rbx,4), %xmm0
	vmovaps	%xmm0, 2304(%rsp)       # 16-byte Spill
	vmovups	24(%r13,%rbx,4), %xmm1
	vmovaps	%xmm1, 2272(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0,2],xmm1[0,2]
	vsubps	%xmm12, %xmm0, %xmm0
	vmulps	%xmm0, %xmm3, %xmm4
	movslq	%edx, %rdx
	vmovups	(%r13,%rdx,4), %xmm5
	vmovups	16(%r13,%rdx,4), %xmm0
	vshufps	$221, %xmm0, %xmm5, %xmm1 # xmm1 = xmm5[1,3],xmm0[1,3]
	vsubps	%xmm12, %xmm1, %xmm1
	vmulps	%xmm1, %xmm3, %xmm2
	vmovups	8(%r13,%rdx,4), %xmm14
	vmovups	24(%r13,%rdx,4), %xmm15
	vshufps	$136, %xmm15, %xmm14, %xmm1 # xmm1 = xmm14[0,2],xmm15[0,2]
	vsubps	%xmm12, %xmm1, %xmm1
	vmulps	%xmm1, %xmm3, %xmm1
	vmovaps	2560(%rsp), %xmm6       # 16-byte Reload
	vminps	%xmm6, %xmm1, %xmm1
	vmaxps	%xmm8, %xmm1, %xmm1
	vmovaps	%xmm1, 2464(%rsp)       # 16-byte Spill
	vminps	%xmm6, %xmm2, %xmm1
	vmaxps	%xmm8, %xmm1, %xmm2
	testl	%r9d, %r9d
	vmovaps	%xmm2, 2432(%rsp)       # 16-byte Spill
	je	.LBB148_47
# BB#46:                                # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_45 Depth=3
	vshufps	$136, %xmm0, %xmm5, %xmm0 # xmm0 = xmm5[0,2],xmm0[0,2]
	vsubps	%xmm12, %xmm0, %xmm0
	vmulps	1696(%rsp), %xmm0, %xmm0 # 16-byte Folded Reload
	vminps	%xmm6, %xmm0, %xmm0
	vmaxps	%xmm8, %xmm0, %xmm0
	vaddps	2464(%rsp), %xmm0, %xmm0 # 16-byte Folded Reload
	vmulps	2528(%rsp), %xmm0, %xmm0 # 16-byte Folded Reload
	vmovaps	%xmm0, 2432(%rsp)       # 16-byte Spill
.LBB148_47:                             # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_45 Depth=3
	vminps	%xmm6, %xmm4, %xmm0
	vxorps	%xmm4, %xmm4, %xmm4
	vmaxps	%xmm4, %xmm0, %xmm8
	vminps	%xmm6, %xmm7, %xmm0
	vmaxps	%xmm4, %xmm0, %xmm9
	vminps	%xmm6, %xmm11, %xmm0
	vmaxps	%xmm4, %xmm0, %xmm11
	vmovaps	2400(%rsp), %xmm0       # 16-byte Reload
	vminps	%xmm6, %xmm0, %xmm0
	vmaxps	%xmm4, %xmm0, %xmm5
	je	.LBB148_48
# BB#49:                                # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_45 Depth=3
	vshufps	$136, %xmm13, %xmm10, %xmm0 # xmm0 = xmm10[0,2],xmm13[0,2]
	vsubps	%xmm12, %xmm0, %xmm0
	vmovaps	1696(%rsp), %xmm3       # 16-byte Reload
	vmulps	%xmm0, %xmm3, %xmm0
	vminps	%xmm6, %xmm0, %xmm0
	vmaxps	%xmm4, %xmm0, %xmm0
	vaddps	%xmm8, %xmm0, %xmm0
	vmovaps	2240(%rsp), %xmm1       # 16-byte Reload
	vshufps	$136, 1984(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[0,2],mem[0,2]
	vsubps	%xmm12, %xmm1, %xmm1
	vmulps	%xmm1, %xmm3, %xmm1
	vminps	%xmm6, %xmm1, %xmm1
	vmaxps	%xmm4, %xmm1, %xmm1
	vxorps	%xmm3, %xmm3, %xmm3
	vaddps	%xmm9, %xmm1, %xmm1
	vaddps	%xmm0, %xmm1, %xmm0
	vmulps	2496(%rsp), %xmm0, %xmm4 # 16-byte Folded Reload
	jmp	.LBB148_50
	.align	16, 0x90
.LBB148_48:                             #   in Loop: Header=BB148_45 Depth=3
	vxorps	%xmm3, %xmm3, %xmm3
	vaddps	%xmm11, %xmm5, %xmm0
	vmulps	2528(%rsp), %xmm0, %xmm4 # 16-byte Folded Reload
.LBB148_50:                             # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_45 Depth=3
	jne	.LBB148_52
# BB#51:                                # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_45 Depth=3
	vshufps	$221, %xmm15, %xmm14, %xmm0 # xmm0 = xmm14[1,3],xmm15[1,3]
	vsubps	%xmm12, %xmm0, %xmm0
	vmulps	1696(%rsp), %xmm0, %xmm0 # 16-byte Folded Reload
	vminps	2560(%rsp), %xmm0, %xmm0 # 16-byte Folded Reload
	vmaxps	%xmm3, %xmm0, %xmm0
	vaddps	%xmm0, %xmm2, %xmm0
	vmulps	2528(%rsp), %xmm0, %xmm0 # 16-byte Folded Reload
	vmovaps	%xmm0, 2464(%rsp)       # 16-byte Spill
.LBB148_52:                             # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_45 Depth=3
	jne	.LBB148_53
# BB#54:                                # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_45 Depth=3
	vmovaps	2304(%rsp), %xmm0       # 16-byte Reload
	vshufps	$221, 2272(%rsp), %xmm0, %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[1,3],mem[1,3]
	vsubps	%xmm12, %xmm0, %xmm0
	vmovaps	1696(%rsp), %xmm2       # 16-byte Reload
	vmulps	%xmm0, %xmm2, %xmm0
	vmovaps	2560(%rsp), %xmm3       # 16-byte Reload
	vminps	%xmm3, %xmm0, %xmm0
	vxorps	%xmm8, %xmm8, %xmm8
	vmaxps	%xmm8, %xmm0, %xmm0
	vaddps	%xmm0, %xmm11, %xmm0
	vmovaps	2368(%rsp), %xmm1       # 16-byte Reload
	vshufps	$221, 2336(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[1,3],mem[1,3]
	vsubps	%xmm12, %xmm1, %xmm1
	vmulps	%xmm1, %xmm2, %xmm1
	vminps	%xmm3, %xmm1, %xmm1
	vmaxps	%xmm8, %xmm1, %xmm1
	vaddps	%xmm1, %xmm5, %xmm1
	vaddps	%xmm0, %xmm1, %xmm0
	vmulps	2496(%rsp), %xmm0, %xmm0 # 16-byte Folded Reload
	jmp	.LBB148_55
	.align	16, 0x90
.LBB148_53:                             #   in Loop: Header=BB148_45 Depth=3
	vaddps	%xmm8, %xmm9, %xmm0
	vmulps	2528(%rsp), %xmm0, %xmm0 # 16-byte Folded Reload
	vxorps	%xmm8, %xmm8, %xmm8
.LBB148_55:                             # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_45 Depth=3
	andl	$1, %r10d
	je	.LBB148_57
# BB#56:                                # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_45 Depth=3
	vmovaps	2432(%rsp), %xmm1       # 16-byte Reload
	vmovaps	%xmm1, %xmm4
.LBB148_57:                             # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_45 Depth=3
	testl	%r10d, %r10d
	je	.LBB148_59
# BB#58:                                # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_45 Depth=3
	vmovaps	2464(%rsp), %xmm0       # 16-byte Reload
.LBB148_59:                             # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_45 Depth=3
	vmovaps	.LCPI148_10(%rip), %ymm1 # ymm1 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm0, %ymm1, %ymm0
	vmovaps	.LCPI148_11(%rip), %ymm1 # ymm1 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm4, %ymm1, %ymm1
	vblendps	$170, %ymm0, %ymm1, %ymm0 # ymm0 = ymm1[0],ymm0[1],ymm1[2],ymm0[3],ymm1[4],ymm0[5],ymm1[6],ymm0[7]
	vmovups	%ymm0, (%r14)
	subq	$-128, %r14
	addl	$1, %eax
	cmpl	$2, %eax
	jne	.LBB148_45
# BB#60:                                # %end for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB148_44 Depth=2
	movq	1456(%rsp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	1448(%rsp), %rsi        # 8-byte Reload
	addl	$1, %esi
	movq	1464(%rsp), %r14        # 8-byte Reload
	addq	$32, %r14
	xorl	%edi, %edi
	cmpq	$4, %rax
	jne	.LBB148_44
# BB#61:                                #   in Loop: Header=BB148_43 Depth=1
	xorl	%edx, %edx
	vmovaps	528(%rsp), %xmm8        # 16-byte Reload
	vmovaps	512(%rsp), %xmm10       # 16-byte Reload
	vmovaps	640(%rsp), %xmm9        # 16-byte Reload
	vmovaps	2560(%rsp), %xmm11      # 16-byte Reload
	movq	1472(%rsp), %rsi        # 8-byte Reload
	.align	16, 0x90
.LBB148_62:                             # %for demosaiced$3.s0.v15.v153
                                        #   Parent Loop BB148_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB148_63 Depth 3
	movq	%rdx, 2432(%rsp)        # 8-byte Spill
	movq	%rdi, 2464(%rsp)        # 8-byte Spill
	movq	%rsi, 1472(%rsp)        # 8-byte Spill
	movq	1504(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rdx,8), %r14d
	movq	2168(%rsp), %rax        # 8-byte Reload
	subl	%eax, %r14d
	addl	896(%rsp), %r14d        # 4-byte Folded Reload
	xorl	%edx, %edx
	movq	%rsi, %rax
	movq	1976(%rsp), %rcx        # 8-byte Reload
	.align	16, 0x90
.LBB148_63:                             # %for demosaiced$3.s0.v167
                                        #   Parent Loop BB148_43 Depth=1
                                        #     Parent Loop BB148_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%r12,%rdx), %r10d
	movl	%r10d, %edi
	andl	$3, %edi
	movq	2552(%rsp), %rsi        # 8-byte Reload
	imull	%esi, %edi
	leal	(%rdi,%r14), %edi
	leal	(%r11,%rdx), %ebx
	andl	$3, %ebx
	imull	%esi, %ebx
	leal	(%rcx,%rdx), %r8d
	andl	$3, %r8d
	imull	%esi, %r8d
	leal	(%rbx,%r14), %ebx
	leal	(%r8,%r14), %esi
	movslq	%edi, %rdi
	vmovups	40(%r13,%rdi,4), %xmm1
	vmovups	56(%r13,%rdi,4), %xmm2
	vshufps	$136, %xmm2, %xmm1, %xmm0 # xmm0 = xmm1[0,2],xmm2[0,2]
	vsubps	%xmm10, %xmm0, %xmm0
	vmulps	%xmm0, %xmm8, %xmm0
	movslq	%esi, %rsi
	vmovups	32(%r13,%rsi,4), %xmm3
	vshufps	$221, 48(%r13,%rsi,4), %xmm3, %xmm3 # xmm3 = xmm3[1,3],mem[1,3]
	vsubps	%xmm10, %xmm3, %xmm3
	vmulps	%xmm3, %xmm8, %xmm3
	vminps	%xmm11, %xmm3, %xmm3
	vxorps	%xmm7, %xmm7, %xmm7
	vmaxps	%xmm7, %xmm3, %xmm3
	movslq	%ebx, %rbx
	vmovups	32(%r13,%rbx,4), %xmm4
	vshufps	$221, 48(%r13,%rbx,4), %xmm4, %xmm4 # xmm4 = xmm4[1,3],mem[1,3]
	vsubps	%xmm10, %xmm4, %xmm4
	vmulps	%xmm4, %xmm8, %xmm4
	vminps	%xmm11, %xmm4, %xmm4
	vmaxps	%xmm7, %xmm4, %xmm4
	vaddps	%xmm4, %xmm3, %xmm3
	vminps	%xmm11, %xmm0, %xmm0
	vmaxps	%xmm7, %xmm0, %xmm0
	vmovups	32(%r13,%rdi,4), %xmm4
	vmovups	48(%r13,%rdi,4), %xmm5
	vshufps	$136, %xmm5, %xmm4, %xmm6 # xmm6 = xmm4[0,2],xmm5[0,2]
	vsubps	%xmm10, %xmm6, %xmm6
	vmulps	%xmm6, %xmm8, %xmm6
	vminps	%xmm11, %xmm6, %xmm6
	vmaxps	%xmm7, %xmm6, %xmm6
	vaddps	%xmm6, %xmm0, %xmm6
	vaddps	%xmm6, %xmm3, %xmm6
	vshufps	$221, %xmm5, %xmm4, %xmm3 # xmm3 = xmm4[1,3],xmm5[1,3]
	vsubps	%xmm10, %xmm3, %xmm3
	vmulps	%xmm3, %xmm8, %xmm4
	vmovups	40(%r13,%rsi,4), %xmm3
	vshufps	$136, 56(%r13,%rsi,4), %xmm3, %xmm3 # xmm3 = xmm3[0,2],mem[0,2]
	vsubps	%xmm10, %xmm3, %xmm3
	vmulps	%xmm3, %xmm8, %xmm3
	vminps	%xmm11, %xmm3, %xmm3
	vmaxps	%xmm7, %xmm3, %xmm3
	vmovups	40(%r13,%rbx,4), %xmm5
	vshufps	$136, 56(%r13,%rbx,4), %xmm5, %xmm5 # xmm5 = xmm5[0,2],mem[0,2]
	vsubps	%xmm10, %xmm5, %xmm5
	vmulps	%xmm5, %xmm8, %xmm5
	vminps	%xmm11, %xmm5, %xmm5
	vmaxps	%xmm7, %xmm5, %xmm5
	vaddps	%xmm5, %xmm3, %xmm3
	vshufps	$221, %xmm2, %xmm1, %xmm1 # xmm1 = xmm1[1,3],xmm2[1,3]
	vsubps	%xmm10, %xmm1, %xmm1
	vmulps	%xmm1, %xmm8, %xmm1
	vminps	%xmm11, %xmm1, %xmm1
	vmaxps	%xmm7, %xmm1, %xmm2
	vminps	%xmm11, %xmm4, %xmm1
	vmaxps	%xmm7, %xmm1, %xmm1
	vaddps	%xmm1, %xmm2, %xmm5
	vmulps	2496(%rsp), %xmm6, %xmm4 # 16-byte Folded Reload
	vmovaps	%xmm4, %xmm2
	testl	%r9d, %r9d
	je	.LBB148_65
# BB#64:                                # %for demosaiced$3.s0.v167
                                        #   in Loop: Header=BB148_63 Depth=3
	vmovaps	%xmm1, %xmm2
.LBB148_65:                             # %for demosaiced$3.s0.v167
                                        #   in Loop: Header=BB148_63 Depth=3
	vaddps	%xmm3, %xmm5, %xmm3
	je	.LBB148_67
# BB#66:                                # %for demosaiced$3.s0.v167
                                        #   in Loop: Header=BB148_63 Depth=3
	vmovaps	%xmm4, %xmm1
.LBB148_67:                             # %for demosaiced$3.s0.v167
                                        #   in Loop: Header=BB148_63 Depth=3
	vmulps	2496(%rsp), %xmm3, %xmm4 # 16-byte Folded Reload
	vmovaps	%xmm4, %xmm3
	jne	.LBB148_69
# BB#68:                                # %for demosaiced$3.s0.v167
                                        #   in Loop: Header=BB148_63 Depth=3
	vmovaps	%xmm0, %xmm3
.LBB148_69:                             # %for demosaiced$3.s0.v167
                                        #   in Loop: Header=BB148_63 Depth=3
	jne	.LBB148_71
# BB#70:                                # %for demosaiced$3.s0.v167
                                        #   in Loop: Header=BB148_63 Depth=3
	vmovaps	%xmm4, %xmm0
.LBB148_71:                             # %for demosaiced$3.s0.v167
                                        #   in Loop: Header=BB148_63 Depth=3
	andl	$1, %r10d
	je	.LBB148_73
# BB#72:                                # %for demosaiced$3.s0.v167
                                        #   in Loop: Header=BB148_63 Depth=3
	vmovaps	%xmm3, %xmm0
.LBB148_73:                             # %for demosaiced$3.s0.v167
                                        #   in Loop: Header=BB148_63 Depth=3
	testl	%r10d, %r10d
	je	.LBB148_75
# BB#74:                                # %for demosaiced$3.s0.v167
                                        #   in Loop: Header=BB148_63 Depth=3
	vmovaps	%xmm2, %xmm1
.LBB148_75:                             # %for demosaiced$3.s0.v167
                                        #   in Loop: Header=BB148_63 Depth=3
	vmovaps	.LCPI148_10(%rip), %ymm2 # ymm2 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm0, %ymm2, %ymm0
	vmovaps	.LCPI148_11(%rip), %ymm2 # ymm2 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm1, %ymm2, %ymm1
	vblendps	$170, %ymm0, %ymm1, %ymm0 # ymm0 = ymm1[0],ymm0[1],ymm1[2],ymm0[3],ymm1[4],ymm0[5],ymm1[6],ymm0[7]
	vmovups	%ymm0, (%rax)
	subq	$-128, %rax
	addl	$1, %edx
	cmpl	$2, %edx
	jne	.LBB148_63
# BB#76:                                # %end for demosaiced$3.s0.v168
                                        #   in Loop: Header=BB148_62 Depth=2
	movq	2464(%rsp), %rdi        # 8-byte Reload
	addq	$1, %rdi
	movq	2432(%rsp), %rdx        # 8-byte Reload
	addl	$1, %edx
	movq	1472(%rsp), %rsi        # 8-byte Reload
	addq	$32, %rsi
	xorl	%ecx, %ecx
	cmpq	$4, %rdi
	jne	.LBB148_62
# BB#77:                                #   in Loop: Header=BB148_43 Depth=1
	xorl	%edx, %edx
	movq	1480(%rsp), %r8         # 8-byte Reload
	.align	16, 0x90
.LBB148_78:                             # %for demosaiced$3.s0.v15.v1510
                                        #   Parent Loop BB148_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB148_79 Depth 3
	movq	%rdx, 1984(%rsp)        # 8-byte Spill
	movq	%r8, 1480(%rsp)         # 8-byte Spill
	movq	1504(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rdx,8), %edx
	movq	2168(%rsp), %rax        # 8-byte Reload
	subl	%eax, %edx
	movq	904(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB148_79:                             # %for demosaiced$3.s0.v1614
                                        #   Parent Loop BB148_43 Depth=1
                                        #     Parent Loop BB148_78 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%r12,%rax), %r14d
	movl	%r14d, %edi
	andl	$3, %edi
	movq	2552(%rsp), %r10        # 8-byte Reload
	imull	%r10d, %edi
	leal	(%rdi,%rdx), %edi
	leal	(%r11,%rax), %ebx
	andl	$3, %ebx
	imull	%r10d, %ebx
	movq	1976(%rsp), %rsi        # 8-byte Reload
	leal	(%rsi,%rax), %esi
	andl	$3, %esi
	imull	%r10d, %esi
	leal	(%rbx,%rdx), %ebx
	leal	(%rsi,%rdx), %esi
	movslq	%edi, %rdi
	vmovups	72(%r13,%rdi,4), %xmm0
	vmovaps	%xmm0, 2400(%rsp)       # 16-byte Spill
	vmovups	88(%r13,%rdi,4), %xmm1
	vmovaps	%xmm1, 2368(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0,2],xmm1[0,2]
	vmovaps	1488(%rsp), %xmm11      # 16-byte Reload
	vsubps	%xmm11, %xmm0, %xmm0
	vmulps	%xmm0, %xmm9, %xmm0
	vmovaps	%xmm0, 2464(%rsp)       # 16-byte Spill
	vmovups	64(%r13,%rdi,4), %xmm4
	vmovups	80(%r13,%rdi,4), %xmm0
	vshufps	$221, %xmm0, %xmm4, %xmm1 # xmm1 = xmm4[1,3],xmm0[1,3]
	vsubps	%xmm11, %xmm1, %xmm1
	vmulps	%xmm1, %xmm9, %xmm1
	vmovaps	%xmm1, 2432(%rsp)       # 16-byte Spill
	movslq	%ebx, %rdi
	vmovups	72(%r13,%rdi,4), %xmm1
	vmovaps	%xmm1, 2336(%rsp)       # 16-byte Spill
	vmovups	88(%r13,%rdi,4), %xmm2
	vmovaps	%xmm2, 2304(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm2, %xmm1, %xmm1 # xmm1 = xmm1[0,2],xmm2[0,2]
	vsubps	%xmm11, %xmm1, %xmm1
	vmulps	%xmm1, %xmm9, %xmm3
	movslq	%esi, %rsi
	vmovups	72(%r13,%rsi,4), %xmm1
	vmovaps	%xmm1, 2240(%rsp)       # 16-byte Spill
	vmovups	88(%r13,%rsi,4), %xmm7
	vshufps	$136, %xmm7, %xmm1, %xmm1 # xmm1 = xmm1[0,2],xmm7[0,2]
	vsubps	%xmm11, %xmm1, %xmm1
	vmulps	%xmm1, %xmm9, %xmm6
	vmovups	64(%r13,%rdi,4), %xmm1
	vmovups	80(%r13,%rdi,4), %xmm14
	vshufps	$221, %xmm14, %xmm1, %xmm2 # xmm2 = xmm1[1,3],xmm14[1,3]
	vsubps	%xmm11, %xmm2, %xmm2
	vmulps	%xmm2, %xmm9, %xmm2
	vmovups	64(%r13,%rsi,4), %xmm12
	vmovups	80(%r13,%rsi,4), %xmm10
	vshufps	$221, %xmm10, %xmm12, %xmm5 # xmm5 = xmm12[1,3],xmm10[1,3]
	vsubps	%xmm11, %xmm5, %xmm5
	vmulps	%xmm5, %xmm9, %xmm5
	vmovaps	2560(%rsp), %xmm8       # 16-byte Reload
	vminps	%xmm8, %xmm5, %xmm5
	vxorps	%xmm15, %xmm15, %xmm15
	vmaxps	%xmm15, %xmm5, %xmm13
	vminps	%xmm8, %xmm2, %xmm2
	vmaxps	%xmm15, %xmm2, %xmm5
	vminps	%xmm8, %xmm6, %xmm2
	vmaxps	%xmm15, %xmm2, %xmm6
	vminps	%xmm8, %xmm3, %xmm2
	vmaxps	%xmm15, %xmm2, %xmm3
	testl	%r9d, %r9d
	je	.LBB148_80
# BB#81:                                # %for demosaiced$3.s0.v1614
                                        #   in Loop: Header=BB148_79 Depth=3
	vaddps	%xmm13, %xmm5, %xmm1
	vmovaps	%xmm5, 2272(%rsp)       # 16-byte Spill
	vmulps	2528(%rsp), %xmm1, %xmm11 # 16-byte Folded Reload
	jmp	.LBB148_82
	.align	16, 0x90
.LBB148_80:                             #   in Loop: Header=BB148_79 Depth=3
	vmovaps	%xmm5, 2272(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm10, %xmm12, %xmm2 # xmm2 = xmm12[0,2],xmm10[0,2]
	vsubps	%xmm11, %xmm2, %xmm2
	vmulps	%xmm2, %xmm9, %xmm2
	vminps	%xmm8, %xmm2, %xmm2
	vmaxps	%xmm15, %xmm2, %xmm2
	vaddps	%xmm2, %xmm6, %xmm2
	vshufps	$136, %xmm14, %xmm1, %xmm1 # xmm1 = xmm1[0,2],xmm14[0,2]
	vsubps	%xmm11, %xmm1, %xmm1
	vmulps	%xmm1, %xmm9, %xmm1
	vminps	%xmm8, %xmm1, %xmm1
	vmaxps	%xmm15, %xmm1, %xmm1
	vaddps	%xmm1, %xmm3, %xmm1
	vaddps	%xmm2, %xmm1, %xmm1
	vmulps	2496(%rsp), %xmm1, %xmm11 # 16-byte Folded Reload
.LBB148_82:                             # %for demosaiced$3.s0.v1614
                                        #   in Loop: Header=BB148_79 Depth=3
	vmovaps	%xmm8, %xmm5
	vmovaps	2432(%rsp), %xmm1       # 16-byte Reload
	vminps	%xmm5, %xmm1, %xmm1
	vmaxps	%xmm15, %xmm1, %xmm12
	vmovaps	2464(%rsp), %xmm1       # 16-byte Reload
	vminps	%xmm5, %xmm1, %xmm1
	vmaxps	%xmm15, %xmm1, %xmm10
	vxorps	%xmm8, %xmm8, %xmm8
	je	.LBB148_83
# BB#84:                                # %for demosaiced$3.s0.v1614
                                        #   in Loop: Header=BB148_79 Depth=3
	vmovaps	%xmm12, %xmm0
	jmp	.LBB148_85
	.align	16, 0x90
.LBB148_83:                             #   in Loop: Header=BB148_79 Depth=3
	vshufps	$136, %xmm0, %xmm4, %xmm0 # xmm0 = xmm4[0,2],xmm0[0,2]
	vsubps	1488(%rsp), %xmm0, %xmm0 # 16-byte Folded Reload
	vmulps	%xmm0, %xmm9, %xmm0
	vminps	%xmm5, %xmm0, %xmm0
	vmaxps	%xmm8, %xmm0, %xmm0
	vaddps	%xmm0, %xmm10, %xmm0
	vmulps	2528(%rsp), %xmm0, %xmm0 # 16-byte Folded Reload
.LBB148_85:                             # %for demosaiced$3.s0.v1614
                                        #   in Loop: Header=BB148_79 Depth=3
	jne	.LBB148_86
# BB#87:                                # %for demosaiced$3.s0.v1614
                                        #   in Loop: Header=BB148_79 Depth=3
	vaddps	%xmm6, %xmm3, %xmm1
	vmulps	2528(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
	jmp	.LBB148_88
	.align	16, 0x90
.LBB148_86:                             #   in Loop: Header=BB148_79 Depth=3
	vmovaps	2240(%rsp), %xmm1       # 16-byte Reload
	vshufps	$221, %xmm7, %xmm1, %xmm1 # xmm1 = xmm1[1,3],xmm7[1,3]
	vmovaps	1488(%rsp), %xmm4       # 16-byte Reload
	vsubps	%xmm4, %xmm1, %xmm1
	vmulps	%xmm1, %xmm9, %xmm1
	vminps	%xmm5, %xmm1, %xmm1
	vmaxps	%xmm8, %xmm1, %xmm1
	vaddps	%xmm13, %xmm1, %xmm1
	vmovaps	2336(%rsp), %xmm3       # 16-byte Reload
	vshufps	$221, 2304(%rsp), %xmm3, %xmm3 # 16-byte Folded Reload
                                        # xmm3 = xmm3[1,3],mem[1,3]
	vsubps	%xmm4, %xmm3, %xmm3
	vmulps	%xmm3, %xmm9, %xmm3
	vminps	%xmm5, %xmm3, %xmm3
	vmaxps	%xmm8, %xmm3, %xmm3
	vaddps	2272(%rsp), %xmm3, %xmm3 # 16-byte Folded Reload
	vaddps	%xmm1, %xmm3, %xmm1
	vmulps	2496(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
.LBB148_88:                             # %for demosaiced$3.s0.v1614
                                        #   in Loop: Header=BB148_79 Depth=3
	je	.LBB148_90
# BB#89:                                #   in Loop: Header=BB148_79 Depth=3
	vmovaps	2400(%rsp), %xmm3       # 16-byte Reload
	vshufps	$221, 2368(%rsp), %xmm3, %xmm3 # 16-byte Folded Reload
                                        # xmm3 = xmm3[1,3],mem[1,3]
	vsubps	1488(%rsp), %xmm3, %xmm3 # 16-byte Folded Reload
	vmulps	%xmm3, %xmm9, %xmm3
	vminps	%xmm5, %xmm3, %xmm3
	vmaxps	%xmm8, %xmm3, %xmm3
	vaddps	%xmm12, %xmm3, %xmm2
	vmulps	2528(%rsp), %xmm2, %xmm10 # 16-byte Folded Reload
.LBB148_90:                             # %for demosaiced$3.s0.v1614
                                        #   in Loop: Header=BB148_79 Depth=3
	andl	$1, %r14d
	je	.LBB148_92
# BB#91:                                # %for demosaiced$3.s0.v1614
                                        #   in Loop: Header=BB148_79 Depth=3
	vmovaps	%xmm1, %xmm10
.LBB148_92:                             # %for demosaiced$3.s0.v1614
                                        #   in Loop: Header=BB148_79 Depth=3
	vmovaps	%xmm5, 2560(%rsp)       # 16-byte Spill
	testl	%r14d, %r14d
	je	.LBB148_94
# BB#93:                                # %for demosaiced$3.s0.v1614
                                        #   in Loop: Header=BB148_79 Depth=3
	vmovaps	%xmm11, %xmm0
.LBB148_94:                             # %for demosaiced$3.s0.v1614
                                        #   in Loop: Header=BB148_79 Depth=3
	vmovaps	.LCPI148_10(%rip), %ymm1 # ymm1 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm10, %ymm1, %ymm1
	vmovaps	.LCPI148_11(%rip), %ymm2 # ymm2 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm0, %ymm2, %ymm0
	vblendps	$170, %ymm1, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm1[1],ymm0[2],ymm1[3],ymm0[4],ymm1[5],ymm0[6],ymm1[7]
	vmovups	%ymm0, (%r8)
	subq	$-128, %r8
	addl	$1, %eax
	cmpl	$2, %eax
	jne	.LBB148_79
# BB#95:                                # %end for demosaiced$3.s0.v1615
                                        #   in Loop: Header=BB148_78 Depth=2
	addq	$1, %rcx
	movq	1984(%rsp), %rdx        # 8-byte Reload
	addl	$1, %edx
	movq	1480(%rsp), %r8         # 8-byte Reload
	addq	$32, %r8
	cmpq	$4, %rcx
	jne	.LBB148_78
# BB#96:                                #   in Loop: Header=BB148_43 Depth=1
	vmovaps	%xmm9, 640(%rsp)        # 16-byte Spill
	movq	1120(%rsp), %r8         # 8-byte Reload
	xorl	%r9d, %r9d
	movq	544(%rsp), %r14         # 8-byte Reload
	movq	936(%rsp), %r10         # 8-byte Reload
	movq	944(%rsp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB148_97:                             # %for f2.s0.v16.v18.yii
                                        #   Parent Loop BB148_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB148_98 Depth 3
	movq	%r9, %rax
	shlq	$7, %rax
	vmovaps	2592(%rsp,%rax), %ymm15
	vmovaps	%ymm15, 1984(%rsp)      # 32-byte Spill
	vmovaps	2624(%rsp,%rax), %ymm6
	vmovaps	%ymm6, 2272(%rsp)       # 32-byte Spill
	vmovaps	2656(%rsp,%rax), %ymm1
	vmovaps	%ymm1, 2240(%rsp)       # 32-byte Spill
	vmovaps	2688(%rsp,%rax), %ymm13
	vmovaps	%ymm13, 1504(%rsp)      # 32-byte Spill
	vmovaps	2848(%rsp,%rax), %ymm12
	vmovaps	2880(%rsp,%rax), %ymm10
	vmovaps	2912(%rsp,%rax), %ymm7
	vmovaps	2944(%rsp,%rax), %ymm8
	vmovaps	3104(%rsp,%rax), %ymm5
	vmovaps	3136(%rsp,%rax), %ymm4
	vmovaps	3168(%rsp,%rax), %ymm3
	vmovaps	1344(%rsp), %ymm0       # 32-byte Reload
	vmulps	%ymm0, %ymm1, %ymm1
	vmulps	%ymm0, %ymm6, %ymm2
	vmulps	%ymm0, %ymm15, %ymm6
	vmulps	%ymm0, %ymm13, %ymm9
	vmovaps	1376(%rsp), %ymm0       # 32-byte Reload
	vmovaps	%ymm0, %ymm11
	vfmadd213ps	%ymm9, %ymm8, %ymm11
	vmovaps	%ymm0, %ymm9
	vfmadd213ps	%ymm6, %ymm12, %ymm9
	vmovaps	%ymm0, %ymm6
	vfmadd213ps	%ymm2, %ymm10, %ymm6
	vmovaps	%ymm0, %ymm2
	vfmadd213ps	%ymm1, %ymm7, %ymm2
	vmovaps	1408(%rsp), %ymm0       # 32-byte Reload
	vmovaps	%ymm0, %ymm1
	vfmadd213ps	%ymm2, %ymm3, %ymm1
	vmovaps	%ymm1, 2400(%rsp)       # 32-byte Spill
	vmovaps	%ymm0, %ymm1
	vfmadd213ps	%ymm6, %ymm4, %ymm1
	vmovaps	%ymm1, 2368(%rsp)       # 32-byte Spill
	vmovaps	%ymm0, %ymm1
	vfmadd213ps	%ymm9, %ymm5, %ymm1
	vmovaps	%ymm1, 2336(%rsp)       # 32-byte Spill
	vmovaps	3200(%rsp,%rax), %ymm14
	vfmadd213ps	%ymm11, %ymm14, %ymm0
	vmovaps	%ymm0, 2304(%rsp)       # 32-byte Spill
	vmovaps	1216(%rsp), %ymm1       # 32-byte Reload
	vmulps	%ymm1, %ymm13, %ymm2
	vmovaps	1248(%rsp), %ymm0       # 32-byte Reload
	vmovaps	%ymm0, %ymm11
	vfmadd213ps	%ymm2, %ymm8, %ymm11
	vmulps	%ymm1, %ymm15, %ymm2
	vmovaps	%ymm0, %ymm6
	vfmadd213ps	%ymm2, %ymm12, %ymm6
	vmulps	2272(%rsp), %ymm1, %ymm2 # 32-byte Folded Reload
	vmovaps	%ymm0, %ymm13
	vfmadd213ps	%ymm2, %ymm10, %ymm13
	vmovaps	2240(%rsp), %ymm9       # 32-byte Reload
	vmulps	%ymm1, %ymm9, %ymm2
	vmovaps	%ymm0, %ymm15
	vfmadd213ps	%ymm2, %ymm7, %ymm15
	vmovaps	1312(%rsp), %ymm0       # 32-byte Reload
	vmovaps	%ymm0, %ymm1
	vfmadd213ps	%ymm15, %ymm3, %ymm1
	vmovaps	%ymm1, 2464(%rsp)       # 32-byte Spill
	vmovaps	%ymm0, %ymm1
	vfmadd213ps	%ymm13, %ymm4, %ymm1
	vmovaps	%ymm1, 2432(%rsp)       # 32-byte Spill
	vmovaps	%ymm0, %ymm13
	vfmadd213ps	%ymm6, %ymm5, %ymm13
	vmovaps	%ymm0, %ymm6
	vfmadd213ps	%ymm11, %ymm14, %ymm6
	vmovaps	1280(%rsp), %ymm0       # 32-byte Reload
	vmulps	1504(%rsp), %ymm0, %ymm11 # 32-byte Folded Reload
	vmovaps	1152(%rsp), %ymm1       # 32-byte Reload
	vfmadd213ps	%ymm11, %ymm1, %ymm8
	vmulps	1984(%rsp), %ymm0, %ymm11 # 32-byte Folded Reload
	vfmadd213ps	%ymm11, %ymm1, %ymm12
	vmulps	2272(%rsp), %ymm0, %ymm11 # 32-byte Folded Reload
	vfmadd213ps	%ymm11, %ymm1, %ymm10
	vmulps	%ymm0, %ymm9, %ymm11
	vfmadd213ps	%ymm11, %ymm1, %ymm7
	vmovaps	1184(%rsp), %ymm0       # 32-byte Reload
	vfmadd213ps	%ymm7, %ymm0, %ymm3
	vmovaps	%ymm3, %ymm2
	vfmadd213ps	%ymm10, %ymm0, %ymm4
	vmovaps	%ymm4, %ymm9
	vfmadd213ps	%ymm12, %ymm0, %ymm5
	vfmadd213ps	%ymm8, %ymm0, %ymm14
	xorl	%esi, %esi
	movl	$3, %eax
	movq	%r8, %rdx
	.align	16, 0x90
.LBB148_98:                             # %for f2.s0.v17
                                        #   Parent Loop BB148_43 Depth=1
                                        #     Parent Loop BB148_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovaps	%ymm13, %ymm4
	cmpl	$1, %esi
	je	.LBB148_100
# BB#99:                                # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	2336(%rsp), %ymm4       # 32-byte Reload
.LBB148_100:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	2432(%rsp), %ymm7       # 32-byte Reload
	je	.LBB148_102
# BB#101:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	2368(%rsp), %ymm7       # 32-byte Reload
.LBB148_102:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	2464(%rsp), %ymm10      # 32-byte Reload
	je	.LBB148_104
# BB#103:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	2400(%rsp), %ymm10      # 32-byte Reload
.LBB148_104:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	%ymm6, %ymm11
	je	.LBB148_106
# BB#105:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	2304(%rsp), %ymm11      # 32-byte Reload
.LBB148_106:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	%ymm14, %ymm8
	testl	%esi, %esi
	je	.LBB148_108
# BB#107:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	%ymm11, %ymm8
.LBB148_108:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	%ymm2, %ymm11
	je	.LBB148_110
# BB#109:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	%ymm10, %ymm11
.LBB148_110:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	%ymm9, %ymm10
	je	.LBB148_112
# BB#111:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	%ymm7, %ymm10
.LBB148_112:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	%ymm5, %ymm7
	je	.LBB148_114
# BB#113:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	%ymm4, %ymm7
.LBB148_114:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB148_98 Depth=3
	vmovaps	1536(%rsp), %ymm0       # 32-byte Reload
	vminps	%ymm0, %ymm7, %ymm4
	vminps	%ymm0, %ymm10, %ymm7
	vminps	%ymm0, %ymm11, %ymm10
	vminps	%ymm0, %ymm8, %ymm8
	vxorps	%ymm0, %ymm0, %ymm0
	vmaxps	%ymm0, %ymm4, %ymm4
	vmaxps	%ymm0, %ymm7, %ymm7
	vmaxps	%ymm0, %ymm10, %ymm10
	vmaxps	%ymm0, %ymm8, %ymm8
	vcvttps2dq	%ymm4, %ymm4
	vmovdqa	.LCPI148_3(%rip), %ymm0 # ymm0 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vpshufb	%ymm0, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vcvttps2dq	%ymm7, %ymm7
	vpshufb	%ymm0, %ymm7, %ymm7
	vpermq	$232, %ymm7, %ymm7      # ymm7 = ymm7[0,2,2,3]
	vcvttps2dq	%ymm10, %ymm10
	vpshufb	%ymm0, %ymm10, %ymm10
	vpermq	$232, %ymm10, %ymm10    # ymm10 = ymm10[0,2,2,3]
	vcvttps2dq	%ymm8, %ymm8
	vpshufb	%ymm0, %ymm8, %ymm8
	vpermq	$232, %ymm8, %ymm8      # ymm8 = ymm8[0,2,2,3]
	vpmovzxwd	%xmm8, %ymm8    # ymm8 = xmm8[0],zero,xmm8[1],zero,xmm8[2],zero,xmm8[3],zero,xmm8[4],zero,xmm8[5],zero,xmm8[6],zero,xmm8[7],zero
	vpmovzxwd	%xmm10, %ymm10  # ymm10 = xmm10[0],zero,xmm10[1],zero,xmm10[2],zero,xmm10[3],zero,xmm10[4],zero,xmm10[5],zero,xmm10[6],zero,xmm10[7],zero
	vpmovzxwd	%xmm7, %ymm7    # ymm7 = xmm7[0],zero,xmm7[1],zero,xmm7[2],zero,xmm7[3],zero,xmm7[4],zero,xmm7[5],zero,xmm7[6],zero,xmm7[7],zero
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vmovdqa	2176(%rsp), %ymm0       # 32-byte Reload
	vpmulld	%ymm0, %ymm4, %ymm11
	vpmulld	%ymm0, %ymm7, %ymm7
	vpmulld	%ymm0, %ymm10, %ymm4
	vpmulld	%ymm0, %ymm8, %ymm8
	vmovd	%esi, %xmm10
	vpsubd	2208(%rsp), %ymm10, %ymm10 # 32-byte Folded Reload
	vpbroadcastd	%xmm10, %ymm15
	vpaddd	%ymm8, %ymm15, %ymm12
	vpaddd	%ymm4, %ymm15, %ymm4
	vpaddd	%ymm7, %ymm15, %ymm10
	vpaddd	%ymm11, %ymm15, %ymm8
	vmovq	%xmm12, %rdi
	movslq	%edi, %rbx
	movzwl	(%r15,%rbx,2), %ebx
	vmovd	%ebx, %xmm7
	vpextrq	$1, %xmm12, %rbx
	sarq	$32, %rdi
	vpinsrw	$1, (%r15,%rdi,2), %xmm7, %xmm7
	movslq	%ebx, %rdi
	sarq	$32, %rbx
	vextracti128	$1, %ymm12, %xmm1
	vpinsrw	$2, (%r15,%rdi,2), %xmm7, %xmm7
	vmovq	%xmm1, %rdi
	vpinsrw	$3, (%r15,%rbx,2), %xmm7, %xmm7
	movslq	%edi, %rbx
	vpinsrw	$4, (%r15,%rbx,2), %xmm7, %xmm7
	vpextrq	$1, %xmm1, %rbx
	sarq	$32, %rdi
	vpinsrw	$5, (%r15,%rdi,2), %xmm7, %xmm1
	movslq	%ebx, %rdi
	vpinsrw	$6, (%r15,%rdi,2), %xmm1, %xmm1
	vmovq	%xmm4, %rdi
	sarq	$32, %rbx
	vpinsrw	$7, (%r15,%rbx,2), %xmm1, %xmm7
	movslq	%edi, %rbx
	movzwl	(%r15,%rbx,2), %ebx
	vmovd	%ebx, %xmm1
	vpextrq	$1, %xmm4, %rbx
	sarq	$32, %rdi
	vpinsrw	$1, (%r15,%rdi,2), %xmm1, %xmm1
	movslq	%ebx, %rdi
	sarq	$32, %rbx
	vextracti128	$1, %ymm4, %xmm4
	vpinsrw	$2, (%r15,%rdi,2), %xmm1, %xmm1
	vmovq	%xmm4, %rdi
	vpinsrw	$3, (%r15,%rbx,2), %xmm1, %xmm1
	movslq	%edi, %rbx
	vpinsrw	$4, (%r15,%rbx,2), %xmm1, %xmm1
	vpextrq	$1, %xmm4, %rbx
	sarq	$32, %rdi
	vpinsrw	$5, (%r15,%rdi,2), %xmm1, %xmm1
	movslq	%ebx, %rdi
	vpinsrw	$6, (%r15,%rdi,2), %xmm1, %xmm1
	vmovq	%xmm10, %rdi
	sarq	$32, %rbx
	vpinsrw	$7, (%r15,%rbx,2), %xmm1, %xmm1
	movslq	%edi, %rbx
	movzwl	(%r15,%rbx,2), %ebx
	vmovd	%ebx, %xmm4
	vpextrq	$1, %xmm10, %rbx
	sarq	$32, %rdi
	vpinsrw	$1, (%r15,%rdi,2), %xmm4, %xmm4
	movslq	%ebx, %rdi
	sarq	$32, %rbx
	vextracti128	$1, %ymm10, %xmm0
	vpinsrw	$2, (%r15,%rdi,2), %xmm4, %xmm4
	vmovq	%xmm0, %rdi
	vpinsrw	$3, (%r15,%rbx,2), %xmm4, %xmm4
	movslq	%edi, %rbx
	vpinsrw	$4, (%r15,%rbx,2), %xmm4, %xmm4
	vpextrq	$1, %xmm0, %rbx
	sarq	$32, %rdi
	vpinsrw	$5, (%r15,%rdi,2), %xmm4, %xmm0
	movslq	%ebx, %rdi
	vpinsrw	$6, (%r15,%rdi,2), %xmm0, %xmm0
	vmovq	%xmm8, %rdi
	sarq	$32, %rbx
	vpinsrw	$7, (%r15,%rbx,2), %xmm0, %xmm0
	movslq	%edi, %rbx
	movzwl	(%r15,%rbx,2), %ebx
	vmovd	%ebx, %xmm4
	vpextrq	$1, %xmm8, %rbx
	sarq	$32, %rdi
	vpinsrw	$1, (%r15,%rdi,2), %xmm4, %xmm4
	movslq	%ebx, %rdi
	sarq	$32, %rbx
	vextracti128	$1, %ymm8, %xmm3
	vpinsrw	$2, (%r15,%rdi,2), %xmm4, %xmm4
	vmovq	%xmm3, %rdi
	vpinsrw	$3, (%r15,%rbx,2), %xmm4, %xmm4
	movslq	%edi, %rbx
	vpinsrw	$4, (%r15,%rbx,2), %xmm4, %xmm4
	vpextrq	$1, %xmm3, %rbx
	sarq	$32, %rdi
	vpinsrw	$5, (%r15,%rdi,2), %xmm4, %xmm3
	movslq	%ebx, %rdi
	vpinsrw	$6, (%r15,%rdi,2), %xmm3, %xmm3
	sarq	$32, %rbx
	vpinsrw	$7, (%r15,%rbx,2), %xmm3, %xmm3
	vinserti128	$1, %xmm7, %ymm1, %ymm1
	vinserti128	$1, %xmm0, %ymm3, %ymm0
	movq	1960(%rsp), %rdi        # 8-byte Reload
	vmovdqu	%ymm0, (%rdi,%rdx)
	movq	1968(%rsp), %rdi        # 8-byte Reload
	vmovdqu	%ymm1, (%rdi,%rdx)
	addq	1712(%rsp), %rdx        # 8-byte Folded Reload
	addl	$1, %esi
	addq	$-1, %rax
	jne	.LBB148_98
# BB#115:                               # %end for f2.s0.v17
                                        #   in Loop: Header=BB148_97 Depth=2
	addq	$1, %r9
	addq	%rcx, %r8
	cmpq	$2, %r9
	jne	.LBB148_97
# BB#116:                               # %end for f2.s0.v16.v18.yii
                                        #   in Loop: Header=BB148_43 Depth=1
	movq	1080(%rsp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	1112(%rsp), %rbx        # 8-byte Reload
	addq	$-32, %rbx
	movl	1088(%rsp), %eax        # 4-byte Reload
	addl	$32, %eax
	movq	1104(%rsp), %rdi        # 8-byte Reload
	addq	$-32, %rdi
	movq	1096(%rsp), %rdx        # 8-byte Reload
	addq	$-32, %rdx
	addq	$64, 1120(%rsp)         # 8-byte Folded Spill
	cmpl	564(%rsp), %ecx         # 4-byte Folded Reload
	vmovaps	592(%rsp), %xmm12       # 16-byte Reload
	vpxor	%xmm8, %xmm8, %xmm8
	jne	.LBB148_43
# BB#117:
	movq	664(%rsp), %r9          # 8-byte Reload
	movl	788(%rsp), %eax         # 4-byte Reload
.LBB148_118:                            # %for f2.s0.v16.v18.v18.preheader
	movl	%eax, 788(%rsp)         # 4-byte Spill
	movq	496(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %eax
	sarl	$5, %eax
	leal	1(%rax), %edx
	addl	$31, %ebx
	sarl	$5, %ebx
	cmpl	%ebx, %eax
	cmovgel	%edx, %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	cmovsl	%eax, %ebx
	movq	792(%rsp), %rcx         # 8-byte Reload
	cmpl	%ebx, %ecx
	movl	%ecx, %r11d
	cmovgl	%ebx, %r11d
	movl	%r11d, 584(%rsp)        # 4-byte Spill
	movq	2168(%rsp), %r8         # 8-byte Reload
	movq	872(%rsp), %rax         # 8-byte Reload
	subl	%r8d, %eax
	leal	(%rax,%r10), %eax
	movq	800(%rsp), %rsi         # 8-byte Reload
	cmpl	%eax, %esi
	cmovlel	%esi, %eax
	addl	$-31, %eax
	leal	-30(%rsi), %edx
	cmpl	%eax, %edx
	cmovlel	%edx, %eax
	leal	-1(%rsi), %edx
	cmpl	%eax, %edx
	cmovlel	%edx, %eax
	cmpl	%eax, %esi
	cmovlel	%esi, %eax
	movl	856(%rsp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	cmovlel	%edx, %eax
	sarl	$5, %eax
	addl	$1, %eax
	cmpl	%eax, %r11d
	movl	%eax, %edx
	cmovgel	%r11d, %edx
	movl	%edx, 576(%rsp)         # 4-byte Spill
	movq	%r10, %rdi
	movl	860(%rsp), %r10d        # 4-byte Reload
	movl	1072(%rsp), %edx        # 4-byte Reload
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	movl	$1, %esi
	subl	%edx, %esi
	movq	%rsi, 2528(%rsp)        # 8-byte Spill
	movq	568(%rsp), %rdx         # 8-byte Reload
	leal	-32(%r8,%rdx), %edx
	movq	552(%rsp), %rsi         # 8-byte Reload
	leal	30(%r8,%rsi), %esi
	cmpl	%esi, %edx
	cmovgel	%edx, %esi
	movslq	%esi, %rdx
	movq	%rdx, %r11
	shlq	$5, %r11
	leaq	160(%r11), %rsi
	movq	672(%rsp), %r12         # 8-byte Reload
	subq	%r12, %rsi
	movq	%rsi, 1968(%rsp)        # 8-byte Spill
	subq	%r12, %r11
	movq	%r11, 1976(%rsp)        # 8-byte Spill
	leaq	2(%rdx), %rsi
	movq	880(%rsp), %r12         # 8-byte Reload
	subq	%r12, %rsi
	shlq	$2, %rsi
	movq	%rsi, 712(%rsp)         # 8-byte Spill
	shlq	$4, %rdx
	subq	488(%rsp), %rdx         # 8-byte Folded Reload
	movq	%rdx, 1984(%rsp)        # 8-byte Spill
	movl	%ecx, %edx
	notl	%edx
	notl	%ebx
	cmpl	%ebx, %edx
	cmovgel	%edx, %ebx
	movq	%rbx, 496(%rsp)         # 8-byte Spill
	movl	788(%rsp), %edx         # 4-byte Reload
	imull	%r9d, %edx
	addl	%edx, %edi
	leal	-32(%r8), %esi
	movl	%esi, %r8d
	subl	%edi, %esi
	movl	%ebx, %edx
	shll	$5, %edx
	subl	%edx, %r8d
	movl	%r8d, 488(%rsp)         # 4-byte Spill
	subl	%edx, %esi
	movq	%rsi, 320(%rsp)         # 8-byte Spill
	movl	%ebx, %edx
	notl	%edx
	movslq	%edx, %rsi
	movq	%rsi, %r8
	shlq	$7, %r8
	cmpl	%eax, %esi
	cmovll	%eax, %esi
	leal	1(%rbx,%rsi), %eax
	movl	%eax, 476(%rsp)         # 4-byte Spill
	movslq	%esi, %rax
	shll	$5, %esi
	movq	%rsi, 480(%rsp)         # 8-byte Spill
	subl	%eax, %ecx
	movl	%ecx, 472(%rsp)         # 4-byte Spill
	shlq	$7, %rax
	movq	%r12, %rcx
	negq	%rcx
	movq	%rcx, 312(%rsp)         # 8-byte Spill
	movq	$-2, %rsi
	movq	440(%rsp), %rcx         # 8-byte Reload
	subq	%rcx, %rsi
	movq	%rsi, 432(%rsp)         # 8-byte Spill
	movl	$64, %esi
	subq	%r12, %rsi
	movq	%rsi, 304(%rsp)         # 8-byte Spill
	movl	1072(%rsp), %edx        # 4-byte Reload
	cmpl	%r10d, %edx
	cmovgel	%edx, %r10d
	movq	%r14, %rsi
	subq	%r12, %rsi
	movq	1064(%rsp), %rdx        # 8-byte Reload
	addq	$2, %rdx
	imulq	%rsi, %rdx
	leaq	(,%r14,4), %rbx
	leaq	(,%r12,4), %rsi
	subq	%rsi, %rbx
	movq	%rbx, 296(%rsp)         # 8-byte Spill
	movl	$128, %esi
	subq	%r12, %rsi
	movq	%rsi, 288(%rsp)         # 8-byte Spill
	addq	%r14, %r14
	addq	%r12, %r12
	subq	%r12, %r14
	movq	%r14, 544(%rsp)         # 8-byte Spill
	movq	864(%rsp), %rbx         # 8-byte Reload
	leaq	32(%rbx,%rdx,2), %rsi
	movq	%rsi, 424(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rdx,2), %rsi
	movq	%rsi, 416(%rsp)         # 8-byte Spill
	leaq	(%r8,%r13), %rdx
	movq	%rdx, 464(%rsp)         # 8-byte Spill
	leaq	(%rax,%r13), %rax
	movq	%rax, 456(%rsp)         # 8-byte Spill
	movl	$4, %eax
	subl	%r10d, %eax
	movl	%eax, 1464(%rsp)        # 4-byte Spill
	negl	%r10d
	movl	%r10d, 860(%rsp)        # 4-byte Spill
	movl	$-2, %eax
	subl	%ecx, %eax
	movq	%rax, 552(%rsp)         # 8-byte Spill
	movq	504(%rsp), %rax         # 8-byte Reload
	addq	%rax, %rax
	movq	%rax, 504(%rsp)         # 8-byte Spill
	vpabsd	912(%rsp), %xmm0        # 16-byte Folded Reload
	vmovdqa	%ymm0, 672(%rsp)        # 32-byte Spill
	vinserti128	$1, %xmm0, %ymm0, %ymm0
	vmovdqa	%ymm0, 800(%rsp)        # 32-byte Spill
	vmovaps	1920(%rsp), %ymm0       # 32-byte Reload
	vextractf128	$1, %ymm0, 1712(%rsp) # 16-byte Folded Spill
	leal	3(%rcx), %eax
	movl	%eax, 856(%rsp)         # 4-byte Spill
	movb	%al, %bl
	leaq	64(%r11), %rax
	movq	%rax, 1960(%rsp)        # 8-byte Spill
	movl	$1, %edx
	.align	16, 0x90
.LBB148_119:                            # %for f2.s0.v16.v18.v18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB148_120 Depth 2
                                        #       Child Loop BB148_122 Depth 3
                                        #     Child Loop BB148_126 Depth 2
                                        #       Child Loop BB148_128 Depth 3
                                        #       Child Loop BB148_195 Depth 3
                                        #       Child Loop BB148_222 Depth 3
                                        #     Child Loop BB148_161 Depth 2
                                        #       Child Loop BB148_163 Depth 3
                                        #     Child Loop BB148_284 Depth 2
                                        #       Child Loop BB148_285 Depth 3
                                        #         Child Loop BB148_286 Depth 4
                                        #       Child Loop BB148_305 Depth 3
                                        #         Child Loop BB148_306 Depth 4
                                        #       Child Loop BB148_321 Depth 3
                                        #         Child Loop BB148_322 Depth 4
                                        #       Child Loop BB148_340 Depth 3
                                        #         Child Loop BB148_341 Depth 4
	movq	%rdx, 448(%rsp)         # 8-byte Spill
	movb	%bl, 412(%rsp)          # 1-byte Spill
	movq	%r9, 664(%rsp)          # 8-byte Spill
	movq	440(%rsp), %rcx         # 8-byte Reload
	leaq	1(%rcx,%rdx,2), %rdi
	movq	%rdi, 936(%rsp)         # 8-byte Spill
	cmpq	%rdi, %r9
	movl	%edi, %eax
	cmovgl	%r9d, %eax
	leaq	3(%rcx,%rdx,2), %rdx
	cltq
	cmpq	%rax, %rdx
	movl	%eax, %esi
	cmovlel	%edx, %esi
	movl	%esi, 2400(%rsp)        # 4-byte Spill
	movl	660(%rsp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	cltq
	cmpq	%rax, %rdx
	cmovlel	%edx, %eax
	movq	%rax, 912(%rsp)         # 8-byte Spill
	movslq	%esi, %rax
	movb	%bl, %dl
	cmpq	%rax, %rdi
	movq	1736(%rsp), %rcx        # 8-byte Reload
	vmovaps	.LCPI148_8(%rip), %ymm12 # ymm12 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI148_9(%rip), %ymm13 # ymm13 = <4,u,5,u,6,u,7,u>
	jge	.LBB148_124
	.align	16, 0x90
.LBB148_120:                            # %for deinterleaved$3.s0.v1618
                                        #   Parent Loop BB148_119 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB148_122 Depth 3
	movb	%dl, 728(%rsp)          # 1-byte Spill
	movzbl	%dl, %r9d
	andl	$3, %r9d
	movq	792(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB148_158
# BB#121:                               # %for deinterleaved$3.s0.v15.v1520.preheader
                                        #   in Loop: Header=BB148_120 Depth=2
	imulq	712(%rsp), %r9          # 8-byte Folded Reload
	movq	936(%rsp), %rsi         # 8-byte Reload
	movl	%esi, %eax
	movq	664(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %eax
	cltd
	idivl	628(%rsp)               # 4-byte Folded Reload
	movl	%edx, %eax
	sarl	$31, %eax
	andl	624(%rsp), %eax         # 4-byte Folded Reload
	movq	%rcx, %r8
	movq	632(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %edx
	leal	(%rdx,%rax), %edi
	leal	1(%rdx,%rax), %eax
	cmpl	$-2, %edi
	notl	%edi
	cmovgl	%eax, %edi
	movl	620(%rsp), %eax         # 4-byte Reload
	subl	%edi, %eax
	movl	616(%rsp), %ecx         # 4-byte Reload
	cmpl	%esi, %ecx
	cmovgl	%esi, %ecx
	cmpl	%ebx, %ecx
	cmovll	%ebx, %ecx
	cmpl	%esi, 660(%rsp)         # 4-byte Folded Reload
	cmovlel	%eax, %ecx
	cmpl	%ebx, %esi
	cmovll	%eax, %ecx
	movl	784(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	setne	%r10b
	sete	%r11b
	imull	788(%rsp), %ecx         # 4-byte Folded Reload
	leaq	(%r9,%r13), %rdx
	movl	%esi, %edi
	andl	$1, %edi
	movl	%edi, 892(%rsp)         # 4-byte Spill
	vmovd	%ecx, %xmm0
	vpsubd	736(%rsp), %ymm0, %ymm0 # 32-byte Folded Reload
	vpbroadcastd	%xmm0, %ymm0
	vmovdqa	%ymm0, 2272(%rsp)       # 32-byte Spill
	sete	%bl
	movb	%dil, %cl
	andb	%r11b, %cl
	movb	%cl, 872(%rsp)          # 1-byte Spill
	testl	%esi, %eax
	setne	%r9b
	movq	2168(%rsp), %rcx        # 8-byte Reload
	orl	%ecx, %esi
	movq	%r8, %rcx
	testb	$1, %sil
	sete	%al
	orb	%r9b, %al
	movb	%al, 864(%rsp)          # 1-byte Spill
	andb	%r10b, %bl
	movb	%bl, 880(%rsp)          # 1-byte Spill
	xorl	%esi, %esi
	movq	792(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB148_122:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_120 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, 2560(%rsp)        # 8-byte Spill
	movl	%eax, 1536(%rsp)        # 4-byte Spill
	movq	%rdx, 2240(%rsp)        # 8-byte Spill
	testl	%edi, %edi
	sete	1504(%rsp)              # 1-byte Folded Spill
	setne	1448(%rsp)              # 1-byte Folded Spill
	movq	1744(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rsi), %eax
	vmovd	%eax, %xmm1
	vpbroadcastd	%xmm1, %ymm1
	vmovdqa	.LCPI148_7(%rip), %ymm13 # ymm13 = [0,2,4,6,8,10,12,14]
	vpaddd	%ymm13, %ymm1, %ymm2
	vextracti128	$1, %ymm2, %xmm3
	vpextrd	$1, %xmm3, %eax
	vmovdqa	1712(%rsp), %xmm0       # 16-byte Reload
	vpextrd	$1, %xmm0, %ebx
	movl	%ebx, 1280(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, %r9d
	vmovd	%xmm3, %eax
	vmovd	%xmm0, %r12d
	movl	%r12d, 1248(%rsp)       # 4-byte Spill
	cltd
	idivl	%r12d
	movl	%edx, %esi
	vpextrd	$2, %xmm3, %eax
	vpextrd	$2, %xmm0, %r10d
	movl	%r10d, 1216(%rsp)       # 4-byte Spill
	cltd
	idivl	%r10d
	movl	%edx, %r14d
	vpextrd	$3, %xmm3, %eax
	vpextrd	$3, %xmm0, %r8d
	movl	%r8d, 1312(%rsp)        # 4-byte Spill
	cltd
	idivl	%r8d
	movl	%edx, 2496(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm2, %eax
	vmovdqa	1920(%rsp), %ymm0       # 32-byte Reload
	vpextrd	$1, %xmm0, %edi
	movl	%edi, 1064(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, %edi
	vmovd	%esi, %xmm3
	vmovd	%xmm2, %eax
	vmovd	%xmm0, %esi
	movl	%esi, 1056(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r11d
	vpinsrd	$1, %r9d, %xmm3, %xmm3
	vpextrd	$2, %xmm2, %eax
	vpextrd	$2, %xmm0, %esi
	movl	%esi, 1016(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r9d
	vpinsrd	$2, %r14d, %xmm3, %xmm3
	vpextrd	$3, %xmm2, %eax
	vpextrd	$3, %xmm0, %esi
	movl	%esi, 1008(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r14d
	vmovdqa	.LCPI148_6(%rip), %ymm12 # ymm12 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm12, %ymm1, %ymm2
	vextracti128	$1, %ymm2, %xmm4
	vpextrd	$1, %xmm4, %eax
	cltd
	idivl	%ebx
	movl	%edx, %esi
	vpinsrd	$3, 2496(%rsp), %xmm3, %xmm9 # 4-byte Folded Reload
	vmovd	%r11d, %xmm3
	vmovd	%xmm4, %eax
	cltd
	idivl	%r12d
	movl	%edx, %ebx
	vpinsrd	$1, %edi, %xmm3, %xmm3
	vpinsrd	$2, %r9d, %xmm3, %xmm3
	vpextrd	$2, %xmm4, %eax
	cltd
	idivl	%r10d
	movl	%edx, %edi
	vpinsrd	$3, %r14d, %xmm3, %xmm3
	vmovd	%ebx, %xmm5
	vpextrd	$3, %xmm4, %eax
	cltd
	idivl	%r8d
	movl	%edx, %ebx
	vpinsrd	$1, %esi, %xmm5, %xmm4
	vpextrd	$1, %xmm2, %eax
	vpextrd	$1, %xmm0, %esi
	movl	%esi, 1080(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %esi
	vpinsrd	$2, %edi, %xmm4, %xmm4
	vmovd	%xmm2, %eax
	vmovd	%xmm0, %edi
	movl	%edi, 1072(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, %edi
	vpinsrd	$3, %ebx, %xmm4, %xmm5
	vpextrd	$2, %xmm2, %eax
	vpextrd	$2, %xmm0, %ebx
	movl	%ebx, 1184(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, %ebx
	vmovd	%edi, %xmm4
	vpextrd	$3, %xmm2, %eax
	vpextrd	$3, %xmm0, %edi
	movl	%edi, 1152(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	vpinsrd	$1, %esi, %xmm4, %xmm2
	movq	2560(%rsp), %rsi        # 8-byte Reload
	vpinsrd	$2, %ebx, %xmm2, %xmm6
	vmovd	%esi, %xmm2
	vpbroadcastd	%xmm2, %ymm10
	vmovdqa	1856(%rsp), %ymm0       # 32-byte Reload
	vpcmpgtd	%ymm10, %ymm0, %ymm4
	vmovdqa	.LCPI148_3(%rip), %ymm0 # ymm0 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vmovdqa	%ymm0, %ymm2
	vpshufb	%ymm2, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vmovdqa	1824(%rsp), %ymm0       # 32-byte Reload
	vpcmpgtd	%ymm10, %ymm0, %ymm7
	vpshufb	%ymm2, %ymm7, %ymm7
	vpermq	$232, %ymm7, %ymm7      # ymm7 = ymm7[0,2,2,3]
	vmovdqa	.LCPI148_4(%rip), %xmm0 # xmm0 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vmovdqa	%xmm0, %xmm1
	vpshufb	%xmm1, %xmm7, %xmm7
	vpshufb	%xmm1, %xmm4, %xmm4
	vpunpcklqdq	%xmm7, %xmm4, %xmm4 # xmm4 = xmm4[0],xmm7[0]
	vpxor	.LCPI148_5(%rip), %xmm4, %xmm4
	vmovdqa	1664(%rsp), %ymm0       # 32-byte Reload
	vpcmpgtd	%ymm10, %ymm0, %ymm7
	vpshufb	%ymm2, %ymm7, %ymm7
	vpermq	$232, %ymm7, %ymm7      # ymm7 = ymm7[0,2,2,3]
	vmovdqa	1632(%rsp), %ymm0       # 32-byte Reload
	vpcmpgtd	%ymm10, %ymm0, %ymm8
	vpshufb	%ymm2, %ymm8, %ymm8
	vpermq	$232, %ymm8, %ymm8      # ymm8 = ymm8[0,2,2,3]
	vpshufb	%xmm1, %xmm8, %xmm0
	vpshufb	%xmm1, %xmm7, %xmm7
	vpunpcklqdq	%xmm0, %xmm7, %xmm0 # xmm0 = xmm7[0],xmm0[0]
	vpor	%xmm4, %xmm0, %xmm14
	vpinsrd	$3, %edx, %xmm6, %xmm0
	vinserti128	$1, %xmm5, %ymm0, %ymm0
	vpsrad	$31, %ymm0, %ymm5
	vmovdqa	800(%rsp), %ymm15       # 32-byte Reload
	vpand	%ymm5, %ymm15, %ymm5
	vmovdqa	2112(%rsp), %ymm8       # 32-byte Reload
	vpaddd	%ymm0, %ymm8, %ymm0
	vpaddd	%ymm5, %ymm0, %ymm0
	vpabsd	%xmm0, %xmm5
	vextracti128	$1, %ymm0, %xmm0
	vpabsd	%xmm0, %xmm0
	vinserti128	$1, %xmm0, %ymm5, %ymm0
	vmovdqa	2048(%rsp), %ymm11      # 32-byte Reload
	vpsubd	%ymm0, %ymm11, %ymm0
	movq	1752(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rsi), %r9d
	movl	%r9d, 1480(%rsp)        # 4-byte Spill
	vmovd	%r9d, %xmm5
	vpbroadcastd	%xmm5, %ymm5
	vpaddd	%ymm12, %ymm5, %ymm6
	vmovdqa	2032(%rsp), %xmm4       # 16-byte Reload
	vpminsd	%xmm4, %xmm6, %xmm7
	vextracti128	$1, %ymm6, %xmm6
	vpminsd	%xmm4, %xmm6, %xmm6
	vmovdqa	2096(%rsp), %xmm2       # 16-byte Reload
	vpmaxsd	%xmm2, %xmm7, %xmm7
	vpmaxsd	%xmm2, %xmm6, %xmm6
	vinserti128	$1, %xmm6, %ymm7, %ymm6
	vpunpckhbw	%xmm14, %xmm14, %xmm7 # xmm7 = xmm14[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm7, %ymm7    # ymm7 = xmm7[0],zero,xmm7[1],zero,xmm7[2],zero,xmm7[3],zero,xmm7[4],zero,xmm7[5],zero,xmm7[6],zero,xmm7[7],zero
	vpslld	$31, %ymm7, %ymm7
	vblendvps	%ymm7, %ymm0, %ymm6, %ymm0
	vmovdqa	2272(%rsp), %ymm7       # 32-byte Reload
	vpaddd	%ymm0, %ymm7, %ymm6
	vmovq	%xmm6, %rsi
	movslq	%esi, %rax
	movq	%rsi, %r8
	movq	%rax, 1456(%rsp)        # 8-byte Spill
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm0
	vinserti128	$1, %xmm9, %ymm3, %ymm1
	vpsrad	$31, %ymm1, %ymm3
	vpand	%ymm3, %ymm15, %ymm3
	vpaddd	%ymm1, %ymm8, %ymm1
	vmovdqa	%ymm8, %ymm9
	vpaddd	%ymm3, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm3
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpaddd	%ymm13, %ymm5, %ymm3
	vpminsd	%xmm4, %xmm3, %xmm5
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm4, %xmm3, %xmm3
	vpmaxsd	%xmm2, %xmm5, %xmm5
	vpmaxsd	%xmm2, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm5, %ymm3
	vpsubd	%ymm1, %ymm11, %ymm1
	vmovdqa	%ymm11, %ymm12
	vpmovzxbd	%xmm14, %ymm4   # ymm4 = xmm14[0],zero,zero,zero,xmm14[1],zero,zero,zero,xmm14[2],zero,zero,zero,xmm14[3],zero,zero,zero,xmm14[4],zero,zero,zero,xmm14[5],zero,zero,zero,xmm14[6],zero,zero,zero,xmm14[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm1, %ymm3, %ymm1
	vpaddd	%ymm1, %ymm7, %ymm1
	vmovq	%xmm1, %rax
	movslq	%eax, %rdx
	movq	%rdx, 2304(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	vpextrq	$1, %xmm1, %rsi
	movslq	%esi, %rdi
	movq	%rdi, 2464(%rsp)        # 8-byte Spill
	sarq	$32, %rsi
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rdi
	movslq	%edi, %rdx
	movq	%rdx, 2432(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	vpextrq	$1, %xmm1, %rbx
	movslq	%ebx, %rdx
	movq	%rdx, 2496(%rsp)        # 8-byte Spill
	sarq	$32, %rbx
	sarq	$32, %r8
	movq	%r8, 2368(%rsp)         # 8-byte Spill
	vpextrq	$1, %xmm6, %r12
	movslq	%r12d, %rdx
	movq	%rdx, 2336(%rsp)        # 8-byte Spill
	sarq	$32, %r12
	movq	%r12, 1112(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm6, %xmm1
	vmovq	%xmm1, %r10
	movslq	%r10d, %r8
	movq	%r8, 1088(%rsp)         # 8-byte Spill
	sarq	$32, %r10
	movq	%r10, 1104(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %r14
	movslq	%r14d, %r11
	movq	%r11, 1096(%rsp)        # 8-byte Spill
	sarq	$32, %r14
	movq	%r14, 1120(%rsp)        # 8-byte Spill
	movl	%r9d, %edx
	andl	$1, %edx
	movl	%edx, 1472(%rsp)        # 4-byte Spill
	sete	%r9b
	andb	1448(%rsp), %r9b        # 1-byte Folded Reload
	movq	2368(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rdx,2), %xmm0, %xmm0
	movq	2336(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rdx,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$4, (%rcx,%r8,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%r10,2), %xmm0, %xmm0
	vpinsrw	$6, (%rcx,%r11,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%r14,2), %xmm0, %xmm4
	jne	.LBB148_123
# BB#130:                               # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqa	%ymm0, 1024(%rsp)       # 32-byte Spill
	movq	2464(%rsp), %rcx        # 8-byte Reload
	movq	2496(%rsp), %r8         # 8-byte Reload
	movq	2432(%rsp), %rdx        # 8-byte Reload
	jmp	.LBB148_131
	.align	16, 0x90
.LBB148_123:                            #   in Loop: Header=BB148_122 Depth=3
	movq	2304(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, (%rcx,%rax,2), %xmm0, %xmm0
	movq	2464(%rsp), %r8         # 8-byte Reload
	vpinsrw	$2, (%rcx,%r8,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%rsi,2), %xmm0, %xmm0
	movq	2432(%rsp), %r10        # 8-byte Reload
	vpinsrw	$4, (%rcx,%r10,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%rdi,2), %xmm0, %xmm0
	movq	2496(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rdx,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%rbx,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm0
	vmovaps	%ymm0, 1024(%rsp)       # 32-byte Spill
	movq	%r8, %rcx
	movq	%rdx, %r8
	movq	%r10, %rdx
.LBB148_131:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	testb	%r9b, %r9b
	jne	.LBB148_132
# BB#133:                               # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	movq	%rdx, 2432(%rsp)        # 8-byte Spill
	movq	%rcx, 2464(%rsp)        # 8-byte Spill
	movq	%r8, 2496(%rsp)         # 8-byte Spill
	movq	%rax, 1344(%rsp)        # 8-byte Spill
	movq	%rdi, 1376(%rsp)        # 8-byte Spill
	movq	%rsi, 1408(%rsp)        # 8-byte Spill
	movq	%rbx, 1448(%rsp)        # 8-byte Spill
	vpxor	%ymm5, %ymm5, %ymm5
	jmp	.LBB148_134
	.align	16, 0x90
.LBB148_132:                            #   in Loop: Header=BB148_122 Depth=3
	movq	%rdx, 2432(%rsp)        # 8-byte Spill
	movq	%rcx, 2464(%rsp)        # 8-byte Spill
	movq	%r8, 2496(%rsp)         # 8-byte Spill
	movq	%rax, 1344(%rsp)        # 8-byte Spill
	movq	%rdi, 1376(%rsp)        # 8-byte Spill
	movq	%rsi, 1408(%rsp)        # 8-byte Spill
	movq	%rbx, 1448(%rsp)        # 8-byte Spill
	vpmovzxwd	%xmm4, %ymm0    # ymm0 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vcvtdq2ps	%ymm0, %ymm5
.LBB148_134:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	movq	1912(%rsp), %rax        # 8-byte Reload
	movq	2560(%rsp), %r11        # 8-byte Reload
	leal	(%rax,%r11), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm4
	vpaddd	%ymm13, %ymm4, %ymm6
	vextracti128	$1, %ymm6, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	movl	1280(%rsp), %r10d       # 4-byte Reload
	idivl	%r10d
	movl	%edx, 952(%rsp)         # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	movl	1248(%rsp), %r9d        # 4-byte Reload
	idivl	%r9d
	movl	%edx, 944(%rsp)         # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	movl	1216(%rsp), %r12d       # 4-byte Reload
	idivl	%r12d
	movl	%edx, 960(%rsp)         # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	movl	1312(%rsp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, %r14d
	vpextrd	$1, %xmm6, %eax
	cltd
	idivl	1064(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r8d
	vmovd	%xmm6, %eax
	cltd
	idivl	1056(%rsp)              # 4-byte Folded Reload
	movl	%edx, %ebx
	vpextrd	$2, %xmm6, %eax
	cltd
	idivl	1016(%rsp)              # 4-byte Folded Reload
	movl	%edx, %esi
	vpextrd	$3, %xmm6, %eax
	cltd
	idivl	1008(%rsp)              # 4-byte Folded Reload
	movl	%edx, %edi
	vmovdqa	.LCPI148_6(%rip), %ymm1 # ymm1 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm1, %ymm4, %ymm4
	vextracti128	$1, %ymm4, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, %r10d
	vmovd	%xmm0, %eax
	cltd
	idivl	%r9d
	movl	%edx, 1280(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%r12d
	movl	%edx, %r12d
	vmovd	944(%rsp), %xmm6        # 4-byte Folded Reload
                                        # xmm6 = mem[0],zero,zero,zero
	vpinsrd	$1, 952(%rsp), %xmm6, %xmm6 # 4-byte Folded Reload
	vmovdqa	1792(%rsp), %ymm2       # 32-byte Reload
	vpcmpgtd	%ymm10, %ymm2, %ymm7
	vmovdqa	.LCPI148_3(%rip), %ymm2 # ymm2 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vmovdqa	%ymm2, %ymm14
	vpshufb	%ymm14, %ymm7, %ymm7
	vpermq	$232, %ymm7, %ymm7      # ymm7 = ymm7[0,2,2,3]
	vmovdqa	1760(%rsp), %ymm2       # 32-byte Reload
	vpcmpgtd	%ymm10, %ymm2, %ymm8
	vpshufb	%ymm14, %ymm8, %ymm8
	vpermq	$232, %ymm8, %ymm8      # ymm8 = ymm8[0,2,2,3]
	vmovdqa	.LCPI148_4(%rip), %xmm11 # xmm11 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vpshufb	%xmm11, %xmm8, %xmm3
	vpshufb	%xmm11, %xmm7, %xmm7
	vpunpcklqdq	%xmm3, %xmm7, %xmm3 # xmm3 = xmm7[0],xmm3[0]
	vpxor	.LCPI148_5(%rip), %xmm3, %xmm3
	vmovdqa	1600(%rsp), %ymm2       # 32-byte Reload
	vpcmpgtd	%ymm10, %ymm2, %ymm7
	vpshufb	%ymm14, %ymm7, %ymm7
	vpermq	$232, %ymm7, %ymm7      # ymm7 = ymm7[0,2,2,3]
	vmovdqa	1568(%rsp), %ymm2       # 32-byte Reload
	vpcmpgtd	%ymm10, %ymm2, %ymm2
	vpshufb	%ymm14, %ymm2, %ymm2
	vpermq	$232, %ymm2, %ymm2      # ymm2 = ymm2[0,2,2,3]
	vpshufb	%xmm11, %xmm2, %xmm2
	vpshufb	%xmm11, %xmm7, %xmm7
	vpunpcklqdq	%xmm2, %xmm7, %xmm2 # xmm2 = xmm7[0],xmm2[0]
	vpor	%xmm3, %xmm2, %xmm2
	vpinsrd	$2, 960(%rsp), %xmm6, %xmm3 # 4-byte Folded Reload
	vpinsrd	$3, %r14d, %xmm3, %xmm3
	vmovd	%ebx, %xmm6
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, %r9d
	vpinsrd	$1, %r8d, %xmm6, %xmm0
	vpinsrd	$2, %esi, %xmm0, %xmm0
	vpextrd	$1, %xmm4, %eax
	cltd
	idivl	1080(%rsp)              # 4-byte Folded Reload
	movl	%edx, %esi
	vpinsrd	$3, %edi, %xmm0, %xmm0
	vinserti128	$1, %xmm3, %ymm0, %ymm0
	vmovd	%xmm4, %eax
	cltd
	idivl	1072(%rsp)              # 4-byte Folded Reload
	movl	%edx, %ebx
	vpsrad	$31, %ymm0, %ymm3
	vmovdqa	%ymm15, %ymm8
	vpand	%ymm8, %ymm3, %ymm3
	vpaddd	%ymm0, %ymm9, %ymm0
	vpaddd	%ymm3, %ymm0, %ymm0
	vpabsd	%xmm0, %xmm3
	vextracti128	$1, %ymm0, %xmm0
	vpabsd	%xmm0, %xmm0
	vinserti128	$1, %xmm0, %ymm3, %ymm0
	vpsubd	%ymm0, %ymm12, %ymm0
	movq	2168(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r11), %eax
	vmovd	%eax, %xmm3
	vpbroadcastd	%xmm3, %ymm6
	vpaddd	%ymm13, %ymm6, %ymm3
	vmovdqa	2032(%rsp), %xmm13      # 16-byte Reload
	vpminsd	%xmm13, %xmm3, %xmm7
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm13, %xmm3, %xmm3
	vmovdqa	2096(%rsp), %xmm15      # 16-byte Reload
	vpmaxsd	%xmm15, %xmm7, %xmm7
	vpmaxsd	%xmm15, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm7, %ymm3
	vpmovzxbd	%xmm2, %ymm7    # ymm7 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
	vpslld	$31, %ymm7, %ymm7
	vblendvps	%ymm7, %ymm0, %ymm3, %ymm0
	vmovd	1280(%rsp), %xmm3       # 4-byte Folded Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vpextrd	$2, %xmm4, %eax
	cltd
	idivl	1184(%rsp)              # 4-byte Folded Reload
	vpinsrd	$1, %r10d, %xmm3, %xmm3
	vpinsrd	$2, %r12d, %xmm3, %xmm3
	vpinsrd	$3, %r9d, %xmm3, %xmm3
	vpextrd	$3, %xmm4, %eax
	vmovd	%ebx, %xmm4
	vpinsrd	$1, %esi, %xmm4, %xmm4
	vpinsrd	$2, %edx, %xmm4, %xmm4
	cltd
	idivl	1152(%rsp)              # 4-byte Folded Reload
	vpinsrd	$3, %edx, %xmm4, %xmm4
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpsrad	$31, %ymm3, %ymm4
	vpand	%ymm8, %ymm4, %ymm4
	vpaddd	%ymm3, %ymm9, %ymm3
	vpaddd	%ymm4, %ymm3, %ymm3
	vpabsd	%xmm3, %xmm4
	vextracti128	$1, %ymm3, %xmm3
	vpabsd	%xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpaddd	%ymm1, %ymm6, %ymm4
	vpminsd	%xmm13, %xmm4, %xmm6
	vextracti128	$1, %ymm4, %xmm4
	vpminsd	%xmm13, %xmm4, %xmm4
	vpmaxsd	%xmm15, %xmm6, %xmm6
	vpmaxsd	%xmm15, %xmm4, %xmm4
	vinserti128	$1, %xmm4, %ymm6, %ymm4
	vpsubd	%ymm3, %ymm12, %ymm3
	vpunpckhbw	%xmm2, %xmm2, %xmm2 # xmm2 = xmm2[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm2, %ymm2    # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vpslld	$31, %ymm2, %ymm2
	vblendvps	%ymm2, %ymm3, %ymm4, %ymm2
	vmovdqa	2272(%rsp), %ymm1       # 32-byte Reload
	vpaddd	%ymm2, %ymm1, %ymm2
	vpaddd	%ymm0, %ymm1, %ymm0
	vpextrq	$1, %xmm0, %r10
	vmovq	%xmm0, %r9
	movslq	%r9d, %rax
	movq	%rax, 1016(%rsp)        # 8-byte Spill
	sarq	$32, %r9
	movslq	%r10d, %rax
	movq	%rax, 952(%rsp)         # 8-byte Spill
	sarq	$32, %r10
	vextracti128	$1, %ymm0, %xmm0
	vpextrq	$1, %xmm0, %r11
	vmovq	%xmm0, %r8
	movslq	%r8d, %rax
	movq	%rax, 1008(%rsp)        # 8-byte Spill
	sarq	$32, %r8
	movslq	%r11d, %rax
	movq	%rax, 960(%rsp)         # 8-byte Spill
	sarq	$32, %r11
	vpextrq	$1, %xmm2, %rdi
	vmovq	%xmm2, %r14
	movslq	%r14d, %rax
	movq	%rax, 1064(%rsp)        # 8-byte Spill
	sarq	$32, %r14
	movslq	%edi, %r12
	movq	%r12, 1056(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	vextracti128	$1, %ymm2, %xmm0
	vmovq	%xmm0, %rbx
	movq	1736(%rsp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %edx
	vmovd	%edx, %xmm2
	movslq	%ebx, %rdx
	movq	%rdx, 1280(%rsp)        # 8-byte Spill
	sarq	$32, %rbx
	movq	%rbx, 1080(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rsi
	movslq	%esi, %rax
	movq	%rax, 1312(%rsp)        # 8-byte Spill
	sarq	$32, %rsi
	movq	%rsi, 1072(%rsp)        # 8-byte Spill
	vpinsrw	$1, (%rcx,%r14,2), %xmm2, %xmm0
	vpinsrw	$2, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%rdi,2), %xmm0, %xmm4
	cmpb	$0, 872(%rsp)           # 1-byte Folded Reload
	movzwl	(%rcx,%rdx,2), %edx
	movl	%edx, 1152(%rsp)        # 4-byte Spill
	movzwl	(%rcx,%rbx,2), %edx
	movl	%edx, 1184(%rsp)        # 4-byte Spill
	movzwl	(%rcx,%rax,2), %eax
	movl	%eax, 1216(%rsp)        # 4-byte Spill
	movzwl	(%rcx,%rsi,2), %eax
	movl	%eax, 1248(%rsp)        # 4-byte Spill
	jne	.LBB148_135
# BB#136:                               # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	movq	952(%rsp), %r12         # 8-byte Reload
	vpxor	%ymm2, %ymm2, %ymm2
	vmovaps	.LCPI148_8(%rip), %ymm12 # ymm12 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI148_9(%rip), %ymm13 # ymm13 = <4,u,5,u,6,u,7,u>
	movq	2240(%rsp), %rdx        # 8-byte Reload
	movq	1016(%rsp), %rax        # 8-byte Reload
	movq	1008(%rsp), %rsi        # 8-byte Reload
	movq	960(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB148_137
	.align	16, 0x90
.LBB148_135:                            #   in Loop: Header=BB148_122 Depth=3
	movq	1016(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %r12d
	vmovd	%r12d, %xmm0
	vpinsrw	$1, (%rcx,%r9,2), %xmm0, %xmm0
	movq	952(%rsp), %r12         # 8-byte Reload
	vpinsrw	$2, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%r10,2), %xmm0, %xmm0
	movq	1008(%rsp), %rsi        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rsi,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%r8,2), %xmm0, %xmm0
	movq	960(%rsp), %rbx         # 8-byte Reload
	vpinsrw	$6, (%rcx,%rbx,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%r11,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm2
	vmovaps	.LCPI148_8(%rip), %ymm12 # ymm12 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI148_9(%rip), %ymm13 # ymm13 = <4,u,5,u,6,u,7,u>
	movq	2240(%rsp), %rdx        # 8-byte Reload
.LBB148_137:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	jne	.LBB148_138
# BB#139:                               # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vpxor	%ymm4, %ymm4, %ymm4
	jmp	.LBB148_140
	.align	16, 0x90
.LBB148_138:                            #   in Loop: Header=BB148_122 Depth=3
	vpinsrw	$4, 1152(%rsp), %xmm4, %xmm0 # 4-byte Folded Reload
	vpinsrw	$5, 1184(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$6, 1216(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$7, 1248(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm4
.LBB148_140:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vpermps	%ymm4, %ymm12, %ymm0
	vpermps	%ymm5, %ymm13, %ymm3
	vblendps	$170, %ymm0, %ymm3, %ymm0 # ymm0 = ymm3[0],ymm0[1],ymm3[2],ymm0[3],ymm3[4],ymm0[5],ymm3[6],ymm0[7]
	vmovaps	.LCPI148_10(%rip), %ymm1 # ymm1 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm4, %ymm1, %ymm3
	vmovaps	.LCPI148_11(%rip), %ymm4 # ymm4 = <0,u,1,u,2,u,3,u>
	vmovaps	%ymm4, %ymm6
	vpermps	%ymm5, %ymm6, %ymm4
	vblendps	$170, %ymm3, %ymm4, %ymm3 # ymm3 = ymm4[0],ymm3[1],ymm4[2],ymm3[3],ymm4[4],ymm3[5],ymm4[6],ymm3[7]
	vpermps	%ymm2, %ymm12, %ymm4
	vmovaps	1024(%rsp), %ymm7       # 32-byte Reload
	vpermps	%ymm7, %ymm13, %ymm5
	vblendps	$170, %ymm4, %ymm5, %ymm4 # ymm4 = ymm5[0],ymm4[1],ymm5[2],ymm4[3],ymm5[4],ymm4[5],ymm5[6],ymm4[7]
	vpermps	%ymm2, %ymm1, %ymm2
	vmovaps	%ymm1, %ymm10
	vpermps	%ymm7, %ymm6, %ymm1
	vmovaps	%ymm6, %ymm11
	vblendps	$170, %ymm2, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm2[1],ymm1[2],ymm2[3],ymm1[4],ymm2[5],ymm1[6],ymm2[7]
	vmovups	%ymm1, (%rdx)
	vmovups	%ymm4, 32(%rdx)
	vmovups	%ymm3, 64(%rdx)
	vmovups	%ymm0, 96(%rdx)
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, (%rcx,%r9,2), %xmm0, %xmm0
	vpinsrw	$2, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%r10,2), %xmm0, %xmm0
	vpinsrw	$4, (%rcx,%rsi,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%r8,2), %xmm0, %xmm0
	vpinsrw	$6, (%rcx,%rbx,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%r11,2), %xmm0, %xmm5
	movq	1064(%rsp), %rax        # 8-byte Reload
	vpinsrw	$0, (%rcx,%rax,2), %xmm0, %xmm0
	vpinsrw	$1, (%rcx,%r14,2), %xmm0, %xmm0
	movq	1056(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%rdi,2), %xmm0, %xmm1
	movq	1456(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm0
	movq	2368(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm0, %xmm0
	movq	2336(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1112(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1088(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1104(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1096(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1120(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm0, %xmm0
	movq	2304(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm2
	movq	1344(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm2, %xmm2
	movq	2464(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1408(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm2, %xmm2
	movq	2432(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1376(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm2, %xmm2
	movq	2496(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1448(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm2, %xmm2
	movl	892(%rsp), %edi         # 4-byte Reload
	movl	1480(%rsp), %ebx        # 4-byte Reload
	testl	%ebx, %edi
	setne	%al
	movq	936(%rsp), %rsi         # 8-byte Reload
	orl	%esi, %ebx
	testb	$1, %bl
	sete	%bl
	orb	%al, %bl
	vpmovzxwd	%xmm0, %ymm4    # ymm4 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpmovzxwd	%xmm2, %ymm0    # ymm0 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm0, %ymm2
	vmovaps	%ymm2, %ymm6
	jne	.LBB148_142
# BB#141:                               # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vxorps	%ymm6, %ymm6, %ymm6
.LBB148_142:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vcvtdq2ps	%ymm4, %ymm4
	vmovaps	%ymm4, %ymm7
	jne	.LBB148_144
# BB#143:                               # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vxorps	%ymm7, %ymm7, %ymm7
.LBB148_144:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vpmovzxwd	%xmm5, %ymm0    # ymm0 = xmm5[0],zero,xmm5[1],zero,xmm5[2],zero,xmm5[3],zero,xmm5[4],zero,xmm5[5],zero,xmm5[6],zero,xmm5[7],zero
	vcvtdq2ps	%ymm0, %ymm5
	vmovaps	%ymm5, %ymm8
	cmpb	$0, 864(%rsp)           # 1-byte Folded Reload
	jne	.LBB148_146
# BB#145:                               # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vxorps	%ymm8, %ymm8, %ymm8
.LBB148_146:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	jne	.LBB148_147
# BB#148:                               # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vpxor	%ymm9, %ymm9, %ymm9
	jmp	.LBB148_149
	.align	16, 0x90
.LBB148_147:                            #   in Loop: Header=BB148_122 Depth=3
	vpinsrw	$4, 1152(%rsp), %xmm1, %xmm0 # 4-byte Folded Reload
	vpinsrw	$5, 1184(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$6, 1216(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$7, 1248(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm9
.LBB148_149:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vpermps	%ymm9, %ymm12, %ymm0
	vpermps	%ymm7, %ymm13, %ymm3
	vblendps	$170, %ymm0, %ymm3, %ymm0 # ymm0 = ymm3[0],ymm0[1],ymm3[2],ymm0[3],ymm3[4],ymm0[5],ymm3[6],ymm0[7]
	vpermps	%ymm9, %ymm10, %ymm3
	vpermps	%ymm7, %ymm11, %ymm7
	vblendps	$170, %ymm3, %ymm7, %ymm3 # ymm3 = ymm7[0],ymm3[1],ymm7[2],ymm3[3],ymm7[4],ymm3[5],ymm7[6],ymm3[7]
	vpermps	%ymm8, %ymm12, %ymm7
	vpermps	%ymm6, %ymm13, %ymm9
	vblendps	$170, %ymm7, %ymm9, %ymm7 # ymm7 = ymm9[0],ymm7[1],ymm9[2],ymm7[3],ymm9[4],ymm7[5],ymm9[6],ymm7[7]
	vpermps	%ymm8, %ymm10, %ymm8
	vmovaps	%ymm10, %ymm9
	vpermps	%ymm6, %ymm11, %ymm6
	vmovaps	%ymm11, %ymm10
	vblendps	$170, %ymm8, %ymm6, %ymm6 # ymm6 = ymm6[0],ymm8[1],ymm6[2],ymm8[3],ymm6[4],ymm8[5],ymm6[6],ymm8[7]
	movq	1984(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm6, 32(%rax,%rdx)
	vmovups	%ymm7, 64(%rax,%rdx)
	vmovups	%ymm3, 96(%rax,%rdx)
	vmovups	%ymm0, 128(%rax,%rdx)
	movb	1504(%rsp), %al         # 1-byte Reload
	movl	1472(%rsp), %esi        # 4-byte Reload
	andb	%sil, %al
	jne	.LBB148_151
# BB#150:                               # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vxorps	%ymm2, %ymm2, %ymm2
.LBB148_151:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	testb	%al, %al
	vxorps	%ymm3, %ymm3, %ymm3
	jne	.LBB148_153
# BB#152:                               # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vxorps	%ymm4, %ymm4, %ymm4
.LBB148_153:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	movq	1280(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm1, %xmm0
	movq	1080(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm0, %xmm1
	movq	1312(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	1072(%rsp), %rsi        # 8-byte Reload
	movzwl	(%rcx,%rsi,2), %esi
	cmpb	$0, 880(%rsp)           # 1-byte Folded Reload
	jne	.LBB148_155
# BB#154:                               # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	vxorps	%ymm5, %ymm5, %ymm5
.LBB148_155:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	je	.LBB148_157
# BB#156:                               #   in Loop: Header=BB148_122 Depth=3
	vpinsrw	$6, %eax, %xmm1, %xmm0
	vpinsrw	$7, %esi, %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm3
.LBB148_157:                            # %for deinterleaved$3.s0.v15.v1520
                                        #   in Loop: Header=BB148_122 Depth=3
	movq	2560(%rsp), %rsi        # 8-byte Reload
	vpermps	%ymm4, %ymm13, %ymm0
	vpermps	%ymm3, %ymm12, %ymm1
	vblendps	$170, %ymm1, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm1[1],ymm0[2],ymm1[3],ymm0[4],ymm1[5],ymm0[6],ymm1[7]
	vpermps	%ymm4, %ymm10, %ymm1
	vpermps	%ymm3, %ymm9, %ymm3
	vblendps	$170, %ymm3, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm3[1],ymm1[2],ymm3[3],ymm1[4],ymm3[5],ymm1[6],ymm3[7]
	vpermps	%ymm5, %ymm12, %ymm3
	vpermps	%ymm2, %ymm13, %ymm4
	vblendps	$170, %ymm3, %ymm4, %ymm3 # ymm3 = ymm4[0],ymm3[1],ymm4[2],ymm3[3],ymm4[4],ymm3[5],ymm4[6],ymm3[7]
	vpermps	%ymm5, %ymm9, %ymm4
	vpermps	%ymm2, %ymm10, %ymm2
	vblendps	$170, %ymm4, %ymm2, %ymm2 # ymm2 = ymm2[0],ymm4[1],ymm2[2],ymm4[3],ymm2[4],ymm4[5],ymm2[6],ymm4[7]
	movq	1960(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm2, (%rax,%rdx)
	movq	1976(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm3, 96(%rax,%rdx)
	vmovups	%ymm1, 128(%rax,%rdx)
	movq	1968(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm0, (%rax,%rdx)
	addl	$32, %esi
	subq	$-128, %rdx
	movl	1536(%rsp), %eax        # 4-byte Reload
	addl	$-1, %eax
	jne	.LBB148_122
.LBB148_158:                            # %end for deinterleaved$3.s0.v15.v1521
                                        #   in Loop: Header=BB148_120 Depth=2
	movq	936(%rsp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, 936(%rsp)         # 8-byte Spill
	movb	728(%rsp), %dl          # 1-byte Reload
	addb	$1, %dl
	cmpl	2400(%rsp), %eax        # 4-byte Folded Reload
	jne	.LBB148_120
.LBB148_124:                            # %end for deinterleaved$3.s0.v1619
                                        #   in Loop: Header=BB148_119 Depth=1
	movq	440(%rsp), %rax         # 8-byte Reload
	movq	448(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx,2), %rax
	movq	%rax, 1504(%rsp)        # 8-byte Spill
	movq	912(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, 2400(%rsp)        # 4-byte Folded Reload
	jge	.LBB148_159
# BB#125:                               # %for deinterleaved$3.s0.v1623.preheader
                                        #   in Loop: Header=BB148_119 Depth=1
	movl	788(%rsp), %eax         # 4-byte Reload
	movl	2400(%rsp), %esi        # 4-byte Reload
	imull	%esi, %eax
	movq	320(%rsp), %rdx         # 8-byte Reload
	leal	(%rax,%rdx), %eax
	movl	%eax, 720(%rsp)         # 4-byte Spill
	movb	%sil, %bl
	.align	16, 0x90
.LBB148_126:                            # %for deinterleaved$3.s0.v1623
                                        #   Parent Loop BB148_119 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB148_128 Depth 3
                                        #       Child Loop BB148_195 Depth 3
                                        #       Child Loop BB148_222 Depth 3
	movb	%bl, 568(%rsp)          # 1-byte Spill
	movzbl	%bl, %eax
	andl	$3, %eax
	imulq	712(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 728(%rsp)         # 8-byte Spill
	cmpl	$0, 584(%rsp)           # 4-byte Folded Reload
	jle	.LBB148_193
# BB#127:                               # %for deinterleaved$3.s0.v15.v1525.preheader
                                        #   in Loop: Header=BB148_126 Depth=2
	movl	784(%rsp), %r10d        # 4-byte Reload
	testl	%r10d, %r10d
	setne	%r8b
	sete	%r9b
	movl	2400(%rsp), %ebx        # 4-byte Reload
	movl	%ebx, %esi
	imull	788(%rsp), %esi         # 4-byte Folded Reload
	movq	728(%rsp), %rax         # 8-byte Reload
	leaq	(%r13,%rax), %rdx
	movl	%ebx, %edi
	andl	$1, %edi
	movl	%edi, 892(%rsp)         # 4-byte Spill
	vmovd	%esi, %xmm1
	vmovaps	672(%rsp), %ymm0        # 32-byte Reload
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, 2272(%rsp)       # 32-byte Spill
	vpsubd	736(%rsp), %ymm1, %ymm1 # 32-byte Folded Reload
	vpbroadcastd	%xmm1, %ymm0
	vmovdqa	%ymm0, 2240(%rsp)       # 32-byte Spill
	sete	%r11b
	movb	%dil, %al
	andb	%r9b, %al
	movb	%al, 872(%rsp)          # 1-byte Spill
	testl	%ebx, %r10d
	setne	%r9b
	movl	%ebx, %esi
	movq	%rcx, %rbx
	movq	2168(%rsp), %rcx        # 8-byte Reload
	orl	%ecx, %esi
	movq	%rbx, %rcx
	testb	$1, %sil
	sete	%al
	orb	%r9b, %al
	movb	%al, 864(%rsp)          # 1-byte Spill
	andb	%r8b, %r11b
	movb	%r11b, 880(%rsp)        # 1-byte Spill
	xorl	%esi, %esi
	movq	496(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB148_128:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, 2560(%rsp)        # 8-byte Spill
	movl	%eax, 1480(%rsp)        # 4-byte Spill
	movq	%rdx, 1536(%rsp)        # 8-byte Spill
	testl	%edi, %edi
	sete	1472(%rsp)              # 1-byte Folded Spill
	setne	1376(%rsp)              # 1-byte Folded Spill
	movq	1744(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rsi), %eax
	vmovd	%eax, %xmm1
	vpbroadcastd	%xmm1, %ymm1
	vmovdqa	.LCPI148_7(%rip), %ymm12 # ymm12 = [0,2,4,6,8,10,12,14]
	vpaddd	%ymm12, %ymm1, %ymm2
	vextracti128	$1, %ymm2, %xmm4
	vpextrd	$1, %xmm4, %eax
	vmovdqa	1712(%rsp), %xmm0       # 16-byte Reload
	vpextrd	$1, %xmm0, %ebx
	movl	%ebx, 1216(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, %r9d
	vmovd	%xmm4, %eax
	vmovd	%xmm0, %r12d
	movl	%r12d, 1184(%rsp)       # 4-byte Spill
	cltd
	idivl	%r12d
	movl	%edx, %esi
	vpextrd	$2, %xmm4, %eax
	vpextrd	$2, %xmm0, %r10d
	movl	%r10d, 1152(%rsp)       # 4-byte Spill
	cltd
	idivl	%r10d
	movl	%edx, %r14d
	vpextrd	$3, %xmm4, %eax
	vpextrd	$3, %xmm0, %r8d
	movl	%r8d, 1248(%rsp)        # 4-byte Spill
	cltd
	idivl	%r8d
	movl	%edx, 2496(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm2, %eax
	vmovdqa	1920(%rsp), %ymm0       # 32-byte Reload
	vpextrd	$1, %xmm0, %edi
	movl	%edi, 1024(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, %edi
	vmovd	%esi, %xmm4
	vmovd	%xmm2, %eax
	vmovd	%xmm0, %esi
	movl	%esi, 1016(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r11d
	vpinsrd	$1, %r9d, %xmm4, %xmm4
	vpextrd	$2, %xmm2, %eax
	vpextrd	$2, %xmm0, %esi
	movl	%esi, 1008(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r9d
	vpinsrd	$2, %r14d, %xmm4, %xmm4
	vpextrd	$3, %xmm2, %eax
	vpextrd	$3, %xmm0, %esi
	movl	%esi, 960(%rsp)         # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r14d
	vmovdqa	.LCPI148_6(%rip), %ymm9 # ymm9 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm9, %ymm1, %ymm2
	vextracti128	$1, %ymm2, %xmm6
	vpextrd	$1, %xmm6, %eax
	cltd
	idivl	%ebx
	movl	%edx, %esi
	vpinsrd	$3, 2496(%rsp), %xmm4, %xmm15 # 4-byte Folded Reload
	vmovd	%r11d, %xmm4
	vmovd	%xmm6, %eax
	cltd
	idivl	%r12d
	movl	%edx, %ebx
	vpinsrd	$1, %edi, %xmm4, %xmm4
	vpinsrd	$2, %r9d, %xmm4, %xmm4
	vpextrd	$2, %xmm6, %eax
	cltd
	idivl	%r10d
	movl	%edx, %edi
	vpinsrd	$3, %r14d, %xmm4, %xmm5
	vmovd	%ebx, %xmm4
	vpextrd	$3, %xmm6, %eax
	cltd
	idivl	%r8d
	movl	%edx, %ebx
	vpinsrd	$1, %esi, %xmm4, %xmm4
	vpextrd	$1, %xmm2, %eax
	vpextrd	$1, %xmm0, %esi
	movl	%esi, 1064(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %esi
	vpinsrd	$2, %edi, %xmm4, %xmm4
	vmovd	%xmm2, %eax
	vmovd	%xmm0, %edi
	movl	%edi, 1056(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, %edi
	vpinsrd	$3, %ebx, %xmm4, %xmm6
	vpextrd	$2, %xmm2, %eax
	vpextrd	$2, %xmm0, %ebx
	movl	%ebx, 1120(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, %ebx
	vmovd	%edi, %xmm4
	vpextrd	$3, %xmm2, %eax
	vpextrd	$3, %xmm0, %edi
	movl	%edi, 1112(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	vpinsrd	$1, %esi, %xmm4, %xmm2
	movq	2560(%rsp), %rsi        # 8-byte Reload
	vpinsrd	$2, %ebx, %xmm2, %xmm7
	vmovd	%esi, %xmm2
	vpbroadcastd	%xmm2, %ymm2
	vmovdqa	1856(%rsp), %ymm0       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm0, %ymm4
	vmovdqa	.LCPI148_3(%rip), %ymm0 # ymm0 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vmovdqa	%ymm0, %ymm10
	vpshufb	%ymm10, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vmovdqa	1824(%rsp), %ymm0       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm0, %ymm8
	vpshufb	%ymm10, %ymm8, %ymm8
	vpermq	$232, %ymm8, %ymm8      # ymm8 = ymm8[0,2,2,3]
	vmovdqa	.LCPI148_4(%rip), %xmm0 # xmm0 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vmovdqa	%xmm0, %xmm1
	vpshufb	%xmm1, %xmm8, %xmm0
	vpshufb	%xmm1, %xmm4, %xmm4
	vpunpcklqdq	%xmm0, %xmm4, %xmm0 # xmm0 = xmm4[0],xmm0[0]
	vpxor	.LCPI148_5(%rip), %xmm0, %xmm0
	vmovdqa	1664(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm3, %ymm4
	vpshufb	%ymm10, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vmovdqa	1632(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm3, %ymm8
	vpshufb	%ymm10, %ymm8, %ymm8
	vpermq	$232, %ymm8, %ymm8      # ymm8 = ymm8[0,2,2,3]
	vpshufb	%xmm1, %xmm8, %xmm3
	vpshufb	%xmm1, %xmm4, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm3[0]
	vpor	%xmm0, %xmm3, %xmm13
	vpinsrd	$3, %edx, %xmm7, %xmm0
	vinserti128	$1, %xmm6, %ymm0, %ymm0
	vpsrad	$31, %ymm0, %ymm3
	vmovdqa	2272(%rsp), %ymm11      # 32-byte Reload
	vpand	%ymm3, %ymm11, %ymm3
	vmovdqa	2112(%rsp), %ymm8       # 32-byte Reload
	vpaddd	%ymm0, %ymm8, %ymm0
	vpaddd	%ymm3, %ymm0, %ymm0
	vpabsd	%xmm0, %xmm3
	vextracti128	$1, %ymm0, %xmm0
	vpabsd	%xmm0, %xmm0
	vinserti128	$1, %xmm0, %ymm3, %ymm0
	vmovdqa	2048(%rsp), %ymm10      # 32-byte Reload
	vpsubd	%ymm0, %ymm10, %ymm0
	movq	1752(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rsi), %r9d
	movl	%r9d, 1456(%rsp)        # 4-byte Spill
	vmovd	%r9d, %xmm3
	vpbroadcastd	%xmm3, %ymm14
	vpaddd	%ymm9, %ymm14, %ymm3
	vmovdqa	2032(%rsp), %xmm4       # 16-byte Reload
	vpminsd	%xmm4, %xmm3, %xmm7
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm4, %xmm3, %xmm3
	vmovdqa	2096(%rsp), %xmm6       # 16-byte Reload
	vpmaxsd	%xmm6, %xmm7, %xmm7
	vpmaxsd	%xmm6, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm7, %ymm3
	vpunpckhbw	%xmm13, %xmm13, %xmm7 # xmm7 = xmm13[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm7, %ymm7    # ymm7 = xmm7[0],zero,xmm7[1],zero,xmm7[2],zero,xmm7[3],zero,xmm7[4],zero,xmm7[5],zero,xmm7[6],zero,xmm7[7],zero
	vpslld	$31, %ymm7, %ymm7
	vblendvps	%ymm7, %ymm0, %ymm3, %ymm0
	vmovdqa	2240(%rsp), %ymm9       # 32-byte Reload
	vpaddd	%ymm0, %ymm9, %ymm7
	vmovq	%xmm7, %rsi
	movslq	%esi, %rax
	movq	%rsi, %r8
	movq	%rax, 1408(%rsp)        # 8-byte Spill
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm0
	vinserti128	$1, %xmm15, %ymm5, %ymm1
	vpsrad	$31, %ymm1, %ymm3
	vpand	%ymm3, %ymm11, %ymm3
	vpaddd	%ymm1, %ymm8, %ymm1
	vpaddd	%ymm3, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm3
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpaddd	%ymm12, %ymm14, %ymm3
	vmovdqa	%ymm12, %ymm15
	vpminsd	%xmm4, %xmm3, %xmm5
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm4, %xmm3, %xmm3
	vmovdqa	%xmm4, %xmm14
	vpmaxsd	%xmm6, %xmm5, %xmm5
	vpmaxsd	%xmm6, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm5, %ymm3
	vpsubd	%ymm1, %ymm10, %ymm1
	vpmovzxbd	%xmm13, %ymm4   # ymm4 = xmm13[0],zero,zero,zero,xmm13[1],zero,zero,zero,xmm13[2],zero,zero,zero,xmm13[3],zero,zero,zero,xmm13[4],zero,zero,zero,xmm13[5],zero,zero,zero,xmm13[6],zero,zero,zero,xmm13[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm1, %ymm3, %ymm1
	vpaddd	%ymm1, %ymm9, %ymm1
	vmovq	%xmm1, %rax
	movslq	%eax, %rdx
	movq	%rdx, 2304(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	vpextrq	$1, %xmm1, %rsi
	movslq	%esi, %rdi
	movq	%rdi, 2464(%rsp)        # 8-byte Spill
	sarq	$32, %rsi
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rdi
	movslq	%edi, %rdx
	movq	%rdx, 2432(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	vpextrq	$1, %xmm1, %rbx
	movslq	%ebx, %rdx
	movq	%rdx, 2496(%rsp)        # 8-byte Spill
	sarq	$32, %rbx
	sarq	$32, %r8
	movq	%r8, 2368(%rsp)         # 8-byte Spill
	vpextrq	$1, %xmm7, %r12
	movslq	%r12d, %rdx
	movq	%rdx, 2336(%rsp)        # 8-byte Spill
	sarq	$32, %r12
	movq	%r12, 1096(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm7, %xmm1
	vmovq	%xmm1, %r10
	movslq	%r10d, %r8
	movq	%r8, 1072(%rsp)         # 8-byte Spill
	sarq	$32, %r10
	movq	%r10, 1088(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %r14
	movslq	%r14d, %r11
	movq	%r11, 1080(%rsp)        # 8-byte Spill
	sarq	$32, %r14
	movq	%r14, 1104(%rsp)        # 8-byte Spill
	movl	%r9d, %edx
	andl	$1, %edx
	movl	%edx, 1448(%rsp)        # 4-byte Spill
	sete	%r9b
	andb	1376(%rsp), %r9b        # 1-byte Folded Reload
	movq	2368(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rdx,2), %xmm0, %xmm0
	movq	2336(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rdx,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$4, (%rcx,%r8,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%r10,2), %xmm0, %xmm0
	vpinsrw	$6, (%rcx,%r11,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%r14,2), %xmm0, %xmm4
	jne	.LBB148_129
# BB#165:                               # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vpxor	%ymm1, %ymm1, %ymm1
	movq	2464(%rsp), %rcx        # 8-byte Reload
	movq	2496(%rsp), %r8         # 8-byte Reload
	movq	2432(%rsp), %rdx        # 8-byte Reload
	jmp	.LBB148_166
	.align	16, 0x90
.LBB148_129:                            #   in Loop: Header=BB148_128 Depth=3
	movq	2304(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, (%rcx,%rax,2), %xmm0, %xmm0
	movq	2464(%rsp), %r8         # 8-byte Reload
	vpinsrw	$2, (%rcx,%r8,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%rsi,2), %xmm0, %xmm0
	movq	2432(%rsp), %r10        # 8-byte Reload
	vpinsrw	$4, (%rcx,%r10,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%rdi,2), %xmm0, %xmm0
	movq	2496(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rdx,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%rbx,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm1
	movq	%r8, %rcx
	movq	%rdx, %r8
	movq	%r10, %rdx
.LBB148_166:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	testb	%r9b, %r9b
	jne	.LBB148_167
# BB#168:                               # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	movq	%rdx, 2432(%rsp)        # 8-byte Spill
	movq	%rcx, 2464(%rsp)        # 8-byte Spill
	movq	%r8, 2496(%rsp)         # 8-byte Spill
	movq	%rax, 1280(%rsp)        # 8-byte Spill
	movq	%rdi, 1312(%rsp)        # 8-byte Spill
	movq	%rsi, 1344(%rsp)        # 8-byte Spill
	movq	%rbx, 1376(%rsp)        # 8-byte Spill
	vpxor	%ymm6, %ymm6, %ymm6
	jmp	.LBB148_169
	.align	16, 0x90
.LBB148_167:                            #   in Loop: Header=BB148_128 Depth=3
	movq	%rdx, 2432(%rsp)        # 8-byte Spill
	movq	%rcx, 2464(%rsp)        # 8-byte Spill
	movq	%r8, 2496(%rsp)         # 8-byte Spill
	movq	%rax, 1280(%rsp)        # 8-byte Spill
	movq	%rdi, 1312(%rsp)        # 8-byte Spill
	movq	%rsi, 1344(%rsp)        # 8-byte Spill
	movq	%rbx, 1376(%rsp)        # 8-byte Spill
	vpmovzxwd	%xmm4, %ymm0    # ymm0 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vcvtdq2ps	%ymm0, %ymm6
.LBB148_169:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	movq	1912(%rsp), %rax        # 8-byte Reload
	movq	2560(%rsp), %r11        # 8-byte Reload
	leal	(%rax,%r11), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm4
	vpaddd	%ymm15, %ymm4, %ymm7
	vextracti128	$1, %ymm7, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	movl	1216(%rsp), %r10d       # 4-byte Reload
	idivl	%r10d
	movl	%edx, 944(%rsp)         # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	movl	1184(%rsp), %r9d        # 4-byte Reload
	idivl	%r9d
	movl	%edx, 936(%rsp)         # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	movl	1152(%rsp), %r12d       # 4-byte Reload
	idivl	%r12d
	movl	%edx, 952(%rsp)         # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	movl	1248(%rsp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, %r14d
	vpextrd	$1, %xmm7, %eax
	cltd
	idivl	1024(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r8d
	vmovd	%xmm7, %eax
	cltd
	idivl	1016(%rsp)              # 4-byte Folded Reload
	movl	%edx, %ebx
	vpextrd	$2, %xmm7, %eax
	cltd
	idivl	1008(%rsp)              # 4-byte Folded Reload
	movl	%edx, %esi
	vpextrd	$3, %xmm7, %eax
	cltd
	idivl	960(%rsp)               # 4-byte Folded Reload
	movl	%edx, %edi
	vmovdqa	.LCPI148_6(%rip), %ymm13 # ymm13 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm13, %ymm4, %ymm4
	vextracti128	$1, %ymm4, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, %r10d
	vmovd	%xmm0, %eax
	cltd
	idivl	%r9d
	movl	%edx, 1216(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%r12d
	movl	%edx, %r12d
	vmovd	936(%rsp), %xmm3        # 4-byte Folded Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vpinsrd	$1, 944(%rsp), %xmm3, %xmm3 # 4-byte Folded Reload
	vmovdqa	1792(%rsp), %ymm5       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm5, %ymm7
	vmovdqa	.LCPI148_3(%rip), %ymm11 # ymm11 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vpshufb	%ymm11, %ymm7, %ymm7
	vpermq	$232, %ymm7, %ymm7      # ymm7 = ymm7[0,2,2,3]
	vmovdqa	1760(%rsp), %ymm5       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm5, %ymm8
	vpshufb	%ymm11, %ymm8, %ymm8
	vpermq	$232, %ymm8, %ymm8      # ymm8 = ymm8[0,2,2,3]
	vmovdqa	.LCPI148_4(%rip), %xmm12 # xmm12 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vpshufb	%xmm12, %xmm8, %xmm5
	vpshufb	%xmm12, %xmm7, %xmm7
	vpunpcklqdq	%xmm5, %xmm7, %xmm5 # xmm5 = xmm7[0],xmm5[0]
	vpxor	.LCPI148_5(%rip), %xmm5, %xmm5
	vmovdqa	1600(%rsp), %ymm7       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm7, %ymm7
	vpshufb	%ymm11, %ymm7, %ymm7
	vpermq	$232, %ymm7, %ymm7      # ymm7 = ymm7[0,2,2,3]
	vmovdqa	1568(%rsp), %ymm8       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm8, %ymm2
	vpshufb	%ymm11, %ymm2, %ymm2
	vpermq	$232, %ymm2, %ymm2      # ymm2 = ymm2[0,2,2,3]
	vpshufb	%xmm12, %xmm2, %xmm2
	vpshufb	%xmm12, %xmm7, %xmm7
	vpunpcklqdq	%xmm2, %xmm7, %xmm2 # xmm2 = xmm7[0],xmm2[0]
	vpor	%xmm5, %xmm2, %xmm2
	vpinsrd	$2, 952(%rsp), %xmm3, %xmm3 # 4-byte Folded Reload
	vpinsrd	$3, %r14d, %xmm3, %xmm3
	vmovd	%ebx, %xmm5
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, %r9d
	vpinsrd	$1, %r8d, %xmm5, %xmm0
	vpinsrd	$2, %esi, %xmm0, %xmm0
	vpextrd	$1, %xmm4, %eax
	cltd
	idivl	1064(%rsp)              # 4-byte Folded Reload
	movl	%edx, %esi
	vpinsrd	$3, %edi, %xmm0, %xmm0
	vinserti128	$1, %xmm3, %ymm0, %ymm0
	vmovd	%xmm4, %eax
	cltd
	idivl	1056(%rsp)              # 4-byte Folded Reload
	movl	%edx, %ebx
	vpsrad	$31, %ymm0, %ymm3
	vmovdqa	2272(%rsp), %ymm8       # 32-byte Reload
	vpand	%ymm8, %ymm3, %ymm3
	vmovdqa	2112(%rsp), %ymm9       # 32-byte Reload
	vpaddd	%ymm0, %ymm9, %ymm0
	vpaddd	%ymm3, %ymm0, %ymm0
	vpabsd	%xmm0, %xmm3
	vextracti128	$1, %ymm0, %xmm0
	vpabsd	%xmm0, %xmm0
	vinserti128	$1, %xmm0, %ymm3, %ymm0
	vpsubd	%ymm0, %ymm10, %ymm0
	movq	2168(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r11), %eax
	vmovd	%eax, %xmm3
	vpbroadcastd	%xmm3, %ymm7
	vpaddd	%ymm15, %ymm7, %ymm3
	vpminsd	%xmm14, %xmm3, %xmm5
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm14, %xmm3, %xmm3
	vmovdqa	2096(%rsp), %xmm15      # 16-byte Reload
	vpmaxsd	%xmm15, %xmm5, %xmm5
	vpmaxsd	%xmm15, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm5, %ymm3
	vpmovzxbd	%xmm2, %ymm5    # ymm5 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
	vpslld	$31, %ymm5, %ymm5
	vblendvps	%ymm5, %ymm0, %ymm3, %ymm0
	vmovd	1216(%rsp), %xmm3       # 4-byte Folded Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vpextrd	$2, %xmm4, %eax
	cltd
	idivl	1120(%rsp)              # 4-byte Folded Reload
	vpinsrd	$1, %r10d, %xmm3, %xmm3
	vpinsrd	$2, %r12d, %xmm3, %xmm3
	vpinsrd	$3, %r9d, %xmm3, %xmm3
	vpextrd	$3, %xmm4, %eax
	vmovd	%ebx, %xmm4
	vpinsrd	$1, %esi, %xmm4, %xmm4
	vpinsrd	$2, %edx, %xmm4, %xmm4
	cltd
	idivl	1112(%rsp)              # 4-byte Folded Reload
	vpinsrd	$3, %edx, %xmm4, %xmm4
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpsrad	$31, %ymm3, %ymm4
	vpand	%ymm8, %ymm4, %ymm4
	vpaddd	%ymm3, %ymm9, %ymm3
	vpaddd	%ymm4, %ymm3, %ymm3
	vpabsd	%xmm3, %xmm4
	vextracti128	$1, %ymm3, %xmm3
	vpabsd	%xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpaddd	%ymm13, %ymm7, %ymm4
	vpminsd	%xmm14, %xmm4, %xmm5
	vextracti128	$1, %ymm4, %xmm4
	vpminsd	%xmm14, %xmm4, %xmm4
	vpmaxsd	%xmm15, %xmm5, %xmm5
	vpmaxsd	%xmm15, %xmm4, %xmm4
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpsubd	%ymm3, %ymm10, %ymm3
	vpunpckhbw	%xmm2, %xmm2, %xmm2 # xmm2 = xmm2[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm2, %ymm2    # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vpslld	$31, %ymm2, %ymm2
	vblendvps	%ymm2, %ymm3, %ymm4, %ymm2
	vmovdqa	2240(%rsp), %ymm3       # 32-byte Reload
	vpaddd	%ymm2, %ymm3, %ymm2
	vpaddd	%ymm0, %ymm3, %ymm0
	vpextrq	$1, %xmm0, %r10
	vmovq	%xmm0, %r9
	movslq	%r9d, %rax
	movq	%rax, 1008(%rsp)        # 8-byte Spill
	sarq	$32, %r9
	movslq	%r10d, %rax
	movq	%rax, 944(%rsp)         # 8-byte Spill
	sarq	$32, %r10
	vextracti128	$1, %ymm0, %xmm0
	vpextrq	$1, %xmm0, %r11
	vmovq	%xmm0, %r8
	movslq	%r8d, %rax
	movq	%rax, 960(%rsp)         # 8-byte Spill
	sarq	$32, %r8
	movslq	%r11d, %rax
	movq	%rax, 952(%rsp)         # 8-byte Spill
	sarq	$32, %r11
	vpextrq	$1, %xmm2, %rdi
	vmovq	%xmm2, %r14
	movslq	%r14d, %rax
	movq	%rax, 1024(%rsp)        # 8-byte Spill
	sarq	$32, %r14
	movslq	%edi, %r12
	movq	%r12, 1016(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	vextracti128	$1, %ymm2, %xmm0
	vmovq	%xmm0, %rbx
	movq	1736(%rsp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %edx
	vmovd	%edx, %xmm2
	movslq	%ebx, %rdx
	movq	%rdx, 1216(%rsp)        # 8-byte Spill
	sarq	$32, %rbx
	movq	%rbx, 1064(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rsi
	movslq	%esi, %rax
	movq	%rax, 1248(%rsp)        # 8-byte Spill
	sarq	$32, %rsi
	movq	%rsi, 1056(%rsp)        # 8-byte Spill
	vpinsrw	$1, (%rcx,%r14,2), %xmm2, %xmm0
	vpinsrw	$2, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%rdi,2), %xmm0, %xmm4
	cmpb	$0, 872(%rsp)           # 1-byte Folded Reload
	movzwl	(%rcx,%rdx,2), %edx
	movl	%edx, 1112(%rsp)        # 4-byte Spill
	movzwl	(%rcx,%rbx,2), %edx
	movl	%edx, 1120(%rsp)        # 4-byte Spill
	movzwl	(%rcx,%rax,2), %eax
	movl	%eax, 1152(%rsp)        # 4-byte Spill
	movzwl	(%rcx,%rsi,2), %eax
	movl	%eax, 1184(%rsp)        # 4-byte Spill
	jne	.LBB148_170
# BB#171:                               # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	movq	944(%rsp), %r12         # 8-byte Reload
	vpxor	%ymm2, %ymm2, %ymm2
	vmovaps	.LCPI148_8(%rip), %ymm12 # ymm12 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI148_9(%rip), %ymm13 # ymm13 = <4,u,5,u,6,u,7,u>
	movq	1536(%rsp), %rdx        # 8-byte Reload
	movq	1008(%rsp), %rax        # 8-byte Reload
	movq	960(%rsp), %rsi         # 8-byte Reload
	movq	952(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB148_172
	.align	16, 0x90
.LBB148_170:                            #   in Loop: Header=BB148_128 Depth=3
	movq	1008(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %r12d
	vmovd	%r12d, %xmm0
	vpinsrw	$1, (%rcx,%r9,2), %xmm0, %xmm0
	movq	944(%rsp), %r12         # 8-byte Reload
	vpinsrw	$2, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%r10,2), %xmm0, %xmm0
	movq	960(%rsp), %rsi         # 8-byte Reload
	vpinsrw	$4, (%rcx,%rsi,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%r8,2), %xmm0, %xmm0
	movq	952(%rsp), %rbx         # 8-byte Reload
	vpinsrw	$6, (%rcx,%rbx,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%r11,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm2
	vmovaps	.LCPI148_8(%rip), %ymm12 # ymm12 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI148_9(%rip), %ymm13 # ymm13 = <4,u,5,u,6,u,7,u>
	movq	1536(%rsp), %rdx        # 8-byte Reload
.LBB148_172:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	jne	.LBB148_173
# BB#174:                               # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vpxor	%ymm4, %ymm4, %ymm4
	jmp	.LBB148_175
	.align	16, 0x90
.LBB148_173:                            #   in Loop: Header=BB148_128 Depth=3
	vpinsrw	$4, 1112(%rsp), %xmm4, %xmm0 # 4-byte Folded Reload
	vpinsrw	$5, 1120(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$6, 1152(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$7, 1184(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm4
.LBB148_175:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vpermps	%ymm4, %ymm12, %ymm0
	vpermps	%ymm6, %ymm13, %ymm3
	vblendps	$170, %ymm0, %ymm3, %ymm0 # ymm0 = ymm3[0],ymm0[1],ymm3[2],ymm0[3],ymm3[4],ymm0[5],ymm3[6],ymm0[7]
	vmovaps	.LCPI148_10(%rip), %ymm3 # ymm3 = <u,0,u,1,u,2,u,3>
	vmovaps	%ymm3, %ymm7
	vpermps	%ymm4, %ymm7, %ymm3
	vmovaps	.LCPI148_11(%rip), %ymm4 # ymm4 = <0,u,1,u,2,u,3,u>
	vmovaps	%ymm4, %ymm8
	vpermps	%ymm6, %ymm8, %ymm4
	vblendps	$170, %ymm3, %ymm4, %ymm3 # ymm3 = ymm4[0],ymm3[1],ymm4[2],ymm3[3],ymm4[4],ymm3[5],ymm4[6],ymm3[7]
	vpermps	%ymm2, %ymm12, %ymm4
	vpermps	%ymm1, %ymm13, %ymm5
	vblendps	$170, %ymm4, %ymm5, %ymm4 # ymm4 = ymm5[0],ymm4[1],ymm5[2],ymm4[3],ymm5[4],ymm4[5],ymm5[6],ymm4[7]
	vpermps	%ymm2, %ymm7, %ymm2
	vmovaps	%ymm7, %ymm5
	vpermps	%ymm1, %ymm8, %ymm1
	vmovaps	%ymm8, %ymm14
	vblendps	$170, %ymm2, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm2[1],ymm1[2],ymm2[3],ymm1[4],ymm2[5],ymm1[6],ymm2[7]
	vmovups	%ymm1, (%rdx)
	vmovups	%ymm4, 32(%rdx)
	vmovups	%ymm3, 64(%rdx)
	vmovups	%ymm0, 96(%rdx)
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, (%rcx,%r9,2), %xmm0, %xmm0
	vpinsrw	$2, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%r10,2), %xmm0, %xmm0
	vpinsrw	$4, (%rcx,%rsi,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%r8,2), %xmm0, %xmm0
	vpinsrw	$6, (%rcx,%rbx,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%r11,2), %xmm0, %xmm6
	movq	1024(%rsp), %rax        # 8-byte Reload
	vpinsrw	$0, (%rcx,%rax,2), %xmm0, %xmm0
	vpinsrw	$1, (%rcx,%r14,2), %xmm0, %xmm0
	movq	1016(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%rdi,2), %xmm0, %xmm1
	movq	1408(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm0
	movq	2368(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm0, %xmm0
	movq	2336(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1096(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1072(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1088(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1080(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1104(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm0, %xmm0
	movq	2304(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm2
	movq	1280(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm2, %xmm2
	movq	2464(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1344(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm2, %xmm2
	movq	2432(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1312(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm2, %xmm2
	movq	2496(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1376(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm2, %xmm2
	movl	892(%rsp), %edi         # 4-byte Reload
	movl	1456(%rsp), %esi        # 4-byte Reload
	testl	%esi, %edi
	setne	%al
	orl	2400(%rsp), %esi        # 4-byte Folded Reload
	testb	$1, %sil
	sete	%bl
	orb	%al, %bl
	vpmovzxwd	%xmm0, %ymm4    # ymm4 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpmovzxwd	%xmm2, %ymm0    # ymm0 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm0, %ymm2
	vmovaps	%ymm2, %ymm7
	jne	.LBB148_177
# BB#176:                               # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vxorps	%ymm7, %ymm7, %ymm7
.LBB148_177:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vcvtdq2ps	%ymm4, %ymm4
	vmovaps	%ymm4, %ymm8
	jne	.LBB148_179
# BB#178:                               # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vxorps	%ymm8, %ymm8, %ymm8
.LBB148_179:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vpmovzxwd	%xmm6, %ymm0    # ymm0 = xmm6[0],zero,xmm6[1],zero,xmm6[2],zero,xmm6[3],zero,xmm6[4],zero,xmm6[5],zero,xmm6[6],zero,xmm6[7],zero
	vcvtdq2ps	%ymm0, %ymm6
	vmovaps	%ymm6, %ymm9
	cmpb	$0, 864(%rsp)           # 1-byte Folded Reload
	jne	.LBB148_181
# BB#180:                               # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vxorps	%ymm9, %ymm9, %ymm9
.LBB148_181:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	jne	.LBB148_182
# BB#183:                               # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vpxor	%ymm10, %ymm10, %ymm10
	jmp	.LBB148_184
	.align	16, 0x90
.LBB148_182:                            #   in Loop: Header=BB148_128 Depth=3
	vpinsrw	$4, 1112(%rsp), %xmm1, %xmm0 # 4-byte Folded Reload
	vpinsrw	$5, 1120(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$6, 1152(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$7, 1184(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm10
.LBB148_184:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vpermps	%ymm10, %ymm12, %ymm0
	vpermps	%ymm8, %ymm13, %ymm3
	vblendps	$170, %ymm0, %ymm3, %ymm0 # ymm0 = ymm3[0],ymm0[1],ymm3[2],ymm0[3],ymm3[4],ymm0[5],ymm3[6],ymm0[7]
	vmovaps	%ymm5, %ymm11
	vpermps	%ymm10, %ymm11, %ymm3
	vpermps	%ymm8, %ymm14, %ymm5
	vblendps	$170, %ymm3, %ymm5, %ymm3 # ymm3 = ymm5[0],ymm3[1],ymm5[2],ymm3[3],ymm5[4],ymm3[5],ymm5[6],ymm3[7]
	vpermps	%ymm9, %ymm12, %ymm5
	vpermps	%ymm7, %ymm13, %ymm8
	vblendps	$170, %ymm5, %ymm8, %ymm5 # ymm5 = ymm8[0],ymm5[1],ymm8[2],ymm5[3],ymm8[4],ymm5[5],ymm8[6],ymm5[7]
	vpermps	%ymm9, %ymm11, %ymm8
	vmovaps	%ymm11, %ymm9
	vpermps	%ymm7, %ymm14, %ymm7
	vmovaps	%ymm14, %ymm10
	vblendps	$170, %ymm8, %ymm7, %ymm7 # ymm7 = ymm7[0],ymm8[1],ymm7[2],ymm8[3],ymm7[4],ymm8[5],ymm7[6],ymm8[7]
	movq	1984(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm7, 32(%rax,%rdx)
	vmovups	%ymm5, 64(%rax,%rdx)
	vmovups	%ymm3, 96(%rax,%rdx)
	vmovups	%ymm0, 128(%rax,%rdx)
	movb	1472(%rsp), %al         # 1-byte Reload
	movl	1448(%rsp), %esi        # 4-byte Reload
	andb	%sil, %al
	jne	.LBB148_186
# BB#185:                               # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vxorps	%ymm2, %ymm2, %ymm2
.LBB148_186:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	testb	%al, %al
	vxorps	%ymm3, %ymm3, %ymm3
	jne	.LBB148_188
# BB#187:                               # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vxorps	%ymm4, %ymm4, %ymm4
.LBB148_188:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	movq	1216(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm1, %xmm0
	movq	1064(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm0, %xmm1
	movq	1248(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	1056(%rsp), %rsi        # 8-byte Reload
	movzwl	(%rcx,%rsi,2), %esi
	cmpb	$0, 880(%rsp)           # 1-byte Folded Reload
	jne	.LBB148_190
# BB#189:                               # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	vxorps	%ymm6, %ymm6, %ymm6
.LBB148_190:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	je	.LBB148_192
# BB#191:                               #   in Loop: Header=BB148_128 Depth=3
	vpinsrw	$6, %eax, %xmm1, %xmm0
	vpinsrw	$7, %esi, %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm3
.LBB148_192:                            # %for deinterleaved$3.s0.v15.v1525
                                        #   in Loop: Header=BB148_128 Depth=3
	movq	2560(%rsp), %rsi        # 8-byte Reload
	vpermps	%ymm4, %ymm13, %ymm0
	vpermps	%ymm3, %ymm12, %ymm1
	vblendps	$170, %ymm1, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm1[1],ymm0[2],ymm1[3],ymm0[4],ymm1[5],ymm0[6],ymm1[7]
	vpermps	%ymm4, %ymm10, %ymm1
	vpermps	%ymm3, %ymm9, %ymm3
	vblendps	$170, %ymm3, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm3[1],ymm1[2],ymm3[3],ymm1[4],ymm3[5],ymm1[6],ymm3[7]
	vpermps	%ymm6, %ymm12, %ymm3
	vpermps	%ymm2, %ymm13, %ymm4
	vblendps	$170, %ymm3, %ymm4, %ymm3 # ymm3 = ymm4[0],ymm3[1],ymm4[2],ymm3[3],ymm4[4],ymm3[5],ymm4[6],ymm3[7]
	vpermps	%ymm6, %ymm9, %ymm4
	vpermps	%ymm2, %ymm10, %ymm2
	vblendps	$170, %ymm4, %ymm2, %ymm2 # ymm2 = ymm2[0],ymm4[1],ymm2[2],ymm4[3],ymm2[4],ymm4[5],ymm2[6],ymm4[7]
	movq	1960(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm2, (%rax,%rdx)
	movq	1976(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm3, 96(%rax,%rdx)
	vmovups	%ymm1, 128(%rax,%rdx)
	movq	1968(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm0, (%rax,%rdx)
	addl	$32, %esi
	subq	$-128, %rdx
	movl	1480(%rsp), %eax        # 4-byte Reload
	addl	$1, %eax
	cmpl	$-1, %eax
	jne	.LBB148_128
.LBB148_193:                            # %end for deinterleaved$3.s0.v15.v1526
                                        #   in Loop: Header=BB148_126 Depth=2
	movl	576(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, 584(%rsp)         # 4-byte Folded Reload
	vmovdqa	.LCPI148_17(%rip), %ymm14 # ymm14 = [0,1,4,5,8,9,12,13,2,3,6,7,10,11,14,15,16,17,20,21,24,25,28,29,18,19,22,23,26,27,30,31]
	vmovdqa	.LCPI148_18(%rip), %ymm15 # ymm15 = [2,3,6,7,10,11,14,15,0,1,4,5,8,9,12,13,18,19,22,23,26,27,30,31,16,17,20,21,24,25,28,29]
	jge	.LBB148_220
# BB#194:                               # %for deinterleaved$3.s0.v15.v1528.preheader
                                        #   in Loop: Header=BB148_126 Depth=2
	movq	464(%rsp), %rax         # 8-byte Reload
	movq	728(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	movl	784(%rsp), %esi         # 4-byte Reload
	testl	%esi, %esi
	setne	%r9b
	sete	%r10b
	movl	2400(%rsp), %edi        # 4-byte Reload
	movl	%edi, %r8d
	andl	$1, %r8d
	sete	%dl
	movb	%r8b, %bl
	andb	%r10b, %bl
	movb	%bl, 2496(%rsp)         # 1-byte Spill
	testl	%edi, %esi
	setne	%bl
	movl	%edi, %esi
	movq	%rcx, %rdi
	movq	2168(%rsp), %rcx        # 8-byte Reload
	orl	%ecx, %esi
	movq	%rdi, %rcx
	testb	$1, %sil
	sete	%r10b
	orb	%bl, %r10b
	andb	%r9b, %dl
	movb	%dl, 2560(%rsp)         # 1-byte Spill
	movl	476(%rsp), %r12d        # 4-byte Reload
	movl	720(%rsp), %edi         # 4-byte Reload
	movl	488(%rsp), %r9d         # 4-byte Reload
	.align	16, 0x90
.LBB148_195:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%r8d, %r8d
	sete	%dl
	movslq	%edi, %rsi
	vmovdqu	-2(%rcx,%rsi,2), %ymm0
	vpblendw	$170, 28(%rcx,%rsi,2), %ymm0, %ymm0 # ymm0 = ymm0[0],mem[1],ymm0[2],mem[3],ymm0[4],mem[5],ymm0[6],mem[7],ymm0[8],mem[9],ymm0[10],mem[11],ymm0[12],mem[13],ymm0[14],mem[15]
	setne	%r14b
	vpshufb	%ymm14, %ymm0, %ymm1
	vperm2i128	$35, %ymm0, %ymm0, %ymm0 # ymm0 = ymm0[2,3,0,1]
	vpshufb	%ymm15, %ymm0, %ymm0
	vpblendd	$60, %ymm0, %ymm1, %ymm1 # ymm1 = ymm1[0,1],ymm0[2,3,4,5],ymm1[6,7]
	movl	%r8d, %r11d
	vpmovzxwd	%xmm1, %ymm0    # ymm0 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm0, %ymm0
	vmovaps	%ymm0, %ymm4
	andl	%r9d, %r11d
	jne	.LBB148_197
# BB#196:                               # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vxorps	%ymm4, %ymm4, %ymm4
.LBB148_197:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vextracti128	$1, %ymm1, %xmm1
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm1, %ymm1
	vmovaps	%ymm1, %ymm5
	testl	%r11d, %r11d
	jne	.LBB148_199
# BB#198:                               # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vxorps	%ymm5, %ymm5, %ymm5
.LBB148_199:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vmovdqu	(%rcx,%rsi,2), %ymm2
	vpblendw	$170, 30(%rcx,%rsi,2), %ymm2, %ymm2 # ymm2 = ymm2[0],mem[1],ymm2[2],mem[3],ymm2[4],mem[5],ymm2[6],mem[7],ymm2[8],mem[9],ymm2[10],mem[11],ymm2[12],mem[13],ymm2[14],mem[15]
	vpshufb	%ymm14, %ymm2, %ymm3
	vperm2f128	$35, %ymm2, %ymm0, %ymm2 # ymm2 = ymm2[2,3,0,1]
	vpshufb	%ymm15, %ymm2, %ymm2
	vpblendd	$60, %ymm2, %ymm3, %ymm2 # ymm2 = ymm3[0,1],ymm2[2,3,4,5],ymm3[6,7]
	vextracti128	$1, %ymm2, %xmm3
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpmovzxwd	%xmm2, %ymm2    # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm2, %ymm2
	vmovaps	%ymm2, %ymm6
	cmpb	$0, 2496(%rsp)          # 1-byte Folded Reload
	jne	.LBB148_201
# BB#200:                               # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vxorps	%ymm6, %ymm6, %ymm6
.LBB148_201:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vcvtdq2ps	%ymm3, %ymm3
	vmovaps	%ymm3, %ymm7
	jne	.LBB148_203
# BB#202:                               # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vxorps	%ymm7, %ymm7, %ymm7
.LBB148_203:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	movl	%r9d, %esi
	andl	$1, %esi
	vpermps	%ymm7, %ymm12, %ymm8
	vpermps	%ymm5, %ymm13, %ymm9
	vblendps	$170, %ymm8, %ymm9, %ymm8 # ymm8 = ymm9[0],ymm8[1],ymm9[2],ymm8[3],ymm9[4],ymm8[5],ymm9[6],ymm8[7]
	vmovaps	.LCPI148_10(%rip), %ymm9 # ymm9 = <u,0,u,1,u,2,u,3>
	vmovaps	%ymm9, %ymm10
	vpermps	%ymm7, %ymm10, %ymm7
	vmovaps	.LCPI148_11(%rip), %ymm9 # ymm9 = <0,u,1,u,2,u,3,u>
	vmovaps	%ymm9, %ymm11
	vpermps	%ymm5, %ymm11, %ymm5
	vblendps	$170, %ymm7, %ymm5, %ymm5 # ymm5 = ymm5[0],ymm7[1],ymm5[2],ymm7[3],ymm5[4],ymm7[5],ymm5[6],ymm7[7]
	vpermps	%ymm6, %ymm12, %ymm7
	vpermps	%ymm4, %ymm13, %ymm9
	vblendps	$170, %ymm7, %ymm9, %ymm7 # ymm7 = ymm9[0],ymm7[1],ymm9[2],ymm7[3],ymm9[4],ymm7[5],ymm9[6],ymm7[7]
	vpermps	%ymm6, %ymm10, %ymm6
	vpermps	%ymm4, %ymm11, %ymm4
	vblendps	$170, %ymm6, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm6[1],ymm4[2],ymm6[3],ymm4[4],ymm6[5],ymm4[6],ymm6[7]
	vmovups	%ymm4, (%rax)
	vmovups	%ymm7, 32(%rax)
	vmovups	%ymm5, 64(%rax)
	vmovups	%ymm8, 96(%rax)
	sete	%bl
	andb	%bl, %r14b
	andb	%sil, %dl
	orb	%r14b, %dl
	vmovaps	%ymm0, %ymm4
	jne	.LBB148_205
# BB#204:                               # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vxorps	%ymm4, %ymm4, %ymm4
.LBB148_205:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vmovaps	%ymm1, %ymm5
	jne	.LBB148_207
# BB#206:                               # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vxorps	%ymm5, %ymm5, %ymm5
.LBB148_207:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vmovaps	%ymm2, %ymm6
	testb	%r10b, %r10b
	jne	.LBB148_209
# BB#208:                               # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vxorps	%ymm6, %ymm6, %ymm6
.LBB148_209:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vmovaps	%ymm3, %ymm7
	jne	.LBB148_211
# BB#210:                               # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vxorps	%ymm7, %ymm7, %ymm7
.LBB148_211:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vpermps	%ymm5, %ymm13, %ymm8
	vpermps	%ymm7, %ymm12, %ymm9
	vblendps	$170, %ymm9, %ymm8, %ymm8 # ymm8 = ymm8[0],ymm9[1],ymm8[2],ymm9[3],ymm8[4],ymm9[5],ymm8[6],ymm9[7]
	vpermps	%ymm5, %ymm11, %ymm5
	vpermps	%ymm7, %ymm10, %ymm7
	vblendps	$170, %ymm7, %ymm5, %ymm5 # ymm5 = ymm5[0],ymm7[1],ymm5[2],ymm7[3],ymm5[4],ymm7[5],ymm5[6],ymm7[7]
	vpermps	%ymm4, %ymm13, %ymm7
	vpermps	%ymm6, %ymm12, %ymm9
	vblendps	$170, %ymm9, %ymm7, %ymm7 # ymm7 = ymm7[0],ymm9[1],ymm7[2],ymm9[3],ymm7[4],ymm9[5],ymm7[6],ymm9[7]
	vpermps	%ymm4, %ymm11, %ymm4
	vpermps	%ymm6, %ymm10, %ymm6
	vmovaps	%ymm10, %ymm9
	vblendps	$170, %ymm6, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm6[1],ymm4[2],ymm6[3],ymm4[4],ymm6[5],ymm4[6],ymm6[7]
	movq	1984(%rsp), %rdx        # 8-byte Reload
	vmovups	%ymm4, 32(%rdx,%rax)
	vmovups	%ymm7, 64(%rdx,%rax)
	vmovups	%ymm5, 96(%rdx,%rax)
	vmovups	%ymm8, 128(%rdx,%rax)
	movl	%r9d, %edx
	orl	2400(%rsp), %edx        # 4-byte Folded Reload
	andl	$1, %edx
	je	.LBB148_213
# BB#212:                               # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vxorps	%ymm0, %ymm0, %ymm0
.LBB148_213:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	testl	%edx, %edx
	je	.LBB148_215
# BB#214:                               # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vxorps	%ymm1, %ymm1, %ymm1
.LBB148_215:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	cmpb	$0, 2560(%rsp)          # 1-byte Folded Reload
	jne	.LBB148_217
# BB#216:                               # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vxorps	%ymm2, %ymm2, %ymm2
.LBB148_217:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	jne	.LBB148_219
# BB#218:                               # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vxorps	%ymm3, %ymm3, %ymm3
.LBB148_219:                            # %for deinterleaved$3.s0.v15.v1528
                                        #   in Loop: Header=BB148_195 Depth=3
	vpermps	%ymm3, %ymm12, %ymm4
	vpermps	%ymm1, %ymm13, %ymm5
	vblendps	$170, %ymm4, %ymm5, %ymm4 # ymm4 = ymm5[0],ymm4[1],ymm5[2],ymm4[3],ymm5[4],ymm4[5],ymm5[6],ymm4[7]
	vpermps	%ymm3, %ymm9, %ymm3
	vpermps	%ymm1, %ymm11, %ymm1
	vblendps	$170, %ymm3, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm3[1],ymm1[2],ymm3[3],ymm1[4],ymm3[5],ymm1[6],ymm3[7]
	vpermps	%ymm2, %ymm12, %ymm3
	vpermps	%ymm0, %ymm13, %ymm5
	vblendps	$170, %ymm3, %ymm5, %ymm3 # ymm3 = ymm5[0],ymm3[1],ymm5[2],ymm3[3],ymm5[4],ymm3[5],ymm5[6],ymm3[7]
	vpermps	%ymm2, %ymm9, %ymm2
	vpermps	%ymm0, %ymm11, %ymm0
	vblendps	$170, %ymm2, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm2[1],ymm0[2],ymm2[3],ymm0[4],ymm2[5],ymm0[6],ymm2[7]
	movq	1960(%rsp), %rdx        # 8-byte Reload
	vmovups	%ymm0, (%rdx,%rax)
	movq	1976(%rsp), %rdx        # 8-byte Reload
	vmovups	%ymm3, 96(%rdx,%rax)
	vmovups	%ymm1, 128(%rdx,%rax)
	movq	1968(%rsp), %rdx        # 8-byte Reload
	vmovups	%ymm4, (%rdx,%rax)
	addl	$32, %r9d
	addl	$32, %edi
	subq	$-128, %rax
	addl	$-1, %r12d
	jne	.LBB148_195
.LBB148_220:                            # %end for deinterleaved$3.s0.v15.v1529
                                        #   in Loop: Header=BB148_126 Depth=2
	movq	792(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, 576(%rsp)         # 4-byte Folded Reload
	jge	.LBB148_252
# BB#221:                               # %for deinterleaved$3.s0.v15.v1531.preheader
                                        #   in Loop: Header=BB148_126 Depth=2
	movl	784(%rsp), %r10d        # 4-byte Reload
	testl	%r10d, %r10d
	setne	%r8b
	sete	%r9b
	movl	2400(%rsp), %eax        # 4-byte Reload
	movl	%eax, %esi
	imull	788(%rsp), %esi         # 4-byte Folded Reload
	movq	456(%rsp), %rbx         # 8-byte Reload
	movq	728(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rbx), %rdi
	movl	%eax, %r11d
	andl	$1, %r11d
	movl	%r11d, 1008(%rsp)       # 4-byte Spill
	vmovd	%esi, %xmm0
	vmovdqa	672(%rsp), %ymm1        # 32-byte Reload
	vinserti128	$1, %xmm1, %ymm1, %ymm14
	vpsubd	736(%rsp), %ymm0, %ymm0 # 32-byte Folded Reload
	vpbroadcastd	%xmm0, %ymm15
	vmovdqa	%ymm15, 960(%rsp)       # 32-byte Spill
	sete	%bl
	movb	%r11b, %dl
	andb	%r9b, %dl
	movb	%dl, 944(%rsp)          # 1-byte Spill
	testl	%eax, %r10d
	setne	%dl
	movl	%eax, %esi
	movq	%rcx, %rax
	movq	2168(%rsp), %rcx        # 8-byte Reload
	orl	%ecx, %esi
	movq	%rax, %rcx
	testb	$1, %sil
	sete	%al
	orb	%dl, %al
	movb	%al, 936(%rsp)          # 1-byte Spill
	andb	%r8b, %bl
	movb	%bl, 952(%rsp)          # 1-byte Spill
	movl	472(%rsp), %edx         # 4-byte Reload
	movq	480(%rsp), %rax         # 8-byte Reload
	movl	%eax, %esi
	.align	16, 0x90
.LBB148_222:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, 2560(%rsp)        # 8-byte Spill
	movl	%edx, 1480(%rsp)        # 4-byte Spill
	movq	%rdi, 1536(%rsp)        # 8-byte Spill
	testl	%r11d, %r11d
	sete	1472(%rsp)              # 1-byte Folded Spill
	setne	1376(%rsp)              # 1-byte Folded Spill
	movq	1744(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rsi), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vmovdqa	.LCPI148_7(%rip), %ymm12 # ymm12 = [0,2,4,6,8,10,12,14]
	vpaddd	%ymm12, %ymm0, %ymm1
	vextracti128	$1, %ymm1, %xmm2
	vpextrd	$1, %xmm2, %eax
	vmovdqa	1712(%rsp), %xmm3       # 16-byte Reload
	vpextrd	$1, %xmm3, %ebx
	movl	%ebx, 1216(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, 2496(%rsp)        # 4-byte Spill
	vmovd	%xmm2, %eax
	vmovd	%xmm3, %r9d
	movl	%r9d, 2464(%rsp)        # 4-byte Spill
	cltd
	idivl	%r9d
	movl	%edx, 2432(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm2, %eax
	vpextrd	$2, %xmm3, %r10d
	movl	%r10d, 1248(%rsp)       # 4-byte Spill
	cltd
	idivl	%r10d
	movl	%edx, 2368(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm2, %eax
	vpextrd	$3, %xmm3, %r8d
	movl	%r8d, 2240(%rsp)        # 4-byte Spill
	cltd
	idivl	%r8d
	movl	%edx, %r11d
	vpextrd	$1, %xmm1, %eax
	vmovdqa	1920(%rsp), %ymm5       # 32-byte Reload
	vpextrd	$1, %xmm5, %esi
	movl	%esi, 1024(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r14d
	vmovd	%xmm1, %eax
	vmovd	%xmm5, %esi
	movl	%esi, 1016(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %esi
	vpextrd	$2, %xmm1, %eax
	vpextrd	$2, %xmm5, %edi
	movl	%edi, 1064(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, %r12d
	vpextrd	$3, %xmm1, %eax
	vpextrd	$3, %xmm5, %edi
	movl	%edi, 1056(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, %edi
	vmovd	2432(%rsp), %xmm1       # 4-byte Folded Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vpinsrd	$1, 2496(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vpinsrd	$2, 2368(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vmovdqa	.LCPI148_6(%rip), %ymm6 # ymm6 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm6, %ymm0, %ymm0
	vpinsrd	$3, %r11d, %xmm1, %xmm10
	vextracti128	$1, %ymm0, %xmm3
	vpextrd	$1, %xmm3, %eax
	cltd
	idivl	%ebx
	movl	%edx, %ebx
	vmovd	%esi, %xmm2
	vpinsrd	$1, %r14d, %xmm2, %xmm2
	movq	2560(%rsp), %r11        # 8-byte Reload
	vmovd	%xmm3, %eax
	cltd
	idivl	%r9d
	movl	%edx, %esi
	vpinsrd	$2, %r12d, %xmm2, %xmm2
	vpinsrd	$3, %edi, %xmm2, %xmm11
	vpextrd	$2, %xmm3, %eax
	cltd
	idivl	%r10d
	movl	%edx, %edi
	vmovd	%esi, %xmm4
	vpinsrd	$1, %ebx, %xmm4, %xmm4
	vpextrd	$3, %xmm3, %eax
	cltd
	idivl	%r8d
	movl	%edx, %esi
	vpinsrd	$2, %edi, %xmm4, %xmm3
	vpextrd	$1, %xmm0, %eax
	vpextrd	$1, %xmm5, %edi
	movl	%edi, 1184(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, %edi
	vpinsrd	$3, %esi, %xmm3, %xmm3
	vmovd	%xmm0, %eax
	vmovd	%xmm5, %esi
	movl	%esi, 1152(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	vmovd	%edx, %xmm4
	vpextrd	$2, %xmm0, %eax
	vpextrd	$2, %xmm5, %esi
	movl	%esi, 1080(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %esi
	vpinsrd	$1, %edi, %xmm4, %xmm4
	vpextrd	$3, %xmm0, %eax
	vpextrd	$3, %xmm5, %edi
	movl	%edi, 1072(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	vpinsrd	$2, %esi, %xmm4, %xmm0
	vpinsrd	$3, %edx, %xmm0, %xmm5
	movq	1752(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r11), %r12d
	movl	%r12d, 1456(%rsp)       # 4-byte Spill
	vmovd	%r12d, %xmm0
	vpbroadcastd	%xmm0, %ymm4
	vpaddd	%ymm6, %ymm4, %ymm0
	vmovdqa	2032(%rsp), %xmm1       # 16-byte Reload
	vpminsd	%xmm1, %xmm0, %xmm6
	vextracti128	$1, %ymm0, %xmm0
	vpminsd	%xmm1, %xmm0, %xmm0
	vmovdqa	2096(%rsp), %xmm13      # 16-byte Reload
	vpmaxsd	%xmm13, %xmm6, %xmm6
	vpmaxsd	%xmm13, %xmm0, %xmm0
	vinserti128	$1, %xmm0, %ymm6, %ymm6
	vmovd	%r11d, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vinserti128	$1, %xmm3, %ymm5, %ymm3
	vpsrad	$31, %ymm3, %ymm5
	vmovdqa	%ymm14, %ymm8
	vpand	%ymm5, %ymm8, %ymm5
	vmovdqa	2112(%rsp), %ymm7       # 32-byte Reload
	vpaddd	%ymm3, %ymm7, %ymm3
	vpaddd	%ymm5, %ymm3, %ymm3
	vpabsd	%xmm3, %xmm5
	vextracti128	$1, %ymm3, %xmm3
	vpabsd	%xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm5, %ymm3
	vmovdqa	1824(%rsp), %ymm5       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm5, %ymm5
	vmovdqa	2048(%rsp), %ymm9       # 32-byte Reload
	vpsubd	%ymm3, %ymm9, %ymm3
	vblendvps	%ymm5, %ymm6, %ymm3, %ymm3
	vpaddd	%ymm3, %ymm15, %ymm3
	vmovq	%xmm3, %rsi
	movslq	%esi, %rax
	movq	%rsi, %r8
	movq	%rax, 1408(%rsp)        # 8-byte Spill
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm5
	vpaddd	%ymm12, %ymm4, %ymm4
	vpminsd	%xmm1, %xmm4, %xmm6
	vextracti128	$1, %ymm4, %xmm4
	vpminsd	%xmm1, %xmm4, %xmm4
	vmovdqa	%xmm1, %xmm14
	vpmaxsd	%xmm13, %xmm6, %xmm6
	vpmaxsd	%xmm13, %xmm4, %xmm4
	vinserti128	$1, %xmm4, %ymm6, %ymm4
	vinserti128	$1, %xmm10, %ymm11, %ymm1
	vpsrad	$31, %ymm1, %ymm2
	vpand	%ymm2, %ymm8, %ymm2
	vmovdqa	%ymm8, %ymm10
	vpaddd	%ymm1, %ymm7, %ymm1
	vpaddd	%ymm2, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm2
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm2, %ymm1
	vmovdqa	1856(%rsp), %ymm2       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm2, %ymm2
	vpsubd	%ymm1, %ymm9, %ymm1
	vblendvps	%ymm2, %ymm4, %ymm1, %ymm1
	vpaddd	%ymm1, %ymm15, %ymm1
	vmovq	%xmm1, %rax
	movslq	%eax, %rsi
	movq	%rsi, 2272(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	vpextrq	$1, %xmm1, %rbx
	movslq	%ebx, %rsi
	movq	%rsi, 2336(%rsp)        # 8-byte Spill
	sarq	$32, %rbx
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rsi
	movslq	%esi, %rdx
	movq	%rdx, 2304(%rsp)        # 8-byte Spill
	sarq	$32, %rsi
	vpextrq	$1, %xmm1, %rdi
	movslq	%edi, %rdx
	movq	%rdx, 2368(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	sarq	$32, %r8
	movq	%r8, 2496(%rsp)         # 8-byte Spill
	vpextrq	$1, %xmm3, %r10
	movslq	%r10d, %rdx
	movq	%rdx, 2432(%rsp)        # 8-byte Spill
	sarq	$32, %r10
	movq	%r10, 1112(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm3, %xmm1
	vmovq	%xmm1, %r11
	movslq	%r11d, %r8
	movq	%r8, 1088(%rsp)         # 8-byte Spill
	sarq	$32, %r11
	movq	%r11, 1104(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %r9
	movslq	%r9d, %r14
	movq	%r14, 1096(%rsp)        # 8-byte Spill
	sarq	$32, %r9
	movq	%r9, 1120(%rsp)         # 8-byte Spill
	movl	%r12d, %edx
	andl	$1, %edx
	movl	%edx, 1448(%rsp)        # 4-byte Spill
	sete	%r12b
	andb	1376(%rsp), %r12b       # 1-byte Folded Reload
	movq	2496(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rdx,2), %xmm5, %xmm1
	movq	2432(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rdx,2), %xmm1, %xmm1
	vpinsrw	$3, (%rcx,%r10,2), %xmm1, %xmm1
	vpinsrw	$4, (%rcx,%r8,2), %xmm1, %xmm1
	vpinsrw	$5, (%rcx,%r11,2), %xmm1, %xmm1
	vpinsrw	$6, (%rcx,%r14,2), %xmm1, %xmm1
	vpinsrw	$7, (%rcx,%r9,2), %xmm1, %xmm2
	jne	.LBB148_223
# BB#224:                               # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vpxor	%ymm11, %ymm11, %ymm11
	jmp	.LBB148_225
	.align	16, 0x90
.LBB148_223:                            #   in Loop: Header=BB148_222 Depth=3
	movq	2272(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %edx
	vmovd	%edx, %xmm1
	vpinsrw	$1, (%rcx,%rax,2), %xmm1, %xmm1
	movq	2336(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rdx,2), %xmm1, %xmm1
	vpinsrw	$3, (%rcx,%rbx,2), %xmm1, %xmm1
	movq	2304(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rdx,2), %xmm1, %xmm1
	vpinsrw	$5, (%rcx,%rsi,2), %xmm1, %xmm1
	movq	2368(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rdx,2), %xmm1, %xmm1
	vpinsrw	$7, (%rcx,%rdi,2), %xmm1, %xmm1
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm1, %ymm11
.LBB148_225:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	testb	%r12b, %r12b
	jne	.LBB148_226
# BB#227:                               # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	movq	%rax, 1280(%rsp)        # 8-byte Spill
	movq	%rsi, 1312(%rsp)        # 8-byte Spill
	movq	%rbx, 1344(%rsp)        # 8-byte Spill
	movq	%rdi, 1376(%rsp)        # 8-byte Spill
	vpxor	%ymm2, %ymm2, %ymm2
	jmp	.LBB148_228
	.align	16, 0x90
.LBB148_226:                            #   in Loop: Header=BB148_222 Depth=3
	movq	%rax, 1280(%rsp)        # 8-byte Spill
	movq	%rsi, 1312(%rsp)        # 8-byte Spill
	movq	%rbx, 1344(%rsp)        # 8-byte Spill
	movq	%rdi, 1376(%rsp)        # 8-byte Spill
	vpmovzxwd	%xmm2, %ymm2    # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm2, %ymm2
.LBB148_228:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	movq	1912(%rsp), %rax        # 8-byte Reload
	movq	2560(%rsp), %rcx        # 8-byte Reload
	leal	(%rax,%rcx), %eax
	vmovd	%eax, %xmm3
	vpbroadcastd	%xmm3, %ymm4
	vpaddd	%ymm12, %ymm4, %ymm3
	vextracti128	$1, %ymm3, %xmm6
	vpextrd	$1, %xmm6, %eax
	cltd
	movl	1216(%rsp), %r11d       # 4-byte Reload
	idivl	%r11d
	movl	%edx, %r8d
	vmovd	%xmm6, %eax
	cltd
	idivl	2464(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r9d
	vpextrd	$2, %xmm6, %eax
	cltd
	movl	1248(%rsp), %r12d       # 4-byte Reload
	idivl	%r12d
	movl	%edx, %r10d
	vpextrd	$3, %xmm6, %eax
	cltd
	movl	2240(%rsp), %r14d       # 4-byte Reload
	idivl	%r14d
	movl	%edx, %esi
	vpextrd	$1, %xmm3, %eax
	cltd
	idivl	1024(%rsp)              # 4-byte Folded Reload
	movl	%edx, %edi
	vmovd	%xmm3, %eax
	cltd
	idivl	1016(%rsp)              # 4-byte Folded Reload
	movl	%edx, %ebx
	movq	2168(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rcx), %eax
	vmovd	%eax, %xmm6
	vmovd	%r9d, %xmm7
	vpinsrd	$1, %r8d, %xmm7, %xmm5
	vpbroadcastd	%xmm6, %ymm6
	vpaddd	%ymm12, %ymm6, %ymm7
	vpminsd	%xmm14, %xmm7, %xmm1
	vextracti128	$1, %ymm7, %xmm7
	vpminsd	%xmm14, %xmm7, %xmm7
	vmovdqa	%xmm13, %xmm15
	vpmaxsd	%xmm15, %xmm1, %xmm1
	vpmaxsd	%xmm15, %xmm7, %xmm7
	vinserti128	$1, %xmm7, %ymm1, %ymm7
	vmovdqa	.LCPI148_6(%rip), %ymm9 # ymm9 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm9, %ymm4, %ymm4
	vpinsrd	$2, %r10d, %xmm5, %xmm1
	vpinsrd	$3, %esi, %xmm1, %xmm1
	vpextrd	$2, %xmm3, %eax
	cltd
	idivl	1064(%rsp)              # 4-byte Folded Reload
	movl	%edx, %esi
	vmovd	%ebx, %xmm5
	vpinsrd	$1, %edi, %xmm5, %xmm5
	vpextrd	$3, %xmm3, %eax
	cltd
	idivl	1056(%rsp)              # 4-byte Folded Reload
	movl	%edx, %edi
	vpinsrd	$2, %esi, %xmm5, %xmm5
	vextracti128	$1, %ymm4, %xmm3
	vpextrd	$1, %xmm3, %eax
	cltd
	idivl	%r11d
	movl	%edx, %r8d
	vpinsrd	$3, %edi, %xmm5, %xmm5
	vinserti128	$1, %xmm1, %ymm5, %ymm8
	vpsrad	$31, %ymm8, %ymm1
	vpand	%ymm10, %ymm1, %ymm1
	vmovdqa	2112(%rsp), %ymm12      # 32-byte Reload
	vpaddd	%ymm8, %ymm12, %ymm5
	vpaddd	%ymm1, %ymm5, %ymm1
	vpabsd	%xmm1, %xmm5
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm5, %ymm1
	vmovdqa	1792(%rsp), %ymm5       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm5, %ymm5
	vmovdqa	2048(%rsp), %ymm13      # 32-byte Reload
	vpsubd	%ymm1, %ymm13, %ymm1
	vblendvps	%ymm5, %ymm7, %ymm1, %ymm7
	vpaddd	%ymm9, %ymm6, %ymm1
	vmovd	%xmm3, %eax
	cltd
	idivl	2464(%rsp)              # 4-byte Folded Reload
	movl	%edx, %edi
	vpextrd	$2, %xmm3, %eax
	vpextrd	$3, %xmm3, %ebx
	vpminsd	%xmm14, %xmm1, %xmm3
	cltd
	idivl	%r12d
	movl	%edx, %r9d
	vextracti128	$1, %ymm1, %xmm1
	vpminsd	%xmm14, %xmm1, %xmm1
	vpmaxsd	%xmm15, %xmm3, %xmm3
	movl	%ebx, %eax
	cltd
	idivl	%r14d
	movl	%edx, %ebx
	vpmaxsd	%xmm15, %xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpextrd	$1, %xmm4, %eax
	cltd
	idivl	1184(%rsp)              # 4-byte Folded Reload
	movl	%edx, %esi
	vmovd	%edi, %xmm3
	vpinsrd	$1, %r8d, %xmm3, %xmm3
	vmovd	%xmm4, %eax
	cltd
	idivl	1152(%rsp)              # 4-byte Folded Reload
	movl	%edx, %edi
	vpinsrd	$2, %r9d, %xmm3, %xmm3
	vpinsrd	$3, %ebx, %xmm3, %xmm3
	vpextrd	$2, %xmm4, %eax
	cltd
	idivl	1080(%rsp)              # 4-byte Folded Reload
	movl	%edx, %ebx
	vpextrd	$3, %xmm4, %eax
	vmovd	%edi, %xmm4
	vpinsrd	$1, %esi, %xmm4, %xmm4
	cltd
	idivl	1072(%rsp)              # 4-byte Folded Reload
	vpinsrd	$2, %ebx, %xmm4, %xmm4
	vpinsrd	$3, %edx, %xmm4, %xmm4
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpsrad	$31, %ymm3, %ymm4
	vpand	%ymm10, %ymm4, %ymm4
	vmovdqa	%ymm10, %ymm14
	vpaddd	%ymm3, %ymm12, %ymm3
	vpaddd	%ymm4, %ymm3, %ymm3
	vpabsd	%xmm3, %xmm4
	vextracti128	$1, %ymm3, %xmm3
	vpabsd	%xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vmovdqa	1760(%rsp), %ymm4       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm4, %ymm0
	vpsubd	%ymm3, %ymm13, %ymm3
	vblendvps	%ymm0, %ymm1, %ymm3, %ymm0
	vmovdqa	960(%rsp), %ymm15       # 32-byte Reload
	vpaddd	%ymm0, %ymm15, %ymm0
	vpaddd	%ymm7, %ymm15, %ymm1
	vpextrq	$1, %xmm1, %r8
	vmovq	%xmm1, %r10
	movslq	%r10d, %rax
	movq	%rax, 1024(%rsp)        # 8-byte Spill
	sarq	$32, %r10
	movslq	%r8d, %rax
	movq	%rax, 1016(%rsp)        # 8-byte Spill
	sarq	$32, %r8
	vextracti128	$1, %ymm1, %xmm1
	vpextrq	$1, %xmm1, %r9
	vmovq	%xmm1, %r14
	movslq	%r14d, %rax
	movq	%rax, 2464(%rsp)        # 8-byte Spill
	sarq	$32, %r14
	movslq	%r9d, %rax
	movq	%rax, 2240(%rsp)        # 8-byte Spill
	sarq	$32, %r9
	vpextrq	$1, %xmm0, %rbx
	vmovq	%xmm0, %r11
	movslq	%r11d, %rdx
	movq	%rdx, 1064(%rsp)        # 8-byte Spill
	sarq	$32, %r11
	movslq	%ebx, %r12
	movq	%r12, 1056(%rsp)        # 8-byte Spill
	sarq	$32, %rbx
	vextracti128	$1, %ymm0, %xmm0
	vmovq	%xmm0, %rax
	movq	1736(%rsp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %edx
	vmovd	%edx, %xmm1
	movslq	%eax, %rsi
	movq	%rsi, 1184(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1248(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rdx
	movslq	%edx, %rdi
	movq	%rdi, 1216(%rsp)        # 8-byte Spill
	sarq	$32, %rdx
	movq	%rdx, 1072(%rsp)        # 8-byte Spill
	vpinsrw	$1, (%rcx,%r11,2), %xmm1, %xmm0
	vpinsrw	$2, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%rbx,2), %xmm0, %xmm3
	cmpb	$0, 944(%rsp)           # 1-byte Folded Reload
	movzwl	(%rcx,%rsi,2), %esi
	movl	%esi, 1080(%rsp)        # 4-byte Spill
	movzwl	(%rcx,%rax,2), %eax
	movl	%eax, 1152(%rsp)        # 4-byte Spill
	movzwl	(%rcx,%rdi,2), %esi
	movzwl	(%rcx,%rdx,2), %eax
	jne	.LBB148_229
# BB#230:                               # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	movq	1024(%rsp), %rdx        # 8-byte Reload
	movq	1016(%rsp), %r12        # 8-byte Reload
	vpxor	%ymm0, %ymm0, %ymm0
	jmp	.LBB148_231
	.align	16, 0x90
.LBB148_229:                            #   in Loop: Header=BB148_222 Depth=3
	movq	1024(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %r12d
	vmovd	%r12d, %xmm0
	vpinsrw	$1, (%rcx,%r10,2), %xmm0, %xmm0
	movq	1016(%rsp), %r12        # 8-byte Reload
	vpinsrw	$2, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%r8,2), %xmm0, %xmm0
	movq	2464(%rsp), %rdi        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rdi,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%r14,2), %xmm0, %xmm0
	movq	2240(%rsp), %rdi        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rdi,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%r9,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm0
.LBB148_231:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vmovaps	.LCPI148_8(%rip), %ymm12 # ymm12 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI148_9(%rip), %ymm13 # ymm13 = <4,u,5,u,6,u,7,u>
	movq	1536(%rsp), %rdi        # 8-byte Reload
	jne	.LBB148_232
# BB#233:                               # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	movl	%esi, 1016(%rsp)        # 4-byte Spill
	movl	%eax, 1024(%rsp)        # 4-byte Spill
	vpxor	%ymm3, %ymm3, %ymm3
	jmp	.LBB148_234
	.align	16, 0x90
.LBB148_232:                            #   in Loop: Header=BB148_222 Depth=3
	vpinsrw	$4, 1080(%rsp), %xmm3, %xmm1 # 4-byte Folded Reload
	vpinsrw	$5, 1152(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vpinsrw	$6, %esi, %xmm1, %xmm1
	movl	%esi, 1016(%rsp)        # 4-byte Spill
	vpinsrw	$7, %eax, %xmm1, %xmm1
	movl	%eax, 1024(%rsp)        # 4-byte Spill
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm1, %ymm3
.LBB148_234:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vpermps	%ymm3, %ymm12, %ymm1
	vpermps	%ymm2, %ymm13, %ymm4
	vblendps	$170, %ymm1, %ymm4, %ymm1 # ymm1 = ymm4[0],ymm1[1],ymm4[2],ymm1[3],ymm4[4],ymm1[5],ymm4[6],ymm1[7]
	vmovaps	.LCPI148_10(%rip), %ymm4 # ymm4 = <u,0,u,1,u,2,u,3>
	vmovaps	%ymm4, %ymm5
	vpermps	%ymm3, %ymm5, %ymm3
	vmovaps	.LCPI148_11(%rip), %ymm4 # ymm4 = <0,u,1,u,2,u,3,u>
	vmovaps	%ymm4, %ymm6
	vpermps	%ymm2, %ymm6, %ymm2
	vblendps	$170, %ymm3, %ymm2, %ymm2 # ymm2 = ymm2[0],ymm3[1],ymm2[2],ymm3[3],ymm2[4],ymm3[5],ymm2[6],ymm3[7]
	vpermps	%ymm0, %ymm12, %ymm3
	vpermps	%ymm11, %ymm13, %ymm4
	vblendps	$170, %ymm3, %ymm4, %ymm3 # ymm3 = ymm4[0],ymm3[1],ymm4[2],ymm3[3],ymm4[4],ymm3[5],ymm4[6],ymm3[7]
	vpermps	%ymm0, %ymm5, %ymm0
	vmovaps	%ymm5, %ymm9
	vpermps	%ymm11, %ymm6, %ymm4
	vmovaps	%ymm6, %ymm10
	vblendps	$170, %ymm0, %ymm4, %ymm0 # ymm0 = ymm4[0],ymm0[1],ymm4[2],ymm0[3],ymm4[4],ymm0[5],ymm4[6],ymm0[7]
	vmovups	%ymm0, (%rdi)
	vmovups	%ymm3, 32(%rdi)
	vmovups	%ymm2, 64(%rdi)
	vmovups	%ymm1, 96(%rdi)
	movzwl	(%rcx,%rdx,2), %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, (%rcx,%r10,2), %xmm0, %xmm0
	vpinsrw	$2, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%r8,2), %xmm0, %xmm0
	movq	2464(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%r14,2), %xmm0, %xmm0
	movq	2240(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%r9,2), %xmm0, %xmm3
	movq	1064(%rsp), %rax        # 8-byte Reload
	vpinsrw	$0, (%rcx,%rax,2), %xmm0, %xmm0
	vpinsrw	$1, (%rcx,%r11,2), %xmm0, %xmm0
	movq	1056(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%rbx,2), %xmm0, %xmm0
	movq	1408(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm1
	movq	2496(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm1, %xmm1
	movq	2432(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1112(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1088(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1104(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1096(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1120(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm1, %xmm1
	movq	2272(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm2
	movq	1280(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm2, %xmm2
	movq	2336(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1344(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm2, %xmm2
	movq	2304(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1312(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm2, %xmm2
	movq	2368(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1376(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm2, %xmm4
	movl	1008(%rsp), %r11d       # 4-byte Reload
	movl	1456(%rsp), %esi        # 4-byte Reload
	testl	%esi, %r11d
	setne	%al
	orl	2400(%rsp), %esi        # 4-byte Folded Reload
	testb	$1, %sil
	sete	%bl
	orb	%al, %bl
	vpmovzxwd	%xmm1, %ymm2    # ymm2 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm4, %ymm1    # ymm1 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vcvtdq2ps	%ymm1, %ymm1
	vmovaps	%ymm1, %ymm6
	jne	.LBB148_236
# BB#235:                               # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vxorps	%ymm6, %ymm6, %ymm6
.LBB148_236:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vcvtdq2ps	%ymm2, %ymm2
	vmovaps	%ymm2, %ymm7
	movq	2560(%rsp), %rsi        # 8-byte Reload
	jne	.LBB148_238
# BB#237:                               # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vxorps	%ymm7, %ymm7, %ymm7
.LBB148_238:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vcvtdq2ps	%ymm3, %ymm4
	vmovaps	%ymm4, %ymm3
	cmpb	$0, 936(%rsp)           # 1-byte Folded Reload
	jne	.LBB148_240
# BB#239:                               # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vxorps	%ymm3, %ymm3, %ymm3
.LBB148_240:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	jne	.LBB148_241
# BB#242:                               # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vpxor	%ymm8, %ymm8, %ymm8
	jmp	.LBB148_243
	.align	16, 0x90
.LBB148_241:                            #   in Loop: Header=BB148_222 Depth=3
	vpinsrw	$4, 1080(%rsp), %xmm0, %xmm5 # 4-byte Folded Reload
	vpinsrw	$5, 1152(%rsp), %xmm5, %xmm5 # 4-byte Folded Reload
	vpinsrw	$6, 1016(%rsp), %xmm5, %xmm5 # 4-byte Folded Reload
	vpinsrw	$7, 1024(%rsp), %xmm5, %xmm5 # 4-byte Folded Reload
	vpmovzxwd	%xmm5, %ymm5    # ymm5 = xmm5[0],zero,xmm5[1],zero,xmm5[2],zero,xmm5[3],zero,xmm5[4],zero,xmm5[5],zero,xmm5[6],zero,xmm5[7],zero
	vcvtdq2ps	%ymm5, %ymm8
.LBB148_243:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vpermps	%ymm8, %ymm12, %ymm5
	vpermps	%ymm7, %ymm13, %ymm11
	vblendps	$170, %ymm5, %ymm11, %ymm5 # ymm5 = ymm11[0],ymm5[1],ymm11[2],ymm5[3],ymm11[4],ymm5[5],ymm11[6],ymm5[7]
	vpermps	%ymm8, %ymm9, %ymm8
	vpermps	%ymm7, %ymm10, %ymm7
	vblendps	$170, %ymm8, %ymm7, %ymm7 # ymm7 = ymm7[0],ymm8[1],ymm7[2],ymm8[3],ymm7[4],ymm8[5],ymm7[6],ymm8[7]
	vpermps	%ymm3, %ymm12, %ymm8
	vpermps	%ymm6, %ymm13, %ymm11
	vblendps	$170, %ymm8, %ymm11, %ymm8 # ymm8 = ymm11[0],ymm8[1],ymm11[2],ymm8[3],ymm11[4],ymm8[5],ymm11[6],ymm8[7]
	vpermps	%ymm3, %ymm9, %ymm3
	vpermps	%ymm6, %ymm10, %ymm6
	vblendps	$170, %ymm3, %ymm6, %ymm3 # ymm3 = ymm6[0],ymm3[1],ymm6[2],ymm3[3],ymm6[4],ymm3[5],ymm6[6],ymm3[7]
	movq	1984(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm3, 32(%rax,%rdi)
	vmovups	%ymm8, 64(%rax,%rdi)
	vmovups	%ymm7, 96(%rax,%rdi)
	vmovups	%ymm5, 128(%rax,%rdi)
	movb	1472(%rsp), %al         # 1-byte Reload
	movl	1448(%rsp), %ebx        # 4-byte Reload
	andb	%bl, %al
	jne	.LBB148_245
# BB#244:                               # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vxorps	%ymm1, %ymm1, %ymm1
.LBB148_245:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	testb	%al, %al
	vxorps	%ymm5, %ymm5, %ymm5
	jne	.LBB148_247
# BB#246:                               # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vxorps	%ymm2, %ymm2, %ymm2
.LBB148_247:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	movq	1184(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1248(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1216(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movq	1072(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %edx
	cmpb	$0, 952(%rsp)           # 1-byte Folded Reload
	jne	.LBB148_249
# BB#248:                               # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	vxorps	%ymm4, %ymm4, %ymm4
.LBB148_249:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	je	.LBB148_251
# BB#250:                               #   in Loop: Header=BB148_222 Depth=3
	vpinsrw	$6, %eax, %xmm0, %xmm0
	vpinsrw	$7, %edx, %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm5
.LBB148_251:                            # %for deinterleaved$3.s0.v15.v1531
                                        #   in Loop: Header=BB148_222 Depth=3
	movl	1480(%rsp), %edx        # 4-byte Reload
	vpermps	%ymm2, %ymm13, %ymm0
	vpermps	%ymm5, %ymm12, %ymm3
	vblendps	$170, %ymm3, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm3[1],ymm0[2],ymm3[3],ymm0[4],ymm3[5],ymm0[6],ymm3[7]
	vpermps	%ymm2, %ymm10, %ymm2
	vpermps	%ymm5, %ymm9, %ymm3
	vblendps	$170, %ymm3, %ymm2, %ymm2 # ymm2 = ymm2[0],ymm3[1],ymm2[2],ymm3[3],ymm2[4],ymm3[5],ymm2[6],ymm3[7]
	vpermps	%ymm4, %ymm12, %ymm3
	vpermps	%ymm1, %ymm13, %ymm5
	vblendps	$170, %ymm3, %ymm5, %ymm3 # ymm3 = ymm5[0],ymm3[1],ymm5[2],ymm3[3],ymm5[4],ymm3[5],ymm5[6],ymm3[7]
	vpermps	%ymm4, %ymm9, %ymm4
	vpermps	%ymm1, %ymm10, %ymm1
	vblendps	$170, %ymm4, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm4[1],ymm1[2],ymm4[3],ymm1[4],ymm4[5],ymm1[6],ymm4[7]
	movq	1960(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm1, (%rax,%rdi)
	movq	1976(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm3, 96(%rax,%rdi)
	vmovups	%ymm2, 128(%rax,%rdi)
	movq	1968(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm0, (%rax,%rdi)
	addl	$32, %esi
	subq	$-128, %rdi
	addl	$-1, %edx
	jne	.LBB148_222
.LBB148_252:                            # %end for deinterleaved$3.s0.v15.v1532
                                        #   in Loop: Header=BB148_126 Depth=2
	movl	2400(%rsp), %edx        # 4-byte Reload
	addl	$1, %edx
	movl	%edx, 2400(%rsp)        # 4-byte Spill
	movb	568(%rsp), %bl          # 1-byte Reload
	addb	$1, %bl
	movl	720(%rsp), %eax         # 4-byte Reload
	addl	788(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 720(%rsp)         # 4-byte Spill
	movq	912(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %edx
	jne	.LBB148_126
.LBB148_159:                            # %end for deinterleaved$3.s0.v1624
                                        #   in Loop: Header=BB148_119 Depth=1
	movq	1504(%rsp), %rax        # 8-byte Reload
	leal	3(%rax), %edx
	movl	%edx, 728(%rsp)         # 4-byte Spill
	movq	912(%rsp), %rax         # 8-byte Reload
	cmpl	%edx, %eax
	jge	.LBB148_282
# BB#160:                               # %for deinterleaved$3.s0.v1634.preheader
                                        #   in Loop: Header=BB148_119 Depth=1
	movq	912(%rsp), %rax         # 8-byte Reload
	movb	%al, %dl
	.align	16, 0x90
.LBB148_161:                            # %for deinterleaved$3.s0.v1634
                                        #   Parent Loop BB148_119 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB148_163 Depth 3
	movb	%dl, 864(%rsp)          # 1-byte Spill
	movzbl	%dl, %r14d
	andl	$3, %r14d
	movq	792(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB148_281
# BB#162:                               # %for deinterleaved$3.s0.v15.v1537.preheader
                                        #   in Loop: Header=BB148_161 Depth=2
	imulq	712(%rsp), %r14         # 8-byte Folded Reload
	movl	784(%rsp), %r11d        # 4-byte Reload
	testl	%r11d, %r11d
	setne	%r8b
	sete	%r9b
	movl	616(%rsp), %eax         # 4-byte Reload
	movq	912(%rsp), %rsi         # 8-byte Reload
	cmpl	%esi, %eax
	movl	%eax, %edi
	cmovgl	%esi, %edi
	movq	%rcx, %r10
	movq	664(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %edi
	cmovll	%ecx, %edi
	movl	%esi, %eax
	subl	%ecx, %eax
	cltd
	idivl	628(%rsp)               # 4-byte Folded Reload
	movl	%edx, %eax
	sarl	$31, %eax
	andl	624(%rsp), %eax         # 4-byte Folded Reload
	movq	632(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %edx
	leal	(%rdx,%rax), %ebx
	leal	1(%rdx,%rax), %eax
	cmpl	$-2, %ebx
	notl	%ebx
	cmovgl	%eax, %ebx
	movl	620(%rsp), %eax         # 4-byte Reload
	subl	%ebx, %eax
	cmpl	%esi, 660(%rsp)         # 4-byte Folded Reload
	cmovgl	%edi, %eax
	imull	788(%rsp), %eax         # 4-byte Folded Reload
	leaq	(%r14,%r13), %rdi
	movl	%esi, %r14d
	andl	$1, %r14d
	movl	%r14d, 936(%rsp)        # 4-byte Spill
	vmovd	%eax, %xmm1
	vmovaps	672(%rsp), %ymm0        # 32-byte Reload
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, 2272(%rsp)       # 32-byte Spill
	vpsubd	736(%rsp), %ymm1, %ymm1 # 32-byte Folded Reload
	vpbroadcastd	%xmm1, %ymm0
	vmovdqa	%ymm0, 2240(%rsp)       # 32-byte Spill
	sete	%bl
	movb	%r14b, %al
	andb	%r9b, %al
	movb	%al, 880(%rsp)          # 1-byte Spill
	testl	%esi, %r11d
	setne	%al
	movl	%esi, %edx
	movq	2168(%rsp), %rcx        # 8-byte Reload
	orl	%ecx, %edx
	movq	%r10, %rcx
	testb	$1, %dl
	sete	%dl
	orb	%al, %dl
	movb	%dl, 872(%rsp)          # 1-byte Spill
	andb	%r8b, %bl
	movb	%bl, 892(%rsp)          # 1-byte Spill
	xorl	%esi, %esi
	movq	792(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB148_163:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_161 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, 2560(%rsp)        # 8-byte Spill
	movl	%eax, 1480(%rsp)        # 4-byte Spill
	movq	%rdi, 1536(%rsp)        # 8-byte Spill
	testl	%r14d, %r14d
	sete	1472(%rsp)              # 1-byte Folded Spill
	setne	1376(%rsp)              # 1-byte Folded Spill
	movq	1744(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rsi), %eax
	vmovd	%eax, %xmm1
	vpbroadcastd	%xmm1, %ymm1
	vmovdqa	.LCPI148_7(%rip), %ymm12 # ymm12 = [0,2,4,6,8,10,12,14]
	vpaddd	%ymm12, %ymm1, %ymm2
	vextracti128	$1, %ymm2, %xmm4
	vpextrd	$1, %xmm4, %eax
	vmovdqa	1712(%rsp), %xmm0       # 16-byte Reload
	vpextrd	$1, %xmm0, %ebx
	movl	%ebx, 1248(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, %r9d
	vmovd	%xmm4, %eax
	vmovd	%xmm0, %r12d
	movl	%r12d, 1216(%rsp)       # 4-byte Spill
	cltd
	idivl	%r12d
	movl	%edx, %esi
	vpextrd	$2, %xmm4, %eax
	vpextrd	$2, %xmm0, %r10d
	movl	%r10d, 1184(%rsp)       # 4-byte Spill
	cltd
	idivl	%r10d
	movl	%edx, %r14d
	vpextrd	$3, %xmm4, %eax
	vpextrd	$3, %xmm0, %r8d
	movl	%r8d, 2304(%rsp)        # 4-byte Spill
	cltd
	idivl	%r8d
	movl	%edx, 2496(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm2, %eax
	vmovdqa	1920(%rsp), %ymm0       # 32-byte Reload
	vpextrd	$1, %xmm0, %edi
	movl	%edi, 1056(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, %edi
	vmovd	%esi, %xmm4
	vmovd	%xmm2, %eax
	vmovd	%xmm0, %esi
	movl	%esi, 1024(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r11d
	vpinsrd	$1, %r9d, %xmm4, %xmm4
	vpextrd	$2, %xmm2, %eax
	vpextrd	$2, %xmm0, %esi
	movl	%esi, 1016(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r9d
	vpinsrd	$2, %r14d, %xmm4, %xmm4
	vpextrd	$3, %xmm2, %eax
	vpextrd	$3, %xmm0, %esi
	movl	%esi, 1008(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %r14d
	vmovdqa	.LCPI148_6(%rip), %ymm9 # ymm9 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm9, %ymm1, %ymm2
	vextracti128	$1, %ymm2, %xmm6
	vpextrd	$1, %xmm6, %eax
	cltd
	idivl	%ebx
	movl	%edx, %esi
	vpinsrd	$3, 2496(%rsp), %xmm4, %xmm15 # 4-byte Folded Reload
	vmovd	%r11d, %xmm4
	vmovd	%xmm6, %eax
	cltd
	idivl	%r12d
	movl	%edx, %ebx
	vpinsrd	$1, %edi, %xmm4, %xmm4
	vpinsrd	$2, %r9d, %xmm4, %xmm4
	vpextrd	$2, %xmm6, %eax
	cltd
	idivl	%r10d
	movl	%edx, %edi
	vpinsrd	$3, %r14d, %xmm4, %xmm5
	vmovd	%ebx, %xmm4
	vpextrd	$3, %xmm6, %eax
	cltd
	idivl	%r8d
	movl	%edx, %ebx
	vpinsrd	$1, %esi, %xmm4, %xmm4
	vpextrd	$1, %xmm2, %eax
	vpextrd	$1, %xmm0, %esi
	movl	%esi, 1072(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, %esi
	vpinsrd	$2, %edi, %xmm4, %xmm4
	vmovd	%xmm2, %eax
	vmovd	%xmm0, %edi
	movl	%edi, 1064(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, %edi
	vpinsrd	$3, %ebx, %xmm4, %xmm6
	vpextrd	$2, %xmm2, %eax
	vpextrd	$2, %xmm0, %ebx
	movl	%ebx, 1152(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, %ebx
	vmovd	%edi, %xmm4
	vpextrd	$3, %xmm2, %eax
	vpextrd	$3, %xmm0, %edi
	movl	%edi, 1120(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	vpinsrd	$1, %esi, %xmm4, %xmm2
	movq	2560(%rsp), %rsi        # 8-byte Reload
	vpinsrd	$2, %ebx, %xmm2, %xmm7
	vmovd	%esi, %xmm2
	vpbroadcastd	%xmm2, %ymm2
	vmovdqa	1856(%rsp), %ymm0       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm0, %ymm4
	vmovdqa	.LCPI148_3(%rip), %ymm0 # ymm0 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vmovdqa	%ymm0, %ymm10
	vpshufb	%ymm10, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vmovdqa	1824(%rsp), %ymm0       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm0, %ymm8
	vpshufb	%ymm10, %ymm8, %ymm8
	vpermq	$232, %ymm8, %ymm8      # ymm8 = ymm8[0,2,2,3]
	vmovdqa	.LCPI148_4(%rip), %xmm0 # xmm0 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vmovdqa	%xmm0, %xmm1
	vpshufb	%xmm1, %xmm8, %xmm0
	vpshufb	%xmm1, %xmm4, %xmm4
	vpunpcklqdq	%xmm0, %xmm4, %xmm0 # xmm0 = xmm4[0],xmm0[0]
	vpxor	.LCPI148_5(%rip), %xmm0, %xmm0
	vmovdqa	1664(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm3, %ymm4
	vpshufb	%ymm10, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vmovdqa	1632(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm3, %ymm8
	vpshufb	%ymm10, %ymm8, %ymm8
	vpermq	$232, %ymm8, %ymm8      # ymm8 = ymm8[0,2,2,3]
	vpshufb	%xmm1, %xmm8, %xmm3
	vpshufb	%xmm1, %xmm4, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm3[0]
	vpor	%xmm0, %xmm3, %xmm13
	vpinsrd	$3, %edx, %xmm7, %xmm0
	vinserti128	$1, %xmm6, %ymm0, %ymm0
	vpsrad	$31, %ymm0, %ymm3
	vmovdqa	2272(%rsp), %ymm11      # 32-byte Reload
	vpand	%ymm3, %ymm11, %ymm3
	vmovdqa	2112(%rsp), %ymm8       # 32-byte Reload
	vpaddd	%ymm0, %ymm8, %ymm0
	vpaddd	%ymm3, %ymm0, %ymm0
	vpabsd	%xmm0, %xmm3
	vextracti128	$1, %ymm0, %xmm0
	vpabsd	%xmm0, %xmm0
	vinserti128	$1, %xmm0, %ymm3, %ymm0
	vmovdqa	2048(%rsp), %ymm10      # 32-byte Reload
	vpsubd	%ymm0, %ymm10, %ymm0
	movq	1752(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rsi), %r9d
	movl	%r9d, 1456(%rsp)        # 4-byte Spill
	vmovd	%r9d, %xmm3
	vpbroadcastd	%xmm3, %ymm14
	vpaddd	%ymm9, %ymm14, %ymm3
	vmovdqa	2032(%rsp), %xmm4       # 16-byte Reload
	vpminsd	%xmm4, %xmm3, %xmm7
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm4, %xmm3, %xmm3
	vmovdqa	2096(%rsp), %xmm6       # 16-byte Reload
	vpmaxsd	%xmm6, %xmm7, %xmm7
	vpmaxsd	%xmm6, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm7, %ymm3
	vpunpckhbw	%xmm13, %xmm13, %xmm7 # xmm7 = xmm13[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm7, %ymm7    # ymm7 = xmm7[0],zero,xmm7[1],zero,xmm7[2],zero,xmm7[3],zero,xmm7[4],zero,xmm7[5],zero,xmm7[6],zero,xmm7[7],zero
	vpslld	$31, %ymm7, %ymm7
	vblendvps	%ymm7, %ymm0, %ymm3, %ymm0
	vmovdqa	2240(%rsp), %ymm9       # 32-byte Reload
	vpaddd	%ymm0, %ymm9, %ymm7
	vmovq	%xmm7, %rsi
	movslq	%esi, %rax
	movq	%rsi, %r8
	movq	%rax, 1408(%rsp)        # 8-byte Spill
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm0
	vinserti128	$1, %xmm15, %ymm5, %ymm1
	vpsrad	$31, %ymm1, %ymm3
	vpand	%ymm3, %ymm11, %ymm3
	vpaddd	%ymm1, %ymm8, %ymm1
	vpaddd	%ymm3, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm3
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpaddd	%ymm12, %ymm14, %ymm3
	vmovdqa	%ymm12, %ymm15
	vpminsd	%xmm4, %xmm3, %xmm5
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm4, %xmm3, %xmm3
	vmovdqa	%xmm4, %xmm14
	vpmaxsd	%xmm6, %xmm5, %xmm5
	vpmaxsd	%xmm6, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm5, %ymm3
	vpsubd	%ymm1, %ymm10, %ymm1
	vpmovzxbd	%xmm13, %ymm4   # ymm4 = xmm13[0],zero,zero,zero,xmm13[1],zero,zero,zero,xmm13[2],zero,zero,zero,xmm13[3],zero,zero,zero,xmm13[4],zero,zero,zero,xmm13[5],zero,zero,zero,xmm13[6],zero,zero,zero,xmm13[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm1, %ymm3, %ymm1
	vpaddd	%ymm1, %ymm9, %ymm1
	vmovq	%xmm1, %rax
	movslq	%eax, %rdx
	movq	%rdx, 2336(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	vpextrq	$1, %xmm1, %rsi
	movslq	%esi, %rdi
	movq	%rdi, 2464(%rsp)        # 8-byte Spill
	sarq	$32, %rsi
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rdi
	movslq	%edi, %rdx
	movq	%rdx, 2432(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	vpextrq	$1, %xmm1, %rbx
	movslq	%ebx, %rdx
	movq	%rdx, 2496(%rsp)        # 8-byte Spill
	sarq	$32, %rbx
	sarq	$32, %r8
	movq	%r8, 2400(%rsp)         # 8-byte Spill
	vpextrq	$1, %xmm7, %r12
	movslq	%r12d, %rdx
	movq	%rdx, 2368(%rsp)        # 8-byte Spill
	sarq	$32, %r12
	movq	%r12, 1104(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm7, %xmm1
	vmovq	%xmm1, %r10
	movslq	%r10d, %r8
	movq	%r8, 1080(%rsp)         # 8-byte Spill
	sarq	$32, %r10
	movq	%r10, 1096(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %r14
	movslq	%r14d, %r11
	movq	%r11, 1088(%rsp)        # 8-byte Spill
	sarq	$32, %r14
	movq	%r14, 1112(%rsp)        # 8-byte Spill
	movl	%r9d, %edx
	andl	$1, %edx
	movl	%edx, 1448(%rsp)        # 4-byte Spill
	sete	%r9b
	andb	1376(%rsp), %r9b        # 1-byte Folded Reload
	movq	2400(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rdx,2), %xmm0, %xmm0
	movq	2368(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rdx,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$4, (%rcx,%r8,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%r10,2), %xmm0, %xmm0
	vpinsrw	$6, (%rcx,%r11,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%r14,2), %xmm0, %xmm4
	jne	.LBB148_164
# BB#253:                               # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vpxor	%ymm1, %ymm1, %ymm1
	movq	2464(%rsp), %rcx        # 8-byte Reload
	movq	2496(%rsp), %r8         # 8-byte Reload
	movq	2432(%rsp), %rdx        # 8-byte Reload
	jmp	.LBB148_254
	.align	16, 0x90
.LBB148_164:                            #   in Loop: Header=BB148_163 Depth=3
	movq	2336(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, (%rcx,%rax,2), %xmm0, %xmm0
	movq	2464(%rsp), %r8         # 8-byte Reload
	vpinsrw	$2, (%rcx,%r8,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%rsi,2), %xmm0, %xmm0
	movq	2432(%rsp), %r10        # 8-byte Reload
	vpinsrw	$4, (%rcx,%r10,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%rdi,2), %xmm0, %xmm0
	movq	2496(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rdx,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%rbx,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm1
	movq	%r8, %rcx
	movq	%rdx, %r8
	movq	%r10, %rdx
.LBB148_254:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	testb	%r9b, %r9b
	jne	.LBB148_255
# BB#256:                               # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	movq	%rdx, 2432(%rsp)        # 8-byte Spill
	movq	%rcx, 2464(%rsp)        # 8-byte Spill
	movq	%r8, 2496(%rsp)         # 8-byte Spill
	movq	%rax, 1280(%rsp)        # 8-byte Spill
	movq	%rdi, 1312(%rsp)        # 8-byte Spill
	movq	%rsi, 1344(%rsp)        # 8-byte Spill
	movq	%rbx, 1376(%rsp)        # 8-byte Spill
	vpxor	%ymm6, %ymm6, %ymm6
	jmp	.LBB148_257
	.align	16, 0x90
.LBB148_255:                            #   in Loop: Header=BB148_163 Depth=3
	movq	%rdx, 2432(%rsp)        # 8-byte Spill
	movq	%rcx, 2464(%rsp)        # 8-byte Spill
	movq	%r8, 2496(%rsp)         # 8-byte Spill
	movq	%rax, 1280(%rsp)        # 8-byte Spill
	movq	%rdi, 1312(%rsp)        # 8-byte Spill
	movq	%rsi, 1344(%rsp)        # 8-byte Spill
	movq	%rbx, 1376(%rsp)        # 8-byte Spill
	vpmovzxwd	%xmm4, %ymm0    # ymm0 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vcvtdq2ps	%ymm0, %ymm6
.LBB148_257:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	movq	1912(%rsp), %rax        # 8-byte Reload
	movq	2560(%rsp), %r11        # 8-byte Reload
	leal	(%rax,%r11), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm4
	vpaddd	%ymm15, %ymm4, %ymm7
	vextracti128	$1, %ymm7, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	movl	1248(%rsp), %r10d       # 4-byte Reload
	idivl	%r10d
	movl	%edx, 952(%rsp)         # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	movl	1216(%rsp), %r9d        # 4-byte Reload
	idivl	%r9d
	movl	%edx, 944(%rsp)         # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	movl	1184(%rsp), %r12d       # 4-byte Reload
	idivl	%r12d
	movl	%edx, 960(%rsp)         # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	movl	2304(%rsp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, %r14d
	vpextrd	$1, %xmm7, %eax
	cltd
	idivl	1056(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r8d
	vmovd	%xmm7, %eax
	cltd
	idivl	1024(%rsp)              # 4-byte Folded Reload
	movl	%edx, %ebx
	vpextrd	$2, %xmm7, %eax
	cltd
	idivl	1016(%rsp)              # 4-byte Folded Reload
	movl	%edx, %esi
	vpextrd	$3, %xmm7, %eax
	cltd
	idivl	1008(%rsp)              # 4-byte Folded Reload
	movl	%edx, %edi
	vmovdqa	.LCPI148_6(%rip), %ymm13 # ymm13 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm13, %ymm4, %ymm4
	vextracti128	$1, %ymm4, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, %r10d
	vmovd	%xmm0, %eax
	cltd
	idivl	%r9d
	movl	%edx, 1248(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%r12d
	movl	%edx, %r12d
	vmovd	944(%rsp), %xmm3        # 4-byte Folded Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vpinsrd	$1, 952(%rsp), %xmm3, %xmm3 # 4-byte Folded Reload
	vmovdqa	1792(%rsp), %ymm5       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm5, %ymm7
	vmovdqa	.LCPI148_3(%rip), %ymm11 # ymm11 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vpshufb	%ymm11, %ymm7, %ymm7
	vpermq	$232, %ymm7, %ymm7      # ymm7 = ymm7[0,2,2,3]
	vmovdqa	1760(%rsp), %ymm5       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm5, %ymm8
	vpshufb	%ymm11, %ymm8, %ymm8
	vpermq	$232, %ymm8, %ymm8      # ymm8 = ymm8[0,2,2,3]
	vmovdqa	.LCPI148_4(%rip), %xmm12 # xmm12 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vpshufb	%xmm12, %xmm8, %xmm5
	vpshufb	%xmm12, %xmm7, %xmm7
	vpunpcklqdq	%xmm5, %xmm7, %xmm5 # xmm5 = xmm7[0],xmm5[0]
	vpxor	.LCPI148_5(%rip), %xmm5, %xmm5
	vmovdqa	1600(%rsp), %ymm7       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm7, %ymm7
	vpshufb	%ymm11, %ymm7, %ymm7
	vpermq	$232, %ymm7, %ymm7      # ymm7 = ymm7[0,2,2,3]
	vmovdqa	1568(%rsp), %ymm8       # 32-byte Reload
	vpcmpgtd	%ymm2, %ymm8, %ymm2
	vpshufb	%ymm11, %ymm2, %ymm2
	vpermq	$232, %ymm2, %ymm2      # ymm2 = ymm2[0,2,2,3]
	vpshufb	%xmm12, %xmm2, %xmm2
	vpshufb	%xmm12, %xmm7, %xmm7
	vpunpcklqdq	%xmm2, %xmm7, %xmm2 # xmm2 = xmm7[0],xmm2[0]
	vpor	%xmm5, %xmm2, %xmm2
	vpinsrd	$2, 960(%rsp), %xmm3, %xmm3 # 4-byte Folded Reload
	vpinsrd	$3, %r14d, %xmm3, %xmm3
	vmovd	%ebx, %xmm5
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, %r9d
	vpinsrd	$1, %r8d, %xmm5, %xmm0
	vpinsrd	$2, %esi, %xmm0, %xmm0
	vpextrd	$1, %xmm4, %eax
	cltd
	idivl	1072(%rsp)              # 4-byte Folded Reload
	movl	%edx, %esi
	vpinsrd	$3, %edi, %xmm0, %xmm0
	vinserti128	$1, %xmm3, %ymm0, %ymm0
	vmovd	%xmm4, %eax
	cltd
	idivl	1064(%rsp)              # 4-byte Folded Reload
	movl	%edx, %ebx
	vpsrad	$31, %ymm0, %ymm3
	vmovdqa	2272(%rsp), %ymm8       # 32-byte Reload
	vpand	%ymm8, %ymm3, %ymm3
	vmovdqa	2112(%rsp), %ymm9       # 32-byte Reload
	vpaddd	%ymm0, %ymm9, %ymm0
	vpaddd	%ymm3, %ymm0, %ymm0
	vpabsd	%xmm0, %xmm3
	vextracti128	$1, %ymm0, %xmm0
	vpabsd	%xmm0, %xmm0
	vinserti128	$1, %xmm0, %ymm3, %ymm0
	vpsubd	%ymm0, %ymm10, %ymm0
	movq	2168(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r11), %eax
	vmovd	%eax, %xmm3
	vpbroadcastd	%xmm3, %ymm7
	vpaddd	%ymm15, %ymm7, %ymm3
	vpminsd	%xmm14, %xmm3, %xmm5
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm14, %xmm3, %xmm3
	vmovdqa	2096(%rsp), %xmm15      # 16-byte Reload
	vpmaxsd	%xmm15, %xmm5, %xmm5
	vpmaxsd	%xmm15, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm5, %ymm3
	vpmovzxbd	%xmm2, %ymm5    # ymm5 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
	vpslld	$31, %ymm5, %ymm5
	vblendvps	%ymm5, %ymm0, %ymm3, %ymm0
	vmovd	1248(%rsp), %xmm3       # 4-byte Folded Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vpextrd	$2, %xmm4, %eax
	cltd
	idivl	1152(%rsp)              # 4-byte Folded Reload
	vpinsrd	$1, %r10d, %xmm3, %xmm3
	vpinsrd	$2, %r12d, %xmm3, %xmm3
	vpinsrd	$3, %r9d, %xmm3, %xmm3
	vpextrd	$3, %xmm4, %eax
	vmovd	%ebx, %xmm4
	vpinsrd	$1, %esi, %xmm4, %xmm4
	vpinsrd	$2, %edx, %xmm4, %xmm4
	cltd
	idivl	1120(%rsp)              # 4-byte Folded Reload
	vpinsrd	$3, %edx, %xmm4, %xmm4
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpsrad	$31, %ymm3, %ymm4
	vpand	%ymm8, %ymm4, %ymm4
	vpaddd	%ymm3, %ymm9, %ymm3
	vpaddd	%ymm4, %ymm3, %ymm3
	vpabsd	%xmm3, %xmm4
	vextracti128	$1, %ymm3, %xmm3
	vpabsd	%xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpaddd	%ymm13, %ymm7, %ymm4
	vpminsd	%xmm14, %xmm4, %xmm5
	vextracti128	$1, %ymm4, %xmm4
	vpminsd	%xmm14, %xmm4, %xmm4
	vpmaxsd	%xmm15, %xmm5, %xmm5
	vpmaxsd	%xmm15, %xmm4, %xmm4
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vpsubd	%ymm3, %ymm10, %ymm3
	vpunpckhbw	%xmm2, %xmm2, %xmm2 # xmm2 = xmm2[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm2, %ymm2    # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vpslld	$31, %ymm2, %ymm2
	vblendvps	%ymm2, %ymm3, %ymm4, %ymm2
	vmovdqa	2240(%rsp), %ymm3       # 32-byte Reload
	vpaddd	%ymm2, %ymm3, %ymm2
	vpaddd	%ymm0, %ymm3, %ymm0
	vpextrq	$1, %xmm0, %r10
	vmovq	%xmm0, %r9
	movslq	%r9d, %rax
	movq	%rax, 1016(%rsp)        # 8-byte Spill
	sarq	$32, %r9
	movslq	%r10d, %rax
	movq	%rax, 960(%rsp)         # 8-byte Spill
	sarq	$32, %r10
	vextracti128	$1, %ymm0, %xmm0
	vpextrq	$1, %xmm0, %r11
	vmovq	%xmm0, %r8
	movslq	%r8d, %rax
	movq	%rax, 1008(%rsp)        # 8-byte Spill
	sarq	$32, %r8
	movslq	%r11d, %rax
	movq	%rax, 2304(%rsp)        # 8-byte Spill
	sarq	$32, %r11
	vpextrq	$1, %xmm2, %rsi
	vmovq	%xmm2, %r14
	movslq	%r14d, %rax
	movq	%rax, 1056(%rsp)        # 8-byte Spill
	sarq	$32, %r14
	movslq	%esi, %r12
	movq	%r12, 1024(%rsp)        # 8-byte Spill
	sarq	$32, %rsi
	vextracti128	$1, %ymm2, %xmm0
	vmovq	%xmm0, %rbx
	movq	1736(%rsp), %rcx        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %edx
	vmovd	%edx, %xmm2
	movslq	%ebx, %rdi
	movq	%rdi, 1216(%rsp)        # 8-byte Spill
	sarq	$32, %rbx
	movq	%rbx, 1064(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rdx
	movslq	%edx, %rax
	movq	%rax, 1248(%rsp)        # 8-byte Spill
	sarq	$32, %rdx
	vpinsrw	$1, (%rcx,%r14,2), %xmm2, %xmm0
	vpinsrw	$2, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%rsi,2), %xmm0, %xmm4
	cmpb	$0, 880(%rsp)           # 1-byte Folded Reload
	movzwl	(%rcx,%rdi,2), %edi
	movl	%edi, 1072(%rsp)        # 4-byte Spill
	movzwl	(%rcx,%rbx,2), %edi
	movl	%edi, 1120(%rsp)        # 4-byte Spill
	movzwl	(%rcx,%rax,2), %eax
	movl	%eax, 1152(%rsp)        # 4-byte Spill
	movzwl	(%rcx,%rdx,2), %eax
	movl	%eax, 1184(%rsp)        # 4-byte Spill
	jne	.LBB148_258
# BB#259:                               # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	movq	960(%rsp), %r12         # 8-byte Reload
	vpxor	%ymm2, %ymm2, %ymm2
	vmovaps	.LCPI148_8(%rip), %ymm11 # ymm11 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI148_9(%rip), %ymm12 # ymm12 = <4,u,5,u,6,u,7,u>
	movq	1536(%rsp), %rdi        # 8-byte Reload
	movq	1016(%rsp), %rax        # 8-byte Reload
	movq	1008(%rsp), %rbx        # 8-byte Reload
	jmp	.LBB148_260
	.align	16, 0x90
.LBB148_258:                            #   in Loop: Header=BB148_163 Depth=3
	movq	1016(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %r12d
	vmovd	%r12d, %xmm0
	vpinsrw	$1, (%rcx,%r9,2), %xmm0, %xmm0
	movq	960(%rsp), %r12         # 8-byte Reload
	vpinsrw	$2, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%r10,2), %xmm0, %xmm0
	movq	1008(%rsp), %rbx        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rbx,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%r8,2), %xmm0, %xmm0
	movq	2304(%rsp), %rdi        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rdi,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%r11,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm2
	vmovaps	.LCPI148_8(%rip), %ymm11 # ymm11 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI148_9(%rip), %ymm12 # ymm12 = <4,u,5,u,6,u,7,u>
	movq	1536(%rsp), %rdi        # 8-byte Reload
.LBB148_260:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	jne	.LBB148_261
# BB#262:                               # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vpxor	%ymm4, %ymm4, %ymm4
	jmp	.LBB148_263
	.align	16, 0x90
.LBB148_261:                            #   in Loop: Header=BB148_163 Depth=3
	vpinsrw	$4, 1072(%rsp), %xmm4, %xmm0 # 4-byte Folded Reload
	vpinsrw	$5, 1120(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$6, 1152(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$7, 1184(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm4
.LBB148_263:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vpermps	%ymm4, %ymm11, %ymm0
	vpermps	%ymm6, %ymm12, %ymm3
	vblendps	$170, %ymm0, %ymm3, %ymm0 # ymm0 = ymm3[0],ymm0[1],ymm3[2],ymm0[3],ymm3[4],ymm0[5],ymm3[6],ymm0[7]
	vmovaps	.LCPI148_10(%rip), %ymm3 # ymm3 = <u,0,u,1,u,2,u,3>
	vmovaps	%ymm3, %ymm7
	vpermps	%ymm4, %ymm7, %ymm3
	vmovaps	.LCPI148_11(%rip), %ymm4 # ymm4 = <0,u,1,u,2,u,3,u>
	vmovaps	%ymm4, %ymm8
	vpermps	%ymm6, %ymm8, %ymm4
	vblendps	$170, %ymm3, %ymm4, %ymm3 # ymm3 = ymm4[0],ymm3[1],ymm4[2],ymm3[3],ymm4[4],ymm3[5],ymm4[6],ymm3[7]
	vpermps	%ymm2, %ymm11, %ymm4
	vpermps	%ymm1, %ymm12, %ymm5
	vblendps	$170, %ymm4, %ymm5, %ymm4 # ymm4 = ymm5[0],ymm4[1],ymm5[2],ymm4[3],ymm5[4],ymm4[5],ymm5[6],ymm4[7]
	vpermps	%ymm2, %ymm7, %ymm2
	vmovaps	%ymm7, %ymm5
	vpermps	%ymm1, %ymm8, %ymm1
	vmovaps	%ymm8, %ymm14
	vblendps	$170, %ymm2, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm2[1],ymm1[2],ymm2[3],ymm1[4],ymm2[5],ymm1[6],ymm2[7]
	vmovups	%ymm1, (%rdi)
	vmovups	%ymm4, 32(%rdi)
	vmovups	%ymm3, 64(%rdi)
	vmovups	%ymm0, 96(%rdi)
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, (%rcx,%r9,2), %xmm0, %xmm0
	vpinsrw	$2, (%rcx,%r12,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%r10,2), %xmm0, %xmm0
	vpinsrw	$4, (%rcx,%rbx,2), %xmm0, %xmm0
	vpinsrw	$5, (%rcx,%r8,2), %xmm0, %xmm0
	movq	2304(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm0, %xmm0
	vpinsrw	$7, (%rcx,%r11,2), %xmm0, %xmm6
	movq	1056(%rsp), %rax        # 8-byte Reload
	vpinsrw	$0, (%rcx,%rax,2), %xmm0, %xmm0
	vpinsrw	$1, (%rcx,%r14,2), %xmm0, %xmm0
	movq	1024(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm0, %xmm0
	vpinsrw	$3, (%rcx,%rsi,2), %xmm0, %xmm1
	movq	1408(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm0
	movq	2400(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm0, %xmm0
	movq	2368(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1104(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1080(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1096(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1088(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1112(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm0, %xmm0
	movq	2336(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm2
	movq	1280(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm2, %xmm2
	movq	2464(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1344(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm2, %xmm2
	movq	2432(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1312(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm2, %xmm2
	movq	2496(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1376(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm2, %xmm2
	movl	936(%rsp), %r14d        # 4-byte Reload
	movl	1456(%rsp), %ebx        # 4-byte Reload
	testl	%ebx, %r14d
	setne	%al
	movq	912(%rsp), %rsi         # 8-byte Reload
	orl	%esi, %ebx
	testb	$1, %bl
	sete	%bl
	orb	%al, %bl
	vpmovzxwd	%xmm0, %ymm4    # ymm4 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpmovzxwd	%xmm2, %ymm0    # ymm0 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm0, %ymm2
	vmovaps	%ymm2, %ymm7
	jne	.LBB148_265
# BB#264:                               # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vxorps	%ymm7, %ymm7, %ymm7
.LBB148_265:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vcvtdq2ps	%ymm4, %ymm4
	vmovaps	%ymm4, %ymm8
	movq	2560(%rsp), %rsi        # 8-byte Reload
	jne	.LBB148_267
# BB#266:                               # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vxorps	%ymm8, %ymm8, %ymm8
.LBB148_267:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vpmovzxwd	%xmm6, %ymm0    # ymm0 = xmm6[0],zero,xmm6[1],zero,xmm6[2],zero,xmm6[3],zero,xmm6[4],zero,xmm6[5],zero,xmm6[6],zero,xmm6[7],zero
	vcvtdq2ps	%ymm0, %ymm6
	vmovaps	%ymm6, %ymm9
	cmpb	$0, 872(%rsp)           # 1-byte Folded Reload
	jne	.LBB148_269
# BB#268:                               # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vxorps	%ymm9, %ymm9, %ymm9
.LBB148_269:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	jne	.LBB148_270
# BB#271:                               # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vpxor	%ymm10, %ymm10, %ymm10
	jmp	.LBB148_272
	.align	16, 0x90
.LBB148_270:                            #   in Loop: Header=BB148_163 Depth=3
	vpinsrw	$4, 1072(%rsp), %xmm1, %xmm0 # 4-byte Folded Reload
	vpinsrw	$5, 1120(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$6, 1152(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrw	$7, 1184(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm10
.LBB148_272:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vpermps	%ymm10, %ymm11, %ymm0
	vpermps	%ymm8, %ymm12, %ymm3
	vblendps	$170, %ymm0, %ymm3, %ymm0 # ymm0 = ymm3[0],ymm0[1],ymm3[2],ymm0[3],ymm3[4],ymm0[5],ymm3[6],ymm0[7]
	vmovaps	%ymm5, %ymm13
	vpermps	%ymm10, %ymm13, %ymm3
	vpermps	%ymm8, %ymm14, %ymm5
	vblendps	$170, %ymm3, %ymm5, %ymm3 # ymm3 = ymm5[0],ymm3[1],ymm5[2],ymm3[3],ymm5[4],ymm3[5],ymm5[6],ymm3[7]
	vpermps	%ymm9, %ymm11, %ymm5
	vpermps	%ymm7, %ymm12, %ymm8
	vblendps	$170, %ymm5, %ymm8, %ymm5 # ymm5 = ymm8[0],ymm5[1],ymm8[2],ymm5[3],ymm8[4],ymm5[5],ymm8[6],ymm5[7]
	vpermps	%ymm9, %ymm13, %ymm8
	vmovaps	%ymm13, %ymm9
	vpermps	%ymm7, %ymm14, %ymm7
	vmovaps	%ymm14, %ymm10
	vblendps	$170, %ymm8, %ymm7, %ymm7 # ymm7 = ymm7[0],ymm8[1],ymm7[2],ymm8[3],ymm7[4],ymm8[5],ymm7[6],ymm8[7]
	movq	1984(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm7, 32(%rax,%rdi)
	vmovups	%ymm5, 64(%rax,%rdi)
	vmovups	%ymm3, 96(%rax,%rdi)
	vmovups	%ymm0, 128(%rax,%rdi)
	movb	1472(%rsp), %al         # 1-byte Reload
	movl	1448(%rsp), %ebx        # 4-byte Reload
	andb	%bl, %al
	jne	.LBB148_274
# BB#273:                               # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vxorps	%ymm2, %ymm2, %ymm2
.LBB148_274:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	testb	%al, %al
	vxorps	%ymm3, %ymm3, %ymm3
	jne	.LBB148_276
# BB#275:                               # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vxorps	%ymm4, %ymm4, %ymm4
.LBB148_276:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	movq	1216(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm1, %xmm0
	movq	1064(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm0, %xmm1
	movq	1248(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	movzwl	(%rcx,%rdx,2), %edx
	cmpb	$0, 892(%rsp)           # 1-byte Folded Reload
	jne	.LBB148_278
# BB#277:                               # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vxorps	%ymm6, %ymm6, %ymm6
.LBB148_278:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	je	.LBB148_280
# BB#279:                               #   in Loop: Header=BB148_163 Depth=3
	vpinsrw	$6, %eax, %xmm1, %xmm0
	vpinsrw	$7, %edx, %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm3
.LBB148_280:                            # %for deinterleaved$3.s0.v15.v1537
                                        #   in Loop: Header=BB148_163 Depth=3
	vpermps	%ymm4, %ymm12, %ymm0
	vpermps	%ymm3, %ymm11, %ymm1
	vblendps	$170, %ymm1, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm1[1],ymm0[2],ymm1[3],ymm0[4],ymm1[5],ymm0[6],ymm1[7]
	vpermps	%ymm4, %ymm10, %ymm1
	vpermps	%ymm3, %ymm9, %ymm3
	vblendps	$170, %ymm3, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm3[1],ymm1[2],ymm3[3],ymm1[4],ymm3[5],ymm1[6],ymm3[7]
	vpermps	%ymm6, %ymm11, %ymm3
	vpermps	%ymm2, %ymm12, %ymm4
	vblendps	$170, %ymm3, %ymm4, %ymm3 # ymm3 = ymm4[0],ymm3[1],ymm4[2],ymm3[3],ymm4[4],ymm3[5],ymm4[6],ymm3[7]
	vpermps	%ymm6, %ymm9, %ymm4
	vpermps	%ymm2, %ymm10, %ymm2
	vblendps	$170, %ymm4, %ymm2, %ymm2 # ymm2 = ymm2[0],ymm4[1],ymm2[2],ymm4[3],ymm2[4],ymm4[5],ymm2[6],ymm4[7]
	movq	1960(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm2, (%rax,%rdi)
	movq	1976(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm3, 96(%rax,%rdi)
	vmovups	%ymm1, 128(%rax,%rdi)
	movq	1968(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm0, (%rax,%rdi)
	addl	$32, %esi
	subq	$-128, %rdi
	movl	1480(%rsp), %eax        # 4-byte Reload
	addl	$-1, %eax
	jne	.LBB148_163
.LBB148_281:                            # %end for deinterleaved$3.s0.v15.v1538
                                        #   in Loop: Header=BB148_161 Depth=2
	movq	912(%rsp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, 912(%rsp)         # 8-byte Spill
	movb	864(%rsp), %dl          # 1-byte Reload
	addb	$1, %dl
	cmpl	728(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB148_161
.LBB148_282:                            # %consume deinterleaved$340
                                        #   in Loop: Header=BB148_119 Depth=1
	movq	%rcx, 1736(%rsp)        # 8-byte Spill
	cmpl	$0, 564(%rsp)           # 4-byte Folded Reload
	jle	.LBB148_290
# BB#283:                               # %produce demosaiced$344.preheader
                                        #   in Loop: Header=BB148_119 Depth=1
	movq	2528(%rsp), %rax        # 8-byte Reload
	cltq
	movq	432(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	shlq	$5, %rax
	movq	288(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rdx
	movq	304(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rsi
	movq	312(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rcx
	movq	448(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rax), %rdi
	movq	400(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edi
	movq	%rdi, 1056(%rsp)        # 8-byte Spill
	movq	392(%rsp), %rax         # 8-byte Reload
	vbroadcastss	(%rax), %ymm0
	vmovaps	%ymm0, 1376(%rsp)       # 32-byte Spill
	movq	384(%rsp), %rax         # 8-byte Reload
	vbroadcastss	(%rax), %ymm0
	vmovaps	%ymm0, 1344(%rsp)       # 32-byte Spill
	movq	376(%rsp), %rax         # 8-byte Reload
	vbroadcastss	(%rax), %ymm0
	vmovaps	%ymm0, 1312(%rsp)       # 32-byte Spill
	movq	368(%rsp), %rax         # 8-byte Reload
	vbroadcastss	(%rax), %ymm0
	vmovaps	%ymm0, 1280(%rsp)       # 32-byte Spill
	movq	360(%rsp), %rax         # 8-byte Reload
	vbroadcastss	(%rax), %ymm0
	vmovaps	%ymm0, 1248(%rsp)       # 32-byte Spill
	movq	352(%rsp), %rax         # 8-byte Reload
	vbroadcastss	(%rax), %ymm0
	vmovaps	%ymm0, 1216(%rsp)       # 32-byte Spill
	movq	344(%rsp), %rax         # 8-byte Reload
	vbroadcastss	(%rax), %ymm0
	vmovaps	%ymm0, 1184(%rsp)       # 32-byte Spill
	movq	336(%rsp), %rax         # 8-byte Reload
	vbroadcastss	(%rax), %ymm0
	vmovaps	%ymm0, 1152(%rsp)       # 32-byte Spill
	movq	328(%rsp), %rax         # 8-byte Reload
	vpbroadcastd	(%rax), %ymm0
	vmovdqa	%ymm0, 1120(%rsp)       # 32-byte Spill
	movq	416(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1112(%rsp)        # 8-byte Spill
	movq	424(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1104(%rsp)        # 8-byte Spill
	movq	2168(%rsp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	.align	16, 0x90
.LBB148_284:                            # %produce demosaiced$344
                                        #   Parent Loop BB148_119 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB148_285 Depth 3
                                        #         Child Loop BB148_286 Depth 4
                                        #       Child Loop BB148_305 Depth 3
                                        #         Child Loop BB148_306 Depth 4
                                        #       Child Loop BB148_321 Depth 3
                                        #         Child Loop BB148_322 Depth 4
                                        #       Child Loop BB148_340 Depth 3
                                        #         Child Loop BB148_341 Depth 4
	movq	%rdi, 1064(%rsp)        # 8-byte Spill
	movl	%eax, 1072(%rsp)        # 4-byte Spill
	movq	%rcx, 1080(%rsp)        # 8-byte Spill
	movq	%rsi, 1088(%rsp)        # 8-byte Spill
	movq	%rdx, 1096(%rsp)        # 8-byte Spill
	cltq
	leaq	(%rdx,%rax), %rdx
	leaq	2592(%rsp,%rdx,4), %rdx
	movq	%rdx, 1480(%rsp)        # 8-byte Spill
	leaq	(%rsi,%rax), %rdx
	leaq	2592(%rsp,%rdx,4), %rdx
	movq	%rdx, 1472(%rsp)        # 8-byte Spill
	leaq	(%rax,%rcx), %rax
	leaq	2592(%rsp,%rax,4), %r14
	shll	$5, %edi
	movq	2168(%rsp), %rax        # 8-byte Reload
	addl	%eax, %edi
	movq	%rdi, 1536(%rsp)        # 8-byte Spill
	xorl	%eax, %eax
	xorl	%edx, %edx
	vmovaps	1696(%rsp), %xmm4       # 16-byte Reload
	vmovaps	592(%rsp), %xmm6        # 16-byte Reload
	vxorps	%xmm11, %xmm11, %xmm11
	.align	16, 0x90
.LBB148_285:                            # %for demosaiced$3.s0.v15.v1545
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_284 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB148_286 Depth 4
	movq	%rdx, 1408(%rsp)        # 8-byte Spill
	movq	%rax, 1448(%rsp)        # 8-byte Spill
	movq	%r14, 1456(%rsp)        # 8-byte Spill
	movq	1536(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rdx,8), %edx
	movl	%eax, %r8d
	andl	$1, %r8d
	movq	2168(%rsp), %rax        # 8-byte Reload
	subl	%eax, %edx
	movl	1464(%rsp), %edi        # 4-byte Reload
	xorl	%esi, %esi
	movq	1504(%rsp), %r9         # 8-byte Reload
	.align	16, 0x90
.LBB148_286:                            # %for demosaiced$3.s0.v1649
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_284 Depth=2
                                        #       Parent Loop BB148_285 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%edi, %eax
	andl	$3, %eax
	movq	2552(%rsp), %rcx        # 8-byte Reload
	imull	%ecx, %eax
	addl	$1, %r9d
	movl	%r9d, %r10d
	andl	$3, %r10d
	imull	%ecx, %r10d
	movq	2528(%rsp), %rbx        # 8-byte Reload
	leal	(%rbx,%rsi), %r12d
	addl	%edx, %eax
	addl	%edx, %r10d
	movl	%r12d, %r11d
	andl	$3, %r11d
	imull	%ecx, %r11d
	addl	%edx, %r11d
	cltq
	vmovups	(%r13,%rax,4), %xmm0
	vmovaps	%xmm0, 2272(%rsp)       # 16-byte Spill
	vmovups	16(%r13,%rax,4), %xmm1
	vmovaps	%xmm1, 2240(%rsp)       # 16-byte Spill
	vshufps	$221, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[1,3],xmm1[1,3]
	vsubps	%xmm6, %xmm0, %xmm0
	vmulps	%xmm0, %xmm4, %xmm0
	vmovaps	%xmm0, 2432(%rsp)       # 16-byte Spill
	movslq	%r10d, %rbx
	vmovups	(%r13,%rbx,4), %xmm14
	vmovups	16(%r13,%rbx,4), %xmm8
	vshufps	$221, %xmm8, %xmm14, %xmm0 # xmm0 = xmm14[1,3],xmm8[1,3]
	vsubps	%xmm6, %xmm0, %xmm0
	vmulps	%xmm0, %xmm4, %xmm12
	vmovups	8(%r13,%rax,4), %xmm0
	vmovaps	%xmm0, 2400(%rsp)       # 16-byte Spill
	vmovups	24(%r13,%rax,4), %xmm1
	vmovaps	%xmm1, 2368(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0,2],xmm1[0,2]
	vsubps	%xmm6, %xmm0, %xmm0
	vmulps	%xmm0, %xmm4, %xmm13
	vmovups	8(%r13,%rbx,4), %xmm0
	vmovaps	%xmm0, 2336(%rsp)       # 16-byte Spill
	vmovups	24(%r13,%rbx,4), %xmm1
	vmovaps	%xmm1, 2304(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0,2],xmm1[0,2]
	vsubps	%xmm6, %xmm0, %xmm0
	vmulps	%xmm0, %xmm4, %xmm15
	movslq	%r11d, %rax
	vmovups	(%r13,%rax,4), %xmm7
	vmovups	16(%r13,%rax,4), %xmm1
	vshufps	$221, %xmm1, %xmm7, %xmm0 # xmm0 = xmm7[1,3],xmm1[1,3]
	vsubps	%xmm6, %xmm0, %xmm0
	vmulps	%xmm0, %xmm4, %xmm2
	vmovups	8(%r13,%rax,4), %xmm10
	vmovups	24(%r13,%rax,4), %xmm9
	vshufps	$136, %xmm9, %xmm10, %xmm0 # xmm0 = xmm10[0,2],xmm9[0,2]
	vsubps	%xmm6, %xmm0, %xmm0
	vmovaps	%xmm6, %xmm5
	vmovaps	%xmm4, %xmm6
	vmulps	%xmm0, %xmm6, %xmm4
	vbroadcastss	.LCPI148_13(%rip), %xmm0
	vminps	%xmm0, %xmm4, %xmm4
	vmaxps	%xmm11, %xmm4, %xmm3
	vmovaps	%xmm6, %xmm4
	vmovaps	%xmm5, %xmm6
	vminps	%xmm0, %xmm2, %xmm2
	vxorps	%xmm5, %xmm5, %xmm5
	vmaxps	%xmm5, %xmm2, %xmm11
	testl	%r8d, %r8d
	vbroadcastss	.LCPI148_14(%rip), %xmm2
	vmovaps	%xmm2, 2560(%rsp)       # 16-byte Spill
	vmovaps	%xmm11, 2464(%rsp)      # 16-byte Spill
	je	.LBB148_288
# BB#287:                               # %for demosaiced$3.s0.v1649
                                        #   in Loop: Header=BB148_286 Depth=4
	vshufps	$136, %xmm1, %xmm7, %xmm1 # xmm1 = xmm7[0,2],xmm1[0,2]
	vsubps	%xmm6, %xmm1, %xmm1
	vmulps	%xmm1, %xmm4, %xmm1
	vminps	%xmm0, %xmm1, %xmm1
	vmaxps	%xmm5, %xmm1, %xmm1
	vaddps	%xmm3, %xmm1, %xmm1
	vmulps	2560(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
	vmovaps	%xmm1, 2464(%rsp)       # 16-byte Spill
.LBB148_288:                            # %for demosaiced$3.s0.v1649
                                        #   in Loop: Header=BB148_286 Depth=4
	vmovaps	%xmm3, 2496(%rsp)       # 16-byte Spill
	vminps	%xmm0, %xmm15, %xmm1
	vmaxps	%xmm5, %xmm1, %xmm7
	vminps	%xmm0, %xmm13, %xmm1
	vmaxps	%xmm5, %xmm1, %xmm13
	vbroadcastss	.LCPI148_15(%rip), %xmm15
	vminps	%xmm0, %xmm12, %xmm1
	vmaxps	%xmm5, %xmm1, %xmm12
	vmovaps	2432(%rsp), %xmm1       # 16-byte Reload
	vminps	%xmm0, %xmm1, %xmm1
	vmaxps	%xmm5, %xmm1, %xmm1
	je	.LBB148_289
# BB#292:                               # %for demosaiced$3.s0.v1649
                                        #   in Loop: Header=BB148_286 Depth=4
	vmovaps	%xmm1, 2432(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm8, %xmm14, %xmm1 # xmm1 = xmm14[0,2],xmm8[0,2]
	vsubps	%xmm6, %xmm1, %xmm1
	vmulps	%xmm1, %xmm4, %xmm1
	vminps	%xmm0, %xmm1, %xmm1
	vmaxps	%xmm5, %xmm1, %xmm1
	vaddps	%xmm7, %xmm1, %xmm1
	vmovaps	2272(%rsp), %xmm2       # 16-byte Reload
	vshufps	$136, 2240(%rsp), %xmm2, %xmm2 # 16-byte Folded Reload
                                        # xmm2 = xmm2[0,2],mem[0,2]
	vsubps	%xmm6, %xmm2, %xmm2
	vmulps	%xmm2, %xmm4, %xmm2
	vminps	%xmm0, %xmm2, %xmm2
	vmaxps	%xmm5, %xmm2, %xmm2
	vxorps	%xmm5, %xmm5, %xmm5
	vaddps	%xmm13, %xmm2, %xmm2
	vaddps	%xmm1, %xmm2, %xmm1
	vmulps	%xmm15, %xmm1, %xmm3
	jmp	.LBB148_293
	.align	16, 0x90
.LBB148_289:                            #   in Loop: Header=BB148_286 Depth=4
	vxorps	%xmm5, %xmm5, %xmm5
	vmovaps	%xmm1, 2432(%rsp)       # 16-byte Spill
	vaddps	%xmm12, %xmm1, %xmm1
	vmulps	2560(%rsp), %xmm1, %xmm3 # 16-byte Folded Reload
.LBB148_293:                            # %for demosaiced$3.s0.v1649
                                        #   in Loop: Header=BB148_286 Depth=4
	jne	.LBB148_295
# BB#294:                               # %for demosaiced$3.s0.v1649
                                        #   in Loop: Header=BB148_286 Depth=4
	vshufps	$221, %xmm9, %xmm10, %xmm1 # xmm1 = xmm10[1,3],xmm9[1,3]
	vsubps	%xmm6, %xmm1, %xmm1
	vmulps	%xmm1, %xmm4, %xmm1
	vminps	%xmm0, %xmm1, %xmm1
	vmaxps	%xmm5, %xmm1, %xmm1
	vaddps	%xmm1, %xmm11, %xmm1
	vmulps	2560(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
	vmovaps	%xmm1, 2496(%rsp)       # 16-byte Spill
.LBB148_295:                            # %for demosaiced$3.s0.v1649
                                        #   in Loop: Header=BB148_286 Depth=4
	jne	.LBB148_296
# BB#297:                               # %for demosaiced$3.s0.v1649
                                        #   in Loop: Header=BB148_286 Depth=4
	vmovaps	2336(%rsp), %xmm1       # 16-byte Reload
	vshufps	$221, 2304(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[1,3],mem[1,3]
	vsubps	%xmm6, %xmm1, %xmm1
	vmulps	%xmm1, %xmm4, %xmm1
	vminps	%xmm0, %xmm1, %xmm1
	vxorps	%xmm11, %xmm11, %xmm11
	vmaxps	%xmm11, %xmm1, %xmm1
	vaddps	%xmm1, %xmm12, %xmm1
	vmovaps	2400(%rsp), %xmm2       # 16-byte Reload
	vshufps	$221, 2368(%rsp), %xmm2, %xmm2 # 16-byte Folded Reload
                                        # xmm2 = xmm2[1,3],mem[1,3]
	vsubps	%xmm6, %xmm2, %xmm2
	vmulps	%xmm2, %xmm4, %xmm2
	vminps	%xmm0, %xmm2, %xmm2
	vmaxps	%xmm11, %xmm2, %xmm2
	vaddps	2432(%rsp), %xmm2, %xmm2 # 16-byte Folded Reload
	vaddps	%xmm1, %xmm2, %xmm1
	vmulps	%xmm15, %xmm1, %xmm1
	jmp	.LBB148_298
	.align	16, 0x90
.LBB148_296:                            #   in Loop: Header=BB148_286 Depth=4
	vaddps	%xmm7, %xmm13, %xmm1
	vmulps	2560(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
	vxorps	%xmm11, %xmm11, %xmm11
.LBB148_298:                            # %for demosaiced$3.s0.v1649
                                        #   in Loop: Header=BB148_286 Depth=4
	andl	$1, %r12d
	je	.LBB148_300
# BB#299:                               # %for demosaiced$3.s0.v1649
                                        #   in Loop: Header=BB148_286 Depth=4
	vmovaps	2464(%rsp), %xmm2       # 16-byte Reload
	vmovaps	%xmm2, %xmm3
.LBB148_300:                            # %for demosaiced$3.s0.v1649
                                        #   in Loop: Header=BB148_286 Depth=4
	testl	%r12d, %r12d
	je	.LBB148_302
# BB#301:                               # %for demosaiced$3.s0.v1649
                                        #   in Loop: Header=BB148_286 Depth=4
	vmovaps	2496(%rsp), %xmm1       # 16-byte Reload
.LBB148_302:                            # %for demosaiced$3.s0.v1649
                                        #   in Loop: Header=BB148_286 Depth=4
	vmovaps	.LCPI148_10(%rip), %ymm2 # ymm2 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm1, %ymm2, %ymm1
	vmovaps	.LCPI148_11(%rip), %ymm2 # ymm2 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm3, %ymm2, %ymm2
	vblendps	$170, %ymm1, %ymm2, %ymm1 # ymm1 = ymm2[0],ymm1[1],ymm2[2],ymm1[3],ymm2[4],ymm1[5],ymm2[6],ymm1[7]
	vmovups	%ymm1, (%r14)
	subq	$-128, %r14
	addl	$1, %esi
	addl	$1, %edi
	cmpl	$2, %esi
	jne	.LBB148_286
# BB#303:                               # %end for demosaiced$3.s0.v1650
                                        #   in Loop: Header=BB148_285 Depth=3
	movq	1448(%rsp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	1408(%rsp), %rdx        # 8-byte Reload
	addl	$1, %edx
	movq	1456(%rsp), %r14        # 8-byte Reload
	addq	$32, %r14
	cmpq	$4, %rax
	jne	.LBB148_285
# BB#304:                               # %for demosaiced$3.s0.v15.v1552.preheader
                                        #   in Loop: Header=BB148_284 Depth=2
	vmovaps	%xmm6, 592(%rsp)        # 16-byte Spill
	vmovaps	%xmm4, 1696(%rsp)       # 16-byte Spill
	xorl	%r10d, %r10d
	xorl	%r14d, %r14d
	vmovaps	528(%rsp), %xmm8        # 16-byte Reload
	vmovaps	512(%rsp), %xmm9        # 16-byte Reload
	vmovaps	640(%rsp), %xmm14       # 16-byte Reload
	movq	1472(%rsp), %rcx        # 8-byte Reload
	.align	16, 0x90
.LBB148_305:                            # %for demosaiced$3.s0.v15.v1552
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_284 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB148_306 Depth 4
	movq	%rcx, 1472(%rsp)        # 8-byte Spill
	movq	1536(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r14,8), %r11d
	movq	2168(%rsp), %rax        # 8-byte Reload
	subl	%eax, %r11d
	addl	896(%rsp), %r11d        # 4-byte Folded Reload
	movl	860(%rsp), %eax         # 4-byte Reload
	movq	%rcx, %rbx
	movq	1504(%rsp), %rcx        # 8-byte Reload
	movl	%ecx, %r12d
	.align	16, 0x90
.LBB148_306:                            # %for demosaiced$3.s0.v1656
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_284 Depth=2
                                        #       Parent Loop BB148_305 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%eax, %edx
	leal	1(%rdx), %eax
	movl	%eax, %ecx
	andl	$3, %ecx
	movq	2552(%rsp), %rsi        # 8-byte Reload
	imull	%esi, %ecx
	leal	(%rcx,%r11), %ecx
	addl	$4, %edx
	andl	$3, %edx
	imull	%esi, %edx
	addl	$1, %r12d
	movl	%r12d, %edi
	andl	$3, %edi
	imull	%esi, %edi
	leal	(%rdx,%r11), %edx
	leal	(%rdi,%r11), %edi
	movslq	%ecx, %rcx
	vmovups	40(%r13,%rcx,4), %xmm2
	vmovups	56(%r13,%rcx,4), %xmm3
	vshufps	$136, %xmm3, %xmm2, %xmm1 # xmm1 = xmm2[0,2],xmm3[0,2]
	vsubps	%xmm9, %xmm1, %xmm1
	vmulps	%xmm1, %xmm8, %xmm1
	movslq	%edi, %rdi
	vmovups	32(%r13,%rdi,4), %xmm4
	vshufps	$221, 48(%r13,%rdi,4), %xmm4, %xmm4 # xmm4 = xmm4[1,3],mem[1,3]
	vsubps	%xmm9, %xmm4, %xmm4
	vmulps	%xmm4, %xmm8, %xmm4
	vminps	%xmm0, %xmm4, %xmm4
	vmaxps	%xmm11, %xmm4, %xmm4
	movslq	%edx, %rdx
	vmovups	32(%r13,%rdx,4), %xmm5
	vshufps	$221, 48(%r13,%rdx,4), %xmm5, %xmm5 # xmm5 = xmm5[1,3],mem[1,3]
	vsubps	%xmm9, %xmm5, %xmm5
	vmulps	%xmm5, %xmm8, %xmm5
	vminps	%xmm0, %xmm5, %xmm5
	vmaxps	%xmm11, %xmm5, %xmm5
	vaddps	%xmm5, %xmm4, %xmm4
	vminps	%xmm0, %xmm1, %xmm1
	vmaxps	%xmm11, %xmm1, %xmm1
	vmovups	32(%r13,%rcx,4), %xmm5
	vmovups	48(%r13,%rcx,4), %xmm6
	vshufps	$136, %xmm6, %xmm5, %xmm7 # xmm7 = xmm5[0,2],xmm6[0,2]
	vsubps	%xmm9, %xmm7, %xmm7
	vmulps	%xmm7, %xmm8, %xmm7
	vminps	%xmm0, %xmm7, %xmm7
	vmaxps	%xmm11, %xmm7, %xmm7
	vaddps	%xmm7, %xmm1, %xmm7
	vaddps	%xmm7, %xmm4, %xmm7
	vshufps	$221, %xmm6, %xmm5, %xmm4 # xmm4 = xmm5[1,3],xmm6[1,3]
	vsubps	%xmm9, %xmm4, %xmm4
	vmulps	%xmm4, %xmm8, %xmm5
	vmovups	40(%r13,%rdi,4), %xmm4
	vshufps	$136, 56(%r13,%rdi,4), %xmm4, %xmm4 # xmm4 = xmm4[0,2],mem[0,2]
	vsubps	%xmm9, %xmm4, %xmm4
	vmulps	%xmm4, %xmm8, %xmm4
	vminps	%xmm0, %xmm4, %xmm4
	vmaxps	%xmm11, %xmm4, %xmm4
	vmovups	40(%r13,%rdx,4), %xmm6
	vshufps	$136, 56(%r13,%rdx,4), %xmm6, %xmm6 # xmm6 = xmm6[0,2],mem[0,2]
	vsubps	%xmm9, %xmm6, %xmm6
	vmulps	%xmm6, %xmm8, %xmm6
	vminps	%xmm0, %xmm6, %xmm6
	vmaxps	%xmm11, %xmm6, %xmm6
	vaddps	%xmm6, %xmm4, %xmm4
	vshufps	$221, %xmm3, %xmm2, %xmm2 # xmm2 = xmm2[1,3],xmm3[1,3]
	vsubps	%xmm9, %xmm2, %xmm2
	vmulps	%xmm2, %xmm8, %xmm2
	vminps	%xmm0, %xmm2, %xmm2
	vmaxps	%xmm11, %xmm2, %xmm3
	vminps	%xmm0, %xmm5, %xmm2
	vmaxps	%xmm11, %xmm2, %xmm2
	vaddps	%xmm2, %xmm3, %xmm6
	vmulps	%xmm15, %xmm7, %xmm5
	vmovaps	%xmm5, %xmm3
	testl	%r8d, %r8d
	je	.LBB148_308
# BB#307:                               # %for demosaiced$3.s0.v1656
                                        #   in Loop: Header=BB148_306 Depth=4
	vmovaps	%xmm2, %xmm3
.LBB148_308:                            # %for demosaiced$3.s0.v1656
                                        #   in Loop: Header=BB148_306 Depth=4
	vaddps	%xmm4, %xmm6, %xmm4
	je	.LBB148_310
# BB#309:                               # %for demosaiced$3.s0.v1656
                                        #   in Loop: Header=BB148_306 Depth=4
	vmovaps	%xmm5, %xmm2
.LBB148_310:                            # %for demosaiced$3.s0.v1656
                                        #   in Loop: Header=BB148_306 Depth=4
	vmulps	%xmm15, %xmm4, %xmm5
	vmovaps	%xmm5, %xmm4
	jne	.LBB148_312
# BB#311:                               # %for demosaiced$3.s0.v1656
                                        #   in Loop: Header=BB148_306 Depth=4
	vmovaps	%xmm1, %xmm4
.LBB148_312:                            # %for demosaiced$3.s0.v1656
                                        #   in Loop: Header=BB148_306 Depth=4
	jne	.LBB148_314
# BB#313:                               # %for demosaiced$3.s0.v1656
                                        #   in Loop: Header=BB148_306 Depth=4
	vmovaps	%xmm5, %xmm1
.LBB148_314:                            # %for demosaiced$3.s0.v1656
                                        #   in Loop: Header=BB148_306 Depth=4
	movl	%eax, %edx
	andl	$1, %edx
	je	.LBB148_316
# BB#315:                               # %for demosaiced$3.s0.v1656
                                        #   in Loop: Header=BB148_306 Depth=4
	vmovaps	%xmm4, %xmm1
.LBB148_316:                            # %for demosaiced$3.s0.v1656
                                        #   in Loop: Header=BB148_306 Depth=4
	testl	%edx, %edx
	je	.LBB148_318
# BB#317:                               # %for demosaiced$3.s0.v1656
                                        #   in Loop: Header=BB148_306 Depth=4
	vmovaps	%xmm3, %xmm2
.LBB148_318:                            # %for demosaiced$3.s0.v1656
                                        #   in Loop: Header=BB148_306 Depth=4
	vmovaps	.LCPI148_10(%rip), %ymm3 # ymm3 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm1, %ymm3, %ymm1
	vmovaps	.LCPI148_11(%rip), %ymm3 # ymm3 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm2, %ymm3, %ymm2
	vblendps	$170, %ymm1, %ymm2, %ymm1 # ymm1 = ymm2[0],ymm1[1],ymm2[2],ymm1[3],ymm2[4],ymm1[5],ymm2[6],ymm1[7]
	vmovups	%ymm1, (%rbx)
	subq	$-128, %rbx
	cmpl	%r12d, %r9d
	jne	.LBB148_306
# BB#319:                               # %end for demosaiced$3.s0.v1657
                                        #   in Loop: Header=BB148_305 Depth=3
	addq	$1, %r10
	addl	$1, %r14d
	movq	1472(%rsp), %rcx        # 8-byte Reload
	addq	$32, %rcx
	cmpq	$4, %r10
	jne	.LBB148_305
# BB#320:                               # %for demosaiced$3.s0.v15.v1559.preheader
                                        #   in Loop: Header=BB148_284 Depth=2
	vmovaps	%xmm15, 2272(%rsp)      # 16-byte Spill
	movq	552(%rsp), %rax         # 8-byte Reload
	leal	(%r9,%rax), %r10d
	xorl	%eax, %eax
	xorl	%edx, %edx
	vmovaps	1488(%rsp), %xmm6       # 16-byte Reload
	movq	1480(%rsp), %r12        # 8-byte Reload
	.align	16, 0x90
.LBB148_321:                            # %for demosaiced$3.s0.v15.v1559
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_284 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB148_322 Depth 4
	movq	%rdx, 1488(%rsp)        # 8-byte Spill
	movq	%rax, 2240(%rsp)        # 8-byte Spill
	movq	%r12, 1480(%rsp)        # 8-byte Spill
	movq	1536(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rdx,8), %r9d
	movq	2168(%rsp), %rax        # 8-byte Reload
	subl	%eax, %r9d
	movq	904(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r9d
	movl	856(%rsp), %ebx         # 4-byte Reload
	xorl	%esi, %esi
	movl	1464(%rsp), %r14d       # 4-byte Reload
	.align	16, 0x90
.LBB148_322:                            # %for demosaiced$3.s0.v1663
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_284 Depth=2
                                        #       Parent Loop BB148_321 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	2528(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rsi), %edi
	movl	%edi, %ecx
	andl	$3, %ecx
	movq	2552(%rsp), %rdx        # 8-byte Reload
	imull	%edx, %ecx
	leal	(%rcx,%r9), %ecx
	movl	%r14d, %eax
	andl	$3, %eax
	imull	%edx, %eax
	movl	%ebx, %r11d
	andl	$3, %r11d
	imull	%edx, %r11d
	leal	(%rax,%r9), %eax
	leal	(%r11,%r9), %edx
	movslq	%ecx, %rcx
	vmovups	72(%r13,%rcx,4), %xmm1
	vmovaps	%xmm1, 2432(%rsp)       # 16-byte Spill
	vmovups	88(%r13,%rcx,4), %xmm2
	vmovaps	%xmm2, 2400(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm2, %xmm1, %xmm1 # xmm1 = xmm1[0,2],xmm2[0,2]
	vsubps	%xmm6, %xmm1, %xmm1
	vmulps	%xmm1, %xmm14, %xmm1
	vmovaps	%xmm1, 2496(%rsp)       # 16-byte Spill
	vmovups	64(%r13,%rcx,4), %xmm10
	vmovups	80(%r13,%rcx,4), %xmm1
	vshufps	$221, %xmm1, %xmm10, %xmm2 # xmm2 = xmm10[1,3],xmm1[1,3]
	vsubps	%xmm6, %xmm2, %xmm2
	vmulps	%xmm2, %xmm14, %xmm2
	vmovaps	%xmm2, 2464(%rsp)       # 16-byte Spill
	cltq
	vmovups	72(%r13,%rax,4), %xmm2
	vmovaps	%xmm2, 2368(%rsp)       # 16-byte Spill
	vmovups	88(%r13,%rax,4), %xmm3
	vmovaps	%xmm3, 2336(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm3, %xmm2, %xmm2 # xmm2 = xmm2[0,2],xmm3[0,2]
	vsubps	%xmm6, %xmm2, %xmm2
	vmulps	%xmm2, %xmm14, %xmm2
	movslq	%edx, %rcx
	vmovups	72(%r13,%rcx,4), %xmm15
	vmovups	88(%r13,%rcx,4), %xmm8
	vshufps	$136, %xmm8, %xmm15, %xmm3 # xmm3 = xmm15[0,2],xmm8[0,2]
	vsubps	%xmm6, %xmm3, %xmm3
	vmulps	%xmm3, %xmm14, %xmm4
	vmovups	64(%r13,%rax,4), %xmm3
	vmovups	80(%r13,%rax,4), %xmm12
	vshufps	$221, %xmm12, %xmm3, %xmm5 # xmm5 = xmm3[1,3],xmm12[1,3]
	vsubps	%xmm6, %xmm5, %xmm5
	vmulps	%xmm5, %xmm14, %xmm5
	vmovups	64(%r13,%rcx,4), %xmm9
	vmovups	80(%r13,%rcx,4), %xmm13
	vshufps	$221, %xmm13, %xmm9, %xmm7 # xmm7 = xmm9[1,3],xmm13[1,3]
	vsubps	%xmm6, %xmm7, %xmm7
	vmulps	%xmm7, %xmm14, %xmm7
	vminps	%xmm0, %xmm7, %xmm7
	vxorps	%xmm11, %xmm11, %xmm11
	vmaxps	%xmm11, %xmm7, %xmm7
	vminps	%xmm0, %xmm5, %xmm5
	vmaxps	%xmm11, %xmm5, %xmm5
	vminps	%xmm0, %xmm4, %xmm4
	vmaxps	%xmm11, %xmm4, %xmm4
	vminps	%xmm0, %xmm2, %xmm2
	vmaxps	%xmm11, %xmm2, %xmm2
	testl	%r8d, %r8d
	je	.LBB148_323
# BB#324:                               # %for demosaiced$3.s0.v1663
                                        #   in Loop: Header=BB148_322 Depth=4
	vaddps	%xmm7, %xmm5, %xmm3
	vmovaps	%xmm7, 2304(%rsp)       # 16-byte Spill
	vmulps	2560(%rsp), %xmm3, %xmm9 # 16-byte Folded Reload
	jmp	.LBB148_325
	.align	16, 0x90
.LBB148_323:                            #   in Loop: Header=BB148_322 Depth=4
	vmovaps	%xmm7, 2304(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm13, %xmm9, %xmm7 # xmm7 = xmm9[0,2],xmm13[0,2]
	vsubps	%xmm6, %xmm7, %xmm7
	vmulps	%xmm7, %xmm14, %xmm7
	vminps	%xmm0, %xmm7, %xmm7
	vmaxps	%xmm11, %xmm7, %xmm7
	vaddps	%xmm7, %xmm4, %xmm7
	vshufps	$136, %xmm12, %xmm3, %xmm3 # xmm3 = xmm3[0,2],xmm12[0,2]
	vsubps	%xmm6, %xmm3, %xmm3
	vmulps	%xmm3, %xmm14, %xmm3
	vminps	%xmm0, %xmm3, %xmm3
	vmaxps	%xmm11, %xmm3, %xmm3
	vaddps	%xmm3, %xmm2, %xmm3
	vaddps	%xmm7, %xmm3, %xmm3
	vmulps	2272(%rsp), %xmm3, %xmm9 # 16-byte Folded Reload
.LBB148_325:                            # %for demosaiced$3.s0.v1663
                                        #   in Loop: Header=BB148_322 Depth=4
	vmovaps	2464(%rsp), %xmm3       # 16-byte Reload
	vminps	%xmm0, %xmm3, %xmm3
	vmaxps	%xmm11, %xmm3, %xmm3
	vmovaps	2496(%rsp), %xmm7       # 16-byte Reload
	vminps	%xmm0, %xmm7, %xmm7
	vmaxps	%xmm11, %xmm7, %xmm13
	vxorps	%xmm7, %xmm7, %xmm7
	je	.LBB148_326
# BB#327:                               # %for demosaiced$3.s0.v1663
                                        #   in Loop: Header=BB148_322 Depth=4
	vmovaps	%xmm3, %xmm1
	jmp	.LBB148_328
	.align	16, 0x90
.LBB148_326:                            #   in Loop: Header=BB148_322 Depth=4
	vshufps	$136, %xmm1, %xmm10, %xmm1 # xmm1 = xmm10[0,2],xmm1[0,2]
	vsubps	%xmm6, %xmm1, %xmm1
	vmulps	%xmm1, %xmm14, %xmm1
	vminps	%xmm0, %xmm1, %xmm1
	vmaxps	%xmm7, %xmm1, %xmm1
	vaddps	%xmm1, %xmm13, %xmm1
	vmulps	2560(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
.LBB148_328:                            # %for demosaiced$3.s0.v1663
                                        #   in Loop: Header=BB148_322 Depth=4
	jne	.LBB148_329
# BB#330:                               # %for demosaiced$3.s0.v1663
                                        #   in Loop: Header=BB148_322 Depth=4
	vaddps	%xmm4, %xmm2, %xmm2
	vmulps	2560(%rsp), %xmm2, %xmm2 # 16-byte Folded Reload
	jmp	.LBB148_331
	.align	16, 0x90
.LBB148_329:                            #   in Loop: Header=BB148_322 Depth=4
	vshufps	$221, %xmm8, %xmm15, %xmm2 # xmm2 = xmm15[1,3],xmm8[1,3]
	vsubps	%xmm6, %xmm2, %xmm2
	vmulps	%xmm2, %xmm14, %xmm2
	vminps	%xmm0, %xmm2, %xmm2
	vmaxps	%xmm7, %xmm2, %xmm2
	vaddps	2304(%rsp), %xmm2, %xmm2 # 16-byte Folded Reload
	vmovaps	2368(%rsp), %xmm4       # 16-byte Reload
	vshufps	$221, 2336(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
                                        # xmm4 = xmm4[1,3],mem[1,3]
	vsubps	%xmm6, %xmm4, %xmm4
	vmulps	%xmm4, %xmm14, %xmm4
	vminps	%xmm0, %xmm4, %xmm4
	vmaxps	%xmm7, %xmm4, %xmm4
	vaddps	%xmm5, %xmm4, %xmm4
	vaddps	%xmm2, %xmm4, %xmm2
	vmulps	2272(%rsp), %xmm2, %xmm2 # 16-byte Folded Reload
.LBB148_331:                            # %for demosaiced$3.s0.v1663
                                        #   in Loop: Header=BB148_322 Depth=4
	je	.LBB148_333
# BB#332:                               #   in Loop: Header=BB148_322 Depth=4
	vmovaps	2432(%rsp), %xmm4       # 16-byte Reload
	vshufps	$221, 2400(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
                                        # xmm4 = xmm4[1,3],mem[1,3]
	vsubps	%xmm6, %xmm4, %xmm4
	vmulps	%xmm4, %xmm14, %xmm4
	vminps	%xmm0, %xmm4, %xmm4
	vmaxps	%xmm7, %xmm4, %xmm4
	vaddps	%xmm3, %xmm4, %xmm3
	vmulps	2560(%rsp), %xmm3, %xmm13 # 16-byte Folded Reload
.LBB148_333:                            # %for demosaiced$3.s0.v1663
                                        #   in Loop: Header=BB148_322 Depth=4
	andl	$1, %edi
	je	.LBB148_335
# BB#334:                               # %for demosaiced$3.s0.v1663
                                        #   in Loop: Header=BB148_322 Depth=4
	vmovaps	%xmm2, %xmm13
.LBB148_335:                            # %for demosaiced$3.s0.v1663
                                        #   in Loop: Header=BB148_322 Depth=4
	testl	%edi, %edi
	je	.LBB148_337
# BB#336:                               # %for demosaiced$3.s0.v1663
                                        #   in Loop: Header=BB148_322 Depth=4
	vmovaps	%xmm9, %xmm1
.LBB148_337:                            # %for demosaiced$3.s0.v1663
                                        #   in Loop: Header=BB148_322 Depth=4
	vmovaps	.LCPI148_10(%rip), %ymm2 # ymm2 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm13, %ymm2, %ymm2
	vmovaps	.LCPI148_11(%rip), %ymm3 # ymm3 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm1, %ymm3, %ymm1
	vblendps	$170, %ymm2, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm2[1],ymm1[2],ymm2[3],ymm1[4],ymm2[5],ymm1[6],ymm2[7]
	vmovups	%ymm1, (%r12)
	subq	$-128, %r12
	addl	$1, %r14d
	addl	$1, %esi
	addl	$1, %ebx
	cmpl	%esi, %r10d
	jne	.LBB148_322
# BB#338:                               # %end for demosaiced$3.s0.v1664
                                        #   in Loop: Header=BB148_321 Depth=3
	movq	2240(%rsp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	1488(%rsp), %rdx        # 8-byte Reload
	addl	$1, %edx
	movq	1480(%rsp), %r12        # 8-byte Reload
	addq	$32, %r12
	cmpq	$4, %rax
	jne	.LBB148_321
# BB#339:                               #   in Loop: Header=BB148_284 Depth=2
	vmovaps	%xmm6, 1488(%rsp)       # 16-byte Spill
	vmovaps	%xmm14, 640(%rsp)       # 16-byte Spill
	movq	1112(%rsp), %r8         # 8-byte Reload
	movq	1104(%rsp), %r9         # 8-byte Reload
	xorl	%r10d, %r10d
	movq	504(%rsp), %r11         # 8-byte Reload
	movq	544(%rsp), %r14         # 8-byte Reload
	movq	1056(%rsp), %r12        # 8-byte Reload
	.align	16, 0x90
.LBB148_340:                            # %for f2.s0.v16.v18.yii67
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_284 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB148_341 Depth 4
	leal	(%r12,%r10), %eax
	cltq
	subq	1504(%rsp), %rax        # 8-byte Folded Reload
	shlq	$7, %rax
	vmovaps	2592(%rsp,%rax), %ymm8
	vmovaps	2624(%rsp,%rax), %ymm15
	vmovaps	%ymm15, 2304(%rsp)      # 32-byte Spill
	vmovaps	2656(%rsp,%rax), %ymm6
	vmovaps	%ymm6, 2368(%rsp)       # 32-byte Spill
	vmovaps	2688(%rsp,%rax), %ymm1
	vmovaps	%ymm1, 2336(%rsp)       # 32-byte Spill
	vmovaps	2848(%rsp,%rax), %ymm12
	vmovaps	2880(%rsp,%rax), %ymm10
	vmovaps	2912(%rsp,%rax), %ymm11
	vmovaps	2944(%rsp,%rax), %ymm7
	vmovaps	3136(%rsp,%rax), %ymm4
	vmovaps	3168(%rsp,%rax), %ymm5
	vmovaps	3200(%rsp,%rax), %ymm3
	vmovaps	1312(%rsp), %ymm0       # 32-byte Reload
	vmulps	%ymm0, %ymm1, %ymm1
	vmulps	%ymm0, %ymm6, %ymm2
	vmulps	%ymm0, %ymm15, %ymm6
	vmulps	%ymm0, %ymm8, %ymm9
	vmovaps	1344(%rsp), %ymm0       # 32-byte Reload
	vmovaps	%ymm0, %ymm13
	vfmadd213ps	%ymm9, %ymm12, %ymm13
	vmovaps	%ymm0, %ymm9
	vfmadd213ps	%ymm6, %ymm10, %ymm9
	vmovaps	%ymm0, %ymm6
	vfmadd213ps	%ymm2, %ymm11, %ymm6
	vmovaps	%ymm0, %ymm2
	vfmadd213ps	%ymm1, %ymm7, %ymm2
	vmovaps	1376(%rsp), %ymm0       # 32-byte Reload
	vmovaps	%ymm0, %ymm1
	vfmadd213ps	%ymm2, %ymm3, %ymm1
	vmovaps	%ymm1, 2496(%rsp)       # 32-byte Spill
	vmovaps	%ymm0, %ymm1
	vfmadd213ps	%ymm6, %ymm5, %ymm1
	vmovaps	%ymm1, 2464(%rsp)       # 32-byte Spill
	vmovaps	%ymm0, %ymm1
	vfmadd213ps	%ymm9, %ymm4, %ymm1
	vmovaps	%ymm1, 2432(%rsp)       # 32-byte Spill
	vmovaps	3104(%rsp,%rax), %ymm14
	vfmadd213ps	%ymm13, %ymm14, %ymm0
	vmovaps	%ymm0, 2400(%rsp)       # 32-byte Spill
	vmovaps	1216(%rsp), %ymm9       # 32-byte Reload
	vmulps	%ymm9, %ymm8, %ymm2
	vmovaps	1248(%rsp), %ymm0       # 32-byte Reload
	vmovaps	%ymm0, %ymm1
	vfmadd213ps	%ymm2, %ymm12, %ymm1
	vmulps	%ymm9, %ymm15, %ymm2
	vmovaps	%ymm0, %ymm6
	vfmadd213ps	%ymm2, %ymm10, %ymm6
	vmulps	2368(%rsp), %ymm9, %ymm2 # 32-byte Folded Reload
	vmovaps	%ymm0, %ymm15
	vfmadd213ps	%ymm2, %ymm11, %ymm15
	vmovaps	2336(%rsp), %ymm13      # 32-byte Reload
	vmulps	%ymm9, %ymm13, %ymm2
	vmovaps	%ymm0, %ymm9
	vfmadd213ps	%ymm2, %ymm7, %ymm9
	vmovaps	1280(%rsp), %ymm0       # 32-byte Reload
	vmovaps	%ymm0, %ymm2
	vfmadd213ps	%ymm9, %ymm3, %ymm2
	vmovaps	%ymm2, 2560(%rsp)       # 32-byte Spill
	vmovaps	%ymm0, %ymm9
	vfmadd213ps	%ymm15, %ymm5, %ymm9
	vmovaps	%ymm0, %ymm15
	vfmadd213ps	%ymm6, %ymm4, %ymm15
	vmovaps	%ymm0, %ymm2
	vfmadd213ps	%ymm1, %ymm14, %ymm2
	vmovaps	1120(%rsp), %ymm6       # 32-byte Reload
	vmulps	%ymm6, %ymm8, %ymm1
	vmovaps	1152(%rsp), %ymm0       # 32-byte Reload
	vfmadd213ps	%ymm1, %ymm0, %ymm12
	vmulps	2304(%rsp), %ymm6, %ymm1 # 32-byte Folded Reload
	vfmadd213ps	%ymm1, %ymm0, %ymm10
	vmulps	2368(%rsp), %ymm6, %ymm1 # 32-byte Folded Reload
	vfmadd213ps	%ymm1, %ymm0, %ymm11
	vmulps	%ymm6, %ymm13, %ymm1
	vfmadd213ps	%ymm1, %ymm0, %ymm7
	vmovaps	1184(%rsp), %ymm0       # 32-byte Reload
	vfmadd213ps	%ymm7, %ymm0, %ymm3
	vmovaps	%ymm3, %ymm13
	vfmadd213ps	%ymm11, %ymm0, %ymm5
	vfmadd213ps	%ymm10, %ymm0, %ymm4
	vmovaps	%ymm4, %ymm3
	vfmadd213ps	%ymm12, %ymm0, %ymm14
	xorl	%ebx, %ebx
	movl	$3, %edi
	movq	%r8, %rax
	movq	%r9, %rdx
	.align	16, 0x90
.LBB148_341:                            # %for f2.s0.v1770
                                        #   Parent Loop BB148_119 Depth=1
                                        #     Parent Loop BB148_284 Depth=2
                                        #       Parent Loop BB148_340 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vmovaps	%ymm2, %ymm4
	cmpl	$1, %ebx
	je	.LBB148_343
# BB#342:                               # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	2400(%rsp), %ymm4       # 32-byte Reload
.LBB148_343:                            # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	%ymm15, %ymm7
	je	.LBB148_345
# BB#344:                               # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	2432(%rsp), %ymm7       # 32-byte Reload
.LBB148_345:                            # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	%ymm9, %ymm10
	je	.LBB148_347
# BB#346:                               # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	2464(%rsp), %ymm10      # 32-byte Reload
.LBB148_347:                            # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	2560(%rsp), %ymm11      # 32-byte Reload
	je	.LBB148_349
# BB#348:                               # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	2496(%rsp), %ymm11      # 32-byte Reload
.LBB148_349:                            # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	%ymm13, %ymm8
	testl	%ebx, %ebx
	je	.LBB148_351
# BB#350:                               # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	%ymm11, %ymm8
.LBB148_351:                            # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	%ymm5, %ymm11
	je	.LBB148_353
# BB#352:                               # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	%ymm10, %ymm11
.LBB148_353:                            # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	%ymm3, %ymm10
	je	.LBB148_355
# BB#354:                               # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	%ymm7, %ymm10
.LBB148_355:                            # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	%ymm14, %ymm7
	je	.LBB148_357
# BB#356:                               # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vmovaps	%ymm4, %ymm7
.LBB148_357:                            # %for f2.s0.v1770
                                        #   in Loop: Header=BB148_341 Depth=4
	vbroadcastss	.LCPI148_16(%rip), %ymm1
	vminps	%ymm1, %ymm7, %ymm4
	vminps	%ymm1, %ymm10, %ymm6
	vminps	%ymm1, %ymm11, %ymm7
	vminps	%ymm1, %ymm8, %ymm1
	vxorps	%ymm0, %ymm0, %ymm0
	vmaxps	%ymm0, %ymm4, %ymm4
	vmaxps	%ymm0, %ymm6, %ymm6
	vmaxps	%ymm0, %ymm7, %ymm7
	vmaxps	%ymm0, %ymm1, %ymm1
	vcvttps2dq	%ymm4, %ymm4
	vmovdqa	.LCPI148_3(%rip), %ymm0 # ymm0 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vpshufb	%ymm0, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vcvttps2dq	%ymm6, %ymm6
	vpshufb	%ymm0, %ymm6, %ymm6
	vpermq	$232, %ymm6, %ymm6      # ymm6 = ymm6[0,2,2,3]
	vcvttps2dq	%ymm7, %ymm7
	vpshufb	%ymm0, %ymm7, %ymm7
	vpermq	$232, %ymm7, %ymm7      # ymm7 = ymm7[0,2,2,3]
	vcvttps2dq	%ymm1, %ymm1
	vpshufb	%ymm0, %ymm1, %ymm1
	vpermq	$232, %ymm1, %ymm1      # ymm1 = ymm1[0,2,2,3]
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmovzxwd	%xmm7, %ymm7    # ymm7 = xmm7[0],zero,xmm7[1],zero,xmm7[2],zero,xmm7[3],zero,xmm7[4],zero,xmm7[5],zero,xmm7[6],zero,xmm7[7],zero
	vpmovzxwd	%xmm6, %ymm6    # ymm6 = xmm6[0],zero,xmm6[1],zero,xmm6[2],zero,xmm6[3],zero,xmm6[4],zero,xmm6[5],zero,xmm6[6],zero,xmm6[7],zero
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vmovdqa	2176(%rsp), %ymm0       # 32-byte Reload
	vpmulld	%ymm0, %ymm4, %ymm8
	vpmulld	%ymm0, %ymm6, %ymm4
	vpmulld	%ymm0, %ymm7, %ymm6
	vpmulld	%ymm0, %ymm1, %ymm1
	vmovd	%ebx, %xmm7
	vpsubd	2208(%rsp), %ymm7, %ymm7 # 32-byte Folded Reload
	vpbroadcastd	%xmm7, %ymm7
	vpaddd	%ymm1, %ymm7, %ymm11
	vpaddd	%ymm6, %ymm7, %ymm12
	vpaddd	%ymm4, %ymm7, %ymm4
	vpaddd	%ymm8, %ymm7, %ymm10
	vmovq	%xmm11, %rcx
	movslq	%ecx, %rsi
	movzwl	(%r15,%rsi,2), %esi
	vmovd	%esi, %xmm1
	vpextrq	$1, %xmm11, %rsi
	sarq	$32, %rcx
	vpinsrw	$1, (%r15,%rcx,2), %xmm1, %xmm1
	movslq	%esi, %rcx
	sarq	$32, %rsi
	vextracti128	$1, %ymm11, %xmm6
	vpinsrw	$2, (%r15,%rcx,2), %xmm1, %xmm1
	vmovq	%xmm6, %rcx
	vpinsrw	$3, (%r15,%rsi,2), %xmm1, %xmm1
	movslq	%ecx, %rsi
	vpinsrw	$4, (%r15,%rsi,2), %xmm1, %xmm1
	vpextrq	$1, %xmm6, %rsi
	sarq	$32, %rcx
	vpinsrw	$5, (%r15,%rcx,2), %xmm1, %xmm1
	movslq	%esi, %rcx
	vpinsrw	$6, (%r15,%rcx,2), %xmm1, %xmm1
	vmovq	%xmm12, %rcx
	sarq	$32, %rsi
	vpinsrw	$7, (%r15,%rsi,2), %xmm1, %xmm7
	movslq	%ecx, %rsi
	movzwl	(%r15,%rsi,2), %esi
	vmovd	%esi, %xmm1
	vpextrq	$1, %xmm12, %rsi
	sarq	$32, %rcx
	vpinsrw	$1, (%r15,%rcx,2), %xmm1, %xmm1
	movslq	%esi, %rcx
	sarq	$32, %rsi
	vextracti128	$1, %ymm12, %xmm6
	vpinsrw	$2, (%r15,%rcx,2), %xmm1, %xmm1
	vmovq	%xmm6, %rcx
	vpinsrw	$3, (%r15,%rsi,2), %xmm1, %xmm1
	movslq	%ecx, %rsi
	vpinsrw	$4, (%r15,%rsi,2), %xmm1, %xmm1
	vpextrq	$1, %xmm6, %rsi
	sarq	$32, %rcx
	vpinsrw	$5, (%r15,%rcx,2), %xmm1, %xmm1
	movslq	%esi, %rcx
	vpinsrw	$6, (%r15,%rcx,2), %xmm1, %xmm1
	vmovq	%xmm4, %rcx
	sarq	$32, %rsi
	vpinsrw	$7, (%r15,%rsi,2), %xmm1, %xmm1
	movslq	%ecx, %rsi
	movzwl	(%r15,%rsi,2), %esi
	vmovd	%esi, %xmm6
	vpextrq	$1, %xmm4, %rsi
	sarq	$32, %rcx
	vpinsrw	$1, (%r15,%rcx,2), %xmm6, %xmm6
	movslq	%esi, %rcx
	sarq	$32, %rsi
	vextracti128	$1, %ymm4, %xmm4
	vpinsrw	$2, (%r15,%rcx,2), %xmm6, %xmm6
	vmovq	%xmm4, %rcx
	vpinsrw	$3, (%r15,%rsi,2), %xmm6, %xmm6
	movslq	%ecx, %rsi
	vpinsrw	$4, (%r15,%rsi,2), %xmm6, %xmm6
	vpextrq	$1, %xmm4, %rsi
	sarq	$32, %rcx
	vpinsrw	$5, (%r15,%rcx,2), %xmm6, %xmm4
	movslq	%esi, %rcx
	vpinsrw	$6, (%r15,%rcx,2), %xmm4, %xmm4
	vmovq	%xmm10, %rcx
	sarq	$32, %rsi
	vpinsrw	$7, (%r15,%rsi,2), %xmm4, %xmm4
	movslq	%ecx, %rsi
	movzwl	(%r15,%rsi,2), %esi
	vmovd	%esi, %xmm6
	vpextrq	$1, %xmm10, %rsi
	sarq	$32, %rcx
	vpinsrw	$1, (%r15,%rcx,2), %xmm6, %xmm6
	movslq	%esi, %rcx
	sarq	$32, %rsi
	vextracti128	$1, %ymm10, %xmm0
	vpinsrw	$2, (%r15,%rcx,2), %xmm6, %xmm6
	vmovq	%xmm0, %rcx
	vpinsrw	$3, (%r15,%rsi,2), %xmm6, %xmm6
	movslq	%ecx, %rsi
	vpinsrw	$4, (%r15,%rsi,2), %xmm6, %xmm6
	vpextrq	$1, %xmm0, %rsi
	sarq	$32, %rcx
	vpinsrw	$5, (%r15,%rcx,2), %xmm6, %xmm0
	movslq	%esi, %rcx
	vpinsrw	$6, (%r15,%rcx,2), %xmm0, %xmm0
	sarq	$32, %rsi
	vpinsrw	$7, (%r15,%rsi,2), %xmm0, %xmm0
	vinserti128	$1, %xmm7, %ymm1, %ymm1
	vinserti128	$1, %xmm4, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rax)
	vmovdqu	%ymm1, (%rdx)
	addq	%r11, %rdx
	addq	%r11, %rax
	addl	$1, %ebx
	addq	$-1, %rdi
	jne	.LBB148_341
# BB#358:                               # %end for f2.s0.v1771
                                        #   in Loop: Header=BB148_340 Depth=3
	addq	$1, %r10
	addq	%r14, %r9
	addq	%r14, %r8
	cmpq	$2, %r10
	jne	.LBB148_340
# BB#359:                               # %end for f2.s0.v16.v18.yii68
                                        #   in Loop: Header=BB148_284 Depth=2
	movq	1064(%rsp), %rdi        # 8-byte Reload
	addq	$1, %rdi
	movq	1080(%rsp), %rcx        # 8-byte Reload
	addq	$-32, %rcx
	movl	1072(%rsp), %eax        # 4-byte Reload
	addl	$32, %eax
	movq	1088(%rsp), %rsi        # 8-byte Reload
	addq	$-32, %rsi
	movq	1096(%rsp), %rdx        # 8-byte Reload
	addq	$-32, %rdx
	addq	$64, 1104(%rsp)         # 8-byte Folded Spill
	addq	$64, 1112(%rsp)         # 8-byte Folded Spill
	cmpl	564(%rsp), %edi         # 4-byte Folded Reload
	jne	.LBB148_284
.LBB148_290:                            # %end for f2.s0.v15.v1542
                                        #   in Loop: Header=BB148_119 Depth=1
	movq	448(%rsp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	2528(%rsp), %rax        # 8-byte Reload
	addl	$2, %eax
	movq	%rax, 2528(%rsp)        # 8-byte Spill
	movb	412(%rsp), %bl          # 1-byte Reload
	addb	$2, %bl
	addq	$-2, 432(%rsp)          # 8-byte Folded Spill
	addl	$2, 1464(%rsp)          # 4-byte Folded Spill
	addl	$2, 860(%rsp)           # 4-byte Folded Spill
	movq	552(%rsp), %rax         # 8-byte Reload
	addl	$-2, %eax
	movq	%rax, 552(%rsp)         # 8-byte Spill
	addl	$2, 856(%rsp)           # 4-byte Folded Spill
	movq	296(%rsp), %rax         # 8-byte Reload
	addq	%rax, 424(%rsp)         # 8-byte Folded Spill
	addq	%rax, 416(%rsp)         # 8-byte Folded Spill
	cmpq	$16, %rdx
	movq	664(%rsp), %r9          # 8-byte Reload
	jne	.LBB148_119
# BB#291:                               # %call_destructor.exit
	movq	280(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	vzeroupper
	callq	halide_free@PLT
	xorl	%eax, %eax
.LBB148_5:                              # %assert failed1
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB148_2:                              # %assert failed
	leaq	.Lstr.159(%rip), %rsi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movq	%rax, %rdx
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB148_5
.LBB148_4:                              # %assert failed1
	movq	280(%rsp), %rdi         # 8-byte Reload
	callq	halide_error_out_of_memory@PLT
	jmp	.LBB148_5
.LBB148_41:                             # %consume deinterleaved$3.for f2.s0.v16.v18.v18.preheader_crit_edge
	movq	%r8, 1736(%rsp)         # 8-byte Spill
	movq	544(%rsp), %rdi         # 8-byte Reload
	movl	464(%rsp), %eax         # 4-byte Reload
	imull	%edi, %eax
	movl	432(%rsp), %ecx         # 4-byte Reload
	movl	424(%rsp), %edx         # 4-byte Reload
	imull	%edx, %ecx
	addl	440(%rsp), %eax         # 4-byte Folded Reload
	addl	416(%rsp), %ecx         # 4-byte Folded Reload
	vmovd	%ecx, %xmm1
	vmovaps	%ymm1, 2208(%rsp)       # 32-byte Spill
	vmovd	%edx, %xmm1
	cltq
	leaq	(%rdi,%rdi), %rdx
	subq	%rax, %rdx
	movq	576(%rsp), %rsi         # 8-byte Reload
	leaq	8(%rsi,%rdx,4), %rcx
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	leaq	4(%rsi,%rdx,4), %rcx
	movq	%rcx, 384(%rsp)         # 8-byte Spill
	leaq	(%rsi,%rdx,4), %rcx
	movq	%rcx, 376(%rsp)         # 8-byte Spill
	subq	%rax, %rdi
	leaq	8(%rsi,%rdi,4), %rcx
	movq	%rcx, 368(%rsp)         # 8-byte Spill
	leaq	4(%rsi,%rdi,4), %rcx
	movq	%rcx, 360(%rsp)         # 8-byte Spill
	leaq	(%rsi,%rdi,4), %rcx
	movq	%rcx, 352(%rsp)         # 8-byte Spill
	movl	$2, %edx
	subq	%rax, %rdx
	leaq	(%rsi,%rdx,4), %rcx
	movq	%rcx, 344(%rsp)         # 8-byte Spill
	movl	$1, %edx
	subq	%rax, %rdx
	leaq	(%rsi,%rdx,4), %rcx
	movq	%rcx, 336(%rsp)         # 8-byte Spill
	shlq	$2, %rax
	subq	%rax, %rsi
	movq	400(%rsp), %rax         # 8-byte Reload
	cltq
	movq	%rax, 440(%rsp)         # 8-byte Spill
	subq	584(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1064(%rsp)        # 8-byte Spill
	movl	$31, %eax
	movq	720(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	vmovss	528(%rsp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	vsubss	%xmm4, %xmm0, %xmm2
	vmovss	456(%rsp), %xmm5        # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	vmulss	%xmm5, %xmm2, %xmm3
	vmovss	448(%rsp), %xmm6        # 4-byte Reload
                                        # xmm6 = mem[0],zero,zero,zero
	vdivss	%xmm6, %xmm3, %xmm3
	vaddss	%xmm3, %xmm4, %xmm3
	vmovss	512(%rsp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	vsubss	%xmm5, %xmm4, %xmm4
	movq	728(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	movl	%eax, 1072(%rsp)        # 4-byte Spill
	movq	904(%rsp), %rax         # 8-byte Reload
	leal	(,%rax,4), %ecx
	movl	%ecx, 896(%rsp)         # 4-byte Spill
	vmulss	%xmm4, %xmm2, %xmm2
	vdivss	%xmm2, %xmm6, %xmm2
	vbroadcastss	%xmm2, %xmm2
	vmovaps	%xmm2, 528(%rsp)        # 16-byte Spill
	vbroadcastss	%xmm3, %xmm2
	vmovaps	%xmm2, 512(%rsp)        # 16-byte Spill
	shll	$3, %eax
	movq	%rax, 904(%rsp)         # 8-byte Spill
	vmovss	476(%rsp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vsubss	%xmm3, %xmm0, %xmm0
	vmovss	472(%rsp), %xmm5        # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	vmulss	%xmm5, %xmm0, %xmm2
	vmovss	640(%rsp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	vdivss	%xmm4, %xmm2, %xmm2
	vaddss	%xmm2, %xmm3, %xmm2
	vmovss	480(%rsp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vsubss	%xmm5, %xmm3, %xmm3
	vmulss	%xmm3, %xmm0, %xmm0
	vdivss	%xmm0, %xmm4, %xmm0
	vbroadcastss	%xmm0, %xmm0
	vmovaps	%xmm0, 640(%rsp)        # 16-byte Spill
	vbroadcastss	%xmm2, %xmm0
	vmovaps	%xmm0, 1488(%rsp)       # 16-byte Spill
	vpbroadcastd	%xmm1, %ymm0
	vmovdqa	%ymm0, 2176(%rsp)       # 32-byte Spill
	movq	944(%rsp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, %r14
	movq	%rsi, 328(%rsp)         # 8-byte Spill
	movq	664(%rsp), %r9          # 8-byte Reload
	movl	788(%rsp), %eax         # 4-byte Reload
	movq	936(%rsp), %r10         # 8-byte Reload
	jmp	.LBB148_118
.Lfunc_end148:
	.size	par_for___f3_f2.s0.v16.v19, .Lfunc_end148-par_for___f3_f2.s0.v16.v19

	.section	.text.f3,"ax",@progbits
	.globl	f3
	.align	16, 0x90
	.type	f3,@function
f3:                                     # @f3
# BB#0:                                 # %entry
	subq	$104, %rsp
	testq	%rdi, %rdi
	je	.LBB149_1
# BB#3:                                 # %assert succeeded
	testq	%rcx, %rcx
	je	.LBB149_4
# BB#5:                                 # %assert succeeded11
	testq	%r8, %r8
	je	.LBB149_6
# BB#7:                                 # %assert succeeded30
	testq	%r9, %r9
	je	.LBB149_8
# BB#9:                                 # %assert succeeded49
	movq	184(%rsp), %rax
	testq	%rax, %rax
	je	.LBB149_10
# BB#11:                                # %assert succeeded68
	movq	200(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB149_12
# BB#13:                                # %assert succeeded87
	movb	192(%rsp), %sil
	vmovss	136(%rsp), %xmm8        # xmm8 = mem[0],zero,zero,zero
	vmovss	128(%rsp), %xmm9        # xmm9 = mem[0],zero,zero,zero
	vmovss	120(%rsp), %xmm10       # xmm10 = mem[0],zero,zero,zero
	vmovss	112(%rsp), %xmm11       # xmm11 = mem[0],zero,zero,zero
	movq	%rdx, 88(%rsp)
	movzbl	%sil, %edx
	movl	%edx, 80(%rsp)
	movq	%rax, 72(%rsp)
	vmovss	%xmm8, 24(%rsp)
	vmovss	%xmm9, 16(%rsp)
	vmovss	%xmm10, 8(%rsp)
	vmovss	%xmm11, (%rsp)
	callq	__f3@PLT
	addq	$104, %rsp
	retq
.LBB149_1:                              # %assert failed
	leaq	.Lstr(%rip), %rsi
	jmp	.LBB149_2
.LBB149_4:                              # %assert failed10
	leaq	.Lstr.137(%rip), %rsi
	jmp	.LBB149_2
.LBB149_6:                              # %assert failed29
	leaq	.Lstr.138(%rip), %rsi
	jmp	.LBB149_2
.LBB149_8:                              # %assert failed48
	leaq	.Lstr.139(%rip), %rsi
	jmp	.LBB149_2
.LBB149_10:                             # %assert failed67
	leaq	.Lstr.140(%rip), %rsi
	jmp	.LBB149_2
.LBB149_12:                             # %assert failed86
	leaq	.Lstr.141(%rip), %rsi
.LBB149_2:                              # %assert failed
	xorl	%edi, %edi
	addq	$104, %rsp
	jmp	halide_error_buffer_argument_is_null@PLT # TAILCALL
.Lfunc_end149:
	.size	f3, .Lfunc_end149-f3

	.section	.text.f3_argv,"ax",@progbits
	.globl	f3_argv
	.align	16, 0x90
	.type	f3_argv,@function
f3_argv:                                # @f3_argv
# BB#0:                                 # %entry
	subq	$104, %rsp
	movq	%rdi, %rax
	movq	(%rax), %rdi
	movq	24(%rax), %rcx
	movq	32(%rax), %r8
	movq	40(%rax), %rdx
	vmovss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	48(%rax), %rdx
	vmovss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movq	56(%rax), %rdx
	vmovss	(%rdx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movq	64(%rax), %rdx
	vmovss	(%rdx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movq	72(%rax), %rdx
	vmovss	(%rdx), %xmm4           # xmm4 = mem[0],zero,zero,zero
	movq	80(%rax), %rdx
	vmovss	(%rdx), %xmm5           # xmm5 = mem[0],zero,zero,zero
	movq	88(%rax), %rdx
	vmovss	(%rdx), %xmm6           # xmm6 = mem[0],zero,zero,zero
	movq	96(%rax), %rdx
	vmovss	(%rdx), %xmm7           # xmm7 = mem[0],zero,zero,zero
	movq	104(%rax), %rdx
	vmovss	(%rdx), %xmm8           # xmm8 = mem[0],zero,zero,zero
	movq	112(%rax), %rdx
	vmovss	(%rdx), %xmm9           # xmm9 = mem[0],zero,zero,zero
	movq	120(%rax), %rdx
	vmovss	(%rdx), %xmm10          # xmm10 = mem[0],zero,zero,zero
	movq	128(%rax), %rdx
	vmovss	(%rdx), %xmm11          # xmm11 = mem[0],zero,zero,zero
	movq	176(%rax), %r9
	movq	184(%rax), %rdx
	movq	192(%rax), %rsi
	movq	200(%rax), %rax
	movzbl	(%rsi), %esi
	movq	%rax, 88(%rsp)
	movl	%esi, 80(%rsp)
	movq	%rdx, 72(%rsp)
	vmovss	%xmm11, 24(%rsp)
	vmovss	%xmm10, 16(%rsp)
	vmovss	%xmm9, 8(%rsp)
	vmovss	%xmm8, (%rsp)
	callq	f3@PLT
	addq	$104, %rsp
	retq
.Lfunc_end150:
	.size	f3_argv, .Lfunc_end150-f3_argv

	.section	.text.f3_metadata,"ax",@progbits
	.globl	f3_metadata
	.align	16, 0x90
	.type	f3_metadata,@function
f3_metadata:                            # @f3_metadata
# BB#0:                                 # %entry
	leaq	.Lf3_metadata_storage(%rip), %rax
	retq
.Lfunc_end151:
	.size	f3_metadata, .Lfunc_end151-f3_metadata

	.type	_ZN6Halide7Runtime8Internal13custom_mallocE,@object # @_ZN6Halide7Runtime8Internal13custom_mallocE
	.section	.data.rel,"aw",@progbits
	.weak	_ZN6Halide7Runtime8Internal13custom_mallocE
	.align	8
_ZN6Halide7Runtime8Internal13custom_mallocE:
	.quad	_ZN6Halide7Runtime8Internal14default_mallocEPvm
	.size	_ZN6Halide7Runtime8Internal13custom_mallocE, 8

	.type	_ZN6Halide7Runtime8Internal11custom_freeE,@object # @_ZN6Halide7Runtime8Internal11custom_freeE
	.weak	_ZN6Halide7Runtime8Internal11custom_freeE
	.align	8
_ZN6Halide7Runtime8Internal11custom_freeE:
	.quad	_ZN6Halide7Runtime8Internal12default_freeEPvS2_
	.size	_ZN6Halide7Runtime8Internal11custom_freeE, 8

	.type	_ZN6Halide7Runtime8Internal13error_handlerE,@object # @_ZN6Halide7Runtime8Internal13error_handlerE
	.weak	_ZN6Halide7Runtime8Internal13error_handlerE
	.align	8
_ZN6Halide7Runtime8Internal13error_handlerE:
	.quad	_ZN6Halide7Runtime8Internal21default_error_handlerEPvPKc
	.size	_ZN6Halide7Runtime8Internal13error_handlerE, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error: "
	.size	.L.str, 8

	.type	_ZN6Halide7Runtime8Internal12custom_printE,@object # @_ZN6Halide7Runtime8Internal12custom_printE
	.section	.data.rel,"aw",@progbits
	.weak	_ZN6Halide7Runtime8Internal12custom_printE
	.align	8
_ZN6Halide7Runtime8Internal12custom_printE:
	.quad	_ZN6Halide7Runtime8Internal17halide_print_implEPvPKc
	.size	_ZN6Halide7Runtime8Internal12custom_printE, 8

	.type	halide_reference_clock_inited,@object # @halide_reference_clock_inited
	.bss
	.weak	halide_reference_clock_inited
halide_reference_clock_inited:
	.byte	0                       # 0x0
	.size	halide_reference_clock_inited, 1

	.type	halide_reference_clock,@object # @halide_reference_clock
	.weak	halide_reference_clock
	.align	8
halide_reference_clock:
	.zero	16
	.size	halide_reference_clock, 16

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"/tmp/"
	.size	.L.str.7, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"XXXXXX"
	.size	.L.str.1, 7

	.type	_ZN6Halide7Runtime8Internal10work_queueE,@object # @_ZN6Halide7Runtime8Internal10work_queueE
	.bss
	.weak	_ZN6Halide7Runtime8Internal10work_queueE
	.align	8
_ZN6Halide7Runtime8Internal10work_queueE:
	.zero	800
	.size	_ZN6Halide7Runtime8Internal10work_queueE, 800

	.type	custom_do_task,@object  # @custom_do_task
	.section	.data.rel,"aw",@progbits
	.weak	custom_do_task
	.align	8
custom_do_task:
	.quad	_ZN6Halide7Runtime8Internal15default_do_taskEPvPFiS2_iPhEiS3_
	.size	custom_do_task, 8

	.type	custom_do_par_for,@object # @custom_do_par_for
	.weak	custom_do_par_for
	.align	8
custom_do_par_for:
	.quad	_ZN6Halide7Runtime8Internal18default_do_par_forEPvPFiS2_iPhEiiS3_
	.size	custom_do_par_for, 8

	.section	.dtors,"aw",@progbits
	.align	8
	.quad	halide_thread_pool_cleanup
	.quad	halide_trace_cleanup
	.quad	halide_cache_cleanup
	.quad	halide_profiler_shutdown
	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"HL_NUM_THREADS"
	.size	.L.str.8, 15

	.type	.L.str.1.9,@object      # @.str.1.9
.L.str.1.9:
	.asciz	"HL_NUMTHREADS"
	.size	.L.str.1.9, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"halide_set_num_threads: must be >= 0."
	.size	.L.str.2, 38

	.type	_ZN6Halide7Runtime8Internal17custom_get_symbolE,@object # @_ZN6Halide7Runtime8Internal17custom_get_symbolE
	.section	.data.rel,"aw",@progbits
	.weak	_ZN6Halide7Runtime8Internal17custom_get_symbolE
	.align	8
_ZN6Halide7Runtime8Internal17custom_get_symbolE:
	.quad	_ZN6Halide7Runtime8Internal22halide_get_symbol_implEPKc
	.size	_ZN6Halide7Runtime8Internal17custom_get_symbolE, 8

	.type	_ZN6Halide7Runtime8Internal19custom_load_libraryE,@object # @_ZN6Halide7Runtime8Internal19custom_load_libraryE
	.weak	_ZN6Halide7Runtime8Internal19custom_load_libraryE
	.align	8
_ZN6Halide7Runtime8Internal19custom_load_libraryE:
	.quad	_ZN6Halide7Runtime8Internal24halide_load_library_implEPKc
	.size	_ZN6Halide7Runtime8Internal19custom_load_libraryE, 8

	.type	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE,@object # @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE
	.weak	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE
	.align	8
_ZN6Halide7Runtime8Internal25custom_get_library_symbolE:
	.quad	_ZN6Halide7Runtime8Internal30halide_get_library_symbol_implEPvPKc
	.size	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, 8

	.type	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE,@object # @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE
	.bss
	.weak	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE
	.align	4
_ZN6Halide7Runtime8Internal17halide_gpu_deviceE:
	.long	0                       # 0x0
	.size	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, 4

	.type	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE,@object # @_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE
	.weak	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE
	.align	4
_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE:
	.long	0                       # 0x0
	.size	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE, 4

	.type	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE,@object # @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE
	.weak	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE
_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE:
	.byte	0                       # 0x0
	.size	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, 1

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"HL_GPU_DEVICE"
	.size	.L.str.10, 14

	.type	_ZN6Halide7Runtime8Internal17halide_trace_fileE,@object # @_ZN6Halide7Runtime8Internal17halide_trace_fileE
	.bss
	.weak	_ZN6Halide7Runtime8Internal17halide_trace_fileE
	.align	4
_ZN6Halide7Runtime8Internal17halide_trace_fileE:
	.long	0                       # 0x0
	.size	_ZN6Halide7Runtime8Internal17halide_trace_fileE, 4

	.type	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE,@object # @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE
	.weak	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE
	.align	4
_ZN6Halide7Runtime8Internal22halide_trace_file_lockE:
	.long	0                       # 0x0
	.size	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, 4

	.type	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE,@object # @_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE
	.weak	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE
_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE:
	.byte	0                       # 0x0
	.size	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE, 1

	.type	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE,@object # @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE
	.weak	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE
_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE:
	.byte	0                       # 0x0
	.size	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, 1

	.type	_ZN6Halide7Runtime8Internal19halide_custom_traceE,@object # @_ZN6Halide7Runtime8Internal19halide_custom_traceE
	.section	.data.rel,"aw",@progbits
	.weak	_ZN6Halide7Runtime8Internal19halide_custom_traceE
	.align	8
_ZN6Halide7Runtime8Internal19halide_custom_traceE:
	.quad	_ZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_t
	.size	_ZN6Halide7Runtime8Internal19halide_custom_traceE, 8

	.type	_ZZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_tE3ids,@object # @_ZZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_tE3ids
	.data
	.align	4
_ZZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_tE3ids:
	.long	1                       # 0x1
	.size	_ZZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_tE3ids, 4

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"/home/fb/Halide/src/runtime/tracing.cpp:59 Assert failed: written == total_size && \"Can't write to trace file\"\n"
	.size	.L.str.14, 112

	.type	.L.str.1.15,@object     # @.str.1.15
.L.str.1.15:
	.asciz	"/home/fb/Halide/src/runtime/tracing.cpp:68 Assert failed: print_bits <= 64 && \"Tracing bad type\"\n"
	.size	.L.str.1.15, 98

	.type	.L_ZZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_tE11event_types,@object # @_ZZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_tE11event_types
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
.L_ZZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_tE11event_types:
	.quad	.L.str.2.17
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7.18
	.quad	.L.str.8.19
	.quad	.L.str.9
	.quad	.L.str.10.20
	.quad	.L.str.11
	.size	.L_ZZN6Halide7Runtime8Internal13default_traceEPvPK20halide_trace_event_tE11event_types, 80

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"<"
	.size	.L.str.15, 2

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	">, <"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	", "
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	">)"
	.size	.L.str.18, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	" = <"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	" = "
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/home/fb/Halide/src/runtime/tracing.cpp:136 Assert failed: print_bits >= 16 && \"Tracing a bad type\"\n"
	.size	.L.str.22, 101

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	">"
	.size	.L.str.23, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"HL_TRACE_FILE"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/home/fb/Halide/src/runtime/tracing.cpp:194 Assert failed: (fd > 0) && \"Failed to open trace file\\n\"\n"
	.size	.L.str.26, 102

	.type	.L.str.2.17,@object     # @.str.2.17
.L.str.2.17:
	.asciz	"Load"
	.size	.L.str.2.17, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Store"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Begin realization"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"End realization"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Produce"
	.size	.L.str.6, 8

	.type	.L.str.7.18,@object     # @.str.7.18
.L.str.7.18:
	.asciz	"End produce"
	.size	.L.str.7.18, 12

	.type	.L.str.8.19,@object     # @.str.8.19
.L.str.8.19:
	.asciz	"Consume"
	.size	.L.str.8.19, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"End consume"
	.size	.L.str.9, 12

	.type	.L.str.10.20,@object    # @.str.10.20
.L.str.10.20:
	.asciz	"Begin pipeline"
	.size	.L.str.10.20, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"End pipeline"
	.size	.L.str.11, 13

	.type	_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE,@object # @_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE
	.data
	.weak	_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE
	.align	2
_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE:
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	1                       # 0x1
	.short	2                       # 0x2
	.size	_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE, 20

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"wb"
	.size	.L.str.27, 3

	.type	_ZN6Halide7Runtime8Internal16memoization_lockE,@object # @_ZN6Halide7Runtime8Internal16memoization_lockE
	.bss
	.weak	_ZN6Halide7Runtime8Internal16memoization_lockE
	.align	8
_ZN6Halide7Runtime8Internal16memoization_lockE:
	.zero	64
	.size	_ZN6Halide7Runtime8Internal16memoization_lockE, 64

	.type	_ZN6Halide7Runtime8Internal13cache_entriesE,@object # @_ZN6Halide7Runtime8Internal13cache_entriesE
	.weak	_ZN6Halide7Runtime8Internal13cache_entriesE
	.align	8
_ZN6Halide7Runtime8Internal13cache_entriesE:
	.zero	2048
	.size	_ZN6Halide7Runtime8Internal13cache_entriesE, 2048

	.type	_ZN6Halide7Runtime8Internal18most_recently_usedE,@object # @_ZN6Halide7Runtime8Internal18most_recently_usedE
	.weak	_ZN6Halide7Runtime8Internal18most_recently_usedE
	.align	8
_ZN6Halide7Runtime8Internal18most_recently_usedE:
	.quad	0
	.size	_ZN6Halide7Runtime8Internal18most_recently_usedE, 8

	.type	_ZN6Halide7Runtime8Internal19least_recently_usedE,@object # @_ZN6Halide7Runtime8Internal19least_recently_usedE
	.weak	_ZN6Halide7Runtime8Internal19least_recently_usedE
	.align	8
_ZN6Halide7Runtime8Internal19least_recently_usedE:
	.quad	0
	.size	_ZN6Halide7Runtime8Internal19least_recently_usedE, 8

	.type	_ZN6Halide7Runtime8Internal14max_cache_sizeE,@object # @_ZN6Halide7Runtime8Internal14max_cache_sizeE
	.data
	.weak	_ZN6Halide7Runtime8Internal14max_cache_sizeE
	.align	8
_ZN6Halide7Runtime8Internal14max_cache_sizeE:
	.quad	1048576                 # 0x100000
	.size	_ZN6Halide7Runtime8Internal14max_cache_sizeE, 8

	.type	_ZN6Halide7Runtime8Internal18current_cache_sizeE,@object # @_ZN6Halide7Runtime8Internal18current_cache_sizeE
	.bss
	.weak	_ZN6Halide7Runtime8Internal18current_cache_sizeE
	.align	8
_ZN6Halide7Runtime8Internal18current_cache_sizeE:
	.quad	0                       # 0x0
	.size	_ZN6Halide7Runtime8Internal18current_cache_sizeE, 8

	.type	.L.str.3.29,@object     # @.str.3.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3.29:
	.asciz	"/home/fb/Halide/src/runtime/cache.cpp:245 Assert failed: prev_hash_entry != NULL\n"
	.size	.L.str.3.29, 82

	.type	.L.str.4.30,@object     # @.str.4.30
.L.str.4.30:
	.asciz	"/home/fb/Halide/src/runtime/cache.cpp:335 Assert failed: entry->more_recent != NULL\n"
	.size	.L.str.4.30, 85

	.type	.L.str.5.31,@object     # @.str.5.31
.L.str.5.31:
	.asciz	"/home/fb/Halide/src/runtime/cache.cpp:339 Assert failed: least_recently_used == entry\n"
	.size	.L.str.5.31, 87

	.type	.L.str.6.32,@object     # @.str.6.32
.L.str.6.32:
	.asciz	"/home/fb/Halide/src/runtime/cache.cpp:342 Assert failed: entry->more_recent != NULL\n"
	.size	.L.str.6.32, 85

	.type	.L.str.8.33,@object     # @.str.8.33
.L.str.8.33:
	.asciz	"/home/fb/Halide/src/runtime/cache.cpp:433 Assert failed: no_host_pointers_equal\n"
	.size	.L.str.8.33, 81

	.type	.L.str.11.34,@object    # @.str.11.34
.L.str.11.34:
	.asciz	"/home/fb/Halide/src/runtime/cache.cpp:518 Assert failed: entry->in_use_count > 0\n"
	.size	.L.str.11.34, 82

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"-nan"
	.size	.L.str.45, 5

	.type	.L.str.1.46,@object     # @.str.1.46
.L.str.1.46:
	.asciz	"nan"
	.size	.L.str.1.46, 4

	.type	.L.str.2.47,@object     # @.str.2.47
.L.str.2.47:
	.asciz	"-inf"
	.size	.L.str.2.47, 5

	.type	.L.str.3.48,@object     # @.str.3.48
.L.str.3.48:
	.asciz	"inf"
	.size	.L.str.3.48, 4

	.type	.L.str.4.49,@object     # @.str.4.49
.L.str.4.49:
	.asciz	"-0.000000e+00"
	.size	.L.str.4.49, 14

	.type	.L.str.5.50,@object     # @.str.5.50
.L.str.5.50:
	.asciz	"0.000000e+00"
	.size	.L.str.5.50, 13

	.type	.L.str.6.51,@object     # @.str.6.51
.L.str.6.51:
	.asciz	"-0.000000"
	.size	.L.str.6.51, 10

	.type	.L.str.7.52,@object     # @.str.7.52
.L.str.7.52:
	.asciz	"0.000000"
	.size	.L.str.7.52, 9

	.type	.L.str.8.53,@object     # @.str.8.53
.L.str.8.53:
	.asciz	"-"
	.size	.L.str.8.53, 2

	.type	.L.str.10.55,@object    # @.str.10.55
.L.str.10.55:
	.asciz	"e+"
	.size	.L.str.10.55, 3

	.type	.L.str.11.56,@object    # @.str.11.56
.L.str.11.56:
	.asciz	"e-"
	.size	.L.str.11.56, 3

	.type	.L.str.12.57,@object    # @.str.12.57
.L.str.12.57:
	.asciz	"0123456789abcdef"
	.size	.L.str.12.57, 17

	.type	_ZN6Halide7Runtime8Internal17device_copy_mutexE,@object # @_ZN6Halide7Runtime8Internal17device_copy_mutexE
	.bss
	.weak	_ZN6Halide7Runtime8Internal17device_copy_mutexE
	.align	8
_ZN6Halide7Runtime8Internal17device_copy_mutexE:
	.zero	64
	.size	_ZN6Halide7Runtime8Internal17device_copy_mutexE, 64

	.type	.L.str.25.64,@object    # @.str.25.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25.64:
	.asciz	"/home/fb/Halide/src/runtime/device_interface.cpp:138 Assert failed: !buf->host_dirty\n"
	.size	.L.str.25.64, 86

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"/home/fb/Halide/src/runtime/device_interface.cpp:248 Assert failed: buf->dev == 0\n"
	.size	.L.str.40, 83

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"halide_device_malloc doesn't support switching interfaces\n"
	.size	.L.str.37, 59

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"halide_device_and_host_malloc doesn't support switching interfaces\n"
	.size	.L.str.42, 68

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"/home/fb/Halide/src/runtime/device_interface.cpp:321 Assert failed: buf->dev == 0\n"
	.size	.L.str.44, 83

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Bounds inference call to external stage "
	.size	.L.str.68, 41

	.type	.L.str.1.69,@object     # @.str.1.69
.L.str.1.69:
	.asciz	" returned non-zero value: "
	.size	.L.str.1.69, 27

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Printer buffer allocation failed.\n"
	.size	.L.str.53, 35

	.type	.L.str.2.70,@object     # @.str.2.70
.L.str.2.70:
	.asciz	"Call to external stage "
	.size	.L.str.2.70, 24

	.type	.L.str.3.71,@object     # @.str.3.71
.L.str.3.71:
	.asciz	"Bounds given for "
	.size	.L.str.3.71, 18

	.type	.L.str.4.72,@object     # @.str.4.72
.L.str.4.72:
	.asciz	" in "
	.size	.L.str.4.72, 5

	.type	.L.str.5.73,@object     # @.str.5.73
.L.str.5.73:
	.asciz	" (from "
	.size	.L.str.5.73, 8

	.type	.L.str.6.74,@object     # @.str.6.74
.L.str.6.74:
	.asciz	" to "
	.size	.L.str.6.74, 5

	.type	.L.str.7.75,@object     # @.str.7.75
.L.str.7.75:
	.asciz	") do not cover required region (from "
	.size	.L.str.7.75, 38

	.type	.L.str.8.76,@object     # @.str.8.76
.L.str.8.76:
	.asciz	")"
	.size	.L.str.8.76, 2

	.type	.L.str.9.77,@object     # @.str.9.77
.L.str.9.77:
	.asciz	" has type "
	.size	.L.str.9.77, 11

	.type	.L.str.10.78,@object    # @.str.10.78
.L.str.10.78:
	.asciz	" but elem_size of the buffer passed in is "
	.size	.L.str.10.78, 43

	.type	.L.str.11.79,@object    # @.str.11.79
.L.str.11.79:
	.asciz	" instead of "
	.size	.L.str.11.79, 13

	.type	.L.str.12.80,@object    # @.str.12.80
.L.str.12.80:
	.asciz	" is accessed at "
	.size	.L.str.12.80, 17

	.type	.L.str.13.81,@object    # @.str.13.81
.L.str.13.81:
	.asciz	", which is before the min ("
	.size	.L.str.13.81, 28

	.type	.L.str.14.82,@object    # @.str.14.82
.L.str.14.82:
	.asciz	") in dimension "
	.size	.L.str.14.82, 16

	.type	.L.str.15.83,@object    # @.str.15.83
.L.str.15.83:
	.asciz	", which is beyond the max ("
	.size	.L.str.15.83, 28

	.type	.L.str.16.84,@object    # @.str.16.84
.L.str.16.84:
	.asciz	"Total allocation for buffer "
	.size	.L.str.16.84, 29

	.type	.L.str.17.85,@object    # @.str.17.85
.L.str.17.85:
	.asciz	" is "
	.size	.L.str.17.85, 5

	.type	.L.str.18.86,@object    # @.str.18.86
.L.str.18.86:
	.asciz	", which exceeds the maximum size of "
	.size	.L.str.18.86, 37

	.type	.L.str.19.87,@object    # @.str.19.87
.L.str.19.87:
	.asciz	"The extents for buffer "
	.size	.L.str.19.87, 24

	.type	.L.str.20.88,@object    # @.str.20.88
.L.str.20.88:
	.asciz	" dimension "
	.size	.L.str.20.88, 12

	.type	.L.str.21.89,@object    # @.str.21.89
.L.str.21.89:
	.asciz	" is negative ("
	.size	.L.str.21.89, 15

	.type	.L.str.22.90,@object    # @.str.22.90
.L.str.22.90:
	.asciz	"Product of extents for buffer "
	.size	.L.str.22.90, 31

	.type	.L.str.23.91,@object    # @.str.23.91
.L.str.23.91:
	.asciz	"Applying the constraints on "
	.size	.L.str.23.91, 29

	.type	.L.str.24.92,@object    # @.str.24.92
.L.str.24.92:
	.asciz	" to the required region made it smaller. "
	.size	.L.str.24.92, 42

	.type	.L.str.25.93,@object    # @.str.25.93
.L.str.25.93:
	.asciz	"Required size: "
	.size	.L.str.25.93, 16

	.type	.L.str.26.94,@object    # @.str.26.94
.L.str.26.94:
	.asciz	". "
	.size	.L.str.26.94, 3

	.type	.L.str.27.95,@object    # @.str.27.95
.L.str.27.95:
	.asciz	"Constrained size: "
	.size	.L.str.27.95, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"."
	.size	.L.str.28, 2

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Constraint violated: "
	.size	.L.str.29, 22

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	" ("
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	") == "
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Parameter "
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	" but must be at least "
	.size	.L.str.33, 23

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	" but must be at most "
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Out of memory (halide_malloc returned NULL)"
	.size	.L.str.35, 44

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Buffer argument "
	.size	.L.str.36, 17

	.type	.L.str.37.96,@object    # @.str.37.96
.L.str.37.96:
	.asciz	" is NULL"
	.size	.L.str.37.96, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Failed to dump function "
	.size	.L.str.38, 25

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	" to file "
	.size	.L.str.39, 10

	.type	.L.str.40.97,@object    # @.str.40.97
.L.str.40.97:
	.asciz	" with error "
	.size	.L.str.40.97, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"The host pointer of "
	.size	.L.str.41, 21

	.type	.L.str.42.98,@object    # @.str.42.98
.L.str.42.98:
	.asciz	" is not aligned to a "
	.size	.L.str.42.98, 22

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	" bytes boundary."
	.size	.L.str.43, 17

	.type	.L.str.44.99,@object    # @.str.44.99
.L.str.44.99:
	.asciz	"The folded storage dimension "
	.size	.L.str.44.99, 30

	.type	.L.str.45.100,@object   # @.str.45.100
.L.str.45.100:
	.asciz	" of "
	.size	.L.str.45.100, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	" was accessed out of order by loop "
	.size	.L.str.46, 36

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"The fold factor ("
	.size	.L.str.47, 18

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	") of dimension "
	.size	.L.str.48, 16

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	" is too small to store the required region accessed by loop "
	.size	.L.str.49, 61

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	")."
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Requirement Failed: ("
	.size	.L.str.51, 22

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	") "
	.size	.L.str.52, 3

	.type	_ZZ25halide_profiler_get_stateE1s,@object # @_ZZ25halide_profiler_get_stateE1s
	.data
	.align	8
_ZZ25halide_profiler_get_stateE1s:
	.zero	64
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.size	_ZZ25halide_profiler_get_stateE1s, 104

	.type	.L.str.102,@object      # @.str.102
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.102:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:204 Assert failed: p_stats != NULL\n"
	.size	.L.str.102, 77

	.type	.L.str.1.103,@object    # @.str.1.103
.L.str.1.103:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:231 Assert failed: p_stats != NULL\n"
	.size	.L.str.1.103, 77

	.type	.L.str.2.104,@object    # @.str.2.104
.L.str.2.104:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:232 Assert failed: func_id >= 0\n"
	.size	.L.str.2.104, 74

	.type	.L.str.3.105,@object    # @.str.3.105
.L.str.3.105:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:233 Assert failed: func_id < p_stats->num_funcs\n"
	.size	.L.str.3.105, 90

	.type	.L.str.4.106,@object    # @.str.4.106
.L.str.4.106:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:267 Assert failed: p_stats != NULL\n"
	.size	.L.str.4.106, 77

	.type	.L.str.5.107,@object    # @.str.5.107
.L.str.5.107:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:268 Assert failed: func_id >= 0\n"
	.size	.L.str.5.107, 74

	.type	.L.str.6.108,@object    # @.str.6.108
.L.str.6.108:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:269 Assert failed: func_id < p_stats->num_funcs\n"
	.size	.L.str.6.108, 90

	.type	.L.str.7.109,@object    # @.str.7.109
.L.str.7.109:
	.asciz	"\n"
	.size	.L.str.7.109, 2

	.type	.L.str.8.110,@object    # @.str.8.110
.L.str.8.110:
	.asciz	" total time: "
	.size	.L.str.8.110, 14

	.type	.L.str.9.111,@object    # @.str.9.111
.L.str.9.111:
	.asciz	" ms"
	.size	.L.str.9.111, 4

	.type	.L.str.10.112,@object   # @.str.10.112
.L.str.10.112:
	.asciz	"  samples: "
	.size	.L.str.10.112, 12

	.type	.L.str.11.113,@object   # @.str.11.113
.L.str.11.113:
	.asciz	"  runs: "
	.size	.L.str.11.113, 9

	.type	.L.str.12.114,@object   # @.str.12.114
.L.str.12.114:
	.asciz	"  time/run: "
	.size	.L.str.12.114, 13

	.type	.L.str.13.115,@object   # @.str.13.115
.L.str.13.115:
	.asciz	" ms\n"
	.size	.L.str.13.115, 5

	.type	.L.str.14.116,@object   # @.str.14.116
.L.str.14.116:
	.asciz	" average threads used: "
	.size	.L.str.14.116, 24

	.type	.L.str.15.117,@object   # @.str.15.117
.L.str.15.117:
	.asciz	" heap allocations: "
	.size	.L.str.15.117, 20

	.type	.L.str.16.118,@object   # @.str.16.118
.L.str.16.118:
	.asciz	"  peak heap usage: "
	.size	.L.str.16.118, 20

	.type	.L.str.17.119,@object   # @.str.17.119
.L.str.17.119:
	.asciz	" bytes\n"
	.size	.L.str.17.119, 8

	.type	.L.str.18.120,@object   # @.str.18.120
.L.str.18.120:
	.asciz	"  "
	.size	.L.str.18.120, 3

	.type	.L.str.19.121,@object   # @.str.19.121
.L.str.19.121:
	.asciz	": "
	.size	.L.str.19.121, 3

	.type	.L.str.20.122,@object   # @.str.20.122
.L.str.20.122:
	.asciz	" "
	.size	.L.str.20.122, 2

	.type	.L.str.21.123,@object   # @.str.21.123
.L.str.21.123:
	.asciz	"ms"
	.size	.L.str.21.123, 3

	.type	.L.str.22.124,@object   # @.str.22.124
.L.str.22.124:
	.asciz	"("
	.size	.L.str.22.124, 2

	.type	.L.str.23.125,@object   # @.str.23.125
.L.str.23.125:
	.asciz	"%)"
	.size	.L.str.23.125, 3

	.type	.L.str.24.126,@object   # @.str.24.126
.L.str.24.126:
	.asciz	"threads: "
	.size	.L.str.24.126, 10

	.type	.L.str.25.127,@object   # @.str.25.127
.L.str.25.127:
	.asciz	" peak: "
	.size	.L.str.25.127, 8

	.type	.L.str.26.128,@object   # @.str.26.128
.L.str.26.128:
	.asciz	" num: "
	.size	.L.str.26.128, 7

	.type	.L.str.27.129,@object   # @.str.27.129
.L.str.27.129:
	.asciz	" avg: "
	.size	.L.str.27.129, 7

	.type	.L.str.28.130,@object   # @.str.28.130
.L.str.28.130:
	.asciz	" stack: "
	.size	.L.str.28.130, 9

	.type	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE,@object # @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE
	.section	.data.rel,"aw",@progbits
	.weak	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE
	.align	8
_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE:
	.quad	halide_default_can_use_target_features
	.size	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, 8

	.type	_ZZ38halide_default_can_use_target_featuresE11initialized,@object # @_ZZ38halide_default_can_use_target_featuresE11initialized
	.local	_ZZ38halide_default_can_use_target_featuresE11initialized
	.comm	_ZZ38halide_default_can_use_target_featuresE11initialized,1,1
	.type	_ZZ38halide_default_can_use_target_featuresE12cpu_features,@object # @_ZZ38halide_default_can_use_target_featuresE12cpu_features
	.local	_ZZ38halide_default_can_use_target_featuresE12cpu_features
	.comm	_ZZ38halide_default_can_use_target_featuresE12cpu_features,16,8
	.type	.Lstr,@object           # @str
	.section	.rodata,"a",@progbits
	.align	32
.Lstr:
	.asciz	"p0"
	.size	.Lstr, 3

	.type	.Lstr.137,@object       # @str.137
	.align	32
.Lstr.137:
	.asciz	"vignetteH"
	.size	.Lstr.137, 10

	.type	.Lstr.138,@object       # @str.138
	.align	32
.Lstr.138:
	.asciz	"vignetteV"
	.size	.Lstr.138, 10

	.type	.Lstr.139,@object       # @str.139
	.align	32
.Lstr.139:
	.asciz	"ccm"
	.size	.Lstr.139, 4

	.type	.Lstr.140,@object       # @str.140
	.align	32
.Lstr.140:
	.asciz	"toneTable"
	.size	.Lstr.140, 10

	.type	.Lstr.141,@object       # @str.141
	.align	32
.Lstr.141:
	.asciz	"f3"
	.size	.Lstr.141, 3

	.type	.Lstr.142,@object       # @str.142
	.align	32
.Lstr.142:
	.asciz	"Input buffer ccm"
	.size	.Lstr.142, 17

	.type	.Lstr.143,@object       # @str.143
	.align	32
.Lstr.143:
	.asciz	"float32"
	.size	.Lstr.143, 8

	.type	.Lstr.144,@object       # @str.144
	.align	32
.Lstr.144:
	.asciz	"Output buffer f3"
	.size	.Lstr.144, 17

	.type	.Lstr.145,@object       # @str.145
	.align	32
.Lstr.145:
	.asciz	"uint16"
	.size	.Lstr.145, 7

	.type	.Lstr.146,@object       # @str.146
	.align	32
.Lstr.146:
	.asciz	"Input buffer p0"
	.size	.Lstr.146, 16

	.type	.Lstr.147,@object       # @str.147
	.align	32
.Lstr.147:
	.asciz	"Input buffer toneTable"
	.size	.Lstr.147, 23

	.type	.Lstr.148,@object       # @str.148
	.align	32
.Lstr.148:
	.asciz	"ccm.stride.0"
	.size	.Lstr.148, 13

	.type	.Lstr.149,@object       # @str.149
	.align	32
.Lstr.149:
	.asciz	"1"
	.size	.Lstr.149, 2

	.type	.Lstr.150,@object       # @str.150
	.align	32
.Lstr.150:
	.asciz	"f3.stride.0"
	.size	.Lstr.150, 12

	.type	.Lstr.151,@object       # @str.151
	.align	32
.Lstr.151:
	.asciz	"3"
	.size	.Lstr.151, 2

	.type	.Lstr.152,@object       # @str.152
	.align	32
.Lstr.152:
	.asciz	"f3.stride.2"
	.size	.Lstr.152, 12

	.type	.Lstr.153,@object       # @str.153
	.align	32
.Lstr.153:
	.asciz	"f3.min.2"
	.size	.Lstr.153, 9

	.type	.Lstr.154,@object       # @str.154
	.align	32
.Lstr.154:
	.asciz	"0"
	.size	.Lstr.154, 2

	.type	.Lstr.155,@object       # @str.155
	.align	32
.Lstr.155:
	.asciz	"f3.extent.2"
	.size	.Lstr.155, 12

	.type	.Lstr.156,@object       # @str.156
	.align	32
.Lstr.156:
	.asciz	"p0.stride.0"
	.size	.Lstr.156, 12

	.type	.Lstr.157,@object       # @str.157
	.align	32
.Lstr.157:
	.asciz	"toneTable.stride.0"
	.size	.Lstr.157, 19

	.type	.Lstr.158,@object       # @str.158
	.align	32
.Lstr.158:
	.asciz	"f2"
	.size	.Lstr.158, 3

	.type	.Lstr.159,@object       # @str.159
	.align	32
.Lstr.159:
	.asciz	"deinterleaved$3"
	.size	.Lstr.159, 16

	.type	.Lstr.160,@object       # @str.160
	.align	32
.Lstr.160:
	.asciz	"p1"
	.size	.Lstr.160, 3

	.type	.L__unnamed_1,@object   # @0
	.align	4
.L__unnamed_1:
	.long	0                       # 0x0
	.size	.L__unnamed_1, 4

	.type	.Lstr.161,@object       # @str.161
	.align	32
.Lstr.161:
	.asciz	"p2"
	.size	.Lstr.161, 3

	.type	.L__unnamed_2,@object   # @1
	.align	4
.L__unnamed_2:
	.long	0                       # 0x0
	.size	.L__unnamed_2, 4

	.type	.Lstr.162,@object       # @str.162
	.align	32
.Lstr.162:
	.asciz	"blackLevelR"
	.size	.Lstr.162, 12

	.type	.L__unnamed_3,@object   # @2
	.align	4
.L__unnamed_3:
	.long	0                       # float 0
	.size	.L__unnamed_3, 4

	.type	.Lstr.163,@object       # @str.163
	.align	32
.Lstr.163:
	.asciz	"blackLevelG"
	.size	.Lstr.163, 12

	.type	.L__unnamed_4,@object   # @3
	.align	4
.L__unnamed_4:
	.long	0                       # float 0
	.size	.L__unnamed_4, 4

	.type	.Lstr.164,@object       # @str.164
	.align	32
.Lstr.164:
	.asciz	"blackLevelB"
	.size	.Lstr.164, 12

	.type	.L__unnamed_5,@object   # @4
	.align	4
.L__unnamed_5:
	.long	0                       # float 0
	.size	.L__unnamed_5, 4

	.type	.Lstr.165,@object       # @str.165
	.align	32
.Lstr.165:
	.asciz	"whiteBalanceGainR"
	.size	.Lstr.165, 18

	.type	.L__unnamed_6,@object   # @5
	.align	4
.L__unnamed_6:
	.long	0                       # float 0
	.size	.L__unnamed_6, 4

	.type	.Lstr.166,@object       # @str.166
	.align	32
.Lstr.166:
	.asciz	"whiteBalanceGainG"
	.size	.Lstr.166, 18

	.type	.L__unnamed_7,@object   # @6
	.align	4
.L__unnamed_7:
	.long	0                       # float 0
	.size	.L__unnamed_7, 4

	.type	.Lstr.167,@object       # @str.167
	.align	32
.Lstr.167:
	.asciz	"whiteBalanceGainB"
	.size	.Lstr.167, 18

	.type	.L__unnamed_8,@object   # @7
	.align	4
.L__unnamed_8:
	.long	0                       # float 0
	.size	.L__unnamed_8, 4

	.type	.Lstr.168,@object       # @str.168
	.align	32
.Lstr.168:
	.asciz	"clampMinR"
	.size	.Lstr.168, 10

	.type	.L__unnamed_9,@object   # @8
	.align	4
.L__unnamed_9:
	.long	0                       # float 0
	.size	.L__unnamed_9, 4

	.type	.Lstr.169,@object       # @str.169
	.align	32
.Lstr.169:
	.asciz	"clampMinG"
	.size	.Lstr.169, 10

	.type	.L__unnamed_10,@object  # @9
	.align	4
.L__unnamed_10:
	.long	0                       # float 0
	.size	.L__unnamed_10, 4

	.type	.Lstr.170,@object       # @str.170
	.align	32
.Lstr.170:
	.asciz	"clampMinB"
	.size	.Lstr.170, 10

	.type	.L__unnamed_11,@object  # @10
	.align	4
.L__unnamed_11:
	.long	0                       # float 0
	.size	.L__unnamed_11, 4

	.type	.Lstr.171,@object       # @str.171
	.align	32
.Lstr.171:
	.asciz	"clampMaxR"
	.size	.Lstr.171, 10

	.type	.L__unnamed_12,@object  # @11
	.align	4
.L__unnamed_12:
	.long	0                       # float 0
	.size	.L__unnamed_12, 4

	.type	.Lstr.172,@object       # @str.172
	.align	32
.Lstr.172:
	.asciz	"clampMaxG"
	.size	.Lstr.172, 10

	.type	.L__unnamed_13,@object  # @12
	.align	4
.L__unnamed_13:
	.long	0                       # float 0
	.size	.L__unnamed_13, 4

	.type	.Lstr.173,@object       # @str.173
	.align	32
.Lstr.173:
	.asciz	"clampMaxB"
	.size	.Lstr.173, 10

	.type	.L__unnamed_14,@object  # @13
	.align	4
.L__unnamed_14:
	.long	0                       # float 0
	.size	.L__unnamed_14, 4

	.type	.Lstr.174,@object       # @str.174
	.align	32
.Lstr.174:
	.asciz	"sharpenningR"
	.size	.Lstr.174, 13

	.type	.L__unnamed_15,@object  # @14
	.align	4
.L__unnamed_15:
	.long	0                       # float 0
	.size	.L__unnamed_15, 4

	.type	.Lstr.175,@object       # @str.175
	.align	32
.Lstr.175:
	.asciz	"sharpenningG"
	.size	.Lstr.175, 13

	.type	.L__unnamed_16,@object  # @15
	.align	4
.L__unnamed_16:
	.long	0                       # float 0
	.size	.L__unnamed_16, 4

	.type	.Lstr.176,@object       # @str.176
	.align	32
.Lstr.176:
	.asciz	"sharpenninngB"
	.size	.Lstr.176, 14

	.type	.L__unnamed_17,@object  # @16
	.align	4
.L__unnamed_17:
	.long	0                       # float 0
	.size	.L__unnamed_17, 4

	.type	.Lstr.177,@object       # @str.177
	.align	32
.Lstr.177:
	.asciz	"sharpeningSupport"
	.size	.Lstr.177, 18

	.type	.L__unnamed_18,@object  # @17
	.align	4
.L__unnamed_18:
	.long	0                       # float 0
	.size	.L__unnamed_18, 4

	.type	.Lstr.178,@object       # @str.178
	.align	32
.Lstr.178:
	.asciz	"noiseCore"
	.size	.Lstr.178, 10

	.type	.L__unnamed_19,@object  # @18
	.align	4
.L__unnamed_19:
	.long	0                       # float 0
	.size	.L__unnamed_19, 4

	.type	.Lstr.179,@object       # @str.179
	.align	32
.Lstr.179:
	.asciz	"p3"
	.size	.Lstr.179, 3

	.type	.L__unnamed_20,@object  # @19
.L__unnamed_20:
	.byte	0                       # 0x0
	.size	.L__unnamed_20, 1

	.type	.L__unnamed_21,@object  # @20
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
.L__unnamed_21:
	.quad	.Lstr
	.long	1                       # 0x1
	.long	2                       # 0x2
	.byte	1                       # 0x1
	.byte	16                      # 0x10
	.short	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lstr.160
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_1
	.quad	0
	.quad	0
	.quad	.Lstr.161
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_2
	.quad	0
	.quad	0
	.quad	.Lstr.137
	.long	1                       # 0x1
	.long	2                       # 0x2
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lstr.138
	.long	1                       # 0x1
	.long	2                       # 0x2
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lstr.162
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_3
	.quad	0
	.quad	0
	.quad	.Lstr.163
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_4
	.quad	0
	.quad	0
	.quad	.Lstr.164
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_5
	.quad	0
	.quad	0
	.quad	.Lstr.165
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_6
	.quad	0
	.quad	0
	.quad	.Lstr.166
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_7
	.quad	0
	.quad	0
	.quad	.Lstr.167
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_8
	.quad	0
	.quad	0
	.quad	.Lstr.168
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_9
	.quad	0
	.quad	0
	.quad	.Lstr.169
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_10
	.quad	0
	.quad	0
	.quad	.Lstr.170
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_11
	.quad	0
	.quad	0
	.quad	.Lstr.171
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_12
	.quad	0
	.quad	0
	.quad	.Lstr.172
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_13
	.quad	0
	.quad	0
	.quad	.Lstr.173
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_14
	.quad	0
	.quad	0
	.quad	.Lstr.174
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_15
	.quad	0
	.quad	0
	.quad	.Lstr.175
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_16
	.quad	0
	.quad	0
	.quad	.Lstr.176
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_17
	.quad	0
	.quad	0
	.quad	.Lstr.177
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_18
	.quad	0
	.quad	0
	.quad	.Lstr.178
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_19
	.quad	0
	.quad	0
	.quad	.Lstr.139
	.long	1                       # 0x1
	.long	2                       # 0x2
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lstr.140
	.long	1                       # 0x1
	.long	2                       # 0x2
	.byte	1                       # 0x1
	.byte	16                      # 0x10
	.short	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lstr.179
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_20
	.quad	0
	.quad	0
	.quad	.Lstr.141
	.long	2                       # 0x2
	.long	3                       # 0x3
	.byte	1                       # 0x1
	.byte	16                      # 0x10
	.short	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.size	.L__unnamed_21, 1248

	.type	.Lstr.180,@object       # @str.180
	.section	.rodata,"a",@progbits
	.align	32
.Lstr.180:
	.asciz	"x86-64-linux-avx-avx2-f16c-fma-sse41"
	.size	.Lstr.180, 37

	.type	.Lf3_metadata_storage,@object # @f3_metadata_storage
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
.Lf3_metadata_storage:
	.long	0                       # 0x0
	.long	26                      # 0x1a
	.quad	.L__unnamed_21
	.quad	.Lstr.180
	.quad	.Lstr.141
	.size	.Lf3_metadata_storage, 32


	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.ident	"clang version 3.7.1 (branches/release_37 294077)"
	.section	".note.GNU-stack","",@progbits
