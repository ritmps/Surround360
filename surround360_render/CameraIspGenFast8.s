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
	leaq	.L.str.20.123(%rip), %rdx
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
	leaq	.L.str.22.125(%rip), %rdx
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
	leaq	.L.str.7.110(%rip), %rdx
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
	movl	$-15, %ebx
	cmpb	$0, 69(%r12)
	jne	.LBB89_17
# BB#15:                                # %if.else
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*56(%r15)
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
	je	.LBB95_3
# BB#1:                                 # %entry
	cmpq	%rbx, %rax
	je	.LBB95_3
# BB#2:                                 # %if.then
	leaq	.L.str.42(%rip), %rsi
	jmp	.LBB95_5
.LBB95_3:                               # %if.end
	callq	*(%rbx)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*64(%rbx)
	movl	%eax, %r15d
	callq	*8(%rbx)
	xorl	%eax, %eax
	testl	%r15d, %r15d
	je	.LBB95_6
# BB#4:                                 # %if.then.21
	leaq	.L.str.43(%rip), %rsi
.LBB95_5:                               # %cleanup.22
	movq	%r14, %rdi
	callq	halide_error@PLT
	movl	$-16, %eax
.LBB95_6:                               # %cleanup.22
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
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	testq	%r12, %r12
	je	.LBB96_1
# BB#2:                                 # %if.then.8
	movq	(%r12), %rbx
	movq	%rbx, %rdi
	callq	halide_get_device_interface@PLT
	movq	%rbx, %rdi
	callq	halide_get_device_interface@PLT
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB96_6
# BB#3:                                 # %if.then.12
	callq	*(%rbx)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*72(%rbx)
	movl	%eax, %r15d
	callq	*8(%rbx)
	cmpq	$0, (%r12)
	je	.LBB96_5
# BB#4:                                 # %if.then.17
	leaq	.L.str.45.65(%rip), %rsi
	movq	%r14, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB96_5:                               # %cleanup.28
	testl	%r15d, %r15d
	movl	$-18, %eax
	cmovel	%r15d, %eax
	jmp	.LBB96_9
.LBB96_1:                               # %if.end
	xorl	%edi, %edi
	callq	halide_get_device_interface@PLT
	jmp	.LBB96_8
.LBB96_6:                               # %if.else.21
	movq	8(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB96_8
# BB#7:                                 # %if.then.23
	movq	%r14, %rdi
	callq	halide_free@PLT
	movq	$0, 8(%r12)
.LBB96_8:                               # %if.end.29
	movb	$0, 69(%r12)
	xorl	%eax, %eax
.LBB96_9:                               # %cleanup.30
	popq	%rbx
	popq	%r12
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
	movq	%rdi, %r15
	callq	halide_device_free@PLT
	movl	%eax, %r14d
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB98_2
# BB#1:                                 # %if.then
	movq	%r15, %rdi
	callq	halide_free@PLT
	movq	$0, 8(%rbx)
.LBB98_2:                               # %if.end
	movw	$0, 68(%rbx)
	movl	%r14d, %eax
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
	leaq	.L.str.43.99(%rip), %rdx
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
	leaq	.L.str.44(%rip), %rdx
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
	leaq	.L.str.46.101(%rip), %rdx
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
	leaq	.L.str.103(%rip), %rsi
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
	leaq	.L.str.1.104(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB133_3:                              # %if.end.3
	testl	%r15d, %r15d
	jns	.LBB133_5
# BB#4:                                 # %if.then.5
	leaq	.L.str.2.105(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB133_5:                              # %if.end.6
	cmpl	%r15d, 72(%rbx)
	jg	.LBB133_7
# BB#6:                                 # %if.then.8
	leaq	.L.str.3.106(%rip), %rsi
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
	leaq	.L.str.4.107(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB134_3:                              # %if.end.3
	testl	%r14d, %r14d
	jns	.LBB134_5
# BB#4:                                 # %if.then.5
	leaq	.L.str.5.108(%rip), %rsi
	movq	%r12, %rdi
	callq	halide_print@PLT
	callq	abort@PLT
.LBB134_5:                              # %if.end.6
	cmpl	%r14d, 72(%r15)
	jg	.LBB134_7
# BB#6:                                 # %if.then.8
	leaq	.L.str.6.109(%rip), %rsi
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
	leaq	.L.str.20.123(%rip), %r14
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
	leaq	.L.str.7.110(%rip), %rbx
	movq	%rbx, %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.8.111(%rip), %rdx
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
	leaq	.L.str.9.112(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.10.113(%rip), %rdx
	callq	halide_string_to_string@PLT
	movslq	84(%r13), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.11.114(%rip), %rdx
	callq	halide_string_to_string@PLT
	movslq	80(%r13), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.12.115(%rip), %rdx
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
	leaq	.L.str.13.116(%rip), %rdx
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
	leaq	.L.str.14.117(%rip), %rdx
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
	leaq	.L.str.15.118(%rip), %rdx
	callq	halide_string_to_string@PLT
	movslq	88(%r13), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.16.119(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	16(%r13), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_uint64_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.17.120(%rip), %rdx
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
	leaq	.L.str.18.121(%rip), %rdx
	movq	%r8, %rbx
	movq	%rbx, -1080(%rbp)       # 8-byte Spill
	callq	halide_string_to_string@PLT
	movq	56(%r13,%rbx,8), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_string_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.19.122(%rip), %rdx
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
	leaq	.L.str.21.124(%rip), %rdx
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
	leaq	.L.str.22.125(%rip), %rdx
	callq	halide_string_to_string@PLT
	movslq	%ebx, %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_int64_to_string@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	leaq	.L.str.23.126(%rip), %rdx
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
	leaq	.L.str.24.127(%rip), %rdx
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
	leaq	.L.str.25.128(%rip), %rdx
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
	leaq	.L.str.26.129(%rip), %rdx
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
	leaq	.L.str.27.130(%rip), %rdx
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
	leaq	.L.str.28.131(%rip), %rdx
	callq	halide_string_to_string@PLT
	movq	(%rbx), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	halide_uint64_to_string@PLT
	movq	%rax, %rcx
.LBB135_47:                             # %if.end.179
                                        #   in Loop: Header=BB135_16 Depth=2
	leaq	.L.str.7.110(%rip), %rdx
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
	.long	0                       # 0x0
	.long	4294967294              # 0xfffffffe
	.long	4294967292              # 0xfffffffc
	.long	4294967290              # 0xfffffffa
	.long	4294967288              # 0xfffffff8
	.long	4294967286              # 0xfffffff6
	.long	4294967284              # 0xfffffff4
	.long	4294967282              # 0xfffffff2
.LCPI147_2:
	.long	4294967280              # 0xfffffff0
	.long	4294967278              # 0xffffffee
	.long	4294967276              # 0xffffffec
	.long	4294967274              # 0xffffffea
	.long	4294967272              # 0xffffffe8
	.long	4294967270              # 0xffffffe6
	.long	4294967268              # 0xffffffe4
	.long	4294967266              # 0xffffffe2
.LCPI147_5:
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
.LCPI147_8:
	.long	16                      # 0x10
	.long	18                      # 0x12
	.long	20                      # 0x14
	.long	22                      # 0x16
	.long	24                      # 0x18
	.long	26                      # 0x1a
	.long	28                      # 0x1c
	.long	30                      # 0x1e
.LCPI147_9:
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	8                       # 0x8
	.long	10                      # 0xa
	.long	12                      # 0xc
	.long	14                      # 0xe
.LCPI147_10:
	.zero	4
	.long	4                       # 0x4
	.zero	4
	.long	5                       # 0x5
	.zero	4
	.long	6                       # 0x6
	.zero	4
	.long	7                       # 0x7
.LCPI147_11:
	.long	4                       # 0x4
	.zero	4
	.long	5                       # 0x5
	.zero	4
	.long	6                       # 0x6
	.zero	4
	.long	7                       # 0x7
	.zero	4
.LCPI147_12:
	.zero	4
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.zero	4
	.long	2                       # 0x2
	.zero	4
	.long	3                       # 0x3
.LCPI147_13:
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.zero	4
	.long	2                       # 0x2
	.zero	4
	.long	3                       # 0x3
	.zero	4
.LCPI147_18:
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
.LCPI147_19:
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
.LCPI147_20:
	.long	3                       # 0x3
	.long	4096                    # 0x1000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI147_3:
	.long	1                       # 0x1
.LCPI147_4:
	.long	1199570688              # float 65535
.LCPI147_14:
	.long	1065353216              # float 1
.LCPI147_15:
	.long	1048576000              # float 0.25
.LCPI147_16:
	.long	1056964608              # float 0.5
.LCPI147_17:
	.long	1166012416              # float 4095
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI147_6:
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
.LCPI147_7:
	.zero	16,1
	.section	.text.__f3,"ax",@progbits
	.globl	__f3
	.align	16, 0x90
	.type	__f3,@function
__f3:                                   # @__f3
# BB#0:                                 # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$3584, %rsp             # imm = 0xE00
	testq	%rdi, %rdi
	je	.LBB147_1
# BB#8:                                 # %assert succeeded
	testq	%rcx, %rcx
	je	.LBB147_9
# BB#10:                                # %assert succeeded11
	testq	%r8, %r8
	je	.LBB147_11
# BB#12:                                # %assert succeeded30
	testq	%r9, %r9
	je	.LBB147_13
# BB#14:                                # %assert succeeded49
	cmpq	$0, 88(%rbp)
	je	.LBB147_15
# BB#16:                                # %assert succeeded68
	movq	112(%rbp), %r15
	testq	%r15, %r15
	je	.LBB147_17
# BB#18:                                # %assert succeeded87
	movslq	16(%rdi), %r14
	movq	%r14, 2624(%rsp)        # 8-byte Spill
	movslq	20(%rdi), %r12
	movq	%r12, 760(%rsp)         # 8-byte Spill
	movl	48(%rdi), %r13d
	movq	%r13, 2720(%rsp)        # 8-byte Spill
	movslq	52(%rdi), %r11
	movq	%r11, 808(%rsp)         # 8-byte Spill
	movl	16(%r15), %eax
	movq	%rax, 272(%rsp)         # 8-byte Spill
	movl	48(%r15), %esi
	movq	%rsi, 2360(%rsp)        # 8-byte Spill
	movl	52(%r15), %eax
	movq	%rax, 376(%rsp)         # 8-byte Spill
	leal	(%r13,%r14), %r8d
	movl	%r8d, %eax
	subl	%esi, %eax
	movq	%rax, 2344(%rsp)        # 8-byte Spill
	movl	%r8d, %edx
	cmovgl	%esi, %edx
	addl	$-1, %edx
	cmpl	%r13d, %edx
	cmovll	%r13d, %edx
	leal	-1(%r14), %ebx
	leal	(%r14,%r14), %eax
	leal	-2(%r14,%r14), %r10d
	movl	%r10d, 2320(%rsp)       # 4-byte Spill
	movl	$2, %ecx
	subl	%eax, %ecx
	cmpl	$1, %eax
	cmovgl	%r10d, %ecx
	subl	%r14d, %ecx
	cmpl	%ecx, %ebx
	cmoval	%ebx, %ecx
	leal	-1(%r14,%r13), %eax
	subl	%ecx, %eax
	cmpl	%edx, %eax
	cmovgl	%edx, %eax
	movl	%eax, 2776(%rsp)        # 4-byte Spill
	movq	272(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %eax
	andl	$-32, %eax
	leal	30(%rax,%rsi), %eax
	leal	-1(%r13,%r14), %ecx
	movl	%ecx, 2032(%rsp)        # 4-byte Spill
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	cmpl	%r13d, %eax
	cmovll	%r13d, %eax
	leal	1(%rax), %ecx
	cmpl	%r8d, %eax
	cmovll	%r8d, %ecx
	movl	%ecx, 2656(%rsp)        # 4-byte Spill
	leal	(%r11,%r12), %esi
	movl	%esi, 804(%rsp)         # 4-byte Spill
	movq	376(%rsp), %r13         # 8-byte Reload
	cmpl	%r13d, %esi
	movl	%esi, %eax
	cmovgl	%r13d, %eax
	addl	$-1, %eax
	cmpl	%r11d, %eax
	cmovll	%r11d, %eax
	movl	$2, %edx
	leal	(%r12,%r12), %ecx
	subl	%ecx, %edx
	cmpl	$1, %ecx
	leal	-2(%r12,%r12), %ecx
	movl	%ecx, 752(%rsp)         # 4-byte Spill
	cmovgl	%ecx, %edx
	movl	%edx, 756(%rsp)         # 4-byte Spill
	subl	%r12d, %edx
	leal	-1(%r12), %ecx
	cmpl	%edx, %ecx
	cmoval	%ecx, %edx
	leal	-1(%r12,%r11), %ecx
	movl	%ecx, 748(%rsp)         # 4-byte Spill
	subl	%edx, %ecx
	cmpl	%eax, %ecx
	cmovgl	%eax, %ecx
	movl	20(%r15), %eax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	leal	(%r13,%rax), %edx
	movq	%rdx, 432(%rsp)         # 8-byte Spill
	leal	-1(%r11,%r12), %eax
	movl	%eax, 744(%rsp)         # 4-byte Spill
	cmpl	%edx, %eax
	cmovgl	%edx, %eax
	cmpl	%r11d, %eax
	cmovll	%r11d, %eax
	cmpl	%esi, %eax
	leal	1(%rax), %r8d
	cmovll	%esi, %r8d
	movq	8(%r9), %rdx
	movq	%rdx, 512(%rsp)         # 8-byte Spill
	movq	(%r9), %rax
	orq	%rdx, %rax
	sete	%r14b
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rsi, 2352(%rsp)        # 8-byte Spill
	movl	32(%rdi), %edx
	movl	%edx, 2272(%rsp)        # 4-byte Spill
	movslq	36(%rdi), %rsi
	movq	%rsi, 912(%rsp)         # 8-byte Spill
	movl	64(%rdi), %edx
	movl	%edx, 2448(%rsp)        # 4-byte Spill
	movslq	16(%r9), %rdx
	movq	%rdx, 2496(%rsp)        # 8-byte Spill
	movslq	20(%r9), %rdx
	movq	%rdx, 2456(%rsp)        # 8-byte Spill
	movl	32(%r9), %edx
	movl	%edx, 2176(%rsp)        # 4-byte Spill
	movslq	36(%r9), %rsi
	movq	%rsi, 520(%rsp)         # 8-byte Spill
	movl	48(%r9), %edx
	movq	%rdx, 2528(%rsp)        # 8-byte Spill
	movl	52(%r9), %edx
	movq	%rdx, 2560(%rsp)        # 8-byte Spill
	movl	64(%r9), %edx
	movl	%edx, 2400(%rsp)        # 4-byte Spill
	movq	88(%rbp), %r10
	movq	(%r10), %r12
	movq	8(%r10), %rsi
	movq	%rsi, 712(%rsp)         # 8-byte Spill
	movslq	16(%r10), %rsi
	movq	%rsi, 2328(%rsp)        # 8-byte Spill
	movslq	20(%r10), %rsi
	movq	%rsi, 2336(%rsp)        # 8-byte Spill
	movl	32(%r10), %edx
	movl	%edx, 2208(%rsp)        # 4-byte Spill
	movslq	36(%r10), %rsi
	movq	%rsi, 2592(%rsp)        # 8-byte Spill
	movl	48(%r10), %esi
	movq	%rsi, 2464(%rsp)        # 8-byte Spill
	movl	52(%r10), %esi
	movq	%rsi, 2712(%rsp)        # 8-byte Spill
	movl	64(%r10), %edx
	movl	%edx, 2104(%rsp)        # 4-byte Spill
	movq	(%r15), %r11
	movq	8(%r15), %rsi
	movq	%rsi, 256(%rsp)         # 8-byte Spill
	movl	24(%r15), %edx
	movq	%rdx, 2240(%rsp)        # 8-byte Spill
	movl	32(%r15), %edx
	movl	%edx, 2112(%rsp)        # 4-byte Spill
	movslq	36(%r15), %rsi
	movq	%rsi, 424(%rsp)         # 8-byte Spill
	movl	40(%r15), %edx
	movl	%edx, 2144(%rsp)        # 4-byte Spill
	movl	56(%r15), %edx
	movl	64(%r15), %esi
	movl	%esi, 2368(%rsp)        # 4-byte Spill
	jne	.LBB147_20
# BB#19:                                # %true_bb
	vxorps	%xmm8, %xmm8, %xmm8
	vmovups	%xmm8, (%r9)
	movl	$4, 64(%r9)
	movb	$0, 68(%r9)
	movb	$0, 69(%r9)
	movl	$0, 48(%r9)
	movl	$0, 52(%r9)
	movl	$0, 56(%r9)
	movl	$0, 60(%r9)
	vmovaps	.LCPI147_0(%rip), %ymm8 # ymm8 = [3,3,0,0,1,3,0,0]
	vmovups	%ymm8, 16(%r9)
.LBB147_20:                             # %after_bb
	orq	256(%rsp), %r11         # 8-byte Folded Reload
	sete	%r11b
	movq	272(%rsp), %rbx         # 8-byte Reload
	jne	.LBB147_22
# BB#21:                                # %true_bb105
	vxorps	%xmm8, %xmm8, %xmm8
	vmovups	%xmm8, (%r15)
	movl	$1, 64(%r15)
	movb	$0, 68(%r15)
	movb	$0, 69(%r15)
	movq	2360(%rsp), %rsi        # 8-byte Reload
	movl	%esi, 48(%r15)
	movl	%ebx, 16(%r15)
	movl	$3, 32(%r15)
	movl	%r13d, 52(%r15)
	movq	264(%rsp), %rsi         # 8-byte Reload
	movl	%esi, 20(%r15)
	movl	%ebx, 36(%r15)
	movl	$0, 56(%r15)
	movl	$3, 24(%r15)
	movl	$1, 40(%r15)
	movl	$0, 60(%r15)
	movl	$0, 28(%r15)
	movl	$0, 44(%r15)
.LBB147_22:                             # %after_bb107
	orq	2352(%rsp), %rax        # 8-byte Folded Reload
	sete	%al
	jne	.LBB147_24
# BB#23:                                # %true_bb108
	movl	2656(%rsp), %ebx        # 4-byte Reload
	movq	%rdx, %r9
	movl	2776(%rsp), %edx        # 4-byte Reload
	subl	%edx, %ebx
	movl	%r8d, %esi
	subl	%ecx, %esi
	vxorps	%xmm8, %xmm8, %xmm8
	vmovups	%xmm8, (%rdi)
	movl	$2, 64(%rdi)
	movb	$0, 68(%rdi)
	movb	$0, 69(%rdi)
	movl	%edx, 48(%rdi)
	movq	%r9, %rdx
	movl	%ebx, 16(%rdi)
	movl	$1, 32(%rdi)
	movl	%ecx, 52(%rdi)
	movl	%esi, 20(%rdi)
	movl	%ebx, 36(%rdi)
	movl	$0, 56(%rdi)
	movl	$0, 24(%rdi)
	movl	$0, 40(%rdi)
	movl	$0, 60(%rdi)
	movl	$0, 28(%rdi)
	movl	$0, 44(%rdi)
.LBB147_24:                             # %after_bb110
	orq	712(%rsp), %r12         # 8-byte Folded Reload
	sete	%bl
	jne	.LBB147_26
# BB#25:                                # %after_bb113.thread
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r10)
	movl	$1, 64(%r10)
	movb	$0, 68(%r10)
	movb	$0, 69(%r10)
	movl	$0, 48(%r10)
	movl	$0, 52(%r10)
	movl	$0, 56(%r10)
	movl	$0, 60(%r10)
	vmovaps	.LCPI147_20(%rip), %ymm0 # ymm0 = [3,4096,0,0,1,3,0,0]
	vmovups	%ymm0, 16(%r10)
	xorl	%r14d, %r14d
	jmp	.LBB147_6
.LBB147_26:                             # %after_bb113
	orb	%r11b, %r14b
	orb	%r14b, %al
	xorl	%r14d, %r14d
	orb	%al, %bl
	jne	.LBB147_6
# BB#27:                                # %true_bb114
	movl	2400(%rsp), %eax        # 4-byte Reload
	cmpl	$4, %eax
	jne	.LBB147_28
# BB#29:                                # %assert succeeded118
	movl	2368(%rsp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	movq	808(%rsp), %r9          # 8-byte Reload
	movq	760(%rsp), %r15         # 8-byte Reload
	movq	2720(%rsp), %rbx        # 8-byte Reload
	movq	2624(%rsp), %rsi        # 8-byte Reload
	movq	2560(%rsp), %r14        # 8-byte Reload
	movq	2456(%rsp), %r10        # 8-byte Reload
	movl	2448(%rsp), %r11d       # 4-byte Reload
	jne	.LBB147_30
# BB#34:                                # %assert succeeded120
	cmpl	$2, %r11d
	movq	2528(%rsp), %r12        # 8-byte Reload
	movq	2496(%rsp), %rdi        # 8-byte Reload
	jne	.LBB147_35
# BB#36:                                # %assert succeeded122
	movl	2104(%rsp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB147_37
# BB#38:                                # %assert succeeded124
	testl	%r12d, %r12d
	jg	.LBB147_40
# BB#39:                                # %assert succeeded124
	movl	$3, %eax
	subl	%edi, %eax
	cmpl	%r12d, %eax
	jg	.LBB147_40
# BB#41:                                # %assert succeeded126
	testl	%edi, %edi
	js	.LBB147_42
# BB#43:                                # %assert succeeded128
	testl	%r14d, %r14d
	movq	2240(%rsp), %r11        # 8-byte Reload
	jg	.LBB147_45
# BB#44:                                # %assert succeeded128
	movl	$3, %eax
	subl	%r10d, %eax
	cmpl	%r14d, %eax
	jg	.LBB147_45
# BB#46:                                # %assert succeeded130
	testl	%r10d, %r10d
	js	.LBB147_47
# BB#48:                                # %assert succeeded132
	movq	272(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB147_49
# BB#50:                                # %assert succeeded134
	movq	264(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB147_51
# BB#52:                                # %assert succeeded136
	testl	%edx, %edx
	jg	.LBB147_54
# BB#53:                                # %assert succeeded136
	movl	$3, %eax
	subl	%r11d, %eax
	cmpl	%edx, %eax
	jg	.LBB147_54
# BB#55:                                # %assert succeeded138
	testl	%r11d, %r11d
	js	.LBB147_56
# BB#57:                                # %assert succeeded140
	cmpl	2776(%rsp), %ebx        # 4-byte Folded Reload
	jg	.LBB147_59
# BB#58:                                # %assert succeeded140
	movl	2656(%rsp), %eax        # 4-byte Reload
	subl	%esi, %eax
	cmpl	%ebx, %eax
	jg	.LBB147_59
# BB#60:                                # %assert succeeded142
	testl	%esi, %esi
	js	.LBB147_61
# BB#62:                                # %assert succeeded144
	cmpl	%ecx, %r9d
	movq	2360(%rsp), %r12        # 8-byte Reload
	jg	.LBB147_64
# BB#63:                                # %assert succeeded144
	movl	%r8d, %eax
	subl	%r15d, %eax
	cmpl	%r9d, %eax
	jg	.LBB147_64
# BB#65:                                # %assert succeeded146
	testl	%r15d, %r15d
	js	.LBB147_66
# BB#67:                                # %assert succeeded148
	movq	2464(%rsp), %r9         # 8-byte Reload
	testl	%r9d, %r9d
	movq	2336(%rsp), %r14        # 8-byte Reload
	movq	2328(%rsp), %rcx        # 8-byte Reload
	jg	.LBB147_69
# BB#68:                                # %assert succeeded148
	movl	$3, %eax
	subl	%ecx, %eax
	cmpl	%r9d, %eax
	jg	.LBB147_69
# BB#72:                                # %assert succeeded150
	testl	%ecx, %ecx
	js	.LBB147_73
# BB#75:                                # %assert succeeded152
	movq	2712(%rsp), %r9         # 8-byte Reload
	testl	%r9d, %r9d
	jg	.LBB147_77
# BB#76:                                # %assert succeeded152
	movl	$4096, %eax             # imm = 0x1000
	subl	%r14d, %eax
	cmpl	%r9d, %eax
	jg	.LBB147_77
# BB#78:                                # %assert succeeded154
	movq	%rdx, %rax
	testl	%r14d, %r14d
	js	.LBB147_79
# BB#80:                                # %assert succeeded156
	movl	2176(%rsp), %ebx        # 4-byte Reload
	cmpl	$1, %ebx
	movq	272(%rsp), %r8          # 8-byte Reload
	movl	2272(%rsp), %edx        # 4-byte Reload
	jne	.LBB147_81
# BB#85:                                # %assert succeeded158
	movl	2112(%rsp), %ebx        # 4-byte Reload
	cmpl	$3, %ebx
	jne	.LBB147_86
# BB#87:                                # %assert succeeded160
	movl	2144(%rsp), %ebx        # 4-byte Reload
	cmpl	$1, %ebx
	jne	.LBB147_88
# BB#89:                                # %assert succeeded162
	testl	%eax, %eax
	jne	.LBB147_90
# BB#91:                                # %assert succeeded164
	cmpl	$3, %r11d
	jne	.LBB147_92
# BB#93:                                # %assert succeeded166
	cmpl	$1, %edx
	jne	.LBB147_94
# BB#96:                                # %assert succeeded168
	movl	2208(%rsp), %edx        # 4-byte Reload
	cmpl	$1, %edx
	movq	2496(%rsp), %rsi        # 8-byte Reload
	jne	.LBB147_97
# BB#98:                                # %assert succeeded172
	movq	520(%rsp), %rax         # 8-byte Reload
	imulq	%r10, %rax
	movq	%rax, %rdx
	negq	%rdx
	cmovlq	%rax, %rdx
	testq	$-2147483648, %rdx      # imm = 0xFFFFFFFF80000000
	jne	.LBB147_99
# BB#102:                               # %assert succeeded174
	imulq	%rsi, %r10
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %r10
	jge	.LBB147_103
# BB#104:                               # %assert succeeded176
	movq	376(%rsp), %rbx         # 8-byte Reload
	movslq	%r8d, %rdi
	leaq	(%rdi,%rdi,2), %rdx
	testq	$-2147483648, %rdx      # imm = 0xFFFFFFFF80000000
	jne	.LBB147_105
# BB#106:                               # %assert succeeded178
	movq	264(%rsp), %rax         # 8-byte Reload
	movslq	%eax, %rdx
	movq	424(%rsp), %rsi         # 8-byte Reload
	imulq	%rdx, %rsi
	movq	%rsi, %rax
	negq	%rax
	cmovlq	%rsi, %rax
	testq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jne	.LBB147_107
# BB#108:                               # %assert succeeded180
	imulq	%rdi, %rdx
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %rdx
	jge	.LBB147_109
# BB#112:                               # %assert succeeded182
	cmpq	$715827883, %rdx        # imm = 0x2AAAAAAB
	jge	.LBB147_113
# BB#114:                               # %assert succeeded186
	movq	912(%rsp), %rax         # 8-byte Reload
	imulq	%r15, %rax
	movq	%rax, %rdx
	negq	%rdx
	cmovlq	%rax, %rdx
	testq	$-2147483648, %rdx      # imm = 0xFFFFFFFF80000000
	jne	.LBB147_115
# BB#116:                               # %assert succeeded188
	movq	%r15, %rdx
	imulq	2624(%rsp), %rdx        # 8-byte Folded Reload
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %rdx
	jge	.LBB147_117
# BB#118:                               # %assert succeeded192
	movq	2592(%rsp), %rax        # 8-byte Reload
	imulq	%r14, %rax
	movq	%rax, %rdx
	negq	%rdx
	cmovlq	%rax, %rdx
	testq	$-2147483648, %rdx      # imm = 0xFFFFFFFF80000000
	jne	.LBB147_119
# BB#120:                               # %assert succeeded194
	imulq	%rcx, %r14
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %r14
	jge	.LBB147_121
# BB#122:                               # %assert succeeded196
	vmovss	%xmm0, 2328(%rsp)       # 4-byte Spill
	vmovss	%xmm3, 2336(%rsp)       # 4-byte Spill
	vmovss	%xmm6, 2368(%rsp)       # 4-byte Spill
	vmovss	%xmm1, 2400(%rsp)       # 4-byte Spill
	vmovss	%xmm4, 2448(%rsp)       # 4-byte Spill
	vmovss	%xmm7, 2456(%rsp)       # 4-byte Spill
	vmovss	%xmm2, 2496(%rsp)       # 4-byte Spill
	vmovss	%xmm5, 2656(%rsp)       # 4-byte Spill
	movq	432(%rsp), %rax         # 8-byte Reload
	leal	-32(%rax), %eax
	movl	%eax, 356(%rsp)         # 4-byte Spill
	cmpl	%ebx, %eax
	cmovgl	%ebx, %eax
	movl	%eax, 2008(%rsp)        # 4-byte Spill
	leal	-1(%r12,%r8), %ecx
	leal	-1(%r8), %eax
	movl	%eax, 412(%rsp)         # 4-byte Spill
	orl	$31, %eax
	addl	%r12d, %eax
	movl	%eax, 2048(%rsp)        # 4-byte Spill
	cmpl	%eax, %ecx
	cmovll	%eax, %ecx
	movl	%ecx, 2000(%rsp)        # 4-byte Spill
	movq	264(%rsp), %r15         # 8-byte Reload
	cmpl	$31, %r15d
	movl	$32, %r14d
	cmovgl	%r15d, %r14d
	movl	%ecx, %r13d
	subl	%r12d, %r13d
	addl	$1, %r13d
	movl	%r14d, %eax
	imulq	%r13, %rax
	leaq	(%rax,%rax,2), %rbx
	movl	%eax, %ecx
	cmpq	$2147483647, %rbx       # imm = 0x7FFFFFFF
	ja	.LBB147_124
# BB#123:                               # %assert succeeded196
	shrq	$32, %rax
	leaq	(%rcx,%rcx,2), %rcx
	shrq	$32, %rcx
	leaq	(%rax,%rax,2), %rax
	addq	%rcx, %rax
	movabsq	$30064771072, %rcx      # imm = 0x700000000
	andq	%rax, %rcx
	jne	.LBB147_124
# BB#125:                               # %assert succeeded198
	leaq	1(%rbx), %rsi
	xorl	%edi, %edi
	vzeroupper
	callq	halide_malloc@PLT
	movq	%rax, 400(%rsp)         # 8-byte Spill
	addq	$1, %rbx
	je	.LBB147_128
# BB#126:                               # %assert succeeded198
	cmpq	$0, 400(%rsp)           # 8-byte Folded Reload
	je	.LBB147_127
.LBB147_128:                            # %assert succeeded200
	imull	%r14d, %r13d
	movq	%r13, 1824(%rsp)        # 8-byte Spill
	movslq	%r12d, %rax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	leal	31(%r15), %eax
	sarl	$5, %eax
	movl	%eax, 352(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	movq	272(%rsp), %rcx         # 8-byte Reload
	vmovss	2368(%rsp), %xmm6       # 4-byte Reload
                                        # xmm6 = mem[0],zero,zero,zero
	vmovss	2328(%rsp), %xmm7       # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
	jle	.LBB147_129
# BB#130:                               # %for f2.s0.v16.v19.preheader
	movq	2344(%rsp), %r8         # 8-byte Reload
	leal	1(%r8), %eax
	vmovd	%eax, %xmm0
	leal	31(%rcx), %r10d
	movl	%r10d, %r9d
	sarl	$5, %r9d
	movl	%r9d, 720(%rsp)         # 4-byte Spill
	movl	%r10d, %eax
	andl	$-32, %eax
	movq	%rcx, %r13
	leal	(%r12,%rax), %ecx
	leal	-32(%rax,%rcx), %edx
	leal	30(%r12,%rax), %ecx
	cmpl	%ecx, %edx
	cmovll	%ecx, %edx
	subl	%r12d, %edx
	leal	2(%rdx), %eax
	movq	%rax, 2776(%rsp)        # 8-byte Spill
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %r15
	movq	%r15, 240(%rsp)         # 8-byte Spill
	testq	$-2147483648, %r15      # imm = 0xFFFFFFFF80000000
	sete	351(%rsp)               # 1-byte Folded Spill
	movq	2720(%rsp), %rsi        # 8-byte Reload
	movl	%esi, %r11d
	subl	%r12d, %r11d
	leal	1(%r11), %eax
	vmovd	%eax, %xmm1
	vpbroadcastd	%xmm0, %ymm0
	vmovdqa	.LCPI147_1(%rip), %ymm2 # ymm2 = [0,4294967294,4294967292,4294967290,4294967288,4294967286,4294967284,4294967282]
	vpaddd	%ymm2, %ymm0, %ymm3
	vmovdqa	%ymm3, 2272(%rsp)       # 32-byte Spill
	vmovdqa	.LCPI147_2(%rip), %ymm3 # ymm3 = [4294967280,4294967278,4294967276,4294967274,4294967272,4294967270,4294967268,4294967266]
	vpaddd	%ymm3, %ymm0, %ymm0
	vmovdqa	%ymm0, 2240(%rsp)       # 32-byte Spill
	vpbroadcastd	%xmm1, %ymm0
	vmovd	%esi, %xmm1
	vpbroadcastd	%xmm1, %ymm1
	movq	2624(%rsp), %r14        # 8-byte Reload
	vmovd	%r14d, %xmm4
	vpbroadcastd	%xmm4, %ymm4
	vpbroadcastd	.LCPI147_3(%rip), %ymm5
	vpsubd	%ymm4, %ymm5, %ymm5
	vmovdqa	%ymm5, 2208(%rsp)       # 32-byte Spill
	vpaddd	%ymm1, %ymm4, %ymm1
	vpcmpeqd	%ymm4, %ymm4, %ymm4
	vpaddd	%ymm4, %ymm1, %ymm1
	vmovdqa	%ymm1, 2176(%rsp)       # 32-byte Spill
	vpaddd	%ymm2, %ymm0, %ymm1
	vmovdqa	%ymm1, 1952(%rsp)       # 32-byte Spill
	vpaddd	%ymm3, %ymm0, %ymm0
	vmovdqa	%ymm0, 1920(%rsp)       # 32-byte Spill
	vmovd	%r8d, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vpaddd	%ymm2, %ymm0, %ymm1
	vmovdqa	%ymm1, 2144(%rsp)       # 32-byte Spill
	vpaddd	%ymm3, %ymm0, %ymm0
	vmovdqa	%ymm0, 2112(%rsp)       # 32-byte Spill
	vmovd	%r11d, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vpaddd	%ymm2, %ymm0, %ymm1
	vmovdqa	%ymm1, 1888(%rsp)       # 32-byte Spill
	vpaddd	%ymm3, %ymm0, %ymm0
	vmovdqa	%ymm0, 1856(%rsp)       # 32-byte Spill
	vmovss	.LCPI147_4(%rip), %xmm4 # xmm4 = mem[0],zero,zero,zero
	vsubss	%xmm7, %xmm4, %xmm1
	vmulss	%xmm6, %xmm1, %xmm0
	vmovss	2336(%rsp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vdivss	%xmm3, %xmm0, %xmm0
	vaddss	%xmm7, %xmm0, %xmm8
	vmovss	24(%rbp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	vsubss	%xmm6, %xmm2, %xmm2
	vmulss	%xmm2, %xmm1, %xmm1
	vdivss	%xmm1, %xmm3, %xmm1
	vmovss	2400(%rsp), %xmm5       # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	vsubss	%xmm5, %xmm4, %xmm3
	vmovss	2456(%rsp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmulss	%xmm0, %xmm3, %xmm2
	vmovss	2448(%rsp), %xmm6       # 4-byte Reload
                                        # xmm6 = mem[0],zero,zero,zero
	vdivss	%xmm6, %xmm2, %xmm2
	vaddss	%xmm5, %xmm2, %xmm2
	vmovss	32(%rbp), %xmm5         # xmm5 = mem[0],zero,zero,zero
	vsubss	%xmm0, %xmm5, %xmm5
	vmulss	%xmm5, %xmm3, %xmm3
	vdivss	%xmm3, %xmm6, %xmm3
	vmovss	2496(%rsp), %xmm7       # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
	vsubss	%xmm7, %xmm4, %xmm5
	vmovss	16(%rbp), %xmm6         # xmm6 = mem[0],zero,zero,zero
	vmulss	%xmm6, %xmm5, %xmm4
	vmovss	2656(%rsp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vdivss	%xmm0, %xmm4, %xmm4
	vaddss	%xmm7, %xmm4, %xmm4
	movq	520(%rsp), %rbx         # 8-byte Reload
	movq	2560(%rsp), %rdi        # 8-byte Reload
	imull	%ebx, %edi
	vmovss	40(%rbp), %xmm7         # xmm7 = mem[0],zero,zero,zero
	vsubss	%xmm6, %xmm7, %xmm6
	movq	2712(%rsp), %rsi        # 8-byte Reload
	movq	2592(%rsp), %rax        # 8-byte Reload
	imull	%eax, %esi
	movq	2528(%rsp), %rax        # 8-byte Reload
	addl	%eax, %edi
	movq	2464(%rsp), %rax        # 8-byte Reload
	addl	%eax, %esi
	movq	%rsi, 2712(%rsp)        # 8-byte Spill
	movq	%r15, %rsi
	orq	$4, %rsi
	movq	%rsi, 336(%rsp)         # 8-byte Spill
	leal	63(%r13), %r15d
	sarl	$5, %r15d
	movl	%r15d, 908(%rsp)        # 4-byte Spill
	movq	808(%rsp), %rax         # 8-byte Reload
	movq	912(%rsp), %rsi         # 8-byte Reload
	imull	%esi, %eax
	movq	2720(%rsp), %r13        # 8-byte Reload
	addl	%r13d, %eax
	movl	%eax, 2560(%rsp)        # 4-byte Spill
	movl	%r12d, %esi
	andl	$1, %esi
	movl	%esi, 904(%rsp)         # 4-byte Spill
	leal	(,%rdx,4), %esi
	movl	%esi, 1044(%rsp)        # 4-byte Spill
	shll	$3, %edx
	movq	%rdx, 1048(%rsp)        # 8-byte Spill
	movslq	%edi, %rdx
	leaq	(%rbx,%rbx), %rsi
	subq	%rdx, %rsi
	movq	%rsi, 496(%rsp)         # 8-byte Spill
	subq	%rdx, %rbx
	movq	%rbx, 520(%rsp)         # 8-byte Spill
	movl	$2, %esi
	subq	%rdx, %rsi
	movq	%rsi, 488(%rsp)         # 8-byte Spill
	movl	$1, %esi
	subq	%rdx, %rsi
	movq	%rsi, 480(%rsp)         # 8-byte Spill
	negq	%rdx
	movq	%rdx, 504(%rsp)         # 8-byte Spill
	movl	%r11d, %esi
	sarl	$5, %esi
	addl	$31, %r11d
	sarl	$5, %r11d
	cmpl	%r11d, %esi
	leal	1(%rsi), %esi
	cmovgel	%esi, %r11d
	xorl	%edx, %edx
	testl	%r11d, %r11d
	cmovsl	%edx, %r11d
	subl	%r12d, %r14d
	addl	%r13d, %r14d
	cmpl	%r14d, %r8d
	cmovlel	%r8d, %r14d
	addl	$-31, %r14d
	leal	-30(%r8), %esi
	cmpl	%r14d, %esi
	cmovlel	%esi, %r14d
	leal	-1(%r8), %esi
	cmpl	%r14d, %esi
	cmovlel	%esi, %r14d
	cmpl	%r14d, %r8d
	cmovlel	%r8d, %r14d
	cmpl	%r14d, %r10d
	cmovlel	%r10d, %r14d
	sarl	$5, %r14d
	addl	$1, %r14d
	movl	$31, %r8d
	movq	376(%rsp), %rsi         # 8-byte Reload
	subl	%esi, %r8d
	movq	264(%rsp), %rdi         # 8-byte Reload
	subl	%edi, %r8d
	movl	%r8d, 332(%rsp)         # 4-byte Spill
	cmpl	%r11d, %r15d
	movl	%r15d, %edx
	cmovgl	%r11d, %edx
	movl	%edx, 732(%rsp)         # 4-byte Spill
	cmpl	%r14d, %edx
	movl	%r14d, %ebx
	cmovgel	%edx, %ebx
	movl	%ebx, 728(%rsp)         # 4-byte Spill
	movl	%r12d, %r10d
	subl	%r13d, %r10d
	movq	%r10, 2104(%rsp)        # 8-byte Spill
	movl	%r9d, %edx
	shll	$6, %edx
	leal	-32(%r12,%rdx), %edx
	cmpl	%ecx, %edx
	cmovgel	%edx, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, %r9
	shlq	$5, %r9
	movq	368(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rcx
	shlq	$5, %rcx
	leaq	160(%r9), %rax
	subq	%rcx, %rax
	movq	%rax, 2328(%rsp)        # 8-byte Spill
	subq	%rcx, %r9
	movq	%r9, 2336(%rsp)         # 8-byte Spill
	leaq	2(%rdx), %rax
	shlq	$4, %rdx
	movq	%r13, %rcx
	shlq	$4, %rcx
	subq	%rcx, %rdx
	movq	%rdx, 2344(%rsp)        # 8-byte Spill
	subq	%r13, %rax
	shlq	$2, %rax
	movq	%rax, 816(%rsp)         # 8-byte Spill
	movq	%r13, %rax
	negq	%rax
	movq	%rax, 320(%rsp)         # 8-byte Spill
	movl	$64, %eax
	subq	%r13, %rax
	movq	%rax, 312(%rsp)         # 8-byte Spill
	movl	$128, %eax
	subq	%r13, %rax
	movq	%rax, 304(%rsp)         # 8-byte Spill
	movq	272(%rsp), %rax         # 8-byte Reload
	leal	-1(%r12,%rax), %ecx
	movl	2048(%rsp), %eax        # 4-byte Reload
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	notl	%esi
	movslq	%eax, %rcx
	leaq	1(%rcx), %rbx
	subq	%r13, %rbx
	movq	%rbx, 656(%rsp)         # 8-byte Spill
	cmpl	%esi, %r8d
	movl	%esi, %edx
	cmovgel	%r8d, %edx
	notl	%edx
	movslq	%edx, %rax
	negq	%rax
	movq	%rax, 296(%rsp)         # 8-byte Spill
	cmpl	$31, %edi
	movl	$32, %edx
	cmovgl	%edi, %edx
	addl	$1, %ecx
	subl	%r12d, %ecx
	imull	%edx, %ecx
	vmulss	%xmm6, %xmm5, %xmm5
	vdivss	%xmm5, %xmm0, %xmm5
	movl	%r15d, %edx
	notl	%edx
	notl	%r11d
	cmpl	%r11d, %edx
	cmovgel	%edx, %r11d
	movq	%r11, 600(%rsp)         # 8-byte Spill
	movl	%r11d, %edx
	shll	$5, %edx
	leal	-32(%r12), %eax
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, 596(%rsp)         # 4-byte Spill
	movl	2560(%rsp), %r8d        # 4-byte Reload
	subl	%r8d, %eax
	subl	%edx, %eax
	movq	%rax, 472(%rsp)         # 8-byte Spill
	movl	%r11d, %edx
	notl	%edx
	movslq	%edx, %rdi
	movq	%rdi, %rax
	shlq	$7, %rax
	movq	%rax, 288(%rsp)         # 8-byte Spill
	cmpl	%r14d, %edi
	cmovll	%r14d, %edi
	movl	2320(%rsp), %eax        # 4-byte Reload
	vmovd	%eax, %xmm6
	vbroadcastss	%xmm6, %ymm6
	vmovaps	%ymm6, 2048(%rsp)       # 32-byte Spill
	vmovd	%eax, %xmm6
	vbroadcastss	%xmm6, %xmm6
	vmovaps	%xmm6, 880(%rsp)        # 16-byte Spill
	vmovd	2032(%rsp), %xmm6       # 4-byte Folded Reload
                                        # xmm6 = mem[0],zero,zero,zero
	vbroadcastss	%xmm6, %xmm6
	vmovaps	%xmm6, 2032(%rsp)       # 16-byte Spill
	movq	2720(%rsp), %rax        # 8-byte Reload
	vmovd	%eax, %xmm6
	vbroadcastss	%xmm6, %xmm6
	vmovaps	%xmm6, 2016(%rsp)       # 16-byte Spill
	vbroadcastss	%xmm1, %xmm1
	vmovaps	%xmm1, 688(%rsp)        # 16-byte Spill
	vbroadcastss	%xmm8, %xmm0
	vmovaps	%xmm0, 672(%rsp)        # 16-byte Spill
	vbroadcastss	%xmm3, %xmm0
	vmovaps	%xmm0, 640(%rsp)        # 16-byte Spill
	vbroadcastss	%xmm2, %xmm0
	vmovaps	%xmm0, 624(%rsp)        # 16-byte Spill
	vbroadcastss	%xmm5, %xmm0
	vmovaps	%xmm0, 784(%rsp)        # 16-byte Spill
	vbroadcastss	%xmm4, %xmm0
	vmovaps	%xmm0, 768(%rsp)        # 16-byte Spill
	movq	2592(%rsp), %rax        # 8-byte Reload
	vmovd	%eax, %xmm0
	vbroadcastss	%xmm0, %ymm0
	vmovaps	%ymm0, 992(%rsp)        # 32-byte Spill
	movq	1824(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %rdx
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movslq	2000(%rsp), %rdx        # 4-byte Folded Reload
	movq	%rdx, 416(%rsp)         # 8-byte Spill
	movslq	2008(%rsp), %rax        # 4-byte Folded Reload
	movq	%rax, 360(%rsp)         # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 664(%rsp)         # 8-byte Spill
	leal	1(%r11,%rdi), %eax
	movl	%eax, 580(%rsp)         # 4-byte Spill
	movslq	%edi, %rcx
	shll	$5, %edi
	movq	%rdi, 584(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	subl	%ecx, %r15d
	movl	%r15d, 576(%rsp)        # 4-byte Spill
	shlq	$7, %rcx
	movq	%rcx, 280(%rsp)         # 8-byte Spill
	movq	%r13, %rcx
	negq	%rcx
	movq	%rcx, 464(%rsp)         # 8-byte Spill
	movl	$64, %ecx
	subq	%r13, %rcx
	movq	%rcx, 456(%rsp)         # 8-byte Spill
	movl	$128, %ecx
	subq	%r13, %rcx
	movq	%rcx, 448(%rsp)         # 8-byte Spill
	leal	-1(%r10), %ecx
	movq	%rcx, 2008(%rsp)        # 8-byte Spill
	leal	-1(%r12), %ecx
	movq	%rcx, 2000(%rsp)        # 8-byte Spill
	leaq	64(%r9), %rcx
	movq	%rcx, 2320(%rsp)        # 8-byte Spill
	leaq	(%rbx,%rbx), %rcx
	movq	%rcx, 440(%rsp)         # 8-byte Spill
	vmovd	%r8d, %xmm0
	vmovaps	%ymm0, 832(%rsp)        # 32-byte Spill
	movq	2712(%rsp), %rcx        # 8-byte Reload
	vmovd	%ecx, %xmm0
	vmovdqa	%ymm0, 2400(%rsp)       # 32-byte Spill
	.align	16, 0x90
.LBB147_131:                            # %for f2.s0.v16.v19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB147_136 Depth 2
                                        #       Child Loop BB147_152 Depth 3
                                        #     Child Loop BB147_172 Depth 2
                                        #       Child Loop BB147_173 Depth 3
                                        #         Child Loop BB147_174 Depth 4
                                        #       Child Loop BB147_199 Depth 3
                                        #         Child Loop BB147_200 Depth 4
                                        #       Child Loop BB147_223 Depth 3
                                        #         Child Loop BB147_224 Depth 4
                                        #       Child Loop BB147_250 Depth 3
                                        #         Child Loop BB147_251 Depth 4
                                        #     Child Loop BB147_271 Depth 2
                                        #       Child Loop BB147_272 Depth 3
                                        #         Child Loop BB147_298 Depth 4
                                        #       Child Loop BB147_302 Depth 3
                                        #         Child Loop BB147_333 Depth 4
                                        #         Child Loop BB147_370 Depth 4
                                        #         Child Loop BB147_403 Depth 4
                                        #       Child Loop BB147_337 Depth 3
                                        #         Child Loop BB147_432 Depth 4
                                        #       Child Loop BB147_451 Depth 3
                                        #         Child Loop BB147_452 Depth 4
                                        #           Child Loop BB147_453 Depth 5
                                        #         Child Loop BB147_478 Depth 4
                                        #           Child Loop BB147_479 Depth 5
                                        #         Child Loop BB147_502 Depth 4
                                        #           Child Loop BB147_503 Depth 5
                                        #         Child Loop BB147_529 Depth 4
                                        #           Child Loop BB147_530 Depth 5
	movl	%esi, 388(%rsp)         # 4-byte Spill
	movq	%rax, 392(%rsp)         # 8-byte Spill
	movl	332(%rsp), %ecx         # 4-byte Reload
	cmpl	%ecx, %esi
	movl	%ecx, %edx
	cmovgel	%esi, %edx
	movl	%edx, %r15d
	cmpl	%ecx, %esi
	movl	%ecx, %r13d
	cmovgel	%esi, %r13d
	cmpl	%ecx, %esi
	movl	%ecx, %ebx
	cmovgel	%esi, %ebx
	cmpl	%ecx, %esi
	movl	%ecx, %edx
	cmovgel	%esi, %edx
	movq	%rdx, 1816(%rsp)        # 8-byte Spill
	cmpl	%ecx, %esi
	movl	%ecx, %r12d
	cmovgel	%esi, %r12d
	cmpl	%ecx, %esi
	cmovgel	%esi, %ecx
	movl	%ecx, 2720(%rsp)        # 4-byte Spill
	movl	%eax, %ecx
	shll	$5, %ecx
	movq	376(%rsp), %rax         # 8-byte Reload
	addl	%eax, %ecx
	movl	356(%rsp), %eax         # 4-byte Reload
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
	movq	%rcx, 528(%rsp)         # 8-byte Spill
	cmpb	$0, 351(%rsp)           # 1-byte Folded Reload
	je	.LBB147_132
# BB#133:                               # %assert succeeded202
                                        #   in Loop: Header=BB147_131 Depth=1
	xorl	%edi, %edi
	movq	336(%rsp), %rsi         # 8-byte Reload
	vzeroupper
	callq	halide_malloc@PLT
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB147_134
# BB#135:                               # %assert succeeded204
                                        #   in Loop: Header=BB147_131 Depth=1
	movl	$4, %eax
	subl	%r15d, %eax
	movq	%rax, 2456(%rsp)        # 8-byte Spill
	movl	$2, %eax
	subl	%r15d, %eax
	movq	%rax, 2448(%rsp)        # 8-byte Spill
	movl	%r15d, %eax
	notl	%eax
	cltq
	movq	$-2, %rcx
	subq	%rax, %rcx
	movq	%rcx, 544(%rsp)         # 8-byte Spill
	negl	%r15d
	movl	%r15d, 924(%rsp)        # 4-byte Spill
	movl	$2, %eax
	subl	%r13d, %eax
	movl	%eax, 556(%rsp)         # 4-byte Spill
	notl	%ebx
	movslq	%ebx, %rax
	movq	296(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	imulq	656(%rsp), %rax         # 8-byte Folded Reload
	movq	400(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 960(%rsp)         # 8-byte Spill
	movq	1816(%rsp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	negl	%ecx
	movq	%rcx, 736(%rsp)         # 8-byte Spill
	notl	%eax
	movq	%rax, 1816(%rsp)        # 8-byte Spill
	movl	$-2, %ecx
	subl	%r12d, %ecx
	movl	$1, %eax
	subl	2720(%rsp), %eax        # 4-byte Folded Reload
	movq	%rax, 2712(%rsp)        # 8-byte Spill
	movq	528(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %edx
	movq	%rdx, 1176(%rsp)        # 8-byte Spill
	leal	2(%rax), %eax
	movl	%eax, 824(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB147_136:                            # %for deinterleaved$3.s0.v16
                                        #   Parent Loop BB147_131 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB147_152 Depth 3
	movl	%ecx, 928(%rsp)         # 4-byte Spill
	movzbl	%cl, %ecx
	andl	$3, %ecx
	cmpl	$0, 908(%rsp)           # 4-byte Folded Reload
	jle	.LBB147_168
# BB#137:                               # %for deinterleaved$3.s0.v15.v15.preheader
                                        #   in Loop: Header=BB147_136 Depth=2
	imulq	816(%rsp), %rcx         # 8-byte Folded Reload
	movq	1176(%rsp), %rbx        # 8-byte Reload
	movl	%ebx, %eax
	movq	808(%rsp), %rsi         # 8-byte Reload
	subl	%esi, %eax
	cltd
	idivl	752(%rsp)               # 4-byte Folded Reload
	leaq	(%rcx,%r14), %r13
	movl	%edx, %eax
	sarl	$31, %eax
	andl	756(%rsp), %eax         # 4-byte Folded Reload
	movq	760(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %edx
	leal	(%rdx,%rax), %ecx
	leal	1(%rdx,%rax), %eax
	cmpl	$-2, %ecx
	notl	%ecx
	cmovgl	%eax, %ecx
	movl	748(%rsp), %eax         # 4-byte Reload
	subl	%ecx, %eax
	movl	744(%rsp), %ecx         # 4-byte Reload
	cmpl	%ebx, %ecx
	cmovgl	%ebx, %ecx
	cmpl	%esi, %ecx
	cmovll	%esi, %ecx
	cmpl	%ebx, 804(%rsp)         # 4-byte Folded Reload
	cmovlel	%eax, %ecx
	cmpl	%esi, %ebx
	cmovll	%eax, %ecx
	movl	904(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	setne	%r10b
	sete	%r11b
	movl	%ebx, %edx
	andl	$1, %edx
	movl	%edx, 1568(%rsp)        # 4-byte Spill
	sete	%r9b
	movq	912(%rsp), %rsi         # 8-byte Reload
	imull	%esi, %ecx
	movl	%ebx, %esi
	movq	2360(%rsp), %r8         # 8-byte Reload
	orl	%r8d, %esi
	testb	$1, %sil
	sete	%r8b
	movb	%dl, %sil
	andb	%r11b, %sil
	andb	%r10b, %r9b
	testl	%ebx, %eax
	setne	%al
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 1152(%rsp)       # 16-byte Spill
	cmpl	$1, 104(%rbp)
	je	.LBB147_138
# BB#139:                               # %for deinterleaved$3.s0.v15.v15.preheader
                                        #   in Loop: Header=BB147_136 Depth=2
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB147_140
	.align	16, 0x90
.LBB147_138:                            #   in Loop: Header=BB147_136 Depth=2
	vmovd	%r8d, %xmm0
	vpbroadcastb	%xmm0, %xmm0
.LBB147_140:                            # %for deinterleaved$3.s0.v15.v15.preheader
                                        #   in Loop: Header=BB147_136 Depth=2
	vmovdqa	%xmm0, 1136(%rsp)       # 16-byte Spill
	je	.LBB147_141
# BB#142:                               # %for deinterleaved$3.s0.v15.v15.preheader
                                        #   in Loop: Header=BB147_136 Depth=2
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB147_143
	.align	16, 0x90
.LBB147_141:                            #   in Loop: Header=BB147_136 Depth=2
	movzbl	%sil, %edx
	vmovd	%edx, %xmm0
	movzbl	%r9b, %edx
	vmovd	%edx, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm0
.LBB147_143:                            # %for deinterleaved$3.s0.v15.v15.preheader
                                        #   in Loop: Header=BB147_136 Depth=2
	vmovdqa	%xmm0, 1120(%rsp)       # 16-byte Spill
	jne	.LBB147_145
# BB#144:                               #   in Loop: Header=BB147_136 Depth=2
	vmovd	%eax, %xmm0
	vpbroadcastb	%xmm0, %xmm0
	vmovdqa	%xmm0, 1152(%rsp)       # 16-byte Spill
.LBB147_145:                            # %for deinterleaved$3.s0.v15.v15.preheader
                                        #   in Loop: Header=BB147_136 Depth=2
	vmovd	%ecx, %xmm1
	vpabsd	880(%rsp), %xmm0        # 16-byte Folded Reload
	cmpl	$0, 104(%rbp)
	jne	.LBB147_147
# BB#146:                               #   in Loop: Header=BB147_136 Depth=2
	vmovd	%esi, %xmm3
	vpbroadcastb	%xmm3, %xmm2
	vmovdqa	%xmm2, 1136(%rsp)       # 16-byte Spill
.LBB147_147:                            # %for deinterleaved$3.s0.v15.v15.preheader
                                        #   in Loop: Header=BB147_136 Depth=2
	vpsubd	832(%rsp), %ymm1, %ymm1 # 32-byte Folded Reload
	jne	.LBB147_149
# BB#148:                               #   in Loop: Header=BB147_136 Depth=2
	movzbl	%r8b, %ecx
	vmovd	%ecx, %xmm2
	movzbl	%al, %ecx
	vmovd	%ecx, %xmm3
	vpor	%xmm3, %xmm2, %xmm2
	vpbroadcastb	%xmm2, %xmm2
	vmovdqa	%xmm2, 1120(%rsp)       # 16-byte Spill
.LBB147_149:                            # %for deinterleaved$3.s0.v15.v15.preheader
                                        #   in Loop: Header=BB147_136 Depth=2
	jne	.LBB147_151
# BB#150:                               #   in Loop: Header=BB147_136 Depth=2
	vmovd	%r9d, %xmm3
	vpbroadcastb	%xmm3, %xmm2
	vmovdqa	%xmm2, 1152(%rsp)       # 16-byte Spill
.LBB147_151:                            # %for deinterleaved$3.s0.v15.v15.preheader
                                        #   in Loop: Header=BB147_136 Depth=2
	vinserti128	$1, %xmm0, %ymm0, %ymm0
	vmovdqa	%ymm0, 1088(%rsp)       # 32-byte Spill
	vpbroadcastd	%xmm1, %ymm0
	vmovdqa	%ymm0, 1056(%rsp)       # 32-byte Spill
	xorl	%r10d, %r10d
	movl	908(%rsp), %eax         # 4-byte Reload
	.align	16, 0x90
.LBB147_152:                            # %for deinterleaved$3.s0.v15.v15
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_136 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%eax, 1504(%rsp)        # 4-byte Spill
	movq	%r10, 1536(%rsp)        # 8-byte Spill
	cmpl	$0, 1568(%rsp)          # 4-byte Folded Reload
	setne	2624(%rsp)              # 1-byte Folded Spill
	sete	2592(%rsp)              # 1-byte Folded Spill
	movq	2000(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r10), %eax
	movl	%eax, 1440(%rsp)        # 4-byte Spill
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, 2720(%rsp)        # 4-byte Spill
	sete	%cl
	movl	%ecx, 2560(%rsp)        # 4-byte Spill
	movq	1176(%rsp), %rcx        # 8-byte Reload
	orl	%ecx, %eax
	testb	$1, %al
	sete	%al
	movl	%eax, 1472(%rsp)        # 4-byte Spill
	movq	2008(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r10), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm5
	vmovdqa	.LCPI147_9(%rip), %ymm0 # ymm0 = [0,2,4,6,8,10,12,14]
	vpaddd	%ymm0, %ymm5, %ymm6
	vmovdqa	%ymm0, %ymm3
	vextracti128	$1, %ymm6, %xmm0
	vpextrd	$1, %xmm0, %eax
	vmovdqa	2048(%rsp), %ymm2       # 32-byte Reload
	vextracti128	$1, %ymm2, %xmm1
	vpextrd	$1, %xmm1, %r9d
	cltd
	idivl	%r9d
	movl	%edx, 2528(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	vmovd	%xmm1, %ecx
	cltd
	idivl	%ecx
	movl	%edx, 2496(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	vpextrd	$2, %xmm1, %edi
	cltd
	idivl	%edi
	movl	%edx, 2464(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	vpextrd	$3, %xmm1, %esi
	cltd
	idivl	%esi
	movl	%edx, 2368(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm6, %eax
	vpextrd	$1, %xmm2, %r8d
	cltd
	idivl	%r8d
	movl	%edx, 1824(%rsp)        # 4-byte Spill
	vmovd	%xmm6, %eax
	vmovd	%xmm2, %ebx
	movl	%ebx, 1392(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, 1760(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm6, %eax
	vpextrd	$2, %xmm2, %ebx
	movl	%ebx, 1344(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, 1728(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm6, %eax
	vpextrd	$3, %xmm2, %ebx
	movl	%ebx, 1384(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, 1696(%rsp)        # 4-byte Spill
	vmovdqa	.LCPI147_8(%rip), %ymm0 # ymm0 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm0, %ymm5, %ymm5
	vmovdqa	%ymm0, %ymm1
	vextracti128	$1, %ymm5, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r9d
	movl	%edx, 1664(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, 1632(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%edi
	movl	%edx, 1600(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%esi
	movl	%edx, 1432(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm5, %eax
	vpextrd	$1, %xmm2, %ebx
	movl	%ebx, 1312(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, 1424(%rsp)        # 4-byte Spill
	vmovd	%xmm5, %eax
	vmovd	%xmm2, %ebx
	movl	%ebx, 1304(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, 1416(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm5, %eax
	vpextrd	$2, %xmm2, %ebx
	movl	%ebx, 1296(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, 1408(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm5, %eax
	vpextrd	$3, %xmm2, %ebx
	movl	%ebx, 1288(%rsp)        # 4-byte Spill
	cltd
	idivl	%ebx
	movl	%edx, 1400(%rsp)        # 4-byte Spill
	movq	2104(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r10), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm5
	vpaddd	%ymm3, %ymm5, %ymm6
	vmovdqa	%ymm3, %ymm9
	vextracti128	$1, %ymm6, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r9d
	movl	%edx, 1280(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, 1272(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%edi
	movl	%edx, %r11d
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%esi
	movl	%edx, %r15d
	vpextrd	$1, %xmm6, %eax
	cltd
	idivl	%r8d
	movl	%edx, %r12d
	vmovd	%xmm6, %eax
	cltd
	idivl	1392(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r8d
	vpextrd	$2, %xmm6, %eax
	cltd
	idivl	1344(%rsp)              # 4-byte Folded Reload
	movl	%edx, %ebx
	vpextrd	$3, %xmm6, %eax
	cltd
	idivl	1384(%rsp)              # 4-byte Folded Reload
	movl	%edx, 1344(%rsp)        # 4-byte Spill
	vpaddd	%ymm1, %ymm5, %ymm5
	vextracti128	$1, %ymm5, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r9d
	movl	2720(%rsp), %r9d        # 4-byte Reload
	movl	%edx, 1392(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, 1384(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%edi
	movl	%edx, %edi
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%esi
	movl	%edx, %esi
	vpextrd	$1, %xmm5, %eax
	cltd
	idivl	1312(%rsp)              # 4-byte Folded Reload
	movl	%edx, 1312(%rsp)        # 4-byte Spill
	vmovd	%xmm5, %eax
	cltd
	idivl	1304(%rsp)              # 4-byte Folded Reload
	movl	%edx, 1304(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm5, %eax
	cltd
	idivl	1296(%rsp)              # 4-byte Folded Reload
	movl	%edx, %ecx
	vpextrd	$3, %xmm5, %eax
	cltd
	idivl	1288(%rsp)              # 4-byte Folded Reload
	vmovd	2496(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 2528(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 2464(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 2368(%rsp), %xmm0, %xmm5 # 4-byte Folded Reload
	vmovd	1760(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1824(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 1728(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1696(%rsp), %xmm0, %xmm6 # 4-byte Folded Reload
	vmovd	1632(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1664(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 1600(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1432(%rsp), %xmm0, %xmm2 # 4-byte Folded Reload
	vmovd	1416(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1424(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 1408(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1400(%rsp), %xmm0, %xmm10 # 4-byte Folded Reload
	vmovd	1272(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1280(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, %r11d, %xmm0, %xmm0
	movl	2560(%rsp), %r11d       # 4-byte Reload
	vpinsrd	$3, %r15d, %xmm0, %xmm0
	vmovdqa	%xmm0, 2528(%rsp)       # 16-byte Spill
	vmovd	%r8d, %xmm0
	vpinsrd	$1, %r12d, %xmm0, %xmm0
	vpinsrd	$2, %ebx, %xmm0, %xmm0
	vmovdqa	%xmm0, 2496(%rsp)       # 16-byte Spill
	vmovd	%r10d, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vmovdqa	2272(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm12
	vmovdqa	.LCPI147_5(%rip), %ymm14 # ymm14 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vpshufb	%ymm14, %ymm12, %ymm12
	vpermq	$232, %ymm12, %ymm12    # ymm12 = ymm12[0,2,2,3]
	vmovdqa	2240(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm13
	vpshufb	%ymm14, %ymm13, %ymm13
	vpermq	$232, %ymm13, %ymm13    # ymm13 = ymm13[0,2,2,3]
	vmovdqa	.LCPI147_6(%rip), %xmm15 # xmm15 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vpshufb	%xmm15, %xmm13, %xmm3
	vpshufb	%xmm15, %xmm12, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm3[0]
	vmovdqa	.LCPI147_7(%rip), %xmm1 # xmm1 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
	vpxor	%xmm1, %xmm3, %xmm13
	vmovdqa	1952(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm4
	vpshufb	%ymm14, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vmovdqa	1920(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm12
	vpshufb	%ymm14, %ymm12, %ymm12
	vpermq	$232, %ymm12, %ymm12    # ymm12 = ymm12[0,2,2,3]
	vpshufb	%xmm15, %xmm12, %xmm3
	vpshufb	%xmm15, %xmm4, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm3[0]
	vpor	%xmm13, %xmm3, %xmm3
	vinserti128	$1, %xmm5, %ymm6, %ymm4
	vpsrad	$31, %ymm4, %ymm5
	vmovdqa	1088(%rsp), %ymm7       # 32-byte Reload
	vpand	%ymm5, %ymm7, %ymm5
	vmovdqa	2208(%rsp), %ymm13      # 32-byte Reload
	vpaddd	%ymm4, %ymm13, %ymm4
	vpaddd	%ymm5, %ymm4, %ymm4
	vpabsd	%xmm4, %xmm5
	vextracti128	$1, %ymm4, %xmm4
	vpabsd	%xmm4, %xmm4
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vmovdqa	2176(%rsp), %ymm8       # 32-byte Reload
	vpsubd	%ymm4, %ymm8, %ymm12
	movl	1440(%rsp), %r15d       # 4-byte Reload
	vmovd	%r15d, %xmm5
	vpbroadcastd	%xmm5, %ymm6
	vpaddd	%ymm9, %ymm6, %ymm5
	vmovdqa	2032(%rsp), %xmm9       # 16-byte Reload
	vpminsd	%xmm9, %xmm5, %xmm4
	vextracti128	$1, %ymm5, %xmm5
	vpminsd	%xmm9, %xmm5, %xmm5
	vmovdqa	2016(%rsp), %xmm11      # 16-byte Reload
	vpmaxsd	%xmm11, %xmm4, %xmm4
	vpmaxsd	%xmm11, %xmm5, %xmm5
	vinserti128	$1, %xmm5, %ymm4, %ymm4
	vpmovzxbd	%xmm3, %ymm5    # ymm5 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero,xmm3[4],zero,zero,zero,xmm3[5],zero,zero,zero,xmm3[6],zero,zero,zero,xmm3[7],zero,zero,zero
	vpslld	$31, %ymm5, %ymm5
	vblendvps	%ymm5, %ymm12, %ymm4, %ymm5
	vinserti128	$1, %xmm2, %ymm10, %ymm2
	vpsrad	$31, %ymm2, %ymm4
	vpand	%ymm4, %ymm7, %ymm4
	vpaddd	%ymm2, %ymm13, %ymm2
	vpaddd	%ymm4, %ymm2, %ymm2
	vpabsd	%xmm2, %xmm4
	vextracti128	$1, %ymm2, %xmm2
	vpabsd	%xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm4, %ymm2
	vmovdqa	.LCPI147_8(%rip), %ymm10 # ymm10 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm10, %ymm6, %ymm4
	vpminsd	%xmm9, %xmm4, %xmm6
	vextracti128	$1, %ymm4, %xmm4
	vpminsd	%xmm9, %xmm4, %xmm4
	vpmaxsd	%xmm11, %xmm6, %xmm6
	vpmaxsd	%xmm11, %xmm4, %xmm4
	vinserti128	$1, %xmm4, %ymm6, %ymm4
	vpsubd	%ymm2, %ymm8, %ymm2
	vpunpckhbw	%xmm3, %xmm3, %xmm3 # xmm3 = xmm3[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm2, %ymm4, %ymm6
	vmovdqa	2144(%rsp), %ymm2       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm2, %ymm2
	vpshufb	%ymm14, %ymm2, %ymm2
	vpermq	$232, %ymm2, %ymm2      # ymm2 = ymm2[0,2,2,3]
	vmovdqa	2112(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vpshufb	%ymm14, %ymm3, %ymm3
	vpermq	$232, %ymm3, %ymm3      # ymm3 = ymm3[0,2,2,3]
	vpshufb	%xmm15, %xmm3, %xmm3
	vpshufb	%xmm15, %xmm2, %xmm2
	vpunpcklqdq	%xmm3, %xmm2, %xmm2 # xmm2 = xmm2[0],xmm3[0]
	vpxor	%xmm1, %xmm2, %xmm2
	vmovdqa	1888(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vpshufb	%ymm14, %ymm3, %ymm3
	vpermq	$232, %ymm3, %ymm3      # ymm3 = ymm3[0,2,2,3]
	vmovdqa	1856(%rsp), %ymm4       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm4, %ymm0
	vpshufb	%ymm14, %ymm0, %ymm0
	vpermq	$232, %ymm0, %ymm0      # ymm0 = ymm0[0,2,2,3]
	vpshufb	%xmm15, %xmm0, %xmm0
	vpshufb	%xmm15, %xmm3, %xmm3
	vpunpcklqdq	%xmm0, %xmm3, %xmm0 # xmm0 = xmm3[0],xmm0[0]
	vpor	%xmm2, %xmm0, %xmm0
	vmovdqa	2496(%rsp), %xmm1       # 16-byte Reload
	vpinsrd	$3, 1344(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vinserti128	$1, 2528(%rsp), %ymm1, %ymm1 # 16-byte Folded Reload
	vpsrad	$31, %ymm1, %ymm2
	vpand	%ymm7, %ymm2, %ymm2
	vpaddd	%ymm1, %ymm13, %ymm1
	vpaddd	%ymm2, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm2
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm2, %ymm1
	vpsubd	%ymm1, %ymm8, %ymm1
	movq	2360(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r10), %eax
	vmovd	%eax, %xmm2
	vpbroadcastd	%xmm2, %ymm2
	vpaddd	.LCPI147_9(%rip), %ymm2, %ymm3
	vpminsd	%xmm9, %xmm3, %xmm4
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm9, %xmm3, %xmm3
	vpmaxsd	%xmm11, %xmm4, %xmm4
	vpmaxsd	%xmm11, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpmovzxbd	%xmm0, %ymm4    # ymm4 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm1, %ymm3, %ymm4
	vmovd	1384(%rsp), %xmm1       # 4-byte Folded Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vpinsrd	$1, 1392(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vpinsrd	$2, %edi, %xmm1, %xmm1
	vpinsrd	$3, %esi, %xmm1, %xmm1
	vmovd	1304(%rsp), %xmm3       # 4-byte Folded Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vpinsrd	$1, 1312(%rsp), %xmm3, %xmm3 # 4-byte Folded Reload
	vpinsrd	$2, %ecx, %xmm3, %xmm3
	vpinsrd	$3, %edx, %xmm3, %xmm3
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpsrad	$31, %ymm1, %ymm3
	vpand	%ymm7, %ymm3, %ymm3
	vpaddd	%ymm1, %ymm13, %ymm1
	vpaddd	%ymm3, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm3
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpaddd	%ymm10, %ymm2, %ymm2
	vpminsd	%xmm9, %xmm2, %xmm3
	vextracti128	$1, %ymm2, %xmm2
	vpminsd	%xmm9, %xmm2, %xmm2
	vpmaxsd	%xmm11, %xmm3, %xmm3
	vpmaxsd	%xmm11, %xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm3, %ymm2
	vpsubd	%ymm1, %ymm8, %ymm1
	vpunpckhbw	%xmm0, %xmm0, %xmm0 # xmm0 = xmm0[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpslld	$31, %ymm0, %ymm0
	vblendvps	%ymm0, %ymm1, %ymm2, %ymm0
	vmovdqa	1056(%rsp), %ymm2       # 32-byte Reload
	vpaddd	%ymm5, %ymm2, %ymm1
	vpextrq	$1, %xmm1, %rcx
	movq	%rcx, 1424(%rsp)        # 8-byte Spill
	vmovq	%xmm1, %r10
	vextracti128	$1, %ymm1, %xmm1
	vpextrq	$1, %xmm1, %r12
	movq	%r12, 1432(%rsp)        # 8-byte Spill
	vmovq	%xmm1, %r8
	andb	2624(%rsp), %r11b       # 1-byte Folded Reload
	vpaddd	%ymm6, %ymm2, %ymm1
	movq	%r10, %rax
	sarq	$32, %rax
	movq	%rax, 2368(%rsp)        # 8-byte Spill
	movq	%rcx, %rax
	sarq	$32, %rax
	movq	%rax, 2560(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	sarq	$32, %rax
	movq	%rax, 2624(%rsp)        # 8-byte Spill
	sarq	$32, %r12
	vmovq	%xmm1, %rdx
	andb	2592(%rsp), %r9b        # 1-byte Folded Reload
	movl	%r9d, %esi
	movq	%rdx, %r9
	sarq	$32, %r9
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1312(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1632(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, 1288(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1600(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1280(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1664(%rsp)        # 8-byte Spill
	vpaddd	%ymm0, %ymm2, %ymm0
	vpaddd	%ymm4, %ymm2, %ymm1
	vmovq	%xmm1, %rbx
	movq	%rbx, %rax
	sarq	$32, %rax
	movq	%rax, 2464(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1416(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2528(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, 1408(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2496(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1400(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2592(%rsp)        # 8-byte Spill
	vmovq	%xmm0, %rcx
	movq	%rcx, %rax
	sarq	$32, %rax
	movq	%rax, 1696(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rax
	movq	%rax, 1344(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1760(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm0, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, 1304(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1728(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rax
	movq	%rax, 1296(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1824(%rsp)        # 8-byte Spill
	testl	1568(%rsp), %r15d       # 4-byte Folded Reload
	vpxor	%xmm5, %xmm5, %xmm5
	setne	%dil
	cmpl	$1, 104(%rbp)
	je	.LBB147_153
# BB#154:                               # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB147_152 Depth=3
	vpxor	%xmm7, %xmm7, %xmm7
	jmp	.LBB147_155
	.align	16, 0x90
.LBB147_153:                            #   in Loop: Header=BB147_152 Depth=3
	movl	1472(%rsp), %eax        # 4-byte Reload
	vmovd	%eax, %xmm0
	vpbroadcastb	%xmm0, %xmm7
.LBB147_155:                            # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB147_152 Depth=3
	vmovaps	.LCPI147_10(%rip), %ymm9 # ymm9 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI147_11(%rip), %ymm11 # ymm11 = <4,u,5,u,6,u,7,u>
	je	.LBB147_156
# BB#157:                               # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB147_152 Depth=3
	vpxor	%xmm6, %xmm6, %xmm6
	jmp	.LBB147_158
	.align	16, 0x90
.LBB147_156:                            #   in Loop: Header=BB147_152 Depth=3
	movzbl	%r11b, %eax
	vmovd	%eax, %xmm0
	movzbl	%sil, %eax
	vmovd	%eax, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm6
.LBB147_158:                            # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB147_152 Depth=3
	jne	.LBB147_160
# BB#159:                               #   in Loop: Header=BB147_152 Depth=3
	vmovd	%edi, %xmm0
	vpbroadcastb	%xmm0, %xmm5
.LBB147_160:                            # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB147_152 Depth=3
	movq	%r13, 2656(%rsp)        # 8-byte Spill
	cmpl	$0, 104(%rbp)
	je	.LBB147_161
# BB#162:                               # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB147_152 Depth=3
	movl	%edi, 1184(%rsp)        # 4-byte Spill
	movl	%esi, 2720(%rsp)        # 4-byte Spill
	jmp	.LBB147_163
	.align	16, 0x90
.LBB147_161:                            #   in Loop: Header=BB147_152 Depth=3
	movl	%edi, 1184(%rsp)        # 4-byte Spill
	movl	%esi, 2720(%rsp)        # 4-byte Spill
	vmovd	%r11d, %xmm0
	vpbroadcastb	%xmm0, %xmm7
.LBB147_163:                            # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB147_152 Depth=3
	movslq	%edx, %rax
	movq	%rax, 1272(%rsp)        # 8-byte Spill
	movq	2352(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rdx,%rax,2), %eax
	vmovd	%eax, %xmm0
	movslq	%r10d, %rax
	movq	%rax, 1392(%rsp)        # 8-byte Spill
	movzwl	(%rdx,%rax,2), %eax
	vmovd	%eax, %xmm1
	movslq	%ecx, %rax
	movq	%rax, 1384(%rsp)        # 8-byte Spill
	movzwl	(%rdx,%rax,2), %eax
	vmovd	%eax, %xmm2
	movslq	%ebx, %rax
	movq	%rax, 1440(%rsp)        # 8-byte Spill
	movzwl	(%rdx,%rax,2), %eax
	vmovd	%eax, %xmm3
	movq	1424(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r10
	movslq	%r8d, %r15
	movq	1432(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %rsi
	movq	%rsi, 1216(%rsp)        # 8-byte Spill
	movq	1312(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %rbx
	movq	1288(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %rdi
	movq	1280(%rsp), %rax        # 8-byte Reload
	cltq
	vpinsrw	$1, (%rdx,%r9,2), %xmm0, %xmm0
	movq	%r9, 1312(%rsp)         # 8-byte Spill
	vpinsrw	$2, (%rdx,%rbx,2), %xmm0, %xmm0
	movq	1632(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rdx,%rcx,2), %xmm0, %xmm0
	vpinsrw	$4, (%rdx,%rdi,2), %xmm0, %xmm0
	movq	1600(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rdx,%rcx,2), %xmm0, %xmm0
	vpinsrw	$6, (%rdx,%rax,2), %xmm0, %xmm0
	movq	1664(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$7, (%rdx,%rcx,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm0
	movq	2368(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rdx,%rcx,2), %xmm1, %xmm1
	vpinsrw	$2, (%rdx,%r10,2), %xmm1, %xmm1
	movq	2560(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rdx,%rcx,2), %xmm1, %xmm1
	vpinsrw	$4, (%rdx,%r15,2), %xmm1, %xmm1
	movq	2624(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rdx,%rcx,2), %xmm1, %xmm1
	vpinsrw	$6, (%rdx,%rsi,2), %xmm1, %xmm1
	vpinsrw	$7, (%rdx,%r12,2), %xmm1, %xmm1
	movq	%r12, 1424(%rsp)        # 8-byte Spill
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm1, %ymm1
	vpmovzxbd	%xmm7, %ymm4    # ymm4 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vpxor	%ymm8, %ymm8, %ymm8
	vblendvps	%ymm4, %ymm1, %ymm8, %ymm1
	vpunpckhbw	%xmm7, %xmm7, %xmm4 # xmm4 = xmm7[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm0, %ymm8, %ymm0
	movq	1416(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %r9
	movq	%r9, 1288(%rsp)         # 8-byte Spill
	movq	1408(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %r8
	movq	%r8, 1416(%rsp)         # 8-byte Spill
	movq	1400(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %r12
	movq	%r12, 1432(%rsp)        # 8-byte Spill
	movq	1344(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %rsi
	movq	1304(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %r13
	movq	1296(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %r11
	movq	%r11, 1408(%rsp)        # 8-byte Spill
	movq	1696(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rdx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$2, (%rdx,%rsi,2), %xmm2, %xmm2
	movq	1760(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rdx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$4, (%rdx,%r13,2), %xmm2, %xmm2
	movq	1728(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rdx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$6, (%rdx,%r11,2), %xmm2, %xmm2
	movq	1824(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$7, (%rdx,%rcx,2), %xmm2, %xmm2
	vpmovzxwd	%xmm2, %ymm2    # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm2, %ymm2
	movq	2464(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rdx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$2, (%rdx,%r9,2), %xmm3, %xmm3
	movq	2528(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rdx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$4, (%rdx,%r8,2), %xmm3, %xmm3
	movq	2496(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rdx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$6, (%rdx,%r12,2), %xmm3, %xmm3
	movq	2592(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$7, (%rdx,%rcx,2), %xmm3, %xmm3
	movq	%rdx, %rcx
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vcvtdq2ps	%ymm3, %ymm3
	vmovdqa	1136(%rsp), %xmm7       # 16-byte Reload
	vpmovzxbd	%xmm7, %ymm4    # ymm4 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm3, %ymm8, %ymm3
	vpunpckhbw	%xmm7, %xmm7, %xmm4 # xmm4 = xmm7[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm2, %ymm8, %ymm2
	vpermps	%ymm2, %ymm9, %ymm4
	vpermps	%ymm0, %ymm11, %ymm7
	vblendps	$170, %ymm4, %ymm7, %ymm4 # ymm4 = ymm7[0],ymm4[1],ymm7[2],ymm4[3],ymm7[4],ymm4[5],ymm7[6],ymm4[7]
	vmovaps	.LCPI147_12(%rip), %ymm7 # ymm7 = <u,0,u,1,u,2,u,3>
	vmovaps	%ymm7, %ymm8
	vpermps	%ymm2, %ymm8, %ymm2
	vmovaps	.LCPI147_13(%rip), %ymm7 # ymm7 = <0,u,1,u,2,u,3,u>
	vmovaps	%ymm7, %ymm10
	vpermps	%ymm0, %ymm10, %ymm0
	vblendps	$170, %ymm2, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm2[1],ymm0[2],ymm2[3],ymm0[4],ymm2[5],ymm0[6],ymm2[7]
	vpermps	%ymm3, %ymm9, %ymm2
	vpermps	%ymm1, %ymm11, %ymm7
	vblendps	$170, %ymm2, %ymm7, %ymm2 # ymm2 = ymm7[0],ymm2[1],ymm7[2],ymm2[3],ymm7[4],ymm2[5],ymm7[6],ymm2[7]
	vpermps	%ymm3, %ymm8, %ymm3
	vmovaps	%ymm8, %ymm14
	vpermps	%ymm1, %ymm10, %ymm1
	vmovaps	%ymm10, %ymm15
	vblendps	$170, %ymm3, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm3[1],ymm1[2],ymm3[3],ymm1[4],ymm3[5],ymm1[6],ymm3[7]
	movq	2656(%rsp), %rdx        # 8-byte Reload
	vmovups	%ymm1, (%rdx)
	vmovups	%ymm2, 32(%rdx)
	vmovups	%ymm0, 64(%rdx)
	vmovups	%ymm4, 96(%rdx)
	jne	.LBB147_165
# BB#164:                               #   in Loop: Header=BB147_152 Depth=3
	movl	1472(%rsp), %edx        # 4-byte Reload
	movzbl	%dl, %edx
	vmovd	%edx, %xmm0
	movl	1184(%rsp), %edx        # 4-byte Reload
	movzbl	%dl, %edx
	vmovd	%edx, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm6
.LBB147_165:                            # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB147_152 Depth=3
	movq	1272(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %edx
	vmovd	%edx, %xmm0
	movq	1312(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rdx,2), %xmm0, %xmm0
	vpinsrw	$2, (%rcx,%rbx,2), %xmm0, %xmm0
	movq	1632(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rdx,2), %xmm0, %xmm0
	vpinsrw	$4, (%rcx,%rdi,2), %xmm0, %xmm0
	movq	1600(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rdx,2), %xmm0, %xmm0
	vpinsrw	$6, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1664(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1392(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm1
	movq	2368(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm1, %xmm1
	vpinsrw	$2, (%rcx,%r10,2), %xmm1, %xmm1
	movq	2560(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm1, %xmm1
	vpinsrw	$4, (%rcx,%r15,2), %xmm1, %xmm1
	movq	2624(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1216(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1424(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1384(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm2
	movq	1696(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm2, %xmm2
	vpinsrw	$2, (%rcx,%rsi,2), %xmm2, %xmm2
	movq	1760(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm2, %xmm2
	vpinsrw	$4, (%rcx,%r13,2), %xmm2, %xmm2
	movq	1728(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1408(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1824(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1440(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm3
	movq	2464(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1288(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2528(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1416(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2496(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1432(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2592(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm3, %xmm3
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm7
	vpmovzxwd	%xmm1, %ymm0    # ymm0 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm0, %ymm10
	vpmovzxbd	%xmm6, %ymm0    # ymm0 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
	vpslld	$31, %ymm0, %ymm0
	vxorps	%ymm8, %ymm8, %ymm8
	vblendvps	%ymm0, %ymm10, %ymm8, %ymm4
	vpunpckhbw	%xmm6, %xmm6, %xmm0 # xmm0 = xmm6[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpslld	$31, %ymm0, %ymm0
	vblendvps	%ymm0, %ymm7, %ymm8, %ymm6
	vpmovzxwd	%xmm2, %ymm0    # ymm0 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm0, %ymm1
	vpmovzxwd	%xmm3, %ymm0    # ymm0 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vcvtdq2ps	%ymm0, %ymm0
	vmovdqa	1120(%rsp), %xmm3       # 16-byte Reload
	vpmovzxbd	%xmm3, %ymm2    # ymm2 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero,xmm3[4],zero,zero,zero,xmm3[5],zero,zero,zero,xmm3[6],zero,zero,zero,xmm3[7],zero,zero,zero
	vpslld	$31, %ymm2, %ymm2
	vblendvps	%ymm2, %ymm0, %ymm8, %ymm2
	vpunpckhbw	%xmm3, %xmm3, %xmm3 # xmm3 = xmm3[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm1, %ymm8, %ymm3
	vpermps	%ymm3, %ymm9, %ymm12
	vpermps	%ymm6, %ymm11, %ymm13
	vblendps	$170, %ymm12, %ymm13, %ymm12 # ymm12 = ymm13[0],ymm12[1],ymm13[2],ymm12[3],ymm13[4],ymm12[5],ymm13[6],ymm12[7]
	vpermps	%ymm3, %ymm14, %ymm3
	vpermps	%ymm6, %ymm15, %ymm6
	vblendps	$170, %ymm3, %ymm6, %ymm3 # ymm3 = ymm6[0],ymm3[1],ymm6[2],ymm3[3],ymm6[4],ymm3[5],ymm6[6],ymm3[7]
	vpermps	%ymm2, %ymm9, %ymm6
	vpermps	%ymm4, %ymm11, %ymm13
	vblendps	$170, %ymm6, %ymm13, %ymm6 # ymm6 = ymm13[0],ymm6[1],ymm13[2],ymm6[3],ymm13[4],ymm6[5],ymm13[6],ymm6[7]
	vpermps	%ymm2, %ymm14, %ymm2
	vmovaps	%ymm14, %ymm8
	vpermps	%ymm4, %ymm15, %ymm4
	vmovaps	%ymm15, %ymm13
	vblendps	$170, %ymm2, %ymm4, %ymm2 # ymm2 = ymm4[0],ymm2[1],ymm4[2],ymm2[3],ymm4[4],ymm2[5],ymm4[6],ymm2[7]
	movq	2344(%rsp), %rax        # 8-byte Reload
	movq	2656(%rsp), %r13        # 8-byte Reload
	vmovups	%ymm2, 32(%rax,%r13)
	vmovups	%ymm6, 64(%rax,%r13)
	vmovups	%ymm3, 96(%rax,%r13)
	vmovups	%ymm12, 128(%rax,%r13)
	jne	.LBB147_167
# BB#166:                               #   in Loop: Header=BB147_152 Depth=3
	movl	2720(%rsp), %eax        # 4-byte Reload
	vmovd	%eax, %xmm2
	vpbroadcastb	%xmm2, %xmm5
.LBB147_167:                            # %for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB147_152 Depth=3
	movq	1536(%rsp), %r10        # 8-byte Reload
	vpmovzxbd	%xmm5, %ymm2    # ymm2 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
	vpslld	$31, %ymm2, %ymm2
	vxorps	%ymm6, %ymm6, %ymm6
	vblendvps	%ymm2, %ymm10, %ymm6, %ymm2
	vpunpckhbw	%xmm5, %xmm5, %xmm3 # xmm3 = xmm5[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm7, %ymm6, %ymm3
	vmovdqa	1152(%rsp), %xmm5       # 16-byte Reload
	vpmovzxbd	%xmm5, %ymm4    # ymm4 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm0, %ymm6, %ymm0
	vpunpckhbw	%xmm5, %xmm5, %xmm4 # xmm4 = xmm5[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm1, %ymm6, %ymm1
	vpermps	%ymm1, %ymm9, %ymm4
	vpermps	%ymm3, %ymm11, %ymm5
	vblendps	$170, %ymm4, %ymm5, %ymm4 # ymm4 = ymm5[0],ymm4[1],ymm5[2],ymm4[3],ymm5[4],ymm4[5],ymm5[6],ymm4[7]
	vpermps	%ymm1, %ymm8, %ymm1
	vpermps	%ymm3, %ymm13, %ymm3
	vblendps	$170, %ymm1, %ymm3, %ymm1 # ymm1 = ymm3[0],ymm1[1],ymm3[2],ymm1[3],ymm3[4],ymm1[5],ymm3[6],ymm1[7]
	vpermps	%ymm0, %ymm9, %ymm3
	vpermps	%ymm2, %ymm11, %ymm5
	vblendps	$170, %ymm3, %ymm5, %ymm3 # ymm3 = ymm5[0],ymm3[1],ymm5[2],ymm3[3],ymm5[4],ymm3[5],ymm5[6],ymm3[7]
	vpermps	%ymm0, %ymm8, %ymm0
	vpermps	%ymm2, %ymm13, %ymm2
	vblendps	$170, %ymm0, %ymm2, %ymm0 # ymm0 = ymm2[0],ymm0[1],ymm2[2],ymm0[3],ymm2[4],ymm0[5],ymm2[6],ymm0[7]
	movq	2320(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm0, (%rax,%r13)
	movq	2336(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm3, 96(%rax,%r13)
	vmovups	%ymm1, 128(%rax,%r13)
	movq	2328(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm4, (%rax,%r13)
	addl	$32, %r10d
	subq	$-128, %r13
	movl	1504(%rsp), %eax        # 4-byte Reload
	addl	$-1, %eax
	jne	.LBB147_152
.LBB147_168:                            # %end for deinterleaved$3.s0.v15.v15
                                        #   in Loop: Header=BB147_136 Depth=2
	movq	1176(%rsp), %rdx        # 8-byte Reload
	leal	1(%rdx), %eax
	movl	928(%rsp), %ecx         # 4-byte Reload
	addb	$1, %cl
	cmpl	824(%rsp), %edx         # 4-byte Folded Reload
	movq	%rax, 1176(%rsp)        # 8-byte Spill
	jne	.LBB147_136
# BB#169:                               # %consume deinterleaved$3
                                        #   in Loop: Header=BB147_131 Depth=1
	movq	528(%rsp), %rax         # 8-byte Reload
	movslq	%eax, %rdx
	cmpl	$0, 720(%rsp)           # 4-byte Folded Reload
	movq	712(%rsp), %rsi         # 8-byte Reload
	movq	664(%rsp), %r13         # 8-byte Reload
	jle	.LBB147_170
# BB#171:                               # %produce demosaiced$3.preheader
                                        #   in Loop: Header=BB147_131 Depth=1
	movq	512(%rsp), %rax         # 8-byte Reload
	movq	496(%rsp), %rcx         # 8-byte Reload
	vbroadcastss	8(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1696(%rsp)       # 32-byte Spill
	vbroadcastss	4(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1664(%rsp)       # 32-byte Spill
	vbroadcastss	(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1632(%rsp)       # 32-byte Spill
	movq	520(%rsp), %rcx         # 8-byte Reload
	vbroadcastss	8(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1600(%rsp)       # 32-byte Spill
	vbroadcastss	4(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1568(%rsp)       # 32-byte Spill
	vbroadcastss	(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1536(%rsp)       # 32-byte Spill
	movq	488(%rsp), %rcx         # 8-byte Reload
	vbroadcastss	(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1504(%rsp)       # 32-byte Spill
	movq	480(%rsp), %rcx         # 8-byte Reload
	vbroadcastss	(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1472(%rsp)       # 32-byte Spill
	movq	504(%rsp), %rcx         # 8-byte Reload
	vpbroadcastd	(%rax,%rcx,4), %ymm0
	vmovdqa	%ymm0, 1440(%rsp)       # 32-byte Spill
	movq	%rdx, %rax
	movq	%rdx, 536(%rsp)         # 8-byte Spill
	subq	360(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1384(%rsp)        # 8-byte Spill
	movq	736(%rsp), %r11         # 8-byte Reload
	leal	2(%r11), %r9d
	leal	-1(%r11), %ecx
	movq	%rcx, 2656(%rsp)        # 8-byte Spill
	movq	304(%rsp), %rcx         # 8-byte Reload
	movq	312(%rsp), %rdx         # 8-byte Reload
	movq	2360(%rsp), %r8         # 8-byte Reload
	movl	%r8d, %eax
	movq	320(%rsp), %rdi         # 8-byte Reload
	xorl	%ebx, %ebx
	vmovaps	688(%rsp), %xmm6        # 16-byte Reload
	vmovaps	672(%rsp), %xmm13       # 16-byte Reload
	.align	16, 0x90
.LBB147_172:                            # %produce demosaiced$3
                                        #   Parent Loop BB147_131 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB147_173 Depth 3
                                        #         Child Loop BB147_174 Depth 4
                                        #       Child Loop BB147_199 Depth 3
                                        #         Child Loop BB147_200 Depth 4
                                        #       Child Loop BB147_223 Depth 3
                                        #         Child Loop BB147_224 Depth 4
                                        #       Child Loop BB147_250 Depth 3
                                        #         Child Loop BB147_251 Depth 4
	movq	%rbx, 1400(%rsp)        # 8-byte Spill
	movq	%rdi, 1408(%rsp)        # 8-byte Spill
	movl	%eax, 1416(%rsp)        # 4-byte Spill
	movq	%rdx, 1424(%rsp)        # 8-byte Spill
	movq	%rcx, 1432(%rsp)        # 8-byte Spill
	cltq
	leaq	(%rcx,%rax), %rcx
	leaq	2784(%rsp,%rcx,4), %rcx
	movq	%rcx, 1392(%rsp)        # 8-byte Spill
	leaq	(%rdx,%rax), %rcx
	leaq	2784(%rsp,%rcx,4), %rcx
	movq	%rcx, 2368(%rsp)        # 8-byte Spill
	leaq	(%rax,%rdi), %rax
	movq	%r8, %rcx
	leaq	2784(%rsp,%rax,4), %r12
	shll	$5, %ebx
	addl	%ecx, %ebx
	movq	%rbx, 1760(%rsp)        # 8-byte Spill
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB147_173:                            # %for demosaiced$3.s0.v15.v15
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_172 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB147_174 Depth 4
	movq	%rax, 1728(%rsp)        # 8-byte Spill
	movq	1760(%rsp), %rcx        # 8-byte Reload
	leal	(%rcx,%r15,8), %eax
	movl	%ecx, %r10d
	andl	$1, %r10d
	movq	2360(%rsp), %rcx        # 8-byte Reload
	subl	%ecx, %eax
	xorl	%r8d, %r8d
	movq	%r12, %r13
	.align	16, 0x90
.LBB147_174:                            # %for demosaiced$3.s0.v16
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_172 Depth=2
                                        #       Parent Loop BB147_173 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leal	(%r9,%r8), %edx
	andl	$3, %edx
	movq	2776(%rsp), %rbx        # 8-byte Reload
	imull	%ebx, %edx
	movq	1816(%rsp), %rcx        # 8-byte Reload
	leal	(%rcx,%r8), %esi
	addl	%eax, %edx
	leal	(%r11,%r8), %edi
	andl	$3, %edi
	imull	%ebx, %edi
	movl	%esi, %ecx
	andl	$3, %ecx
	imull	%ebx, %ecx
	addl	%eax, %edi
	addl	%eax, %ecx
	movslq	%edx, %rdx
	vmovups	(%r14,%rdx,4), %xmm8
	vmovups	16(%r14,%rdx,4), %xmm9
	vshufps	$221, %xmm9, %xmm8, %xmm1 # xmm1 = xmm8[1,3],xmm9[1,3]
	vsubps	%xmm13, %xmm1, %xmm1
	vmulps	%xmm1, %xmm6, %xmm14
	movslq	%edi, %rdi
	vmovups	(%r14,%rdi,4), %xmm5
	vmovups	16(%r14,%rdi,4), %xmm7
	vshufps	$221, %xmm7, %xmm5, %xmm2 # xmm2 = xmm5[1,3],xmm7[1,3]
	vsubps	%xmm13, %xmm2, %xmm2
	vmulps	%xmm2, %xmm6, %xmm4
	vmovups	8(%r14,%rdx,4), %xmm0
	vmovaps	%xmm0, 2624(%rsp)       # 16-byte Spill
	vmovups	24(%r14,%rdx,4), %xmm2
	vmovaps	%xmm2, 2592(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm2, %xmm0, %xmm2 # xmm2 = xmm0[0,2],xmm2[0,2]
	vsubps	%xmm13, %xmm2, %xmm2
	vmovaps	%xmm6, %xmm3
	vmulps	%xmm2, %xmm3, %xmm6
	vmovups	8(%r14,%rdi,4), %xmm0
	vmovaps	%xmm0, 2464(%rsp)       # 16-byte Spill
	vmovups	24(%r14,%rdi,4), %xmm15
	vshufps	$136, %xmm15, %xmm0, %xmm2 # xmm2 = xmm0[0,2],xmm15[0,2]
	vsubps	%xmm13, %xmm2, %xmm2
	vmulps	%xmm2, %xmm3, %xmm0
	vbroadcastss	.LCPI147_14(%rip), %xmm12
	vminps	%xmm12, %xmm0, %xmm0
	vxorps	%xmm10, %xmm10, %xmm10
	vmaxps	%xmm10, %xmm0, %xmm1
	vminps	%xmm12, %xmm6, %xmm0
	vmaxps	%xmm10, %xmm0, %xmm11
	vbroadcastss	.LCPI147_15(%rip), %xmm6
	vminps	%xmm12, %xmm4, %xmm0
	vmaxps	%xmm10, %xmm0, %xmm2
	vminps	%xmm12, %xmm14, %xmm0
	vmaxps	%xmm10, %xmm0, %xmm0
	vbroadcastss	.LCPI147_16(%rip), %xmm4
	testl	%r10d, %r10d
	je	.LBB147_175
# BB#176:                               # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vmovaps	%xmm2, 2496(%rsp)       # 16-byte Spill
	vmovaps	%xmm0, 2560(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm7, %xmm5, %xmm0 # xmm0 = xmm5[0,2],xmm7[0,2]
	vsubps	%xmm13, %xmm0, %xmm0
	vmulps	%xmm0, %xmm3, %xmm0
	vminps	%xmm12, %xmm0, %xmm0
	vmaxps	%xmm10, %xmm0, %xmm0
	vaddps	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm1, 2528(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm9, %xmm8, %xmm1 # xmm1 = xmm8[0,2],xmm9[0,2]
	vsubps	%xmm13, %xmm1, %xmm1
	vmulps	%xmm1, %xmm3, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm10, %xmm1, %xmm1
	vaddps	%xmm11, %xmm1, %xmm1
	vaddps	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm6, 2720(%rsp)       # 16-byte Spill
	vmulps	%xmm6, %xmm0, %xmm2
	jmp	.LBB147_177
	.align	16, 0x90
.LBB147_175:                            #   in Loop: Header=BB147_174 Depth=4
	vmovaps	%xmm1, 2528(%rsp)       # 16-byte Spill
	vmovaps	%xmm6, 2720(%rsp)       # 16-byte Spill
	vmovaps	%xmm0, 2560(%rsp)       # 16-byte Spill
	vaddps	%xmm2, %xmm0, %xmm0
	vmovaps	%xmm2, 2496(%rsp)       # 16-byte Spill
	vmulps	%xmm4, %xmm0, %xmm2
.LBB147_177:                            # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	movslq	%ecx, %rcx
	vmovups	(%r14,%rcx,4), %xmm1
	vmovups	16(%r14,%rcx,4), %xmm8
	vshufps	$221, %xmm8, %xmm1, %xmm0 # xmm0 = xmm1[1,3],xmm8[1,3]
	vsubps	%xmm13, %xmm0, %xmm0
	vmulps	%xmm0, %xmm3, %xmm6
	vmovaps	%xmm13, %xmm14
	vmovups	8(%r14,%rcx,4), %xmm13
	vmovups	24(%r14,%rcx,4), %xmm0
	vshufps	$136, %xmm0, %xmm13, %xmm5 # xmm5 = xmm13[0,2],xmm0[0,2]
	vsubps	%xmm14, %xmm5, %xmm5
	vmulps	%xmm5, %xmm3, %xmm5
	vminps	%xmm12, %xmm5, %xmm5
	vmaxps	%xmm10, %xmm5, %xmm5
	vminps	%xmm12, %xmm6, %xmm6
	vmaxps	%xmm10, %xmm6, %xmm9
	vxorps	%xmm6, %xmm6, %xmm6
	vmovaps	%xmm9, %xmm7
	vmovaps	%xmm4, %xmm10
	je	.LBB147_179
# BB#178:                               # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vshufps	$136, %xmm8, %xmm1, %xmm1 # xmm1 = xmm1[0,2],xmm8[0,2]
	vsubps	%xmm14, %xmm1, %xmm1
	vmulps	%xmm1, %xmm3, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm6, %xmm1, %xmm1
	vaddps	%xmm5, %xmm1, %xmm1
	vmulps	%xmm10, %xmm1, %xmm7
.LBB147_179:                            # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	jne	.LBB147_180
# BB#181:                               # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vmovaps	2464(%rsp), %xmm1       # 16-byte Reload
	vshufps	$221, %xmm15, %xmm1, %xmm1 # xmm1 = xmm1[1,3],xmm15[1,3]
	vsubps	%xmm14, %xmm1, %xmm1
	vmovaps	%xmm3, %xmm6
	vmulps	%xmm1, %xmm6, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vxorps	%xmm3, %xmm3, %xmm3
	vmaxps	%xmm3, %xmm1, %xmm1
	vaddps	2496(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
	vmovaps	2624(%rsp), %xmm4       # 16-byte Reload
	vshufps	$221, 2592(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
                                        # xmm4 = xmm4[1,3],mem[1,3]
	vsubps	%xmm14, %xmm4, %xmm4
	vmulps	%xmm4, %xmm6, %xmm4
	vminps	%xmm12, %xmm4, %xmm4
	vmaxps	%xmm3, %xmm4, %xmm4
	vaddps	2560(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
	vaddps	%xmm1, %xmm4, %xmm1
	vmulps	2720(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
	jmp	.LBB147_182
	.align	16, 0x90
.LBB147_180:                            #   in Loop: Header=BB147_174 Depth=4
	vaddps	2528(%rsp), %xmm11, %xmm1 # 16-byte Folded Reload
	vmulps	%xmm10, %xmm1, %xmm1
	vmovaps	%xmm3, %xmm6
	vxorps	%xmm3, %xmm3, %xmm3
.LBB147_182:                            # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	jne	.LBB147_184
# BB#183:                               # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vshufps	$221, %xmm0, %xmm13, %xmm0 # xmm0 = xmm13[1,3],xmm0[1,3]
	vsubps	%xmm14, %xmm0, %xmm0
	vmulps	%xmm0, %xmm6, %xmm0
	vminps	%xmm12, %xmm0, %xmm0
	vmaxps	%xmm3, %xmm0, %xmm0
	vaddps	%xmm0, %xmm9, %xmm0
	vmulps	%xmm10, %xmm0, %xmm5
.LBB147_184:                            # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vmovaps	%xmm7, %xmm0
	andl	$1, %esi
	je	.LBB147_186
# BB#185:                               # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vmovaps	%xmm2, %xmm0
.LBB147_186:                            # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vmovaps	%xmm14, %xmm13
	je	.LBB147_188
# BB#187:                               # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vmovaps	%xmm7, %xmm2
.LBB147_188:                            # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vmovaps	%xmm5, %xmm3
	je	.LBB147_190
# BB#189:                               # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vmovaps	%xmm1, %xmm3
.LBB147_190:                            # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	testl	%esi, %esi
	je	.LBB147_192
# BB#191:                               # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vmovaps	%xmm5, %xmm1
.LBB147_192:                            # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	cmpl	$0, 104(%rbp)
	je	.LBB147_194
# BB#193:                               # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vmovaps	%xmm0, %xmm2
.LBB147_194:                            # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	je	.LBB147_196
# BB#195:                               # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vmovaps	%xmm3, %xmm1
.LBB147_196:                            # %for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_174 Depth=4
	vmovaps	.LCPI147_12(%rip), %ymm0 # ymm0 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm1, %ymm0, %ymm0
	vmovaps	.LCPI147_13(%rip), %ymm1 # ymm1 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm2, %ymm1, %ymm1
	vblendps	$170, %ymm0, %ymm1, %ymm0 # ymm0 = ymm1[0],ymm0[1],ymm1[2],ymm0[3],ymm1[4],ymm0[5],ymm1[6],ymm0[7]
	vmovups	%ymm0, (%r13)
	subq	$-128, %r13
	addl	$1, %r8d
	cmpl	$2, %r8d
	jne	.LBB147_174
# BB#197:                               # %end for demosaiced$3.s0.v16
                                        #   in Loop: Header=BB147_173 Depth=3
	vmovaps	%xmm10, %xmm15
	movq	1728(%rsp), %rax        # 8-byte Reload
	addq	$1, %rax
	addl	$1, %r15d
	addq	$32, %r12
	xorl	%edx, %edx
	cmpq	$4, %rax
	jne	.LBB147_173
# BB#198:                               #   in Loop: Header=BB147_172 Depth=2
	xorl	%esi, %esi
	vmovaps	640(%rsp), %xmm9        # 16-byte Reload
	vmovaps	624(%rsp), %xmm10       # 16-byte Reload
	vxorps	%xmm11, %xmm11, %xmm11
	vmovaps	2720(%rsp), %xmm2       # 16-byte Reload
	movq	2368(%rsp), %rcx        # 8-byte Reload
	.align	16, 0x90
.LBB147_199:                            # %for demosaiced$3.s0.v15.v15205
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_172 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB147_200 Depth 4
	movq	%rdx, 2624(%rsp)        # 8-byte Spill
	movq	%rcx, 2368(%rsp)        # 8-byte Spill
	movq	1760(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rsi,8), %r13d
	movq	%rsi, %r12
	movq	2360(%rsp), %rax        # 8-byte Reload
	subl	%eax, %r13d
	addl	1044(%rsp), %r13d       # 4-byte Folded Reload
	xorl	%edi, %edi
	movq	%rcx, %rax
	.align	16, 0x90
.LBB147_200:                            # %for demosaiced$3.s0.v16209
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_172 Depth=2
                                        #       Parent Loop BB147_199 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	2656(%rsp), %rcx        # 8-byte Reload
	leal	(%rcx,%rdi), %r15d
	movl	%r15d, %edx
	andl	$3, %edx
	movq	2776(%rsp), %rcx        # 8-byte Reload
	imull	%ecx, %edx
	leal	(%r9,%rdi), %esi
	andl	$3, %esi
	imull	%ecx, %esi
	leal	(%rdx,%r13), %edx
	leal	(%rsi,%r13), %ebx
	leal	(%r11,%rdi), %esi
	andl	$3, %esi
	imull	%ecx, %esi
	leal	(%rsi,%r13), %esi
	movslq	%edx, %r8
	vmovups	40(%r14,%r8,4), %xmm8
	vmovups	56(%r14,%r8,4), %xmm4
	vshufps	$136, %xmm4, %xmm8, %xmm0 # xmm0 = xmm8[0,2],xmm4[0,2]
	vsubps	%xmm10, %xmm0, %xmm0
	vmulps	%xmm0, %xmm9, %xmm0
	movslq	%esi, %rsi
	vmovups	32(%r14,%rsi,4), %xmm1
	vshufps	$221, 48(%r14,%rsi,4), %xmm1, %xmm1 # xmm1 = xmm1[1,3],mem[1,3]
	vsubps	%xmm10, %xmm1, %xmm1
	vmulps	%xmm1, %xmm9, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm11, %xmm1, %xmm1
	movslq	%ebx, %rdx
	vmovups	32(%r14,%rdx,4), %xmm5
	vshufps	$221, 48(%r14,%rdx,4), %xmm5, %xmm5 # xmm5 = xmm5[1,3],mem[1,3]
	vsubps	%xmm10, %xmm5, %xmm5
	vmulps	%xmm5, %xmm9, %xmm5
	vminps	%xmm12, %xmm5, %xmm5
	vmaxps	%xmm11, %xmm5, %xmm5
	vaddps	%xmm5, %xmm1, %xmm1
	vminps	%xmm12, %xmm0, %xmm0
	vmaxps	%xmm11, %xmm0, %xmm5
	vmovups	32(%r14,%r8,4), %xmm0
	vmovups	48(%r14,%r8,4), %xmm6
	vshufps	$136, %xmm6, %xmm0, %xmm7 # xmm7 = xmm0[0,2],xmm6[0,2]
	vsubps	%xmm10, %xmm7, %xmm7
	vmulps	%xmm7, %xmm9, %xmm7
	vminps	%xmm12, %xmm7, %xmm7
	vmaxps	%xmm11, %xmm7, %xmm7
	vaddps	%xmm7, %xmm5, %xmm7
	vaddps	%xmm7, %xmm1, %xmm1
	vshufps	$221, %xmm6, %xmm0, %xmm0 # xmm0 = xmm0[1,3],xmm6[1,3]
	vsubps	%xmm10, %xmm0, %xmm0
	vmulps	%xmm0, %xmm9, %xmm0
	vmulps	%xmm2, %xmm1, %xmm1
	vminps	%xmm12, %xmm0, %xmm0
	vmaxps	%xmm11, %xmm0, %xmm6
	vmovaps	%xmm6, %xmm0
	testl	%r10d, %r10d
	je	.LBB147_202
# BB#201:                               # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	%xmm1, %xmm0
.LBB147_202:                            # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	je	.LBB147_204
# BB#203:                               # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	%xmm6, %xmm1
.LBB147_204:                            # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovups	40(%r14,%rsi,4), %xmm7
	vshufps	$136, 56(%r14,%rsi,4), %xmm7, %xmm7 # xmm7 = xmm7[0,2],mem[0,2]
	vsubps	%xmm10, %xmm7, %xmm7
	vmulps	%xmm7, %xmm9, %xmm7
	vminps	%xmm12, %xmm7, %xmm7
	vmaxps	%xmm11, %xmm7, %xmm7
	vmovups	40(%r14,%rdx,4), %xmm3
	vshufps	$136, 56(%r14,%rdx,4), %xmm3, %xmm3 # xmm3 = xmm3[0,2],mem[0,2]
	vsubps	%xmm10, %xmm3, %xmm3
	vmulps	%xmm3, %xmm9, %xmm3
	vminps	%xmm12, %xmm3, %xmm3
	vmaxps	%xmm11, %xmm3, %xmm3
	vaddps	%xmm3, %xmm7, %xmm3
	vshufps	$221, %xmm4, %xmm8, %xmm4 # xmm4 = xmm8[1,3],xmm4[1,3]
	vsubps	%xmm10, %xmm4, %xmm4
	vmulps	%xmm4, %xmm9, %xmm4
	vminps	%xmm12, %xmm4, %xmm4
	vmaxps	%xmm11, %xmm4, %xmm4
	vaddps	%xmm6, %xmm4, %xmm4
	vaddps	%xmm3, %xmm4, %xmm3
	vmulps	%xmm2, %xmm3, %xmm4
	vmovaps	%xmm5, %xmm3
	jne	.LBB147_206
# BB#205:                               # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	%xmm4, %xmm3
.LBB147_206:                            # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	jne	.LBB147_208
# BB#207:                               # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	%xmm5, %xmm4
.LBB147_208:                            # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	%xmm1, %xmm5
	andl	$1, %r15d
	je	.LBB147_210
# BB#209:                               # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	%xmm0, %xmm5
.LBB147_210:                            # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	%xmm4, %xmm6
	je	.LBB147_212
# BB#211:                               # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	%xmm3, %xmm6
.LBB147_212:                            # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	je	.LBB147_214
# BB#213:                               # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	%xmm4, %xmm3
.LBB147_214:                            # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	testl	%r15d, %r15d
	je	.LBB147_216
# BB#215:                               # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	%xmm1, %xmm0
.LBB147_216:                            # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	cmpl	$0, 104(%rbp)
	je	.LBB147_218
# BB#217:                               # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	%xmm5, %xmm0
.LBB147_218:                            # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	je	.LBB147_220
# BB#219:                               # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	%xmm6, %xmm3
.LBB147_220:                            # %for demosaiced$3.s0.v16209
                                        #   in Loop: Header=BB147_200 Depth=4
	vmovaps	.LCPI147_12(%rip), %ymm1 # ymm1 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm3, %ymm1, %ymm1
	vmovaps	.LCPI147_13(%rip), %ymm3 # ymm3 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm0, %ymm3, %ymm0
	vblendps	$170, %ymm1, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm1[1],ymm0[2],ymm1[3],ymm0[4],ymm1[5],ymm0[6],ymm1[7]
	vmovups	%ymm0, (%rax)
	subq	$-128, %rax
	addl	$1, %edi
	cmpl	$2, %edi
	jne	.LBB147_200
# BB#221:                               # %end for demosaiced$3.s0.v16210
                                        #   in Loop: Header=BB147_199 Depth=3
	movq	2624(%rsp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%r12, %rsi
	addl	$1, %esi
	movq	2368(%rsp), %rcx        # 8-byte Reload
	addq	$32, %rcx
	xorl	%r12d, %r12d
	cmpq	$4, %rdx
	jne	.LBB147_199
# BB#222:                               #   in Loop: Header=BB147_172 Depth=2
	xorl	%ecx, %ecx
	vmovaps	784(%rsp), %xmm14       # 16-byte Reload
	vmovaps	768(%rsp), %xmm9        # 16-byte Reload
	movq	1392(%rsp), %r15        # 8-byte Reload
	vmovaps	%xmm15, %xmm10
	vmovaps	%xmm10, 1824(%rsp)      # 16-byte Spill
	.align	16, 0x90
.LBB147_223:                            # %for demosaiced$3.s0.v15.v15212
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_172 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB147_224 Depth 4
	movq	%rcx, 1728(%rsp)        # 8-byte Spill
	movq	1760(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rcx,8), %r13d
	movq	2360(%rsp), %rax        # 8-byte Reload
	subl	%eax, %r13d
	movq	1048(%rsp), %rax        # 8-byte Reload
	addl	%eax, %r13d
	xorl	%ebx, %ebx
	movq	%r15, %rax
	.align	16, 0x90
.LBB147_224:                            # %for demosaiced$3.s0.v16216
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_172 Depth=2
                                        #       Parent Loop BB147_223 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	2656(%rsp), %rcx        # 8-byte Reload
	leal	(%rcx,%rbx), %esi
	movl	%esi, %ecx
	andl	$3, %ecx
	movq	2776(%rsp), %rdi        # 8-byte Reload
	imull	%edi, %ecx
	leal	(%r9,%rbx), %edx
	andl	$3, %edx
	imull	%edi, %edx
	leal	(%rcx,%r13), %r8d
	leal	(%rdx,%r13), %ecx
	leal	(%r11,%rbx), %edx
	andl	$3, %edx
	imull	%edi, %edx
	leal	(%rdx,%r13), %edx
	movslq	%r8d, %rdi
	vmovups	72(%r14,%rdi,4), %xmm0
	vmovaps	%xmm0, 2592(%rsp)       # 16-byte Spill
	vmovups	88(%r14,%rdi,4), %xmm1
	vmovaps	%xmm1, 2560(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0,2],xmm1[0,2]
	vsubps	%xmm9, %xmm0, %xmm0
	vmulps	%xmm0, %xmm14, %xmm3
	vmovups	64(%r14,%rdi,4), %xmm0
	vmovups	80(%r14,%rdi,4), %xmm1
	vshufps	$221, %xmm1, %xmm0, %xmm4 # xmm4 = xmm0[1,3],xmm1[1,3]
	vsubps	%xmm9, %xmm4, %xmm4
	vmulps	%xmm4, %xmm14, %xmm4
	vminps	%xmm12, %xmm4, %xmm4
	vmaxps	%xmm11, %xmm4, %xmm4
	vminps	%xmm12, %xmm3, %xmm3
	vmaxps	%xmm11, %xmm3, %xmm13
	testl	%r10d, %r10d
	je	.LBB147_225
# BB#226:                               # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vmovaps	%xmm4, %xmm0
	vmovaps	%xmm4, 2528(%rsp)       # 16-byte Spill
	jmp	.LBB147_227
	.align	16, 0x90
.LBB147_225:                            #   in Loop: Header=BB147_224 Depth=4
	vmovaps	%xmm4, 2528(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0,2],xmm1[0,2]
	vsubps	%xmm9, %xmm0, %xmm0
	vmulps	%xmm0, %xmm14, %xmm0
	vminps	%xmm12, %xmm0, %xmm0
	vmaxps	%xmm11, %xmm0, %xmm0
	vaddps	%xmm0, %xmm13, %xmm0
	vmulps	%xmm10, %xmm0, %xmm0
.LBB147_227:                            # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vmovaps	%ymm0, 2624(%rsp)       # 32-byte Spill
	vxorps	%xmm15, %xmm15, %xmm15
	movslq	%ecx, %rcx
	vmovups	72(%r14,%rcx,4), %xmm0
	vmovaps	%xmm0, 2496(%rsp)       # 16-byte Spill
	vmovups	88(%r14,%rcx,4), %xmm1
	vmovaps	%xmm1, 2464(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0,2],xmm1[0,2]
	vsubps	%xmm9, %xmm0, %xmm0
	vmulps	%xmm0, %xmm14, %xmm5
	movslq	%edx, %rdx
	vmovups	72(%r14,%rdx,4), %xmm3
	vmovups	88(%r14,%rdx,4), %xmm0
	vshufps	$136, %xmm0, %xmm3, %xmm1 # xmm1 = xmm3[0,2],xmm0[0,2]
	vsubps	%xmm9, %xmm1, %xmm1
	vmulps	%xmm1, %xmm14, %xmm4
	vmovups	64(%r14,%rcx,4), %xmm6
	vmovups	80(%r14,%rcx,4), %xmm10
	vshufps	$221, %xmm10, %xmm6, %xmm1 # xmm1 = xmm6[1,3],xmm10[1,3]
	vsubps	%xmm9, %xmm1, %xmm1
	vmulps	%xmm1, %xmm14, %xmm1
	vmovups	64(%r14,%rdx,4), %xmm11
	vmovups	80(%r14,%rdx,4), %xmm8
	vshufps	$221, %xmm8, %xmm11, %xmm7 # xmm7 = xmm11[1,3],xmm8[1,3]
	vsubps	%xmm9, %xmm7, %xmm7
	vmulps	%xmm7, %xmm14, %xmm7
	vminps	%xmm12, %xmm7, %xmm7
	vmaxps	%xmm15, %xmm7, %xmm2
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm15, %xmm1, %xmm7
	vminps	%xmm12, %xmm4, %xmm1
	vmaxps	%xmm15, %xmm1, %xmm4
	vminps	%xmm12, %xmm5, %xmm1
	vmaxps	%xmm15, %xmm1, %xmm5
	je	.LBB147_228
# BB#229:                               # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vaddps	%xmm2, %xmm7, %xmm1
	vmovaps	%xmm7, 2368(%rsp)       # 16-byte Spill
	vmovaps	1824(%rsp), %xmm10      # 16-byte Reload
	vmulps	%xmm10, %xmm1, %xmm8
	vxorps	%xmm11, %xmm11, %xmm11
	vmovaps	2720(%rsp), %xmm6       # 16-byte Reload
	jmp	.LBB147_230
	.align	16, 0x90
.LBB147_228:                            #   in Loop: Header=BB147_224 Depth=4
	vmovaps	%xmm7, 2368(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm8, %xmm11, %xmm1 # xmm1 = xmm11[0,2],xmm8[0,2]
	vsubps	%xmm9, %xmm1, %xmm1
	vmulps	%xmm1, %xmm14, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm15, %xmm1, %xmm1
	vaddps	%xmm1, %xmm4, %xmm1
	vshufps	$136, %xmm10, %xmm6, %xmm6 # xmm6 = xmm6[0,2],xmm10[0,2]
	vsubps	%xmm9, %xmm6, %xmm6
	vmulps	%xmm6, %xmm14, %xmm6
	vminps	%xmm12, %xmm6, %xmm6
	vmaxps	%xmm15, %xmm6, %xmm6
	vaddps	%xmm6, %xmm5, %xmm6
	vaddps	%xmm1, %xmm6, %xmm1
	vmovaps	2720(%rsp), %xmm6       # 16-byte Reload
	vmulps	%xmm6, %xmm1, %xmm8
	vxorps	%xmm11, %xmm11, %xmm11
	vmovaps	1824(%rsp), %xmm10      # 16-byte Reload
.LBB147_230:                            # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	je	.LBB147_232
# BB#231:                               #   in Loop: Header=BB147_224 Depth=4
	vmovaps	2592(%rsp), %xmm1       # 16-byte Reload
	vshufps	$221, 2560(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[1,3],mem[1,3]
	vsubps	%xmm9, %xmm1, %xmm1
	vmulps	%xmm1, %xmm14, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm11, %xmm1, %xmm1
	vaddps	2528(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
	vmulps	%xmm10, %xmm1, %xmm13
.LBB147_232:                            # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	jne	.LBB147_233
# BB#234:                               # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vaddps	%xmm4, %xmm5, %xmm0
	vmulps	%xmm10, %xmm0, %xmm3
	jmp	.LBB147_235
	.align	16, 0x90
.LBB147_233:                            #   in Loop: Header=BB147_224 Depth=4
	vshufps	$221, %xmm0, %xmm3, %xmm0 # xmm0 = xmm3[1,3],xmm0[1,3]
	vsubps	%xmm9, %xmm0, %xmm0
	vmulps	%xmm0, %xmm14, %xmm0
	vminps	%xmm12, %xmm0, %xmm0
	vmaxps	%xmm11, %xmm0, %xmm0
	vaddps	%xmm2, %xmm0, %xmm0
	vmovaps	2496(%rsp), %xmm1       # 16-byte Reload
	vshufps	$221, 2464(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[1,3],mem[1,3]
	vsubps	%xmm9, %xmm1, %xmm1
	vmulps	%xmm1, %xmm14, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm11, %xmm1, %xmm1
	vaddps	2368(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
	vaddps	%xmm0, %xmm1, %xmm0
	vmulps	%xmm6, %xmm0, %xmm3
.LBB147_235:                            # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vmovaps	2624(%rsp), %ymm4       # 32-byte Reload
	vmovaps	%xmm8, %xmm0
	andl	$1, %esi
	je	.LBB147_237
# BB#236:                               # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vmovaps	%xmm4, %xmm0
.LBB147_237:                            # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vmovaps	%xmm3, %xmm1
	je	.LBB147_239
# BB#238:                               # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vmovaps	%xmm13, %xmm1
.LBB147_239:                            # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	je	.LBB147_241
# BB#240:                               # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vmovaps	%xmm3, %xmm13
.LBB147_241:                            # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	testl	%esi, %esi
	je	.LBB147_243
# BB#242:                               # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vmovaps	%xmm8, %xmm4
.LBB147_243:                            # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	cmpl	$0, 104(%rbp)
	je	.LBB147_245
# BB#244:                               # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vmovaps	%xmm0, %xmm4
.LBB147_245:                            # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	je	.LBB147_247
# BB#246:                               # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vmovaps	%xmm1, %xmm13
.LBB147_247:                            # %for demosaiced$3.s0.v16216
                                        #   in Loop: Header=BB147_224 Depth=4
	vmovaps	.LCPI147_12(%rip), %ymm0 # ymm0 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm13, %ymm0, %ymm0
	vmovaps	.LCPI147_13(%rip), %ymm1 # ymm1 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm4, %ymm1, %ymm1
	vblendps	$170, %ymm0, %ymm1, %ymm0 # ymm0 = ymm1[0],ymm0[1],ymm1[2],ymm0[3],ymm1[4],ymm0[5],ymm1[6],ymm0[7]
	vmovups	%ymm0, (%rax)
	subq	$-128, %rax
	addl	$1, %ebx
	cmpl	$2, %ebx
	jne	.LBB147_224
# BB#248:                               # %end for demosaiced$3.s0.v16217
                                        #   in Loop: Header=BB147_223 Depth=3
	addq	$1, %r12
	movq	1728(%rsp), %rcx        # 8-byte Reload
	addl	$1, %ecx
	addq	$32, %r15
	cmpq	$4, %r12
	jne	.LBB147_223
# BB#249:                               #   in Loop: Header=BB147_172 Depth=2
	vmovaps	%xmm9, 768(%rsp)        # 16-byte Spill
	vmovaps	%xmm14, 784(%rsp)       # 16-byte Spill
	movq	960(%rsp), %r8          # 8-byte Reload
	xorl	%r10d, %r10d
	movq	712(%rsp), %rsi         # 8-byte Reload
	movq	656(%rsp), %r15         # 8-byte Reload
	movq	664(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB147_250:                            # %for f2.s0.v16.v18.yii
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_172 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB147_251 Depth 4
	movq	%r10, %rax
	shlq	$7, %rax
	vmovaps	2784(%rsp,%rax), %ymm10
	vmovaps	%ymm10, 2368(%rsp)      # 32-byte Spill
	vmovaps	2816(%rsp,%rax), %ymm14
	vmovaps	%ymm14, 2464(%rsp)      # 32-byte Spill
	vmovaps	2848(%rsp,%rax), %ymm4
	vmovaps	%ymm4, 2528(%rsp)       # 32-byte Spill
	vmovaps	2880(%rsp,%rax), %ymm11
	vmovaps	%ymm11, 1824(%rsp)      # 32-byte Spill
	vmovaps	3040(%rsp,%rax), %ymm15
	vmovaps	%ymm15, 2496(%rsp)      # 32-byte Spill
	vmovaps	3072(%rsp,%rax), %ymm3
	vmovaps	3104(%rsp,%rax), %ymm12
	vmovaps	3136(%rsp,%rax), %ymm1
	vmovaps	3296(%rsp,%rax), %ymm0
	vmovaps	3328(%rsp,%rax), %ymm5
	vmovaps	3360(%rsp,%rax), %ymm6
	vmovaps	1632(%rsp), %ymm2       # 32-byte Reload
	vmulps	%ymm2, %ymm4, %ymm7
	vmulps	%ymm2, %ymm14, %ymm8
	vmulps	%ymm2, %ymm10, %ymm9
	vmovaps	%ymm10, %ymm4
	vmulps	%ymm2, %ymm11, %ymm10
	vmovaps	%ymm11, %ymm13
	vmovaps	1664(%rsp), %ymm2       # 32-byte Reload
	vmovaps	%ymm2, %ymm11
	vfmadd213ps	%ymm10, %ymm1, %ymm11
	vmovaps	%ymm2, %ymm10
	vfmadd213ps	%ymm9, %ymm15, %ymm10
	vmovaps	%ymm2, %ymm9
	vfmadd213ps	%ymm8, %ymm3, %ymm9
	vmovaps	%ymm2, %ymm8
	vfmadd213ps	%ymm7, %ymm12, %ymm8
	vmovaps	1696(%rsp), %ymm2       # 32-byte Reload
	vmovaps	%ymm2, %ymm7
	vfmadd213ps	%ymm8, %ymm6, %ymm7
	vmovaps	%ymm7, 2720(%rsp)       # 32-byte Spill
	vmovaps	%ymm2, %ymm7
	vfmadd213ps	%ymm9, %ymm5, %ymm7
	vmovaps	%ymm7, 2624(%rsp)       # 32-byte Spill
	vmovaps	%ymm2, %ymm7
	vfmadd213ps	%ymm10, %ymm0, %ymm7
	vmovaps	%ymm7, 2592(%rsp)       # 32-byte Spill
	vmovaps	3392(%rsp,%rax), %ymm15
	vfmadd213ps	%ymm11, %ymm15, %ymm2
	vmovaps	%ymm2, 2560(%rsp)       # 32-byte Spill
	vmovaps	1536(%rsp), %ymm10      # 32-byte Reload
	vmulps	%ymm10, %ymm13, %ymm7
	vmovaps	1568(%rsp), %ymm2       # 32-byte Reload
	vmovaps	%ymm2, %ymm13
	vfmadd213ps	%ymm7, %ymm1, %ymm13
	vmulps	%ymm10, %ymm4, %ymm7
	vmovaps	%ymm2, %ymm8
	vmovaps	2496(%rsp), %ymm9       # 32-byte Reload
	vfmadd213ps	%ymm7, %ymm9, %ymm8
	vmulps	%ymm10, %ymm14, %ymm7
	vmovaps	%ymm2, %ymm14
	vfmadd213ps	%ymm7, %ymm3, %ymm14
	vmulps	2528(%rsp), %ymm10, %ymm7 # 32-byte Folded Reload
	vmovaps	%ymm2, %ymm11
	vfmadd213ps	%ymm7, %ymm12, %ymm11
	vmovaps	1600(%rsp), %ymm2       # 32-byte Reload
	vmovaps	%ymm2, %ymm10
	vfmadd213ps	%ymm11, %ymm6, %ymm10
	vmovaps	%ymm2, %ymm11
	vfmadd213ps	%ymm14, %ymm5, %ymm11
	vmovaps	%ymm2, %ymm7
	vfmadd213ps	%ymm8, %ymm0, %ymm7
	vmovaps	%ymm2, %ymm8
	vfmadd213ps	%ymm13, %ymm15, %ymm8
	vmovaps	1440(%rsp), %ymm13      # 32-byte Reload
	vmulps	1824(%rsp), %ymm13, %ymm4 # 32-byte Folded Reload
	vmovaps	1472(%rsp), %ymm2       # 32-byte Reload
	vfmadd213ps	%ymm4, %ymm2, %ymm1
	vmulps	2368(%rsp), %ymm13, %ymm4 # 32-byte Folded Reload
	vfmadd213ps	%ymm4, %ymm2, %ymm9
	vmulps	2464(%rsp), %ymm13, %ymm4 # 32-byte Folded Reload
	vfmadd213ps	%ymm4, %ymm2, %ymm3
	vmulps	2528(%rsp), %ymm13, %ymm4 # 32-byte Folded Reload
	vfmadd213ps	%ymm4, %ymm2, %ymm12
	vmovaps	1504(%rsp), %ymm2       # 32-byte Reload
	vfmadd213ps	%ymm12, %ymm2, %ymm6
	vfmadd213ps	%ymm3, %ymm2, %ymm5
	vfmadd213ps	%ymm9, %ymm2, %ymm0
	vmovaps	%ymm0, %ymm9
	vfmadd213ps	%ymm1, %ymm2, %ymm15
	xorl	%eax, %eax
	movl	$3, %edi
	movq	%r8, %rbx
	vmovdqa	992(%rsp), %ymm14       # 32-byte Reload
	.align	16, 0x90
.LBB147_251:                            # %for f2.s0.v17
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_172 Depth=2
                                        #       Parent Loop BB147_250 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vmovaps	%ymm7, %ymm0
	cmpl	$1, %eax
	je	.LBB147_253
# BB#252:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	2592(%rsp), %ymm0       # 32-byte Reload
.LBB147_253:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	%ymm11, %ymm1
	je	.LBB147_255
# BB#254:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	2624(%rsp), %ymm1       # 32-byte Reload
.LBB147_255:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	%ymm10, %ymm4
	je	.LBB147_257
# BB#256:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	2720(%rsp), %ymm4       # 32-byte Reload
.LBB147_257:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	%ymm8, %ymm12
	je	.LBB147_259
# BB#258:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	2560(%rsp), %ymm12      # 32-byte Reload
.LBB147_259:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	%ymm15, %ymm3
	testl	%eax, %eax
	je	.LBB147_261
# BB#260:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	%ymm12, %ymm3
.LBB147_261:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	%ymm6, %ymm12
	je	.LBB147_263
# BB#262:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	%ymm4, %ymm12
.LBB147_263:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	%ymm5, %ymm4
	je	.LBB147_265
# BB#264:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	%ymm1, %ymm4
.LBB147_265:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	%ymm9, %ymm1
	je	.LBB147_267
# BB#266:                               # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vmovaps	%ymm0, %ymm1
.LBB147_267:                            # %for f2.s0.v17
                                        #   in Loop: Header=BB147_251 Depth=4
	vbroadcastss	.LCPI147_17(%rip), %ymm0
	vminps	%ymm0, %ymm1, %ymm1
	vminps	%ymm0, %ymm4, %ymm4
	vminps	%ymm0, %ymm12, %ymm12
	vminps	%ymm0, %ymm3, %ymm0
	vxorps	%ymm2, %ymm2, %ymm2
	vmaxps	%ymm2, %ymm1, %ymm1
	vmaxps	%ymm2, %ymm4, %ymm3
	vmaxps	%ymm2, %ymm12, %ymm4
	vmaxps	%ymm2, %ymm0, %ymm0
	vcvttps2dq	%ymm1, %ymm1
	vmovdqa	.LCPI147_5(%rip), %ymm2 # ymm2 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vpshufb	%ymm2, %ymm1, %ymm1
	vpermq	$232, %ymm1, %ymm1      # ymm1 = ymm1[0,2,2,3]
	vcvttps2dq	%ymm3, %ymm3
	vpshufb	%ymm2, %ymm3, %ymm3
	vpermq	$232, %ymm3, %ymm3      # ymm3 = ymm3[0,2,2,3]
	vcvttps2dq	%ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vcvttps2dq	%ymm0, %ymm0
	vpshufb	%ymm2, %ymm0, %ymm0
	vpermq	$232, %ymm0, %ymm0      # ymm0 = ymm0[0,2,2,3]
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmulld	%ymm14, %ymm1, %ymm1
	vpmulld	%ymm14, %ymm3, %ymm12
	vpmulld	%ymm14, %ymm4, %ymm4
	vpmulld	%ymm14, %ymm0, %ymm0
	vmovd	%eax, %xmm3
	vpsubd	2400(%rsp), %ymm3, %ymm3 # 32-byte Folded Reload
	vpbroadcastd	%xmm3, %ymm13
	vpaddd	%ymm0, %ymm13, %ymm3
	vpaddd	%ymm4, %ymm13, %ymm4
	vpaddd	%ymm12, %ymm13, %ymm0
	vpaddd	%ymm1, %ymm13, %ymm1
	vmovq	%xmm4, %rcx
	movslq	%ecx, %rdx
	movzbl	(%rsi,%rdx), %edx
	vmovd	%edx, %xmm2
	vpextrq	$1, %xmm4, %rdx
	sarq	$32, %rcx
	vpinsrb	$1, (%rsi,%rcx), %xmm2, %xmm2
	movslq	%edx, %rcx
	sarq	$32, %rdx
	vextracti128	$1, %ymm4, %xmm4
	vpinsrb	$2, (%rsi,%rcx), %xmm2, %xmm2
	vmovq	%xmm4, %rcx
	vpinsrb	$3, (%rsi,%rdx), %xmm2, %xmm2
	movslq	%ecx, %rdx
	vpinsrb	$4, (%rsi,%rdx), %xmm2, %xmm2
	vpextrq	$1, %xmm4, %rdx
	sarq	$32, %rcx
	vpinsrb	$5, (%rsi,%rcx), %xmm2, %xmm2
	movslq	%edx, %rcx
	sarq	$32, %rdx
	vpinsrb	$6, (%rsi,%rcx), %xmm2, %xmm2
	vmovq	%xmm3, %rcx
	vpinsrb	$7, (%rsi,%rdx), %xmm2, %xmm2
	movslq	%ecx, %rdx
	vpinsrb	$8, (%rsi,%rdx), %xmm2, %xmm2
	vpextrq	$1, %xmm3, %rdx
	sarq	$32, %rcx
	vpinsrb	$9, (%rsi,%rcx), %xmm2, %xmm2
	movslq	%edx, %rcx
	sarq	$32, %rdx
	vextracti128	$1, %ymm3, %xmm3
	vpinsrb	$10, (%rsi,%rcx), %xmm2, %xmm2
	vmovq	%xmm3, %rcx
	vpinsrb	$11, (%rsi,%rdx), %xmm2, %xmm2
	movslq	%ecx, %rdx
	vpinsrb	$12, (%rsi,%rdx), %xmm2, %xmm2
	vpextrq	$1, %xmm3, %rdx
	sarq	$32, %rcx
	vpinsrb	$13, (%rsi,%rcx), %xmm2, %xmm2
	movslq	%edx, %rcx
	vpinsrb	$14, (%rsi,%rcx), %xmm2, %xmm2
	vmovq	%xmm1, %rcx
	sarq	$32, %rdx
	vpinsrb	$15, (%rsi,%rdx), %xmm2, %xmm2
	movslq	%ecx, %rdx
	movzbl	(%rsi,%rdx), %edx
	vmovd	%edx, %xmm3
	vpextrq	$1, %xmm1, %rdx
	sarq	$32, %rcx
	vpinsrb	$1, (%rsi,%rcx), %xmm3, %xmm3
	movslq	%edx, %rcx
	sarq	$32, %rdx
	vextracti128	$1, %ymm1, %xmm1
	vpinsrb	$2, (%rsi,%rcx), %xmm3, %xmm3
	vmovq	%xmm1, %rcx
	vpinsrb	$3, (%rsi,%rdx), %xmm3, %xmm3
	movslq	%ecx, %rdx
	vpinsrb	$4, (%rsi,%rdx), %xmm3, %xmm3
	vpextrq	$1, %xmm1, %rdx
	sarq	$32, %rcx
	vpinsrb	$5, (%rsi,%rcx), %xmm3, %xmm1
	movslq	%edx, %rcx
	sarq	$32, %rdx
	vpinsrb	$6, (%rsi,%rcx), %xmm1, %xmm1
	vmovq	%xmm0, %rcx
	vpinsrb	$7, (%rsi,%rdx), %xmm1, %xmm1
	movslq	%ecx, %rdx
	vpinsrb	$8, (%rsi,%rdx), %xmm1, %xmm1
	vpextrq	$1, %xmm0, %rdx
	sarq	$32, %rcx
	vpinsrb	$9, (%rsi,%rcx), %xmm1, %xmm1
	movslq	%edx, %rcx
	sarq	$32, %rdx
	vextracti128	$1, %ymm0, %xmm0
	vpinsrb	$10, (%rsi,%rcx), %xmm1, %xmm1
	vmovq	%xmm0, %rcx
	vpinsrb	$11, (%rsi,%rdx), %xmm1, %xmm1
	movslq	%ecx, %rdx
	vpinsrb	$12, (%rsi,%rdx), %xmm1, %xmm1
	vpextrq	$1, %xmm0, %rdx
	sarq	$32, %rcx
	vpinsrb	$13, (%rsi,%rcx), %xmm1, %xmm0
	movslq	%edx, %rcx
	vpinsrb	$14, (%rsi,%rcx), %xmm0, %xmm0
	sarq	$32, %rdx
	vpinsrb	$15, (%rsi,%rdx), %xmm0, %xmm0
	vinserti128	$1, %xmm2, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rbx)
	addq	%r13, %rbx
	addl	$1, %eax
	addq	$-1, %rdi
	jne	.LBB147_251
# BB#268:                               # %end for f2.s0.v17
                                        #   in Loop: Header=BB147_250 Depth=3
	addq	$1, %r10
	addq	%r15, %r8
	cmpq	$2, %r10
	jne	.LBB147_250
# BB#269:                               # %end for f2.s0.v16.v18.yii
                                        #   in Loop: Header=BB147_172 Depth=2
	movq	1400(%rsp), %rbx        # 8-byte Reload
	addq	$1, %rbx
	movq	1408(%rsp), %rdi        # 8-byte Reload
	addq	$-32, %rdi
	movl	1416(%rsp), %eax        # 4-byte Reload
	addl	$32, %eax
	movq	1424(%rsp), %rdx        # 8-byte Reload
	addq	$-32, %rdx
	movq	1432(%rsp), %rcx        # 8-byte Reload
	addq	$-32, %rcx
	addq	$32, 960(%rsp)          # 8-byte Folded Spill
	cmpl	720(%rsp), %ebx         # 4-byte Folded Reload
	vmovaps	688(%rsp), %xmm6        # 16-byte Reload
	vmovaps	672(%rsp), %xmm13       # 16-byte Reload
	movq	2360(%rsp), %r8         # 8-byte Reload
	jne	.LBB147_172
	jmp	.LBB147_270
.LBB147_170:                            # %consume deinterleaved$3.for f2.s0.v16.v18.v18.preheader_crit_edge
                                        #   in Loop: Header=BB147_131 Depth=1
	movq	%rdx, %rax
	movq	%rdx, 536(%rsp)         # 8-byte Spill
	subq	360(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 1384(%rsp)        # 8-byte Spill
	movq	656(%rsp), %r15         # 8-byte Reload
	vmovaps	688(%rsp), %xmm6        # 16-byte Reload
	vmovaps	672(%rsp), %xmm13       # 16-byte Reload
	.align	16, 0x90
.LBB147_270:                            # %for f2.s0.v16.v18.v18.preheader
                                        #   in Loop: Header=BB147_131 Depth=1
	movq	%r13, 664(%rsp)         # 8-byte Spill
	vmovaps	%xmm13, 672(%rsp)       # 16-byte Spill
	vmovaps	%xmm6, 688(%rsp)        # 16-byte Spill
	movq	%rsi, 712(%rsp)         # 8-byte Spill
	movq	288(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %rax
	movq	%rax, 616(%rsp)         # 8-byte Spill
	movq	280(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %rax
	movq	%rax, 608(%rsp)         # 8-byte Spill
	movq	1384(%rsp), %rcx        # 8-byte Reload
	addq	$2, %rcx
	imulq	%r15, %rcx
	movq	400(%rsp), %rax         # 8-byte Reload
	leaq	(%rcx,%rax), %rax
	movq	%rax, 560(%rsp)         # 8-byte Spill
	movl	$1, %edi
	movl	556(%rsp), %esi         # 4-byte Reload
	.align	16, 0x90
.LBB147_271:                            # %for f2.s0.v16.v18.v18
                                        #   Parent Loop BB147_131 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB147_272 Depth 3
                                        #         Child Loop BB147_298 Depth 4
                                        #       Child Loop BB147_302 Depth 3
                                        #         Child Loop BB147_333 Depth 4
                                        #         Child Loop BB147_370 Depth 4
                                        #         Child Loop BB147_403 Depth 4
                                        #       Child Loop BB147_337 Depth 3
                                        #         Child Loop BB147_432 Depth 4
                                        #       Child Loop BB147_451 Depth 3
                                        #         Child Loop BB147_452 Depth 4
                                        #           Child Loop BB147_453 Depth 5
                                        #         Child Loop BB147_478 Depth 4
                                        #           Child Loop BB147_479 Depth 5
                                        #         Child Loop BB147_502 Depth 4
                                        #           Child Loop BB147_503 Depth 5
                                        #         Child Loop BB147_529 Depth 4
                                        #           Child Loop BB147_530 Depth 5
	movq	%rdi, 568(%rsp)         # 8-byte Spill
	movl	%esi, 556(%rsp)         # 4-byte Spill
	movq	536(%rsp), %rdx         # 8-byte Reload
	leaq	1(%rdx,%rdi,2), %rbx
	movq	%rbx, 1152(%rsp)        # 8-byte Spill
	movq	808(%rsp), %rcx         # 8-byte Reload
	cmpq	%rbx, %rcx
	movl	%ebx, %eax
	cmovgl	%ecx, %eax
	leaq	3(%rdx,%rdi,2), %rcx
	cltq
	cmpq	%rax, %rcx
	movl	%eax, %edi
	cmovlel	%ecx, %edi
	movl	%edi, 2656(%rsp)        # 4-byte Spill
	movl	804(%rsp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	cmovgel	%edx, %eax
	cltq
	cmpq	%rax, %rcx
	cmovlel	%ecx, %eax
	movq	%rax, 1136(%rsp)        # 8-byte Spill
	movslq	%edi, %rax
	movb	%sil, %cl
	cmpq	%rax, %rbx
	vmovaps	.LCPI147_10(%rip), %ymm9 # ymm9 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI147_11(%rip), %ymm11 # ymm11 = <4,u,5,u,6,u,7,u>
	jge	.LBB147_300
	.align	16, 0x90
.LBB147_272:                            # %for deinterleaved$3.s0.v16220
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB147_298 Depth 4
	movb	%cl, 824(%rsp)          # 1-byte Spill
	movzbl	%cl, %ecx
	andl	$3, %ecx
	cmpl	$0, 908(%rsp)           # 4-byte Folded Reload
	jle	.LBB147_319
# BB#273:                               # %for deinterleaved$3.s0.v15.v15222.preheader
                                        #   in Loop: Header=BB147_272 Depth=3
	imulq	816(%rsp), %rcx         # 8-byte Folded Reload
	movq	1152(%rsp), %rbx        # 8-byte Reload
	movl	%ebx, %eax
	movq	808(%rsp), %rsi         # 8-byte Reload
	subl	%esi, %eax
	cltd
	idivl	752(%rsp)               # 4-byte Folded Reload
	leaq	(%rcx,%r14), %r15
	movl	%edx, %eax
	sarl	$31, %eax
	andl	756(%rsp), %eax         # 4-byte Folded Reload
	movq	760(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %edx
	leal	(%rdx,%rax), %ecx
	leal	1(%rdx,%rax), %eax
	cmpl	$-2, %ecx
	notl	%ecx
	cmovgl	%eax, %ecx
	movl	748(%rsp), %eax         # 4-byte Reload
	subl	%ecx, %eax
	movl	744(%rsp), %ecx         # 4-byte Reload
	cmpl	%ebx, %ecx
	cmovgl	%ebx, %ecx
	cmpl	%esi, %ecx
	cmovll	%esi, %ecx
	cmpl	%ebx, 804(%rsp)         # 4-byte Folded Reload
	cmovlel	%eax, %ecx
	cmpl	%esi, %ebx
	cmovll	%eax, %ecx
	movl	904(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	setne	%r10b
	sete	%dl
	movl	%ebx, %edi
	andl	$1, %edi
	movl	%edi, 1536(%rsp)        # 4-byte Spill
	sete	%r9b
	movq	912(%rsp), %rsi         # 8-byte Reload
	imull	%esi, %ecx
	movl	%ebx, %esi
	movq	2360(%rsp), %r8         # 8-byte Reload
	orl	%r8d, %esi
	testb	$1, %sil
	sete	%r8b
	andb	%dl, %dil
	andb	%r10b, %r9b
	testl	%ebx, %eax
	setne	%sil
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 1120(%rsp)       # 16-byte Spill
	cmpl	$1, 104(%rbp)
	je	.LBB147_274
# BB#285:                               # %for deinterleaved$3.s0.v15.v15222.preheader
                                        #   in Loop: Header=BB147_272 Depth=3
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB147_286
	.align	16, 0x90
.LBB147_274:                            #   in Loop: Header=BB147_272 Depth=3
	vmovd	%r8d, %xmm0
	vpbroadcastb	%xmm0, %xmm0
.LBB147_286:                            # %for deinterleaved$3.s0.v15.v15222.preheader
                                        #   in Loop: Header=BB147_272 Depth=3
	vmovdqa	%xmm0, 1088(%rsp)       # 16-byte Spill
	je	.LBB147_287
# BB#288:                               # %for deinterleaved$3.s0.v15.v15222.preheader
                                        #   in Loop: Header=BB147_272 Depth=3
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB147_289
	.align	16, 0x90
.LBB147_287:                            #   in Loop: Header=BB147_272 Depth=3
	movzbl	%dil, %edx
	vmovd	%edx, %xmm0
	movzbl	%r9b, %edx
	vmovd	%edx, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm0
.LBB147_289:                            # %for deinterleaved$3.s0.v15.v15222.preheader
                                        #   in Loop: Header=BB147_272 Depth=3
	vmovdqa	%xmm0, 1056(%rsp)       # 16-byte Spill
	jne	.LBB147_291
# BB#290:                               #   in Loop: Header=BB147_272 Depth=3
	vmovd	%esi, %xmm0
	vpbroadcastb	%xmm0, %xmm0
	vmovdqa	%xmm0, 1120(%rsp)       # 16-byte Spill
.LBB147_291:                            # %for deinterleaved$3.s0.v15.v15222.preheader
                                        #   in Loop: Header=BB147_272 Depth=3
	vmovd	%ecx, %xmm1
	vpabsd	880(%rsp), %xmm0        # 16-byte Folded Reload
	cmpl	$0, 104(%rbp)
	jne	.LBB147_293
# BB#292:                               #   in Loop: Header=BB147_272 Depth=3
	vmovd	%edi, %xmm3
	vpbroadcastb	%xmm3, %xmm2
	vmovdqa	%xmm2, 1088(%rsp)       # 16-byte Spill
.LBB147_293:                            # %for deinterleaved$3.s0.v15.v15222.preheader
                                        #   in Loop: Header=BB147_272 Depth=3
	vpsubd	832(%rsp), %ymm1, %ymm1 # 32-byte Folded Reload
	jne	.LBB147_295
# BB#294:                               #   in Loop: Header=BB147_272 Depth=3
	movzbl	%r8b, %ecx
	vmovd	%ecx, %xmm2
	movzbl	%sil, %ecx
	vmovd	%ecx, %xmm3
	vpor	%xmm3, %xmm2, %xmm2
	vpbroadcastb	%xmm2, %xmm2
	vmovdqa	%xmm2, 1056(%rsp)       # 16-byte Spill
.LBB147_295:                            # %for deinterleaved$3.s0.v15.v15222.preheader
                                        #   in Loop: Header=BB147_272 Depth=3
	jne	.LBB147_297
# BB#296:                               #   in Loop: Header=BB147_272 Depth=3
	vmovd	%r9d, %xmm3
	vpbroadcastb	%xmm3, %xmm2
	vmovdqa	%xmm2, 1120(%rsp)       # 16-byte Spill
.LBB147_297:                            # %for deinterleaved$3.s0.v15.v15222.preheader
                                        #   in Loop: Header=BB147_272 Depth=3
	vinserti128	$1, %xmm0, %ymm0, %ymm0
	vmovdqa	%ymm0, 960(%rsp)        # 32-byte Spill
	vpbroadcastd	%xmm1, %ymm0
	vmovdqa	%ymm0, 928(%rsp)        # 32-byte Spill
	xorl	%r12d, %r12d
	movl	908(%rsp), %edx         # 4-byte Reload
	.align	16, 0x90
.LBB147_298:                            # %for deinterleaved$3.s0.v15.v15222
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_272 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%edx, 1472(%rsp)        # 4-byte Spill
	movq	%r12, 1504(%rsp)        # 8-byte Spill
	cmpl	$0, 1536(%rsp)          # 4-byte Folded Reload
	setne	2592(%rsp)              # 1-byte Folded Spill
	sete	2560(%rsp)              # 1-byte Folded Spill
	movq	2000(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r12), %edx
	movl	%edx, 2624(%rsp)        # 4-byte Spill
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, 2720(%rsp)        # 4-byte Spill
	sete	%al
	movl	%eax, 2528(%rsp)        # 4-byte Spill
	movl	%edx, %eax
	movq	1152(%rsp), %rcx        # 8-byte Reload
	orl	%ecx, %eax
	testb	$1, %al
	sete	%al
	movl	%eax, 1440(%rsp)        # 4-byte Spill
	movq	2008(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r12), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm5
	vmovdqa	.LCPI147_9(%rip), %ymm0 # ymm0 = [0,2,4,6,8,10,12,14]
	vpaddd	%ymm0, %ymm5, %ymm6
	vmovdqa	%ymm0, %ymm3
	vextracti128	$1, %ymm6, %xmm0
	vpextrd	$1, %xmm0, %eax
	vmovdqa	2048(%rsp), %ymm2       # 32-byte Reload
	vextracti128	$1, %ymm2, %xmm1
	vpextrd	$1, %xmm1, %r9d
	cltd
	idivl	%r9d
	movl	%edx, 1760(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	vmovd	%xmm1, %ecx
	cltd
	idivl	%ecx
	movl	%edx, 2496(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	vpextrd	$2, %xmm1, %r8d
	cltd
	idivl	%r8d
	movl	%edx, 2464(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	vpextrd	$3, %xmm1, %r10d
	cltd
	idivl	%r10d
	movl	%edx, 2368(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm6, %eax
	vpextrd	$1, %xmm2, %esi
	movl	%esi, 1400(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, 1824(%rsp)        # 4-byte Spill
	vmovd	%xmm6, %eax
	vmovd	%xmm2, %esi
	cltd
	idivl	%esi
	movl	%edx, 1816(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm6, %eax
	vpextrd	$2, %xmm2, %ebx
	cltd
	idivl	%ebx
	movl	%edx, 1728(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm6, %eax
	vpextrd	$3, %xmm2, %edi
	movl	%edi, 1392(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1696(%rsp)        # 4-byte Spill
	vmovdqa	.LCPI147_8(%rip), %ymm0 # ymm0 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm0, %ymm5, %ymm5
	vmovdqa	%ymm0, %ymm1
	vextracti128	$1, %ymm5, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r9d
	movl	%edx, 1664(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, 1632(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%r8d
	movl	%edx, 1600(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, 1568(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm5, %eax
	vpextrd	$1, %xmm2, %edi
	movl	%edi, 1384(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1432(%rsp)        # 4-byte Spill
	vmovd	%xmm5, %eax
	vmovd	%xmm2, %edi
	movl	%edi, 1344(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1424(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm5, %eax
	vpextrd	$2, %xmm2, %edi
	movl	%edi, 1312(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1416(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm5, %eax
	vpextrd	$3, %xmm2, %edi
	movl	%edi, 1304(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1408(%rsp)        # 4-byte Spill
	movq	2104(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r12), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm5
	vpaddd	%ymm3, %ymm5, %ymm6
	vmovdqa	%ymm3, %ymm9
	vextracti128	$1, %ymm6, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r9d
	movl	%edx, 1288(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, 1280(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%r8d
	movl	%edx, %r11d
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, %r13d
	vpextrd	$1, %xmm6, %eax
	cltd
	idivl	1400(%rsp)              # 4-byte Folded Reload
	movl	%edx, %edi
	vmovd	%xmm6, %eax
	cltd
	idivl	%esi
	movl	%edx, %esi
	vpextrd	$2, %xmm6, %eax
	cltd
	idivl	%ebx
	movl	%edx, %ebx
	vpextrd	$3, %xmm6, %eax
	cltd
	idivl	1392(%rsp)              # 4-byte Folded Reload
	movl	%edx, 1296(%rsp)        # 4-byte Spill
	vpaddd	%ymm1, %ymm5, %ymm5
	vextracti128	$1, %ymm5, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r9d
	movl	%edx, %r9d
	vmovd	%xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%r8d
	movl	%edx, 1400(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, 1392(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm5, %eax
	cltd
	idivl	1384(%rsp)              # 4-byte Folded Reload
	movl	%edx, 1384(%rsp)        # 4-byte Spill
	vmovd	%xmm5, %eax
	cltd
	idivl	1344(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r10d
	vpextrd	$2, %xmm5, %eax
	cltd
	idivl	1312(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r8d
	vpextrd	$3, %xmm5, %eax
	cltd
	idivl	1304(%rsp)              # 4-byte Folded Reload
	vmovd	2496(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1760(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 2464(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 2368(%rsp), %xmm0, %xmm5 # 4-byte Folded Reload
	vmovd	1816(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1824(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 1728(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1696(%rsp), %xmm0, %xmm6 # 4-byte Folded Reload
	vmovd	1632(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1664(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 1600(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1568(%rsp), %xmm0, %xmm2 # 4-byte Folded Reload
	vmovd	1424(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1432(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 1416(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1408(%rsp), %xmm0, %xmm10 # 4-byte Folded Reload
	vmovd	1280(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1288(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, %r11d, %xmm0, %xmm0
	vpinsrd	$3, %r13d, %xmm0, %xmm0
	vmovdqa	%xmm0, 2496(%rsp)       # 16-byte Spill
	vmovd	%esi, %xmm0
	vpinsrd	$1, %edi, %xmm0, %xmm0
	vpinsrd	$2, %ebx, %xmm0, %xmm0
	vmovdqa	%xmm0, 2464(%rsp)       # 16-byte Spill
	vmovd	%r12d, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vmovdqa	2272(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm12
	vmovdqa	.LCPI147_5(%rip), %ymm14 # ymm14 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vpshufb	%ymm14, %ymm12, %ymm12
	vpermq	$232, %ymm12, %ymm12    # ymm12 = ymm12[0,2,2,3]
	vmovdqa	2240(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm13
	vpshufb	%ymm14, %ymm13, %ymm13
	vpermq	$232, %ymm13, %ymm13    # ymm13 = ymm13[0,2,2,3]
	vmovdqa	.LCPI147_6(%rip), %xmm15 # xmm15 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vpshufb	%xmm15, %xmm13, %xmm3
	vpshufb	%xmm15, %xmm12, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm3[0]
	vmovdqa	.LCPI147_7(%rip), %xmm1 # xmm1 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
	vpxor	%xmm1, %xmm3, %xmm13
	vmovdqa	1952(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm4
	vpshufb	%ymm14, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vmovdqa	1920(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm12
	vpshufb	%ymm14, %ymm12, %ymm12
	vpermq	$232, %ymm12, %ymm12    # ymm12 = ymm12[0,2,2,3]
	vpshufb	%xmm15, %xmm12, %xmm3
	vpshufb	%xmm15, %xmm4, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm3[0]
	vpor	%xmm13, %xmm3, %xmm3
	vinserti128	$1, %xmm5, %ymm6, %ymm4
	vpsrad	$31, %ymm4, %ymm5
	vmovdqa	960(%rsp), %ymm7        # 32-byte Reload
	vpand	%ymm5, %ymm7, %ymm5
	vmovdqa	2208(%rsp), %ymm13      # 32-byte Reload
	vpaddd	%ymm4, %ymm13, %ymm4
	vpaddd	%ymm5, %ymm4, %ymm4
	vpabsd	%xmm4, %xmm5
	vextracti128	$1, %ymm4, %xmm4
	vpabsd	%xmm4, %xmm4
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vmovdqa	2176(%rsp), %ymm8       # 32-byte Reload
	vpsubd	%ymm4, %ymm8, %ymm12
	movl	2624(%rsp), %eax        # 4-byte Reload
	vmovd	%eax, %xmm5
	vpbroadcastd	%xmm5, %ymm6
	vpaddd	%ymm9, %ymm6, %ymm5
	vmovdqa	2032(%rsp), %xmm9       # 16-byte Reload
	vpminsd	%xmm9, %xmm5, %xmm4
	vextracti128	$1, %ymm5, %xmm5
	vpminsd	%xmm9, %xmm5, %xmm5
	vmovdqa	2016(%rsp), %xmm11      # 16-byte Reload
	vpmaxsd	%xmm11, %xmm4, %xmm4
	vpmaxsd	%xmm11, %xmm5, %xmm5
	vinserti128	$1, %xmm5, %ymm4, %ymm4
	vpmovzxbd	%xmm3, %ymm5    # ymm5 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero,xmm3[4],zero,zero,zero,xmm3[5],zero,zero,zero,xmm3[6],zero,zero,zero,xmm3[7],zero,zero,zero
	vpslld	$31, %ymm5, %ymm5
	vblendvps	%ymm5, %ymm12, %ymm4, %ymm5
	vinserti128	$1, %xmm2, %ymm10, %ymm2
	vpsrad	$31, %ymm2, %ymm4
	vpand	%ymm4, %ymm7, %ymm4
	vpaddd	%ymm2, %ymm13, %ymm2
	vpaddd	%ymm4, %ymm2, %ymm2
	vpabsd	%xmm2, %xmm4
	vextracti128	$1, %ymm2, %xmm2
	vpabsd	%xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm4, %ymm2
	vmovdqa	.LCPI147_8(%rip), %ymm10 # ymm10 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm10, %ymm6, %ymm4
	vpminsd	%xmm9, %xmm4, %xmm6
	vextracti128	$1, %ymm4, %xmm4
	vpminsd	%xmm9, %xmm4, %xmm4
	vpmaxsd	%xmm11, %xmm6, %xmm6
	vpmaxsd	%xmm11, %xmm4, %xmm4
	vinserti128	$1, %xmm4, %ymm6, %ymm4
	vpsubd	%ymm2, %ymm8, %ymm2
	vpunpckhbw	%xmm3, %xmm3, %xmm3 # xmm3 = xmm3[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm2, %ymm4, %ymm6
	vmovdqa	2144(%rsp), %ymm2       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm2, %ymm2
	vpshufb	%ymm14, %ymm2, %ymm2
	vpermq	$232, %ymm2, %ymm2      # ymm2 = ymm2[0,2,2,3]
	vmovdqa	2112(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vpshufb	%ymm14, %ymm3, %ymm3
	vpermq	$232, %ymm3, %ymm3      # ymm3 = ymm3[0,2,2,3]
	vpshufb	%xmm15, %xmm3, %xmm3
	vpshufb	%xmm15, %xmm2, %xmm2
	vpunpcklqdq	%xmm3, %xmm2, %xmm2 # xmm2 = xmm2[0],xmm3[0]
	vpxor	%xmm1, %xmm2, %xmm2
	vmovdqa	1888(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vpshufb	%ymm14, %ymm3, %ymm3
	vpermq	$232, %ymm3, %ymm3      # ymm3 = ymm3[0,2,2,3]
	vmovdqa	1856(%rsp), %ymm4       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm4, %ymm0
	vpshufb	%ymm14, %ymm0, %ymm0
	vpermq	$232, %ymm0, %ymm0      # ymm0 = ymm0[0,2,2,3]
	vpshufb	%xmm15, %xmm0, %xmm0
	vpshufb	%xmm15, %xmm3, %xmm3
	vpunpcklqdq	%xmm0, %xmm3, %xmm0 # xmm0 = xmm3[0],xmm0[0]
	vpor	%xmm2, %xmm0, %xmm0
	vmovdqa	2464(%rsp), %xmm1       # 16-byte Reload
	vpinsrd	$3, 1296(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vinserti128	$1, 2496(%rsp), %ymm1, %ymm1 # 16-byte Folded Reload
	vpsrad	$31, %ymm1, %ymm2
	vpand	%ymm7, %ymm2, %ymm2
	vpaddd	%ymm1, %ymm13, %ymm1
	vpaddd	%ymm2, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm2
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm2, %ymm1
	vpsubd	%ymm1, %ymm8, %ymm1
	movq	2360(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r12), %eax
	vmovd	%eax, %xmm2
	vpbroadcastd	%xmm2, %ymm2
	vpaddd	.LCPI147_9(%rip), %ymm2, %ymm3
	vpminsd	%xmm9, %xmm3, %xmm4
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm9, %xmm3, %xmm3
	vpmaxsd	%xmm11, %xmm4, %xmm4
	vpmaxsd	%xmm11, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpmovzxbd	%xmm0, %ymm4    # ymm4 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm1, %ymm3, %ymm4
	vmovd	%ecx, %xmm1
	vpinsrd	$1, %r9d, %xmm1, %xmm1
	vpinsrd	$2, 1400(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vpinsrd	$3, 1392(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vmovd	%r10d, %xmm3
	vpinsrd	$1, 1384(%rsp), %xmm3, %xmm3 # 4-byte Folded Reload
	vpinsrd	$2, %r8d, %xmm3, %xmm3
	movl	2528(%rsp), %ebx        # 4-byte Reload
	vpinsrd	$3, %edx, %xmm3, %xmm3
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpsrad	$31, %ymm1, %ymm3
	vpand	%ymm7, %ymm3, %ymm3
	vpaddd	%ymm1, %ymm13, %ymm1
	vpaddd	%ymm3, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm3
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpaddd	%ymm10, %ymm2, %ymm2
	vpminsd	%xmm9, %xmm2, %xmm3
	vextracti128	$1, %ymm2, %xmm2
	vpminsd	%xmm9, %xmm2, %xmm2
	vpmaxsd	%xmm11, %xmm3, %xmm3
	vpmaxsd	%xmm11, %xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm3, %ymm2
	vpsubd	%ymm1, %ymm8, %ymm1
	vpunpckhbw	%xmm0, %xmm0, %xmm0 # xmm0 = xmm0[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpslld	$31, %ymm0, %ymm0
	vblendvps	%ymm0, %ymm1, %ymm2, %ymm0
	vmovdqa	928(%rsp), %ymm2        # 32-byte Reload
	vpaddd	%ymm5, %ymm2, %ymm1
	vpextrq	$1, %xmm1, %r8
	vmovq	%xmm1, %r12
	vextracti128	$1, %ymm1, %xmm1
	vpextrq	$1, %xmm1, %r11
	vmovq	%xmm1, %rsi
	movq	%rsi, 1432(%rsp)        # 8-byte Spill
	andb	2592(%rsp), %bl         # 1-byte Folded Reload
	vpaddd	%ymm6, %ymm2, %ymm1
	movq	%r12, %rax
	sarq	$32, %rax
	movq	%rax, 1824(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	sarq	$32, %rax
	movq	%rax, 2528(%rsp)        # 8-byte Spill
	movq	%rsi, %rax
	sarq	$32, %rax
	movq	%rax, 2592(%rsp)        # 8-byte Spill
	movq	%r11, %r9
	sarq	$32, %r9
	vmovq	%xmm1, %rsi
	movl	2720(%rsp), %eax        # 4-byte Reload
	andb	2560(%rsp), %al         # 1-byte Folded Reload
	movl	%eax, 2720(%rsp)        # 4-byte Spill
	movq	%rsi, %rax
	sarq	$32, %rax
	movq	%rax, 1568(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1312(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1632(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, 1288(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1600(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1280(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1664(%rsp)        # 8-byte Spill
	vpaddd	%ymm0, %ymm2, %ymm0
	vpaddd	%ymm4, %ymm2, %ymm1
	vmovq	%xmm1, %rdx
	movq	%rdx, %rax
	sarq	$32, %rax
	movq	%rax, 2368(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %r10
	movq	%r10, %rax
	sarq	$32, %rax
	movq	%rax, 2496(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, 1416(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2464(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1400(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2560(%rsp)        # 8-byte Spill
	vmovq	%xmm0, %rax
	movq	%rax, %rdi
	sarq	$32, %rdi
	movq	%rdi, 1696(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rdi
	movq	%rdi, 1344(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	movq	%rdi, 1760(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm0, %xmm0
	vmovq	%xmm0, %rdi
	movq	%rdi, 1304(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	movq	%rdi, 1728(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rdi
	movq	%rdi, 1296(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	movq	%rdi, 1816(%rsp)        # 8-byte Spill
	movl	2624(%rsp), %ecx        # 4-byte Reload
	testl	1536(%rsp), %ecx        # 4-byte Folded Reload
	vpxor	%xmm5, %xmm5, %xmm5
	setne	%cl
	cmpl	$1, 104(%rbp)
	je	.LBB147_299
# BB#305:                               # %for deinterleaved$3.s0.v15.v15222
                                        #   in Loop: Header=BB147_298 Depth=4
	vpxor	%xmm7, %xmm7, %xmm7
	jmp	.LBB147_306
	.align	16, 0x90
.LBB147_299:                            #   in Loop: Header=BB147_298 Depth=4
	movl	1440(%rsp), %edi        # 4-byte Reload
	vmovd	%edi, %xmm0
	vpbroadcastb	%xmm0, %xmm7
.LBB147_306:                            # %for deinterleaved$3.s0.v15.v15222
                                        #   in Loop: Header=BB147_298 Depth=4
	vmovaps	.LCPI147_10(%rip), %ymm9 # ymm9 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI147_11(%rip), %ymm11 # ymm11 = <4,u,5,u,6,u,7,u>
	je	.LBB147_307
# BB#308:                               # %for deinterleaved$3.s0.v15.v15222
                                        #   in Loop: Header=BB147_298 Depth=4
	vpxor	%xmm6, %xmm6, %xmm6
	jmp	.LBB147_309
	.align	16, 0x90
.LBB147_307:                            #   in Loop: Header=BB147_298 Depth=4
	movzbl	%bl, %edi
	vmovd	%edi, %xmm0
	movl	2720(%rsp), %edi        # 4-byte Reload
	movzbl	%dil, %edi
	vmovd	%edi, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm6
.LBB147_309:                            # %for deinterleaved$3.s0.v15.v15222
                                        #   in Loop: Header=BB147_298 Depth=4
	je	.LBB147_310
# BB#311:                               # %for deinterleaved$3.s0.v15.v15222
                                        #   in Loop: Header=BB147_298 Depth=4
	movl	%ecx, 1176(%rsp)        # 4-byte Spill
	jmp	.LBB147_312
	.align	16, 0x90
.LBB147_310:                            #   in Loop: Header=BB147_298 Depth=4
	vmovd	%ecx, %xmm0
	movl	%ecx, 1176(%rsp)        # 4-byte Spill
	vpbroadcastb	%xmm0, %xmm5
.LBB147_312:                            # %for deinterleaved$3.s0.v15.v15222
                                        #   in Loop: Header=BB147_298 Depth=4
	movq	%r15, 1424(%rsp)        # 8-byte Spill
	cmpl	$0, 104(%rbp)
	jne	.LBB147_314
# BB#313:                               #   in Loop: Header=BB147_298 Depth=4
	vmovd	%ebx, %xmm0
	vpbroadcastb	%xmm0, %xmm7
.LBB147_314:                            # %for deinterleaved$3.s0.v15.v15222
                                        #   in Loop: Header=BB147_298 Depth=4
	movq	1432(%rsp), %rdi        # 8-byte Reload
	movq	%r10, 1184(%rsp)        # 8-byte Spill
	movslq	%esi, %rcx
	movq	%rcx, 1272(%rsp)        # 8-byte Spill
	movq	2352(%rsp), %rbx        # 8-byte Reload
	movzwl	(%rbx,%rcx,2), %esi
	vmovd	%esi, %xmm0
	movslq	%r12d, %rcx
	movq	%rcx, 1392(%rsp)        # 8-byte Spill
	movzwl	(%rbx,%rcx,2), %ecx
	vmovd	%ecx, %xmm1
	cltq
	movq	%rax, 1384(%rsp)        # 8-byte Spill
	movzwl	(%rbx,%rax,2), %eax
	vmovd	%eax, %xmm2
	movslq	%edx, %rax
	movq	%rax, 1408(%rsp)        # 8-byte Spill
	movzwl	(%rbx,%rax,2), %eax
	vmovd	%eax, %xmm3
	movslq	%r8d, %r13
	movslq	%edi, %r10
	movslq	%r11d, %rcx
	movq	%rcx, 1216(%rsp)        # 8-byte Spill
	movq	1312(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r8
	movq	1288(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r11
	movq	1280(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r15
	movq	1568(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rbx,%rax,2), %xmm0, %xmm0
	vpinsrw	$2, (%rbx,%r8,2), %xmm0, %xmm0
	movq	1632(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rbx,%rax,2), %xmm0, %xmm0
	vpinsrw	$4, (%rbx,%r11,2), %xmm0, %xmm0
	movq	1600(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rbx,%rax,2), %xmm0, %xmm0
	vpinsrw	$6, (%rbx,%r15,2), %xmm0, %xmm0
	movq	1664(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rbx,%rax,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm0
	movq	1824(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rbx,%rax,2), %xmm1, %xmm1
	vpinsrw	$2, (%rbx,%r13,2), %xmm1, %xmm1
	movq	2528(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rbx,%rax,2), %xmm1, %xmm1
	vpinsrw	$4, (%rbx,%r10,2), %xmm1, %xmm1
	movq	2592(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rbx,%rax,2), %xmm1, %xmm1
	vpinsrw	$6, (%rbx,%rcx,2), %xmm1, %xmm1
	vpinsrw	$7, (%rbx,%r9,2), %xmm1, %xmm1
	movq	%r9, 2624(%rsp)         # 8-byte Spill
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm1, %ymm1
	vpmovzxbd	%xmm7, %ymm4    # ymm4 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vpxor	%ymm8, %ymm8, %ymm8
	vblendvps	%ymm4, %ymm1, %ymm8, %ymm1
	vpunpckhbw	%xmm7, %xmm7, %xmm4 # xmm4 = xmm7[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm0, %ymm8, %ymm0
	movq	1184(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %rdi
	movq	%rdi, 1312(%rsp)        # 8-byte Spill
	movq	1416(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r12
	movq	%r12, 1416(%rsp)        # 8-byte Spill
	movq	1400(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %rdx
	movq	%rdx, 1432(%rsp)        # 8-byte Spill
	movq	1344(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r9
	movq	1304(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %rsi
	movq	%rsi, 1344(%rsp)        # 8-byte Spill
	movq	1296(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %rax
	movq	%rax, 1400(%rsp)        # 8-byte Spill
	movq	1696(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rbx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$2, (%rbx,%r9,2), %xmm2, %xmm2
	movq	1760(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rbx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$4, (%rbx,%rsi,2), %xmm2, %xmm2
	movq	1728(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rbx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$6, (%rbx,%rax,2), %xmm2, %xmm2
	movq	1816(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$7, (%rbx,%rcx,2), %xmm2, %xmm2
	vpmovzxwd	%xmm2, %ymm2    # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm2, %ymm2
	movq	2368(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rbx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$2, (%rbx,%rdi,2), %xmm3, %xmm3
	movq	2496(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rbx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$4, (%rbx,%r12,2), %xmm3, %xmm3
	movq	2464(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rbx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$6, (%rbx,%rdx,2), %xmm3, %xmm3
	movq	2560(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$7, (%rbx,%rcx,2), %xmm3, %xmm3
	movq	%rbx, %rcx
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vcvtdq2ps	%ymm3, %ymm3
	vmovdqa	1088(%rsp), %xmm7       # 16-byte Reload
	vpmovzxbd	%xmm7, %ymm4    # ymm4 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm3, %ymm8, %ymm3
	vpunpckhbw	%xmm7, %xmm7, %xmm4 # xmm4 = xmm7[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm2, %ymm8, %ymm2
	vpermps	%ymm2, %ymm9, %ymm4
	vpermps	%ymm0, %ymm11, %ymm7
	vblendps	$170, %ymm4, %ymm7, %ymm4 # ymm4 = ymm7[0],ymm4[1],ymm7[2],ymm4[3],ymm7[4],ymm4[5],ymm7[6],ymm4[7]
	vmovaps	.LCPI147_12(%rip), %ymm7 # ymm7 = <u,0,u,1,u,2,u,3>
	vmovaps	%ymm7, %ymm8
	vpermps	%ymm2, %ymm8, %ymm2
	vmovaps	.LCPI147_13(%rip), %ymm7 # ymm7 = <0,u,1,u,2,u,3,u>
	vmovaps	%ymm7, %ymm10
	vpermps	%ymm0, %ymm10, %ymm0
	vblendps	$170, %ymm2, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm2[1],ymm0[2],ymm2[3],ymm0[4],ymm2[5],ymm0[6],ymm2[7]
	vpermps	%ymm3, %ymm9, %ymm2
	vpermps	%ymm1, %ymm11, %ymm7
	vblendps	$170, %ymm2, %ymm7, %ymm2 # ymm2 = ymm7[0],ymm2[1],ymm7[2],ymm2[3],ymm7[4],ymm2[5],ymm7[6],ymm2[7]
	vpermps	%ymm3, %ymm8, %ymm3
	vmovaps	%ymm8, %ymm14
	vpermps	%ymm1, %ymm10, %ymm1
	vmovaps	%ymm10, %ymm15
	vblendps	$170, %ymm3, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm3[1],ymm1[2],ymm3[3],ymm1[4],ymm3[5],ymm1[6],ymm3[7]
	movq	1424(%rsp), %r12        # 8-byte Reload
	vmovups	%ymm1, (%r12)
	vmovups	%ymm2, 32(%r12)
	vmovups	%ymm0, 64(%r12)
	vmovups	%ymm4, 96(%r12)
	jne	.LBB147_316
# BB#315:                               #   in Loop: Header=BB147_298 Depth=4
	movl	1440(%rsp), %ebx        # 4-byte Reload
	movzbl	%bl, %ebx
	vmovd	%ebx, %xmm0
	movl	1176(%rsp), %ebx        # 4-byte Reload
	movzbl	%bl, %ebx
	vmovd	%ebx, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm6
.LBB147_316:                            # %for deinterleaved$3.s0.v15.v15222
                                        #   in Loop: Header=BB147_298 Depth=4
	movq	1272(%rsp), %rbx        # 8-byte Reload
	movzwl	(%rcx,%rbx,2), %ebx
	vmovd	%ebx, %xmm0
	movq	1568(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rdx,2), %xmm0, %xmm0
	vpinsrw	$2, (%rcx,%r8,2), %xmm0, %xmm0
	movq	1632(%rsp), %rdi        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rdi,2), %xmm0, %xmm0
	vpinsrw	$4, (%rcx,%r11,2), %xmm0, %xmm0
	movq	1600(%rsp), %rdi        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rdi,2), %xmm0, %xmm0
	vpinsrw	$6, (%rcx,%r15,2), %xmm0, %xmm0
	movq	1664(%rsp), %rsi        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rsi,2), %xmm0, %xmm0
	movq	1392(%rsp), %rsi        # 8-byte Reload
	movzwl	(%rcx,%rsi,2), %esi
	vmovd	%esi, %xmm1
	movq	1824(%rsp), %rsi        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rsi,2), %xmm1, %xmm1
	vpinsrw	$2, (%rcx,%r13,2), %xmm1, %xmm1
	movq	2528(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rdx,2), %xmm1, %xmm1
	vpinsrw	$4, (%rcx,%r10,2), %xmm1, %xmm1
	movq	2592(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rdx,2), %xmm1, %xmm1
	movq	1216(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rdx,2), %xmm1, %xmm1
	movq	2624(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rdx,2), %xmm1, %xmm1
	movq	1384(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %edx
	vmovd	%edx, %xmm2
	movq	1696(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rdx,2), %xmm2, %xmm2
	vpinsrw	$2, (%rcx,%r9,2), %xmm2, %xmm2
	movq	1760(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1344(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1728(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1400(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1816(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1408(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm3
	movq	2368(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1312(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2496(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1416(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2464(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1432(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2560(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm3, %xmm3
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm7
	vpmovzxwd	%xmm1, %ymm0    # ymm0 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm0, %ymm10
	vpmovzxbd	%xmm6, %ymm0    # ymm0 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
	vpslld	$31, %ymm0, %ymm0
	vxorps	%ymm8, %ymm8, %ymm8
	vblendvps	%ymm0, %ymm10, %ymm8, %ymm4
	vpunpckhbw	%xmm6, %xmm6, %xmm0 # xmm0 = xmm6[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpslld	$31, %ymm0, %ymm0
	vblendvps	%ymm0, %ymm7, %ymm8, %ymm6
	vpmovzxwd	%xmm2, %ymm0    # ymm0 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm0, %ymm1
	vpmovzxwd	%xmm3, %ymm0    # ymm0 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vcvtdq2ps	%ymm0, %ymm0
	vmovdqa	1056(%rsp), %xmm3       # 16-byte Reload
	vpmovzxbd	%xmm3, %ymm2    # ymm2 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero,xmm3[4],zero,zero,zero,xmm3[5],zero,zero,zero,xmm3[6],zero,zero,zero,xmm3[7],zero,zero,zero
	vpslld	$31, %ymm2, %ymm2
	vblendvps	%ymm2, %ymm0, %ymm8, %ymm2
	vpunpckhbw	%xmm3, %xmm3, %xmm3 # xmm3 = xmm3[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm1, %ymm8, %ymm3
	vpermps	%ymm3, %ymm9, %ymm12
	vpermps	%ymm6, %ymm11, %ymm13
	vblendps	$170, %ymm12, %ymm13, %ymm12 # ymm12 = ymm13[0],ymm12[1],ymm13[2],ymm12[3],ymm13[4],ymm12[5],ymm13[6],ymm12[7]
	vpermps	%ymm3, %ymm14, %ymm3
	vpermps	%ymm6, %ymm15, %ymm6
	vblendps	$170, %ymm3, %ymm6, %ymm3 # ymm3 = ymm6[0],ymm3[1],ymm6[2],ymm3[3],ymm6[4],ymm3[5],ymm6[6],ymm3[7]
	vpermps	%ymm2, %ymm9, %ymm6
	vpermps	%ymm4, %ymm11, %ymm13
	vblendps	$170, %ymm6, %ymm13, %ymm6 # ymm6 = ymm13[0],ymm6[1],ymm13[2],ymm6[3],ymm13[4],ymm6[5],ymm13[6],ymm6[7]
	vpermps	%ymm2, %ymm14, %ymm2
	vmovaps	%ymm14, %ymm8
	vpermps	%ymm4, %ymm15, %ymm4
	vmovaps	%ymm15, %ymm13
	vblendps	$170, %ymm2, %ymm4, %ymm2 # ymm2 = ymm4[0],ymm2[1],ymm4[2],ymm2[3],ymm4[4],ymm2[5],ymm4[6],ymm2[7]
	movq	2344(%rsp), %rax        # 8-byte Reload
	movq	%r12, %r15
	vmovups	%ymm2, 32(%rax,%r15)
	vmovups	%ymm6, 64(%rax,%r15)
	vmovups	%ymm3, 96(%rax,%r15)
	vmovups	%ymm12, 128(%rax,%r15)
	jne	.LBB147_318
# BB#317:                               #   in Loop: Header=BB147_298 Depth=4
	movl	2720(%rsp), %eax        # 4-byte Reload
	vmovd	%eax, %xmm2
	vpbroadcastb	%xmm2, %xmm5
.LBB147_318:                            # %for deinterleaved$3.s0.v15.v15222
                                        #   in Loop: Header=BB147_298 Depth=4
	movq	1504(%rsp), %r12        # 8-byte Reload
	movl	1472(%rsp), %edx        # 4-byte Reload
	vpmovzxbd	%xmm5, %ymm2    # ymm2 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
	vpslld	$31, %ymm2, %ymm2
	vxorps	%ymm6, %ymm6, %ymm6
	vblendvps	%ymm2, %ymm10, %ymm6, %ymm2
	vpunpckhbw	%xmm5, %xmm5, %xmm3 # xmm3 = xmm5[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm7, %ymm6, %ymm3
	vmovdqa	1120(%rsp), %xmm5       # 16-byte Reload
	vpmovzxbd	%xmm5, %ymm4    # ymm4 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm0, %ymm6, %ymm0
	vpunpckhbw	%xmm5, %xmm5, %xmm4 # xmm4 = xmm5[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm1, %ymm6, %ymm1
	vpermps	%ymm1, %ymm9, %ymm4
	vpermps	%ymm3, %ymm11, %ymm5
	vblendps	$170, %ymm4, %ymm5, %ymm4 # ymm4 = ymm5[0],ymm4[1],ymm5[2],ymm4[3],ymm5[4],ymm4[5],ymm5[6],ymm4[7]
	vpermps	%ymm1, %ymm8, %ymm1
	vpermps	%ymm3, %ymm13, %ymm3
	vblendps	$170, %ymm1, %ymm3, %ymm1 # ymm1 = ymm3[0],ymm1[1],ymm3[2],ymm1[3],ymm3[4],ymm1[5],ymm3[6],ymm1[7]
	vpermps	%ymm0, %ymm9, %ymm3
	vpermps	%ymm2, %ymm11, %ymm5
	vblendps	$170, %ymm3, %ymm5, %ymm3 # ymm3 = ymm5[0],ymm3[1],ymm5[2],ymm3[3],ymm5[4],ymm3[5],ymm5[6],ymm3[7]
	vpermps	%ymm0, %ymm8, %ymm0
	vpermps	%ymm2, %ymm13, %ymm2
	vblendps	$170, %ymm0, %ymm2, %ymm0 # ymm0 = ymm2[0],ymm0[1],ymm2[2],ymm0[3],ymm2[4],ymm0[5],ymm2[6],ymm0[7]
	movq	2320(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm0, (%rax,%r15)
	movq	2336(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm3, 96(%rax,%r15)
	vmovups	%ymm1, 128(%rax,%r15)
	movq	2328(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm4, (%rax,%r15)
	addl	$32, %r12d
	subq	$-128, %r15
	addl	$-1, %edx
	jne	.LBB147_298
.LBB147_319:                            # %end for deinterleaved$3.s0.v15.v15223
                                        #   in Loop: Header=BB147_272 Depth=3
	movq	1152(%rsp), %rax        # 8-byte Reload
	addl	$1, %eax
	movq	%rax, 1152(%rsp)        # 8-byte Spill
	movb	824(%rsp), %cl          # 1-byte Reload
	addb	$1, %cl
	cmpl	2656(%rsp), %eax        # 4-byte Folded Reload
	jne	.LBB147_272
.LBB147_300:                            # %end for deinterleaved$3.s0.v16221
                                        #   in Loop: Header=BB147_271 Depth=2
	movq	536(%rsp), %rax         # 8-byte Reload
	movq	568(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx,2), %rax
	movq	%rax, 1504(%rsp)        # 8-byte Spill
	movq	1136(%rsp), %rax        # 8-byte Reload
	cmpl	%eax, 2656(%rsp)        # 4-byte Folded Reload
	jge	.LBB147_335
# BB#301:                               # %for deinterleaved$3.s0.v16225.preheader
                                        #   in Loop: Header=BB147_271 Depth=2
	movq	912(%rsp), %rax         # 8-byte Reload
	movl	2656(%rsp), %edx        # 4-byte Reload
	imull	%edx, %eax
	movq	472(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movl	%eax, 736(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB147_302:                            # %for deinterleaved$3.s0.v16225
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB147_333 Depth 4
                                        #         Child Loop BB147_370 Depth 4
                                        #         Child Loop BB147_403 Depth 4
	movb	%dl, 727(%rsp)          # 1-byte Spill
	movzbl	%dl, %eax
	andl	$3, %eax
	imulq	816(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 824(%rsp)         # 8-byte Spill
	cmpl	$0, 732(%rsp)           # 4-byte Folded Reload
	jle	.LBB147_354
# BB#303:                               # %for deinterleaved$3.s0.v15.v15227.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	movq	824(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %r15
	movl	904(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	setne	%r9b
	sete	%bl
	movl	2656(%rsp), %edx        # 4-byte Reload
	movl	%edx, %esi
	andl	$1, %esi
	movl	%esi, 1536(%rsp)        # 4-byte Spill
	sete	%r8b
	movq	912(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %r10d
	imull	%edx, %r10d
	movl	%edx, %ecx
	movq	2360(%rsp), %rdi        # 8-byte Reload
	orl	%edi, %ecx
	testb	$1, %cl
	sete	%cl
	movb	%sil, %dil
	andb	%bl, %dil
	andb	%r9b, %r8b
	testl	%edx, %eax
	setne	%dl
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 1120(%rsp)       # 16-byte Spill
	cmpl	$1, 104(%rbp)
	je	.LBB147_304
# BB#320:                               # %for deinterleaved$3.s0.v15.v15227.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB147_321
	.align	16, 0x90
.LBB147_304:                            #   in Loop: Header=BB147_302 Depth=3
	vmovd	%ecx, %xmm0
	vpbroadcastb	%xmm0, %xmm0
.LBB147_321:                            # %for deinterleaved$3.s0.v15.v15227.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vmovdqa	%xmm0, 1088(%rsp)       # 16-byte Spill
	je	.LBB147_322
# BB#323:                               # %for deinterleaved$3.s0.v15.v15227.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB147_324
	.align	16, 0x90
.LBB147_322:                            #   in Loop: Header=BB147_302 Depth=3
	movzbl	%dil, %ebx
	vmovd	%ebx, %xmm0
	movzbl	%r8b, %ebx
	vmovd	%ebx, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm0
.LBB147_324:                            # %for deinterleaved$3.s0.v15.v15227.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vmovdqa	%xmm0, 1056(%rsp)       # 16-byte Spill
	jne	.LBB147_326
# BB#325:                               #   in Loop: Header=BB147_302 Depth=3
	vmovd	%edx, %xmm0
	vpbroadcastb	%xmm0, %xmm0
	vmovdqa	%xmm0, 1120(%rsp)       # 16-byte Spill
.LBB147_326:                            # %for deinterleaved$3.s0.v15.v15227.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vmovd	%r10d, %xmm1
	vpabsd	880(%rsp), %xmm0        # 16-byte Folded Reload
	cmpl	$0, 104(%rbp)
	jne	.LBB147_328
# BB#327:                               #   in Loop: Header=BB147_302 Depth=3
	vmovd	%edi, %xmm3
	vpbroadcastb	%xmm3, %xmm2
	vmovdqa	%xmm2, 1088(%rsp)       # 16-byte Spill
.LBB147_328:                            # %for deinterleaved$3.s0.v15.v15227.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vpsubd	832(%rsp), %ymm1, %ymm1 # 32-byte Folded Reload
	jne	.LBB147_330
# BB#329:                               #   in Loop: Header=BB147_302 Depth=3
	movzbl	%cl, %ecx
	vmovd	%ecx, %xmm2
	movzbl	%dl, %ecx
	vmovd	%ecx, %xmm3
	vpor	%xmm3, %xmm2, %xmm2
	vpbroadcastb	%xmm2, %xmm2
	vmovdqa	%xmm2, 1056(%rsp)       # 16-byte Spill
.LBB147_330:                            # %for deinterleaved$3.s0.v15.v15227.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	jne	.LBB147_332
# BB#331:                               #   in Loop: Header=BB147_302 Depth=3
	vmovd	%r8d, %xmm3
	vpbroadcastb	%xmm3, %xmm2
	vmovdqa	%xmm2, 1120(%rsp)       # 16-byte Spill
.LBB147_332:                            # %for deinterleaved$3.s0.v15.v15227.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vinserti128	$1, %xmm0, %ymm0, %ymm0
	vmovdqa	%ymm0, 960(%rsp)        # 32-byte Spill
	vpbroadcastd	%xmm1, %ymm0
	vmovdqa	%ymm0, 928(%rsp)        # 32-byte Spill
	xorl	%ecx, %ecx
	movq	600(%rsp), %rax         # 8-byte Reload
	movl	%eax, %edx
	.align	16, 0x90
.LBB147_333:                            # %for deinterleaved$3.s0.v15.v15227
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_302 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%edx, 1440(%rsp)        # 4-byte Spill
	movq	%rcx, 1472(%rsp)        # 8-byte Spill
	cmpl	$0, 1536(%rsp)          # 4-byte Folded Reload
	setne	2592(%rsp)              # 1-byte Folded Spill
	sete	2560(%rsp)              # 1-byte Folded Spill
	movq	2000(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rcx), %edx
	movl	%edx, 2624(%rsp)        # 4-byte Spill
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, 2720(%rsp)        # 4-byte Spill
	sete	%al
	movl	%eax, 2528(%rsp)        # 4-byte Spill
	movl	%edx, %eax
	orl	2656(%rsp), %eax        # 4-byte Folded Reload
	testb	$1, %al
	sete	%al
	movl	%eax, 1432(%rsp)        # 4-byte Spill
	movq	2008(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rcx), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm5
	vmovdqa	.LCPI147_9(%rip), %ymm0 # ymm0 = [0,2,4,6,8,10,12,14]
	vpaddd	%ymm0, %ymm5, %ymm6
	vmovdqa	%ymm0, %ymm3
	vextracti128	$1, %ymm6, %xmm0
	vpextrd	$1, %xmm0, %eax
	vmovdqa	2048(%rsp), %ymm2       # 32-byte Reload
	vextracti128	$1, %ymm2, %xmm1
	vpextrd	$1, %xmm1, %r12d
	cltd
	idivl	%r12d
	movl	%edx, 2496(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	vmovd	%xmm1, %r9d
	cltd
	idivl	%r9d
	movl	%edx, 2464(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	vpextrd	$2, %xmm1, %r8d
	cltd
	idivl	%r8d
	movl	%edx, 2368(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	vpextrd	$3, %xmm1, %r10d
	cltd
	idivl	%r10d
	movl	%edx, 1824(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm6, %eax
	vpextrd	$1, %xmm2, %esi
	movl	%esi, 1392(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, 1816(%rsp)        # 4-byte Spill
	vmovd	%xmm6, %eax
	vmovd	%xmm2, %esi
	cltd
	idivl	%esi
	movl	%edx, 1760(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm6, %eax
	vpextrd	$2, %xmm2, %ebx
	cltd
	idivl	%ebx
	movl	%edx, 1728(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm6, %eax
	vpextrd	$3, %xmm2, %edi
	movl	%edi, 1384(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1696(%rsp)        # 4-byte Spill
	vmovdqa	.LCPI147_8(%rip), %ymm0 # ymm0 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm0, %ymm5, %ymm5
	vmovdqa	%ymm0, %ymm1
	vextracti128	$1, %ymm5, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r12d
	movl	%edx, 1664(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	idivl	%r9d
	movl	%edx, 1632(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%r8d
	movl	%edx, 1600(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, 1568(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm5, %eax
	vpextrd	$1, %xmm2, %edi
	movl	%edi, 1344(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1424(%rsp)        # 4-byte Spill
	vmovd	%xmm5, %eax
	vmovd	%xmm2, %edi
	movl	%edi, 1312(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1416(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm5, %eax
	vpextrd	$2, %xmm2, %edi
	movl	%edi, 1304(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1408(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm5, %eax
	vpextrd	$3, %xmm2, %edi
	movl	%edi, 1296(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1400(%rsp)        # 4-byte Spill
	movq	2104(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rcx), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm5
	vpaddd	%ymm3, %ymm5, %ymm6
	vmovdqa	%ymm3, %ymm9
	vextracti128	$1, %ymm6, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r12d
	movl	%edx, 1280(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	idivl	%r9d
	movl	%edx, 1272(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%r8d
	movl	%edx, %r11d
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, %r13d
	vpextrd	$1, %xmm6, %eax
	cltd
	idivl	1392(%rsp)              # 4-byte Folded Reload
	movl	%edx, %edi
	vmovd	%xmm6, %eax
	cltd
	idivl	%esi
	movl	%edx, %esi
	vpextrd	$2, %xmm6, %eax
	cltd
	idivl	%ebx
	movl	%edx, %ebx
	vpextrd	$3, %xmm6, %eax
	cltd
	idivl	1384(%rsp)              # 4-byte Folded Reload
	movl	%edx, 1288(%rsp)        # 4-byte Spill
	vpaddd	%ymm1, %ymm5, %ymm5
	vextracti128	$1, %ymm5, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r12d
	movl	%edx, %r12d
	vmovd	%xmm0, %eax
	cltd
	idivl	%r9d
	movl	%edx, %r9d
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%r8d
	movl	%edx, 1392(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, 1384(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm5, %eax
	cltd
	idivl	1344(%rsp)              # 4-byte Folded Reload
	movl	%edx, 1344(%rsp)        # 4-byte Spill
	vmovd	%xmm5, %eax
	cltd
	idivl	1312(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r10d
	vpextrd	$2, %xmm5, %eax
	cltd
	idivl	1304(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r8d
	vpextrd	$3, %xmm5, %eax
	cltd
	idivl	1296(%rsp)              # 4-byte Folded Reload
	vmovd	2464(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 2496(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 2368(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1824(%rsp), %xmm0, %xmm5 # 4-byte Folded Reload
	vmovd	1760(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1816(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 1728(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1696(%rsp), %xmm0, %xmm6 # 4-byte Folded Reload
	vmovd	1632(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1664(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 1600(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1568(%rsp), %xmm0, %xmm2 # 4-byte Folded Reload
	vmovd	1416(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1424(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 1408(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1400(%rsp), %xmm0, %xmm10 # 4-byte Folded Reload
	vmovd	1272(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1280(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, %r11d, %xmm0, %xmm0
	vpinsrd	$3, %r13d, %xmm0, %xmm0
	vmovdqa	%xmm0, 2496(%rsp)       # 16-byte Spill
	vmovd	%esi, %xmm0
	vpinsrd	$1, %edi, %xmm0, %xmm0
	vpinsrd	$2, %ebx, %xmm0, %xmm0
	vmovdqa	%xmm0, 2464(%rsp)       # 16-byte Spill
	vmovd	%ecx, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vmovdqa	2272(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm12
	vmovdqa	.LCPI147_5(%rip), %ymm14 # ymm14 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vpshufb	%ymm14, %ymm12, %ymm12
	vpermq	$232, %ymm12, %ymm12    # ymm12 = ymm12[0,2,2,3]
	vmovdqa	2240(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm13
	vpshufb	%ymm14, %ymm13, %ymm13
	vpermq	$232, %ymm13, %ymm13    # ymm13 = ymm13[0,2,2,3]
	vmovdqa	.LCPI147_6(%rip), %xmm15 # xmm15 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vpshufb	%xmm15, %xmm13, %xmm3
	vpshufb	%xmm15, %xmm12, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm3[0]
	vmovdqa	.LCPI147_7(%rip), %xmm1 # xmm1 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
	vpxor	%xmm1, %xmm3, %xmm13
	vmovdqa	1952(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm4
	vpshufb	%ymm14, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vmovdqa	1920(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm12
	vpshufb	%ymm14, %ymm12, %ymm12
	vpermq	$232, %ymm12, %ymm12    # ymm12 = ymm12[0,2,2,3]
	vpshufb	%xmm15, %xmm12, %xmm3
	vpshufb	%xmm15, %xmm4, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm3[0]
	vpor	%xmm13, %xmm3, %xmm3
	vinserti128	$1, %xmm5, %ymm6, %ymm4
	vpsrad	$31, %ymm4, %ymm5
	vmovdqa	960(%rsp), %ymm7        # 32-byte Reload
	vpand	%ymm5, %ymm7, %ymm5
	vmovdqa	2208(%rsp), %ymm13      # 32-byte Reload
	vpaddd	%ymm4, %ymm13, %ymm4
	vpaddd	%ymm5, %ymm4, %ymm4
	vpabsd	%xmm4, %xmm5
	vextracti128	$1, %ymm4, %xmm4
	vpabsd	%xmm4, %xmm4
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vmovdqa	2176(%rsp), %ymm8       # 32-byte Reload
	vpsubd	%ymm4, %ymm8, %ymm12
	movl	2624(%rsp), %eax        # 4-byte Reload
	vmovd	%eax, %xmm5
	vpbroadcastd	%xmm5, %ymm6
	vpaddd	%ymm9, %ymm6, %ymm5
	vmovdqa	2032(%rsp), %xmm9       # 16-byte Reload
	vpminsd	%xmm9, %xmm5, %xmm4
	vextracti128	$1, %ymm5, %xmm5
	vpminsd	%xmm9, %xmm5, %xmm5
	vmovdqa	2016(%rsp), %xmm11      # 16-byte Reload
	vpmaxsd	%xmm11, %xmm4, %xmm4
	vpmaxsd	%xmm11, %xmm5, %xmm5
	vinserti128	$1, %xmm5, %ymm4, %ymm4
	vpmovzxbd	%xmm3, %ymm5    # ymm5 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero,xmm3[4],zero,zero,zero,xmm3[5],zero,zero,zero,xmm3[6],zero,zero,zero,xmm3[7],zero,zero,zero
	vpslld	$31, %ymm5, %ymm5
	vblendvps	%ymm5, %ymm12, %ymm4, %ymm5
	vinserti128	$1, %xmm2, %ymm10, %ymm2
	vpsrad	$31, %ymm2, %ymm4
	vpand	%ymm4, %ymm7, %ymm4
	vpaddd	%ymm2, %ymm13, %ymm2
	vpaddd	%ymm4, %ymm2, %ymm2
	vpabsd	%xmm2, %xmm4
	vextracti128	$1, %ymm2, %xmm2
	vpabsd	%xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm4, %ymm2
	vmovdqa	.LCPI147_8(%rip), %ymm10 # ymm10 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm10, %ymm6, %ymm4
	vpminsd	%xmm9, %xmm4, %xmm6
	vextracti128	$1, %ymm4, %xmm4
	vpminsd	%xmm9, %xmm4, %xmm4
	vpmaxsd	%xmm11, %xmm6, %xmm6
	vpmaxsd	%xmm11, %xmm4, %xmm4
	vinserti128	$1, %xmm4, %ymm6, %ymm4
	vpsubd	%ymm2, %ymm8, %ymm2
	vpunpckhbw	%xmm3, %xmm3, %xmm3 # xmm3 = xmm3[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm2, %ymm4, %ymm6
	vmovdqa	2144(%rsp), %ymm2       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm2, %ymm2
	vpshufb	%ymm14, %ymm2, %ymm2
	vpermq	$232, %ymm2, %ymm2      # ymm2 = ymm2[0,2,2,3]
	vmovdqa	2112(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vpshufb	%ymm14, %ymm3, %ymm3
	vpermq	$232, %ymm3, %ymm3      # ymm3 = ymm3[0,2,2,3]
	vpshufb	%xmm15, %xmm3, %xmm3
	vpshufb	%xmm15, %xmm2, %xmm2
	vpunpcklqdq	%xmm3, %xmm2, %xmm2 # xmm2 = xmm2[0],xmm3[0]
	vpxor	%xmm1, %xmm2, %xmm2
	vmovdqa	1888(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vpshufb	%ymm14, %ymm3, %ymm3
	vpermq	$232, %ymm3, %ymm3      # ymm3 = ymm3[0,2,2,3]
	vmovdqa	1856(%rsp), %ymm4       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm4, %ymm0
	vpshufb	%ymm14, %ymm0, %ymm0
	vpermq	$232, %ymm0, %ymm0      # ymm0 = ymm0[0,2,2,3]
	vpshufb	%xmm15, %xmm0, %xmm0
	vpshufb	%xmm15, %xmm3, %xmm3
	vpunpcklqdq	%xmm0, %xmm3, %xmm0 # xmm0 = xmm3[0],xmm0[0]
	vpor	%xmm2, %xmm0, %xmm0
	vmovdqa	2464(%rsp), %xmm1       # 16-byte Reload
	vpinsrd	$3, 1288(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vinserti128	$1, 2496(%rsp), %ymm1, %ymm1 # 16-byte Folded Reload
	vpsrad	$31, %ymm1, %ymm2
	vpand	%ymm7, %ymm2, %ymm2
	vpaddd	%ymm1, %ymm13, %ymm1
	vpaddd	%ymm2, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm2
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm2, %ymm1
	vpsubd	%ymm1, %ymm8, %ymm1
	movq	2360(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rcx), %eax
	vmovd	%eax, %xmm2
	vpbroadcastd	%xmm2, %ymm2
	vpaddd	.LCPI147_9(%rip), %ymm2, %ymm3
	vpminsd	%xmm9, %xmm3, %xmm4
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm9, %xmm3, %xmm3
	vpmaxsd	%xmm11, %xmm4, %xmm4
	vpmaxsd	%xmm11, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpmovzxbd	%xmm0, %ymm4    # ymm4 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm1, %ymm3, %ymm4
	vmovd	%r9d, %xmm1
	vpinsrd	$1, %r12d, %xmm1, %xmm1
	vpinsrd	$2, 1392(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vpinsrd	$3, 1384(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vmovd	%r10d, %xmm3
	vpinsrd	$1, 1344(%rsp), %xmm3, %xmm3 # 4-byte Folded Reload
	vpinsrd	$2, %r8d, %xmm3, %xmm3
	movl	2528(%rsp), %ebx        # 4-byte Reload
	vpinsrd	$3, %edx, %xmm3, %xmm3
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpsrad	$31, %ymm1, %ymm3
	vpand	%ymm7, %ymm3, %ymm3
	vpaddd	%ymm1, %ymm13, %ymm1
	vpaddd	%ymm3, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm3
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpaddd	%ymm10, %ymm2, %ymm2
	vpminsd	%xmm9, %xmm2, %xmm3
	vextracti128	$1, %ymm2, %xmm2
	vpminsd	%xmm9, %xmm2, %xmm2
	vpmaxsd	%xmm11, %xmm3, %xmm3
	vpmaxsd	%xmm11, %xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm3, %ymm2
	vpsubd	%ymm1, %ymm8, %ymm1
	vpunpckhbw	%xmm0, %xmm0, %xmm0 # xmm0 = xmm0[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpslld	$31, %ymm0, %ymm0
	vblendvps	%ymm0, %ymm1, %ymm2, %ymm0
	vmovdqa	928(%rsp), %ymm2        # 32-byte Reload
	vpaddd	%ymm5, %ymm2, %ymm1
	vpextrq	$1, %xmm1, %r8
	vmovq	%xmm1, %r12
	vextracti128	$1, %ymm1, %xmm1
	vpextrq	$1, %xmm1, %r11
	vmovq	%xmm1, %rsi
	movq	%rsi, 1424(%rsp)        # 8-byte Spill
	andb	2592(%rsp), %bl         # 1-byte Folded Reload
	vpaddd	%ymm6, %ymm2, %ymm1
	movq	%r12, %rax
	sarq	$32, %rax
	movq	%rax, 1824(%rsp)        # 8-byte Spill
	movq	%r8, %rax
	sarq	$32, %rax
	movq	%rax, 2528(%rsp)        # 8-byte Spill
	movq	%rsi, %rax
	sarq	$32, %rax
	movq	%rax, 2592(%rsp)        # 8-byte Spill
	movq	%r11, %r9
	sarq	$32, %r9
	vmovq	%xmm1, %rsi
	movl	2720(%rsp), %eax        # 4-byte Reload
	andb	2560(%rsp), %al         # 1-byte Folded Reload
	movl	%eax, 2720(%rsp)        # 4-byte Spill
	movq	%rsi, %rax
	sarq	$32, %rax
	movq	%rax, 1568(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1304(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1632(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, 1280(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1600(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1272(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1664(%rsp)        # 8-byte Spill
	vpaddd	%ymm0, %ymm2, %ymm0
	vpaddd	%ymm4, %ymm2, %ymm1
	vmovq	%xmm1, %rdx
	movq	%rdx, %rax
	sarq	$32, %rax
	movq	%rax, 2368(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %r10
	movq	%r10, %rax
	sarq	$32, %rax
	movq	%rax, 2496(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, 1408(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2464(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1392(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2560(%rsp)        # 8-byte Spill
	vmovq	%xmm0, %rax
	movq	%rax, %rdi
	sarq	$32, %rdi
	movq	%rdi, 1696(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rdi
	movq	%rdi, 1312(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	movq	%rdi, 1760(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm0, %xmm0
	vmovq	%xmm0, %rdi
	movq	%rdi, 1296(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	movq	%rdi, 1728(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rdi
	movq	%rdi, 1288(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	movq	%rdi, 1816(%rsp)        # 8-byte Spill
	movl	2624(%rsp), %ecx        # 4-byte Reload
	testl	1536(%rsp), %ecx        # 4-byte Folded Reload
	vpxor	%xmm5, %xmm5, %xmm5
	setne	%cl
	cmpl	$1, 104(%rbp)
	je	.LBB147_334
# BB#340:                               # %for deinterleaved$3.s0.v15.v15227
                                        #   in Loop: Header=BB147_333 Depth=4
	vpxor	%xmm7, %xmm7, %xmm7
	jmp	.LBB147_341
	.align	16, 0x90
.LBB147_334:                            #   in Loop: Header=BB147_333 Depth=4
	movl	1432(%rsp), %edi        # 4-byte Reload
	vmovd	%edi, %xmm0
	vpbroadcastb	%xmm0, %xmm7
.LBB147_341:                            # %for deinterleaved$3.s0.v15.v15227
                                        #   in Loop: Header=BB147_333 Depth=4
	vmovaps	.LCPI147_10(%rip), %ymm9 # ymm9 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI147_11(%rip), %ymm11 # ymm11 = <4,u,5,u,6,u,7,u>
	je	.LBB147_342
# BB#343:                               # %for deinterleaved$3.s0.v15.v15227
                                        #   in Loop: Header=BB147_333 Depth=4
	vpxor	%xmm6, %xmm6, %xmm6
	jmp	.LBB147_344
	.align	16, 0x90
.LBB147_342:                            #   in Loop: Header=BB147_333 Depth=4
	movzbl	%bl, %edi
	vmovd	%edi, %xmm0
	movl	2720(%rsp), %edi        # 4-byte Reload
	movzbl	%dil, %edi
	vmovd	%edi, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm6
.LBB147_344:                            # %for deinterleaved$3.s0.v15.v15227
                                        #   in Loop: Header=BB147_333 Depth=4
	je	.LBB147_345
# BB#346:                               # %for deinterleaved$3.s0.v15.v15227
                                        #   in Loop: Header=BB147_333 Depth=4
	movl	%ecx, 1152(%rsp)        # 4-byte Spill
	jmp	.LBB147_347
	.align	16, 0x90
.LBB147_345:                            #   in Loop: Header=BB147_333 Depth=4
	vmovd	%ecx, %xmm0
	movl	%ecx, 1152(%rsp)        # 4-byte Spill
	vpbroadcastb	%xmm0, %xmm5
.LBB147_347:                            # %for deinterleaved$3.s0.v15.v15227
                                        #   in Loop: Header=BB147_333 Depth=4
	movq	%r15, 1416(%rsp)        # 8-byte Spill
	cmpl	$0, 104(%rbp)
	jne	.LBB147_349
# BB#348:                               #   in Loop: Header=BB147_333 Depth=4
	vmovd	%ebx, %xmm0
	vpbroadcastb	%xmm0, %xmm7
.LBB147_349:                            # %for deinterleaved$3.s0.v15.v15227
                                        #   in Loop: Header=BB147_333 Depth=4
	movq	1424(%rsp), %rdi        # 8-byte Reload
	movq	%r10, 1176(%rsp)        # 8-byte Spill
	movslq	%esi, %rcx
	movq	%rcx, 1216(%rsp)        # 8-byte Spill
	movq	2352(%rsp), %rbx        # 8-byte Reload
	movzwl	(%rbx,%rcx,2), %esi
	vmovd	%esi, %xmm0
	movslq	%r12d, %rcx
	movq	%rcx, 1384(%rsp)        # 8-byte Spill
	movzwl	(%rbx,%rcx,2), %ecx
	vmovd	%ecx, %xmm1
	cltq
	movq	%rax, 1344(%rsp)        # 8-byte Spill
	movzwl	(%rbx,%rax,2), %eax
	vmovd	%eax, %xmm2
	movslq	%edx, %rax
	movq	%rax, 1400(%rsp)        # 8-byte Spill
	movzwl	(%rbx,%rax,2), %eax
	vmovd	%eax, %xmm3
	movslq	%r8d, %r13
	movslq	%edi, %r10
	movslq	%r11d, %rcx
	movq	%rcx, 1184(%rsp)        # 8-byte Spill
	movq	1304(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r8
	movq	1280(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r11
	movq	1272(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r15
	movq	1568(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rbx,%rax,2), %xmm0, %xmm0
	vpinsrw	$2, (%rbx,%r8,2), %xmm0, %xmm0
	movq	1632(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rbx,%rax,2), %xmm0, %xmm0
	vpinsrw	$4, (%rbx,%r11,2), %xmm0, %xmm0
	movq	1600(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rbx,%rax,2), %xmm0, %xmm0
	vpinsrw	$6, (%rbx,%r15,2), %xmm0, %xmm0
	movq	1664(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rbx,%rax,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm0
	movq	1824(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rbx,%rax,2), %xmm1, %xmm1
	vpinsrw	$2, (%rbx,%r13,2), %xmm1, %xmm1
	movq	2528(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rbx,%rax,2), %xmm1, %xmm1
	vpinsrw	$4, (%rbx,%r10,2), %xmm1, %xmm1
	movq	2592(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rbx,%rax,2), %xmm1, %xmm1
	vpinsrw	$6, (%rbx,%rcx,2), %xmm1, %xmm1
	vpinsrw	$7, (%rbx,%r9,2), %xmm1, %xmm1
	movq	%r9, 2624(%rsp)         # 8-byte Spill
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm1, %ymm1
	vpmovzxbd	%xmm7, %ymm4    # ymm4 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vpxor	%ymm8, %ymm8, %ymm8
	vblendvps	%ymm4, %ymm1, %ymm8, %ymm1
	vpunpckhbw	%xmm7, %xmm7, %xmm4 # xmm4 = xmm7[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm0, %ymm8, %ymm0
	movq	1176(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %rdi
	movq	%rdi, 1304(%rsp)        # 8-byte Spill
	movq	1408(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r12
	movq	%r12, 1408(%rsp)        # 8-byte Spill
	movq	1392(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %rdx
	movq	%rdx, 1424(%rsp)        # 8-byte Spill
	movq	1312(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r9
	movq	1296(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %rsi
	movq	%rsi, 1312(%rsp)        # 8-byte Spill
	movq	1288(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %rax
	movq	%rax, 1392(%rsp)        # 8-byte Spill
	movq	1696(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rbx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$2, (%rbx,%r9,2), %xmm2, %xmm2
	movq	1760(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rbx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$4, (%rbx,%rsi,2), %xmm2, %xmm2
	movq	1728(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rbx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$6, (%rbx,%rax,2), %xmm2, %xmm2
	movq	1816(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$7, (%rbx,%rcx,2), %xmm2, %xmm2
	vpmovzxwd	%xmm2, %ymm2    # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm2, %ymm2
	movq	2368(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rbx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$2, (%rbx,%rdi,2), %xmm3, %xmm3
	movq	2496(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rbx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$4, (%rbx,%r12,2), %xmm3, %xmm3
	movq	2464(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rbx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$6, (%rbx,%rdx,2), %xmm3, %xmm3
	movq	2560(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$7, (%rbx,%rcx,2), %xmm3, %xmm3
	movq	%rbx, %rcx
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vcvtdq2ps	%ymm3, %ymm3
	vmovdqa	1088(%rsp), %xmm7       # 16-byte Reload
	vpmovzxbd	%xmm7, %ymm4    # ymm4 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm3, %ymm8, %ymm3
	vpunpckhbw	%xmm7, %xmm7, %xmm4 # xmm4 = xmm7[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm2, %ymm8, %ymm2
	vpermps	%ymm2, %ymm9, %ymm4
	vpermps	%ymm0, %ymm11, %ymm7
	vblendps	$170, %ymm4, %ymm7, %ymm4 # ymm4 = ymm7[0],ymm4[1],ymm7[2],ymm4[3],ymm7[4],ymm4[5],ymm7[6],ymm4[7]
	vmovaps	.LCPI147_12(%rip), %ymm7 # ymm7 = <u,0,u,1,u,2,u,3>
	vmovaps	%ymm7, %ymm8
	vpermps	%ymm2, %ymm8, %ymm2
	vmovaps	.LCPI147_13(%rip), %ymm7 # ymm7 = <0,u,1,u,2,u,3,u>
	vmovaps	%ymm7, %ymm10
	vpermps	%ymm0, %ymm10, %ymm0
	vblendps	$170, %ymm2, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm2[1],ymm0[2],ymm2[3],ymm0[4],ymm2[5],ymm0[6],ymm2[7]
	vpermps	%ymm3, %ymm9, %ymm2
	vpermps	%ymm1, %ymm11, %ymm7
	vblendps	$170, %ymm2, %ymm7, %ymm2 # ymm2 = ymm7[0],ymm2[1],ymm7[2],ymm2[3],ymm7[4],ymm2[5],ymm7[6],ymm2[7]
	vpermps	%ymm3, %ymm8, %ymm3
	vmovaps	%ymm8, %ymm14
	vpermps	%ymm1, %ymm10, %ymm1
	vmovaps	%ymm10, %ymm15
	vblendps	$170, %ymm3, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm3[1],ymm1[2],ymm3[3],ymm1[4],ymm3[5],ymm1[6],ymm3[7]
	movq	1416(%rsp), %r12        # 8-byte Reload
	vmovups	%ymm1, (%r12)
	vmovups	%ymm2, 32(%r12)
	vmovups	%ymm0, 64(%r12)
	vmovups	%ymm4, 96(%r12)
	jne	.LBB147_351
# BB#350:                               #   in Loop: Header=BB147_333 Depth=4
	movl	1432(%rsp), %ebx        # 4-byte Reload
	movzbl	%bl, %ebx
	vmovd	%ebx, %xmm0
	movl	1152(%rsp), %ebx        # 4-byte Reload
	movzbl	%bl, %ebx
	vmovd	%ebx, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm6
.LBB147_351:                            # %for deinterleaved$3.s0.v15.v15227
                                        #   in Loop: Header=BB147_333 Depth=4
	movq	1216(%rsp), %rbx        # 8-byte Reload
	movzwl	(%rcx,%rbx,2), %ebx
	vmovd	%ebx, %xmm0
	movq	1568(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rdx,2), %xmm0, %xmm0
	vpinsrw	$2, (%rcx,%r8,2), %xmm0, %xmm0
	movq	1632(%rsp), %rdi        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rdi,2), %xmm0, %xmm0
	vpinsrw	$4, (%rcx,%r11,2), %xmm0, %xmm0
	movq	1600(%rsp), %rdi        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rdi,2), %xmm0, %xmm0
	vpinsrw	$6, (%rcx,%r15,2), %xmm0, %xmm0
	movq	1664(%rsp), %rsi        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rsi,2), %xmm0, %xmm0
	movq	1384(%rsp), %rsi        # 8-byte Reload
	movzwl	(%rcx,%rsi,2), %esi
	vmovd	%esi, %xmm1
	movq	1824(%rsp), %rsi        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rsi,2), %xmm1, %xmm1
	vpinsrw	$2, (%rcx,%r13,2), %xmm1, %xmm1
	movq	2528(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rdx,2), %xmm1, %xmm1
	vpinsrw	$4, (%rcx,%r10,2), %xmm1, %xmm1
	movq	2592(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rdx,2), %xmm1, %xmm1
	movq	1184(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rdx,2), %xmm1, %xmm1
	movq	2624(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rdx,2), %xmm1, %xmm1
	movq	1344(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %edx
	vmovd	%edx, %xmm2
	movq	1696(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rdx,2), %xmm2, %xmm2
	vpinsrw	$2, (%rcx,%r9,2), %xmm2, %xmm2
	movq	1760(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1312(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1728(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1392(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1816(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1400(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm3
	movq	2368(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1304(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2496(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1408(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2464(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1424(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2560(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm3, %xmm3
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm7
	vpmovzxwd	%xmm1, %ymm0    # ymm0 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm0, %ymm10
	vpmovzxbd	%xmm6, %ymm0    # ymm0 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
	vpslld	$31, %ymm0, %ymm0
	vxorps	%ymm8, %ymm8, %ymm8
	vblendvps	%ymm0, %ymm10, %ymm8, %ymm4
	vpunpckhbw	%xmm6, %xmm6, %xmm0 # xmm0 = xmm6[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpslld	$31, %ymm0, %ymm0
	vblendvps	%ymm0, %ymm7, %ymm8, %ymm6
	vpmovzxwd	%xmm2, %ymm0    # ymm0 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm0, %ymm1
	vpmovzxwd	%xmm3, %ymm0    # ymm0 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vcvtdq2ps	%ymm0, %ymm0
	vmovdqa	1056(%rsp), %xmm3       # 16-byte Reload
	vpmovzxbd	%xmm3, %ymm2    # ymm2 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero,xmm3[4],zero,zero,zero,xmm3[5],zero,zero,zero,xmm3[6],zero,zero,zero,xmm3[7],zero,zero,zero
	vpslld	$31, %ymm2, %ymm2
	vblendvps	%ymm2, %ymm0, %ymm8, %ymm2
	vpunpckhbw	%xmm3, %xmm3, %xmm3 # xmm3 = xmm3[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm1, %ymm8, %ymm3
	vpermps	%ymm3, %ymm9, %ymm12
	vpermps	%ymm6, %ymm11, %ymm13
	vblendps	$170, %ymm12, %ymm13, %ymm12 # ymm12 = ymm13[0],ymm12[1],ymm13[2],ymm12[3],ymm13[4],ymm12[5],ymm13[6],ymm12[7]
	vpermps	%ymm3, %ymm14, %ymm3
	vpermps	%ymm6, %ymm15, %ymm6
	vblendps	$170, %ymm3, %ymm6, %ymm3 # ymm3 = ymm6[0],ymm3[1],ymm6[2],ymm3[3],ymm6[4],ymm3[5],ymm6[6],ymm3[7]
	vpermps	%ymm2, %ymm9, %ymm6
	vpermps	%ymm4, %ymm11, %ymm13
	vblendps	$170, %ymm6, %ymm13, %ymm6 # ymm6 = ymm13[0],ymm6[1],ymm13[2],ymm6[3],ymm13[4],ymm6[5],ymm13[6],ymm6[7]
	vpermps	%ymm2, %ymm14, %ymm2
	vmovaps	%ymm14, %ymm8
	vpermps	%ymm4, %ymm15, %ymm4
	vmovaps	%ymm15, %ymm13
	vblendps	$170, %ymm2, %ymm4, %ymm2 # ymm2 = ymm4[0],ymm2[1],ymm4[2],ymm2[3],ymm4[4],ymm2[5],ymm4[6],ymm2[7]
	movq	2344(%rsp), %rax        # 8-byte Reload
	movq	%r12, %r15
	vmovups	%ymm2, 32(%rax,%r15)
	vmovups	%ymm6, 64(%rax,%r15)
	vmovups	%ymm3, 96(%rax,%r15)
	vmovups	%ymm12, 128(%rax,%r15)
	jne	.LBB147_353
# BB#352:                               #   in Loop: Header=BB147_333 Depth=4
	movl	2720(%rsp), %eax        # 4-byte Reload
	vmovd	%eax, %xmm2
	vpbroadcastb	%xmm2, %xmm5
.LBB147_353:                            # %for deinterleaved$3.s0.v15.v15227
                                        #   in Loop: Header=BB147_333 Depth=4
	movq	1472(%rsp), %rcx        # 8-byte Reload
	movl	1440(%rsp), %edx        # 4-byte Reload
	vpmovzxbd	%xmm5, %ymm2    # ymm2 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
	vpslld	$31, %ymm2, %ymm2
	vxorps	%ymm6, %ymm6, %ymm6
	vblendvps	%ymm2, %ymm10, %ymm6, %ymm2
	vpunpckhbw	%xmm5, %xmm5, %xmm3 # xmm3 = xmm5[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm7, %ymm6, %ymm3
	vmovdqa	1120(%rsp), %xmm5       # 16-byte Reload
	vpmovzxbd	%xmm5, %ymm4    # ymm4 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm0, %ymm6, %ymm0
	vpunpckhbw	%xmm5, %xmm5, %xmm4 # xmm4 = xmm5[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm1, %ymm6, %ymm1
	vpermps	%ymm1, %ymm9, %ymm4
	vpermps	%ymm3, %ymm11, %ymm5
	vblendps	$170, %ymm4, %ymm5, %ymm4 # ymm4 = ymm5[0],ymm4[1],ymm5[2],ymm4[3],ymm5[4],ymm4[5],ymm5[6],ymm4[7]
	vpermps	%ymm1, %ymm8, %ymm1
	vpermps	%ymm3, %ymm13, %ymm3
	vblendps	$170, %ymm1, %ymm3, %ymm1 # ymm1 = ymm3[0],ymm1[1],ymm3[2],ymm1[3],ymm3[4],ymm1[5],ymm3[6],ymm1[7]
	vpermps	%ymm0, %ymm9, %ymm3
	vpermps	%ymm2, %ymm11, %ymm5
	vblendps	$170, %ymm3, %ymm5, %ymm3 # ymm3 = ymm5[0],ymm3[1],ymm5[2],ymm3[3],ymm5[4],ymm3[5],ymm5[6],ymm3[7]
	vpermps	%ymm0, %ymm8, %ymm0
	vpermps	%ymm2, %ymm13, %ymm2
	vblendps	$170, %ymm0, %ymm2, %ymm0 # ymm0 = ymm2[0],ymm0[1],ymm2[2],ymm0[3],ymm2[4],ymm0[5],ymm2[6],ymm0[7]
	movq	2320(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm0, (%rax,%r15)
	movq	2336(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm3, 96(%rax,%r15)
	vmovups	%ymm1, 128(%rax,%r15)
	movq	2328(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm4, (%rax,%r15)
	addl	$32, %ecx
	subq	$-128, %r15
	addl	$1, %edx
	cmpl	$-1, %edx
	jne	.LBB147_333
.LBB147_354:                            # %end for deinterleaved$3.s0.v15.v15228
                                        #   in Loop: Header=BB147_302 Depth=3
	movl	728(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, 732(%rsp)         # 4-byte Folded Reload
	movq	2360(%rsp), %r15        # 8-byte Reload
	jge	.LBB147_387
# BB#355:                               # %for deinterleaved$3.s0.v15.v15230.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	movq	616(%rsp), %rax         # 8-byte Reload
	movq	824(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movl	904(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	setne	%r10b
	sete	%dl
	movl	2656(%rsp), %ebx        # 4-byte Reload
	movl	%ebx, %r12d
	andl	$1, %r12d
	sete	%r8b
	movl	%ebx, %esi
	orl	%r15d, %esi
	testb	$1, %sil
	sete	%r9b
	movb	%r12b, %dil
	andb	%dl, %dil
	andb	%r10b, %r8b
	testl	%ebx, %ecx
	setne	%sil
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 2624(%rsp)       # 16-byte Spill
	cmpl	$1, 104(%rbp)
	je	.LBB147_356
# BB#357:                               # %for deinterleaved$3.s0.v15.v15230.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB147_358
	.align	16, 0x90
.LBB147_356:                            #   in Loop: Header=BB147_302 Depth=3
	vmovd	%r9d, %xmm1
	vpbroadcastb	%xmm1, %xmm0
.LBB147_358:                            # %for deinterleaved$3.s0.v15.v15230.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vmovdqa	%xmm0, 2592(%rsp)       # 16-byte Spill
	je	.LBB147_359
# BB#360:                               # %for deinterleaved$3.s0.v15.v15230.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB147_361
	.align	16, 0x90
.LBB147_359:                            #   in Loop: Header=BB147_302 Depth=3
	movzbl	%dil, %edx
	vmovd	%edx, %xmm2
	movzbl	%r8b, %edx
	vmovd	%edx, %xmm3
	vpor	%xmm3, %xmm2, %xmm2
	vpbroadcastb	%xmm2, %xmm0
.LBB147_361:                            # %for deinterleaved$3.s0.v15.v15230.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vmovdqa	%xmm0, 2560(%rsp)       # 16-byte Spill
	jne	.LBB147_363
# BB#362:                               #   in Loop: Header=BB147_302 Depth=3
	vmovd	%esi, %xmm0
	vpbroadcastb	%xmm0, %xmm0
	vmovdqa	%xmm0, 2624(%rsp)       # 16-byte Spill
.LBB147_363:                            # %for deinterleaved$3.s0.v15.v15230.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	cmpl	$0, 104(%rbp)
	jne	.LBB147_365
# BB#364:                               #   in Loop: Header=BB147_302 Depth=3
	vmovd	%edi, %xmm1
	vpbroadcastb	%xmm1, %xmm0
	vmovdqa	%xmm0, 2592(%rsp)       # 16-byte Spill
.LBB147_365:                            # %for deinterleaved$3.s0.v15.v15230.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	jne	.LBB147_367
# BB#366:                               #   in Loop: Header=BB147_302 Depth=3
	movzbl	%r9b, %edx
	vmovd	%edx, %xmm2
	movzbl	%sil, %edx
	vmovd	%edx, %xmm3
	vpor	%xmm3, %xmm2, %xmm2
	vpbroadcastb	%xmm2, %xmm0
	vmovdqa	%xmm0, 2560(%rsp)       # 16-byte Spill
.LBB147_367:                            # %for deinterleaved$3.s0.v15.v15230.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	jne	.LBB147_369
# BB#368:                               #   in Loop: Header=BB147_302 Depth=3
	vmovd	%r8d, %xmm0
	vpbroadcastb	%xmm0, %xmm0
	vmovdqa	%xmm0, 2624(%rsp)       # 16-byte Spill
.LBB147_369:                            # %for deinterleaved$3.s0.v15.v15230.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	movl	580(%rsp), %r10d        # 4-byte Reload
	movl	736(%rsp), %edi         # 4-byte Reload
	movl	596(%rsp), %r8d         # 4-byte Reload
	.align	16, 0x90
.LBB147_370:                            # %for deinterleaved$3.s0.v15.v15230
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_302 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testl	%r12d, %r12d
	setne	%dl
	sete	%bl
	movl	%r8d, %ecx
	andl	$1, %ecx
	sete	%r13b
	andb	%bl, %cl
	testl	%r8d, %r12d
	setne	%r11b
	movl	%r8d, %esi
	orl	2656(%rsp), %esi        # 4-byte Folded Reload
	testb	$1, %sil
	sete	%r9b
	andb	%dl, %r13b
	vpxor	%xmm0, %xmm0, %xmm0
	cmpl	$1, 104(%rbp)
	je	.LBB147_371
# BB#372:                               # %for deinterleaved$3.s0.v15.v15230
                                        #   in Loop: Header=BB147_370 Depth=4
	vxorps	%xmm6, %xmm6, %xmm6
	jmp	.LBB147_373
	.align	16, 0x90
.LBB147_371:                            #   in Loop: Header=BB147_370 Depth=4
	vmovd	%ecx, %xmm4
	vpbroadcastb	%xmm4, %xmm6
.LBB147_373:                            # %for deinterleaved$3.s0.v15.v15230
                                        #   in Loop: Header=BB147_370 Depth=4
	je	.LBB147_374
# BB#375:                               # %for deinterleaved$3.s0.v15.v15230
                                        #   in Loop: Header=BB147_370 Depth=4
	vxorps	%xmm7, %xmm7, %xmm7
	jmp	.LBB147_376
	.align	16, 0x90
.LBB147_374:                            #   in Loop: Header=BB147_370 Depth=4
	movzbl	%r11b, %edx
	vmovd	%edx, %xmm4
	movzbl	%r9b, %edx
	vmovd	%edx, %xmm5
	vpor	%xmm5, %xmm4, %xmm4
	vpbroadcastb	%xmm4, %xmm7
.LBB147_376:                            # %for deinterleaved$3.s0.v15.v15230
                                        #   in Loop: Header=BB147_370 Depth=4
	jne	.LBB147_378
# BB#377:                               #   in Loop: Header=BB147_370 Depth=4
	vmovd	%r13d, %xmm3
	vpbroadcastb	%xmm3, %xmm0
.LBB147_378:                            # %for deinterleaved$3.s0.v15.v15230
                                        #   in Loop: Header=BB147_370 Depth=4
	vmovaps	%ymm11, %ymm15
	vmovaps	%ymm9, %ymm14
	cmpl	$0, 104(%rbp)
	je	.LBB147_379
# BB#380:                               # %for deinterleaved$3.s0.v15.v15230
                                        #   in Loop: Header=BB147_370 Depth=4
	vmovdqa	%xmm0, 2720(%rsp)       # 16-byte Spill
	jmp	.LBB147_381
	.align	16, 0x90
.LBB147_379:                            #   in Loop: Header=BB147_370 Depth=4
	vmovdqa	%xmm0, 2720(%rsp)       # 16-byte Spill
	vmovd	%r11d, %xmm4
	vpbroadcastb	%xmm4, %xmm6
.LBB147_381:                            # %for deinterleaved$3.s0.v15.v15230
                                        #   in Loop: Header=BB147_370 Depth=4
	movslq	%edi, %rdx
	movq	2352(%rsp), %rsi        # 8-byte Reload
	vmovdqu	-2(%rsi,%rdx,2), %ymm4
	vpblendw	$170, 28(%rsi,%rdx,2), %ymm4, %ymm4 # ymm4 = ymm4[0],mem[1],ymm4[2],mem[3],ymm4[4],mem[5],ymm4[6],mem[7],ymm4[8],mem[9],ymm4[10],mem[11],ymm4[12],mem[13],ymm4[14],mem[15]
	vmovdqa	.LCPI147_18(%rip), %ymm0 # ymm0 = [0,1,4,5,8,9,12,13,2,3,6,7,10,11,14,15,16,17,20,21,24,25,28,29,18,19,22,23,26,27,30,31]
	vpshufb	%ymm0, %ymm4, %ymm5
	vperm2i128	$35, %ymm4, %ymm0, %ymm4 # ymm4 = ymm4[2,3,0,1]
	vmovdqa	.LCPI147_19(%rip), %ymm1 # ymm1 = [2,3,6,7,10,11,14,15,0,1,4,5,8,9,12,13,18,19,22,23,26,27,30,31,16,17,20,21,24,25,28,29]
	vmovdqa	%ymm1, %ymm2
	vpshufb	%ymm2, %ymm4, %ymm4
	vpblendd	$60, %ymm4, %ymm5, %ymm5 # ymm5 = ymm5[0,1],ymm4[2,3,4,5],ymm5[6,7]
	vextracti128	$1, %ymm5, %xmm4
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vcvtdq2ps	%ymm4, %ymm4
	vpmovzxwd	%xmm5, %ymm5    # ymm5 = xmm5[0],zero,xmm5[1],zero,xmm5[2],zero,xmm5[3],zero,xmm5[4],zero,xmm5[5],zero,xmm5[6],zero,xmm5[7],zero
	vcvtdq2ps	%ymm5, %ymm5
	vpmovzxbd	%xmm6, %ymm8    # ymm8 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
	vpslld	$31, %ymm8, %ymm8
	vpxor	%ymm1, %ymm1, %ymm1
	vblendvps	%ymm8, %ymm5, %ymm1, %ymm9
	vpunpckhbw	%xmm6, %xmm6, %xmm6 # xmm6 = xmm6[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm6, %ymm6    # ymm6 = xmm6[0],zero,xmm6[1],zero,xmm6[2],zero,xmm6[3],zero,xmm6[4],zero,xmm6[5],zero,xmm6[6],zero,xmm6[7],zero
	vpslld	$31, %ymm6, %ymm6
	vblendvps	%ymm6, %ymm4, %ymm1, %ymm10
	vmovdqu	(%rsi,%rdx,2), %ymm6
	vpblendw	$170, 30(%rsi,%rdx,2), %ymm6, %ymm6 # ymm6 = ymm6[0],mem[1],ymm6[2],mem[3],ymm6[4],mem[5],ymm6[6],mem[7],ymm6[8],mem[9],ymm6[10],mem[11],ymm6[12],mem[13],ymm6[14],mem[15]
	vpshufb	%ymm0, %ymm6, %ymm8
	vperm2i128	$35, %ymm6, %ymm0, %ymm6 # ymm6 = ymm6[2,3,0,1]
	vpshufb	%ymm2, %ymm6, %ymm6
	vpblendd	$60, %ymm6, %ymm8, %ymm8 # ymm8 = ymm8[0,1],ymm6[2,3,4,5],ymm8[6,7]
	vextracti128	$1, %ymm8, %xmm6
	vpmovzxwd	%xmm6, %ymm6    # ymm6 = xmm6[0],zero,xmm6[1],zero,xmm6[2],zero,xmm6[3],zero,xmm6[4],zero,xmm6[5],zero,xmm6[6],zero,xmm6[7],zero
	vcvtdq2ps	%ymm6, %ymm6
	vpmovzxwd	%xmm8, %ymm8    # ymm8 = xmm8[0],zero,xmm8[1],zero,xmm8[2],zero,xmm8[3],zero,xmm8[4],zero,xmm8[5],zero,xmm8[6],zero,xmm8[7],zero
	vcvtdq2ps	%ymm8, %ymm8
	vmovdqa	2592(%rsp), %xmm0       # 16-byte Reload
	vpmovzxbd	%xmm0, %ymm11   # ymm11 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
	vpslld	$31, %ymm11, %ymm11
	vblendvps	%ymm11, %ymm8, %ymm1, %ymm11
	vpunpckhbw	%xmm0, %xmm0, %xmm0 # xmm0 = xmm0[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpslld	$31, %ymm0, %ymm0
	vblendvps	%ymm0, %ymm6, %ymm1, %ymm0
	vpermps	%ymm10, %ymm15, %ymm13
	vmovaps	%ymm14, %ymm1
	vpermps	%ymm0, %ymm1, %ymm14
	vblendps	$170, %ymm14, %ymm13, %ymm13 # ymm13 = ymm13[0],ymm14[1],ymm13[2],ymm14[3],ymm13[4],ymm14[5],ymm13[6],ymm14[7]
	vmovaps	.LCPI147_13(%rip), %ymm3 # ymm3 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm10, %ymm3, %ymm10
	vmovaps	.LCPI147_12(%rip), %ymm2 # ymm2 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm0, %ymm2, %ymm0
	vblendps	$170, %ymm0, %ymm10, %ymm0 # ymm0 = ymm10[0],ymm0[1],ymm10[2],ymm0[3],ymm10[4],ymm0[5],ymm10[6],ymm0[7]
	vpermps	%ymm9, %ymm15, %ymm10
	vpermps	%ymm11, %ymm1, %ymm14
	vmovaps	%ymm1, %ymm12
	vblendps	$170, %ymm14, %ymm10, %ymm10 # ymm10 = ymm10[0],ymm14[1],ymm10[2],ymm14[3],ymm10[4],ymm14[5],ymm10[6],ymm14[7]
	vpermps	%ymm9, %ymm3, %ymm9
	vpermps	%ymm11, %ymm2, %ymm11
	vblendps	$170, %ymm11, %ymm9, %ymm9 # ymm9 = ymm9[0],ymm11[1],ymm9[2],ymm11[3],ymm9[4],ymm11[5],ymm9[6],ymm11[7]
	vmovups	%ymm9, (%rax)
	vmovups	%ymm10, 32(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm13, 96(%rax)
	jne	.LBB147_383
# BB#382:                               #   in Loop: Header=BB147_370 Depth=4
	movzbl	%cl, %ecx
	vmovd	%ecx, %xmm0
	movzbl	%r13b, %ecx
	vmovd	%ecx, %xmm7
	vpor	%xmm7, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm7
.LBB147_383:                            # %for deinterleaved$3.s0.v15.v15230
                                        #   in Loop: Header=BB147_370 Depth=4
	vpmovzxbd	%xmm7, %ymm0    # ymm0 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
	vpslld	$31, %ymm0, %ymm0
	vxorps	%ymm10, %ymm10, %ymm10
	vblendvps	%ymm0, %ymm5, %ymm10, %ymm0
	vpunpckhbw	%xmm7, %xmm7, %xmm7 # xmm7 = xmm7[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm7, %ymm7    # ymm7 = xmm7[0],zero,xmm7[1],zero,xmm7[2],zero,xmm7[3],zero,xmm7[4],zero,xmm7[5],zero,xmm7[6],zero,xmm7[7],zero
	vpslld	$31, %ymm7, %ymm7
	vblendvps	%ymm7, %ymm4, %ymm10, %ymm7
	vmovdqa	2560(%rsp), %xmm1       # 16-byte Reload
	vpmovzxbd	%xmm1, %ymm9    # ymm9 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
	vpslld	$31, %ymm9, %ymm9
	vblendvps	%ymm9, %ymm8, %ymm10, %ymm9
	vpunpckhbw	%xmm1, %xmm1, %xmm1 # xmm1 = xmm1[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpslld	$31, %ymm1, %ymm1
	vblendvps	%ymm1, %ymm6, %ymm10, %ymm1
	vpermps	%ymm7, %ymm15, %ymm10
	vpermps	%ymm1, %ymm12, %ymm11
	vblendps	$170, %ymm11, %ymm10, %ymm10 # ymm10 = ymm10[0],ymm11[1],ymm10[2],ymm11[3],ymm10[4],ymm11[5],ymm10[6],ymm11[7]
	vpermps	%ymm7, %ymm3, %ymm7
	vmovaps	%ymm2, %ymm14
	vpermps	%ymm1, %ymm14, %ymm1
	vblendps	$170, %ymm1, %ymm7, %ymm1 # ymm1 = ymm7[0],ymm1[1],ymm7[2],ymm1[3],ymm7[4],ymm1[5],ymm7[6],ymm1[7]
	vpermps	%ymm0, %ymm15, %ymm7
	vpermps	%ymm9, %ymm12, %ymm11
	vblendps	$170, %ymm11, %ymm7, %ymm7 # ymm7 = ymm7[0],ymm11[1],ymm7[2],ymm11[3],ymm7[4],ymm11[5],ymm7[6],ymm11[7]
	vpermps	%ymm0, %ymm3, %ymm0
	vmovaps	%ymm3, %ymm2
	vpermps	%ymm9, %ymm14, %ymm9
	vblendps	$170, %ymm9, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm9[1],ymm0[2],ymm9[3],ymm0[4],ymm9[5],ymm0[6],ymm9[7]
	movq	2344(%rsp), %rcx        # 8-byte Reload
	vmovups	%ymm0, 32(%rcx,%rax)
	vmovups	%ymm7, 64(%rcx,%rax)
	vmovups	%ymm1, 96(%rcx,%rax)
	vmovups	%ymm10, 128(%rcx,%rax)
	je	.LBB147_384
# BB#385:                               # %for deinterleaved$3.s0.v15.v15230
                                        #   in Loop: Header=BB147_370 Depth=4
	vmovdqa	2720(%rsp), %xmm1       # 16-byte Reload
	jmp	.LBB147_386
	.align	16, 0x90
.LBB147_384:                            #   in Loop: Header=BB147_370 Depth=4
	vmovd	%r9d, %xmm0
	vpbroadcastb	%xmm0, %xmm1
.LBB147_386:                            # %for deinterleaved$3.s0.v15.v15230
                                        #   in Loop: Header=BB147_370 Depth=4
	vpmovzxbd	%xmm1, %ymm0    # ymm0 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
	vpslld	$31, %ymm0, %ymm0
	vxorps	%ymm7, %ymm7, %ymm7
	vblendvps	%ymm0, %ymm5, %ymm7, %ymm0
	vpunpckhbw	%xmm1, %xmm1, %xmm1 # xmm1 = xmm1[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpslld	$31, %ymm1, %ymm1
	vblendvps	%ymm1, %ymm4, %ymm7, %ymm1
	vmovdqa	2624(%rsp), %xmm4       # 16-byte Reload
	vpmovzxbd	%xmm4, %ymm3    # ymm3 = xmm4[0],zero,zero,zero,xmm4[1],zero,zero,zero,xmm4[2],zero,zero,zero,xmm4[3],zero,zero,zero,xmm4[4],zero,zero,zero,xmm4[5],zero,zero,zero,xmm4[6],zero,zero,zero,xmm4[7],zero,zero,zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm8, %ymm7, %ymm3
	vpunpckhbw	%xmm4, %xmm4, %xmm4 # xmm4 = xmm4[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm6, %ymm7, %ymm4
	vmovaps	%ymm15, %ymm11
	vpermps	%ymm1, %ymm11, %ymm5
	vmovaps	%ymm12, %ymm9
	vpermps	%ymm4, %ymm9, %ymm6
	vblendps	$170, %ymm6, %ymm5, %ymm5 # ymm5 = ymm5[0],ymm6[1],ymm5[2],ymm6[3],ymm5[4],ymm6[5],ymm5[6],ymm6[7]
	vpermps	%ymm1, %ymm2, %ymm1
	vpermps	%ymm4, %ymm14, %ymm4
	vblendps	$170, %ymm4, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm4[1],ymm1[2],ymm4[3],ymm1[4],ymm4[5],ymm1[6],ymm4[7]
	vpermps	%ymm0, %ymm11, %ymm4
	vpermps	%ymm3, %ymm9, %ymm6
	vblendps	$170, %ymm6, %ymm4, %ymm4 # ymm4 = ymm4[0],ymm6[1],ymm4[2],ymm6[3],ymm4[4],ymm6[5],ymm4[6],ymm6[7]
	vpermps	%ymm0, %ymm2, %ymm0
	vpermps	%ymm3, %ymm14, %ymm3
	vblendps	$170, %ymm3, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm3[1],ymm0[2],ymm3[3],ymm0[4],ymm3[5],ymm0[6],ymm3[7]
	movq	2320(%rsp), %rcx        # 8-byte Reload
	vmovups	%ymm0, (%rcx,%rax)
	movq	2336(%rsp), %rcx        # 8-byte Reload
	vmovups	%ymm4, 96(%rcx,%rax)
	vmovups	%ymm1, 128(%rcx,%rax)
	movq	2328(%rsp), %rcx        # 8-byte Reload
	vmovups	%ymm5, (%rcx,%rax)
	addl	$32, %r8d
	addl	$32, %edi
	subq	$-128, %rax
	addl	$-1, %r10d
	jne	.LBB147_370
.LBB147_387:                            # %end for deinterleaved$3.s0.v15.v15231
                                        #   in Loop: Header=BB147_302 Depth=3
	movl	728(%rsp), %eax         # 4-byte Reload
	cmpl	908(%rsp), %eax         # 4-byte Folded Reload
	jge	.LBB147_418
# BB#388:                               # %for deinterleaved$3.s0.v15.v15233.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	movq	608(%rsp), %rax         # 8-byte Reload
	movq	824(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %r10
	movl	904(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	setne	%r9b
	sete	%bl
	movl	2656(%rsp), %edx        # 4-byte Reload
	movl	%edx, %esi
	andl	$1, %esi
	movl	%esi, 1600(%rsp)        # 4-byte Spill
	sete	%r8b
	movq	912(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %r11d
	imull	%edx, %r11d
	movl	%edx, %ecx
	movq	%r15, %rdi
	orl	%edi, %ecx
	testb	$1, %cl
	sete	%cl
	movb	%sil, %dil
	andb	%bl, %dil
	andb	%r9b, %r8b
	testl	%edx, %eax
	setne	%dl
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 1120(%rsp)       # 16-byte Spill
	cmpl	$1, 104(%rbp)
	je	.LBB147_389
# BB#390:                               # %for deinterleaved$3.s0.v15.v15233.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB147_391
	.align	16, 0x90
.LBB147_389:                            #   in Loop: Header=BB147_302 Depth=3
	vmovd	%ecx, %xmm0
	vpbroadcastb	%xmm0, %xmm0
.LBB147_391:                            # %for deinterleaved$3.s0.v15.v15233.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vmovdqa	%xmm0, 1088(%rsp)       # 16-byte Spill
	je	.LBB147_392
# BB#393:                               # %for deinterleaved$3.s0.v15.v15233.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB147_394
	.align	16, 0x90
.LBB147_392:                            #   in Loop: Header=BB147_302 Depth=3
	movzbl	%dil, %ebx
	vmovd	%ebx, %xmm0
	movzbl	%r8b, %ebx
	vmovd	%ebx, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm0
.LBB147_394:                            # %for deinterleaved$3.s0.v15.v15233.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vmovdqa	%xmm0, 1056(%rsp)       # 16-byte Spill
	jne	.LBB147_396
# BB#395:                               #   in Loop: Header=BB147_302 Depth=3
	vmovd	%edx, %xmm0
	vpbroadcastb	%xmm0, %xmm0
	vmovdqa	%xmm0, 1120(%rsp)       # 16-byte Spill
.LBB147_396:                            # %for deinterleaved$3.s0.v15.v15233.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vmovd	%r11d, %xmm1
	vpabsd	880(%rsp), %xmm0        # 16-byte Folded Reload
	cmpl	$0, 104(%rbp)
	jne	.LBB147_398
# BB#397:                               #   in Loop: Header=BB147_302 Depth=3
	vmovd	%edi, %xmm3
	vpbroadcastb	%xmm3, %xmm2
	vmovdqa	%xmm2, 1088(%rsp)       # 16-byte Spill
.LBB147_398:                            # %for deinterleaved$3.s0.v15.v15233.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	vpsubd	832(%rsp), %ymm1, %ymm1 # 32-byte Folded Reload
	jne	.LBB147_400
# BB#399:                               #   in Loop: Header=BB147_302 Depth=3
	movzbl	%cl, %ecx
	vmovd	%ecx, %xmm2
	movzbl	%dl, %ecx
	vmovd	%ecx, %xmm3
	vpor	%xmm3, %xmm2, %xmm2
	vpbroadcastb	%xmm2, %xmm2
	vmovdqa	%xmm2, 1056(%rsp)       # 16-byte Spill
.LBB147_400:                            # %for deinterleaved$3.s0.v15.v15233.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	jne	.LBB147_402
# BB#401:                               #   in Loop: Header=BB147_302 Depth=3
	vmovd	%r8d, %xmm3
	vpbroadcastb	%xmm3, %xmm2
	vmovdqa	%xmm2, 1120(%rsp)       # 16-byte Spill
.LBB147_402:                            # %for deinterleaved$3.s0.v15.v15233.preheader
                                        #   in Loop: Header=BB147_302 Depth=3
	movq	%r10, 1568(%rsp)        # 8-byte Spill
	vinserti128	$1, %xmm0, %ymm0, %ymm0
	vmovdqa	%ymm0, 960(%rsp)        # 32-byte Spill
	vpbroadcastd	%xmm1, %ymm0
	vmovdqa	%ymm0, 928(%rsp)        # 32-byte Spill
	movl	576(%rsp), %ecx         # 4-byte Reload
	movq	584(%rsp), %rax         # 8-byte Reload
	movl	%eax, %edx
	.align	16, 0x90
.LBB147_403:                            # %for deinterleaved$3.s0.v15.v15233
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_302 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rdx, 1472(%rsp)        # 8-byte Spill
	movl	%ecx, 1536(%rsp)        # 4-byte Spill
	cmpl	$0, 1600(%rsp)          # 4-byte Folded Reload
	setne	2592(%rsp)              # 1-byte Folded Spill
	sete	2624(%rsp)              # 1-byte Folded Spill
	movq	2000(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rdx), %ecx
	movl	%ecx, 1432(%rsp)        # 4-byte Spill
	movl	%ecx, %eax
	andl	$1, %eax
	movl	%eax, 2720(%rsp)        # 4-byte Spill
	sete	%al
	movl	%eax, 2560(%rsp)        # 4-byte Spill
	movl	%ecx, %eax
	orl	2656(%rsp), %eax        # 4-byte Folded Reload
	testb	$1, %al
	sete	%al
	movl	%eax, 1440(%rsp)        # 4-byte Spill
	movq	2008(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rdx), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm5
	vmovdqa	.LCPI147_9(%rip), %ymm13 # ymm13 = [0,2,4,6,8,10,12,14]
	vpaddd	%ymm13, %ymm5, %ymm6
	vmovdqa	%ymm13, %ymm3
	vextracti128	$1, %ymm6, %xmm0
	vpextrd	$1, %xmm0, %eax
	vmovdqa	2048(%rsp), %ymm2       # 32-byte Reload
	vextracti128	$1, %ymm2, %xmm1
	vpextrd	$1, %xmm1, %r8d
	movq	%rdx, %rcx
	cltd
	idivl	%r8d
	movl	%edx, 2528(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	vmovd	%xmm1, %r10d
	cltd
	idivl	%r10d
	movl	%edx, 2496(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	vpextrd	$2, %xmm1, %esi
	cltd
	idivl	%esi
	movl	%edx, 2464(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	vpextrd	$3, %xmm1, %ebx
	cltd
	idivl	%ebx
	movl	%edx, 2368(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm6, %eax
	vpextrd	$1, %xmm2, %r11d
	cltd
	idivl	%r11d
	movl	%edx, 1824(%rsp)        # 4-byte Spill
	vmovd	%xmm6, %eax
	vmovd	%xmm2, %r12d
	cltd
	idivl	%r12d
	movl	%edx, 1816(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm6, %eax
	vpextrd	$2, %xmm2, %r13d
	cltd
	idivl	%r13d
	movl	%edx, 1760(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm6, %eax
	vpextrd	$3, %xmm2, %edi
	movl	%edi, 1384(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1728(%rsp)        # 4-byte Spill
	vmovdqa	.LCPI147_8(%rip), %ymm12 # ymm12 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm12, %ymm5, %ymm5
	vextracti128	$1, %ymm5, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r8d
	movl	%edx, 1696(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, 1664(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%esi
	movl	%edx, 1632(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%ebx
	movl	%edx, 1424(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm5, %eax
	vpextrd	$1, %xmm2, %edi
	movl	%edi, 1344(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1416(%rsp)        # 4-byte Spill
	vmovd	%xmm5, %eax
	vmovd	%xmm2, %edi
	movl	%edi, 1312(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1408(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm5, %eax
	vpextrd	$2, %xmm2, %r9d
	cltd
	idivl	%r9d
	movl	%edx, 1400(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm5, %eax
	vpextrd	$3, %xmm2, %r15d
	cltd
	idivl	%r15d
	movl	%edx, 1392(%rsp)        # 4-byte Spill
	movq	2104(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rcx), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm5
	vmovdqa	%ymm3, %ymm8
	vpaddd	%ymm8, %ymm5, %ymm6
	vextracti128	$1, %ymm6, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r8d
	movl	%edx, 1304(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, 1296(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%esi
	movl	%edx, 1280(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%ebx
	movl	%edx, 1216(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm6, %eax
	cltd
	idivl	%r11d
	movl	%edx, %r11d
	vmovd	%xmm6, %eax
	cltd
	idivl	%r12d
	movl	%edx, %edi
	vpextrd	$2, %xmm6, %eax
	cltd
	idivl	%r13d
	movl	%edx, %r13d
	vpextrd	$3, %xmm6, %eax
	cltd
	idivl	1384(%rsp)              # 4-byte Folded Reload
	movl	%edx, 1288(%rsp)        # 4-byte Spill
	vmovdqa	%ymm12, %ymm2
	vpaddd	%ymm2, %ymm5, %ymm5
	vextracti128	$1, %ymm5, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%r8d
	movl	%edx, %r12d
	vmovd	%xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, 1384(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%esi
	movl	%edx, 1272(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%ebx
	movl	%edx, %r10d
	vpextrd	$1, %xmm5, %eax
	cltd
	idivl	1344(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r8d
	vmovd	%xmm5, %eax
	cltd
	idivl	1312(%rsp)              # 4-byte Folded Reload
	movl	%edx, %esi
	vpextrd	$2, %xmm5, %eax
	cltd
	idivl	%r9d
	movl	%edx, %ebx
	vpextrd	$3, %xmm5, %eax
	cltd
	idivl	%r15d
	vmovd	2496(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 2528(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 2464(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 2368(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vmovd	1816(%rsp), %xmm1       # 4-byte Folded Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vpinsrd	$1, 1824(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vpinsrd	$2, 1760(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vpinsrd	$3, 1728(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vmovd	1664(%rsp), %xmm5       # 4-byte Folded Reload
                                        # xmm5 = mem[0],zero,zero,zero
	vpinsrd	$1, 1696(%rsp), %xmm5, %xmm5 # 4-byte Folded Reload
	vpinsrd	$2, 1632(%rsp), %xmm5, %xmm5 # 4-byte Folded Reload
	vpinsrd	$3, 1424(%rsp), %xmm5, %xmm7 # 4-byte Folded Reload
	vmovd	1408(%rsp), %xmm5       # 4-byte Folded Reload
                                        # xmm5 = mem[0],zero,zero,zero
	vpinsrd	$1, 1416(%rsp), %xmm5, %xmm5 # 4-byte Folded Reload
	vpinsrd	$2, 1400(%rsp), %xmm5, %xmm5 # 4-byte Folded Reload
	vpinsrd	$3, 1392(%rsp), %xmm5, %xmm10 # 4-byte Folded Reload
	movq	2360(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rcx), %eax
	vmovd	%eax, %xmm3
	vmovd	1296(%rsp), %xmm5       # 4-byte Folded Reload
                                        # xmm5 = mem[0],zero,zero,zero
	vpinsrd	$1, 1304(%rsp), %xmm5, %xmm5 # 4-byte Folded Reload
	vpinsrd	$2, 1280(%rsp), %xmm5, %xmm5 # 4-byte Folded Reload
	vpinsrd	$3, 1216(%rsp), %xmm5, %xmm4 # 4-byte Folded Reload
	vmovdqa	%xmm4, 2528(%rsp)       # 16-byte Spill
	vmovd	%edi, %xmm5
	vpinsrd	$1, %r11d, %xmm5, %xmm5
	vpinsrd	$2, %r13d, %xmm5, %xmm13
	movl	1432(%rsp), %edi        # 4-byte Reload
	vmovd	%edi, %xmm5
	vpbroadcastd	%xmm5, %ymm14
	vpaddd	%ymm8, %ymm14, %ymm5
	vmovdqa	%ymm8, %ymm4
	vmovdqa	2032(%rsp), %xmm9       # 16-byte Reload
	vpminsd	%xmm9, %xmm5, %xmm6
	vextracti128	$1, %ymm5, %xmm5
	vpminsd	%xmm9, %xmm5, %xmm5
	vmovdqa	2016(%rsp), %xmm11      # 16-byte Reload
	vpmaxsd	%xmm11, %xmm6, %xmm6
	vpmaxsd	%xmm11, %xmm5, %xmm5
	vinserti128	$1, %xmm5, %ymm6, %ymm12
	vmovd	%ecx, %xmm5
	vpbroadcastd	%xmm5, %ymm6
	vinserti128	$1, %xmm0, %ymm1, %ymm0
	vpsrad	$31, %ymm0, %ymm1
	vmovdqa	960(%rsp), %ymm5        # 32-byte Reload
	vpand	%ymm1, %ymm5, %ymm1
	vmovdqa	2208(%rsp), %ymm15      # 32-byte Reload
	vpaddd	%ymm0, %ymm15, %ymm0
	vpaddd	%ymm1, %ymm0, %ymm0
	vpabsd	%xmm0, %xmm1
	vextracti128	$1, %ymm0, %xmm0
	vpabsd	%xmm0, %xmm0
	vinserti128	$1, %xmm0, %ymm1, %ymm0
	vmovdqa	2272(%rsp), %ymm1       # 32-byte Reload
	vpcmpgtd	%ymm6, %ymm1, %ymm1
	vmovdqa	2176(%rsp), %ymm8       # 32-byte Reload
	vpsubd	%ymm0, %ymm8, %ymm0
	vblendvps	%ymm1, %ymm12, %ymm0, %ymm12
	vpaddd	%ymm2, %ymm14, %ymm0
	vpminsd	%xmm9, %xmm0, %xmm1
	vextracti128	$1, %ymm0, %xmm0
	vpminsd	%xmm9, %xmm0, %xmm0
	vpmaxsd	%xmm11, %xmm1, %xmm1
	vpmaxsd	%xmm11, %xmm0, %xmm0
	vinserti128	$1, %xmm0, %ymm1, %ymm0
	vinserti128	$1, %xmm7, %ymm10, %ymm1
	vpsrad	$31, %ymm1, %ymm7
	vpand	%ymm7, %ymm5, %ymm7
	vpaddd	%ymm1, %ymm15, %ymm1
	vpaddd	%ymm7, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm7
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm7, %ymm1
	vmovdqa	2240(%rsp), %ymm7       # 32-byte Reload
	vpcmpgtd	%ymm6, %ymm7, %ymm7
	vpsubd	%ymm1, %ymm8, %ymm1
	vblendvps	%ymm7, %ymm0, %ymm1, %ymm0
	vpbroadcastd	%xmm3, %ymm1
	vpaddd	%ymm2, %ymm1, %ymm2
	vpaddd	%ymm4, %ymm1, %ymm1
	vpminsd	%xmm9, %xmm1, %xmm7
	vextracti128	$1, %ymm1, %xmm1
	vpminsd	%xmm9, %xmm1, %xmm1
	vpmaxsd	%xmm11, %xmm7, %xmm7
	vpmaxsd	%xmm11, %xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm7, %ymm1
	vpminsd	%xmm9, %xmm2, %xmm7
	vextracti128	$1, %ymm2, %xmm2
	vpminsd	%xmm9, %xmm2, %xmm2
	vpmaxsd	%xmm11, %xmm7, %xmm7
	vpmaxsd	%xmm11, %xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm7, %ymm2
	vpinsrd	$3, 1288(%rsp), %xmm13, %xmm4 # 4-byte Folded Reload
	vinserti128	$1, 2528(%rsp), %ymm4, %ymm3 # 16-byte Folded Reload
	vpsrad	$31, %ymm3, %ymm4
	vpand	%ymm5, %ymm4, %ymm4
	vpaddd	%ymm3, %ymm15, %ymm3
	vpaddd	%ymm4, %ymm3, %ymm3
	vpabsd	%xmm3, %xmm4
	vextracti128	$1, %ymm3, %xmm3
	vpabsd	%xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vmovdqa	2144(%rsp), %ymm4       # 32-byte Reload
	vpcmpgtd	%ymm6, %ymm4, %ymm4
	vpsubd	%ymm3, %ymm8, %ymm3
	vblendvps	%ymm4, %ymm1, %ymm3, %ymm7
	vmovd	1384(%rsp), %xmm1       # 4-byte Folded Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vpinsrd	$1, %r12d, %xmm1, %xmm1
	vpinsrd	$2, 1272(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vpinsrd	$3, %r10d, %xmm1, %xmm1
	movl	2560(%rsp), %ecx        # 4-byte Reload
	vmovd	%esi, %xmm3
	vpinsrd	$1, %r8d, %xmm3, %xmm3
	vpinsrd	$2, %ebx, %xmm3, %xmm3
	vpinsrd	$3, %edx, %xmm3, %xmm3
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpsrad	$31, %ymm1, %ymm3
	vpand	%ymm5, %ymm3, %ymm3
	vpaddd	%ymm1, %ymm15, %ymm1
	vpaddd	%ymm3, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm3
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vmovdqa	2112(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm6, %ymm3, %ymm3
	vpsubd	%ymm1, %ymm8, %ymm1
	vblendvps	%ymm3, %ymm2, %ymm1, %ymm1
	vmovdqa	928(%rsp), %ymm3        # 32-byte Reload
	vpaddd	%ymm12, %ymm3, %ymm2
	vpextrq	$1, %xmm2, %rbx
	vmovq	%xmm2, %r10
	vextracti128	$1, %ymm2, %xmm2
	vpextrq	$1, %xmm2, %r13
	vmovq	%xmm2, %r12
	movq	%r12, 1416(%rsp)        # 8-byte Spill
	andb	2592(%rsp), %cl         # 1-byte Folded Reload
	vpaddd	%ymm0, %ymm3, %ymm0
	movq	%r10, %rax
	sarq	$32, %rax
	movq	%rax, 2464(%rsp)        # 8-byte Spill
	movq	%rbx, %rax
	sarq	$32, %rax
	movq	%rax, 2592(%rsp)        # 8-byte Spill
	sarq	$32, %r12
	movq	%r13, %r9
	sarq	$32, %r9
	vmovq	%xmm0, %rsi
	movl	2720(%rsp), %eax        # 4-byte Reload
	andb	2624(%rsp), %al         # 1-byte Folded Reload
	movl	%eax, 2720(%rsp)        # 4-byte Spill
	movq	%rsi, %rax
	sarq	$32, %rax
	movq	%rax, 1632(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rax
	movq	%rax, 1304(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1696(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm0, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, 1280(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1664(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rax
	movq	%rax, 1272(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1728(%rsp)        # 8-byte Spill
	vpaddd	%ymm1, %ymm3, %ymm0
	vpaddd	%ymm7, %ymm3, %ymm1
	vmovq	%xmm1, %r8
	movq	%r8, %rax
	sarq	$32, %rax
	movq	%rax, 2496(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1408(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2560(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, 1400(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2528(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1344(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2624(%rsp)        # 8-byte Spill
	vmovq	%xmm0, %rax
	movq	%rax, %rdx
	sarq	$32, %rdx
	movq	%rdx, 1760(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rdx
	movq	%rdx, 1296(%rsp)        # 8-byte Spill
	sarq	$32, %rdx
	movq	%rdx, 1824(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm0, %xmm0
	vmovq	%xmm0, %rdx
	movq	%rdx, 1288(%rsp)        # 8-byte Spill
	sarq	$32, %rdx
	movq	%rdx, 1816(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rdx
	movq	%rdx, 1176(%rsp)        # 8-byte Spill
	sarq	$32, %rdx
	movq	%rdx, 2368(%rsp)        # 8-byte Spill
	testl	1600(%rsp), %edi        # 4-byte Folded Reload
	vpxor	%xmm5, %xmm5, %xmm5
	setne	%dl
	movl	%edx, 1424(%rsp)        # 4-byte Spill
	cmpl	$1, 104(%rbp)
	je	.LBB147_404
# BB#405:                               # %for deinterleaved$3.s0.v15.v15233
                                        #   in Loop: Header=BB147_403 Depth=4
	vpxor	%xmm7, %xmm7, %xmm7
	jmp	.LBB147_406
	.align	16, 0x90
.LBB147_404:                            #   in Loop: Header=BB147_403 Depth=4
	movl	1440(%rsp), %edx        # 4-byte Reload
	vmovd	%edx, %xmm0
	vpbroadcastb	%xmm0, %xmm7
.LBB147_406:                            # %for deinterleaved$3.s0.v15.v15233
                                        #   in Loop: Header=BB147_403 Depth=4
	vmovaps	.LCPI147_10(%rip), %ymm9 # ymm9 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI147_11(%rip), %ymm11 # ymm11 = <4,u,5,u,6,u,7,u>
	movq	1568(%rsp), %r11        # 8-byte Reload
	je	.LBB147_407
# BB#408:                               # %for deinterleaved$3.s0.v15.v15233
                                        #   in Loop: Header=BB147_403 Depth=4
	vpxor	%xmm6, %xmm6, %xmm6
	jmp	.LBB147_409
	.align	16, 0x90
.LBB147_407:                            #   in Loop: Header=BB147_403 Depth=4
	movzbl	%cl, %edi
	vmovd	%edi, %xmm0
	movl	2720(%rsp), %edx        # 4-byte Reload
	movzbl	%dl, %edi
	vmovd	%edi, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm6
.LBB147_409:                            # %for deinterleaved$3.s0.v15.v15233
                                        #   in Loop: Header=BB147_403 Depth=4
	jne	.LBB147_411
# BB#410:                               #   in Loop: Header=BB147_403 Depth=4
	movl	1424(%rsp), %edx        # 4-byte Reload
	vmovd	%edx, %xmm0
	vpbroadcastb	%xmm0, %xmm5
.LBB147_411:                            # %for deinterleaved$3.s0.v15.v15233
                                        #   in Loop: Header=BB147_403 Depth=4
	cmpl	$0, 104(%rbp)
	jne	.LBB147_413
# BB#412:                               #   in Loop: Header=BB147_403 Depth=4
	vmovd	%ecx, %xmm0
	vpbroadcastb	%xmm0, %xmm7
.LBB147_413:                            # %for deinterleaved$3.s0.v15.v15233
                                        #   in Loop: Header=BB147_403 Depth=4
	movslq	%esi, %rcx
	movq	%rcx, 1216(%rsp)        # 8-byte Spill
	movq	2352(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rdx,%rcx,2), %esi
	vmovd	%esi, %xmm1
	movslq	%r10d, %rcx
	movq	%rcx, 1384(%rsp)        # 8-byte Spill
	movzwl	(%rdx,%rcx,2), %ecx
	vmovd	%ecx, %xmm0
	cltq
	movq	%rax, 1312(%rsp)        # 8-byte Spill
	movzwl	(%rdx,%rax,2), %eax
	vmovd	%eax, %xmm2
	movslq	%r8d, %rax
	movq	%rax, 1392(%rsp)        # 8-byte Spill
	movzwl	(%rdx,%rax,2), %eax
	vmovd	%eax, %xmm3
	movslq	%ebx, %rbx
	movq	%rbx, 1152(%rsp)        # 8-byte Spill
	movq	1416(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r10
	movq	%r10, 1184(%rsp)        # 8-byte Spill
	movslq	%r13d, %rsi
	movq	%rsi, 1416(%rsp)        # 8-byte Spill
	movq	1304(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r8
	movq	1280(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %rdi
	movq	%rdi, 1280(%rsp)        # 8-byte Spill
	movq	1272(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %rax
	movq	%rax, 1304(%rsp)        # 8-byte Spill
	movq	1632(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rdx,%rcx,2), %xmm1, %xmm1
	vpinsrw	$2, (%rdx,%r8,2), %xmm1, %xmm1
	movq	1696(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rdx,%rcx,2), %xmm1, %xmm1
	vpinsrw	$4, (%rdx,%rdi,2), %xmm1, %xmm1
	movq	1664(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rdx,%rcx,2), %xmm1, %xmm1
	vpinsrw	$6, (%rdx,%rax,2), %xmm1, %xmm1
	movq	1728(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$7, (%rdx,%rcx,2), %xmm1, %xmm1
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm1, %ymm1
	movq	2464(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rdx,%rcx,2), %xmm0, %xmm0
	vpinsrw	$2, (%rdx,%rbx,2), %xmm0, %xmm0
	movq	2592(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rdx,%rcx,2), %xmm0, %xmm0
	vpinsrw	$4, (%rdx,%r10,2), %xmm0, %xmm0
	vpinsrw	$5, (%rdx,%r12,2), %xmm0, %xmm0
	movq	%r12, 1432(%rsp)        # 8-byte Spill
	vpinsrw	$6, (%rdx,%rsi,2), %xmm0, %xmm0
	vpinsrw	$7, (%rdx,%r9,2), %xmm0, %xmm0
	movq	%r9, 1568(%rsp)         # 8-byte Spill
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm0
	vpmovzxbd	%xmm7, %ymm4    # ymm4 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vpxor	%ymm8, %ymm8, %ymm8
	vblendvps	%ymm4, %ymm0, %ymm8, %ymm0
	vpunpckhbw	%xmm7, %xmm7, %xmm4 # xmm4 = xmm7[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm1, %ymm8, %ymm1
	movq	1408(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %r9
	movq	%r9, 1408(%rsp)         # 8-byte Spill
	movq	1400(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %rsi
	movq	1344(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %rdi
	movq	1296(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %r15
	movq	%r15, 1344(%rsp)        # 8-byte Spill
	movq	1288(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %r10
	movq	%r10, 1400(%rsp)        # 8-byte Spill
	movq	1176(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %r12
	movq	%rsi, %r13
	movq	1760(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rdx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$2, (%rdx,%r15,2), %xmm2, %xmm2
	movq	1824(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rdx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$4, (%rdx,%r10,2), %xmm2, %xmm2
	movq	1816(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rdx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$6, (%rdx,%r12,2), %xmm2, %xmm2
	movq	2368(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$7, (%rdx,%rcx,2), %xmm2, %xmm2
	vpmovzxwd	%xmm2, %ymm2    # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm2, %ymm2
	movq	2496(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rdx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$2, (%rdx,%r9,2), %xmm3, %xmm3
	movq	2560(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rdx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$4, (%rdx,%r13,2), %xmm3, %xmm3
	movq	2528(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rdx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$6, (%rdx,%rdi,2), %xmm3, %xmm3
	movq	2624(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$7, (%rdx,%rcx,2), %xmm3, %xmm3
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vcvtdq2ps	%ymm3, %ymm3
	vmovdqa	1088(%rsp), %xmm7       # 16-byte Reload
	vpmovzxbd	%xmm7, %ymm4    # ymm4 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm3, %ymm8, %ymm3
	vpunpckhbw	%xmm7, %xmm7, %xmm4 # xmm4 = xmm7[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm2, %ymm8, %ymm2
	vpermps	%ymm2, %ymm9, %ymm4
	vpermps	%ymm1, %ymm11, %ymm7
	vblendps	$170, %ymm4, %ymm7, %ymm4 # ymm4 = ymm7[0],ymm4[1],ymm7[2],ymm4[3],ymm7[4],ymm4[5],ymm7[6],ymm4[7]
	vmovaps	.LCPI147_12(%rip), %ymm7 # ymm7 = <u,0,u,1,u,2,u,3>
	vmovaps	%ymm7, %ymm8
	vpermps	%ymm2, %ymm8, %ymm2
	vmovaps	.LCPI147_13(%rip), %ymm7 # ymm7 = <0,u,1,u,2,u,3,u>
	vmovaps	%ymm7, %ymm10
	vpermps	%ymm1, %ymm10, %ymm1
	vblendps	$170, %ymm2, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm2[1],ymm1[2],ymm2[3],ymm1[4],ymm2[5],ymm1[6],ymm2[7]
	vpermps	%ymm3, %ymm9, %ymm2
	vpermps	%ymm0, %ymm11, %ymm7
	vblendps	$170, %ymm2, %ymm7, %ymm2 # ymm2 = ymm7[0],ymm2[1],ymm7[2],ymm2[3],ymm7[4],ymm2[5],ymm7[6],ymm2[7]
	vpermps	%ymm3, %ymm8, %ymm3
	vmovaps	%ymm8, %ymm12
	vpermps	%ymm0, %ymm10, %ymm0
	vmovaps	%ymm10, %ymm13
	vblendps	$170, %ymm3, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm3[1],ymm0[2],ymm3[3],ymm0[4],ymm3[5],ymm0[6],ymm3[7]
	vmovups	%ymm0, (%r11)
	vmovups	%ymm2, 32(%r11)
	vmovups	%ymm1, 64(%r11)
	vmovups	%ymm4, 96(%r11)
	jne	.LBB147_415
# BB#414:                               #   in Loop: Header=BB147_403 Depth=4
	movl	1440(%rsp), %ecx        # 4-byte Reload
	movq	%r13, %rsi
	movzbl	%cl, %r13d
	vmovd	%r13d, %xmm0
	movq	%rsi, %r13
	movl	1424(%rsp), %ecx        # 4-byte Reload
	movzbl	%cl, %esi
	vmovd	%esi, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm6
.LBB147_415:                            # %for deinterleaved$3.s0.v15.v15233
                                        #   in Loop: Header=BB147_403 Depth=4
	movq	%rdx, %rcx
	movq	1216(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %esi
	vmovd	%esi, %xmm0
	movq	1632(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rdx,2), %xmm0, %xmm0
	vpinsrw	$2, (%rcx,%r8,2), %xmm0, %xmm0
	movq	1696(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1280(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1664(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1304(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1728(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm0, %xmm0
	movq	1384(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %esi
	vmovd	%esi, %xmm1
	movq	2464(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1152(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm1, %xmm1
	movq	2592(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1184(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1432(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1416(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1568(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm1, %xmm1
	movq	1312(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %edx
	vmovd	%edx, %xmm2
	movq	1760(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1344(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1824(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1400(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1816(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm2, %xmm2
	vpinsrw	$6, (%rcx,%r12,2), %xmm2, %xmm2
	movq	2368(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1392(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm3
	movq	2496(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1408(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2560(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm3, %xmm3
	vpinsrw	$4, (%rcx,%r13,2), %xmm3, %xmm3
	movq	2528(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm3, %xmm3
	vpinsrw	$6, (%rcx,%rdi,2), %xmm3, %xmm3
	movq	2624(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm3, %xmm3
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm0
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm1, %ymm7
	vpmovzxbd	%xmm6, %ymm1    # ymm1 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
	vpslld	$31, %ymm1, %ymm1
	vxorps	%ymm8, %ymm8, %ymm8
	vblendvps	%ymm1, %ymm7, %ymm8, %ymm4
	vpunpckhbw	%xmm6, %xmm6, %xmm1 # xmm1 = xmm6[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpslld	$31, %ymm1, %ymm1
	vblendvps	%ymm1, %ymm0, %ymm8, %ymm10
	vpmovzxwd	%xmm2, %ymm1    # ymm1 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm1, %ymm6
	vpmovzxwd	%xmm3, %ymm1    # ymm1 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vcvtdq2ps	%ymm1, %ymm1
	vmovdqa	1056(%rsp), %xmm3       # 16-byte Reload
	vpmovzxbd	%xmm3, %ymm2    # ymm2 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero,xmm3[4],zero,zero,zero,xmm3[5],zero,zero,zero,xmm3[6],zero,zero,zero,xmm3[7],zero,zero,zero
	vpslld	$31, %ymm2, %ymm2
	vblendvps	%ymm2, %ymm1, %ymm8, %ymm2
	vpunpckhbw	%xmm3, %xmm3, %xmm3 # xmm3 = xmm3[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm6, %ymm8, %ymm3
	vpermps	%ymm3, %ymm9, %ymm14
	vpermps	%ymm10, %ymm11, %ymm15
	vblendps	$170, %ymm14, %ymm15, %ymm14 # ymm14 = ymm15[0],ymm14[1],ymm15[2],ymm14[3],ymm15[4],ymm14[5],ymm15[6],ymm14[7]
	vpermps	%ymm3, %ymm12, %ymm3
	vpermps	%ymm10, %ymm13, %ymm10
	vblendps	$170, %ymm3, %ymm10, %ymm3 # ymm3 = ymm10[0],ymm3[1],ymm10[2],ymm3[3],ymm10[4],ymm3[5],ymm10[6],ymm3[7]
	vpermps	%ymm2, %ymm9, %ymm10
	vpermps	%ymm4, %ymm11, %ymm15
	vblendps	$170, %ymm10, %ymm15, %ymm10 # ymm10 = ymm15[0],ymm10[1],ymm15[2],ymm10[3],ymm15[4],ymm10[5],ymm15[6],ymm10[7]
	vpermps	%ymm2, %ymm12, %ymm2
	vmovaps	%ymm12, %ymm8
	vpermps	%ymm4, %ymm13, %ymm4
	vmovaps	%ymm13, %ymm12
	vblendps	$170, %ymm2, %ymm4, %ymm2 # ymm2 = ymm4[0],ymm2[1],ymm4[2],ymm2[3],ymm4[4],ymm2[5],ymm4[6],ymm2[7]
	movq	2344(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm2, 32(%rax,%r11)
	vmovups	%ymm10, 64(%rax,%r11)
	vmovups	%ymm3, 96(%rax,%r11)
	vmovups	%ymm14, 128(%rax,%r11)
	jne	.LBB147_417
# BB#416:                               #   in Loop: Header=BB147_403 Depth=4
	movl	2720(%rsp), %eax        # 4-byte Reload
	vmovd	%eax, %xmm2
	vpbroadcastb	%xmm2, %xmm5
.LBB147_417:                            # %for deinterleaved$3.s0.v15.v15233
                                        #   in Loop: Header=BB147_403 Depth=4
	movl	1536(%rsp), %ecx        # 4-byte Reload
	movq	1472(%rsp), %rdx        # 8-byte Reload
	vpmovzxbd	%xmm5, %ymm2    # ymm2 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
	vpslld	$31, %ymm2, %ymm2
	vxorps	%ymm4, %ymm4, %ymm4
	vblendvps	%ymm2, %ymm7, %ymm4, %ymm2
	vpunpckhbw	%xmm5, %xmm5, %xmm3 # xmm3 = xmm5[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm0, %ymm4, %ymm0
	vmovdqa	1120(%rsp), %xmm5       # 16-byte Reload
	vpmovzxbd	%xmm5, %ymm3    # ymm3 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm1, %ymm4, %ymm1
	vpunpckhbw	%xmm5, %xmm5, %xmm3 # xmm3 = xmm5[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm6, %ymm4, %ymm3
	vpermps	%ymm3, %ymm9, %ymm4
	vpermps	%ymm0, %ymm11, %ymm5
	vblendps	$170, %ymm4, %ymm5, %ymm4 # ymm4 = ymm5[0],ymm4[1],ymm5[2],ymm4[3],ymm5[4],ymm4[5],ymm5[6],ymm4[7]
	vpermps	%ymm3, %ymm8, %ymm3
	vpermps	%ymm0, %ymm12, %ymm0
	vblendps	$170, %ymm3, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm3[1],ymm0[2],ymm3[3],ymm0[4],ymm3[5],ymm0[6],ymm3[7]
	vpermps	%ymm1, %ymm9, %ymm3
	vpermps	%ymm2, %ymm11, %ymm5
	vblendps	$170, %ymm3, %ymm5, %ymm3 # ymm3 = ymm5[0],ymm3[1],ymm5[2],ymm3[3],ymm5[4],ymm3[5],ymm5[6],ymm3[7]
	vpermps	%ymm1, %ymm8, %ymm1
	vpermps	%ymm2, %ymm12, %ymm2
	vblendps	$170, %ymm1, %ymm2, %ymm1 # ymm1 = ymm2[0],ymm1[1],ymm2[2],ymm1[3],ymm2[4],ymm1[5],ymm2[6],ymm1[7]
	movq	2320(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm1, (%rax,%r11)
	movq	2336(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm3, 96(%rax,%r11)
	vmovups	%ymm0, 128(%rax,%r11)
	movq	2328(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm4, (%rax,%r11)
	addl	$32, %edx
	subq	$-128, %r11
	movq	%r11, 1568(%rsp)        # 8-byte Spill
	addl	$-1, %ecx
	jne	.LBB147_403
.LBB147_418:                            # %end for deinterleaved$3.s0.v15.v15234
                                        #   in Loop: Header=BB147_302 Depth=3
	movl	2656(%rsp), %ecx        # 4-byte Reload
	addl	$1, %ecx
	movl	%ecx, 2656(%rsp)        # 4-byte Spill
	movb	727(%rsp), %dl          # 1-byte Reload
	addb	$1, %dl
	movq	912(%rsp), %rax         # 8-byte Reload
	addl	%eax, 736(%rsp)         # 4-byte Folded Spill
	movq	1136(%rsp), %rax        # 8-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB147_302
.LBB147_335:                            # %end for deinterleaved$3.s0.v16226
                                        #   in Loop: Header=BB147_271 Depth=2
	movq	1504(%rsp), %rax        # 8-byte Reload
	leal	3(%rax), %ecx
	movl	%ecx, 824(%rsp)         # 4-byte Spill
	movq	1136(%rsp), %rax        # 8-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB147_449
# BB#336:                               # %for deinterleaved$3.s0.v16236.preheader
                                        #   in Loop: Header=BB147_271 Depth=2
	movq	1136(%rsp), %rax        # 8-byte Reload
	movb	%al, %cl
	.align	16, 0x90
.LBB147_337:                            # %for deinterleaved$3.s0.v16236
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB147_432 Depth 4
	movb	%cl, 928(%rsp)          # 1-byte Spill
	movzbl	%cl, %esi
	andl	$3, %esi
	cmpl	$0, 908(%rsp)           # 4-byte Folded Reload
	jle	.LBB147_448
# BB#338:                               # %for deinterleaved$3.s0.v15.v15239.preheader
                                        #   in Loop: Header=BB147_337 Depth=3
	imulq	816(%rsp), %rsi         # 8-byte Folded Reload
	movl	904(%rsp), %r11d        # 4-byte Reload
	testl	%r11d, %r11d
	setne	%r8b
	sete	%r10b
	movq	1136(%rsp), %rbx        # 8-byte Reload
	movl	%ebx, %r15d
	andl	$1, %r15d
	movl	%r15d, 1600(%rsp)       # 4-byte Spill
	sete	%r9b
	movl	744(%rsp), %eax         # 4-byte Reload
	cmpl	%ebx, %eax
	movl	%eax, %edi
	cmovgl	%ebx, %edi
	movq	808(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %edi
	cmovll	%ecx, %edi
	movl	%ebx, %eax
	subl	%ecx, %eax
	cltd
	idivl	752(%rsp)               # 4-byte Folded Reload
	movl	%edx, %eax
	sarl	$31, %eax
	andl	756(%rsp), %eax         # 4-byte Folded Reload
	movq	760(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %edx
	leal	(%rdx,%rax), %ecx
	leal	1(%rdx,%rax), %eax
	leaq	(%rsi,%r14), %rdx
	movq	%rdx, 2656(%rsp)        # 8-byte Spill
	cmpl	$-2, %ecx
	notl	%ecx
	cmovgl	%eax, %ecx
	movl	748(%rsp), %esi         # 4-byte Reload
	subl	%ecx, %esi
	cmpl	%ebx, 804(%rsp)         # 4-byte Folded Reload
	cmovgl	%edi, %esi
	movq	912(%rsp), %rax         # 8-byte Reload
	imull	%eax, %esi
	movl	%ebx, %eax
	movq	2360(%rsp), %rcx        # 8-byte Reload
	orl	%ecx, %eax
	testb	$1, %al
	sete	%al
	movb	%r15b, %dil
	andb	%r10b, %dil
	andb	%r8b, %r9b
	testl	%ebx, %r11d
	setne	%dl
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 1152(%rsp)       # 16-byte Spill
	cmpl	$1, 104(%rbp)
	je	.LBB147_339
# BB#419:                               # %for deinterleaved$3.s0.v15.v15239.preheader
                                        #   in Loop: Header=BB147_337 Depth=3
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB147_420
	.align	16, 0x90
.LBB147_339:                            #   in Loop: Header=BB147_337 Depth=3
	vmovd	%eax, %xmm0
	vpbroadcastb	%xmm0, %xmm0
.LBB147_420:                            # %for deinterleaved$3.s0.v15.v15239.preheader
                                        #   in Loop: Header=BB147_337 Depth=3
	vmovdqa	%xmm0, 1120(%rsp)       # 16-byte Spill
	je	.LBB147_421
# BB#422:                               # %for deinterleaved$3.s0.v15.v15239.preheader
                                        #   in Loop: Header=BB147_337 Depth=3
	vpxor	%xmm0, %xmm0, %xmm0
	jmp	.LBB147_423
	.align	16, 0x90
.LBB147_421:                            #   in Loop: Header=BB147_337 Depth=3
	movzbl	%dil, %ecx
	vmovd	%ecx, %xmm0
	movzbl	%r9b, %ecx
	vmovd	%ecx, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm0
.LBB147_423:                            # %for deinterleaved$3.s0.v15.v15239.preheader
                                        #   in Loop: Header=BB147_337 Depth=3
	vmovdqa	%xmm0, 1088(%rsp)       # 16-byte Spill
	jne	.LBB147_425
# BB#424:                               #   in Loop: Header=BB147_337 Depth=3
	vmovd	%edx, %xmm0
	vpbroadcastb	%xmm0, %xmm0
	vmovdqa	%xmm0, 1152(%rsp)       # 16-byte Spill
.LBB147_425:                            # %for deinterleaved$3.s0.v15.v15239.preheader
                                        #   in Loop: Header=BB147_337 Depth=3
	vmovd	%esi, %xmm1
	vpabsd	880(%rsp), %xmm0        # 16-byte Folded Reload
	cmpl	$0, 104(%rbp)
	jne	.LBB147_427
# BB#426:                               #   in Loop: Header=BB147_337 Depth=3
	vmovd	%edi, %xmm3
	vpbroadcastb	%xmm3, %xmm2
	vmovdqa	%xmm2, 1120(%rsp)       # 16-byte Spill
.LBB147_427:                            # %for deinterleaved$3.s0.v15.v15239.preheader
                                        #   in Loop: Header=BB147_337 Depth=3
	vpsubd	832(%rsp), %ymm1, %ymm1 # 32-byte Folded Reload
	jne	.LBB147_429
# BB#428:                               #   in Loop: Header=BB147_337 Depth=3
	movzbl	%al, %eax
	vmovd	%eax, %xmm2
	movzbl	%dl, %eax
	vmovd	%eax, %xmm3
	vpor	%xmm3, %xmm2, %xmm2
	vpbroadcastb	%xmm2, %xmm2
	vmovdqa	%xmm2, 1088(%rsp)       # 16-byte Spill
.LBB147_429:                            # %for deinterleaved$3.s0.v15.v15239.preheader
                                        #   in Loop: Header=BB147_337 Depth=3
	jne	.LBB147_431
# BB#430:                               #   in Loop: Header=BB147_337 Depth=3
	vmovd	%r9d, %xmm3
	vpbroadcastb	%xmm3, %xmm2
	vmovdqa	%xmm2, 1152(%rsp)       # 16-byte Spill
.LBB147_431:                            # %for deinterleaved$3.s0.v15.v15239.preheader
                                        #   in Loop: Header=BB147_337 Depth=3
	vinserti128	$1, %xmm0, %ymm0, %ymm0
	vmovdqa	%ymm0, 1056(%rsp)       # 32-byte Spill
	vpbroadcastd	%xmm1, %ymm0
	vmovdqa	%ymm0, 960(%rsp)        # 32-byte Spill
	xorl	%r15d, %r15d
	movl	908(%rsp), %edx         # 4-byte Reload
	.align	16, 0x90
.LBB147_432:                            # %for deinterleaved$3.s0.v15.v15239
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_337 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%edx, 1536(%rsp)        # 4-byte Spill
	cmpl	$0, 1600(%rsp)          # 4-byte Folded Reload
	setne	2624(%rsp)              # 1-byte Folded Spill
	sete	2592(%rsp)              # 1-byte Folded Spill
	movq	2000(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r15), %ecx
	movl	%ecx, 1568(%rsp)        # 4-byte Spill
	movl	%ecx, %eax
	andl	$1, %eax
	movl	%eax, 2720(%rsp)        # 4-byte Spill
	sete	%al
	movl	%eax, 2560(%rsp)        # 4-byte Spill
	movl	%ecx, %eax
	movq	1136(%rsp), %rcx        # 8-byte Reload
	orl	%ecx, %eax
	testb	$1, %al
	sete	%al
	movl	%eax, 1472(%rsp)        # 4-byte Spill
	movq	2008(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r15), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm5
	vmovdqa	.LCPI147_9(%rip), %ymm0 # ymm0 = [0,2,4,6,8,10,12,14]
	vpaddd	%ymm0, %ymm5, %ymm6
	vmovdqa	%ymm0, %ymm3
	vextracti128	$1, %ymm6, %xmm0
	vpextrd	$1, %xmm0, %eax
	vmovdqa	2048(%rsp), %ymm2       # 32-byte Reload
	vextracti128	$1, %ymm2, %xmm1
	vpextrd	$1, %xmm1, %ecx
	cltd
	idivl	%ecx
	movl	%edx, 1816(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	vmovd	%xmm1, %r12d
	cltd
	idivl	%r12d
	movl	%edx, 2528(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	vpextrd	$2, %xmm1, %r8d
	cltd
	idivl	%r8d
	movl	%edx, 2496(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	vpextrd	$3, %xmm1, %r10d
	cltd
	idivl	%r10d
	movl	%edx, 2464(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm6, %eax
	vpextrd	$1, %xmm2, %esi
	movl	%esi, 1400(%rsp)        # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, 2368(%rsp)        # 4-byte Spill
	vmovd	%xmm6, %eax
	vmovd	%xmm2, %esi
	cltd
	idivl	%esi
	movl	%edx, 1824(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm6, %eax
	vpextrd	$2, %xmm2, %ebx
	cltd
	idivl	%ebx
	movl	%edx, 1760(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm6, %eax
	vpextrd	$3, %xmm2, %edi
	movl	%edi, 1392(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1728(%rsp)        # 4-byte Spill
	vmovdqa	.LCPI147_8(%rip), %ymm0 # ymm0 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm0, %ymm5, %ymm5
	vmovdqa	%ymm0, %ymm1
	vextracti128	$1, %ymm5, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, 1696(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	idivl	%r12d
	movl	%edx, 1664(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%r8d
	movl	%edx, 1632(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, 1440(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm5, %eax
	vpextrd	$1, %xmm2, %edi
	movl	%edi, 1384(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1432(%rsp)        # 4-byte Spill
	vmovd	%xmm5, %eax
	vmovd	%xmm2, %edi
	movl	%edi, 1344(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1424(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm5, %eax
	vpextrd	$2, %xmm2, %edi
	movl	%edi, 1312(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1416(%rsp)        # 4-byte Spill
	vpextrd	$3, %xmm5, %eax
	vpextrd	$3, %xmm2, %edi
	movl	%edi, 1304(%rsp)        # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, 1408(%rsp)        # 4-byte Spill
	movq	2104(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r15), %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %ymm5
	vpaddd	%ymm3, %ymm5, %ymm6
	vmovdqa	%ymm3, %ymm9
	vextracti128	$1, %ymm6, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, 1296(%rsp)        # 4-byte Spill
	vmovd	%xmm0, %eax
	cltd
	idivl	%r12d
	movl	%edx, 1288(%rsp)        # 4-byte Spill
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%r8d
	movl	%edx, %r11d
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, %r13d
	vpextrd	$1, %xmm6, %eax
	cltd
	idivl	1400(%rsp)              # 4-byte Folded Reload
	movl	%edx, %edi
	vmovd	%xmm6, %eax
	cltd
	idivl	%esi
	movl	%edx, %esi
	vpextrd	$2, %xmm6, %eax
	cltd
	idivl	%ebx
	movl	%edx, %ebx
	vpextrd	$3, %xmm6, %eax
	cltd
	idivl	1392(%rsp)              # 4-byte Folded Reload
	movl	%edx, 1392(%rsp)        # 4-byte Spill
	vpaddd	%ymm1, %ymm5, %ymm5
	vextracti128	$1, %ymm5, %xmm0
	vpextrd	$1, %xmm0, %eax
	cltd
	idivl	%ecx
	movl	%edx, %r9d
	vmovd	%xmm0, %eax
	cltd
	idivl	%r12d
	movl	%edx, %r12d
	vpextrd	$2, %xmm0, %eax
	cltd
	idivl	%r8d
	movl	%edx, %ecx
	vpextrd	$3, %xmm0, %eax
	cltd
	idivl	%r10d
	movl	%edx, 1400(%rsp)        # 4-byte Spill
	vpextrd	$1, %xmm5, %eax
	cltd
	idivl	1384(%rsp)              # 4-byte Folded Reload
	movl	%edx, 1384(%rsp)        # 4-byte Spill
	vmovd	%xmm5, %eax
	cltd
	idivl	1344(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r10d
	vpextrd	$2, %xmm5, %eax
	cltd
	idivl	1312(%rsp)              # 4-byte Folded Reload
	movl	%edx, %r8d
	vpextrd	$3, %xmm5, %eax
	cltd
	idivl	1304(%rsp)              # 4-byte Folded Reload
	vmovd	2528(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1816(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 2496(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 2464(%rsp), %xmm0, %xmm5 # 4-byte Folded Reload
	vmovd	1824(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 2368(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 1760(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1728(%rsp), %xmm0, %xmm6 # 4-byte Folded Reload
	vmovd	1664(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1696(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 1632(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1440(%rsp), %xmm0, %xmm2 # 4-byte Folded Reload
	vmovd	1424(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1432(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, 1416(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$3, 1408(%rsp), %xmm0, %xmm10 # 4-byte Folded Reload
	vmovd	1288(%rsp), %xmm0       # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 1296(%rsp), %xmm0, %xmm0 # 4-byte Folded Reload
	vpinsrd	$2, %r11d, %xmm0, %xmm0
	vpinsrd	$3, %r13d, %xmm0, %xmm0
	vmovdqa	%xmm0, 2528(%rsp)       # 16-byte Spill
	vmovd	%esi, %xmm0
	vpinsrd	$1, %edi, %xmm0, %xmm0
	vpinsrd	$2, %ebx, %xmm0, %xmm0
	vmovdqa	%xmm0, 2496(%rsp)       # 16-byte Spill
	vmovd	%r15d, %xmm0
	vpbroadcastd	%xmm0, %ymm0
	vmovdqa	2272(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm12
	vmovdqa	.LCPI147_5(%rip), %ymm14 # ymm14 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vpshufb	%ymm14, %ymm12, %ymm12
	vpermq	$232, %ymm12, %ymm12    # ymm12 = ymm12[0,2,2,3]
	vmovdqa	2240(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm13
	vpshufb	%ymm14, %ymm13, %ymm13
	vpermq	$232, %ymm13, %ymm13    # ymm13 = ymm13[0,2,2,3]
	vmovdqa	.LCPI147_6(%rip), %xmm15 # xmm15 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vpshufb	%xmm15, %xmm13, %xmm3
	vpshufb	%xmm15, %xmm12, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm3[0]
	vmovdqa	.LCPI147_7(%rip), %xmm1 # xmm1 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
	vpxor	%xmm1, %xmm3, %xmm13
	vmovdqa	1952(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm4
	vpshufb	%ymm14, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vmovdqa	1920(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm12
	vpshufb	%ymm14, %ymm12, %ymm12
	vpermq	$232, %ymm12, %ymm12    # ymm12 = ymm12[0,2,2,3]
	vpshufb	%xmm15, %xmm12, %xmm3
	vpshufb	%xmm15, %xmm4, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm3[0]
	vpor	%xmm13, %xmm3, %xmm3
	vinserti128	$1, %xmm5, %ymm6, %ymm4
	vpsrad	$31, %ymm4, %ymm5
	vmovdqa	1056(%rsp), %ymm7       # 32-byte Reload
	vpand	%ymm5, %ymm7, %ymm5
	vmovdqa	2208(%rsp), %ymm13      # 32-byte Reload
	vpaddd	%ymm4, %ymm13, %ymm4
	vpaddd	%ymm5, %ymm4, %ymm4
	vpabsd	%xmm4, %xmm5
	vextracti128	$1, %ymm4, %xmm4
	vpabsd	%xmm4, %xmm4
	vinserti128	$1, %xmm4, %ymm5, %ymm4
	vmovdqa	2176(%rsp), %ymm8       # 32-byte Reload
	vpsubd	%ymm4, %ymm8, %ymm12
	movl	1568(%rsp), %r11d       # 4-byte Reload
	vmovd	%r11d, %xmm5
	vpbroadcastd	%xmm5, %ymm6
	vpaddd	%ymm9, %ymm6, %ymm5
	vmovdqa	2032(%rsp), %xmm9       # 16-byte Reload
	vpminsd	%xmm9, %xmm5, %xmm4
	vextracti128	$1, %ymm5, %xmm5
	vpminsd	%xmm9, %xmm5, %xmm5
	vmovdqa	2016(%rsp), %xmm11      # 16-byte Reload
	vpmaxsd	%xmm11, %xmm4, %xmm4
	vpmaxsd	%xmm11, %xmm5, %xmm5
	vinserti128	$1, %xmm5, %ymm4, %ymm4
	vpmovzxbd	%xmm3, %ymm5    # ymm5 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero,xmm3[4],zero,zero,zero,xmm3[5],zero,zero,zero,xmm3[6],zero,zero,zero,xmm3[7],zero,zero,zero
	vpslld	$31, %ymm5, %ymm5
	vblendvps	%ymm5, %ymm12, %ymm4, %ymm5
	vinserti128	$1, %xmm2, %ymm10, %ymm2
	vpsrad	$31, %ymm2, %ymm4
	vpand	%ymm4, %ymm7, %ymm4
	vpaddd	%ymm2, %ymm13, %ymm2
	vpaddd	%ymm4, %ymm2, %ymm2
	vpabsd	%xmm2, %xmm4
	vextracti128	$1, %ymm2, %xmm2
	vpabsd	%xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm4, %ymm2
	vmovdqa	.LCPI147_8(%rip), %ymm10 # ymm10 = [16,18,20,22,24,26,28,30]
	vpaddd	%ymm10, %ymm6, %ymm4
	vpminsd	%xmm9, %xmm4, %xmm6
	vextracti128	$1, %ymm4, %xmm4
	vpminsd	%xmm9, %xmm4, %xmm4
	vpmaxsd	%xmm11, %xmm6, %xmm6
	vpmaxsd	%xmm11, %xmm4, %xmm4
	vinserti128	$1, %xmm4, %ymm6, %ymm4
	vpsubd	%ymm2, %ymm8, %ymm2
	vpunpckhbw	%xmm3, %xmm3, %xmm3 # xmm3 = xmm3[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm2, %ymm4, %ymm6
	vmovdqa	2144(%rsp), %ymm2       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm2, %ymm2
	vpshufb	%ymm14, %ymm2, %ymm2
	vpermq	$232, %ymm2, %ymm2      # ymm2 = ymm2[0,2,2,3]
	vmovdqa	2112(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vpshufb	%ymm14, %ymm3, %ymm3
	vpermq	$232, %ymm3, %ymm3      # ymm3 = ymm3[0,2,2,3]
	vpshufb	%xmm15, %xmm3, %xmm3
	vpshufb	%xmm15, %xmm2, %xmm2
	vpunpcklqdq	%xmm3, %xmm2, %xmm2 # xmm2 = xmm2[0],xmm3[0]
	vpxor	%xmm1, %xmm2, %xmm2
	vmovdqa	1888(%rsp), %ymm3       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm3, %ymm3
	vpshufb	%ymm14, %ymm3, %ymm3
	vpermq	$232, %ymm3, %ymm3      # ymm3 = ymm3[0,2,2,3]
	vmovdqa	1856(%rsp), %ymm4       # 32-byte Reload
	vpcmpgtd	%ymm0, %ymm4, %ymm0
	vpshufb	%ymm14, %ymm0, %ymm0
	vpermq	$232, %ymm0, %ymm0      # ymm0 = ymm0[0,2,2,3]
	vpshufb	%xmm15, %xmm0, %xmm0
	vpshufb	%xmm15, %xmm3, %xmm3
	vpunpcklqdq	%xmm0, %xmm3, %xmm0 # xmm0 = xmm3[0],xmm0[0]
	vpor	%xmm2, %xmm0, %xmm0
	vmovdqa	2496(%rsp), %xmm1       # 16-byte Reload
	vpinsrd	$3, 1392(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vinserti128	$1, 2528(%rsp), %ymm1, %ymm1 # 16-byte Folded Reload
	vpsrad	$31, %ymm1, %ymm2
	vpand	%ymm7, %ymm2, %ymm2
	vpaddd	%ymm1, %ymm13, %ymm1
	vpaddd	%ymm2, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm2
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm2, %ymm1
	vpsubd	%ymm1, %ymm8, %ymm1
	movq	2360(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r15), %eax
	vmovd	%eax, %xmm2
	vpbroadcastd	%xmm2, %ymm2
	vpaddd	.LCPI147_9(%rip), %ymm2, %ymm3
	vpminsd	%xmm9, %xmm3, %xmm4
	vextracti128	$1, %ymm3, %xmm3
	vpminsd	%xmm9, %xmm3, %xmm3
	vpmaxsd	%xmm11, %xmm4, %xmm4
	vpmaxsd	%xmm11, %xmm3, %xmm3
	vinserti128	$1, %xmm3, %ymm4, %ymm3
	vpmovzxbd	%xmm0, %ymm4    # ymm4 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm1, %ymm3, %ymm4
	vmovd	%r12d, %xmm1
	vpinsrd	$1, %r9d, %xmm1, %xmm1
	vpinsrd	$2, %ecx, %xmm1, %xmm1
	vpinsrd	$3, 1400(%rsp), %xmm1, %xmm1 # 4-byte Folded Reload
	vmovd	%r10d, %xmm3
	vpinsrd	$1, 1384(%rsp), %xmm3, %xmm3 # 4-byte Folded Reload
	vpinsrd	$2, %r8d, %xmm3, %xmm3
	movl	2560(%rsp), %ebx        # 4-byte Reload
	vpinsrd	$3, %edx, %xmm3, %xmm3
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpsrad	$31, %ymm1, %ymm3
	vpand	%ymm7, %ymm3, %ymm3
	vpaddd	%ymm1, %ymm13, %ymm1
	vpaddd	%ymm3, %ymm1, %ymm1
	vpabsd	%xmm1, %xmm3
	vextracti128	$1, %ymm1, %xmm1
	vpabsd	%xmm1, %xmm1
	vinserti128	$1, %xmm1, %ymm3, %ymm1
	vpaddd	%ymm10, %ymm2, %ymm2
	vpminsd	%xmm9, %xmm2, %xmm3
	vextracti128	$1, %ymm2, %xmm2
	vpminsd	%xmm9, %xmm2, %xmm2
	vpmaxsd	%xmm11, %xmm3, %xmm3
	vpmaxsd	%xmm11, %xmm2, %xmm2
	vinserti128	$1, %xmm2, %ymm3, %ymm2
	vpsubd	%ymm1, %ymm8, %ymm1
	vpunpckhbw	%xmm0, %xmm0, %xmm0 # xmm0 = xmm0[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpslld	$31, %ymm0, %ymm0
	vblendvps	%ymm0, %ymm1, %ymm2, %ymm0
	vmovdqa	960(%rsp), %ymm2        # 32-byte Reload
	vpaddd	%ymm5, %ymm2, %ymm1
	vpextrq	$1, %xmm1, %rsi
	movq	%rsi, 1272(%rsp)        # 8-byte Spill
	vmovq	%xmm1, %r9
	vextracti128	$1, %ymm1, %xmm1
	vpextrq	$1, %xmm1, %rdx
	vmovq	%xmm1, %rcx
	movq	%rcx, 1440(%rsp)        # 8-byte Spill
	andb	2624(%rsp), %bl         # 1-byte Folded Reload
	vpaddd	%ymm6, %ymm2, %ymm1
	movq	%r9, %rax
	sarq	$32, %rax
	movq	%rax, 2368(%rsp)        # 8-byte Spill
	movq	%rsi, %rax
	sarq	$32, %rax
	movq	%rax, 2560(%rsp)        # 8-byte Spill
	movq	%rcx, %rax
	sarq	$32, %rax
	movq	%rax, 2624(%rsp)        # 8-byte Spill
	movq	%rdx, %r12
	movq	%rdx, %r10
	sarq	$32, %r12
	vmovq	%xmm1, %rsi
	movl	2720(%rsp), %eax        # 4-byte Reload
	andb	2592(%rsp), %al         # 1-byte Folded Reload
	movl	%eax, 2720(%rsp)        # 4-byte Spill
	movq	%rsi, %r8
	sarq	$32, %r8
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1344(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1664(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, 1296(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1632(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1288(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 1696(%rsp)        # 8-byte Spill
	vpaddd	%ymm0, %ymm2, %ymm0
	vpaddd	%ymm4, %ymm2, %ymm1
	vmovq	%xmm1, %r13
	movq	%r13, %rax
	sarq	$32, %rax
	movq	%rax, 2464(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1432(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2528(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm1, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, 1424(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2496(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm1, %rax
	movq	%rax, 1408(%rsp)        # 8-byte Spill
	sarq	$32, %rax
	movq	%rax, 2592(%rsp)        # 8-byte Spill
	vmovq	%xmm0, %rax
	movq	%rax, %rdi
	sarq	$32, %rdi
	movq	%rdi, 1728(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rdi
	movq	%rdi, 1384(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	movq	%rdi, 1816(%rsp)        # 8-byte Spill
	vextracti128	$1, %ymm0, %xmm0
	vmovq	%xmm0, %rdi
	movq	%rdi, 1312(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	movq	%rdi, 1760(%rsp)        # 8-byte Spill
	vpextrq	$1, %xmm0, %rdi
	movq	%rdi, 1304(%rsp)        # 8-byte Spill
	sarq	$32, %rdi
	movq	%rdi, 1824(%rsp)        # 8-byte Spill
	testl	1600(%rsp), %r11d       # 4-byte Folded Reload
	vpxor	%xmm5, %xmm5, %xmm5
	setne	%cl
	cmpl	$1, 104(%rbp)
	je	.LBB147_433
# BB#434:                               # %for deinterleaved$3.s0.v15.v15239
                                        #   in Loop: Header=BB147_432 Depth=4
	vpxor	%xmm7, %xmm7, %xmm7
	jmp	.LBB147_435
	.align	16, 0x90
.LBB147_433:                            #   in Loop: Header=BB147_432 Depth=4
	movl	1472(%rsp), %edi        # 4-byte Reload
	vmovd	%edi, %xmm0
	vpbroadcastb	%xmm0, %xmm7
.LBB147_435:                            # %for deinterleaved$3.s0.v15.v15239
                                        #   in Loop: Header=BB147_432 Depth=4
	vmovaps	.LCPI147_10(%rip), %ymm9 # ymm9 = <u,4,u,5,u,6,u,7>
	vmovaps	.LCPI147_11(%rip), %ymm11 # ymm11 = <4,u,5,u,6,u,7,u>
	je	.LBB147_436
# BB#437:                               # %for deinterleaved$3.s0.v15.v15239
                                        #   in Loop: Header=BB147_432 Depth=4
	vpxor	%xmm6, %xmm6, %xmm6
	jmp	.LBB147_438
	.align	16, 0x90
.LBB147_436:                            #   in Loop: Header=BB147_432 Depth=4
	movzbl	%bl, %edi
	vmovd	%edi, %xmm0
	movl	2720(%rsp), %edi        # 4-byte Reload
	movzbl	%dil, %edi
	vmovd	%edi, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm6
.LBB147_438:                            # %for deinterleaved$3.s0.v15.v15239
                                        #   in Loop: Header=BB147_432 Depth=4
	movq	1272(%rsp), %rdx        # 8-byte Reload
	jne	.LBB147_440
# BB#439:                               #   in Loop: Header=BB147_432 Depth=4
	vmovd	%ecx, %xmm0
	vpbroadcastb	%xmm0, %xmm5
.LBB147_440:                            # %for deinterleaved$3.s0.v15.v15239
                                        #   in Loop: Header=BB147_432 Depth=4
	cmpl	$0, 104(%rbp)
	je	.LBB147_441
# BB#442:                               # %for deinterleaved$3.s0.v15.v15239
                                        #   in Loop: Header=BB147_432 Depth=4
	movl	%ecx, 1176(%rsp)        # 4-byte Spill
	movq	%r15, 1568(%rsp)        # 8-byte Spill
	jmp	.LBB147_443
	.align	16, 0x90
.LBB147_441:                            #   in Loop: Header=BB147_432 Depth=4
	movl	%ecx, 1176(%rsp)        # 4-byte Spill
	movq	%r15, 1568(%rsp)        # 8-byte Spill
	vmovd	%ebx, %xmm0
	vpbroadcastb	%xmm0, %xmm7
.LBB147_443:                            # %for deinterleaved$3.s0.v15.v15239
                                        #   in Loop: Header=BB147_432 Depth=4
	movslq	%esi, %rcx
	movq	%rcx, 1280(%rsp)        # 8-byte Spill
	movq	2352(%rsp), %rbx        # 8-byte Reload
	movzwl	(%rbx,%rcx,2), %esi
	vmovd	%esi, %xmm0
	movslq	%r9d, %rcx
	movq	%rcx, 1400(%rsp)        # 8-byte Spill
	movzwl	(%rbx,%rcx,2), %ecx
	vmovd	%ecx, %xmm1
	cltq
	movq	%rax, 1392(%rsp)        # 8-byte Spill
	movzwl	(%rbx,%rax,2), %eax
	vmovd	%eax, %xmm2
	movslq	%r13d, %rax
	movq	%rax, 1416(%rsp)        # 8-byte Spill
	movzwl	(%rbx,%rax,2), %eax
	vmovd	%eax, %xmm3
	movslq	%edx, %rdi
	movq	%rdi, 1184(%rsp)        # 8-byte Spill
	movq	1440(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %rsi
	movq	%rsi, 1216(%rsp)        # 8-byte Spill
	movslq	%r10d, %rcx
	movq	%rcx, 1272(%rsp)        # 8-byte Spill
	movq	1344(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r15
	movq	1296(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r11
	movq	1288(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %rdx
	vpinsrw	$1, (%rbx,%r8,2), %xmm0, %xmm0
	movq	%r8, 1288(%rsp)         # 8-byte Spill
	vpinsrw	$2, (%rbx,%r15,2), %xmm0, %xmm0
	movq	1664(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rbx,%rax,2), %xmm0, %xmm0
	vpinsrw	$4, (%rbx,%r11,2), %xmm0, %xmm0
	movq	1632(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rbx,%rax,2), %xmm0, %xmm0
	vpinsrw	$6, (%rbx,%rdx,2), %xmm0, %xmm0
	movq	1696(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rbx,%rax,2), %xmm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm0
	movq	2368(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rbx,%rax,2), %xmm1, %xmm1
	vpinsrw	$2, (%rbx,%rdi,2), %xmm1, %xmm1
	movq	2560(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rbx,%rax,2), %xmm1, %xmm1
	vpinsrw	$4, (%rbx,%rsi,2), %xmm1, %xmm1
	movq	2624(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rbx,%rax,2), %xmm1, %xmm1
	vpinsrw	$6, (%rbx,%rcx,2), %xmm1, %xmm1
	vpinsrw	$7, (%rbx,%r12,2), %xmm1, %xmm1
	movq	%r12, 1344(%rsp)        # 8-byte Spill
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm1, %ymm1
	vpmovzxbd	%xmm7, %ymm4    # ymm4 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vpxor	%ymm8, %ymm8, %ymm8
	vblendvps	%ymm4, %ymm1, %ymm8, %ymm1
	vpunpckhbw	%xmm7, %xmm7, %xmm4 # xmm4 = xmm7[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm0, %ymm8, %ymm0
	movq	1432(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r8
	movq	%r8, 1296(%rsp)         # 8-byte Spill
	movq	1424(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r12
	movq	%r12, 1432(%rsp)        # 8-byte Spill
	movq	1408(%rsp), %rax        # 8-byte Reload
	movslq	%eax, %r13
	movq	%r13, 1440(%rsp)        # 8-byte Spill
	movq	1384(%rsp), %rax        # 8-byte Reload
	cltq
	movq	1312(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %r10
	movq	%r10, 1408(%rsp)        # 8-byte Spill
	movq	1304(%rsp), %rcx        # 8-byte Reload
	movslq	%ecx, %r9
	movq	%r9, 1424(%rsp)         # 8-byte Spill
	movq	1728(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rbx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$2, (%rbx,%rax,2), %xmm2, %xmm2
	movq	1816(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rbx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$4, (%rbx,%r10,2), %xmm2, %xmm2
	movq	1760(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rbx,%rcx,2), %xmm2, %xmm2
	vpinsrw	$6, (%rbx,%r9,2), %xmm2, %xmm2
	movq	1824(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$7, (%rbx,%rcx,2), %xmm2, %xmm2
	vpmovzxwd	%xmm2, %ymm2    # ymm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm2, %ymm2
	movq	2464(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$1, (%rbx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$2, (%rbx,%r8,2), %xmm3, %xmm3
	movq	2528(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$3, (%rbx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$4, (%rbx,%r12,2), %xmm3, %xmm3
	movq	2496(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$5, (%rbx,%rcx,2), %xmm3, %xmm3
	vpinsrw	$6, (%rbx,%r13,2), %xmm3, %xmm3
	movq	2592(%rsp), %rcx        # 8-byte Reload
	vpinsrw	$7, (%rbx,%rcx,2), %xmm3, %xmm3
	movq	%rbx, %rcx
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vcvtdq2ps	%ymm3, %ymm3
	vmovdqa	1120(%rsp), %xmm7       # 16-byte Reload
	vpmovzxbd	%xmm7, %ymm4    # ymm4 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm3, %ymm8, %ymm3
	vpunpckhbw	%xmm7, %xmm7, %xmm4 # xmm4 = xmm7[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm2, %ymm8, %ymm2
	vpermps	%ymm2, %ymm9, %ymm4
	vpermps	%ymm0, %ymm11, %ymm7
	vblendps	$170, %ymm4, %ymm7, %ymm4 # ymm4 = ymm7[0],ymm4[1],ymm7[2],ymm4[3],ymm7[4],ymm4[5],ymm7[6],ymm4[7]
	vmovaps	.LCPI147_12(%rip), %ymm7 # ymm7 = <u,0,u,1,u,2,u,3>
	vmovaps	%ymm7, %ymm8
	vpermps	%ymm2, %ymm8, %ymm2
	vmovaps	.LCPI147_13(%rip), %ymm7 # ymm7 = <0,u,1,u,2,u,3,u>
	vmovaps	%ymm7, %ymm10
	vpermps	%ymm0, %ymm10, %ymm0
	vblendps	$170, %ymm2, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm2[1],ymm0[2],ymm2[3],ymm0[4],ymm2[5],ymm0[6],ymm2[7]
	vpermps	%ymm3, %ymm9, %ymm2
	vpermps	%ymm1, %ymm11, %ymm7
	vblendps	$170, %ymm2, %ymm7, %ymm2 # ymm2 = ymm7[0],ymm2[1],ymm7[2],ymm2[3],ymm7[4],ymm2[5],ymm7[6],ymm2[7]
	vpermps	%ymm3, %ymm8, %ymm3
	vmovaps	%ymm8, %ymm14
	vpermps	%ymm1, %ymm10, %ymm1
	vmovaps	%ymm10, %ymm15
	vblendps	$170, %ymm3, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm3[1],ymm1[2],ymm3[3],ymm1[4],ymm3[5],ymm1[6],ymm3[7]
	movq	2656(%rsp), %rbx        # 8-byte Reload
	vmovups	%ymm1, (%rbx)
	vmovups	%ymm2, 32(%rbx)
	vmovups	%ymm0, 64(%rbx)
	vmovups	%ymm4, 96(%rbx)
	jne	.LBB147_445
# BB#444:                               #   in Loop: Header=BB147_432 Depth=4
	movl	1472(%rsp), %ebx        # 4-byte Reload
	movzbl	%bl, %ebx
	vmovd	%ebx, %xmm0
	movl	1176(%rsp), %ebx        # 4-byte Reload
	movzbl	%bl, %ebx
	vmovd	%ebx, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vpbroadcastb	%xmm0, %xmm6
.LBB147_445:                            # %for deinterleaved$3.s0.v15.v15239
                                        #   in Loop: Header=BB147_432 Depth=4
	movq	1280(%rsp), %rbx        # 8-byte Reload
	movzwl	(%rcx,%rbx,2), %ebx
	vmovd	%ebx, %xmm0
	movq	1288(%rsp), %rsi        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rsi,2), %xmm0, %xmm0
	vpinsrw	$2, (%rcx,%r15,2), %xmm0, %xmm0
	movq	1664(%rsp), %rdi        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rdi,2), %xmm0, %xmm0
	vpinsrw	$4, (%rcx,%r11,2), %xmm0, %xmm0
	movq	1632(%rsp), %rdi        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rdi,2), %xmm0, %xmm0
	vpinsrw	$6, (%rcx,%rdx,2), %xmm0, %xmm0
	movq	1696(%rsp), %rsi        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rsi,2), %xmm0, %xmm0
	movq	1400(%rsp), %rsi        # 8-byte Reload
	movzwl	(%rcx,%rsi,2), %esi
	vmovd	%esi, %xmm1
	movq	2368(%rsp), %rsi        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rsi,2), %xmm1, %xmm1
	movq	1184(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rdx,2), %xmm1, %xmm1
	movq	2560(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rdx,2), %xmm1, %xmm1
	movq	1216(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rdx,2), %xmm1, %xmm1
	movq	2624(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rdx,2), %xmm1, %xmm1
	movq	1272(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rdx,2), %xmm1, %xmm1
	movq	1344(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rdx,2), %xmm1, %xmm1
	movq	1392(%rsp), %rdx        # 8-byte Reload
	movzwl	(%rcx,%rdx,2), %edx
	vmovd	%edx, %xmm2
	movq	1728(%rsp), %rdx        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rdx,2), %xmm2, %xmm2
	vpinsrw	$2, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1816(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1408(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1760(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1424(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1824(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm2, %xmm2
	movq	1416(%rsp), %rax        # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	vmovd	%eax, %xmm3
	movq	2464(%rsp), %rax        # 8-byte Reload
	vpinsrw	$1, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1296(%rsp), %rax        # 8-byte Reload
	vpinsrw	$2, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2528(%rsp), %rax        # 8-byte Reload
	vpinsrw	$3, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1432(%rsp), %rax        # 8-byte Reload
	vpinsrw	$4, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2496(%rsp), %rax        # 8-byte Reload
	vpinsrw	$5, (%rcx,%rax,2), %xmm3, %xmm3
	movq	1440(%rsp), %rax        # 8-byte Reload
	vpinsrw	$6, (%rcx,%rax,2), %xmm3, %xmm3
	movq	2592(%rsp), %rax        # 8-byte Reload
	vpinsrw	$7, (%rcx,%rax,2), %xmm3, %xmm3
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vcvtdq2ps	%ymm0, %ymm7
	vpmovzxwd	%xmm1, %ymm0    # ymm0 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vcvtdq2ps	%ymm0, %ymm10
	vpmovzxbd	%xmm6, %ymm0    # ymm0 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
	vpslld	$31, %ymm0, %ymm0
	vxorps	%ymm8, %ymm8, %ymm8
	vblendvps	%ymm0, %ymm10, %ymm8, %ymm4
	vpunpckhbw	%xmm6, %xmm6, %xmm0 # xmm0 = xmm6[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpslld	$31, %ymm0, %ymm0
	vblendvps	%ymm0, %ymm7, %ymm8, %ymm6
	vpmovzxwd	%xmm2, %ymm0    # ymm0 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vcvtdq2ps	%ymm0, %ymm1
	vpmovzxwd	%xmm3, %ymm0    # ymm0 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vcvtdq2ps	%ymm0, %ymm0
	vmovdqa	1088(%rsp), %xmm3       # 16-byte Reload
	vpmovzxbd	%xmm3, %ymm2    # ymm2 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero,xmm3[4],zero,zero,zero,xmm3[5],zero,zero,zero,xmm3[6],zero,zero,zero,xmm3[7],zero,zero,zero
	vpslld	$31, %ymm2, %ymm2
	vblendvps	%ymm2, %ymm0, %ymm8, %ymm2
	vpunpckhbw	%xmm3, %xmm3, %xmm3 # xmm3 = xmm3[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm1, %ymm8, %ymm3
	vpermps	%ymm3, %ymm9, %ymm12
	vpermps	%ymm6, %ymm11, %ymm13
	vblendps	$170, %ymm12, %ymm13, %ymm12 # ymm12 = ymm13[0],ymm12[1],ymm13[2],ymm12[3],ymm13[4],ymm12[5],ymm13[6],ymm12[7]
	vpermps	%ymm3, %ymm14, %ymm3
	vpermps	%ymm6, %ymm15, %ymm6
	vblendps	$170, %ymm3, %ymm6, %ymm3 # ymm3 = ymm6[0],ymm3[1],ymm6[2],ymm3[3],ymm6[4],ymm3[5],ymm6[6],ymm3[7]
	vpermps	%ymm2, %ymm9, %ymm6
	vpermps	%ymm4, %ymm11, %ymm13
	vblendps	$170, %ymm6, %ymm13, %ymm6 # ymm6 = ymm13[0],ymm6[1],ymm13[2],ymm6[3],ymm13[4],ymm6[5],ymm13[6],ymm6[7]
	vpermps	%ymm2, %ymm14, %ymm2
	vmovaps	%ymm14, %ymm8
	vpermps	%ymm4, %ymm15, %ymm4
	vmovaps	%ymm15, %ymm13
	vblendps	$170, %ymm2, %ymm4, %ymm2 # ymm2 = ymm4[0],ymm2[1],ymm4[2],ymm2[3],ymm4[4],ymm2[5],ymm4[6],ymm2[7]
	movq	2344(%rsp), %rax        # 8-byte Reload
	movq	2656(%rsp), %r12        # 8-byte Reload
	vmovups	%ymm2, 32(%rax,%r12)
	vmovups	%ymm6, 64(%rax,%r12)
	vmovups	%ymm3, 96(%rax,%r12)
	vmovups	%ymm12, 128(%rax,%r12)
	movq	%r12, %rcx
	jne	.LBB147_447
# BB#446:                               #   in Loop: Header=BB147_432 Depth=4
	movl	2720(%rsp), %eax        # 4-byte Reload
	vmovd	%eax, %xmm2
	vpbroadcastb	%xmm2, %xmm5
.LBB147_447:                            # %for deinterleaved$3.s0.v15.v15239
                                        #   in Loop: Header=BB147_432 Depth=4
	movq	1568(%rsp), %r15        # 8-byte Reload
	movl	1536(%rsp), %edx        # 4-byte Reload
	vpmovzxbd	%xmm5, %ymm2    # ymm2 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
	vpslld	$31, %ymm2, %ymm2
	vxorps	%ymm6, %ymm6, %ymm6
	vblendvps	%ymm2, %ymm10, %ymm6, %ymm2
	vpunpckhbw	%xmm5, %xmm5, %xmm3 # xmm3 = xmm5[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpslld	$31, %ymm3, %ymm3
	vblendvps	%ymm3, %ymm7, %ymm6, %ymm3
	vmovdqa	1152(%rsp), %xmm5       # 16-byte Reload
	vpmovzxbd	%xmm5, %ymm4    # ymm4 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm0, %ymm6, %ymm0
	vpunpckhbw	%xmm5, %xmm5, %xmm4 # xmm4 = xmm5[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpslld	$31, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm1, %ymm6, %ymm1
	vpermps	%ymm1, %ymm9, %ymm4
	vpermps	%ymm3, %ymm11, %ymm5
	vblendps	$170, %ymm4, %ymm5, %ymm4 # ymm4 = ymm5[0],ymm4[1],ymm5[2],ymm4[3],ymm5[4],ymm4[5],ymm5[6],ymm4[7]
	vpermps	%ymm1, %ymm8, %ymm1
	vpermps	%ymm3, %ymm13, %ymm3
	vblendps	$170, %ymm1, %ymm3, %ymm1 # ymm1 = ymm3[0],ymm1[1],ymm3[2],ymm1[3],ymm3[4],ymm1[5],ymm3[6],ymm1[7]
	vpermps	%ymm0, %ymm9, %ymm3
	vpermps	%ymm2, %ymm11, %ymm5
	vblendps	$170, %ymm3, %ymm5, %ymm3 # ymm3 = ymm5[0],ymm3[1],ymm5[2],ymm3[3],ymm5[4],ymm3[5],ymm5[6],ymm3[7]
	vpermps	%ymm0, %ymm8, %ymm0
	vpermps	%ymm2, %ymm13, %ymm2
	vblendps	$170, %ymm0, %ymm2, %ymm0 # ymm0 = ymm2[0],ymm0[1],ymm2[2],ymm0[3],ymm2[4],ymm0[5],ymm2[6],ymm0[7]
	movq	2320(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm0, (%rax,%rcx)
	movq	2336(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm3, 96(%rax,%rcx)
	vmovups	%ymm1, 128(%rax,%rcx)
	movq	2328(%rsp), %rax        # 8-byte Reload
	vmovups	%ymm4, (%rax,%rcx)
	addl	$32, %r15d
	subq	$-128, %rcx
	movq	%rcx, 2656(%rsp)        # 8-byte Spill
	addl	$-1, %edx
	jne	.LBB147_432
.LBB147_448:                            # %end for deinterleaved$3.s0.v15.v15240
                                        #   in Loop: Header=BB147_337 Depth=3
	movq	1136(%rsp), %rax        # 8-byte Reload
	addl	$1, %eax
	movq	%rax, 1136(%rsp)        # 8-byte Spill
	movb	928(%rsp), %cl          # 1-byte Reload
	addb	$1, %cl
	cmpl	824(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB147_337
.LBB147_449:                            # %consume deinterleaved$3242
                                        #   in Loop: Header=BB147_271 Depth=2
	cmpl	$0, 720(%rsp)           # 4-byte Folded Reload
	jle	.LBB147_549
# BB#450:                               # %produce demosaiced$3246.preheader
                                        #   in Loop: Header=BB147_271 Depth=2
	movq	2712(%rsp), %rax        # 8-byte Reload
	cltq
	movq	544(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	shlq	$5, %rax
	movq	448(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rdx
	movq	456(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rsi
	movq	464(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r8
	movq	568(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rax), %rcx
	movq	528(%rsp), %rax         # 8-byte Reload
	addl	%eax, %ecx
	movq	%rcx, 1392(%rsp)        # 8-byte Spill
	movq	512(%rsp), %rax         # 8-byte Reload
	movq	496(%rsp), %rcx         # 8-byte Reload
	vbroadcastss	8(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1760(%rsp)       # 32-byte Spill
	vbroadcastss	4(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1728(%rsp)       # 32-byte Spill
	vbroadcastss	(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1696(%rsp)       # 32-byte Spill
	movq	520(%rsp), %rcx         # 8-byte Reload
	vbroadcastss	8(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1664(%rsp)       # 32-byte Spill
	vbroadcastss	4(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1632(%rsp)       # 32-byte Spill
	vbroadcastss	(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1600(%rsp)       # 32-byte Spill
	movq	488(%rsp), %rcx         # 8-byte Reload
	vbroadcastss	(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1568(%rsp)       # 32-byte Spill
	movq	480(%rsp), %rcx         # 8-byte Reload
	vbroadcastss	(%rax,%rcx,4), %ymm0
	vmovaps	%ymm0, 1536(%rsp)       # 32-byte Spill
	movq	504(%rsp), %rcx         # 8-byte Reload
	vpbroadcastd	(%rax,%rcx,4), %ymm0
	vmovdqa	%ymm0, 1472(%rsp)       # 32-byte Spill
	movq	560(%rsp), %r13         # 8-byte Reload
	movq	2360(%rsp), %rax        # 8-byte Reload
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB147_451:                            # %produce demosaiced$3246
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB147_452 Depth 4
                                        #           Child Loop BB147_453 Depth 5
                                        #         Child Loop BB147_478 Depth 4
                                        #           Child Loop BB147_479 Depth 5
                                        #         Child Loop BB147_502 Depth 4
                                        #           Child Loop BB147_503 Depth 5
                                        #         Child Loop BB147_529 Depth 4
                                        #           Child Loop BB147_530 Depth 5
	movq	%rbx, 1400(%rsp)        # 8-byte Spill
	movl	%eax, 1408(%rsp)        # 4-byte Spill
	movq	%r13, 1416(%rsp)        # 8-byte Spill
	movq	%r8, 1424(%rsp)         # 8-byte Spill
	movq	%rsi, 1432(%rsp)        # 8-byte Spill
	movq	%rdx, 1440(%rsp)        # 8-byte Spill
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	2784(%rsp,%rcx,4), %rcx
	movq	%rcx, 1816(%rsp)        # 8-byte Spill
	leaq	(%rsi,%rax), %rcx
	leaq	2784(%rsp,%rcx,4), %rdi
	leaq	(%rax,%r8), %rax
	leaq	2784(%rsp,%rax,4), %r12
	shll	$5, %ebx
	movq	2360(%rsp), %rax        # 8-byte Reload
	addl	%eax, %ebx
	movq	%rbx, 1824(%rsp)        # 8-byte Spill
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	vmovaps	688(%rsp), %xmm6        # 16-byte Reload
	vmovaps	672(%rsp), %xmm13       # 16-byte Reload
	.align	16, 0x90
.LBB147_452:                            # %for demosaiced$3.s0.v15.v15247
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_451 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB147_453 Depth 5
	movq	%rax, 2464(%rsp)        # 8-byte Spill
	movq	1824(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r15,8), %edx
	movl	%eax, %r8d
	andl	$1, %r8d
	movq	2360(%rsp), %rax        # 8-byte Reload
	subl	%eax, %edx
	movl	924(%rsp), %eax         # 4-byte Reload
	movl	%eax, %esi
	xorl	%r10d, %r10d
	movq	%r12, %r9
	.align	16, 0x90
.LBB147_453:                            # %for demosaiced$3.s0.v16251
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_451 Depth=3
                                        #         Parent Loop BB147_452 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	4(%rsi), %ebx
	andl	$3, %ebx
	movq	2776(%rsp), %rax        # 8-byte Reload
	imull	%eax, %ebx
	movq	2712(%rsp), %rcx        # 8-byte Reload
	leal	(%rcx,%r10), %r13d
	addl	%edx, %ebx
	leal	2(%rsi), %r11d
	andl	$3, %r11d
	imull	%eax, %r11d
	movl	%r13d, %ecx
	andl	$3, %ecx
	imull	%eax, %ecx
	addl	%edx, %r11d
	addl	%edx, %ecx
	movslq	%ebx, %rbx
	vmovups	(%r14,%rbx,4), %xmm8
	vmovups	16(%r14,%rbx,4), %xmm9
	vshufps	$221, %xmm9, %xmm8, %xmm1 # xmm1 = xmm8[1,3],xmm9[1,3]
	vsubps	%xmm13, %xmm1, %xmm1
	vmulps	%xmm1, %xmm6, %xmm14
	movslq	%r11d, %rax
	vmovups	(%r14,%rax,4), %xmm5
	vmovups	16(%r14,%rax,4), %xmm7
	vshufps	$221, %xmm7, %xmm5, %xmm2 # xmm2 = xmm5[1,3],xmm7[1,3]
	vsubps	%xmm13, %xmm2, %xmm2
	vmulps	%xmm2, %xmm6, %xmm4
	vmovups	8(%r14,%rbx,4), %xmm1
	vmovups	24(%r14,%rbx,4), %xmm0
	vmovaps	%xmm0, 2624(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm0, %xmm1, %xmm2 # xmm2 = xmm1[0,2],xmm0[0,2]
	vsubps	%xmm13, %xmm2, %xmm2
	vmovaps	%xmm6, %xmm3
	vmulps	%xmm2, %xmm3, %xmm6
	vmovups	8(%r14,%rax,4), %xmm0
	vmovaps	%xmm0, 2528(%rsp)       # 16-byte Spill
	vmovups	24(%r14,%rax,4), %xmm2
	vmovaps	%xmm2, 2496(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm2, %xmm0, %xmm2 # xmm2 = xmm0[0,2],xmm2[0,2]
	vsubps	%xmm13, %xmm2, %xmm2
	vmulps	%xmm2, %xmm3, %xmm0
	vbroadcastss	.LCPI147_14(%rip), %xmm12
	vminps	%xmm12, %xmm0, %xmm0
	vxorps	%xmm10, %xmm10, %xmm10
	vmaxps	%xmm10, %xmm0, %xmm2
	vminps	%xmm12, %xmm6, %xmm0
	vmaxps	%xmm10, %xmm0, %xmm15
	vbroadcastss	.LCPI147_15(%rip), %xmm6
	vminps	%xmm12, %xmm4, %xmm0
	vmaxps	%xmm10, %xmm0, %xmm11
	vminps	%xmm12, %xmm14, %xmm0
	vmaxps	%xmm10, %xmm0, %xmm0
	vbroadcastss	.LCPI147_16(%rip), %xmm4
	testl	%r8d, %r8d
	je	.LBB147_454
# BB#455:                               # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vmovaps	%xmm0, 2592(%rsp)       # 16-byte Spill
	vmovaps	%xmm1, 2656(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm7, %xmm5, %xmm0 # xmm0 = xmm5[0,2],xmm7[0,2]
	vsubps	%xmm13, %xmm0, %xmm0
	vmulps	%xmm0, %xmm3, %xmm0
	vminps	%xmm12, %xmm0, %xmm0
	vmaxps	%xmm10, %xmm0, %xmm0
	vaddps	%xmm2, %xmm0, %xmm0
	vmovaps	%xmm2, 2560(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm9, %xmm8, %xmm1 # xmm1 = xmm8[0,2],xmm9[0,2]
	vsubps	%xmm13, %xmm1, %xmm1
	vmulps	%xmm1, %xmm3, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm10, %xmm1, %xmm1
	vaddps	%xmm15, %xmm1, %xmm1
	vaddps	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm6, 2720(%rsp)       # 16-byte Spill
	vmulps	%xmm6, %xmm0, %xmm2
	jmp	.LBB147_456
	.align	16, 0x90
.LBB147_454:                            #   in Loop: Header=BB147_453 Depth=5
	vmovaps	%xmm2, 2560(%rsp)       # 16-byte Spill
	vmovaps	%xmm1, 2656(%rsp)       # 16-byte Spill
	vmovaps	%xmm6, 2720(%rsp)       # 16-byte Spill
	vmovaps	%xmm0, 2592(%rsp)       # 16-byte Spill
	vaddps	%xmm11, %xmm0, %xmm0
	vmulps	%xmm4, %xmm0, %xmm2
.LBB147_456:                            # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	movslq	%ecx, %rax
	vmovups	(%r14,%rax,4), %xmm1
	vmovups	16(%r14,%rax,4), %xmm8
	vshufps	$221, %xmm8, %xmm1, %xmm0 # xmm0 = xmm1[1,3],xmm8[1,3]
	vsubps	%xmm13, %xmm0, %xmm0
	vmulps	%xmm0, %xmm3, %xmm6
	vmovaps	%xmm13, %xmm14
	vmovups	8(%r14,%rax,4), %xmm13
	vmovups	24(%r14,%rax,4), %xmm0
	vshufps	$136, %xmm0, %xmm13, %xmm5 # xmm5 = xmm13[0,2],xmm0[0,2]
	vsubps	%xmm14, %xmm5, %xmm5
	vmulps	%xmm5, %xmm3, %xmm5
	vminps	%xmm12, %xmm5, %xmm5
	vmaxps	%xmm10, %xmm5, %xmm5
	vminps	%xmm12, %xmm6, %xmm6
	vmaxps	%xmm10, %xmm6, %xmm9
	vxorps	%xmm6, %xmm6, %xmm6
	vmovaps	%xmm9, %xmm7
	vmovaps	%xmm4, %xmm10
	je	.LBB147_458
# BB#457:                               # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vshufps	$136, %xmm8, %xmm1, %xmm1 # xmm1 = xmm1[0,2],xmm8[0,2]
	vsubps	%xmm14, %xmm1, %xmm1
	vmulps	%xmm1, %xmm3, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm6, %xmm1, %xmm1
	vaddps	%xmm5, %xmm1, %xmm1
	vmulps	%xmm10, %xmm1, %xmm7
.LBB147_458:                            # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	jne	.LBB147_459
# BB#460:                               # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vmovaps	2528(%rsp), %xmm1       # 16-byte Reload
	vshufps	$221, 2496(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[1,3],mem[1,3]
	vsubps	%xmm14, %xmm1, %xmm1
	vmovaps	%xmm3, %xmm6
	vmulps	%xmm1, %xmm6, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vxorps	%xmm3, %xmm3, %xmm3
	vmaxps	%xmm3, %xmm1, %xmm1
	vaddps	%xmm1, %xmm11, %xmm1
	vmovaps	2656(%rsp), %xmm4       # 16-byte Reload
	vshufps	$221, 2624(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
                                        # xmm4 = xmm4[1,3],mem[1,3]
	vsubps	%xmm14, %xmm4, %xmm4
	vmulps	%xmm4, %xmm6, %xmm4
	vminps	%xmm12, %xmm4, %xmm4
	vmaxps	%xmm3, %xmm4, %xmm4
	vaddps	2592(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
	vaddps	%xmm1, %xmm4, %xmm1
	vmulps	2720(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
	jmp	.LBB147_461
	.align	16, 0x90
.LBB147_459:                            #   in Loop: Header=BB147_453 Depth=5
	vaddps	2560(%rsp), %xmm15, %xmm1 # 16-byte Folded Reload
	vmulps	%xmm10, %xmm1, %xmm1
	vmovaps	%xmm3, %xmm6
	vxorps	%xmm3, %xmm3, %xmm3
.LBB147_461:                            # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	jne	.LBB147_463
# BB#462:                               # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vshufps	$221, %xmm0, %xmm13, %xmm0 # xmm0 = xmm13[1,3],xmm0[1,3]
	vsubps	%xmm14, %xmm0, %xmm0
	vmulps	%xmm0, %xmm6, %xmm0
	vminps	%xmm12, %xmm0, %xmm0
	vmaxps	%xmm3, %xmm0, %xmm0
	vaddps	%xmm0, %xmm9, %xmm0
	vmulps	%xmm10, %xmm0, %xmm5
.LBB147_463:                            # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vmovaps	%xmm7, %xmm0
	andl	$1, %r13d
	je	.LBB147_465
# BB#464:                               # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vmovaps	%xmm2, %xmm0
.LBB147_465:                            # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vmovaps	%xmm14, %xmm13
	je	.LBB147_467
# BB#466:                               # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vmovaps	%xmm7, %xmm2
.LBB147_467:                            # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vmovaps	%xmm5, %xmm3
	je	.LBB147_469
# BB#468:                               # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vmovaps	%xmm1, %xmm3
.LBB147_469:                            # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	testl	%r13d, %r13d
	je	.LBB147_471
# BB#470:                               # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vmovaps	%xmm5, %xmm1
.LBB147_471:                            # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	cmpl	$0, 104(%rbp)
	je	.LBB147_473
# BB#472:                               # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vmovaps	%xmm0, %xmm2
.LBB147_473:                            # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	je	.LBB147_475
# BB#474:                               # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vmovaps	%xmm3, %xmm1
.LBB147_475:                            # %for demosaiced$3.s0.v16251
                                        #   in Loop: Header=BB147_453 Depth=5
	vmovaps	.LCPI147_12(%rip), %ymm0 # ymm0 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm1, %ymm0, %ymm0
	vmovaps	.LCPI147_13(%rip), %ymm1 # ymm1 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm2, %ymm1, %ymm1
	vblendps	$170, %ymm0, %ymm1, %ymm0 # ymm0 = ymm1[0],ymm0[1],ymm1[2],ymm0[3],ymm1[4],ymm0[5],ymm1[6],ymm0[7]
	vmovups	%ymm0, (%r9)
	subq	$-128, %r9
	movl	%r10d, %ecx
	leal	1(%r10), %eax
	addl	$1, %esi
	movl	%eax, %r10d
	cmpl	$2, %eax
	jne	.LBB147_453
# BB#476:                               # %end for demosaiced$3.s0.v16252
                                        #   in Loop: Header=BB147_452 Depth=4
	vmovaps	%xmm10, %xmm15
	movq	2464(%rsp), %rax        # 8-byte Reload
	addq	$1, %rax
	addl	$1, %r15d
	addq	$32, %r12
	cmpq	$4, %rax
	jne	.LBB147_452
# BB#477:                               # %for demosaiced$3.s0.v15.v15254.preheader
                                        #   in Loop: Header=BB147_451 Depth=3
	movq	2712(%rsp), %rax        # 8-byte Reload
	leal	1(%rax,%rcx), %eax
	movl	%eax, 2656(%rsp)        # 4-byte Spill
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	vmovaps	640(%rsp), %xmm9        # 16-byte Reload
	vmovaps	624(%rsp), %xmm10       # 16-byte Reload
	vxorps	%xmm11, %xmm11, %xmm11
	vmovaps	2720(%rsp), %xmm2       # 16-byte Reload
	movq	2360(%rsp), %rsi        # 8-byte Reload
	.align	16, 0x90
.LBB147_478:                            # %for demosaiced$3.s0.v15.v15254
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_451 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB147_479 Depth 5
	movq	%rcx, 2560(%rsp)        # 8-byte Spill
	movq	%rax, 2592(%rsp)        # 8-byte Spill
	movq	%rdi, 2624(%rsp)        # 8-byte Spill
	movq	1824(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rcx,8), %r13d
	subl	%esi, %r13d
	addl	1044(%rsp), %r13d       # 4-byte Folded Reload
	movq	2448(%rsp), %rax        # 8-byte Reload
	movl	%eax, %r12d
	movq	2456(%rsp), %rax        # 8-byte Reload
	movl	%eax, %r11d
	movq	%rdi, %rdx
	movq	1504(%rsp), %rcx        # 8-byte Reload
	.align	16, 0x90
.LBB147_479:                            # %for demosaiced$3.s0.v16258
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_451 Depth=3
                                        #         Parent Loop BB147_478 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	%ecx, %edi
	andl	$3, %edi
	movq	2776(%rsp), %rsi        # 8-byte Reload
	imull	%esi, %edi
	movl	%r11d, %ebx
	andl	$3, %ebx
	imull	%esi, %ebx
	leal	(%rdi,%r13), %edi
	leal	(%rbx,%r13), %ebx
	leal	1(%rcx), %r10d
	movl	%r12d, %eax
	andl	$3, %eax
	imull	%esi, %eax
	leal	(%rax,%r13), %eax
	movslq	%edi, %r15
	vmovups	40(%r14,%r15,4), %xmm8
	vmovups	56(%r14,%r15,4), %xmm4
	vshufps	$136, %xmm4, %xmm8, %xmm0 # xmm0 = xmm8[0,2],xmm4[0,2]
	vsubps	%xmm10, %xmm0, %xmm0
	vmulps	%xmm0, %xmm9, %xmm0
	movslq	%eax, %rdi
	vmovups	32(%r14,%rdi,4), %xmm1
	vshufps	$221, 48(%r14,%rdi,4), %xmm1, %xmm1 # xmm1 = xmm1[1,3],mem[1,3]
	vsubps	%xmm10, %xmm1, %xmm1
	vmulps	%xmm1, %xmm9, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm11, %xmm1, %xmm1
	movslq	%ebx, %r9
	vmovups	32(%r14,%r9,4), %xmm5
	vshufps	$221, 48(%r14,%r9,4), %xmm5, %xmm5 # xmm5 = xmm5[1,3],mem[1,3]
	vsubps	%xmm10, %xmm5, %xmm5
	vmulps	%xmm5, %xmm9, %xmm5
	vminps	%xmm12, %xmm5, %xmm5
	vmaxps	%xmm11, %xmm5, %xmm5
	vaddps	%xmm5, %xmm1, %xmm1
	vminps	%xmm12, %xmm0, %xmm0
	vmaxps	%xmm11, %xmm0, %xmm5
	vmovups	32(%r14,%r15,4), %xmm0
	vmovups	48(%r14,%r15,4), %xmm6
	vshufps	$136, %xmm6, %xmm0, %xmm7 # xmm7 = xmm0[0,2],xmm6[0,2]
	vsubps	%xmm10, %xmm7, %xmm7
	vmulps	%xmm7, %xmm9, %xmm7
	vminps	%xmm12, %xmm7, %xmm7
	vmaxps	%xmm11, %xmm7, %xmm7
	vaddps	%xmm7, %xmm5, %xmm7
	vaddps	%xmm7, %xmm1, %xmm1
	vshufps	$221, %xmm6, %xmm0, %xmm0 # xmm0 = xmm0[1,3],xmm6[1,3]
	vsubps	%xmm10, %xmm0, %xmm0
	vmulps	%xmm0, %xmm9, %xmm0
	vmulps	%xmm2, %xmm1, %xmm1
	vminps	%xmm12, %xmm0, %xmm0
	vmaxps	%xmm11, %xmm0, %xmm6
	vmovaps	%xmm6, %xmm0
	testl	%r8d, %r8d
	je	.LBB147_481
# BB#480:                               # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	%xmm1, %xmm0
.LBB147_481:                            # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	je	.LBB147_483
# BB#482:                               # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	%xmm6, %xmm1
.LBB147_483:                            # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovups	40(%r14,%rdi,4), %xmm7
	vshufps	$136, 56(%r14,%rdi,4), %xmm7, %xmm7 # xmm7 = xmm7[0,2],mem[0,2]
	vsubps	%xmm10, %xmm7, %xmm7
	vmulps	%xmm7, %xmm9, %xmm7
	vminps	%xmm12, %xmm7, %xmm7
	vmaxps	%xmm11, %xmm7, %xmm7
	vmovups	40(%r14,%r9,4), %xmm3
	vshufps	$136, 56(%r14,%r9,4), %xmm3, %xmm3 # xmm3 = xmm3[0,2],mem[0,2]
	vsubps	%xmm10, %xmm3, %xmm3
	vmulps	%xmm3, %xmm9, %xmm3
	vminps	%xmm12, %xmm3, %xmm3
	vmaxps	%xmm11, %xmm3, %xmm3
	vaddps	%xmm3, %xmm7, %xmm3
	vshufps	$221, %xmm4, %xmm8, %xmm4 # xmm4 = xmm8[1,3],xmm4[1,3]
	vsubps	%xmm10, %xmm4, %xmm4
	vmulps	%xmm4, %xmm9, %xmm4
	vminps	%xmm12, %xmm4, %xmm4
	vmaxps	%xmm11, %xmm4, %xmm4
	vaddps	%xmm6, %xmm4, %xmm4
	vaddps	%xmm3, %xmm4, %xmm3
	vmulps	%xmm2, %xmm3, %xmm4
	vmovaps	%xmm5, %xmm3
	jne	.LBB147_485
# BB#484:                               # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	%xmm4, %xmm3
.LBB147_485:                            # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	jne	.LBB147_487
# BB#486:                               # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	%xmm5, %xmm4
.LBB147_487:                            # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	%xmm1, %xmm5
	andl	$1, %ecx
	je	.LBB147_489
# BB#488:                               # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	%xmm0, %xmm5
.LBB147_489:                            # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	%xmm4, %xmm6
	je	.LBB147_491
# BB#490:                               # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	%xmm3, %xmm6
.LBB147_491:                            # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	je	.LBB147_493
# BB#492:                               # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	%xmm4, %xmm3
.LBB147_493:                            # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	testl	%ecx, %ecx
	je	.LBB147_495
# BB#494:                               # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	%xmm1, %xmm0
.LBB147_495:                            # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	cmpl	$0, 104(%rbp)
	je	.LBB147_497
# BB#496:                               # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	%xmm5, %xmm0
.LBB147_497:                            # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	je	.LBB147_499
# BB#498:                               # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	%xmm6, %xmm3
.LBB147_499:                            # %for demosaiced$3.s0.v16258
                                        #   in Loop: Header=BB147_479 Depth=5
	vmovaps	.LCPI147_12(%rip), %ymm1 # ymm1 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm3, %ymm1, %ymm1
	vmovaps	.LCPI147_13(%rip), %ymm3 # ymm3 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm0, %ymm3, %ymm0
	vblendps	$170, %ymm1, %ymm0, %ymm0 # ymm0 = ymm0[0],ymm1[1],ymm0[2],ymm1[3],ymm0[4],ymm1[5],ymm0[6],ymm1[7]
	vmovups	%ymm0, (%rdx)
	subq	$-128, %rdx
	addl	$1, %r11d
	addl	$1, %r12d
	movl	%r10d, %ecx
	cmpl	%r10d, 2656(%rsp)       # 4-byte Folded Reload
	jne	.LBB147_479
# BB#500:                               # %end for demosaiced$3.s0.v16259
                                        #   in Loop: Header=BB147_478 Depth=4
	movq	2592(%rsp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	2560(%rsp), %rcx        # 8-byte Reload
	addl	$1, %ecx
	movq	2624(%rsp), %rdi        # 8-byte Reload
	addq	$32, %rdi
	cmpq	$4, %rax
	movq	2360(%rsp), %rsi        # 8-byte Reload
	jne	.LBB147_478
# BB#501:                               # %for demosaiced$3.s0.v15.v15261.preheader
                                        #   in Loop: Header=BB147_451 Depth=3
	movq	2712(%rsp), %rax        # 8-byte Reload
	movl	%eax, %r10d
	subl	2656(%rsp), %r10d       # 4-byte Folded Reload
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
	movq	712(%rsp), %rdx         # 8-byte Reload
	vmovaps	784(%rsp), %xmm14       # 16-byte Reload
	vmovaps	768(%rsp), %xmm9        # 16-byte Reload
	movq	1816(%rsp), %rcx        # 8-byte Reload
	vmovaps	%xmm15, %xmm10
	vmovaps	%xmm10, 2368(%rsp)      # 16-byte Spill
	.align	16, 0x90
.LBB147_502:                            # %for demosaiced$3.s0.v15.v15261
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_451 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB147_503 Depth 5
	movq	%rcx, 1816(%rsp)        # 8-byte Spill
	movq	1824(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%r9,8), %r15d
	subl	%esi, %r15d
	movq	1048(%rsp), %rax        # 8-byte Reload
	addl	%eax, %r15d
	xorl	%edi, %edi
	movq	%rcx, %r12
	.align	16, 0x90
.LBB147_503:                            # %for demosaiced$3.s0.v16265
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_451 Depth=3
                                        #         Parent Loop BB147_502 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	2712(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rdi), %eax
	movl	%eax, %ecx
	andl	$3, %ecx
	movq	2776(%rsp), %r13        # 8-byte Reload
	imull	%r13d, %ecx
	movq	2456(%rsp), %rsi        # 8-byte Reload
	leal	(%rsi,%rdi), %ebx
	andl	$3, %ebx
	imull	%r13d, %ebx
	leal	(%rcx,%r15), %esi
	leal	(%rbx,%r15), %ecx
	movq	2448(%rsp), %rbx        # 8-byte Reload
	leal	(%rbx,%rdi), %ebx
	andl	$3, %ebx
	imull	%r13d, %ebx
	leal	(%rbx,%r15), %ebx
	movslq	%esi, %rsi
	vmovups	72(%r14,%rsi,4), %xmm5
	vmovups	88(%r14,%rsi,4), %xmm6
	vshufps	$136, %xmm6, %xmm5, %xmm0 # xmm0 = xmm5[0,2],xmm6[0,2]
	vsubps	%xmm9, %xmm0, %xmm0
	vmulps	%xmm0, %xmm14, %xmm3
	vmovups	64(%r14,%rsi,4), %xmm0
	vmovups	80(%r14,%rsi,4), %xmm1
	vshufps	$221, %xmm1, %xmm0, %xmm4 # xmm4 = xmm0[1,3],xmm1[1,3]
	vsubps	%xmm9, %xmm4, %xmm4
	vmulps	%xmm4, %xmm14, %xmm4
	vminps	%xmm12, %xmm4, %xmm4
	vmaxps	%xmm11, %xmm4, %xmm4
	vminps	%xmm12, %xmm3, %xmm3
	vmaxps	%xmm11, %xmm3, %xmm13
	testl	%r8d, %r8d
	je	.LBB147_504
# BB#505:                               # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vmovaps	%xmm6, 2592(%rsp)       # 16-byte Spill
	vmovaps	%xmm5, 2624(%rsp)       # 16-byte Spill
	vmovaps	%xmm4, %xmm0
	vmovaps	%xmm4, 2560(%rsp)       # 16-byte Spill
	jmp	.LBB147_506
	.align	16, 0x90
.LBB147_504:                            #   in Loop: Header=BB147_503 Depth=5
	vmovaps	%xmm4, 2560(%rsp)       # 16-byte Spill
	vmovaps	%xmm6, 2592(%rsp)       # 16-byte Spill
	vmovaps	%xmm5, 2624(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0,2],xmm1[0,2]
	vsubps	%xmm9, %xmm0, %xmm0
	vmulps	%xmm0, %xmm14, %xmm0
	vminps	%xmm12, %xmm0, %xmm0
	vmaxps	%xmm11, %xmm0, %xmm0
	vaddps	%xmm0, %xmm13, %xmm0
	vmulps	%xmm10, %xmm0, %xmm0
.LBB147_506:                            # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vmovaps	%ymm0, 2656(%rsp)       # 32-byte Spill
	vxorps	%xmm15, %xmm15, %xmm15
	movslq	%ecx, %rcx
	vmovups	72(%r14,%rcx,4), %xmm0
	vmovaps	%xmm0, 2528(%rsp)       # 16-byte Spill
	vmovups	88(%r14,%rcx,4), %xmm1
	vmovaps	%xmm1, 2496(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0,2],xmm1[0,2]
	vsubps	%xmm9, %xmm0, %xmm0
	vmulps	%xmm0, %xmm14, %xmm5
	movslq	%ebx, %rsi
	vmovups	72(%r14,%rsi,4), %xmm3
	vmovups	88(%r14,%rsi,4), %xmm0
	vshufps	$136, %xmm0, %xmm3, %xmm1 # xmm1 = xmm3[0,2],xmm0[0,2]
	vsubps	%xmm9, %xmm1, %xmm1
	vmulps	%xmm1, %xmm14, %xmm4
	vmovups	64(%r14,%rcx,4), %xmm6
	vmovups	80(%r14,%rcx,4), %xmm10
	vshufps	$221, %xmm10, %xmm6, %xmm1 # xmm1 = xmm6[1,3],xmm10[1,3]
	vsubps	%xmm9, %xmm1, %xmm1
	vmulps	%xmm1, %xmm14, %xmm1
	vmovups	64(%r14,%rsi,4), %xmm11
	vmovups	80(%r14,%rsi,4), %xmm8
	vshufps	$221, %xmm8, %xmm11, %xmm7 # xmm7 = xmm11[1,3],xmm8[1,3]
	vsubps	%xmm9, %xmm7, %xmm7
	vmulps	%xmm7, %xmm14, %xmm7
	vminps	%xmm12, %xmm7, %xmm7
	vmaxps	%xmm15, %xmm7, %xmm2
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm15, %xmm1, %xmm7
	vminps	%xmm12, %xmm4, %xmm1
	vmaxps	%xmm15, %xmm1, %xmm4
	vminps	%xmm12, %xmm5, %xmm1
	vmaxps	%xmm15, %xmm1, %xmm5
	je	.LBB147_507
# BB#508:                               # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vaddps	%xmm2, %xmm7, %xmm1
	vmovaps	%xmm7, 2464(%rsp)       # 16-byte Spill
	vmovaps	2368(%rsp), %xmm10      # 16-byte Reload
	vmulps	%xmm10, %xmm1, %xmm8
	vxorps	%xmm11, %xmm11, %xmm11
	vmovaps	2720(%rsp), %xmm6       # 16-byte Reload
	jmp	.LBB147_509
	.align	16, 0x90
.LBB147_507:                            #   in Loop: Header=BB147_503 Depth=5
	vmovaps	%xmm7, 2464(%rsp)       # 16-byte Spill
	vshufps	$136, %xmm8, %xmm11, %xmm1 # xmm1 = xmm11[0,2],xmm8[0,2]
	vsubps	%xmm9, %xmm1, %xmm1
	vmulps	%xmm1, %xmm14, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm15, %xmm1, %xmm1
	vaddps	%xmm1, %xmm4, %xmm1
	vshufps	$136, %xmm10, %xmm6, %xmm6 # xmm6 = xmm6[0,2],xmm10[0,2]
	vsubps	%xmm9, %xmm6, %xmm6
	vmulps	%xmm6, %xmm14, %xmm6
	vminps	%xmm12, %xmm6, %xmm6
	vmaxps	%xmm15, %xmm6, %xmm6
	vaddps	%xmm6, %xmm5, %xmm6
	vaddps	%xmm1, %xmm6, %xmm1
	vmovaps	2720(%rsp), %xmm6       # 16-byte Reload
	vmulps	%xmm6, %xmm1, %xmm8
	vxorps	%xmm11, %xmm11, %xmm11
	vmovaps	2368(%rsp), %xmm10      # 16-byte Reload
.LBB147_509:                            # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	je	.LBB147_511
# BB#510:                               #   in Loop: Header=BB147_503 Depth=5
	vmovaps	2624(%rsp), %xmm1       # 16-byte Reload
	vshufps	$221, 2592(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[1,3],mem[1,3]
	vsubps	%xmm9, %xmm1, %xmm1
	vmulps	%xmm1, %xmm14, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm11, %xmm1, %xmm1
	vaddps	2560(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
	vmulps	%xmm10, %xmm1, %xmm13
.LBB147_511:                            # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	jne	.LBB147_512
# BB#513:                               # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vaddps	%xmm4, %xmm5, %xmm0
	vmulps	%xmm10, %xmm0, %xmm3
	jmp	.LBB147_514
	.align	16, 0x90
.LBB147_512:                            #   in Loop: Header=BB147_503 Depth=5
	vshufps	$221, %xmm0, %xmm3, %xmm0 # xmm0 = xmm3[1,3],xmm0[1,3]
	vsubps	%xmm9, %xmm0, %xmm0
	vmulps	%xmm0, %xmm14, %xmm0
	vminps	%xmm12, %xmm0, %xmm0
	vmaxps	%xmm11, %xmm0, %xmm0
	vaddps	%xmm2, %xmm0, %xmm0
	vmovaps	2528(%rsp), %xmm1       # 16-byte Reload
	vshufps	$221, 2496(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[1,3],mem[1,3]
	vsubps	%xmm9, %xmm1, %xmm1
	vmulps	%xmm1, %xmm14, %xmm1
	vminps	%xmm12, %xmm1, %xmm1
	vmaxps	%xmm11, %xmm1, %xmm1
	vaddps	2464(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
	vaddps	%xmm0, %xmm1, %xmm0
	vmulps	%xmm6, %xmm0, %xmm3
.LBB147_514:                            # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vmovaps	2656(%rsp), %ymm4       # 32-byte Reload
	vmovaps	%xmm8, %xmm0
	andl	$1, %eax
	je	.LBB147_516
# BB#515:                               # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vmovaps	%xmm4, %xmm0
.LBB147_516:                            # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vmovaps	%xmm3, %xmm1
	je	.LBB147_518
# BB#517:                               # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vmovaps	%xmm13, %xmm1
.LBB147_518:                            # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	je	.LBB147_520
# BB#519:                               # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vmovaps	%xmm3, %xmm13
.LBB147_520:                            # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	testl	%eax, %eax
	je	.LBB147_522
# BB#521:                               # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vmovaps	%xmm8, %xmm4
.LBB147_522:                            # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	cmpl	$0, 104(%rbp)
	je	.LBB147_524
# BB#523:                               # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vmovaps	%xmm0, %xmm4
.LBB147_524:                            # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	je	.LBB147_526
# BB#525:                               # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vmovaps	%xmm1, %xmm13
.LBB147_526:                            # %for demosaiced$3.s0.v16265
                                        #   in Loop: Header=BB147_503 Depth=5
	vmovaps	.LCPI147_12(%rip), %ymm0 # ymm0 = <u,0,u,1,u,2,u,3>
	vpermps	%ymm13, %ymm0, %ymm0
	vmovaps	.LCPI147_13(%rip), %ymm1 # ymm1 = <0,u,1,u,2,u,3,u>
	vpermps	%ymm4, %ymm1, %ymm1
	vblendps	$170, %ymm0, %ymm1, %ymm0 # ymm0 = ymm1[0],ymm0[1],ymm1[2],ymm0[3],ymm1[4],ymm0[5],ymm1[6],ymm0[7]
	vmovups	%ymm0, (%r12)
	subq	$-128, %r12
	addl	$1, %edi
	movl	%r10d, %eax
	addl	%edi, %eax
	jne	.LBB147_503
# BB#527:                               # %end for demosaiced$3.s0.v16266
                                        #   in Loop: Header=BB147_502 Depth=4
	addq	$1, %r11
	addl	$1, %r9d
	movq	1816(%rsp), %rcx        # 8-byte Reload
	addq	$32, %rcx
	cmpq	$4, %r11
	movq	2360(%rsp), %rsi        # 8-byte Reload
	jne	.LBB147_502
# BB#528:                               #   in Loop: Header=BB147_451 Depth=3
	vmovaps	%xmm9, 768(%rsp)        # 16-byte Spill
	vmovaps	%xmm14, 784(%rsp)       # 16-byte Spill
	movq	1416(%rsp), %r13        # 8-byte Reload
	movq	%r13, %r8
	xorl	%r9d, %r9d
	movq	656(%rsp), %r10         # 8-byte Reload
	movq	664(%rsp), %r11         # 8-byte Reload
	movq	1392(%rsp), %r15        # 8-byte Reload
	.align	16, 0x90
.LBB147_529:                            # %for f2.s0.v16.v18.yii269
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_451 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB147_530 Depth 5
	leal	(%r15,%r9), %eax
	cltq
	subq	1504(%rsp), %rax        # 8-byte Folded Reload
	shlq	$7, %rax
	vmovaps	2784(%rsp,%rax), %ymm11
	vmovaps	%ymm11, 2368(%rsp)      # 32-byte Spill
	vmovaps	2816(%rsp,%rax), %ymm10
	vmovaps	%ymm10, 2464(%rsp)      # 32-byte Spill
	vmovaps	2848(%rsp,%rax), %ymm14
	vmovaps	%ymm14, 2496(%rsp)      # 32-byte Spill
	vmovaps	2880(%rsp,%rax), %ymm4
	vmovaps	%ymm4, 2560(%rsp)       # 32-byte Spill
	vmovaps	3040(%rsp,%rax), %ymm15
	vmovaps	%ymm15, 2528(%rsp)      # 32-byte Spill
	vmovaps	3072(%rsp,%rax), %ymm1
	vmovaps	3104(%rsp,%rax), %ymm3
	vmovaps	3136(%rsp,%rax), %ymm12
	vmovaps	3328(%rsp,%rax), %ymm0
	vmovaps	3360(%rsp,%rax), %ymm5
	vmovaps	3392(%rsp,%rax), %ymm6
	vmovaps	1696(%rsp), %ymm2       # 32-byte Reload
	vmulps	%ymm2, %ymm4, %ymm7
	vmulps	%ymm2, %ymm14, %ymm8
	vmulps	%ymm2, %ymm10, %ymm9
	vmovaps	%ymm10, %ymm4
	vmulps	%ymm2, %ymm11, %ymm10
	vmovaps	%ymm11, %ymm13
	vmovaps	1728(%rsp), %ymm2       # 32-byte Reload
	vmovaps	%ymm2, %ymm11
	vfmadd213ps	%ymm10, %ymm15, %ymm11
	vmovaps	%ymm2, %ymm10
	vfmadd213ps	%ymm9, %ymm1, %ymm10
	vmovaps	%ymm2, %ymm9
	vfmadd213ps	%ymm8, %ymm3, %ymm9
	vmovaps	%ymm2, %ymm8
	vfmadd213ps	%ymm7, %ymm12, %ymm8
	vmovaps	1760(%rsp), %ymm2       # 32-byte Reload
	vmovaps	%ymm2, %ymm7
	vfmadd213ps	%ymm8, %ymm6, %ymm7
	vmovaps	%ymm7, 2720(%rsp)       # 32-byte Spill
	vmovaps	%ymm2, %ymm7
	vfmadd213ps	%ymm9, %ymm5, %ymm7
	vmovaps	%ymm7, 2656(%rsp)       # 32-byte Spill
	vmovaps	%ymm2, %ymm7
	vfmadd213ps	%ymm10, %ymm0, %ymm7
	vmovaps	%ymm7, 2624(%rsp)       # 32-byte Spill
	vmovaps	3296(%rsp,%rax), %ymm15
	vfmadd213ps	%ymm11, %ymm15, %ymm2
	vmovaps	%ymm2, 2592(%rsp)       # 32-byte Spill
	vmovaps	1600(%rsp), %ymm10      # 32-byte Reload
	vmulps	%ymm10, %ymm13, %ymm7
	vmovaps	1632(%rsp), %ymm2       # 32-byte Reload
	vmovaps	%ymm2, %ymm13
	vmovaps	2528(%rsp), %ymm9       # 32-byte Reload
	vfmadd213ps	%ymm7, %ymm9, %ymm13
	vmulps	%ymm10, %ymm4, %ymm7
	vmovaps	%ymm2, %ymm8
	vfmadd213ps	%ymm7, %ymm1, %ymm8
	vmulps	%ymm10, %ymm14, %ymm7
	vmovaps	%ymm2, %ymm14
	vfmadd213ps	%ymm7, %ymm3, %ymm14
	vmulps	2560(%rsp), %ymm10, %ymm7 # 32-byte Folded Reload
	vmovaps	%ymm2, %ymm11
	vfmadd213ps	%ymm7, %ymm12, %ymm11
	vmovaps	1664(%rsp), %ymm2       # 32-byte Reload
	vmovaps	%ymm2, %ymm10
	vfmadd213ps	%ymm11, %ymm6, %ymm10
	vmovaps	%ymm2, %ymm11
	vfmadd213ps	%ymm14, %ymm5, %ymm11
	vmovaps	%ymm2, %ymm7
	vfmadd213ps	%ymm8, %ymm0, %ymm7
	vmovaps	%ymm2, %ymm8
	vfmadd213ps	%ymm13, %ymm15, %ymm8
	vmovaps	1472(%rsp), %ymm13      # 32-byte Reload
	vmulps	2368(%rsp), %ymm13, %ymm4 # 32-byte Folded Reload
	vmovaps	1536(%rsp), %ymm2       # 32-byte Reload
	vfmadd213ps	%ymm4, %ymm2, %ymm9
	vmovaps	%ymm9, %ymm14
	vmulps	2464(%rsp), %ymm13, %ymm4 # 32-byte Folded Reload
	vfmadd213ps	%ymm4, %ymm2, %ymm1
	vmulps	2496(%rsp), %ymm13, %ymm4 # 32-byte Folded Reload
	vfmadd213ps	%ymm4, %ymm2, %ymm3
	vmulps	2560(%rsp), %ymm13, %ymm4 # 32-byte Folded Reload
	vfmadd213ps	%ymm4, %ymm2, %ymm12
	vmovaps	1568(%rsp), %ymm2       # 32-byte Reload
	vfmadd213ps	%ymm12, %ymm2, %ymm6
	vfmadd213ps	%ymm3, %ymm2, %ymm5
	vfmadd213ps	%ymm1, %ymm2, %ymm0
	vmovaps	%ymm0, %ymm9
	vfmadd213ps	%ymm14, %ymm2, %ymm15
	xorl	%eax, %eax
	movl	$3, %edi
	movq	%r8, %rsi
	vmovdqa	992(%rsp), %ymm14       # 32-byte Reload
	.align	16, 0x90
.LBB147_530:                            # %for f2.s0.v17272
                                        #   Parent Loop BB147_131 Depth=1
                                        #     Parent Loop BB147_271 Depth=2
                                        #       Parent Loop BB147_451 Depth=3
                                        #         Parent Loop BB147_529 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vmovaps	%ymm8, %ymm0
	cmpl	$1, %eax
	je	.LBB147_532
# BB#531:                               # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	2592(%rsp), %ymm0       # 32-byte Reload
.LBB147_532:                            # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	%ymm7, %ymm1
	je	.LBB147_534
# BB#533:                               # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	2624(%rsp), %ymm1       # 32-byte Reload
.LBB147_534:                            # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	%ymm11, %ymm4
	je	.LBB147_536
# BB#535:                               # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	2656(%rsp), %ymm4       # 32-byte Reload
.LBB147_536:                            # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	%ymm10, %ymm12
	je	.LBB147_538
# BB#537:                               # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	2720(%rsp), %ymm12      # 32-byte Reload
.LBB147_538:                            # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	%ymm6, %ymm3
	testl	%eax, %eax
	je	.LBB147_540
# BB#539:                               # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	%ymm12, %ymm3
.LBB147_540:                            # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	%ymm5, %ymm12
	je	.LBB147_542
# BB#541:                               # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	%ymm4, %ymm12
.LBB147_542:                            # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	%ymm9, %ymm4
	je	.LBB147_544
# BB#543:                               # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	%ymm1, %ymm4
.LBB147_544:                            # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	%ymm15, %ymm1
	je	.LBB147_546
# BB#545:                               # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vmovaps	%ymm0, %ymm1
.LBB147_546:                            # %for f2.s0.v17272
                                        #   in Loop: Header=BB147_530 Depth=5
	vbroadcastss	.LCPI147_17(%rip), %ymm0
	vminps	%ymm0, %ymm1, %ymm1
	vminps	%ymm0, %ymm4, %ymm4
	vminps	%ymm0, %ymm12, %ymm12
	vminps	%ymm0, %ymm3, %ymm0
	vxorps	%ymm2, %ymm2, %ymm2
	vmaxps	%ymm2, %ymm1, %ymm1
	vmaxps	%ymm2, %ymm4, %ymm3
	vmaxps	%ymm2, %ymm12, %ymm4
	vmaxps	%ymm2, %ymm0, %ymm0
	vcvttps2dq	%ymm1, %ymm1
	vmovdqa	.LCPI147_5(%rip), %ymm2 # ymm2 = [0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128,0,1,4,5,8,9,12,13,128,128,128,128,128,128,128,128]
	vpshufb	%ymm2, %ymm1, %ymm1
	vpermq	$232, %ymm1, %ymm1      # ymm1 = ymm1[0,2,2,3]
	vcvttps2dq	%ymm3, %ymm3
	vpshufb	%ymm2, %ymm3, %ymm3
	vpermq	$232, %ymm3, %ymm3      # ymm3 = ymm3[0,2,2,3]
	vcvttps2dq	%ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpermq	$232, %ymm4, %ymm4      # ymm4 = ymm4[0,2,2,3]
	vcvttps2dq	%ymm0, %ymm0
	vpshufb	%ymm2, %ymm0, %ymm0
	vpermq	$232, %ymm0, %ymm0      # ymm0 = ymm0[0,2,2,3]
	vpmovzxwd	%xmm0, %ymm0    # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpmovzxwd	%xmm4, %ymm4    # ymm4 = xmm4[0],zero,xmm4[1],zero,xmm4[2],zero,xmm4[3],zero,xmm4[4],zero,xmm4[5],zero,xmm4[6],zero,xmm4[7],zero
	vpmovzxwd	%xmm3, %ymm3    # ymm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
	vpmovzxwd	%xmm1, %ymm1    # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero
	vpmulld	%ymm14, %ymm1, %ymm1
	vpmulld	%ymm14, %ymm3, %ymm12
	vpmulld	%ymm14, %ymm4, %ymm4
	vpmulld	%ymm14, %ymm0, %ymm0
	vmovd	%eax, %xmm3
	vpsubd	2400(%rsp), %ymm3, %ymm3 # 32-byte Folded Reload
	vpbroadcastd	%xmm3, %ymm13
	vpaddd	%ymm0, %ymm13, %ymm3
	vpaddd	%ymm4, %ymm13, %ymm4
	vpaddd	%ymm12, %ymm13, %ymm0
	vpaddd	%ymm1, %ymm13, %ymm1
	vmovq	%xmm4, %rcx
	movslq	%ecx, %rbx
	movzbl	(%rdx,%rbx), %ebx
	vmovd	%ebx, %xmm2
	vpextrq	$1, %xmm4, %rbx
	sarq	$32, %rcx
	vpinsrb	$1, (%rdx,%rcx), %xmm2, %xmm2
	movslq	%ebx, %rcx
	sarq	$32, %rbx
	vextracti128	$1, %ymm4, %xmm4
	vpinsrb	$2, (%rdx,%rcx), %xmm2, %xmm2
	vmovq	%xmm4, %rcx
	vpinsrb	$3, (%rdx,%rbx), %xmm2, %xmm2
	movslq	%ecx, %rbx
	vpinsrb	$4, (%rdx,%rbx), %xmm2, %xmm2
	vpextrq	$1, %xmm4, %rbx
	sarq	$32, %rcx
	vpinsrb	$5, (%rdx,%rcx), %xmm2, %xmm2
	movslq	%ebx, %rcx
	sarq	$32, %rbx
	vpinsrb	$6, (%rdx,%rcx), %xmm2, %xmm2
	vmovq	%xmm3, %rcx
	vpinsrb	$7, (%rdx,%rbx), %xmm2, %xmm2
	movslq	%ecx, %rbx
	vpinsrb	$8, (%rdx,%rbx), %xmm2, %xmm2
	vpextrq	$1, %xmm3, %rbx
	sarq	$32, %rcx
	vpinsrb	$9, (%rdx,%rcx), %xmm2, %xmm2
	movslq	%ebx, %rcx
	sarq	$32, %rbx
	vextracti128	$1, %ymm3, %xmm3
	vpinsrb	$10, (%rdx,%rcx), %xmm2, %xmm2
	vmovq	%xmm3, %rcx
	vpinsrb	$11, (%rdx,%rbx), %xmm2, %xmm2
	movslq	%ecx, %rbx
	vpinsrb	$12, (%rdx,%rbx), %xmm2, %xmm2
	vpextrq	$1, %xmm3, %rbx
	sarq	$32, %rcx
	vpinsrb	$13, (%rdx,%rcx), %xmm2, %xmm2
	movslq	%ebx, %rcx
	vpinsrb	$14, (%rdx,%rcx), %xmm2, %xmm2
	vmovq	%xmm1, %rcx
	sarq	$32, %rbx
	vpinsrb	$15, (%rdx,%rbx), %xmm2, %xmm2
	movslq	%ecx, %rbx
	movzbl	(%rdx,%rbx), %ebx
	vmovd	%ebx, %xmm3
	vpextrq	$1, %xmm1, %rbx
	sarq	$32, %rcx
	vpinsrb	$1, (%rdx,%rcx), %xmm3, %xmm3
	movslq	%ebx, %rcx
	sarq	$32, %rbx
	vextracti128	$1, %ymm1, %xmm1
	vpinsrb	$2, (%rdx,%rcx), %xmm3, %xmm3
	vmovq	%xmm1, %rcx
	vpinsrb	$3, (%rdx,%rbx), %xmm3, %xmm3
	movslq	%ecx, %rbx
	vpinsrb	$4, (%rdx,%rbx), %xmm3, %xmm3
	vpextrq	$1, %xmm1, %rbx
	sarq	$32, %rcx
	vpinsrb	$5, (%rdx,%rcx), %xmm3, %xmm1
	movslq	%ebx, %rcx
	sarq	$32, %rbx
	vpinsrb	$6, (%rdx,%rcx), %xmm1, %xmm1
	vmovq	%xmm0, %rcx
	vpinsrb	$7, (%rdx,%rbx), %xmm1, %xmm1
	movslq	%ecx, %rbx
	vpinsrb	$8, (%rdx,%rbx), %xmm1, %xmm1
	vpextrq	$1, %xmm0, %rbx
	sarq	$32, %rcx
	vpinsrb	$9, (%rdx,%rcx), %xmm1, %xmm1
	movslq	%ebx, %rcx
	sarq	$32, %rbx
	vextracti128	$1, %ymm0, %xmm0
	vpinsrb	$10, (%rdx,%rcx), %xmm1, %xmm1
	vmovq	%xmm0, %rcx
	vpinsrb	$11, (%rdx,%rbx), %xmm1, %xmm1
	movslq	%ecx, %rbx
	vpinsrb	$12, (%rdx,%rbx), %xmm1, %xmm1
	vpextrq	$1, %xmm0, %rbx
	sarq	$32, %rcx
	vpinsrb	$13, (%rdx,%rcx), %xmm1, %xmm0
	movslq	%ebx, %rcx
	vpinsrb	$14, (%rdx,%rcx), %xmm0, %xmm0
	sarq	$32, %rbx
	vpinsrb	$15, (%rdx,%rbx), %xmm0, %xmm0
	vinserti128	$1, %xmm2, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rsi)
	addq	%r11, %rsi
	addl	$1, %eax
	addq	$-1, %rdi
	jne	.LBB147_530
# BB#547:                               # %end for f2.s0.v17273
                                        #   in Loop: Header=BB147_529 Depth=4
	addq	$1, %r9
	addq	%r10, %r8
	cmpq	$2, %r9
	jne	.LBB147_529
# BB#548:                               # %end for f2.s0.v16.v18.yii270
                                        #   in Loop: Header=BB147_451 Depth=3
	movq	1400(%rsp), %rbx        # 8-byte Reload
	addq	$1, %rbx
	movq	1424(%rsp), %r8         # 8-byte Reload
	addq	$-32, %r8
	movl	1408(%rsp), %eax        # 4-byte Reload
	addl	$32, %eax
	movq	1432(%rsp), %rsi        # 8-byte Reload
	addq	$-32, %rsi
	movq	1440(%rsp), %rdx        # 8-byte Reload
	addq	$-32, %rdx
	addq	$32, %r13
	cmpl	720(%rsp), %ebx         # 4-byte Folded Reload
	jne	.LBB147_451
.LBB147_549:                            # %end for f2.s0.v15.v15244
                                        #   in Loop: Header=BB147_271 Depth=2
	movq	568(%rsp), %rdi         # 8-byte Reload
	addq	$1, %rdi
	movq	2712(%rsp), %rax        # 8-byte Reload
	addl	$2, %eax
	movq	%rax, 2712(%rsp)        # 8-byte Spill
	movl	556(%rsp), %esi         # 4-byte Reload
	addb	$2, %sil
	addq	$-2, 544(%rsp)          # 8-byte Folded Spill
	addl	$2, 924(%rsp)           # 4-byte Folded Spill
	movq	2456(%rsp), %rax        # 8-byte Reload
	addl	$2, %eax
	movq	%rax, 2456(%rsp)        # 8-byte Spill
	movq	2448(%rsp), %rax        # 8-byte Reload
	addl	$2, %eax
	movq	%rax, 2448(%rsp)        # 8-byte Spill
	movq	560(%rsp), %rax         # 8-byte Reload
	addq	440(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 560(%rsp)         # 8-byte Spill
	cmpq	$16, %rdi
	jne	.LBB147_271
# BB#275:                               # %call_destructor.exit315
                                        #   in Loop: Header=BB147_131 Depth=1
	xorl	%edi, %edi
	movq	%r14, %rsi
	vzeroupper
	callq	halide_free@PLT
	movq	392(%rsp), %rax         # 8-byte Reload
	addl	$1, %eax
	movl	388(%rsp), %esi         # 4-byte Reload
	addl	$-32, %esi
	cmpl	352(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB147_131
	jmp	.LBB147_276
.LBB147_132:                            # %assert failed201
	leaq	.Lstr.161(%rip), %rsi
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movq	240(%rsp), %rdx         # 8-byte Reload
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	movl	%eax, %r14d
	jmp	.LBB147_3
.LBB147_134:                            # %assert failed203
	xorl	%edi, %edi
	callq	halide_error_out_of_memory@PLT
	movl	%eax, %r14d
.LBB147_3:                              # %call_destructor.exit
	cmpq	$0, 400(%rsp)           # 8-byte Folded Reload
	je	.LBB147_6
# BB#4:                                 # %call_destructor.exit
	testl	%r14d, %r14d
	jne	.LBB147_5
	jmp	.LBB147_6
.LBB147_1:                              # %assert failed
	leaq	.Lstr(%rip), %rsi
	jmp	.LBB147_2
.LBB147_9:                              # %assert failed10
	leaq	.Lstr.138(%rip), %rsi
	jmp	.LBB147_2
.LBB147_11:                             # %assert failed29
	leaq	.Lstr.139(%rip), %rsi
	jmp	.LBB147_2
.LBB147_13:                             # %assert failed48
	leaq	.Lstr.140(%rip), %rsi
	jmp	.LBB147_2
.LBB147_15:                             # %assert failed67
	leaq	.Lstr.141(%rip), %rsi
	jmp	.LBB147_2
.LBB147_17:                             # %assert failed86
	leaq	.Lstr.142(%rip), %rsi
.LBB147_2:                              # %assert failed
	xorl	%edi, %edi
	callq	halide_error_buffer_argument_is_null@PLT
	jmp	.LBB147_7
.LBB147_28:                             # %assert failed117
	leaq	.Lstr.143(%rip), %rsi
	leaq	.Lstr.144(%rip), %rdx
	xorl	%edi, %edi
	movl	$4, %r8d
	jmp	.LBB147_32
.LBB147_30:                             # %assert failed119
	leaq	.Lstr.145(%rip), %rsi
	jmp	.LBB147_31
.LBB147_35:                             # %assert failed121
	leaq	.Lstr.147(%rip), %rsi
	leaq	.Lstr.148(%rip), %rdx
	xorl	%edi, %edi
	movl	$2, %r8d
	movl	%r11d, %ecx
	vzeroupper
	callq	halide_error_bad_elem_size@PLT
	jmp	.LBB147_7
.LBB147_37:                             # %assert failed123
	leaq	.Lstr.149(%rip), %rsi
.LBB147_31:                             # %assert failed119
	leaq	.Lstr.146(%rip), %rdx
	xorl	%edi, %edi
	movl	$1, %r8d
.LBB147_32:                             # %assert failed119
	movl	%eax, %ecx
	vzeroupper
	callq	halide_error_bad_elem_size@PLT
	jmp	.LBB147_7
.LBB147_40:                             # %assert failed125
	leal	-1(%rdi,%r12), %eax
	movl	%eax, (%rsp)
	leaq	.Lstr.143(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movl	%r12d, %r9d
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB147_7
.LBB147_42:                             # %assert failed127
	leaq	.Lstr.143(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	2496(%rsp), %rcx        # 8-byte Reload
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB147_7
.LBB147_45:                             # %assert failed129
	leal	-1(%r10,%r14), %eax
	movl	%eax, (%rsp)
	leaq	.Lstr.143(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movl	%r14d, %r9d
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB147_7
.LBB147_47:                             # %assert failed131
	leaq	.Lstr.143(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movl	%r10d, %ecx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB147_7
.LBB147_49:                             # %assert failed133
	leaq	.Lstr.145(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	272(%rsp), %rcx         # 8-byte Reload
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB147_7
.LBB147_51:                             # %assert failed135
	leaq	.Lstr.145(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movq	264(%rsp), %rcx         # 8-byte Reload
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB147_7
.LBB147_54:                             # %assert failed137
	leal	-1(%r11,%rdx), %eax
	movl	%eax, (%rsp)
	leaq	.Lstr.145(%rip), %rsi
	xorl	%edi, %edi
	movq	%rdx, %r9
	movl	$2, %edx
	jmp	.LBB147_70
.LBB147_56:                             # %assert failed139
	leaq	.Lstr.145(%rip), %rsi
	xorl	%edi, %edi
	movl	$2, %edx
	movl	%r11d, %ecx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB147_7
.LBB147_59:                             # %assert failed141
	movl	2656(%rsp), %r8d        # 4-byte Reload
	addl	$-1, %r8d
	movl	2032(%rsp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	leaq	.Lstr.147(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	movl	2776(%rsp), %ecx        # 4-byte Reload
	movl	%ebx, %r9d
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB147_7
.LBB147_61:                             # %assert failed143
	leaq	.Lstr.147(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	2624(%rsp), %rcx        # 8-byte Reload
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB147_7
.LBB147_64:                             # %assert failed145
	addl	$-1, %r8d
	movl	744(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	leaq	.Lstr.147(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB147_7
.LBB147_66:                             # %assert failed147
	leaq	.Lstr.147(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movl	%r15d, %ecx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB147_7
.LBB147_69:                             # %assert failed149
	leal	-1(%rcx,%r9), %eax
	movl	%eax, (%rsp)
	leaq	.Lstr.149(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
.LBB147_70:                             # %assert failed149
	xorl	%ecx, %ecx
	movl	$2, %r8d
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB147_7
.LBB147_73:                             # %assert failed151
	leaq	.Lstr.149(%rip), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB147_7
.LBB147_77:                             # %assert failed153
	leal	-1(%r14,%r9), %eax
	movl	%eax, (%rsp)
	leaq	.Lstr.149(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	$4095, %r8d             # imm = 0xFFF
	vzeroupper
	callq	halide_error_access_out_of_bounds@PLT
	jmp	.LBB147_7
.LBB147_79:                             # %assert failed155
	leaq	.Lstr.149(%rip), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	movl	%r14d, %ecx
	vzeroupper
	callq	halide_error_buffer_extents_negative@PLT
	jmp	.LBB147_7
.LBB147_81:                             # %assert failed157
	leaq	.Lstr.150(%rip), %rsi
	jmp	.LBB147_82
.LBB147_86:                             # %assert failed159
	leaq	.Lstr.152(%rip), %rsi
	leaq	.Lstr.153(%rip), %rcx
	xorl	%edi, %edi
	movl	$3, %r8d
	jmp	.LBB147_83
.LBB147_88:                             # %assert failed161
	leaq	.Lstr.154(%rip), %rsi
.LBB147_82:                             # %assert failed157
	leaq	.Lstr.151(%rip), %rcx
	xorl	%edi, %edi
	movl	$1, %r8d
.LBB147_83:                             # %assert failed157
	movl	%ebx, %edx
	vzeroupper
	callq	halide_error_constraint_violated@PLT
	jmp	.LBB147_7
.LBB147_90:                             # %assert failed163
	leaq	.Lstr.155(%rip), %rsi
	leaq	.Lstr.156(%rip), %rcx
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	movl	%eax, %edx
	vzeroupper
	callq	halide_error_constraint_violated@PLT
	jmp	.LBB147_7
.LBB147_92:                             # %assert failed165
	leaq	.Lstr.157(%rip), %rsi
	leaq	.Lstr.153(%rip), %rcx
	xorl	%edi, %edi
	movl	$3, %r8d
	movl	%r11d, %edx
	vzeroupper
	callq	halide_error_constraint_violated@PLT
	jmp	.LBB147_7
.LBB147_94:                             # %assert failed167
	leaq	.Lstr.158(%rip), %rsi
	jmp	.LBB147_95
.LBB147_97:                             # %assert failed169
	leaq	.Lstr.159(%rip), %rsi
.LBB147_95:                             # %assert failed167
	leaq	.Lstr.151(%rip), %rcx
	xorl	%edi, %edi
	movl	$1, %r8d
	vzeroupper
	callq	halide_error_constraint_violated@PLT
	jmp	.LBB147_7
.LBB147_99:                             # %assert failed173
	leaq	.Lstr.140(%rip), %rsi
	jmp	.LBB147_100
.LBB147_103:                            # %assert failed175
	leaq	.Lstr.140(%rip), %rsi
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movq	%r10, %rdx
	vzeroupper
	callq	halide_error_buffer_extents_too_large@PLT
	jmp	.LBB147_7
.LBB147_105:                            # %assert failed177
	leaq	.Lstr.142(%rip), %rsi
	jmp	.LBB147_100
.LBB147_107:                            # %assert failed179
	leaq	.Lstr.142(%rip), %rsi
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movq	%rax, %rdx
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB147_7
.LBB147_113:                            # %assert failed183
	leaq	(%rdx,%rdx,2), %rdx
.LBB147_109:                            # %assert failed181
	leaq	.Lstr.142(%rip), %rsi
	jmp	.LBB147_110
.LBB147_115:                            # %assert failed187
	leaq	.Lstr(%rip), %rsi
	jmp	.LBB147_100
.LBB147_117:                            # %assert failed189
	leaq	.Lstr(%rip), %rsi
.LBB147_110:                            # %assert failed181
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	vzeroupper
	callq	halide_error_buffer_extents_too_large@PLT
	jmp	.LBB147_7
.LBB147_119:                            # %assert failed193
	leaq	.Lstr.141(%rip), %rsi
.LBB147_100:                            # %assert failed173
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB147_7
.LBB147_121:                            # %assert failed195
	leaq	.Lstr.141(%rip), %rsi
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movq	%r14, %rdx
	vzeroupper
	callq	halide_error_buffer_extents_too_large@PLT
	jmp	.LBB147_7
.LBB147_124:                            # %assert failed197
	leaq	.Lstr.160(%rip), %rsi
	xorl	%edi, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movq	%rbx, %rdx
	vzeroupper
	callq	halide_error_buffer_allocation_too_large@PLT
	jmp	.LBB147_7
.LBB147_129:                            # %assert succeeded200.for f3.s0.v17.preheader_crit_edge
	movq	1824(%rsp), %rax        # 8-byte Reload
	cltq
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movslq	2000(%rsp), %rax        # 4-byte Folded Reload
	movq	%rax, 416(%rsp)         # 8-byte Spill
	movslq	2008(%rsp), %rax        # 4-byte Folded Reload
	movq	%rax, 360(%rsp)         # 8-byte Spill
.LBB147_276:                            # %for f3.s0.v17.preheader
	movq	264(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	376(%rsp), %r10         # 8-byte Reload
	movq	272(%rsp), %rcx         # 8-byte Reload
	movq	368(%rsp), %r8          # 8-byte Reload
	jle	.LBB147_550
# BB#277:                               # %for f3.s0.v16.preheader.us
	movzbl	96(%rbp), %eax
	andl	$1, %eax
	testl	%ecx, %ecx
	jle	.LBB147_550
# BB#278:                               # %for f3.s0.v15.preheader.us.us.preheader
	movslq	%r10d, %rsi
	addq	%rax, %rax
	movl	%ecx, %r15d
	imulq	248(%rsp), %rax         # 8-byte Folded Reload
	andl	$3, %r15d
	movl	%r15d, 2776(%rsp)       # 4-byte Spill
	movq	416(%rsp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	subq	%r8, %rdx
	movq	%rdx, 416(%rsp)         # 8-byte Spill
	subq	360(%rsp), %rsi         # 8-byte Folded Reload
	imulq	%rdx, %rsi
	movq	%rsi, 2592(%rsp)        # 8-byte Spill
	addq	%rsi, %rax
	movq	400(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rax), %r9
	negl	%r15d
	movl	%r15d, 2720(%rsp)       # 4-byte Spill
	imulq	$-3, %r8, %rbx
	movq	%rbx, 2560(%rsp)        # 8-byte Spill
	movq	256(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rbx), %r12
	subq	%r8, %rax
	leaq	(%rax,%rsi), %r14
	movq	2360(%rsp), %rax        # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movl	%eax, 2656(%rsp)        # 4-byte Spill
	xorl	%r15d, %r15d
	movq	%rdx, %r11
	.align	16, 0x90
.LBB147_280:                            # %for f3.s0.v15.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB147_281 Depth 2
                                        #     Child Loop BB147_284 Depth 2
	movl	2720(%rsp), %esi        # 4-byte Reload
	movq	%r9, %rdx
	movq	%r11, %rbx
	movq	%r8, %rcx
	movq	2360(%rsp), %rax        # 8-byte Reload
	movl	%eax, %edi
	cmpl	$0, 2776(%rsp)          # 4-byte Folded Reload
	je	.LBB147_282
	.align	16, 0x90
.LBB147_281:                            # %for f3.s0.v15.us.us.prol
                                        #   Parent Loop BB147_280 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rdx), %al
	movb	%al, (%rbx)
	addl	$1, %edi
	addq	$1, %rcx
	addq	$3, %rbx
	addq	$1, %rdx
	addl	$1, %esi
	jne	.LBB147_281
.LBB147_282:                            # %for f3.s0.v15.preheader.us.us.split
                                        #   in Loop: Header=BB147_280 Depth=1
	cmpl	$3, 412(%rsp)           # 4-byte Folded Reload
	jb	.LBB147_279
# BB#283:                               # %for f3.s0.v15.preheader.us.us.split.split
                                        #   in Loop: Header=BB147_280 Depth=1
	leaq	(%rcx,%rcx,2), %rsi
	addq	%r15, %rcx
	movl	2656(%rsp), %edx        # 4-byte Reload
	subl	%edi, %edx
	movq	%r12, %rax
	.align	16, 0x90
.LBB147_284:                            # %for f3.s0.v15.us.us
                                        #   Parent Loop BB147_280 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r14,%rcx), %bl
	movb	%bl, (%rsi,%rax)
	movb	1(%r14,%rcx), %bl
	movb	%bl, 3(%rsi,%rax)
	movb	2(%r14,%rcx), %bl
	movb	%bl, 6(%rsi,%rax)
	movb	3(%r14,%rcx), %bl
	movb	%bl, 9(%rsi,%rax)
	addq	$12, %rax
	addq	$4, %rcx
	addl	$-4, %edx
	jne	.LBB147_284
.LBB147_279:                            # %end for f3.s0.v15.us.us
                                        #   in Loop: Header=BB147_280 Depth=1
	addl	$1, %r10d
	movq	424(%rsp), %rax         # 8-byte Reload
	addq	%rax, %r11
	movq	416(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, %r9
	addq	%rax, %r12
	addq	%rcx, %r15
	movq	432(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r10d
	jne	.LBB147_280
# BB#552:                               # %for f3.s0.v16.preheader.us.1
	movq	272(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB147_551
# BB#553:                               # %for f3.s0.v15.preheader.us.us.1.preheader
	movq	256(%rsp), %rax         # 8-byte Reload
	leaq	1(%rax), %r13
	movq	248(%rsp), %rsi         # 8-byte Reload
	movq	2592(%rsp), %rbx        # 8-byte Reload
	leaq	(%rsi,%rbx), %r9
	movq	400(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r9), %r11
	movl	2776(%rsp), %edx        # 4-byte Reload
	negl	%edx
	movl	%edx, 2624(%rsp)        # 4-byte Spill
	movq	2560(%rsp), %rdx        # 8-byte Reload
	leaq	(%rax,%rdx), %r15
	leaq	3(%rsi,%rbx), %rax
	subq	%r8, %rax
	leaq	(%rax,%rcx), %r10
	leaq	2(%rsi,%rbx), %rax
	subq	%r8, %rax
	leaq	(%rax,%rcx), %rax
	subq	%r8, %r9
	leaq	(%r9,%rcx), %rsi
	xorl	%r14d, %r14d
	movq	376(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %r12d
	.align	16, 0x90
.LBB147_554:                            # %for f3.s0.v15.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB147_555 Depth 2
                                        #     Child Loop BB147_558 Depth 2
	movq	%r15, 2712(%rsp)        # 8-byte Spill
	movq	%r13, 2720(%rsp)        # 8-byte Spill
	movl	2624(%rsp), %r15d       # 4-byte Reload
	movq	%r11, %rbx
	movq	2360(%rsp), %rcx        # 8-byte Reload
	movl	%ecx, %r9d
	cmpl	$0, 2776(%rsp)          # 4-byte Folded Reload
	je	.LBB147_556
	.align	16, 0x90
.LBB147_555:                            # %for f3.s0.v15.us.us.1.prol
                                        #   Parent Loop BB147_554 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rbx), %dl
	movb	%dl, (%r13)
	addl	$1, %r9d
	addq	$1, %r8
	addq	$3, %r13
	addq	$1, %rbx
	addl	$1, %r15d
	jne	.LBB147_555
.LBB147_556:                            # %for f3.s0.v15.preheader.us.us.1.split
                                        #   in Loop: Header=BB147_554 Depth=1
	cmpl	$3, 412(%rsp)           # 4-byte Folded Reload
	movq	2712(%rsp), %r15        # 8-byte Reload
	jb	.LBB147_559
# BB#557:                               # %for f3.s0.v15.preheader.us.us.1.split.split
                                        #   in Loop: Header=BB147_554 Depth=1
	leaq	(%r8,%r8,2), %rbx
	addq	%r14, %r8
	movl	2656(%rsp), %edx        # 4-byte Reload
	subl	%r9d, %edx
	movq	%r15, %rdi
	.align	16, 0x90
.LBB147_558:                            # %for f3.s0.v15.us.us.1
                                        #   Parent Loop BB147_554 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rsi,%r8), %cl
	movb	%cl, 1(%rbx,%rdi)
	movb	1(%rsi,%r8), %cl
	movb	%cl, 4(%rbx,%rdi)
	movb	(%rax,%r8), %cl
	movb	%cl, 7(%rbx,%rdi)
	movb	(%r10,%r8), %cl
	movb	%cl, 10(%rbx,%rdi)
	addq	$12, %rdi
	addq	$4, %r8
	addl	$-4, %edx
	jne	.LBB147_558
.LBB147_559:                            # %end for f3.s0.v15.us.us.1
                                        #   in Loop: Header=BB147_554 Depth=1
	addl	$1, %r12d
	movq	424(%rsp), %rcx         # 8-byte Reload
	movq	2720(%rsp), %r13        # 8-byte Reload
	addq	%rcx, %r13
	movq	416(%rsp), %rdx         # 8-byte Reload
	addq	%rdx, %r11
	addq	%rcx, %r15
	addq	%rdx, %r14
	movq	432(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %r12d
	movq	368(%rsp), %r8          # 8-byte Reload
	jne	.LBB147_554
# BB#560:                               # %for f3.s0.v16.preheader.us.2
	testb	$1, 96(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	272(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	movq	376(%rsp), %r13         # 8-byte Reload
	jle	.LBB147_551
# BB#561:                               # %for f3.s0.v15.preheader.us.us.2.preheader
	addq	%rax, %rax
	imulq	248(%rsp), %rax         # 8-byte Folded Reload
	movq	2592(%rsp), %rsi        # 8-byte Reload
	leaq	(%rax,%rsi), %r14
	movq	400(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%r14), %r15
	movl	2776(%rsp), %ecx        # 4-byte Reload
	negl	%ecx
	movl	%ecx, 2720(%rsp)        # 4-byte Spill
	movq	256(%rsp), %rcx         # 8-byte Reload
	leaq	2(%rcx), %r11
	movq	2560(%rsp), %rbx        # 8-byte Reload
	leaq	(%rbx,%rcx), %r9
	leaq	3(%rax,%rsi), %rax
	subq	%r8, %rax
	leaq	(%rax,%rdx), %r12
	subq	%r8, %r14
	addq	%rdx, %r14
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB147_562:                            # %for f3.s0.v15.preheader.us.us.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB147_563 Depth 2
                                        #     Child Loop BB147_566 Depth 2
	movl	2720(%rsp), %esi        # 4-byte Reload
	movq	%r15, %rdx
	movq	%r11, %rax
	movq	%r8, %rcx
	movq	2360(%rsp), %rdi        # 8-byte Reload
	cmpl	$0, 2776(%rsp)          # 4-byte Folded Reload
	je	.LBB147_564
	.align	16, 0x90
.LBB147_563:                            # %for f3.s0.v15.us.us.2.prol
                                        #   Parent Loop BB147_562 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rdx), %bl
	movb	%bl, (%rax)
	addl	$1, %edi
	addq	$1, %rcx
	addq	$3, %rax
	addq	$1, %rdx
	addl	$1, %esi
	jne	.LBB147_563
.LBB147_564:                            # %for f3.s0.v15.preheader.us.us.2.split
                                        #   in Loop: Header=BB147_562 Depth=1
	cmpl	$3, 412(%rsp)           # 4-byte Folded Reload
	jb	.LBB147_567
# BB#565:                               # %for f3.s0.v15.preheader.us.us.2.split.split
                                        #   in Loop: Header=BB147_562 Depth=1
	leaq	(%rcx,%rcx,2), %rsi
	addq	%r10, %rcx
	movl	2656(%rsp), %eax        # 4-byte Reload
	subl	%edi, %eax
	movq	%r9, %rdx
	.align	16, 0x90
.LBB147_566:                            # %for f3.s0.v15.us.us.2
                                        #   Parent Loop BB147_562 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r14,%rcx), %bl
	movb	%bl, 2(%rsi,%rdx)
	movb	1(%r14,%rcx), %bl
	movb	%bl, 5(%rsi,%rdx)
	movb	2(%r14,%rcx), %bl
	movb	%bl, 8(%rsi,%rdx)
	movb	(%r12,%rcx), %bl
	movb	%bl, 11(%rsi,%rdx)
	addq	$12, %rdx
	addq	$4, %rcx
	addl	$-4, %eax
	jne	.LBB147_566
.LBB147_567:                            # %end for f3.s0.v15.us.us.2
                                        #   in Loop: Header=BB147_562 Depth=1
	addl	$1, %r13d
	movq	424(%rsp), %rax         # 8-byte Reload
	addq	%rax, %r11
	movq	416(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, %r15
	addq	%rax, %r9
	addq	%rcx, %r10
	movq	432(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r13d
	jne	.LBB147_562
	jmp	.LBB147_551
.LBB147_550:                            # %end for f3.s0.v17
	xorl	%r14d, %r14d
	cmpq	$0, 400(%rsp)           # 8-byte Folded Reload
	je	.LBB147_6
.LBB147_551:                            # %if.then.i.285
	xorl	%r14d, %r14d
.LBB147_5:                              # %if.then.i.282
	xorl	%edi, %edi
	movq	400(%rsp), %rsi         # 8-byte Reload
	callq	halide_free@PLT
.LBB147_6:                              # %call_destructor.exit283
	movl	%r14d, %eax
.LBB147_7:                              # %call_destructor.exit283
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.LBB147_127:                            # %assert failed199
	xorl	%edi, %edi
	callq	halide_error_out_of_memory@PLT
	jmp	.LBB147_7
.Lfunc_end147:
	.size	__f3, .Lfunc_end147-__f3

	.section	.text.f3,"ax",@progbits
	.globl	f3
	.align	16, 0x90
	.type	f3,@function
f3:                                     # @f3
# BB#0:                                 # %entry
	subq	$104, %rsp
	testq	%rdi, %rdi
	je	.LBB148_1
# BB#3:                                 # %assert succeeded
	testq	%rcx, %rcx
	je	.LBB148_4
# BB#5:                                 # %assert succeeded11
	testq	%r8, %r8
	je	.LBB148_6
# BB#7:                                 # %assert succeeded30
	testq	%r9, %r9
	je	.LBB148_8
# BB#9:                                 # %assert succeeded49
	movq	184(%rsp), %rax
	testq	%rax, %rax
	je	.LBB148_10
# BB#11:                                # %assert succeeded68
	movq	208(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB148_12
# BB#13:                                # %assert succeeded87
	movl	200(%rsp), %esi
	movb	192(%rsp), %r10b
	vmovss	136(%rsp), %xmm8        # xmm8 = mem[0],zero,zero,zero
	vmovss	128(%rsp), %xmm9        # xmm9 = mem[0],zero,zero,zero
	vmovss	120(%rsp), %xmm10       # xmm10 = mem[0],zero,zero,zero
	vmovss	112(%rsp), %xmm11       # xmm11 = mem[0],zero,zero,zero
	movq	%rdx, 96(%rsp)
	movl	%esi, 88(%rsp)
	movzbl	%r10b, %edx
	movl	%edx, 80(%rsp)
	movq	%rax, 72(%rsp)
	vmovss	%xmm8, 24(%rsp)
	vmovss	%xmm9, 16(%rsp)
	vmovss	%xmm10, 8(%rsp)
	vmovss	%xmm11, (%rsp)
	callq	__f3@PLT
	addq	$104, %rsp
	retq
.LBB148_1:                              # %assert failed
	leaq	.Lstr(%rip), %rsi
	jmp	.LBB148_2
.LBB148_4:                              # %assert failed10
	leaq	.Lstr.138(%rip), %rsi
	jmp	.LBB148_2
.LBB148_6:                              # %assert failed29
	leaq	.Lstr.139(%rip), %rsi
	jmp	.LBB148_2
.LBB148_8:                              # %assert failed48
	leaq	.Lstr.140(%rip), %rsi
	jmp	.LBB148_2
.LBB148_10:                             # %assert failed67
	leaq	.Lstr.141(%rip), %rsi
	jmp	.LBB148_2
.LBB148_12:                             # %assert failed86
	leaq	.Lstr.142(%rip), %rsi
.LBB148_2:                              # %assert failed
	xorl	%edi, %edi
	addq	$104, %rsp
	jmp	halide_error_buffer_argument_is_null@PLT # TAILCALL
.Lfunc_end148:
	.size	f3, .Lfunc_end148-f3

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
	movq	184(%rax), %r10
	movq	192(%rax), %rsi
	movq	200(%rax), %rdx
	movl	(%rdx), %edx
	movq	208(%rax), %rax
	movzbl	(%rsi), %esi
	movq	%rax, 96(%rsp)
	movl	%edx, 88(%rsp)
	movl	%esi, 80(%rsp)
	movq	%r10, 72(%rsp)
	vmovss	%xmm11, 24(%rsp)
	vmovss	%xmm10, 16(%rsp)
	vmovss	%xmm9, 8(%rsp)
	vmovss	%xmm8, (%rsp)
	callq	f3@PLT
	addq	$104, %rsp
	retq
.Lfunc_end149:
	.size	f3_argv, .Lfunc_end149-f3_argv

	.section	.text.f3_metadata,"ax",@progbits
	.globl	f3_metadata
	.align	16, 0x90
	.type	f3_metadata,@function
f3_metadata:                            # @f3_metadata
# BB#0:                                 # %entry
	leaq	.Lf3_metadata_storage(%rip), %rax
	retq
.Lfunc_end150:
	.size	f3_metadata, .Lfunc_end150-f3_metadata

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

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"allocating host and device memory failed\n"
	.size	.L.str.43, 42

	.type	.L.str.45.65,@object    # @.str.45.65
.L.str.45.65:
	.asciz	"/home/fb/Halide/src/runtime/device_interface.cpp:322 Assert failed: buf->dev == 0\n"
	.size	.L.str.45.65, 83

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

	.type	.L.str.43.99,@object    # @.str.43.99
.L.str.43.99:
	.asciz	" bytes boundary."
	.size	.L.str.43.99, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"The folded storage dimension "
	.size	.L.str.44, 30

	.type	.L.str.45.100,@object   # @.str.45.100
.L.str.45.100:
	.asciz	" of "
	.size	.L.str.45.100, 5

	.type	.L.str.46.101,@object   # @.str.46.101
.L.str.46.101:
	.asciz	" was accessed out of order by loop "
	.size	.L.str.46.101, 36

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

	.type	.L.str.103,@object      # @.str.103
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.103:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:204 Assert failed: p_stats != NULL\n"
	.size	.L.str.103, 77

	.type	.L.str.1.104,@object    # @.str.1.104
.L.str.1.104:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:231 Assert failed: p_stats != NULL\n"
	.size	.L.str.1.104, 77

	.type	.L.str.2.105,@object    # @.str.2.105
.L.str.2.105:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:232 Assert failed: func_id >= 0\n"
	.size	.L.str.2.105, 74

	.type	.L.str.3.106,@object    # @.str.3.106
.L.str.3.106:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:233 Assert failed: func_id < p_stats->num_funcs\n"
	.size	.L.str.3.106, 90

	.type	.L.str.4.107,@object    # @.str.4.107
.L.str.4.107:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:267 Assert failed: p_stats != NULL\n"
	.size	.L.str.4.107, 77

	.type	.L.str.5.108,@object    # @.str.5.108
.L.str.5.108:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:268 Assert failed: func_id >= 0\n"
	.size	.L.str.5.108, 74

	.type	.L.str.6.109,@object    # @.str.6.109
.L.str.6.109:
	.asciz	"/home/fb/Halide/src/runtime/profiler.cpp:269 Assert failed: func_id < p_stats->num_funcs\n"
	.size	.L.str.6.109, 90

	.type	.L.str.7.110,@object    # @.str.7.110
.L.str.7.110:
	.asciz	"\n"
	.size	.L.str.7.110, 2

	.type	.L.str.8.111,@object    # @.str.8.111
.L.str.8.111:
	.asciz	" total time: "
	.size	.L.str.8.111, 14

	.type	.L.str.9.112,@object    # @.str.9.112
.L.str.9.112:
	.asciz	" ms"
	.size	.L.str.9.112, 4

	.type	.L.str.10.113,@object   # @.str.10.113
.L.str.10.113:
	.asciz	"  samples: "
	.size	.L.str.10.113, 12

	.type	.L.str.11.114,@object   # @.str.11.114
.L.str.11.114:
	.asciz	"  runs: "
	.size	.L.str.11.114, 9

	.type	.L.str.12.115,@object   # @.str.12.115
.L.str.12.115:
	.asciz	"  time/run: "
	.size	.L.str.12.115, 13

	.type	.L.str.13.116,@object   # @.str.13.116
.L.str.13.116:
	.asciz	" ms\n"
	.size	.L.str.13.116, 5

	.type	.L.str.14.117,@object   # @.str.14.117
.L.str.14.117:
	.asciz	" average threads used: "
	.size	.L.str.14.117, 24

	.type	.L.str.15.118,@object   # @.str.15.118
.L.str.15.118:
	.asciz	" heap allocations: "
	.size	.L.str.15.118, 20

	.type	.L.str.16.119,@object   # @.str.16.119
.L.str.16.119:
	.asciz	"  peak heap usage: "
	.size	.L.str.16.119, 20

	.type	.L.str.17.120,@object   # @.str.17.120
.L.str.17.120:
	.asciz	" bytes\n"
	.size	.L.str.17.120, 8

	.type	.L.str.18.121,@object   # @.str.18.121
.L.str.18.121:
	.asciz	"  "
	.size	.L.str.18.121, 3

	.type	.L.str.19.122,@object   # @.str.19.122
.L.str.19.122:
	.asciz	": "
	.size	.L.str.19.122, 3

	.type	.L.str.20.123,@object   # @.str.20.123
.L.str.20.123:
	.asciz	" "
	.size	.L.str.20.123, 2

	.type	.L.str.21.124,@object   # @.str.21.124
.L.str.21.124:
	.asciz	"ms"
	.size	.L.str.21.124, 3

	.type	.L.str.22.125,@object   # @.str.22.125
.L.str.22.125:
	.asciz	"("
	.size	.L.str.22.125, 2

	.type	.L.str.23.126,@object   # @.str.23.126
.L.str.23.126:
	.asciz	"%)"
	.size	.L.str.23.126, 3

	.type	.L.str.24.127,@object   # @.str.24.127
.L.str.24.127:
	.asciz	"threads: "
	.size	.L.str.24.127, 10

	.type	.L.str.25.128,@object   # @.str.25.128
.L.str.25.128:
	.asciz	" peak: "
	.size	.L.str.25.128, 8

	.type	.L.str.26.129,@object   # @.str.26.129
.L.str.26.129:
	.asciz	" num: "
	.size	.L.str.26.129, 7

	.type	.L.str.27.130,@object   # @.str.27.130
.L.str.27.130:
	.asciz	" avg: "
	.size	.L.str.27.130, 7

	.type	.L.str.28.131,@object   # @.str.28.131
.L.str.28.131:
	.asciz	" stack: "
	.size	.L.str.28.131, 9

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

	.type	.Lstr.138,@object       # @str.138
	.align	32
.Lstr.138:
	.asciz	"vignetteH"
	.size	.Lstr.138, 10

	.type	.Lstr.139,@object       # @str.139
	.align	32
.Lstr.139:
	.asciz	"vignetteV"
	.size	.Lstr.139, 10

	.type	.Lstr.140,@object       # @str.140
	.align	32
.Lstr.140:
	.asciz	"ccm"
	.size	.Lstr.140, 4

	.type	.Lstr.141,@object       # @str.141
	.align	32
.Lstr.141:
	.asciz	"toneTable"
	.size	.Lstr.141, 10

	.type	.Lstr.142,@object       # @str.142
	.align	32
.Lstr.142:
	.asciz	"f3"
	.size	.Lstr.142, 3

	.type	.Lstr.143,@object       # @str.143
	.align	32
.Lstr.143:
	.asciz	"Input buffer ccm"
	.size	.Lstr.143, 17

	.type	.Lstr.144,@object       # @str.144
	.align	32
.Lstr.144:
	.asciz	"float32"
	.size	.Lstr.144, 8

	.type	.Lstr.145,@object       # @str.145
	.align	32
.Lstr.145:
	.asciz	"Output buffer f3"
	.size	.Lstr.145, 17

	.type	.Lstr.146,@object       # @str.146
	.align	32
.Lstr.146:
	.asciz	"uint8"
	.size	.Lstr.146, 6

	.type	.Lstr.147,@object       # @str.147
	.align	32
.Lstr.147:
	.asciz	"Input buffer p0"
	.size	.Lstr.147, 16

	.type	.Lstr.148,@object       # @str.148
	.align	32
.Lstr.148:
	.asciz	"uint16"
	.size	.Lstr.148, 7

	.type	.Lstr.149,@object       # @str.149
	.align	32
.Lstr.149:
	.asciz	"Input buffer toneTable"
	.size	.Lstr.149, 23

	.type	.Lstr.150,@object       # @str.150
	.align	32
.Lstr.150:
	.asciz	"ccm.stride.0"
	.size	.Lstr.150, 13

	.type	.Lstr.151,@object       # @str.151
	.align	32
.Lstr.151:
	.asciz	"1"
	.size	.Lstr.151, 2

	.type	.Lstr.152,@object       # @str.152
	.align	32
.Lstr.152:
	.asciz	"f3.stride.0"
	.size	.Lstr.152, 12

	.type	.Lstr.153,@object       # @str.153
	.align	32
.Lstr.153:
	.asciz	"3"
	.size	.Lstr.153, 2

	.type	.Lstr.154,@object       # @str.154
	.align	32
.Lstr.154:
	.asciz	"f3.stride.2"
	.size	.Lstr.154, 12

	.type	.Lstr.155,@object       # @str.155
	.align	32
.Lstr.155:
	.asciz	"f3.min.2"
	.size	.Lstr.155, 9

	.type	.Lstr.156,@object       # @str.156
	.align	32
.Lstr.156:
	.asciz	"0"
	.size	.Lstr.156, 2

	.type	.Lstr.157,@object       # @str.157
	.align	32
.Lstr.157:
	.asciz	"f3.extent.2"
	.size	.Lstr.157, 12

	.type	.Lstr.158,@object       # @str.158
	.align	32
.Lstr.158:
	.asciz	"p0.stride.0"
	.size	.Lstr.158, 12

	.type	.Lstr.159,@object       # @str.159
	.align	32
.Lstr.159:
	.asciz	"toneTable.stride.0"
	.size	.Lstr.159, 19

	.type	.Lstr.160,@object       # @str.160
	.align	32
.Lstr.160:
	.asciz	"f2"
	.size	.Lstr.160, 3

	.type	.Lstr.161,@object       # @str.161
	.align	32
.Lstr.161:
	.asciz	"deinterleaved$3"
	.size	.Lstr.161, 16

	.type	.Lstr.162,@object       # @str.162
	.align	32
.Lstr.162:
	.asciz	"p1"
	.size	.Lstr.162, 3

	.type	.L__unnamed_1,@object   # @0
	.align	4
.L__unnamed_1:
	.long	0                       # 0x0
	.size	.L__unnamed_1, 4

	.type	.Lstr.163,@object       # @str.163
	.align	32
.Lstr.163:
	.asciz	"p2"
	.size	.Lstr.163, 3

	.type	.L__unnamed_2,@object   # @1
	.align	4
.L__unnamed_2:
	.long	0                       # 0x0
	.size	.L__unnamed_2, 4

	.type	.Lstr.164,@object       # @str.164
	.align	32
.Lstr.164:
	.asciz	"blackLevelR"
	.size	.Lstr.164, 12

	.type	.L__unnamed_3,@object   # @2
	.align	4
.L__unnamed_3:
	.long	0                       # float 0
	.size	.L__unnamed_3, 4

	.type	.Lstr.165,@object       # @str.165
	.align	32
.Lstr.165:
	.asciz	"blackLevelG"
	.size	.Lstr.165, 12

	.type	.L__unnamed_4,@object   # @3
	.align	4
.L__unnamed_4:
	.long	0                       # float 0
	.size	.L__unnamed_4, 4

	.type	.Lstr.166,@object       # @str.166
	.align	32
.Lstr.166:
	.asciz	"blackLevelB"
	.size	.Lstr.166, 12

	.type	.L__unnamed_5,@object   # @4
	.align	4
.L__unnamed_5:
	.long	0                       # float 0
	.size	.L__unnamed_5, 4

	.type	.Lstr.167,@object       # @str.167
	.align	32
.Lstr.167:
	.asciz	"whiteBalanceGainR"
	.size	.Lstr.167, 18

	.type	.L__unnamed_6,@object   # @5
	.align	4
.L__unnamed_6:
	.long	0                       # float 0
	.size	.L__unnamed_6, 4

	.type	.Lstr.168,@object       # @str.168
	.align	32
.Lstr.168:
	.asciz	"whiteBalanceGainG"
	.size	.Lstr.168, 18

	.type	.L__unnamed_7,@object   # @6
	.align	4
.L__unnamed_7:
	.long	0                       # float 0
	.size	.L__unnamed_7, 4

	.type	.Lstr.169,@object       # @str.169
	.align	32
.Lstr.169:
	.asciz	"whiteBalanceGainB"
	.size	.Lstr.169, 18

	.type	.L__unnamed_8,@object   # @7
	.align	4
.L__unnamed_8:
	.long	0                       # float 0
	.size	.L__unnamed_8, 4

	.type	.Lstr.170,@object       # @str.170
	.align	32
.Lstr.170:
	.asciz	"clampMinR"
	.size	.Lstr.170, 10

	.type	.L__unnamed_9,@object   # @8
	.align	4
.L__unnamed_9:
	.long	0                       # float 0
	.size	.L__unnamed_9, 4

	.type	.Lstr.171,@object       # @str.171
	.align	32
.Lstr.171:
	.asciz	"clampMinG"
	.size	.Lstr.171, 10

	.type	.L__unnamed_10,@object  # @9
	.align	4
.L__unnamed_10:
	.long	0                       # float 0
	.size	.L__unnamed_10, 4

	.type	.Lstr.172,@object       # @str.172
	.align	32
.Lstr.172:
	.asciz	"clampMinB"
	.size	.Lstr.172, 10

	.type	.L__unnamed_11,@object  # @10
	.align	4
.L__unnamed_11:
	.long	0                       # float 0
	.size	.L__unnamed_11, 4

	.type	.Lstr.173,@object       # @str.173
	.align	32
.Lstr.173:
	.asciz	"clampMaxR"
	.size	.Lstr.173, 10

	.type	.L__unnamed_12,@object  # @11
	.align	4
.L__unnamed_12:
	.long	0                       # float 0
	.size	.L__unnamed_12, 4

	.type	.Lstr.174,@object       # @str.174
	.align	32
.Lstr.174:
	.asciz	"clampMaxG"
	.size	.Lstr.174, 10

	.type	.L__unnamed_13,@object  # @12
	.align	4
.L__unnamed_13:
	.long	0                       # float 0
	.size	.L__unnamed_13, 4

	.type	.Lstr.175,@object       # @str.175
	.align	32
.Lstr.175:
	.asciz	"clampMaxB"
	.size	.Lstr.175, 10

	.type	.L__unnamed_14,@object  # @13
	.align	4
.L__unnamed_14:
	.long	0                       # float 0
	.size	.L__unnamed_14, 4

	.type	.Lstr.176,@object       # @str.176
	.align	32
.Lstr.176:
	.asciz	"sharpenningR"
	.size	.Lstr.176, 13

	.type	.L__unnamed_15,@object  # @14
	.align	4
.L__unnamed_15:
	.long	0                       # float 0
	.size	.L__unnamed_15, 4

	.type	.Lstr.177,@object       # @str.177
	.align	32
.Lstr.177:
	.asciz	"sharpenningG"
	.size	.Lstr.177, 13

	.type	.L__unnamed_16,@object  # @15
	.align	4
.L__unnamed_16:
	.long	0                       # float 0
	.size	.L__unnamed_16, 4

	.type	.Lstr.178,@object       # @str.178
	.align	32
.Lstr.178:
	.asciz	"sharpenninngB"
	.size	.Lstr.178, 14

	.type	.L__unnamed_17,@object  # @16
	.align	4
.L__unnamed_17:
	.long	0                       # float 0
	.size	.L__unnamed_17, 4

	.type	.Lstr.179,@object       # @str.179
	.align	32
.Lstr.179:
	.asciz	"sharpeningSupport"
	.size	.Lstr.179, 18

	.type	.L__unnamed_18,@object  # @17
	.align	4
.L__unnamed_18:
	.long	0                       # float 0
	.size	.L__unnamed_18, 4

	.type	.Lstr.180,@object       # @str.180
	.align	32
.Lstr.180:
	.asciz	"noiseCore"
	.size	.Lstr.180, 10

	.type	.L__unnamed_19,@object  # @18
	.align	4
.L__unnamed_19:
	.long	0                       # float 0
	.size	.L__unnamed_19, 4

	.type	.Lstr.181,@object       # @str.181
	.align	32
.Lstr.181:
	.asciz	"p3"
	.size	.Lstr.181, 3

	.type	.L__unnamed_20,@object  # @19
.L__unnamed_20:
	.byte	0                       # 0x0
	.size	.L__unnamed_20, 1

	.type	.Lstr.182,@object       # @str.182
	.align	32
.Lstr.182:
	.asciz	"bayerPattern"
	.size	.Lstr.182, 13

	.type	.L__unnamed_21,@object  # @20
	.align	4
.L__unnamed_21:
	.long	0                       # 0x0
	.size	.L__unnamed_21, 4

	.type	.L__unnamed_22,@object  # @21
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
.L__unnamed_22:
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
	.quad	.Lstr.162
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_1
	.quad	0
	.quad	0
	.quad	.Lstr.163
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_2
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
	.quad	.Lstr.164
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_3
	.quad	0
	.quad	0
	.quad	.Lstr.165
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_4
	.quad	0
	.quad	0
	.quad	.Lstr.166
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_5
	.quad	0
	.quad	0
	.quad	.Lstr.167
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_6
	.quad	0
	.quad	0
	.quad	.Lstr.168
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_7
	.quad	0
	.quad	0
	.quad	.Lstr.169
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_8
	.quad	0
	.quad	0
	.quad	.Lstr.170
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_9
	.quad	0
	.quad	0
	.quad	.Lstr.171
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_10
	.quad	0
	.quad	0
	.quad	.Lstr.172
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_11
	.quad	0
	.quad	0
	.quad	.Lstr.173
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_12
	.quad	0
	.quad	0
	.quad	.Lstr.174
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_13
	.quad	0
	.quad	0
	.quad	.Lstr.175
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_14
	.quad	0
	.quad	0
	.quad	.Lstr.176
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_15
	.quad	0
	.quad	0
	.quad	.Lstr.177
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_16
	.quad	0
	.quad	0
	.quad	.Lstr.178
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_17
	.quad	0
	.quad	0
	.quad	.Lstr.179
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_18
	.quad	0
	.quad	0
	.quad	.Lstr.180
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_19
	.quad	0
	.quad	0
	.quad	.Lstr.140
	.long	1                       # 0x1
	.long	2                       # 0x2
	.byte	2                       # 0x2
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lstr.141
	.long	1                       # 0x1
	.long	2                       # 0x2
	.byte	1                       # 0x1
	.byte	8                       # 0x8
	.short	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.Lstr.181
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_20
	.quad	0
	.quad	0
	.quad	.Lstr.182
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.byte	32                      # 0x20
	.short	1                       # 0x1
	.zero	4
	.quad	.L__unnamed_21
	.quad	0
	.quad	0
	.quad	.Lstr.142
	.long	2                       # 0x2
	.long	3                       # 0x3
	.byte	1                       # 0x1
	.byte	8                       # 0x8
	.short	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.size	.L__unnamed_22, 1296

	.type	.Lstr.183,@object       # @str.183
	.section	.rodata,"a",@progbits
	.align	32
.Lstr.183:
	.asciz	"x86-64-linux-avx-avx2-f16c-fma-sse41"
	.size	.Lstr.183, 37

	.type	.Lf3_metadata_storage,@object # @f3_metadata_storage
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
.Lf3_metadata_storage:
	.long	0                       # 0x0
	.long	27                      # 0x1b
	.quad	.L__unnamed_22
	.quad	.Lstr.183
	.quad	.Lstr.142
	.size	.Lf3_metadata_storage, 32


	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.ident	"clang version 3.7.1 (branches/release_37 297356)"
	.section	".note.GNU-stack","",@progbits
