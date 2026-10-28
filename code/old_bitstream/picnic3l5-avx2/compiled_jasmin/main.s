	.att_syntax
	.text
	.p2align	5
	.global	_verify_picnic3_jazz
	.global	_sign_picnic3_jazz
	.global	_keyGen_jazz
_verify_picnic3_jazz:
	movq	%rsp, %rax
	leaq	-3686048(%rsp), %rsp
	andq	$-32, %rsp
	movq	%r15, 3685992(%rsp)
	movq	%r14, 3686000(%rsp)
	movq	%r13, 3686008(%rsp)
	movq	%r12, 3686016(%rsp)
	movq	%rbp, 3686024(%rsp)
	movq	%rbx, 3686032(%rsp)
	movq	%rax, 3686040(%rsp)
	movq	%rcx, 2943904(%rsp)
	movq	%r9, 2943912(%rsp)
	movq	%r8, 2943920(%rsp)
	movq	%rdi, %rax
	leaq	32(%rsp), %rdi
	call	L_memcpy_4Words_from_reg$1
Lverify_picnic3_jazz$166:
	movq	%rsi, %rax
	leaq	64(%rsp), %rdi
	call	L_memcpy_4Words_from_reg$1
Lverify_picnic3_jazz$165:
	movq	$0, %rax
	jmp 	Lverify_picnic3_jazz$163
Lverify_picnic3_jazz$164:
	movb	(%rdx,%rax), %cl
	movb	%cl, (%rsp,%rax)
	incq	%rax
Lverify_picnic3_jazz$163:
	cmpq	$13, %rax
	jb  	Lverify_picnic3_jazz$164
	movq	2943904(%rsp), %r8
	leaq	2943968(%rsp), %rdx
	call	L_memcpy_8Words_from_reg$1
Lverify_picnic3_jazz$162:
	leaq	3684726(%rsp), %rcx
	leaq	3684590(%rsp), %rax
	leaq	-632(%rsp), %rsp
	call	L_expand_challenge$1
Lverify_picnic3_jazz$161:
	leaq	632(%rsp), %rsp
	movq	2943904(%rsp), %rcx
	addq	$64, %rcx
	movq	$0, %rax
	jmp 	Lverify_picnic3_jazz$159
Lverify_picnic3_jazz$160:
	movq	(%rcx), %rdi
	movq	%rdi, 96(%rsp,%rax,8)
	addq	$8, %rcx
	incq	%rax
Lverify_picnic3_jazz$159:
	cmpq	$4, %rax
	jb  	Lverify_picnic3_jazz$160
	movq	%rcx, 2943904(%rsp)
	leaq	3017152(%rsp), %rdx
	leaq	5152(%rsp), %r10
	leaq	3520(%rsp), %rax
	call	L_createTree_1$1
Lverify_picnic3_jazz$158:
	movq	$96, %rdx
	leaq	3520(%rsp), %rbx
	leaq	3684726(%rsp), %rax
	leaq	32096(%rsp), %rsi
	call	LrevealSeedsSize_1$1
Lverify_picnic3_jazz$157:
	movq	%rax, %rcx
	imulq	$32, %rcx, %rcx
	addq	%rcx, %rdx
	movq	%rdx, 2943928(%rsp)
	movq	2943904(%rsp), %rbx
	leaq	3017152(%rsp), %rdx
	leaq	5152(%rsp), %r10
	leaq	3520(%rsp), %rdi
	leaq	32096(%rsp), %rsi
	leaq	96(%rsp), %r11
	leaq	-24(%rsp), %rsp
	call	L_reconstructSeeds_1$1
Lverify_picnic3_jazz$156:
	leaq	24(%rsp), %rsp
	movq	%rax, 2943904(%rsp)
	leaq	70560(%rsp), %rdx
	leaq	1888(%rsp), %r10
	leaq	256(%rsp), %rax
	call	L_createTree_3$1
Lverify_picnic3_jazz$155:
	movq	$0, %rdx
	movw	$0, %si
	jmp 	Lverify_picnic3_jazz$151
Lverify_picnic3_jazz$152:
	leaq	3684726(%rsp), %r9
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$154:
	cmpb	$0, %r13b
	jne 	Lverify_picnic3_jazz$153
	movw	%si, 3684862(%rsp,%rdx,2)
	incq	%rdx
Lverify_picnic3_jazz$153:
	incw	%si
Lverify_picnic3_jazz$151:
	cmpw	$601, %si
	jb  	Lverify_picnic3_jazz$152
	movq	2943928(%rsp), %rdx
	leaq	256(%rsp), %rax
	leaq	3684862(%rsp), %r11
	leaq	32096(%rsp), %rsi
	leaq	-1624(%rsp), %rsp
	call	L_getRevealedMerkleNodes$1
Lverify_picnic3_jazz$150:
	leaq	1624(%rsp), %rsp
	imulq	$64, %r10, %rax
	addq	%rax, %rdx
	movw	$0, %si
	jmp 	Lverify_picnic3_jazz$144
Lverify_picnic3_jazz$145:
	leaq	3684726(%rsp), %r9
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$149:
	cmpb	$1, %r13b
	jne 	Lverify_picnic3_jazz$146
	leaq	3684726(%rsp), %rcx
	call	L__indexOf$1
Lverify_picnic3_jazz$148:
	movw	3684590(%rsp,%r11,2), %ax
	cmpw	$15, %ax
	je  	Lverify_picnic3_jazz$147
	addq	$128, %rdx
Lverify_picnic3_jazz$147:
	addq	$64, %rdx
	addq	$32, %rdx
	addq	$128, %rdx
	addq	$128, %rdx
Lverify_picnic3_jazz$146:
	incw	%si
Lverify_picnic3_jazz$144:
	cmpw	$601, %si
	jb  	Lverify_picnic3_jazz$145
	movq	2943904(%rsp), %r8
	leaq	70560(%rsp), %rdi
	leaq	1888(%rsp), %rcx
	leaq	256(%rsp), %rax
	leaq	3684862(%rsp), %r11
	leaq	-38464(%rsp), %rsp
	call	L_addMerkleNodes$1
Lverify_picnic3_jazz$143:
	leaq	38464(%rsp), %rsp
	movq	2943920(%rsp), %rax
	cmpq	%rax, %rdx
	jne 	Lverify_picnic3_jazz$1
	movb	$1, %dil
	movq	%r8, 2943920(%rsp)
	movw	$0, %si
	movq	$0, 2943904(%rsp)
	jmp 	Lverify_picnic3_jazz$129
Lverify_picnic3_jazz$130:
	leaq	3684726(%rsp), %r9
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$142:
	cmpb	$1, %r13b
	jne 	Lverify_picnic3_jazz$131
	leaq	3684726(%rsp), %rcx
	call	L__indexOf$1
Lverify_picnic3_jazz$141:
	movw	3684590(%rsp,%r11,2), %dx
	movw	%si, 3684576(%rsp)
	movq	2943904(%rsp), %rax
	imulq	$480, %rax, %rax
	movq	2943920(%rsp), %rcx
	movw	%dx, 3684578(%rsp)
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movw	3684578(%rsp), %dx
	cmpw	$15, %dx
	jne 	Lverify_picnic3_jazz$138
	movb	$0, %dil
	addq	$128, %rax
	jmp 	Lverify_picnic3_jazz$139
Lverify_picnic3_jazz$138:
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movb	2946047(%rsp,%rax), %dil
	movb	$255, %dl
	shlb	$4, %dl
	xorb	$255, %dl
	andb	%dl, %dil
	cmpb	$0, %dil
	je  	Lverify_picnic3_jazz$139
	movb	$1, %dil
Lverify_picnic3_jazz$140:
Lverify_picnic3_jazz$139:
	cmpb	$0, %dil
	jne 	Lverify_picnic3_jazz$133
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movb	2946047(%rsp,%rax), %dil
	movb	$255, %dl
	shlb	$1, %dl
	xorb	$255, %dl
	andb	%dl, %dil
	cmpb	$0, %dil
	je  	Lverify_picnic3_jazz$137
	movb	$1, %dil
Lverify_picnic3_jazz$137:
	cmpb	$0, %dil
	jne 	Lverify_picnic3_jazz$133
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movb	2946047(%rsp,%rax), %dil
	movb	$255, %dl
	shlb	$4, %dl
	xorb	$255, %dl
	andb	%dl, %dil
	cmpb	$0, %dil
	je  	Lverify_picnic3_jazz$136
	movb	$1, %dil
Lverify_picnic3_jazz$136:
	cmpb	$0, %dil
	jne 	Lverify_picnic3_jazz$133
	movq	(%rcx), %rdx
	movq	%rdx, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 2946048(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 2946048(%rsp,%rax)
	addq	$8, %rcx
Lverify_picnic3_jazz$135:
Lverify_picnic3_jazz$134:
Lverify_picnic3_jazz$133:
	movq	%rcx, 2943920(%rsp)
	cmpb	$1, %dil
	jne 	Lverify_picnic3_jazz$132
	movw	$601, 3684576(%rsp)
Lverify_picnic3_jazz$132:
	movq	2943904(%rsp), %rax
	incq	%rax
	movq	%rax, 2943904(%rsp)
	movw	3684576(%rsp), %si
Lverify_picnic3_jazz$131:
	incw	%si
Lverify_picnic3_jazz$129:
	cmpw	$601, %si
	jb  	Lverify_picnic3_jazz$130
	cmpb	$0, %dil
	jne 	Lverify_picnic3_jazz$1
	leaq	128(%rsp), %r9
	leaq	64(%rsp), %rcx
	call	L_mzd_from_char_array$1
Lverify_picnic3_jazz$128:
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$18631, %rax
	addq	$-7, %rax
	movq	$0, %rcx
	jmp 	Lverify_picnic3_jazz$126
Lverify_picnic3_jazz$127:
	addq	$32, %rcx
Lverify_picnic3_jazz$126:
	cmpq	%rax, %rcx
	jb  	Lverify_picnic3_jazz$127
	movq	$0, %rcx
	jmp 	Lverify_picnic3_jazz$124
Lverify_picnic3_jazz$125:
	vmovdqu	%ymm0, 13440(%rsp,%rcx)
	addq	$32, %rcx
Lverify_picnic3_jazz$124:
	cmpq	%rax, %rcx
	jb  	Lverify_picnic3_jazz$125
	movl	$0, 13440(%rsp,%rcx)
	addq	$4, %rcx
	movw	$0, 13440(%rsp,%rcx)
	addq	$2, %rcx
	movb	$0, 13440(%rsp,%rcx)
	movq	$600, %rax
	jmp 	Lverify_picnic3_jazz$113
Lverify_picnic3_jazz$114:
	imulq	$31, %rax, %rcx
	movq	%rax, 2943904(%rsp)
	movq	%rcx, %rsi
	movq	%rcx, %rax
	movq	%rcx, 2943920(%rsp)
	addq	$31, %rax
	decq	%rax
	addq	$15, %rsi
	jmp 	Lverify_picnic3_jazz$122
Lverify_picnic3_jazz$123:
	movb	$1, 13440(%rsp,%rax)
	decq	%rax
Lverify_picnic3_jazz$122:
	cmpq	%rsi, %rax
	jnbe	Lverify_picnic3_jazz$123
	movq	$15, %rcx
	jmp 	Lverify_picnic3_jazz$115
Lverify_picnic3_jazz$116:
	movq	%rcx, 2943928(%rsp)
	movq	%rcx, %rax
	shlq	$1, %rax
	incq	%rax
	addq	2943920(%rsp), %rax
	movb	$0, %cl
	leaq	13440(%rsp), %rdx
	call	L__exists_22$1
Lverify_picnic3_jazz$121:
	cmpb	$1, %cl
	je  	Lverify_picnic3_jazz$117
	incq	%rax
	leaq	13440(%rsp), %rdx
	call	L__exists_22$1
Lverify_picnic3_jazz$120:
	cmpb	$1, %cl
	jne 	Lverify_picnic3_jazz$118
	movq	2943920(%rsp), %rcx
	addq	2943928(%rsp), %rcx
	movb	$1, 13440(%rsp,%rcx)
Lverify_picnic3_jazz$119:
	jmp 	Lverify_picnic3_jazz$118
Lverify_picnic3_jazz$117:
	movq	2943920(%rsp), %rcx
	addq	2943928(%rsp), %rcx
	movb	$1, 13440(%rsp,%rcx)
Lverify_picnic3_jazz$118:
	movq	2943928(%rsp), %rcx
	decq	%rcx
Lverify_picnic3_jazz$115:
	cmpq	$0, %rcx
	jnbe	Lverify_picnic3_jazz$116
	addq	2943920(%rsp), %rcx
	movb	$1, 13440(%rsp,%rcx)
	movq	2943904(%rsp), %rax
	decq	%rax
Lverify_picnic3_jazz$113:
	cmpq	$0, %rax
	jnbe	Lverify_picnic3_jazz$114
	movq	$31, %rax
	decq	%rax
	movq	$15, %rcx
	jmp 	Lverify_picnic3_jazz$111
Lverify_picnic3_jazz$112:
	movb	$1, 13440(%rsp,%rax)
	decq	%rax
Lverify_picnic3_jazz$111:
	cmpq	%rcx, %rax
	jnbe	Lverify_picnic3_jazz$112
	jmp 	Lverify_picnic3_jazz$104
Lverify_picnic3_jazz$105:
	movq	%rcx, 2943904(%rsp)
	movq	%rcx, %rax
	shlq	$1, %rax
	incq	%rax
	movb	$0, %cl
	leaq	13440(%rsp), %rdx
	call	L__exists_22$1
Lverify_picnic3_jazz$110:
	cmpb	$1, %cl
	je  	Lverify_picnic3_jazz$106
	incq	%rax
	leaq	13440(%rsp), %rdx
	call	L__exists_22$1
Lverify_picnic3_jazz$109:
	cmpb	$1, %cl
	jne 	Lverify_picnic3_jazz$107
	movq	2943904(%rsp), %rcx
	movb	$1, 13440(%rsp,%rcx)
Lverify_picnic3_jazz$108:
	jmp 	Lverify_picnic3_jazz$107
Lverify_picnic3_jazz$106:
	movq	2943904(%rsp), %rcx
	movb	$1, 13440(%rsp,%rcx)
Lverify_picnic3_jazz$107:
	movq	2943904(%rsp), %rcx
	decq	%rcx
Lverify_picnic3_jazz$104:
	cmpq	$0, %rcx
	jnbe	Lverify_picnic3_jazz$105
	movq	$0, %rax
	jmp 	Lverify_picnic3_jazz$102
Lverify_picnic3_jazz$103:
	incq	%rax
Lverify_picnic3_jazz$102:
	cmpq	$601, %rax
	jb  	Lverify_picnic3_jazz$103
	movq	$0, 2943904(%rsp)
	movq	$0, 2943920(%rsp)
	movq	$0, %rax
	movw	$0, 3684576(%rsp)
	jmp 	Lverify_picnic3_jazz$43
Lverify_picnic3_jazz$44:
	movq	%rax, 2943928(%rsp)
	movw	3684576(%rsp), %si
	leaq	3684726(%rsp), %r9
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$101:
	cmpb	$0, %r13b
	je  	Lverify_picnic3_jazz$70
	leaq	2944032(%rsp), %rdx
	leaq	3685961(%rsp), %r10
	leaq	3685930(%rsp), %rbx
	call	L_createTree_2$1
Lverify_picnic3_jazz$100:
	movq	2943904(%rsp), %rax
	imulq	$60, %rax, %rax
	movw	3684576(%rsp), %r9w
	leaq	3684726(%rsp), %rcx
	call	L__indexOf$1
Lverify_picnic3_jazz$99:
	movw	3684590(%rsp,%r11,2), %dx
	movw	%r9w, 3684578(%rsp)
	leaq	3685930(%rsp), %rcx
	movq	%rcx, 2943936(%rsp)
	movq	$0, %rdi
	addw	$15, %dx
	movw	%dx, 3684582(%rsp,%rdi,2)
	movzwq	%dx, %rdx
	incq	%rdi
	cmpq	$0, %rdx
	je  	Lverify_picnic3_jazz$95
	incq	%rdx
	shrq	$1, %rdx
	decq	%rdx
Lverify_picnic3_jazz$98:
	jmp 	Lverify_picnic3_jazz$95
Lverify_picnic3_jazz$96:
	movw	%dx, 3684582(%rsp,%rdi,2)
	cmpq	$0, %rdx
	je  	Lverify_picnic3_jazz$97
	incq	%rdx
	shrq	$1, %rdx
	decq	%rdx
Lverify_picnic3_jazz$97:
	incq	%rdi
Lverify_picnic3_jazz$95:
	cmpq	$0, %rdx
	jne 	Lverify_picnic3_jazz$96
	movq	$0, %rsi
	movq	$0, 2943944(%rsp)
	jmp 	Lverify_picnic3_jazz$78
Lverify_picnic3_jazz$79:
	movq	%rsi, 2943952(%rsp)
	movq	2943952(%rsp), %rdx
	movw	3684582(%rsp,%rdx,2), %dx
	movzwq	%dx, %rdx
	movq	2943936(%rsp), %rbx
	call	L__hasSibling_2$1
Lverify_picnic3_jazz$94:
	cmpb	$1, %cl
	jne 	Lverify_picnic3_jazz$80
	movq	2943952(%rsp), %rdx
	movw	3684582(%rsp,%rdx,2), %dx
	movzwq	%dx, %rdi
	call	L__getSibling_2$1
Lverify_picnic3_jazz$93:
	movq	%rdi, 2943960(%rsp)
	movq	2943952(%rsp), %r8
	leaq	3684582(%rsp), %rcx
	call	L_contains_pathSets_2$1
Lverify_picnic3_jazz$92:
	cmpb	$0, %r9b
	jne 	Lverify_picnic3_jazz$80
	movq	2943936(%rsp), %rbx
	movq	2943960(%rsp), %rdi
	call	L__hasRightChild_T2$1
Lverify_picnic3_jazz$91:
	movb	%cl, 3685928(%rsp)
	movb	$1, %cl
	subb	3685928(%rsp), %cl
	movb	%cl, 3685928(%rsp)
	movq	2943960(%rsp), %rdi
	call	L__isLeafNode_2$1
Lverify_picnic3_jazz$90:
	movb	%cl, 3685929(%rsp)
	movb	$1, %cl
	subb	3685929(%rsp), %cl
	addb	3685928(%rsp), %cl
	jmp 	Lverify_picnic3_jazz$86
Lverify_picnic3_jazz$87:
	movq	2943960(%rsp), %rdi
	shlq	$1, %rdi
	incq	%rdi
	movq	%rdi, 2943960(%rsp)
	movq	2943960(%rsp), %rdi
	movq	2943936(%rsp), %rbx
	call	L__hasRightChild_T2$1
Lverify_picnic3_jazz$89:
	movb	%cl, 3685928(%rsp)
	movb	$1, %cl
	subb	3685928(%rsp), %cl
	movb	%cl, 3685928(%rsp)
	movq	2943960(%rsp), %rdi
	call	L__isLeafNode_2$1
Lverify_picnic3_jazz$88:
	movb	%cl, 3685929(%rsp)
	movb	$1, %cl
	subb	3685929(%rsp), %cl
	addb	3685928(%rsp), %cl
Lverify_picnic3_jazz$86:
	cmpb	$0, %cl
	je  	Lverify_picnic3_jazz$87
	movq	2943960(%rsp), %rsi
	movq	2943944(%rsp), %r8
	movb	$0, %cl
	movq	$0, %rdi
	jmp 	Lverify_picnic3_jazz$83
Lverify_picnic3_jazz$84:
	movq	2945024(%rsp,%rdi,8), %rdx
	cmpq	%rsi, %rdx
	jne 	Lverify_picnic3_jazz$85
	movb	$1, %cl
Lverify_picnic3_jazz$85:
	incq	%rdi
Lverify_picnic3_jazz$83:
	cmpq	%r8, %rdi
	jb  	Lverify_picnic3_jazz$84
	cmpb	$0, %cl
	jne 	Lverify_picnic3_jazz$82
	movq	2943944(%rsp), %r8
	movq	%rsi, 2945024(%rsp,%r8,8)
	incq	%r8
Lverify_picnic3_jazz$82:
	movq	%r8, 2943944(%rsp)
Lverify_picnic3_jazz$81:
Lverify_picnic3_jazz$80:
	movq	2943952(%rsp), %rsi
	incq	%rsi
Lverify_picnic3_jazz$78:
	cmpq	$4, %rsi
	jb  	Lverify_picnic3_jazz$79
	movq	2943944(%rsp), %r10
	movq	$0, %rsi
	jmp 	Lverify_picnic3_jazz$74
Lverify_picnic3_jazz$75:
	movq	2945024(%rsp,%rsi,8), %r8
	imulq	$4, %r8, %rcx
	movq	%rsi, 2943944(%rsp)
	movq	$0, %rsi
	jmp 	Lverify_picnic3_jazz$76
Lverify_picnic3_jazz$77:
	movq	2946048(%rsp,%rax,8), %rdx
	movq	%rdx, 2944032(%rsp,%rcx,8)
	incq	%rax
	incq	%rcx
	incq	%rsi
Lverify_picnic3_jazz$76:
	cmpq	$4, %rsi
	jb  	Lverify_picnic3_jazz$77
	movq	2943944(%rsp), %rsi
	movq	2945024(%rsp,%rsi,8), %r8
	movb	$1, 3685961(%rsp,%r8)
	incq	%rsi
Lverify_picnic3_jazz$74:
	cmpq	%r10, %rsi
	jb  	Lverify_picnic3_jazz$75
	movw	3684578(%rsp), %r9w
	leaq	2944032(%rsp), %rdx
	leaq	3685961(%rsp), %r10
	leaq	3685930(%rsp), %rbx
	leaq	96(%rsp), %r11
	leaq	-376(%rsp), %rsp
	call	L_expandSeeds_2$1
Lverify_picnic3_jazz$73:
	leaq	376(%rsp), %rsp
	incq	2943904(%rsp)
	jmp 	Lverify_picnic3_jazz$71
Lverify_picnic3_jazz$70:
	movq	2943928(%rsp), %rax
	movw	3684576(%rsp), %r9w
	leaq	2944032(%rsp), %rdx
	leaq	3685961(%rsp), %r10
	leaq	3685930(%rsp), %rbx
	leaq	3017152(%rsp), %rsi
	leaq	96(%rsp), %r11
	leaq	-24(%rsp), %rsp
	call	L_generateSeeds$1
Lverify_picnic3_jazz$72:
	leaq	24(%rsp), %rsp
Lverify_picnic3_jazz$71:
	movq	2943928(%rsp), %rax
	leaq	8832(%rsp), %rdx
	leaq	2944032(%rsp), %rcx
	leaq	96(%rsp), %rdi
	leaq	-24(%rsp), %rsp
	call	L_createRandomTapes_verify$1
Lverify_picnic3_jazz$69:
	leaq	24(%rsp), %rsp
	movq	2943928(%rsp), %rax
	movw	3684576(%rsp), %si
	movq	2943920(%rsp), %rcx
	movq	%rax, 2943944(%rsp)
	movw	%si, 3684578(%rsp)
	movq	%rcx, 2943936(%rsp)
	leaq	3684726(%rsp), %r9
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$68:
	cmpb	$0, %r13b
	je  	Lverify_picnic3_jazz$52
	movw	3684578(%rsp), %si
	leaq	3684726(%rsp), %rcx
	call	L__indexOf$1
Lverify_picnic3_jazz$67:
	movw	3684590(%rsp,%r11,2), %ax
	movw	%ax, 3684580(%rsp)
	movq	2943944(%rsp), %rax
	movw	$0, %dx
	movq	$15, %rcx
	imulq	$32, %rcx, %rcx
	imulq	$1024, %rax, %r8
	leaq	3069152(%rsp), %rdi
	leaq	2944032(%rsp), %rax
	leaq	96(%rsp), %r11
	leaq	-1272(%rsp), %rsp
	call	L_commit_x4$1
Lverify_picnic3_jazz$66:
	leaq	1272(%rsp), %rsp
	movq	2943944(%rsp), %rax
	movw	3684578(%rsp), %si
	movw	$4, %dx
	movq	$15, %rcx
	addq	$4, %rcx
	imulq	$32, %rcx, %rcx
	imulq	$1024, %rax, %r8
	addq	$256, %r8
	leaq	3069152(%rsp), %rdi
	leaq	2944032(%rsp), %rax
	leaq	96(%rsp), %r11
	leaq	-1272(%rsp), %rsp
	call	L_commit_x4$1
Lverify_picnic3_jazz$65:
	leaq	1272(%rsp), %rsp
	movq	2943944(%rsp), %rax
	movw	3684578(%rsp), %si
	movw	$8, %dx
	movq	$15, %rcx
	addq	$8, %rcx
	imulq	$32, %rcx, %rcx
	imulq	$1024, %rax, %r8
	addq	$512, %r8
	leaq	3069152(%rsp), %rdi
	leaq	2944032(%rsp), %rax
	leaq	96(%rsp), %r11
	leaq	-1272(%rsp), %rsp
	call	L_commit_x4$1
Lverify_picnic3_jazz$64:
	leaq	1272(%rsp), %rsp
	movq	2943944(%rsp), %rax
	movw	3684578(%rsp), %si
	movw	$12, %dx
	movq	$15, %rcx
	addq	$12, %rcx
	imulq	$32, %rcx, %rcx
	imulq	$1024, %rax, %r8
	addq	$768, %r8
	leaq	3069152(%rsp), %rdi
	leaq	2944032(%rsp), %rax
	leaq	96(%rsp), %r11
	leaq	-1272(%rsp), %rsp
	call	L_commit_x4$1
Lverify_picnic3_jazz$63:
	leaq	1272(%rsp), %rsp
	movw	3684580(%rsp), %ax
	cmpw	$15, %ax
	je  	Lverify_picnic3_jazz$61
	movq	2943944(%rsp), %rax
	movq	2943936(%rsp), %rcx
	movw	$15, %dx
	movq	$15, %rsi
	addq	$15, %rsi
	imulq	$32, %rsi, %rsi
	movq	%rax, %r8
	imulq	$1024, %r8, %r8
	addq	$960, %r8
	leaq	3069152(%rsp), %r9
	leaq	2944032(%rsp), %r10
	leaq	2946048(%rsp), %rdi
	leaq	96(%rsp), %r11
	leaq	-504(%rsp), %rsp
	call	L_commit_verify$1
Lverify_picnic3_jazz$62:
	leaq	504(%rsp), %rsp
Lverify_picnic3_jazz$61:
	movw	3684580(%rsp), %ax
	movzwq	%ax, %rax
	imulq	$64, %rax, %rax
	movq	2943944(%rsp), %rsi
	movq	2943936(%rsp), %rcx
	imulq	$1024, %rsi, %rsi
	addq	%rax, %rsi
	imulq	$480, %rcx, %rax
	addq	$416, %rax
	leaq	3069152(%rsp), %rdx
	leaq	2946048(%rsp), %rcx
	call	L_copy_unnopened_party_commit$1
Lverify_picnic3_jazz$60:
	movq	2943936(%rsp), %rcx
	incq	%rcx
	movq	%rcx, 2943936(%rsp)
	jmp 	Lverify_picnic3_jazz$53
Lverify_picnic3_jazz$52:
	leaq	8832(%rsp), %rdx
	leaq	160(%rsp), %r10
	leaq	-24(%rsp), %rsp
	call	L__computeAuxTape_aux$1
Lverify_picnic3_jazz$59:
	leaq	24(%rsp), %rsp
	movq	2943944(%rsp), %rax
	movw	3684578(%rsp), %si
	movw	$0, %dx
	movq	$15, %rcx
	imulq	$32, %rcx, %rcx
	imulq	$1024, %rax, %r8
	leaq	3069152(%rsp), %rdi
	leaq	2944032(%rsp), %rax
	leaq	96(%rsp), %r11
	leaq	-1272(%rsp), %rsp
	call	L_commit_x4$1
Lverify_picnic3_jazz$58:
	leaq	1272(%rsp), %rsp
	movq	2943944(%rsp), %rax
	movw	3684578(%rsp), %si
	movw	$4, %dx
	movq	$15, %rcx
	addq	$4, %rcx
	imulq	$32, %rcx, %rcx
	imulq	$1024, %rax, %r8
	addq	$256, %r8
	leaq	3069152(%rsp), %rdi
	leaq	2944032(%rsp), %rax
	leaq	96(%rsp), %r11
	leaq	-1272(%rsp), %rsp
	call	L_commit_x4$1
Lverify_picnic3_jazz$57:
	leaq	1272(%rsp), %rsp
	movq	2943944(%rsp), %rax
	movw	3684578(%rsp), %si
	movw	$8, %dx
	movq	$15, %rcx
	addq	$8, %rcx
	imulq	$32, %rcx, %rcx
	imulq	$1024, %rax, %r8
	addq	$512, %r8
	leaq	3069152(%rsp), %rdi
	leaq	2944032(%rsp), %rax
	leaq	96(%rsp), %r11
	leaq	-1272(%rsp), %rsp
	call	L_commit_x4$1
Lverify_picnic3_jazz$56:
	leaq	1272(%rsp), %rsp
	movq	2943944(%rsp), %rax
	movw	3684578(%rsp), %si
	movw	$12, %dx
	movq	$15, %rcx
	addq	$12, %rcx
	imulq	$32, %rcx, %rcx
	imulq	$1024, %rax, %r8
	addq	$768, %r8
	leaq	3069152(%rsp), %rdi
	leaq	2944032(%rsp), %rax
	leaq	96(%rsp), %r11
	leaq	-1272(%rsp), %rsp
	call	L_commit_x4$1
Lverify_picnic3_jazz$55:
	leaq	1272(%rsp), %rsp
	movq	2943944(%rsp), %rax
	movw	$15, %dx
	movq	$15, %rcx
	addq	$15, %rcx
	imulq	$32, %rcx, %rcx
	movq	%rax, %r8
	imulq	$1024, %r8, %r8
	addq	$960, %r8
	leaq	3069152(%rsp), %rdi
	leaq	2944032(%rsp), %r10
	leaq	8832(%rsp), %r9
	leaq	96(%rsp), %r11
	leaq	-536(%rsp), %rsp
	call	L_commit$1
Lverify_picnic3_jazz$54:
	leaq	536(%rsp), %rsp
Lverify_picnic3_jazz$53:
	movq	2943936(%rsp), %rax
	movq	%rax, 2943920(%rsp)
	movq	2943928(%rsp), %rax
	cmpq	$600, %rax
	jnb 	Lverify_picnic3_jazz$47
	movq	2943928(%rsp), %rax
	incq	%rax
	andq	$3, %rax
	cmpq	$0, %rax
	jne 	Lverify_picnic3_jazz$48
	movq	2943928(%rsp), %rax
	addq	$-3, %rax
	leaq	32096(%rsp), %rdx
	leaq	3069152(%rsp), %rcx
	leaq	-5208(%rsp), %rsp
	call	L_commit_h_x4$1
Lverify_picnic3_jazz$51:
	leaq	5208(%rsp), %rsp
Lverify_picnic3_jazz$50:
	jmp 	Lverify_picnic3_jazz$48
Lverify_picnic3_jazz$47:
	leaq	32096(%rsp), %rdx
	leaq	3069152(%rsp), %rcx
	leaq	-1368(%rsp), %rsp
	call	L_commit_h2$1
Lverify_picnic3_jazz$49:
	leaq	1368(%rsp), %rsp
Lverify_picnic3_jazz$48:
	movq	2943928(%rsp), %rax
	imulq	$4608, %rax, %rax
	shrq	$3, %rax
	movq	$0, %rdi
	jmp 	Lverify_picnic3_jazz$45
Lverify_picnic3_jazz$46:
	movq	8832(%rsp,%rdi,8), %rcx
	movq	%rcx, 174496(%rsp,%rax,8)
	incq	%rax
	incq	%rdi
Lverify_picnic3_jazz$45:
	cmpq	$576, %rdi
	jb  	Lverify_picnic3_jazz$46
	movw	3684576(%rsp), %dx
	incw	%dx
	movw	%dx, 3684576(%rsp)
	movq	2943928(%rsp), %rax
	incq	%rax
Lverify_picnic3_jazz$43:
	cmpq	$601, %rax
	jb  	Lverify_picnic3_jazz$44
	movq	$0, %rax
	movw	$0, %si
	movq	$0, %rcx
	jmp 	Lverify_picnic3_jazz$39
Lverify_picnic3_jazz$40:
	leaq	3684726(%rsp), %r9
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$42:
	cmpb	$0, %r13b
	jne 	Lverify_picnic3_jazz$41
	movq	%rax, %rdi
	imulq	$8, %rdi, %rdi
	movq	%rcx, 2978688(%rsp,%rdi,8)
	incq	%rdi
	movq	%rcx, 2978688(%rsp,%rdi,8)
	incq	%rdi
	movq	%rcx, 2978688(%rsp,%rdi,8)
	incq	%rdi
	movq	%rcx, 2978688(%rsp,%rdi,8)
	incq	%rdi
	movq	%rcx, 2978688(%rsp,%rdi,8)
	incq	%rdi
	movq	%rcx, 2978688(%rsp,%rdi,8)
	incq	%rdi
	movq	%rcx, 2978688(%rsp,%rdi,8)
	incq	%rdi
	movq	%rcx, 2978688(%rsp,%rdi,8)
Lverify_picnic3_jazz$41:
	incw	%si
	incq	%rax
Lverify_picnic3_jazz$39:
	cmpq	$601, %rax
	jb  	Lverify_picnic3_jazz$40
	movq	$0, %rsi
	jmp 	Lverify_picnic3_jazz$29
Lverify_picnic3_jazz$30:
	movw	3684726(%rsp,%rsi,2), %ax
	movw	%ax, 3684576(%rsp)
	movw	3684590(%rsp,%rsi,2), %ax
	movw	%ax, 3684580(%rsp)
	movq	%rsi, 2943920(%rsp)
	movw	3684576(%rsp), %ax
	movzwq	%ax, %rax
	imulq	$4608, %rax, %rdx
	movw	3684576(%rsp), %si
	leaq	3684726(%rsp), %rcx
	call	L_get_orderChallengeC$1
Lverify_picnic3_jazz$38:
	movq	%rax, 2943904(%rsp)
	imulq	$480, %rax, %rax
	addq	$128, %rax
	leaq	174496(%rsp), %r9
	leaq	2946048(%rsp), %r10
	call	L_setAuxBits$1
Lverify_picnic3_jazz$37:
	movw	3684576(%rsp), %ax
	movzwq	%ax, %rax
	imulq	$4608, %rax, %rax
	movw	3684580(%rsp), %cx
	movzwq	%cx, %rdi
	imulq	$256, %rdi, %rdi
	addq	%rdi, %rax
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$0, %rdi
	jmp 	Lverify_picnic3_jazz$35
Lverify_picnic3_jazz$36:
	vmovdqu	%ymm0, 174496(%rsp,%rax)
	addq	$32, %rax
	addq	$32, %rdi
Lverify_picnic3_jazz$35:
	cmpq	$256, %rdi
	jb  	Lverify_picnic3_jazz$36
	vmovdqu	%ymm0, 6784(%rsp)
	vmovdqu	%ymm0, 6816(%rsp)
	vmovdqu	%ymm0, 6848(%rsp)
	vmovdqu	%ymm0, 6880(%rsp)
	vmovdqu	%ymm0, 6912(%rsp)
	vmovdqu	%ymm0, 6944(%rsp)
	vmovdqu	%ymm0, 6976(%rsp)
	vmovdqu	%ymm0, 7008(%rsp)
	vmovdqu	%ymm0, 7040(%rsp)
	vmovdqu	%ymm0, 7072(%rsp)
	vmovdqu	%ymm0, 7104(%rsp)
	vmovdqu	%ymm0, 7136(%rsp)
	vmovdqu	%ymm0, 7168(%rsp)
	vmovdqu	%ymm0, 7200(%rsp)
	vmovdqu	%ymm0, 7232(%rsp)
	vmovdqu	%ymm0, 7264(%rsp)
	vmovdqu	%ymm0, 7296(%rsp)
	vmovdqu	%ymm0, 7328(%rsp)
	vmovdqu	%ymm0, 7360(%rsp)
	vmovdqu	%ymm0, 7392(%rsp)
	vmovdqu	%ymm0, 7424(%rsp)
	vmovdqu	%ymm0, 7456(%rsp)
	vmovdqu	%ymm0, 7488(%rsp)
	vmovdqu	%ymm0, 7520(%rsp)
	vmovdqu	%ymm0, 7552(%rsp)
	vmovdqu	%ymm0, 7584(%rsp)
	vmovdqu	%ymm0, 7616(%rsp)
	vmovdqu	%ymm0, 7648(%rsp)
	vmovdqu	%ymm0, 7680(%rsp)
	vmovdqu	%ymm0, 7712(%rsp)
	vmovdqu	%ymm0, 7744(%rsp)
	vmovdqu	%ymm0, 7776(%rsp)
	vmovdqu	%ymm0, 7808(%rsp)
	vmovdqu	%ymm0, 7840(%rsp)
	vmovdqu	%ymm0, 7872(%rsp)
	vmovdqu	%ymm0, 7904(%rsp)
	vmovdqu	%ymm0, 7936(%rsp)
	vmovdqu	%ymm0, 7968(%rsp)
	vmovdqu	%ymm0, 8000(%rsp)
	vmovdqu	%ymm0, 8032(%rsp)
	vmovdqu	%ymm0, 8064(%rsp)
	vmovdqu	%ymm0, 8096(%rsp)
	vmovdqu	%ymm0, 8128(%rsp)
	vmovdqu	%ymm0, 8160(%rsp)
	vmovdqu	%ymm0, 8192(%rsp)
	vmovdqu	%ymm0, 8224(%rsp)
	vmovdqu	%ymm0, 8256(%rsp)
	vmovdqu	%ymm0, 8288(%rsp)
	vmovdqu	%ymm0, 8320(%rsp)
	vmovdqu	%ymm0, 8352(%rsp)
	vmovdqu	%ymm0, 8384(%rsp)
	vmovdqu	%ymm0, 8416(%rsp)
	vmovdqu	%ymm0, 8448(%rsp)
	vmovdqu	%ymm0, 8480(%rsp)
	vmovdqu	%ymm0, 8512(%rsp)
	vmovdqu	%ymm0, 8544(%rsp)
	vmovdqu	%ymm0, 8576(%rsp)
	vmovdqu	%ymm0, 8608(%rsp)
	vmovdqu	%ymm0, 8640(%rsp)
	vmovdqu	%ymm0, 8672(%rsp)
	vmovdqu	%ymm0, 8704(%rsp)
	vmovdqu	%ymm0, 8736(%rsp)
	vmovdqu	%ymm0, 8768(%rsp)
	vmovdqu	%ymm0, 8800(%rsp)
	movw	3684580(%rsp), %ax
	movzwq	%ax, %rax
	imulq	$128, %rax, %r8
	movq	2943904(%rsp), %rax
	imulq	$480, %rax, %rax
	addq	$288, %rax
	leaq	6784(%rsp), %rdx
	leaq	2946048(%rsp), %rcx
	call	L_copy_msg_from_proofs_to_msgs$1
Lverify_picnic3_jazz$34:
	movq	2943904(%rsp), %rax
	imulq	$480, %rax, %rax
	addq	$256, %rax
	leaq	160(%rsp), %r9
	leaq	2946048(%rsp), %rcx
	call	L_mzd_from_char_array_2$1
Lverify_picnic3_jazz$33:
	movw	3684576(%rsp), %ax
	movzwq	%ax, %rsi
	movw	3684580(%rsp), %ax
	movzwq	%ax, %r8
	leaq	160(%rsp), %rcx
	leaq	174496(%rsp), %rdx
	leaq	6784(%rsp), %rax
	leaq	128(%rsp), %rdi
	imulq	$4608, %rsi, %rsi
	movq	%rsi, %r9
	movq	$0, %rsi
	leaq	-504(%rsp), %rsp
	call	L_simulateOnline$1
Lverify_picnic3_jazz$32:
	leaq	504(%rsp), %rsp
	movq	2943904(%rsp), %rax
	imulq	$480, %rax, %rcx
	addq	$256, %rcx
	movw	3684576(%rsp), %ax
	movzwq	%ax, %rax
	imulq	$64, %rax, %rax
	leaq	2978688(%rsp), %rdx
	leaq	2946048(%rsp), %r10
	leaq	6784(%rsp), %rdi
	leaq	-344(%rsp), %rsp
	call	L_commit_v_verify$1
Lverify_picnic3_jazz$31:
	leaq	344(%rsp), %rsp
	movq	2943920(%rsp), %rsi
	incq	%rsi
Lverify_picnic3_jazz$29:
	cmpq	$68, %rsi
	jb  	Lverify_picnic3_jazz$30
	movq	$0, 2943920(%rsp)
	movw	$0, %si
	jmp 	Lverify_picnic3_jazz$23
Lverify_picnic3_jazz$24:
	leaq	3684726(%rsp), %r9
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$28:
	cmpb	$1, %r13b
	jne 	Lverify_picnic3_jazz$25
	movzwq	%si, %rax
	movb	2911(%rsp,%rax), %cl
	cmpb	$1, %cl
	jne 	Lverify_picnic3_jazz$27
	movq	$1, 2943920(%rsp)
Lverify_picnic3_jazz$27:
	movq	%rax, %rcx
	imulq	$64, %rcx, %rcx
	movq	$1023, %r8
	addq	%rax, %r8
	imulq	$64, %r8, %r8
	leaq	70560(%rsp), %rdx
	leaq	2978688(%rsp), %r9
	call	L__copy_leaf_to_tree$1
Lverify_picnic3_jazz$26:
	movb	$1, 2911(%rsp,%rax)
Lverify_picnic3_jazz$25:
	incw	%si
Lverify_picnic3_jazz$23:
	cmpw	$601, %si
	jb  	Lverify_picnic3_jazz$24
	movq	$1624, %rsi
	jmp 	Lverify_picnic3_jazz$9
Lverify_picnic3_jazz$10:
	movq	%rsi, 2943904(%rsp)
	movq	%rsi, %rax
	leaq	256(%rsp), %rdx
	movb	$0, %cl
	cmpq	$1624, %rax
	jnb 	Lverify_picnic3_jazz$22
	movb	(%rdx,%rax), %cl
Lverify_picnic3_jazz$22:
	cmpb	$1, %cl
	jne 	Lverify_picnic3_jazz$11
	movq	%rsi, %rdi
	cmpq	$0, %rdi
	je  	Lverify_picnic3_jazz$21
	incq	%rdi
	shrq	$1, %rdi
	decq	%rdi
Lverify_picnic3_jazz$21:
	movb	1888(%rsp,%rdi), %cl
	cmpb	$0, %cl
	jne 	Lverify_picnic3_jazz$11
	movq	%rdi, %rax
	shlq	$1, %rax
	incq	%rax
	movb	1888(%rsp,%rax), %cl
	cmpb	$1, %cl
	jne 	Lverify_picnic3_jazz$11
	incq	%rax
	movq	%rax, %rcx
	leaq	256(%rsp), %rdx
	movb	$0, %r11b
	cmpq	$1624, %rcx
	jnb 	Lverify_picnic3_jazz$20
	movb	(%rdx,%rcx), %r11b
Lverify_picnic3_jazz$20:
	cmpb	$1, %r11b
	je  	Lverify_picnic3_jazz$16
	movq	$1, %rax
	jmp 	Lverify_picnic3_jazz$17
Lverify_picnic3_jazz$16:
	movb	1888(%rsp,%rax), %cl
	cmpb	$0, %cl
	je  	Lverify_picnic3_jazz$18
	movq	$1, %rax
	jmp 	Lverify_picnic3_jazz$17
Lverify_picnic3_jazz$18:
	movq	$0, %rax
Lverify_picnic3_jazz$19:
Lverify_picnic3_jazz$17:
	cmpq	$1, %rax
	jne 	Lverify_picnic3_jazz$11
	leaq	96(%rsp), %r11
	movw	%di, %ax
	leaq	70560(%rsp), %rdx
	leaq	1888(%rsp), %r10
	leaq	256(%rsp), %rcx
	leaq	-440(%rsp), %rsp
	call	L_computeParentHash$1
Lverify_picnic3_jazz$15:
	leaq	440(%rsp), %rsp
Lverify_picnic3_jazz$14:
Lverify_picnic3_jazz$13:
Lverify_picnic3_jazz$12:
Lverify_picnic3_jazz$11:
	movq	2943904(%rsp), %rsi
	decq	%rsi
Lverify_picnic3_jazz$9:
	cmpq	$0, %rsi
	jnbe	Lverify_picnic3_jazz$10
	movb	1888(%rsp), %cl
	cmpb	$0, %cl
	je  	Lverify_picnic3_jazz$7
	movq	2943920(%rsp), %rax
	jmp 	Lverify_picnic3_jazz$8
Lverify_picnic3_jazz$7:
	movq	$2, %rax
Lverify_picnic3_jazz$8:
	cmpq	$0, %rax
	je  	Lverify_picnic3_jazz$3
	movq	$1, %r8
	jmp 	Lverify_picnic3_jazz$4
Lverify_picnic3_jazz$3:
	leaq	192(%rsp), %rdi
	leaq	32096(%rsp), %rdx
	leaq	70560(%rsp), %r9
	leaq	96(%rsp), %rbx
	leaq	32(%rsp), %r10
	leaq	64(%rsp), %rsi
	movq	%rsp, %rbp
	leaq	-248(%rsp), %rsp
	call	L_HCP_verify$1
Lverify_picnic3_jazz$6:
	leaq	248(%rsp), %rsp
	leaq	2943968(%rsp), %rcx
	leaq	192(%rsp), %rax
	call	L_memcmp$1
Lverify_picnic3_jazz$5:
Lverify_picnic3_jazz$4:
	movq	2943912(%rsp), %r9
	movq	%r8, (%r9)
Lverify_picnic3_jazz$2:
Lverify_picnic3_jazz$1:
	movq	3685992(%rsp), %r15
	movq	3686000(%rsp), %r14
	movq	3686008(%rsp), %r13
	movq	3686016(%rsp), %r12
	movq	3686024(%rsp), %rbp
	movq	3686032(%rsp), %rbx
	movq	3686040(%rsp), %rsp
	ret
L_memcmp$1:
	movq	$0, %r8
	movq	$0, %rsi
	jmp 	L_memcmp$2
L_memcmp$3:
	movq	(%rcx,%rsi,8), %rdx
	movq	(%rax,%rsi,8), %rdi
	subq	%rdi, %rdx
	cmpq	$0, %rdx
	je  	L_memcmp$4
	movq	$3, %r8
	movq	$64, %rsi
	jmp 	L_memcmp$2
L_memcmp$4:
	incq	%rsi
L_memcmp$5:
L_memcmp$2:
	cmpq	$8, %rsi
	jb  	L_memcmp$3
	ret
_sign_picnic3_jazz:
	movq	%rsp, %rax
	leaq	-5509464(%rsp), %rsp
	andq	$-32, %rsp
	movq	%r15, 5509408(%rsp)
	movq	%r14, 5509416(%rsp)
	movq	%r13, 5509424(%rsp)
	movq	%r12, 5509432(%rsp)
	movq	%rbp, 5509440(%rsp)
	movq	%rbx, 5509448(%rsp)
	movq	%rax, 5509456(%rsp)
	movq	%rsi, 4186688(%rsp)
	movq	%rdi, 4186696(%rsp)
	movq	%rdx, 4186704(%rsp)
	movq	%r8, 4186712(%rsp)
	movq	4186688(%rsp), %rax
	leaq	32(%rsp), %rdi
	call	L_memcpy_4Words_from_reg$1
Lsign_picnic3_jazz$87:
	movq	4186696(%rsp), %rax
	leaq	64(%rsp), %rdi
	call	L_memcpy_4Words_from_reg$1
Lsign_picnic3_jazz$86:
	movq	4186704(%rsp), %rax
	leaq	96(%rsp), %rdi
	call	L_memcpy_4Words_from_reg$1
Lsign_picnic3_jazz$85:
	movq	$0, %rax
	jmp 	Lsign_picnic3_jazz$83
Lsign_picnic3_jazz$84:
	movb	(%rcx,%rax), %dil
	movb	%dil, (%rsp,%rax)
	incq	%rax
Lsign_picnic3_jazz$83:
	cmpq	$13, %rax
	jb  	Lsign_picnic3_jazz$84
	leaq	128(%rsp), %rdx
	leaq	64(%rsp), %rax
	leaq	32(%rsp), %rdi
	leaq	96(%rsp), %rsi
	movq	%rsp, %rcx
	leaq	-312(%rsp), %rsp
	call	L_computeSaltAndRootSeed$1
Lsign_picnic3_jazz$82:
	leaq	312(%rsp), %rsp
	leaq	4244448(%rsp), %rdx
	leaq	5088(%rsp), %r10
	leaq	3456(%rsp), %rax
	call	L_createTree_1$1
Lsign_picnic3_jazz$81:
	leaq	4244448(%rsp), %rdx
	leaq	160(%rsp), %rax
	call	L_memcpy_4Words$1
Lsign_picnic3_jazz$80:
	movb	$1, 5088(%rsp)
	movw	$0, %r9w
	leaq	4244448(%rsp), %rdx
	leaq	5088(%rsp), %r10
	leaq	3456(%rsp), %rdi
	leaq	128(%rsp), %r11
	leaq	-344(%rsp), %rsp
	call	L_expandSeeds_1$1
Lsign_picnic3_jazz$79:
	leaq	344(%rsp), %rsp
	leaq	4186720(%rsp), %r9
	leaq	96(%rsp), %rcx
	call	L_mzd_from_char_array$1
Lsign_picnic3_jazz$78:
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$18631, %rax
	addq	$-7, %rax
	movq	$0, %rcx
	jmp 	Lsign_picnic3_jazz$76
Lsign_picnic3_jazz$77:
	vmovdqu	%ymm0, 25376(%rsp,%rcx)
	addq	$32, %rcx
Lsign_picnic3_jazz$76:
	cmpq	%rax, %rcx
	jb  	Lsign_picnic3_jazz$77
	movl	$0, 25376(%rsp,%rcx)
	addq	$4, %rcx
	movw	$0, 25376(%rsp,%rcx)
	addq	$2, %rcx
	movb	$0, 25376(%rsp,%rcx)
	movq	$0, %rcx
	jmp 	Lsign_picnic3_jazz$74
Lsign_picnic3_jazz$75:
	vmovdqu	%ymm0, 6720(%rsp,%rcx)
	addq	$32, %rcx
Lsign_picnic3_jazz$74:
	cmpq	%rax, %rcx
	jb  	Lsign_picnic3_jazz$75
	movl	$0, 6720(%rsp,%rcx)
	addq	$4, %rcx
	movw	$0, 6720(%rsp,%rcx)
	addq	$2, %rcx
	movb	$0, 6720(%rsp,%rcx)
	movq	$600, %rax
	jmp 	Lsign_picnic3_jazz$63
Lsign_picnic3_jazz$64:
	imulq	$31, %rax, %rcx
	movq	%rax, 4186704(%rsp)
	movq	%rcx, %rsi
	movq	%rcx, %rax
	movq	%rcx, 4186696(%rsp)
	addq	$31, %rax
	decq	%rax
	addq	$15, %rsi
	jmp 	Lsign_picnic3_jazz$72
Lsign_picnic3_jazz$73:
	movb	$1, 6720(%rsp,%rax)
	decq	%rax
Lsign_picnic3_jazz$72:
	cmpq	%rsi, %rax
	jnbe	Lsign_picnic3_jazz$73
	movq	$15, %rcx
	jmp 	Lsign_picnic3_jazz$65
Lsign_picnic3_jazz$66:
	movq	%rcx, 4186688(%rsp)
	movq	%rcx, %rax
	shlq	$1, %rax
	incq	%rax
	addq	4186696(%rsp), %rax
	movb	$0, %cl
	leaq	6720(%rsp), %rdx
	call	L__exists_22$1
Lsign_picnic3_jazz$71:
	cmpb	$1, %cl
	je  	Lsign_picnic3_jazz$67
	incq	%rax
	leaq	6720(%rsp), %rdx
	call	L__exists_22$1
Lsign_picnic3_jazz$70:
	cmpb	$1, %cl
	jne 	Lsign_picnic3_jazz$68
	movq	4186696(%rsp), %rcx
	addq	4186688(%rsp), %rcx
	movb	$1, 6720(%rsp,%rcx)
Lsign_picnic3_jazz$69:
	jmp 	Lsign_picnic3_jazz$68
Lsign_picnic3_jazz$67:
	movq	4186696(%rsp), %rcx
	addq	4186688(%rsp), %rcx
	movb	$1, 6720(%rsp,%rcx)
Lsign_picnic3_jazz$68:
	movq	4186688(%rsp), %rcx
	decq	%rcx
Lsign_picnic3_jazz$65:
	cmpq	$0, %rcx
	jnbe	Lsign_picnic3_jazz$66
	addq	4186696(%rsp), %rcx
	movb	$1, 6720(%rsp,%rcx)
	movq	4186704(%rsp), %rax
	decq	%rax
Lsign_picnic3_jazz$63:
	cmpq	$0, %rax
	jnbe	Lsign_picnic3_jazz$64
	movq	$31, %rax
	decq	%rax
	movq	$15, %rcx
	jmp 	Lsign_picnic3_jazz$61
Lsign_picnic3_jazz$62:
	movb	$1, 6720(%rsp,%rax)
	decq	%rax
Lsign_picnic3_jazz$61:
	cmpq	%rcx, %rax
	jnbe	Lsign_picnic3_jazz$62
	jmp 	Lsign_picnic3_jazz$54
Lsign_picnic3_jazz$55:
	movq	%rcx, 4186704(%rsp)
	movq	%rcx, %rax
	shlq	$1, %rax
	incq	%rax
	movb	$0, %cl
	leaq	6720(%rsp), %rdx
	call	L__exists_22$1
Lsign_picnic3_jazz$60:
	cmpb	$1, %cl
	je  	Lsign_picnic3_jazz$56
	incq	%rax
	leaq	6720(%rsp), %rdx
	call	L__exists_22$1
Lsign_picnic3_jazz$59:
	cmpb	$1, %cl
	jne 	Lsign_picnic3_jazz$57
	movq	4186704(%rsp), %rcx
	movb	$1, 6720(%rsp,%rcx)
Lsign_picnic3_jazz$58:
	jmp 	Lsign_picnic3_jazz$57
Lsign_picnic3_jazz$56:
	movq	4186704(%rsp), %rcx
	movb	$1, 6720(%rsp,%rcx)
Lsign_picnic3_jazz$57:
	movq	4186704(%rsp), %rcx
	decq	%rcx
Lsign_picnic3_jazz$54:
	cmpq	$0, %rcx
	jnbe	Lsign_picnic3_jazz$55
	movb	$1, 6720(%rsp,%rcx)
	movq	$0, %rax
	jmp 	Lsign_picnic3_jazz$52
Lsign_picnic3_jazz$53:
	imulq	$31, %rax, %rcx
	movb	$1, 25376(%rsp,%rcx)
	incq	%rax
Lsign_picnic3_jazz$52:
	cmpq	$601, %rax
	jb  	Lsign_picnic3_jazz$53
	movq	$0, %rcx
	jmp 	Lsign_picnic3_jazz$42
Lsign_picnic3_jazz$43:
	movq	%rcx, 4186704(%rsp)
	movq	%rcx, 4186696(%rsp)
	movq	%rcx, %rax
	imulq	$992, %rax, %rax
	addq	$1023, %rcx
	imulq	$32, %rcx, %rcx
	movq	4244448(%rsp,%rcx), %rdx
	movq	%rdx, 4296448(%rsp,%rax)
	movq	4244456(%rsp,%rcx), %rdx
	movq	%rdx, 4296456(%rsp,%rax)
	movq	4244464(%rsp,%rcx), %rdx
	movq	%rdx, 4296464(%rsp,%rax)
	movq	4244472(%rsp,%rcx), %rcx
	movq	%rcx, 4296472(%rsp,%rax)
	movq	4186696(%rsp), %rax
	leaq	4296448(%rsp), %rdx
	leaq	25376(%rsp), %r10
	leaq	6720(%rsp), %rdi
	leaq	128(%rsp), %r11
	leaq	-376(%rsp), %rsp
	call	L_expandSeeds_22$1
Lsign_picnic3_jazz$51:
	leaq	376(%rsp), %rsp
	movq	4186704(%rsp), %rax
	leaq	1417280(%rsp), %rdi
	leaq	4296448(%rsp), %rcx
	leaq	128(%rsp), %r11
	leaq	-24(%rsp), %rsp
	call	L_createRandomTapes$1
Lsign_picnic3_jazz$50:
	leaq	24(%rsp), %rsp
	movq	4186704(%rsp), %rdx
	leaq	1417280(%rsp), %r9
	leaq	4186752(%rsp), %rax
	leaq	64(%rsp), %rdi
	leaq	-88(%rsp), %rsp
	call	L_computeAuxTape$1
Lsign_picnic3_jazz$49:
	leaq	88(%rsp), %rsp
	movq	4186704(%rsp), %rcx
	movw	%cx, %ax
	movw	$0, %dx
	imulq	$992, %rcx, %rcx
	addq	$480, %rcx
	movq	4186704(%rsp), %r8
	imulq	$16, %r8, %r8
	imulq	$64, %r8, %r8
	leaq	4892640(%rsp), %rdi
	leaq	4296448(%rsp), %r10
	leaq	128(%rsp), %r11
	leaq	-1272(%rsp), %rsp
	call	L_commit2_x4$1
Lsign_picnic3_jazz$48:
	leaq	1272(%rsp), %rsp
	movq	4186704(%rsp), %rcx
	movw	%cx, %ax
	movw	$4, %dx
	imulq	$992, %rcx, %rcx
	addq	$608, %rcx
	movq	4186704(%rsp), %r8
	imulq	$16, %r8, %r8
	imulq	$64, %r8, %r8
	addq	$256, %r8
	leaq	4892640(%rsp), %rdi
	leaq	4296448(%rsp), %r10
	leaq	128(%rsp), %r11
	leaq	-1272(%rsp), %rsp
	call	L_commit2_x4$1
Lsign_picnic3_jazz$47:
	leaq	1272(%rsp), %rsp
	movq	4186704(%rsp), %rcx
	movw	%cx, %ax
	movw	$8, %dx
	imulq	$992, %rcx, %rcx
	addq	$736, %rcx
	movq	4186704(%rsp), %r8
	imulq	$16, %r8, %r8
	imulq	$64, %r8, %r8
	addq	$512, %r8
	leaq	4892640(%rsp), %rdi
	leaq	4296448(%rsp), %r10
	leaq	128(%rsp), %r11
	leaq	-1272(%rsp), %rsp
	call	L_commit2_x4$1
Lsign_picnic3_jazz$46:
	leaq	1272(%rsp), %rsp
	movq	4186704(%rsp), %rcx
	movw	%cx, %ax
	movw	$12, %dx
	imulq	$992, %rcx, %rcx
	addq	$864, %rcx
	movq	4186704(%rsp), %r8
	imulq	$16, %r8, %r8
	imulq	$64, %r8, %r8
	addq	$768, %r8
	leaq	4892640(%rsp), %rdi
	leaq	4296448(%rsp), %r10
	leaq	128(%rsp), %r11
	leaq	-1272(%rsp), %rsp
	call	L_commit2_x4$1
Lsign_picnic3_jazz$45:
	leaq	1272(%rsp), %rsp
	movq	4186704(%rsp), %rsi
	movw	$15, %dx
	movq	%rsi, %rcx
	imulq	$992, %rcx, %rcx
	addq	$960, %rcx
	movq	4186704(%rsp), %rax
	imulq	$16, %rax, %rax
	imulq	$64, %rax, %r8
	addq	$960, %r8
	leaq	4892640(%rsp), %rdi
	leaq	4296448(%rsp), %r10
	leaq	1417280(%rsp), %rax
	leaq	128(%rsp), %r11
	leaq	-536(%rsp), %rsp
	call	L_commit2$1
Lsign_picnic3_jazz$44:
	leaq	536(%rsp), %rsp
	movq	4186704(%rsp), %rcx
	incq	%rcx
Lsign_picnic3_jazz$42:
	cmpq	$601, %rcx
	jb  	Lsign_picnic3_jazz$43
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$0, %rax
	jmp 	Lsign_picnic3_jazz$40
Lsign_picnic3_jazz$41:
	vmovdqu	%ymm0, 186432(%rsp,%rax)
	addq	$32, %rax
Lsign_picnic3_jazz$40:
	cmpq	$1230848, %rax
	jb  	Lsign_picnic3_jazz$41
	movq	$0, %rax
	jmp 	Lsign_picnic3_jazz$36
Lsign_picnic3_jazz$37:
	movq	%rax, 4186704(%rsp)
	movq	4186704(%rsp), %rdx
	imulq	$32, %rdx, %rdx
	leaq	64(%rsp), %r9
	leaq	4186752(%rsp), %rcx
	call	L_masked_mzd_from_char_array$1
Lsign_picnic3_jazz$39:
	movq	4186704(%rsp), %rax
	imulq	$2048, %rax, %rsi
	movq	4186704(%rsp), %rax
	imulq	$4608, %rax, %rcx
	movq	$16, %r8
	leaq	64(%rsp), %r9
	leaq	1417280(%rsp), %rdx
	leaq	186432(%rsp), %rax
	leaq	4186720(%rsp), %rdi
	leaq	-504(%rsp), %rsp
	call	L_simulateOnline2$1
Lsign_picnic3_jazz$38:
	leaq	504(%rsp), %rsp
	movq	4186704(%rsp), %rax
	incq	%rax
Lsign_picnic3_jazz$36:
	cmpq	$601, %rax
	jb  	Lsign_picnic3_jazz$37
	movq	$0, %rax
	jmp 	Lsign_picnic3_jazz$32
Lsign_picnic3_jazz$33:
	movq	%rax, 4186704(%rsp)
	imulq	$4, %rax, %rax
	leaq	44032(%rsp), %rdx
	leaq	4892640(%rsp), %rcx
	leaq	-5208(%rsp), %rsp
	call	L_commit_h_x4$1
Lsign_picnic3_jazz$35:
	leaq	5208(%rsp), %rsp
	movq	4186704(%rsp), %rax
	imulq	$4, %rax, %rax
	leaq	4205984(%rsp), %rdx
	leaq	4186752(%rsp), %rcx
	leaq	186432(%rsp), %rdi
	leaq	-9464(%rsp), %rsp
	call	L_commit_v_x4$1
Lsign_picnic3_jazz$34:
	leaq	9464(%rsp), %rsp
	movq	4186704(%rsp), %rax
	incq	%rax
Lsign_picnic3_jazz$32:
	cmpq	$150, %rax
	jb  	Lsign_picnic3_jazz$33
	movq	$600, %rax
	jmp 	Lsign_picnic3_jazz$28
Lsign_picnic3_jazz$29:
	movq	%rax, 4186704(%rsp)
	leaq	44032(%rsp), %rdx
	leaq	4892640(%rsp), %rcx
	leaq	-1368(%rsp), %rsp
	call	L_commit_h2$1
Lsign_picnic3_jazz$31:
	leaq	1368(%rsp), %rsp
	movq	4186704(%rsp), %rax
	leaq	4205984(%rsp), %rdx
	leaq	4186752(%rsp), %rcx
	leaq	186432(%rsp), %rdi
	leaq	-2424(%rsp), %rsp
	call	L_commit_v$1
Lsign_picnic3_jazz$30:
	leaq	2424(%rsp), %rsp
	movq	4186704(%rsp), %rax
	incq	%rax
Lsign_picnic3_jazz$28:
	cmpq	$601, %rax
	jb  	Lsign_picnic3_jazz$29
	leaq	82496(%rsp), %rdx
	leaq	1824(%rsp), %r10
	leaq	192(%rsp), %rax
	call	L_createTree_3$1
Lsign_picnic3_jazz$27:
	movq	$0, %rax
	jmp 	Lsign_picnic3_jazz$25
Lsign_picnic3_jazz$26:
	movq	$0, 82496(%rsp,%rax,8)
	incq	%rax
Lsign_picnic3_jazz$25:
	cmpq	$12992, %rax
	jb  	Lsign_picnic3_jazz$26
	movq	$1023, %rax
	movq	$0, %rsi
	movq	%rax, %rcx
	imulq	$8, %rax, %rax
	jmp 	Lsign_picnic3_jazz$21
Lsign_picnic3_jazz$22:
	movq	$0, %rdx
	jmp 	Lsign_picnic3_jazz$23
Lsign_picnic3_jazz$24:
	movq	4205984(%rsp,%rsi,8), %rdi
	movq	%rdi, 82496(%rsp,%rax,8)
	incq	%rax
	incq	%rsi
	incq	%rdx
Lsign_picnic3_jazz$23:
	cmpq	$8, %rdx
	jb  	Lsign_picnic3_jazz$24
	movb	$1, 1824(%rsp,%rcx)
	incq	%rcx
Lsign_picnic3_jazz$21:
	cmpq	$4808, %rsi
	jb  	Lsign_picnic3_jazz$22
	movq	$1623, %rsi
	jmp 	Lsign_picnic3_jazz$7
Lsign_picnic3_jazz$8:
	movq	%rsi, 4186704(%rsp)
	movq	%rsi, %rax
	leaq	192(%rsp), %rdx
	movb	$0, %cl
	cmpq	$1624, %rax
	jnb 	Lsign_picnic3_jazz$20
	movb	(%rdx,%rax), %cl
Lsign_picnic3_jazz$20:
	cmpb	$1, %cl
	jne 	Lsign_picnic3_jazz$9
	movq	%rsi, %rdi
	cmpq	$0, %rdi
	je  	Lsign_picnic3_jazz$19
	incq	%rdi
	shrq	$1, %rdi
	decq	%rdi
Lsign_picnic3_jazz$19:
	movb	1824(%rsp,%rdi), %cl
	cmpb	$0, %cl
	jne 	Lsign_picnic3_jazz$9
	movq	%rdi, %rax
	shlq	$1, %rax
	incq	%rax
	movb	1824(%rsp,%rax), %cl
	cmpb	$1, %cl
	jne 	Lsign_picnic3_jazz$9
	incq	%rax
	movq	%rax, %rcx
	leaq	192(%rsp), %rdx
	movb	$0, %r11b
	cmpq	$1624, %rcx
	jnb 	Lsign_picnic3_jazz$18
	movb	(%rdx,%rcx), %r11b
Lsign_picnic3_jazz$18:
	cmpb	$1, %r11b
	je  	Lsign_picnic3_jazz$14
	movq	$1, %rax
	jmp 	Lsign_picnic3_jazz$15
Lsign_picnic3_jazz$14:
	movb	1824(%rsp,%rax), %cl
	cmpb	$0, %cl
	je  	Lsign_picnic3_jazz$16
	movq	$1, %rax
	jmp 	Lsign_picnic3_jazz$15
Lsign_picnic3_jazz$16:
	movq	$0, %rax
Lsign_picnic3_jazz$17:
Lsign_picnic3_jazz$15:
	cmpq	$1, %rax
	jne 	Lsign_picnic3_jazz$9
	leaq	128(%rsp), %r11
	movw	%di, %ax
	leaq	82496(%rsp), %rdx
	leaq	1824(%rsp), %r10
	leaq	192(%rsp), %rcx
	leaq	-440(%rsp), %rsp
	call	L_computeParentHash$1
Lsign_picnic3_jazz$13:
	leaq	440(%rsp), %rsp
Lsign_picnic3_jazz$12:
Lsign_picnic3_jazz$11:
Lsign_picnic3_jazz$10:
Lsign_picnic3_jazz$9:
	movq	4186704(%rsp), %rsi
	decq	%rsi
Lsign_picnic3_jazz$7:
	cmpq	$0, %rsi
	jnbe	Lsign_picnic3_jazz$8
	movq	4186712(%rsp), %r8
	leaq	44032(%rsp), %rdx
	leaq	82496(%rsp), %r9
	leaq	128(%rsp), %rbx
	leaq	32(%rsp), %rdi
	leaq	96(%rsp), %rsi
	movq	%rsp, %rbp
	leaq	5508200(%rsp), %rcx
	leaq	5508064(%rsp), %rax
	leaq	-280(%rsp), %rsp
	call	L_HCP$1
Lsign_picnic3_jazz$6:
	leaq	280(%rsp), %rsp
	leaq	128(%rsp), %rax
	call	L_memcpy_salt$1
Lsign_picnic3_jazz$5:
	leaq	5508200(%rsp), %rdx
	leaq	4244448(%rsp), %r9
	leaq	3456(%rsp), %rbx
	leaq	-38464(%rsp), %rsp
	call	L_revealSeeds$1
Lsign_picnic3_jazz$4:
	leaq	38464(%rsp), %rsp
	leaq	5508336(%rsp), %r11
	call	L__getMissingLeavesList$1
Lsign_picnic3_jazz$3:
	leaq	82496(%rsp), %r9
	leaq	192(%rsp), %rax
	leaq	5508336(%rsp), %r11
	leaq	-38464(%rsp), %rsp
	call	L_openMerkleTree$1
Lsign_picnic3_jazz$2:
	leaq	38464(%rsp), %rsp
	leaq	4296448(%rsp), %rcx
	leaq	6720(%rsp), %rax
	leaq	1417280(%rsp), %rdi
	leaq	128(%rsp), %r11
	leaq	4186752(%rsp), %r10
	leaq	186432(%rsp), %rsi
	leaq	5508200(%rsp), %rdx
	leaq	5508064(%rsp), %r9
	leaq	-1112(%rsp), %rsp
	call	L_assemble_proof$1
Lsign_picnic3_jazz$1:
	leaq	1112(%rsp), %rsp
	movq	5509408(%rsp), %r15
	movq	5509416(%rsp), %r14
	movq	5509424(%rsp), %r13
	movq	5509432(%rsp), %r12
	movq	5509440(%rsp), %rbp
	movq	5509448(%rsp), %rbx
	movq	5509456(%rsp), %rsp
	ret
_keyGen_jazz:
	movq	%rsp, %rax
	leaq	-136(%rsp), %rsp
	andq	$-32, %rsp
	movq	%r12, 104(%rsp)
	movq	%rbp, 112(%rsp)
	movq	%rbx, 120(%rsp)
	movq	%rax, 128(%rsp)
	movq	(%rdi), %rdx
	bswapq	%rdx
	movq	%rdx, 96(%rsp)
	movq	8(%rdi), %rdx
	bswapq	%rdx
	movq	%rdx, 88(%rsp)
	movq	16(%rdi), %rdx
	bswapq	%rdx
	movq	%rdx, 80(%rsp)
	movq	24(%rdi), %rdx
	bswapq	%rdx
	movq	%rdx, 72(%rsp)
	movq	64(%rdi), %rdx
	movq	%rdx, 32(%rsi)
	bswapq	%rdx
	movq	%rdx, 24(%rsp)
	movq	72(%rdi), %rdx
	movq	%rdx, 40(%rsi)
	bswapq	%rdx
	movq	%rdx, 16(%rsp)
	movq	80(%rdi), %rdx
	movq	%rdx, 48(%rsi)
	bswapq	%rdx
	movq	%rdx, 8(%rsp)
	movq	88(%rdi), %rdx
	movq	%rdx, 56(%rsi)
	bswapq	%rdx
	movq	%rdx, (%rsp)
	movq	%rsi, 64(%rsp)
	leaq	72(%rsp), %rcx
	movq	%rsp, %r10
	leaq	glob_data + 74176(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
LkeyGen_jazz$13:
	vmovdqu	(%rsp), %ymm0
	call	L__sbox_uint64_lowmc_256_256_4$1
LkeyGen_jazz$12:
	vmovdqu	%ymm0, (%rsp)
	movq	%rsp, %rcx
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %r10
	leaq	glob_data + 41408(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
LkeyGen_jazz$11:
	vmovdqu	32(%rsp), %ymm0
	vpxor	glob_data + 115136(%rip), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rsp)
	leaq	72(%rsp), %rcx
	movq	%rsp, %r10
	leaq	glob_data + 82368(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
LkeyGen_jazz$10:
	vmovdqu	(%rsp), %ymm0
	call	L__sbox_uint64_lowmc_256_256_4$1
LkeyGen_jazz$9:
	vmovdqu	%ymm0, (%rsp)
	movq	%rsp, %rcx
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %r10
	leaq	glob_data + 49600(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
LkeyGen_jazz$8:
	vmovdqu	32(%rsp), %ymm0
	vpxor	glob_data + 115168(%rip), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rsp)
	leaq	72(%rsp), %rcx
	movq	%rsp, %r10
	leaq	glob_data + 90560(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
LkeyGen_jazz$7:
	vmovdqu	(%rsp), %ymm0
	call	L__sbox_uint64_lowmc_256_256_4$1
LkeyGen_jazz$6:
	vmovdqu	%ymm0, (%rsp)
	movq	%rsp, %rcx
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %r10
	leaq	glob_data + 57792(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
LkeyGen_jazz$5:
	vmovdqu	32(%rsp), %ymm0
	vpxor	glob_data + 115200(%rip), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rsp)
	leaq	72(%rsp), %rcx
	movq	%rsp, %r10
	leaq	glob_data + 98752(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
LkeyGen_jazz$4:
	vmovdqu	(%rsp), %ymm0
	call	L__sbox_uint64_lowmc_256_256_4$1
LkeyGen_jazz$3:
	vmovdqu	%ymm0, (%rsp)
	movq	%rsp, %rcx
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %r10
	leaq	glob_data + 65984(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
LkeyGen_jazz$2:
	vmovdqu	32(%rsp), %ymm0
	vpxor	glob_data + 115232(%rip), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rsp)
	leaq	72(%rsp), %rcx
	movq	%rsp, %r10
	leaq	glob_data + 106944(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
LkeyGen_jazz$1:
	movq	64(%rsp), %rsi
	movq	24(%rsp), %rdx
	bswapq	%rdx
	movq	%rdx, (%rsi)
	movq	16(%rsp), %rdx
	bswapq	%rdx
	movq	%rdx, 8(%rsi)
	movq	8(%rsp), %rdx
	bswapq	%rdx
	movq	%rdx, 16(%rsi)
	movq	(%rsp), %rdx
	bswapq	%rdx
	movq	%rdx, 24(%rsi)
	movq	104(%rsp), %r12
	movq	112(%rsp), %rbp
	movq	120(%rsp), %rbx
	movq	128(%rsp), %rsp
	ret
L_simulateOnline2$1:
	shlq	$3, %rcx
	movq	%rcx, 416(%rsp)
	shlq	$3, %rsi
	movq	%rsi, 424(%rsp)
	movq	%r8, 432(%rsp)
	movq	(%r9), %rcx
	movq	%rcx, 472(%rsp)
	movq	8(%r9), %rcx
	movq	%rcx, 480(%rsp)
	movq	16(%r9), %rcx
	movq	%rcx, 488(%rsp)
	movq	24(%r9), %rcx
	movq	%rcx, 496(%rsp)
	movq	(%rdi), %rcx
	movq	%rcx, 32(%rsp)
	movq	8(%rdi), %rcx
	movq	%rcx, 40(%rsp)
	movq	16(%rdi), %rcx
	movq	%rcx, 48(%rsp)
	movq	24(%rdi), %rcx
	movq	%rcx, 56(%rsp)
	leaq	64(%rsp), %r10
	leaq	472(%rsp), %rcx
	leaq	glob_data + 74176(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline2$47:
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %r10
	leaq	32(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline2$46:
	movq	424(%rsp), %rcx
	movq	416(%rsp), %rsi
	movq	432(%rsp), %r8
	movq	%r8, 440(%rsp)
	movq	%rcx, 448(%rsp)
	movq	%rsi, 456(%rsp)
	vmovdqu	96(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm1
	vpand	glob_data + 115296(%rip), %ymm0, %ymm2
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpermq	$147, %ymm3, %ymm3
	vmovdqu	%ymm0, 32(%rsp)
	vpor	%ymm3, %ymm1, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpermq	$147, %ymm4, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vmovdqu	%ymm3, 128(%rsp)
	vpor	%ymm4, %ymm2, %ymm5
	vpand	%ymm5, %ymm0, %ymm1
	vpand	%ymm3, %ymm0, %ymm0
	vmovdqu	%ymm5, 160(%rsp)
	vmovdqu	%ymm0, 192(%rsp)
	vpand	%ymm5, %ymm3, %ymm0
	vmovdqu	%ymm1, 224(%rsp)
	vmovdqu	%ymm0, 256(%rsp)
	movq	$0, %rsi
	jmp 	L_simulateOnline2$38
L_simulateOnline2$39:
	movq	%rsi, 464(%rsp)
	movq	440(%rsp), %rcx
	cmpq	%rsi, %rcx
	je  	L_simulateOnline2$40
	movq	464(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	456(%rsp), %rsi
	leaq	384(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline2$45:
	vmovdqu	384(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm2
	vpand	glob_data + 115296(%rip), %ymm0, %ymm3
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm2, %ymm1
	vpsllq	$2, %ymm2, %ymm2
	vmovdqu	%ymm0, 352(%rsp)
	vpermq	$147, %ymm1, %ymm0
	vpor	%ymm0, %ymm2, %ymm2
	vpsrlq	$63, %ymm3, %ymm0
	vpermq	$147, %ymm0, %ymm0
	vpsllq	$1, %ymm3, %ymm3
	vmovdqu	%ymm2, 320(%rsp)
	vpor	%ymm0, %ymm3, %ymm3
	vmovdqu	%ymm3, 288(%rsp)
	movq	464(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	456(%rsp), %rsi
	addq	$255, %rsi
	leaq	384(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline2$44:
	vmovdqu	160(%rsp), %ymm0
	vmovdqu	128(%rsp), %ymm1
	vmovdqu	384(%rsp), %ymm6
	vmovdqu	288(%rsp), %ymm2
	vpand	glob_data + 115296(%rip), %ymm6, %ymm5
	vmovdqu	320(%rsp), %ymm3
	vpand	glob_data + 115328(%rip), %ymm6, %ymm4
	vpand	glob_data + 115264(%rip), %ymm6, %ymm6
	vpand	%ymm2, %ymm1, %ymm7
	vpsrlq	$63, %ymm5, %ymm8
	vpsllq	$1, %ymm5, %ymm5
	vpand	%ymm3, %ymm0, %ymm9
	vpsrlq	$62, %ymm4, %ymm10
	vpermq	$147, %ymm8, %ymm8
	vpxor	%ymm9, %ymm7, %ymm7
	vpor	%ymm8, %ymm5, %ymm5
	vpermq	$147, %ymm10, %ymm10
	vpxor	%ymm6, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rsp)
	vpsllq	$2, %ymm4, %ymm4
	vpxor	256(%rsp), %ymm7, %ymm6
	vpor	%ymm10, %ymm4, %ymm4
	vmovdqu	%ymm6, 256(%rsp)
	vmovdqu	352(%rsp), %ymm6
	vpand	%ymm6, %ymm1, %ymm1
	vpand	%ymm0, %ymm6, %ymm0
	vpxor	%ymm4, %ymm1, %ymm1
	vmovdqu	32(%rsp), %ymm4
	vpxor	%ymm5, %ymm0, %ymm0
	vpand	%ymm4, %ymm3, %ymm3
	vpand	%ymm4, %ymm2, %ymm2
	vpxor	%ymm3, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	192(%rsp), %ymm1, %ymm6
	vpsllq	$62, %ymm1, %ymm3
	vpsllq	$63, %ymm0, %ymm2
	vpxor	224(%rsp), %ymm0, %ymm5
	vpermq	$57, %ymm3, %ymm3
	vpsrlq	$2, %ymm1, %ymm1
	vpermq	$57, %ymm2, %ymm2
	vmovdqu	%ymm5, 224(%rsp)
	vpsrlq	$1, %ymm0, %ymm0
	vpor	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm6, 192(%rsp)
	vpor	%ymm2, %ymm0, %ymm0
	vpxor	384(%rsp), %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 384(%rsp)
	movq	464(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	448(%rsp), %rsi
	leaq	384(%rsp), %r10
	call	L_mzd_to_bitstream_msgs2$1
L_simulateOnline2$43:
	jmp 	L_simulateOnline2$41
L_simulateOnline2$40:
	movq	440(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	448(%rsp), %rsi
	leaq	384(%rsp), %r10
	call	L_mzd_from_bitstream_msgs2$1
L_simulateOnline2$42:
	vmovdqu	384(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm1
	vpand	glob_data + 115296(%rip), %ymm0, %ymm2
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpxor	256(%rsp), %ymm0, %ymm0
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm0, 256(%rsp)
	vpxor	192(%rsp), %ymm3, %ymm0
	vpor	%ymm2, %ymm4, %ymm1
	vpxor	224(%rsp), %ymm1, %ymm4
	vmovdqu	%ymm0, 192(%rsp)
	vmovdqu	%ymm4, 224(%rsp)
L_simulateOnline2$41:
	movq	464(%rsp), %rsi
	incq	%rsi
L_simulateOnline2$38:
	cmpq	$16, %rsi
	jb  	L_simulateOnline2$39
	vmovdqu	128(%rsp), %ymm0
	vpxor	160(%rsp), %ymm0, %ymm2
	vpxor	224(%rsp), %ymm0, %ymm0
	vpxor	192(%rsp), %ymm2, %ymm1
	vpsllq	$62, %ymm0, %ymm7
	vpsrlq	$2, %ymm0, %ymm0
	vpsllq	$63, %ymm1, %ymm3
	vpsrlq	$1, %ymm1, %ymm1
	vpermq	$57, %ymm7, %ymm7
	vpermq	$57, %ymm3, %ymm3
	vpor	%ymm7, %ymm0, %ymm0
	vpor	%ymm3, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpxor	32(%rsp), %ymm2, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	256(%rsp), %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rsp)
	leaq	64(%rsp), %r10
	leaq	96(%rsp), %rcx
	leaq	glob_data + 41408(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline2$37:
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %r10
	leaq	glob_data + 115136(%rip), %rdi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline2$36:
	leaq	472(%rsp), %rcx
	leaq	96(%rsp), %r10
	leaq	glob_data + 82368(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline2$35:
	movq	424(%rsp), %rcx
	addq	$255, %rcx
	movq	416(%rsp), %rsi
	addq	$510, %rsi
	movq	432(%rsp), %r8
	movq	%r8, 456(%rsp)
	movq	%rcx, 448(%rsp)
	movq	%rsi, 440(%rsp)
	vmovdqu	96(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm1
	vpand	glob_data + 115296(%rip), %ymm0, %ymm2
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpermq	$147, %ymm3, %ymm3
	vmovdqu	%ymm0, 256(%rsp)
	vpor	%ymm3, %ymm1, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpermq	$147, %ymm4, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vmovdqu	%ymm3, 32(%rsp)
	vpor	%ymm4, %ymm2, %ymm5
	vpand	%ymm5, %ymm0, %ymm1
	vpand	%ymm3, %ymm0, %ymm0
	vmovdqu	%ymm5, 192(%rsp)
	vmovdqu	%ymm0, 224(%rsp)
	vpand	%ymm5, %ymm3, %ymm0
	vmovdqu	%ymm1, 160(%rsp)
	vmovdqu	%ymm0, 128(%rsp)
	movq	$0, %rsi
	jmp 	L_simulateOnline2$27
L_simulateOnline2$28:
	movq	%rsi, 464(%rsp)
	movq	456(%rsp), %rcx
	cmpq	%rsi, %rcx
	je  	L_simulateOnline2$29
	movq	464(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	440(%rsp), %rsi
	leaq	288(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline2$34:
	vmovdqu	288(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm2
	vpand	glob_data + 115296(%rip), %ymm0, %ymm3
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm2, %ymm1
	vpsllq	$2, %ymm2, %ymm2
	vmovdqu	%ymm0, 320(%rsp)
	vpermq	$147, %ymm1, %ymm0
	vpor	%ymm0, %ymm2, %ymm2
	vpsrlq	$63, %ymm3, %ymm0
	vpermq	$147, %ymm0, %ymm0
	vpsllq	$1, %ymm3, %ymm3
	vmovdqu	%ymm2, 352(%rsp)
	vpor	%ymm0, %ymm3, %ymm3
	vmovdqu	%ymm3, 384(%rsp)
	movq	464(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	440(%rsp), %rsi
	addq	$255, %rsi
	leaq	288(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline2$33:
	vmovdqu	192(%rsp), %ymm0
	vmovdqu	32(%rsp), %ymm1
	vmovdqu	288(%rsp), %ymm6
	vmovdqu	384(%rsp), %ymm2
	vpand	glob_data + 115296(%rip), %ymm6, %ymm5
	vmovdqu	352(%rsp), %ymm3
	vpand	glob_data + 115328(%rip), %ymm6, %ymm4
	vpand	glob_data + 115264(%rip), %ymm6, %ymm6
	vpand	%ymm2, %ymm1, %ymm7
	vpsrlq	$63, %ymm5, %ymm8
	vpsllq	$1, %ymm5, %ymm5
	vpand	%ymm3, %ymm0, %ymm9
	vpsrlq	$62, %ymm4, %ymm10
	vpermq	$147, %ymm8, %ymm8
	vpxor	%ymm9, %ymm7, %ymm7
	vpor	%ymm8, %ymm5, %ymm5
	vpermq	$147, %ymm10, %ymm10
	vpxor	%ymm6, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rsp)
	vpsllq	$2, %ymm4, %ymm4
	vpxor	128(%rsp), %ymm7, %ymm6
	vpor	%ymm10, %ymm4, %ymm4
	vmovdqu	%ymm6, 128(%rsp)
	vmovdqu	320(%rsp), %ymm6
	vpand	%ymm6, %ymm1, %ymm1
	vpand	%ymm0, %ymm6, %ymm0
	vpxor	%ymm4, %ymm1, %ymm1
	vmovdqu	256(%rsp), %ymm4
	vpxor	%ymm5, %ymm0, %ymm0
	vpand	%ymm4, %ymm3, %ymm3
	vpand	%ymm4, %ymm2, %ymm2
	vpxor	%ymm3, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	224(%rsp), %ymm1, %ymm6
	vpsllq	$62, %ymm1, %ymm3
	vpsllq	$63, %ymm0, %ymm2
	vpxor	160(%rsp), %ymm0, %ymm5
	vpermq	$57, %ymm3, %ymm3
	vpsrlq	$2, %ymm1, %ymm1
	vpermq	$57, %ymm2, %ymm2
	vmovdqu	%ymm5, 160(%rsp)
	vpsrlq	$1, %ymm0, %ymm0
	vpor	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm6, 224(%rsp)
	vpor	%ymm2, %ymm0, %ymm0
	vpxor	288(%rsp), %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%rsp)
	movq	464(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	448(%rsp), %rsi
	leaq	288(%rsp), %r10
	call	L_mzd_to_bitstream_msgs2$1
L_simulateOnline2$32:
	jmp 	L_simulateOnline2$30
L_simulateOnline2$29:
	movq	456(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	448(%rsp), %rsi
	leaq	288(%rsp), %r10
	call	L_mzd_from_bitstream_msgs2$1
L_simulateOnline2$31:
	vmovdqu	288(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm1
	vpand	glob_data + 115296(%rip), %ymm0, %ymm2
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpxor	128(%rsp), %ymm0, %ymm0
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm0, 128(%rsp)
	vpxor	224(%rsp), %ymm3, %ymm0
	vpor	%ymm2, %ymm4, %ymm1
	vpxor	160(%rsp), %ymm1, %ymm4
	vmovdqu	%ymm0, 224(%rsp)
	vmovdqu	%ymm4, 160(%rsp)
L_simulateOnline2$30:
	movq	464(%rsp), %rsi
	incq	%rsi
L_simulateOnline2$27:
	cmpq	$16, %rsi
	jb  	L_simulateOnline2$28
	vmovdqu	32(%rsp), %ymm0
	vpxor	192(%rsp), %ymm0, %ymm2
	vpxor	160(%rsp), %ymm0, %ymm0
	vpxor	224(%rsp), %ymm2, %ymm1
	vpsllq	$62, %ymm0, %ymm7
	vpsrlq	$2, %ymm0, %ymm0
	vpsllq	$63, %ymm1, %ymm3
	vpsrlq	$1, %ymm1, %ymm1
	vpermq	$57, %ymm7, %ymm7
	vpermq	$57, %ymm3, %ymm3
	vpor	%ymm7, %ymm0, %ymm0
	vpor	%ymm3, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpxor	256(%rsp), %ymm2, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	128(%rsp), %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rsp)
	leaq	64(%rsp), %r10
	leaq	96(%rsp), %rcx
	leaq	glob_data + 49600(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline2$26:
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %r10
	leaq	glob_data + 115168(%rip), %rdi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline2$25:
	leaq	472(%rsp), %rcx
	leaq	96(%rsp), %r10
	leaq	glob_data + 90560(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline2$24:
	movq	424(%rsp), %rcx
	addq	$510, %rcx
	movq	416(%rsp), %rsi
	addq	$1020, %rsi
	movq	432(%rsp), %r8
	movq	%r8, 440(%rsp)
	movq	%rcx, 448(%rsp)
	movq	%rsi, 456(%rsp)
	vmovdqu	96(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm1
	vpand	glob_data + 115296(%rip), %ymm0, %ymm2
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpermq	$147, %ymm3, %ymm3
	vmovdqu	%ymm0, 128(%rsp)
	vpor	%ymm3, %ymm1, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpermq	$147, %ymm4, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vmovdqu	%ymm3, 256(%rsp)
	vpor	%ymm4, %ymm2, %ymm5
	vpand	%ymm5, %ymm0, %ymm1
	vpand	%ymm3, %ymm0, %ymm0
	vmovdqu	%ymm5, 224(%rsp)
	vmovdqu	%ymm0, 160(%rsp)
	vpand	%ymm5, %ymm3, %ymm0
	vmovdqu	%ymm1, 192(%rsp)
	vmovdqu	%ymm0, 32(%rsp)
	movq	$0, %rsi
	jmp 	L_simulateOnline2$16
L_simulateOnline2$17:
	movq	%rsi, 464(%rsp)
	movq	440(%rsp), %rcx
	cmpq	%rsi, %rcx
	je  	L_simulateOnline2$18
	movq	464(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	456(%rsp), %rsi
	leaq	384(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline2$23:
	vmovdqu	384(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm2
	vpand	glob_data + 115296(%rip), %ymm0, %ymm3
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm2, %ymm1
	vpsllq	$2, %ymm2, %ymm2
	vmovdqu	%ymm0, 352(%rsp)
	vpermq	$147, %ymm1, %ymm0
	vpor	%ymm0, %ymm2, %ymm2
	vpsrlq	$63, %ymm3, %ymm0
	vpermq	$147, %ymm0, %ymm0
	vpsllq	$1, %ymm3, %ymm3
	vmovdqu	%ymm2, 320(%rsp)
	vpor	%ymm0, %ymm3, %ymm3
	vmovdqu	%ymm3, 288(%rsp)
	movq	464(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	456(%rsp), %rsi
	addq	$255, %rsi
	leaq	384(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline2$22:
	vmovdqu	224(%rsp), %ymm0
	vmovdqu	256(%rsp), %ymm1
	vmovdqu	384(%rsp), %ymm6
	vmovdqu	288(%rsp), %ymm2
	vpand	glob_data + 115296(%rip), %ymm6, %ymm5
	vmovdqu	320(%rsp), %ymm3
	vpand	glob_data + 115328(%rip), %ymm6, %ymm4
	vpand	glob_data + 115264(%rip), %ymm6, %ymm6
	vpand	%ymm2, %ymm1, %ymm7
	vpsrlq	$63, %ymm5, %ymm8
	vpsllq	$1, %ymm5, %ymm5
	vpand	%ymm3, %ymm0, %ymm9
	vpsrlq	$62, %ymm4, %ymm10
	vpermq	$147, %ymm8, %ymm8
	vpxor	%ymm9, %ymm7, %ymm7
	vpor	%ymm8, %ymm5, %ymm5
	vpermq	$147, %ymm10, %ymm10
	vpxor	%ymm6, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rsp)
	vpsllq	$2, %ymm4, %ymm4
	vpxor	32(%rsp), %ymm7, %ymm6
	vpor	%ymm10, %ymm4, %ymm4
	vmovdqu	%ymm6, 32(%rsp)
	vmovdqu	352(%rsp), %ymm6
	vpand	%ymm6, %ymm1, %ymm1
	vpand	%ymm0, %ymm6, %ymm0
	vpxor	%ymm4, %ymm1, %ymm1
	vmovdqu	128(%rsp), %ymm4
	vpxor	%ymm5, %ymm0, %ymm0
	vpand	%ymm4, %ymm3, %ymm3
	vpand	%ymm4, %ymm2, %ymm2
	vpxor	%ymm3, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	160(%rsp), %ymm1, %ymm6
	vpsllq	$62, %ymm1, %ymm3
	vpsllq	$63, %ymm0, %ymm2
	vpxor	192(%rsp), %ymm0, %ymm5
	vpermq	$57, %ymm3, %ymm3
	vpsrlq	$2, %ymm1, %ymm1
	vpermq	$57, %ymm2, %ymm2
	vmovdqu	%ymm5, 192(%rsp)
	vpsrlq	$1, %ymm0, %ymm0
	vpor	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm6, 160(%rsp)
	vpor	%ymm2, %ymm0, %ymm0
	vpxor	384(%rsp), %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 384(%rsp)
	movq	464(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	448(%rsp), %rsi
	leaq	384(%rsp), %r10
	call	L_mzd_to_bitstream_msgs2$1
L_simulateOnline2$21:
	jmp 	L_simulateOnline2$19
L_simulateOnline2$18:
	movq	440(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	448(%rsp), %rsi
	leaq	384(%rsp), %r10
	call	L_mzd_from_bitstream_msgs2$1
L_simulateOnline2$20:
	vmovdqu	384(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm1
	vpand	glob_data + 115296(%rip), %ymm0, %ymm2
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpxor	32(%rsp), %ymm0, %ymm0
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm0, 32(%rsp)
	vpxor	160(%rsp), %ymm3, %ymm0
	vpor	%ymm2, %ymm4, %ymm1
	vpxor	192(%rsp), %ymm1, %ymm4
	vmovdqu	%ymm0, 160(%rsp)
	vmovdqu	%ymm4, 192(%rsp)
L_simulateOnline2$19:
	movq	464(%rsp), %rsi
	incq	%rsi
L_simulateOnline2$16:
	cmpq	$16, %rsi
	jb  	L_simulateOnline2$17
	vmovdqu	256(%rsp), %ymm0
	vpxor	224(%rsp), %ymm0, %ymm2
	vpxor	192(%rsp), %ymm0, %ymm0
	vpxor	160(%rsp), %ymm2, %ymm1
	vpsllq	$62, %ymm0, %ymm7
	vpsrlq	$2, %ymm0, %ymm0
	vpsllq	$63, %ymm1, %ymm3
	vpsrlq	$1, %ymm1, %ymm1
	vpermq	$57, %ymm7, %ymm7
	vpermq	$57, %ymm3, %ymm3
	vpor	%ymm7, %ymm0, %ymm0
	vpor	%ymm3, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpxor	128(%rsp), %ymm2, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	32(%rsp), %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rsp)
	leaq	64(%rsp), %r10
	leaq	96(%rsp), %rcx
	leaq	glob_data + 57792(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline2$15:
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %r10
	leaq	glob_data + 115200(%rip), %rdi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline2$14:
	leaq	472(%rsp), %rcx
	leaq	96(%rsp), %r10
	leaq	glob_data + 98752(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline2$13:
	movq	424(%rsp), %rcx
	addq	$765, %rcx
	movq	416(%rsp), %rsi
	addq	$1530, %rsi
	movq	432(%rsp), %r8
	movq	%r8, 432(%rsp)
	movq	%rcx, 416(%rsp)
	movq	%rsi, 424(%rsp)
	vmovdqu	96(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm1
	vpand	glob_data + 115296(%rip), %ymm0, %ymm2
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpermq	$147, %ymm3, %ymm3
	vmovdqu	%ymm0, 32(%rsp)
	vpor	%ymm3, %ymm1, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpermq	$147, %ymm4, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vmovdqu	%ymm3, 128(%rsp)
	vpor	%ymm4, %ymm2, %ymm5
	vpand	%ymm5, %ymm0, %ymm1
	vpand	%ymm3, %ymm0, %ymm0
	vmovdqu	%ymm5, 160(%rsp)
	vmovdqu	%ymm0, 192(%rsp)
	vpand	%ymm5, %ymm3, %ymm0
	vmovdqu	%ymm1, 224(%rsp)
	vmovdqu	%ymm0, 256(%rsp)
	movq	$0, %rsi
	jmp 	L_simulateOnline2$5
L_simulateOnline2$6:
	movq	%rsi, 456(%rsp)
	movq	432(%rsp), %rcx
	cmpq	%rsi, %rcx
	je  	L_simulateOnline2$7
	movq	456(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	424(%rsp), %rsi
	leaq	288(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline2$12:
	vmovdqu	288(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm2
	vpand	glob_data + 115296(%rip), %ymm0, %ymm3
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm2, %ymm1
	vpsllq	$2, %ymm2, %ymm2
	vmovdqu	%ymm0, 320(%rsp)
	vpermq	$147, %ymm1, %ymm0
	vpor	%ymm0, %ymm2, %ymm2
	vpsrlq	$63, %ymm3, %ymm0
	vpermq	$147, %ymm0, %ymm0
	vpsllq	$1, %ymm3, %ymm3
	vmovdqu	%ymm2, 352(%rsp)
	vpor	%ymm0, %ymm3, %ymm3
	vmovdqu	%ymm3, 384(%rsp)
	movq	456(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	424(%rsp), %rsi
	addq	$255, %rsi
	leaq	288(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline2$11:
	vmovdqu	160(%rsp), %ymm0
	vmovdqu	128(%rsp), %ymm1
	vmovdqu	288(%rsp), %ymm6
	vmovdqu	384(%rsp), %ymm2
	vpand	glob_data + 115296(%rip), %ymm6, %ymm5
	vmovdqu	352(%rsp), %ymm3
	vpand	glob_data + 115328(%rip), %ymm6, %ymm4
	vpand	glob_data + 115264(%rip), %ymm6, %ymm6
	vpand	%ymm2, %ymm1, %ymm7
	vpsrlq	$63, %ymm5, %ymm8
	vpsllq	$1, %ymm5, %ymm5
	vpand	%ymm3, %ymm0, %ymm9
	vpsrlq	$62, %ymm4, %ymm10
	vpermq	$147, %ymm8, %ymm8
	vpxor	%ymm9, %ymm7, %ymm7
	vpor	%ymm8, %ymm5, %ymm5
	vpermq	$147, %ymm10, %ymm10
	vpxor	%ymm6, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rsp)
	vpsllq	$2, %ymm4, %ymm4
	vpxor	256(%rsp), %ymm7, %ymm6
	vpor	%ymm10, %ymm4, %ymm4
	vmovdqu	%ymm6, 256(%rsp)
	vmovdqu	320(%rsp), %ymm6
	vpand	%ymm6, %ymm1, %ymm1
	vpand	%ymm0, %ymm6, %ymm0
	vpxor	%ymm4, %ymm1, %ymm1
	vmovdqu	32(%rsp), %ymm4
	vpxor	%ymm5, %ymm0, %ymm0
	vpand	%ymm4, %ymm3, %ymm3
	vpand	%ymm4, %ymm2, %ymm2
	vpxor	%ymm3, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	192(%rsp), %ymm1, %ymm6
	vpsllq	$62, %ymm1, %ymm3
	vpsllq	$63, %ymm0, %ymm2
	vpxor	224(%rsp), %ymm0, %ymm5
	vpermq	$57, %ymm3, %ymm3
	vpsrlq	$2, %ymm1, %ymm1
	vpermq	$57, %ymm2, %ymm2
	vmovdqu	%ymm5, 224(%rsp)
	vpsrlq	$1, %ymm0, %ymm0
	vpor	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm6, 192(%rsp)
	vpor	%ymm2, %ymm0, %ymm0
	vpxor	288(%rsp), %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%rsp)
	movq	456(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	416(%rsp), %rsi
	leaq	288(%rsp), %r10
	call	L_mzd_to_bitstream_msgs2$1
L_simulateOnline2$10:
	jmp 	L_simulateOnline2$8
L_simulateOnline2$7:
	movq	432(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	416(%rsp), %rsi
	leaq	288(%rsp), %r10
	call	L_mzd_from_bitstream_msgs2$1
L_simulateOnline2$9:
	vmovdqu	288(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm1
	vpand	glob_data + 115296(%rip), %ymm0, %ymm2
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpxor	256(%rsp), %ymm0, %ymm0
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm0, 256(%rsp)
	vpxor	192(%rsp), %ymm3, %ymm0
	vpor	%ymm2, %ymm4, %ymm1
	vpxor	224(%rsp), %ymm1, %ymm4
	vmovdqu	%ymm0, 192(%rsp)
	vmovdqu	%ymm4, 224(%rsp)
L_simulateOnline2$8:
	movq	456(%rsp), %rsi
	incq	%rsi
L_simulateOnline2$5:
	cmpq	$16, %rsi
	jb  	L_simulateOnline2$6
	vmovdqu	128(%rsp), %ymm0
	vpxor	160(%rsp), %ymm0, %ymm2
	vpxor	224(%rsp), %ymm0, %ymm0
	vpxor	192(%rsp), %ymm2, %ymm1
	vpsllq	$62, %ymm0, %ymm7
	vpsrlq	$2, %ymm0, %ymm0
	vpsllq	$63, %ymm1, %ymm3
	vpsrlq	$1, %ymm1, %ymm1
	vpermq	$57, %ymm7, %ymm7
	vpermq	$57, %ymm3, %ymm3
	vpor	%ymm7, %ymm0, %ymm0
	vpor	%ymm3, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpxor	32(%rsp), %ymm2, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	256(%rsp), %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rsp)
	leaq	64(%rsp), %r10
	leaq	96(%rsp), %rcx
	leaq	glob_data + 65984(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline2$4:
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %r10
	leaq	glob_data + 115232(%rip), %rdi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline2$3:
	leaq	472(%rsp), %rcx
	leaq	96(%rsp), %r10
	leaq	glob_data + 106944(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline2$2:
	ret
L_simulateOnline$1:
	shlq	$3, %r9
	movq	%r9, 448(%rsp)
	movq	%rsi, 456(%rsp)
	movq	%r8, 464(%rsp)
	vmovdqu	(%rcx), %ymm1
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm1, 32(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	leaq	64(%rsp), %r10
	leaq	96(%rsp), %rsi
	leaq	glob_data + 74176(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline$47:
	call	L_mzd_xor_uint64_block$1
L_simulateOnline$46:
	movq	456(%rsp), %rcx
	movq	448(%rsp), %rsi
	movq	464(%rsp), %r8
	movq	%r8, 472(%rsp)
	movq	%rcx, 480(%rsp)
	movq	%rsi, 488(%rsp)
	vmovdqu	96(%rsp), %ymm1
	vpand	glob_data + 115328(%rip), %ymm1, %ymm4
	vpand	glob_data + 115296(%rip), %ymm1, %ymm2
	vpand	glob_data + 115264(%rip), %ymm1, %ymm1
	vpsrlq	$62, %ymm4, %ymm3
	vpsllq	$2, %ymm4, %ymm4
	vpermq	$147, %ymm3, %ymm3
	vmovdqu	%ymm1, 128(%rsp)
	vpor	%ymm3, %ymm4, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpermq	$147, %ymm4, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vmovdqu	%ymm3, 160(%rsp)
	vpor	%ymm4, %ymm2, %ymm5
	vpand	%ymm5, %ymm1, %ymm2
	vpand	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm5, 192(%rsp)
	vmovdqu	%ymm1, 224(%rsp)
	vpand	%ymm5, %ymm3, %ymm1
	vmovdqu	%ymm2, 256(%rsp)
	vmovdqu	%ymm1, 288(%rsp)
	movq	$0, %rsi
	jmp 	L_simulateOnline$38
L_simulateOnline$39:
	movq	%rsi, 496(%rsp)
	movq	472(%rsp), %rcx
	cmpq	%rsi, %rcx
	je  	L_simulateOnline$40
	movq	496(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	488(%rsp), %rsi
	leaq	416(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline$45:
	vmovdqu	416(%rsp), %ymm1
	vpand	glob_data + 115328(%rip), %ymm1, %ymm2
	vpand	glob_data + 115296(%rip), %ymm1, %ymm3
	vpand	glob_data + 115264(%rip), %ymm1, %ymm1
	vpsrlq	$62, %ymm2, %ymm4
	vpsllq	$2, %ymm2, %ymm2
	vmovdqu	%ymm1, 384(%rsp)
	vpermq	$147, %ymm4, %ymm1
	vpor	%ymm1, %ymm2, %ymm2
	vpsrlq	$63, %ymm3, %ymm1
	vpermq	$147, %ymm1, %ymm1
	vpsllq	$1, %ymm3, %ymm3
	vmovdqu	%ymm2, 352(%rsp)
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm3, 320(%rsp)
	movq	496(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	488(%rsp), %rsi
	addq	$255, %rsi
	leaq	416(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline$44:
	vmovdqu	192(%rsp), %ymm1
	vmovdqu	160(%rsp), %ymm2
	vmovdqu	416(%rsp), %ymm6
	vmovdqu	320(%rsp), %ymm3
	vpand	glob_data + 115296(%rip), %ymm6, %ymm9
	vmovdqu	352(%rsp), %ymm4
	vpand	glob_data + 115328(%rip), %ymm6, %ymm5
	vpand	glob_data + 115264(%rip), %ymm6, %ymm6
	vpand	%ymm3, %ymm2, %ymm7
	vpsrlq	$63, %ymm9, %ymm8
	vpsllq	$1, %ymm9, %ymm9
	vpand	%ymm4, %ymm1, %ymm10
	vpsrlq	$62, %ymm5, %ymm11
	vpermq	$147, %ymm8, %ymm8
	vpxor	%ymm10, %ymm7, %ymm10
	vpor	%ymm8, %ymm9, %ymm7
	vpermq	$147, %ymm11, %ymm11
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rsp)
	vpsllq	$2, %ymm5, %ymm5
	vpxor	288(%rsp), %ymm10, %ymm6
	vpor	%ymm11, %ymm5, %ymm5
	vmovdqu	%ymm6, 288(%rsp)
	vmovdqu	384(%rsp), %ymm6
	vpand	%ymm6, %ymm2, %ymm9
	vpand	%ymm1, %ymm6, %ymm1
	vpxor	%ymm5, %ymm9, %ymm5
	vmovdqu	128(%rsp), %ymm2
	vpxor	%ymm7, %ymm1, %ymm1
	vpand	%ymm2, %ymm4, %ymm4
	vpand	%ymm2, %ymm3, %ymm2
	vpxor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	224(%rsp), %ymm4, %ymm2
	vpsllq	$62, %ymm4, %ymm3
	vpsllq	$63, %ymm1, %ymm5
	vpxor	256(%rsp), %ymm1, %ymm7
	vpermq	$57, %ymm3, %ymm3
	vpsrlq	$2, %ymm4, %ymm4
	vpermq	$57, %ymm5, %ymm5
	vmovdqu	%ymm7, 256(%rsp)
	vpsrlq	$1, %ymm1, %ymm1
	vpor	%ymm3, %ymm4, %ymm4
	vmovdqu	%ymm2, 224(%rsp)
	vpor	%ymm5, %ymm1, %ymm1
	vpxor	416(%rsp), %ymm1, %ymm1
	vpxor	%ymm4, %ymm1, %ymm1
	vmovdqu	%ymm1, 416(%rsp)
	movq	496(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	480(%rsp), %rsi
	leaq	416(%rsp), %r10
	call	L_mzd_to_bitstream_msgs$1
L_simulateOnline$43:
	jmp 	L_simulateOnline$41
L_simulateOnline$40:
	movq	472(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	480(%rsp), %rsi
	leaq	416(%rsp), %r10
	call	L_mzd_from_bitstream_msgs$1
L_simulateOnline$42:
	vmovdqu	416(%rsp), %ymm1
	vpand	glob_data + 115328(%rip), %ymm1, %ymm4
	vpand	glob_data + 115296(%rip), %ymm1, %ymm2
	vpand	glob_data + 115264(%rip), %ymm1, %ymm1
	vpsrlq	$62, %ymm4, %ymm3
	vpsllq	$2, %ymm4, %ymm6
	vpxor	288(%rsp), %ymm1, %ymm1
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm6, %ymm3, %ymm3
	vmovdqu	%ymm1, 288(%rsp)
	vpxor	224(%rsp), %ymm3, %ymm1
	vpor	%ymm2, %ymm4, %ymm4
	vpxor	256(%rsp), %ymm4, %ymm4
	vmovdqu	%ymm1, 224(%rsp)
	vmovdqu	%ymm4, 256(%rsp)
L_simulateOnline$41:
	movq	496(%rsp), %rsi
	incq	%rsi
L_simulateOnline$38:
	cmpq	$16, %rsi
	jb  	L_simulateOnline$39
	vmovdqu	160(%rsp), %ymm1
	vpxor	192(%rsp), %ymm1, %ymm2
	vpxor	256(%rsp), %ymm1, %ymm1
	vpxor	224(%rsp), %ymm2, %ymm3
	vpsllq	$62, %ymm1, %ymm7
	vpsrlq	$2, %ymm1, %ymm1
	vpsllq	$63, %ymm3, %ymm4
	vpsrlq	$1, %ymm3, %ymm3
	vpermq	$57, %ymm7, %ymm7
	vpermq	$57, %ymm4, %ymm4
	vpor	%ymm7, %ymm1, %ymm1
	vpor	%ymm4, %ymm3, %ymm3
	vpxor	%ymm1, %ymm3, %ymm1
	vpxor	128(%rsp), %ymm2, %ymm7
	vpxor	%ymm7, %ymm1, %ymm1
	vpxor	288(%rsp), %ymm1, %ymm1
	vmovdqu	%ymm1, 96(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	leaq	64(%rsp), %r10
	leaq	96(%rsp), %rcx
	leaq	glob_data + 41408(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline$37:
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %r10
	leaq	glob_data + 115136(%rip), %rdi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline$36:
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %r10
	leaq	glob_data + 82368(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline$35:
	movq	456(%rsp), %rcx
	addq	$255, %rcx
	movq	448(%rsp), %rsi
	addq	$510, %rsi
	movq	464(%rsp), %r8
	movq	%r8, 488(%rsp)
	movq	%rcx, 480(%rsp)
	movq	%rsi, 472(%rsp)
	vmovdqu	96(%rsp), %ymm1
	vpand	glob_data + 115328(%rip), %ymm1, %ymm4
	vpand	glob_data + 115296(%rip), %ymm1, %ymm2
	vpand	glob_data + 115264(%rip), %ymm1, %ymm1
	vpsrlq	$62, %ymm4, %ymm3
	vpsllq	$2, %ymm4, %ymm4
	vpermq	$147, %ymm3, %ymm3
	vmovdqu	%ymm1, 288(%rsp)
	vpor	%ymm3, %ymm4, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpermq	$147, %ymm4, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vmovdqu	%ymm3, 128(%rsp)
	vpor	%ymm4, %ymm2, %ymm5
	vpand	%ymm5, %ymm1, %ymm2
	vpand	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm5, 224(%rsp)
	vmovdqu	%ymm1, 256(%rsp)
	vpand	%ymm5, %ymm3, %ymm1
	vmovdqu	%ymm2, 192(%rsp)
	vmovdqu	%ymm1, 160(%rsp)
	movq	$0, %rsi
	jmp 	L_simulateOnline$27
L_simulateOnline$28:
	movq	%rsi, 496(%rsp)
	movq	488(%rsp), %rcx
	cmpq	%rsi, %rcx
	je  	L_simulateOnline$29
	movq	496(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	472(%rsp), %rsi
	leaq	320(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline$34:
	vmovdqu	320(%rsp), %ymm1
	vpand	glob_data + 115328(%rip), %ymm1, %ymm2
	vpand	glob_data + 115296(%rip), %ymm1, %ymm3
	vpand	glob_data + 115264(%rip), %ymm1, %ymm1
	vpsrlq	$62, %ymm2, %ymm4
	vpsllq	$2, %ymm2, %ymm2
	vmovdqu	%ymm1, 352(%rsp)
	vpermq	$147, %ymm4, %ymm1
	vpor	%ymm1, %ymm2, %ymm2
	vpsrlq	$63, %ymm3, %ymm1
	vpermq	$147, %ymm1, %ymm1
	vpsllq	$1, %ymm3, %ymm3
	vmovdqu	%ymm2, 384(%rsp)
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm3, 416(%rsp)
	movq	496(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	472(%rsp), %rsi
	addq	$255, %rsi
	leaq	320(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline$33:
	vmovdqu	224(%rsp), %ymm1
	vmovdqu	128(%rsp), %ymm2
	vmovdqu	320(%rsp), %ymm6
	vmovdqu	416(%rsp), %ymm3
	vpand	glob_data + 115296(%rip), %ymm6, %ymm9
	vmovdqu	384(%rsp), %ymm4
	vpand	glob_data + 115328(%rip), %ymm6, %ymm5
	vpand	glob_data + 115264(%rip), %ymm6, %ymm6
	vpand	%ymm3, %ymm2, %ymm7
	vpsrlq	$63, %ymm9, %ymm8
	vpsllq	$1, %ymm9, %ymm9
	vpand	%ymm4, %ymm1, %ymm10
	vpsrlq	$62, %ymm5, %ymm11
	vpermq	$147, %ymm8, %ymm8
	vpxor	%ymm10, %ymm7, %ymm10
	vpor	%ymm8, %ymm9, %ymm7
	vpermq	$147, %ymm11, %ymm11
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rsp)
	vpsllq	$2, %ymm5, %ymm5
	vpxor	160(%rsp), %ymm10, %ymm6
	vpor	%ymm11, %ymm5, %ymm5
	vmovdqu	%ymm6, 160(%rsp)
	vmovdqu	352(%rsp), %ymm6
	vpand	%ymm6, %ymm2, %ymm9
	vpand	%ymm1, %ymm6, %ymm1
	vpxor	%ymm5, %ymm9, %ymm5
	vmovdqu	288(%rsp), %ymm2
	vpxor	%ymm7, %ymm1, %ymm1
	vpand	%ymm2, %ymm4, %ymm4
	vpand	%ymm2, %ymm3, %ymm2
	vpxor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	256(%rsp), %ymm4, %ymm2
	vpsllq	$62, %ymm4, %ymm3
	vpsllq	$63, %ymm1, %ymm5
	vpxor	192(%rsp), %ymm1, %ymm7
	vpermq	$57, %ymm3, %ymm3
	vpsrlq	$2, %ymm4, %ymm4
	vpermq	$57, %ymm5, %ymm5
	vmovdqu	%ymm7, 192(%rsp)
	vpsrlq	$1, %ymm1, %ymm1
	vpor	%ymm3, %ymm4, %ymm4
	vmovdqu	%ymm2, 256(%rsp)
	vpor	%ymm5, %ymm1, %ymm1
	vpxor	320(%rsp), %ymm1, %ymm1
	vpxor	%ymm4, %ymm1, %ymm1
	vmovdqu	%ymm1, 320(%rsp)
	movq	496(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	480(%rsp), %rsi
	leaq	320(%rsp), %r10
	call	L_mzd_to_bitstream_msgs$1
L_simulateOnline$32:
	jmp 	L_simulateOnline$30
L_simulateOnline$29:
	movq	488(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	480(%rsp), %rsi
	leaq	320(%rsp), %r10
	call	L_mzd_from_bitstream_msgs$1
L_simulateOnline$31:
	vmovdqu	320(%rsp), %ymm1
	vpand	glob_data + 115328(%rip), %ymm1, %ymm4
	vpand	glob_data + 115296(%rip), %ymm1, %ymm2
	vpand	glob_data + 115264(%rip), %ymm1, %ymm1
	vpsrlq	$62, %ymm4, %ymm3
	vpsllq	$2, %ymm4, %ymm6
	vpxor	160(%rsp), %ymm1, %ymm1
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm6, %ymm3, %ymm3
	vmovdqu	%ymm1, 160(%rsp)
	vpxor	256(%rsp), %ymm3, %ymm1
	vpor	%ymm2, %ymm4, %ymm4
	vpxor	192(%rsp), %ymm4, %ymm2
	vmovdqu	%ymm1, 256(%rsp)
	vmovdqu	%ymm2, 192(%rsp)
L_simulateOnline$30:
	movq	496(%rsp), %rsi
	incq	%rsi
L_simulateOnline$27:
	cmpq	$16, %rsi
	jb  	L_simulateOnline$28
	vmovdqu	128(%rsp), %ymm1
	vpxor	224(%rsp), %ymm1, %ymm2
	vpxor	192(%rsp), %ymm1, %ymm1
	vpxor	256(%rsp), %ymm2, %ymm3
	vpsllq	$62, %ymm1, %ymm7
	vpsrlq	$2, %ymm1, %ymm1
	vpsllq	$63, %ymm3, %ymm4
	vpsrlq	$1, %ymm3, %ymm3
	vpermq	$57, %ymm7, %ymm7
	vpermq	$57, %ymm4, %ymm4
	vpor	%ymm7, %ymm1, %ymm1
	vpor	%ymm4, %ymm3, %ymm3
	vpxor	%ymm1, %ymm3, %ymm1
	vpxor	288(%rsp), %ymm2, %ymm7
	vpxor	%ymm7, %ymm1, %ymm1
	vpxor	160(%rsp), %ymm1, %ymm1
	vmovdqu	%ymm1, 96(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	leaq	64(%rsp), %r10
	leaq	96(%rsp), %rcx
	leaq	glob_data + 49600(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline$26:
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %r10
	leaq	glob_data + 115168(%rip), %rdi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline$25:
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %r10
	leaq	glob_data + 90560(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline$24:
	movq	456(%rsp), %rcx
	addq	$510, %rcx
	movq	448(%rsp), %rsi
	addq	$1020, %rsi
	movq	464(%rsp), %r8
	movq	%r8, 472(%rsp)
	movq	%rcx, 480(%rsp)
	movq	%rsi, 488(%rsp)
	vmovdqu	96(%rsp), %ymm1
	vpand	glob_data + 115328(%rip), %ymm1, %ymm4
	vpand	glob_data + 115296(%rip), %ymm1, %ymm2
	vpand	glob_data + 115264(%rip), %ymm1, %ymm1
	vpsrlq	$62, %ymm4, %ymm3
	vpsllq	$2, %ymm4, %ymm4
	vpermq	$147, %ymm3, %ymm3
	vmovdqu	%ymm1, 160(%rsp)
	vpor	%ymm3, %ymm4, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpermq	$147, %ymm4, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vmovdqu	%ymm3, 288(%rsp)
	vpor	%ymm4, %ymm2, %ymm5
	vpand	%ymm5, %ymm1, %ymm2
	vpand	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm5, 256(%rsp)
	vmovdqu	%ymm1, 192(%rsp)
	vpand	%ymm5, %ymm3, %ymm1
	vmovdqu	%ymm2, 224(%rsp)
	vmovdqu	%ymm1, 128(%rsp)
	movq	$0, %rsi
	jmp 	L_simulateOnline$16
L_simulateOnline$17:
	movq	%rsi, 496(%rsp)
	movq	472(%rsp), %rcx
	cmpq	%rsi, %rcx
	je  	L_simulateOnline$18
	movq	496(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	488(%rsp), %rsi
	leaq	416(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline$23:
	vmovdqu	416(%rsp), %ymm1
	vpand	glob_data + 115328(%rip), %ymm1, %ymm2
	vpand	glob_data + 115296(%rip), %ymm1, %ymm3
	vpand	glob_data + 115264(%rip), %ymm1, %ymm1
	vpsrlq	$62, %ymm2, %ymm4
	vpsllq	$2, %ymm2, %ymm2
	vmovdqu	%ymm1, 384(%rsp)
	vpermq	$147, %ymm4, %ymm1
	vpor	%ymm1, %ymm2, %ymm2
	vpsrlq	$63, %ymm3, %ymm1
	vpermq	$147, %ymm1, %ymm1
	vpsllq	$1, %ymm3, %ymm3
	vmovdqu	%ymm2, 352(%rsp)
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm3, 320(%rsp)
	movq	496(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	488(%rsp), %rsi
	addq	$255, %rsi
	leaq	416(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline$22:
	vmovdqu	256(%rsp), %ymm1
	vmovdqu	288(%rsp), %ymm2
	vmovdqu	416(%rsp), %ymm6
	vmovdqu	320(%rsp), %ymm3
	vpand	glob_data + 115296(%rip), %ymm6, %ymm9
	vmovdqu	352(%rsp), %ymm4
	vpand	glob_data + 115328(%rip), %ymm6, %ymm5
	vpand	glob_data + 115264(%rip), %ymm6, %ymm6
	vpand	%ymm3, %ymm2, %ymm7
	vpsrlq	$63, %ymm9, %ymm8
	vpsllq	$1, %ymm9, %ymm9
	vpand	%ymm4, %ymm1, %ymm10
	vpsrlq	$62, %ymm5, %ymm11
	vpermq	$147, %ymm8, %ymm8
	vpxor	%ymm10, %ymm7, %ymm10
	vpor	%ymm8, %ymm9, %ymm7
	vpermq	$147, %ymm11, %ymm11
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rsp)
	vpsllq	$2, %ymm5, %ymm5
	vpxor	128(%rsp), %ymm10, %ymm6
	vpor	%ymm11, %ymm5, %ymm5
	vmovdqu	%ymm6, 128(%rsp)
	vmovdqu	384(%rsp), %ymm6
	vpand	%ymm6, %ymm2, %ymm9
	vpand	%ymm1, %ymm6, %ymm1
	vpxor	%ymm5, %ymm9, %ymm5
	vmovdqu	160(%rsp), %ymm2
	vpxor	%ymm7, %ymm1, %ymm1
	vpand	%ymm2, %ymm4, %ymm4
	vpand	%ymm2, %ymm3, %ymm2
	vpxor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	192(%rsp), %ymm4, %ymm2
	vpsllq	$62, %ymm4, %ymm3
	vpsllq	$63, %ymm1, %ymm5
	vpxor	224(%rsp), %ymm1, %ymm7
	vpermq	$57, %ymm3, %ymm3
	vpsrlq	$2, %ymm4, %ymm4
	vpermq	$57, %ymm5, %ymm5
	vmovdqu	%ymm7, 224(%rsp)
	vpsrlq	$1, %ymm1, %ymm1
	vpor	%ymm3, %ymm4, %ymm4
	vmovdqu	%ymm2, 192(%rsp)
	vpor	%ymm5, %ymm1, %ymm1
	vpxor	416(%rsp), %ymm1, %ymm1
	vpxor	%ymm4, %ymm1, %ymm1
	vmovdqu	%ymm1, 416(%rsp)
	movq	496(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	480(%rsp), %rsi
	leaq	416(%rsp), %r10
	call	L_mzd_to_bitstream_msgs$1
L_simulateOnline$21:
	jmp 	L_simulateOnline$19
L_simulateOnline$18:
	movq	472(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	480(%rsp), %rsi
	leaq	416(%rsp), %r10
	call	L_mzd_from_bitstream_msgs$1
L_simulateOnline$20:
	vmovdqu	416(%rsp), %ymm1
	vpand	glob_data + 115328(%rip), %ymm1, %ymm4
	vpand	glob_data + 115296(%rip), %ymm1, %ymm2
	vpand	glob_data + 115264(%rip), %ymm1, %ymm1
	vpsrlq	$62, %ymm4, %ymm3
	vpsllq	$2, %ymm4, %ymm6
	vpxor	128(%rsp), %ymm1, %ymm1
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm6, %ymm3, %ymm3
	vmovdqu	%ymm1, 128(%rsp)
	vpxor	192(%rsp), %ymm3, %ymm1
	vpor	%ymm2, %ymm4, %ymm4
	vpxor	224(%rsp), %ymm4, %ymm2
	vmovdqu	%ymm1, 192(%rsp)
	vmovdqu	%ymm2, 224(%rsp)
L_simulateOnline$19:
	movq	496(%rsp), %rsi
	incq	%rsi
L_simulateOnline$16:
	cmpq	$16, %rsi
	jb  	L_simulateOnline$17
	vmovdqu	288(%rsp), %ymm1
	vpxor	256(%rsp), %ymm1, %ymm2
	vpxor	224(%rsp), %ymm1, %ymm1
	vpxor	192(%rsp), %ymm2, %ymm3
	vpsllq	$62, %ymm1, %ymm7
	vpsrlq	$2, %ymm1, %ymm1
	vpsllq	$63, %ymm3, %ymm4
	vpsrlq	$1, %ymm3, %ymm3
	vpermq	$57, %ymm7, %ymm7
	vpermq	$57, %ymm4, %ymm4
	vpor	%ymm7, %ymm1, %ymm1
	vpor	%ymm4, %ymm3, %ymm3
	vpxor	%ymm1, %ymm3, %ymm1
	vpxor	160(%rsp), %ymm2, %ymm7
	vpxor	%ymm7, %ymm1, %ymm1
	vpxor	128(%rsp), %ymm1, %ymm1
	vmovdqu	%ymm1, 96(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	leaq	64(%rsp), %r10
	leaq	96(%rsp), %rcx
	leaq	glob_data + 57792(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline$15:
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %r10
	leaq	glob_data + 115200(%rip), %rdi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline$14:
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %r10
	leaq	glob_data + 98752(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline$13:
	movq	456(%rsp), %rcx
	addq	$765, %rcx
	movq	448(%rsp), %rsi
	addq	$1530, %rsi
	movq	464(%rsp), %r8
	movq	%r8, 464(%rsp)
	movq	%rcx, 448(%rsp)
	movq	%rsi, 456(%rsp)
	vmovdqu	96(%rsp), %ymm1
	vpand	glob_data + 115328(%rip), %ymm1, %ymm4
	vpand	glob_data + 115296(%rip), %ymm1, %ymm2
	vpand	glob_data + 115264(%rip), %ymm1, %ymm1
	vpsrlq	$62, %ymm4, %ymm3
	vpsllq	$2, %ymm4, %ymm4
	vpermq	$147, %ymm3, %ymm3
	vmovdqu	%ymm1, 128(%rsp)
	vpor	%ymm3, %ymm4, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpermq	$147, %ymm4, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vmovdqu	%ymm3, 160(%rsp)
	vpor	%ymm4, %ymm2, %ymm5
	vpand	%ymm5, %ymm1, %ymm2
	vpand	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm5, 192(%rsp)
	vmovdqu	%ymm1, 224(%rsp)
	vpand	%ymm5, %ymm3, %ymm1
	vmovdqu	%ymm2, 256(%rsp)
	vmovdqu	%ymm1, 288(%rsp)
	movq	$0, %rsi
	jmp 	L_simulateOnline$5
L_simulateOnline$6:
	movq	%rsi, 488(%rsp)
	movq	464(%rsp), %rcx
	cmpq	%rsi, %rcx
	je  	L_simulateOnline$7
	movq	488(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	456(%rsp), %rsi
	leaq	320(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline$12:
	vmovdqu	320(%rsp), %ymm1
	vpand	glob_data + 115328(%rip), %ymm1, %ymm2
	vpand	glob_data + 115296(%rip), %ymm1, %ymm3
	vpand	glob_data + 115264(%rip), %ymm1, %ymm1
	vpsrlq	$62, %ymm2, %ymm4
	vpsllq	$2, %ymm2, %ymm2
	vmovdqu	%ymm1, 352(%rsp)
	vpermq	$147, %ymm4, %ymm1
	vpor	%ymm1, %ymm2, %ymm2
	vpsrlq	$63, %ymm3, %ymm1
	vpermq	$147, %ymm1, %ymm1
	vpsllq	$1, %ymm3, %ymm3
	vmovdqu	%ymm2, 384(%rsp)
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm3, 416(%rsp)
	movq	488(%rsp), %rsi
	imulq	$2048, %rsi, %rsi
	addq	456(%rsp), %rsi
	addq	$255, %rsi
	leaq	320(%rsp), %r10
	call	L_mzd_from_bitstream_tapes_verify$1
L_simulateOnline$11:
	vmovdqu	192(%rsp), %ymm1
	vmovdqu	160(%rsp), %ymm2
	vmovdqu	320(%rsp), %ymm6
	vmovdqu	416(%rsp), %ymm3
	vpand	glob_data + 115296(%rip), %ymm6, %ymm9
	vmovdqu	384(%rsp), %ymm4
	vpand	glob_data + 115328(%rip), %ymm6, %ymm5
	vpand	glob_data + 115264(%rip), %ymm6, %ymm6
	vpand	%ymm3, %ymm2, %ymm7
	vpsrlq	$63, %ymm9, %ymm8
	vpsllq	$1, %ymm9, %ymm9
	vpand	%ymm4, %ymm1, %ymm10
	vpsrlq	$62, %ymm5, %ymm11
	vpermq	$147, %ymm8, %ymm8
	vpxor	%ymm10, %ymm7, %ymm10
	vpor	%ymm8, %ymm9, %ymm7
	vpermq	$147, %ymm11, %ymm11
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rsp)
	vpsllq	$2, %ymm5, %ymm5
	vpxor	288(%rsp), %ymm10, %ymm6
	vpor	%ymm11, %ymm5, %ymm5
	vmovdqu	%ymm6, 288(%rsp)
	vmovdqu	352(%rsp), %ymm6
	vpand	%ymm6, %ymm2, %ymm9
	vpand	%ymm1, %ymm6, %ymm1
	vpxor	%ymm5, %ymm9, %ymm5
	vmovdqu	128(%rsp), %ymm2
	vpxor	%ymm7, %ymm1, %ymm1
	vpand	%ymm2, %ymm4, %ymm4
	vpand	%ymm2, %ymm3, %ymm2
	vpxor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	224(%rsp), %ymm4, %ymm2
	vpsllq	$62, %ymm4, %ymm3
	vpsllq	$63, %ymm1, %ymm5
	vpxor	256(%rsp), %ymm1, %ymm7
	vpermq	$57, %ymm3, %ymm3
	vpsrlq	$2, %ymm4, %ymm4
	vpermq	$57, %ymm5, %ymm5
	vmovdqu	%ymm7, 256(%rsp)
	vpsrlq	$1, %ymm1, %ymm1
	vpor	%ymm3, %ymm4, %ymm4
	vmovdqu	%ymm2, 224(%rsp)
	vpor	%ymm5, %ymm1, %ymm1
	vpxor	320(%rsp), %ymm1, %ymm1
	vpxor	%ymm4, %ymm1, %ymm1
	vmovdqu	%ymm1, 320(%rsp)
	movq	488(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	448(%rsp), %rsi
	leaq	320(%rsp), %r10
	call	L_mzd_to_bitstream_msgs$1
L_simulateOnline$10:
	jmp 	L_simulateOnline$8
L_simulateOnline$7:
	movq	464(%rsp), %rsi
	imulq	$1024, %rsi, %rsi
	addq	448(%rsp), %rsi
	leaq	320(%rsp), %r10
	call	L_mzd_from_bitstream_msgs$1
L_simulateOnline$9:
	vmovdqu	320(%rsp), %ymm1
	vpand	glob_data + 115328(%rip), %ymm1, %ymm4
	vpand	glob_data + 115296(%rip), %ymm1, %ymm2
	vpand	glob_data + 115264(%rip), %ymm1, %ymm1
	vpsrlq	$62, %ymm4, %ymm3
	vpsllq	$2, %ymm4, %ymm6
	vpxor	288(%rsp), %ymm1, %ymm1
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm6, %ymm3, %ymm3
	vmovdqu	%ymm1, 288(%rsp)
	vpxor	224(%rsp), %ymm3, %ymm1
	vpor	%ymm2, %ymm4, %ymm4
	vpxor	256(%rsp), %ymm4, %ymm2
	vmovdqu	%ymm1, 224(%rsp)
	vmovdqu	%ymm2, 256(%rsp)
L_simulateOnline$8:
	movq	488(%rsp), %rsi
	incq	%rsi
L_simulateOnline$5:
	cmpq	$16, %rsi
	jb  	L_simulateOnline$6
	vmovdqu	160(%rsp), %ymm1
	vpxor	192(%rsp), %ymm1, %ymm2
	vpxor	256(%rsp), %ymm1, %ymm1
	vpxor	224(%rsp), %ymm2, %ymm3
	vpsllq	$62, %ymm1, %ymm7
	vpsrlq	$2, %ymm1, %ymm1
	vpsllq	$63, %ymm3, %ymm4
	vpsrlq	$1, %ymm3, %ymm3
	vpermq	$57, %ymm7, %ymm7
	vpermq	$57, %ymm4, %ymm4
	vpor	%ymm7, %ymm1, %ymm1
	vpor	%ymm4, %ymm3, %ymm3
	vpxor	%ymm1, %ymm3, %ymm1
	vpxor	128(%rsp), %ymm2, %ymm7
	vpxor	%ymm7, %ymm1, %ymm1
	vpxor	288(%rsp), %ymm1, %ymm1
	vmovdqu	%ymm1, 96(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	leaq	64(%rsp), %r10
	leaq	96(%rsp), %rcx
	leaq	glob_data + 65984(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline$4:
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %r10
	leaq	glob_data + 115232(%rip), %rdi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline$3:
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %r10
	leaq	glob_data + 106944(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L_simulateOnline$2:
	ret
L_assemble_proof$1:
	movq	%r11, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rdi, 32(%rsp)
	movq	%r10, 40(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r9, 64(%rsp)
	movq	$0, %rax
	movw	$0, 1080(%rsp)
	jmp 	L_assemble_proof$2
L_assemble_proof$3:
	movq	%rax, 72(%rsp)
	movw	1080(%rsp), %si
	movq	56(%rsp), %r9
	call	L_contains_challengeC_2$1
L_assemble_proof$13:
	cmpb	$1, %r13b
	jne 	L_assemble_proof$4
	movw	1080(%rsp), %si
	movq	56(%rsp), %rcx
	call	L__indexOf$1
L_assemble_proof$12:
	movq	64(%rsp), %rax
	movw	(%rax,%r11,2), %dx
	movw	%dx, 1082(%rsp)
	movzwq	%dx, %rax
	movq	%rax, 80(%rsp)
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	72(%rsp), %rsi
	leaq	88(%rsp), %rdi
	leaq	1084(%rsp), %r10
	call	L_copy_full_tree$1
L_assemble_proof$11:
	leaq	88(%rsp), %r9
	leaq	1084(%rsp), %rax
	leaq	-1088(%rsp), %rsp
	call	L_revealSeeds_2$1
L_assemble_proof$10:
	leaq	1088(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$15, %rdi
	cmpq	%rax, %rdi
	je  	L_assemble_proof$8
	movq	32(%rsp), %rax
	movq	72(%rsp), %rcx
	imulq	$4608, %rcx, %rcx
	addq	$4096, %rcx
	call	L__copy_tape_aux_to_proof$1
L_assemble_proof$9:
L_assemble_proof$8:
	movq	40(%rsp), %rcx
	movq	72(%rsp), %rax
	imulq	$32, %rax, %rsi
	call	L__copy_input_to_proof$1
L_assemble_proof$7:
	movq	80(%rsp), %rax
	imulq	$128, %rax, %rax
	movq	72(%rsp), %rcx
	imulq	$2048, %rcx, %rcx
	addq	%rcx, %rax
	movq	48(%rsp), %rsi
	call	L__copy_msgs_to_proof$1
L_assemble_proof$6:
	movq	72(%rsp), %rax
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rcx
	movq	32(%rsp), %r9
	movw	1082(%rsp), %dx
	leaq	-472(%rsp), %rsp
	call	L_commit_assemble$1
L_assemble_proof$5:
	leaq	472(%rsp), %rsp
L_assemble_proof$4:
	movw	1080(%rsp), %ax
	incw	%ax
	movw	%ax, 1080(%rsp)
	movq	72(%rsp), %rax
	incq	%rax
L_assemble_proof$2:
	cmpq	$601, %rax
	jb  	L_assemble_proof$3
	ret
L_computeAuxTape$1:
	movq	%rdx, 64(%rsp)
	imulq	$4608, %rdx, %rdx
	movq	%rdi, 72(%rsp)
	leaq	32(%rsp), %r10
	movq	%rax, 80(%rsp)
	leaq	-24(%rsp), %rsp
	call	L__computeAuxTape2_aux$1
L_computeAuxTape$3:
	leaq	24(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	72(%rsp), %rdi
	movq	64(%rsp), %rdx
	imulq	$32, %rdx, %r8
	call	L__masked_mzd_to_char_array$1
L_computeAuxTape$2:
	ret
L_addMerkleNodes$1:
	movq	$0, %rsi
	jmp 	L_addMerkleNodes$6
L_addMerkleNodes$7:
	movq	$0, (%rdi,%rsi)
	addq	$8, %rsi
L_addMerkleNodes$6:
	cmpq	$103936, %rsi
	jb  	L_addMerkleNodes$7
	leaq	8(%rsp), %rsi
	leaq	-1624(%rsp), %rsp
	call	L_getRevealedMerkleNodes$1
L_addMerkleNodes$5:
	leaq	1624(%rsp), %rsp
	movq	$0, %rax
	jmp 	L_addMerkleNodes$2
L_addMerkleNodes$3:
	movq	8(%rsp,%rax,8), %rsi
	imulq	$64, %rsi, %rsi
	call	L__copy_digest_to_tree$1
L_addMerkleNodes$4:
	movq	8(%rsp,%rax,8), %rsi
	movb	$1, (%rcx,%rsi)
	incq	%rax
L_addMerkleNodes$2:
	cmpq	%r10, %rax
	jb  	L_addMerkleNodes$3
	ret
L_generateSeeds$1:
	call	L_createTree_2$1
L_generateSeeds$4:
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
	movq	$0, 72(%rdx)
	movq	$0, 80(%rdx)
	movq	$0, 88(%rdx)
	movq	$0, 96(%rdx)
	movq	$0, 104(%rdx)
	movq	$0, 112(%rdx)
	movq	$0, 120(%rdx)
	movq	$0, 128(%rdx)
	movq	$0, 136(%rdx)
	movq	$0, 144(%rdx)
	movq	$0, 152(%rdx)
	movq	$0, 160(%rdx)
	movq	$0, 168(%rdx)
	movq	$0, 176(%rdx)
	movq	$0, 184(%rdx)
	movq	$0, 192(%rdx)
	movq	$0, 200(%rdx)
	movq	$0, 208(%rdx)
	movq	$0, 216(%rdx)
	movq	$0, 224(%rdx)
	movq	$0, 232(%rdx)
	movq	$0, 240(%rdx)
	movq	$0, 248(%rdx)
	movq	$0, 256(%rdx)
	movq	$0, 264(%rdx)
	movq	$0, 272(%rdx)
	movq	$0, 280(%rdx)
	movq	$0, 288(%rdx)
	movq	$0, 296(%rdx)
	movq	$0, 304(%rdx)
	movq	$0, 312(%rdx)
	movq	$0, 320(%rdx)
	movq	$0, 328(%rdx)
	movq	$0, 336(%rdx)
	movq	$0, 344(%rdx)
	movq	$0, 352(%rdx)
	movq	$0, 360(%rdx)
	movq	$0, 368(%rdx)
	movq	$0, 376(%rdx)
	movq	$0, 384(%rdx)
	movq	$0, 392(%rdx)
	movq	$0, 400(%rdx)
	movq	$0, 408(%rdx)
	movq	$0, 416(%rdx)
	movq	$0, 424(%rdx)
	movq	$0, 432(%rdx)
	movq	$0, 440(%rdx)
	movq	$0, 448(%rdx)
	movq	$0, 456(%rdx)
	movq	$0, 464(%rdx)
	movq	$0, 472(%rdx)
	movq	$0, 480(%rdx)
	movq	$0, 488(%rdx)
	movq	$0, 496(%rdx)
	movq	$0, 504(%rdx)
	movq	$0, 512(%rdx)
	movq	$0, 520(%rdx)
	movq	$0, 528(%rdx)
	movq	$0, 536(%rdx)
	movq	$0, 544(%rdx)
	movq	$0, 552(%rdx)
	movq	$0, 560(%rdx)
	movq	$0, 568(%rdx)
	movq	$0, 576(%rdx)
	movq	$0, 584(%rdx)
	movq	$0, 592(%rdx)
	movq	$0, 600(%rdx)
	movq	$0, 608(%rdx)
	movq	$0, 616(%rdx)
	movq	$0, 624(%rdx)
	movq	$0, 632(%rdx)
	movq	$0, 640(%rdx)
	movq	$0, 648(%rdx)
	movq	$0, 656(%rdx)
	movq	$0, 664(%rdx)
	movq	$0, 672(%rdx)
	movq	$0, 680(%rdx)
	movq	$0, 688(%rdx)
	movq	$0, 696(%rdx)
	movq	$0, 704(%rdx)
	movq	$0, 712(%rdx)
	movq	$0, 720(%rdx)
	movq	$0, 728(%rdx)
	movq	$0, 736(%rdx)
	movq	$0, 744(%rdx)
	movq	$0, 752(%rdx)
	movq	$0, 760(%rdx)
	movq	$0, 768(%rdx)
	movq	$0, 776(%rdx)
	movq	$0, 784(%rdx)
	movq	$0, 792(%rdx)
	movq	$0, 800(%rdx)
	movq	$0, 808(%rdx)
	movq	$0, 816(%rdx)
	movq	$0, 824(%rdx)
	movq	$0, 832(%rdx)
	movq	$0, 840(%rdx)
	movq	$0, 848(%rdx)
	movq	$0, 856(%rdx)
	movq	$0, 864(%rdx)
	movq	$0, 872(%rdx)
	movq	$0, 880(%rdx)
	movq	$0, 888(%rdx)
	movq	$0, 896(%rdx)
	movq	$0, 904(%rdx)
	movq	$0, 912(%rdx)
	movq	$0, 920(%rdx)
	movq	$0, 928(%rdx)
	movq	$0, 936(%rdx)
	movq	$0, 944(%rdx)
	movq	$0, 952(%rdx)
	movq	$0, 960(%rdx)
	movq	$0, 968(%rdx)
	movq	$0, 976(%rdx)
	movq	$0, 984(%rdx)
	addq	$1023, %rax
	imulq	$32, %rax, %rax
	movq	$0, %r8
	call	L__copy_seed_from_iSeed$1
L_generateSeeds$3:
	movb	$1, (%r10)
	leaq	-376(%rsp), %rsp
	call	L_expandSeeds_2$1
L_generateSeeds$2:
	leaq	376(%rsp), %rsp
	ret
L_reconstructSeeds_1$1:
	movq	%r11, 8(%rsp)
	movq	$0, %rcx
	jmp 	L_reconstructSeeds_1$3
L_reconstructSeeds_1$4:
	movq	(%rsi,%rcx,8), %r8
	imulq	$4, %r8, %r8
	call	L__copy_seed_from_sig$1
L_reconstructSeeds_1$5:
	movq	(%rsi,%rcx,8), %r8
	movb	$1, (%r10,%r8)
	incq	%rcx
L_reconstructSeeds_1$3:
	cmpq	%rax, %rcx
	jb  	L_reconstructSeeds_1$4
	movq	%rbx, 16(%rsp)
	movq	8(%rsp), %r11
	movw	$0, %r9w
	leaq	-344(%rsp), %rsp
	call	L_expandSeeds_1$1
L_reconstructSeeds_1$2:
	leaq	344(%rsp), %rsp
	movq	16(%rsp), %rax
	ret
LrevealSeedsSize_1$1:
	leaq	-12024(%rsp), %rsp
	call	L_getRevealedNodes$1
LrevealSeedsSize_1$2:
	leaq	12024(%rsp), %rsp
	ret
L__getMissingLeavesList$1:
	movq	$0, %rsi
	movw	$0, %ax
	jmp 	L__getMissingLeavesList$2
L__getMissingLeavesList$3:
	call	L__contains_challengeC$1
L__getMissingLeavesList$5:
	cmpq	$0, %r9
	jne 	L__getMissingLeavesList$4
	movw	%ax, (%r11,%rsi,2)
	incq	%rsi
L__getMissingLeavesList$4:
	incw	%ax
L__getMissingLeavesList$2:
	cmpw	$601, %ax
	jb  	L__getMissingLeavesList$3
	ret
L__contains_challengeC$1:
	movq	$0, %r9
	movq	$0, %rdi
	jmp 	L__contains_challengeC$2
L__contains_challengeC$3:
	movw	(%rdx,%rdi,2), %cx
	cmpw	%ax, %cx
	jne 	L__contains_challengeC$4
	movq	$1, %r9
	movq	$68, %rdi
L__contains_challengeC$4:
	incq	%rdi
L__contains_challengeC$2:
	cmpq	$68, %rdi
	jb  	L__contains_challengeC$3
	ret
L_mzd_from_char_array_2$1:
	movq	24(%rcx,%rax), %rdx
	bswapq	%rdx
	movq	%rdx, (%r9)
	movq	16(%rcx,%rax), %rdx
	bswapq	%rdx
	movq	%rdx, 8(%r9)
	movq	8(%rcx,%rax), %rdx
	bswapq	%rdx
	movq	%rdx, 16(%r9)
	movq	(%rcx,%rax), %rax
	bswapq	%rax
	movq	%rax, 24(%r9)
	ret
L_createRandomTapes_verify$1:
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rdi, 24(%rsp)
	movw	$0, %si
	movq	$0, %rax
	movq	$480, %rcx
	movq	8(%rsp), %rdi
	movq	16(%rsp), %r10
	movq	24(%rsp), %r11
	leaq	-2040(%rsp), %rsp
	call	L__hashTapes_x4$1
L_createRandomTapes_verify$5:
	leaq	2040(%rsp), %rsp
	movw	$4, %si
	movq	$1024, %rax
	movq	$608, %rcx
	movq	8(%rsp), %rdi
	movq	16(%rsp), %r10
	movq	24(%rsp), %r11
	leaq	-2040(%rsp), %rsp
	call	L__hashTapes_x4$1
L_createRandomTapes_verify$4:
	leaq	2040(%rsp), %rsp
	movw	$8, %si
	movq	$2048, %rax
	movq	$736, %rcx
	movq	8(%rsp), %rdi
	movq	16(%rsp), %r10
	movq	24(%rsp), %r11
	leaq	-2040(%rsp), %rsp
	call	L__hashTapes_x4$1
L_createRandomTapes_verify$3:
	leaq	2040(%rsp), %rsp
	movw	$12, %si
	movq	$3072, %rax
	movq	$864, %rcx
	movq	8(%rsp), %rdi
	movq	16(%rsp), %r10
	movq	24(%rsp), %r11
	leaq	-2040(%rsp), %rsp
	call	L__hashTapes_x4$1
L_createRandomTapes_verify$2:
	leaq	2040(%rsp), %rsp
	ret
L_createRandomTapes$1:
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	8(%rsp), %rax
	movw	$0, %dx
	movq	%rax, %rcx
	imulq	$4608, %rcx, %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	imulq	$992, %rcx, %rsi
	addq	$480, %rsi
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r11
	leaq	-2072(%rsp), %rsp
	call	L__hashTapes2_x4$1
L_createRandomTapes$5:
	leaq	2072(%rsp), %rsp
	movq	8(%rsp), %rax
	movw	$4, %dx
	movq	%rax, %rcx
	imulq	$4608, %rcx, %r8
	addq	$1024, %r8
	movq	%rax, %rcx
	imulq	$992, %rcx, %rsi
	addq	$608, %rsi
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r11
	leaq	-2072(%rsp), %rsp
	call	L__hashTapes2_x4$1
L_createRandomTapes$4:
	leaq	2072(%rsp), %rsp
	movq	8(%rsp), %rax
	movw	$8, %dx
	movq	%rax, %rcx
	imulq	$4608, %rcx, %r8
	addq	$2048, %r8
	movq	%rax, %rcx
	imulq	$992, %rcx, %rsi
	addq	$736, %rsi
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r11
	leaq	-2072(%rsp), %rsp
	call	L__hashTapes2_x4$1
L_createRandomTapes$3:
	leaq	2072(%rsp), %rsp
	movq	8(%rsp), %rax
	movw	$12, %dx
	movq	%rax, %rcx
	imulq	$4608, %rcx, %r8
	addq	$3072, %r8
	movq	%rax, %rcx
	imulq	$992, %rcx, %rsi
	addq	$864, %rsi
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r11
	leaq	-2072(%rsp), %rsp
	call	L__hashTapes2_x4$1
L_createRandomTapes$2:
	leaq	2072(%rsp), %rsp
	ret
L_setAuxBits$1:
	addq	$3840, %rdx
	movq	$0, %rsi
	movq	$0, %rdi
	movq	$255, %r8
	jmp 	L_setAuxBits$14
L_setAuxBits$15:
	call	L__getBit_auxTape$1
L_setAuxBits$17:
	call	L_setBit_auxTape$1
L_setAuxBits$16:
	incq	%r8
	incq	%rsi
	incq	%rdi
L_setAuxBits$14:
	cmpq	$255, %rdi
	jb  	L_setAuxBits$15
	movq	$0, %rdi
	movq	$765, %r8
	jmp 	L_setAuxBits$10
L_setAuxBits$11:
	call	L__getBit_auxTape$1
L_setAuxBits$13:
	call	L_setBit_auxTape$1
L_setAuxBits$12:
	incq	%r8
	incq	%rsi
	incq	%rdi
L_setAuxBits$10:
	cmpq	$255, %rdi
	jb  	L_setAuxBits$11
	movq	$0, %rdi
	movq	$1275, %r8
	jmp 	L_setAuxBits$6
L_setAuxBits$7:
	call	L__getBit_auxTape$1
L_setAuxBits$9:
	call	L_setBit_auxTape$1
L_setAuxBits$8:
	incq	%r8
	incq	%rsi
	incq	%rdi
L_setAuxBits$6:
	cmpq	$255, %rdi
	jb  	L_setAuxBits$7
	movq	$0, %rdi
	movq	$1785, %r8
	jmp 	L_setAuxBits$2
L_setAuxBits$3:
	call	L__getBit_auxTape$1
L_setAuxBits$5:
	call	L_setBit_auxTape$1
L_setAuxBits$4:
	incq	%r8
	incq	%rsi
	incq	%rdi
L_setAuxBits$2:
	cmpq	$255, %rdi
	jb  	L_setAuxBits$3
	ret
L_setBit_auxTape$1:
	movq	%r8, %r14
	andq	$7, %r14
	movq	$7, %rcx
	subq	%r14, %rcx
	movb	$1, %r13b
	shlb	%cl, %r13b
	xorb	$255, %r13b
	shlb	%cl, %r11b
	movq	%r8, %rcx
	shrq	$3, %rcx
	addq	%rdx, %rcx
	movb	(%r9,%rcx), %cl
	andb	%r13b, %cl
	orb 	%r11b, %cl
	movq	%r8, %r11
	shrq	$3, %r11
	addq	%rdx, %r11
	movb	%cl, (%r9,%r11)
	ret
L__getBit_auxTape$1:
	movq	%rsi, %r11
	andq	$7, %r11
	movq	$7, %rcx
	subq	%r11, %rcx
	movq	%rsi, %r11
	shrq	$3, %r11
	addq	%rax, %r11
	movb	(%r10,%r11), %r11b
	shrb	%cl, %r11b
	andb	$1, %r11b
	ret
L__computeAuxTape2_aux$1:
	movq	%rdx, 8(%rsp)
	movq	$0, %rax
	jmp 	L__computeAuxTape2_aux$11
L__computeAuxTape2_aux$12:
	vmovdqu	(%r9,%rdx), %ymm0
	vmovdqu	%ymm0, 4352(%r9,%rdx)
	addq	$32, %rdx
	addq	$32, %rax
L__computeAuxTape2_aux$11:
	cmpq	$256, %rax
	jb  	L__computeAuxTape2_aux$12
	movq	$1, %rax
	jmp 	L__computeAuxTape2_aux$7
L__computeAuxTape2_aux$8:
	movq	8(%rsp), %rcx
	addq	$4352, %rcx
	movq	$0, %rsi
	jmp 	L__computeAuxTape2_aux$9
L__computeAuxTape2_aux$10:
	vmovdqu	(%r9,%rdx), %ymm0
	vpxor	(%r9,%rcx), %ymm0, %ymm0
	vmovdqu	%ymm0, (%r9,%rcx)
	addq	$32, %rdx
	addq	$32, %rcx
	addq	$32, %rsi
L__computeAuxTape2_aux$9:
	cmpq	$256, %rsi
	jb  	L__computeAuxTape2_aux$10
	incq	%rax
L__computeAuxTape2_aux$7:
	cmpq	$16, %rax
	jb  	L__computeAuxTape2_aux$8
	movq	$0, %rax
	vpxor	%ymm0, %ymm0, %ymm0
	jmp 	L__computeAuxTape2_aux$5
L__computeAuxTape2_aux$6:
	vmovdqu	%ymm0, (%r9,%rdx)
	addq	$32, %rdx
	addq	$32, %rax
L__computeAuxTape2_aux$5:
	cmpq	$128, %rax
	jb  	L__computeAuxTape2_aux$6
	addq	$128, %rdx
	movq	$24, %rax
	jmp 	L__computeAuxTape2_aux$3
L__computeAuxTape2_aux$4:
	movq	(%r9,%rdx), %rsi
	bswapq	%rsi
	movq	%rsi, (%r10,%rax)
	addq	$8, %rdx
	addq	$-8, %rax
L__computeAuxTape2_aux$3:
	cmpq	$0, %rax
	jnbe	L__computeAuxTape2_aux$4
	movq	(%r9,%rdx), %rsi
	bswapq	%rsi
	movq	%rsi, (%r10,%rax)
	movq	8(%rsp), %rax
	shlq	$3, %rax
	leaq	-152(%rsp), %rsp
	call	L__lowmc_aux_impl_verify2$1
L__computeAuxTape2_aux$2:
	leaq	152(%rsp), %rsp
	ret
L__computeAuxTape_aux$1:
	movq	$0, %rax
	movq	$4352, %rsi
	jmp 	L__computeAuxTape_aux$9
L__computeAuxTape_aux$10:
	vmovdqu	(%rdx,%rax), %ymm0
	vmovdqu	%ymm0, (%rdx,%rsi)
	addq	$32, %rax
	addq	$32, %rsi
L__computeAuxTape_aux$9:
	cmpq	$256, %rax
	jb  	L__computeAuxTape_aux$10
	movq	$256, %rax
	jmp 	L__computeAuxTape_aux$5
L__computeAuxTape_aux$6:
	movq	$4352, %rsi
	jmp 	L__computeAuxTape_aux$7
L__computeAuxTape_aux$8:
	vmovdqu	(%rdx,%rax), %ymm0
	vpxor	(%rdx,%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rdx,%rsi)
	addq	$32, %rax
	addq	$32, %rsi
L__computeAuxTape_aux$7:
	cmpq	$4608, %rsi
	jb  	L__computeAuxTape_aux$8
L__computeAuxTape_aux$5:
	cmpq	$4096, %rax
	jb  	L__computeAuxTape_aux$6
	movq	4376(%rdx), %rax
	bswapq	%rax
	movq	%rax, (%r10)
	movq	4368(%rdx), %rax
	bswapq	%rax
	movq	%rax, 8(%r10)
	movq	4360(%rdx), %rax
	bswapq	%rax
	movq	%rax, 16(%r10)
	movq	4352(%rdx), %rax
	bswapq	%rax
	movq	%rax, 24(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$4096, %rax
	jmp 	L__computeAuxTape_aux$3
L__computeAuxTape_aux$4:
	vmovdqu	%ymm0, (%rdx,%rax)
	addq	$32, %rax
L__computeAuxTape_aux$3:
	cmpq	$4224, %rax
	jb  	L__computeAuxTape_aux$4
	leaq	-184(%rsp), %rsp
	call	L__lowmc_aux_impl_verify$1
L__computeAuxTape_aux$2:
	leaq	184(%rsp), %rsp
	ret
L__indexOf$1:
	movq	$0, %r11
	movq	$0, %r10
	jmp 	L__indexOf$2
L__indexOf$3:
	movw	(%rcx,%r10,2), %di
	cmpw	%si, %di
	jne 	L__indexOf$4
	movq	%r10, %r11
	movq	$68, %r10
L__indexOf$4:
	incq	%r10
L__indexOf$2:
	cmpq	$68, %r10
	jb  	L__indexOf$3
	ret
L_get_orderChallengeC$1:
	movq	$0, %rax
	movq	$0, %rdi
	jmp 	L_get_orderChallengeC$2
L_get_orderChallengeC$3:
	movw	(%rcx,%rdi,2), %r8w
	cmpw	%si, %r8w
	jnb 	L_get_orderChallengeC$4
	incq	%rax
L_get_orderChallengeC$4:
	incq	%rdi
L_get_orderChallengeC$2:
	cmpq	$68, %rdi
	jb  	L_get_orderChallengeC$3
	ret
L_contains_challengeC_2$1:
	movb	$0, %r13b
	movq	$0, %r11
	jmp 	L_contains_challengeC_2$2
L_contains_challengeC_2$3:
	movw	(%r9,%r11,2), %r10w
	cmpw	%si, %r10w
	jne 	L_contains_challengeC_2$4
	movb	$1, %r13b
	movq	$68, %r11
L_contains_challengeC_2$4:
	incq	%r11
L_contains_challengeC_2$2:
	cmpq	$68, %r11
	jb  	L_contains_challengeC_2$3
	ret
L__lowmc_aux_impl_verify2$1:
	movq	%rax, 96(%rsp)
	movq	%r10, 104(%rsp)
	movq	%r9, 112(%rsp)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	120(%rsp), %rcx
	movq	104(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L__lowmc_aux_impl_verify2$19:
	movq	104(%rsp), %r10
	movq	$0, (%r10)
	movq	$0, 8(%r10)
	movq	$0, 16(%r10)
	movq	$0, 24(%r10)
	leaq	glob_data + 448(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify2$18:
	movq	%r10, 104(%rsp)
	movq	104(%rsp), %rcx
	leaq	glob_data + 106944(%rip), %r8
	leaq	32(%rsp), %r10
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify2$17:
	leaq	64(%rsp), %r10
	leaq	32(%rsp), %rcx
	leaq	glob_data + 33216(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify2$16:
	movq	96(%rsp), %rsi
	addq	$36346, %rsi
	movq	112(%rsp), %rax
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %r10
	call	L_mzd_from_bitstream_tapes2$1
L__lowmc_aux_impl_verify2$15:
	movq	96(%rsp), %rdx
	movq	%rdx, %rsi
	addq	$1785, %rdx
	addq	$765, %rsi
	movq	112(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	64(%rsp), %r10
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced2$1
L__lowmc_aux_impl_verify2$14:
	leaq	344(%rsp), %rsp
	movq	%rax, 112(%rsp)
	movq	104(%rsp), %rcx
	leaq	glob_data + 98752(%rip), %r8
	leaq	32(%rsp), %r10
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify2$13:
	leaq	64(%rsp), %r10
	leaq	32(%rsp), %rcx
	leaq	glob_data + 25024(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify2$12:
	movq	96(%rsp), %rsi
	addq	$35836, %rsi
	movq	112(%rsp), %rax
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %r10
	call	L_mzd_from_bitstream_tapes2$1
L__lowmc_aux_impl_verify2$11:
	movq	96(%rsp), %rdx
	movq	%rdx, %rsi
	addq	$1275, %rdx
	addq	$510, %rsi
	movq	112(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	64(%rsp), %r10
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced2$1
L__lowmc_aux_impl_verify2$10:
	leaq	344(%rsp), %rsp
	movq	%rax, 112(%rsp)
	movq	104(%rsp), %rcx
	leaq	glob_data + 90560(%rip), %r8
	leaq	32(%rsp), %r10
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify2$9:
	leaq	64(%rsp), %r10
	leaq	32(%rsp), %rcx
	leaq	glob_data + 16832(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify2$8:
	movq	96(%rsp), %rsi
	addq	$35326, %rsi
	movq	112(%rsp), %rax
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %r10
	call	L_mzd_from_bitstream_tapes2$1
L__lowmc_aux_impl_verify2$7:
	movq	96(%rsp), %rdx
	movq	%rdx, %rsi
	addq	$765, %rdx
	addq	$255, %rsi
	movq	112(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	64(%rsp), %r10
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced2$1
L__lowmc_aux_impl_verify2$6:
	leaq	344(%rsp), %rsp
	movq	%rax, 112(%rsp)
	movq	104(%rsp), %rcx
	leaq	glob_data + 82368(%rip), %r8
	leaq	32(%rsp), %r10
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify2$5:
	leaq	64(%rsp), %r10
	leaq	32(%rsp), %rcx
	leaq	glob_data + 8640(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify2$4:
	leaq	32(%rsp), %rcx
	leaq	120(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L__lowmc_aux_impl_verify2$3:
	movq	96(%rsp), %rdx
	movq	%rdx, %rsi
	addq	$255, %rdx
	movq	112(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	64(%rsp), %r10
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced2$1
L__lowmc_aux_impl_verify2$2:
	leaq	344(%rsp), %rsp
	movq	104(%rsp), %rcx
	ret
L_picnic3_aux_sbox_bitsliced2$1:
	movq	%rsi, 320(%rsp)
	movq	(%rcx), %rdi
	movq	%rdi, 32(%rsp)
	movq	8(%rcx), %rdi
	movq	%rdi, 40(%rsp)
	movq	16(%rcx), %rdi
	movq	%rdi, 48(%rsp)
	movq	24(%rcx), %rcx
	movq	%rcx, 56(%rsp)
	movq	(%r10), %rcx
	movq	%rcx, 64(%rsp)
	movq	8(%r10), %rcx
	movq	%rcx, 72(%rsp)
	movq	16(%r10), %rcx
	movq	%rcx, 80(%rsp)
	movq	24(%r10), %rcx
	movq	%rcx, 88(%rsp)
	leaq	96(%rsp), %rcx
	leaq	32(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$50:
	leaq	32(%rsp), %rsi
	leaq	glob_data + 115328(%rip), %r10
	leaq	96(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$49:
	leaq	160(%rsp), %rsi
	leaq	glob_data + 115296(%rip), %r10
	leaq	96(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$48:
	leaq	224(%rsp), %rsi
	leaq	glob_data + 115264(%rip), %r10
	leaq	96(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$47:
	leaq	96(%rsp), %rcx
	leaq	32(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$46:
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %rsi
	call	L_mzd_shift2_left_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$45:
	leaq	96(%rsp), %rcx
	leaq	160(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$44:
	leaq	160(%rsp), %rcx
	leaq	96(%rsp), %rsi
	call	L_mzd_shift1_left_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$43:
	leaq	96(%rsp), %rcx
	leaq	64(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$42:
	leaq	64(%rsp), %rsi
	leaq	glob_data + 115328(%rip), %r10
	leaq	96(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$41:
	leaq	128(%rsp), %rsi
	leaq	glob_data + 115296(%rip), %r10
	leaq	96(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$40:
	leaq	192(%rsp), %rsi
	leaq	glob_data + 115264(%rip), %r10
	leaq	96(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$39:
	leaq	96(%rsp), %rcx
	leaq	64(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$38:
	leaq	64(%rsp), %rcx
	leaq	96(%rsp), %rsi
	call	L_mzd_shift2_left_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$37:
	leaq	96(%rsp), %rcx
	leaq	128(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$36:
	leaq	128(%rsp), %rcx
	leaq	96(%rsp), %rsi
	call	L_mzd_shift1_left_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$35:
	leaq	256(%rsp), %rsi
	leaq	32(%rsp), %r10
	leaq	160(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$34:
	leaq	288(%rsp), %rsi
	leaq	128(%rsp), %r10
	leaq	256(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$33:
	leaq	128(%rsp), %rsi
	leaq	64(%rsp), %r10
	leaq	32(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$32:
	leaq	96(%rsp), %rcx
	leaq	256(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$31:
	leaq	256(%rsp), %rsi
	leaq	96(%rsp), %r10
	leaq	224(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$30:
	leaq	96(%rsp), %rcx
	leaq	256(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$29:
	leaq	256(%rsp), %rsi
	leaq	96(%rsp), %r10
	leaq	192(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$28:
	leaq	192(%rsp), %rcx
	leaq	288(%rsp), %rsi
	call	L_mzd_shift2_right_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$27:
	leaq	288(%rsp), %rcx
	leaq	128(%rsp), %rsi
	call	L_mzd_shift1_right_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$26:
	leaq	96(%rsp), %rcx
	leaq	192(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$25:
	leaq	192(%rsp), %rsi
	leaq	96(%rsp), %r10
	leaq	288(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$24:
	leaq	128(%rsp), %rsi
	leaq	192(%rsp), %r10
	leaq	256(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$23:
	leaq	256(%rsp), %rsi
	leaq	32(%rsp), %r10
	leaq	160(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$22:
	leaq	288(%rsp), %rsi
	leaq	160(%rsp), %r10
	leaq	224(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$21:
	leaq	192(%rsp), %rsi
	leaq	224(%rsp), %r10
	leaq	32(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$20:
	leaq	96(%rsp), %rcx
	leaq	192(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$19:
	leaq	192(%rsp), %rcx
	leaq	96(%rsp), %rsi
	call	L_mzd_shift2_right_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$18:
	leaq	96(%rsp), %rcx
	leaq	288(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$17:
	leaq	288(%rsp), %rcx
	leaq	96(%rsp), %rsi
	call	L_mzd_shift1_right_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$16:
	leaq	96(%rsp), %rcx
	leaq	192(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$15:
	leaq	192(%rsp), %rsi
	leaq	96(%rsp), %r10
	leaq	288(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$14:
	leaq	96(%rsp), %rcx
	leaq	192(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$13:
	leaq	192(%rsp), %rsi
	leaq	96(%rsp), %r10
	leaq	256(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$12:
	leaq	96(%rsp), %rcx
	leaq	128(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$11:
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %r10
	leaq	192(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$10:
	movq	%rdx, %rsi
	addq	$34816, %rsi
	leaq	256(%rsp), %r10
	call	L_mzd_from_bitstream_tapes2$1
L_picnic3_aux_sbox_bitsliced2$9:
	leaq	96(%rsp), %rcx
	leaq	128(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$8:
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %r10
	leaq	256(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$7:
	movq	%rdx, %rsi
	addq	$30720, %rsi
	leaq	288(%rsp), %r10
	call	L_mzd_from_bitstream_tapes2$1
L_picnic3_aux_sbox_bitsliced2$6:
	leaq	96(%rsp), %rcx
	leaq	128(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced2$5:
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %r10
	leaq	288(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$4:
	addq	$30720, %rdx
	leaq	128(%rsp), %r10
	call	L_mzd_to_bitstream_tapes2$1
L_picnic3_aux_sbox_bitsliced2$3:
	movq	320(%rsp), %rdx
	addq	$32768, %rdx
	leaq	128(%rsp), %r10
	call	L_mzd_to_bitstream_tapes2$1
L_picnic3_aux_sbox_bitsliced2$2:
	ret
L__lowmc_aux_impl_verify$1:
	movq	%r10, 128(%rsp)
	movq	%rdx, 136(%rsp)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	144(%rsp), %rcx
	movq	128(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L__lowmc_aux_impl_verify$25:
	movq	128(%rsp), %r10
	leaq	64(%rsp), %rcx
	call	L_mzd_copy_uint64_256$1
L__lowmc_aux_impl_verify$24:
	leaq	64(%rsp), %r10
	leaq	144(%rsp), %rcx
	leaq	glob_data + 448(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify$23:
	movq	128(%rsp), %rcx
	leaq	64(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L__lowmc_aux_impl_verify$22:
	movq	%rcx, 128(%rsp)
	leaq	64(%rsp), %rcx
	movq	128(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L__lowmc_aux_impl_verify$21:
	movq	%r10, 128(%rsp)
	leaq	32(%rsp), %r10
	leaq	64(%rsp), %rcx
	leaq	glob_data + 106944(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify$20:
	leaq	96(%rsp), %r10
	leaq	32(%rsp), %rcx
	leaq	glob_data + 33216(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify$19:
	movq	$36346, %rsi
	movq	136(%rsp), %rax
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %r10
	call	L_mzd_from_bitstream_tapes$1
L__lowmc_aux_impl_verify$18:
	movq	$1785, %rdx
	movq	$765, %rsi
	movq	136(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %r10
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced$1
L__lowmc_aux_impl_verify$17:
	leaq	344(%rsp), %rsp
	movq	%rax, 136(%rsp)
	leaq	64(%rsp), %rcx
	movq	128(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L__lowmc_aux_impl_verify$16:
	movq	%r10, 128(%rsp)
	leaq	32(%rsp), %r10
	leaq	64(%rsp), %rcx
	leaq	glob_data + 98752(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify$15:
	leaq	96(%rsp), %r10
	leaq	32(%rsp), %rcx
	leaq	glob_data + 25024(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify$14:
	movq	$35836, %rsi
	movq	136(%rsp), %rax
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %r10
	call	L_mzd_from_bitstream_tapes$1
L__lowmc_aux_impl_verify$13:
	movq	$1275, %rdx
	movq	$510, %rsi
	movq	136(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %r10
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced$1
L__lowmc_aux_impl_verify$12:
	leaq	344(%rsp), %rsp
	movq	%rax, 136(%rsp)
	leaq	64(%rsp), %rcx
	movq	128(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L__lowmc_aux_impl_verify$11:
	movq	%r10, 128(%rsp)
	leaq	32(%rsp), %r10
	leaq	64(%rsp), %rcx
	leaq	glob_data + 90560(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify$10:
	leaq	96(%rsp), %r10
	leaq	32(%rsp), %rcx
	leaq	glob_data + 16832(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify$9:
	movq	$35326, %rsi
	movq	136(%rsp), %rax
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %r10
	call	L_mzd_from_bitstream_tapes$1
L__lowmc_aux_impl_verify$8:
	movq	$765, %rdx
	movq	$255, %rsi
	movq	136(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %r10
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced$1
L__lowmc_aux_impl_verify$7:
	leaq	344(%rsp), %rsp
	movq	%rax, 136(%rsp)
	leaq	64(%rsp), %rcx
	movq	128(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L__lowmc_aux_impl_verify$6:
	movq	%r10, 128(%rsp)
	leaq	32(%rsp), %r10
	leaq	64(%rsp), %rcx
	leaq	glob_data + 82368(%rip), %r8
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify$5:
	leaq	96(%rsp), %r10
	leaq	32(%rsp), %rcx
	leaq	glob_data + 8640(%rip), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	call	L_mzd_addmul_v_uint64_256$1
L__lowmc_aux_impl_verify$4:
	leaq	32(%rsp), %rcx
	leaq	144(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L__lowmc_aux_impl_verify$3:
	movq	$255, %rdx
	movq	$0, %rsi
	movq	136(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %r10
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced$1
L__lowmc_aux_impl_verify$2:
	leaq	344(%rsp), %rsp
	movq	128(%rsp), %rcx
	ret
L_revealSeeds_2$1:
	movq	%r8, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	$0, %rax
	addw	$15, %dx
	movw	%dx, 1080(%rsp,%rax,2)
	movzwq	%dx, %rdx
	incq	%rax
	cmpq	$0, %rdx
	je  	L_revealSeeds_2$22
	incq	%rdx
	shrq	$1, %rdx
	decq	%rdx
L_revealSeeds_2$25:
	jmp 	L_revealSeeds_2$22
L_revealSeeds_2$23:
	movw	%dx, 1080(%rsp,%rax,2)
	cmpq	$0, %rdx
	je  	L_revealSeeds_2$24
	incq	%rdx
	shrq	$1, %rdx
	decq	%rdx
L_revealSeeds_2$24:
	incq	%rax
L_revealSeeds_2$22:
	cmpq	$0, %rdx
	jne 	L_revealSeeds_2$23
	movq	$0, %rsi
	movq	$0, 32(%rsp)
	jmp 	L_revealSeeds_2$5
L_revealSeeds_2$6:
	movq	%rsi, 40(%rsp)
	movq	40(%rsp), %rcx
	movw	1080(%rsp,%rcx,2), %dx
	movzwq	%dx, %rdx
	movq	24(%rsp), %rbx
	call	L__hasSibling_2$1
L_revealSeeds_2$21:
	cmpb	$1, %cl
	jne 	L_revealSeeds_2$7
	movq	40(%rsp), %rcx
	movw	1080(%rsp,%rcx,2), %dx
	movzwq	%dx, %rdi
	call	L__getSibling_2$1
L_revealSeeds_2$20:
	movq	%rdi, 48(%rsp)
	movq	40(%rsp), %r8
	leaq	1080(%rsp), %rcx
	call	L_contains_pathSets_2$1
L_revealSeeds_2$19:
	cmpb	$0, %r9b
	jne 	L_revealSeeds_2$7
	movq	24(%rsp), %rbx
	movq	48(%rsp), %rdi
	call	L__hasRightChild_T2$1
L_revealSeeds_2$18:
	movb	%cl, 1088(%rsp)
	movb	$1, %cl
	subb	1088(%rsp), %cl
	movb	%cl, 1088(%rsp)
	movq	48(%rsp), %rdi
	call	L__isLeafNode_2$1
L_revealSeeds_2$17:
	movb	%cl, 1089(%rsp)
	movb	$1, %cl
	subb	1089(%rsp), %cl
	addb	1088(%rsp), %cl
	jmp 	L_revealSeeds_2$13
L_revealSeeds_2$14:
	movq	48(%rsp), %rdi
	shlq	$1, %rdi
	incq	%rdi
	movq	%rdi, 48(%rsp)
	movq	48(%rsp), %rdi
	movq	24(%rsp), %rbx
	call	L__hasRightChild_T2$1
L_revealSeeds_2$16:
	movb	%cl, 1088(%rsp)
	movb	$1, %cl
	subb	1088(%rsp), %cl
	movb	%cl, 1088(%rsp)
	movq	48(%rsp), %rdi
	call	L__isLeafNode_2$1
L_revealSeeds_2$15:
	movb	%cl, 1089(%rsp)
	movb	$1, %cl
	subb	1089(%rsp), %cl
	addb	1088(%rsp), %cl
L_revealSeeds_2$13:
	cmpb	$0, %cl
	je  	L_revealSeeds_2$14
	movq	48(%rsp), %rdi
	movq	32(%rsp), %r8
	movb	$0, %r11b
	movq	$0, %rax
	jmp 	L_revealSeeds_2$10
L_revealSeeds_2$11:
	movq	56(%rsp,%rax,8), %rcx
	cmpq	%rdi, %rcx
	jne 	L_revealSeeds_2$12
	movb	$1, %r11b
L_revealSeeds_2$12:
	incq	%rax
L_revealSeeds_2$10:
	cmpq	%r8, %rax
	jb  	L_revealSeeds_2$11
	cmpb	$0, %r11b
	jne 	L_revealSeeds_2$9
	movq	32(%rsp), %r8
	movq	%rdi, 56(%rsp,%r8,8)
	incq	%r8
L_revealSeeds_2$9:
	movq	%r8, 32(%rsp)
L_revealSeeds_2$8:
L_revealSeeds_2$7:
	movq	40(%rsp), %rsi
	incq	%rsi
L_revealSeeds_2$5:
	cmpq	$4, %rsi
	jb  	L_revealSeeds_2$6
	movq	32(%rsp), %rax
	movq	8(%rsp), %r8
	movq	$0, %rcx
	jmp 	L_revealSeeds_2$2
L_revealSeeds_2$3:
	movq	%rax, 8(%rsp)
	movq	56(%rsp,%rcx,8), %rax
	imulq	$4, %rax, %rax
	movq	16(%rsp), %rdx
	call	L__copy_seed_to_proof$1
L_revealSeeds_2$4:
	movq	8(%rsp), %rax
	incq	%rcx
L_revealSeeds_2$2:
	cmpq	%rax, %rcx
	jb  	L_revealSeeds_2$3
	ret
L_revealSeeds$1:
	movq	%rdx, %rax
	leaq	8(%rsp), %rsi
	leaq	-12024(%rsp), %rsp
	call	L_getRevealedNodes$1
L_revealSeeds$5:
	leaq	12024(%rsp), %rsp
	movq	$0, %rcx
	jmp 	L_revealSeeds$2
L_revealSeeds$3:
	movq	8(%rsp,%rcx,8), %rsi
	imulq	$32, %rsi, %rdi
	call	L__copy_seed_to_sig$1
L_revealSeeds$4:
	incq	%rcx
L_revealSeeds$2:
	cmpq	%rax, %rcx
	jb  	L_revealSeeds$3
	ret
L_openMerkleTree$1:
	movq	$0, %rcx
	jmp 	L_openMerkleTree$6
L_openMerkleTree$7:
	movq	$0, 8(%rsp,%rcx,8)
	incq	%rcx
L_openMerkleTree$6:
	cmpq	$4808, %rcx
	jb  	L_openMerkleTree$7
	leaq	8(%rsp), %rsi
	leaq	-1624(%rsp), %rsp
	call	L_getRevealedMerkleNodes$1
L_openMerkleTree$5:
	leaq	1624(%rsp), %rsp
	movq	$0, %rax
	jmp 	L_openMerkleTree$2
L_openMerkleTree$3:
	movq	8(%rsp,%rax,8), %rcx
	imulq	$64, %rcx, %rsi
	call	L__copy_digest_from_tree_v2$1
L_openMerkleTree$4:
	incq	%rax
L_openMerkleTree$2:
	cmpq	%r10, %rax
	jb  	L_openMerkleTree$3
	ret
L_getRevealedMerkleNodes$1:
	movq	$0, %r10
	jmp 	L_getRevealedMerkleNodes$25
L_getRevealedMerkleNodes$26:
	movb	$0, 8(%rsp,%r10)
	incq	%r10
L_getRevealedMerkleNodes$25:
	cmpq	$1624, %r10
	jb  	L_getRevealedMerkleNodes$26
	movq	$0, %r10
	jmp 	L_getRevealedMerkleNodes$23
L_getRevealedMerkleNodes$24:
	movw	(%r11,%r10,2), %bx
	movzwq	%bx, %rbp
	movb	$1, 1031(%rsp,%rbp)
	incq	%r10
L_getRevealedMerkleNodes$23:
	cmpq	$533, %r10
	jb  	L_getRevealedMerkleNodes$24
	movq	$1623, %r10
	cmpq	$0, %r10
	je  	L_getRevealedMerkleNodes$12
	incq	%r10
	shrq	$1, %r10
	decq	%r10
L_getRevealedMerkleNodes$22:
	jmp 	L_getRevealedMerkleNodes$12
L_getRevealedMerkleNodes$13:
	movq	%r10, %rbp
	movb	$0, %r13b
	cmpq	$1624, %rbp
	jnb 	L_getRevealedMerkleNodes$21
	movb	(%rax,%rbp), %r13b
L_getRevealedMerkleNodes$21:
	cmpb	$1, %r13b
	jne 	L_getRevealedMerkleNodes$14
	shlq	$1, %rbp
	addq	$2, %rbp
	movb	$0, %r13b
	cmpq	$1624, %rbp
	jnb 	L_getRevealedMerkleNodes$20
	movb	(%rax,%rbp), %r13b
L_getRevealedMerkleNodes$20:
	cmpb	$1, %r13b
	je  	L_getRevealedMerkleNodes$15
	decq	%rbp
	movb	8(%rsp,%rbp), %r13b
	cmpb	$1, %r13b
	jne 	L_getRevealedMerkleNodes$14
	movb	$1, 8(%rsp,%r10)
L_getRevealedMerkleNodes$19:
	jmp 	L_getRevealedMerkleNodes$14
L_getRevealedMerkleNodes$15:
	movb	8(%rsp,%rbp), %r13b
	cmpb	$1, %r13b
	jne 	L_getRevealedMerkleNodes$14
	decq	%rbp
	movb	8(%rsp,%rbp), %r13b
	cmpb	$1, %r13b
	jne 	L_getRevealedMerkleNodes$14
	movb	$1, 8(%rsp,%r10)
L_getRevealedMerkleNodes$18:
L_getRevealedMerkleNodes$17:
L_getRevealedMerkleNodes$16:
L_getRevealedMerkleNodes$14:
	decq	%r10
L_getRevealedMerkleNodes$12:
	cmpq	$0, %r10
	jnbe	L_getRevealedMerkleNodes$13
	movq	$0, %r10
	movq	$0, %rax
	jmp 	L_getRevealedMerkleNodes$2
L_getRevealedMerkleNodes$3:
	movw	(%r11,%rax,2), %bx
	addw	$1023, %bx
	movzwq	%bx, %rbp
	movzwq	%bx, %rbx
	jmp 	L_getRevealedMerkleNodes$4
L_getRevealedMerkleNodes$5:
	cmpq	$0, %rbp
	je  	L_getRevealedMerkleNodes$11
	incq	%rbp
	shrq	$1, %rbp
	decq	%rbp
L_getRevealedMerkleNodes$11:
	movb	8(%rsp,%rbp), %r13b
	cmpb	$0, %r13b
	jne 	L_getRevealedMerkleNodes$6
	movb	$0, %r13b
	movq	$0, %rbp
	jmp 	L_getRevealedMerkleNodes$8
L_getRevealedMerkleNodes$9:
	movq	(%rsi,%rbp,8), %r12
	cmpq	%rbx, %r12
	jne 	L_getRevealedMerkleNodes$10
	movb	$1, %r13b
L_getRevealedMerkleNodes$10:
	incq	%rbp
L_getRevealedMerkleNodes$8:
	cmpq	%r10, %rbp
	jb  	L_getRevealedMerkleNodes$9
	cmpb	$0, %r13b
	jne 	L_getRevealedMerkleNodes$7
	movq	%rbx, (%rsi,%r10,8)
	incq	%r10
L_getRevealedMerkleNodes$7:
	movq	$0, %rbp
L_getRevealedMerkleNodes$6:
	movq	%rbp, %rbx
L_getRevealedMerkleNodes$4:
	cmpq	$0, %rbp
	jne 	L_getRevealedMerkleNodes$5
	incq	%rax
L_getRevealedMerkleNodes$2:
	cmpq	$533, %rax
	jb  	L_getRevealedMerkleNodes$3
	ret
L_getRevealedNodes$1:
	movq	$0, %rcx
	jmp 	L_getRevealedNodes$21
L_getRevealedNodes$22:
	movw	(%rax,%rcx,2), %di
	addw	$1023, %di
	movq	$0, %r11
	imulq	$68, %r11, %r11
	addq	%rcx, %r11
	movw	%di, 8(%rsp,%r11,2)
	addq	$68, %r11
	cmpw	$0, %di
	je  	L_getRevealedNodes$23
	incw	%di
	shrw	$1, %di
	decw	%di
L_getRevealedNodes$26:
	jmp 	L_getRevealedNodes$23
L_getRevealedNodes$24:
	movw	%di, 8(%rsp,%r11,2)
	cmpw	$0, %di
	je  	L_getRevealedNodes$25
	incw	%di
	shrw	$1, %di
	decw	%di
L_getRevealedNodes$25:
	addq	$68, %r11
L_getRevealedNodes$23:
	cmpw	$0, %di
	jne 	L_getRevealedNodes$24
	incq	%rcx
L_getRevealedNodes$21:
	cmpq	$68, %rcx
	jb  	L_getRevealedNodes$22
	movq	$0, %r11
	movq	$0, %rax
	jmp 	L_getRevealedNodes$2
L_getRevealedNodes$3:
	movq	$0, %r10
	jmp 	L_getRevealedNodes$4
L_getRevealedNodes$5:
	movq	%r11, %rcx
	imulq	$68, %rcx, %rcx
	addq	%r10, %rcx
	movw	8(%rsp,%rcx,2), %di
	movzwq	%di, %rcx
	call	L__hasSibling$1
L_getRevealedNodes$20:
	cmpb	$1, %cl
	jne 	L_getRevealedNodes$6
	movq	%r11, %rcx
	imulq	$68, %rcx, %rcx
	addq	%r10, %rcx
	movw	8(%rsp,%rcx,2), %di
	movzwq	%di, %rdi
	call	L__getSibling$1
L_getRevealedNodes$19:
	movq	%r11, %rcx
	imulq	$68, %rcx, %r12
	leaq	8(%rsp), %rcx
	call	L_contains_pathSets$1
L_getRevealedNodes$18:
	cmpb	$0, %r13b
	jne 	L_getRevealedNodes$6
	call	L__hasRightChild_T1$1
L_getRevealedNodes$17:
	call	L__isLeafNode$1
L_getRevealedNodes$16:
	addb	%r13b, %cl
	jmp 	L_getRevealedNodes$12
L_getRevealedNodes$13:
	shlq	$1, %rdi
	incq	%rdi
	call	L__hasRightChild_T1$1
L_getRevealedNodes$15:
	call	L__isLeafNode$1
L_getRevealedNodes$14:
	addb	%r13b, %cl
L_getRevealedNodes$12:
	cmpb	$0, %cl
	je  	L_getRevealedNodes$13
	movb	$0, %r13b
	movq	$0, %rcx
	jmp 	L_getRevealedNodes$9
L_getRevealedNodes$10:
	movq	(%rsi,%rcx,8), %rbp
	cmpq	%rdi, %rbp
	jne 	L_getRevealedNodes$11
	movb	$1, %r13b
L_getRevealedNodes$11:
	incq	%rcx
L_getRevealedNodes$9:
	cmpq	%rax, %rcx
	jb  	L_getRevealedNodes$10
	cmpb	$0, %r13b
	jne 	L_getRevealedNodes$6
	movq	%rdi, (%rsi,%rax,8)
	incq	%rax
L_getRevealedNodes$8:
L_getRevealedNodes$7:
L_getRevealedNodes$6:
	incq	%r10
L_getRevealedNodes$4:
	cmpq	$68, %r10
	jb  	L_getRevealedNodes$5
	incq	%r11
L_getRevealedNodes$2:
	cmpq	$10, %r11
	jb  	L_getRevealedNodes$3
	ret
L_expandSeeds_22$1:
	movq	%rdx, 288(%rsp)
	movq	%r10, 296(%rsp)
	movq	%rdi, 304(%rsp)
	movq	%r11, 312(%rsp)
	movw	%ax, %r9w
	movw	%r9w, 368(%rsp)
	imulq	$31, %rax, %rax
	movq	%rax, 320(%rsp)
	movq	$31, %r10
	decq	%r10
	cmpq	$0, %r10
	je  	L_expandSeeds_22$29
	incq	%r10
	shrq	$1, %r10
	decq	%r10
L_expandSeeds_22$29:
	movq	$0, %rsi
	movq	$2, %rax
	cmpq	%rax, %r10
	jnb 	L_expandSeeds_22$28
	movq	%r10, %rax
L_expandSeeds_22$28:
	movq	%r10, 328(%rsp)
	jmp 	L_expandSeeds_22$20
L_expandSeeds_22$21:
	movq	%rsi, 336(%rsp)
	movq	%rax, 344(%rsp)
	movq	320(%rsp), %rax
	addq	%rsi, %rax
	movq	296(%rsp), %r10
	movb	(%r10,%rax), %cl
	cmpb	$1, %cl
	jne 	L_expandSeeds_22$22
	imulq	$32, %rax, %rax
	movw	%si, %cx
	movq	288(%rsp), %rdx
	movq	312(%rsp), %rdi
	movw	368(%rsp), %r9w
	leaq	32(%rsp), %rsi
	leaq	-376(%rsp), %rsp
	call	L_hashSeed_22$1
L_expandSeeds_22$27:
	leaq	376(%rsp), %rsp
	movq	336(%rsp), %rax
	shlq	$1, %rax
	incq	%rax
	movq	320(%rsp), %rcx
	addq	%rcx, %rax
	movq	296(%rsp), %r10
	movb	(%r10,%rax), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_22$26
	movb	$1, (%r10,%rax)
	movq	$0, %rdx
	imulq	$32, %rax, %rax
	movq	288(%rsp), %r9
	movq	32(%rsp,%rdx), %rdi
	movq	%rdi, (%r9,%rax)
	movq	40(%rsp,%rdx), %rdi
	movq	%rdi, 8(%r9,%rax)
	movq	48(%rsp,%rdx), %rdi
	movq	%rdi, 16(%r9,%rax)
	movq	56(%rsp,%rdx), %rdx
	movq	%rdx, 24(%r9,%rax)
L_expandSeeds_22$26:
	movq	336(%rsp), %rax
	shlq	$1, %rax
	addq	$2, %rax
	movq	320(%rsp), %rdx
	addq	%rdx, %rax
	movq	304(%rsp), %rdx
	call	L__exists_22$1
L_expandSeeds_22$25:
	cmpb	$1, %cl
	jne 	L_expandSeeds_22$22
	movq	296(%rsp), %r10
	movb	(%r10,%rax), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_22$22
	movb	$1, (%r10,%rax)
	movq	$32, %rdx
	imulq	$32, %rax, %rax
	movq	288(%rsp), %r9
	movq	32(%rsp,%rdx), %rcx
	movq	%rcx, (%r9,%rax)
	movq	40(%rsp,%rdx), %rcx
	movq	%rcx, 8(%r9,%rax)
	movq	48(%rsp,%rdx), %rcx
	movq	%rcx, 16(%r9,%rax)
	movq	56(%rsp,%rdx), %rcx
	movq	%rcx, 24(%r9,%rax)
L_expandSeeds_22$24:
L_expandSeeds_22$23:
L_expandSeeds_22$22:
	movq	336(%rsp), %rsi
	movq	344(%rsp), %rax
	incq	%rsi
L_expandSeeds_22$20:
	cmpq	%rax, %rsi
	jbe 	L_expandSeeds_22$21
	movq	328(%rsp), %rax
	shrq	$2, %rax
	shlq	$2, %rax
	jmp 	L_expandSeeds_22$10
L_expandSeeds_22$11:
	movq	%rsi, 344(%rsp)
	movq	%rax, 336(%rsp)
	movq	%rsi, %rax
	movq	320(%rsp), %rcx
	addq	%rcx, %rax
	imulq	$32, %rax, %rax
	movq	288(%rsp), %rcx
	movq	312(%rsp), %rdi
	movw	368(%rsp), %r9w
	leaq	32(%rsp), %rdx
	leaq	-1016(%rsp), %rsp
	call	L_hashSeed_x4_22$1
L_expandSeeds_22$19:
	leaq	1016(%rsp), %rsp
	movq	$0, %rcx
	jmp 	L_expandSeeds_22$12
L_expandSeeds_22$13:
	movq	%rcx, 352(%rsp)
	movq	344(%rsp), %rcx
	movq	320(%rsp), %rax
	addq	%rax, %rcx
	movq	296(%rsp), %r10
	movb	(%r10,%rcx), %cl
	cmpb	$1, %cl
	jne 	L_expandSeeds_22$14
	movq	344(%rsp), %rax
	shlq	$1, %rax
	incq	%rax
	movq	320(%rsp), %rcx
	addq	%rcx, %rax
	movq	296(%rsp), %r10
	movb	(%r10,%rax), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_22$18
	movq	352(%rsp), %rdx
	imulq	$2, %rdx, %rdx
	imulq	$32, %rdx, %rdx
	movb	$1, (%r10,%rax)
	imulq	$32, %rax, %rax
	movq	288(%rsp), %r9
	movq	32(%rsp,%rdx), %rdi
	movq	%rdi, (%r9,%rax)
	movq	40(%rsp,%rdx), %rdi
	movq	%rdi, 8(%r9,%rax)
	movq	48(%rsp,%rdx), %rdi
	movq	%rdi, 16(%r9,%rax)
	movq	56(%rsp,%rdx), %rdx
	movq	%rdx, 24(%r9,%rax)
L_expandSeeds_22$18:
	movq	%r10, 360(%rsp)
	movq	344(%rsp), %rax
	shlq	$1, %rax
	addq	$2, %rax
	movq	320(%rsp), %rdx
	addq	%rdx, %rax
	movq	304(%rsp), %rdx
	call	L__exists_22$1
L_expandSeeds_22$17:
	cmpb	$1, %cl
	jne 	L_expandSeeds_22$14
	movq	360(%rsp), %r10
	movb	(%r10,%rax), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_22$14
	movq	352(%rsp), %rcx
	imulq	$2, %rcx, %rcx
	imulq	$32, %rcx, %rdx
	addq	$32, %rdx
	movb	$1, (%r10,%rax)
	imulq	$32, %rax, %rax
	movq	288(%rsp), %r9
	movq	32(%rsp,%rdx), %rcx
	movq	%rcx, (%r9,%rax)
	movq	40(%rsp,%rdx), %rcx
	movq	%rcx, 8(%r9,%rax)
	movq	48(%rsp,%rdx), %rcx
	movq	%rcx, 16(%r9,%rax)
	movq	56(%rsp,%rdx), %rcx
	movq	%rcx, 24(%r9,%rax)
L_expandSeeds_22$16:
L_expandSeeds_22$15:
L_expandSeeds_22$14:
	movq	352(%rsp), %rcx
	incq	%rcx
	incq	344(%rsp)
L_expandSeeds_22$12:
	cmpq	$4, %rcx
	jb  	L_expandSeeds_22$13
	movq	344(%rsp), %rsi
	movq	336(%rsp), %rax
L_expandSeeds_22$10:
	cmpq	%rax, %rsi
	jbe 	L_expandSeeds_22$11
	movq	328(%rsp), %rax
	jmp 	L_expandSeeds_22$2
L_expandSeeds_22$3:
	movq	%rsi, 328(%rsp)
	movq	%rax, 336(%rsp)
	movq	320(%rsp), %rax
	addq	%rax, %rsi
	movq	296(%rsp), %r10
	movb	(%r10,%rsi), %cl
	cmpb	$1, %cl
	jne 	L_expandSeeds_22$4
	imulq	$32, %rsi, %rax
	movq	328(%rsp), %rcx
	movq	288(%rsp), %rdx
	movq	312(%rsp), %rdi
	movw	368(%rsp), %r9w
	leaq	32(%rsp), %rsi
	leaq	-376(%rsp), %rsp
	call	L_hashSeed_22$1
L_expandSeeds_22$9:
	leaq	376(%rsp), %rsp
	movq	328(%rsp), %rax
	shlq	$1, %rax
	incq	%rax
	movq	320(%rsp), %rcx
	addq	%rcx, %rax
	movq	296(%rsp), %r10
	movb	(%r10,%rax), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_22$8
	movb	$1, (%r10,%rax)
	movq	$0, %rdx
	imulq	$32, %rax, %rax
	movq	288(%rsp), %r9
	movq	32(%rsp,%rdx), %rdi
	movq	%rdi, (%r9,%rax)
	movq	40(%rsp,%rdx), %rdi
	movq	%rdi, 8(%r9,%rax)
	movq	48(%rsp,%rdx), %rdi
	movq	%rdi, 16(%r9,%rax)
	movq	56(%rsp,%rdx), %rdx
	movq	%rdx, 24(%r9,%rax)
L_expandSeeds_22$8:
	movq	328(%rsp), %rax
	shlq	$1, %rax
	addq	$2, %rax
	movq	320(%rsp), %rdx
	addq	%rdx, %rax
	movq	304(%rsp), %rdx
	call	L__exists_22$1
L_expandSeeds_22$7:
	cmpb	$1, %cl
	jne 	L_expandSeeds_22$4
	movq	296(%rsp), %r10
	movb	(%r10,%rax), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_22$4
	movb	$1, (%r10,%rax)
	movq	$32, %rdx
	imulq	$32, %rax, %rax
	movq	288(%rsp), %r9
	movq	32(%rsp,%rdx), %rcx
	movq	%rcx, (%r9,%rax)
	movq	40(%rsp,%rdx), %rcx
	movq	%rcx, 8(%r9,%rax)
	movq	48(%rsp,%rdx), %rcx
	movq	%rcx, 16(%r9,%rax)
	movq	56(%rsp,%rdx), %rcx
	movq	%rcx, 24(%r9,%rax)
L_expandSeeds_22$6:
L_expandSeeds_22$5:
L_expandSeeds_22$4:
	movq	336(%rsp), %rax
	movq	328(%rsp), %rsi
	incq	%rsi
L_expandSeeds_22$2:
	cmpq	%rax, %rsi
	jbe 	L_expandSeeds_22$3
	ret
L_expandSeeds_2$1:
	movq	%rdx, 288(%rsp)
	movq	%r10, 296(%rsp)
	movq	%rbx, 304(%rsp)
	movq	%r11, 312(%rsp)
	movw	%r9w, 352(%rsp)
	movq	$31, %r10
	decq	%r10
	cmpq	$0, %r10
	je  	L_expandSeeds_2$29
	incq	%r10
	shrq	$1, %r10
	decq	%r10
L_expandSeeds_2$29:
	movq	$0, %rsi
	movq	$2, %rax
	cmpq	%rax, %r10
	jnb 	L_expandSeeds_2$28
	movq	%r10, %rax
L_expandSeeds_2$28:
	movq	%r10, 320(%rsp)
	jmp 	L_expandSeeds_2$20
L_expandSeeds_2$21:
	movq	296(%rsp), %r10
	movb	(%r10,%rsi), %cl
	movq	%rsi, 328(%rsp)
	movq	%rax, 336(%rsp)
	cmpb	$1, %cl
	jne 	L_expandSeeds_2$22
	movq	328(%rsp), %rcx
	movq	%rcx, %rax
	imulq	$32, %rax, %rax
	movw	%cx, %dx
	movq	%rcx, 328(%rsp)
	movq	288(%rsp), %rcx
	movq	312(%rsp), %rdi
	movw	352(%rsp), %r9w
	leaq	32(%rsp), %rsi
	leaq	-376(%rsp), %rsp
	call	L_hashSeed_2$1
L_expandSeeds_2$27:
	leaq	376(%rsp), %rsp
	movq	328(%rsp), %rdi
	movq	296(%rsp), %r10
	movq	%rdi, %rsi
	shlq	$1, %rsi
	incq	%rsi
	movb	(%r10,%rsi), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_2$26
	movb	$1, (%r10,%rsi)
	movq	$0, %rax
	imulq	$32, %rsi, %rdx
	movq	288(%rsp), %r9
	movb	32(%rsp,%rax), %sil
	movb	%sil, (%r9,%rdx)
	movb	33(%rsp,%rax), %sil
	movb	%sil, 1(%r9,%rdx)
	movb	34(%rsp,%rax), %sil
	movb	%sil, 2(%r9,%rdx)
	movb	35(%rsp,%rax), %sil
	movb	%sil, 3(%r9,%rdx)
	movb	36(%rsp,%rax), %sil
	movb	%sil, 4(%r9,%rdx)
	movb	37(%rsp,%rax), %sil
	movb	%sil, 5(%r9,%rdx)
	movb	38(%rsp,%rax), %sil
	movb	%sil, 6(%r9,%rdx)
	movb	39(%rsp,%rax), %sil
	movb	%sil, 7(%r9,%rdx)
	movb	40(%rsp,%rax), %sil
	movb	%sil, 8(%r9,%rdx)
	movb	41(%rsp,%rax), %sil
	movb	%sil, 9(%r9,%rdx)
	movb	42(%rsp,%rax), %sil
	movb	%sil, 10(%r9,%rdx)
	movb	43(%rsp,%rax), %sil
	movb	%sil, 11(%r9,%rdx)
	movb	44(%rsp,%rax), %sil
	movb	%sil, 12(%r9,%rdx)
	movb	45(%rsp,%rax), %sil
	movb	%sil, 13(%r9,%rdx)
	movb	46(%rsp,%rax), %sil
	movb	%sil, 14(%r9,%rdx)
	movb	47(%rsp,%rax), %sil
	movb	%sil, 15(%r9,%rdx)
	movb	48(%rsp,%rax), %sil
	movb	%sil, 16(%r9,%rdx)
	movb	49(%rsp,%rax), %sil
	movb	%sil, 17(%r9,%rdx)
	movb	50(%rsp,%rax), %sil
	movb	%sil, 18(%r9,%rdx)
	movb	51(%rsp,%rax), %sil
	movb	%sil, 19(%r9,%rdx)
	movb	52(%rsp,%rax), %sil
	movb	%sil, 20(%r9,%rdx)
	movb	53(%rsp,%rax), %sil
	movb	%sil, 21(%r9,%rdx)
	movb	54(%rsp,%rax), %sil
	movb	%sil, 22(%r9,%rdx)
	movb	55(%rsp,%rax), %sil
	movb	%sil, 23(%r9,%rdx)
	movb	56(%rsp,%rax), %sil
	movb	%sil, 24(%r9,%rdx)
	movb	57(%rsp,%rax), %sil
	movb	%sil, 25(%r9,%rdx)
	movb	58(%rsp,%rax), %sil
	movb	%sil, 26(%r9,%rdx)
	movb	59(%rsp,%rax), %sil
	movb	%sil, 27(%r9,%rdx)
	movb	60(%rsp,%rax), %sil
	movb	%sil, 28(%r9,%rdx)
	movb	61(%rsp,%rax), %sil
	movb	%sil, 29(%r9,%rdx)
	movb	62(%rsp,%rax), %sil
	movb	%sil, 30(%r9,%rdx)
	movb	63(%rsp,%rax), %al
	movb	%al, 31(%r9,%rdx)
L_expandSeeds_2$26:
	shlq	$1, %rdi
	addq	$2, %rdi
	movq	304(%rsp), %rbx
	call	L__exists_2$1
L_expandSeeds_2$25:
	cmpb	$1, %cl
	jne 	L_expandSeeds_2$22
	movq	296(%rsp), %r10
	movb	(%r10,%rdi), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_2$22
	movb	$1, (%r10,%rdi)
	movq	$32, %rax
	imulq	$32, %rdi, %rdx
	movq	288(%rsp), %r9
	movb	32(%rsp,%rax), %cl
	movb	%cl, (%r9,%rdx)
	movb	33(%rsp,%rax), %cl
	movb	%cl, 1(%r9,%rdx)
	movb	34(%rsp,%rax), %cl
	movb	%cl, 2(%r9,%rdx)
	movb	35(%rsp,%rax), %cl
	movb	%cl, 3(%r9,%rdx)
	movb	36(%rsp,%rax), %cl
	movb	%cl, 4(%r9,%rdx)
	movb	37(%rsp,%rax), %cl
	movb	%cl, 5(%r9,%rdx)
	movb	38(%rsp,%rax), %cl
	movb	%cl, 6(%r9,%rdx)
	movb	39(%rsp,%rax), %cl
	movb	%cl, 7(%r9,%rdx)
	movb	40(%rsp,%rax), %cl
	movb	%cl, 8(%r9,%rdx)
	movb	41(%rsp,%rax), %cl
	movb	%cl, 9(%r9,%rdx)
	movb	42(%rsp,%rax), %cl
	movb	%cl, 10(%r9,%rdx)
	movb	43(%rsp,%rax), %cl
	movb	%cl, 11(%r9,%rdx)
	movb	44(%rsp,%rax), %cl
	movb	%cl, 12(%r9,%rdx)
	movb	45(%rsp,%rax), %cl
	movb	%cl, 13(%r9,%rdx)
	movb	46(%rsp,%rax), %cl
	movb	%cl, 14(%r9,%rdx)
	movb	47(%rsp,%rax), %cl
	movb	%cl, 15(%r9,%rdx)
	movb	48(%rsp,%rax), %cl
	movb	%cl, 16(%r9,%rdx)
	movb	49(%rsp,%rax), %cl
	movb	%cl, 17(%r9,%rdx)
	movb	50(%rsp,%rax), %cl
	movb	%cl, 18(%r9,%rdx)
	movb	51(%rsp,%rax), %cl
	movb	%cl, 19(%r9,%rdx)
	movb	52(%rsp,%rax), %cl
	movb	%cl, 20(%r9,%rdx)
	movb	53(%rsp,%rax), %cl
	movb	%cl, 21(%r9,%rdx)
	movb	54(%rsp,%rax), %cl
	movb	%cl, 22(%r9,%rdx)
	movb	55(%rsp,%rax), %cl
	movb	%cl, 23(%r9,%rdx)
	movb	56(%rsp,%rax), %cl
	movb	%cl, 24(%r9,%rdx)
	movb	57(%rsp,%rax), %cl
	movb	%cl, 25(%r9,%rdx)
	movb	58(%rsp,%rax), %cl
	movb	%cl, 26(%r9,%rdx)
	movb	59(%rsp,%rax), %cl
	movb	%cl, 27(%r9,%rdx)
	movb	60(%rsp,%rax), %cl
	movb	%cl, 28(%r9,%rdx)
	movb	61(%rsp,%rax), %cl
	movb	%cl, 29(%r9,%rdx)
	movb	62(%rsp,%rax), %cl
	movb	%cl, 30(%r9,%rdx)
	movb	63(%rsp,%rax), %al
	movb	%al, 31(%r9,%rdx)
L_expandSeeds_2$24:
L_expandSeeds_2$23:
L_expandSeeds_2$22:
	movq	328(%rsp), %rsi
	movq	336(%rsp), %rax
	incq	%rsi
L_expandSeeds_2$20:
	cmpq	%rax, %rsi
	jbe 	L_expandSeeds_2$21
	movq	320(%rsp), %rcx
	shrq	$2, %rcx
	shlq	$2, %rcx
	jmp 	L_expandSeeds_2$10
L_expandSeeds_2$11:
	movq	%rsi, %rax
	imulq	$32, %rax, %rax
	movw	%si, %dx
	movq	%rsi, 336(%rsp)
	movq	%rcx, 328(%rsp)
	movq	288(%rsp), %rcx
	movq	312(%rsp), %rdi
	movw	352(%rsp), %r9w
	leaq	32(%rsp), %rsi
	leaq	-1016(%rsp), %rsp
	call	L_hashSeed_x4_2$1
L_expandSeeds_2$19:
	leaq	1016(%rsp), %rsp
	movq	$0, %rcx
	jmp 	L_expandSeeds_2$12
L_expandSeeds_2$13:
	movq	%rcx, 344(%rsp)
	movq	336(%rsp), %rdi
	movq	296(%rsp), %r10
	movb	(%r10,%rdi), %cl
	cmpb	$1, %cl
	jne 	L_expandSeeds_2$14
	movq	%rdi, %rsi
	shlq	$1, %rsi
	incq	%rsi
	movb	(%r10,%rsi), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_2$18
	movq	344(%rsp), %rdx
	imulq	$2, %rdx, %rax
	imulq	$32, %rax, %rax
	movb	$1, (%r10,%rsi)
	imulq	$32, %rsi, %rdx
	movq	288(%rsp), %r9
	movb	32(%rsp,%rax), %sil
	movb	%sil, (%r9,%rdx)
	movb	33(%rsp,%rax), %sil
	movb	%sil, 1(%r9,%rdx)
	movb	34(%rsp,%rax), %sil
	movb	%sil, 2(%r9,%rdx)
	movb	35(%rsp,%rax), %sil
	movb	%sil, 3(%r9,%rdx)
	movb	36(%rsp,%rax), %sil
	movb	%sil, 4(%r9,%rdx)
	movb	37(%rsp,%rax), %sil
	movb	%sil, 5(%r9,%rdx)
	movb	38(%rsp,%rax), %sil
	movb	%sil, 6(%r9,%rdx)
	movb	39(%rsp,%rax), %sil
	movb	%sil, 7(%r9,%rdx)
	movb	40(%rsp,%rax), %sil
	movb	%sil, 8(%r9,%rdx)
	movb	41(%rsp,%rax), %sil
	movb	%sil, 9(%r9,%rdx)
	movb	42(%rsp,%rax), %sil
	movb	%sil, 10(%r9,%rdx)
	movb	43(%rsp,%rax), %sil
	movb	%sil, 11(%r9,%rdx)
	movb	44(%rsp,%rax), %sil
	movb	%sil, 12(%r9,%rdx)
	movb	45(%rsp,%rax), %sil
	movb	%sil, 13(%r9,%rdx)
	movb	46(%rsp,%rax), %sil
	movb	%sil, 14(%r9,%rdx)
	movb	47(%rsp,%rax), %sil
	movb	%sil, 15(%r9,%rdx)
	movb	48(%rsp,%rax), %sil
	movb	%sil, 16(%r9,%rdx)
	movb	49(%rsp,%rax), %sil
	movb	%sil, 17(%r9,%rdx)
	movb	50(%rsp,%rax), %sil
	movb	%sil, 18(%r9,%rdx)
	movb	51(%rsp,%rax), %sil
	movb	%sil, 19(%r9,%rdx)
	movb	52(%rsp,%rax), %sil
	movb	%sil, 20(%r9,%rdx)
	movb	53(%rsp,%rax), %sil
	movb	%sil, 21(%r9,%rdx)
	movb	54(%rsp,%rax), %sil
	movb	%sil, 22(%r9,%rdx)
	movb	55(%rsp,%rax), %sil
	movb	%sil, 23(%r9,%rdx)
	movb	56(%rsp,%rax), %sil
	movb	%sil, 24(%r9,%rdx)
	movb	57(%rsp,%rax), %sil
	movb	%sil, 25(%r9,%rdx)
	movb	58(%rsp,%rax), %sil
	movb	%sil, 26(%r9,%rdx)
	movb	59(%rsp,%rax), %sil
	movb	%sil, 27(%r9,%rdx)
	movb	60(%rsp,%rax), %sil
	movb	%sil, 28(%r9,%rdx)
	movb	61(%rsp,%rax), %sil
	movb	%sil, 29(%r9,%rdx)
	movb	62(%rsp,%rax), %sil
	movb	%sil, 30(%r9,%rdx)
	movb	63(%rsp,%rax), %al
	movb	%al, 31(%r9,%rdx)
L_expandSeeds_2$18:
	shlq	$1, %rdi
	addq	$2, %rdi
	movq	304(%rsp), %rbx
	call	L__exists_2$1
L_expandSeeds_2$17:
	cmpb	$1, %cl
	jne 	L_expandSeeds_2$14
	movb	(%r10,%rdi), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_2$14
	movq	344(%rsp), %rcx
	imulq	$2, %rcx, %rax
	imulq	$32, %rax, %rax
	addq	$32, %rax
	movb	$1, (%r10,%rdi)
	imulq	$32, %rdi, %rdx
	movq	288(%rsp), %r9
	movb	32(%rsp,%rax), %cl
	movb	%cl, (%r9,%rdx)
	movb	33(%rsp,%rax), %cl
	movb	%cl, 1(%r9,%rdx)
	movb	34(%rsp,%rax), %cl
	movb	%cl, 2(%r9,%rdx)
	movb	35(%rsp,%rax), %cl
	movb	%cl, 3(%r9,%rdx)
	movb	36(%rsp,%rax), %cl
	movb	%cl, 4(%r9,%rdx)
	movb	37(%rsp,%rax), %cl
	movb	%cl, 5(%r9,%rdx)
	movb	38(%rsp,%rax), %cl
	movb	%cl, 6(%r9,%rdx)
	movb	39(%rsp,%rax), %cl
	movb	%cl, 7(%r9,%rdx)
	movb	40(%rsp,%rax), %cl
	movb	%cl, 8(%r9,%rdx)
	movb	41(%rsp,%rax), %cl
	movb	%cl, 9(%r9,%rdx)
	movb	42(%rsp,%rax), %cl
	movb	%cl, 10(%r9,%rdx)
	movb	43(%rsp,%rax), %cl
	movb	%cl, 11(%r9,%rdx)
	movb	44(%rsp,%rax), %cl
	movb	%cl, 12(%r9,%rdx)
	movb	45(%rsp,%rax), %cl
	movb	%cl, 13(%r9,%rdx)
	movb	46(%rsp,%rax), %cl
	movb	%cl, 14(%r9,%rdx)
	movb	47(%rsp,%rax), %cl
	movb	%cl, 15(%r9,%rdx)
	movb	48(%rsp,%rax), %cl
	movb	%cl, 16(%r9,%rdx)
	movb	49(%rsp,%rax), %cl
	movb	%cl, 17(%r9,%rdx)
	movb	50(%rsp,%rax), %cl
	movb	%cl, 18(%r9,%rdx)
	movb	51(%rsp,%rax), %cl
	movb	%cl, 19(%r9,%rdx)
	movb	52(%rsp,%rax), %cl
	movb	%cl, 20(%r9,%rdx)
	movb	53(%rsp,%rax), %cl
	movb	%cl, 21(%r9,%rdx)
	movb	54(%rsp,%rax), %cl
	movb	%cl, 22(%r9,%rdx)
	movb	55(%rsp,%rax), %cl
	movb	%cl, 23(%r9,%rdx)
	movb	56(%rsp,%rax), %cl
	movb	%cl, 24(%r9,%rdx)
	movb	57(%rsp,%rax), %cl
	movb	%cl, 25(%r9,%rdx)
	movb	58(%rsp,%rax), %cl
	movb	%cl, 26(%r9,%rdx)
	movb	59(%rsp,%rax), %cl
	movb	%cl, 27(%r9,%rdx)
	movb	60(%rsp,%rax), %cl
	movb	%cl, 28(%r9,%rdx)
	movb	61(%rsp,%rax), %cl
	movb	%cl, 29(%r9,%rdx)
	movb	62(%rsp,%rax), %cl
	movb	%cl, 30(%r9,%rdx)
	movb	63(%rsp,%rax), %al
	movb	%al, 31(%r9,%rdx)
L_expandSeeds_2$16:
L_expandSeeds_2$15:
L_expandSeeds_2$14:
	movq	344(%rsp), %rcx
	movq	336(%rsp), %rsi
	incq	%rcx
	incq	%rsi
	movq	%rsi, 336(%rsp)
L_expandSeeds_2$12:
	cmpq	$4, %rcx
	jb  	L_expandSeeds_2$13
	movq	336(%rsp), %rsi
	movq	328(%rsp), %rcx
L_expandSeeds_2$10:
	cmpq	%rcx, %rsi
	jbe 	L_expandSeeds_2$11
	movq	320(%rsp), %rax
	jmp 	L_expandSeeds_2$2
L_expandSeeds_2$3:
	movq	296(%rsp), %r10
	movb	(%r10,%rsi), %cl
	movq	%rax, 320(%rsp)
	cmpb	$1, %cl
	jne 	L_expandSeeds_2$4
	movq	%rsi, %rax
	imulq	$32, %rax, %rax
	movw	%si, %dx
	movq	%rsi, 328(%rsp)
	movq	288(%rsp), %rcx
	movq	312(%rsp), %rdi
	movw	352(%rsp), %r9w
	leaq	32(%rsp), %rsi
	leaq	-376(%rsp), %rsp
	call	L_hashSeed_2$1
L_expandSeeds_2$9:
	leaq	376(%rsp), %rsp
	movq	328(%rsp), %rsi
	movq	296(%rsp), %r10
	movq	%rsi, %rdi
	shlq	$1, %rdi
	incq	%rdi
	movb	(%r10,%rdi), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_2$8
	movb	$1, (%r10,%rdi)
	movq	$0, %rax
	imulq	$32, %rdi, %rdx
	movq	288(%rsp), %r9
	movb	32(%rsp,%rax), %dil
	movb	%dil, (%r9,%rdx)
	movb	33(%rsp,%rax), %dil
	movb	%dil, 1(%r9,%rdx)
	movb	34(%rsp,%rax), %dil
	movb	%dil, 2(%r9,%rdx)
	movb	35(%rsp,%rax), %dil
	movb	%dil, 3(%r9,%rdx)
	movb	36(%rsp,%rax), %dil
	movb	%dil, 4(%r9,%rdx)
	movb	37(%rsp,%rax), %dil
	movb	%dil, 5(%r9,%rdx)
	movb	38(%rsp,%rax), %dil
	movb	%dil, 6(%r9,%rdx)
	movb	39(%rsp,%rax), %dil
	movb	%dil, 7(%r9,%rdx)
	movb	40(%rsp,%rax), %dil
	movb	%dil, 8(%r9,%rdx)
	movb	41(%rsp,%rax), %dil
	movb	%dil, 9(%r9,%rdx)
	movb	42(%rsp,%rax), %dil
	movb	%dil, 10(%r9,%rdx)
	movb	43(%rsp,%rax), %dil
	movb	%dil, 11(%r9,%rdx)
	movb	44(%rsp,%rax), %dil
	movb	%dil, 12(%r9,%rdx)
	movb	45(%rsp,%rax), %dil
	movb	%dil, 13(%r9,%rdx)
	movb	46(%rsp,%rax), %dil
	movb	%dil, 14(%r9,%rdx)
	movb	47(%rsp,%rax), %dil
	movb	%dil, 15(%r9,%rdx)
	movb	48(%rsp,%rax), %dil
	movb	%dil, 16(%r9,%rdx)
	movb	49(%rsp,%rax), %dil
	movb	%dil, 17(%r9,%rdx)
	movb	50(%rsp,%rax), %dil
	movb	%dil, 18(%r9,%rdx)
	movb	51(%rsp,%rax), %dil
	movb	%dil, 19(%r9,%rdx)
	movb	52(%rsp,%rax), %dil
	movb	%dil, 20(%r9,%rdx)
	movb	53(%rsp,%rax), %dil
	movb	%dil, 21(%r9,%rdx)
	movb	54(%rsp,%rax), %dil
	movb	%dil, 22(%r9,%rdx)
	movb	55(%rsp,%rax), %dil
	movb	%dil, 23(%r9,%rdx)
	movb	56(%rsp,%rax), %dil
	movb	%dil, 24(%r9,%rdx)
	movb	57(%rsp,%rax), %dil
	movb	%dil, 25(%r9,%rdx)
	movb	58(%rsp,%rax), %dil
	movb	%dil, 26(%r9,%rdx)
	movb	59(%rsp,%rax), %dil
	movb	%dil, 27(%r9,%rdx)
	movb	60(%rsp,%rax), %dil
	movb	%dil, 28(%r9,%rdx)
	movb	61(%rsp,%rax), %dil
	movb	%dil, 29(%r9,%rdx)
	movb	62(%rsp,%rax), %dil
	movb	%dil, 30(%r9,%rdx)
	movb	63(%rsp,%rax), %al
	movb	%al, 31(%r9,%rdx)
L_expandSeeds_2$8:
	movq	%rsi, %rdi
	shlq	$1, %rdi
	addq	$2, %rdi
	movq	304(%rsp), %rbx
	call	L__exists_2$1
L_expandSeeds_2$7:
	cmpb	$1, %cl
	jne 	L_expandSeeds_2$4
	movq	296(%rsp), %r10
	movb	(%r10,%rdi), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_2$4
	movb	$1, (%r10,%rdi)
	movq	$32, %rax
	imulq	$32, %rdi, %rdx
	movq	288(%rsp), %r9
	movb	32(%rsp,%rax), %cl
	movb	%cl, (%r9,%rdx)
	movb	33(%rsp,%rax), %cl
	movb	%cl, 1(%r9,%rdx)
	movb	34(%rsp,%rax), %cl
	movb	%cl, 2(%r9,%rdx)
	movb	35(%rsp,%rax), %cl
	movb	%cl, 3(%r9,%rdx)
	movb	36(%rsp,%rax), %cl
	movb	%cl, 4(%r9,%rdx)
	movb	37(%rsp,%rax), %cl
	movb	%cl, 5(%r9,%rdx)
	movb	38(%rsp,%rax), %cl
	movb	%cl, 6(%r9,%rdx)
	movb	39(%rsp,%rax), %cl
	movb	%cl, 7(%r9,%rdx)
	movb	40(%rsp,%rax), %cl
	movb	%cl, 8(%r9,%rdx)
	movb	41(%rsp,%rax), %cl
	movb	%cl, 9(%r9,%rdx)
	movb	42(%rsp,%rax), %cl
	movb	%cl, 10(%r9,%rdx)
	movb	43(%rsp,%rax), %cl
	movb	%cl, 11(%r9,%rdx)
	movb	44(%rsp,%rax), %cl
	movb	%cl, 12(%r9,%rdx)
	movb	45(%rsp,%rax), %cl
	movb	%cl, 13(%r9,%rdx)
	movb	46(%rsp,%rax), %cl
	movb	%cl, 14(%r9,%rdx)
	movb	47(%rsp,%rax), %cl
	movb	%cl, 15(%r9,%rdx)
	movb	48(%rsp,%rax), %cl
	movb	%cl, 16(%r9,%rdx)
	movb	49(%rsp,%rax), %cl
	movb	%cl, 17(%r9,%rdx)
	movb	50(%rsp,%rax), %cl
	movb	%cl, 18(%r9,%rdx)
	movb	51(%rsp,%rax), %cl
	movb	%cl, 19(%r9,%rdx)
	movb	52(%rsp,%rax), %cl
	movb	%cl, 20(%r9,%rdx)
	movb	53(%rsp,%rax), %cl
	movb	%cl, 21(%r9,%rdx)
	movb	54(%rsp,%rax), %cl
	movb	%cl, 22(%r9,%rdx)
	movb	55(%rsp,%rax), %cl
	movb	%cl, 23(%r9,%rdx)
	movb	56(%rsp,%rax), %cl
	movb	%cl, 24(%r9,%rdx)
	movb	57(%rsp,%rax), %cl
	movb	%cl, 25(%r9,%rdx)
	movb	58(%rsp,%rax), %cl
	movb	%cl, 26(%r9,%rdx)
	movb	59(%rsp,%rax), %cl
	movb	%cl, 27(%r9,%rdx)
	movb	60(%rsp,%rax), %cl
	movb	%cl, 28(%r9,%rdx)
	movb	61(%rsp,%rax), %cl
	movb	%cl, 29(%r9,%rdx)
	movb	62(%rsp,%rax), %cl
	movb	%cl, 30(%r9,%rdx)
	movb	63(%rsp,%rax), %al
	movb	%al, 31(%r9,%rdx)
L_expandSeeds_2$6:
L_expandSeeds_2$5:
L_expandSeeds_2$4:
	movq	320(%rsp), %rax
	incq	%rsi
L_expandSeeds_2$2:
	cmpq	%rax, %rsi
	jbe 	L_expandSeeds_2$3
	movq	288(%rsp), %rdx
	movq	296(%rsp), %r10
	movq	304(%rsp), %rax
	ret
L_expandSeeds_1$1:
	movq	%rdx, 288(%rsp)
	movq	%r10, 296(%rsp)
	movq	%rdi, 304(%rsp)
	movq	%r11, 312(%rsp)
	movw	%r9w, 344(%rsp)
	movq	$1625, %r10
	decq	%r10
	cmpq	$0, %r10
	je  	L_expandSeeds_1$29
	incq	%r10
	shrq	$1, %r10
	decq	%r10
L_expandSeeds_1$29:
	movq	$0, %rcx
	movq	$2, %rax
	cmpq	%rax, %r10
	jnb 	L_expandSeeds_1$28
	movq	%r10, %rax
L_expandSeeds_1$28:
	movq	%r10, 320(%rsp)
	jmp 	L_expandSeeds_1$20
L_expandSeeds_1$21:
	movq	296(%rsp), %r10
	movb	(%r10,%rcx), %dil
	cmpb	$1, %dil
	jne 	L_expandSeeds_1$22
	movq	%rcx, %rsi
	imulq	$32, %rsi, %rsi
	movw	%cx, %dx
	movq	%rcx, 328(%rsp)
	movq	%rax, 336(%rsp)
	leaq	32(%rsp), %rdi
	movq	288(%rsp), %rcx
	movq	312(%rsp), %r11
	movw	344(%rsp), %r9w
	leaq	-376(%rsp), %rsp
	call	L__hashSeed_1$1
L_expandSeeds_1$27:
	leaq	376(%rsp), %rsp
	movq	336(%rsp), %rax
	movq	328(%rsp), %rcx
	movq	%rcx, %rsi
	shlq	$1, %rsi
	incq	%rsi
	movq	296(%rsp), %r10
	movb	(%r10,%rsi), %dil
	cmpb	$0, %dil
	jne 	L_expandSeeds_1$26
	movb	$1, (%r10,%rsi)
	movq	$0, %rdx
	imulq	$32, %rsi, %rsi
	leaq	32(%rsp), %rdi
	movq	288(%rsp), %r9
	movq	(%rdi,%rdx), %r8
	movq	%r8, (%r9,%rsi)
	movq	8(%rdi,%rdx), %r8
	movq	%r8, 8(%r9,%rsi)
	movq	16(%rdi,%rdx), %r8
	movq	%r8, 16(%r9,%rsi)
	movq	24(%rdi,%rdx), %rdx
	movq	%rdx, 24(%r9,%rsi)
L_expandSeeds_1$26:
	movq	%rcx, %rdi
	shlq	$1, %rdi
	addq	$2, %rdi
	movq	304(%rsp), %rdx
	movb	$0, %r11b
	cmpq	$1624, %rdi
	jnb 	L_expandSeeds_1$25
	movb	(%rdx,%rdi), %r11b
L_expandSeeds_1$25:
	cmpb	$1, %r11b
	jne 	L_expandSeeds_1$22
	movb	(%r10,%rdi), %r11b
	cmpb	$0, %r11b
	jne 	L_expandSeeds_1$22
	movb	$1, (%r10,%rdi)
	movq	$32, %rdx
	imulq	$32, %rdi, %rsi
	leaq	32(%rsp), %rdi
	movq	288(%rsp), %r9
	movq	(%rdi,%rdx), %r8
	movq	%r8, (%r9,%rsi)
	movq	8(%rdi,%rdx), %r8
	movq	%r8, 8(%r9,%rsi)
	movq	16(%rdi,%rdx), %r8
	movq	%r8, 16(%r9,%rsi)
	movq	24(%rdi,%rdx), %rdx
	movq	%rdx, 24(%r9,%rsi)
L_expandSeeds_1$24:
L_expandSeeds_1$23:
L_expandSeeds_1$22:
	incq	%rcx
L_expandSeeds_1$20:
	cmpq	%rax, %rcx
	jbe 	L_expandSeeds_1$21
	movq	320(%rsp), %rax
	shrq	$2, %rax
	shlq	$2, %rax
	jmp 	L_expandSeeds_1$10
L_expandSeeds_1$11:
	movw	%cx, %dx
	movq	%rcx, %rsi
	imulq	$32, %rsi, %rsi
	movq	%rcx, 328(%rsp)
	movq	%rax, 336(%rsp)
	leaq	32(%rsp), %rdi
	movq	288(%rsp), %rcx
	movq	312(%rsp), %r11
	movw	344(%rsp), %r9w
	leaq	-1016(%rsp), %rsp
	call	L__hashSeed_x4_1$1
L_expandSeeds_1$19:
	leaq	1016(%rsp), %rsp
	movq	328(%rsp), %rcx
	movq	$0, %rdx
	jmp 	L_expandSeeds_1$12
L_expandSeeds_1$13:
	movq	296(%rsp), %r10
	movb	(%r10,%rcx), %dil
	cmpb	$1, %dil
	jne 	L_expandSeeds_1$14
	movq	%rcx, %rax
	shlq	$1, %rax
	incq	%rax
	movb	(%r10,%rax), %dil
	cmpb	$0, %dil
	jne 	L_expandSeeds_1$18
	movq	%rdx, %rsi
	imulq	$2, %rsi, %rsi
	imulq	$32, %rsi, %rsi
	movb	$1, (%r10,%rax)
	imulq	$32, %rax, %rax
	leaq	32(%rsp), %rdi
	movq	288(%rsp), %r9
	movq	(%rdi,%rsi), %r8
	movq	%r8, (%r9,%rax)
	movq	8(%rdi,%rsi), %r8
	movq	%r8, 8(%r9,%rax)
	movq	16(%rdi,%rsi), %r8
	movq	%r8, 16(%r9,%rax)
	movq	24(%rdi,%rsi), %rsi
	movq	%rsi, 24(%r9,%rax)
L_expandSeeds_1$18:
	movq	%rcx, %rax
	shlq	$1, %rax
	addq	$2, %rax
	movq	304(%rsp), %r9
	movb	$0, %dil
	cmpq	$1624, %rax
	jnb 	L_expandSeeds_1$17
	movb	(%r9,%rax), %dil
L_expandSeeds_1$17:
	cmpb	$1, %dil
	jne 	L_expandSeeds_1$14
	movb	(%r10,%rax), %dil
	cmpb	$0, %dil
	jne 	L_expandSeeds_1$14
	movq	%rdx, %rsi
	imulq	$2, %rsi, %rsi
	imulq	$32, %rsi, %rsi
	addq	$32, %rsi
	movb	$1, (%r10,%rax)
	imulq	$32, %rax, %rax
	leaq	32(%rsp), %rdi
	movq	288(%rsp), %r9
	movq	(%rdi,%rsi), %r8
	movq	%r8, (%r9,%rax)
	movq	8(%rdi,%rsi), %r8
	movq	%r8, 8(%r9,%rax)
	movq	16(%rdi,%rsi), %r8
	movq	%r8, 16(%r9,%rax)
	movq	24(%rdi,%rsi), %rsi
	movq	%rsi, 24(%r9,%rax)
L_expandSeeds_1$16:
L_expandSeeds_1$15:
L_expandSeeds_1$14:
	incq	%rdx
	incq	%rcx
L_expandSeeds_1$12:
	cmpq	$4, %rdx
	jb  	L_expandSeeds_1$13
	movq	336(%rsp), %rax
L_expandSeeds_1$10:
	cmpq	%rax, %rcx
	jbe 	L_expandSeeds_1$11
	movq	320(%rsp), %rax
	jmp 	L_expandSeeds_1$2
L_expandSeeds_1$3:
	movq	296(%rsp), %r10
	movb	(%r10,%rcx), %dil
	cmpb	$1, %dil
	jne 	L_expandSeeds_1$4
	movw	%cx, %dx
	movq	%rcx, %rsi
	imulq	$32, %rsi, %rsi
	movq	%rcx, 320(%rsp)
	movq	%rax, 336(%rsp)
	leaq	32(%rsp), %rdi
	movq	288(%rsp), %rcx
	movq	312(%rsp), %r11
	movw	344(%rsp), %r9w
	leaq	-376(%rsp), %rsp
	call	L__hashSeed_1$1
L_expandSeeds_1$9:
	leaq	376(%rsp), %rsp
	movq	320(%rsp), %rcx
	movq	336(%rsp), %rax
	movq	%rcx, %rsi
	shlq	$1, %rsi
	incq	%rsi
	movq	296(%rsp), %r10
	movb	(%r10,%rsi), %dil
	cmpb	$0, %dil
	jne 	L_expandSeeds_1$8
	movb	$1, (%r10,%rsi)
	movq	$0, %rdx
	imulq	$32, %rsi, %rsi
	leaq	32(%rsp), %rdi
	movq	288(%rsp), %r9
	movq	(%rdi,%rdx), %r8
	movq	%r8, (%r9,%rsi)
	movq	8(%rdi,%rdx), %r8
	movq	%r8, 8(%r9,%rsi)
	movq	16(%rdi,%rdx), %r8
	movq	%r8, 16(%r9,%rsi)
	movq	24(%rdi,%rdx), %rdx
	movq	%rdx, 24(%r9,%rsi)
L_expandSeeds_1$8:
	movq	%rcx, %rdi
	shlq	$1, %rdi
	addq	$2, %rdi
	movq	304(%rsp), %rdx
	movb	$0, %r11b
	cmpq	$1624, %rdi
	jnb 	L_expandSeeds_1$7
	movb	(%rdx,%rdi), %r11b
L_expandSeeds_1$7:
	cmpb	$1, %r11b
	jne 	L_expandSeeds_1$4
	movb	(%r10,%rdi), %r11b
	cmpb	$0, %r11b
	jne 	L_expandSeeds_1$4
	movb	$1, (%r10,%rdi)
	movq	$32, %rdx
	imulq	$32, %rdi, %rsi
	leaq	32(%rsp), %rdi
	movq	288(%rsp), %r9
	movq	(%rdi,%rdx), %r8
	movq	%r8, (%r9,%rsi)
	movq	8(%rdi,%rdx), %r8
	movq	%r8, 8(%r9,%rsi)
	movq	16(%rdi,%rdx), %r8
	movq	%r8, 16(%r9,%rsi)
	movq	24(%rdi,%rdx), %rdx
	movq	%rdx, 24(%r9,%rsi)
L_expandSeeds_1$6:
L_expandSeeds_1$5:
L_expandSeeds_1$4:
	incq	%rcx
L_expandSeeds_1$2:
	cmpq	%rax, %rcx
	jbe 	L_expandSeeds_1$3
	movq	288(%rsp), %rcx
	movq	296(%rsp), %r10
	movq	304(%rsp), %rax
	ret
L_createTree_3$1:
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$0, %rcx
	movq	$1624, %rdx
	addq	$-2, %rdx
	jmp 	L_createTree_3$11
L_createTree_3$12:
	vmovdqu	%ymm0, (%r10,%rcx)
	vmovdqu	%ymm0, (%rax,%rcx)
	addq	$32, %rcx
L_createTree_3$11:
	cmpq	%rdx, %rcx
	jb  	L_createTree_3$12
	movw	$0, (%r10,%rcx)
	movw	$0, (%rax,%rcx)
	movq	$1624, %rcx
	addq	$-601, %rcx
	movq	$1624, %rdx
	jmp 	L_createTree_3$9
L_createTree_3$10:
	movb	$1, (%rax,%rcx)
	incq	%rcx
L_createTree_3$9:
	cmpq	%rdx, %rcx
	jb  	L_createTree_3$10
	movq	$1624, %rcx
	addq	$-601, %rcx
	jmp 	L_createTree_3$2
L_createTree_3$3:
	movq	%rcx, %rdi
	shlq	$1, %rdi
	incq	%rdi
	movb	$0, %r11b
	cmpq	$1624, %rdi
	jnb 	L_createTree_3$8
	movb	(%rax,%rdi), %r11b
L_createTree_3$8:
	cmpb	$1, %r11b
	je  	L_createTree_3$4
	incq	%rdi
	movb	$0, %r11b
	cmpq	$1624, %rdi
	jnb 	L_createTree_3$7
	movb	(%rax,%rdi), %r11b
L_createTree_3$7:
	cmpb	$1, %r11b
	jne 	L_createTree_3$5
	movb	$1, (%rax,%rcx)
L_createTree_3$6:
	jmp 	L_createTree_3$5
L_createTree_3$4:
	movb	$1, (%rax,%rcx)
L_createTree_3$5:
	decq	%rcx
L_createTree_3$2:
	cmpq	$0, %rcx
	jnbe	L_createTree_3$3
	movb	$1, (%rax)
	ret
L_createTree_2$1:
	movq	$0, %rdi
	movq	$31, %r8
	jmp 	L_createTree_2$11
L_createTree_2$12:
	movb	$0, (%r10,%rdi)
	movb	$0, (%rbx,%rdi)
	incq	%rdi
L_createTree_2$11:
	cmpq	%r8, %rdi
	jb  	L_createTree_2$12
	movq	$31, %rdi
	addq	$-16, %rdi
	movq	$31, %r8
	jmp 	L_createTree_2$9
L_createTree_2$10:
	movb	$1, (%rbx,%rdi)
	incq	%rdi
L_createTree_2$9:
	cmpq	%r8, %rdi
	jb  	L_createTree_2$10
	movq	$31, %r8
	addq	$-16, %r8
	jmp 	L_createTree_2$2
L_createTree_2$3:
	movq	%r8, %rdi
	shlq	$1, %rdi
	incq	%rdi
	call	L__exists_2$1
L_createTree_2$8:
	cmpb	$1, %cl
	je  	L_createTree_2$4
	incq	%rdi
	call	L__exists_2$1
L_createTree_2$7:
	cmpb	$1, %cl
	jne 	L_createTree_2$5
	movb	$1, (%rbx,%r8)
L_createTree_2$6:
	jmp 	L_createTree_2$5
L_createTree_2$4:
	movb	$1, (%rbx,%r8)
L_createTree_2$5:
	decq	%r8
L_createTree_2$2:
	cmpq	$0, %r8
	jnbe	L_createTree_2$3
	movb	$1, (%rbx)
	ret
L_createTree_1$1:
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$0, %rcx
	movq	$1625, %rdx
	addq	$-25, %rdx
	jmp 	L_createTree_1$11
L_createTree_1$12:
	vmovdqu	%ymm0, (%r10,%rcx)
	vmovdqu	%ymm0, (%rax,%rcx)
	addq	$32, %rcx
L_createTree_1$11:
	cmpq	%rdx, %rcx
	jb  	L_createTree_1$12
	movq	$0, (%r10,%rcx)
	movq	$0, (%rax,%rcx)
	addq	$8, %rcx
	movq	$0, (%r10,%rcx)
	movq	$0, (%rax,%rcx)
	addq	$8, %rcx
	movq	$0, (%r10,%rcx)
	movq	$0, (%rax,%rcx)
	movq	$1625, %rcx
	addq	$-601, %rcx
	decq	%rcx
	movq	$1625, %rdx
	jmp 	L_createTree_1$9
L_createTree_1$10:
	movb	$1, (%rax,%rcx)
	incq	%rcx
L_createTree_1$9:
	cmpq	%rdx, %rcx
	jb  	L_createTree_1$10
	movq	$1625, %rcx
	addq	$-601, %rcx
	decq	%rcx
	jmp 	L_createTree_1$2
L_createTree_1$3:
	movq	%rcx, %rdi
	shlq	$1, %rdi
	incq	%rdi
	movb	$0, %r11b
	cmpq	$1624, %rdi
	jnb 	L_createTree_1$8
	movb	(%rax,%rdi), %r11b
L_createTree_1$8:
	cmpb	$1, %r11b
	je  	L_createTree_1$4
	incq	%rdi
	movb	$0, %r11b
	cmpq	$1624, %rdi
	jnb 	L_createTree_1$7
	movb	(%rax,%rdi), %r11b
L_createTree_1$7:
	cmpb	$1, %r11b
	jne 	L_createTree_1$5
	movb	$1, (%rax,%rcx)
L_createTree_1$6:
	jmp 	L_createTree_1$5
L_createTree_1$4:
	movb	$1, (%rax,%rcx)
L_createTree_1$5:
	decq	%rcx
L_createTree_1$2:
	cmpq	$0, %rcx
	jnbe	L_createTree_1$3
	movb	$1, (%rax)
	ret
L__isLeafNode_2$1:
	shlq	$1, %rdi
	incq	%rdi
	cmpq	$31, %rdi
	jnbe	L__isLeafNode_2$2
	movb	$0, %cl
	jmp 	L__isLeafNode_2$3
L__isLeafNode_2$2:
	movb	$1, %cl
L__isLeafNode_2$3:
	ret
L__isLeafNode$1:
	movq	%rdi, %r12
	shlq	$1, %r12
	incq	%r12
	cmpq	$1625, %r12
	jnbe	L__isLeafNode$2
	movb	$0, %r13b
	jmp 	L__isLeafNode$3
L__isLeafNode$2:
	movb	$1, %r13b
L__isLeafNode$3:
	ret
L__getSibling_2$1:
	call	L__isLeftChild$1
L__getSibling_2$5:
	cmpb	$1, %cl
	je  	L__getSibling_2$2
	decq	%rdi
	jmp 	L__getSibling_2$3
L__getSibling_2$2:
	incq	%rdi
	cmpq	$31, %rdi
	jb  	L__getSibling_2$3
	movq	$0, %rdi
L__getSibling_2$4:
L__getSibling_2$3:
	ret
L__getSibling$1:
	call	L__isLeftChild$1
L__getSibling$5:
	cmpb	$1, %cl
	je  	L__getSibling$2
	decq	%rdi
	jmp 	L__getSibling$3
L__getSibling$2:
	incq	%rdi
	cmpq	$1625, %rdi
	jb  	L__getSibling$3
	movq	$0, %rdi
L__getSibling$4:
L__getSibling$3:
	ret
L__hasSibling_2$1:
	movq	%rdx, %rdi
	call	L__exists_2$1
L__hasSibling_2$10:
	cmpb	$1, %cl
	je  	L__hasSibling_2$2
	movb	$0, %cl
	jmp 	L__hasSibling_2$3
L__hasSibling_2$2:
	call	L__isLeftChild$1
L__hasSibling_2$9:
	cmpb	$1, %cl
	je  	L__hasSibling_2$4
	movb	$1, %cl
	jmp 	L__hasSibling_2$3
L__hasSibling_2$4:
	incq	%rdi
	call	L__exists_2$1
L__hasSibling_2$8:
	cmpb	$0, %cl
	je  	L__hasSibling_2$6
	movb	$1, %cl
	jmp 	L__hasSibling_2$3
L__hasSibling_2$6:
	movb	$0, %cl
L__hasSibling_2$7:
L__hasSibling_2$5:
L__hasSibling_2$3:
	ret
L__hasSibling$1:
	movq	%rcx, %rdi
	movb	$0, %cl
	cmpq	$1624, %rdi
	jnb 	L__hasSibling$10
	movb	(%rbx,%rdi), %cl
L__hasSibling$10:
	cmpb	$1, %cl
	je  	L__hasSibling$2
	movb	$0, %cl
	jmp 	L__hasSibling$3
L__hasSibling$2:
	call	L__isLeftChild$1
L__hasSibling$9:
	cmpb	$1, %cl
	je  	L__hasSibling$4
	movb	$1, %cl
	jmp 	L__hasSibling$3
L__hasSibling$4:
	incq	%rdi
	movb	$0, %cl
	cmpq	$1624, %rdi
	jnb 	L__hasSibling$8
	movb	(%rbx,%rdi), %cl
L__hasSibling$8:
	cmpb	$0, %cl
	je  	L__hasSibling$6
	movb	$1, %cl
	jmp 	L__hasSibling$3
L__hasSibling$6:
	movb	$0, %cl
L__hasSibling$7:
L__hasSibling$5:
L__hasSibling$3:
	ret
L__isLeftChild$1:
	movq	%rdi, %rcx
	andq	$1, %rcx
	cmpq	$1, %rcx
	je  	L__isLeftChild$2
	movb	$0, %cl
	jmp 	L__isLeftChild$3
L__isLeftChild$2:
	movb	$1, %cl
L__isLeftChild$3:
	ret
L_contains_pathSets_2$1:
	movb	$0, %r9b
	movq	$0, %rsi
	jmp 	L_contains_pathSets_2$2
L_contains_pathSets_2$3:
	movw	(%rcx,%r8,2), %dx
	movzwq	%dx, %rdx
	cmpq	%rdi, %rdx
	jne 	L_contains_pathSets_2$4
	movb	$1, %r9b
L_contains_pathSets_2$4:
	incq	%r8
	incq	%rsi
L_contains_pathSets_2$2:
	cmpq	$1, %rsi
	jb  	L_contains_pathSets_2$3
	ret
L_contains_pathSets$1:
	movb	$0, %r13b
	movq	$0, %rbp
	jmp 	L_contains_pathSets$2
L_contains_pathSets$3:
	movw	(%rcx,%r12,2), %r14w
	movzwq	%r14w, %r14
	cmpq	%rdi, %r14
	jne 	L_contains_pathSets$4
	movb	$1, %r13b
L_contains_pathSets$4:
	incq	%r12
	incq	%rbp
L_contains_pathSets$2:
	cmpq	$68, %rbp
	jb  	L_contains_pathSets$3
	ret
L__hasRightChild_T2$1:
	movq	%rdi, %rdx
	shlq	$1, %rdx
	addq	$2, %rdx
	cmpq	$31, %rdx
	jb  	L__hasRightChild_T2$2
	movb	$0, %cl
	jmp 	L__hasRightChild_T2$3
L__hasRightChild_T2$2:
	call	L__exists_2$1
L__hasRightChild_T2$4:
L__hasRightChild_T2$3:
	ret
L__hasRightChild_T1$1:
	movq	%rdi, %rcx
	shlq	$1, %rcx
	addq	$2, %rcx
	cmpq	$1625, %rcx
	jb  	L__hasRightChild_T1$2
	movb	$0, %cl
	jmp 	L__hasRightChild_T1$3
L__hasRightChild_T1$2:
	movb	$0, %cl
	cmpq	$1624, %rdi
	jnb 	L__hasRightChild_T1$3
	movb	(%rbx,%rdi), %cl
L__hasRightChild_T1$4:
L__hasRightChild_T1$3:
	ret
L__exists_22$1:
	movb	$0, %cl
	cmpq	$18631, %rax
	jnb 	L__exists_22$2
	movb	(%rdx,%rax), %cl
L__exists_22$2:
	ret
L__exists_2$1:
	movb	$0, %cl
	cmpq	$31, %rdi
	jnb 	L__exists_2$2
	movb	(%rbx,%rdi), %cl
L__exists_2$2:
	ret
L_commit_v_x4$1:
	movq	%rdx, 840(%rsp)
	movq	%rcx, 848(%rsp)
	movq	%rdi, 856(%rsp)
	movq	%rax, 864(%rsp)
	movb	$17, %cl
	movb	$31, %al
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L_commit_v_x4$12:
	movq	848(%rsp), %rcx
	movq	864(%rsp), %rax
	imulq	$32, %rax, %rax
	movq	$0, %rsi
	jmp 	L_commit_v_x4$10
L_commit_v_x4$11:
	movq	(%rcx,%rax), %rdx
	movq	%rdx, 872(%rsp,%rsi)
	addq	$8, %rax
	addq	$8, %rsi
L_commit_v_x4$10:
	cmpq	$128, %rsi
	jb  	L_commit_v_x4$11
	leaq	872(%rsp), %rax
	leaq	904(%rsp), %rdx
	leaq	936(%rsp), %rdi
	leaq	968(%rsp), %rsi
	movq	$32, %r12
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_updstate_avx2x4$1
L_commit_v_x4$9:
	leaq	24(%rsp), %rsp
	movq	856(%rsp), %rax
	movq	864(%rsp), %rcx
	imulq	$2048, %rcx, %rcx
	movq	$0, %rsi
	jmp 	L_commit_v_x4$7
L_commit_v_x4$8:
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 1256(%rsp,%rsi)
	addq	$8, %rcx
	addq	$8, %rsi
L_commit_v_x4$7:
	cmpq	$8192, %rsi
	jb  	L_commit_v_x4$8
	leaq	1256(%rsp), %rax
	leaq	3304(%rsp), %rdx
	leaq	5352(%rsp), %rdi
	leaq	7400(%rsp), %rsi
	movq	$2048, %r11
	leaq	-24(%rsp), %rsp
	call	LA2048x4___absorb_updstate_avx2x4$1
L_commit_v_x4$6:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L_commit_v_x4$5:
	movq	$64, %r12
	leaq	1000(%rsp), %rax
	leaq	1064(%rsp), %rdx
	leaq	1128(%rsp), %rdi
	leaq	1192(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA64x4___squeeze_updstate_avx2x4$1
L_commit_v_x4$4:
	leaq	24(%rsp), %rsp
	movq	840(%rsp), %rdx
	movq	864(%rsp), %rax
	imulq	$64, %rax, %rax
	movq	$0, %rcx
	jmp 	L_commit_v_x4$2
L_commit_v_x4$3:
	movq	1000(%rsp,%rcx), %rsi
	movq	%rsi, (%rdx,%rax)
	addq	$8, %rax
	addq	$8, %rcx
L_commit_v_x4$2:
	cmpq	$256, %rcx
	jb  	L_commit_v_x4$3
	ret
L_commit_h_x4$1:
	movq	%rdx, 840(%rsp)
	movq	%rax, 848(%rsp)
	movq	$0, %rsi
	imulq	$1024, %rax, %rax
	jmp 	L_commit_h_x4$8
L_commit_h_x4$9:
	movq	(%rcx,%rax), %rdx
	movq	%rdx, 1112(%rsp,%rsi)
	addq	$8, %rax
	addq	$8, %rsi
L_commit_h_x4$8:
	cmpq	$4096, %rsi
	jb  	L_commit_h_x4$9
	movb	$17, %cl
	movb	$31, %al
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L_commit_h_x4$7:
	leaq	1112(%rsp), %rax
	leaq	2136(%rsp), %rdx
	leaq	3160(%rsp), %rdi
	leaq	4184(%rsp), %rsi
	movq	$1024, %r12
	leaq	-24(%rsp), %rsp
	call	LA1024x4___absorb_updstate_avx2x4$1
L_commit_h_x4$6:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L_commit_h_x4$5:
	movq	$64, %r12
	leaq	856(%rsp), %rax
	leaq	920(%rsp), %rdx
	leaq	984(%rsp), %rdi
	leaq	1048(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA64x4___squeeze_updstate_avx2x4$1
L_commit_h_x4$4:
	leaq	24(%rsp), %rsp
	movq	840(%rsp), %rdx
	movq	848(%rsp), %rax
	movq	$0, %rcx
	imulq	$64, %rax, %rax
	jmp 	L_commit_h_x4$2
L_commit_h_x4$3:
	movq	856(%rsp,%rcx), %rsi
	movq	%rsi, (%rdx,%rax)
	addq	$8, %rax
	addq	$8, %rcx
L_commit_h_x4$2:
	cmpq	$256, %rcx
	jb  	L_commit_h_x4$3
	ret
L_commit2_x4$1:
	movq	%rdi, 848(%rsp)
	movq	%r11, 856(%rsp)
	movw	%ax, 840(%rsp)
	movw	%dx, 1256(%rsp)
	movq	%r8, 864(%rsp)
	movq	$0, %rax
	jmp 	L_commit2_x4$11
L_commit2_x4$12:
	movq	(%r10,%rcx), %rdx
	movq	%rdx, 872(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
L_commit2_x4$11:
	cmpq	$128, %rax
	jb  	L_commit2_x4$12
	movb	$17, %cl
	movb	$31, %al
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L_commit2_x4$10:
	movq	$32, %r12
	leaq	872(%rsp), %rax
	leaq	904(%rsp), %rdx
	leaq	936(%rsp), %rdi
	leaq	968(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_updstate_avx2x4$1
L_commit2_x4$9:
	leaq	24(%rsp), %rsp
	movq	$32, %rax
	movq	856(%rsp), %rdi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_bcast_updstate_avx2x4$1
L_commit2_x4$8:
	leaq	24(%rsp), %rsp
	movq	$2, %rax
	movw	840(%rsp), %cx
	movw	%cx, 840(%rsp)
	leaq	840(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_bcast_updstate_avx2x4$1
L_commit2_x4$7:
	leaq	24(%rsp), %rsp
	movw	1256(%rsp), %dx
	movw	%dx, 856(%rsp)
	incw	%dx
	movw	%dx, 858(%rsp)
	incw	%dx
	movw	%dx, 860(%rsp)
	incw	%dx
	movw	%dx, 862(%rsp)
	leaq	856(%rsp), %r11
	leaq	858(%rsp), %rdx
	leaq	860(%rsp), %rdi
	leaq	862(%rsp), %rsi
	movq	$2, %rax
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_updstate_avx2x4$1
L_commit2_x4$6:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L_commit2_x4$5:
	movq	$64, %r12
	leaq	1000(%rsp), %rax
	leaq	1064(%rsp), %rdx
	leaq	1128(%rsp), %rdi
	leaq	1192(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA64x4___squeeze_updstate_avx2x4$1
L_commit2_x4$4:
	leaq	24(%rsp), %rsp
	movq	848(%rsp), %rdx
	movq	864(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_commit2_x4$2
L_commit2_x4$3:
	movq	1000(%rsp,%rcx), %rsi
	movq	%rsi, (%rdx,%rax)
	addq	$8, %rax
	addq	$8, %rcx
L_commit2_x4$2:
	cmpq	$256, %rcx
	jb  	L_commit2_x4$3
	ret
L_commit_x4$1:
	movq	%rdi, 848(%rsp)
	movq	%r11, 856(%rsp)
	movw	%si, 840(%rsp)
	movw	%dx, 1256(%rsp)
	movq	%r8, 864(%rsp)
	movq	$0, %rsi
	jmp 	L_commit_x4$11
L_commit_x4$12:
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 872(%rsp,%rsi)
	addq	$8, %rcx
	addq	$8, %rsi
L_commit_x4$11:
	cmpq	$128, %rsi
	jb  	L_commit_x4$12
	movb	$17, %cl
	movb	$31, %al
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L_commit_x4$10:
	movq	$32, %r12
	leaq	872(%rsp), %rax
	leaq	904(%rsp), %rdx
	leaq	936(%rsp), %rdi
	leaq	968(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_updstate_avx2x4$1
L_commit_x4$9:
	leaq	24(%rsp), %rsp
	movq	$32, %rax
	movq	856(%rsp), %rdi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_bcast_updstate_avx2x4$1
L_commit_x4$8:
	leaq	24(%rsp), %rsp
	movq	$2, %rax
	movw	840(%rsp), %cx
	movw	%cx, 840(%rsp)
	leaq	840(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_bcast_updstate_avx2x4$1
L_commit_x4$7:
	leaq	24(%rsp), %rsp
	movw	1256(%rsp), %dx
	movw	%dx, 856(%rsp)
	incw	%dx
	movw	%dx, 858(%rsp)
	incw	%dx
	movw	%dx, 860(%rsp)
	incw	%dx
	movw	%dx, 862(%rsp)
	leaq	856(%rsp), %r11
	leaq	858(%rsp), %rdx
	leaq	860(%rsp), %rdi
	leaq	862(%rsp), %rsi
	movq	$2, %rax
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_updstate_avx2x4$1
L_commit_x4$6:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L_commit_x4$5:
	movq	$64, %r12
	leaq	1000(%rsp), %rax
	leaq	1064(%rsp), %rdx
	leaq	1128(%rsp), %rdi
	leaq	1192(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA64x4___squeeze_updstate_avx2x4$1
L_commit_x4$4:
	leaq	24(%rsp), %rsp
	movq	848(%rsp), %rdx
	movq	864(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_commit_x4$2
L_commit_x4$3:
	movq	1000(%rsp,%rcx), %rsi
	movq	%rsi, (%rdx,%rax)
	addq	$8, %rax
	addq	$8, %rcx
L_commit_x4$2:
	cmpq	$256, %rcx
	jb  	L_commit_x4$3
	ret
L__hashTapes2_x4$1:
	movq	%rdi, 848(%rsp)
	movq	%rcx, 856(%rsp)
	movq	%r11, 864(%rsp)
	movq	%rax, 872(%rsp)
	movw	%dx, 2048(%rsp)
	movq	%rsi, 880(%rsp)
	movq	%r8, 888(%rsp)
	movb	$17, %cl
	movb	$31, %al
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L__hashTapes2_x4$10:
	movq	856(%rsp), %rax
	movq	880(%rsp), %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 896(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 904(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 912(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 920(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 928(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 936(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 944(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 952(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 960(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 968(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 976(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 984(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 992(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 1000(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 1008(%rsp)
	addq	$8, %rcx
	movq	(%rax,%rcx), %rax
	movq	%rax, 1016(%rsp)
	movq	$32, %r12
	leaq	896(%rsp), %rax
	leaq	928(%rsp), %rdx
	leaq	960(%rsp), %rdi
	leaq	992(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_updstate_avx2x4$1
L__hashTapes2_x4$9:
	leaq	24(%rsp), %rsp
	movq	$32, %rax
	movq	864(%rsp), %rdi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_bcast_updstate_avx2x4$1
L__hashTapes2_x4$8:
	leaq	24(%rsp), %rsp
	movq	$2, %rax
	movq	872(%rsp), %rcx
	movw	%cx, 840(%rsp)
	leaq	840(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_bcast_updstate_avx2x4$1
L__hashTapes2_x4$7:
	leaq	24(%rsp), %rsp
	movw	2048(%rsp), %dx
	movw	%dx, 872(%rsp)
	incw	%dx
	movw	%dx, 874(%rsp)
	incw	%dx
	movw	%dx, 876(%rsp)
	incw	%dx
	movw	%dx, 878(%rsp)
	leaq	872(%rsp), %r11
	leaq	874(%rsp), %rdx
	leaq	876(%rsp), %rdi
	leaq	878(%rsp), %rsi
	movq	$2, %rax
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_updstate_avx2x4$1
L__hashTapes2_x4$6:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L__hashTapes2_x4$5:
	movq	$256, %r12
	leaq	1024(%rsp), %rax
	leaq	1280(%rsp), %rdx
	leaq	1536(%rsp), %rdi
	leaq	1792(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA256x4___squeeze_updstate_avx2x4$1
L__hashTapes2_x4$4:
	leaq	24(%rsp), %rsp
	movq	848(%rsp), %rdi
	movq	888(%rsp), %rax
	movq	$0, %rcx
	jmp 	L__hashTapes2_x4$2
L__hashTapes2_x4$3:
	movq	1024(%rsp,%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	addq	$8, %rax
	addq	$8, %rcx
L__hashTapes2_x4$2:
	cmpq	$1024, %rcx
	jb  	L__hashTapes2_x4$3
	ret
L__hashTapes_x4$1:
	movq	%rdx, 848(%rsp)
	movq	%r10, 856(%rsp)
	movq	%r11, 864(%rsp)
	movw	%di, 840(%rsp)
	movw	%si, 2040(%rsp)
	movq	%rcx, 872(%rsp)
	movq	%rax, 880(%rsp)
	movb	$17, %cl
	movb	$31, %al
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L__hashTapes_x4$8:
	movq	856(%rsp), %rax
	movq	872(%rsp), %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 888(%rsp)
	movq	8(%rax,%rcx), %rdx
	movq	%rdx, 896(%rsp)
	movq	16(%rax,%rcx), %rdx
	movq	%rdx, 904(%rsp)
	movq	24(%rax,%rcx), %rdx
	movq	%rdx, 912(%rsp)
	movq	32(%rax,%rcx), %rdx
	movq	%rdx, 920(%rsp)
	movq	40(%rax,%rcx), %rdx
	movq	%rdx, 928(%rsp)
	movq	48(%rax,%rcx), %rdx
	movq	%rdx, 936(%rsp)
	movq	56(%rax,%rcx), %rdx
	movq	%rdx, 944(%rsp)
	movq	64(%rax,%rcx), %rdx
	movq	%rdx, 952(%rsp)
	movq	72(%rax,%rcx), %rdx
	movq	%rdx, 960(%rsp)
	movq	80(%rax,%rcx), %rdx
	movq	%rdx, 968(%rsp)
	movq	88(%rax,%rcx), %rdx
	movq	%rdx, 976(%rsp)
	movq	96(%rax,%rcx), %rdx
	movq	%rdx, 984(%rsp)
	movq	104(%rax,%rcx), %rdx
	movq	%rdx, 992(%rsp)
	movq	112(%rax,%rcx), %rdx
	movq	%rdx, 1000(%rsp)
	movq	120(%rax,%rcx), %rax
	movq	%rax, 1008(%rsp)
	movq	$32, %r12
	leaq	888(%rsp), %rax
	leaq	920(%rsp), %rdx
	leaq	952(%rsp), %rdi
	leaq	984(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_updstate_avx2x4$1
L__hashTapes_x4$7:
	leaq	24(%rsp), %rsp
	movq	$32, %rax
	movq	864(%rsp), %rdi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_bcast_updstate_avx2x4$1
L__hashTapes_x4$6:
	leaq	24(%rsp), %rsp
	movq	$2, %rax
	movw	840(%rsp), %cx
	movw	%cx, 840(%rsp)
	leaq	840(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_bcast_updstate_avx2x4$1
L__hashTapes_x4$5:
	leaq	24(%rsp), %rsp
	movw	2040(%rsp), %dx
	movw	%dx, 864(%rsp)
	incw	%dx
	movw	%dx, 866(%rsp)
	incw	%dx
	movw	%dx, 868(%rsp)
	incw	%dx
	movw	%dx, 870(%rsp)
	leaq	864(%rsp), %r11
	leaq	866(%rsp), %rdx
	leaq	868(%rsp), %rdi
	leaq	870(%rsp), %rsi
	movq	$2, %rax
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_updstate_avx2x4$1
L__hashTapes_x4$4:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L__hashTapes_x4$3:
	movq	$256, %r12
	leaq	1016(%rsp), %rax
	leaq	1272(%rsp), %rdx
	leaq	1528(%rsp), %rdi
	leaq	1784(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA256x4___squeeze_updstate_avx2x4$1
L__hashTapes_x4$2:
	leaq	24(%rsp), %rsp
	movq	848(%rsp), %rdx
	movq	880(%rsp), %rax
	movq	1016(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1024(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1032(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1040(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1048(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1056(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1064(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1072(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1080(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1088(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1096(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1104(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1112(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1120(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1128(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1136(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1144(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1152(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1160(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1168(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1176(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1184(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1192(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1200(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1208(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1216(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1224(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1232(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1240(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1248(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1256(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1264(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1272(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1280(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1288(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1296(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1304(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1312(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1320(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1328(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1336(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1344(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1352(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1360(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1368(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1376(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1384(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1392(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1400(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1408(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1416(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1424(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1432(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1440(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1448(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1456(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1464(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1472(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1480(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1488(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1496(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1504(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1512(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1520(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1528(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1536(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1544(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1552(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1560(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1568(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1576(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1584(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1592(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1600(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1608(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1616(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1624(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1632(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1640(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1648(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1656(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1664(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1672(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1680(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1688(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1696(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1704(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1712(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1720(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1728(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1736(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1744(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1752(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1760(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1768(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1776(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1784(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1792(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1800(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1808(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1816(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1824(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1832(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1840(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1848(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1856(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1864(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1872(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1880(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1888(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1896(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1904(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1912(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1920(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1928(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1936(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1944(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1952(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1960(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1968(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1976(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1984(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	1992(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	2000(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	2008(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	2016(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	2024(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	2032(%rsp), %rcx
	movq	%rcx, (%rdx,%rax)
	ret
L_hashSeed_x4_22$1:
	movq	%rdx, 856(%rsp)
	movq	%rcx, 864(%rsp)
	movq	%rax, 872(%rsp)
	movq	%rdi, 880(%rsp)
	movw	%r9w, 848(%rsp)
	movw	%si, 1016(%rsp)
	movb	$17, %cl
	movb	$31, %al
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L_hashSeed_x4_22$9:
	movq	$1, %rax
	movb	$1, 840(%rsp)
	leaq	840(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA1x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_22$8:
	leaq	24(%rsp), %rsp
	movq	864(%rsp), %rcx
	movq	872(%rsp), %rax
	movq	(%rcx,%rax), %rdx
	movq	%rdx, 888(%rsp)
	movq	8(%rcx,%rax), %rdx
	movq	%rdx, 896(%rsp)
	movq	16(%rcx,%rax), %rdx
	movq	%rdx, 904(%rsp)
	movq	24(%rcx,%rax), %rdx
	movq	%rdx, 912(%rsp)
	movq	32(%rcx,%rax), %rdx
	movq	%rdx, 920(%rsp)
	movq	40(%rcx,%rax), %rdx
	movq	%rdx, 928(%rsp)
	movq	48(%rcx,%rax), %rdx
	movq	%rdx, 936(%rsp)
	movq	56(%rcx,%rax), %rdx
	movq	%rdx, 944(%rsp)
	movq	64(%rcx,%rax), %rdx
	movq	%rdx, 952(%rsp)
	movq	72(%rcx,%rax), %rdx
	movq	%rdx, 960(%rsp)
	movq	80(%rcx,%rax), %rdx
	movq	%rdx, 968(%rsp)
	movq	88(%rcx,%rax), %rdx
	movq	%rdx, 976(%rsp)
	movq	96(%rcx,%rax), %rdx
	movq	%rdx, 984(%rsp)
	movq	104(%rcx,%rax), %rdx
	movq	%rdx, 992(%rsp)
	movq	112(%rcx,%rax), %rdx
	movq	%rdx, 1000(%rsp)
	movq	120(%rcx,%rax), %rax
	movq	%rax, 1008(%rsp)
	movq	$32, %r12
	leaq	888(%rsp), %rax
	leaq	920(%rsp), %rdx
	leaq	952(%rsp), %rdi
	leaq	984(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_updstate_avx2x4$1
L_hashSeed_x4_22$7:
	leaq	24(%rsp), %rsp
	movq	$32, %rax
	movq	880(%rsp), %rdi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_22$6:
	leaq	24(%rsp), %rsp
	movq	$2, %rax
	movw	848(%rsp), %r9w
	movw	%r9w, 848(%rsp)
	leaq	848(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_22$5:
	leaq	24(%rsp), %rsp
	movw	1016(%rsp), %cx
	movw	%cx, 880(%rsp)
	incw	%cx
	movw	%cx, 882(%rsp)
	incw	%cx
	movw	%cx, 884(%rsp)
	incw	%cx
	movw	%cx, 886(%rsp)
	leaq	880(%rsp), %r11
	leaq	882(%rsp), %rdx
	leaq	884(%rsp), %rdi
	leaq	886(%rsp), %rsi
	movq	$2, %rax
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_updstate_avx2x4$1
L_hashSeed_x4_22$4:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L_hashSeed_x4_22$3:
	movq	856(%rsp), %rsi
	movq	$64, %r12
	movq	%rsi, %rax
	leaq	64(%rsi), %rdx
	leaq	128(%rsi), %rdi
	leaq	192(%rsi), %rsi
	leaq	-24(%rsp), %rsp
	call	LA64x4___squeeze_updstate_avx2x4$1
L_hashSeed_x4_22$2:
	leaq	24(%rsp), %rsp
	ret
L_hashSeed_x4_2$1:
	movq	%rsi, 856(%rsp)
	movq	%rdi, 864(%rsp)
	movw	%r9w, 848(%rsp)
	movw	%dx, 1000(%rsp)
	movq	(%rcx,%rax), %rdx
	movq	%rdx, 872(%rsp)
	movq	8(%rcx,%rax), %rdx
	movq	%rdx, 880(%rsp)
	movq	16(%rcx,%rax), %rdx
	movq	%rdx, 888(%rsp)
	movq	24(%rcx,%rax), %rdx
	movq	%rdx, 896(%rsp)
	movq	32(%rcx,%rax), %rdx
	movq	%rdx, 904(%rsp)
	movq	40(%rcx,%rax), %rdx
	movq	%rdx, 912(%rsp)
	movq	48(%rcx,%rax), %rdx
	movq	%rdx, 920(%rsp)
	movq	56(%rcx,%rax), %rdx
	movq	%rdx, 928(%rsp)
	movq	64(%rcx,%rax), %rdx
	movq	%rdx, 936(%rsp)
	movq	72(%rcx,%rax), %rdx
	movq	%rdx, 944(%rsp)
	movq	80(%rcx,%rax), %rdx
	movq	%rdx, 952(%rsp)
	movq	88(%rcx,%rax), %rdx
	movq	%rdx, 960(%rsp)
	movq	96(%rcx,%rax), %rdx
	movq	%rdx, 968(%rsp)
	movq	104(%rcx,%rax), %rdx
	movq	%rdx, 976(%rsp)
	movq	112(%rcx,%rax), %rdx
	movq	%rdx, 984(%rsp)
	movq	120(%rcx,%rax), %rax
	movq	%rax, 992(%rsp)
	movb	$17, %cl
	movb	$31, %al
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L_hashSeed_x4_2$9:
	movq	$1, %rax
	movb	$1, 840(%rsp)
	leaq	840(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA1x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_2$8:
	leaq	24(%rsp), %rsp
	movq	$32, %r12
	leaq	872(%rsp), %rax
	leaq	904(%rsp), %rdx
	leaq	936(%rsp), %rdi
	leaq	968(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_updstate_avx2x4$1
L_hashSeed_x4_2$7:
	leaq	24(%rsp), %rsp
	movq	$32, %rax
	movq	864(%rsp), %rdi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_2$6:
	leaq	24(%rsp), %rsp
	movq	$2, %rax
	movw	848(%rsp), %r9w
	movw	%r9w, 848(%rsp)
	leaq	848(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_2$5:
	leaq	24(%rsp), %rsp
	movw	1000(%rsp), %cx
	movw	%cx, 864(%rsp)
	incw	%cx
	movw	%cx, 866(%rsp)
	incw	%cx
	movw	%cx, 868(%rsp)
	incw	%cx
	movw	%cx, 870(%rsp)
	leaq	864(%rsp), %r11
	leaq	866(%rsp), %rdx
	leaq	868(%rsp), %rdi
	leaq	870(%rsp), %rsi
	movq	$2, %rax
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_updstate_avx2x4$1
L_hashSeed_x4_2$4:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L_hashSeed_x4_2$3:
	movq	856(%rsp), %rsi
	movq	$64, %r12
	movq	%rsi, %rax
	leaq	64(%rsi), %rdx
	leaq	128(%rsi), %rdi
	leaq	192(%rsi), %rsi
	leaq	-24(%rsp), %rsp
	call	LA64x4___squeeze_updstate_avx2x4$1
L_hashSeed_x4_2$2:
	leaq	24(%rsp), %rsp
	ret
L__hashSeed_x4_1$1:
	movq	%rdi, 856(%rsp)
	movq	%rcx, 864(%rsp)
	movq	%rsi, 872(%rsp)
	movq	%r11, 880(%rsp)
	movw	%r9w, 848(%rsp)
	movw	%dx, 1016(%rsp)
	movb	$17, %cl
	movb	$31, %al
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L__hashSeed_x4_1$9:
	movq	$1, %rax
	movb	$1, 840(%rsp)
	leaq	840(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA1x4___absorb_bcast_updstate_avx2x4$1
L__hashSeed_x4_1$8:
	leaq	24(%rsp), %rsp
	movq	864(%rsp), %rcx
	movq	872(%rsp), %rax
	movq	(%rcx,%rax), %rdx
	movq	%rdx, 888(%rsp)
	movq	8(%rcx,%rax), %rdx
	movq	%rdx, 896(%rsp)
	movq	16(%rcx,%rax), %rdx
	movq	%rdx, 904(%rsp)
	movq	24(%rcx,%rax), %rdx
	movq	%rdx, 912(%rsp)
	movq	32(%rcx,%rax), %rdx
	movq	%rdx, 920(%rsp)
	movq	40(%rcx,%rax), %rdx
	movq	%rdx, 928(%rsp)
	movq	48(%rcx,%rax), %rdx
	movq	%rdx, 936(%rsp)
	movq	56(%rcx,%rax), %rdx
	movq	%rdx, 944(%rsp)
	movq	64(%rcx,%rax), %rdx
	movq	%rdx, 952(%rsp)
	movq	72(%rcx,%rax), %rdx
	movq	%rdx, 960(%rsp)
	movq	80(%rcx,%rax), %rdx
	movq	%rdx, 968(%rsp)
	movq	88(%rcx,%rax), %rdx
	movq	%rdx, 976(%rsp)
	movq	96(%rcx,%rax), %rdx
	movq	%rdx, 984(%rsp)
	movq	104(%rcx,%rax), %rdx
	movq	%rdx, 992(%rsp)
	movq	112(%rcx,%rax), %rdx
	movq	%rdx, 1000(%rsp)
	movq	120(%rcx,%rax), %rax
	movq	%rax, 1008(%rsp)
	movq	$32, %r12
	leaq	888(%rsp), %rax
	leaq	920(%rsp), %rdx
	leaq	952(%rsp), %rdi
	leaq	984(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_updstate_avx2x4$1
L__hashSeed_x4_1$7:
	leaq	24(%rsp), %rsp
	movq	$32, %rax
	movq	880(%rsp), %rdi
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_bcast_updstate_avx2x4$1
L__hashSeed_x4_1$6:
	leaq	24(%rsp), %rsp
	movq	$2, %rax
	movw	848(%rsp), %r9w
	movw	%r9w, 848(%rsp)
	leaq	848(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_bcast_updstate_avx2x4$1
L__hashSeed_x4_1$5:
	leaq	24(%rsp), %rsp
	movw	1016(%rsp), %cx
	movw	%cx, 880(%rsp)
	incw	%cx
	movw	%cx, 882(%rsp)
	incw	%cx
	movw	%cx, 884(%rsp)
	incw	%cx
	movw	%cx, 886(%rsp)
	leaq	880(%rsp), %r11
	leaq	882(%rsp), %rdx
	leaq	884(%rsp), %rdi
	leaq	886(%rsp), %rsi
	movq	$2, %rax
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_updstate_avx2x4$1
L__hashSeed_x4_1$4:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L__hashSeed_x4_1$3:
	movq	856(%rsp), %rsi
	movq	$64, %r12
	movq	%rsi, %rax
	leaq	64(%rsi), %rdx
	leaq	128(%rsi), %rdi
	leaq	192(%rsi), %rsi
	leaq	-24(%rsp), %rsp
	call	LA64x4___squeeze_updstate_avx2x4$1
L__hashSeed_x4_1$2:
	leaq	24(%rsp), %rsp
	ret
LA2048x4___absorb_updstate_avx2x4$1:
	movq	800(%r12), %rcx
	call	L_ststatus_data_avx2x4$1
LA2048x4___absorb_updstate_avx2x4$7:
	movq	%r12, %r10
	movq	%r12, 8(%rsp)
	movq	$0, %r12
	addq	%r9, %r11
	jmp 	LA2048x4___absorb_updstate_avx2x4$3
LA2048x4___absorb_updstate_avx2x4$4:
	movq	%r11, 16(%rsp)
	call	LA2048x4___add_updstate_avx2x4$1
LA2048x4___absorb_updstate_avx2x4$6:
	movq	16(%rsp), %r11
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA2048x4___absorb_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%r8, %r11
	movq	$0, %r9
LA2048x4___absorb_updstate_avx2x4$3:
	cmpq	%r11, %r8
	jbe 	LA2048x4___absorb_updstate_avx2x4$4
	movq	%r11, %r8
	call	LA2048x4___add_updstate_avx2x4$1
LA2048x4___absorb_updstate_avx2x4$2:
	movq	8(%rsp), %r11
	movb	%r9b, 800(%r11)
	ret
LA2048x4___add_updstate_avx2x4$1:
	movq	%r9, %r13
	andq	$7, %r13
	cmpq	$0, %r13
	je  	LA2048x4___add_updstate_avx2x4$29
	movq	%r8, %r15
	subq	%r9, %r15
	shrq	$3, %r9
	shlq	$3, %r9
	movb	%r13b, %r11b
	shlb	$3, %r11b
	movq	%r12, %rbx
	cmpq	$8, %r15
	jnb 	LA2048x4___add_updstate_avx2x4$50
	testq	$4, %r15
	jne 	LA2048x4___add_updstate_avx2x4$54
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2048x4___add_updstate_avx2x4$55
LA2048x4___add_updstate_avx2x4$54:
	movl	(%rax,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2048x4___add_updstate_avx2x4$55:
	testq	$2, %r15
	je  	LA2048x4___add_updstate_avx2x4$53
	movzwq	(%rax,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2048x4___add_updstate_avx2x4$53:
	testq	$1, %r15
	je  	LA2048x4___add_updstate_avx2x4$51
	movzbq	(%rax,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA2048x4___add_updstate_avx2x4$52:
	jmp 	LA2048x4___add_updstate_avx2x4$51
LA2048x4___add_updstate_avx2x4$50:
	movq	(%rax,%rbx), %rbp
LA2048x4___add_updstate_avx2x4$51:
	movb	%r11b, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r10,%r9,4)
	movq	%r12, %rbx
	cmpq	$8, %r15
	jnb 	LA2048x4___add_updstate_avx2x4$44
	testq	$4, %r15
	jne 	LA2048x4___add_updstate_avx2x4$48
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2048x4___add_updstate_avx2x4$49
LA2048x4___add_updstate_avx2x4$48:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2048x4___add_updstate_avx2x4$49:
	testq	$2, %r15
	je  	LA2048x4___add_updstate_avx2x4$47
	movzwq	(%rdx,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2048x4___add_updstate_avx2x4$47:
	testq	$1, %r15
	je  	LA2048x4___add_updstate_avx2x4$45
	movzbq	(%rdx,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA2048x4___add_updstate_avx2x4$46:
	jmp 	LA2048x4___add_updstate_avx2x4$45
LA2048x4___add_updstate_avx2x4$44:
	movq	(%rdx,%rbx), %rbp
LA2048x4___add_updstate_avx2x4$45:
	movb	%r11b, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 8(%r10,%r9,4)
	movq	%r12, %rbx
	cmpq	$8, %r15
	jnb 	LA2048x4___add_updstate_avx2x4$38
	testq	$4, %r15
	jne 	LA2048x4___add_updstate_avx2x4$42
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2048x4___add_updstate_avx2x4$43
LA2048x4___add_updstate_avx2x4$42:
	movl	(%rdi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2048x4___add_updstate_avx2x4$43:
	testq	$2, %r15
	je  	LA2048x4___add_updstate_avx2x4$41
	movzwq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2048x4___add_updstate_avx2x4$41:
	testq	$1, %r15
	je  	LA2048x4___add_updstate_avx2x4$39
	movzbq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA2048x4___add_updstate_avx2x4$40:
	jmp 	LA2048x4___add_updstate_avx2x4$39
LA2048x4___add_updstate_avx2x4$38:
	movq	(%rdi,%rbx), %rbp
LA2048x4___add_updstate_avx2x4$39:
	movb	%r11b, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 16(%r10,%r9,4)
	movq	%r12, %rbx
	cmpq	$8, %r15
	jnb 	LA2048x4___add_updstate_avx2x4$32
	testq	$4, %r15
	jne 	LA2048x4___add_updstate_avx2x4$36
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2048x4___add_updstate_avx2x4$37
LA2048x4___add_updstate_avx2x4$36:
	movl	(%rsi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2048x4___add_updstate_avx2x4$37:
	testq	$2, %r15
	je  	LA2048x4___add_updstate_avx2x4$35
	movzwq	(%rsi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2048x4___add_updstate_avx2x4$35:
	testq	$1, %r15
	je  	LA2048x4___add_updstate_avx2x4$33
	movzbq	(%rsi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	incq	%rbx
LA2048x4___add_updstate_avx2x4$34:
	jmp 	LA2048x4___add_updstate_avx2x4$33
LA2048x4___add_updstate_avx2x4$32:
	movq	(%rsi,%rbx), %rbp
	addq	$8, %rbx
LA2048x4___add_updstate_avx2x4$33:
	movb	%r11b, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 24(%r10,%r9,4)
	addq	%r13, %r15
	cmpq	$8, %r15
	jnb 	LA2048x4___add_updstate_avx2x4$30
	movq	%rbx, %r12
	movq	%r8, %r9
	jmp 	LA2048x4___add_updstate_avx2x4$29
LA2048x4___add_updstate_avx2x4$30:
	addq	$8, %r12
	subq	%r13, %r12
	addq	$8, %r9
LA2048x4___add_updstate_avx2x4$31:
LA2048x4___add_updstate_avx2x4$29:
	movq	%r9, %rcx
	jmp 	LA2048x4___add_updstate_avx2x4$27
LA2048x4___add_updstate_avx2x4$28:
	movq	(%rax,%r12), %r11
	xorq	%r11, (%r10,%r9,4)
	movq	(%rdx,%r12), %r11
	xorq	%r11, 8(%r10,%r9,4)
	movq	(%rdi,%r12), %r11
	xorq	%r11, 16(%r10,%r9,4)
	movq	(%rsi,%r12), %r11
	xorq	%r11, 24(%r10,%r9,4)
	movq	%rcx, %r9
	addq	$8, %r12
LA2048x4___add_updstate_avx2x4$27:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA2048x4___add_updstate_avx2x4$28
	cmpq	%r8, %r9
	jnb 	LA2048x4___add_updstate_avx2x4$2
	movq	%r8, %r11
	andq	$7, %r11
	movq	%r12, %rbx
	cmpq	$8, %r11
	jnb 	LA2048x4___add_updstate_avx2x4$21
	testq	$4, %r11
	jne 	LA2048x4___add_updstate_avx2x4$25
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2048x4___add_updstate_avx2x4$26
LA2048x4___add_updstate_avx2x4$25:
	movl	(%rax,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2048x4___add_updstate_avx2x4$26:
	testq	$2, %r11
	je  	LA2048x4___add_updstate_avx2x4$24
	movzwq	(%rax,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2048x4___add_updstate_avx2x4$24:
	testq	$1, %r11
	je  	LA2048x4___add_updstate_avx2x4$22
	movzbq	(%rax,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA2048x4___add_updstate_avx2x4$23:
	jmp 	LA2048x4___add_updstate_avx2x4$22
LA2048x4___add_updstate_avx2x4$21:
	movq	(%rax,%rbx), %rbp
LA2048x4___add_updstate_avx2x4$22:
	xorq	%rbp, (%r10,%r9,4)
	movq	%r12, %rbx
	cmpq	$8, %r11
	jnb 	LA2048x4___add_updstate_avx2x4$15
	testq	$4, %r11
	jne 	LA2048x4___add_updstate_avx2x4$19
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2048x4___add_updstate_avx2x4$20
LA2048x4___add_updstate_avx2x4$19:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2048x4___add_updstate_avx2x4$20:
	testq	$2, %r11
	je  	LA2048x4___add_updstate_avx2x4$18
	movzwq	(%rdx,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2048x4___add_updstate_avx2x4$18:
	testq	$1, %r11
	je  	LA2048x4___add_updstate_avx2x4$16
	movzbq	(%rdx,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA2048x4___add_updstate_avx2x4$17:
	jmp 	LA2048x4___add_updstate_avx2x4$16
LA2048x4___add_updstate_avx2x4$15:
	movq	(%rdx,%rbx), %rbp
LA2048x4___add_updstate_avx2x4$16:
	xorq	%rbp, 8(%r10,%r9,4)
	movq	%r12, %rbx
	cmpq	$8, %r11
	jnb 	LA2048x4___add_updstate_avx2x4$9
	testq	$4, %r11
	jne 	LA2048x4___add_updstate_avx2x4$13
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2048x4___add_updstate_avx2x4$14
LA2048x4___add_updstate_avx2x4$13:
	movl	(%rdi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2048x4___add_updstate_avx2x4$14:
	testq	$2, %r11
	je  	LA2048x4___add_updstate_avx2x4$12
	movzwq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2048x4___add_updstate_avx2x4$12:
	testq	$1, %r11
	je  	LA2048x4___add_updstate_avx2x4$10
	movzbq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA2048x4___add_updstate_avx2x4$11:
	jmp 	LA2048x4___add_updstate_avx2x4$10
LA2048x4___add_updstate_avx2x4$9:
	movq	(%rdi,%rbx), %rbp
LA2048x4___add_updstate_avx2x4$10:
	xorq	%rbp, 16(%r10,%r9,4)
	cmpq	$8, %r11
	jnb 	LA2048x4___add_updstate_avx2x4$3
	testq	$4, %r11
	jne 	LA2048x4___add_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2048x4___add_updstate_avx2x4$8
LA2048x4___add_updstate_avx2x4$7:
	movl	(%rsi,%r12), %ebp
	addq	$4, %r12
	movb	$32, %cl
LA2048x4___add_updstate_avx2x4$8:
	testq	$2, %r11
	je  	LA2048x4___add_updstate_avx2x4$6
	movzwq	(%rsi,%r12), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %r12
	addb	$16, %cl
LA2048x4___add_updstate_avx2x4$6:
	testq	$1, %r11
	je  	LA2048x4___add_updstate_avx2x4$4
	movzbq	(%rsi,%r12), %r11
	shlq	%cl, %r11
	addq	%r11, %rbp
	incq	%r12
LA2048x4___add_updstate_avx2x4$5:
	jmp 	LA2048x4___add_updstate_avx2x4$4
LA2048x4___add_updstate_avx2x4$3:
	movq	(%rsi,%r12), %rbp
	addq	$8, %r12
LA2048x4___add_updstate_avx2x4$4:
	xorq	%rbp, 24(%r10,%r9,4)
LA2048x4___add_updstate_avx2x4$2:
	movq	%r8, %r9
	ret
LA1024x4___absorb_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA1024x4___absorb_updstate_avx2x4$7:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	movq	$0, %r11
	addq	%r9, %r12
	jmp 	LA1024x4___absorb_updstate_avx2x4$3
LA1024x4___absorb_updstate_avx2x4$4:
	movq	%r12, 16(%rsp)
	call	LA1024x4___add_updstate_avx2x4$1
LA1024x4___absorb_updstate_avx2x4$6:
	movq	16(%rsp), %r12
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA1024x4___absorb_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%r8, %r12
	movq	$0, %r9
LA1024x4___absorb_updstate_avx2x4$3:
	cmpq	%r12, %r8
	jbe 	LA1024x4___absorb_updstate_avx2x4$4
	movq	%r12, %r8
	call	LA1024x4___add_updstate_avx2x4$1
LA1024x4___absorb_updstate_avx2x4$2:
	movq	8(%rsp), %r11
	movb	%r9b, 800(%r11)
	ret
LA1024x4___add_updstate_avx2x4$1:
	movq	%r9, %r13
	andq	$7, %r13
	cmpq	$0, %r13
	je  	LA1024x4___add_updstate_avx2x4$29
	movq	%r8, %r12
	subq	%r9, %r12
	shrq	$3, %r9
	shlq	$3, %r9
	movb	%r13b, %bl
	shlb	$3, %bl
	movq	%r11, %r14
	cmpq	$8, %r12
	jnb 	LA1024x4___add_updstate_avx2x4$50
	testq	$4, %r12
	jne 	LA1024x4___add_updstate_avx2x4$54
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1024x4___add_updstate_avx2x4$55
LA1024x4___add_updstate_avx2x4$54:
	movl	(%rax,%r14), %ebp
	addq	$4, %r14
	movb	$32, %cl
LA1024x4___add_updstate_avx2x4$55:
	testq	$2, %r12
	je  	LA1024x4___add_updstate_avx2x4$53
	movzwq	(%rax,%r14), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r14
	addb	$16, %cl
LA1024x4___add_updstate_avx2x4$53:
	testq	$1, %r12
	je  	LA1024x4___add_updstate_avx2x4$51
	movzbq	(%rax,%r14), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA1024x4___add_updstate_avx2x4$52:
	jmp 	LA1024x4___add_updstate_avx2x4$51
LA1024x4___add_updstate_avx2x4$50:
	movq	(%rax,%r14), %rbp
LA1024x4___add_updstate_avx2x4$51:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r10,%r9,4)
	movq	%r11, %r14
	cmpq	$8, %r12
	jnb 	LA1024x4___add_updstate_avx2x4$44
	testq	$4, %r12
	jne 	LA1024x4___add_updstate_avx2x4$48
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1024x4___add_updstate_avx2x4$49
LA1024x4___add_updstate_avx2x4$48:
	movl	(%rdx,%r14), %ebp
	addq	$4, %r14
	movb	$32, %cl
LA1024x4___add_updstate_avx2x4$49:
	testq	$2, %r12
	je  	LA1024x4___add_updstate_avx2x4$47
	movzwq	(%rdx,%r14), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r14
	addb	$16, %cl
LA1024x4___add_updstate_avx2x4$47:
	testq	$1, %r12
	je  	LA1024x4___add_updstate_avx2x4$45
	movzbq	(%rdx,%r14), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA1024x4___add_updstate_avx2x4$46:
	jmp 	LA1024x4___add_updstate_avx2x4$45
LA1024x4___add_updstate_avx2x4$44:
	movq	(%rdx,%r14), %rbp
LA1024x4___add_updstate_avx2x4$45:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 8(%r10,%r9,4)
	movq	%r11, %r14
	cmpq	$8, %r12
	jnb 	LA1024x4___add_updstate_avx2x4$38
	testq	$4, %r12
	jne 	LA1024x4___add_updstate_avx2x4$42
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1024x4___add_updstate_avx2x4$43
LA1024x4___add_updstate_avx2x4$42:
	movl	(%rdi,%r14), %ebp
	addq	$4, %r14
	movb	$32, %cl
LA1024x4___add_updstate_avx2x4$43:
	testq	$2, %r12
	je  	LA1024x4___add_updstate_avx2x4$41
	movzwq	(%rdi,%r14), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r14
	addb	$16, %cl
LA1024x4___add_updstate_avx2x4$41:
	testq	$1, %r12
	je  	LA1024x4___add_updstate_avx2x4$39
	movzbq	(%rdi,%r14), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA1024x4___add_updstate_avx2x4$40:
	jmp 	LA1024x4___add_updstate_avx2x4$39
LA1024x4___add_updstate_avx2x4$38:
	movq	(%rdi,%r14), %rbp
LA1024x4___add_updstate_avx2x4$39:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 16(%r10,%r9,4)
	movq	%r11, %rbp
	cmpq	$8, %r12
	jnb 	LA1024x4___add_updstate_avx2x4$32
	testq	$4, %r12
	jne 	LA1024x4___add_updstate_avx2x4$36
	movq	$0, %r14
	movb	$0, %cl
	jmp 	LA1024x4___add_updstate_avx2x4$37
LA1024x4___add_updstate_avx2x4$36:
	movl	(%rsi,%rbp), %r14d
	addq	$4, %rbp
	movb	$32, %cl
LA1024x4___add_updstate_avx2x4$37:
	testq	$2, %r12
	je  	LA1024x4___add_updstate_avx2x4$35
	movzwq	(%rsi,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r14
	addq	$2, %rbp
	addb	$16, %cl
LA1024x4___add_updstate_avx2x4$35:
	testq	$1, %r12
	je  	LA1024x4___add_updstate_avx2x4$33
	movzbq	(%rsi,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r14
	incq	%rbp
LA1024x4___add_updstate_avx2x4$34:
	jmp 	LA1024x4___add_updstate_avx2x4$33
LA1024x4___add_updstate_avx2x4$32:
	movq	(%rsi,%rbp), %r14
	addq	$8, %rbp
LA1024x4___add_updstate_avx2x4$33:
	movb	%bl, %cl
	shlq	%cl, %r14
	xorq	%r14, 24(%r10,%r9,4)
	addq	%r13, %r12
	cmpq	$8, %r12
	jnb 	LA1024x4___add_updstate_avx2x4$30
	movq	%rbp, %r11
	movq	%r8, %r9
	jmp 	LA1024x4___add_updstate_avx2x4$29
LA1024x4___add_updstate_avx2x4$30:
	addq	$8, %r11
	subq	%r13, %r11
	addq	$8, %r9
LA1024x4___add_updstate_avx2x4$31:
LA1024x4___add_updstate_avx2x4$29:
	movq	%r9, %rcx
	jmp 	LA1024x4___add_updstate_avx2x4$27
LA1024x4___add_updstate_avx2x4$28:
	movq	(%rax,%r11), %rbp
	xorq	%rbp, (%r10,%r9,4)
	movq	(%rdx,%r11), %rbp
	xorq	%rbp, 8(%r10,%r9,4)
	movq	(%rdi,%r11), %rbp
	xorq	%rbp, 16(%r10,%r9,4)
	movq	(%rsi,%r11), %rbp
	xorq	%rbp, 24(%r10,%r9,4)
	movq	%rcx, %r9
	addq	$8, %r11
LA1024x4___add_updstate_avx2x4$27:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA1024x4___add_updstate_avx2x4$28
	cmpq	%r8, %r9
	jnb 	LA1024x4___add_updstate_avx2x4$2
	movq	%r8, %r12
	andq	$7, %r12
	movq	%r11, %rbx
	cmpq	$8, %r12
	jnb 	LA1024x4___add_updstate_avx2x4$21
	testq	$4, %r12
	jne 	LA1024x4___add_updstate_avx2x4$25
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1024x4___add_updstate_avx2x4$26
LA1024x4___add_updstate_avx2x4$25:
	movl	(%rax,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA1024x4___add_updstate_avx2x4$26:
	testq	$2, %r12
	je  	LA1024x4___add_updstate_avx2x4$24
	movzwq	(%rax,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA1024x4___add_updstate_avx2x4$24:
	testq	$1, %r12
	je  	LA1024x4___add_updstate_avx2x4$22
	movzbq	(%rax,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA1024x4___add_updstate_avx2x4$23:
	jmp 	LA1024x4___add_updstate_avx2x4$22
LA1024x4___add_updstate_avx2x4$21:
	movq	(%rax,%rbx), %rbp
LA1024x4___add_updstate_avx2x4$22:
	xorq	%rbp, (%r10,%r9,4)
	movq	%r11, %rbx
	cmpq	$8, %r12
	jnb 	LA1024x4___add_updstate_avx2x4$15
	testq	$4, %r12
	jne 	LA1024x4___add_updstate_avx2x4$19
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1024x4___add_updstate_avx2x4$20
LA1024x4___add_updstate_avx2x4$19:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA1024x4___add_updstate_avx2x4$20:
	testq	$2, %r12
	je  	LA1024x4___add_updstate_avx2x4$18
	movzwq	(%rdx,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA1024x4___add_updstate_avx2x4$18:
	testq	$1, %r12
	je  	LA1024x4___add_updstate_avx2x4$16
	movzbq	(%rdx,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA1024x4___add_updstate_avx2x4$17:
	jmp 	LA1024x4___add_updstate_avx2x4$16
LA1024x4___add_updstate_avx2x4$15:
	movq	(%rdx,%rbx), %rbp
LA1024x4___add_updstate_avx2x4$16:
	xorq	%rbp, 8(%r10,%r9,4)
	movq	%r11, %rbx
	cmpq	$8, %r12
	jnb 	LA1024x4___add_updstate_avx2x4$9
	testq	$4, %r12
	jne 	LA1024x4___add_updstate_avx2x4$13
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1024x4___add_updstate_avx2x4$14
LA1024x4___add_updstate_avx2x4$13:
	movl	(%rdi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA1024x4___add_updstate_avx2x4$14:
	testq	$2, %r12
	je  	LA1024x4___add_updstate_avx2x4$12
	movzwq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA1024x4___add_updstate_avx2x4$12:
	testq	$1, %r12
	je  	LA1024x4___add_updstate_avx2x4$10
	movzbq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA1024x4___add_updstate_avx2x4$11:
	jmp 	LA1024x4___add_updstate_avx2x4$10
LA1024x4___add_updstate_avx2x4$9:
	movq	(%rdi,%rbx), %rbp
LA1024x4___add_updstate_avx2x4$10:
	xorq	%rbp, 16(%r10,%r9,4)
	cmpq	$8, %r12
	jnb 	LA1024x4___add_updstate_avx2x4$3
	testq	$4, %r12
	jne 	LA1024x4___add_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1024x4___add_updstate_avx2x4$8
LA1024x4___add_updstate_avx2x4$7:
	movl	(%rsi,%r11), %ebp
	addq	$4, %r11
	movb	$32, %cl
LA1024x4___add_updstate_avx2x4$8:
	testq	$2, %r12
	je  	LA1024x4___add_updstate_avx2x4$6
	movzwq	(%rsi,%r11), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %r11
	addb	$16, %cl
LA1024x4___add_updstate_avx2x4$6:
	testq	$1, %r12
	je  	LA1024x4___add_updstate_avx2x4$4
	movzbq	(%rsi,%r11), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	incq	%r11
LA1024x4___add_updstate_avx2x4$5:
	jmp 	LA1024x4___add_updstate_avx2x4$4
LA1024x4___add_updstate_avx2x4$3:
	movq	(%rsi,%r11), %rbp
	addq	$8, %r11
LA1024x4___add_updstate_avx2x4$4:
	xorq	%rbp, 24(%r10,%r9,4)
LA1024x4___add_updstate_avx2x4$2:
	movq	%r8, %r9
	ret
LA256x4___squeeze_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA256x4___squeeze_updstate_avx2x4$9:
	movq	%r11, %r10
	cmpq	$0, %r9
	jne 	LA256x4___squeeze_updstate_avx2x4$7
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA256x4___squeeze_updstate_avx2x4$8:
	leaq	824(%rsp), %rsp
LA256x4___squeeze_updstate_avx2x4$7:
	movq	$0, %r13
	addq	%r9, %r12
	jmp 	LA256x4___squeeze_updstate_avx2x4$3
LA256x4___squeeze_updstate_avx2x4$4:
	call	LA256x4___dump_updstate_avx2x4$1
LA256x4___squeeze_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA256x4___squeeze_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%r8, %r12
	movq	$0, %r9
LA256x4___squeeze_updstate_avx2x4$3:
	cmpq	%r12, %r8
	jb  	LA256x4___squeeze_updstate_avx2x4$4
	movq	%r12, %r8
	call	LA256x4___dump_updstate_avx2x4$1
LA256x4___squeeze_updstate_avx2x4$2:
	movb	%r9b, 800(%r11)
	ret
LA256x4___dump_updstate_avx2x4$1:
	movq	%r9, %r15
	andq	$7, %r15
	cmpq	$0, %r15
	je  	LA256x4___dump_updstate_avx2x4$25
	movq	%r8, %rbx
	subq	%r9, %rbx
	shrq	$3, %r9
	shlq	$3, %r9
	movb	%r15b, %cl
	shlb	$3, %cl
	movq	(%r10,%r9,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r14
	cmpq	$8, %rbx
	jnb 	LA256x4___dump_updstate_avx2x4$43
	testq	$4, %rbx
	je  	LA256x4___dump_updstate_avx2x4$47
	movl	%ebp, (%rax,%r14)
	addq	$4, %r14
	shrq	$32, %rbp
LA256x4___dump_updstate_avx2x4$47:
	testq	$2, %rbx
	je  	LA256x4___dump_updstate_avx2x4$46
	movw	%bp, (%rax,%r14)
	addq	$2, %r14
	shrq	$16, %rbp
LA256x4___dump_updstate_avx2x4$46:
	testq	$1, %rbx
	je  	LA256x4___dump_updstate_avx2x4$44
	movb	%bpl, (%rax,%r14)
LA256x4___dump_updstate_avx2x4$45:
	jmp 	LA256x4___dump_updstate_avx2x4$44
LA256x4___dump_updstate_avx2x4$43:
	movq	%rbp, (%rax,%r14)
LA256x4___dump_updstate_avx2x4$44:
	movq	8(%r10,%r9,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r14
	cmpq	$8, %rbx
	jnb 	LA256x4___dump_updstate_avx2x4$38
	testq	$4, %rbx
	je  	LA256x4___dump_updstate_avx2x4$42
	movl	%ebp, (%rdx,%r14)
	addq	$4, %r14
	shrq	$32, %rbp
LA256x4___dump_updstate_avx2x4$42:
	testq	$2, %rbx
	je  	LA256x4___dump_updstate_avx2x4$41
	movw	%bp, (%rdx,%r14)
	addq	$2, %r14
	shrq	$16, %rbp
LA256x4___dump_updstate_avx2x4$41:
	testq	$1, %rbx
	je  	LA256x4___dump_updstate_avx2x4$39
	movb	%bpl, (%rdx,%r14)
LA256x4___dump_updstate_avx2x4$40:
	jmp 	LA256x4___dump_updstate_avx2x4$39
LA256x4___dump_updstate_avx2x4$38:
	movq	%rbp, (%rdx,%r14)
LA256x4___dump_updstate_avx2x4$39:
	movq	16(%r10,%r9,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r14
	cmpq	$8, %rbx
	jnb 	LA256x4___dump_updstate_avx2x4$33
	testq	$4, %rbx
	je  	LA256x4___dump_updstate_avx2x4$37
	movl	%ebp, (%rdi,%r14)
	addq	$4, %r14
	shrq	$32, %rbp
LA256x4___dump_updstate_avx2x4$37:
	testq	$2, %rbx
	je  	LA256x4___dump_updstate_avx2x4$36
	movw	%bp, (%rdi,%r14)
	addq	$2, %r14
	shrq	$16, %rbp
LA256x4___dump_updstate_avx2x4$36:
	testq	$1, %rbx
	je  	LA256x4___dump_updstate_avx2x4$34
	movb	%bpl, (%rdi,%r14)
LA256x4___dump_updstate_avx2x4$35:
	jmp 	LA256x4___dump_updstate_avx2x4$34
LA256x4___dump_updstate_avx2x4$33:
	movq	%rbp, (%rdi,%r14)
LA256x4___dump_updstate_avx2x4$34:
	movq	24(%r10,%r9,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %rcx
	cmpq	$8, %rbx
	jnb 	LA256x4___dump_updstate_avx2x4$28
	testq	$4, %rbx
	je  	LA256x4___dump_updstate_avx2x4$32
	movl	%ebp, (%rsi,%rcx)
	addq	$4, %rcx
	shrq	$32, %rbp
LA256x4___dump_updstate_avx2x4$32:
	testq	$2, %rbx
	je  	LA256x4___dump_updstate_avx2x4$31
	movw	%bp, (%rsi,%rcx)
	addq	$2, %rcx
	shrq	$16, %rbp
LA256x4___dump_updstate_avx2x4$31:
	testq	$1, %rbx
	je  	LA256x4___dump_updstate_avx2x4$29
	movb	%bpl, (%rsi,%rcx)
	incq	%rcx
LA256x4___dump_updstate_avx2x4$30:
	jmp 	LA256x4___dump_updstate_avx2x4$29
LA256x4___dump_updstate_avx2x4$28:
	movq	%rbp, (%rsi,%rcx)
	addq	$8, %rcx
LA256x4___dump_updstate_avx2x4$29:
	addq	%r15, %rbx
	cmpq	$8, %rbx
	jnb 	LA256x4___dump_updstate_avx2x4$26
	movq	%rcx, %r13
	movq	%r8, %r9
	jmp 	LA256x4___dump_updstate_avx2x4$25
LA256x4___dump_updstate_avx2x4$26:
	addq	$8, %r13
	subq	%r15, %r13
	addq	$8, %r9
LA256x4___dump_updstate_avx2x4$27:
LA256x4___dump_updstate_avx2x4$25:
	movq	%r9, %rcx
	jmp 	LA256x4___dump_updstate_avx2x4$23
LA256x4___dump_updstate_avx2x4$24:
	movq	(%r10,%r9,4), %rbp
	movq	%rbp, (%rax,%r13)
	movq	8(%r10,%r9,4), %rbp
	movq	%rbp, (%rdx,%r13)
	movq	16(%r10,%r9,4), %rbp
	movq	%rbp, (%rdi,%r13)
	movq	24(%r10,%r9,4), %r9
	movq	%r9, (%rsi,%r13)
	movq	%rcx, %r9
	addq	$8, %r13
LA256x4___dump_updstate_avx2x4$23:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA256x4___dump_updstate_avx2x4$24
	cmpq	%r8, %r9
	jnb 	LA256x4___dump_updstate_avx2x4$2
	movq	%r8, %rcx
	andq	$7, %rcx
	movq	(%r10,%r9,4), %rbp
	movq	%r13, %rbx
	cmpq	$8, %rcx
	jnb 	LA256x4___dump_updstate_avx2x4$18
	testq	$4, %rcx
	je  	LA256x4___dump_updstate_avx2x4$22
	movl	%ebp, (%rax,%rbx)
	addq	$4, %rbx
	shrq	$32, %rbp
LA256x4___dump_updstate_avx2x4$22:
	testq	$2, %rcx
	je  	LA256x4___dump_updstate_avx2x4$21
	movw	%bp, (%rax,%rbx)
	addq	$2, %rbx
	shrq	$16, %rbp
LA256x4___dump_updstate_avx2x4$21:
	testq	$1, %rcx
	je  	LA256x4___dump_updstate_avx2x4$19
	movb	%bpl, (%rax,%rbx)
LA256x4___dump_updstate_avx2x4$20:
	jmp 	LA256x4___dump_updstate_avx2x4$19
LA256x4___dump_updstate_avx2x4$18:
	movq	%rbp, (%rax,%rbx)
LA256x4___dump_updstate_avx2x4$19:
	movq	8(%r10,%r9,4), %rbp
	movq	%r13, %rbx
	cmpq	$8, %rcx
	jnb 	LA256x4___dump_updstate_avx2x4$13
	testq	$4, %rcx
	je  	LA256x4___dump_updstate_avx2x4$17
	movl	%ebp, (%rdx,%rbx)
	addq	$4, %rbx
	shrq	$32, %rbp
LA256x4___dump_updstate_avx2x4$17:
	testq	$2, %rcx
	je  	LA256x4___dump_updstate_avx2x4$16
	movw	%bp, (%rdx,%rbx)
	addq	$2, %rbx
	shrq	$16, %rbp
LA256x4___dump_updstate_avx2x4$16:
	testq	$1, %rcx
	je  	LA256x4___dump_updstate_avx2x4$14
	movb	%bpl, (%rdx,%rbx)
LA256x4___dump_updstate_avx2x4$15:
	jmp 	LA256x4___dump_updstate_avx2x4$14
LA256x4___dump_updstate_avx2x4$13:
	movq	%rbp, (%rdx,%rbx)
LA256x4___dump_updstate_avx2x4$14:
	movq	16(%r10,%r9,4), %rbp
	movq	%r13, %rbx
	cmpq	$8, %rcx
	jnb 	LA256x4___dump_updstate_avx2x4$8
	testq	$4, %rcx
	je  	LA256x4___dump_updstate_avx2x4$12
	movl	%ebp, (%rdi,%rbx)
	addq	$4, %rbx
	shrq	$32, %rbp
LA256x4___dump_updstate_avx2x4$12:
	testq	$2, %rcx
	je  	LA256x4___dump_updstate_avx2x4$11
	movw	%bp, (%rdi,%rbx)
	addq	$2, %rbx
	shrq	$16, %rbp
LA256x4___dump_updstate_avx2x4$11:
	testq	$1, %rcx
	je  	LA256x4___dump_updstate_avx2x4$9
	movb	%bpl, (%rdi,%rbx)
LA256x4___dump_updstate_avx2x4$10:
	jmp 	LA256x4___dump_updstate_avx2x4$9
LA256x4___dump_updstate_avx2x4$8:
	movq	%rbp, (%rdi,%rbx)
LA256x4___dump_updstate_avx2x4$9:
	movq	24(%r10,%r9,4), %r9
	cmpq	$8, %rcx
	jnb 	LA256x4___dump_updstate_avx2x4$3
	testq	$4, %rcx
	je  	LA256x4___dump_updstate_avx2x4$7
	movl	%r9d, (%rsi,%r13)
	addq	$4, %r13
	shrq	$32, %r9
LA256x4___dump_updstate_avx2x4$7:
	testq	$2, %rcx
	je  	LA256x4___dump_updstate_avx2x4$6
	movw	%r9w, (%rsi,%r13)
	addq	$2, %r13
	shrq	$16, %r9
LA256x4___dump_updstate_avx2x4$6:
	testq	$1, %rcx
	je  	LA256x4___dump_updstate_avx2x4$2
	movb	%r9b, (%rsi,%r13)
	incq	%r13
LA256x4___dump_updstate_avx2x4$5:
	jmp 	LA256x4___dump_updstate_avx2x4$2
LA256x4___dump_updstate_avx2x4$3:
	movq	%r9, (%rsi,%r13)
	addq	$8, %r13
LA256x4___dump_updstate_avx2x4$4:
LA256x4___dump_updstate_avx2x4$2:
	movq	%r8, %r9
	ret
LA64x4___squeeze_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA64x4___squeeze_updstate_avx2x4$9:
	movq	%r11, %r10
	cmpq	$0, %r9
	jne 	LA64x4___squeeze_updstate_avx2x4$7
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA64x4___squeeze_updstate_avx2x4$8:
	leaq	824(%rsp), %rsp
LA64x4___squeeze_updstate_avx2x4$7:
	movq	$0, %r13
	addq	%r9, %r12
	jmp 	LA64x4___squeeze_updstate_avx2x4$3
LA64x4___squeeze_updstate_avx2x4$4:
	call	LA64x4___dump_updstate_avx2x4$1
LA64x4___squeeze_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA64x4___squeeze_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%r8, %r12
	movq	$0, %r9
LA64x4___squeeze_updstate_avx2x4$3:
	cmpq	%r12, %r8
	jb  	LA64x4___squeeze_updstate_avx2x4$4
	movq	%r12, %r8
	call	LA64x4___dump_updstate_avx2x4$1
LA64x4___squeeze_updstate_avx2x4$2:
	movb	%r9b, 800(%r11)
	ret
LA64x4___dump_updstate_avx2x4$1:
	movq	%r9, %r15
	andq	$7, %r15
	cmpq	$0, %r15
	je  	LA64x4___dump_updstate_avx2x4$25
	movq	%r8, %rbx
	subq	%r9, %rbx
	shrq	$3, %r9
	shlq	$3, %r9
	movb	%r15b, %cl
	shlb	$3, %cl
	movq	(%r10,%r9,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r14
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$43
	testq	$4, %rbx
	je  	LA64x4___dump_updstate_avx2x4$47
	movl	%ebp, (%rax,%r14)
	addq	$4, %r14
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$47:
	testq	$2, %rbx
	je  	LA64x4___dump_updstate_avx2x4$46
	movw	%bp, (%rax,%r14)
	addq	$2, %r14
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$46:
	testq	$1, %rbx
	je  	LA64x4___dump_updstate_avx2x4$44
	movb	%bpl, (%rax,%r14)
LA64x4___dump_updstate_avx2x4$45:
	jmp 	LA64x4___dump_updstate_avx2x4$44
LA64x4___dump_updstate_avx2x4$43:
	movq	%rbp, (%rax,%r14)
LA64x4___dump_updstate_avx2x4$44:
	movq	8(%r10,%r9,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r14
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$38
	testq	$4, %rbx
	je  	LA64x4___dump_updstate_avx2x4$42
	movl	%ebp, (%rdx,%r14)
	addq	$4, %r14
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$42:
	testq	$2, %rbx
	je  	LA64x4___dump_updstate_avx2x4$41
	movw	%bp, (%rdx,%r14)
	addq	$2, %r14
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$41:
	testq	$1, %rbx
	je  	LA64x4___dump_updstate_avx2x4$39
	movb	%bpl, (%rdx,%r14)
LA64x4___dump_updstate_avx2x4$40:
	jmp 	LA64x4___dump_updstate_avx2x4$39
LA64x4___dump_updstate_avx2x4$38:
	movq	%rbp, (%rdx,%r14)
LA64x4___dump_updstate_avx2x4$39:
	movq	16(%r10,%r9,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r14
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$33
	testq	$4, %rbx
	je  	LA64x4___dump_updstate_avx2x4$37
	movl	%ebp, (%rdi,%r14)
	addq	$4, %r14
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$37:
	testq	$2, %rbx
	je  	LA64x4___dump_updstate_avx2x4$36
	movw	%bp, (%rdi,%r14)
	addq	$2, %r14
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$36:
	testq	$1, %rbx
	je  	LA64x4___dump_updstate_avx2x4$34
	movb	%bpl, (%rdi,%r14)
LA64x4___dump_updstate_avx2x4$35:
	jmp 	LA64x4___dump_updstate_avx2x4$34
LA64x4___dump_updstate_avx2x4$33:
	movq	%rbp, (%rdi,%r14)
LA64x4___dump_updstate_avx2x4$34:
	movq	24(%r10,%r9,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %rcx
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$28
	testq	$4, %rbx
	je  	LA64x4___dump_updstate_avx2x4$32
	movl	%ebp, (%rsi,%rcx)
	addq	$4, %rcx
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$32:
	testq	$2, %rbx
	je  	LA64x4___dump_updstate_avx2x4$31
	movw	%bp, (%rsi,%rcx)
	addq	$2, %rcx
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$31:
	testq	$1, %rbx
	je  	LA64x4___dump_updstate_avx2x4$29
	movb	%bpl, (%rsi,%rcx)
	incq	%rcx
LA64x4___dump_updstate_avx2x4$30:
	jmp 	LA64x4___dump_updstate_avx2x4$29
LA64x4___dump_updstate_avx2x4$28:
	movq	%rbp, (%rsi,%rcx)
	addq	$8, %rcx
LA64x4___dump_updstate_avx2x4$29:
	addq	%r15, %rbx
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$26
	movq	%rcx, %r13
	movq	%r8, %r9
	jmp 	LA64x4___dump_updstate_avx2x4$25
LA64x4___dump_updstate_avx2x4$26:
	addq	$8, %r13
	subq	%r15, %r13
	addq	$8, %r9
LA64x4___dump_updstate_avx2x4$27:
LA64x4___dump_updstate_avx2x4$25:
	movq	%r9, %rcx
	jmp 	LA64x4___dump_updstate_avx2x4$23
LA64x4___dump_updstate_avx2x4$24:
	movq	(%r10,%r9,4), %rbp
	movq	%rbp, (%rax,%r13)
	movq	8(%r10,%r9,4), %rbp
	movq	%rbp, (%rdx,%r13)
	movq	16(%r10,%r9,4), %rbp
	movq	%rbp, (%rdi,%r13)
	movq	24(%r10,%r9,4), %r9
	movq	%r9, (%rsi,%r13)
	movq	%rcx, %r9
	addq	$8, %r13
LA64x4___dump_updstate_avx2x4$23:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA64x4___dump_updstate_avx2x4$24
	cmpq	%r8, %r9
	jnb 	LA64x4___dump_updstate_avx2x4$2
	movq	%r8, %rcx
	andq	$7, %rcx
	movq	(%r10,%r9,4), %rbp
	movq	%r13, %rbx
	cmpq	$8, %rcx
	jnb 	LA64x4___dump_updstate_avx2x4$18
	testq	$4, %rcx
	je  	LA64x4___dump_updstate_avx2x4$22
	movl	%ebp, (%rax,%rbx)
	addq	$4, %rbx
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$22:
	testq	$2, %rcx
	je  	LA64x4___dump_updstate_avx2x4$21
	movw	%bp, (%rax,%rbx)
	addq	$2, %rbx
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$21:
	testq	$1, %rcx
	je  	LA64x4___dump_updstate_avx2x4$19
	movb	%bpl, (%rax,%rbx)
LA64x4___dump_updstate_avx2x4$20:
	jmp 	LA64x4___dump_updstate_avx2x4$19
LA64x4___dump_updstate_avx2x4$18:
	movq	%rbp, (%rax,%rbx)
LA64x4___dump_updstate_avx2x4$19:
	movq	8(%r10,%r9,4), %rbp
	movq	%r13, %rbx
	cmpq	$8, %rcx
	jnb 	LA64x4___dump_updstate_avx2x4$13
	testq	$4, %rcx
	je  	LA64x4___dump_updstate_avx2x4$17
	movl	%ebp, (%rdx,%rbx)
	addq	$4, %rbx
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$17:
	testq	$2, %rcx
	je  	LA64x4___dump_updstate_avx2x4$16
	movw	%bp, (%rdx,%rbx)
	addq	$2, %rbx
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$16:
	testq	$1, %rcx
	je  	LA64x4___dump_updstate_avx2x4$14
	movb	%bpl, (%rdx,%rbx)
LA64x4___dump_updstate_avx2x4$15:
	jmp 	LA64x4___dump_updstate_avx2x4$14
LA64x4___dump_updstate_avx2x4$13:
	movq	%rbp, (%rdx,%rbx)
LA64x4___dump_updstate_avx2x4$14:
	movq	16(%r10,%r9,4), %rbp
	movq	%r13, %rbx
	cmpq	$8, %rcx
	jnb 	LA64x4___dump_updstate_avx2x4$8
	testq	$4, %rcx
	je  	LA64x4___dump_updstate_avx2x4$12
	movl	%ebp, (%rdi,%rbx)
	addq	$4, %rbx
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$12:
	testq	$2, %rcx
	je  	LA64x4___dump_updstate_avx2x4$11
	movw	%bp, (%rdi,%rbx)
	addq	$2, %rbx
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$11:
	testq	$1, %rcx
	je  	LA64x4___dump_updstate_avx2x4$9
	movb	%bpl, (%rdi,%rbx)
LA64x4___dump_updstate_avx2x4$10:
	jmp 	LA64x4___dump_updstate_avx2x4$9
LA64x4___dump_updstate_avx2x4$8:
	movq	%rbp, (%rdi,%rbx)
LA64x4___dump_updstate_avx2x4$9:
	movq	24(%r10,%r9,4), %r9
	cmpq	$8, %rcx
	jnb 	LA64x4___dump_updstate_avx2x4$3
	testq	$4, %rcx
	je  	LA64x4___dump_updstate_avx2x4$7
	movl	%r9d, (%rsi,%r13)
	addq	$4, %r13
	shrq	$32, %r9
LA64x4___dump_updstate_avx2x4$7:
	testq	$2, %rcx
	je  	LA64x4___dump_updstate_avx2x4$6
	movw	%r9w, (%rsi,%r13)
	addq	$2, %r13
	shrq	$16, %r9
LA64x4___dump_updstate_avx2x4$6:
	testq	$1, %rcx
	je  	LA64x4___dump_updstate_avx2x4$2
	movb	%r9b, (%rsi,%r13)
	incq	%r13
LA64x4___dump_updstate_avx2x4$5:
	jmp 	LA64x4___dump_updstate_avx2x4$2
LA64x4___dump_updstate_avx2x4$3:
	movq	%r9, (%rsi,%r13)
	addq	$8, %r13
LA64x4___dump_updstate_avx2x4$4:
LA64x4___dump_updstate_avx2x4$2:
	movq	%r8, %r9
	ret
LA32x4___absorb_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA32x4___absorb_updstate_avx2x4$7:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	movq	$0, %r11
	addq	%r9, %r12
	jmp 	LA32x4___absorb_updstate_avx2x4$3
LA32x4___absorb_updstate_avx2x4$4:
	movq	%r12, 16(%rsp)
	call	LA32x4___add_updstate_avx2x4$1
LA32x4___absorb_updstate_avx2x4$6:
	movq	16(%rsp), %r12
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA32x4___absorb_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%r8, %r12
	movq	$0, %r9
LA32x4___absorb_updstate_avx2x4$3:
	cmpq	%r12, %r8
	jbe 	LA32x4___absorb_updstate_avx2x4$4
	movq	%r12, %r8
	call	LA32x4___add_updstate_avx2x4$1
LA32x4___absorb_updstate_avx2x4$2:
	movq	8(%rsp), %r12
	movb	%r9b, 800(%r12)
	ret
LA32x4___add_updstate_avx2x4$1:
	movq	%r9, %r13
	andq	$7, %r13
	cmpq	$0, %r13
	je  	LA32x4___add_updstate_avx2x4$29
	movq	%r8, %r12
	subq	%r9, %r12
	shrq	$3, %r9
	shlq	$3, %r9
	movb	%r13b, %bl
	shlb	$3, %bl
	movq	%r11, %r14
	cmpq	$8, %r12
	jnb 	LA32x4___add_updstate_avx2x4$50
	testq	$4, %r12
	jne 	LA32x4___add_updstate_avx2x4$54
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32x4___add_updstate_avx2x4$55
LA32x4___add_updstate_avx2x4$54:
	movl	(%rax,%r14), %ebp
	addq	$4, %r14
	movb	$32, %cl
LA32x4___add_updstate_avx2x4$55:
	testq	$2, %r12
	je  	LA32x4___add_updstate_avx2x4$53
	movzwq	(%rax,%r14), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r14
	addb	$16, %cl
LA32x4___add_updstate_avx2x4$53:
	testq	$1, %r12
	je  	LA32x4___add_updstate_avx2x4$51
	movzbq	(%rax,%r14), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA32x4___add_updstate_avx2x4$52:
	jmp 	LA32x4___add_updstate_avx2x4$51
LA32x4___add_updstate_avx2x4$50:
	movq	(%rax,%r14), %rbp
LA32x4___add_updstate_avx2x4$51:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r10,%r9,4)
	movq	%r11, %r14
	cmpq	$8, %r12
	jnb 	LA32x4___add_updstate_avx2x4$44
	testq	$4, %r12
	jne 	LA32x4___add_updstate_avx2x4$48
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32x4___add_updstate_avx2x4$49
LA32x4___add_updstate_avx2x4$48:
	movl	(%rdx,%r14), %ebp
	addq	$4, %r14
	movb	$32, %cl
LA32x4___add_updstate_avx2x4$49:
	testq	$2, %r12
	je  	LA32x4___add_updstate_avx2x4$47
	movzwq	(%rdx,%r14), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r14
	addb	$16, %cl
LA32x4___add_updstate_avx2x4$47:
	testq	$1, %r12
	je  	LA32x4___add_updstate_avx2x4$45
	movzbq	(%rdx,%r14), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA32x4___add_updstate_avx2x4$46:
	jmp 	LA32x4___add_updstate_avx2x4$45
LA32x4___add_updstate_avx2x4$44:
	movq	(%rdx,%r14), %rbp
LA32x4___add_updstate_avx2x4$45:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 8(%r10,%r9,4)
	movq	%r11, %r14
	cmpq	$8, %r12
	jnb 	LA32x4___add_updstate_avx2x4$38
	testq	$4, %r12
	jne 	LA32x4___add_updstate_avx2x4$42
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32x4___add_updstate_avx2x4$43
LA32x4___add_updstate_avx2x4$42:
	movl	(%rdi,%r14), %ebp
	addq	$4, %r14
	movb	$32, %cl
LA32x4___add_updstate_avx2x4$43:
	testq	$2, %r12
	je  	LA32x4___add_updstate_avx2x4$41
	movzwq	(%rdi,%r14), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r14
	addb	$16, %cl
LA32x4___add_updstate_avx2x4$41:
	testq	$1, %r12
	je  	LA32x4___add_updstate_avx2x4$39
	movzbq	(%rdi,%r14), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA32x4___add_updstate_avx2x4$40:
	jmp 	LA32x4___add_updstate_avx2x4$39
LA32x4___add_updstate_avx2x4$38:
	movq	(%rdi,%r14), %rbp
LA32x4___add_updstate_avx2x4$39:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 16(%r10,%r9,4)
	movq	%r11, %rbp
	cmpq	$8, %r12
	jnb 	LA32x4___add_updstate_avx2x4$32
	testq	$4, %r12
	jne 	LA32x4___add_updstate_avx2x4$36
	movq	$0, %r14
	movb	$0, %cl
	jmp 	LA32x4___add_updstate_avx2x4$37
LA32x4___add_updstate_avx2x4$36:
	movl	(%rsi,%rbp), %r14d
	addq	$4, %rbp
	movb	$32, %cl
LA32x4___add_updstate_avx2x4$37:
	testq	$2, %r12
	je  	LA32x4___add_updstate_avx2x4$35
	movzwq	(%rsi,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r14
	addq	$2, %rbp
	addb	$16, %cl
LA32x4___add_updstate_avx2x4$35:
	testq	$1, %r12
	je  	LA32x4___add_updstate_avx2x4$33
	movzbq	(%rsi,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r14
	incq	%rbp
LA32x4___add_updstate_avx2x4$34:
	jmp 	LA32x4___add_updstate_avx2x4$33
LA32x4___add_updstate_avx2x4$32:
	movq	(%rsi,%rbp), %r14
	addq	$8, %rbp
LA32x4___add_updstate_avx2x4$33:
	movb	%bl, %cl
	shlq	%cl, %r14
	xorq	%r14, 24(%r10,%r9,4)
	addq	%r13, %r12
	cmpq	$8, %r12
	jnb 	LA32x4___add_updstate_avx2x4$30
	movq	%rbp, %r11
	movq	%r8, %r9
	jmp 	LA32x4___add_updstate_avx2x4$29
LA32x4___add_updstate_avx2x4$30:
	addq	$8, %r11
	subq	%r13, %r11
	addq	$8, %r9
LA32x4___add_updstate_avx2x4$31:
LA32x4___add_updstate_avx2x4$29:
	movq	%r9, %rcx
	jmp 	LA32x4___add_updstate_avx2x4$27
LA32x4___add_updstate_avx2x4$28:
	movq	(%rax,%r11), %rbp
	xorq	%rbp, (%r10,%r9,4)
	movq	(%rdx,%r11), %rbp
	xorq	%rbp, 8(%r10,%r9,4)
	movq	(%rdi,%r11), %rbp
	xorq	%rbp, 16(%r10,%r9,4)
	movq	(%rsi,%r11), %rbp
	xorq	%rbp, 24(%r10,%r9,4)
	movq	%rcx, %r9
	addq	$8, %r11
LA32x4___add_updstate_avx2x4$27:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA32x4___add_updstate_avx2x4$28
	cmpq	%r8, %r9
	jnb 	LA32x4___add_updstate_avx2x4$2
	movq	%r8, %r12
	andq	$7, %r12
	movq	%r11, %rbx
	cmpq	$8, %r12
	jnb 	LA32x4___add_updstate_avx2x4$21
	testq	$4, %r12
	jne 	LA32x4___add_updstate_avx2x4$25
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32x4___add_updstate_avx2x4$26
LA32x4___add_updstate_avx2x4$25:
	movl	(%rax,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA32x4___add_updstate_avx2x4$26:
	testq	$2, %r12
	je  	LA32x4___add_updstate_avx2x4$24
	movzwq	(%rax,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA32x4___add_updstate_avx2x4$24:
	testq	$1, %r12
	je  	LA32x4___add_updstate_avx2x4$22
	movzbq	(%rax,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA32x4___add_updstate_avx2x4$23:
	jmp 	LA32x4___add_updstate_avx2x4$22
LA32x4___add_updstate_avx2x4$21:
	movq	(%rax,%rbx), %rbp
LA32x4___add_updstate_avx2x4$22:
	xorq	%rbp, (%r10,%r9,4)
	movq	%r11, %rbx
	cmpq	$8, %r12
	jnb 	LA32x4___add_updstate_avx2x4$15
	testq	$4, %r12
	jne 	LA32x4___add_updstate_avx2x4$19
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32x4___add_updstate_avx2x4$20
LA32x4___add_updstate_avx2x4$19:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA32x4___add_updstate_avx2x4$20:
	testq	$2, %r12
	je  	LA32x4___add_updstate_avx2x4$18
	movzwq	(%rdx,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA32x4___add_updstate_avx2x4$18:
	testq	$1, %r12
	je  	LA32x4___add_updstate_avx2x4$16
	movzbq	(%rdx,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA32x4___add_updstate_avx2x4$17:
	jmp 	LA32x4___add_updstate_avx2x4$16
LA32x4___add_updstate_avx2x4$15:
	movq	(%rdx,%rbx), %rbp
LA32x4___add_updstate_avx2x4$16:
	xorq	%rbp, 8(%r10,%r9,4)
	movq	%r11, %rbx
	cmpq	$8, %r12
	jnb 	LA32x4___add_updstate_avx2x4$9
	testq	$4, %r12
	jne 	LA32x4___add_updstate_avx2x4$13
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32x4___add_updstate_avx2x4$14
LA32x4___add_updstate_avx2x4$13:
	movl	(%rdi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA32x4___add_updstate_avx2x4$14:
	testq	$2, %r12
	je  	LA32x4___add_updstate_avx2x4$12
	movzwq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA32x4___add_updstate_avx2x4$12:
	testq	$1, %r12
	je  	LA32x4___add_updstate_avx2x4$10
	movzbq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA32x4___add_updstate_avx2x4$11:
	jmp 	LA32x4___add_updstate_avx2x4$10
LA32x4___add_updstate_avx2x4$9:
	movq	(%rdi,%rbx), %rbp
LA32x4___add_updstate_avx2x4$10:
	xorq	%rbp, 16(%r10,%r9,4)
	cmpq	$8, %r12
	jnb 	LA32x4___add_updstate_avx2x4$3
	testq	$4, %r12
	jne 	LA32x4___add_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32x4___add_updstate_avx2x4$8
LA32x4___add_updstate_avx2x4$7:
	movl	(%rsi,%r11), %ebp
	addq	$4, %r11
	movb	$32, %cl
LA32x4___add_updstate_avx2x4$8:
	testq	$2, %r12
	je  	LA32x4___add_updstate_avx2x4$6
	movzwq	(%rsi,%r11), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %r11
	addb	$16, %cl
LA32x4___add_updstate_avx2x4$6:
	testq	$1, %r12
	je  	LA32x4___add_updstate_avx2x4$4
	movzbq	(%rsi,%r11), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	incq	%r11
LA32x4___add_updstate_avx2x4$5:
	jmp 	LA32x4___add_updstate_avx2x4$4
LA32x4___add_updstate_avx2x4$3:
	movq	(%rsi,%r11), %rbp
	addq	$8, %r11
LA32x4___add_updstate_avx2x4$4:
	xorq	%rbp, 24(%r10,%r9,4)
LA32x4___add_updstate_avx2x4$2:
	movq	%r8, %r9
	ret
LA32x4___absorb_bcast_updstate_avx2x4$1:
	movq	800(%r12), %rcx
	call	L_ststatus_data_avx2x4$1
LA32x4___absorb_bcast_updstate_avx2x4$7:
	movq	%r12, %r10
	movq	$0, %rdx
	addq	%r9, %rax
	jmp 	LA32x4___absorb_bcast_updstate_avx2x4$3
LA32x4___absorb_bcast_updstate_avx2x4$4:
	call	LA32x4___add_bcast_updstate_avx2x4$1
LA32x4___absorb_bcast_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA32x4___absorb_bcast_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%r8, %rax
	movq	$0, %r9
LA32x4___absorb_bcast_updstate_avx2x4$3:
	cmpq	%rax, %r8
	jbe 	LA32x4___absorb_bcast_updstate_avx2x4$4
	movq	%rax, %r8
	call	LA32x4___add_bcast_updstate_avx2x4$1
LA32x4___absorb_bcast_updstate_avx2x4$2:
	movb	%r9b, 800(%r12)
	ret
LA32x4___add_bcast_updstate_avx2x4$1:
	movq	%r9, %rsi
	andq	$7, %rsi
	cmpq	$0, %rsi
	je  	LA32x4___add_bcast_updstate_avx2x4$11
	movq	%r8, %r11
	subq	%r9, %r11
	shrq	$3, %r9
	shlq	$3, %r9
	movq	%rdx, %rbx
	cmpq	$8, %r11
	jnb 	LA32x4___add_bcast_updstate_avx2x4$14
	testq	$4, %r11
	jne 	LA32x4___add_bcast_updstate_avx2x4$18
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32x4___add_bcast_updstate_avx2x4$19
LA32x4___add_bcast_updstate_avx2x4$18:
	movl	(%rdi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA32x4___add_bcast_updstate_avx2x4$19:
	testq	$2, %r11
	je  	LA32x4___add_bcast_updstate_avx2x4$17
	movzwq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA32x4___add_bcast_updstate_avx2x4$17:
	testq	$1, %r11
	je  	LA32x4___add_bcast_updstate_avx2x4$15
	movzbq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	incq	%rbx
LA32x4___add_bcast_updstate_avx2x4$16:
	jmp 	LA32x4___add_bcast_updstate_avx2x4$15
LA32x4___add_bcast_updstate_avx2x4$14:
	movq	(%rdi,%rbx), %rbp
	addq	$8, %rbx
LA32x4___add_bcast_updstate_avx2x4$15:
	addq	%r9, %r11
	movb	%sil, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	vmovq	%rbp, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	vpxor	(%r10,%r9,4), %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9,4)
	cmpq	$8, %r11
	jnb 	LA32x4___add_bcast_updstate_avx2x4$12
	movq	%rbx, %rdx
	movq	%r8, %r9
	jmp 	LA32x4___add_bcast_updstate_avx2x4$11
LA32x4___add_bcast_updstate_avx2x4$12:
	addq	$8, %rdx
	subq	%rsi, %rdx
	addq	$8, %r9
LA32x4___add_bcast_updstate_avx2x4$13:
LA32x4___add_bcast_updstate_avx2x4$11:
	movq	%r9, %rcx
	jmp 	LA32x4___add_bcast_updstate_avx2x4$9
LA32x4___add_bcast_updstate_avx2x4$10:
	vpbroadcastq	(%rdi,%rdx), %ymm0
	vpxor	(%r10,%r9,4), %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9,4)
	movq	%rcx, %r9
	addq	$8, %rdx
LA32x4___add_bcast_updstate_avx2x4$9:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA32x4___add_bcast_updstate_avx2x4$10
	cmpq	%r8, %r9
	jnb 	LA32x4___add_bcast_updstate_avx2x4$2
	movq	%r8, %r11
	andq	$7, %r11
	cmpq	$8, %r11
	jnb 	LA32x4___add_bcast_updstate_avx2x4$3
	testq	$4, %r11
	jne 	LA32x4___add_bcast_updstate_avx2x4$7
	movq	$0, %rsi
	movb	$0, %cl
	jmp 	LA32x4___add_bcast_updstate_avx2x4$8
LA32x4___add_bcast_updstate_avx2x4$7:
	movl	(%rdi,%rdx), %esi
	addq	$4, %rdx
	movb	$32, %cl
LA32x4___add_bcast_updstate_avx2x4$8:
	testq	$2, %r11
	je  	LA32x4___add_bcast_updstate_avx2x4$6
	movzwq	(%rdi,%rdx), %r14
	shlq	%cl, %r14
	addq	%r14, %rsi
	addq	$2, %rdx
	addb	$16, %cl
LA32x4___add_bcast_updstate_avx2x4$6:
	testq	$1, %r11
	je  	LA32x4___add_bcast_updstate_avx2x4$4
	movzbq	(%rdi,%rdx), %r11
	shlq	%cl, %r11
	addq	%r11, %rsi
	incq	%rdx
LA32x4___add_bcast_updstate_avx2x4$5:
	jmp 	LA32x4___add_bcast_updstate_avx2x4$4
LA32x4___add_bcast_updstate_avx2x4$3:
	movq	(%rdi,%rdx), %rsi
	addq	$8, %rdx
LA32x4___add_bcast_updstate_avx2x4$4:
	vmovq	%rsi, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	vpxor	(%r10,%r9,4), %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9,4)
LA32x4___add_bcast_updstate_avx2x4$2:
	movq	%r8, %r9
	ret
LA2x4___absorb_updstate_avx2x4$1:
	movq	800(%r12), %rcx
	call	L_ststatus_data_avx2x4$1
LA2x4___absorb_updstate_avx2x4$7:
	movq	%r12, %r10
	movq	%r12, 8(%rsp)
	movq	$0, %r12
	addq	%r9, %rax
	jmp 	LA2x4___absorb_updstate_avx2x4$3
LA2x4___absorb_updstate_avx2x4$4:
	movq	%rax, 16(%rsp)
	call	LA2x4___add_updstate_avx2x4$1
LA2x4___absorb_updstate_avx2x4$6:
	movq	16(%rsp), %rax
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA2x4___absorb_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%r8, %rax
	movq	$0, %r9
LA2x4___absorb_updstate_avx2x4$3:
	cmpq	%rax, %r8
	jbe 	LA2x4___absorb_updstate_avx2x4$4
	movq	%rax, %r8
	call	LA2x4___add_updstate_avx2x4$1
LA2x4___absorb_updstate_avx2x4$2:
	movq	8(%rsp), %r11
	movb	%r9b, 800(%r11)
	ret
LA2x4___add_updstate_avx2x4$1:
	movq	%r9, %r13
	andq	$7, %r13
	cmpq	$0, %r13
	je  	LA2x4___add_updstate_avx2x4$29
	movq	%r8, %rax
	subq	%r9, %rax
	shrq	$3, %r9
	shlq	$3, %r9
	movb	%r13b, %bl
	shlb	$3, %bl
	movq	%r12, %r14
	cmpq	$8, %rax
	jnb 	LA2x4___add_updstate_avx2x4$50
	testq	$4, %rax
	jne 	LA2x4___add_updstate_avx2x4$54
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$55
LA2x4___add_updstate_avx2x4$54:
	movl	(%r11,%r14), %ebp
	addq	$4, %r14
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$55:
	testq	$2, %rax
	je  	LA2x4___add_updstate_avx2x4$53
	movzwq	(%r11,%r14), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r14
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$53:
	testq	$1, %rax
	je  	LA2x4___add_updstate_avx2x4$51
	movzbq	(%r11,%r14), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA2x4___add_updstate_avx2x4$52:
	jmp 	LA2x4___add_updstate_avx2x4$51
LA2x4___add_updstate_avx2x4$50:
	movq	(%r11,%r14), %rbp
LA2x4___add_updstate_avx2x4$51:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r10,%r9,4)
	movq	%r12, %r14
	cmpq	$8, %rax
	jnb 	LA2x4___add_updstate_avx2x4$44
	testq	$4, %rax
	jne 	LA2x4___add_updstate_avx2x4$48
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$49
LA2x4___add_updstate_avx2x4$48:
	movl	(%rdx,%r14), %ebp
	addq	$4, %r14
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$49:
	testq	$2, %rax
	je  	LA2x4___add_updstate_avx2x4$47
	movzwq	(%rdx,%r14), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r14
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$47:
	testq	$1, %rax
	je  	LA2x4___add_updstate_avx2x4$45
	movzbq	(%rdx,%r14), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA2x4___add_updstate_avx2x4$46:
	jmp 	LA2x4___add_updstate_avx2x4$45
LA2x4___add_updstate_avx2x4$44:
	movq	(%rdx,%r14), %rbp
LA2x4___add_updstate_avx2x4$45:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 8(%r10,%r9,4)
	movq	%r12, %r14
	cmpq	$8, %rax
	jnb 	LA2x4___add_updstate_avx2x4$38
	testq	$4, %rax
	jne 	LA2x4___add_updstate_avx2x4$42
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$43
LA2x4___add_updstate_avx2x4$42:
	movl	(%rdi,%r14), %ebp
	addq	$4, %r14
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$43:
	testq	$2, %rax
	je  	LA2x4___add_updstate_avx2x4$41
	movzwq	(%rdi,%r14), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r14
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$41:
	testq	$1, %rax
	je  	LA2x4___add_updstate_avx2x4$39
	movzbq	(%rdi,%r14), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA2x4___add_updstate_avx2x4$40:
	jmp 	LA2x4___add_updstate_avx2x4$39
LA2x4___add_updstate_avx2x4$38:
	movq	(%rdi,%r14), %rbp
LA2x4___add_updstate_avx2x4$39:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 16(%r10,%r9,4)
	movq	%r12, %rbp
	cmpq	$8, %rax
	jnb 	LA2x4___add_updstate_avx2x4$32
	testq	$4, %rax
	jne 	LA2x4___add_updstate_avx2x4$36
	movq	$0, %r14
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$37
LA2x4___add_updstate_avx2x4$36:
	movl	(%rsi,%rbp), %r14d
	addq	$4, %rbp
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$37:
	testq	$2, %rax
	je  	LA2x4___add_updstate_avx2x4$35
	movzwq	(%rsi,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r14
	addq	$2, %rbp
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$35:
	testq	$1, %rax
	je  	LA2x4___add_updstate_avx2x4$33
	movzbq	(%rsi,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r14
	incq	%rbp
LA2x4___add_updstate_avx2x4$34:
	jmp 	LA2x4___add_updstate_avx2x4$33
LA2x4___add_updstate_avx2x4$32:
	movq	(%rsi,%rbp), %r14
	addq	$8, %rbp
LA2x4___add_updstate_avx2x4$33:
	movb	%bl, %cl
	shlq	%cl, %r14
	xorq	%r14, 24(%r10,%r9,4)
	addq	%r13, %rax
	cmpq	$8, %rax
	jnb 	LA2x4___add_updstate_avx2x4$30
	movq	%rbp, %r12
	movq	%r8, %r9
	jmp 	LA2x4___add_updstate_avx2x4$29
LA2x4___add_updstate_avx2x4$30:
	addq	$8, %r12
	subq	%r13, %r12
	addq	$8, %r9
LA2x4___add_updstate_avx2x4$31:
LA2x4___add_updstate_avx2x4$29:
	movq	%r9, %rcx
	jmp 	LA2x4___add_updstate_avx2x4$27
LA2x4___add_updstate_avx2x4$28:
	movq	(%r11,%r12), %rax
	xorq	%rax, (%r10,%r9,4)
	movq	(%rdx,%r12), %rax
	xorq	%rax, 8(%r10,%r9,4)
	movq	(%rdi,%r12), %rax
	xorq	%rax, 16(%r10,%r9,4)
	movq	(%rsi,%r12), %rax
	xorq	%rax, 24(%r10,%r9,4)
	movq	%rcx, %r9
	addq	$8, %r12
LA2x4___add_updstate_avx2x4$27:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA2x4___add_updstate_avx2x4$28
	cmpq	%r8, %r9
	jnb 	LA2x4___add_updstate_avx2x4$2
	movq	%r8, %rax
	andq	$7, %rax
	movq	%r12, %rbx
	cmpq	$8, %rax
	jnb 	LA2x4___add_updstate_avx2x4$21
	testq	$4, %rax
	jne 	LA2x4___add_updstate_avx2x4$25
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$26
LA2x4___add_updstate_avx2x4$25:
	movl	(%r11,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$26:
	testq	$2, %rax
	je  	LA2x4___add_updstate_avx2x4$24
	movzwq	(%r11,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$24:
	testq	$1, %rax
	je  	LA2x4___add_updstate_avx2x4$22
	movzbq	(%r11,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA2x4___add_updstate_avx2x4$23:
	jmp 	LA2x4___add_updstate_avx2x4$22
LA2x4___add_updstate_avx2x4$21:
	movq	(%r11,%rbx), %rbp
LA2x4___add_updstate_avx2x4$22:
	xorq	%rbp, (%r10,%r9,4)
	movq	%r12, %rbx
	cmpq	$8, %rax
	jnb 	LA2x4___add_updstate_avx2x4$15
	testq	$4, %rax
	jne 	LA2x4___add_updstate_avx2x4$19
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$20
LA2x4___add_updstate_avx2x4$19:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$20:
	testq	$2, %rax
	je  	LA2x4___add_updstate_avx2x4$18
	movzwq	(%rdx,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$18:
	testq	$1, %rax
	je  	LA2x4___add_updstate_avx2x4$16
	movzbq	(%rdx,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA2x4___add_updstate_avx2x4$17:
	jmp 	LA2x4___add_updstate_avx2x4$16
LA2x4___add_updstate_avx2x4$15:
	movq	(%rdx,%rbx), %rbp
LA2x4___add_updstate_avx2x4$16:
	xorq	%rbp, 8(%r10,%r9,4)
	movq	%r12, %rbx
	cmpq	$8, %rax
	jnb 	LA2x4___add_updstate_avx2x4$9
	testq	$4, %rax
	jne 	LA2x4___add_updstate_avx2x4$13
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$14
LA2x4___add_updstate_avx2x4$13:
	movl	(%rdi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$14:
	testq	$2, %rax
	je  	LA2x4___add_updstate_avx2x4$12
	movzwq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$12:
	testq	$1, %rax
	je  	LA2x4___add_updstate_avx2x4$10
	movzbq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
LA2x4___add_updstate_avx2x4$11:
	jmp 	LA2x4___add_updstate_avx2x4$10
LA2x4___add_updstate_avx2x4$9:
	movq	(%rdi,%rbx), %rbp
LA2x4___add_updstate_avx2x4$10:
	xorq	%rbp, 16(%r10,%r9,4)
	cmpq	$8, %rax
	jnb 	LA2x4___add_updstate_avx2x4$3
	testq	$4, %rax
	jne 	LA2x4___add_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$8
LA2x4___add_updstate_avx2x4$7:
	movl	(%rsi,%r12), %ebp
	addq	$4, %r12
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$8:
	testq	$2, %rax
	je  	LA2x4___add_updstate_avx2x4$6
	movzwq	(%rsi,%r12), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %r12
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$6:
	testq	$1, %rax
	je  	LA2x4___add_updstate_avx2x4$4
	movzbq	(%rsi,%r12), %rax
	shlq	%cl, %rax
	addq	%rax, %rbp
	incq	%r12
LA2x4___add_updstate_avx2x4$5:
	jmp 	LA2x4___add_updstate_avx2x4$4
LA2x4___add_updstate_avx2x4$3:
	movq	(%rsi,%r12), %rbp
	addq	$8, %r12
LA2x4___add_updstate_avx2x4$4:
	xorq	%rbp, 24(%r10,%r9,4)
LA2x4___add_updstate_avx2x4$2:
	movq	%r8, %r9
	ret
LA2x4___absorb_bcast_updstate_avx2x4$1:
	movq	800(%r12), %rcx
	call	L_ststatus_data_avx2x4$1
LA2x4___absorb_bcast_updstate_avx2x4$7:
	movq	%r12, %r10
	movq	$0, %r11
	addq	%r9, %rax
	jmp 	LA2x4___absorb_bcast_updstate_avx2x4$3
LA2x4___absorb_bcast_updstate_avx2x4$4:
	call	LA2x4___add_bcast_updstate_avx2x4$1
LA2x4___absorb_bcast_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA2x4___absorb_bcast_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%r8, %rax
	movq	$0, %r9
LA2x4___absorb_bcast_updstate_avx2x4$3:
	cmpq	%rax, %r8
	jbe 	LA2x4___absorb_bcast_updstate_avx2x4$4
	movq	%rax, %r8
	call	LA2x4___add_bcast_updstate_avx2x4$1
LA2x4___absorb_bcast_updstate_avx2x4$2:
	movb	%r9b, 800(%r12)
	ret
LA2x4___add_bcast_updstate_avx2x4$1:
	movq	%r9, %rsi
	andq	$7, %rsi
	cmpq	$0, %rsi
	je  	LA2x4___add_bcast_updstate_avx2x4$11
	movq	%r8, %rdi
	subq	%r9, %rdi
	shrq	$3, %r9
	shlq	$3, %r9
	movq	%r11, %rbx
	cmpq	$8, %rdi
	jnb 	LA2x4___add_bcast_updstate_avx2x4$14
	testq	$4, %rdi
	jne 	LA2x4___add_bcast_updstate_avx2x4$18
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_bcast_updstate_avx2x4$19
LA2x4___add_bcast_updstate_avx2x4$18:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2x4___add_bcast_updstate_avx2x4$19:
	testq	$2, %rdi
	je  	LA2x4___add_bcast_updstate_avx2x4$17
	movzwq	(%rdx,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2x4___add_bcast_updstate_avx2x4$17:
	testq	$1, %rdi
	je  	LA2x4___add_bcast_updstate_avx2x4$15
	movzbq	(%rdx,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	incq	%rbx
LA2x4___add_bcast_updstate_avx2x4$16:
	jmp 	LA2x4___add_bcast_updstate_avx2x4$15
LA2x4___add_bcast_updstate_avx2x4$14:
	movq	(%rdx,%rbx), %rbp
	addq	$8, %rbx
LA2x4___add_bcast_updstate_avx2x4$15:
	addq	%r9, %rdi
	movb	%sil, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	vmovq	%rbp, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	vpxor	(%r10,%r9,4), %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9,4)
	cmpq	$8, %rdi
	jnb 	LA2x4___add_bcast_updstate_avx2x4$12
	movq	%rbx, %r11
	movq	%r8, %r9
	jmp 	LA2x4___add_bcast_updstate_avx2x4$11
LA2x4___add_bcast_updstate_avx2x4$12:
	addq	$8, %r11
	subq	%rsi, %r11
	addq	$8, %r9
LA2x4___add_bcast_updstate_avx2x4$13:
LA2x4___add_bcast_updstate_avx2x4$11:
	movq	%r9, %rcx
	jmp 	LA2x4___add_bcast_updstate_avx2x4$9
LA2x4___add_bcast_updstate_avx2x4$10:
	vpbroadcastq	(%rdx,%r11), %ymm0
	vpxor	(%r10,%r9,4), %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9,4)
	movq	%rcx, %r9
	addq	$8, %r11
LA2x4___add_bcast_updstate_avx2x4$9:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA2x4___add_bcast_updstate_avx2x4$10
	cmpq	%r8, %r9
	jnb 	LA2x4___add_bcast_updstate_avx2x4$2
	movq	%r8, %rsi
	andq	$7, %rsi
	cmpq	$8, %rsi
	jnb 	LA2x4___add_bcast_updstate_avx2x4$3
	testq	$4, %rsi
	jne 	LA2x4___add_bcast_updstate_avx2x4$7
	movq	$0, %rdi
	movb	$0, %cl
	jmp 	LA2x4___add_bcast_updstate_avx2x4$8
LA2x4___add_bcast_updstate_avx2x4$7:
	movl	(%rdx,%r11), %edi
	addq	$4, %r11
	movb	$32, %cl
LA2x4___add_bcast_updstate_avx2x4$8:
	testq	$2, %rsi
	je  	LA2x4___add_bcast_updstate_avx2x4$6
	movzwq	(%rdx,%r11), %r14
	shlq	%cl, %r14
	addq	%r14, %rdi
	addq	$2, %r11
	addb	$16, %cl
LA2x4___add_bcast_updstate_avx2x4$6:
	testq	$1, %rsi
	je  	LA2x4___add_bcast_updstate_avx2x4$4
	movzbq	(%rdx,%r11), %rsi
	shlq	%cl, %rsi
	addq	%rsi, %rdi
	incq	%r11
LA2x4___add_bcast_updstate_avx2x4$5:
	jmp 	LA2x4___add_bcast_updstate_avx2x4$4
LA2x4___add_bcast_updstate_avx2x4$3:
	movq	(%rdx,%r11), %rdi
	addq	$8, %r11
LA2x4___add_bcast_updstate_avx2x4$4:
	vmovq	%rdi, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	vpxor	(%r10,%r9,4), %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9,4)
LA2x4___add_bcast_updstate_avx2x4$2:
	movq	%r8, %r9
	ret
LA1x4___absorb_bcast_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA1x4___absorb_bcast_updstate_avx2x4$7:
	movq	%r11, %r10
	movq	$0, %rsi
	addq	%r9, %rax
	jmp 	LA1x4___absorb_bcast_updstate_avx2x4$3
LA1x4___absorb_bcast_updstate_avx2x4$4:
	call	LA1x4___add_bcast_updstate_avx2x4$1
LA1x4___absorb_bcast_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA1x4___absorb_bcast_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%r8, %rax
	movq	$0, %r9
LA1x4___absorb_bcast_updstate_avx2x4$3:
	cmpq	%rax, %r8
	jbe 	LA1x4___absorb_bcast_updstate_avx2x4$4
	movq	%rax, %r8
	call	LA1x4___add_bcast_updstate_avx2x4$1
LA1x4___absorb_bcast_updstate_avx2x4$2:
	movb	%r9b, 800(%r11)
	ret
LA1x4___add_bcast_updstate_avx2x4$1:
	movq	%r9, %rdi
	andq	$7, %rdi
	cmpq	$0, %rdi
	je  	LA1x4___add_bcast_updstate_avx2x4$11
	movq	%r8, %rbx
	subq	%r9, %rbx
	shrq	$3, %r9
	shlq	$3, %r9
	movq	%rsi, %rbp
	cmpq	$8, %rbx
	jnb 	LA1x4___add_bcast_updstate_avx2x4$14
	testq	$4, %rbx
	jne 	LA1x4___add_bcast_updstate_avx2x4$18
	movq	$0, %r12
	movb	$0, %cl
	jmp 	LA1x4___add_bcast_updstate_avx2x4$19
LA1x4___add_bcast_updstate_avx2x4$18:
	movl	(%rdx,%rbp), %r12d
	addq	$4, %rbp
	movb	$32, %cl
LA1x4___add_bcast_updstate_avx2x4$19:
	testq	$2, %rbx
	je  	LA1x4___add_bcast_updstate_avx2x4$17
	movzwq	(%rdx,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	addq	$2, %rbp
	addb	$16, %cl
LA1x4___add_bcast_updstate_avx2x4$17:
	testq	$1, %rbx
	je  	LA1x4___add_bcast_updstate_avx2x4$15
	movzbq	(%rdx,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	incq	%rbp
LA1x4___add_bcast_updstate_avx2x4$16:
	jmp 	LA1x4___add_bcast_updstate_avx2x4$15
LA1x4___add_bcast_updstate_avx2x4$14:
	movq	(%rdx,%rbp), %r12
	addq	$8, %rbp
LA1x4___add_bcast_updstate_avx2x4$15:
	addq	%r9, %rbx
	movb	%dil, %cl
	shlb	$3, %cl
	shlq	%cl, %r12
	vmovq	%r12, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	vpxor	(%r10,%r9,4), %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9,4)
	cmpq	$8, %rbx
	jnb 	LA1x4___add_bcast_updstate_avx2x4$12
	movq	%rbp, %rsi
	movq	%r8, %r9
	jmp 	LA1x4___add_bcast_updstate_avx2x4$11
LA1x4___add_bcast_updstate_avx2x4$12:
	addq	$8, %rsi
	subq	%rdi, %rsi
	addq	$8, %r9
LA1x4___add_bcast_updstate_avx2x4$13:
LA1x4___add_bcast_updstate_avx2x4$11:
	movq	%r9, %rcx
	jmp 	LA1x4___add_bcast_updstate_avx2x4$9
LA1x4___add_bcast_updstate_avx2x4$10:
	vpbroadcastq	(%rdx,%rsi), %ymm0
	vpxor	(%r10,%r9,4), %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9,4)
	movq	%rcx, %r9
	addq	$8, %rsi
LA1x4___add_bcast_updstate_avx2x4$9:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA1x4___add_bcast_updstate_avx2x4$10
	cmpq	%r8, %r9
	jnb 	LA1x4___add_bcast_updstate_avx2x4$2
	movq	%r8, %rdi
	andq	$7, %rdi
	cmpq	$8, %rdi
	jnb 	LA1x4___add_bcast_updstate_avx2x4$3
	testq	$4, %rdi
	jne 	LA1x4___add_bcast_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1x4___add_bcast_updstate_avx2x4$8
LA1x4___add_bcast_updstate_avx2x4$7:
	movl	(%rdx,%rsi), %ebp
	addq	$4, %rsi
	movb	$32, %cl
LA1x4___add_bcast_updstate_avx2x4$8:
	testq	$2, %rdi
	je  	LA1x4___add_bcast_updstate_avx2x4$6
	movzwq	(%rdx,%rsi), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rsi
	addb	$16, %cl
LA1x4___add_bcast_updstate_avx2x4$6:
	testq	$1, %rdi
	je  	LA1x4___add_bcast_updstate_avx2x4$4
	movzbq	(%rdx,%rsi), %rdi
	shlq	%cl, %rdi
	addq	%rdi, %rbp
	incq	%rsi
LA1x4___add_bcast_updstate_avx2x4$5:
	jmp 	LA1x4___add_bcast_updstate_avx2x4$4
LA1x4___add_bcast_updstate_avx2x4$3:
	movq	(%rdx,%rsi), %rbp
	addq	$8, %rsi
LA1x4___add_bcast_updstate_avx2x4$4:
	vmovq	%rbp, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	vpxor	(%r10,%r9,4), %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9,4)
LA1x4___add_bcast_updstate_avx2x4$2:
	movq	%r8, %r9
	ret
L_finish_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
L_finish_updstate_avx2x4$2:
	movb	%r9b, %cl
	shrq	$3, %r9
	shlq	$5, %r9
	andb	$7, %cl
	shlb	$3, %cl
	shlq	%cl, %r10
	vmovq	%r10, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	vpxor	(%r11,%r9), %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%r9)
	movq	$1, %rax
	shlq	$63, %rax
	decq	%r8
	shrq	$3, %r8
	shlq	$5, %r8
	vmovq	%rax, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	vpxor	(%r11,%r8), %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%r8)
	andl	$-16711936, 800(%r11)
	ret
L_ststatus_data_avx2x4$1:
	movq	%rcx, %r9
	andq	$255, %r9
	shrq	$8, %rcx
	movq	%rcx, %r8
	andq	$255, %r8
	incq	%r8
	shlq	$3, %r8
	movq	$200, %r10
	cmpq	$200, %r8
	cmovnbe	%r10, %r8
	movq	$0, %r10
	cmpq	%r9, %r8
	cmovbe	%r10, %r9
	shrq	$8, %rcx
	andq	$255, %rcx
	movq	%rcx, %r10
	ret
L_init_updstate_avx2x4$1:
	vpxor	%ymm0, %ymm0, %ymm0
	movzbq	%al, %rax
	shlq	$8, %rax
	decb	%cl
	movzbq	%cl, %rcx
	addq	%rcx, %rax
	shlq	$8, %rax
	movq	$0, %rcx
	jmp 	L_init_updstate_avx2x4$2
L_init_updstate_avx2x4$3:
	vmovdqu	%ymm0, (%r11,%rcx)
	addq	$32, %rcx
L_init_updstate_avx2x4$2:
	cmpq	$800, %rcx
	jb  	L_init_updstate_avx2x4$3
	movq	%rax, 800(%r11)
	ret
L_keccakf1600_avx2x4$1:
	leaq	glob_data + 115360(%rip), %rcx
	leaq	32(%rsp), %rbx
	vmovdqu	glob_data + 0(%rip), %ymm0
	vmovdqu	glob_data + 32(%rip), %ymm1
	movq	$0, %rbp
	jmp 	L_keccakf1600_avx2x4$2
L_keccakf1600_avx2x4$3:
	vpbroadcastq	(%rcx,%rbp,8), %ymm2
	call	L_keccakf1600_4x_pround$1
L_keccakf1600_avx2x4$5:
	vpxor	(%rbx), %ymm2, %ymm2
	vmovdqu	%ymm2, (%rbx)
	xchg	%r10, %rbx
	vpbroadcastq	8(%rcx,%rbp,8), %ymm2
	call	L_keccakf1600_4x_pround$1
L_keccakf1600_avx2x4$4:
	vpxor	(%rbx), %ymm2, %ymm2
	vmovdqu	%ymm2, (%rbx)
	xchg	%rbx, %r10
	addq	$2, %rbp
L_keccakf1600_avx2x4$2:
	cmpq	$24, %rbp
	jb  	L_keccakf1600_avx2x4$3
	ret
L_keccakf1600_4x_pround$1:
	vmovdqu	(%r10), %ymm7
	vmovdqu	32(%r10), %ymm5
	vmovdqu	64(%r10), %ymm6
	vmovdqu	96(%r10), %ymm8
	vmovdqu	128(%r10), %ymm9
	vpxor	160(%r10), %ymm7, %ymm7
	vpxor	192(%r10), %ymm5, %ymm5
	vpxor	224(%r10), %ymm6, %ymm6
	vpxor	256(%r10), %ymm8, %ymm8
	vpxor	288(%r10), %ymm9, %ymm9
	vpxor	320(%r10), %ymm7, %ymm7
	vpxor	352(%r10), %ymm5, %ymm5
	vpxor	384(%r10), %ymm6, %ymm6
	vpxor	416(%r10), %ymm8, %ymm8
	vpxor	448(%r10), %ymm9, %ymm9
	vpxor	480(%r10), %ymm7, %ymm7
	vpxor	512(%r10), %ymm5, %ymm5
	vpxor	544(%r10), %ymm6, %ymm6
	vpxor	576(%r10), %ymm8, %ymm8
	vpxor	608(%r10), %ymm9, %ymm9
	vpxor	640(%r10), %ymm7, %ymm7
	vpxor	672(%r10), %ymm5, %ymm5
	vpxor	704(%r10), %ymm6, %ymm6
	vpxor	736(%r10), %ymm8, %ymm8
	vpxor	768(%r10), %ymm9, %ymm9
	vmovdqu	%ymm5, %ymm3
	vpsllq	$1, %ymm3, %ymm4
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm4, %ymm3, %ymm3
	vpxor	%ymm9, %ymm3, %ymm3
	vmovdqu	%ymm6, %ymm4
	vpsllq	$1, %ymm4, %ymm10
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm10, %ymm4, %ymm4
	vpxor	%ymm7, %ymm4, %ymm4
	vmovdqu	%ymm8, %ymm10
	vpsllq	$1, %ymm10, %ymm11
	vpsrlq	$63, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vpxor	%ymm5, %ymm10, %ymm5
	vpsllq	$1, %ymm9, %ymm10
	vpsrlq	$63, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vpxor	%ymm6, %ymm9, %ymm6
	vpsllq	$1, %ymm7, %ymm9
	vpsrlq	$63, %ymm7, %ymm7
	vpor	%ymm9, %ymm7, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	(%r10), %ymm8
	vpxor	%ymm3, %ymm8, %ymm8
	vmovdqu	192(%r10), %ymm9
	vpxor	%ymm4, %ymm9, %ymm9
	vpsllq	$44, %ymm9, %ymm10
	vpsrlq	$20, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vmovdqu	384(%r10), %ymm10
	vpxor	%ymm5, %ymm10, %ymm10
	vpsllq	$43, %ymm10, %ymm11
	vpsrlq	$21, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vmovdqu	576(%r10), %ymm11
	vpxor	%ymm6, %ymm11, %ymm11
	vpsllq	$21, %ymm11, %ymm12
	vpsrlq	$43, %ymm11, %ymm11
	vpor	%ymm12, %ymm11, %ymm11
	vmovdqu	768(%r10), %ymm12
	vpxor	%ymm7, %ymm12, %ymm12
	vpsllq	$14, %ymm12, %ymm13
	vpsrlq	$50, %ymm12, %ymm12
	vpor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm10, %ymm9, %ymm13
	vpxor	%ymm8, %ymm13, %ymm13
	vmovdqu	%ymm13, (%rbx)
	vpandn	%ymm11, %ymm10, %ymm13
	vpxor	%ymm9, %ymm13, %ymm13
	vmovdqu	%ymm13, 32(%rbx)
	vpandn	%ymm12, %ymm11, %ymm13
	vpxor	%ymm10, %ymm13, %ymm10
	vmovdqu	%ymm10, 64(%rbx)
	vpandn	%ymm8, %ymm12, %ymm10
	vpxor	%ymm11, %ymm10, %ymm10
	vmovdqu	%ymm10, 96(%rbx)
	vpandn	%ymm9, %ymm8, %ymm8
	vpxor	%ymm12, %ymm8, %ymm8
	vmovdqu	%ymm8, 128(%rbx)
	vmovdqu	96(%r10), %ymm8
	vpxor	%ymm6, %ymm8, %ymm8
	vpsllq	$28, %ymm8, %ymm9
	vpsrlq	$36, %ymm8, %ymm8
	vpor	%ymm9, %ymm8, %ymm8
	vmovdqu	288(%r10), %ymm9
	vpxor	%ymm7, %ymm9, %ymm9
	vpsllq	$20, %ymm9, %ymm10
	vpsrlq	$44, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vmovdqu	320(%r10), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vpsllq	$3, %ymm10, %ymm11
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vmovdqu	512(%r10), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vpsllq	$45, %ymm11, %ymm12
	vpsrlq	$19, %ymm11, %ymm11
	vpor	%ymm12, %ymm11, %ymm11
	vmovdqu	704(%r10), %ymm12
	vpxor	%ymm5, %ymm12, %ymm12
	vpsllq	$61, %ymm12, %ymm13
	vpsrlq	$3, %ymm12, %ymm12
	vpor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm10, %ymm9, %ymm13
	vpxor	%ymm8, %ymm13, %ymm13
	vmovdqu	%ymm13, 160(%rbx)
	vpandn	%ymm11, %ymm10, %ymm13
	vpxor	%ymm9, %ymm13, %ymm13
	vmovdqu	%ymm13, 192(%rbx)
	vpandn	%ymm12, %ymm11, %ymm13
	vpxor	%ymm10, %ymm13, %ymm10
	vmovdqu	%ymm10, 224(%rbx)
	vpandn	%ymm8, %ymm12, %ymm10
	vpxor	%ymm11, %ymm10, %ymm10
	vmovdqu	%ymm10, 256(%rbx)
	vpandn	%ymm9, %ymm8, %ymm8
	vpxor	%ymm12, %ymm8, %ymm8
	vmovdqu	%ymm8, 288(%rbx)
	vmovdqu	32(%r10), %ymm8
	vpxor	%ymm4, %ymm8, %ymm8
	vpsllq	$1, %ymm8, %ymm9
	vpsrlq	$63, %ymm8, %ymm8
	vpor	%ymm9, %ymm8, %ymm8
	vmovdqu	224(%r10), %ymm9
	vpxor	%ymm5, %ymm9, %ymm9
	vpsllq	$6, %ymm9, %ymm10
	vpsrlq	$58, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vmovdqu	416(%r10), %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vpsllq	$25, %ymm10, %ymm11
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vmovdqu	608(%r10), %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vpshufb	%ymm0, %ymm11, %ymm11
	vmovdqu	640(%r10), %ymm12
	vpxor	%ymm3, %ymm12, %ymm12
	vpsllq	$18, %ymm12, %ymm13
	vpsrlq	$46, %ymm12, %ymm12
	vpor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm10, %ymm9, %ymm13
	vpxor	%ymm8, %ymm13, %ymm13
	vmovdqu	%ymm13, 320(%rbx)
	vpandn	%ymm11, %ymm10, %ymm13
	vpxor	%ymm9, %ymm13, %ymm13
	vmovdqu	%ymm13, 352(%rbx)
	vpandn	%ymm12, %ymm11, %ymm13
	vpxor	%ymm10, %ymm13, %ymm10
	vmovdqu	%ymm10, 384(%rbx)
	vpandn	%ymm8, %ymm12, %ymm10
	vpxor	%ymm11, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpandn	%ymm9, %ymm8, %ymm8
	vpxor	%ymm12, %ymm8, %ymm8
	vmovdqu	%ymm8, 448(%rbx)
	vmovdqu	128(%r10), %ymm8
	vpxor	%ymm7, %ymm8, %ymm8
	vpsllq	$27, %ymm8, %ymm9
	vpsrlq	$37, %ymm8, %ymm8
	vpor	%ymm9, %ymm8, %ymm8
	vmovdqu	160(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vpsllq	$36, %ymm9, %ymm10
	vpsrlq	$28, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vmovdqu	352(%r10), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vpsllq	$10, %ymm10, %ymm11
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vmovdqu	544(%r10), %ymm11
	vpxor	%ymm5, %ymm11, %ymm11
	vpsllq	$15, %ymm11, %ymm12
	vpsrlq	$49, %ymm11, %ymm11
	vpor	%ymm12, %ymm11, %ymm11
	vmovdqu	736(%r10), %ymm12
	vpxor	%ymm6, %ymm12, %ymm12
	vpshufb	%ymm1, %ymm12, %ymm12
	vpandn	%ymm10, %ymm9, %ymm13
	vpxor	%ymm8, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbx)
	vpandn	%ymm11, %ymm10, %ymm13
	vpxor	%ymm9, %ymm13, %ymm13
	vmovdqu	%ymm13, 512(%rbx)
	vpandn	%ymm12, %ymm11, %ymm13
	vpxor	%ymm10, %ymm13, %ymm10
	vmovdqu	%ymm10, 544(%rbx)
	vpandn	%ymm8, %ymm12, %ymm10
	vpxor	%ymm11, %ymm10, %ymm10
	vmovdqu	%ymm10, 576(%rbx)
	vpandn	%ymm9, %ymm8, %ymm8
	vpxor	%ymm12, %ymm8, %ymm8
	vmovdqu	%ymm8, 608(%rbx)
	vmovdqu	64(%r10), %ymm8
	vpxor	%ymm5, %ymm8, %ymm5
	vpsllq	$62, %ymm5, %ymm8
	vpsrlq	$2, %ymm5, %ymm5
	vpor	%ymm8, %ymm5, %ymm5
	vmovdqu	256(%r10), %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vpsllq	$55, %ymm6, %ymm8
	vpsrlq	$9, %ymm6, %ymm6
	vpor	%ymm8, %ymm6, %ymm6
	vmovdqu	448(%r10), %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpsllq	$39, %ymm7, %ymm8
	vpsrlq	$25, %ymm7, %ymm7
	vpor	%ymm8, %ymm7, %ymm7
	vmovdqu	480(%r10), %ymm8
	vpxor	%ymm3, %ymm8, %ymm3
	vpsllq	$41, %ymm3, %ymm8
	vpsrlq	$23, %ymm3, %ymm3
	vpor	%ymm8, %ymm3, %ymm3
	vmovdqu	672(%r10), %ymm8
	vpxor	%ymm4, %ymm8, %ymm4
	vpsllq	$2, %ymm4, %ymm8
	vpsrlq	$62, %ymm4, %ymm4
	vpor	%ymm8, %ymm4, %ymm4
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vmovdqu	%ymm8, 640(%rbx)
	vpandn	%ymm3, %ymm7, %ymm8
	vpxor	%ymm6, %ymm8, %ymm8
	vmovdqu	%ymm8, 672(%rbx)
	vpandn	%ymm4, %ymm3, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vmovdqu	%ymm7, 704(%rbx)
	vpandn	%ymm5, %ymm4, %ymm7
	vpxor	%ymm3, %ymm7, %ymm3
	vmovdqu	%ymm3, 736(%rbx)
	vpandn	%ymm6, %ymm5, %ymm3
	vpxor	%ymm4, %ymm3, %ymm3
	vmovdqu	%ymm3, 768(%rbx)
	ret
L_HCP_verify$1:
	leaq	32(%rsp), %r11
	movq	%rdi, 240(%rsp)
	movq	%r10, %rdi
	leaq	-40(%rsp), %rsp
	call	L_HCP_base$1
L_HCP_verify$3:
	leaq	40(%rsp), %rsp
	movq	240(%rsp), %rdi
	movq	$64, %rsi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_HCP_verify$2:
	leaq	8(%rsp), %rsp
	ret
L_HCP$1:
	movq	%r8, 240(%rsp)
	movq	%rcx, 248(%rsp)
	movq	%rax, 256(%rsp)
	leaq	32(%rsp), %r11
	leaq	-40(%rsp), %rsp
	call	L_HCP_base$1
L_HCP$4:
	leaq	40(%rsp), %rsp
	movq	240(%rsp), %rdi
	movq	$64, %rax
	leaq	-32(%rsp), %rsp
	call	L_squeeze_m_updstate_avx2$1
L_HCP$3:
	leaq	32(%rsp), %rsp
	movq	240(%rsp), %r8
	movq	248(%rsp), %rcx
	movq	256(%rsp), %rax
	leaq	-632(%rsp), %rsp
	call	L_expand_challenge$1
L_HCP$2:
	leaq	632(%rsp), %rsp
	movq	240(%rsp), %r8
	addq	$64, %r8
	ret
L_HCP_base$1:
	movq	%rbx, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%r9, 24(%rsp)
	movq	%rbp, 32(%rsp)
	movq	%rsi, 40(%rsp)
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_HCP_base$9:
	movq	$38464, %rax
	leaq	-8(%rsp), %rsp
	call	LA38464___update_updstate_avx2$1
L_HCP_base$8:
	leaq	8(%rsp), %rsp
	movq	$64, %rax
	movq	24(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA64___update_updstate_avx2$1
L_HCP_base$7:
	leaq	8(%rsp), %rsp
	movq	$32, %rsi
	movq	8(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_HCP_base$6:
	leaq	8(%rsp), %rsp
	movq	$32, %rsi
	movq	16(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_HCP_base$5:
	leaq	8(%rsp), %rsp
	movq	$32, %rsi
	movq	40(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_HCP_base$4:
	leaq	8(%rsp), %rsp
	movq	$13, %rax
	movq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA13___update_updstate_avx2$1
L_HCP_base$3:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_HCP_base$2:
	ret
L_expand_challenge$1:
	movq	(%r8), %rsi
	movq	%rsi, 64(%rsp)
	movq	8(%r8), %rsi
	movq	%rsi, 72(%rsp)
	movq	16(%r8), %rsi
	movq	%rsi, 80(%rsp)
	movq	24(%r8), %rsi
	movq	%rsi, 88(%rsp)
	movq	32(%r8), %rsi
	movq	%rsi, 96(%rsp)
	movq	40(%r8), %rsi
	movq	%rsi, 104(%rsp)
	movq	48(%r8), %rsi
	movq	%rsi, 112(%rsp)
	movq	56(%r8), %rsi
	movq	%rsi, 120(%rsp)
	movq	%rcx, 336(%rsp)
	movq	%rax, 344(%rsp)
	movq	$0, %rsi
	jmp 	L_expand_challenge$28
L_expand_challenge$29:
	movw	$0, 368(%rsp,%rsi,2)
	incq	%rsi
L_expand_challenge$28:
	cmpq	$128, %rsi
	jb  	L_expand_challenge$29
	movq	$601, %rax
	decq	%rax
	lzcntq	%rax, %rax
	movq	$64, %rcx
	subq	%rax, %rcx
	movq	%rcx, 352(%rsp)
	movq	$0, %rsi
	jmp 	L_expand_challenge$15
L_expand_challenge$16:
	movq	352(%rsp), %rcx
	leaq	64(%rsp), %rdi
	leaq	368(%rsp), %r10
	call	L_bitsToChunks$1
L_expand_challenge$27:
	movq	$0, %r10
	jmp 	L_expand_challenge$22
L_expand_challenge$23:
	movw	368(%rsp,%r10,2), %di
	cmpw	$601, %di
	jnb 	L_expand_challenge$25
	movq	336(%rsp), %rcx
	call	L__appendUnique$1
L_expand_challenge$26:
L_expand_challenge$25:
	cmpq	$68, %rsi
	jne 	L_expand_challenge$24
	movq	%rax, %r10
L_expand_challenge$24:
	incq	%r10
L_expand_challenge$22:
	cmpq	%rax, %r10
	jb  	L_expand_challenge$23
	movq	%rsi, 360(%rsp)
	leaq	128(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_expand_challenge$21:
	movq	$1, %rax
	movb	$1, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA1___update_updstate_avx2$1
L_expand_challenge$20:
	leaq	8(%rsp), %rsp
	movq	$64, %rax
	leaq	64(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA64___update_updstate_avx2$1
L_expand_challenge$19:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_expand_challenge$18:
	leaq	64(%rsp), %rdi
	movq	$64, %rsi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_expand_challenge$17:
	leaq	8(%rsp), %rsp
	movq	360(%rsp), %rsi
L_expand_challenge$15:
	cmpq	$68, %rsi
	jb  	L_expand_challenge$16
	movq	$16, %rax
	decq	%rax
	lzcntq	%rax, %rax
	movq	$64, %rcx
	subq	%rax, %rcx
	movq	%rcx, 352(%rsp)
	movq	$0, %rsi
	jmp 	L_expand_challenge$2
L_expand_challenge$3:
	movq	352(%rsp), %rcx
	leaq	64(%rsp), %rdi
	leaq	368(%rsp), %r10
	call	L_bitsToChunks$1
L_expand_challenge$14:
	movq	$0, %rdi
	jmp 	L_expand_challenge$10
L_expand_challenge$11:
	movw	368(%rsp,%rdi,2), %cx
	cmpw	$16, %cx
	jnb 	L_expand_challenge$13
	movq	%rsi, %r8
	movq	344(%rsp), %r9
	movw	%cx, (%r9,%r8,2)
	incq	%rsi
L_expand_challenge$13:
	cmpq	$68, %rsi
	jne 	L_expand_challenge$12
	movq	%rax, %rdi
L_expand_challenge$12:
	incq	%rdi
L_expand_challenge$10:
	cmpq	%rax, %rdi
	jb  	L_expand_challenge$11
	movq	%rsi, 360(%rsp)
	cmpq	$68, %rsi
	jnb 	L_expand_challenge$4
	leaq	128(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_expand_challenge$9:
	movq	$1, %rax
	movb	$1, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA1___update_updstate_avx2$1
L_expand_challenge$8:
	leaq	8(%rsp), %rsp
	movq	$64, %rax
	leaq	64(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA64___update_updstate_avx2$1
L_expand_challenge$7:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_expand_challenge$6:
	leaq	64(%rsp), %rdi
	movq	$64, %rsi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_expand_challenge$5:
	leaq	8(%rsp), %rsp
L_expand_challenge$4:
	movq	360(%rsp), %rsi
L_expand_challenge$2:
	cmpq	$68, %rsi
	jb  	L_expand_challenge$3
	movq	336(%rsp), %rcx
	movq	344(%rsp), %rax
	ret
L__appendUnique$1:
	cmpq	$0, %rsi
	je  	L__appendUnique$2
	movq	$0, %r11
	jmp 	L__appendUnique$5
L__appendUnique$6:
	movq	%r11, %r8
	movw	(%rcx,%r8,2), %dx
	cmpw	%di, %dx
	jne 	L__appendUnique$7
	movq	%rsi, %r11
L__appendUnique$7:
	incq	%r11
L__appendUnique$5:
	cmpq	%rsi, %r11
	jb  	L__appendUnique$6
	cmpq	%rsi, %r11
	jne 	L__appendUnique$3
	movq	%rsi, %r8
	movw	%di, (%rcx,%r8,2)
	incq	%rsi
L__appendUnique$4:
	jmp 	L__appendUnique$3
L__appendUnique$2:
	movq	%rsi, %r8
	movw	%di, (%rcx,%r8,2)
	incq	%rsi
L__appendUnique$3:
	ret
L_bitsToChunks$1:
	cmpq	$512, %rcx
	jnbe	L_bitsToChunks$2
	movq	$512, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	$0, %r11
	jmp 	L_bitsToChunks$4
L_bitsToChunks$5:
	movw	$0, (%r10,%r11,2)
	movq	$0, %rdx
	jmp 	L_bitsToChunks$6
L_bitsToChunks$7:
	movq	%rcx, %r9
	imulq	%r11, %r9
	addq	%rdx, %r9
	call	L__get_u16$1
L_bitsToChunks$10:
	movq	%rdx, %r8
	jmp 	L_bitsToChunks$8
L_bitsToChunks$9:
	shlw	$1, %bx
	decq	%r8
L_bitsToChunks$8:
	cmpq	$0, %r8
	jnbe	L_bitsToChunks$9
	addw	(%r10,%r11,2), %bx
	movw	%bx, (%r10,%r11,2)
	incq	%rdx
L_bitsToChunks$6:
	cmpq	%rcx, %rdx
	jb  	L_bitsToChunks$7
	incq	%r11
L_bitsToChunks$4:
	cmpq	%rax, %r11
	jb  	L_bitsToChunks$5
	jmp 	L_bitsToChunks$3
L_bitsToChunks$2:
	movq	$0, %rax
L_bitsToChunks$3:
	ret
L__get_u16$1:
	movq	%r9, %r8
	shrq	$3, %r8
	movw	(%rdi,%r8), %bx
	andq	$7, %r9
	movq	$7, %r8
	subq	%r9, %r8
	jmp 	L__get_u16$2
L__get_u16$3:
	shrw	$1, %bx
	decq	%r8
L__get_u16$2:
	cmpq	$0, %r8
	jnbe	L__get_u16$3
	andw	$1, %bx
	ret
L_computeParentHash$1:
	movq	%rdx, 400(%rsp)
	movq	%r10, 408(%rsp)
	movq	%rcx, 416(%rsp)
	movq	%r11, 424(%rsp)
	movq	%rdi, 432(%rsp)
	movw	%ax, 64(%rsp)
	leaq	192(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_computeParentHash$19:
	movq	$1, %rax
	movb	$3, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA1___update_updstate_avx2$1
L_computeParentHash$18:
	leaq	8(%rsp), %rsp
	movq	432(%rsp), %rdi
	shlq	$1, %rdi
	imulq	$64, %rdi, %rdi
	addq	$64, %rdi
	movq	400(%rsp), %rcx
	movq	(%rcx,%rdi), %rax
	movq	%rax, 128(%rsp)
	movq	8(%rcx,%rdi), %rax
	movq	%rax, 136(%rsp)
	movq	16(%rcx,%rdi), %rax
	movq	%rax, 144(%rsp)
	movq	24(%rcx,%rdi), %rax
	movq	%rax, 152(%rsp)
	movq	32(%rcx,%rdi), %rax
	movq	%rax, 160(%rsp)
	movq	40(%rcx,%rdi), %rax
	movq	%rax, 168(%rsp)
	movq	48(%rcx,%rdi), %rax
	movq	%rax, 176(%rsp)
	movq	56(%rcx,%rdi), %rax
	movq	%rax, 184(%rsp)
	leaq	128(%rsp), %rdi
	movq	$64, %rax
	leaq	-8(%rsp), %rsp
	call	LA64___update_updstate_avx2$1
L_computeParentHash$17:
	leaq	8(%rsp), %rsp
	movq	432(%rsp), %rdi
	shlq	$1, %rdi
	addq	$2, %rdi
	cmpq	$1624, %rdi
	jb  	L_computeParentHash$3
	movq	$32, %rsi
	movq	424(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_computeParentHash$16:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	64(%rsp), %ax
	movw	%ax, 64(%rsp)
	leaq	64(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_computeParentHash$15:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_computeParentHash$14:
	jmp 	L_computeParentHash$4
L_computeParentHash$3:
	movq	432(%rsp), %rax
	movq	416(%rsp), %rcx
	movb	(%rcx,%rax), %cl
	cmpb	$1, %cl
	je  	L_computeParentHash$5
	movq	$32, %rsi
	movq	424(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_computeParentHash$13:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	64(%rsp), %ax
	movw	%ax, 96(%rsp)
	leaq	96(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_computeParentHash$12:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_computeParentHash$11:
	jmp 	L_computeParentHash$4
L_computeParentHash$5:
	imulq	$64, %rdi, %rdi
	movq	400(%rsp), %rcx
	movq	(%rcx,%rdi), %rax
	movq	%rax, 128(%rsp)
	movq	8(%rcx,%rdi), %rax
	movq	%rax, 136(%rsp)
	movq	16(%rcx,%rdi), %rax
	movq	%rax, 144(%rsp)
	movq	24(%rcx,%rdi), %rax
	movq	%rax, 152(%rsp)
	movq	32(%rcx,%rdi), %rax
	movq	%rax, 160(%rsp)
	movq	40(%rcx,%rdi), %rax
	movq	%rax, 168(%rsp)
	movq	48(%rcx,%rdi), %rax
	movq	%rax, 176(%rsp)
	movq	56(%rcx,%rdi), %rax
	movq	%rax, 184(%rsp)
	leaq	128(%rsp), %rdi
	movq	$64, %rax
	leaq	-8(%rsp), %rsp
	call	LA64___update_updstate_avx2$1
L_computeParentHash$10:
	leaq	8(%rsp), %rsp
	movq	$32, %rsi
	movq	424(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_computeParentHash$9:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	64(%rsp), %ax
	movw	%ax, 96(%rsp)
	leaq	96(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_computeParentHash$8:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_computeParentHash$7:
L_computeParentHash$6:
L_computeParentHash$4:
	movq	432(%rsp), %rax
	movq	408(%rsp), %r10
	movb	$1, (%r10,%rax)
	leaq	128(%rsp), %rdi
	movq	$64, %rsi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_computeParentHash$2:
	leaq	8(%rsp), %rsp
	movq	432(%rsp), %rax
	imulq	$64, %rax, %rax
	movq	400(%rsp), %rcx
	movq	(%rdi), %rdx
	movq	%rdx, (%rcx,%rax)
	movq	8(%rdi), %rdx
	movq	%rdx, 8(%rcx,%rax)
	movq	16(%rdi), %rdx
	movq	%rdx, 16(%rcx,%rax)
	movq	24(%rdi), %rdx
	movq	%rdx, 24(%rcx,%rax)
	movq	32(%rdi), %rdx
	movq	%rdx, 32(%rcx,%rax)
	movq	40(%rdi), %rdx
	movq	%rdx, 40(%rcx,%rax)
	movq	48(%rdi), %rdx
	movq	%rdx, 48(%rcx,%rax)
	movq	56(%rdi), %rdx
	movq	%rdx, 56(%rcx,%rax)
	ret
L_commit_v_verify$1:
	movq	%rdx, 336(%rsp)
	movq	%rdi, 344(%rsp)
	movq	(%r10,%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movq	8(%r10,%rcx), %rdx
	movq	%rdx, 40(%rsp)
	movq	16(%r10,%rcx), %rdx
	movq	%rdx, 48(%rsp)
	movq	24(%r10,%rcx), %rcx
	movq	%rcx, 56(%rsp)
	leaq	128(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_commit_v_verify$6:
	leaq	32(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit_v_verify$5:
	leaq	8(%rsp), %rsp
	movq	344(%rsp), %rdi
	movq	$2048, %rsi
	leaq	-8(%rsp), %rsp
	call	LA2048___update_updstate_avx2$1
L_commit_v_verify$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit_v_verify$3:
	leaq	64(%rsp), %rdi
	movq	$64, %rsi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_commit_v_verify$2:
	leaq	8(%rsp), %rsp
	movq	336(%rsp), %rdx
	movq	(%rdi), %rcx
	movq	%rcx, (%rdx,%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rdx,%rax)
	movq	16(%rdi), %rcx
	movq	%rcx, 16(%rdx,%rax)
	movq	24(%rdi), %rcx
	movq	%rcx, 24(%rdx,%rax)
	movq	32(%rdi), %rcx
	movq	%rcx, 32(%rdx,%rax)
	movq	40(%rdi), %rcx
	movq	%rcx, 40(%rdx,%rax)
	movq	48(%rdi), %rcx
	movq	%rcx, 48(%rdx,%rax)
	movq	56(%rdi), %rcx
	movq	%rcx, 56(%rdx,%rax)
	ret
L_commit_v$1:
	movq	%rdx, 2400(%rsp)
	movq	%rcx, 2408(%rsp)
	movq	%rdi, 2416(%rsp)
	movq	%rax, %rcx
	imulq	$32, %rcx, %rcx
	movq	2408(%rsp), %r10
	movq	(%r10,%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movq	8(%r10,%rcx), %rdx
	movq	%rdx, 40(%rsp)
	movq	16(%r10,%rcx), %rdx
	movq	%rdx, 48(%rsp)
	movq	24(%r10,%rcx), %rcx
	movq	%rcx, 56(%rsp)
	movq	%rax, %rcx
	imulq	$2048, %rcx, %rcx
	movq	2416(%rsp), %rdi
	movq	(%rdi,%rcx), %rdx
	movq	%rdx, 352(%rsp)
	movq	8(%rdi,%rcx), %rdx
	movq	%rdx, 360(%rsp)
	movq	16(%rdi,%rcx), %rdx
	movq	%rdx, 368(%rsp)
	movq	24(%rdi,%rcx), %rdx
	movq	%rdx, 376(%rsp)
	movq	32(%rdi,%rcx), %rdx
	movq	%rdx, 384(%rsp)
	movq	40(%rdi,%rcx), %rdx
	movq	%rdx, 392(%rsp)
	movq	48(%rdi,%rcx), %rdx
	movq	%rdx, 400(%rsp)
	movq	56(%rdi,%rcx), %rdx
	movq	%rdx, 408(%rsp)
	movq	64(%rdi,%rcx), %rdx
	movq	%rdx, 416(%rsp)
	movq	72(%rdi,%rcx), %rdx
	movq	%rdx, 424(%rsp)
	movq	80(%rdi,%rcx), %rdx
	movq	%rdx, 432(%rsp)
	movq	88(%rdi,%rcx), %rdx
	movq	%rdx, 440(%rsp)
	movq	96(%rdi,%rcx), %rdx
	movq	%rdx, 448(%rsp)
	movq	104(%rdi,%rcx), %rdx
	movq	%rdx, 456(%rsp)
	movq	112(%rdi,%rcx), %rdx
	movq	%rdx, 464(%rsp)
	movq	120(%rdi,%rcx), %rdx
	movq	%rdx, 472(%rsp)
	movq	128(%rdi,%rcx), %rdx
	movq	%rdx, 480(%rsp)
	movq	136(%rdi,%rcx), %rdx
	movq	%rdx, 488(%rsp)
	movq	144(%rdi,%rcx), %rdx
	movq	%rdx, 496(%rsp)
	movq	152(%rdi,%rcx), %rdx
	movq	%rdx, 504(%rsp)
	movq	160(%rdi,%rcx), %rdx
	movq	%rdx, 512(%rsp)
	movq	168(%rdi,%rcx), %rdx
	movq	%rdx, 520(%rsp)
	movq	176(%rdi,%rcx), %rdx
	movq	%rdx, 528(%rsp)
	movq	184(%rdi,%rcx), %rdx
	movq	%rdx, 536(%rsp)
	movq	192(%rdi,%rcx), %rdx
	movq	%rdx, 544(%rsp)
	movq	200(%rdi,%rcx), %rdx
	movq	%rdx, 552(%rsp)
	movq	208(%rdi,%rcx), %rdx
	movq	%rdx, 560(%rsp)
	movq	216(%rdi,%rcx), %rdx
	movq	%rdx, 568(%rsp)
	movq	224(%rdi,%rcx), %rdx
	movq	%rdx, 576(%rsp)
	movq	232(%rdi,%rcx), %rdx
	movq	%rdx, 584(%rsp)
	movq	240(%rdi,%rcx), %rdx
	movq	%rdx, 592(%rsp)
	movq	248(%rdi,%rcx), %rdx
	movq	%rdx, 600(%rsp)
	movq	256(%rdi,%rcx), %rdx
	movq	%rdx, 608(%rsp)
	movq	264(%rdi,%rcx), %rdx
	movq	%rdx, 616(%rsp)
	movq	272(%rdi,%rcx), %rdx
	movq	%rdx, 624(%rsp)
	movq	280(%rdi,%rcx), %rdx
	movq	%rdx, 632(%rsp)
	movq	288(%rdi,%rcx), %rdx
	movq	%rdx, 640(%rsp)
	movq	296(%rdi,%rcx), %rdx
	movq	%rdx, 648(%rsp)
	movq	304(%rdi,%rcx), %rdx
	movq	%rdx, 656(%rsp)
	movq	312(%rdi,%rcx), %rdx
	movq	%rdx, 664(%rsp)
	movq	320(%rdi,%rcx), %rdx
	movq	%rdx, 672(%rsp)
	movq	328(%rdi,%rcx), %rdx
	movq	%rdx, 680(%rsp)
	movq	336(%rdi,%rcx), %rdx
	movq	%rdx, 688(%rsp)
	movq	344(%rdi,%rcx), %rdx
	movq	%rdx, 696(%rsp)
	movq	352(%rdi,%rcx), %rdx
	movq	%rdx, 704(%rsp)
	movq	360(%rdi,%rcx), %rdx
	movq	%rdx, 712(%rsp)
	movq	368(%rdi,%rcx), %rdx
	movq	%rdx, 720(%rsp)
	movq	376(%rdi,%rcx), %rdx
	movq	%rdx, 728(%rsp)
	movq	384(%rdi,%rcx), %rdx
	movq	%rdx, 736(%rsp)
	movq	392(%rdi,%rcx), %rdx
	movq	%rdx, 744(%rsp)
	movq	400(%rdi,%rcx), %rdx
	movq	%rdx, 752(%rsp)
	movq	408(%rdi,%rcx), %rdx
	movq	%rdx, 760(%rsp)
	movq	416(%rdi,%rcx), %rdx
	movq	%rdx, 768(%rsp)
	movq	424(%rdi,%rcx), %rdx
	movq	%rdx, 776(%rsp)
	movq	432(%rdi,%rcx), %rdx
	movq	%rdx, 784(%rsp)
	movq	440(%rdi,%rcx), %rdx
	movq	%rdx, 792(%rsp)
	movq	448(%rdi,%rcx), %rdx
	movq	%rdx, 800(%rsp)
	movq	456(%rdi,%rcx), %rdx
	movq	%rdx, 808(%rsp)
	movq	464(%rdi,%rcx), %rdx
	movq	%rdx, 816(%rsp)
	movq	472(%rdi,%rcx), %rdx
	movq	%rdx, 824(%rsp)
	movq	480(%rdi,%rcx), %rdx
	movq	%rdx, 832(%rsp)
	movq	488(%rdi,%rcx), %rdx
	movq	%rdx, 840(%rsp)
	movq	496(%rdi,%rcx), %rdx
	movq	%rdx, 848(%rsp)
	movq	504(%rdi,%rcx), %rdx
	movq	%rdx, 856(%rsp)
	movq	512(%rdi,%rcx), %rdx
	movq	%rdx, 864(%rsp)
	movq	520(%rdi,%rcx), %rdx
	movq	%rdx, 872(%rsp)
	movq	528(%rdi,%rcx), %rdx
	movq	%rdx, 880(%rsp)
	movq	536(%rdi,%rcx), %rdx
	movq	%rdx, 888(%rsp)
	movq	544(%rdi,%rcx), %rdx
	movq	%rdx, 896(%rsp)
	movq	552(%rdi,%rcx), %rdx
	movq	%rdx, 904(%rsp)
	movq	560(%rdi,%rcx), %rdx
	movq	%rdx, 912(%rsp)
	movq	568(%rdi,%rcx), %rdx
	movq	%rdx, 920(%rsp)
	movq	576(%rdi,%rcx), %rdx
	movq	%rdx, 928(%rsp)
	movq	584(%rdi,%rcx), %rdx
	movq	%rdx, 936(%rsp)
	movq	592(%rdi,%rcx), %rdx
	movq	%rdx, 944(%rsp)
	movq	600(%rdi,%rcx), %rdx
	movq	%rdx, 952(%rsp)
	movq	608(%rdi,%rcx), %rdx
	movq	%rdx, 960(%rsp)
	movq	616(%rdi,%rcx), %rdx
	movq	%rdx, 968(%rsp)
	movq	624(%rdi,%rcx), %rdx
	movq	%rdx, 976(%rsp)
	movq	632(%rdi,%rcx), %rdx
	movq	%rdx, 984(%rsp)
	movq	640(%rdi,%rcx), %rdx
	movq	%rdx, 992(%rsp)
	movq	648(%rdi,%rcx), %rdx
	movq	%rdx, 1000(%rsp)
	movq	656(%rdi,%rcx), %rdx
	movq	%rdx, 1008(%rsp)
	movq	664(%rdi,%rcx), %rdx
	movq	%rdx, 1016(%rsp)
	movq	672(%rdi,%rcx), %rdx
	movq	%rdx, 1024(%rsp)
	movq	680(%rdi,%rcx), %rdx
	movq	%rdx, 1032(%rsp)
	movq	688(%rdi,%rcx), %rdx
	movq	%rdx, 1040(%rsp)
	movq	696(%rdi,%rcx), %rdx
	movq	%rdx, 1048(%rsp)
	movq	704(%rdi,%rcx), %rdx
	movq	%rdx, 1056(%rsp)
	movq	712(%rdi,%rcx), %rdx
	movq	%rdx, 1064(%rsp)
	movq	720(%rdi,%rcx), %rdx
	movq	%rdx, 1072(%rsp)
	movq	728(%rdi,%rcx), %rdx
	movq	%rdx, 1080(%rsp)
	movq	736(%rdi,%rcx), %rdx
	movq	%rdx, 1088(%rsp)
	movq	744(%rdi,%rcx), %rdx
	movq	%rdx, 1096(%rsp)
	movq	752(%rdi,%rcx), %rdx
	movq	%rdx, 1104(%rsp)
	movq	760(%rdi,%rcx), %rdx
	movq	%rdx, 1112(%rsp)
	movq	768(%rdi,%rcx), %rdx
	movq	%rdx, 1120(%rsp)
	movq	776(%rdi,%rcx), %rdx
	movq	%rdx, 1128(%rsp)
	movq	784(%rdi,%rcx), %rdx
	movq	%rdx, 1136(%rsp)
	movq	792(%rdi,%rcx), %rdx
	movq	%rdx, 1144(%rsp)
	movq	800(%rdi,%rcx), %rdx
	movq	%rdx, 1152(%rsp)
	movq	808(%rdi,%rcx), %rdx
	movq	%rdx, 1160(%rsp)
	movq	816(%rdi,%rcx), %rdx
	movq	%rdx, 1168(%rsp)
	movq	824(%rdi,%rcx), %rdx
	movq	%rdx, 1176(%rsp)
	movq	832(%rdi,%rcx), %rdx
	movq	%rdx, 1184(%rsp)
	movq	840(%rdi,%rcx), %rdx
	movq	%rdx, 1192(%rsp)
	movq	848(%rdi,%rcx), %rdx
	movq	%rdx, 1200(%rsp)
	movq	856(%rdi,%rcx), %rdx
	movq	%rdx, 1208(%rsp)
	movq	864(%rdi,%rcx), %rdx
	movq	%rdx, 1216(%rsp)
	movq	872(%rdi,%rcx), %rdx
	movq	%rdx, 1224(%rsp)
	movq	880(%rdi,%rcx), %rdx
	movq	%rdx, 1232(%rsp)
	movq	888(%rdi,%rcx), %rdx
	movq	%rdx, 1240(%rsp)
	movq	896(%rdi,%rcx), %rdx
	movq	%rdx, 1248(%rsp)
	movq	904(%rdi,%rcx), %rdx
	movq	%rdx, 1256(%rsp)
	movq	912(%rdi,%rcx), %rdx
	movq	%rdx, 1264(%rsp)
	movq	920(%rdi,%rcx), %rdx
	movq	%rdx, 1272(%rsp)
	movq	928(%rdi,%rcx), %rdx
	movq	%rdx, 1280(%rsp)
	movq	936(%rdi,%rcx), %rdx
	movq	%rdx, 1288(%rsp)
	movq	944(%rdi,%rcx), %rdx
	movq	%rdx, 1296(%rsp)
	movq	952(%rdi,%rcx), %rdx
	movq	%rdx, 1304(%rsp)
	movq	960(%rdi,%rcx), %rdx
	movq	%rdx, 1312(%rsp)
	movq	968(%rdi,%rcx), %rdx
	movq	%rdx, 1320(%rsp)
	movq	976(%rdi,%rcx), %rdx
	movq	%rdx, 1328(%rsp)
	movq	984(%rdi,%rcx), %rdx
	movq	%rdx, 1336(%rsp)
	movq	992(%rdi,%rcx), %rdx
	movq	%rdx, 1344(%rsp)
	movq	1000(%rdi,%rcx), %rdx
	movq	%rdx, 1352(%rsp)
	movq	1008(%rdi,%rcx), %rdx
	movq	%rdx, 1360(%rsp)
	movq	1016(%rdi,%rcx), %rdx
	movq	%rdx, 1368(%rsp)
	movq	1024(%rdi,%rcx), %rdx
	movq	%rdx, 1376(%rsp)
	movq	1032(%rdi,%rcx), %rdx
	movq	%rdx, 1384(%rsp)
	movq	1040(%rdi,%rcx), %rdx
	movq	%rdx, 1392(%rsp)
	movq	1048(%rdi,%rcx), %rdx
	movq	%rdx, 1400(%rsp)
	movq	1056(%rdi,%rcx), %rdx
	movq	%rdx, 1408(%rsp)
	movq	1064(%rdi,%rcx), %rdx
	movq	%rdx, 1416(%rsp)
	movq	1072(%rdi,%rcx), %rdx
	movq	%rdx, 1424(%rsp)
	movq	1080(%rdi,%rcx), %rdx
	movq	%rdx, 1432(%rsp)
	movq	1088(%rdi,%rcx), %rdx
	movq	%rdx, 1440(%rsp)
	movq	1096(%rdi,%rcx), %rdx
	movq	%rdx, 1448(%rsp)
	movq	1104(%rdi,%rcx), %rdx
	movq	%rdx, 1456(%rsp)
	movq	1112(%rdi,%rcx), %rdx
	movq	%rdx, 1464(%rsp)
	movq	1120(%rdi,%rcx), %rdx
	movq	%rdx, 1472(%rsp)
	movq	1128(%rdi,%rcx), %rdx
	movq	%rdx, 1480(%rsp)
	movq	1136(%rdi,%rcx), %rdx
	movq	%rdx, 1488(%rsp)
	movq	1144(%rdi,%rcx), %rdx
	movq	%rdx, 1496(%rsp)
	movq	1152(%rdi,%rcx), %rdx
	movq	%rdx, 1504(%rsp)
	movq	1160(%rdi,%rcx), %rdx
	movq	%rdx, 1512(%rsp)
	movq	1168(%rdi,%rcx), %rdx
	movq	%rdx, 1520(%rsp)
	movq	1176(%rdi,%rcx), %rdx
	movq	%rdx, 1528(%rsp)
	movq	1184(%rdi,%rcx), %rdx
	movq	%rdx, 1536(%rsp)
	movq	1192(%rdi,%rcx), %rdx
	movq	%rdx, 1544(%rsp)
	movq	1200(%rdi,%rcx), %rdx
	movq	%rdx, 1552(%rsp)
	movq	1208(%rdi,%rcx), %rdx
	movq	%rdx, 1560(%rsp)
	movq	1216(%rdi,%rcx), %rdx
	movq	%rdx, 1568(%rsp)
	movq	1224(%rdi,%rcx), %rdx
	movq	%rdx, 1576(%rsp)
	movq	1232(%rdi,%rcx), %rdx
	movq	%rdx, 1584(%rsp)
	movq	1240(%rdi,%rcx), %rdx
	movq	%rdx, 1592(%rsp)
	movq	1248(%rdi,%rcx), %rdx
	movq	%rdx, 1600(%rsp)
	movq	1256(%rdi,%rcx), %rdx
	movq	%rdx, 1608(%rsp)
	movq	1264(%rdi,%rcx), %rdx
	movq	%rdx, 1616(%rsp)
	movq	1272(%rdi,%rcx), %rdx
	movq	%rdx, 1624(%rsp)
	movq	1280(%rdi,%rcx), %rdx
	movq	%rdx, 1632(%rsp)
	movq	1288(%rdi,%rcx), %rdx
	movq	%rdx, 1640(%rsp)
	movq	1296(%rdi,%rcx), %rdx
	movq	%rdx, 1648(%rsp)
	movq	1304(%rdi,%rcx), %rdx
	movq	%rdx, 1656(%rsp)
	movq	1312(%rdi,%rcx), %rdx
	movq	%rdx, 1664(%rsp)
	movq	1320(%rdi,%rcx), %rdx
	movq	%rdx, 1672(%rsp)
	movq	1328(%rdi,%rcx), %rdx
	movq	%rdx, 1680(%rsp)
	movq	1336(%rdi,%rcx), %rdx
	movq	%rdx, 1688(%rsp)
	movq	1344(%rdi,%rcx), %rdx
	movq	%rdx, 1696(%rsp)
	movq	1352(%rdi,%rcx), %rdx
	movq	%rdx, 1704(%rsp)
	movq	1360(%rdi,%rcx), %rdx
	movq	%rdx, 1712(%rsp)
	movq	1368(%rdi,%rcx), %rdx
	movq	%rdx, 1720(%rsp)
	movq	1376(%rdi,%rcx), %rdx
	movq	%rdx, 1728(%rsp)
	movq	1384(%rdi,%rcx), %rdx
	movq	%rdx, 1736(%rsp)
	movq	1392(%rdi,%rcx), %rdx
	movq	%rdx, 1744(%rsp)
	movq	1400(%rdi,%rcx), %rdx
	movq	%rdx, 1752(%rsp)
	movq	1408(%rdi,%rcx), %rdx
	movq	%rdx, 1760(%rsp)
	movq	1416(%rdi,%rcx), %rdx
	movq	%rdx, 1768(%rsp)
	movq	1424(%rdi,%rcx), %rdx
	movq	%rdx, 1776(%rsp)
	movq	1432(%rdi,%rcx), %rdx
	movq	%rdx, 1784(%rsp)
	movq	1440(%rdi,%rcx), %rdx
	movq	%rdx, 1792(%rsp)
	movq	1448(%rdi,%rcx), %rdx
	movq	%rdx, 1800(%rsp)
	movq	1456(%rdi,%rcx), %rdx
	movq	%rdx, 1808(%rsp)
	movq	1464(%rdi,%rcx), %rdx
	movq	%rdx, 1816(%rsp)
	movq	1472(%rdi,%rcx), %rdx
	movq	%rdx, 1824(%rsp)
	movq	1480(%rdi,%rcx), %rdx
	movq	%rdx, 1832(%rsp)
	movq	1488(%rdi,%rcx), %rdx
	movq	%rdx, 1840(%rsp)
	movq	1496(%rdi,%rcx), %rdx
	movq	%rdx, 1848(%rsp)
	movq	1504(%rdi,%rcx), %rdx
	movq	%rdx, 1856(%rsp)
	movq	1512(%rdi,%rcx), %rdx
	movq	%rdx, 1864(%rsp)
	movq	1520(%rdi,%rcx), %rdx
	movq	%rdx, 1872(%rsp)
	movq	1528(%rdi,%rcx), %rdx
	movq	%rdx, 1880(%rsp)
	movq	1536(%rdi,%rcx), %rdx
	movq	%rdx, 1888(%rsp)
	movq	1544(%rdi,%rcx), %rdx
	movq	%rdx, 1896(%rsp)
	movq	1552(%rdi,%rcx), %rdx
	movq	%rdx, 1904(%rsp)
	movq	1560(%rdi,%rcx), %rdx
	movq	%rdx, 1912(%rsp)
	movq	1568(%rdi,%rcx), %rdx
	movq	%rdx, 1920(%rsp)
	movq	1576(%rdi,%rcx), %rdx
	movq	%rdx, 1928(%rsp)
	movq	1584(%rdi,%rcx), %rdx
	movq	%rdx, 1936(%rsp)
	movq	1592(%rdi,%rcx), %rdx
	movq	%rdx, 1944(%rsp)
	movq	1600(%rdi,%rcx), %rdx
	movq	%rdx, 1952(%rsp)
	movq	1608(%rdi,%rcx), %rdx
	movq	%rdx, 1960(%rsp)
	movq	1616(%rdi,%rcx), %rdx
	movq	%rdx, 1968(%rsp)
	movq	1624(%rdi,%rcx), %rdx
	movq	%rdx, 1976(%rsp)
	movq	1632(%rdi,%rcx), %rdx
	movq	%rdx, 1984(%rsp)
	movq	1640(%rdi,%rcx), %rdx
	movq	%rdx, 1992(%rsp)
	movq	1648(%rdi,%rcx), %rdx
	movq	%rdx, 2000(%rsp)
	movq	1656(%rdi,%rcx), %rdx
	movq	%rdx, 2008(%rsp)
	movq	1664(%rdi,%rcx), %rdx
	movq	%rdx, 2016(%rsp)
	movq	1672(%rdi,%rcx), %rdx
	movq	%rdx, 2024(%rsp)
	movq	1680(%rdi,%rcx), %rdx
	movq	%rdx, 2032(%rsp)
	movq	1688(%rdi,%rcx), %rdx
	movq	%rdx, 2040(%rsp)
	movq	1696(%rdi,%rcx), %rdx
	movq	%rdx, 2048(%rsp)
	movq	1704(%rdi,%rcx), %rdx
	movq	%rdx, 2056(%rsp)
	movq	1712(%rdi,%rcx), %rdx
	movq	%rdx, 2064(%rsp)
	movq	1720(%rdi,%rcx), %rdx
	movq	%rdx, 2072(%rsp)
	movq	1728(%rdi,%rcx), %rdx
	movq	%rdx, 2080(%rsp)
	movq	1736(%rdi,%rcx), %rdx
	movq	%rdx, 2088(%rsp)
	movq	1744(%rdi,%rcx), %rdx
	movq	%rdx, 2096(%rsp)
	movq	1752(%rdi,%rcx), %rdx
	movq	%rdx, 2104(%rsp)
	movq	1760(%rdi,%rcx), %rdx
	movq	%rdx, 2112(%rsp)
	movq	1768(%rdi,%rcx), %rdx
	movq	%rdx, 2120(%rsp)
	movq	1776(%rdi,%rcx), %rdx
	movq	%rdx, 2128(%rsp)
	movq	1784(%rdi,%rcx), %rdx
	movq	%rdx, 2136(%rsp)
	movq	1792(%rdi,%rcx), %rdx
	movq	%rdx, 2144(%rsp)
	movq	1800(%rdi,%rcx), %rdx
	movq	%rdx, 2152(%rsp)
	movq	1808(%rdi,%rcx), %rdx
	movq	%rdx, 2160(%rsp)
	movq	1816(%rdi,%rcx), %rdx
	movq	%rdx, 2168(%rsp)
	movq	1824(%rdi,%rcx), %rdx
	movq	%rdx, 2176(%rsp)
	movq	1832(%rdi,%rcx), %rdx
	movq	%rdx, 2184(%rsp)
	movq	1840(%rdi,%rcx), %rdx
	movq	%rdx, 2192(%rsp)
	movq	1848(%rdi,%rcx), %rdx
	movq	%rdx, 2200(%rsp)
	movq	1856(%rdi,%rcx), %rdx
	movq	%rdx, 2208(%rsp)
	movq	1864(%rdi,%rcx), %rdx
	movq	%rdx, 2216(%rsp)
	movq	1872(%rdi,%rcx), %rdx
	movq	%rdx, 2224(%rsp)
	movq	1880(%rdi,%rcx), %rdx
	movq	%rdx, 2232(%rsp)
	movq	1888(%rdi,%rcx), %rdx
	movq	%rdx, 2240(%rsp)
	movq	1896(%rdi,%rcx), %rdx
	movq	%rdx, 2248(%rsp)
	movq	1904(%rdi,%rcx), %rdx
	movq	%rdx, 2256(%rsp)
	movq	1912(%rdi,%rcx), %rdx
	movq	%rdx, 2264(%rsp)
	movq	1920(%rdi,%rcx), %rdx
	movq	%rdx, 2272(%rsp)
	movq	1928(%rdi,%rcx), %rdx
	movq	%rdx, 2280(%rsp)
	movq	1936(%rdi,%rcx), %rdx
	movq	%rdx, 2288(%rsp)
	movq	1944(%rdi,%rcx), %rdx
	movq	%rdx, 2296(%rsp)
	movq	1952(%rdi,%rcx), %rdx
	movq	%rdx, 2304(%rsp)
	movq	1960(%rdi,%rcx), %rdx
	movq	%rdx, 2312(%rsp)
	movq	1968(%rdi,%rcx), %rdx
	movq	%rdx, 2320(%rsp)
	movq	1976(%rdi,%rcx), %rdx
	movq	%rdx, 2328(%rsp)
	movq	1984(%rdi,%rcx), %rdx
	movq	%rdx, 2336(%rsp)
	movq	1992(%rdi,%rcx), %rdx
	movq	%rdx, 2344(%rsp)
	movq	2000(%rdi,%rcx), %rdx
	movq	%rdx, 2352(%rsp)
	movq	2008(%rdi,%rcx), %rdx
	movq	%rdx, 2360(%rsp)
	movq	2016(%rdi,%rcx), %rdx
	movq	%rdx, 2368(%rsp)
	movq	2024(%rdi,%rcx), %rdx
	movq	%rdx, 2376(%rsp)
	movq	2032(%rdi,%rcx), %rdx
	movq	%rdx, 2384(%rsp)
	movq	2040(%rdi,%rcx), %rcx
	movq	%rcx, 2392(%rsp)
	leaq	128(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_commit_v$6:
	leaq	32(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit_v$5:
	leaq	8(%rsp), %rsp
	leaq	352(%rsp), %rdi
	movq	$2048, %rsi
	leaq	-8(%rsp), %rsp
	call	LA2048___update_updstate_avx2$1
L_commit_v$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit_v$3:
	leaq	64(%rsp), %rdi
	movq	$64, %rsi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_commit_v$2:
	leaq	8(%rsp), %rsp
	movq	2400(%rsp), %rdx
	imulq	$64, %rax, %rax
	movq	(%rdi), %rcx
	movq	%rcx, (%rdx,%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rdx,%rax)
	movq	16(%rdi), %rcx
	movq	%rcx, 16(%rdx,%rax)
	movq	24(%rdi), %rcx
	movq	%rcx, 24(%rdx,%rax)
	movq	32(%rdi), %rcx
	movq	%rcx, 32(%rdx,%rax)
	movq	40(%rdi), %rcx
	movq	%rcx, 40(%rdx,%rax)
	movq	48(%rdi), %rcx
	movq	%rcx, 48(%rdx,%rax)
	movq	56(%rdi), %rcx
	movq	%rcx, 56(%rdx,%rax)
	ret
L_commit_h2$1:
	movq	%rdx, 1344(%rsp)
	movq	%rax, %rdx
	imulq	$1024, %rdx, %rdx
	movq	(%rcx,%rdx), %rsi
	movq	%rsi, 320(%rsp)
	movq	8(%rcx,%rdx), %rsi
	movq	%rsi, 328(%rsp)
	movq	16(%rcx,%rdx), %rsi
	movq	%rsi, 336(%rsp)
	movq	24(%rcx,%rdx), %rsi
	movq	%rsi, 344(%rsp)
	movq	32(%rcx,%rdx), %rsi
	movq	%rsi, 352(%rsp)
	movq	40(%rcx,%rdx), %rsi
	movq	%rsi, 360(%rsp)
	movq	48(%rcx,%rdx), %rsi
	movq	%rsi, 368(%rsp)
	movq	56(%rcx,%rdx), %rsi
	movq	%rsi, 376(%rsp)
	movq	64(%rcx,%rdx), %rsi
	movq	%rsi, 384(%rsp)
	movq	72(%rcx,%rdx), %rsi
	movq	%rsi, 392(%rsp)
	movq	80(%rcx,%rdx), %rsi
	movq	%rsi, 400(%rsp)
	movq	88(%rcx,%rdx), %rsi
	movq	%rsi, 408(%rsp)
	movq	96(%rcx,%rdx), %rsi
	movq	%rsi, 416(%rsp)
	movq	104(%rcx,%rdx), %rsi
	movq	%rsi, 424(%rsp)
	movq	112(%rcx,%rdx), %rsi
	movq	%rsi, 432(%rsp)
	movq	120(%rcx,%rdx), %rsi
	movq	%rsi, 440(%rsp)
	movq	128(%rcx,%rdx), %rsi
	movq	%rsi, 448(%rsp)
	movq	136(%rcx,%rdx), %rsi
	movq	%rsi, 456(%rsp)
	movq	144(%rcx,%rdx), %rsi
	movq	%rsi, 464(%rsp)
	movq	152(%rcx,%rdx), %rsi
	movq	%rsi, 472(%rsp)
	movq	160(%rcx,%rdx), %rsi
	movq	%rsi, 480(%rsp)
	movq	168(%rcx,%rdx), %rsi
	movq	%rsi, 488(%rsp)
	movq	176(%rcx,%rdx), %rsi
	movq	%rsi, 496(%rsp)
	movq	184(%rcx,%rdx), %rsi
	movq	%rsi, 504(%rsp)
	movq	192(%rcx,%rdx), %rsi
	movq	%rsi, 512(%rsp)
	movq	200(%rcx,%rdx), %rsi
	movq	%rsi, 520(%rsp)
	movq	208(%rcx,%rdx), %rsi
	movq	%rsi, 528(%rsp)
	movq	216(%rcx,%rdx), %rsi
	movq	%rsi, 536(%rsp)
	movq	224(%rcx,%rdx), %rsi
	movq	%rsi, 544(%rsp)
	movq	232(%rcx,%rdx), %rsi
	movq	%rsi, 552(%rsp)
	movq	240(%rcx,%rdx), %rsi
	movq	%rsi, 560(%rsp)
	movq	248(%rcx,%rdx), %rsi
	movq	%rsi, 568(%rsp)
	movq	256(%rcx,%rdx), %rsi
	movq	%rsi, 576(%rsp)
	movq	264(%rcx,%rdx), %rsi
	movq	%rsi, 584(%rsp)
	movq	272(%rcx,%rdx), %rsi
	movq	%rsi, 592(%rsp)
	movq	280(%rcx,%rdx), %rsi
	movq	%rsi, 600(%rsp)
	movq	288(%rcx,%rdx), %rsi
	movq	%rsi, 608(%rsp)
	movq	296(%rcx,%rdx), %rsi
	movq	%rsi, 616(%rsp)
	movq	304(%rcx,%rdx), %rsi
	movq	%rsi, 624(%rsp)
	movq	312(%rcx,%rdx), %rsi
	movq	%rsi, 632(%rsp)
	movq	320(%rcx,%rdx), %rsi
	movq	%rsi, 640(%rsp)
	movq	328(%rcx,%rdx), %rsi
	movq	%rsi, 648(%rsp)
	movq	336(%rcx,%rdx), %rsi
	movq	%rsi, 656(%rsp)
	movq	344(%rcx,%rdx), %rsi
	movq	%rsi, 664(%rsp)
	movq	352(%rcx,%rdx), %rsi
	movq	%rsi, 672(%rsp)
	movq	360(%rcx,%rdx), %rsi
	movq	%rsi, 680(%rsp)
	movq	368(%rcx,%rdx), %rsi
	movq	%rsi, 688(%rsp)
	movq	376(%rcx,%rdx), %rsi
	movq	%rsi, 696(%rsp)
	movq	384(%rcx,%rdx), %rsi
	movq	%rsi, 704(%rsp)
	movq	392(%rcx,%rdx), %rsi
	movq	%rsi, 712(%rsp)
	movq	400(%rcx,%rdx), %rsi
	movq	%rsi, 720(%rsp)
	movq	408(%rcx,%rdx), %rsi
	movq	%rsi, 728(%rsp)
	movq	416(%rcx,%rdx), %rsi
	movq	%rsi, 736(%rsp)
	movq	424(%rcx,%rdx), %rsi
	movq	%rsi, 744(%rsp)
	movq	432(%rcx,%rdx), %rsi
	movq	%rsi, 752(%rsp)
	movq	440(%rcx,%rdx), %rsi
	movq	%rsi, 760(%rsp)
	movq	448(%rcx,%rdx), %rsi
	movq	%rsi, 768(%rsp)
	movq	456(%rcx,%rdx), %rsi
	movq	%rsi, 776(%rsp)
	movq	464(%rcx,%rdx), %rsi
	movq	%rsi, 784(%rsp)
	movq	472(%rcx,%rdx), %rsi
	movq	%rsi, 792(%rsp)
	movq	480(%rcx,%rdx), %rsi
	movq	%rsi, 800(%rsp)
	movq	488(%rcx,%rdx), %rsi
	movq	%rsi, 808(%rsp)
	movq	496(%rcx,%rdx), %rsi
	movq	%rsi, 816(%rsp)
	movq	504(%rcx,%rdx), %rsi
	movq	%rsi, 824(%rsp)
	movq	512(%rcx,%rdx), %rsi
	movq	%rsi, 832(%rsp)
	movq	520(%rcx,%rdx), %rsi
	movq	%rsi, 840(%rsp)
	movq	528(%rcx,%rdx), %rsi
	movq	%rsi, 848(%rsp)
	movq	536(%rcx,%rdx), %rsi
	movq	%rsi, 856(%rsp)
	movq	544(%rcx,%rdx), %rsi
	movq	%rsi, 864(%rsp)
	movq	552(%rcx,%rdx), %rsi
	movq	%rsi, 872(%rsp)
	movq	560(%rcx,%rdx), %rsi
	movq	%rsi, 880(%rsp)
	movq	568(%rcx,%rdx), %rsi
	movq	%rsi, 888(%rsp)
	movq	576(%rcx,%rdx), %rsi
	movq	%rsi, 896(%rsp)
	movq	584(%rcx,%rdx), %rsi
	movq	%rsi, 904(%rsp)
	movq	592(%rcx,%rdx), %rsi
	movq	%rsi, 912(%rsp)
	movq	600(%rcx,%rdx), %rsi
	movq	%rsi, 920(%rsp)
	movq	608(%rcx,%rdx), %rsi
	movq	%rsi, 928(%rsp)
	movq	616(%rcx,%rdx), %rsi
	movq	%rsi, 936(%rsp)
	movq	624(%rcx,%rdx), %rsi
	movq	%rsi, 944(%rsp)
	movq	632(%rcx,%rdx), %rsi
	movq	%rsi, 952(%rsp)
	movq	640(%rcx,%rdx), %rsi
	movq	%rsi, 960(%rsp)
	movq	648(%rcx,%rdx), %rsi
	movq	%rsi, 968(%rsp)
	movq	656(%rcx,%rdx), %rsi
	movq	%rsi, 976(%rsp)
	movq	664(%rcx,%rdx), %rsi
	movq	%rsi, 984(%rsp)
	movq	672(%rcx,%rdx), %rsi
	movq	%rsi, 992(%rsp)
	movq	680(%rcx,%rdx), %rsi
	movq	%rsi, 1000(%rsp)
	movq	688(%rcx,%rdx), %rsi
	movq	%rsi, 1008(%rsp)
	movq	696(%rcx,%rdx), %rsi
	movq	%rsi, 1016(%rsp)
	movq	704(%rcx,%rdx), %rsi
	movq	%rsi, 1024(%rsp)
	movq	712(%rcx,%rdx), %rsi
	movq	%rsi, 1032(%rsp)
	movq	720(%rcx,%rdx), %rsi
	movq	%rsi, 1040(%rsp)
	movq	728(%rcx,%rdx), %rsi
	movq	%rsi, 1048(%rsp)
	movq	736(%rcx,%rdx), %rsi
	movq	%rsi, 1056(%rsp)
	movq	744(%rcx,%rdx), %rsi
	movq	%rsi, 1064(%rsp)
	movq	752(%rcx,%rdx), %rsi
	movq	%rsi, 1072(%rsp)
	movq	760(%rcx,%rdx), %rsi
	movq	%rsi, 1080(%rsp)
	movq	768(%rcx,%rdx), %rsi
	movq	%rsi, 1088(%rsp)
	movq	776(%rcx,%rdx), %rsi
	movq	%rsi, 1096(%rsp)
	movq	784(%rcx,%rdx), %rsi
	movq	%rsi, 1104(%rsp)
	movq	792(%rcx,%rdx), %rsi
	movq	%rsi, 1112(%rsp)
	movq	800(%rcx,%rdx), %rsi
	movq	%rsi, 1120(%rsp)
	movq	808(%rcx,%rdx), %rsi
	movq	%rsi, 1128(%rsp)
	movq	816(%rcx,%rdx), %rsi
	movq	%rsi, 1136(%rsp)
	movq	824(%rcx,%rdx), %rsi
	movq	%rsi, 1144(%rsp)
	movq	832(%rcx,%rdx), %rsi
	movq	%rsi, 1152(%rsp)
	movq	840(%rcx,%rdx), %rsi
	movq	%rsi, 1160(%rsp)
	movq	848(%rcx,%rdx), %rsi
	movq	%rsi, 1168(%rsp)
	movq	856(%rcx,%rdx), %rsi
	movq	%rsi, 1176(%rsp)
	movq	864(%rcx,%rdx), %rsi
	movq	%rsi, 1184(%rsp)
	movq	872(%rcx,%rdx), %rsi
	movq	%rsi, 1192(%rsp)
	movq	880(%rcx,%rdx), %rsi
	movq	%rsi, 1200(%rsp)
	movq	888(%rcx,%rdx), %rsi
	movq	%rsi, 1208(%rsp)
	movq	896(%rcx,%rdx), %rsi
	movq	%rsi, 1216(%rsp)
	movq	904(%rcx,%rdx), %rsi
	movq	%rsi, 1224(%rsp)
	movq	912(%rcx,%rdx), %rsi
	movq	%rsi, 1232(%rsp)
	movq	920(%rcx,%rdx), %rsi
	movq	%rsi, 1240(%rsp)
	movq	928(%rcx,%rdx), %rsi
	movq	%rsi, 1248(%rsp)
	movq	936(%rcx,%rdx), %rsi
	movq	%rsi, 1256(%rsp)
	movq	944(%rcx,%rdx), %rsi
	movq	%rsi, 1264(%rsp)
	movq	952(%rcx,%rdx), %rsi
	movq	%rsi, 1272(%rsp)
	movq	960(%rcx,%rdx), %rsi
	movq	%rsi, 1280(%rsp)
	movq	968(%rcx,%rdx), %rsi
	movq	%rsi, 1288(%rsp)
	movq	976(%rcx,%rdx), %rsi
	movq	%rsi, 1296(%rsp)
	movq	984(%rcx,%rdx), %rsi
	movq	%rsi, 1304(%rsp)
	movq	992(%rcx,%rdx), %rsi
	movq	%rsi, 1312(%rsp)
	movq	1000(%rcx,%rdx), %rsi
	movq	%rsi, 1320(%rsp)
	movq	1008(%rcx,%rdx), %rsi
	movq	%rsi, 1328(%rsp)
	movq	1016(%rcx,%rdx), %rcx
	movq	%rcx, 1336(%rsp)
	leaq	96(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_commit_h2$5:
	leaq	320(%rsp), %rdi
	movq	$1024, %rsi
	leaq	-8(%rsp), %rsp
	call	LA1024___update_updstate_avx2$1
L_commit_h2$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit_h2$3:
	leaq	32(%rsp), %rdi
	movq	$64, %rsi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_commit_h2$2:
	leaq	8(%rsp), %rsp
	movq	1344(%rsp), %rdx
	imulq	$64, %rax, %rax
	movq	(%rdi), %rcx
	movq	%rcx, (%rdx,%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rdx,%rax)
	movq	16(%rdi), %rcx
	movq	%rcx, 16(%rdx,%rax)
	movq	24(%rdi), %rcx
	movq	%rcx, 24(%rdx,%rax)
	movq	32(%rdi), %rcx
	movq	%rcx, 32(%rdx,%rax)
	movq	40(%rdi), %rcx
	movq	%rcx, 40(%rdx,%rax)
	movq	48(%rdi), %rcx
	movq	%rcx, 48(%rdx,%rax)
	movq	56(%rdi), %rcx
	movq	%rcx, 56(%rdx,%rax)
	ret
L_commit_assemble$1:
	movq	%r8, 432(%rsp)
	movq	%rcx, 440(%rsp)
	movq	%r9, 448(%rsp)
	movq	%rdi, 456(%rsp)
	movzwq	%dx, %rcx
	addq	$15, %rcx
	imulq	$32, %rcx, %rcx
	movq	%rax, %rsi
	imulq	$992, %rsi, %rsi
	addq	%rsi, %rcx
	movq	440(%rsp), %r10
	movq	(%r10,%rcx), %rsi
	movq	%rsi, 64(%rsp)
	movq	8(%r10,%rcx), %rsi
	movq	%rsi, 72(%rsp)
	movq	16(%r10,%rcx), %rsi
	movq	%rsi, 80(%rsp)
	movq	24(%r10,%rcx), %rcx
	movq	%rcx, 88(%rsp)
	leaq	224(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_commit_assemble$15:
	leaq	64(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit_assemble$14:
	leaq	8(%rsp), %rsp
	cmpw	$15, %dx
	je  	L_commit_assemble$3
	movq	456(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit_assemble$13:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	%ax, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit_assemble$12:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	%dx, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit_assemble$11:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit_assemble$10:
	jmp 	L_commit_assemble$4
L_commit_assemble$3:
	movq	%rax, %rcx
	imulq	$4608, %rcx, %rcx
	addq	$4096, %rcx
	movq	448(%rsp), %rdi
	movq	(%rdi,%rcx), %rsi
	movq	%rsi, 96(%rsp)
	movq	8(%rdi,%rcx), %rsi
	movq	%rsi, 104(%rsp)
	movq	16(%rdi,%rcx), %rsi
	movq	%rsi, 112(%rsp)
	movq	24(%rdi,%rcx), %rsi
	movq	%rsi, 120(%rsp)
	movq	32(%rdi,%rcx), %rsi
	movq	%rsi, 128(%rsp)
	movq	40(%rdi,%rcx), %rsi
	movq	%rsi, 136(%rsp)
	movq	48(%rdi,%rcx), %rsi
	movq	%rsi, 144(%rsp)
	movq	56(%rdi,%rcx), %rsi
	movq	%rsi, 152(%rsp)
	movq	64(%rdi,%rcx), %rsi
	movq	%rsi, 160(%rsp)
	movq	72(%rdi,%rcx), %rsi
	movq	%rsi, 168(%rsp)
	movq	80(%rdi,%rcx), %rsi
	movq	%rsi, 176(%rsp)
	movq	88(%rdi,%rcx), %rsi
	movq	%rsi, 184(%rsp)
	movq	96(%rdi,%rcx), %rsi
	movq	%rsi, 192(%rsp)
	movq	104(%rdi,%rcx), %rsi
	movq	%rsi, 200(%rsp)
	movq	112(%rdi,%rcx), %rsi
	movq	%rsi, 208(%rsp)
	movq	120(%rdi,%rcx), %rcx
	movq	%rcx, 216(%rsp)
	leaq	96(%rsp), %rdi
	movq	$128, %rsi
	leaq	-8(%rsp), %rsp
	call	LA128___update_updstate_avx2$1
L_commit_assemble$9:
	leaq	8(%rsp), %rsp
	movq	456(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit_assemble$8:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	%ax, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit_assemble$7:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	%dx, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit_assemble$6:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit_assemble$5:
L_commit_assemble$4:
	movq	432(%rsp), %rdi
	movq	$64, %rax
	leaq	-32(%rsp), %rsp
	call	L_squeeze_m_updstate_avx2$1
L_commit_assemble$2:
	leaq	32(%rsp), %rsp
	movq	%rdi, %r8
	ret
L_commit_verify$1:
	movq	$15, %rsi
	addq	$15, %rsi
	imulq	$32, %rsi, %rsi
	movq	%r9, 496(%rsp)
	movq	%r11, 504(%rsp)
	movq	(%r10,%rsi), %r8
	movq	%r8, 64(%rsp)
	movq	8(%r10,%rsi), %r8
	movq	%r8, 72(%rsp)
	movq	16(%r10,%rsi), %r8
	movq	%r8, 80(%rsp)
	movq	24(%r10,%rsi), %rsi
	movq	%rsi, 88(%rsp)
	imulq	$480, %rcx, %rcx
	addq	$128, %rcx
	movq	(%rdi,%rcx), %rsi
	movq	%rsi, 160(%rsp)
	movq	8(%rdi,%rcx), %rsi
	movq	%rsi, 168(%rsp)
	movq	16(%rdi,%rcx), %rsi
	movq	%rsi, 176(%rsp)
	movq	24(%rdi,%rcx), %rsi
	movq	%rsi, 184(%rsp)
	movq	32(%rdi,%rcx), %rsi
	movq	%rsi, 192(%rsp)
	movq	40(%rdi,%rcx), %rsi
	movq	%rsi, 200(%rsp)
	movq	48(%rdi,%rcx), %rsi
	movq	%rsi, 208(%rsp)
	movq	56(%rdi,%rcx), %rsi
	movq	%rsi, 216(%rsp)
	movq	64(%rdi,%rcx), %rsi
	movq	%rsi, 224(%rsp)
	movq	72(%rdi,%rcx), %rsi
	movq	%rsi, 232(%rsp)
	movq	80(%rdi,%rcx), %rsi
	movq	%rsi, 240(%rsp)
	movq	88(%rdi,%rcx), %rsi
	movq	%rsi, 248(%rsp)
	movq	96(%rdi,%rcx), %rsi
	movq	%rsi, 256(%rsp)
	movq	104(%rdi,%rcx), %rsi
	movq	%rsi, 264(%rsp)
	movq	112(%rdi,%rcx), %rsi
	movq	%rsi, 272(%rsp)
	movq	120(%rdi,%rcx), %rcx
	movq	%rcx, 280(%rsp)
	leaq	288(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_commit_verify$9:
	leaq	64(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit_verify$8:
	leaq	8(%rsp), %rsp
	leaq	160(%rsp), %rdi
	movq	$128, %rsi
	leaq	-8(%rsp), %rsp
	call	LA128___update_updstate_avx2$1
L_commit_verify$7:
	leaq	8(%rsp), %rsp
	movq	504(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit_verify$6:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	%ax, %cx
	movw	%cx, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit_verify$5:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	%dx, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit_verify$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit_verify$3:
	leaq	96(%rsp), %rdi
	movq	$64, %rsi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_commit_verify$2:
	leaq	8(%rsp), %rsp
	movq	496(%rsp), %rdx
	imulq	$1024, %rax, %rax
	addq	$960, %rax
	movq	(%rdi), %rcx
	movq	%rcx, (%rdx,%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rdx,%rax)
	movq	16(%rdi), %rcx
	movq	%rcx, 16(%rdx,%rax)
	movq	24(%rdi), %rcx
	movq	%rcx, 24(%rdx,%rax)
	movq	32(%rdi), %rcx
	movq	%rcx, 32(%rdx,%rax)
	movq	40(%rdi), %rcx
	movq	%rcx, 40(%rdx,%rax)
	movq	48(%rdi), %rcx
	movq	%rcx, 48(%rdx,%rax)
	movq	56(%rdi), %rcx
	movq	%rcx, 56(%rdx,%rax)
	ret
L_commit2$1:
	movq	%rdi, 496(%rsp)
	movq	%r11, 504(%rsp)
	movq	%rsi, 512(%rsp)
	movw	%dx, 528(%rsp)
	movq	%r8, 520(%rsp)
	movq	(%r10,%rcx), %rdx
	movq	%rdx, 64(%rsp)
	movq	8(%r10,%rcx), %rdx
	movq	%rdx, 72(%rsp)
	movq	16(%r10,%rcx), %rdx
	movq	%rdx, 80(%rsp)
	movq	24(%r10,%rcx), %rcx
	movq	%rcx, 88(%rsp)
	imulq	$4608, %rsi, %rcx
	addq	$4096, %rcx
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 160(%rsp)
	movq	8(%rax,%rcx), %rdx
	movq	%rdx, 168(%rsp)
	movq	16(%rax,%rcx), %rdx
	movq	%rdx, 176(%rsp)
	movq	24(%rax,%rcx), %rdx
	movq	%rdx, 184(%rsp)
	movq	32(%rax,%rcx), %rdx
	movq	%rdx, 192(%rsp)
	movq	40(%rax,%rcx), %rdx
	movq	%rdx, 200(%rsp)
	movq	48(%rax,%rcx), %rdx
	movq	%rdx, 208(%rsp)
	movq	56(%rax,%rcx), %rdx
	movq	%rdx, 216(%rsp)
	movq	64(%rax,%rcx), %rdx
	movq	%rdx, 224(%rsp)
	movq	72(%rax,%rcx), %rdx
	movq	%rdx, 232(%rsp)
	movq	80(%rax,%rcx), %rdx
	movq	%rdx, 240(%rsp)
	movq	88(%rax,%rcx), %rdx
	movq	%rdx, 248(%rsp)
	movq	96(%rax,%rcx), %rdx
	movq	%rdx, 256(%rsp)
	movq	104(%rax,%rcx), %rdx
	movq	%rdx, 264(%rsp)
	movq	112(%rax,%rcx), %rdx
	movq	%rdx, 272(%rsp)
	movq	120(%rax,%rcx), %rax
	movq	%rax, 280(%rsp)
	leaq	288(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_commit2$9:
	leaq	64(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit2$8:
	leaq	8(%rsp), %rsp
	leaq	160(%rsp), %rdi
	movq	$128, %rsi
	leaq	-8(%rsp), %rsp
	call	LA128___update_updstate_avx2$1
L_commit2$7:
	leaq	8(%rsp), %rsp
	movq	504(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit2$6:
	leaq	8(%rsp), %rsp
	movq	512(%rsp), %rax
	movq	$2, %rsi
	movw	%ax, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit2$5:
	leaq	8(%rsp), %rsp
	movw	528(%rsp), %dx
	movq	$2, %rsi
	movw	%dx, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit2$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit2$3:
	leaq	96(%rsp), %rdi
	movq	$64, %rsi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_commit2$2:
	leaq	8(%rsp), %rsp
	movq	496(%rsp), %rdx
	movq	520(%rsp), %rax
	movq	(%rdi), %rcx
	movq	%rcx, (%rdx,%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rdx,%rax)
	movq	16(%rdi), %rcx
	movq	%rcx, 16(%rdx,%rax)
	movq	24(%rdi), %rcx
	movq	%rcx, 24(%rdx,%rax)
	movq	32(%rdi), %rcx
	movq	%rcx, 32(%rdx,%rax)
	movq	40(%rdi), %rcx
	movq	%rcx, 40(%rdx,%rax)
	movq	48(%rdi), %rcx
	movq	%rcx, 48(%rdx,%rax)
	movq	56(%rdi), %rcx
	movq	%rcx, 56(%rdx,%rax)
	ret
L_commit$1:
	movq	%rdi, 496(%rsp)
	movq	%r9, 504(%rsp)
	movq	%r11, 512(%rsp)
	movq	%rax, 520(%rsp)
	movw	%dx, 536(%rsp)
	movq	%r8, 528(%rsp)
	movq	(%r10,%rcx), %rax
	movq	%rax, 64(%rsp)
	movq	8(%r10,%rcx), %rax
	movq	%rax, 72(%rsp)
	movq	16(%r10,%rcx), %rax
	movq	%rax, 80(%rsp)
	movq	24(%r10,%rcx), %rax
	movq	%rax, 88(%rsp)
	movq	504(%rsp), %rax
	movq	4096(%rax), %rcx
	movq	%rcx, 160(%rsp)
	movq	4104(%rax), %rcx
	movq	%rcx, 168(%rsp)
	movq	4112(%rax), %rcx
	movq	%rcx, 176(%rsp)
	movq	4120(%rax), %rcx
	movq	%rcx, 184(%rsp)
	movq	4128(%rax), %rcx
	movq	%rcx, 192(%rsp)
	movq	4136(%rax), %rcx
	movq	%rcx, 200(%rsp)
	movq	4144(%rax), %rcx
	movq	%rcx, 208(%rsp)
	movq	4152(%rax), %rcx
	movq	%rcx, 216(%rsp)
	movq	4160(%rax), %rcx
	movq	%rcx, 224(%rsp)
	movq	4168(%rax), %rcx
	movq	%rcx, 232(%rsp)
	movq	4176(%rax), %rcx
	movq	%rcx, 240(%rsp)
	movq	4184(%rax), %rcx
	movq	%rcx, 248(%rsp)
	movq	4192(%rax), %rcx
	movq	%rcx, 256(%rsp)
	movq	4200(%rax), %rcx
	movq	%rcx, 264(%rsp)
	movq	4208(%rax), %rcx
	movq	%rcx, 272(%rsp)
	movq	4216(%rax), %rax
	movq	%rax, 280(%rsp)
	leaq	288(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_commit$9:
	leaq	64(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit$8:
	leaq	8(%rsp), %rsp
	leaq	160(%rsp), %rdi
	movq	$128, %rsi
	leaq	-8(%rsp), %rsp
	call	LA128___update_updstate_avx2$1
L_commit$7:
	leaq	8(%rsp), %rsp
	movq	512(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit$6:
	leaq	8(%rsp), %rsp
	movq	520(%rsp), %rax
	movq	$2, %rsi
	movw	%ax, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit$5:
	leaq	8(%rsp), %rsp
	movw	536(%rsp), %dx
	movq	$2, %rsi
	movw	%dx, 32(%rsp)
	leaq	32(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit$3:
	leaq	96(%rsp), %rdi
	movq	$64, %rsi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_commit$2:
	leaq	8(%rsp), %rsp
	movq	496(%rsp), %rdx
	movq	528(%rsp), %rax
	movq	(%rdi), %rcx
	movq	%rcx, (%rdx,%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rdx,%rax)
	movq	16(%rdi), %rcx
	movq	%rcx, 16(%rdx,%rax)
	movq	24(%rdi), %rcx
	movq	%rcx, 24(%rdx,%rax)
	movq	32(%rdi), %rcx
	movq	%rcx, 32(%rdx,%rax)
	movq	40(%rdi), %rcx
	movq	%rcx, 40(%rdx,%rax)
	movq	48(%rdi), %rcx
	movq	%rcx, 48(%rdx,%rax)
	movq	56(%rdi), %rcx
	movq	%rcx, 56(%rdx,%rax)
	ret
L_hashSeed_22$1:
	movq	%rsi, 336(%rsp)
	movq	%rdi, 344(%rsp)
	movw	%r9w, 64(%rsp)
	movw	%cx, 352(%rsp)
	movq	(%rdx,%rax), %rcx
	movq	%rcx, 96(%rsp)
	movq	8(%rdx,%rax), %rcx
	movq	%rcx, 104(%rsp)
	movq	16(%rdx,%rax), %rcx
	movq	%rcx, 112(%rsp)
	movq	24(%rdx,%rax), %rax
	movq	%rax, 120(%rsp)
	leaq	128(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_hashSeed_22$9:
	movq	$1, %rax
	movb	$1, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA1___update_updstate_avx2$1
L_hashSeed_22$8:
	leaq	8(%rsp), %rsp
	leaq	96(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_hashSeed_22$7:
	leaq	8(%rsp), %rsp
	movq	344(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_hashSeed_22$6:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	64(%rsp), %r9w
	movw	%r9w, 64(%rsp)
	leaq	64(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_hashSeed_22$5:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	352(%rsp), %cx
	movw	%cx, 64(%rsp)
	leaq	64(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_hashSeed_22$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_hashSeed_22$3:
	movq	$64, %rsi
	movq	336(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_hashSeed_22$2:
	leaq	8(%rsp), %rsp
	ret
L_hashSeed_2$1:
	movq	%rsi, 336(%rsp)
	movq	%rdi, 344(%rsp)
	movw	%r9w, 64(%rsp)
	movw	%dx, 352(%rsp)
	movq	(%rcx,%rax), %rdx
	movq	%rdx, 96(%rsp)
	movq	8(%rcx,%rax), %rdx
	movq	%rdx, 104(%rsp)
	movq	16(%rcx,%rax), %rdx
	movq	%rdx, 112(%rsp)
	movq	24(%rcx,%rax), %rax
	movq	%rax, 120(%rsp)
	leaq	128(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_hashSeed_2$9:
	movq	$1, %rax
	movb	$1, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA1___update_updstate_avx2$1
L_hashSeed_2$8:
	leaq	8(%rsp), %rsp
	leaq	96(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_hashSeed_2$7:
	leaq	8(%rsp), %rsp
	movq	344(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_hashSeed_2$6:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	64(%rsp), %r9w
	movw	%r9w, 64(%rsp)
	leaq	64(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_hashSeed_2$5:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	352(%rsp), %cx
	movw	%cx, 64(%rsp)
	leaq	64(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_hashSeed_2$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_hashSeed_2$3:
	movq	$64, %rsi
	movq	336(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_hashSeed_2$2:
	leaq	8(%rsp), %rsp
	ret
L__hashSeed_1$1:
	movq	%rdi, 336(%rsp)
	movq	%r11, 344(%rsp)
	movw	%r9w, 64(%rsp)
	movw	%dx, 352(%rsp)
	movq	(%rcx,%rsi), %rax
	movq	%rax, 96(%rsp)
	movq	8(%rcx,%rsi), %rax
	movq	%rax, 104(%rsp)
	movq	16(%rcx,%rsi), %rax
	movq	%rax, 112(%rsp)
	movq	24(%rcx,%rsi), %rax
	movq	%rax, 120(%rsp)
	leaq	128(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L__hashSeed_1$9:
	movq	$1, %rax
	movb	$1, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA1___update_updstate_avx2$1
L__hashSeed_1$8:
	leaq	8(%rsp), %rsp
	leaq	96(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L__hashSeed_1$7:
	leaq	8(%rsp), %rsp
	movq	344(%rsp), %rdi
	movq	$32, %rsi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L__hashSeed_1$6:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	64(%rsp), %r9w
	movw	%r9w, 64(%rsp)
	leaq	64(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L__hashSeed_1$5:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	movw	352(%rsp), %cx
	movw	%cx, 64(%rsp)
	leaq	64(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L__hashSeed_1$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L__hashSeed_1$3:
	movq	$64, %rsi
	movq	336(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L__hashSeed_1$2:
	leaq	8(%rsp), %rsp
	ret
L_computeSaltAndRootSeed$1:
	movq	%rdx, 272(%rsp)
	movq	%rax, 280(%rsp)
	movq	%rdi, 288(%rsp)
	movq	%rsi, 296(%rsp)
	movq	%rcx, 304(%rsp)
	leaq	64(%rsp), %r11
	movb	$17, %sil
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_computeSaltAndRootSeed$9:
	movw	$255, %cx
	movw	%cx, 32(%rsp)
	movq	$32, %rsi
	movq	280(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_computeSaltAndRootSeed$8:
	leaq	8(%rsp), %rsp
	movq	$13, %rax
	movq	304(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA13___update_updstate_avx2$1
L_computeSaltAndRootSeed$7:
	leaq	8(%rsp), %rsp
	movq	$32, %rsi
	movq	288(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_computeSaltAndRootSeed$6:
	leaq	8(%rsp), %rsp
	movq	$32, %rsi
	movq	296(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_computeSaltAndRootSeed$5:
	leaq	8(%rsp), %rsp
	movq	$2, %rsi
	leaq	32(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_computeSaltAndRootSeed$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_computeSaltAndRootSeed$3:
	movq	$64, %rsi
	movq	272(%rsp), %rdi
	leaq	-8(%rsp), %rsp
	call	LA64___squeeze_updstate_avx2$1
L_computeSaltAndRootSeed$2:
	leaq	8(%rsp), %rsp
	ret
LA38464___update_updstate_avx2$1:
	movq	200(%r11), %rcx
	call	L_ststatus_data$1
LA38464___update_updstate_avx2$7:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	movq	$0, %rsi
	addq	%r9, %rax
	jmp 	LA38464___update_updstate_avx2$3
LA38464___update_updstate_avx2$4:
	call	LA38464___add_updstate_avx2$1
LA38464___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA38464___update_updstate_avx2$5:
	subq	%r8, %rax
	movq	$0, %r9
LA38464___update_updstate_avx2$3:
	cmpq	%rax, %r8
	jbe 	LA38464___update_updstate_avx2$4
	movq	%rax, %r8
	movq	8(%rsp), %r11
	call	LA38464___add_updstate_avx2$1
LA38464___update_updstate_avx2$2:
	movb	%r9b, 200(%r11)
	ret
LA38464___add_updstate_avx2$1:
	movq	%r9, %rdi
	andq	$7, %rdi
	cmpq	$0, %rdi
	je  	LA38464___add_updstate_avx2$13
	movq	%r8, %rbx
	subq	%r9, %rbx
	shrq	$3, %r9
	shlq	$3, %r9
	movq	%rsi, %rbp
	cmpq	$8, %rbx
	jnb 	LA38464___add_updstate_avx2$16
	testq	$4, %rbx
	jne 	LA38464___add_updstate_avx2$20
	movq	$0, %r12
	movb	$0, %cl
	jmp 	LA38464___add_updstate_avx2$21
LA38464___add_updstate_avx2$20:
	movl	(%rdx,%rbp), %r12d
	addq	$4, %rbp
	movb	$32, %cl
LA38464___add_updstate_avx2$21:
	testq	$2, %rbx
	je  	LA38464___add_updstate_avx2$19
	movzwq	(%rdx,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	addq	$2, %rbp
	addb	$16, %cl
LA38464___add_updstate_avx2$19:
	testq	$1, %rbx
	je  	LA38464___add_updstate_avx2$17
	movzbq	(%rdx,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	incq	%rbp
LA38464___add_updstate_avx2$18:
	jmp 	LA38464___add_updstate_avx2$17
LA38464___add_updstate_avx2$16:
	movq	(%rdx,%rbp), %r12
	addq	$8, %rbp
LA38464___add_updstate_avx2$17:
	addq	%r9, %rbx
	movb	%dil, %cl
	shlb	$3, %cl
	shlq	%cl, %r12
	xorq	%r12, (%r10,%r9)
	cmpq	$8, %rbx
	jnb 	LA38464___add_updstate_avx2$14
	movq	%rbp, %rsi
	movq	%r8, %r9
	jmp 	LA38464___add_updstate_avx2$13
LA38464___add_updstate_avx2$14:
	addq	$8, %rsi
	subq	%rdi, %rsi
	addq	$8, %r9
LA38464___add_updstate_avx2$15:
LA38464___add_updstate_avx2$13:
	movq	%r9, %rcx
	jmp 	LA38464___add_updstate_avx2$11
LA38464___add_updstate_avx2$12:
	vmovdqu	(%r10,%r9), %ymm0
	vmovdqu	(%rdx,%rsi), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9)
	movq	%rcx, %r9
	addq	$32, %rsi
LA38464___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%r8, %rcx
	jbe 	LA38464___add_updstate_avx2$12
	movq	%r9, %rcx
	jmp 	LA38464___add_updstate_avx2$9
LA38464___add_updstate_avx2$10:
	movq	(%rdx,%rsi), %rdi
	xorq	%rdi, (%r10,%r9)
	movq	%rcx, %r9
	addq	$8, %rsi
LA38464___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA38464___add_updstate_avx2$10
	cmpq	%r8, %r9
	jnb 	LA38464___add_updstate_avx2$2
	movq	%r8, %rdi
	andq	$7, %rdi
	cmpq	$8, %rdi
	jnb 	LA38464___add_updstate_avx2$3
	testq	$4, %rdi
	jne 	LA38464___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA38464___add_updstate_avx2$8
LA38464___add_updstate_avx2$7:
	movl	(%rdx,%rsi), %ebp
	addq	$4, %rsi
	movb	$32, %cl
LA38464___add_updstate_avx2$8:
	testq	$2, %rdi
	je  	LA38464___add_updstate_avx2$6
	movzwq	(%rdx,%rsi), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rsi
	addb	$16, %cl
LA38464___add_updstate_avx2$6:
	testq	$1, %rdi
	je  	LA38464___add_updstate_avx2$4
	movzbq	(%rdx,%rsi), %rdi
	shlq	%cl, %rdi
	addq	%rdi, %rbp
	incq	%rsi
LA38464___add_updstate_avx2$5:
	jmp 	LA38464___add_updstate_avx2$4
LA38464___add_updstate_avx2$3:
	movq	(%rdx,%rsi), %rbp
	addq	$8, %rsi
LA38464___add_updstate_avx2$4:
	xorq	%rbp, (%r10,%r9)
LA38464___add_updstate_avx2$2:
	movq	%r8, %r9
	ret
LA2048___update_updstate_avx2$1:
	movq	200(%r11), %rcx
	call	L_ststatus_data$1
LA2048___update_updstate_avx2$7:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	movq	$0, %rdx
	addq	%r9, %rsi
	jmp 	LA2048___update_updstate_avx2$3
LA2048___update_updstate_avx2$4:
	call	LA2048___add_updstate_avx2$1
LA2048___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA2048___update_updstate_avx2$5:
	subq	%r8, %rsi
	movq	$0, %r9
LA2048___update_updstate_avx2$3:
	cmpq	%rsi, %r8
	jbe 	LA2048___update_updstate_avx2$4
	movq	%rsi, %r8
	movq	8(%rsp), %r11
	call	LA2048___add_updstate_avx2$1
LA2048___update_updstate_avx2$2:
	movb	%r9b, 200(%r11)
	ret
LA2048___add_updstate_avx2$1:
	movq	%r9, %r13
	andq	$7, %r13
	cmpq	$0, %r13
	je  	LA2048___add_updstate_avx2$13
	movq	%r8, %rbx
	subq	%r9, %rbx
	shrq	$3, %r9
	shlq	$3, %r9
	movq	%rdx, %rbp
	cmpq	$8, %rbx
	jnb 	LA2048___add_updstate_avx2$16
	testq	$4, %rbx
	jne 	LA2048___add_updstate_avx2$20
	movq	$0, %r12
	movb	$0, %cl
	jmp 	LA2048___add_updstate_avx2$21
LA2048___add_updstate_avx2$20:
	movl	(%rdi,%rbp), %r12d
	addq	$4, %rbp
	movb	$32, %cl
LA2048___add_updstate_avx2$21:
	testq	$2, %rbx
	je  	LA2048___add_updstate_avx2$19
	movzwq	(%rdi,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	addq	$2, %rbp
	addb	$16, %cl
LA2048___add_updstate_avx2$19:
	testq	$1, %rbx
	je  	LA2048___add_updstate_avx2$17
	movzbq	(%rdi,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	incq	%rbp
LA2048___add_updstate_avx2$18:
	jmp 	LA2048___add_updstate_avx2$17
LA2048___add_updstate_avx2$16:
	movq	(%rdi,%rbp), %r12
	addq	$8, %rbp
LA2048___add_updstate_avx2$17:
	addq	%r9, %rbx
	movb	%r13b, %cl
	shlb	$3, %cl
	shlq	%cl, %r12
	xorq	%r12, (%r10,%r9)
	cmpq	$8, %rbx
	jnb 	LA2048___add_updstate_avx2$14
	movq	%rbp, %rdx
	movq	%r8, %r9
	jmp 	LA2048___add_updstate_avx2$13
LA2048___add_updstate_avx2$14:
	addq	$8, %rdx
	subq	%r13, %rdx
	addq	$8, %r9
LA2048___add_updstate_avx2$15:
LA2048___add_updstate_avx2$13:
	movq	%r9, %rcx
	jmp 	LA2048___add_updstate_avx2$11
LA2048___add_updstate_avx2$12:
	vmovdqu	(%r10,%r9), %ymm0
	vmovdqu	(%rdi,%rdx), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9)
	movq	%rcx, %r9
	addq	$32, %rdx
LA2048___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%r8, %rcx
	jbe 	LA2048___add_updstate_avx2$12
	movq	%r9, %rcx
	jmp 	LA2048___add_updstate_avx2$9
LA2048___add_updstate_avx2$10:
	movq	(%rdi,%rdx), %rbp
	xorq	%rbp, (%r10,%r9)
	movq	%rcx, %r9
	addq	$8, %rdx
LA2048___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA2048___add_updstate_avx2$10
	cmpq	%r8, %r9
	jnb 	LA2048___add_updstate_avx2$2
	movq	%r8, %r12
	andq	$7, %r12
	cmpq	$8, %r12
	jnb 	LA2048___add_updstate_avx2$3
	testq	$4, %r12
	jne 	LA2048___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2048___add_updstate_avx2$8
LA2048___add_updstate_avx2$7:
	movl	(%rdi,%rdx), %ebp
	addq	$4, %rdx
	movb	$32, %cl
LA2048___add_updstate_avx2$8:
	testq	$2, %r12
	je  	LA2048___add_updstate_avx2$6
	movzwq	(%rdi,%rdx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rdx
	addb	$16, %cl
LA2048___add_updstate_avx2$6:
	testq	$1, %r12
	je  	LA2048___add_updstate_avx2$4
	movzbq	(%rdi,%rdx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	incq	%rdx
LA2048___add_updstate_avx2$5:
	jmp 	LA2048___add_updstate_avx2$4
LA2048___add_updstate_avx2$3:
	movq	(%rdi,%rdx), %rbp
	addq	$8, %rdx
LA2048___add_updstate_avx2$4:
	xorq	%rbp, (%r10,%r9)
LA2048___add_updstate_avx2$2:
	movq	%r8, %r9
	ret
LA1024___update_updstate_avx2$1:
	movq	200(%r11), %rcx
	call	L_ststatus_data$1
LA1024___update_updstate_avx2$7:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	movq	$0, %rdx
	addq	%r9, %rsi
	jmp 	LA1024___update_updstate_avx2$3
LA1024___update_updstate_avx2$4:
	call	LA1024___add_updstate_avx2$1
LA1024___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA1024___update_updstate_avx2$5:
	subq	%r8, %rsi
	movq	$0, %r9
LA1024___update_updstate_avx2$3:
	cmpq	%rsi, %r8
	jbe 	LA1024___update_updstate_avx2$4
	movq	%rsi, %r8
	movq	8(%rsp), %r11
	call	LA1024___add_updstate_avx2$1
LA1024___update_updstate_avx2$2:
	movb	%r9b, 200(%r11)
	ret
LA1024___add_updstate_avx2$1:
	movq	%r9, %r13
	andq	$7, %r13
	cmpq	$0, %r13
	je  	LA1024___add_updstate_avx2$13
	movq	%r8, %rbx
	subq	%r9, %rbx
	shrq	$3, %r9
	shlq	$3, %r9
	movq	%rdx, %rbp
	cmpq	$8, %rbx
	jnb 	LA1024___add_updstate_avx2$16
	testq	$4, %rbx
	jne 	LA1024___add_updstate_avx2$20
	movq	$0, %r12
	movb	$0, %cl
	jmp 	LA1024___add_updstate_avx2$21
LA1024___add_updstate_avx2$20:
	movl	(%rdi,%rbp), %r12d
	addq	$4, %rbp
	movb	$32, %cl
LA1024___add_updstate_avx2$21:
	testq	$2, %rbx
	je  	LA1024___add_updstate_avx2$19
	movzwq	(%rdi,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	addq	$2, %rbp
	addb	$16, %cl
LA1024___add_updstate_avx2$19:
	testq	$1, %rbx
	je  	LA1024___add_updstate_avx2$17
	movzbq	(%rdi,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	incq	%rbp
LA1024___add_updstate_avx2$18:
	jmp 	LA1024___add_updstate_avx2$17
LA1024___add_updstate_avx2$16:
	movq	(%rdi,%rbp), %r12
	addq	$8, %rbp
LA1024___add_updstate_avx2$17:
	addq	%r9, %rbx
	movb	%r13b, %cl
	shlb	$3, %cl
	shlq	%cl, %r12
	xorq	%r12, (%r10,%r9)
	cmpq	$8, %rbx
	jnb 	LA1024___add_updstate_avx2$14
	movq	%rbp, %rdx
	movq	%r8, %r9
	jmp 	LA1024___add_updstate_avx2$13
LA1024___add_updstate_avx2$14:
	addq	$8, %rdx
	subq	%r13, %rdx
	addq	$8, %r9
LA1024___add_updstate_avx2$15:
LA1024___add_updstate_avx2$13:
	movq	%r9, %rcx
	jmp 	LA1024___add_updstate_avx2$11
LA1024___add_updstate_avx2$12:
	vmovdqu	(%r10,%r9), %ymm0
	vmovdqu	(%rdi,%rdx), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9)
	movq	%rcx, %r9
	addq	$32, %rdx
LA1024___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%r8, %rcx
	jbe 	LA1024___add_updstate_avx2$12
	movq	%r9, %rcx
	jmp 	LA1024___add_updstate_avx2$9
LA1024___add_updstate_avx2$10:
	movq	(%rdi,%rdx), %rbp
	xorq	%rbp, (%r10,%r9)
	movq	%rcx, %r9
	addq	$8, %rdx
LA1024___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA1024___add_updstate_avx2$10
	cmpq	%r8, %r9
	jnb 	LA1024___add_updstate_avx2$2
	movq	%r8, %r12
	andq	$7, %r12
	cmpq	$8, %r12
	jnb 	LA1024___add_updstate_avx2$3
	testq	$4, %r12
	jne 	LA1024___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1024___add_updstate_avx2$8
LA1024___add_updstate_avx2$7:
	movl	(%rdi,%rdx), %ebp
	addq	$4, %rdx
	movb	$32, %cl
LA1024___add_updstate_avx2$8:
	testq	$2, %r12
	je  	LA1024___add_updstate_avx2$6
	movzwq	(%rdi,%rdx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rdx
	addb	$16, %cl
LA1024___add_updstate_avx2$6:
	testq	$1, %r12
	je  	LA1024___add_updstate_avx2$4
	movzbq	(%rdi,%rdx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	incq	%rdx
LA1024___add_updstate_avx2$5:
	jmp 	LA1024___add_updstate_avx2$4
LA1024___add_updstate_avx2$3:
	movq	(%rdi,%rdx), %rbp
	addq	$8, %rdx
LA1024___add_updstate_avx2$4:
	xorq	%rbp, (%r10,%r9)
LA1024___add_updstate_avx2$2:
	movq	%r8, %r9
	ret
LA128___update_updstate_avx2$1:
	movq	200(%r11), %rcx
	call	L_ststatus_data$1
LA128___update_updstate_avx2$7:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	movq	$0, %rbx
	addq	%r9, %rsi
	jmp 	LA128___update_updstate_avx2$3
LA128___update_updstate_avx2$4:
	call	LA128___add_updstate_avx2$1
LA128___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA128___update_updstate_avx2$5:
	subq	%r8, %rsi
	movq	$0, %r9
LA128___update_updstate_avx2$3:
	cmpq	%rsi, %r8
	jbe 	LA128___update_updstate_avx2$4
	movq	%rsi, %r8
	movq	8(%rsp), %r11
	call	LA128___add_updstate_avx2$1
LA128___update_updstate_avx2$2:
	movb	%r9b, 200(%r11)
	ret
LA128___add_updstate_avx2$1:
	movq	%r9, %r13
	andq	$7, %r13
	cmpq	$0, %r13
	je  	LA128___add_updstate_avx2$13
	movq	%r8, %r15
	subq	%r9, %r15
	shrq	$3, %r9
	shlq	$3, %r9
	movq	%rbx, %r12
	cmpq	$8, %r15
	jnb 	LA128___add_updstate_avx2$16
	testq	$4, %r15
	jne 	LA128___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA128___add_updstate_avx2$21
LA128___add_updstate_avx2$20:
	movl	(%rdi,%r12), %ebp
	addq	$4, %r12
	movb	$32, %cl
LA128___add_updstate_avx2$21:
	testq	$2, %r15
	je  	LA128___add_updstate_avx2$19
	movzwq	(%rdi,%r12), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %r12
	addb	$16, %cl
LA128___add_updstate_avx2$19:
	testq	$1, %r15
	je  	LA128___add_updstate_avx2$17
	movzbq	(%rdi,%r12), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	incq	%r12
LA128___add_updstate_avx2$18:
	jmp 	LA128___add_updstate_avx2$17
LA128___add_updstate_avx2$16:
	movq	(%rdi,%r12), %rbp
	addq	$8, %r12
LA128___add_updstate_avx2$17:
	addq	%r9, %r15
	movb	%r13b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r10,%r9)
	cmpq	$8, %r15
	jnb 	LA128___add_updstate_avx2$14
	movq	%r12, %rbx
	movq	%r8, %r9
	jmp 	LA128___add_updstate_avx2$13
LA128___add_updstate_avx2$14:
	addq	$8, %rbx
	subq	%r13, %rbx
	addq	$8, %r9
LA128___add_updstate_avx2$15:
LA128___add_updstate_avx2$13:
	movq	%r9, %rcx
	jmp 	LA128___add_updstate_avx2$11
LA128___add_updstate_avx2$12:
	vmovdqu	(%r10,%r9), %ymm0
	vmovdqu	(%rdi,%rbx), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9)
	movq	%rcx, %r9
	addq	$32, %rbx
LA128___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%r8, %rcx
	jbe 	LA128___add_updstate_avx2$12
	movq	%r9, %rcx
	jmp 	LA128___add_updstate_avx2$9
LA128___add_updstate_avx2$10:
	movq	(%rdi,%rbx), %rbp
	xorq	%rbp, (%r10,%r9)
	movq	%rcx, %r9
	addq	$8, %rbx
LA128___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA128___add_updstate_avx2$10
	cmpq	%r8, %r9
	jnb 	LA128___add_updstate_avx2$2
	movq	%r8, %r12
	andq	$7, %r12
	cmpq	$8, %r12
	jnb 	LA128___add_updstate_avx2$3
	testq	$4, %r12
	jne 	LA128___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA128___add_updstate_avx2$8
LA128___add_updstate_avx2$7:
	movl	(%rdi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA128___add_updstate_avx2$8:
	testq	$2, %r12
	je  	LA128___add_updstate_avx2$6
	movzwq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA128___add_updstate_avx2$6:
	testq	$1, %r12
	je  	LA128___add_updstate_avx2$4
	movzbq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	incq	%rbx
LA128___add_updstate_avx2$5:
	jmp 	LA128___add_updstate_avx2$4
LA128___add_updstate_avx2$3:
	movq	(%rdi,%rbx), %rbp
	addq	$8, %rbx
LA128___add_updstate_avx2$4:
	xorq	%rbp, (%r10,%r9)
LA128___add_updstate_avx2$2:
	movq	%r8, %r9
	ret
LA64___squeeze_updstate_avx2$1:
	movq	200(%r11), %rcx
	call	L_ststatus_data$1
LA64___squeeze_updstate_avx2$9:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	cmpq	$0, %r9
	jne 	LA64___squeeze_updstate_avx2$7
	call	L_keccakf1600_st25_avx2$1
LA64___squeeze_updstate_avx2$8:
	movq	$0, %r9
LA64___squeeze_updstate_avx2$7:
	movq	$0, %rdx
	addq	%r9, %rsi
	jmp 	LA64___squeeze_updstate_avx2$3
LA64___squeeze_updstate_avx2$4:
	call	LA64___dump_updstate_avx2$1
LA64___squeeze_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA64___squeeze_updstate_avx2$5:
	subq	%r8, %rsi
	movq	$0, %r9
LA64___squeeze_updstate_avx2$3:
	cmpq	%rsi, %r8
	jb  	LA64___squeeze_updstate_avx2$4
	movq	%rsi, %r8
	call	LA64___dump_updstate_avx2$1
LA64___squeeze_updstate_avx2$2:
	movq	8(%rsp), %r10
	movb	%r9b, 200(%r10)
	ret
LA64___dump_updstate_avx2$1:
	movq	%r9, %r11
	andq	$7, %r11
	cmpq	$0, %r11
	je  	LA64___dump_updstate_avx2$12
	movq	%r8, %rbx
	subq	%r9, %rbx
	shrq	$3, %r9
	shlq	$3, %r9
	movq	(%r10,%r9), %rbp
	movb	%r11b, %cl
	shlb	$3, %cl
	shrq	%cl, %rbp
	movq	%rdx, %rcx
	cmpq	$8, %rbx
	jnb 	LA64___dump_updstate_avx2$15
	testq	$4, %rbx
	je  	LA64___dump_updstate_avx2$19
	movl	%ebp, (%rdi,%rcx)
	addq	$4, %rcx
	shrq	$32, %rbp
LA64___dump_updstate_avx2$19:
	testq	$2, %rbx
	je  	LA64___dump_updstate_avx2$18
	movw	%bp, (%rdi,%rcx)
	addq	$2, %rcx
	shrq	$16, %rbp
LA64___dump_updstate_avx2$18:
	testq	$1, %rbx
	je  	LA64___dump_updstate_avx2$16
	movb	%bpl, (%rdi,%rcx)
	incq	%rcx
LA64___dump_updstate_avx2$17:
	jmp 	LA64___dump_updstate_avx2$16
LA64___dump_updstate_avx2$15:
	movq	%rbp, (%rdi,%rcx)
	addq	$8, %rcx
LA64___dump_updstate_avx2$16:
	addq	%r11, %rbx
	cmpq	$8, %rbx
	jnb 	LA64___dump_updstate_avx2$13
	movq	%rcx, %rdx
	movq	%r8, %r9
	jmp 	LA64___dump_updstate_avx2$12
LA64___dump_updstate_avx2$13:
	addq	$8, %rdx
	subq	%r11, %rdx
	addq	$8, %r9
LA64___dump_updstate_avx2$14:
LA64___dump_updstate_avx2$12:
	movq	%r9, %rcx
	jmp 	LA64___dump_updstate_avx2$10
LA64___dump_updstate_avx2$11:
	vmovdqu	(%r10,%r9), %ymm0
	vmovdqu	%ymm0, (%rdi,%rdx)
	movq	%rcx, %r9
	addq	$32, %rdx
LA64___dump_updstate_avx2$10:
	addq	$32, %rcx
	cmpq	%r8, %rcx
	jbe 	LA64___dump_updstate_avx2$11
	movq	%r9, %rcx
	jmp 	LA64___dump_updstate_avx2$8
LA64___dump_updstate_avx2$9:
	movq	(%r10,%r9), %r9
	movq	%r9, (%rdi,%rdx)
	movq	%rcx, %r9
	addq	$8, %rdx
LA64___dump_updstate_avx2$8:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA64___dump_updstate_avx2$9
	cmpq	%r8, %r9
	jnb 	LA64___dump_updstate_avx2$2
	movq	%r8, %rcx
	andq	$7, %rcx
	movq	(%r10,%r9), %r9
	cmpq	$8, %rcx
	jnb 	LA64___dump_updstate_avx2$3
	testq	$4, %rcx
	je  	LA64___dump_updstate_avx2$7
	movl	%r9d, (%rdi,%rdx)
	addq	$4, %rdx
	shrq	$32, %r9
LA64___dump_updstate_avx2$7:
	testq	$2, %rcx
	je  	LA64___dump_updstate_avx2$6
	movw	%r9w, (%rdi,%rdx)
	addq	$2, %rdx
	shrq	$16, %r9
LA64___dump_updstate_avx2$6:
	testq	$1, %rcx
	je  	LA64___dump_updstate_avx2$2
	movb	%r9b, (%rdi,%rdx)
	incq	%rdx
LA64___dump_updstate_avx2$5:
	jmp 	LA64___dump_updstate_avx2$2
LA64___dump_updstate_avx2$3:
	movq	%r9, (%rdi,%rdx)
	addq	$8, %rdx
LA64___dump_updstate_avx2$4:
LA64___dump_updstate_avx2$2:
	movq	%r8, %r9
	ret
LA64___update_updstate_avx2$1:
	movq	200(%r11), %rcx
	call	L_ststatus_data$1
LA64___update_updstate_avx2$7:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	movq	$0, %rdx
	addq	%r9, %rax
	jmp 	LA64___update_updstate_avx2$3
LA64___update_updstate_avx2$4:
	call	LA64___add_updstate_avx2$1
LA64___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA64___update_updstate_avx2$5:
	subq	%r8, %rax
	movq	$0, %r9
LA64___update_updstate_avx2$3:
	cmpq	%rax, %r8
	jbe 	LA64___update_updstate_avx2$4
	movq	%rax, %r8
	movq	8(%rsp), %r11
	call	LA64___add_updstate_avx2$1
LA64___update_updstate_avx2$2:
	movb	%r9b, 200(%r11)
	ret
LA64___add_updstate_avx2$1:
	movq	%r9, %rsi
	andq	$7, %rsi
	cmpq	$0, %rsi
	je  	LA64___add_updstate_avx2$13
	movq	%r8, %rbx
	subq	%r9, %rbx
	shrq	$3, %r9
	shlq	$3, %r9
	movq	%rdx, %rbp
	cmpq	$8, %rbx
	jnb 	LA64___add_updstate_avx2$16
	testq	$4, %rbx
	jne 	LA64___add_updstate_avx2$20
	movq	$0, %r12
	movb	$0, %cl
	jmp 	LA64___add_updstate_avx2$21
LA64___add_updstate_avx2$20:
	movl	(%rdi,%rbp), %r12d
	addq	$4, %rbp
	movb	$32, %cl
LA64___add_updstate_avx2$21:
	testq	$2, %rbx
	je  	LA64___add_updstate_avx2$19
	movzwq	(%rdi,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	addq	$2, %rbp
	addb	$16, %cl
LA64___add_updstate_avx2$19:
	testq	$1, %rbx
	je  	LA64___add_updstate_avx2$17
	movzbq	(%rdi,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	incq	%rbp
LA64___add_updstate_avx2$18:
	jmp 	LA64___add_updstate_avx2$17
LA64___add_updstate_avx2$16:
	movq	(%rdi,%rbp), %r12
	addq	$8, %rbp
LA64___add_updstate_avx2$17:
	addq	%r9, %rbx
	movb	%sil, %cl
	shlb	$3, %cl
	shlq	%cl, %r12
	xorq	%r12, (%r10,%r9)
	cmpq	$8, %rbx
	jnb 	LA64___add_updstate_avx2$14
	movq	%rbp, %rdx
	movq	%r8, %r9
	jmp 	LA64___add_updstate_avx2$13
LA64___add_updstate_avx2$14:
	addq	$8, %rdx
	subq	%rsi, %rdx
	addq	$8, %r9
LA64___add_updstate_avx2$15:
LA64___add_updstate_avx2$13:
	movq	%r9, %rcx
	jmp 	LA64___add_updstate_avx2$11
LA64___add_updstate_avx2$12:
	vmovdqu	(%r10,%r9), %ymm0
	vmovdqu	(%rdi,%rdx), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9)
	movq	%rcx, %r9
	addq	$32, %rdx
LA64___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%r8, %rcx
	jbe 	LA64___add_updstate_avx2$12
	movq	%r9, %rcx
	jmp 	LA64___add_updstate_avx2$9
LA64___add_updstate_avx2$10:
	movq	(%rdi,%rdx), %rsi
	xorq	%rsi, (%r10,%r9)
	movq	%rcx, %r9
	addq	$8, %rdx
LA64___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA64___add_updstate_avx2$10
	cmpq	%r8, %r9
	jnb 	LA64___add_updstate_avx2$2
	movq	%r8, %rsi
	andq	$7, %rsi
	cmpq	$8, %rsi
	jnb 	LA64___add_updstate_avx2$3
	testq	$4, %rsi
	jne 	LA64___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA64___add_updstate_avx2$8
LA64___add_updstate_avx2$7:
	movl	(%rdi,%rdx), %ebp
	addq	$4, %rdx
	movb	$32, %cl
LA64___add_updstate_avx2$8:
	testq	$2, %rsi
	je  	LA64___add_updstate_avx2$6
	movzwq	(%rdi,%rdx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rdx
	addb	$16, %cl
LA64___add_updstate_avx2$6:
	testq	$1, %rsi
	je  	LA64___add_updstate_avx2$4
	movzbq	(%rdi,%rdx), %rsi
	shlq	%cl, %rsi
	addq	%rsi, %rbp
	incq	%rdx
LA64___add_updstate_avx2$5:
	jmp 	LA64___add_updstate_avx2$4
LA64___add_updstate_avx2$3:
	movq	(%rdi,%rdx), %rbp
	addq	$8, %rdx
LA64___add_updstate_avx2$4:
	xorq	%rbp, (%r10,%r9)
LA64___add_updstate_avx2$2:
	movq	%r8, %r9
	ret
LA32___update_updstate_avx2$1:
	movq	200(%r11), %rcx
	call	L_ststatus_data$1
LA32___update_updstate_avx2$7:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	movq	$0, %rbx
	addq	%r9, %rsi
	jmp 	LA32___update_updstate_avx2$3
LA32___update_updstate_avx2$4:
	call	LA32___add_updstate_avx2$1
LA32___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA32___update_updstate_avx2$5:
	subq	%r8, %rsi
	movq	$0, %r9
LA32___update_updstate_avx2$3:
	cmpq	%rsi, %r8
	jbe 	LA32___update_updstate_avx2$4
	movq	%rsi, %r8
	movq	8(%rsp), %r11
	call	LA32___add_updstate_avx2$1
LA32___update_updstate_avx2$2:
	movb	%r9b, 200(%r11)
	ret
LA32___add_updstate_avx2$1:
	movq	%r9, %r13
	andq	$7, %r13
	cmpq	$0, %r13
	je  	LA32___add_updstate_avx2$13
	movq	%r8, %r15
	subq	%r9, %r15
	shrq	$3, %r9
	shlq	$3, %r9
	movq	%rbx, %rbp
	cmpq	$8, %r15
	jnb 	LA32___add_updstate_avx2$16
	testq	$4, %r15
	jne 	LA32___add_updstate_avx2$20
	movq	$0, %r12
	movb	$0, %cl
	jmp 	LA32___add_updstate_avx2$21
LA32___add_updstate_avx2$20:
	movl	(%rdi,%rbp), %r12d
	addq	$4, %rbp
	movb	$32, %cl
LA32___add_updstate_avx2$21:
	testq	$2, %r15
	je  	LA32___add_updstate_avx2$19
	movzwq	(%rdi,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	addq	$2, %rbp
	addb	$16, %cl
LA32___add_updstate_avx2$19:
	testq	$1, %r15
	je  	LA32___add_updstate_avx2$17
	movzbq	(%rdi,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	incq	%rbp
LA32___add_updstate_avx2$18:
	jmp 	LA32___add_updstate_avx2$17
LA32___add_updstate_avx2$16:
	movq	(%rdi,%rbp), %r12
	addq	$8, %rbp
LA32___add_updstate_avx2$17:
	addq	%r9, %r15
	movb	%r13b, %cl
	shlb	$3, %cl
	shlq	%cl, %r12
	xorq	%r12, (%r10,%r9)
	cmpq	$8, %r15
	jnb 	LA32___add_updstate_avx2$14
	movq	%rbp, %rbx
	movq	%r8, %r9
	jmp 	LA32___add_updstate_avx2$13
LA32___add_updstate_avx2$14:
	addq	$8, %rbx
	subq	%r13, %rbx
	addq	$8, %r9
LA32___add_updstate_avx2$15:
LA32___add_updstate_avx2$13:
	movq	%r9, %rcx
	jmp 	LA32___add_updstate_avx2$11
LA32___add_updstate_avx2$12:
	vmovdqu	(%r10,%r9), %ymm0
	vmovdqu	(%rdi,%rbx), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9)
	movq	%rcx, %r9
	addq	$32, %rbx
LA32___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%r8, %rcx
	jbe 	LA32___add_updstate_avx2$12
	movq	%r9, %rcx
	jmp 	LA32___add_updstate_avx2$9
LA32___add_updstate_avx2$10:
	movq	(%rdi,%rbx), %rbp
	xorq	%rbp, (%r10,%r9)
	movq	%rcx, %r9
	addq	$8, %rbx
LA32___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA32___add_updstate_avx2$10
	cmpq	%r8, %r9
	jnb 	LA32___add_updstate_avx2$2
	movq	%r8, %r12
	andq	$7, %r12
	cmpq	$8, %r12
	jnb 	LA32___add_updstate_avx2$3
	testq	$4, %r12
	jne 	LA32___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32___add_updstate_avx2$8
LA32___add_updstate_avx2$7:
	movl	(%rdi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA32___add_updstate_avx2$8:
	testq	$2, %r12
	je  	LA32___add_updstate_avx2$6
	movzwq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA32___add_updstate_avx2$6:
	testq	$1, %r12
	je  	LA32___add_updstate_avx2$4
	movzbq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	incq	%rbx
LA32___add_updstate_avx2$5:
	jmp 	LA32___add_updstate_avx2$4
LA32___add_updstate_avx2$3:
	movq	(%rdi,%rbx), %rbp
	addq	$8, %rbx
LA32___add_updstate_avx2$4:
	xorq	%rbp, (%r10,%r9)
LA32___add_updstate_avx2$2:
	movq	%r8, %r9
	ret
LA13___update_updstate_avx2$1:
	movq	200(%r11), %rcx
	call	L_ststatus_data$1
LA13___update_updstate_avx2$7:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	movq	$0, %rsi
	addq	%r9, %rax
	jmp 	LA13___update_updstate_avx2$3
LA13___update_updstate_avx2$4:
	call	LA13___add_updstate_avx2$1
LA13___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA13___update_updstate_avx2$5:
	subq	%r8, %rax
	movq	$0, %r9
LA13___update_updstate_avx2$3:
	cmpq	%rax, %r8
	jbe 	LA13___update_updstate_avx2$4
	movq	%rax, %r8
	movq	8(%rsp), %r11
	call	LA13___add_updstate_avx2$1
LA13___update_updstate_avx2$2:
	movb	%r9b, 200(%r11)
	ret
LA13___add_updstate_avx2$1:
	movq	%r9, %rdi
	andq	$7, %rdi
	cmpq	$0, %rdi
	je  	LA13___add_updstate_avx2$13
	movq	%r8, %rbx
	subq	%r9, %rbx
	shrq	$3, %r9
	shlq	$3, %r9
	movq	%rsi, %rbp
	cmpq	$8, %rbx
	jnb 	LA13___add_updstate_avx2$16
	testq	$4, %rbx
	jne 	LA13___add_updstate_avx2$20
	movq	$0, %r12
	movb	$0, %cl
	jmp 	LA13___add_updstate_avx2$21
LA13___add_updstate_avx2$20:
	movl	(%rdx,%rbp), %r12d
	addq	$4, %rbp
	movb	$32, %cl
LA13___add_updstate_avx2$21:
	testq	$2, %rbx
	je  	LA13___add_updstate_avx2$19
	movzwq	(%rdx,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	addq	$2, %rbp
	addb	$16, %cl
LA13___add_updstate_avx2$19:
	testq	$1, %rbx
	je  	LA13___add_updstate_avx2$17
	movzbq	(%rdx,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	incq	%rbp
LA13___add_updstate_avx2$18:
	jmp 	LA13___add_updstate_avx2$17
LA13___add_updstate_avx2$16:
	movq	(%rdx,%rbp), %r12
	addq	$8, %rbp
LA13___add_updstate_avx2$17:
	addq	%r9, %rbx
	movb	%dil, %cl
	shlb	$3, %cl
	shlq	%cl, %r12
	xorq	%r12, (%r10,%r9)
	cmpq	$8, %rbx
	jnb 	LA13___add_updstate_avx2$14
	movq	%rbp, %rsi
	movq	%r8, %r9
	jmp 	LA13___add_updstate_avx2$13
LA13___add_updstate_avx2$14:
	addq	$8, %rsi
	subq	%rdi, %rsi
	addq	$8, %r9
LA13___add_updstate_avx2$15:
LA13___add_updstate_avx2$13:
	movq	%r9, %rcx
	jmp 	LA13___add_updstate_avx2$11
LA13___add_updstate_avx2$12:
	vmovdqu	(%r10,%r9), %ymm0
	vmovdqu	(%rdx,%rsi), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9)
	movq	%rcx, %r9
	addq	$32, %rsi
LA13___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%r8, %rcx
	jbe 	LA13___add_updstate_avx2$12
	movq	%r9, %rcx
	jmp 	LA13___add_updstate_avx2$9
LA13___add_updstate_avx2$10:
	movq	(%rdx,%rsi), %rdi
	xorq	%rdi, (%r10,%r9)
	movq	%rcx, %r9
	addq	$8, %rsi
LA13___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA13___add_updstate_avx2$10
	cmpq	%r8, %r9
	jnb 	LA13___add_updstate_avx2$2
	movq	%r8, %rdi
	andq	$7, %rdi
	cmpq	$8, %rdi
	jnb 	LA13___add_updstate_avx2$3
	testq	$4, %rdi
	jne 	LA13___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA13___add_updstate_avx2$8
LA13___add_updstate_avx2$7:
	movl	(%rdx,%rsi), %ebp
	addq	$4, %rsi
	movb	$32, %cl
LA13___add_updstate_avx2$8:
	testq	$2, %rdi
	je  	LA13___add_updstate_avx2$6
	movzwq	(%rdx,%rsi), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rsi
	addb	$16, %cl
LA13___add_updstate_avx2$6:
	testq	$1, %rdi
	je  	LA13___add_updstate_avx2$4
	movzbq	(%rdx,%rsi), %rdi
	shlq	%cl, %rdi
	addq	%rdi, %rbp
	incq	%rsi
LA13___add_updstate_avx2$5:
	jmp 	LA13___add_updstate_avx2$4
LA13___add_updstate_avx2$3:
	movq	(%rdx,%rsi), %rbp
	addq	$8, %rsi
LA13___add_updstate_avx2$4:
	xorq	%rbp, (%r10,%r9)
LA13___add_updstate_avx2$2:
	movq	%r8, %r9
	ret
LA2___update_updstate_avx2$1:
	movq	200(%r11), %rcx
	call	L_ststatus_data$1
LA2___update_updstate_avx2$7:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	movq	$0, %rbx
	addq	%r9, %rsi
	jmp 	LA2___update_updstate_avx2$3
LA2___update_updstate_avx2$4:
	call	LA2___add_updstate_avx2$1
LA2___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA2___update_updstate_avx2$5:
	subq	%r8, %rsi
	movq	$0, %r9
LA2___update_updstate_avx2$3:
	cmpq	%rsi, %r8
	jbe 	LA2___update_updstate_avx2$4
	movq	%rsi, %r8
	movq	8(%rsp), %r11
	call	LA2___add_updstate_avx2$1
LA2___update_updstate_avx2$2:
	movb	%r9b, 200(%r11)
	ret
LA2___add_updstate_avx2$1:
	movq	%r9, %r15
	andq	$7, %r15
	cmpq	$0, %r15
	je  	LA2___add_updstate_avx2$13
	movq	%r8, %r12
	subq	%r9, %r12
	shrq	$3, %r9
	shlq	$3, %r9
	movq	%rbx, %rbp
	cmpq	$8, %r12
	jnb 	LA2___add_updstate_avx2$16
	testq	$4, %r12
	jne 	LA2___add_updstate_avx2$20
	movq	$0, %r13
	movb	$0, %cl
	jmp 	LA2___add_updstate_avx2$21
LA2___add_updstate_avx2$20:
	movl	(%rdi,%rbp), %r13d
	addq	$4, %rbp
	movb	$32, %cl
LA2___add_updstate_avx2$21:
	testq	$2, %r12
	je  	LA2___add_updstate_avx2$19
	movzwq	(%rdi,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r13
	addq	$2, %rbp
	addb	$16, %cl
LA2___add_updstate_avx2$19:
	testq	$1, %r12
	je  	LA2___add_updstate_avx2$17
	movzbq	(%rdi,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r13
	incq	%rbp
LA2___add_updstate_avx2$18:
	jmp 	LA2___add_updstate_avx2$17
LA2___add_updstate_avx2$16:
	movq	(%rdi,%rbp), %r13
	addq	$8, %rbp
LA2___add_updstate_avx2$17:
	addq	%r9, %r12
	movb	%r15b, %cl
	shlb	$3, %cl
	shlq	%cl, %r13
	xorq	%r13, (%r10,%r9)
	cmpq	$8, %r12
	jnb 	LA2___add_updstate_avx2$14
	movq	%rbp, %rbx
	movq	%r8, %r9
	jmp 	LA2___add_updstate_avx2$13
LA2___add_updstate_avx2$14:
	addq	$8, %rbx
	subq	%r15, %rbx
	addq	$8, %r9
LA2___add_updstate_avx2$15:
LA2___add_updstate_avx2$13:
	movq	%r9, %rcx
	jmp 	LA2___add_updstate_avx2$11
LA2___add_updstate_avx2$12:
	vmovdqu	(%r10,%r9), %ymm0
	vmovdqu	(%rdi,%rbx), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9)
	movq	%rcx, %r9
	addq	$32, %rbx
LA2___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%r8, %rcx
	jbe 	LA2___add_updstate_avx2$12
	movq	%r9, %rcx
	jmp 	LA2___add_updstate_avx2$9
LA2___add_updstate_avx2$10:
	movq	(%rdi,%rbx), %rbp
	xorq	%rbp, (%r10,%r9)
	movq	%rcx, %r9
	addq	$8, %rbx
LA2___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA2___add_updstate_avx2$10
	cmpq	%r8, %r9
	jnb 	LA2___add_updstate_avx2$2
	movq	%r8, %r12
	andq	$7, %r12
	cmpq	$8, %r12
	jnb 	LA2___add_updstate_avx2$3
	testq	$4, %r12
	jne 	LA2___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2___add_updstate_avx2$8
LA2___add_updstate_avx2$7:
	movl	(%rdi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2___add_updstate_avx2$8:
	testq	$2, %r12
	je  	LA2___add_updstate_avx2$6
	movzwq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2___add_updstate_avx2$6:
	testq	$1, %r12
	je  	LA2___add_updstate_avx2$4
	movzbq	(%rdi,%rbx), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	incq	%rbx
LA2___add_updstate_avx2$5:
	jmp 	LA2___add_updstate_avx2$4
LA2___add_updstate_avx2$3:
	movq	(%rdi,%rbx), %rbp
	addq	$8, %rbx
LA2___add_updstate_avx2$4:
	xorq	%rbp, (%r10,%r9)
LA2___add_updstate_avx2$2:
	movq	%r8, %r9
	ret
LA1___update_updstate_avx2$1:
	movq	200(%r11), %rcx
	call	L_ststatus_data$1
LA1___update_updstate_avx2$7:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	movq	$0, %rsi
	addq	%r9, %rax
	jmp 	LA1___update_updstate_avx2$3
LA1___update_updstate_avx2$4:
	call	LA1___add_updstate_avx2$1
LA1___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA1___update_updstate_avx2$5:
	subq	%r8, %rax
	movq	$0, %r9
LA1___update_updstate_avx2$3:
	cmpq	%rax, %r8
	jbe 	LA1___update_updstate_avx2$4
	movq	%rax, %r8
	movq	8(%rsp), %r11
	call	LA1___add_updstate_avx2$1
LA1___update_updstate_avx2$2:
	movb	%r9b, 200(%r11)
	ret
LA1___add_updstate_avx2$1:
	movq	%r9, %rdi
	andq	$7, %rdi
	cmpq	$0, %rdi
	je  	LA1___add_updstate_avx2$13
	movq	%r8, %rbx
	subq	%r9, %rbx
	shrq	$3, %r9
	shlq	$3, %r9
	movq	%rsi, %rbp
	cmpq	$8, %rbx
	jnb 	LA1___add_updstate_avx2$16
	testq	$4, %rbx
	jne 	LA1___add_updstate_avx2$20
	movq	$0, %r12
	movb	$0, %cl
	jmp 	LA1___add_updstate_avx2$21
LA1___add_updstate_avx2$20:
	movl	(%rdx,%rbp), %r12d
	addq	$4, %rbp
	movb	$32, %cl
LA1___add_updstate_avx2$21:
	testq	$2, %rbx
	je  	LA1___add_updstate_avx2$19
	movzwq	(%rdx,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	addq	$2, %rbp
	addb	$16, %cl
LA1___add_updstate_avx2$19:
	testq	$1, %rbx
	je  	LA1___add_updstate_avx2$17
	movzbq	(%rdx,%rbp), %r14
	shlq	%cl, %r14
	addq	%r14, %r12
	incq	%rbp
LA1___add_updstate_avx2$18:
	jmp 	LA1___add_updstate_avx2$17
LA1___add_updstate_avx2$16:
	movq	(%rdx,%rbp), %r12
	addq	$8, %rbp
LA1___add_updstate_avx2$17:
	addq	%r9, %rbx
	movb	%dil, %cl
	shlb	$3, %cl
	shlq	%cl, %r12
	xorq	%r12, (%r10,%r9)
	cmpq	$8, %rbx
	jnb 	LA1___add_updstate_avx2$14
	movq	%rbp, %rsi
	movq	%r8, %r9
	jmp 	LA1___add_updstate_avx2$13
LA1___add_updstate_avx2$14:
	addq	$8, %rsi
	subq	%rdi, %rsi
	addq	$8, %r9
LA1___add_updstate_avx2$15:
LA1___add_updstate_avx2$13:
	movq	%r9, %rcx
	jmp 	LA1___add_updstate_avx2$11
LA1___add_updstate_avx2$12:
	vmovdqu	(%r10,%r9), %ymm0
	vmovdqu	(%rdx,%rsi), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10,%r9)
	movq	%rcx, %r9
	addq	$32, %rsi
LA1___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%r8, %rcx
	jbe 	LA1___add_updstate_avx2$12
	movq	%r9, %rcx
	jmp 	LA1___add_updstate_avx2$9
LA1___add_updstate_avx2$10:
	movq	(%rdx,%rsi), %rdi
	xorq	%rdi, (%r10,%r9)
	movq	%rcx, %r9
	addq	$8, %rsi
LA1___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	LA1___add_updstate_avx2$10
	cmpq	%r8, %r9
	jnb 	LA1___add_updstate_avx2$2
	movq	%r8, %rdi
	andq	$7, %rdi
	cmpq	$8, %rdi
	jnb 	LA1___add_updstate_avx2$3
	testq	$4, %rdi
	jne 	LA1___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1___add_updstate_avx2$8
LA1___add_updstate_avx2$7:
	movl	(%rdx,%rsi), %ebp
	addq	$4, %rsi
	movb	$32, %cl
LA1___add_updstate_avx2$8:
	testq	$2, %rdi
	je  	LA1___add_updstate_avx2$6
	movzwq	(%rdx,%rsi), %r14
	shlq	%cl, %r14
	addq	%r14, %rbp
	addq	$2, %rsi
	addb	$16, %cl
LA1___add_updstate_avx2$6:
	testq	$1, %rdi
	je  	LA1___add_updstate_avx2$4
	movzbq	(%rdx,%rsi), %rdi
	shlq	%cl, %rdi
	addq	%rdi, %rbp
	incq	%rsi
LA1___add_updstate_avx2$5:
	jmp 	LA1___add_updstate_avx2$4
LA1___add_updstate_avx2$3:
	movq	(%rdx,%rsi), %rbp
	addq	$8, %rsi
LA1___add_updstate_avx2$4:
	xorq	%rbp, (%r10,%r9)
LA1___add_updstate_avx2$2:
	movq	%r8, %r9
	ret
L_squeeze_m_updstate_avx2$1:
	movq	200(%r11), %rcx
	call	L_ststatus_data$1
L_squeeze_m_updstate_avx2$9:
	movq	%r11, %r10
	movq	%r11, 8(%rsp)
	cmpq	$0, %r9
	jne 	L_squeeze_m_updstate_avx2$7
	call	L_keccakf1600_st25_avx2$1
L_squeeze_m_updstate_avx2$8:
	movq	$0, %r9
L_squeeze_m_updstate_avx2$7:
	addq	%r9, %rax
	jmp 	L_squeeze_m_updstate_avx2$3
L_squeeze_m_updstate_avx2$4:
	call	L_dump_m_updstate_avx2$1
L_squeeze_m_updstate_avx2$6:
	movq	%r8, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rdi, 32(%rsp)
	call	L_keccakf1600_st25_avx2$1
L_squeeze_m_updstate_avx2$5:
	movq	16(%rsp), %r8
	movq	24(%rsp), %rax
	movq	32(%rsp), %rdi
	subq	%r8, %rax
	movq	$0, %r9
L_squeeze_m_updstate_avx2$3:
	cmpq	%rax, %r8
	jb  	L_squeeze_m_updstate_avx2$4
	movq	%rax, %r8
	call	L_dump_m_updstate_avx2$1
L_squeeze_m_updstate_avx2$2:
	movq	8(%rsp), %r10
	movb	%r9b, 200(%r10)
	ret
L_dump_m_updstate_avx2$1:
	movq	%r9, %rsi
	andq	$7, %rsi
	cmpq	$0, %rsi
	je  	L_dump_m_updstate_avx2$10
	movq	%r8, %r11
	subq	%r9, %r11
	shrq	$3, %r9
	shlq	$3, %r9
	movq	(%r10,%r9), %rdx
	movb	%sil, %cl
	shlb	$3, %cl
	shrq	%cl, %rdx
	movq	%rdi, %rcx
	cmpq	$8, %r11
	jnb 	L_dump_m_updstate_avx2$13
	testq	$4, %r11
	je  	L_dump_m_updstate_avx2$17
	movl	%edx, (%rcx)
	addq	$4, %rcx
	shrq	$32, %rdx
L_dump_m_updstate_avx2$17:
	testq	$2, %r11
	je  	L_dump_m_updstate_avx2$16
	movw	%dx, (%rcx)
	addq	$2, %rcx
	shrq	$16, %rdx
L_dump_m_updstate_avx2$16:
	testq	$1, %r11
	je  	L_dump_m_updstate_avx2$14
	movb	%dl, (%rcx)
	incq	%rcx
L_dump_m_updstate_avx2$15:
	jmp 	L_dump_m_updstate_avx2$14
L_dump_m_updstate_avx2$13:
	movq	%rdx, (%rcx)
	addq	$8, %rcx
L_dump_m_updstate_avx2$14:
	addq	%rsi, %r11
	cmpq	$8, %r11
	jnb 	L_dump_m_updstate_avx2$11
	movq	%rcx, %rdi
	movq	%r8, %r9
	jmp 	L_dump_m_updstate_avx2$10
L_dump_m_updstate_avx2$11:
	addq	$8, %rdi
	subq	%rsi, %rdi
	addq	$8, %r9
L_dump_m_updstate_avx2$12:
L_dump_m_updstate_avx2$10:
	movq	%r9, %rcx
	jmp 	L_dump_m_updstate_avx2$8
L_dump_m_updstate_avx2$9:
	movq	(%r10,%r9), %rdx
	movq	%rdx, (%rdi)
	movq	%rcx, %r9
	addq	$8, %rdi
L_dump_m_updstate_avx2$8:
	addq	$8, %rcx
	cmpq	%r8, %rcx
	jbe 	L_dump_m_updstate_avx2$9
	cmpq	%r8, %r9
	jnb 	L_dump_m_updstate_avx2$2
	movq	%r8, %rcx
	andq	$7, %rcx
	movq	(%r10,%r9), %rdx
	cmpq	$8, %rcx
	jnb 	L_dump_m_updstate_avx2$3
	testq	$4, %rcx
	je  	L_dump_m_updstate_avx2$7
	movl	%edx, (%rdi)
	addq	$4, %rdi
	shrq	$32, %rdx
L_dump_m_updstate_avx2$7:
	testq	$2, %rcx
	je  	L_dump_m_updstate_avx2$6
	movw	%dx, (%rdi)
	addq	$2, %rdi
	shrq	$16, %rdx
L_dump_m_updstate_avx2$6:
	testq	$1, %rcx
	je  	L_dump_m_updstate_avx2$2
	movb	%dl, (%rdi)
	incq	%rdi
L_dump_m_updstate_avx2$5:
	jmp 	L_dump_m_updstate_avx2$2
L_dump_m_updstate_avx2$3:
	movq	%rdx, (%rdi)
	addq	$8, %rdi
L_dump_m_updstate_avx2$4:
L_dump_m_updstate_avx2$2:
	movq	%r8, %r9
	ret
L_finish_updstate_avx2$1:
	movq	200(%r11), %rcx
	call	L_ststatus_data$1
L_finish_updstate_avx2$2:
	xorb	%r10b, (%r11,%r9)
	xorb	$128, -1(%r11,%r8)
	andl	$-16711936, 200(%r11)
	ret
L_ststatus_data$1:
	movq	%rcx, %r9
	andq	$255, %r9
	shrq	$8, %rcx
	movq	%rcx, %r8
	andq	$255, %r8
	incq	%r8
	shlq	$3, %r8
	movq	$200, %r10
	cmpq	$200, %r8
	cmovnbe	%r10, %r8
	movq	$0, %r10
	cmpq	%r9, %r8
	cmovbe	%r10, %r9
	shrq	$8, %rcx
	movb	%cl, %r10b
	ret
L_init_updstate_avx2$1:
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11)
	vmovdqu	%ymm0, 32(%r11)
	vmovdqu	%ymm0, 64(%r11)
	vmovdqu	%ymm0, 96(%r11)
	vmovdqu	%ymm0, 128(%r11)
	vmovdqu	%ymm0, 160(%r11)
	movq	$0, 192(%r11)
	movzbq	%cl, %rcx
	shlq	$8, %rcx
	decb	%sil
	movzbq	%sil, %rsi
	addq	%rsi, %rcx
	shlq	$8, %rcx
	movq	%rcx, 200(%r11)
	ret
L_keccakf1600_st25_avx2$1:
	vpbroadcastq	(%r10), %ymm11
	vmovdqu	8(%r10), %ymm5
	vmovq	40(%r10), %xmm0
	vmovdqu	48(%r10), %ymm1
	vmovq	80(%r10), %xmm2
	vmovdqu	88(%r10), %ymm3
	movq	120(%r10), %r9
	vpinsrq	$1, %r9, %xmm0, %xmm0
	vmovdqu	128(%r10), %ymm4
	movq	160(%r10), %r9
	vpinsrq	$1, %r9, %xmm2, %xmm2
	vinserti128	$1, %xmm0, %ymm2, %ymm0
	vmovdqu	168(%r10), %ymm12
	vpblendd	$195, %ymm4, %ymm1, %ymm2
	vpblendd	$195, %ymm3, %ymm12, %ymm6
	vpblendd	$195, %ymm1, %ymm3, %ymm7
	vpblendd	$240, %ymm6, %ymm2, %ymm1
	vpblendd	$240, %ymm2, %ymm6, %ymm3
	vpblendd	$195, %ymm12, %ymm4, %ymm4
	vpblendd	$240, %ymm7, %ymm4, %ymm2
	vpblendd	$240, %ymm4, %ymm7, %ymm4
	call	L__keccakf1600_avx2$1
L_keccakf1600_st25_avx2$2:
	vmovlpd	%xmm11, (%r10)
	vmovdqu	%ymm5, 8(%r10)
	vpblendd	$240, %ymm3, %ymm1, %ymm5
	vpblendd	$240, %ymm1, %ymm3, %ymm6
	vpblendd	$240, %ymm4, %ymm2, %ymm7
	vpblendd	$240, %ymm2, %ymm4, %ymm1
	vextracti128	$1, %ymm0, %xmm2
	vmovlpd	%xmm2, 40(%r10)
	vpblendd	$195, %ymm1, %ymm5, %ymm3
	vmovdqu	%ymm3, 48(%r10)
	vmovlpd	%xmm0, 80(%r10)
	vpblendd	$195, %ymm6, %ymm1, %ymm3
	vmovdqu	%ymm3, 88(%r10)
	vmovhpd	%xmm2, 120(%r10)
	vpblendd	$195, %ymm5, %ymm7, %ymm3
	vmovdqu	%ymm3, 128(%r10)
	vmovhpd	%xmm0, 160(%r10)
	vpblendd	$195, %ymm7, %ymm6, %ymm3
	vmovdqu	%ymm3, 168(%r10)
	ret
L__keccakf1600_avx2$1:
	leaq	glob_data + 115360(%rip), %rcx
	movq	$0, %r9
L__keccakf1600_avx2$2:
	vpshufd	$78, %ymm0, %ymm6
	vpxor	%ymm1, %ymm2, %ymm7
	vpxor	%ymm4, %ymm3, %ymm10
	vpxor	%ymm5, %ymm7, %ymm7
	vpxor	%ymm10, %ymm7, %ymm9
	vpermq	$147, %ymm9, %ymm7
	vpxor	%ymm0, %ymm6, %ymm6
	vpermq	$78, %ymm6, %ymm8
	vpsrlq	$63, %ymm9, %ymm10
	vpaddq	%ymm9, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpermq	$57, %ymm10, %ymm9
	vpxor	%ymm7, %ymm10, %ymm10
	vpermq	$0, %ymm10, %ymm10
	vpxor	%ymm11, %ymm6, %ymm6
	vpxor	%ymm8, %ymm6, %ymm8
	vpsrlq	$63, %ymm8, %ymm13
	vpaddq	%ymm8, %ymm8, %ymm6
	vpor	%ymm13, %ymm6, %ymm12
	vpxor	%ymm10, %ymm0, %ymm0
	vpxor	%ymm10, %ymm11, %ymm6
	vpblendd	$192, %ymm12, %ymm9, %ymm9
	vpblendd	$3, %ymm8, %ymm7, %ymm7
	vpxor	%ymm7, %ymm9, %ymm9
	vpsllvq	glob_data + 256(%rip), %ymm0, %ymm7
	vpsrlvq	glob_data + 64(%rip), %ymm0, %ymm0
	vpor	%ymm7, %ymm0, %ymm0
	vpxor	%ymm9, %ymm1, %ymm1
	vpsllvq	glob_data + 320(%rip), %ymm1, %ymm7
	vpsrlvq	glob_data + 128(%rip), %ymm1, %ymm1
	vpor	%ymm7, %ymm1, %ymm1
	vpxor	%ymm9, %ymm3, %ymm3
	vpsllvq	glob_data + 352(%rip), %ymm3, %ymm7
	vpsrlvq	glob_data + 160(%rip), %ymm3, %ymm3
	vpor	%ymm7, %ymm3, %ymm10
	vpxor	%ymm9, %ymm2, %ymm2
	vpsllvq	glob_data + 384(%rip), %ymm2, %ymm3
	vpsrlvq	glob_data + 192(%rip), %ymm2, %ymm2
	vpor	%ymm3, %ymm2, %ymm2
	vpxor	%ymm9, %ymm4, %ymm4
	vpermq	$141, %ymm0, %ymm3
	vpermq	$141, %ymm1, %ymm7
	vpsllvq	glob_data + 416(%rip), %ymm4, %ymm0
	vpsrlvq	glob_data + 224(%rip), %ymm4, %ymm8
	vpor	%ymm0, %ymm8, %ymm8
	vpxor	%ymm9, %ymm5, %ymm11
	vpermq	$27, %ymm10, %ymm5
	vpermq	$114, %ymm2, %ymm9
	vpsllvq	glob_data + 288(%rip), %ymm11, %ymm0
	vpsrlvq	glob_data + 96(%rip), %ymm11, %ymm10
	vpor	%ymm0, %ymm10, %ymm10
	vpsrldq	$8, %ymm8, %ymm0
	vpandn	%ymm0, %ymm8, %ymm1
	vpblendd	$12, %ymm9, %ymm10, %ymm2
	vpblendd	$12, %ymm10, %ymm7, %ymm0
	vpblendd	$12, %ymm7, %ymm3, %ymm4
	vpblendd	$12, %ymm3, %ymm10, %ymm11
	vpblendd	$48, %ymm7, %ymm2, %ymm2
	vpblendd	$48, %ymm5, %ymm0, %ymm0
	vpblendd	$48, %ymm10, %ymm4, %ymm4
	vpblendd	$48, %ymm9, %ymm11, %ymm11
	vpblendd	$192, %ymm5, %ymm2, %ymm2
	vpblendd	$192, %ymm9, %ymm0, %ymm0
	vpblendd	$192, %ymm9, %ymm4, %ymm4
	vpblendd	$192, %ymm7, %ymm11, %ymm11
	vpandn	%ymm0, %ymm2, %ymm2
	vpandn	%ymm11, %ymm4, %ymm4
	vpblendd	$12, %ymm10, %ymm5, %ymm12
	vpblendd	$12, %ymm5, %ymm3, %ymm0
	vpxor	%ymm3, %ymm2, %ymm2
	vpblendd	$48, %ymm3, %ymm12, %ymm12
	vpblendd	$48, %ymm7, %ymm0, %ymm0
	vpxor	%ymm5, %ymm4, %ymm4
	vpblendd	$192, %ymm7, %ymm12, %ymm12
	vpblendd	$192, %ymm10, %ymm0, %ymm0
	vpandn	%ymm0, %ymm12, %ymm12
	vpxor	%ymm9, %ymm12, %ymm12
	vpermq	$30, %ymm8, %ymm0
	vpblendd	$48, %ymm6, %ymm0, %ymm0
	vpermq	$57, %ymm8, %ymm11
	vpblendd	$192, %ymm6, %ymm11, %ymm11
	vpandn	%ymm0, %ymm11, %ymm11
	vpblendd	$12, %ymm5, %ymm7, %ymm0
	vpblendd	$12, %ymm7, %ymm9, %ymm13
	vpblendd	$48, %ymm9, %ymm0, %ymm0
	vpblendd	$48, %ymm3, %ymm13, %ymm13
	vpblendd	$192, %ymm3, %ymm0, %ymm0
	vpblendd	$192, %ymm5, %ymm13, %ymm13
	vpandn	%ymm13, %ymm0, %ymm0
	vpxor	%ymm10, %ymm0, %ymm0
	vpermq	$0, %ymm1, %ymm13
	vpermq	$27, %ymm2, %ymm1
	vpermq	$141, %ymm4, %ymm2
	vpermq	$114, %ymm12, %ymm4
	vpblendd	$12, %ymm3, %ymm9, %ymm12
	vpblendd	$12, %ymm9, %ymm5, %ymm9
	vpblendd	$48, %ymm5, %ymm12, %ymm12
	vpblendd	$48, %ymm10, %ymm9, %ymm9
	vpblendd	$192, %ymm10, %ymm12, %ymm10
	vpblendd	$192, %ymm3, %ymm9, %ymm9
	vpandn	%ymm9, %ymm10, %ymm3
	vpxor	%ymm13, %ymm6, %ymm6
	vpxor	%ymm8, %ymm11, %ymm5
	vpxor	%ymm7, %ymm3, %ymm3
	vpbroadcastq	(%rcx,%r9,8), %ymm7
	vpxor	%ymm7, %ymm6, %ymm11
	incq	%r9
	cmpq	$24, %r9
	jb  	L__keccakf1600_avx2$2
	ret
L__masked_mzd_to_char_array$1:
	movq	$24, %r11
	jmp 	L__masked_mzd_to_char_array$2
L__masked_mzd_to_char_array$3:
	movq	(%rcx,%r11), %rdx
	bswapq	%rdx
	movq	$24, %rsi
	subq	%r11, %rsi
	movq	(%rdi,%rsi), %rsi
	xorq	%rdx, %rsi
	movq	%rsi, (%rax,%r8)
	addq	$8, %r8
	addq	$-8, %r11
L__masked_mzd_to_char_array$2:
	cmpq	$0, %r11
	jnbe	L__masked_mzd_to_char_array$3
	movq	(%rcx,%r11), %rcx
	bswapq	%rcx
	movq	$24, %rdx
	subq	%r11, %rdx
	movq	(%rdi,%rdx), %rdx
	xorq	%rcx, %rdx
	movq	%rdx, (%rax,%r8)
	ret
L_masked_mzd_from_char_array$1:
	movq	(%rcx,%rdx), %rax
	bswapq	%rax
	movq	%rax, 24(%r9)
	addq	$8, %rdx
	movq	(%rcx,%rdx), %rax
	bswapq	%rax
	movq	%rax, 16(%r9)
	addq	$8, %rdx
	movq	(%rcx,%rdx), %rax
	bswapq	%rax
	movq	%rax, 8(%r9)
	addq	$8, %rdx
	movq	(%rcx,%rdx), %rax
	bswapq	%rax
	movq	%rax, (%r9)
	ret
L_mzd_from_char_array$1:
	movq	24(%rcx), %rax
	bswapq	%rax
	movq	%rax, (%r9)
	movq	16(%rcx), %rax
	bswapq	%rax
	movq	%rax, 8(%r9)
	movq	8(%rcx), %rax
	bswapq	%rax
	movq	%rax, 16(%r9)
	movq	(%rcx), %rax
	bswapq	%rax
	movq	%rax, 24(%r9)
	ret
L__sbox_uint64_lowmc_256_256_4$1:
	vpand	glob_data + 115328(%rip), %ymm0, %ymm1
	vpand	glob_data + 115296(%rip), %ymm0, %ymm2
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$2, %ymm1, %ymm1
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm3, %ymm1, %ymm1
	vpor	%ymm4, %ymm2, %ymm2
	vpand	%ymm0, %ymm2, %ymm3
	vpand	%ymm0, %ymm1, %ymm4
	vpand	%ymm2, %ymm1, %ymm5
	vpxor	%ymm1, %ymm3, %ymm3
	vpxor	%ymm2, %ymm4, %ymm4
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	%ymm0, %ymm5, %ymm5
	vpxor	%ymm1, %ymm5, %ymm5
	vpxor	%ymm2, %ymm5, %ymm2
	vpsllq	$62, %ymm3, %ymm0
	vpsllq	$63, %ymm4, %ymm5
	vpsrlq	$2, %ymm3, %ymm1
	vpsrlq	$1, %ymm4, %ymm3
	vpermq	$57, %ymm0, %ymm0
	vpermq	$57, %ymm5, %ymm5
	vpor	%ymm0, %ymm1, %ymm0
	vpor	%ymm5, %ymm3, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vpxor	%ymm2, %ymm0, %ymm0
	ret
L_picnic3_aux_sbox_bitsliced$1:
	movq	%rsi, 320(%rsp)
	movq	(%rcx), %rsi
	movq	%rsi, 32(%rsp)
	movq	8(%rcx), %rsi
	movq	%rsi, 40(%rsp)
	movq	16(%rcx), %rsi
	movq	%rsi, 48(%rsp)
	movq	24(%rcx), %rcx
	movq	%rcx, 56(%rsp)
	movq	(%r10), %rcx
	movq	%rcx, 64(%rsp)
	movq	8(%r10), %rcx
	movq	%rcx, 72(%rsp)
	movq	16(%r10), %rcx
	movq	%rcx, 80(%rsp)
	movq	24(%r10), %rcx
	movq	%rcx, 88(%rsp)
	vmovdqu	32(%rsp), %ymm0
	vpand	glob_data + 115328(%rip), %ymm0, %ymm1
	vpand	glob_data + 115296(%rip), %ymm0, %ymm2
	vpand	glob_data + 115264(%rip), %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vpsrlq	$62, %ymm1, %ymm0
	vpsllq	$2, %ymm1, %ymm1
	vpermq	$147, %ymm0, %ymm0
	vpor	%ymm0, %ymm1, %ymm3
	vmovdqu	%ymm3, 96(%rsp)
	vpsrlq	$63, %ymm2, %ymm3
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpor	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rsp)
	leaq	160(%rsp), %rcx
	leaq	64(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$42:
	leaq	64(%rsp), %rsi
	leaq	glob_data + 115328(%rip), %r10
	leaq	160(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$41:
	leaq	192(%rsp), %rsi
	leaq	glob_data + 115296(%rip), %r10
	leaq	160(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$40:
	leaq	224(%rsp), %rsi
	leaq	glob_data + 115264(%rip), %r10
	leaq	160(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$39:
	leaq	160(%rsp), %rcx
	leaq	64(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$38:
	leaq	64(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_mzd_shift2_left_uint64_256$1
L_picnic3_aux_sbox_bitsliced$37:
	leaq	160(%rsp), %rcx
	leaq	192(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$36:
	leaq	192(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_mzd_shift1_left_uint64_256$1
L_picnic3_aux_sbox_bitsliced$35:
	leaq	256(%rsp), %rsi
	leaq	96(%rsp), %r10
	leaq	128(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$34:
	leaq	288(%rsp), %rsi
	leaq	192(%rsp), %r10
	leaq	256(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$33:
	leaq	192(%rsp), %rsi
	leaq	64(%rsp), %r10
	leaq	96(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$32:
	leaq	160(%rsp), %rcx
	leaq	256(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$31:
	leaq	256(%rsp), %rsi
	leaq	160(%rsp), %r10
	leaq	32(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$30:
	leaq	160(%rsp), %rcx
	leaq	256(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$29:
	leaq	256(%rsp), %rsi
	leaq	160(%rsp), %r10
	leaq	224(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$28:
	leaq	224(%rsp), %rcx
	leaq	288(%rsp), %rsi
	call	L_mzd_shift2_right_uint64_256$1
L_picnic3_aux_sbox_bitsliced$27:
	leaq	288(%rsp), %rcx
	leaq	192(%rsp), %rsi
	call	L_mzd_shift1_right_uint64_256$1
L_picnic3_aux_sbox_bitsliced$26:
	leaq	160(%rsp), %rcx
	leaq	224(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$25:
	leaq	224(%rsp), %rsi
	leaq	160(%rsp), %r10
	leaq	288(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$24:
	leaq	192(%rsp), %rsi
	leaq	224(%rsp), %r10
	leaq	256(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$23:
	leaq	256(%rsp), %rsi
	leaq	96(%rsp), %r10
	leaq	128(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$22:
	leaq	288(%rsp), %rsi
	leaq	128(%rsp), %r10
	leaq	32(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$21:
	leaq	224(%rsp), %rsi
	leaq	32(%rsp), %r10
	leaq	96(%rsp), %rdi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$20:
	leaq	160(%rsp), %rcx
	leaq	224(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$19:
	leaq	224(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_mzd_shift2_right_uint64_256$1
L_picnic3_aux_sbox_bitsliced$18:
	leaq	160(%rsp), %rcx
	leaq	288(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$17:
	leaq	288(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_mzd_shift1_right_uint64_256$1
L_picnic3_aux_sbox_bitsliced$16:
	leaq	160(%rsp), %rcx
	leaq	224(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$15:
	leaq	224(%rsp), %rsi
	leaq	160(%rsp), %r10
	leaq	288(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$14:
	leaq	160(%rsp), %rcx
	leaq	224(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$13:
	leaq	224(%rsp), %rsi
	leaq	160(%rsp), %r10
	leaq	256(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$12:
	leaq	160(%rsp), %rcx
	leaq	192(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$11:
	leaq	192(%rsp), %rsi
	leaq	160(%rsp), %r10
	leaq	224(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$10:
	movq	%rdx, %rsi
	addq	$34816, %rsi
	leaq	256(%rsp), %r10
	call	L_mzd_from_bitstream_tapes$1
L_picnic3_aux_sbox_bitsliced$9:
	leaq	160(%rsp), %rcx
	leaq	192(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$8:
	leaq	192(%rsp), %rsi
	leaq	160(%rsp), %r10
	leaq	256(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$7:
	movq	%rdx, %rsi
	addq	$30720, %rsi
	leaq	288(%rsp), %r10
	call	L_mzd_from_bitstream_tapes$1
L_picnic3_aux_sbox_bitsliced$6:
	leaq	160(%rsp), %rcx
	leaq	192(%rsp), %r10
	call	L_mzd_copy_uint64_256$1
L_picnic3_aux_sbox_bitsliced$5:
	leaq	192(%rsp), %rsi
	leaq	160(%rsp), %r10
	leaq	288(%rsp), %rdi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$4:
	addq	$30720, %rdx
	leaq	192(%rsp), %r10
	call	L_mzd_to_bitstream_tapes$1
L_picnic3_aux_sbox_bitsliced$3:
	movq	320(%rsp), %rdx
	addq	$32768, %rdx
	leaq	192(%rsp), %r10
	call	L_mzd_to_bitstream_tapes$1
L_picnic3_aux_sbox_bitsliced$2:
	ret
L_mzd_to_bitstream_msgs2$1:
	movq	$255, %r9
	movq	$3, %r8
	jmp 	L_mzd_to_bitstream_msgs2$4
L_mzd_to_bitstream_msgs2$5:
	movq	(%r10,%r8,8), %rdi
	movq	$64, %r11
	leaq	-16(%rsp), %rsp
	call	L_bitstream_put_bits_msgs2$1
L_mzd_to_bitstream_msgs2$6:
	leaq	16(%rsp), %rsp
	decq	%r8
	addq	$-64, %r9
	addq	$64, %rsi
L_mzd_to_bitstream_msgs2$4:
	cmpq	$64, %r9
	jnb 	L_mzd_to_bitstream_msgs2$5
	cmpq	$0, %r9
	jbe 	L_mzd_to_bitstream_msgs2$2
	movq	(%r10,%r8,8), %rdi
	movq	$64, %rcx
	subq	%r9, %rcx
	shrq	%cl, %rdi
	movq	%r9, %r11
	leaq	-16(%rsp), %rsp
	call	L_bitstream_put_bits_msgs2$1
L_mzd_to_bitstream_msgs2$3:
	leaq	16(%rsp), %rsp
L_mzd_to_bitstream_msgs2$2:
	ret
L_bitstream_put_bits_msgs2$1:
	movq	%rsi, %r13
	andq	$7, %r13
	movq	%rsi, %rcx
	shrq	$3, %rcx
	movq	%rcx, 8(%rsp)
	cmpq	$0, %r13
	jbe 	L_bitstream_put_bits_msgs2$3
	movq	$8, %rbx
	subq	%r13, %rbx
	cmpq	%rbx, %r11
	jb  	L_bitstream_put_bits_msgs2$6
	movq	%rbx, %rbp
	jmp 	L_bitstream_put_bits_msgs2$7
L_bitstream_put_bits_msgs2$6:
	movq	%r11, %rbp
L_bitstream_put_bits_msgs2$7:
	movq	$255, %r12
	movq	%rbx, %rcx
	shlq	%cl, %r12
	movq	$255, %r14
	movq	%r13, %rcx
	addq	%rbp, %rcx
	shrq	%cl, %r14
	orq 	%r14, %r12
	movq	8(%rsp), %rcx
	movb	(%rax,%rcx), %r13b
	andb	%r12b, %r13b
	movb	%r13b, (%rax,%rcx)
	movq	%rcx, 16(%rsp)
	movq	%rdi, %r12
	movq	%r11, %rcx
	subq	%rbp, %rcx
	shrq	%cl, %r12
	movq	%rbx, %rcx
	subq	%rbp, %rcx
	shlq	%cl, %r12
	movq	16(%rsp), %rcx
	movb	(%rax,%rcx), %r13b
	orb 	%r12b, %r13b
	movb	%r13b, (%rax,%rcx)
	subq	%rbp, %r11
	incq	%rcx
	movq	%rcx, 8(%rsp)
L_bitstream_put_bits_msgs2$5:
	jmp 	L_bitstream_put_bits_msgs2$3
L_bitstream_put_bits_msgs2$4:
	movq	%rdi, %rbx
	movq	%r11, %rcx
	addq	$-8, %rcx
	shrq	%cl, %rbx
	movq	8(%rsp), %rcx
	movb	%bl, (%rax,%rcx)
	addq	$-8, %r11
	incq	%rcx
	movq	%rcx, 8(%rsp)
L_bitstream_put_bits_msgs2$3:
	cmpq	$8, %r11
	jnb 	L_bitstream_put_bits_msgs2$4
	cmpq	$0, %r11
	jbe 	L_bitstream_put_bits_msgs2$2
	movq	8(%rsp), %rcx
	movb	(%rax,%rcx), %bl
	movq	$255, %r12
	movq	%r11, %rcx
	shrq	%cl, %r12
	andb	%r12b, %bl
	movq	$1, %r12
	movq	%r11, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rdi
	movq	$8, %rcx
	subq	%r11, %rcx
	shlq	%cl, %rdi
	orb 	%dil, %bl
	movq	8(%rsp), %rcx
	movb	%bl, (%rax,%rcx)
L_bitstream_put_bits_msgs2$2:
	ret
L_mzd_to_bitstream_msgs$1:
	movq	$255, %r9
	movq	$3, %r8
	jmp 	L_mzd_to_bitstream_msgs$4
L_mzd_to_bitstream_msgs$5:
	movq	(%r10,%r8,8), %rdi
	movq	$64, %r11
	leaq	-16(%rsp), %rsp
	call	L_bitstream_put_bits_msgs$1
L_mzd_to_bitstream_msgs$6:
	leaq	16(%rsp), %rsp
	decq	%r8
	addq	$-64, %r9
	addq	$64, %rsi
L_mzd_to_bitstream_msgs$4:
	cmpq	$64, %r9
	jnb 	L_mzd_to_bitstream_msgs$5
	cmpq	$0, %r9
	jbe 	L_mzd_to_bitstream_msgs$2
	movq	(%r10,%r8,8), %rdi
	movq	$64, %rcx
	subq	%r9, %rcx
	shrq	%cl, %rdi
	movq	%r9, %r11
	leaq	-16(%rsp), %rsp
	call	L_bitstream_put_bits_msgs$1
L_mzd_to_bitstream_msgs$3:
	leaq	16(%rsp), %rsp
L_mzd_to_bitstream_msgs$2:
	ret
L_bitstream_put_bits_msgs$1:
	movq	%rsi, %r13
	andq	$7, %r13
	movq	%rsi, %rcx
	shrq	$3, %rcx
	movq	%rcx, 8(%rsp)
	cmpq	$0, %r13
	jbe 	L_bitstream_put_bits_msgs$3
	movq	$8, %rbx
	subq	%r13, %rbx
	cmpq	%rbx, %r11
	jb  	L_bitstream_put_bits_msgs$6
	movq	%rbx, %rbp
	jmp 	L_bitstream_put_bits_msgs$7
L_bitstream_put_bits_msgs$6:
	movq	%r11, %rbp
L_bitstream_put_bits_msgs$7:
	movq	$255, %r12
	movq	%rbx, %rcx
	shlq	%cl, %r12
	movq	$255, %r14
	movq	%r13, %rcx
	addq	%rbp, %rcx
	shrq	%cl, %r14
	orq 	%r14, %r12
	movq	8(%rsp), %rcx
	movb	(%rax,%rcx), %r13b
	andb	%r12b, %r13b
	movb	%r13b, (%rax,%rcx)
	movq	%rcx, 16(%rsp)
	movq	%rdi, %r12
	movq	%r11, %rcx
	subq	%rbp, %rcx
	shrq	%cl, %r12
	movq	%rbx, %rcx
	subq	%rbp, %rcx
	shlq	%cl, %r12
	movq	16(%rsp), %rcx
	movb	(%rax,%rcx), %bl
	orb 	%r12b, %bl
	movb	%bl, (%rax,%rcx)
	subq	%rbp, %r11
	incq	%rcx
	movq	%rcx, 8(%rsp)
L_bitstream_put_bits_msgs$5:
	jmp 	L_bitstream_put_bits_msgs$3
L_bitstream_put_bits_msgs$4:
	movq	%rdi, %rbx
	movq	%r11, %rcx
	addq	$-8, %rcx
	shrq	%cl, %rbx
	movq	8(%rsp), %rcx
	movb	%bl, (%rax,%rcx)
	addq	$-8, %r11
	incq	%rcx
	movq	%rcx, 8(%rsp)
L_bitstream_put_bits_msgs$3:
	cmpq	$8, %r11
	jnb 	L_bitstream_put_bits_msgs$4
	cmpq	$0, %r11
	jbe 	L_bitstream_put_bits_msgs$2
	movq	8(%rsp), %rcx
	movb	(%rax,%rcx), %bl
	movq	$255, %r12
	movq	%r11, %rcx
	shrq	%cl, %r12
	andb	%r12b, %bl
	movq	$1, %r12
	movq	%r11, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rdi
	movq	$8, %rcx
	subq	%r11, %rcx
	shlq	%cl, %rdi
	orb 	%dil, %bl
	movq	8(%rsp), %rcx
	movb	%bl, (%rax,%rcx)
L_bitstream_put_bits_msgs$2:
	ret
L_mzd_to_bitstream_tapes2$1:
	movq	$255, %rsi
	movq	$3, %r8
	jmp 	L_mzd_to_bitstream_tapes2$4
L_mzd_to_bitstream_tapes2$5:
	movq	(%r10,%r8,8), %rdi
	movq	$64, %r11
	call	L_bitstream_put_bits_tapes2$1
L_mzd_to_bitstream_tapes2$6:
	decq	%r8
	addq	$-64, %rsi
	addq	$64, %rdx
L_mzd_to_bitstream_tapes2$4:
	cmpq	$64, %rsi
	jnb 	L_mzd_to_bitstream_tapes2$5
	cmpq	$0, %rsi
	jbe 	L_mzd_to_bitstream_tapes2$2
	movq	(%r10,%r8,8), %rdi
	movq	$64, %rcx
	subq	%rsi, %rcx
	shrq	%cl, %rdi
	movq	%rsi, %r11
	call	L_bitstream_put_bits_tapes2$1
L_mzd_to_bitstream_tapes2$3:
L_mzd_to_bitstream_tapes2$2:
	ret
L_bitstream_put_bits_tapes2$1:
	movq	%rdx, %r13
	andq	$7, %r13
	movq	%rdx, %r9
	shrq	$3, %r9
	cmpq	$0, %r13
	jbe 	L_bitstream_put_bits_tapes2$3
	movq	$8, %rbx
	subq	%r13, %rbx
	cmpq	%rbx, %r11
	jb  	L_bitstream_put_bits_tapes2$6
	movq	%rbx, %rbp
	jmp 	L_bitstream_put_bits_tapes2$7
L_bitstream_put_bits_tapes2$6:
	movq	%r11, %rbp
L_bitstream_put_bits_tapes2$7:
	movq	%rdx, %r9
	shrq	$3, %r9
	movq	$255, %r12
	movq	%rbx, %rcx
	shlq	%cl, %r12
	movq	$255, %r14
	movq	%r13, %rcx
	addq	%rbp, %rcx
	shrq	%cl, %r14
	orq 	%r14, %r12
	movb	(%rax,%r9), %cl
	andb	%r12b, %cl
	movb	%cl, (%rax,%r9)
	movq	%rdi, %r12
	movq	%r11, %rcx
	subq	%rbp, %rcx
	shrq	%cl, %r12
	movq	%rbx, %rcx
	subq	%rbp, %rcx
	shlq	%cl, %r12
	movb	(%rax,%r9), %cl
	orb 	%r12b, %cl
	movb	%cl, (%rax,%r9)
	subq	%rbp, %r11
	incq	%r9
L_bitstream_put_bits_tapes2$5:
	jmp 	L_bitstream_put_bits_tapes2$3
L_bitstream_put_bits_tapes2$4:
	movq	%rdi, %rbx
	movq	%r11, %rcx
	addq	$-8, %rcx
	shrq	%cl, %rbx
	movb	%bl, (%rax,%r9)
	addq	$-8, %r11
	incq	%r9
L_bitstream_put_bits_tapes2$3:
	cmpq	$8, %r11
	jnb 	L_bitstream_put_bits_tapes2$4
	cmpq	$0, %r11
	jbe 	L_bitstream_put_bits_tapes2$2
	movb	(%rax,%r9), %bl
	movq	$255, %r12
	movq	%r11, %rcx
	shrq	%cl, %r12
	andb	%r12b, %bl
	movq	$1, %r12
	movq	%r11, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rdi
	movq	$8, %rcx
	subq	%r11, %rcx
	shlq	%cl, %rdi
	orb 	%dil, %bl
	movb	%bl, (%rax,%r9)
L_bitstream_put_bits_tapes2$2:
	ret
L_mzd_to_bitstream_tapes$1:
	movq	$255, %rsi
	movq	$3, %r8
	jmp 	L_mzd_to_bitstream_tapes$4
L_mzd_to_bitstream_tapes$5:
	movq	(%r10,%r8,8), %rdi
	movq	$64, %r11
	call	L_bitstream_put_bits_tapes$1
L_mzd_to_bitstream_tapes$6:
	decq	%r8
	addq	$-64, %rsi
	addq	$64, %rdx
L_mzd_to_bitstream_tapes$4:
	cmpq	$64, %rsi
	jnb 	L_mzd_to_bitstream_tapes$5
	cmpq	$0, %rsi
	jbe 	L_mzd_to_bitstream_tapes$2
	movq	(%r10,%r8,8), %rdi
	movq	$64, %rcx
	subq	%rsi, %rcx
	shrq	%cl, %rdi
	movq	%rsi, %r11
	call	L_bitstream_put_bits_tapes$1
L_mzd_to_bitstream_tapes$3:
L_mzd_to_bitstream_tapes$2:
	ret
L_bitstream_put_bits_tapes$1:
	movq	%rdx, %r13
	andq	$7, %r13
	movq	%rdx, %r9
	shrq	$3, %r9
	cmpq	$0, %r13
	jbe 	L_bitstream_put_bits_tapes$3
	movq	$8, %rbx
	subq	%r13, %rbx
	cmpq	%rbx, %r11
	jb  	L_bitstream_put_bits_tapes$6
	movq	%rbx, %rbp
	jmp 	L_bitstream_put_bits_tapes$7
L_bitstream_put_bits_tapes$6:
	movq	%r11, %rbp
L_bitstream_put_bits_tapes$7:
	movq	%rdx, %r9
	shrq	$3, %r9
	movq	$255, %r12
	movq	%rbx, %rcx
	shlq	%cl, %r12
	movq	$255, %r14
	movq	%r13, %rcx
	addq	%rbp, %rcx
	shrq	%cl, %r14
	orq 	%r14, %r12
	movb	(%rax,%r9), %cl
	andb	%r12b, %cl
	movb	%cl, (%rax,%r9)
	movq	%rdi, %r12
	movq	%r11, %rcx
	subq	%rbp, %rcx
	shrq	%cl, %r12
	movq	%rbx, %rcx
	subq	%rbp, %rcx
	shlq	%cl, %r12
	movb	(%rax,%r9), %cl
	orb 	%r12b, %cl
	movb	%cl, (%rax,%r9)
	subq	%rbp, %r11
	incq	%r9
L_bitstream_put_bits_tapes$5:
	jmp 	L_bitstream_put_bits_tapes$3
L_bitstream_put_bits_tapes$4:
	movq	%rdi, %rbx
	movq	%r11, %rcx
	addq	$-8, %rcx
	shrq	%cl, %rbx
	movb	%bl, (%rax,%r9)
	addq	$-8, %r11
	incq	%r9
L_bitstream_put_bits_tapes$3:
	cmpq	$8, %r11
	jnb 	L_bitstream_put_bits_tapes$4
	cmpq	$0, %r11
	jbe 	L_bitstream_put_bits_tapes$2
	movb	(%rax,%r9), %bl
	movq	$255, %r12
	movq	%r11, %rcx
	shrq	%cl, %r12
	andb	%r12b, %bl
	movq	$1, %r12
	movq	%r11, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rdi
	movq	$8, %rcx
	subq	%r11, %rcx
	shlq	%cl, %rdi
	orb 	%dil, %bl
	movb	%bl, (%rax,%r9)
L_bitstream_put_bits_tapes$2:
	ret
L_mzd_from_bitstream_tapes_verify$1:
	movq	$255, %r9
	movq	$3, %r8
	jmp 	L_mzd_from_bitstream_tapes_verify$4
L_mzd_from_bitstream_tapes_verify$5:
	movq	$64, %r11
	call	L_bitstream_get_bits3$1
L_mzd_from_bitstream_tapes_verify$6:
	movq	%rdi, (%r10,%r8,8)
	decq	%r8
	addq	$-64, %r9
	addq	$64, %rsi
L_mzd_from_bitstream_tapes_verify$4:
	cmpq	$64, %r9
	jnb 	L_mzd_from_bitstream_tapes_verify$5
	cmpq	$0, %r9
	jbe 	L_mzd_from_bitstream_tapes_verify$2
	movq	%r9, %r11
	call	L_bitstream_get_bits3$1
L_mzd_from_bitstream_tapes_verify$3:
	movq	$64, %rcx
	subq	%r9, %rcx
	shlq	%cl, %rdi
	movq	%rdi, (%r10,%r8,8)
L_mzd_from_bitstream_tapes_verify$2:
	ret
L_bitstream_get_bits3$1:
	movq	%rsi, %rdi
	shrq	$3, %rdi
	movb	(%rdx,%rdi), %cl
	movzbq	%cl, %rdi
	movq	%rsi, %rcx
	andq	$7, %rcx
	movq	$8, %rbx
	subq	%rcx, %rbx
	movq	$1, %r12
	movq	%rbx, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rdi
	cmpq	%r11, %rbx
	jb  	L_bitstream_get_bits3$2
	movq	%rbx, %rcx
	subq	%r11, %rcx
	shrq	%cl, %rdi
	jmp 	L_bitstream_get_bits3$3
L_bitstream_get_bits3$2:
	subq	%rbx, %r11
	movq	%rsi, %rbx
	shrq	$3, %rbx
	incq	%rbx
	jmp 	L_bitstream_get_bits3$5
L_bitstream_get_bits3$6:
	movb	(%rdx,%rbx), %cl
	movzbq	%cl, %rcx
	shlq	$8, %rdi
	orq 	%rcx, %rdi
	addq	$-8, %r11
	incq	%rbx
L_bitstream_get_bits3$5:
	cmpq	$8, %r11
	jnb 	L_bitstream_get_bits3$6
	cmpq	$0, %r11
	jbe 	L_bitstream_get_bits3$3
	movq	%r11, %rcx
	shlq	%cl, %rdi
	movb	(%rdx,%rbx), %cl
	movzbq	%cl, %rbx
	movq	$8, %rcx
	subq	%r11, %rcx
	shrq	%cl, %rbx
	movq	$1, %r12
	movq	%r11, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rbx
	orq 	%rbx, %rdi
L_bitstream_get_bits3$4:
L_bitstream_get_bits3$3:
	ret
L_mzd_from_bitstream_msgs2$1:
	movq	$255, %r9
	movq	$3, %r8
	jmp 	L_mzd_from_bitstream_msgs2$4
L_mzd_from_bitstream_msgs2$5:
	movq	$64, %r11
	call	L_bitstream_get_bits_msgs$1
L_mzd_from_bitstream_msgs2$6:
	movq	%rdi, (%r10,%r8,8)
	decq	%r8
	addq	$-64, %r9
	addq	$64, %rsi
L_mzd_from_bitstream_msgs2$4:
	cmpq	$64, %r9
	jnb 	L_mzd_from_bitstream_msgs2$5
	cmpq	$0, %r9
	jbe 	L_mzd_from_bitstream_msgs2$2
	movq	%r9, %r11
	call	L_bitstream_get_bits_msgs$1
L_mzd_from_bitstream_msgs2$3:
	movq	$64, %rcx
	subq	%r9, %rcx
	shlq	%cl, %rdi
	movq	%rdi, (%r10,%r8,8)
L_mzd_from_bitstream_msgs2$2:
	ret
L_bitstream_get_bits_msgs$1:
	movq	%rsi, %rdi
	shrq	$3, %rdi
	movb	(%rax,%rdi), %cl
	movzbq	%cl, %rdi
	movq	%rsi, %rcx
	andq	$7, %rcx
	movq	$8, %rbx
	subq	%rcx, %rbx
	movq	$1, %r12
	movq	%rbx, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rdi
	cmpq	%r11, %rbx
	jb  	L_bitstream_get_bits_msgs$2
	movq	%rbx, %rcx
	subq	%r11, %rcx
	shrq	%cl, %rdi
	jmp 	L_bitstream_get_bits_msgs$3
L_bitstream_get_bits_msgs$2:
	subq	%rbx, %r11
	movq	%rsi, %rbx
	shrq	$3, %rbx
	incq	%rbx
	jmp 	L_bitstream_get_bits_msgs$5
L_bitstream_get_bits_msgs$6:
	movb	(%rax,%rbx), %cl
	movzbq	%cl, %rcx
	shlq	$8, %rdi
	orq 	%rcx, %rdi
	addq	$-8, %r11
	incq	%rbx
L_bitstream_get_bits_msgs$5:
	cmpq	$8, %r11
	jnb 	L_bitstream_get_bits_msgs$6
	cmpq	$0, %r11
	jbe 	L_bitstream_get_bits_msgs$3
	movq	%r11, %rcx
	shlq	%cl, %rdi
	movb	(%rax,%rbx), %cl
	movzbq	%cl, %rbx
	movq	$8, %rcx
	subq	%r11, %rcx
	shrq	%cl, %rbx
	movq	$1, %r12
	movq	%r11, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rbx
	orq 	%rbx, %rdi
L_bitstream_get_bits_msgs$4:
L_bitstream_get_bits_msgs$3:
	ret
L_mzd_from_bitstream_msgs$1:
	movq	$255, %r9
	movq	$3, %r8
	jmp 	L_mzd_from_bitstream_msgs$4
L_mzd_from_bitstream_msgs$5:
	movq	$64, %r11
	call	L_bitstream_get_bits2$1
L_mzd_from_bitstream_msgs$6:
	movq	%rdi, (%r10,%r8,8)
	decq	%r8
	addq	$-64, %r9
	addq	$64, %rsi
L_mzd_from_bitstream_msgs$4:
	cmpq	$64, %r9
	jnb 	L_mzd_from_bitstream_msgs$5
	cmpq	$0, %r9
	jbe 	L_mzd_from_bitstream_msgs$2
	movq	%r9, %r11
	call	L_bitstream_get_bits2$1
L_mzd_from_bitstream_msgs$3:
	movq	$64, %rcx
	subq	%r9, %rcx
	shlq	%cl, %rdi
	movq	%rdi, (%r10,%r8,8)
L_mzd_from_bitstream_msgs$2:
	ret
L_bitstream_get_bits2$1:
	movq	%rsi, %rdi
	shrq	$3, %rdi
	movb	(%rax,%rdi), %cl
	movzbq	%cl, %rdi
	movq	%rsi, %rcx
	andq	$7, %rcx
	movq	$8, %rbx
	subq	%rcx, %rbx
	movq	$1, %r12
	movq	%rbx, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rdi
	cmpq	%r11, %rbx
	jb  	L_bitstream_get_bits2$2
	movq	%rbx, %rcx
	subq	%r11, %rcx
	shrq	%cl, %rdi
	jmp 	L_bitstream_get_bits2$3
L_bitstream_get_bits2$2:
	subq	%rbx, %r11
	movq	%rsi, %rbx
	shrq	$3, %rbx
	incq	%rbx
	jmp 	L_bitstream_get_bits2$5
L_bitstream_get_bits2$6:
	movb	(%rax,%rbx), %cl
	movzbq	%cl, %rcx
	shlq	$8, %rdi
	orq 	%rcx, %rdi
	addq	$-8, %r11
	incq	%rbx
L_bitstream_get_bits2$5:
	cmpq	$8, %r11
	jnb 	L_bitstream_get_bits2$6
	cmpq	$0, %r11
	jbe 	L_bitstream_get_bits2$3
	movq	%r11, %rcx
	shlq	%cl, %rdi
	movb	(%rax,%rbx), %cl
	movzbq	%cl, %rbx
	movq	$8, %rcx
	subq	%r11, %rcx
	shrq	%cl, %rbx
	movq	$1, %r12
	movq	%r11, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rbx
	orq 	%rbx, %rdi
L_bitstream_get_bits2$4:
L_bitstream_get_bits2$3:
	ret
L_mzd_from_bitstream_tapes2$1:
	movq	$255, %r9
	movq	$3, %r8
	jmp 	L_mzd_from_bitstream_tapes2$4
L_mzd_from_bitstream_tapes2$5:
	movq	$64, %r11
	call	L_bitstream_get_bits_tapes$1
L_mzd_from_bitstream_tapes2$6:
	movq	%rdi, (%r10,%r8,8)
	decq	%r8
	addq	$-64, %r9
	addq	$64, %rsi
L_mzd_from_bitstream_tapes2$4:
	cmpq	$64, %r9
	jnb 	L_mzd_from_bitstream_tapes2$5
	cmpq	$0, %r9
	jbe 	L_mzd_from_bitstream_tapes2$2
	movq	%r9, %r11
	call	L_bitstream_get_bits_tapes$1
L_mzd_from_bitstream_tapes2$3:
	movq	$64, %rcx
	subq	%r9, %rcx
	shlq	%cl, %rdi
	movq	%rdi, (%r10,%r8,8)
L_mzd_from_bitstream_tapes2$2:
	ret
L_bitstream_get_bits_tapes$1:
	movq	%rsi, %rdi
	shrq	$3, %rdi
	movb	(%rax,%rdi), %cl
	movzbq	%cl, %rdi
	movq	%rsi, %rcx
	andq	$7, %rcx
	movq	$8, %rbx
	subq	%rcx, %rbx
	movq	$1, %r12
	movq	%rbx, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rdi
	cmpq	%r11, %rbx
	jb  	L_bitstream_get_bits_tapes$2
	movq	%rbx, %rcx
	subq	%r11, %rcx
	shrq	%cl, %rdi
	jmp 	L_bitstream_get_bits_tapes$3
L_bitstream_get_bits_tapes$2:
	subq	%rbx, %r11
	movq	%rsi, %rbx
	shrq	$3, %rbx
	incq	%rbx
	jmp 	L_bitstream_get_bits_tapes$5
L_bitstream_get_bits_tapes$6:
	movb	(%rax,%rbx), %cl
	movzbq	%cl, %rcx
	shlq	$8, %rdi
	orq 	%rcx, %rdi
	addq	$-8, %r11
	incq	%rbx
L_bitstream_get_bits_tapes$5:
	cmpq	$8, %r11
	jnb 	L_bitstream_get_bits_tapes$6
	cmpq	$0, %r11
	jbe 	L_bitstream_get_bits_tapes$3
	movq	%r11, %rcx
	shlq	%cl, %rdi
	movb	(%rax,%rbx), %cl
	movzbq	%cl, %rbx
	movq	$8, %rcx
	subq	%r11, %rcx
	shrq	%cl, %rbx
	movq	$1, %r12
	movq	%r11, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rbx
	orq 	%rbx, %rdi
L_bitstream_get_bits_tapes$4:
L_bitstream_get_bits_tapes$3:
	ret
L_mzd_from_bitstream_tapes$1:
	movq	$255, %r9
	movq	$3, %r8
	jmp 	L_mzd_from_bitstream_tapes$4
L_mzd_from_bitstream_tapes$5:
	movq	$64, %r11
	call	L_bitstream_get_bits$1
L_mzd_from_bitstream_tapes$6:
	movq	%rdi, (%r10,%r8,8)
	decq	%r8
	addq	$-64, %r9
	addq	$64, %rsi
L_mzd_from_bitstream_tapes$4:
	cmpq	$64, %r9
	jnb 	L_mzd_from_bitstream_tapes$5
	cmpq	$0, %r9
	jbe 	L_mzd_from_bitstream_tapes$2
	movq	%r9, %r11
	call	L_bitstream_get_bits$1
L_mzd_from_bitstream_tapes$3:
	movq	$64, %rcx
	subq	%r9, %rcx
	shlq	%cl, %rdi
	movq	%rdi, (%r10,%r8,8)
L_mzd_from_bitstream_tapes$2:
	ret
L_bitstream_get_bits$1:
	movq	%rsi, %rdi
	shrq	$3, %rdi
	movb	(%rax,%rdi), %cl
	movzbq	%cl, %rdi
	movq	%rsi, %rcx
	andq	$7, %rcx
	movq	$8, %rbx
	subq	%rcx, %rbx
	movq	$1, %r12
	movq	%rbx, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rdi
	cmpq	%r11, %rbx
	jb  	L_bitstream_get_bits$2
	movq	%rbx, %rcx
	subq	%r11, %rcx
	shrq	%cl, %rdi
	jmp 	L_bitstream_get_bits$3
L_bitstream_get_bits$2:
	subq	%rbx, %r11
	movq	%rsi, %rbx
	shrq	$3, %rbx
	incq	%rbx
	jmp 	L_bitstream_get_bits$5
L_bitstream_get_bits$6:
	movb	(%rax,%rbx), %cl
	movzbq	%cl, %rcx
	shlq	$8, %rdi
	orq 	%rcx, %rdi
	addq	$-8, %r11
	incq	%rbx
L_bitstream_get_bits$5:
	cmpq	$8, %r11
	jnb 	L_bitstream_get_bits$6
	cmpq	$0, %r11
	jbe 	L_bitstream_get_bits$3
	movq	%r11, %rcx
	shlq	%cl, %rdi
	movb	(%rax,%rbx), %cl
	movzbq	%cl, %rbx
	movq	$8, %rcx
	subq	%r11, %rcx
	shrq	%cl, %rbx
	movq	$1, %r12
	movq	%r11, %rcx
	shlq	%cl, %r12
	decq	%r12
	andq	%r12, %rbx
	orq 	%rbx, %rdi
L_bitstream_get_bits$4:
L_bitstream_get_bits$3:
	ret
L_mzd_addmul_v_uint64_256$1:
	vmovdqu	(%r10), %ymm2
	vpxor	%ymm1, %ymm1, %ymm1
	movq	$0, %r9
	movq	$0, %r11
	jmp 	L_mzd_addmul_v_uint64_256$2
L_mzd_addmul_v_uint64_256$3:
	movq	(%rcx,%r9), %rbx
	movq	$0, %rbp
	jmp 	L_mzd_addmul_v_uint64_256$4
L_mzd_addmul_v_uint64_256$5:
	movq	%rbx, %r12
	addq	$128, %r11
	andq	$1, %r12
	negq	%r12
	vmovq	%r12, %xmm3
	movq	%rbx, %r12
	salq	$62, %r12
	vpbroadcastq	%xmm3, %ymm3
	vpand	-128(%r8,%r11), %ymm3, %ymm3
	sarq	$63, %r12
	vmovq	%r12, %xmm4
	movq	%rbx, %r12
	vpxor	%ymm3, %ymm2, %ymm2
	salq	$61, %r12
	vpbroadcastq	%xmm4, %ymm4
	vpand	-96(%r8,%r11), %ymm4, %ymm4
	sarq	$63, %r12
	vmovq	%r12, %xmm3
	movq	%rbx, %r12
	shrq	$4, %rbx
	salq	$60, %r12
	vpbroadcastq	%xmm3, %ymm3
	vpand	-64(%r8,%r11), %ymm3, %ymm3
	sarq	$63, %r12
	vmovq	%r12, %xmm5
	vpxor	%ymm3, %ymm2, %ymm2
	vpbroadcastq	%xmm5, %ymm3
	vpand	-32(%r8,%r11), %ymm3, %ymm3
	vpxor	%ymm4, %ymm3, %ymm3
	vpxor	%ymm3, %ymm1, %ymm1
	addq	$4, %rbp
L_mzd_addmul_v_uint64_256$4:
	cmpq	$64, %rbp
	jb  	L_mzd_addmul_v_uint64_256$5
	addq	$8, %r9
L_mzd_addmul_v_uint64_256$2:
	cmpq	$32, %r9
	jb  	L_mzd_addmul_v_uint64_256$3
	vpxor	%ymm2, %ymm1, %ymm1
	vmovdqu	%ymm1, (%r10)
	ret
L_mzd_shift1_right_uint64_256$1:
	movq	(%rsi), %rdi
	movq	8(%rsi), %r8
	shrq	$1, %rdi
	shlq	$63, %r8
	orq 	%r8, %rdi
	movq	%rdi, (%rcx)
	movq	8(%rsi), %rdi
	movq	16(%rsi), %r8
	shrq	$1, %rdi
	shlq	$63, %r8
	orq 	%r8, %rdi
	movq	%rdi, 8(%rcx)
	movq	16(%rsi), %rdi
	movq	24(%rsi), %r8
	shrq	$1, %rdi
	shlq	$63, %r8
	orq 	%r8, %rdi
	movq	%rdi, 16(%rcx)
	movq	24(%rsi), %rdi
	shrq	$1, %rdi
	movq	%rdi, 24(%rcx)
	ret
L_mzd_shift2_right_uint64_256$1:
	movq	(%rsi), %rdi
	movq	8(%rsi), %r8
	shrq	$2, %rdi
	shlq	$62, %r8
	orq 	%r8, %rdi
	movq	%rdi, (%rcx)
	movq	8(%rsi), %rdi
	movq	16(%rsi), %r8
	shrq	$2, %rdi
	shlq	$62, %r8
	orq 	%r8, %rdi
	movq	%rdi, 8(%rcx)
	movq	16(%rsi), %rdi
	movq	24(%rsi), %r8
	shrq	$2, %rdi
	shlq	$62, %r8
	orq 	%r8, %rdi
	movq	%rdi, 16(%rcx)
	movq	24(%rsi), %rdi
	shrq	$2, %rdi
	movq	%rdi, 24(%rcx)
	ret
L_mzd_shift1_left_uint64_256$1:
	movq	24(%rsi), %rdi
	movq	16(%rsi), %r8
	shlq	$1, %rdi
	shrq	$63, %r8
	orq 	%r8, %rdi
	movq	%rdi, 24(%rcx)
	movq	16(%rsi), %rdi
	movq	8(%rsi), %r8
	shlq	$1, %rdi
	shrq	$63, %r8
	orq 	%r8, %rdi
	movq	%rdi, 16(%rcx)
	movq	8(%rsi), %rdi
	movq	(%rsi), %r8
	shlq	$1, %rdi
	shrq	$63, %r8
	orq 	%r8, %rdi
	movq	%rdi, 8(%rcx)
	movq	(%rsi), %rdi
	shlq	$1, %rdi
	movq	%rdi, (%rcx)
	ret
L_mzd_shift2_left_uint64_256$1:
	movq	24(%rsi), %rdi
	movq	16(%rsi), %r8
	shlq	$2, %rdi
	shrq	$62, %r8
	orq 	%r8, %rdi
	movq	%rdi, 24(%rcx)
	movq	16(%rsi), %rdi
	movq	8(%rsi), %r8
	shlq	$2, %rdi
	shrq	$62, %r8
	orq 	%r8, %rdi
	movq	%rdi, 16(%rcx)
	movq	8(%rsi), %rdi
	movq	(%rsi), %r8
	shlq	$2, %rdi
	shrq	$62, %r8
	orq 	%r8, %rdi
	movq	%rdi, 8(%rcx)
	movq	(%rsi), %rdi
	shlq	$2, %rdi
	movq	%rdi, (%rcx)
	ret
L_mzd_and_uint64_block$1:
	movq	(%r10), %rcx
	andq	(%rdi), %rcx
	movq	%rcx, (%rsi)
	movq	8(%r10), %rcx
	andq	8(%rdi), %rcx
	movq	%rcx, 8(%rsi)
	movq	16(%r10), %rcx
	andq	16(%rdi), %rcx
	movq	%rcx, 16(%rsi)
	movq	24(%r10), %rcx
	andq	24(%rdi), %rcx
	movq	%rcx, 24(%rsi)
	ret
L_mzd_xor_uint64_block$1:
	vmovdqu	(%r10), %ymm1
	vpxor	(%rdi), %ymm1, %ymm1
	vmovdqu	%ymm1, (%rsi)
	ret
L_mzd_copy_uint64_256$1:
	movq	(%r10), %rsi
	movq	%rsi, (%rcx)
	movq	8(%r10), %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%r10), %rsi
	movq	%rsi, 16(%rcx)
	movq	24(%r10), %rsi
	movq	%rsi, 24(%rcx)
	ret
L_copy_full_tree$1:
	movq	$0, %r9
	movq	%rsi, %r11
	imulq	$992, %r11, %r11
	jmp 	L_copy_full_tree$4
L_copy_full_tree$5:
	movb	(%rax,%r11), %r14b
	movb	%r14b, (%rdi,%r9)
	incq	%r11
	incq	%r9
L_copy_full_tree$4:
	cmpq	$992, %r9
	jb  	L_copy_full_tree$5
	movq	$0, %rax
	imulq	$31, %rsi, %rsi
	jmp 	L_copy_full_tree$2
L_copy_full_tree$3:
	movb	(%rcx,%rsi), %dil
	movb	%dil, (%r10,%rax)
	incq	%rax
L_copy_full_tree$2:
	cmpq	$31, %rax
	jb  	L_copy_full_tree$3
	ret
L__copy_leaf_to_tree$1:
	movq	(%r9,%rcx), %rdi
	movq	%rdi, (%rdx,%r8)
	movq	8(%r9,%rcx), %rdi
	movq	%rdi, 8(%rdx,%r8)
	movq	16(%r9,%rcx), %rdi
	movq	%rdi, 16(%rdx,%r8)
	movq	24(%r9,%rcx), %rdi
	movq	%rdi, 24(%rdx,%r8)
	movq	32(%r9,%rcx), %rdi
	movq	%rdi, 32(%rdx,%r8)
	movq	40(%r9,%rcx), %rdi
	movq	%rdi, 40(%rdx,%r8)
	movq	48(%r9,%rcx), %rdi
	movq	%rdi, 48(%rdx,%r8)
	movq	56(%r9,%rcx), %rcx
	movq	%rcx, 56(%rdx,%r8)
	ret
L__copy_digest_to_tree$1:
	movq	(%r8), %r9
	movq	%r9, (%rdi,%rsi)
	addq	$8, %r8
	movq	(%r8), %r9
	movq	%r9, 8(%rdi,%rsi)
	addq	$8, %r8
	movq	(%r8), %r9
	movq	%r9, 16(%rdi,%rsi)
	addq	$8, %r8
	movq	(%r8), %r9
	movq	%r9, 24(%rdi,%rsi)
	addq	$8, %r8
	movq	(%r8), %r9
	movq	%r9, 32(%rdi,%rsi)
	addq	$8, %r8
	movq	(%r8), %r9
	movq	%r9, 40(%rdi,%rsi)
	addq	$8, %r8
	movq	(%r8), %r9
	movq	%r9, 48(%rdi,%rsi)
	addq	$8, %r8
	movq	(%r8), %r9
	movq	%r9, 56(%rdi,%rsi)
	addq	$8, %r8
	ret
L_copy_msg_from_proofs_to_msgs$1:
	movq	$0, %rsi
	jmp 	L_copy_msg_from_proofs_to_msgs$2
L_copy_msg_from_proofs_to_msgs$3:
	movb	(%rcx,%rax), %dil
	movb	%dil, (%rdx,%r8)
	incq	%r8
	incq	%rax
	incq	%rsi
L_copy_msg_from_proofs_to_msgs$2:
	cmpq	$128, %rsi
	jb  	L_copy_msg_from_proofs_to_msgs$3
	ret
L_copy_unnopened_party_commit$1:
	movq	$0, %rdi
	jmp 	L_copy_unnopened_party_commit$2
L_copy_unnopened_party_commit$3:
	movb	(%rcx,%rax), %r9b
	movb	%r9b, (%rdx,%rsi)
	incq	%rsi
	incq	%rax
	incq	%rdi
L_copy_unnopened_party_commit$2:
	cmpq	$64, %rdi
	jb  	L_copy_unnopened_party_commit$3
	ret
L__copy_msgs_to_proof$1:
	movq	$0, %rcx
	jmp 	L__copy_msgs_to_proof$2
L__copy_msgs_to_proof$3:
	movq	(%rsi,%rax), %rdx
	movq	%rdx, (%r8)
	addq	$8, %rax
	addq	$8, %r8
	incq	%rcx
L__copy_msgs_to_proof$2:
	cmpq	$16, %rcx
	jb  	L__copy_msgs_to_proof$3
	ret
L__copy_input_to_proof$1:
	movq	$0, %rax
	jmp 	L__copy_input_to_proof$2
L__copy_input_to_proof$3:
	movq	(%rcx,%rsi), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	addq	$8, %rsi
	incq	%rax
L__copy_input_to_proof$2:
	cmpq	$4, %rax
	jb  	L__copy_input_to_proof$3
	ret
L__copy_tape_aux_to_proof$1:
	movq	(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	8(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	16(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	24(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	32(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	40(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	48(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	56(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	64(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	72(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	80(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	88(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	96(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	104(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	112(%rax,%rcx), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	movq	120(%rax,%rcx), %rax
	movq	%rax, (%r8)
	addq	$8, %r8
	ret
L__copy_seed_to_proof$1:
	movq	(%rdx,%rax,8), %rsi
	movq	%rsi, (%r8)
	addq	$8, %r8
	movq	8(%rdx,%rax,8), %rsi
	movq	%rsi, (%r8)
	addq	$8, %r8
	movq	16(%rdx,%rax,8), %rsi
	movq	%rsi, (%r8)
	addq	$8, %r8
	movq	24(%rdx,%rax,8), %rax
	movq	%rax, (%r8)
	addq	$8, %r8
	ret
L__copy_seed_from_sig$1:
	movq	(%rbx), %r9
	movq	%r9, (%rdx,%r8,8)
	addq	$8, %rbx
	movq	(%rbx), %r9
	movq	%r9, 8(%rdx,%r8,8)
	addq	$8, %rbx
	movq	(%rbx), %r9
	movq	%r9, 16(%rdx,%r8,8)
	addq	$8, %rbx
	movq	(%rbx), %r9
	movq	%r9, 24(%rdx,%r8,8)
	addq	$8, %rbx
	ret
L__copy_seed_from_iSeed$1:
	movb	(%rsi,%rax), %cl
	movb	%cl, (%rdx,%r8)
	movb	1(%rsi,%rax), %cl
	movb	%cl, 1(%rdx,%r8)
	movb	2(%rsi,%rax), %cl
	movb	%cl, 2(%rdx,%r8)
	movb	3(%rsi,%rax), %cl
	movb	%cl, 3(%rdx,%r8)
	movb	4(%rsi,%rax), %cl
	movb	%cl, 4(%rdx,%r8)
	movb	5(%rsi,%rax), %cl
	movb	%cl, 5(%rdx,%r8)
	movb	6(%rsi,%rax), %cl
	movb	%cl, 6(%rdx,%r8)
	movb	7(%rsi,%rax), %cl
	movb	%cl, 7(%rdx,%r8)
	movb	8(%rsi,%rax), %cl
	movb	%cl, 8(%rdx,%r8)
	movb	9(%rsi,%rax), %cl
	movb	%cl, 9(%rdx,%r8)
	movb	10(%rsi,%rax), %cl
	movb	%cl, 10(%rdx,%r8)
	movb	11(%rsi,%rax), %cl
	movb	%cl, 11(%rdx,%r8)
	movb	12(%rsi,%rax), %cl
	movb	%cl, 12(%rdx,%r8)
	movb	13(%rsi,%rax), %cl
	movb	%cl, 13(%rdx,%r8)
	movb	14(%rsi,%rax), %cl
	movb	%cl, 14(%rdx,%r8)
	movb	15(%rsi,%rax), %cl
	movb	%cl, 15(%rdx,%r8)
	movb	16(%rsi,%rax), %cl
	movb	%cl, 16(%rdx,%r8)
	movb	17(%rsi,%rax), %cl
	movb	%cl, 17(%rdx,%r8)
	movb	18(%rsi,%rax), %cl
	movb	%cl, 18(%rdx,%r8)
	movb	19(%rsi,%rax), %cl
	movb	%cl, 19(%rdx,%r8)
	movb	20(%rsi,%rax), %cl
	movb	%cl, 20(%rdx,%r8)
	movb	21(%rsi,%rax), %cl
	movb	%cl, 21(%rdx,%r8)
	movb	22(%rsi,%rax), %cl
	movb	%cl, 22(%rdx,%r8)
	movb	23(%rsi,%rax), %cl
	movb	%cl, 23(%rdx,%r8)
	movb	24(%rsi,%rax), %cl
	movb	%cl, 24(%rdx,%r8)
	movb	25(%rsi,%rax), %cl
	movb	%cl, 25(%rdx,%r8)
	movb	26(%rsi,%rax), %cl
	movb	%cl, 26(%rdx,%r8)
	movb	27(%rsi,%rax), %cl
	movb	%cl, 27(%rdx,%r8)
	movb	28(%rsi,%rax), %cl
	movb	%cl, 28(%rdx,%r8)
	movb	29(%rsi,%rax), %cl
	movb	%cl, 29(%rdx,%r8)
	movb	30(%rsi,%rax), %cl
	movb	%cl, 30(%rdx,%r8)
	movb	31(%rsi,%rax), %cl
	movb	%cl, 31(%rdx,%r8)
	ret
L__copy_seed_to_sig$1:
	movq	(%r9,%rdi), %rsi
	movq	%rsi, (%r8)
	addq	$8, %rdi
	addq	$8, %r8
	movq	(%r9,%rdi), %rsi
	movq	%rsi, (%r8)
	addq	$8, %rdi
	addq	$8, %r8
	movq	(%r9,%rdi), %rsi
	movq	%rsi, (%r8)
	addq	$8, %rdi
	addq	$8, %r8
	movq	(%r9,%rdi), %rsi
	movq	%rsi, (%r8)
	addq	$8, %r8
	ret
L__copy_digest_from_tree_v2$1:
	movq	$0, %rcx
	jmp 	L__copy_digest_from_tree_v2$2
L__copy_digest_from_tree_v2$3:
	movq	(%r9,%rsi), %rdx
	movq	%rdx, (%r8)
	addq	$8, %rsi
	addq	$8, %r8
	incq	%rcx
L__copy_digest_from_tree_v2$2:
	cmpq	$8, %rcx
	jb  	L__copy_digest_from_tree_v2$3
	ret
L_memcpy_salt$1:
	movq	$0, %rcx
	jmp 	L_memcpy_salt$2
L_memcpy_salt$3:
	movq	(%rax,%rcx,8), %rdx
	movq	%rdx, (%r8)
	addq	$8, %r8
	incq	%rcx
L_memcpy_salt$2:
	cmpq	$4, %rcx
	jb  	L_memcpy_salt$3
	ret
L_memcpy_4Words$1:
	movq	$0, %rcx
	jmp 	L_memcpy_4Words$2
L_memcpy_4Words$3:
	movq	(%rax,%rcx,8), %rsi
	movq	%rsi, (%rdx,%rcx,8)
	incq	%rcx
L_memcpy_4Words$2:
	cmpq	$4, %rcx
	jb  	L_memcpy_4Words$3
	ret
L_memcpy_8Words_from_reg$1:
	movq	$0, %rax
	jmp 	L_memcpy_8Words_from_reg$2
L_memcpy_8Words_from_reg$3:
	movq	(%r8,%rax,8), %rcx
	movq	%rcx, (%rdx,%rax,8)
	incq	%rax
L_memcpy_8Words_from_reg$2:
	cmpq	$8, %rax
	jb  	L_memcpy_8Words_from_reg$3
	ret
L_memcpy_4Words_from_reg$1:
	movq	$0, %r10
	jmp 	L_memcpy_4Words_from_reg$2
L_memcpy_4Words_from_reg$3:
	movq	(%rax,%r10,8), %r9
	movq	%r9, (%rdi,%r10,8)
	incq	%r10
L_memcpy_4Words_from_reg$2:
	cmpq	$4, %r10
	jb  	L_memcpy_4Words_from_reg$3
	ret
	.data
	.p2align	5
glob_data:
G$ROL8:
	.byte	  7,   0,   1,   2,   3,   4,   5,   6,  15,   8,   9,  10,  11,  12,  13,  14
	.byte	 23,  16,  17,  18,  19,  20,  21,  22,  31,  24,  25,  26,  27,  28,  29,  30
G$ROL56:
	.byte	  1,   2,   3,   4,   5,   6,   7,   0,   9,  10,  11,  12,  13,  14,  15,   8
	.byte	 17,  18,  19,  20,  21,  22,  23,  16,  25,  26,  27,  28,  29,  30,  31,  24
G$KECCAK_RHOTATES_RIGHT:
	.byte	 61,   0,   0,   0,   0,   0,   0,   0,  46,   0,   0,   0,   0,   0,   0,   0
	.byte	 28,   0,   0,   0,   0,   0,   0,   0,  23,   0,   0,   0,   0,   0,   0,   0
	.byte	 63,   0,   0,   0,   0,   0,   0,   0,   2,   0,   0,   0,   0,   0,   0,   0
	.byte	 36,   0,   0,   0,   0,   0,   0,   0,  37,   0,   0,   0,   0,   0,   0,   0
	.byte	 19,   0,   0,   0,   0,   0,   0,   0,  58,   0,   0,   0,   0,   0,   0,   0
	.byte	  8,   0,   0,   0,   0,   0,   0,   0,  25,   0,   0,   0,   0,   0,   0,   0
	.byte	 54,   0,   0,   0,   0,   0,   0,   0,   3,   0,   0,   0,   0,   0,   0,   0
	.byte	  9,   0,   0,   0,   0,   0,   0,   0,  56,   0,   0,   0,   0,   0,   0,   0
	.byte	 62,   0,   0,   0,   0,   0,   0,   0,  49,   0,   0,   0,   0,   0,   0,   0
	.byte	 39,   0,   0,   0,   0,   0,   0,   0,  44,   0,   0,   0,   0,   0,   0,   0
	.byte	 20,   0,   0,   0,   0,   0,   0,   0,  21,   0,   0,   0,   0,   0,   0,   0
	.byte	 43,   0,   0,   0,   0,   0,   0,   0,  50,   0,   0,   0,   0,   0,   0,   0
G$KECCAK_RHOTATES_LEFT:
	.byte	  3,   0,   0,   0,   0,   0,   0,   0,  18,   0,   0,   0,   0,   0,   0,   0
	.byte	 36,   0,   0,   0,   0,   0,   0,   0,  41,   0,   0,   0,   0,   0,   0,   0
	.byte	  1,   0,   0,   0,   0,   0,   0,   0,  62,   0,   0,   0,   0,   0,   0,   0
	.byte	 28,   0,   0,   0,   0,   0,   0,   0,  27,   0,   0,   0,   0,   0,   0,   0
	.byte	 45,   0,   0,   0,   0,   0,   0,   0,   6,   0,   0,   0,   0,   0,   0,   0
	.byte	 56,   0,   0,   0,   0,   0,   0,   0,  39,   0,   0,   0,   0,   0,   0,   0
	.byte	 10,   0,   0,   0,   0,   0,   0,   0,  61,   0,   0,   0,   0,   0,   0,   0
	.byte	 55,   0,   0,   0,   0,   0,   0,   0,   8,   0,   0,   0,   0,   0,   0,   0
	.byte	  2,   0,   0,   0,   0,   0,   0,   0,  15,   0,   0,   0,   0,   0,   0,   0
	.byte	 25,   0,   0,   0,   0,   0,   0,   0,  20,   0,   0,   0,   0,   0,   0,   0
	.byte	 44,   0,   0,   0,   0,   0,   0,   0,  43,   0,   0,   0,   0,   0,   0,   0
	.byte	 21,   0,   0,   0,   0,   0,   0,   0,  14,   0,   0,   0,   0,   0,   0,   0
G$ki_matrix:
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 32,  26, 185, 134,  28, 219, 135,  70, 205, 127, 214,   1,  44, 240, 235, 125
	.byte	 15, 235,  63, 225,   6,  21, 199,  44, 163, 177,  86,  43,  56,  42,  10, 201
	.byte	 48,   8,  80,  21, 146, 170,  77, 150,  52, 119,  63, 232, 144,  61, 240,  13
	.byte	218, 252,  70, 228, 160, 248, 132, 183,   8, 207, 144,  89,   4,   7,  61,  13
	.byte	158, 242, 232, 124,  70, 137,  39,   5, 157, 237, 247,  56, 128,  11, 205,  76
	.byte	190,  16,   4,   3,  31,  12,  39, 195,  98, 200, 228, 171,  70,   3, 220, 146
	.byte	 86, 131, 130,  56,  84, 159, 248, 230, 182, 225, 151, 255, 189,  80, 247,  27
	.byte	220,  39, 128, 108,  57,  18, 240, 246, 172, 151, 146, 169,  50,  18, 171, 107
	.byte	152, 102,  43,   0,  46, 166, 178, 248,  64, 221,  49, 115,  74, 175, 195, 148
	.byte	 17,  27, 231, 104, 239, 191, 127,   4,  95,   8, 195,  12, 209, 141,  24, 102
	.byte	180, 177,  77, 254, 237, 126, 238,  85,  17, 192, 167,  88, 136, 184, 188,  59
	.byte	100, 182, 132, 213, 240, 124, 157, 115, 202,  12,  62, 151,  77, 230,  13,  15
	.byte	 84, 235, 195,   3, 199, 132, 242,  18, 213, 208, 251,  37, 250, 195, 249,  25
	.byte	194,  89,  70, 248, 136, 181,  31,  88,  43,  37,  63, 255, 159, 134, 192, 117
	.byte	178, 155, 232, 109, 221, 196, 207, 161, 139, 231, 176, 163, 126,  35,  54, 200
	.byte	250, 125, 179, 185, 110, 172,  38, 148,   5, 178,  91,  41, 147, 234, 227, 252
	.byte	 20, 112, 212, 131,   4, 157, 202, 213,  67, 187, 212, 179, 128, 123, 159, 136
	.byte	234,  89, 142,  12,  47,  32, 250, 125,   5,  53,  78,  18,  76,  10, 231,  20
	.byte	  0,  31, 163, 115,  43, 103, 140, 207, 105, 148,  87, 237,  35, 138,  80,  52
	.byte	 81, 201, 193, 159, 179, 203, 161, 159, 225,  66, 137, 121, 246,  22,  33,  39
	.byte	 22,  11,  59,  47,  77, 212, 155, 193, 136,  17, 108, 250, 205, 145, 217, 191
	.byte	118, 147,  42,  82, 119, 193,  48,  53,  43, 203,  81,  95, 214, 223, 151,   9
	.byte	174,   9,  62, 152,  25, 183,  68,  29,  93,  38, 230, 119, 174, 222,  55, 189
	.byte	 46, 246,   9, 107, 191, 184, 175,  75, 252, 172,  70,  37, 221,  94, 123, 189
	.byte	124, 132,   1, 151,  69, 220, 149, 150,  33,  23,  96,  20,  75,  66,  28, 190
	.byte	 18, 220, 190,  30, 185, 223, 175, 113, 150, 107, 208, 204,  18, 116,  47, 179
	.byte	112,  35, 191, 179,  27, 143, 228,  89, 172, 102, 178, 160, 246, 184,  85,  74
	.byte	 57, 113, 114, 178,  79,  40,  30,  35,  51, 121, 249, 177, 100, 232,  59,  85
	.byte	178, 136,  70, 157, 172, 193, 213, 101,  88, 101,  57, 182,  99, 184, 210,  29
	.byte	209, 109, 180, 184, 109, 114,  94, 129, 152, 159, 184, 233, 102,   7,  83, 140
	.byte	 38, 176, 228,  91, 187,  60,  13,  88,  17, 198, 122, 128, 111, 118, 189,  13
	.byte	206, 133,  50,  12, 114,  25, 232,  91, 193, 134, 150, 238,  24, 205,  37,  96
	.byte	236, 129, 160,  52,  59, 137,  87, 192, 168,   0, 255, 144, 151, 191, 120, 145
	.byte	114, 147, 200, 114,  30, 176,  40,  37, 220, 228, 190, 240, 254, 156,  19, 106
	.byte	190, 169,  38,  30,  32,  83,  29, 197, 164,  59,  53,  96,  81, 205, 160, 249
	.byte	 53, 131, 124, 113,  17,  48, 125,  28, 153, 106, 101, 166, 164,  38, 203,  67
	.byte	134,   2, 138, 222, 154,  44, 120, 254,  50,  94, 190,  90, 232,   2, 196, 106
	.byte	 93,  83, 239, 238, 116, 158,  64,  83, 208, 148,  51, 182, 216, 177,  70, 225
	.byte	102,  66, 239, 224, 117,  43, 145, 161,  55, 122, 135, 152, 209, 208, 122, 195
	.byte	172, 189, 137, 187,  25, 112,  17, 245, 136, 140, 225, 189,  78, 218,  12,  31
	.byte	172, 201, 192, 241,  15,  96,   5, 102,  28, 250, 244, 217, 199,  33,  39,   7
	.byte	153,  32, 197, 221, 250, 208, 211, 124, 153,  35, 110,  80,  62, 219, 189,  66
	.byte	 88, 108, 195, 188, 148, 237,  64,  14, 241, 119, 130,  96,  58,  75,  90,  60
	.byte	107,  64,  84,  60,  93,   3, 161, 138, 253, 141, 237, 136, 143,  94, 226, 175
	.byte	198,  55, 129, 125,  33, 242,  91, 170, 138, 180, 124,  99, 248, 223,  21, 199
	.byte	175,  13,  86, 198,  90, 205,   8, 205, 138, 183,  14, 134, 167, 221, 205, 195
	.byte	252, 167,  64,  52, 135,  85,  11, 101, 158, 151, 228, 187, 164, 137,  44, 160
	.byte	 48, 248, 206,  13, 137, 245, 126,  18,  81,  35,  17, 229, 177, 210, 238,  72
	.byte	206, 111, 251, 218, 255,  92, 115,  22, 110, 163,  51, 147,  50,  91,  61,  63
	.byte	 71, 246, 149, 197, 145,  66, 158,  34, 222, 224, 116, 229, 239,  46, 210,  95
	.byte	192,  36, 168, 127,  97, 241,  46,  86, 133, 102, 145, 242,  77, 165, 201, 232
	.byte	107, 171,  21, 231, 177, 197, 236, 244, 220,   8, 215,  42,  81, 191, 156, 179
	.byte	224, 106, 228, 249,  97,  84,  74, 124,  73, 222, 188, 183, 114, 192, 215, 214
	.byte	 53,  83, 217,  79,  26, 243, 118, 127, 162,  71, 178,  34, 208, 211, 136,  28
	.byte	104,  82,  25,  16, 109, 249, 107,  39,  28,  54, 105, 111, 217,  39, 138, 234
	.byte	215, 165, 173,  28, 191, 148,  76, 190, 239, 144, 109,  61, 121,  11, 126,  98
	.byte	228,   1,  41, 130,  85, 113, 229,   7, 112,  89,  77, 229, 122,  41, 216, 152
	.byte	249, 130,  18, 232,  88,  66, 185,  87, 144,  54, 217, 151, 194, 209, 149, 252
	.byte	 56,  67, 213,  92,  78,  86, 203, 128,  17, 216,  37,  92, 255,  51, 237, 181
	.byte	 60,  87, 104,  13,  88, 194,  60,  72,  76, 181, 155, 228, 226, 225, 110, 206
	.byte	140, 219,  79, 121,  21, 223, 236,  65,  78, 171, 168,   7,   4,  45, 162,  42
	.byte	190, 228,  27,  99, 152, 118, 182,  66,  74, 123,  30, 108, 213,  17, 230, 236
	.byte	156, 123,  68,  16,  61, 121, 171, 159, 121, 176, 107, 190,  23,  19,  62, 246
	.byte	162,  84, 118, 223, 120, 243,   8,  73, 221, 181,  70, 158,  56, 147,  64,  84
	.byte	 26, 106, 135,  63, 191, 141,  45, 211,  26, 246,  62, 156, 186,  83, 118, 194
	.byte	 74, 191, 214, 211, 155, 107, 113,  87, 142, 214, 111,  76, 179, 225,  83, 138
	.byte	 50, 104, 141,  90,  66,  17, 203,  59, 211, 137,  94, 120, 231,  65, 130, 204
	.byte	 56, 186,  18, 149, 101, 173, 186,  28,  84,  91, 166,  13,  23,  53,  66, 193
	.byte	228,  68, 184, 208, 144, 192,  99, 156,  29, 242, 187, 207,  75, 159, 194, 157
	.byte	 35, 158,  20,  70,  70,   6,  47,  37,  91, 142, 161, 184, 244,  39,  31, 157
	.byte	 52, 244, 123, 215, 121, 171, 243,  45,   8, 103, 211,  14,  92, 208, 114,  83
	.byte	 21, 152, 104,  96, 166,  17,  76,  82, 113,  32,  90, 246,  20,   4,  81, 155
	.byte	146, 119,  27, 122,  31,   6, 244, 186,   5, 173, 185, 232,  27, 231, 184,  94
	.byte	114, 151, 201, 126, 199,  46,  60,   0, 210, 107,  80,  76,  92,  65,  25, 182
	.byte	250, 232, 160, 156, 112,  33, 146,  10,  14, 122,   7,  92, 103, 249,  17, 144
	.byte	183, 158, 153, 254, 119,  78,  93,  81, 135,  54,  21, 166, 141, 127, 207,  17
	.byte	100,  45, 183, 228, 242,  57,  88, 159,  60, 129,  46,  12, 100,   4, 223,  37
	.byte	148,  79, 217,  34, 136, 180, 120, 125, 106, 201,  96,  48, 103, 101,  38, 194
	.byte	182, 128,  47,  41,  13,  72, 162,  34,  99,  61, 185, 248, 144,  47, 166, 145
	.byte	 76, 250, 157, 252, 165,  88,  91, 201, 146, 245, 129,  28, 143,  72, 222, 199
	.byte	120,  34,   8,  88,   0, 236, 192, 174, 127, 160,  95, 197, 208, 221, 101, 245
	.byte	 24,  51,  85,  51, 174, 138, 230,  87, 232,  53,  70,  81, 217, 210, 187, 180
	.byte	102,  77, 100, 122,  31,  81,  19, 195, 153, 118, 168,   2,  87,  49,  87, 143
	.byte	141, 210,  23, 200, 186, 134,  15, 222,  88, 161, 246, 191,  22, 118, 172, 202
	.byte	 86,  21,  23, 218, 216,  33, 101,  99,  28, 187,  36, 154,  81,  38,  80,  51
	.byte	 50, 171,  78,  11, 240, 182, 184, 164, 220, 108, 201,  30, 100, 153, 221,  69
	.byte	214,  16,  21,  21,  61, 139, 238,  79, 190,  64,  76,  19, 223, 205,  80,  77
	.byte	 86, 244, 240, 182, 250, 144, 159, 160, 148,  23, 211,  23, 203, 165, 236, 143
	.byte	162,  98, 151,  16, 104, 170,  76,  99, 187, 237,  42, 148, 186, 129,  51,   1
	.byte	 96, 137,  11,  69, 246,  63, 198, 204, 199, 204, 120, 116, 174,   9, 235, 103
	.byte	170, 219,  37,  94,  20, 233,  38,  91, 218,  44,  46,  37, 169, 138,  46, 154
	.byte	 17, 232, 191, 120, 114, 248, 139,  22,  36, 251, 247, 157, 199,  79,  60, 219
	.byte	  6, 183,  62, 169, 171,  35, 224,  45,  97,  15, 211,  69, 198, 123, 141, 113
	.byte	175, 122, 123, 212,  67,  23,  97,  20, 232, 209, 207,  44, 196, 233,  33, 239
	.byte	 42,   5,  96, 207,  60,  94, 179, 111,  36,  82, 181,  38, 201, 157, 190,  23
	.byte	253, 229,  22,  90,  59, 115, 154, 235,  35, 196, 161, 197,  78, 222,  21,  35
	.byte	100, 173, 137, 115, 106, 238, 103,  69, 214, 206, 148, 211, 237,  69, 193, 153
	.byte	247, 232, 217, 163,  58,  44, 163,   2,  93, 124,  39,  94, 150,  82, 199,  99
	.byte	222, 187, 177,  90, 154,  18, 120, 112, 246,  92, 200,  35, 121, 204, 195,  80
	.byte	167, 234, 122, 119, 207,  82, 179,  71, 171, 162,   8, 146, 241,  15, 177,  51
	.byte	132,  50, 214,  54, 149, 111, 102,  51, 215,  25, 218,  47, 100, 207, 222,  27
	.byte	100, 126, 122, 176, 146,  36, 225, 119, 213,  63, 131, 252, 101, 235, 161, 121
	.byte	186,  23, 222, 228, 206,  81, 225,  97,  78, 106,  71,  23,  61,  87, 182, 136
	.byte	 54, 130,  67, 139, 197, 111,  38, 104, 119,  38, 178, 180, 139, 114,  58,  73
	.byte	174, 151,  78, 117, 125,   7, 169,  78, 163, 211,   6,  35, 115,  56,  10, 221
	.byte	237, 171, 126, 236, 149,   5, 135,  21, 199,  32, 207, 174,  50, 132,  98, 166
	.byte	 26, 244, 120, 111,  53,  77, 134,  35,  71,  89, 134, 203, 220, 188, 200, 217
	.byte	158,  52,  95, 160,  63, 109, 159, 112, 104, 168, 151,  59, 159, 212,   7, 232
	.byte	176, 197,  48,  39, 192,  65, 217,  68, 102, 240, 117,  99,   1, 132, 176, 236
	.byte	 58, 138, 149, 226,  25, 146,   1,  17, 118, 229, 164,  46, 198,  59,  94, 140
	.byte	 66, 216, 131,  84, 186,  91, 188, 115, 190,   7,  54, 112, 117, 110, 110, 213
	.byte	 13,  45, 203,  24, 173, 244,  71,  48,  82,  98,  25,  69,   7, 111, 236, 120
	.byte	 82,   8,  55, 141, 205,  20, 104,  39,  58, 215, 115,  40, 211, 203, 158, 139
	.byte	254, 169, 119,  46, 199, 143, 101, 139, 165, 213, 195, 235, 183, 254,  26, 230
	.byte	140,  13,  28,  86, 117,  36, 125,  81, 128, 124,  80, 238, 116, 158, 112, 132
	.byte	106,  89,  28,  76, 201, 220, 203,  66, 203,  90,  32,  95, 143,  42, 250, 198
	.byte	  0, 138,  55, 124, 242, 244, 195, 237, 140,  85, 170,  42,   8,  59, 213, 165
	.byte	122, 123,  50,  88,  65,  86,  21,  51, 167,  62, 140, 103,  80,  69,  71,  25
	.byte	166, 156,  89, 166,  18,  30, 252, 215,  22,  93,  52, 198,  58, 235, 191, 173
	.byte	 25,  26,  12, 158,  71,  67,   9, 140, 109,   8, 227, 222,  67,  17,  36, 193
	.byte	 52, 200, 133, 184,  64, 134, 227, 154, 191, 188,  80, 209,  93, 196, 251,  98
	.byte	217,  20, 208,   4, 180,  41,  30,  18, 154,  19,   9, 225, 146, 194, 205, 213
	.byte	154,  22,  36, 151, 234,  85,  53, 190, 240,  59, 177, 218,  60, 100, 228, 113
	.byte	159, 125,  93,  82,  29, 140, 215, 216, 252, 245, 253,  53, 222,   5,  91,  40
	.byte	  8, 253, 140,  93, 187, 100, 162,  54,  47,  31, 152, 211, 221, 209,  53, 153
	.byte	  3, 155,  10,  60, 124, 232,  26,  52, 104,   9, 253, 117, 114, 201, 236, 153
	.byte	154,  62,  46,  64,   6, 226,  66,  95, 106, 112, 101, 118, 181, 234,  36, 164
	.byte	194,  45,  13, 148, 176, 102,  15,  75,  57, 114, 164, 214, 141, 245, 141, 137
	.byte	246,  50,  22,  35,   3, 253, 158, 186, 150,  31,  75,  12,  41, 219, 204, 153
	.byte	 77,  54,  44, 205,   2, 144, 199,  41,  96, 196, 226,   1,  12, 255,  74,  65
	.byte	118,  60,  16, 202, 197, 238,  60,  29, 185,  51, 165, 228, 214, 167,  41, 127
	.byte	 73, 148, 181,   8, 221,   4,  54, 217,  68, 111,  56, 202, 196, 161, 169,  30
	.byte	 56, 223, 249,   4,  88, 136, 187,  55,  73, 164, 205, 231,  42,  24,  94, 153
	.byte	106, 239, 251,  85,  47, 127,  66, 230, 251,  81, 148, 241, 108, 247,  81, 167
	.byte	164, 190,  97,  85,  31, 178, 151, 166,  63, 197, 123, 172, 213, 207,  57,  38
	.byte	 66, 191,  68, 222, 102, 105, 153,  23,  10, 224, 249,  86, 140, 219,  24, 239
	.byte	 88, 128, 107, 140, 100,  81, 169, 211, 206, 100,  21, 248, 182, 152, 168,  56
	.byte	 70,  95, 217,  71, 255,  54, 195,  69, 167, 232, 198,  20,  60,  57,  33,  12
	.byte	 54,  71, 165, 183, 202,   1, 239, 188, 101,  36,  65,  73,  19, 148,  65,   4
	.byte	198, 196, 102,  24,  70,  99, 117, 182, 218,  42, 162,   0,  93,   8, 243, 114
	.byte	 12,   9,  57, 189, 125, 116,  21, 138, 100, 187, 103, 124,  45, 233,  37, 147
	.byte	230, 144, 167, 251,  18,  21, 119, 100, 219,  13, 196, 180,  25,  98, 126,  37
	.byte	140, 165, 210,  74,   4, 247, 180, 201, 228,  76, 116, 110,  14, 147, 157, 184
	.byte	197, 108,  81, 106, 246,  57, 199,  40,  81,  63, 221,  83, 120, 176, 186,  43
	.byte	178, 226,  20, 115, 183,  60,  58,  67, 208,   8, 186,  39, 209,  87, 244,   8
	.byte	101,  33, 184, 151, 195, 179,  12, 189, 121, 104, 241, 158,  67, 172, 157, 182
	.byte	246,  97, 139, 241, 199,  22,  62, 166,  78, 229,   4,  86,  28, 188,  39, 203
	.byte	129,  71,  16, 123, 185, 165, 155, 124, 104, 127, 195, 147,  44, 195, 124,  28
	.byte	106,  74,  26, 188,  32, 146, 211, 107, 252,  59,  22, 225,   1,  85,   1,  42
	.byte	 91, 149,  52, 195,  16, 157,  89,  79,  23,  23, 215, 238,  13,  92, 185,  60
	.byte	 80,  99,  35,  21, 249, 171,  83, 185, 147, 202,  64,  49,   1, 153,  73,  72
	.byte	255,  58, 129,  50,  13, 108, 219, 149,  70, 235, 127, 111, 241,  68, 181, 209
	.byte	222, 111,  64, 226, 228,  19, 200, 129, 129,   6,  69,  79,  89, 138,  13, 181
	.byte	240, 156,   0,  80,  84, 202, 168,  43,  29,  15, 124, 214, 233,   0,  67, 189
	.byte	 52, 168, 144, 233, 212, 170,  37, 199, 129,  53,  96,  24,  71,  61, 198,  20
	.byte	114, 194, 168,  72, 252, 211,  38, 217, 161, 125, 153, 247, 240, 223, 133,  43
	.byte	 74, 249, 160, 203, 217,  70,  28,  76,  22, 241,  42, 200,  17,  95, 210, 237
	.byte	158, 134, 204, 223, 234, 220, 212,  70, 211, 215, 111, 205, 147, 209, 248, 223
	.byte	 24, 239,  51, 133, 175,  76,  41, 143, 121,  51,  20,  34,  63,  23,  46, 234
	.byte	156,  85, 177, 187,  36, 252,   1, 224, 251,  28, 197, 138, 156,  38, 132, 144
	.byte	 24, 226,  43, 244,  73, 226, 191,   4, 253,  68,  79, 148,  77, 149, 241, 204
	.byte	 86, 120,  71, 159, 163, 231, 136,  93,  23, 128,  51,  26, 237,  73, 188, 206
	.byte	188,  25, 217,  15,  28,  73, 224,   1,  36,  56,   6, 103,  46, 171, 210,  42
	.byte	 74, 222,  31, 174, 255,  37, 255, 201,  56,  69, 154, 247, 169,  70,  78, 132
	.byte	 16, 253,  89,  19,  47,  75,  74,  15, 155, 146, 114, 128,  72, 101, 214,  80
	.byte	 90, 131, 232,  15, 163,  25,  24,  87, 125, 113,  54, 207, 217, 243,  37,  91
	.byte	230, 163, 134, 107, 209,   1,  42,  24,  19, 165, 180,  35,  19, 192,  35, 194
	.byte	205, 253, 169, 183, 200,  77,  92, 119, 125, 156, 194,  52, 244,  20,  20,  36
	.byte	218, 245, 227, 202,  24, 196,  39, 139, 205, 227, 128, 150,   5, 161, 191,  69
	.byte	 97, 240,  97, 160, 216,  40,  44, 194, 132,  70,  76,  89, 128, 163, 170,  82
	.byte	192, 170, 188, 187,  14, 156, 247, 216, 195,  61, 101, 233,  88, 152, 228, 155
	.byte	186,  80, 172,  52,   9, 251, 127, 221,  34, 183,  50, 165, 103,  43, 119,  85
	.byte	172,  13, 217, 139,  28, 119, 250,  97,  24, 110, 215, 102, 227,  49, 232,   8
	.byte	172, 103,  29,  59, 253, 103, 164, 132, 139,   5,  10,  69, 193,  41, 116, 231
	.byte	162,  90, 182, 216, 152, 152, 234,   7,   7, 111,  80,  83, 111, 195, 225,  33
	.byte	 62, 194,  82,   6,  18, 218, 174, 129,  91,  39,   7,  38,   8,  30,  96, 167
	.byte	212,  71,  35, 120, 203, 189, 176,  98, 174, 238, 124, 226, 203, 229,   4, 213
	.byte	 39,  22, 114, 251,  12,  25, 213,  58,  45, 167,  54, 195, 247, 238, 190, 234
	.byte	 62,  58,  87, 254, 191, 142,  63, 224,  36,  74,  20, 179, 121, 130, 178,  43
	.byte	 49,  76,   2, 237, 229,  71,  99,  88, 136,  81, 106, 221,  29,  96,  84,  15
	.byte	246, 117, 234, 234,  52,  87, 113, 198,  28, 255, 140,  92,  30, 236,  77,  75
	.byte	 78, 226, 175, 175, 248,  26, 123, 168, 218,  62, 244,  24,  12, 177, 211, 148
	.byte	196, 169, 205, 185, 220, 203,  39,   3, 198, 151,  96, 132,   2, 138,  82, 154
	.byte	 76,  30, 217, 212,   7, 178,  79, 130,   0, 192,  21,  92, 232, 180, 118, 209
	.byte	178,  18, 134, 239,   6, 214,  27, 129,  29, 237, 240,  16, 157, 135, 177, 147
	.byte	189,  52, 211, 110, 220,  23,  86, 184,  41, 206,  33,  91, 103,  66, 210,  77
	.byte	236, 243, 186,  91,  46,  38, 166, 108, 112, 126, 184, 140,  87,  57,  90, 183
	.byte	244, 173,  26, 126, 201, 171,  87, 236,  30, 231, 203, 232, 204,   4, 102, 172
	.byte	 16, 152,  93, 209,  45, 115, 174,  60, 159,  70, 114,  31, 100, 174,  42,  16
	.byte	 86, 109,  93, 251,  20,  20,  80, 128, 178, 165, 177, 166, 143,  27, 239, 195
	.byte	 90, 213, 200, 211,  39, 201,  67, 102, 118, 195, 115, 123, 171,  53, 218,  44
	.byte	220,  53,  99, 194,  46, 133,  12,  89,  53, 119, 188,  60,  59, 165,  10, 144
	.byte	 44,  72, 117,  80,  58, 178, 251,   6, 187,  51, 198,   6, 123, 168,  81,  72
	.byte	 66, 143, 119,  19,  55,  94, 119,  24, 235,  22, 136,  47,  39, 218,  86,  99
	.byte	180, 212, 249, 217,  85,  22,  27,  30,  41,  69, 223,  98, 180, 217, 169, 240
	.byte	196,  41, 237, 161, 254, 175, 177,   0, 150, 120, 128, 247, 157, 167, 122, 238
	.byte	 30, 162,  48,  94, 181,  33, 137, 187,  22,  21, 181,  93, 221, 238, 104, 129
	.byte	145, 189,  17,  27,  60, 174, 126, 228, 183, 102, 176, 102,  35, 204, 122,   0
	.byte	180,  29, 213,  25,  35,  40, 188, 130, 125, 226, 145, 130, 221, 161, 164, 120
	.byte	 80,  68, 172, 129,  32, 204,   7,  82, 246, 147, 200, 164, 202,  60, 226, 125
	.byte	  0,  95, 168, 163, 255,  96,  32, 205, 149,  92, 100, 201, 199, 150,  58, 105
	.byte	 29, 145,  99,  78, 121, 137, 239, 157,  94,  77, 225,  36, 103, 230, 174, 149
	.byte	236, 198,  18, 122, 188,  53, 188,  87, 118, 191, 170, 151, 211, 234, 164, 187
	.byte	212, 113, 174,  61, 114,  76,  87, 153, 187,  30, 151,  32,  47,  46, 159, 128
	.byte	 48, 168,  24, 154, 207,  40, 205, 181, 244, 232, 181, 220, 135,  16, 103,  84
	.byte	 49, 203, 211, 215, 204,  71,  73,  74,  72, 234, 201, 247,  26, 103, 172,  41
	.byte	 18, 153, 111,  66,  69,  59, 175,  60, 110,  45, 132, 224,  39,  22, 138, 193
	.byte	156, 237, 160, 196, 200,   4, 145,  28, 181, 126, 211,  57,  94, 176, 116,  41
	.byte	 30, 236,  65,  27,  46, 180, 200,  45,  86,  24, 227,  68,  37,  23, 136, 137
	.byte	120,  37, 132,  86, 118,  53, 186, 201, 126,  44, 148,  16, 117,   0, 231,   5
	.byte	  6, 227, 147,  51,  31,  12, 220, 233,   8, 134, 140, 219, 158,  11,  67,  35
	.byte	  7, 113,  86,  82, 236, 162, 149,  61, 244, 174, 109, 252,  81, 237, 128, 192
	.byte	246, 240,  24, 212,  88,  52,  88, 116, 200, 251,  55,  90,  49, 229, 130,  94
	.byte	  1, 186, 230,  64,   7, 168,  74, 205,  36,  60, 131,  58,  31, 160, 212,   0
	.byte	 42, 151,  77, 169,  63,  87, 250, 216,  94, 216, 173,  81, 151,  34, 111, 122
	.byte	 82,  95, 156,  24,  95, 241, 200,  21, 116, 249, 116, 181,  87, 219,  82,   3
	.byte	 54, 107,  87, 212,  41, 193, 204, 208, 231, 114, 217,  13, 211, 130, 116,   7
	.byte	165,  93, 142, 131, 201, 156,  86, 180, 213,  83, 210,  36,  74,  86, 193,  65
	.byte	 92, 221,  96, 212, 180,  15,   9,   9, 171,  74, 200,  26,  81,  72,  34,  91
	.byte	245, 232, 110, 188, 226, 182,  23,  68,  61, 212, 106,  97, 119, 187, 147, 103
	.byte	 74, 203, 214,  81, 136,   9,  42,  29, 209, 138,  49,  18, 255, 238, 118, 133
	.byte	131,  58,  60, 190,  87, 210, 130,  42, 202,  18, 183,  11, 188, 162,  53,  24
	.byte	250,  10,   3,  65, 101,  93, 122, 105, 249, 110,  57, 150, 174,   9,  91, 248
	.byte	239, 149, 230,   9,  20, 165,  70, 122,  81, 111,  30,  14,  80, 203, 101, 131
	.byte	248,  80, 156, 169,  13, 182, 230,  98, 227, 218,  52, 178, 115, 236,  38,  80
	.byte	139, 253, 137, 236, 240,  20,  65, 125,  12, 251, 177,  32,  89, 202,  98, 141
	.byte	214, 197,  37, 142, 112, 244, 238, 190, 245, 200, 218, 227, 217,  79, 215, 175
	.byte	 40, 198,   6,  70, 254,  46, 164,  66, 192,  93, 126,  39, 202, 100,  56,  88
	.byte	192, 240, 163, 208, 188, 184, 137, 150,  63, 220,  27, 232,  22, 251, 158, 154
	.byte	195, 133, 206, 223, 144, 111, 105, 201,  95, 211, 185, 113,   4, 199,  33,  23
	.byte	176,   1, 188, 122, 244,  87, 110, 218,  57,  93,  96,  28,  20, 198,  44, 100
	.byte	114,  38,  95,  78, 178, 104,  17, 145, 186, 242, 145,  10, 100, 250,  95, 221
	.byte	 40,  70,   3, 201,  34, 207,  21, 226,  12,  58,  32, 142,  84,  88, 181, 174
	.byte	134, 186, 114, 142,  64,  79, 215, 152,  42,  16, 143, 208, 218,  48, 135, 178
	.byte	 28, 222, 149, 162, 152, 183,  10, 184,  50, 237, 206,  55, 151, 249,  53, 181
	.byte	113, 245,  27, 135,  83, 255,  89,  71, 150,  43, 122, 238, 148, 223,  79,  50
	.byte	210, 213, 166,  29,  83,  82, 207,  37,  40, 249, 130, 254, 255,  50, 201,  85
	.byte	107, 227,  50,  51, 168, 246,   5, 222, 198, 119, 152, 205,  24, 153, 111,  26
	.byte	250, 246, 215, 191,  55, 198, 180, 189, 140, 229, 180, 245, 148, 145, 248,  85
	.byte	167,  36, 101, 210, 241, 244, 249, 176, 145, 194,  90, 213, 173, 108, 172,  20
	.byte	 38, 128, 109,  19, 224, 167, 253, 246, 103,  79,  15, 242, 204,  15, 109, 111
	.byte	210, 115,  74, 166, 138, 252, 229,  97, 203, 138, 195,  26,  18,  37, 132, 166
	.byte	162, 242,  62, 225,  54, 207, 232, 165,  37, 158,  17, 243,   2, 113, 207, 135
	.byte	 80, 105, 232, 181, 124, 180, 125,  81, 155,  75, 222, 242, 172, 181,  80, 171
	.byte	 42, 192,  98, 219, 200, 176,  35, 207,  16,  39, 196, 216, 196,   3, 174, 244
	.byte	251,   6, 117,  28,  80, 245, 233,  70, 248,  94,  53, 146, 120, 120,  45, 136
	.byte	162,   3, 245,  73, 122, 183, 237, 189, 144,  59, 129, 182, 108, 180, 203, 214
	.byte	186,  96, 224, 253,  18, 154,  20, 215, 110, 101,  22,  27, 141,  79, 185, 221
	.byte	224, 109,  54, 255, 131,   1, 219, 105, 181,  44, 181,  15, 156, 254,  70,  44
	.byte	151, 126, 218, 127,  60,  95,  61, 117, 184, 103, 148,  59, 203, 185,  89, 127
	.byte	206, 198,  66, 168, 129, 206, 152, 115, 205,  67, 212, 164,  26, 141, 239,  58
	.byte	135, 140, 115, 202, 230,  77,  74,   6, 117, 246,  15, 172, 219, 154, 240, 240
	.byte	 58,  63, 238, 200, 118,  83, 149, 225,  67,  99, 177, 104,  87,  95, 200, 160
	.byte	166, 153, 107, 182, 135,  39,   0, 217,  76,  36, 173,  66, 202, 144,   3, 173
	.byte	110, 170, 223,  59,  44,  27,   1,  41,   3, 206, 178,  20, 224, 179, 238,  38
	.byte	205, 200, 223, 211, 207, 198, 152, 111, 214, 114, 231,  12,  38,   2,  85, 176
	.byte	 44, 197, 209, 247, 210, 143,  97, 201,  58,  14,  18, 129, 234, 240, 154, 204
	.byte	182, 250,  56, 143, 121,  14,  57, 224, 233, 221,  18, 219, 146, 222, 125, 151
	.byte	 42,  27,  64,  59,  34, 103,  38,  12, 139, 217, 164,  57,  26, 122,  56, 177
	.byte	111,  24, 100, 140,  71,  18, 220, 173,  21, 167,  29,  64, 233, 167,   0, 183
	.byte	 22,  45,  61,  98, 120, 203, 133, 181, 107, 167,   2,  18,  15, 176, 227,  53
	.byte	164, 251,  92, 193, 196,  71, 238,  93, 128,  25, 120,  43, 167,  82, 224, 145
	.byte	142,   0,  74,   4, 228,  21,  41, 155,  61,  37, 223, 252,  14, 150,  38,  42
	.byte	130, 176,  14, 132, 215, 194,  82, 140,  58, 101,  36, 225, 104, 234,  65, 216
	.byte	162, 229, 123, 138, 240,   4,  12,  25, 212,  32, 244, 236,  71,  10,  59,  83
	.byte	 33,  88, 108,  38, 105, 177, 124,  37, 217,  75, 152, 123,  83,  24,  45, 212
	.byte	122, 127,  33, 166, 168, 150,  95,  42, 110, 200,  95, 179, 167,  22,  95,  77
	.byte	 44, 197,  50, 189, 220,   0, 111,  36, 117, 245,  88,   3,  22,   2, 229, 174
	.byte	220, 188,  74,  22, 236,  90,  92,  57, 134,  66,  25,  52, 221, 125, 253,  86
	.byte	143,  67, 147, 122, 151,  32,  85, 207, 158, 165,  18,   3,  94, 230, 182, 107
	.byte	198, 249, 117, 223,  79, 104, 221, 151, 254, 218, 232, 155, 215,  83, 114, 249
	.byte	211, 122, 191, 204, 151, 251, 112,  60, 163, 112,  63,  95, 191, 234,  26, 246
	.byte	248, 123,  82, 248,  49, 138,  84,  99,  92, 146, 170,  56, 229,  72, 222, 141
	.byte	 64,  95, 137, 140, 146, 207, 100, 234,  67,  93, 208,  84, 232, 231,  91, 216
	.byte	134,  49, 134, 252, 241, 144, 236,  31, 108, 222, 107, 221, 210, 239,  71,  56
	.byte	184, 188,  73, 203,  76, 191, 226, 246, 253, 162,  97, 231,  33, 254,  91,  53
	.byte	232,  20, 252, 123, 161,  51, 221,  39, 148,  32,  12, 143,  11,  98, 241, 167
	.byte	116,  67, 226, 130,  56,  91, 152,  21, 180, 214, 252, 241, 114, 202, 195, 222
	.byte	226,  64,  97, 202, 131, 172,  84,  32, 146, 218,   7, 133, 139,  99,  20, 253
	.byte	 86, 185,  55,  15, 199, 181, 219, 146,  83,   6,  86,  69,  81, 187, 205, 104
	.byte	 58, 162,  52,  80,  39, 126, 202,  71,  82,  26,  60, 212, 144,  53,   1,  86
	.byte	 83,  71, 115, 166, 103, 117, 197,   4, 192, 239,  51, 127,  92,  22, 164,  64
	.byte	192, 209,  66, 135,  27, 186, 208,  72,  69,  84, 152, 118, 112,  94,  69, 182
	.byte	 46,  54, 199, 211, 175, 230, 205, 108, 209,  46, 227, 125, 165,  31, 215, 189
	.byte	250,   1,  34,  35,  54, 245, 134, 118, 119,   5,  53,  52,  71,  46, 213,  67
	.byte	 45, 127,  95, 186, 100, 127,  53,  46, 232, 133,  86,  67, 214, 206, 223,   9
	.byte	154,  92, 212,  23,  44,  20,  71, 124, 148, 183,  16,  55,  71,  46, 127, 211
	.byte	104,  87, 157,  70, 219, 174, 186, 251, 195,  20, 105, 126, 182, 251,  49, 237
	.byte	188, 255, 211,  33,  95, 164, 175, 152,  47, 218, 244, 132,  19,  95, 239, 215
	.byte	  2,   6, 107,  31,  73, 161, 219,   2, 134, 233,   4, 181, 236,  27,  45, 198
	.byte	244, 155, 116, 144,  45, 193,  24,   6, 181,  97, 253,  12, 181, 134,  37, 136
	.byte	159, 100, 201,  54, 122, 105, 206,  34, 223, 248,   9, 130,  63,  12, 128, 246
	.byte	142, 153, 230, 103,  10,  33,  21,  95,  49, 125,  32, 160,  88, 115,  27,  20
	.byte	108,  36, 212, 178,  41, 117,  92,  19, 179, 132, 183,  69, 155, 125, 187, 124
	.byte	164,  99,  89,  29, 238, 197,  81, 176, 221, 189,  82, 242, 203, 157, 182, 149
	.byte	183, 161, 206, 201,  65,  84,  57, 100, 165, 163, 208,  93, 249,  40, 126,  18
	.byte	104, 130,  24,  57,   4,  10,  21, 104,  64, 232,  33, 135, 132, 116, 167,  28
	.byte	 17, 107,   7, 154,  13, 108, 170, 245, 181,  46, 231,  63, 128,  82, 230,   3
	.byte	 16, 133, 202, 206, 236, 121,  22, 153, 227, 219, 215, 195,  15, 126, 124, 143
	.byte	 16,  48, 244, 126, 207, 216, 144, 103,  39,  97, 149, 150, 150,  62,  63,  97
	.byte	180,  17, 132,  41, 104, 169, 222, 168, 162,  22, 100, 152, 150,  40, 126, 239
	.byte	 66, 186, 139, 197,   1, 146,  79,  87, 227, 219, 129, 142,  78, 148, 107, 240
	.byte	198,  56,  24, 216, 102, 149, 228, 110, 252, 117, 117, 122,  46, 166,  89, 208
	.byte	193, 202, 110, 197, 178,  32, 127, 129,  49,  29, 201,  62,  51, 182, 249, 184
	.byte	 36, 172,   2,  35,  93, 192, 155,  38, 206, 160, 244,  63,  41, 144, 192,  37
	.byte	122, 209, 202,  52,  65, 117, 158, 185,  76,  48,  16, 124, 229, 201, 171, 186
	.byte	134, 139, 210, 180, 208,  86, 176, 157, 118,  49, 189, 112, 187, 176, 210, 201
	.byte	179,  32,  16,  36, 188, 139, 135,  64,  85, 169, 118, 254, 169, 144,  76, 160
	.byte	110,  20, 203,  79, 114,  86,  80, 250, 172,  97, 117,  28,  18, 105,  17,  67
	.byte	133, 165, 171,  14, 166,  46, 195, 206, 222,   4,  23,  84, 216,  59, 178, 219
	.byte	196, 208,  42,  87,  56, 126, 120,  32,  41, 171, 249,  93, 174, 173, 170, 239
	.byte	208, 178,  50, 175,  69, 157, 168, 140,   4,  29, 172, 252, 152, 148, 138,  31
	.byte	 94, 145, 187,  90, 223,  16, 210, 121, 102, 117,   5,  21,  26, 243, 115, 115
	.byte	210, 154, 130,  49,  69, 110,   7, 229,  55, 100, 205, 173, 172, 109,  76, 194
	.byte	 18, 241,   4, 115, 154,  71, 253, 243,  35,  13,   7, 169, 194,  93, 168, 146
	.byte	 59, 230, 240, 213,  46,  94, 196, 152, 128, 225,  74, 131,   5,  82,  13,  42
	.byte	  4,  52,  86, 123, 251,  96, 200, 234,  36, 157,  95,  59,  70,  54, 225,  34
	.byte	172,  21, 129, 103,  88, 162, 230,  60, 169,   9, 135,   4,  49,  51, 100, 128
	.byte	 58, 230, 140, 203,  67,  21, 159, 121, 239,   7, 215, 162, 199,  21,  60, 224
	.byte	220,  84, 148,  83,  54, 106, 183, 240,  16,  83,  35,  63,  60, 116, 124,  10
	.byte	 24,  80,  95, 144,  35, 239, 217, 252, 187, 130, 232, 203, 253, 225, 188, 152
	.byte	  2,  55, 200,  96,   2,   5,  45, 227, 165,  71, 138, 217,  88,  26, 171, 174
	.byte	148, 180,  64, 140,  23, 223,  22,  87,  14, 116, 177,  22, 190, 217, 131, 156
	.byte	115, 117, 246, 162,  39, 117,  91,  97, 135,  44,  65, 165, 154, 135, 125,  67
	.byte	 86, 142,  57,  95, 132,  71, 180, 134,  26, 106, 104, 253,  86,  33,  38, 246
	.byte	 89,  67,  81,  67, 243, 107, 104, 132, 217, 247,  46,  73, 111,  97, 112,  46
	.byte	 16,  41, 225, 104, 156, 183, 162, 196, 131, 114, 251, 222, 135,  84, 104, 140
	.byte	 72,   8, 172,  52, 106,  46, 159, 112,  48,  13,  30, 182, 158, 191, 105, 236
	.byte	 34, 129, 139, 164, 218, 115,  88, 235,  25,   9,  95,  68,   3, 191, 120,  94
	.byte	181, 154, 178,  55, 104,  79,  44,  76, 134,  15, 176, 113,  47, 230, 251, 122
	.byte	 36, 179, 153, 116, 103,  81, 104, 162, 128, 102, 140, 255, 112,  49, 153,  27
	.byte	103,  86, 248, 140,  95, 100,  36, 211, 164,  93,  32,  88, 183,  71,  41,   1
	.byte	 62,  11,   8, 166, 238, 203,  20, 205,  39,  38, 122, 144, 214,  89, 127,   8
	.byte	115,  18, 194, 106,  71, 148, 110, 112, 253,  32,  84,  93, 155, 187, 108,   6
	.byte	 26,  30,  59, 150, 159, 122, 218, 229, 122, 190, 236, 109,  31, 145, 118,  76
	.byte	216, 198,   8, 117, 184, 246, 254,  55, 249, 159,   2,  39,  73, 188,  93, 173
	.byte	 26, 182,  63, 188, 129, 227,   5, 186,  26,  37,  22,  55, 160,  52,  41,  85
	.byte	  2, 199,  78, 220,  25,   8,  12, 117,  13, 223,  27, 135,  78,  25,  59, 235
	.byte	226,  46,  42,   8, 181, 238, 235,  65, 146, 149, 134, 229,  46,  11, 234,  99
	.byte	105,  75, 112, 200, 241, 145, 220, 192, 227, 109, 115,  61,  40, 239,  66, 168
	.byte	 66,  74,  13,  72, 226,  41,  13, 182,  23, 250,  46,  48,  32, 119,  72,  10
	.byte	 46, 174, 108,  62,  53, 142,  88,  74,   4, 224,  85,  18, 211,  68,  74,  16
	.byte	154, 137,  74, 168,  73, 175,  63, 143, 132, 182, 157, 154, 221, 171, 181, 167
	.byte	146, 139,  86, 186, 232, 118,  34,   2,  57,  55, 217, 106,  82, 187, 135, 205
	.byte	150, 191, 166,  39, 190, 138, 201, 201, 201, 169, 127, 138, 235, 235, 170,  28
	.byte	121, 180, 135, 173,  40, 199, 177,  11, 182, 135, 102, 168, 125,   5, 215,  83
	.byte	124, 166,  84, 123,  97, 240,  30,  99,  13, 148, 133,  43, 245,   3, 119,  93
	.byte	177, 133,  92,  93,  12, 255,  98, 107, 199, 229, 109,  79, 168, 175, 187, 116
	.byte	236, 210,  45, 192,  29, 196,  22, 108, 152, 168, 187, 140, 185,  45,  43,  78
	.byte	174, 208,  37, 223,  70,  77,  89,  39, 174, 237,  30,  29,  37,  34,  75,  72
	.byte	 20,  21, 112,  38,  18,  80, 157, 240,  17,  32,  80,  41,  13, 212, 131,  24
	.byte	180, 213,  62, 101,  86, 223, 128,  10,  98,  61,  82, 163, 200, 124,  11,  67
	.byte	 48, 157,  99, 198, 206,  81, 147, 216, 116,   7, 181, 143,  90, 230, 110, 112
	.byte	220,  85, 135, 195, 123, 245,  17, 200, 245, 218,  37, 110, 185, 241, 128, 108
	.byte	226, 223,  84, 189, 127,  35, 244, 135,  39,  21, 209, 231,  40, 179,   1, 239
	.byte	 27,  95, 173, 114, 172, 145, 208, 208, 240,   7, 139, 133,  54, 212,  50,  39
	.byte	 92, 116, 141, 208, 132, 143,  78,  27, 130, 236,  79, 217, 204, 130,  95,  95
	.byte	151,  49, 126, 185,  86,  88, 149,   1, 223, 109, 130, 237, 164,  27, 117, 250
	.byte	200, 137,  89,  48,  82, 123,  49, 102,  62,  12, 203, 132,  88,   5,  36, 141
	.byte	193, 150, 130, 208, 107, 212,  60,   6, 138,  91,  75,  11, 214,  10,  94, 164
	.byte	  4, 250, 103,   9, 184, 221,  56,  80, 158,  32, 196, 130,  48, 105,  21,  84
	.byte	  5, 218, 148, 179, 185,  71, 161, 110, 181,  61,  52,  57, 166, 251,  30,  10
	.byte	 48, 254, 154, 182, 190, 209, 128, 241, 181,  47, 106,  81, 242,   5, 216,  97
	.byte	140, 210, 130, 156, 129, 124,  51, 181,  80, 247, 103,  67, 234, 222, 163, 214
	.byte	158, 138, 119,   8,  83, 152,  87,  68, 151,  12, 200, 235,  98, 209, 162, 205
	.byte	103,  45, 223,  46,  46,  27, 239,  99, 120, 113, 126, 199,  17, 177, 146, 173
	.byte	 62, 185, 219,  54, 232, 139,  97, 115, 187, 210,  48, 134,  32, 202, 132,  38
	.byte	  1, 158,  81,  73, 132, 182, 223, 174,   3,   5,   5,  70, 198, 145,  55,  86
	.byte	 46, 142, 210, 249, 244,  41, 240, 123, 182,  13, 203,  96, 206, 145, 102, 251
	.byte	146, 205,  75, 143, 229, 188, 212, 247, 178,  69,  33,  90, 126, 119,  29,  16
	.byte	198, 119,  82,  73, 112,   7, 191,  29,  99,  55,  61,  53,  65,  33, 205, 168
	.byte	118,   8,  62, 102, 236,  42, 144, 252, 172, 177, 148, 144,  75, 235, 169,  58
	.byte	 34, 158, 128, 173, 253, 137, 215, 234,  96, 208,  50, 149,  66, 240, 174,  39
	.byte	 60,  69, 102, 169,  87,  76, 184,  97, 228, 118, 224, 155,  51,  81, 113,  42
	.byte	 96, 219, 207,  60,  18,  53, 126, 146, 233,  62, 187, 125, 202,  34, 234, 238
	.byte	206,  86, 225, 230, 234, 210,  78,   8, 133, 196,  37,  36,  67, 178, 189, 134
	.byte	214,  67,  74, 124, 112, 250,  74,  34,  77, 125, 185, 102,  80, 127, 130, 159
	.byte	247,  18,  89, 193,  93, 241,  91, 123,  11,   8, 182, 161,  98, 146,  20, 193
	.byte	 72, 170, 161,  78,  33, 214, 155, 217, 115, 186, 215, 181, 171, 205,  62, 236
	.byte	165, 127,  49, 208,  67, 188,  44, 227, 154, 134, 176,  53, 175,  62, 224,  72
	.byte	 76, 234, 178,  54, 148, 162, 225,  40, 233, 244, 106, 182, 200, 192, 202, 228
	.byte	145,  92, 236,  94, 133, 151, 184, 213, 146, 105, 249, 115, 137, 117,  88,  55
	.byte	 76,  97, 151, 103,  82, 186,  48, 197,  34, 123,  94, 252,  89,  57, 159,  98
	.byte	 61, 185, 131, 234,  51, 160,   2, 102,  64, 123, 108, 232,  93, 108, 236, 150
	.byte	248, 224, 195, 221, 195,  63, 208, 106,  76, 242, 194, 240,  42, 192, 120,  64
	.byte	208,  71, 203, 162, 190,  92, 161, 165, 132,  80, 253, 225, 115, 153, 248,  58
	.byte	 96, 199,  50, 229, 103, 136,   8,  51, 108, 143, 217,  88, 106,  29,  52, 187
	.byte	252, 198, 213, 226,  40, 192, 120,  46, 152,  88, 226, 152,   0, 151, 235, 206
	.byte	164, 139,  19, 215,  39,  64, 163, 118, 227,  62,  80, 138, 127,  22, 159, 225
	.byte	128,  29,  62, 124,  25, 183,  28, 137, 236, 160, 151, 157,  90, 237, 225,  48
	.byte	208,  50,  70, 162, 244, 110,  48,  16, 197,  83,  20,   5, 133,  14, 191, 145
	.byte	 18, 234, 189, 119,  57, 149,  44,  67,  34, 149, 179,  97,   1, 119, 141, 173
	.byte	 12, 226, 150, 251, 193,  62, 212,  34,  74,  58, 198, 138,  97, 254, 147, 189
	.byte	 12,  60, 149, 244,  13, 121, 242, 171,  38,  35, 116, 179, 138, 199, 129, 109
	.byte	180, 255, 175, 116, 206,  63, 223, 151, 177, 134, 128, 124,  30, 152,  40,  58
	.byte	190, 134, 109,  58,   4, 139,  47,  22,  23,  75, 208, 216,  35, 121,  46, 162
	.byte	  4, 139, 246, 246,  35, 134, 231,  69, 113, 145, 126, 194, 121, 132, 214,  14
	.byte	 87,  81, 194, 196, 152,  67,  43, 150,  59, 204,  76,   2,  92, 222,  19,  62
	.byte	 10, 246, 176, 122,  72, 131, 177, 155,  55, 176, 239, 128, 193,  77, 218, 237
	.byte	 19, 107,  18,  24,  68, 112,  78, 158,   4, 224, 115, 226, 123, 100, 134, 136
	.byte	200, 102,  83, 125, 156,  51, 156,  84, 233, 182, 129, 237, 224,  26, 225,  39
	.byte	 73,  80, 207, 159, 102,  34,  78, 141,  29,  45, 164, 191, 186, 170,   5,  12
	.byte	166,  35,  68, 170, 150,  82, 152, 173, 110, 205, 245, 133, 218, 143, 208,  17
	.byte	146, 146, 254, 242, 205, 209, 232,  30,  81,  11, 151, 216,  69, 241, 132,  18
	.byte	178, 168, 116,  98, 140,  83,  88, 224, 241, 182, 167,  87, 251, 233, 211, 148
	.byte	  8, 229, 241, 123,  74, 146, 166, 219,  24,  61, 105, 123,  12, 109, 229, 122
	.byte	214, 182,  22,  69,  54, 245,  86, 108, 132,  74, 204,  93, 129,  58,  57, 192
	.byte	 44, 134, 105, 170, 227, 102,   6, 131, 191,  81,  32, 134, 199, 148,  68, 136
	.byte	218, 190,  72,  98, 157, 236, 222,  76, 147, 255, 253, 113, 162, 187, 138,  30
	.byte	 92, 149,  88, 200, 197,  26,  63,  82, 163, 246, 147, 136,  42, 219,  50,  90
	.byte	130, 186, 174, 203,   6, 174, 227, 215,  66, 198,  36,  57,  19,  42,  40, 215
	.byte	 15,  78, 251, 212, 231,  34, 108,  55,  40,  75,  47, 223, 198, 142,  25, 149
	.byte	 30, 136,  96, 245,  11, 111, 204,  31,  14,  37,  80, 137, 138, 143, 168, 239
	.byte	209, 239, 237, 206, 101,  48,  30,  29, 167,  42,   3, 103, 231,  59,  15,  45
	.byte	142, 228, 230, 227, 209, 249, 230, 144, 196,  19, 235,  70,  94, 254,  96,  58
	.byte	104, 230,  53,  25, 109, 142,  20, 150,  21, 244,  91, 223,  73, 201,  76, 196
	.byte	170, 182,  65, 131, 125, 211, 232,  54, 202,  67, 154,  87,  82, 148, 100,  13
	.byte	 63, 180, 101,  63, 168,  96, 144, 160, 237,  77, 131,  25,   1,  42,  83, 253
	.byte	 48, 241, 148, 231, 140, 197, 220, 106,  11,  76, 234, 106,  99,  12, 101, 164
	.byte	236,  44,  38, 133,  90,  75, 225, 124,  97, 244, 205, 120,  11,  70, 177, 242
	.byte	 72, 244, 141, 216, 222, 142, 205, 133,  80, 208,  52, 170, 255,  32,  58, 225
	.byte	247,  84,  93, 152, 211, 241, 224, 204,  71,  26, 215, 203,  58, 167, 105, 131
	.byte	118, 113, 146, 104,  89, 240, 138, 102,  77, 244, 235, 123,   2,  34, 177,  22
	.byte	 19,  77,  12, 223, 112,  13, 255, 147, 129,  20, 119, 181, 106,  54, 221, 221
	.byte	178,  75, 144,  37,  53, 244,  39, 170, 182,  77, 190, 147,  64, 108, 144, 217
	.byte	 70,  60,  17, 255,  24, 171,  51,  26, 105, 101, 205, 174,  77, 112, 152,  64
	.byte	238, 236, 255, 146, 129, 119,  29,  54,  40,  94, 110,  91, 181, 131, 151, 110
	.byte	 97,  14, 169,   9, 204, 212, 189,  45, 235, 107, 103, 221, 186,  77,  92, 192
	.byte	 94, 172, 231,  12,  34,  51,  58, 103, 157, 120, 199, 219, 101, 143, 199,  12
	.byte	250,  76,  68, 130, 125, 146, 159,  88,  16, 165, 160, 160, 162, 172, 178, 209
	.byte	204, 147,  50,  83,  89, 208, 189,  60, 231, 195, 143, 230, 171, 153,  87,   0
	.byte	170,   3, 152,  83,  31,  95, 107, 130, 219, 136, 254,  13, 146, 116,  88,  93
	.byte	198, 120,  20,  26,  95, 251, 187, 239, 108,   1,  57, 231, 170, 169,  71,  92
	.byte	 18, 194, 198, 125, 147, 137,  44, 150, 151, 114,  51, 247,  72, 145, 180, 249
	.byte	188, 183,  29, 241, 220,  42,  16, 197,  35,  17, 137, 203, 244,  99, 179, 232
	.byte	155,  23,   3,   6, 121,  27, 137, 106, 203,  46,  23, 242,  74,  88, 109, 196
	.byte	206, 165,  21,  12,  35,  59, 172,  24, 171, 154,  88,  13, 195,  33,  72, 212
	.byte	 74,  80, 169, 252,  88,   9,  38,  87, 237, 207,   4,  99, 182, 146,  68, 151
	.byte	152,  77, 102,  75, 180,   3,  42, 236,  93,  46, 239, 249,  25,  73, 140, 241
	.byte	245,  92, 198,  16, 103,  92,  52, 183, 191, 254, 100,  15, 106, 160, 212, 170
	.byte	154, 198, 203, 226,  24, 182, 117,  13, 119,  27,   9, 156, 216, 156,  25, 164
	.byte	148, 245,  10, 200, 213, 220, 194, 169, 118, 153, 150,  85, 166,  29, 112,  96
	.byte	128, 124, 156, 187, 244, 250,  44, 114, 180,  59, 128, 199, 184, 138, 133, 111
	.byte	102, 113,   1, 179, 140,  22, 180, 126, 229,   9,  43, 130, 213, 142, 220, 168
	.byte	252,  48, 156,  44, 238,   6,  67, 138, 147, 118, 185, 116, 178, 237, 185,  24
	.byte	  7, 156,  86, 247,  66, 197, 213, 180,  45,  75, 182,  17, 240, 235, 220, 239
	.byte	176, 201,  20, 174, 131, 132, 193, 193, 155, 104,  27, 229,   3,  50, 158, 179
	.byte	230, 114,  90, 121,   4, 236, 132, 130,  28, 108,  57, 171,  79, 219, 173, 249
	.byte	134,  78, 212, 226,  44,   8, 207,  62, 173,  62,  37, 150,  33, 168, 217,  99
	.byte	194, 218, 148, 232, 181,  22,  39,   8, 109, 169,  31, 135,  54, 254, 188,  87
	.byte	140, 102,  71, 158, 135, 136, 206,  17, 191,  49,   6, 196, 113,  50, 236,  54
	.byte	 51, 180,  97, 248, 189, 129, 169,  75, 255, 139, 247,  51,  80,   9,   8, 131
	.byte	206, 226, 213, 208, 252, 226, 168,  76,  28,  85, 159, 242, 246, 230, 198,  39
	.byte	139, 254,  53, 150, 222, 180, 233, 178, 251,  48, 102,  90, 121,  73,  90, 229
	.byte	140, 121,  64,  55,  84,   8, 124,  66,   1,  64, 213, 190, 155,   7, 163, 163
	.byte	 49, 138,  20,  13,  42, 111,  62, 127, 149, 219, 173,  12,  71, 235, 251, 206
	.byte	118, 173,  62,  30,  92, 133, 180, 222, 234,  43,  75,  90, 161, 126,   3,   9
	.byte	250, 209,  19,  11,  15, 178,  82, 210,  18,  40,  82, 155, 193, 185, 114, 207
	.byte	112, 162, 241,  49, 214,  22,  79, 244,  95, 185, 220,  76,  95,  49,  26, 150
	.byte	 50, 137,   4, 253, 119, 240,  63,  38,  85, 228,   4, 192, 135, 178, 105, 231
	.byte	234, 248, 116,  83, 206, 163,  48, 193, 246, 211,  94,  66,  73, 172,  97,   1
	.byte	 88, 214, 126, 202, 217,  29, 218, 197, 112, 166,  97, 206, 254, 186, 225,  71
	.byte	  0, 244, 169, 247, 147,  45,   8, 201,   6,  40,  14, 165,  10, 202,  23, 243
	.byte	 61,  46, 253, 119, 105, 139, 151,   7, 124, 252, 124, 228,  19, 218, 210, 171
	.byte	 40,  79,  39,  63, 218,  27,  94, 101,  52,  76, 119, 187, 130,  48,  88,  40
	.byte	138, 201, 189, 125, 198, 147,  60, 208,  44, 192,  54, 201,  35, 134, 167,  66
	.byte	180, 250,  38, 158,  53, 172,   9,  58, 170, 193,  33, 159,  12, 233,  90, 148
	.byte	253,  79, 171,  94,  66,   2,   5, 215, 174,  53,  59,  31, 255,  65,  34,  77
	.byte	 60, 109, 154, 247,  83,  42,  93, 177,  88,  99, 156,  49, 226, 198,  19,  19
	.byte	165, 183,  51, 181, 248, 236, 193, 177,  88,  75, 200, 163,  94, 194,  30, 145
	.byte	120,   8, 201, 240, 168,  90, 137, 135,  77,   9,  44,  11,  73, 240, 251, 195
	.byte	188,  47,   2, 212,  26, 252,  36, 105, 151, 165, 120,  18,   6, 121,  10, 141
	.byte	 60,  47,  66, 231,  86, 173, 172, 109,  10,   2,  94, 212,  88,  59, 129, 104
	.byte	167, 237,  66,  98, 212,  31, 234, 158, 192, 165,  38,  90,  41, 249,   5,  45
	.byte	124,  49,  53, 251, 181, 166, 137, 228, 141, 230, 180, 217,  17, 230, 186, 103
	.byte	 52, 109, 121, 224,   2,  60, 210, 104,   3,  36,  60,  52, 235,  95,  33,  44
	.byte	248,  30, 184,  40,  47,  84,  31,  18, 111,  50, 252, 179, 191, 234, 169, 226
	.byte	 23, 200, 114,   1, 240, 124, 252, 225, 154,  95, 231,  21, 185, 140, 194,  28
	.byte	212,  47, 214,  73, 118, 136, 211,  32, 183,  56,  77, 110, 135, 155,  49,  30
	.byte	246,  71, 111, 152,  54,  11, 220, 125,   7, 163, 195, 190,  48,  84,   5,  36
	.byte	 88,  24, 203,  82,  27, 239,  96,  73, 207, 230, 116,  54, 183,  64, 161,  45
	.byte	219, 239, 184,  78,  51, 203, 112,  20, 214,   6,  48,  41, 174,  66, 150, 191
	.byte	238,  86, 157,  47, 193,  54,  36, 212, 138, 184,  33, 162, 252,  40, 137, 152
	.byte	180, 187, 238, 108,  31, 159, 236,  46, 127, 118,  48,  36,  75, 251, 115, 178
	.byte	 64, 214, 175, 201,  50,  96, 230, 179,  92, 119,  54,  56, 244, 170, 202, 162
	.byte	141, 152, 176,  25, 121, 102, 124, 220,  11, 153, 250,  90,  50,   8, 246,  81
	.byte	212,  61, 188, 192, 126,  33, 129,  53, 129,  53,   5,  21, 205, 130,  96, 237
	.byte	190, 202, 235, 211,  94, 114,  21,  39, 127, 104, 193,  45, 199,  79, 189, 241
	.byte	204, 165, 105,  16,  97,  88,   8,  46, 211,  81, 217,  14, 124,  26, 140,  32
	.byte	 41, 141, 156, 200, 207,  26, 204, 181,  49, 141,  53, 135, 130, 197, 182,  43
	.byte	 20,  97,  66, 179, 206,  17, 136, 149,  33,  48,  96,  32, 213, 172, 105,  92
	.byte	 21,  28, 199, 149, 109,  32,  79,  22,  16,  20, 251, 125, 128, 131,  65,  39
	.byte	 96, 140, 169,  98, 207, 206,  79,  30, 184, 181, 160,  28,   6, 132,  75,  58
	.byte	193,  57, 192,  29, 142,  36, 192,  33, 254, 156, 135, 245, 192,  85, 164,  87
	.byte	108,  53, 191,  69,  88, 242, 191, 238, 154,  52,  64, 163, 194,  27, 151, 109
	.byte	144, 171, 148,  40, 135, 241, 165, 153, 247,  91, 225,  58, 117, 201,  80, 164
	.byte	 86, 110, 200,  99, 191,  62, 218, 178,  92, 181, 197, 196, 119, 208,  72,  33
	.byte	 45,  77, 146, 112, 135, 141, 153,  71, 110, 129, 209,   4,   1,  67,  29, 149
	.byte	214, 190, 218,  51, 189, 109,  79, 190, 252, 121,  37, 116, 102, 236, 193, 167
	.byte	219, 192,  19, 123, 121, 178, 112, 199, 158,  66, 217,  86, 148, 102, 237,  85
	.byte	212,  12, 138,  70, 200, 160,  12, 133, 188, 196,  81,  63,  76,  52,   2, 159
	.byte	156,  36,  29, 133,  82,  72,  77,  24, 157, 162, 180, 115, 212, 194, 172,  56
	.byte	 46, 108,  19, 144,  35,   1,  74,  95, 158,  42, 148, 169,  82,  29, 220,  15
	.byte	 13, 193, 241, 201,  71, 196, 124, 247, 122, 172, 191,  42,  38,  25, 249, 119
	.byte	254, 119, 138,  45, 243, 251, 111, 217,  67, 148, 215,  41,   8,  92,  45, 180
	.byte	179, 252, 148,  96, 164, 132,  84,  65, 100,  57,   3, 136,  11, 154,  24, 218
	.byte	176, 172, 200, 171,  66,  91, 121, 252, 114,  77, 228,  73, 158, 207, 119, 111
	.byte	 89,  54, 163,  23, 201,  64,  90, 160, 150,  28, 152,  66, 253,  91, 199,  61
	.byte	130, 158,  26, 186, 249,  31, 167,  95, 118, 253, 159, 189, 250, 230,  37, 214
	.byte	 70, 171,  11, 254, 229,  99,  75, 167, 214,  99, 200,  54, 216,  24,  50,   2
G$li_matrix:
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  2, 178,  68,  76, 162, 138,  38,  64,  62, 253, 152, 129, 250, 174,  31, 155
	.byte	  4,  25,  45,  28,  90, 241, 234,  94,  68,  32, 175, 165, 128,  33,  77,  17
	.byte	 10, 172, 231,  88, 126, 243, 217, 254,  58,  70, 251,  45,  55,   2,  68,  41
	.byte	181,  22, 189, 112,  86,   1, 155, 132, 242, 116,  81,  56,  64, 195, 133,  50
	.byte	242,  90, 230, 112,  48, 177, 161, 225, 100, 181, 111,   3, 106, 173,  33,  74
	.byte	153,  46, 193,  84,  94,  87, 115, 152,  13,  57,   7,   0, 205,  60, 156, 176
	.byte	 20, 190, 112,  65, 106,  45, 240,  40, 105, 166,  19,  33, 177, 157,  47,  71
	.byte	177,  24, 134,  72,  90, 184,  24, 210,  25,  14, 231, 132, 203, 178,  48, 198
	.byte	192, 237, 192,  32, 233, 156, 230,  64,  81,  57,  17,  62, 150,  53,  61,  71
	.byte	 20,  73, 150,   4,  70, 236, 224, 227, 145, 139,  80,  73,  88, 161, 134, 229
	.byte	240, 112,   3, 216,  96, 225,  53, 236,  30,  91,  20, 224, 202,  24, 142, 240
	.byte	177, 186, 189,  99,   9,  25,   7, 142,  28, 172,  16,  76,  90,  95,  83, 193
	.byte	252, 220, 150, 112,  58,  17, 229,  50, 200,  99,  42,  10, 255, 153,  27, 242
	.byte	169, 160,  89,  21,  75, 155, 183, 202, 106, 241,  19, 183, 130,  30,  92, 236
	.byte	 30,  52, 162, 129, 174, 180,  70, 158, 239,  65,  50, 194, 128, 130, 157, 146
	.byte	220, 182, 207, 169,  98, 108, 247, 222, 171, 140,  70,  97, 236,  45, 192, 255
	.byte	 66, 184,  20,  77, 104, 205, 163,  37,  55, 233, 176,   3, 233, 231,  21, 193
	.byte	245, 131, 199, 214,  90, 223,  93, 207,  72, 146,  77, 207, 175, 248, 192, 108
	.byte	254,  40,  25,  59, 238, 168, 251,  29, 116, 119,  68,  61, 156,  33,  65, 201
	.byte	 21, 182,  84,  74, 254, 243, 172, 122, 157,  60,  98, 116, 171,  26, 128, 174
	.byte	154,  66,  24,   7,  40, 103,  57, 194,  20, 176, 201, 107,  35,  88, 185,  74
	.byte	206, 201, 215,  62, 176, 135, 159, 225,  79,  17, 232,  17,   1, 116,  69, 253
	.byte	 66,  97, 141, 191, 230,  29, 211, 111, 251, 175, 222, 232,  17, 246, 198, 253
	.byte	136, 244,  43, 110, 200,  42, 124, 177, 238,  35, 207,   9, 172,  42, 141, 134
	.byte	 20, 103,  16,  70,   3, 185, 147, 105, 170, 188,   0, 161, 209, 196, 204,  18
	.byte	160, 235, 247, 221, 236, 190,  57, 210, 231,  45,   1,  67, 213, 137,  99, 112
	.byte	202,  58, 171, 136,  36,  50,  92, 141, 232,  16,  39, 175,  67, 178,  56,  70
	.byte	199, 188, 129, 117, 152, 137,  74, 219, 124,  19, 185, 202, 132, 213, 133, 197
	.byte	 72,  63,  51,  24, 242, 159, 203, 190, 230, 143,   0, 243,  24, 185, 160, 193
	.byte	153, 150,  19, 233, 170,  25,  47, 248,  26,  71, 218, 235,  10,  28, 242, 167
	.byte	212, 181,  86,  49,   6,  75, 250, 134,  60, 144, 128,  77, 140, 141, 240, 153
	.byte	246, 155, 165, 181, 162, 217, 205,  34, 141, 236, 157, 110, 140, 177, 153, 139
	.byte	106,  79, 127, 194,  20,  88, 154,  82, 252, 238,   9, 226, 128, 200, 231, 126
	.byte	206, 132,  47,  99, 160, 184,  15,  24, 245, 181,  18, 113,  20, 254,  83, 113
	.byte	120,  66, 225, 191, 241, 193,  69, 216, 176, 242, 227, 127,  81, 109,  66, 252
	.byte	151, 174, 169, 191, 151, 174,  25,   1, 177, 223, 199, 229, 183,  10, 193,   7
	.byte	194, 242,   4, 131, 117,  12,  86,  94,  79, 185, 241, 197,  95, 171, 216,  89
	.byte	122, 230, 253,  11,  86, 205, 116,  30,  15,  62, 200, 119,  33,  98, 113,  45
	.byte	 26, 248, 146, 220,  34, 169,  33, 193, 106,  28, 130,  74,  12, 119,  14, 191
	.byte	249, 252, 114,  87, 182, 179,  68, 171, 175, 118, 222,  89, 129, 207,  79, 117
	.byte	184, 131,  98, 131, 242,  54,   2,  95, 255,  62, 198,  71, 139, 247,  58, 177
	.byte	166, 112, 120,  67,  98, 178, 213,   6, 229, 231, 150, 166, 132, 210,  40,  62
	.byte	204, 233, 242, 174,  97,  35, 113, 195, 190,  21, 220, 103,  60, 230,  48, 244
	.byte	250, 112, 201, 188, 249,   8, 240,  34, 193,  51,  92, 123,  73, 137,  74, 127
	.byte	 24,  12,  70, 203, 125, 117,  30, 134, 124, 104,  57,  19, 202, 204,  55,   2
	.byte	117,  57, 253, 169, 178, 102, 239, 185,  82, 107, 204, 234, 239, 151,  53, 238
	.byte	 82,  27, 117,   4,  11, 107,  13,  28, 247,  52, 152, 121,  97, 218,  76,  11
	.byte	234, 136,  21,  75,  88,   0, 202, 192, 112, 194, 254, 129,   1, 151, 144, 129
	.byte	 16,  80,  29, 201, 157, 102, 116, 121, 230,  35,  78, 168, 246,  20, 212, 102
	.byte	 74, 185, 228, 253, 175, 170,  60, 115,  35,  80, 201, 170, 246, 165, 167, 168
	.byte	 56,  70, 110, 239, 106, 137, 145,  82, 211,  47, 135,  73,   8, 174, 166, 158
	.byte	 14, 125,  83, 101, 219, 247,  89,  25,  95,  10, 178,  33, 174, 201, 118, 196
	.byte	128, 179, 183,  28, 177, 108,  20, 162,  29,  30, 150,   2,  52, 175, 223,  38
	.byte	172, 191, 231, 251, 137, 153,   2,  43,  65, 100, 199, 118,   7, 154,  51, 206
	.byte	122,  48, 104, 241,  20,  92, 245,  52, 170, 196,  45,  59, 216,  48, 212, 235
	.byte	130, 112, 207,  91,  21, 167, 206,  85, 234, 158,  11, 205, 243, 162, 205,  70
	.byte	198, 231,  35, 182, 173,  83, 104, 202,  24, 151, 154, 165,  23, 211, 190, 135
	.byte	149, 246,  78, 231, 155,  39,  26, 155,  11, 211,  73, 240,  86, 223,  26, 251
	.byte	118, 187, 188, 105,  20, 117, 248, 234, 144,  34,  25, 154, 195,  16, 240,  51
	.byte	111, 168,  10, 243, 119,  57, 104,  73, 106, 200,  26,  51,  26,  13,  74, 232
	.byte	254, 237, 116, 150,  16,  25,  52, 180, 241, 240, 251, 180,  96, 144, 126,   8
	.byte	100,  98, 201, 153, 103, 183,  69,  32,  88, 118, 252, 106,  41, 151, 202,  95
	.byte	160, 222,  77,  23, 199, 177, 135, 172,  20, 219,  12, 102, 172, 206,  57,  35
	.byte	 54, 236,   5, 212, 204,  52, 172,   5,  67, 199,  71, 158, 106,  72, 161, 153
	.byte	180, 118,  75,   9, 113, 187,  11,  44, 129, 229, 104, 164, 141,  48,  26,  41
	.byte	227, 203,  97,  82, 195,  52,  33, 161, 133, 141,  80,   8, 154,  94, 205,  53
	.byte	 98,  20, 169,   8, 209, 213,  83, 153,  66,  82,  65,  61,  44, 112,  37, 157
	.byte	121,  97, 143, 199, 138, 201, 216, 179,  28, 218,  77, 158, 118, 174,  74, 174
	.byte	144, 245, 208,  68,  50, 220, 136, 136, 252, 204,  22,  52, 117,  48, 156, 150
	.byte	 75,   9,  98, 166, 242, 178,  38, 236, 140, 181, 168, 204, 185, 161,  12, 177
	.byte	116, 144,  72, 210, 193, 198, 158, 148,  11, 137,  11, 171, 240, 120,  83, 129
	.byte	 61, 137, 104,  83, 226, 132,  55, 220, 140,  85, 158,  82,  27, 108,   6,  16
	.byte	224, 150, 185,  72,  22,  67,  42, 168,  65,  89, 226,  24, 128,  10,   1,  25
	.byte	176, 160, 162, 177,  43,  16, 120, 223, 138,  67,  39,  18, 171, 252,  93, 112
	.byte	  8, 191,  21, 242,  39, 245, 109,   8,  93, 167, 220, 133, 141, 231,   0, 246
	.byte	179, 230, 157,  35,  41, 118,  35,  83, 163, 109,  31, 254, 150, 198, 213,   7
	.byte	  4, 187, 106,  75,  28,  73, 158, 188,  12,  70, 115, 109, 233, 238, 110,  75
	.byte	 99,   5,  86, 120, 115,  62,  17, 185, 141, 177, 215, 216, 128, 147,  21, 149
	.byte	 68, 222, 227, 196, 154, 155,  83, 152,  64, 155,  12, 111, 109, 127,  15,  54
	.byte	103, 172, 250, 190, 238, 237,  96,  86,  14, 209,  72,  53, 170, 214, 129, 251
	.byte	 24, 214, 161, 222,  37, 156, 216, 198,  22, 192,  41, 223, 191, 168, 191,  79
	.byte	175, 116, 131, 241,  82, 151,   5,  18,  60, 237, 125,  49, 108, 187, 203, 211
	.byte	 12, 142, 127, 222,   1, 211,  68,  35,  37, 180,  79,  54, 141,  54, 141, 114
	.byte	215, 154,  73, 242, 112, 151,   6, 124, 185,  35,  68,  18, 203, 254, 194,  58
	.byte	172,  63,  97, 150, 250, 197, 109, 194, 113, 117,  74,  22,  86,  98, 140, 124
	.byte	  3, 111, 190,  63,  94, 222, 150, 252, 216,  25,  41, 128, 124, 155, 103, 185
	.byte	 20,  69, 242, 104, 140,  61, 128, 218,  90,  73,  62,  51,  70, 121, 187, 224
	.byte	183,  21, 195,  68, 176, 118, 235, 190, 232, 165,  84,  23, 138,  49,  65, 255
	.byte	136, 114,  64, 128,  96, 248, 180, 189,  92,  98,  34, 198, 229, 122,  39,  27
	.byte	198, 153, 153, 202,  30, 142,  47, 120,  51, 238,  33, 111, 210, 150,  89,  43
	.byte	248, 116,  86, 255, 166,  98, 137, 196,  10,  19,  66,  98,  34, 199, 148, 153
	.byte	205, 154, 121,  94, 111, 162, 213, 200, 117, 102, 110,  28, 241, 155, 175, 219
	.byte	110,  78, 179, 229, 217,  93,  85, 176,  18, 113, 242, 113,   0, 169, 119, 221
	.byte	140, 239, 120, 211,  79, 171, 152,  14, 250,  51, 146, 188,  38,  53,  14, 145
	.byte	 12,  24,  21, 104, 124,  35,  83, 193,   0,  30,  62, 226, 167, 196,  30, 204
	.byte	132,  38,  21,  92,  34, 225,  81, 180, 126,  16, 111,  16,  24,  34, 253,  14
	.byte	218, 229,  39,   8, 193,  30, 223,  83,  44,  21,  16,  87, 158, 163, 173, 147
	.byte	 77, 209, 241, 180, 210,  95, 216, 152,  64, 187, 132, 239,  14, 104,  31,  33
	.byte	132, 243,  75, 158, 252, 161, 250,  14, 151, 168, 129,  72,  76,  22, 213,  68
	.byte	  8, 107,  69, 137, 232, 222,  22,  95,  65, 121,  58, 136, 211,  97,  60, 168
	.byte	 38, 208,  53, 131, 130,  39,  80,  76,   7, 209,  29, 235, 160, 111, 219, 181
	.byte	216, 111,  39, 167,   4,  84, 239,   2,  42, 199, 251, 183,   7, 136, 169,   0
	.byte	 62, 248, 253,  27,  81,  92,  66,  65,  78,  91, 245,  26,  87, 223,  27,  99
	.byte	198, 129, 223, 125, 167, 123, 116, 124,  29, 145, 166, 202, 187, 134, 178, 185
	.byte	136, 208,  56, 108, 252,  48, 170, 174, 175,  22, 227, 108,  55, 126,  63,  33
	.byte	182, 219, 219,  61, 106, 186, 237, 211, 237, 181, 240, 161,   7,  78, 172, 222
	.byte	194,  26,  83,  31, 152, 173, 186,   9, 232,  28, 219,   8, 130, 182, 230,  93
	.byte	 32,  66, 194,  83, 172, 162, 163, 223,  54, 214, 199,  86,  56, 246, 125, 191
	.byte	186,   0, 234, 247,  40,  38,  62, 113, 255,  57, 182, 217, 178, 173,  75, 187
	.byte	 59,  62, 199, 131, 145, 174, 252, 235, 178,  25, 158,  27,  70, 142, 254,  87
	.byte	 66, 228,   0, 114, 127,   9, 182, 157,   7,  59,  72, 160,  10, 100, 211,  29
	.byte	168, 103, 129, 142, 204, 248, 173, 180, 133, 124, 194,  67, 119,   0, 156, 234
	.byte	194, 239, 149, 155, 194, 163, 237,  56, 192, 145, 244, 222,   4,  22, 162, 115
	.byte	 35,  99,  28, 253, 239, 107, 109,  53, 164, 170,  63, 194, 155, 100, 241,  20
	.byte	 58, 142, 230, 153,  94, 160,  73, 137, 205,  22,  51, 209,  21, 121,  24, 201
	.byte	233, 172,  95, 113, 123,  47,  53,  27, 211, 183, 139, 211, 245, 113, 194, 226
	.byte	 92, 233, 148, 198, 114, 243, 164, 222, 164, 150,  79, 190,  33, 139,  74, 238
	.byte	138,  94, 108,  31, 201,  93,  69,  70, 158, 254,  62,  61, 234, 200, 202, 107
	.byte	134,  98, 249, 104, 142,  55, 154, 196,  86, 191, 154,  14,  21, 114, 246, 136
	.byte	 72, 240,  22, 156,  57,  53,  79, 121,  66, 130, 239,  28,  23,  89, 114, 253
	.byte	 14, 210, 187,  54, 208, 111,  84, 241,   2, 171,   7,  71,  12, 139, 103, 237
	.byte	231,  35, 158,  78,  78,  77,  10, 116, 144,  27, 129,  77, 184,  83, 142, 130
	.byte	192,  79,  99, 248, 173,  37, 186, 252,  66,  22, 253, 190,  68, 100, 193, 228
	.byte	197, 212,  72, 216, 100, 184, 197, 189, 164, 175,  59,  70, 220,   1, 133, 163
	.byte	108, 171,  47, 235, 148, 193, 210,  72,  73,  51, 122, 147, 162, 203, 124, 194
	.byte	 78,   4,  13, 148,  40,  71,  19,   3, 254, 185,  31, 238, 118, 135, 229, 160
	.byte	154,  86, 216, 238, 185, 231,  56, 186, 114,  96, 191,  34,  23, 226, 144, 149
	.byte	241, 219,  27,  81,  12, 227, 144,  25, 126,  67, 231,  75, 179,  67,  94,  51
	.byte	100, 249,  76, 219,  43,   6,  65,  71, 196,  77,  76,  99, 247, 123,  81, 230
	.byte	159, 170,  84,  92, 175,  53, 200,  94, 213,  64, 218, 125,  88,   7,  58, 223
	.byte	 64, 114,  71, 146,  97, 193,  12, 159, 153, 104, 241, 161,  64, 223,  16, 250
	.byte	 85, 107,  61,  38,  45, 179, 221, 126, 172, 247, 106, 234,  52,  12,  49,   6
	.byte	 20, 166,  23, 102, 174,  84,  39,   0, 118, 148,  80,  50, 155, 125, 198, 137
	.byte	108, 170, 251, 180, 223, 225, 190, 237, 163, 183,  37,  45, 113, 136, 160,  99
	.byte	162, 193, 118, 177, 212, 227, 242,   8, 104, 234, 251,  64,  89, 111, 127, 233
	.byte	207,  33, 195, 241, 167, 191, 248, 103, 169,   9, 118,  34,  59, 170,   7, 112
	.byte	 22,  83, 232, 155,  73, 179, 118, 236,  53, 175, 147,  13,  39, 202, 249,  83
	.byte	154, 135,  18, 171, 165, 157, 147, 105,  86, 239, 225, 210, 165,  11, 145, 149
	.byte	 10,  47,  83,  76, 219,   7, 149, 116, 107,  37, 121, 191, 183, 245, 186, 194
	.byte	 45,  45, 129, 237, 159, 154, 221, 226, 218,  20, 226, 190, 200, 125, 242,  21
	.byte	 14, 183,  33,   8,   0,  90,  78,  42,  28, 161,  70,  97,  49, 107, 123,  10
	.byte	180, 237,  93, 103,  55,  74, 235,  72, 248,  51, 237, 169, 174, 153,  45, 165
	.byte	212, 219, 103,  31, 153,   8,  45, 110, 213, 253, 111,  45, 187,  62, 210,  44
	.byte	139, 252,  79, 196, 202,  28, 208, 126, 110, 206,  90,  63,  73, 162, 248, 182
	.byte	172,   2,  99,   6,  26,  49,  76,  30,   9, 202,   0, 165,  40, 145, 178,  52
	.byte	170,  28,  60, 207, 251,  80, 105,  69, 219,  99, 254, 128,  83, 124,  51, 106
	.byte	200, 155, 173, 155,  55,   1,  45, 147, 249, 150,  97, 129, 142,   0, 172,  69
	.byte	 60,  29, 247,  86, 151,  36, 139,  73, 130,  60, 244, 168,  71, 225,   7, 109
	.byte	226,  43, 170,  38,  71, 102,   6, 254,  39,  59,  63, 234,  81, 141, 150,  62
	.byte	126, 126, 201, 237,   9, 254,  56, 162, 152,  10, 249,  70, 165,  85, 243, 161
	.byte	 16, 225, 114, 183,  43,  14, 182, 153,  78, 177,  34, 170,  51, 114,  72, 246
	.byte	171, 152, 120,  45, 151,  22, 157, 234,   9,  82,   3, 156,  38, 245, 250,  95
	.byte	 68, 111,  63, 254, 184, 200,  55,  82, 254, 243, 203, 112, 218, 192, 164,  72
	.byte	 43, 166,  61,  30,  43, 224, 206, 140,   9,   1, 129, 239, 209,  82, 115, 251
	.byte	 94, 195, 195, 138,  89, 237, 109,  74, 139,  51,  66,  15, 178, 150,  62, 148
	.byte	  7,  99, 138,   3,  33, 213, 100, 208, 118,  40,  99,  83, 123,  10,  54, 166
	.byte	 22, 202, 142, 208, 198, 182, 124, 183, 130,   5,   2,  92, 207, 225, 235, 200
	.byte	203, 226, 129, 135,  10, 194, 182, 131, 255, 252, 156,   4, 189, 205,  11, 100
	.byte	100,  10, 102, 189, 109, 125, 192,  51, 213, 249,  46, 186,  26, 132,   7, 198
	.byte	207,  50, 141,  21, 126,  93, 213,  28,   2, 214, 217, 176, 175, 215, 183, 214
	.byte	212,  62, 203, 107,  41,  26, 104, 230, 236, 226, 239,  71,  84,  53, 240, 117
	.byte	250,  83, 117,  98,  99, 191, 255,  14, 165, 153,  90,  37, 217, 186,  42, 104
	.byte	156, 139, 183, 208, 123,  17,  51,  84, 128, 157, 205, 160,  37, 102,  61, 118
	.byte	113,  73, 187,  22, 242, 187, 111, 175,  49, 152, 155, 124, 191, 243, 108,  23
	.byte	198, 239, 244,  83, 252, 245,  44,   3,  17, 213, 243, 223,  45,  15,  34,  77
	.byte	234, 242, 140, 146, 150, 138,  67, 173, 214,  65, 102, 125, 249,  58,   1, 105
	.byte	 96, 237,  22, 103, 233, 104,  29,  60, 241,   9, 194, 250, 123, 196, 159, 186
	.byte	  6, 109,  77,  28,  30, 232,  75, 251, 156, 161,  50, 237, 131, 103, 142, 170
	.byte	110, 214, 184,  37, 170,  10,  26, 235,  49, 248,  13,  37, 148, 102, 182, 126
	.byte	253,  88,  23,  38, 169, 161, 226, 155, 227, 194,  24, 151, 235, 241, 122, 206
	.byte	182,  93, 197,  68, 157,  69, 188, 107,  12,  57, 115, 105, 196, 108,   2, 215
	.byte	 35, 108, 214,  13, 232,   7, 146,  30, 168,   8,   7,  20, 169, 226, 107,  56
	.byte	 38, 139,  17,  63,  63, 118,  36, 193, 247,  59, 189,  76,  59, 185,  27,   2
	.byte	 28, 143, 178, 228,  69, 125,  52, 173,  71, 154,   7, 184,  48,  84,  85, 108
	.byte	126,  81,  96, 129, 160, 131,  78,  97, 127, 154, 108, 129, 179, 134,  84, 149
	.byte	156, 214, 179,  90,  12,   6, 200, 226, 188, 194, 178, 154, 180, 144,  35,  61
	.byte	176,  45,  22,  71,  34, 205, 225,  20,  99, 182, 218,  36,  13,  84, 177, 166
	.byte	 82, 152,  15, 144, 111, 112, 241, 222, 255, 117, 218, 119, 224,  89, 131, 108
	.byte	220,  71,  97, 195,  51,  79,   8, 149,  85, 208,  35,  59,  47,  65,  97, 167
	.byte	 38,   2, 106,  24, 171, 223, 226, 112, 194,  31,  74, 134,   4, 139, 175, 210
	.byte	188,   5, 181, 223,  60, 120, 243, 198, 237,  56, 180, 242,  49, 197,  81, 155
	.byte	198,  86, 109, 251,  42,  18, 238, 255,  16, 203, 112, 158,   8, 240,  26,  66
	.byte	120,  20,  24,  72, 213, 112, 143, 160, 185,  49, 252, 204, 240,  89,  65, 173
	.byte	128,  93,  46,  43,  69, 226, 217,  97, 127, 180,  68,  97, 102, 223,   5, 158
	.byte	254,  38,  47,  93, 221, 210,  52, 247,  22, 243, 204, 104, 207, 115, 160,   4
	.byte	 21, 181, 247, 135, 136, 244, 238,  15, 250,  43, 219, 126,  52, 136,   1,  23
	.byte	182,  16, 164,   2,   1, 222, 204, 136, 163, 207,  49, 127,  88, 156, 170, 248
	.byte	 48, 253,  62, 251, 197, 157,  81,  52, 186, 154,  68, 135, 188, 192, 190,  10
	.byte	 60,  21, 178,  35, 192,  53, 138,  19, 226, 140,  64, 101,  66,  56,   9, 159
	.byte	 93, 151,  53, 175,   3,   4, 236,  50,  27,  86,  31, 204, 249,  47, 100,  59
	.byte	 42, 233, 153, 105, 246,  61, 105,  23, 125,  52,  10,  34,  54,  67,  53, 122
	.byte	 73,  29,   9,  53, 130, 219,   6,  74, 121, 160, 223, 244,  96,  76, 249, 143
	.byte	150, 125, 238, 146, 191, 150, 164,  99,  83,  76, 143,  20, 213,  79,   5, 241
	.byte	126, 188, 196,  62, 140, 111, 248, 244, 150, 150, 169, 222, 236,  75, 252,  52
	.byte	174,  74, 158, 110,  61,   9, 246,   2, 138, 118, 113,   0, 167, 251,  42, 176
	.byte	252, 123,   3,  12,  76, 123,  66, 127,  66, 207,  67,  47, 110, 101, 155,   4
	.byte	 86, 245, 248, 105, 190,  10,  53, 199,  72, 137, 106, 173, 190, 148, 166, 208
	.byte	114,  47, 186, 185,  23,  85, 185,  10,  14, 123, 220, 156, 149, 102,  46, 159
	.byte	214, 179,  31, 151, 185,  83, 132,  85, 211, 111, 139, 121, 107,   2, 254,  56
	.byte	 61, 137, 123,  17, 145,  42,  70,  68, 232, 235,  89, 151,  93, 126,   8,  30
	.byte	150, 124, 197, 189, 245, 163, 224,  41, 210, 127,  49, 163, 210, 177,  62, 216
	.byte	 69, 254,   3,  18,  74, 117, 185, 156, 208,  63,  71,  61, 233, 121, 183, 143
	.byte	 22, 165,  41,  49, 147, 255, 170, 123,  64, 198, 255, 250,   0,  54, 132, 221
	.byte	167,  43,  74,  60, 142, 244, 180, 197, 141,  21, 180, 107, 174, 137, 144, 158
	.byte	  4, 179, 222, 200,  27, 213, 199, 135, 199,  71,  40,   4, 237, 195, 110, 104
	.byte	 29, 190, 250, 186, 226, 122, 127, 225, 254, 246,  31,  90, 165, 254,  44, 206
	.byte	176, 172, 226, 233,   2,  84,  27, 155,  22,  37, 230, 122,  27,  68, 184,  49
	.byte	220,   2,  49, 154, 152,  10, 208, 163,  13,  50,  18, 213, 172,  55,  93, 143
	.byte	 70,  13,  15,  49, 107,  45,  56,  10,  21, 123,  19, 163, 237,   3,  50, 133
	.byte	 73,  15,  22,  29,   8,  51,  54,  44, 213, 211, 156, 171, 222,  12, 204, 145
	.byte	212, 172, 128, 114,  78, 170, 192, 210,  36,  24, 219, 189,  73,  10,  72, 186
	.byte	 68,  92,  77, 208,  88, 194, 252,  51,  16, 252,  69, 202, 197,  80, 246,  54
	.byte	 36, 194, 158, 174,  54, 150, 155,  42,  49, 170, 119,  60, 199,  45,  85,  63
	.byte	159, 166, 126,  56,   3, 222,  38,   6, 172, 111, 170,  47,  73, 142, 241,   5
	.byte	168,  64, 236, 186, 205, 189,  21, 150, 137,  41,  56,  65, 202,  77,  37,  60
	.byte	 49, 171, 255, 101, 157, 103, 188, 230,  69,   4, 184, 115,  66, 212, 193, 189
	.byte	 96,  10,  26, 248, 118, 146, 176, 218,  90, 147,  44, 140, 188, 135, 132, 217
	.byte	  3,  80, 199, 247,  29,  14, 218, 180,  21, 237,  40, 179, 176, 187,  61, 177
	.byte	 48,  51, 107, 104,  67,  69, 215, 253, 153,   8, 133, 163, 203, 241,  49, 162
	.byte	194,  50,  19, 108, 243, 106,  15,  31,  54,  58, 242, 215, 193, 121, 194, 115
	.byte	156,  38, 101, 129, 171,  62, 233, 240, 255, 189,  62, 126, 124, 193, 192,  34
	.byte	 61,  89, 129, 221,  66, 191, 141,  52,  22, 194,  76, 249,  99,  94, 217, 199
	.byte	174,  90, 150,  56, 205,  77, 141, 182,  64,  47, 121, 210, 168, 225, 106,   6
	.byte	216, 175,  20, 231, 182, 225, 145, 226, 221,  64,  51, 168,  77,  26, 212, 108
	.byte	 48,  71, 222,  55,  41, 181,  31,  52, 159,  20, 245, 240, 101, 105, 126, 229
	.byte	192, 155, 102, 101,  34, 170, 148,  24,  28, 149, 141,  71,   5, 161, 136,  94
	.byte	176, 227, 193, 115, 191, 189, 102, 199,  82, 100, 162,  57, 100, 235, 219, 223
	.byte	 15,  72,  99, 255,  62,  70, 206,  21, 194,  45, 158,  58, 170,  75, 106, 161
	.byte	220,  95, 154, 249,  22,  32,   5, 142,  99,  54, 139, 218, 236, 111, 204,  44
	.byte	 10, 150,  63, 124,  69, 129,  63,  44,  28, 249, 152,  85, 165,  41, 167, 204
	.byte	 94, 130, 189,  97, 108, 234, 135, 152,  53,  12,  23, 190, 197,  46, 183,  81
	.byte	166, 167,  54, 221, 134,  28, 212, 229, 171, 169, 198, 199,  98, 158, 228, 209
	.byte	234,  10,  82,  34,  35, 164, 214, 200,  56,  14,  67, 209,  59, 110,  28, 200
	.byte	240,   9,  35,  13,  23, 153, 124, 203, 108,  53, 194, 206, 128,  20, 135, 204
	.byte	 58, 250,  94, 203, 217, 183,   5, 251, 134,  89,  19, 147, 214, 229,  65, 139
	.byte	 70, 221, 137,  29,  53, 166, 170,   8,  37, 133, 212, 105, 203,  50, 213, 177
	.byte	240, 178, 175, 200,  59, 131, 175, 100, 109, 250,  50,  10, 155,  67,  60, 249
	.byte	118, 118,  74, 225, 168,  49, 233, 214,  53,  50, 195,  92,  82, 238, 116, 126
	.byte	  6, 211, 191, 242, 250, 115,  11, 185, 227,  33, 166, 150,   0, 129,  56, 210
	.byte	 77, 100, 229, 198,  95,  89, 246,  14, 170, 129, 204, 110, 193, 188, 171, 112
	.byte	238,  34, 228, 209, 251, 237,  29, 252, 217, 237, 209,  32, 249,  52,  91,  75
	.byte	214, 242, 119, 147,  99, 146, 183, 117, 188, 178, 253, 119, 194, 242, 127,  55
	.byte	 94,  94,  52, 118, 221,  79, 154, 255, 222, 149, 238,  46,  97, 181, 230,  95
	.byte	 88,  89, 225, 200, 204,  53,  86, 185, 196, 192,  57, 185, 138,  73, 191,  70
	.byte	 26, 189, 200, 114,  11,  31,  92,  65, 115,  46,  31, 143,  38, 110, 216, 117
	.byte	 57,  81,  50, 167, 136, 233, 251, 153,  16,  42, 231, 154, 122,  38, 150,  37
	.byte	 54, 127,   2, 239, 203,  95, 135, 213, 253,  52,  74,  19,  39, 115, 235,  44
	.byte	208,  21,  43,  48, 118, 133, 201, 204,  73,   1,  29,  82, 156,  58, 166, 111
	.byte	 76, 108, 163, 239,   7, 138,  83,   8,  83,  24, 152, 111,  71,  85,  34, 103
	.byte	154,  16, 183,  19, 111, 196,  52, 208, 169, 227,  74, 114,  79,  99, 206, 192
	.byte	120,  77,  70,  43, 205, 107, 207, 241, 238, 192, 228,  30, 255, 226, 166,  88
	.byte	213,  39,  80,  67, 216,  71, 207, 202,  43,  87, 246, 236, 157,  97,  63, 126
	.byte	  4, 149, 137,  59, 106, 153, 217,  64, 242,  18, 152, 105, 119, 253, 184,  23
	.byte	243, 105,  77,  79, 171, 106, 187, 171,  31, 185, 111,  73,  90, 105,  99,  29
	.byte	218,  25, 141,  69, 133, 145,  16,  84,  92, 208,  60,  90, 141,  48,  95, 253
	.byte	106,  79,  60, 204, 229, 112, 213,  56,   4, 209, 203, 120, 199,  48, 100, 150
	.byte	176, 191, 102, 142, 136, 183,  95, 171,  45,  28, 193, 151, 130, 123,  44, 169
	.byte	144, 228, 221,   7,  77,  70,  72, 178, 138, 115, 115, 190, 202, 199, 131, 195
	.byte	136,   6,  83, 224, 208,  88,  44, 242,  42,  94,  42, 141, 156, 176,  60,  52
	.byte	 67,  11, 182, 144,  62,  79,  63, 153, 151, 249, 204,  37, 214, 251, 148, 236
	.byte	198, 139, 195,   4,  99,  24, 112,  38,  17, 186, 205,  21, 135, 156,  95, 136
	.byte	164, 243, 250,  86, 113,  69, 213, 146, 221, 129, 106, 225,   1, 184,   3, 221
	.byte	222,  65,  97, 158,  71, 251, 138, 214, 206, 156,  85, 110, 145,  60,  67,  99
	.byte	199, 237, 178, 214,  59,   8,   8, 229,   2,  20, 220, 125, 217, 160, 253, 235
	.byte	 94,  82, 113, 248, 137, 185,  96, 150,  31,  52, 141, 184, 140,  96,  58,  50
	.byte	 14, 222,   1, 112, 161, 211, 160, 175,  95, 235, 164, 238, 244, 104,  78,  24
	.byte	242, 121,   4,   3, 212, 173,  41,  45, 113, 117, 206,  81, 169, 138,   8, 138
	.byte	 87,  49, 109,   7,  67, 220,  43,  38, 129,  98, 153, 100, 107, 141, 147,  84
	.byte	 64, 116,  49,  59, 126, 209,  11,  30,  46, 159, 114, 205, 232, 201, 159,  14
	.byte	 46, 126,  64, 218, 251, 148, 132, 140, 191, 249, 158, 206, 116,  51, 233, 244
	.byte	246, 254, 250, 213,  63, 112,  22, 210,  11, 247, 252, 251,  57,  84,  96,  63
	.byte	  3, 170, 214,  97, 201, 202,  29, 151,  88,  86, 116, 115,   1,  50, 251, 229
	.byte	238, 213, 125,  66,  68, 221,   0, 179, 233,  72,  18, 238, 168, 191,  59, 217
	.byte	150, 157, 231, 157, 155,  99, 153,  94, 143, 214,  66,  27, 113, 129,   8, 252
	.byte	 70, 241,  15, 154,  44, 220,  53,  18, 214, 184, 146, 232, 249,   3, 219,  78
	.byte	 39, 223,  64, 194, 170, 149, 191,  16,  44, 133, 217, 191, 167,  82, 169, 249
	.byte	 12,  65, 178,  69, 139, 246, 207, 229, 136, 250, 146,  55,  45,   5, 230, 155
	.byte	203,  51,  99,  77,  34, 176,  83, 248, 122, 205, 213, 140, 218, 222,  77, 193
	.byte	158, 182, 102, 110,  21,  72, 149, 220, 138, 225, 115, 182, 149, 141, 196, 254
	.byte	214, 208, 211,   9,  94,  92, 215, 119, 243, 146, 170, 106, 251,  74, 187, 131
	.byte	176, 135, 240,  33, 188,  68,  17,  23, 127,  27,  75,  24, 145,  69,  68, 121
	.byte	 76, 236, 144,  64, 200, 127, 233,  71,   7,  21, 124, 222,  50,  74, 194, 121
	.byte	230, 236, 144, 239, 168,  73, 129, 134, 253, 234, 126, 221,  31,  55, 208,   5
	.byte	 89,  70,  20, 184,  51,  80,  55,  23,  19,  66,  46,  36,   9,  50,  37, 157
	.byte	 74, 152, 124,  36,  30,  20, 156,  48, 135, 110, 136, 177,  41, 245,  21, 124
	.byte	142, 194, 218,  19, 146,  86, 119,  77,  84,  49,  23,  57, 250, 225, 205,   7
	.byte	226, 165, 101, 155, 126, 195,  31, 244,  62, 240,   2, 254, 119, 149, 175, 209
	.byte	142, 194, 189,  96, 234, 243, 203,  10,  51,  22, 131,  69, 102,  90, 209, 144
	.byte	218,  55, 112,  64, 102, 211, 166, 158,  86,   2,  74, 248, 202, 101,  20,  45
	.byte	231,  84, 176, 208, 190, 140, 101, 155, 170, 219, 166,  19, 248,  77, 219,  78
	.byte	108,  54, 213, 110, 101,  89, 230, 165,  13,  64, 175, 229,  82, 155, 182, 184
	.byte	 97, 102,  98, 252, 160, 210, 187, 175, 183, 102,  33, 249, 160,  48, 188, 118
	.byte	106, 245,  42,  81, 129,  69, 215,  15, 199, 217, 159, 224,   0, 113, 204, 110
	.byte	124, 177,  72,   9,  99,  85, 228, 153, 100, 200, 245, 154,  18, 139, 174, 142
	.byte	  8, 166, 143, 242,  86, 204, 160, 242, 150, 219, 146, 118,  72,  65,  21, 166
	.byte	 68,  56, 233,  47, 128, 122, 188, 195,  74,  83, 243, 106, 155,  43, 249,  69
	.byte	 82, 190,  91, 113, 121,  17, 122,  31,  99, 249,  78,   6, 176,  77, 165, 191
	.byte	 29, 203,  30, 211, 208, 219, 177,  14, 102, 229,   3, 123, 215,  41, 153,  77
	.byte	 48, 101,  37,   4, 218,  97, 183, 142, 255, 188, 103, 128, 252, 175,  78, 214
	.byte	195, 137, 219, 232, 104, 249,  87, 183, 179, 123,  37, 236,  35, 248, 181, 171
	.byte	 20,  25,  36,  60, 184,  46,  43, 175, 226,  79, 147,  67, 235,  13, 165, 138
	.byte	124, 245, 169, 188, 177, 143, 198,  78, 149, 171, 155, 189,  11, 193, 171, 186
	.byte	124,  25,  50, 135,   5, 242, 211,  15,  71, 111, 106, 178, 141, 235,  46, 186
	.byte	 80,  60, 155,  54, 159,  62,  20,  57, 148,  90, 223, 111, 165,  57,  52,  80
	.byte	 20,  39, 193,  56, 144, 208, 158,  73, 216, 226,  26,   6, 127, 100, 189, 231
	.byte	176, 148, 106, 224,   1, 147,  44, 118, 232, 125, 214,  89,  51, 239,  42, 111
	.byte	112, 247, 189,  84, 123, 166, 254, 187, 214, 116, 132, 207, 173,  54,  77, 206
	.byte	 45, 158, 213,  91,  44,  11,  29,   8, 109, 242, 249, 103, 118,  80, 198, 181
	.byte	180, 216, 123, 124, 107,  19, 207,  29,  67, 225, 183, 124, 213,  81,  87, 205
	.byte	 18, 136, 101,  50, 218,  43, 246, 229,  84,  95,  45, 117, 203, 211, 154,  65
	.byte	106,  57, 252, 111, 199,  56, 121, 114, 205, 105,  66, 158, 205,  48, 230, 151
	.byte	  6,  28, 106,   9, 207, 110,  77, 196,  36, 230,  53,  24,  79, 110,  32, 114
	.byte	244, 244, 173, 169, 201,  52, 240, 210,  83,  19,  77, 252, 203,  85, 219,  64
	.byte	189,  73, 110, 191,  49,  55, 203, 128, 139, 225, 134, 209, 213, 240, 189, 201
	.byte	 86,  37, 193, 186,  81, 226, 155, 255, 153, 115,  53, 197, 178,  95, 200, 223
	.byte	 61, 106, 123,  29, 245, 172, 133, 200, 130, 131,  88, 153,  36, 215,  53, 119
	.byte	118, 241,   0, 104,  90, 134, 139, 128,  44,  72, 187, 222,  23,  16, 177,  27
	.byte	233, 180, 117, 120,  52,  27,  62, 109, 129, 197, 102,   8, 255, 236, 129, 251
	.byte	 10,  33, 231,  14,  71, 235, 110,  24, 188, 158,  32,  96,  15,  54,  17, 101
	.byte	230,  23,  89,  77, 239, 248, 142,  24,  53,  87, 174, 183, 109,  72, 176, 149
	.byte	234, 139, 155, 187,  61,  40,  65, 251, 110, 146,  82, 225, 147, 147, 232,  63
	.byte	222, 178,  39, 104, 248, 209,  79,  29,   5, 117,  20,  18, 197,  81,  83, 204
	.byte	154, 236, 208, 255, 125,  90,   9, 233, 188, 234, 149, 244, 183,  99,  28,  44
	.byte	239,  23, 223,  26, 121, 209, 246, 102,  65,  69,  56, 206,  81,  77, 251, 154
	.byte	238, 105,  92,  18, 242, 101, 220, 237,  27,  25, 200,  75, 127,  43,  88,  33
	.byte	 50,  42, 157, 122,  82, 195,  80,  28, 189,  32,  48,   2, 221, 162, 103, 106
	.byte	 44, 104,  78,  54, 240, 112, 163, 155, 111, 162, 139, 226, 129, 215, 206,  20
	.byte	 58, 174, 192, 141,   6, 208,  16, 182, 202,  32,  14,  20, 182,  14,  92, 146
	.byte	132, 244,  32,  61, 143, 168, 180, 159, 180, 116, 237,  21,  91, 113, 247, 124
	.byte	198,  50,  26, 230, 110, 147, 225,  15, 218, 154, 189, 168, 181, 207, 196,   1
	.byte	114,  13, 177, 244,   1, 186, 239,  55,  16,   8,  57, 190, 109, 222,  62, 135
	.byte	140, 205,  98, 250, 165, 101,  73, 158, 164, 226,  11, 127, 114, 123, 130,  95
	.byte	 68, 189,  84, 219, 104, 248, 211, 152, 219, 124, 100,  44, 144, 206, 137,  95
	.byte	181,  41, 248, 107,  70,  84, 186, 201,  37, 161, 221,   7,  73,  94, 215,  54
	.byte	150,  25, 179,  43, 250, 113,  30,   7, 189,  86, 157, 236, 141, 196, 105, 207
	.byte	144, 155, 233, 230,  55, 195, 120,  84, 198,  78, 139,  28, 239, 123,  54,   2
	.byte	 10, 136,  88, 110, 149, 144, 239,  78, 196, 139, 189, 212, 171,  72,  84, 206
	.byte	199,  35, 203,  33, 170,  54, 216, 196, 145, 210, 104,  20, 134, 212,  84,  58
	.byte	200, 143,  31,  47,  85, 209,  89, 179,  44,  43, 160, 108, 129, 253,  93, 102
	.byte	 59,  93, 226, 202,  55, 118, 100, 114, 253,  39, 191, 120, 220, 217, 245, 152
	.byte	200,   7, 150,  96, 122, 200, 205,  31, 104, 103,   6,  21,  23,  85,  21, 142
	.byte	 24, 243, 202,  30,  69,   5,  18, 103, 133, 162, 245, 174,  48,  11,  73,  92
	.byte	 40, 169, 157, 182, 239, 157,  72,  22, 128, 189,  68, 222,  32, 134,  85,   9
	.byte	115,  75,  12, 111,  50, 107, 173, 224, 243, 238, 220, 140, 224, 117,  37,  53
	.byte	222,  95,  52, 142, 192,  90,   3, 111, 176,  10, 101,   7,  67, 207,  85, 207
	.byte	226, 243, 251,  78,  98,  22, 148, 100, 185,  31, 246, 210, 197,   6,  50,  55
	.byte	188, 125,  42, 188,  23,   7, 175, 165, 214, 168,  33, 175, 208, 240,  55, 193
	.byte	  7,  86,  51, 130, 172, 168, 129, 172,  97, 155, 215,  56,  95, 172, 125, 231
	.byte	232, 255, 187,  43, 229,  37, 217, 198, 169,  13,  47,  87, 183, 185,  32,  45
	.byte	199,  30, 251, 219,  14,   9, 248,  62,  43,  79,  59, 234, 180, 141,  11,  63
	.byte	 90,   2,  64,  52,  22,  58, 100, 114, 191, 221, 198, 229, 147, 246,   0, 223
	.byte	154,  87,  95, 213,  48,  71, 181,   0,  58, 208, 143, 106, 193,  78,  87, 132
	.byte	188, 130, 207,  70,   5, 177,  72, 173, 192, 182, 226, 166, 114, 103, 208, 253
	.byte	151, 221,  87,  99, 213,  98,  86, 195,  83, 110, 173, 192,  79,  76,  30, 195
	.byte	 46, 152, 205,  54, 216,  43, 103, 238, 126, 156,  92,   6, 221,  10,  52, 207
	.byte	191, 149, 253, 146, 247,  74, 225,  41, 167,  79, 134, 188, 255,  39, 199, 158
	.byte	  4, 145, 211, 247,  84, 132,  25,  93,  95,  27,  78, 225,  56, 214,  12,  46
	.byte	 91, 219,  48, 176, 114,  63, 136,  87, 247, 185, 170, 248,  20,  69,  83,  87
	.byte	216,  87, 212, 207,  10,  55, 220, 234, 159,  25, 184,  36,  67, 232, 253,  59
	.byte	179, 101, 123, 228,  18, 248,  90, 232, 105, 224,  17, 154, 207, 162, 116,  67
	.byte	148, 157, 239,   3,  90, 250, 122, 216,  18, 156, 100,  95,  48,  57, 234,  52
	.byte	226, 125, 145,  39, 104,  14,  15, 192, 101, 239, 112,  52, 138, 253, 172,  42
	.byte	 54, 242, 172, 114,  20, 127, 232,  92,  50, 239, 204, 102, 205, 204, 240,  44
	.byte	111, 222, 163, 107, 151, 201, 220,  87,  18,  20,   5, 115, 140, 165, 184,   2
	.byte	 68, 209,  95, 226,  80, 202,  45,  54,  67, 169,  26, 159, 250, 207,  45, 147
	.byte	  2, 144, 228, 151, 164,  54,  36, 150, 137, 215, 204, 193, 229,  91, 213, 143
	.byte	170, 193,  75, 184, 205, 161,  37, 220, 197, 186, 164, 204, 189, 225,  47,   3
	.byte	 29, 189, 144, 131, 230, 129, 232,  40, 170, 134, 242,  19, 203,  39, 191, 237
	.byte	140,  23, 210,  80,  30,  55,  59, 215, 193, 113, 156,  45,  90, 180, 244, 208
	.byte	255, 233,  12, 251,  14, 253, 233,  46,  38,  21, 207, 173, 119, 186, 242, 181
	.byte	 44, 241,  26, 228, 237,  49, 255, 159,  79,  39, 213, 205,  38,  85, 152,   7
	.byte	199, 240,  27, 153,   7, 144, 122, 118,  87, 246,  29, 120,  75,  65,  37,  37
	.byte	 10, 212,  37,  39, 238, 174, 159,  10,  48,  31, 124,  63, 230, 172,  39, 115
	.byte	189, 242,  31, 173, 154, 216, 214,  77,  17,  58, 145, 135, 226,  87, 194, 207
	.byte	 12, 156,  84,  64,  75,   0,  14, 168, 147, 209,  83, 168, 155, 119,  68, 181
	.byte	 12, 118,  57, 105,  54, 192, 145,  66, 153,  17,  96, 108, 182,  99,  89, 178
	.byte	186, 200, 118, 158,  51,  21, 177, 162, 155, 231, 204,  49, 118,  98,  35,  75
	.byte	 42,  60, 216,   5, 110,  63,  68, 131,   8,  91, 133, 199,  82,  31,  83, 107
	.byte	128, 168,  98, 161, 130,  10, 213, 205,  86, 198, 195, 213, 204, 238, 104,  57
	.byte	229, 122, 149, 248, 240,  87,  40, 206, 151, 114,  34, 145,  21, 195,  72, 151
	.byte	  8, 193, 184, 206,  25,  37, 153,  36,  20, 123, 201,  88, 153, 247,  48, 121
	.byte	117, 248,  81,  53,  30, 153, 252, 185, 186, 215, 222,  52,  82, 204,  51,  85
	.byte	116, 176,  81,  31, 196, 170,  18, 167,  75, 177, 201, 235,  88, 116,  64, 208
	.byte	118,   9,  50, 211, 135, 173, 116, 150, 201,  68, 153, 180, 104,  17, 189, 156
	.byte	136, 105,   8,  64,  33, 248, 250, 147,  31, 209, 164, 140,  26, 130, 228, 141
	.byte	170,   4, 239,  82,  73, 203, 188,  85, 201,  78, 144, 108, 214,  41, 179,  47
	.byte	 50, 230,  52, 254,   1, 139,  14,  86, 101, 110,  33, 136,  66,  52, 118,  61
	.byte	208,  23, 171, 171, 204, 123,  94, 129, 104,  49, 195,  34, 137, 171, 222, 126
	.byte	 90,  61,   6, 205, 185,  89,  78, 160,  17, 221, 245, 209, 213, 108, 128, 196
	.byte	235,  30, 164, 149,  52, 107,  62, 186,  89,  67, 109, 145,  28,  62,  78,  59
	.byte	122,  51, 234, 125, 215,  97, 134,  57, 232, 242, 200, 190, 237,  21,  37,  32
	.byte	 16, 217,  55, 218,  37, 206, 224, 155, 150, 165,  47, 238, 145, 224, 231, 178
	.byte	 22, 233,  22, 151,  28, 135, 130, 255, 114, 135, 122,  81,  84,  77, 247,  19
	.byte	126, 107, 104,  89, 155,  70,  56,  98, 243, 212, 215, 186,  12, 231,  88,  12
	.byte	 18, 160,  87, 175, 182,   7,  54,  35,  45, 144, 170, 120,  65, 175, 214, 179
	.byte	 55, 126, 247, 189,  79, 135,  25, 106, 219,  60, 106, 109, 130, 164,  60,  12
	.byte	  0, 226, 145, 237,  75,  64, 175,  81,  71, 106,  29,  91, 135, 143, 141, 152
	.byte	 41,  25, 114, 249,  44, 140, 101,  95,  45, 222, 185,  90, 172,   4, 189, 137
	.byte	192, 102, 163, 155, 175, 222,  88, 128, 247,  78, 125,   6,  11, 153,  57, 165
	.byte	149, 251,  48, 189, 204, 241, 190, 241,  95, 149,  72, 252, 149, 216,  50,  90
	.byte	 32, 189, 184, 116,  58, 131, 112,  67, 143, 202, 255, 146,  22,  79,  59,   5
	.byte	155,  66, 232,  77, 215, 187, 147, 104,  46, 210, 185, 200, 238, 191, 206,   6
	.byte	192, 199, 181,  49, 180,  14, 254, 139, 226,   5, 246, 251, 221, 221, 254, 138
	.byte	 41,  24,  65, 222, 151, 191,  73, 170, 164,  54,  35,  91,  45, 161,  51,  57
	.byte	244,  53,  43, 119, 227, 185, 177, 221, 249,  24, 252, 140,  40, 184,   6,  24
	.byte	  7, 188,  22, 126,  32, 118, 235, 225, 206, 147,  12, 177, 122,   4, 188, 107
	.byte	224,  51, 124, 151, 194, 160, 122,  90,  50,  32,  64, 218,  65, 219, 185,  23
	.byte	132, 138, 106, 151, 152,  33,  60, 194,  32,  57, 104, 126, 122, 224, 221,  10
	.byte	142, 233, 102,  17,  78,  97,  65, 249,  73, 195,  11, 207,  11,   0, 255, 107
	.byte	238,  45, 245, 236,  24,  53, 117, 255, 150, 128, 241, 161,  77, 247,  46, 135
	.byte	 10,  49, 170, 213,  61, 247,  73, 254, 123, 100, 196, 181, 217,  64, 253,  86
	.byte	105,   2, 216, 190,  22,  25, 238, 105, 246, 199,  30,  14,  86,  93,   5, 251
	.byte	 18, 226, 129, 236, 200, 159, 101, 214, 111,  73, 211,  48, 223,  46, 242, 196
	.byte	 22,  65,  64, 237,  56, 178, 244, 123, 133, 159, 211,  76,  69,  18,  15,  12
	.byte	242,  77, 223,  28,  98,  32,  15, 102,   4, 141, 140, 174, 236, 208, 242, 209
	.byte	114,  53, 235,  17,  67, 209,  50,  95,  99, 152, 242, 195, 206, 237,  79,  95
	.byte	 74, 184, 150, 122, 160, 115,  31, 206,  94, 118, 159, 216, 177, 189,  80,  92
	.byte	 54,  73, 152,  21, 216,   9, 184, 224,  34, 212, 174,  61, 173, 104,   0, 153
	.byte	154,  88, 142, 241, 213, 159,  89, 188, 153, 252, 183, 200, 208, 234, 105,  99
	.byte	195, 112, 250, 229,  34, 189,  57,  92, 166, 114,  90, 159, 105, 252,  77, 209
	.byte	108, 253, 128, 252, 103, 251,   5,  53,  31,   6, 230, 117,  19, 200,  64,  41
	.byte	230, 151, 140,  62, 126,  34, 214, 198,   0, 210, 215, 209,  28, 252,  34, 141
	.byte	246, 170,  75, 130, 145,  11, 126, 220, 245, 199, 111,  84,  40, 191, 252,  26
	.byte	  2,  72, 101, 107, 200, 239,  57,  82, 215,  94, 249,  78, 207, 187, 186, 160
	.byte	 42,   3,  78, 245, 204,  24, 135,  68, 103,  93,   7, 248,  58, 113, 172, 127
	.byte	138, 255, 185,  94, 183, 237, 117,  21, 148,  89,  20,  48,  40, 215, 183, 245
	.byte	246, 139,  98,  98,  46, 140,  23, 221, 133, 193, 109, 206, 227, 159,  46, 116
	.byte	157, 171,  33,  83,  56,  29,  58, 220, 146, 195, 123, 158,  53,   2,  55, 114
	.byte	240,  72,   2, 241,  70,  13, 208, 246, 199,  25, 140, 253, 158, 119, 134,  15
	.byte	249,   0, 145, 231,  22, 101,  91, 108, 117,  55, 165,  40,  55, 226, 182,   8
	.byte	224, 245, 105, 188, 149, 130, 130, 187,  85,  20, 238, 109, 201,  83, 109,  92
	.byte	 88,  36, 122,  71,  45,   5, 200, 108, 235,   2, 119,  78, 102, 225, 168, 238
	.byte	142, 119, 153, 120,  50,  77, 108, 157, 221, 210,  65, 121,  88, 225, 245, 123
	.byte	249,  68,  99,  75,  83, 185,   6, 152, 140, 184,  33, 144,  39,  21, 106, 182
	.byte	 56, 144,  99,  73,  49, 121, 124,  31,  62,  26, 110, 143,  53,  63,  77,  41
	.byte	139,  39, 171,  98,  60, 178,  63,  65, 191, 238, 146,  39,  61, 237, 194,  21
	.byte	  8, 137, 102,  66, 225, 123, 180,  76, 172,  39, 114, 180,   8, 147,  71,  44
	.byte	105,  33, 157,  56, 237,  12, 120,  93, 106, 107, 255, 153, 132, 189, 202,   7
	.byte	206,  93, 238, 188, 176,  27, 120,  77,  78, 244, 193, 207,  16,  45,  61, 126
	.byte	210, 216, 219, 132,  80, 140, 115,  73, 139, 233,   3,  23,  70, 129, 241,  83
	.byte	 28, 101, 226, 104, 127, 189, 137,  42, 196,  75, 208,  61, 193,  89, 187,  45
	.byte	210, 102, 243, 106, 196, 205,   8, 113, 180, 122, 109, 255, 209, 210, 136, 200
	.byte	 28, 138, 142,  18, 148,  91, 106, 244, 102, 178, 180, 223, 218,  91, 150, 254
	.byte	141,  46, 161, 140,  43,  76, 216, 190,  28, 208, 172, 132,  84,  69, 132, 165
	.byte	 30, 188,  21,  97,  64, 139,  52,  89, 214,  92, 240, 106, 103,  81, 194, 184
	.byte	  8, 222,  31, 251,  41,  11, 243, 174, 143, 246,  42,  73,  58, 132, 192,  10
	.byte	148, 201,  13, 174, 221,  81,  99,  34,  59, 164,  67, 176,  34,   6, 235,  44
	.byte	212, 160, 117, 216, 171, 181,  44, 253, 144, 184, 249,  18, 123, 140,  75,  89
	.byte	138, 214,  52, 107, 207,  57,  29,   9,  94, 193,  83, 232,  55,  57,  91, 102
	.byte	203,  35,  59, 211,  87, 113, 104, 254, 116,   8, 121, 168, 189,  97, 242, 227
	.byte	154, 139,  78,  40, 189, 167, 243, 159,  79, 191,  58, 107, 154, 195, 205, 135
	.byte	191,  41,  64, 165, 213, 136,  28, 119, 238, 130, 114, 149,  17, 191, 121, 245
	.byte	 54, 203, 139,  36,  11,  62, 169, 112, 165, 217,  91, 236, 255,  66, 247, 163
	.byte	223, 121, 155, 241, 193,  40,  53, 248, 245, 154, 149,  56,  16, 211, 237, 110
	.byte	134,  53,  99, 222,  26,  42,  72,  12, 184, 120,  45, 215,  48, 214,  43, 202
	.byte	137, 192,  39, 189, 199, 144,  64,  26, 207,   0,  73, 163, 246,  25, 133, 190
	.byte	154, 128,  10, 231, 242,  63,  48, 197,  99,  85,  60, 123,  81, 165, 138, 219
	.byte	 89, 111, 125, 234, 237,  38, 187, 232,  23,  92, 104,  52, 174,  28, 102, 100
	.byte	182, 231, 117,  14,  37,  90, 170, 246, 121, 215, 133, 115, 137, 255, 241, 251
	.byte	254,   9,  51,  90,  78, 156, 134,   2, 255, 220, 126, 125, 204, 136,  45,  33
	.byte	218, 238,  14, 122, 195, 109, 165, 152, 238, 204,  78,  83, 210,  24, 113, 150
	.byte	  1,  38, 226, 140, 230,  43, 226,  41,  29, 132,   6, 218,  18, 254, 145, 228
	.byte	166,  63, 245,   0,  17,  85, 192, 239, 130,  52, 104,  67, 144, 141, 144, 164
	.byte	138, 244, 111,  78, 171, 196, 121, 183, 118, 224, 132, 212, 156, 204, 115, 219
	.byte	248, 114,  57, 182,  54, 197,  99, 171, 156, 222, 212,  34, 154, 110, 206, 205
	.byte	102, 187,  89, 141,  67, 105, 229, 251,   0,  28,  56, 208, 127, 210, 194, 232
	.byte	148,   6, 220, 137,  10, 181, 134, 103, 122, 142,   6, 121, 199, 232, 236, 150
	.byte	151, 113, 122, 177, 180,  35, 232, 164, 157, 173, 202, 105, 199, 122, 187,  56
	.byte	 98,  35, 223,  61, 136, 145, 200,  30,  14, 164, 171,   9, 164,  98,  72, 101
	.byte	127, 177,  52, 210, 234, 209,  46,  20, 253,  16, 251, 130, 239,   4, 208, 128
	.byte	236, 212, 122,   8,  67, 110,   4,  56,  30, 146, 235,  65,  66, 165, 245, 254
	.byte	195, 171, 206,  58,  33,  48, 152, 130,  70, 220,   0,  46, 229,   6, 218,  14
	.byte	 90, 218, 110,  32, 216, 200,  60, 107, 239,  10, 206,  77, 240, 212,  59, 172
	.byte	197,  88, 250, 236, 255, 202,  57, 180,  73,  66, 161,  81,  88, 230, 156,  32
	.byte	222,  18,  37,   5, 228, 202, 248, 223,  45,   5, 186, 195, 129, 185,  32,   6
	.byte	193, 131, 218, 198, 118,  94, 116,  12,  23, 165,  62, 125, 215, 168, 163,   0
	.byte	194, 184,  91, 178, 129,  82, 197,  70,   2,  99,  46, 202, 188,  16, 166, 244
	.byte	216, 191,  31, 186, 206, 185, 235, 226, 245, 126,  76,  65, 195, 236,  65, 132
	.byte	246,  49, 160, 192,  32,   9, 104, 135, 121, 239, 101,  65, 238, 175, 205,   7
	.byte	 64, 139,  33, 208, 136,  86,   8, 118, 142,  20, 246, 193, 236,  66, 175,  97
	.byte	118, 127, 253, 103, 209, 247,  67,  78, 190,   3,  55, 133, 250, 166, 185, 236
	.byte	 57, 149,  15, 136, 201, 108, 148,  25,  53, 223, 224,  58,  13,  89, 200,   0
	.byte	 56, 245,  44, 208,  75,  59, 117, 156, 147, 142, 103, 255, 125, 185,   0,  32
	.byte	 80, 126, 191, 189, 254, 185,   0,  75, 132,  58, 179, 105, 163,  99, 124,  32
	.byte	 72, 254, 141, 173, 241, 182,  21, 148, 221,  83,   8, 234,  80,  38, 252,  95
	.byte	 13, 144,   0, 173,  58,  62,  74, 115,  24,  14,  81, 209, 196, 215, 163,  14
	.byte	 40, 102, 184,  31, 186, 224,  13, 197,  99, 235, 105, 158, 195, 170, 164, 199
	.byte	246, 191,  11,  42,   5,  51, 234,  95, 146,  98, 228,  50, 116, 240, 205,  39
	.byte	106, 101, 127, 127, 197, 103, 106, 125,  25,  84, 146,  43,  86,  24,   7, 244
	.byte	118, 187, 166, 249,  72, 233,  46,  90, 195,  94,  61,  52,  83, 188, 171,  45
	.byte	130, 196, 190,  68,   9, 116, 227, 145, 108,  80, 174, 117,  91,  28, 248, 204
	.byte	146,  86,   3,  50, 178,  40, 241,  12,  11, 253, 221, 174, 155, 229, 175,   4
	.byte	 38, 201, 205, 171, 179, 252, 140,  94, 134,  80,  16, 145, 178, 212,   2, 196
	.byte	146,  24,  67, 159,  71,  80,  30, 104,  13,  35,   7,   1,  42, 117, 156, 217
	.byte	212, 255, 121, 165, 237, 134,  95,  15,   0, 177,  70, 164, 207, 233,  48,  82
	.byte	177, 240,  66,   5, 236, 117,  40, 118,  94, 180, 142, 110, 229, 176,  19, 131
	.byte	 52, 225,  13,  41,  88,  91,   1, 219, 145,  41, 100, 224,  10, 164, 199, 223
	.byte	229,  31,  70, 170, 155,   5,   7,  34, 212,  72, 179, 123, 250, 147, 214, 109
	.byte	212, 215, 180,  93,  13, 119, 209,  53, 255, 119,  93, 194, 103, 192,  94, 229
	.byte	158, 133, 170, 124, 243, 208, 114,  45, 198,  90,  38, 182, 169,  98, 215, 254
	.byte	194,  99,   5,  98,  67, 213,  51, 111, 143, 138,  23, 112,  40, 229, 226,  21
	.byte	 22, 174, 166, 215,  86, 214,  27,  44, 117,  30, 141,  79, 202,  53,  21,  20
	.byte	202, 106,  76,  71, 117,  73, 225,  70, 187, 207, 184,  43,  40, 183,  13,  28
	.byte	 67, 191, 186,  60, 236, 118, 135, 127, 113,   5, 184,  98,  97,  56,  82, 222
	.byte	156, 153, 145,  33,  88,  77, 156, 147, 159, 117,  49, 101,  32,  41,  20, 130
	.byte	101, 151,  23,  73,  75,  21,  15,  48, 141, 144,  31, 143,  44,  57,  66, 169
	.byte	 58,   9, 241,  62, 112, 183,  59,  25, 149, 202,  40,  84, 213,  52,  71,  86
	.byte	187, 167,   2, 251,  24, 188,  40,   2,  76, 134,  16,  40, 241,  40, 177,  80
	.byte	208, 105,  24,  64,  52,  98,   1, 140,  19,  38,  55,  30, 135,  14, 253,  50
	.byte	  9, 176, 239, 212, 181,  57,  89, 224,  70, 205, 219, 101, 194, 109,  87, 205
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50, 115, 113,  58,   1,  34,  27,  56,  66,  76, 168,  44, 176, 244, 206, 237
	.byte	139, 138,  30,  63, 203,  74, 157, 155, 101, 157,  42, 148,  68,  64, 199, 147
	.byte	102,  76, 246, 236,  59, 127,  27, 227, 108, 194, 105,  89,  94, 207,  13,  81
	.byte	220, 123,  21, 100, 203,  99,   9, 247, 209, 208, 248,  60, 173, 228, 222,  27
	.byte	140, 161,  84,  27, 118, 118, 151, 127, 118, 138, 201, 149,  91,  65,  22,  15
	.byte	196, 204,  85,   7, 105, 201, 253, 205, 200,  23, 110, 199, 245,  36,  46, 139
	.byte	104, 120, 124, 195, 211,  79, 116,  59,  55, 214, 177, 182,  29,  11,  49,  59
	.byte	 48, 204, 102,  95, 121,  17, 155, 215, 170, 219, 180,   9, 172,   0,  55, 121
	.byte	 74, 235, 126, 150, 199, 149, 243,  67,  65,  73,  22, 204, 175, 190,  73, 159
	.byte	229, 183,  79, 105, 149,   8, 140,  99,  33,  35, 213, 140, 172, 223, 146, 228
	.byte	  0, 194,  85, 135, 232,  67, 101,  48, 209, 140, 247, 188,  87,  42, 217,  92
	.byte	105,  12,  45, 148,  13, 107, 128, 155, 167, 197, 184, 207,  30, 200,  49,  87
	.byte	  2,  59, 203, 179, 100, 116, 180, 232, 126,  14,  14, 198, 245, 197, 245, 168
	.byte	124, 162,  29, 167, 140,   4, 158, 231,  36,  51, 157, 139, 199, 164, 100, 127
	.byte	210,  86,  51, 107, 236, 234, 248, 145, 179,  30, 224,  29, 105, 141, 172,  16
	.byte	  4,  20,   6, 152, 207,  73, 118, 161,  95, 110, 225, 174,  20,  55, 210, 169
	.byte	 80,  66, 164, 209,  86, 136, 229,  98, 193, 206, 241,  61, 106,  42, 180, 221
	.byte	251,  86, 139, 183,  47, 131,  87, 110,  33, 151, 217, 145, 211,  92,   2, 168
	.byte	242, 139,  75, 195,  42,  67,  10,  68, 220, 132, 251,  80,  24,  45,  55,  42
	.byte	 66,  30,   1,  62,  31, 152,  66, 117, 127, 122, 250, 153, 116, 198, 147, 188
	.byte	202,  88, 151, 139,  26, 129, 236, 106,  49, 241, 176, 201, 224, 168, 159, 222
	.byte	175, 203, 240,  47, 211, 225,  28, 147, 194,  97,  91,  43, 212, 111, 159, 231
	.byte	 16, 219, 203, 251, 179, 100,  86, 118,  27, 166, 250, 158, 225,  13, 171,  95
	.byte	 68, 104, 128, 213, 213,  39,  35,  60, 253,   0, 151, 244,   6, 114, 234, 197
	.byte	  4,   2,   3,  38, 101, 237, 101, 191,   2,  53, 209, 156, 242, 206, 148,  67
	.byte	227,  63, 130, 131, 251, 194, 127,  75, 124, 136, 118, 252, 180,  90,  18,  90
	.byte	202, 213, 157, 155,  67,  68,  80,  96,  54, 251, 108,  58, 143, 133,  33,  25
	.byte	 78,  66,  15, 252,  75, 167,   5, 115,  87,  75, 195, 201,  80, 167, 133, 204
	.byte	104,  15, 130, 193,  89, 104, 137,  67,  68,  25, 224,  78,  99, 202, 202, 149
	.byte	239, 137, 191,  10, 216, 119, 211, 250, 245, 204, 158, 217, 186, 193, 197,  19
	.byte	  8,  53,  73,  72,  57,  45, 111,  78, 210, 178, 197, 106, 109, 139, 121, 229
	.byte	  5, 204, 253, 217, 109, 233,  22,  48, 211, 252,  79, 202, 250, 172,  71, 219
	.byte	  2,  41, 249, 217, 208,  30, 220, 132,  77,  28, 238,  72, 167, 224,  75,   6
	.byte	132, 220,  63, 102,   0, 117,  39, 191,  27, 231, 154, 172,  78, 237,  71,  78
	.byte	148, 127, 163,  34, 217, 211, 101, 196, 251, 225, 163,  73,  34, 168, 247,  22
	.byte	198,  79, 146, 100,   1, 135, 110,  72, 230, 247,  16,  68,  28,  16,  63,  43
	.byte	 20,  96, 165, 231, 120, 167,  62, 191, 230, 164, 132,  74, 231,  70, 191, 105
	.byte	174,  82, 137, 122,   7, 230,   7, 151, 119, 188, 252,  37,  74, 105, 200,  92
	.byte	180, 140,  35, 172, 217,   3,  10, 230,  40, 104, 212,  88,  44, 213, 129, 217
	.byte	239,  72, 159,  85, 254, 141, 120,  18,  97, 203,  99,  62, 130, 107, 154, 235
	.byte	226, 232, 226,  70, 128, 136, 204, 201, 183, 245, 119, 110,  97, 205, 162,  73
	.byte	209, 215, 166, 177,  39, 170,  92, 117,   2,  75, 229, 111,   3,  13,   5, 132
	.byte	224,  43, 157, 254, 237,  81, 242, 193, 249,  19,  27, 106, 220,  56,  91, 101
	.byte	226,  54,  42,  78, 233, 252, 176, 139,  93, 142, 232, 171, 101,  42,  49,  99
	.byte	140, 108, 174, 196,   7, 167,  92, 203, 139,  62, 156, 105,  90, 173, 231,  34
	.byte	 10, 138,  17,  12, 139, 216, 223, 200,   0,  54,  15,  39, 219, 112, 114, 142
	.byte	156,  45, 110, 127,  85, 223, 205, 189, 189,  24, 148, 175, 155, 114,  14,  50
	.byte	115, 159, 235,  47,   8,  88, 248, 230, 105,  54,  45, 153, 224, 209, 221,  27
	.byte	 40,   3, 242,  67, 189, 168, 167, 140, 121, 102,  65,   7, 172,  64,  97, 239
	.byte	181, 184,  50, 135, 213, 197,   1, 243,  74, 111, 154, 196,  31,  39,   6, 177
	.byte	 46, 108,  15,  92, 132, 209, 167, 176, 240, 119, 213,  51, 100,  67, 100, 136
	.byte	 10, 216,  92, 176,  97, 161, 117, 172, 133,  55, 197, 170,  93, 137, 247,  44
	.byte	254,  72,  82,  23, 177, 176, 184, 223,  29, 191, 135,   0,  87, 167,  63, 221
	.byte	126, 136, 178, 102,  99,  40,  85,  39, 153,  83,  48, 121,   9, 151, 197, 150
	.byte	252, 185, 177,   7, 175,  56,   0, 122,  76, 163, 142, 189, 231, 118, 109, 226
	.byte	192, 201, 193, 210, 143,  65,  85, 115,  78,  11, 183, 183, 179, 158, 114, 171
	.byte	 42, 244, 246,  17, 251,  25, 133, 239, 233, 229,  22, 197, 128, 186, 140,  76
	.byte	115, 152, 219, 121, 235, 236,  34,  31, 156,  94, 113,  66, 239,  80, 136,  73
	.byte	 12, 238, 163,  33, 168, 255, 116, 108,  25, 220, 246, 135,   1,  77, 105, 247
	.byte	180, 227, 218, 179, 102,  13, 124, 139, 150, 243, 235,  80,  18, 142, 200,  44
	.byte	 64, 231, 242, 134, 226, 235, 222,  21,  55, 238,   4,  31, 231, 241, 164, 178
	.byte	 55,   0,  32,  24, 159, 145, 196,   8, 234, 252, 205, 181,  45,  49,  83, 251
	.byte	 74, 104,  90, 192,  51,  83,   0,  14, 101, 109, 199, 205,  64,  37, 160, 106
	.byte	194, 106, 192, 126, 111, 255, 127,  49,  63, 108,   3, 167, 251, 109,  17, 100
	.byte	 84,   2, 253, 165, 197,  92,  82, 212, 232, 180, 161, 155, 215, 213, 104, 106
	.byte	226, 166, 235, 254, 250, 117,  20, 146, 255, 179, 100,  16, 251, 223, 103,  64
	.byte	 46,  52, 144, 128, 184,  42,  30,  65, 118, 161, 108, 172,  10,  23, 115,  23
	.byte	 89, 243, 253, 221, 159, 218, 175, 131, 193, 167,  46, 107, 224, 229,  18, 102
	.byte	186, 246, 255,   2, 205, 188, 193,  46, 237,  76, 139,  35,  20, 136, 178,  57
	.byte	222, 196, 111,  97, 132,  90, 106, 117, 153, 201,  17, 198, 125,  36, 181,  77
	.byte	  4,  80, 104, 104,  43, 184,  77, 225,  78, 212,  43, 142, 240,  99, 254, 174
	.byte	178, 152,  27,  27,  46, 150,  12, 188, 167,  13, 216, 155, 137,  18, 183, 207
	.byte	180, 157, 226, 155, 184,  67,  73, 149, 221, 229,  43,  35,  42,  22, 248, 214
	.byte	126,  29, 151, 149, 189, 133, 238, 219, 166, 245, 122,  48,  99,  22, 172, 114
	.byte	184,  35, 123, 226, 164, 107,  15,  70, 181, 224, 240,  56, 220,  37, 179, 186
	.byte	228, 112, 175, 188,  69,  37, 172,  91, 161,  37, 153, 234, 124,  34, 176, 150
	.byte	224, 125, 189, 138, 216,  23,  36, 138, 237,  56,  31, 235, 166, 230, 104, 111
	.byte	 93,  34, 140, 134,  39, 254,  77,  83, 154, 226, 186,  29,  15, 172,  93,   9
	.byte	140, 169,   2,  14, 127, 243, 249, 161, 196,  10, 122, 207,  75, 140, 229, 164
	.byte	126,   3,  32,  54,  12, 226, 190, 109, 141, 255, 181, 212, 130,  70, 133,  92
	.byte	122,  89,  89, 128, 211, 159, 233,  92, 137, 203,  34, 125, 126, 197,  12,  47
	.byte	249,   7,  46,  31,  24,  86,  65, 141, 181, 205, 183,  25, 218, 128,  97,  52
	.byte	 28, 198, 217, 229, 123,  56,  33, 110, 154, 156, 124, 202, 162, 181, 141, 136
	.byte	 62, 165, 173, 131, 244,  68, 251,  47, 232, 186,  83,  78, 178,  58,  49,  16
	.byte	118,  36, 160, 183, 178, 211,  89, 226, 148,  93, 171,  48,  21, 248, 133, 139
	.byte	243,  93, 196, 178, 176,  79,  19, 164,  88, 212, 226,  37, 242, 126, 177, 202
	.byte	154, 222,  81,  82, 125, 237, 112,  73, 231,  22,  42,   2, 203,  36, 143, 128
	.byte	225, 247,  20, 238,  81,  32, 109,  12,  39,  18, 192, 134, 193,   7,   4, 110
	.byte	222, 220,  12, 138, 250, 110,  26, 168,  30,  14,  44, 141, 236, 159, 127, 164
	.byte	 80,  83,  33,  91, 250, 180,  21, 134, 237,   1, 243,  11, 105, 113, 167,  79
	.byte	246,  82, 242, 234, 184, 130,  91,  66, 183,  69,  92,  32, 252,  81,  91,  80
	.byte	 42, 100,  59,  31,  14, 201,  42,  13,  15, 241, 227, 167, 220, 128, 254,  78
	.byte	 58,  31, 255, 227, 224,  99,  79, 198, 144, 141, 246,  24,   9, 152, 194, 213
	.byte	250,  48,  12,   1,  65, 133, 165, 226, 218, 172,  46, 173, 193, 106, 155, 126
	.byte	170, 126, 219,  43, 169,  71, 148, 121, 183, 248,  83, 111, 106, 209, 118,  59
	.byte	213,  83, 244, 109, 184, 239, 136, 190, 219, 211,  22, 215, 198,  17, 115, 252
	.byte	 40, 138,  39,  51, 109, 195,  84, 127,   7,  17,  32, 125,   5, 178,  75, 136
	.byte	250, 188,  26, 154,  90, 141,   6, 205,  25, 101, 180, 223,  81,  61, 111,  44
	.byte	 96, 245, 211, 118, 151, 125, 253,  58, 137, 221,  30, 211,  48, 135, 109,  84
	.byte	219, 153, 197,  98, 178, 124,  44,  38, 164, 121, 163,  33, 119,  34,  85, 191
	.byte	250, 191, 252, 215, 157, 103,  83, 247, 145,  36,  61,  26,  42, 195, 103, 172
	.byte	 45, 125,   1, 229, 222,  82, 127,  69,  81,  57, 200, 104, 149,  16,  75,  37
	.byte	162, 142,  91, 115, 223,   2, 196, 186, 230, 147,  18,  32, 178,  96, 178, 166
	.byte	 71, 229, 192,  14, 243, 104, 237, 204, 156, 200,  82,  91, 136,  21,  48, 219
	.byte	174,  47,  83,  58, 162, 137,  94,  87, 208, 116,  84, 161,  46,  71, 210,  96
	.byte	 81,  95,  12,  44, 163, 250, 221,  96, 250, 218,   0, 223, 247, 226,  86, 112
	.byte	158,  65, 192, 102,  34,  15, 147, 231, 173, 110, 124, 114,  78,  75, 179,   2
	.byte	121,  19,  60,  87,  52,  44,  15,   4, 159, 252,  30, 244, 222, 164,  28, 181
	.byte	130, 174, 219,  74, 212,  93,  57,  13, 234,  96, 254,  59,  23, 112,  45,  20
	.byte	120,  54, 228, 246, 198,  87, 252, 171,  41, 227, 206, 162, 124, 180, 237, 179
	.byte	236, 122, 231,  26,   2, 128,  67, 133, 178,  58,  58, 223, 161, 161,  90, 241
	.byte	  9, 250, 252, 159, 255,  37, 119, 126,  28,  47, 157,  51, 245,  96,  45, 233
	.byte	 40, 145,  77,  85, 242,  28, 164, 142,  83,  11, 214, 215, 252, 180, 103, 136
	.byte	221, 188, 161,  74, 158,  11,   9,  92, 189, 176,  96, 175, 160,  84, 244,  86
	.byte	 16,  86, 112, 253, 179,  52, 245, 117,  47, 211, 250, 126,  46,  93,  14,  52
	.byte	  1,  94, 215,  34, 129, 221,  37, 161,  23, 134,   1,  35,  75, 243,  13, 198
	.byte	236, 162, 112, 221, 238, 158, 241, 224, 105, 219, 171, 167, 194,  21, 113, 139
	.byte	  1, 120, 255, 158,  36,  91, 218, 112, 251, 148,  56,  28, 254, 123,  58,  81
	.byte	236,  86, 125, 130, 135, 208, 135,   4, 107,  22,  69, 217, 135, 111, 145, 224
	.byte	219, 225, 237, 102, 240, 140,  12, 225, 121, 141,   0,  84,  32, 193,  51, 226
	.byte	 18, 160, 180,  12,  15, 163, 242,  78,  92, 105,  62, 127,  49,  25, 166, 164
	.byte	209,  61, 195, 108, 195,  85,  86, 202, 249, 241, 228,  12, 195, 106, 246,   4
	.byte	114,  22,  44, 116, 120, 207,  49, 181, 190,  54,  49,  88,   2, 104, 107,  61
	.byte	122, 225,  50, 233,  85, 213, 137,   8, 202,  78, 163, 177, 254, 106,  69, 110
	.byte	100,  89, 225, 190, 207, 101, 232, 232, 230, 207, 141, 201, 249, 138, 153, 251
	.byte	  6, 188, 104, 129,  82, 207, 189,  57, 130, 125,  99,  59,  42,  57, 117, 245
	.byte	184, 162, 178,  57,  48,  13,   1,  44, 146,  90, 247, 194, 212, 131, 214, 203
	.byte	 50,  16,  15, 225, 123, 214, 204, 243, 100,  33, 180, 235,  98, 251, 122, 115
	.byte	 42, 254, 217, 135, 175, 108,  32, 249, 204, 205, 177, 162, 110,   1, 141, 129
	.byte	226,  25, 219,  11, 249,  67, 239, 163, 101, 217,  59, 202, 179,  60, 116, 146
	.byte	234, 224, 233, 139, 142, 143, 125, 178, 119, 201, 124,  24,  95,  46, 152, 109
	.byte	219, 178, 124, 137,  64, 152, 141, 182,  99,  73, 237,  28,  30, 123, 179,  93
	.byte	206, 123, 114,  52,  96, 187, 160, 186,  10, 158, 140, 158, 229, 171,  59,  80
	.byte	  9,  82,  73,  61, 155,  65, 143, 179, 176, 185, 178, 207,  34,   3, 213,  49
	.byte	186, 183, 249,  20, 129, 148,  45, 140, 204, 190, 117, 104, 255,  65, 115, 231
	.byte	141,   3,  35, 151,  11,  47,  87,  90, 168,  92, 138,  49, 112, 203,  89, 196
	.byte	 70, 206, 233, 198, 208, 176, 143, 238, 111,  92, 190,  75, 217, 126, 216,  42
	.byte	166, 112, 234, 168,  13, 149,  66,  10, 138, 184, 215, 131,  64, 117,  12, 165
	.byte	192, 126,  16, 133, 133, 249,   7, 113, 143,  94,  32, 112, 143,  66, 138,  92
	.byte	160,  26,  65,  58,  35,  90,  44,  86, 112,  93, 225,  42,  17,   2, 181,  34
	.byte	190, 254,  84, 181, 127,  58, 229,  45, 219,   3, 242, 118, 252,  38, 164,  97
	.byte	  6, 165,  71,  87, 153, 201,  57,  45, 185, 104, 146, 175, 168, 202, 204, 185
	.byte	 22, 203,  77, 172, 179,  85, 102, 180, 185,  32, 139, 176,  22, 225, 245, 110
	.byte	 61,  79,  22, 132, 139, 232,  20, 243,  78,  45,  96,  20,   0, 172,   9, 122
	.byte	 22, 183, 234, 252, 156,  91, 100, 123, 210,  78, 114, 182, 181, 248,  94,  16
	.byte	  5, 224,  49, 173, 177, 237, 119, 155, 209,  25, 119, 241,  11, 161,  86,  86
	.byte	 86,  27, 112, 156,  87,   2, 195,  77,  62, 104, 201, 126, 185,  98,   3, 214
	.byte	 56, 238, 197, 102, 254,  26, 193,  64, 187, 221, 155,  57, 144, 117, 189, 209
	.byte	 76, 123,   7, 218, 128, 219, 136, 203, 172, 213,  76, 240,   3, 202, 155, 163
	.byte	197, 110,  67, 120, 167,  10,   9, 131, 140, 250,  36, 198, 106,  79, 176, 142
	.byte	 14, 144,  42, 123,  87, 194,  86, 183, 200,   2, 212, 192,  15,  85,  66, 131
	.byte	114, 193,  89,  65,  81, 215,  16, 190, 160, 100, 230, 175, 184,  19, 191, 246
	.byte	212, 233, 131,  74, 170,  96,  53, 166, 211, 252, 246, 225, 174,  92, 165,  59
	.byte	183, 169,  40,  79, 137, 189, 250,  67, 111, 175, 198, 164, 205, 129, 184, 196
	.byte	 18,  41, 240, 133, 142, 186,  35, 132, 211, 105, 155,  93, 228, 244,  67,  57
	.byte	228, 124, 194, 179, 205,  76, 231, 216, 211, 245, 239, 199,  81, 233, 213, 204
	.byte	 74, 155,   6, 136,  49, 217,  40,  26,  28, 105,  92, 151, 148, 240,  44, 128
	.byte	106, 108,  45,  60,  89, 233, 206,  50, 136, 100,  70,  70,  85, 239, 195,  23
	.byte	160,  55,  19, 128, 245,  43,  83,  52,  16, 200,  56,  23, 122,  82,  91,  11
	.byte	 21, 120, 157, 210,  41, 203, 213,  19, 163, 227, 237,  65, 193, 251, 236, 215
	.byte	108,  36, 154, 156,  58,  53,  47, 142, 156,  97,  10, 226,  72, 233, 152, 180
	.byte	 37,  70, 202,  90,  42, 145,  98, 213,   9, 233,  45,  37, 137, 250, 162,  22
	.byte	 92, 231,  29,  48, 229, 105,  30, 213,  28, 100, 163,  36, 255, 112,  85, 172
	.byte	 45,  38, 227,  89, 100,  26,  41, 210, 168,  41, 196,  68, 165,  36, 149,  42
	.byte	 52, 177,  56, 222, 226,  93, 149,  45,  27,  58, 115, 158, 151,   2,  61, 134
	.byte	  3, 151, 207,  96,  39,  30, 162, 106, 238,   9, 125, 115,  23, 170, 213, 172
	.byte	  4,  42, 183, 229,  10,  47, 227,  82, 229,  99,  98,  54,  21, 158, 204,  91
	.byte	197, 150,  41, 144, 129,  40, 143,  68,   7, 157,  36,  85,   4, 158, 230, 102
	.byte	 48,  97, 188,  29, 137, 189, 212,   3,  36, 118, 252,  99,  14, 107,  14,  37
	.byte	162, 143, 161, 184, 108, 167, 202,  69,  53, 205,  90,  90, 219, 193, 249, 212
	.byte	 22,  79, 215,  34,  68, 193, 115, 230,  72,  90, 165, 220, 139, 236,  67,  30
	.byte	  0, 193,  76,  33,  76, 160, 184, 112, 121, 253, 210, 102,  51, 138,  69, 110
	.byte	  8,  67,  22, 130, 127,  60, 154,  50,  92,  94,  94, 158, 202,  99, 152,  25
	.byte	227,  52,   9, 217, 107,  28,  77,  41, 156,  20,   4, 161,   5, 149, 159,  28
	.byte	 36, 163,   7,  36, 130, 243,  14, 255, 216, 214,   0, 156,  56, 126, 192, 108
	.byte	185,  89, 188,  66,  33, 239,  54,   0,  71, 195,  94,  11,  22,  95, 235, 183
	.byte	200, 143,  23, 221, 218, 248, 114, 150,   2, 241,   4, 136,  98, 108, 224, 158
	.byte	125, 157, 249,  38, 198,  44, 228, 106, 213,   6,  74, 112, 172, 171,  53, 146
	.byte	250,  58, 244, 255, 205, 136,  37, 111,  59, 221, 188, 168, 207,  61, 101,  92
	.byte	204, 225,  74,   3, 255, 176, 191, 141, 104,  21, 142, 242, 149, 185, 198,  26
	.byte	238, 150, 166, 103, 240,  97,  63,  73, 199,   8, 176, 206, 207, 211,  98, 116
	.byte	 98, 214, 177, 176,  84, 250, 225, 140,  65, 178,  52, 214,  27,  83,  80, 160
	.byte	 86, 193, 150, 242,  28, 171,  20, 110, 136, 181,  82, 128, 110,  72, 228, 239
	.byte	 48, 245, 139, 212,  75,   2,  57, 114, 232,  54,  69,  89,  58, 175, 108,  76
	.byte	 64,  46, 165,  46,  93, 189, 196,  77,  35,  42, 131, 219, 212, 139, 169,   9
	.byte	 20, 193, 114, 184, 242, 226, 227, 210,  87, 221,  99,  36, 124, 167, 109, 240
	.byte	108,  33,  32, 211,  37, 193, 160, 195, 128,  78,  34,  54,  57, 211, 195, 143
	.byte	177,  94,  63,  59, 203, 178, 118, 212, 186,  27, 245,  33,  92, 174,  52, 218
	.byte	198,  72, 247, 164,  63,  77, 145, 234, 113, 212, 238,  34,  56,  41,  11,  14
	.byte	104, 153,  36,  98, 205,  60,  23, 237, 238,  48,  51, 143,  63,   7, 237, 247
	.byte	130, 228, 142, 100, 140,  90, 249, 207, 142,  51, 228, 247, 226,   5,   2,  57
	.byte	 94,  56, 153, 154, 170, 179,  71,  29,  15, 232,  77,  75, 215, 167,  41, 107
	.byte	146,  35,  81, 228,  70, 185, 164, 172,  40, 172,  83,   3, 119,  21, 143,  46
	.byte	246,  96,  85, 192, 100, 105, 192,  43, 170, 174,  95, 251,  41, 133, 101, 129
	.byte	 32,  25,  49, 219,  62, 103,  19,   9, 241,  74, 197, 211,  87, 188, 144,  48
	.byte	133,  86, 178,  46,  50, 147, 141, 211, 194, 126, 161, 145,  89,  96, 113,  83
	.byte	 72,  99, 133, 226, 126,  35, 249,  14,  33,  47, 146, 164,  34, 250, 211, 221
	.byte	146, 142, 240,  31,  44, 104,   1, 149, 207,  72, 204, 198, 166,  99, 203, 238
	.byte	 98, 158, 147, 111,  93, 151, 167, 219,   6, 159, 245,  29, 253,  41,  23,  16
	.byte	153,  88, 187, 145, 192, 188,  55, 244,  16, 232, 234,  55, 236, 107, 162,  50
	.byte	 26, 242,  20,  99, 222,  56,  56, 105, 220, 202,  66, 214, 101, 147,  50,  33
	.byte	172, 134, 228, 110,   1,   4, 174,  26, 204,  58, 196, 149, 185, 218, 204, 228
	.byte	126, 155,  12,  83,  38,  70, 175, 162, 215, 144, 206, 108, 167, 122, 206, 144
	.byte	114, 232, 165, 159,   2, 201, 171,  72, 100, 136, 138, 144, 246,  43,  87,  66
	.byte	132,  10, 139, 150, 159,  39,  51,  94,  54,  67,   3,  43, 194,  96,  56,  21
	.byte	142, 114, 233,  38,  14, 145,  81,  83, 234, 196, 192, 150, 217,  89,  37,  36
	.byte	164, 145,  42, 249, 131,  12, 200, 210,  63,  35, 227, 252, 172,  77,  15, 216
	.byte	 10,  43, 231, 162, 148, 106,  61, 223,  82,  81, 238,  38, 243, 241, 255, 105
	.byte	108, 191,   0, 212,   1,  18, 206,  93,   8,   5, 239, 197, 214,  92,  75, 248
	.byte	252, 128,  26,  42, 104, 125, 168,  75,  24,  22,  37,  41,  83, 128,  82, 212
	.byte	246, 172,  55,  71,  52,  92, 170, 175, 136, 148, 211,  83, 231, 176,  99, 171
	.byte	193,   5,  85, 198,  53, 196,  62,   0, 123,  39,  12, 148, 176,  39,  24,   3
	.byte	114, 103, 199, 191,  84, 170, 250, 137, 126,  97,   8, 109, 129,  58, 145, 109
	.byte	251,  76, 167,  61,  95, 161, 102,  29,   6, 158, 225, 216, 191,  80, 172, 105
	.byte	136,  38, 187, 193, 251, 168, 176,  65,  94, 115,  78, 207, 124, 179,   0,  48
	.byte	 54, 119, 217,  15, 138, 184, 154, 120, 237,  22,  89,   0, 206, 177, 134, 117
	.byte	 14, 107, 210,  16, 233, 255, 170, 209,  71, 227,  25,  88, 216, 113,  88,  32
	.byte	180,  56,  18, 186, 230,  59, 167, 202,  10,  20,  93, 218, 188, 246,   4, 236
	.byte	120,  64,  13,  60, 140, 133, 170, 136, 186,  22,  43, 144, 109, 137, 177,  69
	.byte	188,  72,  69,  93,  22, 198, 213, 143, 177, 242, 181, 230,  95, 119, 222, 185
	.byte	180, 130, 243, 252, 178,  28,  91, 163, 165,  14, 251, 210, 157, 191, 151, 129
	.byte	 65, 135, 214, 203,  44, 178, 124, 131, 229, 190,  92,  87, 204,  32, 205, 144
	.byte	190,  11,  27, 107,  38,  85, 162, 246, 232,  77, 179, 240, 124,  27, 149, 241
	.byte	243,  10,  21, 248,   2, 240, 194,  11, 222, 137, 102, 222, 245, 140, 233, 104
	.byte	130, 196, 200,  83, 197, 199, 221,  76, 240, 142, 176,  92, 102,  90, 251,  92
	.byte	 65, 221, 118, 205, 208, 244, 125,  49, 250,  37,  33, 130,   4,  79,  80, 110
	.byte	  0,  18, 173, 241, 236,  57, 149, 130, 254, 240,  77,  81, 183,  21,  36, 171
	.byte	130, 132, 149, 132,   8, 187, 128,  74, 201,  39, 183, 153, 183,  17,  56, 202
	.byte	166, 133, 179, 143,  48, 150, 218,   4, 194,  43, 125,  99,  53,  46, 144, 179
	.byte	166, 254, 156, 169, 100, 173, 193, 160,  14,  67,   1,  54, 247,  39,  32, 153
	.byte	150,  71,   2,  52,  27,  58, 181, 110, 152, 146,  13,  75, 104, 204, 225, 230
	.byte	 66,  81,  16, 152,  41,  19,  29, 128,  50,  32, 128,  38,  87, 136,  77, 114
	.byte	178, 166,  55, 112, 216, 206, 212, 236, 216, 233,  71, 111,  15,  54,  84, 244
	.byte	167, 202,  73, 180, 109,  16,  77,  84,  98, 201, 106, 241, 127, 166, 114,  31
	.byte	152, 222,  66, 159,  81,   6,  59, 158, 230, 173, 180,  31,  29, 177, 110, 125
	.byte	106,  46, 144, 222, 160, 157, 123, 139, 150, 136,  50, 103, 161,   9, 136, 249
	.byte	  4, 242,  29, 214,  29,  83, 167, 150,  69,  52,  39,  40, 114,  98,  83, 250
	.byte	 80, 203, 238, 207,  38, 254, 112,  65, 131,  39, 125, 111, 186, 104, 158, 225
	.byte	220, 252,   4, 142,  95,  17,  89,  98, 188,  13, 162, 197, 244,   4,  61,  27
	.byte	  4, 239, 184, 236, 228, 209,  65, 180, 155,  79,  19,  12, 248,   1,  99,  32
	.byte	242, 223, 189, 246, 183, 138, 197, 196, 211, 126,  78, 175, 228, 212,  34,  45
	.byte	 68, 149, 209, 162, 253, 110, 125, 237,  96, 169,  73,  23, 221, 246, 184,  93
	.byte	210, 225, 249, 112, 217, 172, 219, 225, 182, 152, 171, 201, 104,  44, 190, 159
	.byte	 73, 237,  12, 196,  49,  66,   9,  53, 123, 114,   6, 200, 188, 164,  48, 214
	.byte	 64,  24, 150, 207,  96, 169, 243, 123, 118,  22,  90,  78,  24,  99,   1,  89
	.byte	223, 237,  56, 158, 158, 228, 123, 107, 241,  29, 152, 180,  92, 203, 175, 165
	.byte	 82, 241, 100, 135,   7,  68, 139, 159, 128, 240,  85, 188, 210,  29, 178, 157
	.byte	103, 236,  24, 188,  56, 144, 124, 231, 155,  89, 103, 111, 187,  72, 175,  25
	.byte	142, 138, 202, 121, 119, 146, 119, 215, 130,  42, 173, 179, 214, 152, 109, 183
	.byte	 84, 214,  34,  95,  69, 151, 124,  90, 198,  87, 101,  33, 173, 209, 185, 123
	.byte	148, 105, 250, 150,  57, 248, 136, 222, 123, 177, 121,  86, 179,   5,  51,  30
	.byte	120,  93, 220, 216, 146, 253, 165, 242, 226, 173,  29, 175, 207, 200, 108, 113
	.byte	 86, 232,  23,  91,  41,  27,  95, 236, 117, 246,  24, 127, 117, 231, 104,  64
	.byte	151,  37, 107, 225,  82, 193, 188,  85,  83, 108, 151, 222, 206, 238, 166,  17
	.byte	190, 185, 131, 221, 163,  61, 111, 135,  97,  83, 108, 187, 210, 184,  38,  57
	.byte	134, 122, 140, 128, 194, 248, 205, 138, 172,  85, 240, 230, 107,  19, 252,  53
	.byte	 96,  76, 171, 217, 225, 212,  65,  61,  52,  78, 207, 171,   3, 223, 152,  78
	.byte	 13,  61,  35, 161, 186,  22, 202, 145, 222,  70, 226,  51, 235, 220, 215, 133
	.byte	168, 209,  47, 204, 183,  99, 229, 137, 207, 138, 184,  90, 152,  86, 231,  10
	.byte	 63,  55,  93,  88, 220,   9, 204,  41, 239, 139,  30, 240,  73,  62, 205,  62
	.byte	  8, 102, 229, 235, 158, 253,  48, 159,  36, 237,  58, 107, 103, 121,  28, 191
	.byte	  8,  53, 169, 238,  83, 100,  85, 239, 180,  40, 105, 125, 188, 247,  63,  57
	.byte	128,  66, 116, 210,  36, 243, 225, 182, 226, 190, 118, 236, 203,  52, 229, 201
	.byte	 16,  11, 156, 221, 221,  43,  23, 255, 219, 211,   6,  76,  36,  45, 165, 106
	.byte	168,  18, 235, 254,   7, 169,  68, 112,  44,  65, 139, 157, 105, 207, 211, 141
	.byte	 21, 131,  71, 216, 187, 155,  18,  11,  45, 162, 115,  33, 153,  45, 189,  24
	.byte	 98, 164,  87,  67,  29, 161, 247,  75,  23, 172,  62, 188, 200, 198,  20,  92
	.byte	 36, 200,  59,  97, 125,  26,  58,  38, 213, 228, 232, 118, 244, 166, 118, 167
	.byte	 40, 169,  25, 202, 239,  11,  91,  74, 206,  47, 177, 110, 228, 137, 126, 130
	.byte	123, 147, 213,  25,  65, 251,  40,  75,  76, 116, 130,   4, 168, 134, 230, 185
	.byte	222,   9, 184, 174,  41, 213, 115, 227,  41,  35, 183, 229, 252, 154, 218, 128
	.byte	 24, 219, 171, 222, 192, 123,  81, 103,  73,  25, 241, 255,  19,  33,  62, 226
	.byte	 40, 199, 128,  88, 107, 123,  23, 118,  81, 244, 155, 199, 118, 108, 204,  67
	.byte	 13,  64, 181, 145, 138, 237,  43, 142, 244, 207, 249, 221, 119,   2, 243, 158
	.byte	116,  70, 126,  83, 156,  70, 209, 224, 146, 177, 187, 100, 209,  19, 229,  72
	.byte	119, 231, 171,  68, 175, 212, 142,  76,  97,  59, 168, 233, 144,  65, 151, 156
	.byte	100, 180, 146, 155, 235, 205,  11,  48,  31,  93, 159,  10, 204, 127, 197,  39
	.byte	 48,  80,  40, 254, 171, 173,  40, 233,  53,  18, 236, 184,  83,  66,  40,  91
	.byte	 36, 135, 202, 175, 192, 207,  69, 215,  48,   0,  39, 106, 136, 106,  96, 181
	.byte	137,  72, 111, 123, 219, 148, 219, 119,  77,  89, 239, 210, 244, 199, 149, 154
	.byte	 62,  88,  57, 184, 120, 110,  36, 201, 155, 204,  25,  57, 126,  10, 121, 249
	.byte	167, 157,  92, 125,  41, 191, 142, 106, 227,  22, 215, 141,  30, 194, 232, 206
	.byte	120, 188,  73, 100,  18,  75, 225, 114, 209, 196, 210,  62, 213, 198, 127, 192
	.byte	106, 193, 197, 212,  99, 170, 240,  62, 153,   6,  82,  34, 233,  34, 165, 103
	.byte	 38,  73, 111, 163, 184, 237, 162,  61, 139,  66, 230, 100,  20, 119,  11, 212
	.byte	 95,  72, 139,  18,  38,  59,  13, 176, 131,  55, 108, 128, 117,  43,  44, 155
	.byte	 66, 225, 129, 208, 117,  96, 107, 144, 146, 180,  48, 183,  66,  88, 189,   0
	.byte	130, 220, 153, 124, 244,  53, 249, 121,  40, 254,  33, 243, 122,  42, 241,  82
	.byte	 22,  64,  86, 187, 208, 202, 254,  97, 179,  22, 135, 123,   1, 160, 142, 121
	.byte	133, 203, 185, 155, 110,  22, 164, 145, 138, 152, 123, 193, 185,  36, 118, 176
	.byte	 90, 218,  98, 238, 173,  53, 154,  74,  88,  80, 120, 159, 217,  33, 148,  70
	.byte	  7, 196,  80, 175, 101, 237, 174, 178,   2, 144, 100, 186, 162,  45, 188, 191
	.byte	128, 221,  58,  80,  41, 151, 184, 155,  74, 123, 203, 147, 171,  43,  22, 253
	.byte	147, 192, 217, 172,  82,  13, 135, 249, 178, 232,  44,  83,  37, 138, 234,  58
	.byte	214, 229, 159,  83,  99, 197, 122, 111,  40, 196, 145,  11,  25, 117, 190,  56
	.byte	111,  25,  64, 217, 115,  66,  87,  76,  66,  47,  94,   8, 184,   7, 198, 160
	.byte	172,  99, 110, 240,  65, 209,  18,  43, 175, 144, 240, 122,   8,  75,  88,  44
	.byte	 68,   9, 189, 180, 177,  28,  51, 182, 117,  14, 239,   3, 246,  16, 233,  61
	.byte	208, 197,  22, 146, 141,  99, 121,  29,  34,  21,  58, 187,  10,  30,  30, 183
	.byte	 29,  56, 207, 154,   5,  49, 187, 159,  40, 201,  77, 189, 230,   5, 159, 168
	.byte	198,  98,  28,  65, 161,  92, 112, 218,  55, 202, 132,  23, 150,  60, 226,  49
	.byte	184,  86, 123, 115,  43,  19, 251, 145,  96,  32, 211,   3, 254, 182,  15,  59
	.byte	112, 135, 229,  88, 107,  83, 123, 100,  10,  24,  74, 159, 107,  23,  48,  99
	.byte	 99, 232,  18, 253, 226,  51, 188, 200, 145, 174, 173,   8, 213, 176, 145, 247
	.byte	252, 161,  16,  46, 135, 104, 217,   7,   7, 232,   7,  81, 163, 148, 225, 200
	.byte	101, 149,  54, 119,  32, 182,  20,  94, 144, 178,  80,  80,  12,  40,   2, 201
	.byte	158, 149, 255, 114,  52, 202, 212, 235, 138, 243,  43, 151,  45, 184,  24,  59
	.byte	 69,  17,  19,  57,  70, 165,  63, 106,  59, 253, 193,   9, 223,  50, 139, 185
	.byte	 36, 166,  38, 141, 228,  95, 231, 212, 229, 254,  56, 161,  44, 254, 253, 169
	.byte	 96, 121, 124, 196,  22,  72, 110, 210,  76, 143,  38, 106,  54,  55, 238,  26
	.byte	164,  85, 181, 208, 217,  93, 157,  97, 199,  87, 254,   3, 244, 251, 176, 144
	.byte	 73,   6,  44,  40,  22, 208, 206, 221,  89, 196,  89, 123, 243, 175, 158, 190
	.byte	198, 122, 113,  59,  15, 228,  37, 186, 220, 218,  67,  16, 165, 150, 130,  76
	.byte	 78, 225, 221,  94, 172, 245, 213,  81,  96, 134, 168, 242,  93, 204, 113, 124
	.byte	250,  14,   7, 102,  57,  67,  61,  65,  98,  86,  91, 134,  47, 232,  19,  40
	.byte	140,  84,  85,  86,  90, 170,   3, 105,  30, 217, 141, 239,  22, 175, 255, 235
	.byte	198, 180, 100, 248,  70, 107,  67, 107,  69, 111, 252,  69,  92, 219,  30, 199
	.byte	252, 222, 149,   0, 237,  45, 221, 235,  59, 190, 212, 161, 217,   1, 176,  29
	.byte	166,  38,  39, 192, 130,  21, 222, 110, 142, 181,  82, 117,  62, 109, 189,  35
	.byte	 58, 138,  74,  57, 244,  92, 202, 221,  14, 199,  56, 147,   8, 234, 196,  55
	.byte	 32,  84,  30,  81,  38, 214, 119,  32, 255,  19, 105, 238,  41, 170,  10, 206
	.byte	137, 247, 170, 145, 205, 141,  16, 179, 197,  69, 145, 253,  59,   9, 226, 155
	.byte	  8, 192, 221,  73, 238, 151,  35, 245, 106, 161, 186, 244, 217,  62, 254, 142
	.byte	 17, 126,  66, 217,  70,  93,  73, 252, 179, 253, 118, 104,  13,  73, 229, 158
	.byte	254,  20, 121, 128,  85, 196,  29, 251,  38, 240, 161, 102, 141,   0,  55, 213
	.byte	228, 115, 102,  74,  61, 220, 186,  40,  24, 156,  17,  15, 193, 147,  54,  73
	.byte	 42, 226,  32,  23, 186, 182, 193, 146, 113, 207, 181, 210, 208, 152, 112,  63
	.byte	251,  91, 167,  64, 246, 127,  46,  96,  31,   0,  15,  26, 252, 171,  82, 152
	.byte	  0, 129, 187, 135, 168,  30, 177, 223, 173,  83, 240, 174,  76, 243, 116, 125
	.byte	226,  78, 149, 167,  40, 169, 118,  22, 189, 164, 169,  69, 142, 104,  78,  18
	.byte	 38, 208,  87,  96, 177,  54,  96, 121, 252, 129,  79, 154, 105, 129, 121, 137
	.byte	227,  93, 224, 219, 203, 199,  56, 185,  54, 141, 176,  84, 217, 129, 197,  60
	.byte	158, 205, 146, 236, 179,  75,  86,  98,  30, 166,  10, 245, 242, 236, 171, 220
	.byte	 42, 231, 211, 202, 247, 156, 183,  46, 168, 147,  43, 229, 153, 107, 197, 148
	.byte	  8, 249,  50, 110, 205, 245,  93,  98,  55, 220,  69, 112, 143,  54,  49,  76
	.byte	 27, 246, 131, 167, 120, 130, 136,  28, 246,  80, 220,  46, 175, 230, 212, 177
	.byte	 58, 211, 122, 217, 114,  90,  13, 228,  95,  25, 144,  93, 221, 119, 166, 192
	.byte	 94, 121, 217, 210,  98, 219,  53, 241,  87, 135, 242, 191, 108,   6,  97,  54
	.byte	136, 222, 189, 124, 240,  52,  60, 108, 135, 239,  54, 231, 101,  99,  38,  47
	.byte	225,  10, 112,  58,   1, 182,  38,  97,  93, 109, 195, 141, 221, 116,  48,   0
	.byte	126,  30, 240, 126, 144, 152, 232, 192, 160, 117, 154, 230, 248, 163,   1,  23
	.byte	191,  92,  27,  91,  79, 223, 106,   8,  22, 134,  37,  40, 103,  11, 196, 226
	.byte	 12, 182, 216,  15, 144,  65, 199, 226,  73, 129, 192, 164, 117, 178, 234, 137
	.byte	 42,  30, 152, 187, 102,  87,  39,  58,  68,  72, 199, 118, 109, 116, 146, 122
	.byte	 92, 248, 165, 220,  61, 145,  61, 213, 195,  11, 152,  73, 175,  97,   3,  16
	.byte	252,  83,  37, 111,  31, 124,  75,  79,   3,  44,  61,  59,  26, 251, 116, 171
	.byte	230,  39,  93,  64, 179, 231, 251,  81, 111, 105, 184,  11, 129, 134,  39,  44
	.byte	190, 160,  14,  79, 218, 165,  91, 153,  31, 115,  74,  86, 159, 150,  53, 208
	.byte	 92, 116, 250, 122,  39, 136, 193,  40, 103, 123,  74, 233, 230, 176, 184, 135
	.byte	 26, 107,  91, 156, 142, 121, 134,  26,  18, 139, 145, 228,  18, 181, 168, 223
	.byte	230, 105, 116,  38,  25,  74, 205,  61, 240, 149, 237,  61, 169, 251, 228, 241
	.byte	 76, 107, 204, 237,  86, 153, 136, 194, 134, 157, 210, 139, 187,  84, 248, 186
	.byte	180,  24,  30,  64,   5, 168,  68,  46,  56, 203,  81, 100, 119, 164, 222,  74
	.byte	237,  94,  32, 178, 136, 253,  71,  20, 113, 182,  96, 152,  13,  81, 217, 180
	.byte	 60, 252, 130,   6,  23, 233, 232,  25, 225, 137, 200, 240, 196, 108, 115, 144
	.byte	133,  70, 212,  22, 156, 214,  52, 173,  26,   8, 198, 206,   7, 146, 143, 240
	.byte	  8,  98,   2,  20, 202, 178,  85, 150, 121, 147, 249,   8, 141, 189, 106,  90
	.byte	202,  58,  69, 187, 158, 114,  45, 211, 194, 163, 153, 128,  38, 179,  90,  48
	.byte	 10, 148, 180,  54, 212, 199, 157, 153, 245, 231,  38, 147, 252,  11,  30,  40
	.byte	192, 154, 237, 142, 105,  40,  47, 164,  42,  77,  61, 119, 104, 201, 250, 146
	.byte	208, 246, 108,  31,   0, 182,   6, 103, 172,  87,  63, 131, 220, 123,  71,  96
	.byte	175, 206,  53,  59,  31, 133, 217,   9, 176,  15, 139,  38, 124, 145, 241,  83
	.byte	130, 233,  68, 143, 108, 239, 254, 164, 170, 157, 129,   3,  65, 174,  95, 200
	.byte	255, 113, 236,  97, 121,  67,  30, 108,  82,  27, 230,  62, 212, 252, 134, 211
	.byte	 42, 198, 127, 164,  69,  78,  72, 223,  48, 223, 158, 150,  78,  15,  81,  26
	.byte	196, 143, 120, 166, 166,  64, 248, 174,  53, 109, 177, 100, 164, 160, 103,  28
	.byte	 20, 158, 163, 193, 242,   2,  17, 179, 197,  88,  42, 132, 180, 191, 162, 178
	.byte	200, 172, 134, 147, 159,  14,  77, 203, 123, 195,  36, 229,  40, 244,  90,  58
	.byte	  6, 197, 211, 164, 123, 162, 183,  68, 118, 107, 236,  15,   4,  26, 125, 253
	.byte	145, 189,  42, 138, 142, 202,   0,  35, 207,  87, 232, 209,  66,  81, 251, 207
	.byte	 62,  22, 173,  29, 101, 140,   3,   0,  17, 183, 113, 183, 160, 193, 243, 109
	.byte	186, 149, 177,  21, 214,  22, 109,  16, 155, 145, 225, 180,  91, 122, 125, 240
	.byte	 52,  16, 181,  11,  93, 216, 129,  86, 126, 212, 119, 186, 121,  98, 214, 218
	.byte	 89, 226, 249, 127,  31,  43, 212, 119, 131, 250, 128, 203, 171,  85,  23, 207
	.byte	214, 128, 192, 178, 194, 115, 164, 165,  25,   4,  77,  77,  39, 131, 100,  26
	.byte	113, 126,  75, 217, 153, 228, 233, 241, 217,  27,   2, 111, 211, 186,   5,  62
	.byte	210, 253, 207, 185, 153, 100, 189,  22, 159, 111, 108, 166,  73,  45,  23,  86
	.byte	  5, 182,  67, 127,  83, 130,  58,  73,  62, 156, 144, 118,  63, 251, 107,  66
	.byte	 94,  57, 245, 145, 147,  88, 167,  63,   9, 224,  81, 177, 246,  36, 170, 170
	.byte	250, 186, 226,  45, 197,  48, 187, 112,  39, 136,  13, 253, 237,  95,  51,  65
	.byte	 10,  16,  39,   5,  98, 238, 247, 114, 149, 250, 119,  39,   5, 214,   1,  90
	.byte	161,  42, 239,  26,  89,  38,  60, 200, 125, 171, 205,  92,   8,   3, 167, 150
	.byte	 90,   8,  74, 104,   7, 108,  39,  11,  87, 208, 254, 137, 136, 207, 250,  88
	.byte	 80,  61, 130,  16,  55,  32,   6, 181,  22,  48, 175, 138,  75, 116, 192, 227
	.byte	230, 161, 123, 131,  21, 228,  21,  40, 240, 234,  77, 118,   9, 183,  24, 212
	.byte	239,  91, 227, 221,  45,  32,  31, 124, 251, 214, 175, 102, 233,  80,  96, 112
	.byte	122, 143, 125, 185,  43,  87,  68, 181,   2, 105,  83,  31,   0, 236,  85,  32
	.byte	148, 216, 131,  65,  91,   5,  73, 110,  79,  45, 193, 165,  57, 102, 154, 126
	.byte	  0, 251,   7,  52, 152,  26, 192, 122, 162, 220, 232, 161, 133,  47, 141, 107
	.byte	234, 220, 188, 226, 209,  26,  60, 139,  52,  57, 175, 167, 111,  56,  67,  52
	.byte	 24, 250,   1,  74,  13, 116, 182, 107, 140, 215,  91,  78,  14,  40,  75,  70
	.byte	  9, 221,  85,  45, 119, 135, 150,  49,  81, 241,  19,  85,  22,  15, 169,  81
	.byte	 62, 119, 136, 123, 182,  34, 248, 229, 169, 226, 192,  61, 117,  69,  74, 151
	.byte	114, 113, 105,   4,  73,  33,  30, 131, 216, 111,  49, 155,  48, 186,  50, 232
	.byte	 38, 254,   8, 249, 224,  58, 221, 199, 212, 100,  51, 197, 232, 138,  77, 135
	.byte	132, 159, 137,  27, 168, 154, 223, 193, 124, 247, 128, 236, 202,  10, 202, 148
	.byte	  2, 104,  94, 224, 110, 172,  73,  55, 106, 230, 178, 182, 109, 113,  89, 123
	.byte	185, 183, 131, 174,  72, 253, 227,  73,  38, 104, 239, 248, 205, 237,  64, 193
	.byte	  4, 155, 141,  51, 106, 204, 240,  70,  66, 102, 234,  66, 221, 133, 203, 168
	.byte	171,   6, 144,   9, 180,  90, 196, 104, 153, 242, 111,  82, 206, 178, 199, 160
	.byte	128, 201, 154, 128,  16, 106, 112, 100, 128, 216, 134,  57,  50, 142,  95,  73
	.byte	105, 131, 242, 241, 148, 135,  54, 244,  51, 180,  27, 232, 128, 190,  46, 234
	.byte	250, 140,  78, 192,  46, 233,  17, 144,  58, 241, 137, 196, 254,   5,  29, 180
	.byte	 63, 173, 109,  14, 227,  34, 216,  70,  29, 121, 159,  49, 255,  63,  35, 230
	.byte	210, 177,  76, 182, 186, 101,  89, 128,  80,  79, 191, 156, 108, 118, 199, 246
	.byte	104, 191, 113, 238,  53, 228, 168, 111, 144, 161, 171, 100,  91, 207,  67,  85
	.byte	 46, 127, 206, 166,  26, 172, 194,  61,  66, 171,  37,  26, 172,  68, 110, 147
	.byte	179, 113, 136, 204, 195,   5, 205, 200, 129, 126, 235,  91,  11, 241, 147,  70
	.byte	 86, 202,  44, 110,  46,  36,  91, 198,  10,  68,  36, 203,  57, 138,  39, 168
	.byte	183,  27, 121,  74, 187, 109,  89,  21,  73, 190, 183, 224, 190, 201,   4, 243
	.byte	174,  58,  24, 115,  95, 113, 217,  78,  64,  75,  25,  53, 227, 245, 196, 187
	.byte	 49,  77,   3, 249,  13,  90, 216, 249, 148, 211, 179,  11,  90, 218, 138,  77
	.byte	186, 227,  57, 184,  53,  31, 192, 103, 224,  55, 145, 142,  94,  17, 222, 109
	.byte	200, 116, 167, 158, 167,  96, 148, 108,  42,  23,  81,  85, 100, 226,  81, 178
	.byte	226,  61, 107,  69, 235, 170,  47,  37, 142,  73, 255, 235,  86, 213, 125, 106
	.byte	132,  45, 178,  50, 196,   7, 120, 253,  29,   8, 138, 165,  52,   3,  12,   5
	.byte	182, 115,  82,  90, 155, 172,  55,  51,  36, 216, 253, 217, 235,  41, 203, 232
	.byte	207,  97,  85,  55, 165,  95, 166, 140, 176, 236, 155,  97, 158,   5, 131, 125
	.byte	 24,  46,  49, 134, 145,  85, 202, 145, 248,  32, 111,  50, 163, 230, 247,   3
	.byte	 16, 232, 253,  36, 164,   5, 119,  73,  72, 252,  65, 129,   5, 213, 112,  59
	.byte	220,  89, 173,  53, 178, 201, 153, 214, 238,  33,  57,  84,  84, 228,  76, 163
	.byte	238, 195,  90,  63, 107, 243, 154,  84, 223, 229, 211, 204, 164, 233,  37, 179
	.byte	 62, 166,  95, 229, 203, 209, 226, 198, 174, 146, 211, 179,  45, 250, 249, 201
	.byte	171, 112, 207, 124, 248,  39, 227, 193,  56, 123,  74, 199, 191,  87,  75, 229
	.byte	186,  34, 103, 106,  50,   0,  94, 154,  74, 251,  60,  73, 196, 138,  70, 202
	.byte	 17, 150, 125,  39,  41, 151,  97, 233, 179,  68, 220, 236, 145, 156,  80, 151
	.byte	 10, 148, 198,  84, 177,  73, 196,  19, 219,  86,  93, 222, 208, 158, 157, 195
	.byte	 33,   8, 210, 219, 106,  49,  74,  79, 108, 198, 146,  73, 202,  51, 221,  31
	.byte	162, 110, 155,  72,  40,  98,  94,  36,  37,  31,   7,  77,  77, 153,  88,  96
	.byte	 44,  84, 249, 128,  20,  81, 161,  19, 149, 147,  75, 220,  70, 103, 189,  24
	.byte	 20,  62, 106, 131,   3,  22, 175, 152,  78, 120,  12, 190,  88,  27, 237, 144
	.byte	106, 234, 126, 227, 157,  75, 102, 149, 225, 210,  71, 241, 207, 215,  64, 233
	.byte	182, 109, 164, 241, 218,  47, 246,  58,  20, 207, 252,  79,  27, 211,  14, 142
	.byte	147,  68, 240,  27, 243, 188, 161, 203,  93,  52,  46, 227, 185, 247, 198,  62
	.byte	 88, 211,  75,   5, 245, 247, 140, 207, 182,  91,  30, 254,  46, 243, 137,  42
	.byte	121, 236,  33, 166, 241, 135,  51, 146, 228,  44, 201,  47, 101,  68, 254,   0
	.byte	  4,  66, 236,  32,  16,  86, 205, 211, 171, 233, 235, 142, 197,  76,  58,  29
	.byte	 51, 134, 133, 147, 163, 191, 187, 186, 222, 238, 126, 221, 229, 208, 219, 147
	.byte	  0,  37, 150,  84, 163,  24, 117,  14, 248,   8,  54,  56, 164,  38, 154, 192
	.byte	225,  19,   7,  97, 100,  34,  28, 235,  11, 168, 215,  37, 182, 221, 179, 136
	.byte	 68, 144, 218, 139, 139,  35,  41, 120, 232, 141, 246, 101, 192,  67, 155,   5
	.byte	189, 220, 159,  77, 244,  55, 171, 251,   8, 231, 216, 103, 191, 217,   2, 139
	.byte	 68,  60, 119,  29, 203,  30, 153, 136,  62,  86, 112, 145, 103,  84,  20, 103
	.byte	192, 106, 250,  81,  88,  55,   6, 168, 168, 230, 227, 131, 147,  82, 204,  51
	.byte	170, 239, 201, 213,  70, 169, 244, 179, 204, 198, 254,  94, 126, 231, 254, 146
	.byte	116, 199, 233, 219, 250, 230,  19,  39, 154, 118,  20, 230,  12,  41,  10,  40
	.byte	 78, 167,  46, 230, 119, 113, 122, 111,  92, 143, 145, 234,  68, 224,  25, 211
	.byte	104, 197, 130, 203, 215, 221, 196, 193,  19, 133,  85,  76,   5,  45,  53, 192
	.byte	178, 220,  96,   6, 237,  16, 129, 121,  60, 215, 114,  42, 238, 194,  72,  69
	.byte	 46,  50,  60, 161, 156, 246, 151,  31,  34, 180,  47, 225,  28,  81, 219, 118
	.byte	 42, 254, 119,  58, 151, 184, 209, 120, 198,  97, 222,  82, 206,  80, 251, 218
	.byte	122, 244, 166, 184, 248,  55,  50,  48,   8,  74, 245,   5, 180,  48, 186, 136
	.byte	162,  98, 124, 238, 184, 237, 226,  65,  71, 108, 107, 187,  32, 133, 210,  98
	.byte	223, 205,  78, 232, 230, 150,  34, 168,  62,  32, 118, 118,  93,  91,  77, 131
	.byte	136, 203,  17, 167,  27, 108, 191, 116, 122, 242, 114, 250,  89, 171,  99, 236
	.byte	 17, 236,  94,  47, 250,  60, 151, 166, 213, 191, 183,  22,  96, 166,   9,  37
	.byte	226,  46, 191,  58, 117, 139, 135,  58, 150, 167,  23, 113, 214, 184,  62,  10
	.byte	231,  27, 153, 137, 167,  94,  58, 139,  19, 197,  26,  29, 200,  51, 254, 142
	.byte	142,  30,  50, 218, 210, 204, 154,  66,   2, 232, 129, 249, 144, 192, 225,  39
	.byte	222, 169, 238, 163, 253, 221, 154, 194,  34,  33, 221, 232,  73, 246,  54,  71
	.byte	  8,  42, 200, 218,  60, 150, 204, 124, 125, 225,  88,  80,  39,  25,  85, 242
	.byte	179,   9, 252,   9, 199, 149, 179,  99, 193, 242, 183, 210,  51,  84,   6, 124
	.byte	172, 175, 116,  45, 252,  95,  42, 156, 188, 222, 138,  17, 113, 204, 222, 226
	.byte	  0,  79,  10, 250, 141, 242, 146,  24, 206, 250, 164, 144, 120, 138, 239,  40
	.byte	116, 131, 107, 223,  73, 229,  32, 138, 109, 180,  27, 109, 230, 172,  91, 109
	.byte	159,  86,  38, 111, 128, 140, 251, 217,   8, 131, 165, 230,  90, 183,  17, 122
	.byte	156,  37,  83, 178,  12, 108, 183, 135,  83,  91,  54, 181, 174,  22, 138,  11
	.byte	198, 121, 118, 250,  79, 183, 241, 173, 181,  43,  11, 178, 119, 144,  74, 170
	.byte	 38,  90,  89,  17,  75, 186, 200, 146,  56,  62, 203,  36,  16,  40, 217, 142
	.byte	129, 108,  76, 238,  59,   7, 168, 154,   4,  37, 115, 232,  79, 102,  14, 161
	.byte	 12,  72,  10, 205,  92,  53,  14, 155, 230, 194, 143, 242,  96,  13, 228, 165
	.byte	 70,  14, 200, 225, 203, 240, 173, 139,  66, 207,  50, 250, 119, 123,  94, 235
	.byte	 44, 167,  47,  52,  52, 232,  27,  35, 251, 249, 203, 168,  93,  77, 160,  66
	.byte	199,  35,  98,  50, 193, 242,  92, 253, 224,  90, 245, 119, 244, 159, 161, 192
	.byte	232, 255,  88, 128, 221, 104, 177, 239, 141,  90,  83,  34,  78,   3,   2,  10
	.byte	 42, 243,  78,  55,  88, 201,  38, 125,  47, 131, 185, 141, 122, 123,   5,  17
	.byte	218, 206, 237,  51, 225,  78, 141,  10, 117,  69, 214,  83,  87, 140, 212, 195
	.byte	 85, 201, 102, 101, 152,  42, 193, 196, 189, 253, 247,  50,  48, 192, 196, 173
	.byte	224,  45, 244, 196, 166, 127, 110,  38, 135, 224, 230, 239, 116,  46, 170, 219
	.byte	109, 115,  50, 136,  61, 201,   4, 241,  21, 240,  65, 144, 184,  14, 184, 108
	.byte	 18, 222, 208,  91,  97, 230, 126, 122,  15, 201,  50,  43, 163,  75,  18,  31
	.byte	241, 237, 171,  84, 124, 154, 171,  42, 164, 126, 207, 240, 155,  55,  40,   8
	.byte	126, 137,   5, 234, 205,  15,  27,  88, 118,  97, 209, 116, 220,  58,  60, 235
	.byte	167,  92, 155, 108, 162,  93,  24, 148,  43,  53, 253, 211,  82,   0, 231,  42
	.byte	180, 173,  49,  84, 153, 146, 223,  84,  28, 219,  69,  45,  83, 233, 153,  48
	.byte	202,  43, 158,  33, 185, 209,  81, 168, 174, 144, 131,  18,   7, 126,   7, 239
	.byte	 44, 223, 196,  99, 144,  19, 154,  26, 102, 144, 188,  60,  94,  16, 231,  31
	.byte	 96,  73, 170, 139,  55, 227, 111, 221, 179,  70,  92, 113, 126, 197, 169, 133
	.byte	 74, 164,  24,  52,  98, 215, 191,  43,   7,  17, 122,   0, 128,  86, 136,  73
	.byte	151, 202, 111,  80,  52, 251,  43,  23, 242, 191,  10,  95,  99, 226, 114,  30
	.byte	150, 235,  54,  30, 204,  48,  72, 190, 111,  46, 106, 195, 153,  79, 218, 101
	.byte	239, 103, 184,  53,  68,  47,  27,   4, 124, 239, 246, 153, 144,  40, 104, 164
	.byte	 42, 223, 187, 157,  81, 159, 222,   5, 166, 250, 192,  94,  81, 108, 184, 201
	.byte	137,  30, 230, 134,  93,  54,  79,  26, 241, 161,  32, 180, 102, 122, 205, 233
	.byte	 58, 110, 240, 176, 203, 161, 207, 194,  36,  79, 249,  60, 222,  35,  22,  70
	.byte	158, 208, 204, 115, 233,  84, 103,  59,   5, 109, 125, 186,  15, 209, 194,  19
	.byte	228, 175,  79, 201, 148, 209,  87, 232, 248,  67,  92,  76,  43, 223, 185, 174
	.byte	190,  44, 120, 173, 100,  67, 213, 103,  15,  39, 117, 153, 154, 116,  81, 100
	.byte	 82,  15,  92,  50,  48,  99, 207,  43,   0, 253, 125,  81, 187, 198, 223,  50
	.byte	152, 185, 130,  26, 170,  83,  42,  44, 235, 251, 153, 105, 156, 175, 229, 128
	.byte	148,  15,  44,  97,  86, 236,  27,   9, 188,  31, 107, 144,  48, 227, 101,  72
	.byte	141, 195,  74, 133,  98, 150,  90, 138, 119,  96, 148, 196,  57, 148,  87,  26
	.byte	198,  29, 169, 161,  52,  66, 135, 122, 125,  92, 164,   8, 251,  39, 131, 128
	.byte	218, 181, 156,  64, 170, 100, 159, 226,  22,  14, 115, 194, 111, 236,  70, 213
	.byte	118, 234, 221,  95, 177,   5, 119, 159, 238,  17, 254, 131, 121,  57, 191, 127
	.byte	 75, 148,  22, 231, 226, 249, 180,  37, 179, 139, 112,  60, 197,  83, 158,  19
	.byte	254, 255,  33,  65,  74, 128,  84, 170, 141,  73,  83, 152, 168,  56,  89, 248
	.byte	 94,  30, 228, 112, 211,  91,  82, 172, 120, 226, 122,  99, 247,  64, 113,  78
	.byte	110, 183,   0, 142, 245, 179,  66,  96,  36, 175, 114,  53,  23,  16, 220, 171
	.byte	100, 155,  53,  77, 190, 140,  95,  12,  58,   0,  79,  72, 113, 180, 133, 115
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 34, 137, 246, 208,  17, 157,  76,  26, 163,  39, 119, 234,  41,  79,  15, 159
	.byte	163, 139,  66,  65, 163,  39, 205, 181,  82,   0, 109,  87, 192,  87,  36, 106
	.byte	162, 100, 144, 251, 134, 120,  88,  86,  55,  39,   6,  84,  37, 154,  90, 248
	.byte	150,  43, 171, 109, 146, 187, 197, 144,  51, 205, 253, 151, 197,   2, 210, 107
	.byte	 90, 162,  33,  99,  36, 108, 138, 126, 193,  64, 236, 117,  17, 141,  96,  33
	.byte	209, 137,  68, 207, 200, 218, 203, 140, 191, 148,  89, 188,  23,  88, 176,  73
	.byte	 40,  19, 173, 153, 204,   2, 172, 157,  82,  78,  15, 134, 205, 200,  23, 157
	.byte	 59,  74,  44,  44,   9,  75,  76, 169, 210, 230,  83,  56, 204,  30,   2, 154
	.byte	170, 163, 195,  88, 186, 202,  60, 229,  76, 132,  48,  77,  99,  53,  54, 217
	.byte	109, 214, 109, 252, 178,  69, 188, 126, 159,  39,  18, 195, 125, 231,  77, 243
	.byte	 46, 227,  70, 144, 182,   3, 213, 146, 188, 204, 238, 224,  45, 221,  28, 242
	.byte	166, 249, 216, 207, 141, 170, 158, 187,  49, 123, 206,  93, 105,  51, 249, 241
	.byte	 24, 120, 159, 171,  18,  29, 180,  33, 208, 198,   4,  82,  30,   0, 211, 200
	.byte	  0, 136,  41,   7,  93, 164, 145,   2,  16, 249,  46, 252, 118, 228,  34, 157
	.byte	176,  39, 247, 170, 100,  67,  62, 128,  73,   3,  44, 239,  90, 210, 233, 175
	.byte	 63, 110, 214,  68, 242, 192, 149,  17, 161, 110,  71,  55,  29, 181,  29, 218
	.byte	 58,  64, 175,  70,  18, 110, 201,  33, 180, 216, 220, 187, 215, 131,  23, 223
	.byte	  8,  33, 184, 223, 191, 171, 243, 225,  20, 216, 165, 111, 129, 239, 162, 220
	.byte	186, 135, 118, 243, 115, 217, 166,  58,  55, 195, 201, 247, 234,  45,  98, 251
	.byte	137,   6,  88,  50, 182, 156, 127, 210, 148, 150,  88,  82, 241, 214,  94,  84
	.byte	 92,  24, 122, 176, 132,  47, 192,  44,   1, 109,  12,  37, 227, 146, 112, 222
	.byte	105, 128, 208,  73,  72, 188, 229, 171, 174,  61,  39, 212, 138, 221, 177,  79
	.byte	 58,  81,  78,  80, 202,  64,   2, 101, 134, 233, 230, 150, 102, 129,   4,  55
	.byte	 76, 204, 204, 255, 150,  13,  32,  80, 253, 230, 136,  70, 198,  23, 222,  72
	.byte	188,  37,  84, 219,  39,  38, 134, 220, 255,  81, 198,  91,  71, 207,  64, 209
	.byte	 15,  96, 244, 206,  61, 184, 116, 109, 165, 125,  79,  82, 134, 213, 161, 216
	.byte	202,  34, 229, 235, 247, 185, 140, 119, 185, 108, 236, 180,  76, 122, 181,  12
	.byte	 62, 167, 119, 216, 167,   2,  38, 243,  53,  51, 101, 142, 218, 158,  83, 166
	.byte	 92,  48, 132,  81, 249, 228,  40, 207, 117, 248, 148, 169,  62, 242,  29,  64
	.byte	 75,  57, 141, 229,  23, 180, 144,  25, 141,  15,  81, 163, 141,  98,   4,  22
	.byte	186,  48, 236, 132, 168, 154, 216, 175, 219,  26, 109, 209,  67,  81, 236, 188
	.byte	101,   2, 102, 240,  81, 117, 210, 132, 171,  93, 177, 221, 246, 158, 221, 179
	.byte	176, 246,   4,  70,  29, 163, 215, 208, 181, 220, 157,  44, 168, 175, 165, 181
	.byte	 52,  67,  35, 237,  60, 118, 171, 235,  67, 152, 156, 109,  69,   6, 138, 119
	.byte	106, 217, 185, 252, 224, 208,  55, 233,  51,  35,  38, 102, 231, 199, 124,  24
	.byte	152, 185, 174, 130, 250, 207, 213, 105, 168, 117, 147, 172, 238, 183, 197,  62
	.byte	120,  56,  50,  75, 230, 197, 126, 229, 105,  64,  39, 177,  68, 192,  27, 204
	.byte	225, 102, 238, 104, 213,  32,  60, 233, 134, 132,  81,  50, 135, 102, 178,  87
	.byte	  4, 115, 200, 142,  14, 224,   0, 172, 242, 145, 205, 195,   8, 237, 200,   1
	.byte	244, 238, 100, 160,  24, 121,  45, 138, 143,  81,  35, 111, 148,  35, 124,  78
	.byte	 62,  12, 127,  21, 146, 105,  26, 173, 226,  17,  65, 134,  24, 187,  39,  20
	.byte	192,  29, 112, 145,  51, 174, 196, 111,   7, 178, 107,  99, 155, 134,  31,  37
	.byte	106, 120,  27, 206, 242, 166, 209,  32,  89, 154, 114,  88,  54, 181, 196, 203
	.byte	132, 201,  24,  82, 240, 205, 120, 232,  19,  37,   8,  27, 169,  46, 187,   1
	.byte	 38,  46, 146, 242, 224,  11, 196, 182, 251, 107,  82, 183,   5,  82, 210,  86
	.byte	 15, 154,  62,  93, 113, 222,  30,  65,  32, 191, 188, 219,  19, 157, 197, 134
	.byte	164, 104, 201, 189, 131, 193,  84,  70, 238, 119,  58, 185,  73, 129, 121, 244
	.byte	 81, 250, 155,  85,  82, 245, 219, 212, 124, 114, 149,  19, 125, 128,  46,  79
	.byte	 44, 157, 247,  61, 248, 206,  57, 122, 183, 250, 203, 218, 165, 119,  45, 106
	.byte	  1, 196, 166,  23, 218, 106,  76,  55,  53, 205,  92,   6,  83,   7, 180, 212
	.byte	218,  76,  97, 213, 226, 175,  32, 192, 203, 176, 168, 169,  93, 115, 207, 215
	.byte	 44, 233,  79, 227, 147, 213, 227, 182,  33, 192, 235,  28,  73, 142, 125, 224
	.byte	 32, 137,  71,  94,  87, 196,  84,  77,  94,  63, 118, 201,  58,  85, 220,  45
	.byte	 40, 170, 138,  93, 107, 167, 130, 165, 233, 244, 233, 189,  26,  70, 182, 240
	.byte	194, 130, 140, 211, 160,  69, 157,   1, 224, 244,  86, 251, 227, 216,  18, 177
	.byte	164, 215, 233,  10,  39, 248, 230, 205,  12, 194, 217, 225,  36, 245, 200, 171
	.byte	192, 142,  47,  11,  96, 171,  10, 227,  12, 102,  42, 155, 118, 189,  66, 185
	.byte	198,  45,  30,  50,  71,  76, 182, 101,  91, 138, 237,  68,  87, 167,  57,  25
	.byte	242, 134,  98, 159, 241, 100,  92,   9, 156, 225,  63,  68,  15,  76, 197, 255
	.byte	205, 161, 182,  12, 227, 156, 185, 239, 246, 177,   7, 105,  82, 252,  58, 127
	.byte	200, 108, 136, 134, 147, 139, 125,   0, 214,  20, 109, 203, 108, 206,   8, 252
	.byte	 58,  75, 186, 187, 108,  61,  36, 228, 195, 201, 155,  94, 133, 199, 232, 152
	.byte	 28, 115, 110, 100, 238, 182, 217, 151,  74, 103,   8,  33, 237, 156, 192, 138
	.byte	182, 239, 248,  64,  38,  36, 117, 172, 250, 188,  26, 178,  79, 127, 147, 112
	.byte	100,  83,  38,  63,  84,  48, 123, 253, 224,  21, 242, 109,  66,  72, 250, 110
	.byte	 89, 222,  85, 252, 154, 157, 107, 150, 129, 134, 237,  50, 251, 151, 163, 236
	.byte	 94, 198,   4,  75, 105,  23, 170, 119, 233, 233,  97, 186, 165, 106, 192, 193
	.byte	101,  63,  60,  15,  33, 134, 125, 124, 162, 238, 173, 234,  41, 218, 145, 173
	.byte	 96, 195, 237, 198, 233, 235,  85,  81, 178, 250, 113, 165,  11, 122, 155, 156
	.byte	121, 171,  99,  41, 159, 239, 130,  87,  18, 212, 177, 151, 204,  53, 254, 185
	.byte	126, 197, 239, 250,  23,   6,  74,  42, 180, 203, 231,   4,  49, 132, 202, 245
	.byte	 26, 169, 227,   0, 148, 253, 141,  46, 109,  79, 228, 111,  57,  30, 157,  59
	.byte	148, 215,  97, 163,  42,  65,  52, 230,  58,  96, 202,  87,  17, 225, 112, 173
	.byte	 86, 163, 116, 217, 159,  93, 141,  78, 216, 109, 159, 213, 240, 193, 255, 238
	.byte	 22, 230, 117, 102, 232,  74, 148,   8, 114, 219, 203, 228, 207, 117,  52, 145
	.byte	238,   8,  18, 129, 118, 210, 186, 175,  28, 172, 165, 187,  67, 201,  43, 160
	.byte	152, 172, 167,  75, 236, 107,  37,  27, 103, 203, 143,  31, 140, 125, 241, 229
	.byte	227, 178, 128,  76, 199,  22,  58, 157,  55, 223, 234,  10,   2,  37,  45,  71
	.byte	 24,   3, 135,   6, 108,  32, 215, 177, 241, 230, 237,  50, 131, 103, 208,  81
	.byte	244, 166, 177, 222, 156, 132, 190, 155, 179,  46, 244, 162, 221,  22,  25, 159
	.byte	 60, 247, 162, 143, 206, 128,  16, 213,  26,  45,  65,  91,   2, 234,   8,  70
	.byte	140, 130,   4, 229,  77,  11, 191, 181, 138,  42,  90,  45, 138, 154, 135, 127
	.byte	136,  41, 155, 130, 206, 117, 142, 181, 131, 162, 218, 168, 168,   3,  89, 243
	.byte	 75, 209, 215,  73, 111,  70,   1,  42, 176, 219, 249,  53, 146, 155, 153,  43
	.byte	166, 138, 155, 159, 138, 114,  11,  52, 171, 213,  83, 231, 225, 122,  21, 155
	.byte	110, 233,  71, 107,  72, 166,  18, 195,  82, 198, 140,  48, 254, 217,  87, 170
	.byte	114, 188, 191,   7,  11, 164, 254,   5, 169, 213, 202, 195,   8,  49,  33, 201
	.byte	152, 248, 117, 253,  31,  57, 242, 182,  88, 115,  81,  25,  37,  31, 114,  23
	.byte	 40,   5,  44,  18, 137,  10, 249,  31, 127, 149, 253,   5, 160, 211, 178, 102
	.byte	 89, 154, 141, 105, 205, 192, 109, 132,   3, 235, 159, 116, 130, 229, 254, 135
	.byte	242,  43, 222, 237,  92, 196, 223, 252, 232, 188, 235,  48,  71,   2, 226,  84
	.byte	115, 195, 149, 154,  40,  36, 194, 229, 166,  81,  39,  54,  46,  68, 132,  17
	.byte	 84, 215, 136,  33,  26,  57, 114, 170,   1, 183, 174, 231,  20, 156, 203,   2
	.byte	 39, 176, 146, 159, 132, 221,  62,  71,  94, 214, 173, 164, 152,  12, 108, 129
	.byte	180,  42, 187, 184, 158, 213,  19, 187,  51,  50, 146, 103, 243,  45,   4, 102
	.byte	137, 107, 226, 142, 179, 178,  13, 192, 126, 157, 199, 189, 190,  68,  46, 221
	.byte	254,  42, 103, 184,   5, 186,  74,  21,  46,  63, 159,  58,  99,  66, 154, 200
	.byte	235,  70, 254, 211, 207, 199, 117,  53, 187, 219, 154, 178, 202, 206,  87, 172
	.byte	146, 173,  55,  12, 230,  42,  52,  19,  50, 253, 253, 251, 210, 118,  91, 144
	.byte	246,  62, 229, 121,  41, 142,  44,  24,  20, 182,  46, 250, 242, 217,  63, 188
	.byte	 48, 156,  87, 152,  75, 177,  97, 105, 171, 189,  23,  56,  51, 130, 137,  39
	.byte	 50, 165,  96,  64, 119, 102, 135, 105, 192, 238,  51, 166,  96, 191, 130,  41
	.byte	 50, 225, 108,  77, 242, 133,  22,  61, 158,  97,  13,  36,  98,  60,  69, 202
	.byte	137, 192,  87, 150,   8,  44, 187, 217,  45, 217, 252,  88, 204, 144,  58, 241
	.byte	 46, 242, 157,  44,  11,  86, 218, 248, 100,  61,  49, 124, 110, 150,  39, 135
	.byte	138,  35,  54, 235, 130, 226, 102,   3, 161, 200,  39,  65,   3,  21, 181, 133
	.byte	168,  15,   2, 179,  62, 159, 191, 249, 155,  33, 219, 158,  15,  39, 247,  86
	.byte	173, 208,  19, 189,  66, 143, 113, 223, 138, 104,  71,  49,  86,  76,  71,  84
	.byte	254, 254, 218, 175, 239,  52,   0, 177, 234, 235, 161, 117,  24,  69, 199, 128
	.byte	143, 254, 195, 181,  40, 107, 223, 220, 251,  99, 231, 165,  84, 242, 137,  78
	.byte	156, 197, 196,  86,  12,  59,  21, 222,  97,  27,  73,  60, 220, 141, 136,  65
	.byte	 55,  10, 118, 186, 185,   9,  69, 125,  80,  56, 170, 239, 201, 243, 186, 134
	.byte	 70,   2,  81, 112, 198, 218, 191,  20, 117,  50, 190, 221,  39, 233, 103, 182
	.byte	247, 160,  93, 193, 133,  84, 252, 124, 182, 247,  24, 100,  62, 212,  19, 251
	.byte	228, 212, 253, 151,   6, 130, 134,   1, 232,  57,  44, 100,  46, 196,  35,  70
	.byte	187,  93,  24,  77,  18,  64, 224, 227, 121, 137, 196,  41, 222, 186, 219, 149
	.byte	200, 103, 212, 150, 165,  72,  95,  43,  83, 202, 198, 133,   1,  14,   6,  45
	.byte	 89, 244, 155, 217, 122,  32, 107, 230, 136,  84, 133, 107,  40, 234,   5,  20
	.byte	108,  59,  98,   5, 117,  51,  21,  48, 100,  62, 207, 227,  50, 103, 176,  26
	.byte	217, 248, 206, 221, 190, 196,  90, 253,   0,  46, 215, 224, 172, 135, 111,  61
	.byte	142,  93, 234, 228, 131, 114, 139, 140,  86,   4,  26, 228, 254, 226,  83, 113
	.byte	173, 218, 202, 186,  92, 230, 204, 236, 131,  25, 136, 230,  20, 237, 225,  36
	.byte	 18, 112, 217, 214, 129, 163,  20,  51, 220,  51,  87,  95,  65, 188, 181, 236
	.byte	165, 185, 128, 247, 225, 205, 201, 121,  65,  92, 236,  33,  50,  45,  67,  30
	.byte	126, 203, 107,  87, 220,  45, 133, 174, 149, 175, 201,  81, 184, 146, 201, 248
	.byte	158, 171,   9, 103,  73, 208, 159,  47, 176, 240, 184, 164, 227,  53,  65,  54
	.byte	212,  35, 148,   5,  69, 171, 161, 174, 128, 169, 231, 172,  59,  61, 133,  21
	.byte	 49, 175, 212, 170, 182, 225,   1, 211,  51, 104, 204,  98,  49, 183, 186, 253
	.byte	180, 123, 143, 166,  46, 214, 221, 120, 233, 131, 204,  14, 244,  89, 156, 222
	.byte	 72, 123, 135,  14, 138,  49, 124, 141, 106, 247, 168, 174,  97, 137, 244, 215
	.byte	 72, 145,  75, 103,  24,  22, 100,  99, 217,  85,  22,  22,  41, 141, 142, 130
	.byte	 58, 154,  86, 106,  94,  42,  75, 196, 240, 143,   4,   5, 111,  87,  78, 231
	.byte	240, 108,  17, 254,  82, 194, 118,  34,  51,  19, 193, 141,  44,  33,  73, 100
	.byte	168,  28, 158, 100,  52, 251, 165, 197, 137, 101, 195, 125,  29,  25,  58, 123
	.byte	 50,  45,  36,  87, 245, 169, 102, 236,  89, 242, 237, 118, 105,  99, 145,  56
	.byte	236, 183, 225,  11, 187,  37, 105, 142,  90,  12, 190, 221,  49, 226, 151, 188
	.byte	100, 171, 147, 193,  51,  47,  53, 206,  75, 116,  90, 145,  61, 222, 242, 186
	.byte	194, 185, 161, 215,  90, 227, 107, 113,  76, 180,  99, 161, 214, 127,  96, 252
	.byte	 94, 191, 187,  34,  91,   0, 225, 200, 121,  86, 214, 155, 203,  93, 164, 250
	.byte	 43, 147, 125, 253,  42, 101,  39,  23, 170,   0,  51, 182, 144, 162,  53, 252
	.byte	 56, 188,  66,  34,  72, 237, 134,   6, 196, 222,  28,  26, 153,  59,  81,  33
	.byte	140, 127, 102, 152,  50, 187, 235, 245,  94, 144, 221,  29, 202, 137, 122, 174
	.byte	160,  11, 165,  93,  41, 224, 242, 207, 127,   0,   1, 226,  51,  56, 128, 216
	.byte	 76, 177, 236, 236, 154,  85,  98, 208, 185, 243, 137, 225,  12, 139,  80,  60
	.byte	142,  95, 237, 125, 151, 106,  70,  69,  26,  91,  79,   7,  28,  38, 153, 228
	.byte	 45,  73,  90,  98, 241, 181,  80, 165, 172, 154,  59, 114, 108,   9, 244, 239
	.byte	 96,  35, 249,  61, 121, 209,  15, 184, 115, 244,   6, 100, 196, 179, 206, 131
	.byte	147,  62, 178, 119, 112, 106, 186,  61,  12, 207,  23, 245,  76, 238, 108, 212
	.byte	 82,  54, 170, 110, 115, 122, 243, 160, 209,  94, 154, 168,   1, 106, 168, 109
	.byte	213,  24, 190, 220,   5,  15,  93, 145, 183, 131, 126, 148,  56,  10, 139, 196
	.byte	204, 108,  49, 120,  11, 175, 181,  71, 205,  69, 253, 140,  58, 178,  31, 189
	.byte	 28, 207, 208, 239, 209,  65,  91,  33, 233,  82, 122,  72, 199, 182, 197, 213
	.byte	164,  49,  36,  81,  18,  24, 173, 207, 142,  73, 190,  61, 218,  11,   7, 101
	.byte	 82,  22, 211,  26, 235,   3, 132, 149,  84,  46, 240, 122, 114, 197, 245,  50
	.byte	116, 235, 190,  34, 221,  61,  21, 243,  11,  94, 221, 125,  76,  81, 184,  58
	.byte	 70, 135, 202,  93,  67, 136, 230,  49,  30, 110,  65,  24,  63,  41,  81, 139
	.byte	184, 186,  96,  89,  19,  52, 201, 226, 121, 250,  56, 161,  98, 212, 201, 128
	.byte	 87, 164,  13,  40, 152,  66, 210, 243,  45, 160, 143,  29,  33,  77, 212,  12
	.byte	178, 188, 108, 222, 184,  39, 213, 146,  55, 160, 112,   3, 176,   7, 200, 181
	.byte	188, 234,  35,  21, 147,  28,  58, 214, 245,  15,  48,  24, 212, 159, 113,  22
	.byte	254, 140,  81, 230, 206, 191, 170, 235,  89,  20, 197, 234, 213, 157, 167, 193
	.byte	 83,  39, 207, 241, 218,  21,  33,   3, 232, 107,  45,  16,  20, 197, 254, 123
	.byte	100,   8,  75, 245, 177,  95, 250, 218, 174,  60,  64,  30, 194, 111, 164, 157
	.byte	161, 208,  97, 250, 232, 251, 237, 233, 245, 212, 114, 104, 143, 194,  46, 218
	.byte	 60, 237, 177, 116,   4,   8,  76,  45,  17, 112, 227,  17, 175, 105,  34,  12
	.byte	209, 174,  70, 152, 255, 179,  15,  83, 115,  29, 154,  46, 229,  45,  82, 182
	.byte	104,  34,  46,  18, 219,   2,  94, 230, 185,  80, 182, 120, 177, 245, 236, 144
	.byte	221,  47, 229, 193, 219,  24,  50, 168, 229, 191, 206, 184, 247, 146,  23, 154
	.byte	 68, 251, 159,   6, 200, 129, 253,  40, 133,  11, 242, 160,  13, 200, 196,  20
	.byte	200, 189,  51, 171,  56, 187, 235,  55,  76, 212, 122, 132,  26, 110,  78,  13
	.byte	 76, 146,  38, 117,  52,  14, 147,  14,  99,  31,   7,  10,  97,  63, 197, 128
	.byte	215,  97,   9,   3, 148,  64,  20,  42,  23, 140, 211,  29, 181,  19, 253, 109
	.byte	 38, 103, 190, 161,  78, 198, 250, 131,  72,  48, 234, 246, 124, 178, 135, 174
	.byte	153,   4, 217,  97,  11, 216, 147, 243,  68,   9, 185, 207,  99, 186, 171, 132
	.byte	222,  58,   3, 240, 178, 200, 197, 153,  87,  53,  26,   2, 153, 101, 163, 235
	.byte	244,  70, 228,  19, 176,  44, 129,   6,  62,   8,  60, 102, 240, 233,  20, 214
	.byte	222,  95, 178,  93, 114, 235,  18,  99,  15,  38, 114, 251,  11, 252, 255, 216
	.byte	161,  72, 175, 110,  89, 150, 153, 134, 114,  83,  44,  40, 124,  18, 104,  73
	.byte	138, 146, 138, 211,  53, 139, 211,  74, 248,  51, 157,  61,  45, 193,  82, 254
	.byte	 63, 243,  76, 107,  69, 184, 154,  78, 224, 181,   2, 109,  61, 189, 103,  32
	.byte	184, 114,  35, 236, 231, 225, 219, 136, 247,  55,  30, 204, 104, 193,  37, 142
	.byte	180, 139, 108,  29,  52, 133, 188, 177, 196,   2,   1, 221, 226, 158, 201, 207
	.byte	116, 146, 216, 201,  73,  56, 230,   2, 175, 132,  75,  52, 247, 110, 168, 156
	.byte	149, 150, 251,  25, 223, 106,  87, 223,  60,  96,  18,  40, 224,  66, 211,  42
	.byte	236, 230, 158, 110, 126, 205,  80, 163, 250,  11,   0,  84, 235, 232, 131, 161
	.byte	151,  28, 215, 128,  17, 214, 235, 184,  81,  31,  65, 181, 174,  65,  59, 142
	.byte	176,  54,  38, 199,  79,  10, 222, 222, 110, 112, 110, 165, 218,  60, 125, 213
	.byte	 35,  80, 153,  52,  80, 192,  50,  93,  87,  97,  57,   5, 101, 211,  76, 218
	.byte	 72, 211,  11, 147, 185,  33, 169, 184, 233, 161, 186,  26, 110, 164, 186, 144
	.byte	125, 216, 183,  71, 243, 156,  96, 254, 235, 225, 238, 145,  47, 166, 108,  51
	.byte	180, 237,  15, 242,  50, 113, 195,   7,   7,  84,  67,   9,  93, 179, 117, 113
	.byte	 54, 186,  16,  72,  26, 142, 146, 104,   6,  71,  70, 129, 132,  88, 136,  51
	.byte	166,  49,  79, 128, 179,  37, 231, 121, 196,  44, 126,   2, 247,  96, 145, 122
	.byte	222,  88, 211, 200,  20,  64, 139,  26,  28,  59,  43,  35,  80,  67,  90,  44
	.byte	 66, 183, 219, 230, 252,  34,   8, 231, 229, 251, 191,  83,  82,  44,  28,  51
	.byte	140, 104,  52, 240, 226,  32, 134,  70,  18, 148,  96, 216, 216, 166, 105, 164
	.byte	148, 147,  99, 251, 236,  24, 237,  49,  16,  51, 137, 173,  30,  13, 245, 183
	.byte	  6, 174,  56, 134,  21, 114, 223,   8, 149, 156,  44, 247,  84,  91,   4, 112
	.byte	 22, 209,  74,  58, 202,  31,  22,  32, 118, 204, 180,  30,  99,  39, 253, 236
	.byte	 55,  28, 156, 204,  22, 201,  56, 223, 250, 163, 205, 199, 201,  25,  54,  35
	.byte	150,  84, 252, 205,  20, 114,   4, 100,  54,  57, 169,  63, 148,   9, 163, 251
	.byte	 78,  48, 251, 134, 185,  62, 177, 159,  11, 108, 232, 199,  32, 104, 101, 241
	.byte	142,  83, 126, 153,  24,  10, 109, 178, 241, 235, 229, 200, 129,  91, 241,   9
	.byte	 33,   1, 236, 114, 239, 148, 127,  78, 236, 190, 133,  77, 210, 154, 109,  12
	.byte	146, 226,  53,  99,  54, 162,  50, 126, 109, 193,  12, 118, 148,  75, 247,  89
	.byte	121, 222,  75, 233, 115,  78, 208,  28,  31,  94,  94, 243, 240,  54, 213,  13
	.byte	138,  57, 234, 189,  48, 175,  14, 118, 170, 162, 241,   2, 203, 137, 244, 208
	.byte	 49, 124,   5,  30,  21,  96, 167,   5, 246,  83,  45, 253,  51,  80,   7, 185
	.byte	214,  53,  96, 218, 117, 129,  61, 103, 226, 119,   4,  28, 125,  60,  14, 249
	.byte	 72,  62,  64, 246,  61, 222, 233,  45, 249, 108, 170, 165, 172, 126,  41, 191
	.byte	 18, 174, 186, 235, 117,  94,  49,  44, 183,  74,  15,  48, 110, 192,  37,  13
	.byte	177, 144,  16, 247, 180,  15,  47, 198, 122,  29, 113,  60,   4, 247,  55, 221
	.byte	246,  70,  57, 193, 184,  11, 248,  86,   6,   7,  31, 208,  45,  43, 163,  75
	.byte	191,  71, 203,  56, 101, 124, 240,  39, 196, 211, 177, 231, 137,  36, 220, 154
	.byte	234,  85, 235, 225,  26,  98, 156, 147, 215,  42,  92,  24,  81,  54, 174, 112
	.byte	 99,  67,  69, 232, 191,  82,  85,  77, 188,  47, 223, 156, 155, 165,  55, 118
	.byte	 24, 236,  67, 158,  48, 185,  39,  21,  70,  82,  88,   6, 103,  21,  70, 179
	.byte	182,  41, 191,  92, 108, 195, 237,  67, 153, 194, 105, 169, 137, 209, 238, 212
	.byte	 34, 224,  36,   6,  70, 153,  95,  45, 102,  47,  75, 214,  71,  56, 239,   3
	.byte	 12, 170,  46, 184, 150, 166, 217, 177,   4, 242,   9, 252,  57,  16, 144, 197
	.byte	242,  76, 197,   6,  48, 226, 136, 244,  42, 170,   4,   0, 169,   0,   0, 186
	.byte	147, 245, 207, 172, 130,  92, 245, 221, 239,  48, 201, 152,  57, 250, 106, 168
	.byte	176, 219,   6, 191, 134,  38, 126, 190, 109, 206, 237,  47, 232,  90,  56, 139
	.byte	 26, 244, 205, 175,  65, 138, 129, 165,  36, 104,  32, 107,  62, 156, 207,  42
	.byte	252, 113,  20, 241,  91, 246, 201,  74, 181, 211, 211, 177, 223, 105, 237, 158
	.byte	119, 251, 240,  57, 206, 155,  37, 120, 126, 206, 129, 198,   8, 114, 119,  51
	.byte	 18,  67,  12, 121, 152,  89, 136, 149, 212,  70, 157,  23, 206, 127,  62,  93
	.byte	 84,  34, 123, 223,  62, 211,  38, 130, 100,  72, 163, 162,  40, 135, 195, 237
	.byte	226, 165, 158, 109, 146,  61, 210,  26,   7, 106, 192, 136, 132, 100, 213,  92
	.byte	 33, 106, 148, 197, 197,  64,  57, 177, 151, 233,  69, 232, 132,  19, 138,  11
	.byte	180,  60, 146, 202, 149, 128, 100, 188,  45,  14,  41,  58,  53, 254,  64,  42
	.byte	188, 156,  17, 248, 158,  52, 196,  75, 107, 190, 229,  81, 117, 196,  28,  53
	.byte	152, 207, 208, 171, 192, 174,  42, 217,  60, 140, 165, 160, 133,  59,  58, 128
	.byte	158, 171,  43, 226, 245,  66,   7, 112, 109,  42, 104,  17, 111, 111, 113, 101
	.byte	250, 141, 124,  33, 209, 134, 135,  45, 251, 171,  76, 149,  35, 110,  23, 184
	.byte	 24, 254, 249,  91, 213, 103, 207, 152, 216,  45,  68, 139, 118, 150, 202,  62
	.byte	150, 179,  70, 245,   3, 178,  92, 204, 119,  45, 209,   6, 125,  67, 190,  54
	.byte	163,   9,   5, 226, 231,  88, 111,  50,  79,  84, 109, 119, 245,  11, 181, 209
	.byte	226, 101, 146,  41,  27, 203,  39, 205,  17,  66, 163, 223, 186, 206, 122,  69
	.byte	178, 168,  26, 210,  64, 101, 216, 178, 213,  98, 197,  89, 135, 203, 205, 147
	.byte	226,   2,  23, 129,  39, 137, 117,  13, 218, 170, 119, 128, 247, 218,  22, 251
	.byte	119, 100,  10, 108,  40, 252,  50, 219, 172,  12, 219,  50, 164, 117, 254, 171
	.byte	230, 253, 184, 136, 218, 246, 123, 155, 210, 222,  80,  89, 118, 103,  74, 232
	.byte	146, 255,  92,  86, 241, 124, 195, 109,  45,  28,  80, 170,  75,  77, 142,  16
	.byte	 26, 195,  52, 140, 241, 148, 159, 203,   2,  72, 128,  10,  83, 227,  77, 161
	.byte	188, 167,  73, 252, 196, 192, 225,  59,  54, 232,  17, 222, 155, 114,  26, 252
	.byte	168, 210, 106, 112,  95,  67, 240, 203, 252,  87, 206, 127, 208, 212,  95, 106
	.byte	212, 248, 216, 208,  87,  87,  63, 201,  24,  19, 134, 219,  48,  35, 220,  14
	.byte	 86, 233, 128, 185,  14, 238, 213,  90, 104, 167,  87, 232,  80,  24, 198, 167
	.byte	153, 153, 225, 158, 161,  82,  95,  63,  88,  55, 226,   4, 181, 141, 190, 198
	.byte	242, 167, 182, 245,  47, 146, 104, 201, 226, 160, 158,  36, 145,  83,  41,  33
	.byte	179, 218,  96, 135, 202, 155, 254, 241,  47, 169,  81,  87, 245,  60,  25, 152
	.byte	 66, 169, 226,  81, 181, 246, 230,  92, 174,  45,  86, 111, 206, 164, 159,  89
	.byte	 70,  89, 132, 195, 188, 187,  37,   8, 192, 128,  10,  63, 218, 184, 108, 226
	.byte	176, 177, 251, 147,  53,  77, 115, 197, 176, 169, 185,  51, 153,  22, 226, 247
	.byte	 13, 156, 142, 133, 150, 229, 189, 156, 144, 104,  90,  50, 130, 145,  53,   5
	.byte	222, 235,  70, 187, 240, 252, 202,  65, 185,  90,   4, 119, 106, 179,   7,  71
	.byte	163,  77,  97, 158, 216,  36, 159, 121,  16, 166, 235,  83, 145,  72, 197,  37
	.byte	186, 201, 243, 203,  30, 136, 253, 173,  36, 190, 228, 241, 246, 201,  14, 150
	.byte	153,  54,  92,  67, 127, 129, 161, 254,  15, 245, 202, 159,  90,  18,  23, 123
	.byte	236, 124, 185,   1,  42,  13, 201, 173, 120, 111, 108,  65,  39,  87,  59,  22
	.byte	174,  29,  30, 105, 134, 210,  49, 200,  39,  46, 127, 176, 211, 239, 138, 176
	.byte	106, 181, 205,  93,  55, 147,  73,  52, 157, 194,   6,  53, 201, 184, 153,  23
	.byte	103, 165, 109, 148, 157, 128, 154, 179,  27, 105, 213,  98, 161, 116,  53,  53
	.byte	 56, 172,  12,  18,  49,  11,  86,  66,  72,  84,  80,  76, 105,  43, 185, 207
	.byte	251,  74, 159, 225, 150,  54, 174, 214,  29,  61, 209,  76, 111, 177,  46, 175
	.byte	162, 251, 220,  87,  16,  64,  21,   7,  91, 202,  63,  14,  53, 130,  74, 255
	.byte	 54,  99,  48, 139, 252, 135,  74, 143,  96,  77,  27,  84,  74, 206,  98, 145
	.byte	154, 183, 179, 106, 249,  25,  28,  65,  23, 121,  76, 179, 243,  82,  13,  41
	.byte	 83, 152,   3,  47, 117, 228, 107, 150, 197, 151, 115, 244, 128, 224, 117, 151
	.byte	  6,   3, 146, 149,  39,  47, 252, 247,  36,  91, 172, 213,  63, 179, 226,  27
	.byte	  2, 175, 132, 238,  21, 111, 107, 162,  39, 126, 168,  51, 194, 123, 186, 215
	.byte	  6,  50, 110,  28,  67,  66,  60, 228, 231,  46, 187,  95, 101, 240, 244,   0
	.byte	161, 209, 190, 116, 117, 174,  34,   4, 142,  59,  72, 214, 119, 232,  34, 110
	.byte	146, 176,  20, 109, 132,  92,  32,  11,  25, 177,   7,  16, 237, 212, 146, 250
	.byte	235, 111, 142, 222, 189, 135,  80, 151, 188, 206, 210, 237,  92, 185, 138,   2
	.byte	218, 173, 154, 206, 203, 166, 152, 186, 178, 184, 246,  12, 168,  32,  75, 233
	.byte	230, 208, 132, 183, 165, 255,  29,  52, 120, 189,  17, 209,  47, 227,  87,   6
	.byte	 28,  92, 141, 152,  27,  57, 157, 219,  95, 172,  25, 223, 163,  63,  24, 228
	.byte	 30, 121,  54,  46, 174, 170, 225, 126,  20, 171, 210, 185,  88, 229, 136,  33
	.byte	  0, 219,  74, 237, 134,  98,  25, 166,  99, 200, 190,  39,  89,  69,  30, 138
	.byte	179, 185,  54,  87,  21,  90, 182,  97,  22,  73, 246,  27, 156, 109, 144,  62
	.byte	206,  51, 110, 159,  17, 193,  90,  23,  82, 187, 132,  43,  45, 162, 187,  38
	.byte	 13, 228, 151, 221, 217,   4,  41, 179, 227,  79, 233, 201,  24, 173, 121, 225
	.byte	184, 202,  39,  65, 222, 177,  58, 220, 118,   7,   1,  70, 128,  30,  51,  65
	.byte	123, 187, 145, 108,  45, 112,  81, 238, 250,  22,  15, 190, 144, 145, 156,  17
	.byte	 48,  87,  59, 233,  11, 203, 196,  48, 164, 168, 181, 108,   6, 243, 176,  47
	.byte	 51,  95, 168,  92, 236, 153, 184,  61, 166,   1,  54, 234, 100, 204,  25,  13
	.byte	 80,  84, 138,  63,  65,  15, 204, 110, 161, 112,  96, 147,  66,  86, 178, 231
	.byte	  6, 229,  16,  97, 242, 219,  47, 141,  98,  52,  83, 147,  26, 213,  34,  27
	.byte	158, 161,  92,   7, 179,  94,  79, 234, 102, 192, 169,   8,  23, 242, 246,  11
	.byte	159, 160,  19,  95,  55, 163, 169, 124, 213,   4,  37, 207,  35,  68, 117,  37
	.byte	194, 122, 181, 144, 171,  32,  24,  55,  10,  93,   6, 145,  18, 230,  63,  63
	.byte	169,  85, 206, 148,   6,  67,  87, 173, 239,  56, 129,  29, 240,  80, 150,  22
	.byte	 92,   3, 194, 116,  35,  44, 129, 176,  92, 192, 100, 123, 141,  46, 242, 185
	.byte	 27, 128, 174, 234, 120, 236,  90, 151,  68, 232, 249,  57,  50,  17, 117,  18
	.byte	 74, 115, 211, 125, 160, 147, 127, 177,  28,  72, 150, 187, 214, 185,  33,  66
	.byte	159,  89, 227,   1, 106,  81, 103, 159,  45, 194, 176, 151,  64, 217, 225,  71
	.byte	248,  87, 112, 144,  15, 180,  46,  11,  28,  96, 227,  51,  75,   9, 210,  82
	.byte	  4, 241,  15, 226,  40,  61, 213, 118,  31,  31,  21, 244, 137,  30, 165,  90
	.byte	246,  54,  60, 173, 208,  68, 244,  25, 136, 140, 245, 168, 182, 224, 220, 249
	.byte	145,   0,  12, 233,   2, 107,  92, 238, 239,  55,  45, 159, 164,  52, 237,  85
	.byte	216,  37, 202, 199,   6, 196, 117, 237, 216,  57, 139, 113, 180, 103,   8, 178
	.byte	 26, 136,  66, 146,  90,  37, 101, 217,  25, 145, 245,   4, 229, 161, 130, 135
	.byte	 48, 194,  43, 218,  98, 238, 230, 149, 253,  25,  73,  89, 125, 139, 198, 253
	.byte	 25,  63,   9,  21,  91, 248,  46, 207, 133, 103, 120,  73, 151, 135,  71,  48
	.byte	142, 229, 101, 226,  72, 161,  96,  72,  63,  17,  48, 166, 133,  18, 171,  30
	.byte	211, 138,  87,  86,  76,  36, 250,  40,  73,  53,  52, 226, 110, 230,  33, 136
	.byte	196, 213, 106,  28, 121,  29, 122,   6, 221, 163,  89, 242, 198, 171,  41, 125
	.byte	 34, 106,  59,  99, 171, 254,  97, 183, 212, 157,  92,   4,  60, 223, 172, 237
	.byte	 70, 237, 126, 184,  22, 214, 110, 198,   2,  95, 124, 217, 113, 185, 101, 156
	.byte	224,  72,  40, 205,   7,  31,  44,  17,  39,  28, 167, 202,  45, 247, 253, 205
	.byte	112,  66, 108, 116,  73,  49,  82, 123, 195,  22,  91, 187, 103,  53,  44, 243
	.byte	 92,  73, 111, 231,  47,  79, 206, 209,  63, 160, 219,  46, 214,  82,  90, 236
	.byte	  0, 101, 153,   4, 146,  64,  15, 149, 103, 252,  23, 167, 167,  52, 192,  48
	.byte	150,  38, 196,   7,  50, 211, 104,  18, 139,  14,  47, 251, 218, 202, 145, 215
	.byte	 54, 218, 220, 251, 143, 220,   1, 212, 117, 231,   2, 125, 195, 122,   3, 119
	.byte	199,  97, 232, 181, 203, 124,  28, 237, 220,  79, 173, 137,   3, 223, 124, 186
	.byte	176,   2,  45,  17,  65, 172, 180, 111,  99, 199, 100, 117, 235,  36,  41, 228
	.byte	141, 254,  19, 189, 230, 239,  44,  46, 224, 105,  21, 234, 152,  14, 185,  82
	.byte	204,  82,  45,  88, 174, 197, 167,  77,  43,  23,  91,  87, 240, 138, 121,  84
	.byte	234, 154, 223, 128, 236, 177, 101,  92,  42, 226,  62, 238, 200,   0, 148, 164
	.byte	204, 184, 205, 247,  14, 145, 177, 116, 229, 113, 246, 242, 225, 243, 168,  83
	.byte	 85,  84, 126,  21,  48,  63, 198, 239, 236, 207, 121,  86,  63,  75,  41, 110
	.byte	 42, 178, 254,  61,  30, 206,  52, 167,  93, 118, 232,  12, 207, 217, 245,  56
	.byte	114,  46, 252, 200, 128,  70, 110,  61,  24,  58,  79,  59, 158, 147,  19, 211
	.byte	252,  61,  21, 173, 110,  45,  61, 180,  64, 198,  86, 154,  65, 252, 137,  35
	.byte	192, 107, 190, 218, 190, 128, 103, 137, 250,   3, 171, 211, 133, 222,  62, 119
	.byte	236,  35,  60, 115, 118, 103,  17,  76,  20,  58,  53, 252, 249,  22, 241, 153
	.byte	207, 196,  40, 162, 104, 126,  76,  19,  31,  78, 203,  87,  64, 175, 111, 125
	.byte	 96,  98,  82,  84,  36, 202,  75, 191, 111, 232,  98, 126,  71, 184,   7,  11
	.byte	 96,  59,  84, 170,  11, 236,  89, 140, 192,  80, 240, 105, 208, 108,  60,  24
	.byte	146,  37,  65,   5, 205,  30, 106, 236, 159, 226, 173,  91, 224, 174,  84, 232
	.byte	155,  38, 143,  89, 127,  70,  69, 221, 192, 242, 142,  88,  95, 143, 122, 224
	.byte	120,  37,  86, 231, 168, 157,  64,  38, 224, 225, 190,  36,  57, 161,  73, 136
	.byte	103,  19,  52, 135,   5,  74, 149, 163,  43, 216, 224,  66, 134, 112,  59,  31
	.byte	202,  66, 209, 134, 211, 185, 137, 254,  47, 227,   0,  75, 206, 146, 174,  14
	.byte	 62, 151, 192, 165, 165, 213,   4, 132, 193,  20, 194, 140,  31, 103, 177, 142
	.byte	120,  89,   4,  51, 110, 115, 159,  66,  96,  19,  21,  35, 181,  75, 202,  69
	.byte	124,  23,  16,  52,  53,  44, 222,   0, 196, 174, 177,  96,  98, 246,   8, 251
	.byte	 66,  30,  29,  43,  88,  20, 105,  24,  55,  59, 214,  10,  95,  17, 170, 184
	.byte	 96, 145, 222,  64, 128, 144, 218, 151, 178, 255, 247, 113,  71, 236, 140,  18
	.byte	 64, 156, 160, 169,  90, 229,  67,  64, 161, 142,  96,  18, 238, 216,  14,  62
	.byte	149,  85, 204,  51, 229,  44,   3, 197,  30, 172, 187, 161,  14, 203, 210,  69
	.byte	 24,  37, 109, 192, 240, 213, 126,  22, 206,  33,  15, 114, 108,   7,  89, 152
	.byte	242, 255, 201, 117, 120, 223, 250,  35, 151, 137,  42,   0,   5,  85, 107,  88
	.byte	226, 238,   4, 117,  38, 227, 156, 224, 226,  34, 195, 217, 148,  96, 196,  86
	.byte	 20,  94,  68, 248, 165,  79,  68, 144, 156, 199, 108, 174, 174,  33,  35, 190
	.byte	 66, 247,  59,  63, 138,  33, 206,  17,  44,  11, 205,  10,  42,  34,  97,  29
	.byte	254,  90, 107,  90, 154,  98, 130,  72,  49,  41,  30, 220, 102, 222,  53, 132
	.byte	 60, 102, 226,  84, 188, 249, 244, 158,  17,  74,  41, 232,  87,  87,  40,   1
	.byte	153,  73, 245, 247, 179, 165, 208, 209, 162,  64, 237,  47, 241, 122, 134, 160
	.byte	248,  96,  14, 246, 156,  53, 192, 150, 127, 179, 169,  39, 122,  29, 183, 187
	.byte	252, 138,  55,  98,  78,  87, 217, 232, 208, 243,   3,   7, 137, 242, 205,  34
	.byte	214,  67, 120, 233, 113, 186,  88, 159,  85,  63,  23, 226, 143, 125,  36, 111
	.byte	157,  30, 198, 109,  26,  50, 201, 194, 192, 244,  69, 189, 246,  55,  24, 175
	.byte	190, 206, 111, 107, 130,  51, 142,  70, 197, 222,  64,  28, 108,  53, 117, 213
	.byte	173, 200, 134,  36,  79, 228, 166,  70,   0, 245,  98,  27,  81,   1, 140,  46
	.byte	180, 239, 144, 158, 165,  53, 122, 241,  43, 107,  29, 189,  11, 211, 135, 248
	.byte	 78,  70, 206,  81, 134,  32,  26,  21, 116,  79, 100, 115,  34, 231,  42, 249
	.byte	188, 185, 165,   1, 162, 216, 209, 249, 242,   3, 120, 192,  84, 196, 138,  88
	.byte	 52,  35, 254, 231, 102,  24, 167,  88,  29, 205, 131,  63,  34,  17,  33,  57
	.byte	108, 177,   3, 204, 114,   0, 112, 230,  26, 219,  36,  93,  86, 204,  22, 176
	.byte	221, 155, 137, 227, 206, 203, 209,  48, 238,  64, 222, 252,  30,  79, 132, 108
	.byte	 34, 137, 209, 240,  77,   8, 169,  59,  16,   6,  83,  56,  86, 249,  97, 131
	.byte	244, 244,  41, 207, 180, 114,  11,  28,  47, 132, 220,  51,  41, 106,  93,  42
	.byte	 78, 182, 140, 179, 226,   7, 170,  90, 143, 211, 101, 238,  87, 103, 121, 154
	.byte	115, 101, 205, 238,  57, 126,  46, 226, 205, 246, 223, 151,  23,  13, 217, 221
	.byte	 96, 120, 150, 109,  52, 165, 163, 242, 209,   4,  49,  17, 155, 167, 252, 214
	.byte	 72, 126, 246,  84, 241, 209,  70,   8, 138, 190, 198,  69,  86, 193, 121, 212
	.byte	 22,  99,  49, 148,  27,   9, 174, 120,  70,  24, 183, 123, 222, 103, 218,  88
	.byte	 63, 187, 200,  28, 141,  22, 242, 253,  22,  79, 161, 232, 180,  35, 253, 126
	.byte	248,  83,  49,  43, 109,  42,  60, 211,  68, 168, 223, 236, 134, 132,  20,  33
	.byte	222, 128, 244,  14,  47,  85,  20,  47,  25, 177,  52, 159, 199,  23, 249, 208
	.byte	110, 114,  21, 116,  88,  72, 197, 175, 119, 118, 167, 239,  92,   0,  58, 148
	.byte	195,  39, 212, 198, 210, 192, 110, 168,  33, 139, 250, 218,   3, 239, 207, 141
	.byte	242,  34,  67, 198,  92, 108,  65, 138,  96,   6,  57,  90,  95, 142, 254,  77
	.byte	 73,  54,  62, 123, 239,  37,  16, 123, 217, 245,   6, 191, 100, 173, 239,  25
	.byte	110,  63, 215, 202, 158, 211, 211,  94, 119,  97, 248,  24, 169,  39, 216, 246
	.byte	126,  84, 135,  83, 236, 244, 186,  73,  42,  30, 218,  55, 203,  51,  51,  83
	.byte	116, 172, 173, 211,  84,  73, 141, 250, 190, 169, 109, 227,  11, 179, 118,  67
	.byte	 88, 243, 141, 202,  25, 246, 118,  74, 161, 176, 238, 149, 237, 254, 131, 228
	.byte	 86,  20,  89,  97, 126, 145, 114, 149,  72, 244, 184, 150, 156,  39,  37,  51
	.byte	 99, 130,  88, 199,  43,  24,  90, 233, 190,  47,  13,  47, 236,  43, 225,  93
	.byte	 70,  69, 166, 146,  97, 178, 243,   6, 124, 251,  61,  48, 107, 137, 181, 142
	.byte	197,  50,  93,  94,  18,  81,  90, 223, 254, 222, 114, 174, 176, 211,  87, 236
	.byte	188, 248, 169, 216, 157, 247, 158,  80, 213, 179, 168, 134, 231,  54, 144,  87
	.byte	 50, 247, 157, 182,  77, 170, 182, 184, 123,  50, 150,   7,  35, 132, 210, 118
	.byte	112, 118, 234, 195,  33,  75,  38, 227, 227, 186, 164,  11,  12,  92,  95, 119
	.byte	177,  19, 127, 143, 167, 136,  89, 174,  81, 249, 164,  27, 188, 167,  21,  24
	.byte	126,  86, 218, 169, 253,  46, 176,  59, 233,  96, 151, 255, 233, 138, 199, 119
	.byte	153, 236,  24, 102, 100,  33, 187, 114, 129,  96, 244, 126, 177, 135, 154, 229
	.byte	144, 234,  53, 191, 156, 243, 182, 207, 232,  75, 174, 211, 116, 152, 159, 118
	.byte	169, 165, 150, 155, 119, 109, 104, 192, 177,  53,   6, 200,  11, 149,   2,  69
	.byte	 96,   9, 131, 169, 107, 141, 118, 236, 249, 209,  10,  69, 255, 245, 238, 209
	.byte	104, 230,  33, 120,  43, 211, 217,  93,  97, 169, 212, 117,  26,   0,  48, 255
	.byte	 46,  56, 136,  99,  95,  39, 212,   2,  37,  85, 121, 248, 171, 104, 105, 231
	.byte	 28,  15,  71, 166, 106, 111, 169, 135, 215,  27, 188, 184,  81, 165,  35, 244
	.byte	116,  69, 177, 163, 243,   1,  23, 208,  84,  73, 139, 238, 212, 174,  46, 159
	.byte	 16, 226, 209, 129,  93, 142, 167,  19, 113, 147, 119, 145,  47, 173,  68,  75
	.byte	 40, 217, 211,  71, 186,  54,  83,  24, 136,  83, 107, 219,  91, 232, 239, 129
	.byte	249, 192, 136,  87, 110, 139, 174, 255, 194,  96, 134, 204,  51, 178, 216,  77
	.byte	 24,  75,  59,  63, 240, 191,  48, 251,  78,  40, 173, 255, 125,  67, 196, 204
	.byte	 97,  26,  64, 249,  34,  94,  12, 252, 195, 144, 206,  46, 139, 232, 109, 147
	.byte	120,  92, 254, 229,  65,  36,  86,  62, 199, 123, 139, 248, 226, 177,  93, 179
	.byte	 83,  45,  96, 182,  45, 149, 169,  53,  63,  24,  80,  32,  94, 150, 206, 252
	.byte	216,  68,  89,  66,  56, 139,  37,  58,  58, 168,  65, 141, 209, 214,  81,  40
	.byte	 29, 163, 200, 139, 219, 241,  87, 224, 127, 152, 145, 130,  48,  70,  68, 221
	.byte	110,  60,   2,  90, 241, 184, 170,   6, 213, 154,  48, 250,  72, 192,  37, 205
	.byte	 47,  49, 100, 113, 251, 214,  71,   6, 152, 101, 200,  37, 203, 182, 231, 229
	.byte	204,  39,  72,  36, 155, 164, 177, 118, 242,   2,  57,  37, 129,  61,   9,  41
	.byte	114, 123,  32,  23, 143,  32, 188,  85, 137, 212,   8,  54, 116, 137, 178,  54
	.byte	 14, 162, 181, 192, 126, 228,  35, 247, 127, 168, 116, 152, 143,  88, 198, 212
	.byte	231, 195, 100,  83,  60,  27, 195,  42, 209, 195, 104,  32, 216, 117, 134, 110
	.byte	178, 215,   1,  25, 197, 251, 206, 113, 237,  39,  29, 164, 228, 179, 140,  48
	.byte	198, 236, 192, 143, 215, 127, 224, 110, 143, 233,  20, 236, 233, 115, 125,  64
	.byte	136, 194, 205, 236, 125, 109,  37, 126, 198,  73,  23, 154, 101, 174,  13, 177
	.byte	 89,  34, 228, 131,  38,  97,  40, 128,  61, 224,  74, 218,   1, 246, 138,  84
	.byte	106,  64,  86,  30, 130,  54,  20, 125,  98, 109, 164,  42, 209, 207, 189, 178
	.byte	 61,   9, 236,   6,  59, 175,  56,  57, 130, 104,  88, 177,  44, 128, 113, 135
	.byte	132,  26, 118, 146,  50, 140, 120, 167,  69,  55, 135, 152, 142,  41, 149, 144
	.byte	 49, 216, 203, 218,  84, 187, 219, 140,  40,  41,  85, 173,  29,  69, 182, 175
	.byte	204, 229, 187,  59,  46, 223, 156,  59,  57, 158, 157, 157, 134, 179, 115, 158
	.byte	  9,  18,  43,  93,  92, 188, 226, 226, 255, 167, 110, 170, 130, 143, 252,  15
	.byte	164, 158,  79,  64, 151, 129,  61,  17, 142,  52, 170, 208, 151, 244,  19, 104
	.byte	247, 183, 192, 179, 118,  30,  32,  77,  43, 174,  48, 112, 147,  17,  90,   1
	.byte	 20, 213,  71, 115, 232,  10,  91,  58, 209, 135, 161, 236, 222,  62, 231, 151
	.byte	 82, 224, 136,  86, 159, 190,  78,   0,  90, 115,  13, 127,  88, 217, 217, 134
	.byte	132, 253, 191, 122, 136,  13,  74, 131,  30, 203, 135, 207, 142,  26, 217, 175
	.byte	148,  55, 203,  91, 187,  75, 156, 174, 253, 218, 178, 135, 169, 141,  85,  81
	.byte	 48,  18, 123, 210, 197, 246, 232, 233, 167,  19, 229, 153,  97, 229,  23, 144
	.byte	217, 248, 177, 239, 219, 111, 255, 145, 234,  57, 173,  12,  24, 222, 116, 110
	.byte	138,  66, 160,  45,   7, 196,   8, 236,  18, 121,  88, 117,  23, 134,   5,  42
	.byte	162,  79, 206,  99, 200, 227, 238, 145, 143, 191, 229, 139, 131, 125, 203,  68
	.byte	140,  81, 189, 222,  48,  21, 246, 120, 114,  72,  14, 130,  68, 184, 181, 130
	.byte	128, 204,  52, 207,  31,  89,  44, 137, 111, 172,  96,  36, 100,  82, 189, 212
	.byte	142, 181, 100, 134,  10, 138, 198, 254,  33, 178,  48,  82,  83,  71,  37, 106
	.byte	 96, 245, 150,  90, 249,   5, 209,  82, 101, 145,  87, 243,  66,  92, 127,  60
	.byte	 20, 215, 247, 199,  74, 104,  46,  57, 108, 194, 166,  38,  27,  76, 221, 178
	.byte	 54, 178, 205, 106, 172,  99, 138,  42,  93,  93, 214,  63, 114, 202,  38, 124
	.byte	228, 238,  96, 205, 184, 120, 140,  30, 235, 213, 163,  64,  55,  19, 163, 225
	.byte	 72, 131, 151,  44,  25,  40,  45,  60, 142,  60, 107, 169,  11, 224, 236,  51
	.byte	 24,   8, 131, 235,  93, 178, 207, 234,  13,  88, 144,  23, 147, 126, 233, 173
	.byte	202,  48, 195,   2, 235, 122,  63, 180,  36, 198,  80, 252, 150, 162,  92,  36
	.byte	 92, 167, 221, 145,   1,  17,  62, 134, 131, 243, 225,  29,  35,  69, 166, 144
	.byte	 57,  69, 158, 131,  35,  52, 249, 221,  75, 234, 254,  87, 194, 115,  16, 146
	.byte	166, 121, 117, 140, 112, 215, 220, 177, 125,  26,  11,  67, 110, 184,  61, 181
	.byte	 26,  80,   1, 217, 187, 225, 152, 148, 197,  27, 126, 131,  41, 173,  39, 129
	.byte	 36, 106,  46, 111, 113, 143, 226, 229,  80, 134, 119,  76,   4,   0, 146, 158
	.byte	 24, 142, 200, 176, 222, 139,  75, 243, 159,  65,  16, 101, 236, 255, 103, 182
	.byte	 52, 243, 252, 110,  64, 164, 221, 114, 216, 213, 236, 120, 172, 126, 149, 203
	.byte	137, 240,  40, 181,  91,  29, 152, 211, 236,  68, 157, 146, 138, 131, 195,  55
	.byte	210,  50, 233,  85, 230,  58, 221, 147,  30,  84, 175,  68, 126, 125, 226,  84
	.byte	248, 194,  42, 166,  97, 228, 255, 132,  35, 102, 227, 154,  60, 227, 225, 245
	.byte	 24,  73,  94,  55, 248,  53, 116,  28, 169,  31, 232, 167,  81, 235,  16, 225
	.byte	151,  28,  86, 120,  25,   8,   1, 197, 241, 199,  18, 230, 173, 225,  45, 140
	.byte	 56,  80, 161, 230,   8, 223, 115,  43,  84,  60, 141, 226, 194, 194, 212, 221
	.byte	 53, 195, 224,   5, 141, 218,  89, 196, 202,  27,  20, 248, 161,  41,  89,  31
	.byte	 44,  81, 150, 146,  97, 240, 154,   4, 103, 165,  25, 130, 146,  18,  71, 150
	.byte	 95,  84, 105,  14,  83, 167, 106, 243, 162, 139, 135,  34, 237,   0,  15,  28
	.byte	118, 255, 251,  46,  63, 219, 183,  65, 173, 159,   9, 126,   8,  58,  23,  63
	.byte	 55, 252,  92, 189, 180,  98, 130,  70, 249,  73, 250, 136, 201, 218, 172, 160
	.byte	 68, 172, 217, 183, 201,  61, 210, 218,  39, 127, 150, 126, 247,  27,  54, 118
	.byte	232, 152, 117,  18,  59, 114,  66, 252, 144, 147, 237, 226, 204,  63, 207,  47
	.byte	178,  69,  83, 148, 100, 201, 255, 139, 108,  16, 161,   9,  36, 148, 109, 128
	.byte	237, 179, 214, 243,  35, 116,  74,  64, 210,  28,  21, 180, 171, 235, 197,  33
	.byte	 98,  13,  57, 156, 167, 216,  26,  27,  24,  58, 171, 115,  41, 114, 219, 253
	.byte	212, 125, 106, 148, 201,  51, 120, 192, 216,  47,  72, 219, 187, 103,  51,  65
	.byte	 14,  88,  38, 251, 161,  43,  28, 119,  39, 215, 234,  81, 176, 186, 150, 201
	.byte	130, 198, 121, 230, 164, 197, 108,  87, 117, 224,  31, 248, 169, 172,  38, 199
	.byte	 78, 103, 228,  60, 243, 183, 101,  98,   3, 149,  65,   1,  79, 165, 185,  50
	.byte	139, 182,  51, 177, 253,  54, 102, 168,  24,  59, 180,  30,   6, 248, 187,  63
	.byte	130, 250,  68, 230, 163,  37,  96,  41, 254,   8, 115,  93,  19, 101, 187,  52
	.byte	240, 104, 225, 206, 165, 166, 180, 175, 242,   6,  31, 144, 246,  91,  62,  81
	.byte	146, 217,  80, 233,  46, 196, 148, 150, 161, 114,  89,  76, 143,  50, 107,  83
	.byte	154, 115,  55,  20, 201, 224,  23,  65, 238, 164,  93,  85, 137, 255, 192, 202
	.byte	252, 150, 227, 222,   0,  11,  72, 217,  34, 113, 102, 235,  48, 215, 180, 139
	.byte	170, 218, 207,  23, 210, 131,  49,  26, 177, 229, 204, 118, 179, 136, 170,  97
	.byte	118,  86, 224,  99, 206,  11,  35,  56, 124, 232,  18,  55,  19,  95,  39,  55
	.byte	245, 123, 188,  13,  54,  11, 161,  34, 121, 216, 247,  96, 212, 130, 157,   7
	.byte	 64, 114, 209, 227, 127,  86,  98,  65, 149, 145, 197, 133,  49, 220, 200, 233
	.byte	236, 172, 146,  23, 159, 240, 214,  32,  65,  80, 113, 130, 139, 173, 100,  23
	.byte	 82,  83, 167,  20, 108, 228,  84, 126,  98, 110, 122, 212,  70, 177,  81,   2
	.byte	233, 100, 233, 205,  59,  44, 143,  80,  42,  77, 187, 120,  91,  45, 219, 154
	.byte	174, 234,  61,  61,  96,  17, 115, 106, 201,  39, 230,  58, 236,  58,   5, 154
	.byte	 19, 186, 127, 165, 184,  80, 132, 174, 164, 119, 126, 164,  88, 189, 230, 235
	.byte	176, 172, 209, 183, 171, 238,  17,  16, 191, 244, 125, 107, 104,   4, 246, 168
	.byte	228, 120,  76, 250, 105,  17, 144, 168, 208, 199, 231, 160, 245,  76, 231, 230
	.byte	 54,  71, 141, 121,  47, 181, 107, 108, 141,  58, 201,  84, 181,  45, 100, 205
	.byte	238, 225,  31,   3, 234, 115,  27,  42, 127, 192, 169,  82, 152,  64,  47,  70
	.byte	  8, 223,  11, 125,  92,  28, 204,  63, 181, 133, 163,  35, 167, 128,  19, 189
	.byte	104, 181, 163, 111, 139, 128,   1,   8,  76,  43, 241,  35, 206,  53, 176,  13
	.byte	254, 217, 241,  91, 255, 123,  37, 179, 196, 180, 247, 116, 184, 133, 225, 115
	.byte	158,  90, 136,  69, 141, 176,  27, 239, 172,  70, 235, 123,  18,  17, 163,  38
	.byte	 88, 228,  88, 184, 250,  72,  20, 151,  90,  56,  52, 107,  84,  65, 135, 160
	.byte	153, 202, 154, 209,  37,  90, 242, 205,  90,  53,  17, 249,  33, 174, 174,  36
	.byte	142, 192, 116,  36,  81, 179, 155, 130,  73, 125, 231, 237, 231, 149,   2, 234
	.byte	117, 193, 149,  27, 147,  81, 175, 140,  92, 123, 124, 187, 110, 227, 134, 147
	.byte	 50, 182,  96,  74, 119, 162,  32,  97, 196,  24,  25, 188, 156,  55, 235,  24
	.byte	126,  58, 229,  37, 194,  41, 243,  40, 225,  76, 115,  49, 214, 135, 241, 100
	.byte	 12,  30, 210,  53,   0, 112, 220,  64, 153, 209, 239, 175,  18, 191, 134,  38
	.byte	 24,  42, 205,  59, 230,  20,  65, 173, 190, 151, 170, 214,  77, 169,  17, 126
	.byte	 50, 212, 194, 119,  91, 117,  94, 245,   5,  44,  39, 197, 214,  34, 189, 200
	.byte	 69,  42,  65, 189, 132, 121,  44, 118, 200,  74, 197, 175,  62, 246, 140, 192
	.byte	252, 169, 116,  70, 200,  67,  80, 211, 251,  15, 196, 242,  48, 232,  91,  38
	.byte	174,   1, 191, 162, 171, 174, 189, 144, 128,  40, 111, 214, 144,  96, 147, 202
	.byte	146, 172, 133,  84,  66, 209, 164,  68,  27,  52, 144, 178, 226, 203,  77,   3
	.byte	183, 108, 239, 206, 144,  82, 233, 159, 218,  57, 152,  46,  32, 158, 206, 237
	.byte	152,  92,  85,   8,  47,   0, 240, 112,  61,  63, 147, 240, 232, 207, 165, 105
	.byte	 49, 241,  33, 124,  24,  26, 237,  37,  24,  10, 236, 162,  94, 179, 209,  94
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	198, 119,  59,  42, 125, 176, 118,  71, 164,  30, 104, 205, 204, 224,  37,  38
	.byte	170,  29, 127, 137, 131, 177, 152,   4,  17, 191, 213, 231,  29,  45, 108, 105
	.byte	108, 182, 201,  74,  75, 221, 161, 160, 206,  42, 170, 250, 109, 241,  72, 136
	.byte	151, 191, 171,  63,  24, 171, 154,  29, 189,  82, 225,  46, 198, 168, 233,  53
	.byte	162,  60,  67, 211, 113,  78, 219, 232,  61, 219, 192,  89, 186,  57, 248, 102
	.byte	117, 213, 113, 212, 163,  56,  62, 174, 218, 208, 115, 115, 146, 113,  45, 185
	.byte	 66,  80,  82, 240, 104, 105,  68,  80, 242, 192, 220, 195,  44,  71, 174, 184
	.byte	 21, 123, 242, 141, 221,  36,  39, 179, 221, 110, 233,  39, 170, 112, 194, 146
	.byte	164,  24,  24, 115,  35, 100,   5, 103, 223,  62, 172,  34, 169, 119, 113,  22
	.byte	 90,  46, 182, 148, 109, 162, 144,  61,  83, 176,  50, 200,  82, 243, 248, 246
	.byte	156,  61,  84,  46,  50,   3,  71,   8, 136,  55,  92, 166,  67, 224, 198, 216
	.byte	232, 123,  35, 239,  77,  79, 176,  96, 247, 233, 173, 126,  41, 171, 148,  64
	.byte	108,  37, 246, 223, 166, 247, 196, 144,  79, 247,  39,  15,  19,  11, 178, 143
	.byte	 44, 103, 203, 237, 211, 165, 161,  17,  68, 212,  47,  13, 125, 242,  76, 224
	.byte	208, 229, 207, 173, 242,  30, 136,  19, 114,  71, 211,  56, 198,  87, 133,  22
	.byte	 68, 211, 124, 239,  99, 214,  55,  91,   6,  91, 178, 102, 206,  29, 142, 255
	.byte	 58, 159,  89,   9, 223,  67, 144, 171,  29, 153, 224, 168, 100,  86, 237, 168
	.byte	112,  86,  44, 158,  18, 248,  16, 248, 198, 205, 245,  13, 128, 228, 131, 251
	.byte	 42, 241, 125,  75,  67, 208,  70,  31,  29,  68, 207,  48, 137,  75, 130, 126
	.byte	222,  44,  20,  37, 142, 165,  75, 113, 139, 194,  65, 227, 221, 177, 114, 152
	.byte	206,  63,  41, 176, 183,  83, 130, 105,   9, 224,  69,  51, 249, 239, 213,  22
	.byte	168, 241, 176, 163, 164, 168, 148, 229, 189, 119, 255, 125, 250,  73, 143, 168
	.byte	250,  56,  88, 246, 210,  59, 105, 204, 113,  83, 147, 237, 211, 203, 235, 235
	.byte	135,  71, 225,  65, 108, 105, 215, 200,  46,  43,  72,  69,  32, 179, 201, 228
	.byte	112,  66, 104, 213,   9,  78, 127, 205, 210, 182,   0,  94, 210,  33,   3, 246
	.byte	149,  92, 215, 177,  93,  19, 212,  19, 117, 143, 152, 237,  28,  51,  11,  45
	.byte	240,  81,  23, 128,  44,  87, 133, 164,  99, 172, 173,  58,  42,  23, 100,  84
	.byte	174, 221, 181,  21, 219, 110,  21,  27,  21, 244,  46,  61,  58,  74, 120, 214
	.byte	154,  55, 219, 198,  45, 106, 158,  42, 223,  76, 127, 237, 253, 144, 214, 246
	.byte	 63,  15,  32,  56,  37, 131, 159,  54,  21, 126, 254, 132, 140, 143,  81,  51
	.byte	184, 128, 234, 171, 132,  92,  69,  69,  75, 130, 197, 149,  96, 156,  93, 138
	.byte	185,  31,  53, 104, 155, 160,  83, 145,  35, 154, 225,  63, 241,   6, 207, 108
	.byte	  6, 218, 182, 112, 177,  40, 236,  55,  66,  17, 233, 198, 199, 219, 121, 153
	.byte	 95, 241, 184, 142, 131, 138,  32, 116, 220,  76,  19, 108, 175,  81, 196, 150
	.byte	244, 162,  36, 167, 232, 100,  88,  91,  91, 156, 213,  85, 122,  83, 201,  58
	.byte	 43,  48,  76, 133, 245, 115, 198, 109,  18, 141, 144, 198, 232,  78,  46,  92
	.byte	 52,  34, 149,   1,  83,   0,  86,  35, 124, 211, 212, 111,  37,  52, 145, 113
	.byte	 63, 176,  27,  51, 130,  82,   9, 173,   9, 186, 183, 135, 134, 160, 141,  47
	.byte	 76, 119,  62, 185, 254, 221, 153, 246, 114, 155, 158,  17,  30,  57,  80, 230
	.byte	146, 209,  51,  29, 156, 110, 236, 137,  51,  78, 183, 200,  15,   6, 190, 209
	.byte	250, 237, 234, 104,  99, 210,  10, 194, 217, 240, 229, 222, 231,  43, 228,  41
	.byte	189,  86, 169, 236,  93, 239,   7, 188, 215, 214,  51, 209,  50,  30,  46,  27
	.byte	 70, 217,  72, 177, 253, 141, 254, 195, 217, 172, 111,   4,  70, 160, 148, 202
	.byte	  6, 142,  64, 166, 177, 103,  28, 186,  95, 125,  79, 135, 100,  23,  24, 135
	.byte	 14,  75, 252,  69, 106,  39,  30, 112, 125,  67, 246,  29,  23, 148,  35,  44
	.byte	208, 219,  42,  91, 255,  55, 243,  93, 242,   5,  68,  18,  55,   3,  20, 182
	.byte	242,  65,  70, 246, 184, 196,  16, 199, 191, 190,  67,  27,   4, 217, 241,  78
	.byte	175, 170, 166,  93, 218, 213,  78, 156,   4,  82, 159, 225,  43, 177, 100,  46
	.byte	234,  32,  75, 109, 157, 247,  77, 106, 112, 233,  15,  77,  23, 121,  62,  76
	.byte	 30, 133, 124, 164,   9, 177,  35, 156,  41, 198, 243,   2, 137,  83, 243, 245
	.byte	 66, 200,   7, 215, 251, 181, 151,  33,  90,   5, 128,  33,  60, 194,  50, 103
	.byte	 85, 123, 249, 233,  27,  78, 187, 237,   5, 146,  43, 141,  48, 194, 189,  42
	.byte	108, 254, 182,  96, 179, 249, 198, 124, 179, 117,  85, 136, 148,  68, 198,  96
	.byte	 71,  13, 191, 222, 239,  52, 155, 179, 217, 192, 101, 148,  10,  17,  72, 117
	.byte	110,  22, 136,  46, 189,  45, 235, 220, 108, 100,  45, 166,  68,   6, 119, 127
	.byte	 95,  30, 197,  59,  77,   7, 180, 125, 223,  93, 130,  78,  59, 199, 109, 197
	.byte	100, 218,  14, 197, 216, 131,  53,  66, 241,  25, 137,  82, 151, 187,  86,  32
	.byte	214,  76, 190,  90,  98,  90, 198, 190, 170, 195,  81,  67, 161, 182, 202, 106
	.byte	236,  43, 128, 213,  65, 194,  15, 226,   5,  72, 135, 156,  38,  12, 129, 126
	.byte	140, 175,  45, 104, 117, 224, 153, 112, 134,  90, 202,  86,  24, 122,  20, 163
	.byte	136,  92, 190, 226, 166, 106, 239,   9,   5, 121, 103, 137, 202, 173,  62, 141
	.byte	 12,  21, 203, 183, 165, 208, 183, 128,  42,  91,  72,  35, 193, 203,  94, 214
	.byte	 18,  99, 185,  34, 134, 132,   3,  90, 202,  21, 196, 103, 194, 206, 207,  26
	.byte	200, 117, 231, 165, 127,   5,  10,  61, 233,  21,  78, 159,  49, 223, 170, 102
	.byte	 80,   8,  93, 143, 163, 156, 165, 162, 121,  95,  36,  48,  38, 121,  95,  70
	.byte	 85,  46, 138, 153, 114, 200, 241, 113,  70, 184, 138,  74,  33, 132, 242,  13
	.byte	106, 185, 174,  92,  84, 212,   3, 100, 248,  13, 185,  37,  49, 163,  76, 224
	.byte	  8, 176,   6,  93,  53, 217, 128,   9,  23, 178,  25, 137, 132, 203, 230, 131
	.byte	148, 242,  50, 243, 142, 105, 148, 190, 227, 128,  46, 148, 114,  29, 113,  98
	.byte	 87,  76, 108, 253, 139, 158, 217,   6, 255, 214,  99, 112, 194, 143, 216, 111
	.byte	120,  83, 122,   5,  28, 110, 140,  23, 171, 233, 211, 238, 206,  36, 111,  10
	.byte	 28, 129, 185, 153, 197, 172, 231, 252, 202, 115, 120,  49, 147, 188, 250,  68
	.byte	 96, 157,  23, 195, 252, 144, 172,  43,  26, 129,   3,  30, 148,  61,  69, 147
	.byte	 70, 143, 161, 156,  19, 183,  34, 183,  63, 153,  74, 184, 164,  19,  10,  22
	.byte	 92,  83, 117,  73,  68, 131, 108,  26,  68,  90, 242, 103, 194, 201, 146,  28
	.byte	124,  23, 183, 209, 243, 157,  49, 189, 150, 229, 112,  12, 138, 155, 149,  16
	.byte	116, 195, 244, 180, 120, 169,  75,  99, 109,  44,  22, 203, 218, 121, 116, 194
	.byte	120, 138, 236, 175, 184, 238,  10, 173,  31,  62,  34,  31,  80,  89, 131, 173
	.byte	142,  18, 163,  83, 205, 201, 174,  57, 138,  60,  57, 127,  38, 193, 252,  10
	.byte	210,  99,  74, 199, 184, 126, 159,  14, 179,  56, 241, 140,  95,  64, 145, 237
	.byte	 96, 142,  39,  94,  91,  84, 216,  78, 142,  15, 223,   4, 168,   2, 155,  48
	.byte	 43, 153,  91,  83, 254,  97, 125, 159,  72, 174,  49,   0,  88, 247, 136,  80
	.byte	234,  36, 165, 176, 169,  88, 228,  43, 135, 129,  28, 153,  14, 245,   0, 179
	.byte	 68,  39, 149, 212, 142,  26,  49, 228, 223, 252, 183, 145, 184, 234,  27, 124
	.byte	252, 210,  55, 200, 193, 186, 163, 243, 255,  68,  24, 126, 207, 175,  18,  77
	.byte	123,  96, 204,  82,  81, 190, 154, 235, 117, 158, 206, 210, 198, 175, 150,  36
	.byte	 16,  26, 130,  71, 240, 177, 148, 229, 210, 140,  50, 227, 142, 134, 130,  31
	.byte	235,  58, 220,  34,  87, 116, 237,  41,  47, 159,  51, 141,  67, 191, 202, 115
	.byte	 68, 142, 120,   0, 228, 123,  69, 198,  98,  86, 154,  18, 184, 185, 175,  57
	.byte	243, 180, 252, 100, 252, 199,   4, 244, 227, 128,  38, 244, 101, 145, 144,   4
	.byte	220, 228,  21, 254,  50, 232, 162, 106,  50,  78, 118,  94, 120, 197, 222,   6
	.byte	244, 252, 164,  59, 163, 168, 106, 254, 109, 206, 185, 162, 106, 116,  52, 215
	.byte	 30, 116,  55,   4, 195,  41, 170, 170,  15, 133, 221, 160,  34, 204, 206,   6
	.byte	 48, 244,  43, 203, 116,  85, 180, 117, 240, 180,  20, 219,  40,  33, 108, 114
	.byte	 50,  68, 114,  78, 152,  36,  11,  12, 129,  88, 191, 111, 209,  46, 177, 120
	.byte	 43, 152, 218, 236, 155, 190, 181, 246, 238, 125,  20,  24,  80,  42, 115,  99
	.byte	154,  81,  65,  39,  19,  61,  51, 134, 108, 234,  48, 195,  20, 196, 226,   8
	.byte	238, 250,  41,   4,  57, 207,  59,  21, 212,  94, 123,  55,  33, 234, 204,  13
	.byte	226, 224, 151,  51,  89, 131,  83, 234, 136, 115,  15, 206,  63,  86, 131,  46
	.byte	184, 164, 118,  46, 176,  38, 118,  64,  87,  78,  90, 150,  98,  51, 220, 189
	.byte	 10, 245, 160,  90,  22,  78, 216,  60, 200, 124, 173,  14,  70, 212, 168, 159
	.byte	190,  22,   2, 195, 143, 206, 106, 155,   6,  60, 178,  74,  15,  71, 246, 171
	.byte	214, 112, 247,  55, 242, 247,  74,  80, 195, 125,  72, 147, 212, 220,  14,  44
	.byte	 72,  28,  66, 248, 198, 231,  56,  34,  96, 225, 100,  89,  60, 121, 123,  95
	.byte	 90, 189,   1,  85, 177, 111,  15,  11,   6, 195, 123, 242,  39, 137, 143,  52
	.byte	 82, 147, 154,  72, 220, 246, 225,  65,  88, 191, 154,  65, 245, 208, 134, 229
	.byte	  8, 236,   6, 159,  27, 173, 170, 131,  71, 139, 202,  50,  44, 166, 116, 226
	.byte	222,  82, 156,  86,  83, 141,  69, 189, 163, 139, 147, 251, 128, 146, 202,  49
	.byte	102,  22, 173,  88, 147, 252,  99,  78,  40, 112, 139,  11, 251, 236,  21,  20
	.byte	 82,  24, 212,  84, 135, 228, 202,  84, 157, 149, 253, 173, 232, 231, 158, 175
	.byte	128, 202, 131, 172, 187, 254,  91, 173,  63, 250, 198,  90, 172, 113,  74, 218
	.byte	210,  33,  50, 244, 168,  91, 241, 198, 254, 124,  50, 254, 233,  11,   6, 203
	.byte	 52, 183, 242, 249,  64, 223,  62, 106, 147,  25,  91, 243,  11, 183,  19,  58
	.byte	108,  42, 217,  98, 191,  47, 177,  27,  90,   0, 188, 133,  10, 254, 164, 140
	.byte	 76, 126, 192, 132, 177,  81,  25,   0,   2, 254, 111, 140, 114,  66, 235,   9
	.byte	  3, 194, 120, 149,  52, 198,  46,  74,  95,   5,  97, 144, 242, 126, 100, 220
	.byte	106, 164,  45,   9,   1, 137,  58, 158, 190, 223, 105, 125,  36,  95,  50,  44
	.byte	107, 112,  44,   2, 194,  39,  61, 116, 204,  66, 169, 188, 156, 213, 126,  38
	.byte	 26,  95,  16,  49, 107, 150, 219,   1,  82, 130, 153, 234,  22, 208, 141, 250
	.byte	184, 164,  82, 123, 153,  72,  58, 119, 246,  14, 191,  60,  75,  57, 229, 150
	.byte	228, 243,  20,  99,  79,  15, 104, 204, 137,  19, 195, 221, 195, 166, 162, 115
	.byte	151, 211,  69,  18,  32, 174,  19,  81, 127, 111,  93, 177, 204,  53,  86,  11
	.byte	222,  26, 149, 199,  49,  74, 202, 235, 145, 132,  87, 104,  42,  91, 209, 255
	.byte	184, 159, 232,  32,  51, 194, 119,  68, 232,   5,  69, 185, 107,  21, 215, 187
	.byte	206, 130, 227,  16,  71, 127, 199, 159, 192,  46, 202, 155,  58, 111,  76,  70
	.byte	101, 225, 147, 252, 155, 165,  47, 156, 195, 131, 134,  88,  23,  67,  10, 167
	.byte	174, 181,  78, 236,  96, 240, 249,  92,  13, 141,  11,  55, 201, 227,  12, 170
	.byte	175,  45, 190,  58, 205, 141,  92,  56, 200, 145,  65,   6, 171, 106, 217, 184
	.byte	164, 214, 138,   5,  61,  11, 222,  44, 128, 223, 168,  20, 192, 205, 102,  37
	.byte	  9, 120,  70, 210,  30,  77, 186,  53,  29,  26,  84, 117, 107,  61,  45,  91
	.byte	124, 211,  64,  94,  57,   4, 107, 230, 103, 223,  83,  46, 158,  83, 154,  42
	.byte	 85,  54,  83,  54,  80,  53, 234, 159, 236,  98, 172, 117, 219, 103, 235, 140
	.byte	 88, 218,  70, 248,  47, 203, 220,  58,   6, 193,  65,  82, 162,  30,  78, 111
	.byte	 34,  68,  51, 196,  47, 160, 246,  29,  46, 143, 158, 131, 247,  32, 231, 106
	.byte	 24, 148, 104, 103, 155,  89, 221,  49, 224,  25,  96,  83,   6, 164, 162,  86
	.byte	 99, 101,  58,  83, 169,  36, 152,  14,  82, 230,  47, 233, 198, 102, 227, 111
	.byte	242, 240,  83, 129,  83,  36, 167, 145,  92, 173,  78, 230, 206,   3,  21,  68
	.byte	192, 156,  70, 117, 226, 126, 255, 197, 245, 187,  71,  97, 176,   5, 106, 140
	.byte	 46, 175, 129,  65, 199,  77,  96, 132,  52,  16,  65, 157, 247,  24, 209, 197
	.byte	239, 214,  13,  44, 193, 233, 186,  42,  21,  72,  48, 230,  51, 140,  83, 130
	.byte	210,  71,  20, 209, 244, 140,  13, 145,  28,  29, 250,  51, 170,  97,  49, 193
	.byte	 40, 220, 249,  38,  38,  27, 131, 165, 175,  19, 168,  98, 207, 210,  62, 219
	.byte	 98,  94, 104, 191, 151,  13, 131, 137, 189, 167, 176,  87,  40,   7, 110, 158
	.byte	 56,  69,  14, 150, 230,  83, 249, 162, 227,  33, 249, 235, 116,  61, 122, 225
	.byte	150, 192,   4, 255,   2, 121,  96,  50,  58, 210, 247, 125, 252, 128, 141,   7
	.byte	198,  97, 106, 173, 253, 138,  48,  19,  80,  32, 125, 102, 214,  40,  70,  40
	.byte	142,  46, 195, 192, 219, 159, 152, 109, 230,  56,  29,  20, 208,  68, 149, 192
	.byte	101,  41,  26,  58, 232, 188,   1,  43, 148,  31, 180,  98, 199,   8,  13, 207
	.byte	222,   8, 100, 151, 232, 155, 136, 215, 110, 185,  44,  24, 215, 232, 191, 136
	.byte	249, 218, 209,  89, 211, 234, 240, 199, 132,  70, 111, 133, 214, 131, 141,  75
	.byte	246, 120,  21, 205, 160, 200, 169,  97, 241, 197,  91,  23, 237, 219,  19, 202
	.byte	242,  31,  50,  59,  70, 178,  65, 153,  32,  52, 152, 175, 207, 120, 147, 190
	.byte	 32, 223, 159,  75,  20, 164,  14,  54, 114, 148, 184, 174, 182, 250,  16,  26
	.byte	 55,  86, 231, 122,  44, 153,  84, 102, 222, 134,   4, 218, 170, 217,  71, 113
	.byte	112, 229,  50,  28, 179, 227, 209,  39, 255, 143, 153, 192, 181, 121, 164, 168
	.byte	165, 106, 193, 195, 185,  27, 252, 122, 105,  75,  22,   7, 128, 139,  26, 145
	.byte	 78,  67, 208,  53,   8, 237, 246, 159,  86,  21, 190, 149, 190,  32, 130,  65
	.byte	 67,  95, 143,   5, 124,  16,  37,  63, 162,  64, 254, 187, 145,  81, 128, 162
	.byte	 62, 143, 230, 241,  99,  21,   5, 115, 222,   4, 210,  73, 146,  55, 104, 137
	.byte	195, 190,  84, 119,  47, 103, 171,  63, 115,  84,  29, 176, 103, 215,  70, 176
	.byte	254, 229, 175, 238, 168,  83,  83,  92, 171, 188, 156,  98, 223, 141, 177, 144
	.byte	116, 165,  57, 106,  67,  30, 129, 159,  26,  21, 255, 196, 193, 212, 154, 109
	.byte	 82, 152, 179,  13, 128, 170, 222,  78,  10, 184, 122,   8,  88, 141, 163, 175
	.byte	  1,  11, 155,  44,  43,  11, 236, 163,  72,   0, 188,  90, 137, 230,  72,  42
	.byte	  2, 122, 108,  25, 211,  36,  70,  59,  72, 145, 166, 185, 219, 161, 185,  26
	.byte	  4, 250, 104,  89, 169, 123,  17,  37,  84,  89, 136,  33, 153, 107, 224, 228
	.byte	198, 226, 216,  19,  31, 229,  21,  16,  86,  83,  84,   1, 181, 188,  35,  47
	.byte	142,  30,  69, 109, 251, 222, 151, 240,  45, 157, 139, 254,   6, 250,  99, 181
	.byte	100,   4,   9, 156, 142,  25, 134,  91, 127,  46,  96,  17, 110, 250, 120, 150
	.byte	240,  35, 110, 214,  94,  90, 121, 177, 179, 146, 100,  11,  77,  11, 195, 202
	.byte	 68, 108, 225,  64,  25, 226, 136, 179,  67, 110, 176, 221, 253, 214, 172, 165
	.byte	121, 129, 163, 182,  26, 210, 192, 235, 205, 150,  83,  32, 163, 176, 148, 254
	.byte	178, 145, 247,  98, 228, 216,  43, 240, 241, 146,  42, 205, 117, 185, 156, 136
	.byte	250,  13,  14, 134, 184, 245,  86, 173, 144, 149, 165, 171, 153,  84,   4, 227
	.byte	  4,  27, 149,  78,  37, 175, 154,  55, 116, 246, 142, 222,  58,  79, 108, 198
	.byte	  8, 188,  21, 123, 127, 214, 203, 157, 111, 161,   7,  50, 182,   4,   1, 162
	.byte	224, 123, 212, 222,  14, 166, 161, 103,  97, 253,  69,  62, 175,  83,  96, 244
	.byte	241, 161,  62, 138, 113, 108, 135, 246, 145, 222, 207,  43,  67, 149, 172, 124
	.byte	 18, 117,  98,  31, 168, 236, 133, 135,  35,  38, 229,  85,  60,  65,  77,  18
	.byte	126,  96, 230, 232, 139,  47, 206, 124, 204, 219,   5,  63, 226, 236,  30,  49
	.byte	130, 106, 117, 188,  67, 121, 109,  53,  77, 238, 104, 243, 190, 219, 187,  40
	.byte	116, 125,  91,  70,  20,  29, 228,  27,  65, 114, 121, 148, 198, 113, 249, 218
	.byte	244, 179, 147,  98,  93,  72, 225,  82, 226, 144, 211, 105, 249, 203, 227, 135
	.byte	109, 100, 137,  39,  39,  79,  23, 217,  45, 192,  22, 245,  80, 157,  31, 156
	.byte	 16, 103, 137, 251, 150, 154,  15, 227, 167, 176,  96, 177,  84,  15,  53,  52
	.byte	105, 222,  37, 181, 215, 222,   7,  17, 198, 160, 166, 153, 207,  97, 141,  15
	.byte	 30, 236, 162, 211, 120,  63,  86, 129,  51,  54, 143, 146, 189, 245, 120, 206
	.byte	254, 244, 187,  87,  22, 200, 139, 183, 228,  63, 196, 200, 172, 220,  57, 192
	.byte	180,  27, 236, 184, 195,  25,  30,  15, 109, 103,   2,  27, 208,  36,  16, 145
	.byte	 76,  42, 228, 203,  40,   3,  80, 251,  89,  63,  82, 217, 161, 129,  17, 177
	.byte	154,  21, 181,  34, 243,  30, 197, 122, 192, 130,  52, 185, 140,  82,  89, 180
	.byte	 55, 221,  33, 138, 221,  61,  80, 166, 196,  21, 126, 196,  51,  15,  71, 102
	.byte	222, 153, 122,  87, 169, 224, 112,  98, 242, 147, 175,  51, 177, 223, 121, 238
	.byte	213, 106, 251, 124, 234,  42, 136,  90, 119, 104,  89,  92, 231, 202, 108, 228
	.byte	100, 112, 101, 234, 201, 114, 124,  17, 178,  61, 103, 193,  12,   7, 108, 111
	.byte	119,  95, 251,  95,   6, 200, 225, 220,  41,  60,  52, 169, 107,  64,  19, 122
	.byte	254, 159, 241, 127,  90, 234,  43,  29, 144, 171,  25,  48, 122,  81, 171, 189
	.byte	183,  29, 101, 252, 177,   5, 198, 196,  68,  35,  12, 100, 189, 243, 105, 169
	.byte	192, 155,  56, 238, 148,  55, 193, 252,  77,  15,  27,  42, 215, 157,  63, 199
	.byte	198, 193, 113, 228,  63,  28,  69,  58, 220,  27,  68, 120, 108, 110,  29,  96
	.byte	 22,  12, 169, 234,  64, 198, 154,  70, 153, 171, 185,  95, 244,  78,  83, 152
	.byte	122, 253, 228, 228, 159,  51, 160,  56, 135, 182, 117, 152, 108, 236,   1,  52
	.byte	 22, 144, 100, 202, 128, 250, 238,  19, 165, 186,  23,  62, 194,  69, 203, 177
	.byte	112,  33, 159, 243, 153, 188, 184,  54, 120,  64,  43,  38, 139, 200, 246, 144
	.byte	 66,  36, 226, 154,  85, 193,  97,  43, 204,  85, 171,  59, 175,   7, 209, 192
	.byte	251, 240,  26,  43, 153,  68, 109,  71, 205,  68, 128,  18,  85, 206,   3, 241
	.byte	220, 228, 169,   0,  39, 193, 238, 209, 201,  17,  21, 207, 239, 208, 154,  44
	.byte	181, 249,  99, 196, 179, 186, 167, 107, 245, 226, 138,  31, 141,  18, 220, 190
	.byte	 58, 148,  34,  35,  55,  17,   9, 190, 216,  54,   6, 236, 202, 142,  87, 124
	.byte	120,  39,  34,  26, 232,  62,  19, 228, 226, 217,  40,  54,  68,  75,   7,   4
	.byte	 44, 129, 224,  11, 181, 139, 122,  89, 177, 169, 118,  74,  93, 166,  98,  84
	.byte	 46,  61,   5, 240,  37, 159, 136,  48, 182,  43,   5, 230,  63, 129, 214, 212
	.byte	224, 177,  13,  34,  46, 159, 236, 172,  66, 198,  68, 245, 210,  35, 174, 127
	.byte	 76,  56,  85,  83, 150, 155, 174,  21,  40,  65,  59, 112,   5, 213,  94, 177
	.byte	 98, 112, 160, 239, 179, 210, 237, 246, 129, 232, 244,  53, 119, 136, 237, 171
	.byte	 93,  44, 147,  87, 204, 243, 134,  95, 185, 201,  92, 158, 213, 178,  31, 141
	.byte	146, 154, 249,  63,  43,  92, 192,  79, 238, 186,  14, 228, 226, 199, 228, 144
	.byte	131,  11, 246, 212, 159, 251,  85, 142, 121, 238,  38, 210,  74,  48, 225,  68
	.byte	240, 241, 187,   9, 219,  50, 255,  27, 109,  41,  90,  38,  91,  15, 220, 196
	.byte	172, 251, 139, 120, 101, 198,  51, 139, 152,  93,  15, 188,  64,  65,   9, 180
	.byte	242,  85,  40, 111,  92,  14,  83, 238,  89, 172, 216, 184, 191,  74, 109, 145
	.byte	138, 101, 187,  23,  90, 152, 192, 182,  77,  15, 228, 158, 188,  53, 113,  17
	.byte	164, 115, 198,   6, 233,  30,  32,  83, 119,  53, 177,  85, 214,  73, 193,  61
	.byte	 16, 126,  71, 140, 112,  35, 116, 120, 216, 100,  78, 133, 143,  71,  95,  48
	.byte	134,  16,  45,   7,  11, 129, 250, 247, 231, 213, 203, 102, 234, 107, 107, 186
	.byte	  2, 175,  77, 124, 182, 192, 100, 234, 134,  93, 130, 211,  37, 238, 161,  40
	.byte	194,  24, 208,  51,  89, 238, 122, 137,  14, 145, 141, 130, 186,  78, 113,  34
	.byte	103,   5,  85, 216,  55,  57, 136,  24,  34,  50,  90, 175, 175,  25, 197, 227
	.byte	192, 181,  19,   4, 131,  36, 130, 103,  48, 106, 183,  43, 221,  98, 161,  18
	.byte	 89, 243,  93, 222, 250, 227, 227, 122, 157, 147,  67, 164, 114,  19, 142,  79
	.byte	240, 127,  70, 178,  41, 244,  55,  51, 191, 149, 231, 113,  23, 159,  48, 109
	.byte	 37,  10,  11,   0, 202,  36,  93,  38, 249, 150,  53,  80, 208, 128, 163, 144
	.byte	216, 139, 141,  68, 113,  31, 126, 108,  35,  83, 242,  66,  58,  38,  45,  14
	.byte	116, 161, 120, 127, 117, 104, 117,  74,  37, 134,  93,  41, 106, 248, 210, 254
	.byte	216, 226, 244, 200,  47, 211, 117, 106, 214,  56, 133, 197, 187, 239, 209, 131
	.byte	242, 159,  10, 228, 153, 188,  81, 159, 246, 128, 215,  40,  15, 189,  78,   8
	.byte	 48,  25,  94,  82, 135,  15, 164,  58, 142, 175,  65, 134, 137, 204, 166,  39
	.byte	113,  72, 241, 161, 254,  17,  45, 217,  90, 162, 110, 203,  55,  23,  88,  39
	.byte	202, 229,  66,  83,  52,   6,  10,  56,  17,  10,  27,  79,  11, 173,  85, 144
	.byte	182, 246, 224,  33,  40, 242, 247, 131,   7, 201, 240,  92, 241, 168, 172, 167
	.byte	 56, 193, 104,  33, 122, 254,  22, 253,  57,   3, 213, 202,  86, 133, 161,  69
	.byte	211, 184, 191, 149, 110, 156,  95,  81,  68, 144, 193,  32, 172, 178, 230,  56
	.byte	164,   1, 174,  23, 180, 111, 209, 188, 201,   6, 142,   3, 236, 202,  35,   9
	.byte	111, 250,  29,  32, 170, 152, 164, 240,  79, 178, 174, 163, 130, 137, 239,   1
	.byte	186, 103, 113, 119, 198,  92, 227,  12,  71,  71,  41, 170,  29, 144, 109,  89
	.byte	  6, 116, 167,  85, 166, 252,  26, 132, 155,  71,  72, 176, 193, 218, 147,   9
	.byte	254, 228, 156,  94, 110, 245, 209, 233, 171,  44, 131, 183,  61,  58, 133,  18
	.byte	 50, 243, 198,  18, 200, 190,  15, 195,  15, 158,  22,  66, 176,  69, 209,  82
	.byte	  2, 238, 172, 173,   3, 131, 241,  86,  53, 183, 193,  26, 212,  28, 217,  77
	.byte	211, 138, 238, 154, 225, 147, 212, 205, 105,  30, 210,  31, 212,   0, 128,  48
	.byte	180, 146, 227, 225,  33, 150, 231,  82,   0,  73, 225, 131,  24, 132, 114, 157
	.byte	117, 226, 138,  81, 238, 235, 205, 234, 102,  39, 171, 194, 246, 186, 217,  64
	.byte	108, 202, 205, 165, 179,  84,  99,   8, 127, 179,  21, 141, 104,  84, 201, 126
	.byte	116, 190, 208,  30,  27, 168,  50, 236, 182, 109, 122, 218, 179, 100, 167, 159
	.byte	120,  44, 111,  78,  41,  20,  68,  72,  77, 164, 195,  18, 229,  89, 157, 154
	.byte	239,  31, 172, 115,  31, 186, 244, 189,  37,  91, 130,  89, 151, 149,  80, 231
	.byte	184, 139, 106, 153, 236, 214, 125, 229, 231,  62, 146,  23, 137,  27,  50, 250
	.byte	 28,  46,  19, 147, 179,  63, 190, 226, 157,  56,  47, 183, 145,  67,  83, 151
	.byte	 52, 171, 128,  42, 243, 159,  75, 253, 142, 176, 140, 112,  43,  38, 122, 193
	.byte	 30, 155,  64,  95,  56, 144, 166, 233, 243,  90,  24,  74, 158,   4, 240,  77
	.byte	 16,  31, 142, 134, 193, 180, 162,  39, 176, 149, 105,  36, 111, 125, 233, 121
	.byte	 41,  82,  94,  39, 124, 130,  94,  52, 227, 158,  96, 129, 233,  44,  89, 121
	.byte	 52,  31, 243,  37,  34, 157,  43, 135,  11,  57,  96, 203,  44,  85,  86, 235
	.byte	148, 214, 214, 178, 154,  91, 202, 188,  99, 162,  41,  25,  98,  98, 253, 220
	.byte	246,  82,  97,  55,  89, 120,  52,  29,  56,  26,  41, 164, 172,  91, 132,  66
	.byte	196,  66, 117, 165,  37,  42, 158,  78, 253,  29, 180, 199, 137, 106,  81, 111
	.byte	220,  51,  51, 173,  53, 209,  92, 108,  24, 201,  74, 168,  95,   3, 243, 249
	.byte	192,  30,  10,   8,  67, 119, 179, 168, 226,   1,  43, 219,  46,  28, 205, 208
	.byte	112, 138,  51,  53,  98,  52,  43, 228, 184, 221, 224,  26, 209, 214, 159,  90
	.byte	195,  32,  66, 197,  53, 209, 109, 162, 251, 121, 189, 242, 102,  22,  21,  25
	.byte	 76, 150, 117, 246,  39, 217,  33,  75, 177, 144, 242,  38,  40, 240, 190,  19
	.byte	239, 222, 167,  56,  19,   5, 191, 157, 235,  49, 253, 224,  33,  41, 163,  91
	.byte	 54,  81, 151, 227, 247,  77, 140, 254, 151,  22, 163,  76,   8,  81, 251,  71
	.byte	104, 162, 159, 231,  65,  73,  50, 200,  73, 209, 242, 126, 249,  64,  59, 142
	.byte	136,  20,   5, 236, 124, 199, 159, 183, 157, 128, 191,  31, 171, 170, 214, 151
	.byte	141,  44,  82, 118, 253, 151, 169,   5,  77, 178, 145,  94, 137, 132,  53, 206
	.byte	114, 230,  75, 129, 176, 111, 192, 185,  31,  65, 147,  40,  29, 134,  52,   7
	.byte	150,  99, 235, 199, 188, 107, 190, 236, 192, 193, 211,  90, 131, 121,  97, 170
	.byte	230, 171, 113,  22, 172, 127, 176,  50,  37,  53,  45, 173,  45, 100, 248, 241
	.byte	202,  93,  88, 135,  57,   2,  14, 200, 124, 143, 198,  63, 163, 156,  55, 134
	.byte	212,  58, 166,   9,  68, 221, 124, 214, 134, 166, 214, 138, 185, 201,  14,  94
	.byte	 75, 202, 197, 134, 102,  38, 222, 116,  90, 197, 126, 141,  55, 101, 156, 206
	.byte	226, 144, 177,  36, 229,  35,  42, 253,  79, 216, 208, 211, 234,  45,  17, 117
	.byte	 45,  50, 125, 249, 233, 151, 102,  47,  19,  91, 109, 226, 106,  31, 130, 169
	.byte	100,  21, 180,  97,  65, 113, 140, 246, 101, 154,  58,  65, 206, 163, 128, 189
	.byte	 67, 192, 193, 160, 116,  66, 245, 163,   2, 242, 240, 210,  84,   6, 124, 222
	.byte	228, 140, 225, 225, 204,  87,  33, 116,   5, 197,  93, 136, 145, 140, 136,  33
	.byte	180,  71, 198,  23, 161, 176,  49, 113,  87,  23, 243, 130,  71,  70, 253, 144
	.byte	134,  48, 216, 180, 190, 117, 152, 233, 242, 124, 188,  37,  75,  19,  66,  92
	.byte	 99,  43,  76, 121, 149,  75, 238, 220, 220, 142,  31,  59,  84, 110, 159, 218
	.byte	190, 144,  53,  70, 109, 152, 250, 215,  51, 207,   8, 217,  16,  13,  27, 225
	.byte	173, 147,  83,  33, 159, 105,  27, 169, 195,  22,   2,  56, 245,  87, 235, 153
	.byte	114,  25, 119,  58, 132, 185,  94,  30, 202, 186,  90,  46, 144,  92,  34, 191
	.byte	 90, 254,  31,  87, 186,  32,  33, 202, 215, 182,  25, 202, 131, 211, 245,  46
	.byte	  6, 199, 170, 128, 129, 114, 206, 158,  14,  10, 113, 142,  30,  58, 176, 249
	.byte	229, 153, 167,  99, 131, 244,  92,  22,  83, 255,  96, 124, 130,  97, 247, 176
	.byte	246, 118,  79, 137, 129,  82,  15,  42, 135, 140, 240,  74, 158,   9,  91,  84
	.byte	246,   9, 185,  32,  49, 105,  22,  46,  78, 143, 182, 171, 235, 212,  42,  90
	.byte	 46,  47, 139,  37,  16,   3,  58,   2, 243, 149,  85, 239,  70, 162,  79,  17
	.byte	 39, 141, 114, 234,  56, 141, 166,  74, 248, 101, 171, 237, 124, 206,  75, 150
	.byte	154,   2, 174, 194,  82, 240, 247,  35, 178,  76,  39, 154, 215, 223, 229, 102
	.byte	217, 245, 241, 233, 171, 245, 131,  11, 118, 216, 190, 134, 128,   1, 243, 233
	.byte	196, 216, 141,  57,  52, 114, 157,  16,  37,  69, 116,  53,  41, 124, 198,  32
	.byte	 83, 157, 198,  94,  81, 168,  63,   6,  62, 129,   6,  89,  12, 248, 236, 124
	.byte	 30,  13,  77, 160, 249, 222, 125,  16, 149,  31, 198, 200,  10, 199, 205, 252
	.byte	 11, 175,  82,  39,  64,  75,   6,  76,  79, 183, 122, 108, 250,  81, 245, 210
	.byte	240, 103,   5, 232, 196, 140,  79,  75, 240,  86,  79,  81,  27,   6, 160, 113
	.byte	106,  26, 213, 152, 179,  46,  49,  88,   9,  16,  56,   1,  72, 193,  56, 111
	.byte	118, 179, 142, 220, 122, 228, 149, 179, 248,  72, 121, 110,  47,  62, 202, 134
	.byte	 97, 236,   8, 163, 112, 225, 247,  99, 214, 133, 246,  32, 156, 244, 254, 170
	.byte	 58, 228, 249, 149,  42, 121,  82, 120, 130, 118,   7, 207,  79, 243, 158,  76
	.byte	192,  49,  30, 124,  90, 154,  33,  11, 206,  15, 194,   9, 118, 154, 171, 251
	.byte	200, 193,  13, 233, 113, 189,  17, 232,   1, 131, 225,  27, 233, 238,  66, 200
	.byte	 36, 150,  30, 249, 189, 163, 137, 166, 227,  63, 158, 240,  10,  61,  69, 157
	.byte	 72,  85,  14,  97,  65,  42,  58, 219,   0,  71, 239, 230, 191, 151,  74, 135
	.byte	 76, 182, 248, 168,  40, 255,  79, 128, 212,  92, 147,  55, 120, 120, 250, 136
	.byte	254,  21, 170,  18, 246,  17, 183, 164, 190, 188, 109,  23, 119,  80,  39, 187
	.byte	 68, 165,  43, 128, 216, 189, 114, 243, 171, 161, 238, 108, 168, 242, 164,  13
	.byte	 18,  23, 234, 195,  61, 219, 164, 111, 134, 252, 102, 242, 252,  71,  60,  26
	.byte	224, 112, 222,   5, 232,  14,  89, 135,  90, 172,   8,  98, 201, 218,  76, 137
	.byte	 90,  61, 205, 170, 123, 215, 103, 166,  62, 255,  23, 209, 222,  60,   9, 134
	.byte	 54, 117,  22,  13, 171, 143, 212, 112,  48,  89, 127, 211,  22, 169,  43,  39
	.byte	132,  71, 211, 112,  89,  72, 119,  59,  78,  43,  46,  52,   3,  52,  60,  30
	.byte	106,  93, 199,  23, 211,  80,  12, 118,   5,   3,  11, 141, 223,  30,  61,  70
	.byte	226, 177,  10, 215, 195,  87, 112, 251,  11,  66, 135,  86,  50, 199, 239,  50
	.byte	 30, 127,  16,  40,  80, 214,  38,  16, 254,  33, 135, 237, 173,  41, 227,  64
	.byte	168, 180, 144, 153, 166,   6,  33, 205, 192, 255, 144,  62,  76,  73,  94,  54
	.byte	  5, 141, 211, 196,  55,  45, 111, 104,  74, 253, 233, 104,  73, 133,  19, 204
	.byte	 78, 143, 135, 241, 210,  96, 236, 217, 108, 117,  22, 139, 118,  27,  66, 242
	.byte	125,  80, 178, 215, 169,  30, 247, 185, 223,  42, 196, 167, 132, 206, 148, 141
	.byte	244, 102, 214, 110, 184, 155,  34, 119,  40, 107, 207,  57,  72, 249,  22,  50
	.byte	236,  66, 228, 105, 156,  72, 105,  59,  16,  74, 101,  77,  13, 222,  77, 236
	.byte	106, 228,  80,  95, 192, 135, 230, 237, 114, 211, 186, 223,  41, 123,  96,  72
	.byte	 89, 201, 210,  57, 103,  49,  64, 178, 221, 143, 228, 153, 190, 242,   6, 236
	.byte	142, 246,  24, 224,  72,  87,  22, 132, 250, 157,  20, 243,  24, 232, 141,  84
	.byte	140, 245, 175, 239,  22,  68, 152,  97, 189,  44, 231,  62, 223,  24, 207,   1
	.byte	122, 235, 249, 242, 207, 149,  22, 148, 127, 157,  16,  38,  18,  42, 219,   2
	.byte	123, 139,  86, 254,  99, 235, 165,  50, 239, 140,  42, 187, 180, 135, 177, 119
	.byte	252, 152,   2, 178,  22,  82, 147,   2,  12,  37, 151, 204,   5,  97, 238, 169
	.byte	103, 218, 238, 236,  90, 134,  12,  51, 182, 129, 101,  73,  38, 167,  91, 148
	.byte	220, 193,  70,  48,   9,  57,  97,  22,  80, 253,  31,  43,  41,  33, 119,  30
	.byte	 27,  28,  84, 179,  98, 129,  92, 148, 181,  64, 184, 214, 105, 255, 130, 155
	.byte	 54, 160, 144,  56, 254,  63, 254,  72,  57,  37,  50, 201, 244, 169, 101,  70
	.byte	114, 135, 129,  16, 198, 243, 149, 120, 145, 100,  40, 135, 194, 204, 127,  48
	.byte	 86,  51,  46, 146,  18,  71, 156, 128, 226, 246, 246,  49, 109, 236,  40, 249
	.byte	139, 141, 108, 157,   8, 141,  82,  42, 245, 249, 140, 174, 218,  58, 242, 224
	.byte	102, 250,  49, 234,  51, 169,  79,  76,   5, 156,  62,  15,  48, 130, 125,  75
	.byte	104, 216, 244,  92,  74, 143,  89, 121, 164,  69, 255,  70,  54, 119, 163, 151
	.byte	 88,  22, 231,  61,  76, 121, 132, 159,  65, 236,  80, 116, 247, 164, 143,  82
	.byte	 26, 219, 250, 134, 243, 197, 122, 193,  74,  42, 233, 130, 226, 220, 154,  29
	.byte	114,   7, 169, 209,  94, 203,  36, 146, 179, 165, 189, 190, 232,  33, 132, 194
	.byte	 27,  42,  69,  79, 165, 108,  92, 143, 125, 131, 148, 130,  38, 162, 145, 167
	.byte	 62, 161, 187, 217,  81, 182,  17, 173, 113,  74,  95, 148,  26, 154,   4, 126
	.byte	155, 154, 106, 172,   7, 182, 185, 100, 173,  88, 244, 248, 200, 143, 177,  53
	.byte	 74,   5, 135, 210, 172,  10,  54, 124, 128, 187, 221, 219,  67,  10,   2,  64
	.byte	248, 230, 113,  62,  85, 128, 205, 174,  50, 148, 132,  27, 234, 103,  75,  62
	.byte	238,  16, 179,  72, 159,  40, 132,  92, 199,  62, 131,   8,  48, 157, 140, 154
	.byte	 13,  10,  99,  79, 238, 231, 172, 178,  82, 212, 177, 206, 191,  44, 119, 236
	.byte	 22,  25, 126, 168, 142, 127, 159, 247,  80,   0, 181, 120, 197, 129,  71,  78
	.byte	104, 231, 111,  34,  44, 217,  73, 224, 239,  86,  95,  21, 143, 187, 172, 104
	.byte	208, 143,   1, 169, 243, 115, 109, 138,  27, 196, 229, 230,  12,  86, 244,   7
	.byte	169,  72,  87,  15,  30, 155,  60, 119, 241,  22,  20, 209, 118,  81,  82, 206
	.byte	244,  45, 203,  44, 156, 242,  15, 238,  81, 240, 105, 166, 108,   8, 228,  22
	.byte	153, 118, 145, 239, 161, 169, 218,  61,  73,  20,  67,  49,  84,  99,  29,  82
	.byte	 40, 191,  28, 106, 191,  21, 114,  91,  41, 198, 166, 130, 204, 169, 175,  30
	.byte	250, 147, 106, 178,  88, 160,  24,  99, 177, 140, 120, 193, 195, 254,   3, 144
	.byte	236,  72, 245, 160, 145, 102, 219, 197,   3, 187, 123, 217, 156,  48, 158,   7
	.byte	232,  44,  40, 250, 251,  38,  23,  65, 237, 224, 129,  39, 115,  46, 154, 207
	.byte	130, 204, 143, 223, 230,  16, 105, 189, 238, 112, 156, 129, 146, 121, 106, 110
	.byte	 89,  14, 163, 251, 163, 102, 161,  19, 170,  15, 233,  12, 232, 160,  35, 103
	.byte	184, 219, 247,  56,  58, 247, 103,  41, 249,  65, 201, 100,  96, 175,   0,  92
	.byte	184, 159, 137, 236, 124, 163,  88,  12,  82,  55, 212, 121, 131, 190,  19, 189
	.byte	 42,  42, 139, 137,  10,  88, 122, 147, 253,   9, 118, 184,  82, 131,  21, 170
	.byte	137,  76,  27, 133, 149,  69,  56, 166, 219,  11,   3,  92,  48, 102, 231, 137
	.byte	158,  33, 235, 250, 254, 199, 168, 102,   7, 196,  24, 177,  78,  32, 154, 138
	.byte	231, 143,  49,  78, 116, 237,  34,  26,  36,  70,  97,  97, 247, 243, 160,  25
	.byte	 20,  18, 177, 111, 221, 196, 137,  27,  65,  37,  90,  55,  30, 202,  21, 234
	.byte	  8, 112, 164,  15,  29,  29, 198, 229,  65,  85, 136, 151,  54, 241,  76,  54
	.byte	196,  93, 207,  22, 212,  80,  59, 216, 193, 250, 169, 203,  62, 213,  70,  56
	.byte	 47, 117, 128, 200, 152,  76,   3, 126, 200, 108,  81,  64, 175,  43,  99, 137
	.byte	 50, 204,  89, 128, 140,  42, 124, 195,  52, 117, 226, 220,  19, 141,  63, 123
	.byte	  6,  90, 143, 182,  42,  33,  45,  31, 117, 213, 132, 120, 192, 115,   1, 150
	.byte	 22, 234, 235, 235,  38, 146, 227, 191, 194, 232, 114, 254,  95, 208, 246, 192
	.byte	 67, 149, 219, 238, 124,  11, 251, 182, 182, 102,  75, 114, 236,  64, 201, 176
	.byte	  8, 128,  44, 208,  96, 207,  84,  39, 150,  77, 180, 232, 103, 165,  95,  61
	.byte	182,  16, 232, 177,  99,  61, 167, 132, 183,  97,  95, 252, 236, 131, 205,  10
	.byte	134,  74,  21, 151, 123,  37, 156,  24, 206,   4,  88,  87, 159,  43, 243, 174
	.byte	 93, 193,  59, 211, 102, 159,  25,  56, 156, 157, 156,  85,  83, 121,  72, 131
	.byte	206,  73, 238, 115,  93,  32,  16, 212,   9,  72,  25, 135,  14, 152, 109, 171
	.byte	198, 165,  60,  10, 198,  58, 126,  20,  35, 186,  85, 222, 254, 210, 162, 117
	.byte	204, 250, 228,  13, 198, 253, 227, 142,   9,  13,  71, 127, 239, 119, 201, 142
	.byte	178,  92, 185, 122,  64, 197, 125, 216, 121,  59,  97, 241,  74, 125,  75,  24
	.byte	  8, 207, 244, 125, 100, 195, 247,  56, 111, 104, 255,  43, 218, 116, 227, 120
	.byte	191,  23, 142,  36, 109, 197, 161, 210, 126, 113, 166, 189, 246, 122, 126, 109
	.byte	222, 108,  41,  65,  85,  40, 194, 185, 151,  87, 113, 137, 232, 117,  86,  93
	.byte	217, 141,   0,  39, 115,  49,  35, 228, 187,  96, 115,  42, 213, 175, 238, 255
	.byte	 74, 110, 234, 182, 130, 149, 215,  86,  76,  42,  55,   0, 203, 170, 237, 227
	.byte	167, 224,  74, 124,  18,   7,   0, 226, 199,  37,  21, 235,  76, 242, 147, 206
	.byte	242,  58,  26,  44, 191,  99, 238,  98, 231, 245, 190, 102,  82,  46, 132, 101
	.byte	139,  66, 173,  99, 237, 247, 155, 155, 236, 140, 240, 226,   5, 119,  10, 131
	.byte	218, 144,  36, 250, 228,  79,  67, 154,   1,  67, 109,  74,  53,  85,  34, 165
	.byte	 22, 175, 131,  88, 142, 197,  89,  83,  82, 211, 190, 101,  93, 134,  51, 148
	.byte	136, 167,  64, 168, 169, 152, 108, 212,  80, 103, 117,  87, 129, 162, 204,  45
	.byte	111, 204, 193,  14,  22,  11, 207, 194,  96, 236, 236,  71, 213, 137,  94,  36
	.byte	234, 120,  83, 133,   2, 243, 185, 144,  39, 149,  34,  36,  39,  96, 254,  59
	.byte	185,  91,  24, 148, 128, 229, 147,  66,  73, 250,  55, 139,  13, 197, 246, 168
	.byte	 76, 231, 184, 135, 112, 204,  41, 243,  79,  39, 241, 128,  25, 157, 254, 165
	.byte	193,  82, 242, 166, 221,  33, 222, 144, 136, 163, 117, 144, 167,  28, 220,  91
	.byte	 38,  63, 195,  67, 225, 108,  30, 231, 173, 217, 209, 164, 213, 176,   5, 123
	.byte	107,  26, 200, 167, 143, 126,  28, 152,  58, 241,  65,  53, 156, 194,  10, 101
	.byte	100,  22, 184,   1,  83, 171, 189, 191, 161, 101,  58, 136, 245, 211, 167, 231
	.byte	 27,  36,  38,  35, 174, 132,  37,   9, 156,  69, 158,  28,  69, 190, 177, 216
	.byte	136, 225, 168, 151, 118, 236, 113, 210, 254,  78, 155, 223, 130,  32, 155,  28
	.byte	233, 163,  71,   8, 164, 119, 117, 143,  50, 141, 251,  43, 182,  69,  20, 182
	.byte	 52, 103,  97, 201, 144,  41, 208,  60, 119, 219, 207, 132, 160,  16,  18, 243
	.byte	145,   7, 117, 194, 249, 103, 231, 211, 213, 175, 135, 113, 196, 188, 159,  77
	.byte	 84, 240, 137, 230, 247,   3,  12,   2, 229, 114, 122, 229, 180, 156, 179,  60
	.byte	156,   9,   7,  61, 154, 244, 242, 133,  27, 218,   8, 220, 207, 198, 162, 107
	.byte	220, 183, 142, 133,   3,  78, 233,   4,  54,  76, 168, 133, 232, 202,  72, 108
	.byte	234, 222, 228,  45, 207, 245, 162, 138, 142, 195,  63,  67, 197, 254,   1, 168
	.byte	198, 249, 188, 237,  74,  78,  95, 159,  30,  62,  44, 137,  65, 211, 144,  14
	.byte	148, 253,  62, 216, 171, 219,  30, 155,  91, 246, 185, 221,  35,  20,  95, 244
	.byte	124, 119, 135,  51,  56, 121, 253,  73, 171, 147,  88, 196, 154,  30, 220,  78
	.byte	163,  92, 166, 196, 247,  51, 182,  53, 128,  99, 100, 218, 245, 204,  16,  37
	.byte	228, 193, 153, 158, 246, 255,  51, 208,  23,   6,  19, 234,  27, 213,  43, 202
	.byte	128, 167,  54,  48, 176,  26, 121, 170,  45, 163, 202, 255, 178, 224,  78, 215
	.byte	 84, 124, 252, 245, 222, 177, 230,  62,  62,  81, 243,  42, 166,  40, 191, 253
	.byte	154, 125, 224, 157, 243, 136, 201, 157,  92,  25, 109, 171, 102,  83,  89, 163
	.byte	 94,  27, 127, 254,  31,  61,  89, 212, 187, 107, 116, 123, 151,  85,  48,   9
	.byte	 52, 251, 238, 180,  99, 254,  30,   7, 129,  71, 246,  96,  85,  55, 146, 207
	.byte	166,  89,   1,  79, 191, 142, 137,  26, 251, 135, 232, 230, 245, 214, 166,  35
	.byte	118,   3, 115,  14, 238, 140, 132, 117, 223, 160, 164, 203,  79, 246,  68,  69
	.byte	114,  88, 249, 126, 197,  44,  55, 149, 186,  69,  87, 196, 128, 227, 138,  62
	.byte	 64, 247, 212, 186,  25,  75,  35, 247, 212, 238, 104,  74,  33,  73,  57,  79
	.byte	212, 247, 129,  25, 190, 196, 151,   1, 182,  20,  93, 181,  31, 140, 181,  63
	.byte	192, 157, 128, 180,  66, 186,  87, 131, 129, 168, 238, 138,  93,  84, 182, 165
	.byte	136,  99, 187, 221, 122, 188,  77,  56, 156, 194, 117,  27, 208, 104, 118,  92
	.byte	156,  68, 173, 202, 253, 178, 224,  92,  56, 148, 144, 171,   6, 180,  95,  92
	.byte	180,  80, 126,  24, 200, 149, 231,  41, 216, 126,  59,   4, 110,  33, 118, 177
	.byte	242, 179,  13,   7,  25,  52,  17, 197, 187,  57, 101, 171, 189, 225,   7, 226
	.byte	122, 218, 113,  51, 250, 177, 113, 217,  90,  81, 195,   5,  51, 212,  13, 131
	.byte	 14,  75, 177, 111, 181, 173, 188,  63,  28, 224,  29, 134, 248,  81, 226, 191
	.byte	198,  78, 195,  89,  64,  92, 146,  86,  61,  72, 209, 209, 145,  76, 159, 150
	.byte	231,  35, 100,  96,  38,  52, 134, 218,  11,  97,  40, 177, 102,  84, 149,  22
	.byte	 54, 138,  79,  67, 122,  63, 101, 149,  14,  84, 133,   8,  99,  96,  82,  14
	.byte	241,   7,  42, 191, 173,  45,  93, 213,  42,  73, 150, 174, 157, 145, 106,  91
	.byte	 60,  19, 130, 217,  71,  51,  71, 130,  37, 175,  44, 157, 137,  96, 212, 116
	.byte	214, 153, 184, 139, 199,   9,  76, 122, 138,  16, 168, 253, 243, 225,  90,  85
	.byte	 26, 228, 243,  42, 187,  56, 142,  49, 191, 123,  85,   5, 247,  85, 193,  15
	.byte	160, 143, 251,  24, 250,  25, 171,   3, 234,  65, 145, 198,  98, 236, 182, 205
	.byte	128,  25,  44, 209,  39,  63, 129,  69,  79, 145, 105,  30, 146, 233, 165, 243
	.byte	 41, 186, 230, 222,  85,  61, 190, 100,  56,  92, 146, 141,  80,  71, 127, 172
	.byte	 98,  37,  32, 202,  49, 197, 105, 161, 252,  78,  41, 134, 210,  22, 143, 162
	.byte	 84,  17,  84, 141, 208, 249, 117, 162, 204, 221,  53,   2,  75,  31,  59, 213
	.byte	118,  67,  96,  89, 156,  22, 114,  72, 237, 144, 115,   0, 201,  80, 170,  13
	.byte	103, 160,  96, 192,  64,  10, 181, 121, 140,  90,  34, 140, 186, 105,  97,  21
	.byte	156, 174, 221,  17,  36,  35, 112, 101, 216,   8, 109, 186, 173,  90, 204,  70
	.byte	107,  44,   4, 143,  91, 173,  52, 188,  99, 232, 149, 140, 154,  31,  43, 187
	.byte	236, 171,  57, 209,  96,  44,   1,  78, 159, 210, 206,   5, 132, 249, 224, 194
	.byte	112, 150, 223, 193, 251, 162,   7, 235, 244,  23,   5,  12, 132, 112,  97, 189
	.byte	198, 100,  70, 182,  69, 112, 208, 203,  58,  44, 175,   5, 149, 205, 117,  33
	.byte	252,  12, 167, 239, 215,  19, 130, 176, 157,  11,  56, 140,  71, 173,  50, 247
	.byte	 72,  55, 149, 142, 194, 236,  90, 170, 125, 244, 181, 247, 168,  40, 194,  62
	.byte	 46, 148, 247, 115, 252, 237, 195, 204,  11, 169,  42, 184, 144,  64,  39, 144
	.byte	100,  22, 149,  86, 113, 216, 251, 178, 185,  81, 123, 135,  62, 226, 236, 121
	.byte	171, 142, 217, 174, 145, 223, 112, 161,  82,  82,  57, 140, 253, 105,  97,  23
	.byte	 42, 232,  44, 107,  97, 208,  47, 238, 106, 180,  86, 158,  85, 209, 216,  30
	.byte	214, 161, 199,   6, 196, 242, 190, 110, 187, 153, 205, 191,  46, 248,  84, 194
	.byte	100,  82,  25, 107,  87,  67, 183, 230,  54,  65, 179, 178, 194,  21,  21, 208
	.byte	195,   3, 145, 169,  32, 221,  22, 107, 255,   6, 128, 250, 214,  97,  39, 250
	.byte	 16, 164, 126, 100,   3, 139,  36, 212, 176,  97, 114,  91,  81, 152, 174, 128
	.byte	221, 102, 162, 190,  90, 224, 127,  89, 206, 218, 250, 240, 139, 235,  40, 100
	.byte	250,  87, 133,  21, 238, 166,  36, 153,  57, 147,  22, 190,  81,  45, 209,   4
	.byte	 58, 109, 174, 221,  63,  86, 196,  25, 147, 164, 199, 101, 146,   4, 199, 248
	.byte	120, 206, 215,  47, 235,  59, 207,  24, 172, 128, 148,  20, 113,   0, 227, 205
	.byte	195, 111, 169,  69, 218,  41,  32, 183, 164, 141,  36,  21, 161,  77, 224, 206
	.byte	 38, 159,  46,  25,  73, 190, 204, 146, 221,  61, 172,  87, 155, 252, 171,  83
	.byte	204, 128, 215,  48, 198, 132,   4,  25, 239, 119, 239, 147, 192, 209, 154, 228
	.byte	 68, 195,  84,  48,  57, 198, 103, 206, 122, 218, 253,  43,   7,  88, 236, 204
	.byte	174, 207, 131,  78,  93,  82,  40, 118,  87,  37, 186, 160, 229, 198, 141,  15
	.byte	 72, 231,   6,  92, 251, 216,  66, 157, 234,  65,  72, 127, 219, 225, 211,  26
	.byte	181, 103,  29, 105,  29, 250, 126, 210, 192, 170,  16,  75, 116,  16,  52,  17
	.byte	  0, 156, 107, 109, 214, 221, 160, 123, 154,  32,   4, 151, 233,  56,  96,  62
	.byte	173,  57, 125, 169, 196, 148, 214, 121, 186, 128, 166, 145,   5,  26, 104, 206
	.byte	208,  85,  56,  81, 211,  97,  31, 173, 114, 126, 190, 212, 122, 207,  38, 137
	.byte	217, 255, 119,   0,  85, 173, 218,  78, 201,   5,  32,  24, 155,  74,  87, 181
	.byte	 82, 210, 185,   6,  34, 154, 107,  46,   4,  20, 112, 240,  51,  72,  21, 125
	.byte	118,  89, 119,  38, 104, 202, 108,  48, 175, 225, 146, 143, 255, 255,  72, 236
	.byte	252, 170, 236, 150,  86, 222, 211,  56, 177, 222,  97,  34, 169,   8,  22, 232
	.byte	221,  61, 115, 151,  91,  82, 145,  17,  92, 233, 145,  37, 129, 161,  94, 169
	.byte	154, 102, 199,  62, 105, 229, 120, 129,  95,   7,  96, 132,  29, 184, 229, 125
	.byte	 77, 154, 147,  48, 134,  53, 118, 137,  46,  84,  49, 121,  52, 211,  15,  32
	.byte	106,  81,  73, 189,  68,  62,  65,  70,  42, 131,  28,  20,  75, 217, 128, 235
	.byte	236, 175, 236,  98,  78,  89, 214, 143,  69,  94,  15,  38, 208, 224, 184,  29
	.byte	232,   8, 187, 246,  58, 127,  98,  69,   6, 208,  26, 135, 106, 225, 168,  13
	.byte	 91, 131,  64, 206,  82, 237, 130, 175, 174,  16, 184, 251, 184, 114, 193,  84
	.byte	 50, 133, 123, 223,  34,  39, 175, 107,  96, 155,  18,  61, 161, 148, 187, 220
	.byte	 16, 249, 133, 188, 192,  81, 168, 100, 142,  14, 202, 229, 134, 181,  44, 118
	.byte	184,  99, 118, 163, 107, 135,  96, 251, 146, 150, 225,  46, 107, 150, 252,  64
	.byte	 50, 169,   1,  34,  21, 200,  87,  64, 110, 215, 112, 255,  50, 194, 228, 226
	.byte	160, 145,   1, 130,  46, 240, 158, 245,   5,  47, 205, 115, 177, 192, 108, 247
	.byte	153, 214, 209, 159, 190,  64, 109,  88, 122,  73, 230,  70, 205, 125, 179, 151
	.byte	 72,  68, 223,  18, 248,  21,  34,  53,  73, 218, 217,  39, 236,  42,  28,  76
	.byte	222,  28, 195, 229, 198, 203, 227, 117, 195, 109, 169,  71, 159, 250,  22, 146
	.byte	 56, 101,  85, 129, 187, 132,  11,   3, 149, 254,  34, 125, 205,   9, 219,   0
	.byte	252,  56, 254, 163, 129,  13, 128, 194, 164,  31, 174,  87, 233, 123, 146, 132
	.byte	 78, 224,  60,  95, 237,  53,  65, 244,  83, 149, 230, 132,  64, 151,  10,  65
	.byte	 52, 139,  29,  63, 141,  85,  45,  32,  52, 233, 167,  45,  91, 164, 116, 226
	.byte	240, 244, 141, 150, 137,  25, 252, 214,   1,  17, 131,  26, 170, 226,  25, 148
	.byte	151,  53, 172,  69,  33, 238, 126,  77, 230, 187, 166,  54, 204,  98, 238, 161
G$l_matrix:
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	186,  49,   5, 225,  60, 111,  59, 176, 196,  41, 250,  99,  33,  53, 170, 122
	.byte	 58,  21, 145,  94, 146, 228, 108, 129, 250, 165, 252, 150,  81, 200, 146,  43
	.byte	 12,  45, 234, 173,  77, 108, 112,  18, 128, 200, 180, 240, 232,  49, 171, 227
	.byte	 49, 254, 150,  65,  51,  22, 158, 238, 218, 157, 127, 103,  81, 105,  98, 131
	.byte	  6, 219,  93,  59,  25, 132, 153, 124, 154, 238, 199,  22,  65, 237, 138, 205
	.byte	163, 149, 227, 208, 173,  87,  34, 246,  78,  35,  40,   5, 166, 218,  18, 108
	.byte	 74,  71, 103, 215, 146, 176,  52, 192, 224, 211, 119, 160, 108, 182,  35, 160
	.byte	 59, 149,  55, 195, 138, 138, 247,  55, 123,  60,  35, 253, 244, 156, 245, 200
	.byte	 66,  53,  21,  82,  56, 240, 100, 183, 213, 137, 225, 143, 120, 131,  71, 178
	.byte	 53,  28,  60, 160, 247, 131, 124,  87,  17, 235, 215, 173, 186, 157,  12, 115
	.byte	194,   8, 250, 233,  37, 157,  72,  43,  38,  80,  47, 113, 198, 140, 195, 105
	.byte	142, 158, 192, 136, 101,  29,  97,  76,  37, 226,  44, 138, 171,  79, 199, 254
	.byte	176,  91,  84, 253, 161, 147, 224, 180, 255,  15,  44, 142, 102, 238,  32,  96
	.byte	  9, 119, 133,   3, 140, 136,  14,  58, 175, 113,  56, 249, 208,  74, 198, 100
	.byte	202,  86, 172, 124, 206, 116,  21, 155,  30, 202,  49,  15, 237, 199,  46, 164
	.byte	230,  60, 157, 165, 106, 157, 222,   2,  95, 244, 240, 209, 231,  79,  63, 139
	.byte	224,  57, 180, 198,  34, 251, 190,  85,  16,  68, 152, 116, 162, 132,  47, 168
	.byte	 76,  77,   5,  62,  77,  62, 134,  36, 112,   9, 123, 103, 114,  82, 161, 216
	.byte	178, 111,  63, 187,   0,   7, 140,   4, 134, 118, 246,  42,  64, 241, 127, 144
	.byte	232, 118, 138,  51, 182,  69, 148,  84,   0, 119, 242, 148,  30,  61, 114,  79
	.byte	126,  70, 116, 216, 104,  21, 251, 145,  24,  44, 143,  40,  95, 123,  38, 214
	.byte	102,  80, 185,  31, 255, 234, 149, 181,  52,  80,  72,  14,  59,  35,  85, 166
	.byte	 36,  56, 227, 211, 209, 206, 223,  25,  21, 247,  24,  64,  42, 225, 215,  84
	.byte	150, 119,  51, 237, 205,  37,  31,  76,  81, 111,  49, 216, 138, 180, 142, 155
	.byte	238, 109,  79, 216, 176,   1,  91, 235, 119, 186, 139,  59, 117, 138, 240, 145
	.byte	 71,  60,  77, 226, 139, 227,  75,  27, 169,  59,  11, 210, 116, 210, 160, 205
	.byte	212, 240,  91, 102, 243,  11, 170,  93, 238,  47,  38, 154, 218,  91,  71, 206
	.byte	 78,  49,   0, 218,  61, 125, 103, 219,  90,  72, 117, 163, 251, 249, 234,  39
	.byte	 38, 118,  69,  68, 169,  44, 205, 140, 109,  68, 233, 226,  81, 204, 254, 210
	.byte	171, 183, 223,  86,  17, 203,  62,  14,  82, 152, 135,  15, 153, 174, 172,  63
	.byte	 76,  30, 118, 239, 250,  84,  34, 113,  25,  10, 199, 137, 129,   3,  74,  81
	.byte	180,  55, 103, 196, 187, 152, 221,  23, 109, 253,  87, 148, 253, 250, 168,  49
	.byte	166, 200,  89,  41,  26,  80,  44, 208, 135, 167, 121, 186,  28,  77,  13, 153
	.byte	171,  24, 164,  17, 172, 251, 131, 213, 137,  23, 224, 198, 129, 124, 185,  41
	.byte	 88, 120,   1,  74, 211, 151,  44,  92,  84,  57,  87,  85,  43, 233,  71,  22
	.byte	 40, 227, 184, 124,   4, 127,  82,  78,  53, 254,  14, 231, 174,  36, 167, 190
	.byte	 96,  61,  65, 169,   6, 117, 244,   1, 145, 121, 115, 229, 156,  23,  57, 191
	.byte	113, 160, 168, 244, 200, 255, 194,  81,  48, 200, 216, 175,  81, 174,  89, 187
	.byte	170, 101, 172,  80, 159,  91, 151, 212,  93,  61, 197,  12, 249, 237, 170, 174
	.byte	 30,  40, 229,  63, 164, 197,  21, 231,  33, 145,  18, 115,  43, 171, 118,  37
	.byte	 36, 201,  26, 192, 157, 127, 168,   6, 104, 146,   3, 176, 106,  39, 106, 253
	.byte	197,  81, 101,  47,  17,  50,  78, 236, 246, 159, 187, 188,  92,  53, 239,  95
	.byte	114, 212,  90,  42, 139, 135, 197, 113, 212,   4, 137, 241,  74,   5, 140, 104
	.byte	 60, 150, 178, 149, 155,  83,  19, 123, 129,  69,  56, 164, 136, 227,  40, 139
	.byte	 36, 205, 197, 151, 131, 147, 107,  11,  59, 192,  74,  67, 223,  88,  20,   0
	.byte	 59, 159,  19,   2, 176,  25,  75,  92, 121,  69, 100, 194,  88,  63, 238, 218
	.byte	204, 140,  99, 220, 147, 243,   5,  60, 148, 216, 176,  58, 193, 239,   3, 176
	.byte	170, 154,  35,  16, 245,  94,  67,   7,  65, 139,   5,  10,  38, 226,  35, 125
	.byte	  2, 218,  58,  22, 103, 224,  17, 118, 206, 174, 200, 206, 111,  42, 228, 110
	.byte	  7,   9, 201,  14,  25, 154, 135, 239,  80, 193,  24, 253, 103,   8, 205,  54
	.byte	112,  20,  13,  94, 180, 186, 148, 149, 124,  26, 250, 125,   5, 158, 254, 171
	.byte	223,  46, 177,  87, 143,  26, 151,  88, 174, 189, 239, 128,  33, 106,  50,  89
	.byte	 48, 141, 234, 193,  91, 231,  67, 153,  97, 177,  27,  24, 228,  55, 234, 254
	.byte	 79, 116, 145, 149,  13, 208,  92,  43,  98, 149,  53, 199, 166, 177, 151, 239
	.byte	246,  41,  19,  87, 127, 190, 130, 159, 248, 130,  14, 231, 157, 221, 235, 207
	.byte	234, 253,  95, 194, 190,  41,  57, 250,  93, 157, 111, 102, 131, 229,  63, 238
	.byte	 40, 103,  26, 182,  93,  74, 201, 173, 253, 102, 252, 124,   9, 108, 239,  66
	.byte	 63,  46, 134, 145, 244,  80, 214, 189, 117, 199, 110,   7, 112, 185,   7, 188
	.byte	  4,  59,  65, 192, 176,  89, 151,  29,  76,  89, 146,  79,   7,  82, 247, 206
	.byte	250, 132,  42,  90, 111,  65, 214, 160,  42, 241, 200, 130,  80, 206,  49,  89
	.byte	126, 116,  41, 237, 137, 149, 150,  44, 202,  37,  83, 254, 173, 104, 149, 233
	.byte	157, 114,  25, 130,  96,  81,  84,  19, 202, 129, 180,  55,   9,   1,  92, 141
	.byte	148,  88, 187, 229,  53,   6, 167, 188,  19,  64, 157,  20, 255, 232, 185, 223
	.byte	241, 218, 199, 173, 130, 245,  41, 130,  22, 114,  17, 195,  45, 216, 140, 101
	.byte	118,  41, 117, 205, 161,  79, 200, 195, 118, 209,  10, 191, 246, 158, 108, 141
	.byte	 95, 104, 228, 164,  38, 177, 186,   1,  25, 229,  44, 254, 218, 113,  29,  51
	.byte	 80, 224,  16, 123, 203, 109, 141, 108, 164,  30, 111, 128, 143, 110, 117, 147
	.byte	142,  68, 239, 179, 115,  67,  64, 175, 225, 164, 226, 157, 160,   4,  17, 135
	.byte	234,  71, 166,  91,  86, 204,  59, 236, 253, 128, 119, 121, 187, 240,   0, 158
	.byte	215,  45,  21, 116, 235, 133, 240, 171, 236,  51,   6,  44, 170,  94, 162, 161
	.byte	 12, 186,  35, 161, 147, 237,  84, 192,  76, 126,  44, 196, 114, 116, 249, 111
	.byte	 70, 222,  36,  80,  26, 225,  39, 196, 215, 193, 218,  44, 254, 125,  61, 117
	.byte	202, 205, 186,  40, 139, 206, 224, 190, 139, 127,  47, 185,  96, 113, 129, 131
	.byte	  9,  74, 242,   9, 196,  42,  59, 247, 209, 121,  22, 249, 112,  58,  32,  56
	.byte	 14, 179,  88, 233,  93, 134,  36,  77, 226, 136, 123,  71,   3, 129, 237,   2
	.byte	210, 230,  24, 197,  77,  74,   6,  11,  37, 205, 106,  86,  52,  95, 215,  75
	.byte	152, 237, 140,  21, 177, 191, 178,  87, 189,  13,  99, 187,  15,  99, 142,  12
	.byte	130,  98,  51, 123, 162,  59, 240, 250, 189,  26, 116, 182, 223, 208,  53, 197
	.byte	238,  91, 217,  92, 179, 236,  95, 203, 101, 251, 114,   4, 200, 197, 157, 150
	.byte	121, 146,  13,  69,  50, 151,  65,  66, 165,   9,  23, 254, 183, 133, 240,  98
	.byte	160, 133,  47,  21,  33,  53, 125,  78, 218, 222, 208, 194, 231, 120,  37, 218
	.byte	255,  61,   5,  21,  13, 177, 110, 231,  67,  83, 106,  72, 244, 188, 226,  32
	.byte	122, 153, 141,  94,  56,  21, 162, 145,  75, 138,  32,  16,   2,  35, 252,  75
	.byte	 39,  52, 241,  80, 252, 182, 174, 195, 115, 139,  26, 204,   6,  78,  45,  99
	.byte	206, 182, 159, 147, 233, 126, 182,   6, 174, 199, 254, 231,  70, 239,  81, 122
	.byte	 53,  51, 234,  52,   5,  61,  26,  26,   5, 169, 193,  55, 117,  55, 212, 109
	.byte	210, 126, 194, 234, 212, 103, 207, 143,   8, 128,  32, 176,  60, 143,  66, 193
	.byte	 70,  52,  84,  49, 142, 120, 186, 213, 201, 208, 231,   0, 115, 235, 180,  40
	.byte	110, 121, 186, 147, 117, 174, 190,  88, 203,  65,  19, 120,  47, 111, 132,  32
	.byte	152,  65,   4, 224,  17, 201,  44,  89,  48,  61,  69,  27, 232, 205,  44, 214
	.byte	200, 248, 241,  61,   1, 105, 151, 193, 199,  88,  45, 115,  41,  53,  15, 133
	.byte	153,  73, 190, 222, 223,  30, 196, 230, 217, 115,  58,   6, 233,  16,  97, 203
	.byte	234, 160, 160,  91, 160,  72, 214, 228, 204, 115,  28, 207, 196, 189, 205, 149
	.byte	154,  86,  21, 193, 244, 114, 184,  72, 191,  65, 228, 219, 193,  59,  31, 117
	.byte	 84,  99, 125, 238,   7,   8, 175, 240, 225, 242,  96, 229, 247, 101, 159,  39
	.byte	 41, 214, 225, 245,  17,  61, 198, 205, 193,  88, 236,  98,  99, 190, 116,   9
	.byte	 24, 140, 161, 220,  66, 166,  62, 225, 154, 254, 133, 207,  70,  70, 111, 136
	.byte	 73, 169, 254,  35,  37, 142,  20, 147,  95,  78, 204,  40,  43,  82, 103, 189
	.byte	 38, 168, 189,  57, 251, 112,  32,  86,   7, 130, 111,  52,  72, 202,  66,  80
	.byte	247, 176,  91,  26,  19,  69,  83,  30,  26, 215,  19,  28, 177, 119, 128, 194
	.byte	140, 250,  79, 185, 148, 187, 137, 102, 155,  70, 127,  87,  54, 147, 179, 170
	.byte	148,  26,  76, 154, 165, 185, 199, 142, 227, 154,  84,  42,   4, 219, 143, 248
	.byte	228, 190, 131,  10, 228, 103, 167,  92, 107, 125, 153, 102, 194, 146, 188,  20
	.byte	154, 155, 248, 108,  31,  16,  33,  13,  45, 142,  24, 231, 185, 229, 164, 233
	.byte	 72,  41,  10, 138,  15, 231,  36,  10, 162, 251, 124, 156,  83, 123, 102, 128
	.byte	 12,  36, 134, 248, 252,  63,  85, 182, 168,  13, 180,  59,  69, 175, 179,  98
	.byte	176,  45,   3, 188,   2, 242, 112,  24, 197, 178, 135,  79, 233,   1,   1,  52
	.byte	211, 111,  31, 160, 244,  11, 160,  49,  31, 244, 154,  42, 116, 115, 128, 222
	.byte	242, 245,  71, 144, 249, 185,  52, 199,  42, 124, 148,  94,  30, 214,  99,  20
	.byte	185, 143, 246, 126,  19,  39, 116,  52,  99,  17, 227,  64,  67, 188, 242, 195
	.byte	190, 132,  79, 215, 211, 186,  28,  80, 160,  87,  38, 122, 158,  59, 109,  35
	.byte	  7, 188, 249, 150, 250, 164, 254, 250, 218, 224,  32, 116, 246,  62, 126,   3
	.byte	214, 199, 148, 143, 162,  59,  23,  33,  61,  14,  37, 140, 105, 111, 201,  30
	.byte	143,  30,  75, 168, 211, 130, 200,  24,  24,   3, 106, 221,  99,  81, 219, 165
	.byte	144, 161, 183,  82, 154, 149,  31,   0,  50, 246, 103, 126, 143, 245, 153,  77
	.byte	 55, 210,  94, 148, 232,  53, 239, 177, 225,  85, 120,  76,  90, 208, 203,   6
	.byte	 68, 238, 123,  97,  45, 146, 139, 142,  40,  92, 109,  93, 105, 152, 237, 174
	.byte	 27,  96, 117,  22, 218, 206, 236,  18, 120,  82, 250, 204,  75,  71,  78, 113
	.byte	 62, 211, 142,  26,  35, 202, 184, 153, 234, 112,  43,  98,  21, 163,  48, 174
	.byte	208,  27, 223, 116, 197, 162, 209, 185, 221, 147, 187, 141, 253, 135, 239,  24
	.byte	 16,  58,  16,  74, 233,  76, 252,   8, 165, 208,  61, 156,  60, 211, 151, 200
	.byte	 12, 145, 148, 191,  10, 186, 144, 125,  26,  87,  71, 109, 131,  17,  17, 233
	.byte	 36, 131, 185, 153,   0,  82, 227,  26,  96,  80,  18, 238,   7, 158,  30, 239
	.byte	 17,  57, 238,  97,  66, 129, 214, 191, 217, 242, 246, 250, 103, 115, 130, 135
	.byte	120, 108,   0, 246,  74, 119,  75, 250,  87,  30,  58, 195,  50, 211, 143,  58
	.byte	207, 129, 180, 116, 174,  83, 160,  49, 176,  15, 238, 228, 122, 157, 182,  15
	.byte	246, 147, 103, 183,   2, 205, 125, 239,  18, 219, 176, 149,  87,  94,  51,  48
	.byte	 18, 111, 116, 206, 235,  23,  49, 167, 145,  47, 143,  99, 188,  19,  24, 201
	.byte	154, 211, 143,  64,  38, 230,  32,  74,  78, 105,  68, 174,  99,  53, 131, 143
	.byte	  8,  77, 170, 131, 251, 171, 233, 178, 189, 231, 211,  93,  37,  47,  10, 190
	.byte	 44, 253, 239, 175,  13,  93, 145,  66,  11, 229,  90, 198, 112,  38, 120, 137
	.byte	169, 190, 211, 110,  98,  49, 146, 156,  64, 186, 248, 141,  23, 136, 196, 204
	.byte	 54, 155,  85, 182,   8,  58,  98,  80, 150,  15, 221, 251, 232, 211, 184, 216
	.byte	 81, 222,  62, 250, 130,   1,  12, 164, 211,  46, 239, 169, 120, 110,  46, 109
	.byte	  6,  25, 105, 235, 196, 106,  60,  71,   8, 152, 211, 227, 223,  75, 219, 145
	.byte	136,  79,  17,  93,  67, 146, 230, 121, 233, 213,   3, 227, 208, 162, 153,  39
	.byte	 24, 219, 242, 234, 152, 236,  35,  87, 237, 214, 213,  60,  69,  15, 154, 254
	.byte	 91,  28,  75, 103, 161, 179, 219, 145,  72, 185, 220,   3,  58, 116, 161,  90
	.byte	 44, 174,  41, 152,  87, 233, 129, 152, 216,  11,  18, 155,  80, 232, 254,  97
	.byte	 20, 116,  97, 139,  64, 182, 124,  57, 123, 234, 183, 183,   4, 116,  32, 251
	.byte	104, 191,  46,   4, 191, 228, 155,  39, 222, 222, 138, 249, 191,  69, 200, 115
	.byte	 21, 230,  31, 130,   4, 174,  84, 131, 220,  65,  46,   3, 192, 121, 137, 184
	.byte	214,  70,  91, 110,   2, 127,  12,  63, 156,  95, 130,  90,  95, 211, 213, 203
	.byte	 61, 103, 169, 109,  63,  17,  79, 228, 246, 128, 115, 211, 213, 204,  13, 177
	.byte	164, 114, 112,  88,  67, 219,  10,  51, 131,  49, 101,  63, 140,  17, 251,   3
	.byte	 31, 195, 178,  98,  52,  37, 247,  74, 181, 205, 178, 140, 239, 185, 137, 215
	.byte	 62,  96, 224,  66, 214,   8, 192,  49, 119, 138,  68, 201, 210,  87, 151, 177
	.byte	250, 254, 120, 166, 233, 171, 118,  57, 130, 125, 210, 115,  15, 122, 177,  18
	.byte	  4,  33, 185,  90, 177, 141,  14, 178,  78, 254, 169,  71,  61,  73, 143,  46
	.byte	 24,  32,  76, 123, 177,  90, 156,  23, 239, 139, 137, 112,  73, 254, 249, 245
	.byte	166, 184, 130,  26, 129, 213,   4, 153,  12, 190,  25,  76,  53, 211, 172,  57
	.byte	 41, 177, 156, 224,  29,  29,  97, 187, 184, 164, 216, 198,  49, 179, 144, 221
	.byte	 64,  32,  42,   1, 243, 229,  75, 221,  89, 145, 146, 252,  42,  52, 166, 118
	.byte	 32,  17, 217, 175,  96, 172,  44,  25,  16, 217, 148, 133, 200, 167, 107,  49
	.byte	164,  42, 190,  69, 235, 122, 224, 129, 211, 233, 101, 136,  66, 217, 113,  73
	.byte	173, 181,  14, 232, 199,  60,  48, 194, 224, 225, 171,  42,  67, 197, 201, 220
	.byte	 50, 188, 133,  97, 111, 199, 192,  10, 184, 242, 170, 202, 149, 186, 170, 112
	.byte	 60, 221, 167, 111,  82, 153, 239, 253, 179, 157, 117,  99, 204,  68, 103, 156
	.byte	222, 227, 125, 107, 252, 158, 141,  94, 197, 240,  19, 133, 207, 110, 201, 186
	.byte	208, 141, 211,  33,  49, 117, 110,   8, 165, 185,  30,  64,  70, 237, 200, 230
	.byte	182, 186, 202, 135,  96,  45,  57,  73, 213, 143,  12, 243, 157,  51,  46, 157
	.byte	 56, 125, 194,  88, 104,  60,  90,   4, 210,   0, 225, 158, 213, 199,   1,  82
	.byte	 48, 163,  70,  82,  56,  25,   8,  53,  99, 155, 187, 149,  80, 217,  11,  80
	.byte	233, 163,  65,   6, 150,  49, 117, 248,  48,  43, 108,  26,  52, 159, 215, 130
	.byte	114,  50, 166, 171, 143,  86, 103,  10,  12, 173, 118,  94,  47, 175, 255,  33
	.byte	120, 168,  11,  76,  71,  16,  35,  30,  26,  55,  11, 230, 166, 128,  92, 170
	.byte	158, 197,  47, 110, 150, 201, 206, 201,  90, 213, 216,  81,  20, 177,  11,  20
	.byte	150, 188,  38, 209, 178, 253,  49, 222, 135, 101,  32, 224, 184, 177, 130, 126
	.byte	142,  45,  59, 146, 234,   6, 254, 200,  52, 110, 223, 179, 112, 113, 232,  67
	.byte	 99, 199,  59, 159,  59, 112, 138,  66, 175, 251,  27,  25,  85, 139, 238, 108
	.byte	248, 218,  27, 176, 247, 221,  48, 105,  91, 202, 149,  25,  52, 116, 222, 146
	.byte	 19, 190,  80, 250,   3,  91,  57, 204,  63, 151, 231, 146,  47,  90, 131, 201
	.byte	 34, 223, 221, 159, 249, 188,  17,  53,  96, 249,  89, 161, 110,   9, 173, 252
	.byte	232,  29, 217, 138,  38, 176,   9,  74, 108, 237, 212,  82, 173, 232, 237, 143
	.byte	 38, 235, 222,  14,  75,  16, 210, 149,  23, 131, 174, 213, 143, 200,  18, 216
	.byte	 54, 243, 208,  39, 189, 255, 250, 240, 179,  42,  79, 102,  16, 174, 223, 209
	.byte	166, 217,  70, 182,   3, 148, 181,  84, 220, 135, 178, 167,   1, 101, 208,  45
	.byte	120,  53,  29,  86, 224,  91, 201, 217, 116, 241, 199, 103, 188, 192, 212, 156
	.byte	194, 147, 235, 130, 178, 155,  15, 166,  28,   8,  14,  71,   8, 220, 108, 203
	.byte	229,  17, 159, 134, 108,  96, 125, 140,  86, 244,  40, 248,  71, 117,   2, 173
	.byte	 54, 230, 192,  84, 171, 181,  36, 162, 146,  80, 235,  83, 110, 242, 101,  95
	.byte	 60,  32, 215,  89, 237,   6, 221, 136, 102, 162, 154, 192, 153, 215,  39,  37
	.byte	236,  32,  22,  24, 239, 106, 224, 245, 166, 173, 155, 192, 121, 107, 113, 241
	.byte	  1, 119,  56, 203, 235,  91, 107, 184, 248, 178, 238, 196, 218, 164, 228, 109
	.byte	 88, 154,  47, 232, 103, 117,  46, 102, 116, 128, 253, 217, 213,  70,  25, 255
	.byte	156, 219, 185,  53,  64, 248, 249,  96,  34, 230, 151,  83, 150, 217,  98,  34
	.byte	216, 155,  22, 248,  47, 218, 170, 201, 178,  71, 158, 108, 160, 255,  57, 138
	.byte	174, 120, 115, 100,  38, 166, 189,  31,  12, 226, 115,  73, 221,  87, 173,  36
	.byte	  8, 231, 109, 118, 220,   5, 157, 149, 141,  52, 239, 221, 250,   0, 168, 167
	.byte	  2, 153, 119, 129,  48,  37, 189, 212, 192,  79, 231, 243, 165, 145, 192,  95
	.byte	 50,  28, 107,  22, 232,  81,  28,  57,  36, 171,  92, 186, 139, 233, 137,  96
	.byte	137, 113, 126,  95,  26, 122, 178,  60, 213,  95,  21,  50, 119, 173, 137, 245
	.byte	148, 255,  55,  84, 249, 183, 198,  85, 230, 146, 169, 105, 243,  19, 234,  93
	.byte	 69, 122,  57, 218, 193, 155,  92, 198, 246, 219, 156, 147, 116, 176, 248, 175
	.byte	120,  24, 113, 244, 223, 147, 102,  29, 100, 219,  26,  46, 160, 213, 162, 208
	.byte	146, 115, 124, 207,   2,   4, 107, 129, 104, 194, 181, 174,  36, 214,  74, 176
	.byte	 80,  92,  86,   6, 220, 244, 247,  93, 155,  66,  17, 237, 206, 239, 195, 239
	.byte	155,   8, 246,  70, 101, 119,  10,  97,  15,  83,  79, 178, 237, 170,  24, 171
	.byte	 62, 229,  79,  30,  86,  84, 250,  36, 142,   0,  12,  52,  81, 153,  56,  76
	.byte	205, 119, 148, 230, 209, 233, 198,  50,  77, 202,   4, 117,  38, 154, 202, 252
	.byte	250, 101, 183, 253, 157, 219, 234, 255, 149, 193,  73,  10,  71, 140, 170, 178
	.byte	 48,  79,  33, 176, 234, 137,   9,  44, 153, 230,  38, 118, 185, 241, 156, 145
	.byte	186,  51, 209,  36,  34, 239, 139, 234,  24, 174, 140, 207,  44, 209, 107,  50
	.byte	 40,  27,  47, 158, 254, 213,  46,  71,  31,   1, 177, 181, 217, 238, 125, 252
	.byte	  4, 192, 138,  87,  59,  30, 220, 218, 249, 197, 189,  46, 251, 163,  68,  68
	.byte	113, 170, 194, 187,  34, 160,  53,  20, 246, 192, 239, 174, 211, 231, 199, 178
	.byte	246, 122,  88, 120, 227,  19, 235, 128,  68,  22, 102,  35, 100, 157, 166,  66
	.byte	237,   0,   2, 241, 199,  28,  31, 207, 226, 170,  75,   0, 156,  67,  93, 204
	.byte	118,  84,   6, 104, 190, 161,  63,   6,  81,  80, 188, 251,  22, 156, 191,  13
	.byte	 42, 238,  50, 125,  12,  76, 107, 174, 114, 251, 207, 134, 150, 157, 115, 174
	.byte	  6, 133, 103, 145,  58,  43, 215, 133, 247, 169,   0, 129,  45, 119,   1, 105
	.byte	124, 125,  25,  34, 135, 227,  33, 175,  29,  65, 224, 116, 238,  87, 103, 126
	.byte	  4, 162, 154, 124,  57, 247,  27,  47, 227,   0, 160, 131, 142, 170, 181,  26
	.byte	156, 221, 163,  35, 247, 109, 177, 176,  53, 144, 158, 186, 182, 103, 180,  49
	.byte	 14,  86,  26,  65, 199,  77,  96, 235, 226,  54, 120,  37,  91, 251,  94,  63
	.byte	162, 187, 168, 213, 138,  83,   1, 142, 254, 125,  53, 160, 207, 174,  15,  75
	.byte	152, 238,  90, 211,  32,  70, 231, 216,   9,  60, 235, 112, 234,  91, 185,  19
	.byte	131,  80,  94, 102, 181, 133,  80,  97, 107,  46, 107,  79, 133, 123,  95, 248
	.byte	 76,  39,  78, 224,  89, 239,  70,  80, 133, 193,  13, 155, 130,  97, 123,  51
	.byte	 42, 175, 139,  57, 231, 214, 236, 221,  30, 174, 198, 146, 226, 132,  33, 150
	.byte	180, 138, 209, 247,  38,  12,   0,  81,  52, 209, 191,  60, 181,  67,  43, 172
	.byte	134,  81, 100,  72,  72, 136, 145, 229,  83, 175, 244,  64, 255,  95,  33, 149
	.byte	 72,  77,   1, 108, 173,  30,  88,   1, 194, 109, 140,  56, 235,   7,   0, 242
	.byte	 82, 238, 117, 162, 207, 129,  21, 143, 191, 150, 141, 209,  96, 244, 151,  88
	.byte	236,  33, 147, 134,  89, 184, 104, 163,  84, 170, 151,   5, 145,  82, 104,  20
	.byte	 49, 174,   9, 227,  12,  53, 173,   7,   7, 122, 255, 199, 114, 108, 139, 139
	.byte	156, 102, 237, 129, 170,  85,  71,  63, 255, 240,  86,  44, 247, 149, 205,  66
	.byte	201, 192,  34,  86, 194,  93, 125,  22,  32, 116, 123,  78, 158,  57, 100, 177
	.byte	 88, 211, 120,  65, 186, 204,  57, 252, 124, 254, 193, 191, 207, 241,  90, 163
	.byte	103, 226, 188,  63, 159,  19, 151,  27, 136, 218, 187, 209, 176, 132, 169,  45
	.byte	222, 242,  21, 133,  65, 133, 191, 253, 226, 154, 104,  41,  18,  53,  60, 246
	.byte	 10,   2,  85,  57,   4, 142,  30, 143, 102, 197,  43, 184, 192,  24, 124,  51
	.byte	254,  33, 222, 230,  41, 154,  55, 130,  67, 244,  20,  88,  31, 126, 113,  33
	.byte	238, 140,  10,  74,  14, 245, 204,  59, 111, 105, 122, 108, 139,  84, 248,  66
	.byte	162,  97,  68,  91, 127,  47,  50,  47, 232,  93, 101, 237,  19, 102,   2, 122
	.byte	158,  62, 192,  98,  18,  39, 206, 234, 179, 236,  51, 240, 171,  33, 106,  26
	.byte	  8,  34, 108, 116, 208, 186, 103,  18, 132, 213, 103, 167,  74, 156, 240,  85
	.byte	215, 239,  27, 118, 187,  87, 175, 162, 166,  73, 248, 141,  89, 163,  86,  13
	.byte	 24, 202, 113, 231,   8, 160,  99, 116, 107, 102, 218, 169,  80,  86,   1, 193
	.byte	245,  96,  44,   1, 147,  82,  98, 120,   3, 229, 242, 238,  59,  60, 247, 107
	.byte	112, 243, 201,  14, 213,  46, 130, 208, 175,  88,  73, 183, 125, 199,   2, 187
	.byte	126, 187,  31,  11,  60,   2, 110,   6,  42,  52, 244, 248, 144, 205,  83, 168
	.byte	 80, 246,  44,  98, 184,  48,  89, 201, 155, 171,  46, 220, 171,  76, 125, 216
	.byte	206, 167, 239,  32,  20, 130, 216, 214,  54, 232,  51, 143, 165, 147, 250,  97
	.byte	 48, 147, 249, 204,  12, 111,  39, 179, 185, 115,   5, 140,  59,  48,  17,  78
	.byte	206, 115, 164, 216, 225, 188,  69, 118, 171,  61, 238, 105, 138, 126, 106,  71
	.byte	238, 244,  57, 177,  79,  58, 215,  67, 144,   4,  42, 237,  97,  72, 228, 173
	.byte	122, 204,   8,  84,  65, 162,  69, 223,  52,  97,  33, 117, 146,  35, 203, 106
	.byte	 70, 115,  59,  61,  49,  35,  46,  88,  21, 129,  86, 227, 223, 159, 208,  99
	.byte	127, 196,  47,  11, 236,  72, 223, 103,  33, 100, 142,  84, 248, 166,  98, 127
	.byte	 94, 172,  10, 100, 161, 236,  48, 212, 233,  46, 164, 210, 246, 228,  51, 246
	.byte	156, 108, 134,  48, 145, 164,  27,   0, 210, 234,  14, 137, 131,  93, 168, 233
	.byte	234, 250, 144,  96, 172, 186, 178,  91, 158,  81, 174, 255, 170,  45, 201, 122
	.byte	201, 155, 160, 227, 163,  23,  26,  82,  87, 105, 122, 196, 251, 240,   0, 170
	.byte	 98, 110,  81, 239,  56, 125,  31,  94, 133,  85, 154,  39,   3,  52,  96, 213
	.byte	194,  21, 194, 164, 235,  79, 173,  95, 148, 226,  47, 172, 114, 101,  93, 173
	.byte	  8,  17, 170,  60,   0, 149, 210, 219, 213, 177, 133, 141, 251, 250, 249, 235
	.byte	 93, 237, 205, 212,  58,  65, 187,  32,  67,  57, 112, 213, 112, 155, 245, 183
	.byte	208, 166,  57, 131,  78,  25,  46, 220,  60, 184, 141,  72,  37, 196, 238,  13
	.byte	239, 106,  73, 108, 220,  85, 116, 122, 131, 181,  95, 234,  78, 192, 156,  46
	.byte	252, 116, 232, 150,  51, 220,  55, 112, 167, 182,  10, 227, 104,  88, 136,  11
	.byte	 78, 184,  40, 143,  91,  80, 187, 181,  11, 216,  85,  36, 184, 246, 129, 231
	.byte	102,  10,  33, 119, 133, 212,   0, 187,  10,  50, 255, 113,  20, 225,  39,  88
	.byte	252, 218,  82, 173, 189, 122,  23,  50, 182, 147, 245,  61, 186, 148,  59,  83
	.byte	214, 207, 233, 241,  36,  56, 198, 172,  59, 188, 236, 239, 221,  12,  87, 220
	.byte	 63, 203,  59, 136, 253, 100,   6, 239, 215, 242, 126,  21, 216,  93, 204, 197
	.byte	 92, 153,  16, 163, 247, 189, 210,  90, 222, 149,  43, 140,  85, 240, 159,  84
	.byte	 68,  96,  57, 217,  55,  52, 203, 241, 146,  84,  49,   3,  57, 177, 241, 122
	.byte	224, 189, 118, 129,  21, 174, 128,  97,  23,  90, 102,  89, 141, 229, 113, 162
	.byte	148,  49, 205,  52, 141,  57,  78, 125, 152,  61, 223,   6,  70, 225, 239,  38
	.byte	 70, 192,  40,  27, 108, 134, 208, 130,  60,  86, 179, 157,  81,   0,  44, 220
	.byte	116,  73,  63,  72,  99, 249,  38, 230, 242,  68,  35, 243, 184, 198, 147, 169
	.byte	142,  73,  12, 244, 112, 112,  74, 233,  57, 194,  76, 162, 157, 242,   9,  64
	.byte	 79, 202, 204, 227, 214, 225,  87,  69,  98,  36,  95, 160, 169, 108,  53, 146
	.byte	 78, 147, 253,  34,  66,  38,   9,  40,  64, 200, 152,  59,  73, 191,  66, 160
	.byte	235,  36, 127, 169,  67,  33,  79, 212,  39,  17, 202, 217, 223, 101, 150,   9
	.byte	 34, 237,  45, 214, 254,  91, 195, 158,  22,  11,  49, 126,  49, 109, 192,  77
	.byte	 16, 239, 220,  90,  91, 113, 197,  52, 203,  65, 247,  14,  10, 236, 162,  84
	.byte	128, 104, 250, 111,   8, 243, 191,  43, 159, 170,  53, 162, 252,  74, 112,  62
	.byte	 50, 160, 127, 106, 212, 129,  88,  64,  32, 231, 198, 238, 147,  15, 154,  35
	.byte	 16, 226, 248,  52, 244, 177, 173,  59, 177,  31, 122, 184,  47,  88, 108, 142
	.byte	212, 239,  30,  42, 151,  16,  10, 153, 197,  57,  10, 162, 135,  67, 153,   5
	.byte	218, 176, 248, 100,  69,  32, 196, 107, 114,  37,  13, 149, 249, 133, 159,  94
	.byte	 30, 166, 246,  33, 175, 163,  11, 131, 240, 216, 219,  48,   4, 208, 199,  58
	.byte	 70, 229,  87, 134, 233,  91, 202, 202,   0, 163, 201, 106, 207, 139,  38,  86
	.byte	 67, 191, 164, 129,  70,  52, 122,  19,   9, 171, 143, 234, 215,  11,  49,  94
	.byte	 58,  90, 205,  81, 246,  92, 116,  81,  55, 119, 141, 171, 155,  13,  62,  57
	.byte	 89, 140, 235,  54, 135, 125, 255,  94,  82,  14,  60, 189, 113,  40,  28,  79
	.byte	192, 185, 152, 165,  22,  38, 134, 246,  91, 145, 128, 128, 123,   3, 254, 215
	.byte	251, 139, 108, 249, 145,  92,  21,  85,  92, 183,  88,  20, 196, 134, 128, 143
	.byte	176,  28, 196,  45,  18,  98, 107, 255,   1, 212,  41, 213,  28, 130, 234, 196
	.byte	 64,   3,  57, 245, 106,  96, 160, 144, 224,  28, 127, 206,  63, 182, 141, 219
	.byte	250, 197, 145, 187,  40, 144, 212, 126, 185, 204,  19, 218, 235,  41, 195,  64
	.byte	169, 243, 115, 161,  58, 219, 200,  53,   2,  45, 129, 166, 141,  87,  65,  19
	.byte	174, 101, 122,  73, 171,  95, 132,  44,  25, 197, 234,  67, 228, 240, 112,   3
	.byte	142,  99, 147,  21, 119,  28, 199, 160,  78,  37,  55, 163, 153, 127, 247,  87
	.byte	138,  23,  48,  67, 109,  91, 219, 111, 157,  20, 162,  49, 153, 119, 119,  36
	.byte	141,  11, 212, 113, 148, 246, 234,  65,  22,   7,  57,  54, 198,  66, 190, 224
	.byte	 62,  99, 210, 109,  14, 185, 247,  13, 105, 249, 128, 199, 117,  96, 136,  47
	.byte	133,  70,   0, 124,  35, 244, 107, 107, 165, 184,  19,  85, 159, 142,  17, 227
	.byte	164, 201, 117,  86, 175,   3, 239,  98, 233, 173, 179, 231, 224, 114,  45,  83
	.byte	118,  23,  41,  27,  90, 185, 239,  19,  91, 157, 172, 159,  56,  65,  81, 221
	.byte	 94, 195, 239, 196, 160, 155, 148, 230,  14, 115, 253,  65, 119, 236, 204, 182
	.byte	141,  11, 230, 105,   9, 223,  64, 126, 141,  42,   6, 102, 176, 200,  81,   9
	.byte	112, 254, 177,  95, 130, 233, 215,  65, 128, 124, 131, 225, 113,  67, 184, 155
	.byte	 81,  65, 252, 248, 128, 135, 111, 168, 112, 168,  92, 159, 139, 160,  61, 232
	.byte	 30, 141,  62,  65,  19,  29, 129,  11,  87, 106, 152, 173, 144, 143, 212, 239
	.byte	171,   0, 154, 216,  59, 157, 207, 243,  50,  51, 247, 117, 166,  24,  85,  12
	.byte	252,  16,  90, 104, 110,  62, 213, 155,  66, 176, 134, 234, 184, 107,  39, 125
	.byte	148, 193, 238,  25, 195, 182, 218,  77, 238,  52, 131,  29, 161, 138,  53,  31
	.byte	214, 196,  59, 227,   4,  89,  39,  32,  35,  89, 159,  13, 159, 203,  91, 242
	.byte	155, 251,  63,  49, 110,  42, 192, 237, 144,  63,  45,  58, 127,  14, 243, 114
	.byte	 64, 154,  85, 120, 247, 100, 248, 151,   5, 137,  34, 213, 156, 198, 239,  25
	.byte	  1, 122,  62,   0, 192, 115, 212, 182, 114, 236,  96, 171, 138, 163, 194,  53
	.byte	152,  11, 123, 166, 129, 236, 255,  32, 154,  34, 239, 236,  20,  49, 141,  90
	.byte	106,  82, 134, 149, 159,  41, 195, 144,   1, 171,  47, 107, 242, 194,  16,   9
	.byte	188,  41,  27,  43, 231,  21, 180, 199, 188, 231,   2, 240, 142, 243, 250, 140
	.byte	 24,  71,  19, 171, 102,  25,  57, 203, 186,  23,  81,   2, 159, 171,  98, 110
	.byte	198,  71,  99,  37,  95, 131, 105, 153, 236, 138, 125, 161, 120, 128, 178, 220
	.byte	186, 111, 150,  19,  92,  99,  48, 212,  44, 244, 222,  41,  41, 171, 126, 212
	.byte	144, 245, 107,  91, 154, 155,   8, 155,  89, 202, 181, 125, 165, 139, 207, 181
	.byte	118,  48, 234,  18, 126, 255,  38,  49, 182, 141,  27, 186,  48,  78,  30, 250
	.byte	208,  71,  54, 200,  90,  49,  76,   6, 150, 149, 228, 207, 106,  23,  67,  60
	.byte	150, 237,  29, 122,  14,  46, 217,  48, 186, 158,   8, 161,  41,  17, 134, 141
	.byte	220,  68,   4,  13, 225,  24,  95,  22, 136, 147, 102,  63,  59,  89,   3,  19
	.byte	170, 131,  62,  50,  79, 176,  55,  22,  81, 249,  51, 167,  71, 102, 133,  87
	.byte	250, 125,  50,  32, 111, 196,  72, 115,   7,  68,  69, 251, 210, 130, 205, 117
	.byte	163, 207, 105, 140,   1,  46,  73,   2, 158,  67, 199,  42, 210,  22,  32,  12
	.byte	120,  88, 145, 130,  11, 124, 132, 216,  82, 224,  73, 154,  49, 201,  91, 173
	.byte	157,  61,  20, 248,  95, 224,  26, 247, 146,   5, 122,  77, 209, 199,  15, 251
	.byte	124, 217,  88, 254, 201, 249, 223,  80, 190, 155, 102, 172, 118,  36, 108, 190
	.byte	233, 193, 104, 246,   0, 211, 169, 254,  93, 237, 161,  58, 208,  12, 230, 114
	.byte	194,  56, 247, 109,   9, 223, 126, 233, 191,  59,  24,  80, 127, 225,  52, 171
	.byte	 82, 184,  53, 199,  63, 225,  67,  65,  92,  66, 119, 237, 157,  22, 235,  38
	.byte	104,  32, 100, 170, 228,  20,  73, 182, 174, 254,  18,  18, 205, 182, 194, 125
	.byte	227,  23,  57,  81,  14,  37, 122,  42,  56, 144, 106, 116, 227,  78,  23, 217
	.byte	 58, 211, 144, 209,  22, 149, 185,  55,  13,  37, 250, 246,  56, 160, 212,  83
	.byte	 82,  79,   7,  60,  91, 215,  90, 213, 105,  91, 143, 114, 247, 118, 121,  11
	.byte	  4, 100, 186,  47, 163, 176,  18, 120,  52, 111,  69, 217,  10, 163, 241, 223
	.byte	  7, 230, 144, 218, 202, 211, 145, 240, 196, 188, 123,  30, 173, 174, 209, 134
	.byte	186,  83,  37, 151, 201, 149, 152,  38, 185, 213,  63,  60, 194, 145,  80, 126
	.byte	 11, 202, 113, 173,  13,  83, 206, 216,  31, 190, 246,  46,  92, 115,  43, 244
	.byte	108,  36,  78,  32,  48, 169, 114, 217,  34, 177,  87,  90,  50,  99, 216,  80
	.byte	224, 165,  67, 231,  13,  49, 203,  93,  89,  30, 206, 172, 216, 229,  66, 157
	.byte	222, 182,   3,  73, 111, 138, 200,  75, 125, 131,  33,  77,  84, 216, 145,  30
	.byte	238, 233,  83, 219, 202,  15, 246, 242, 235, 194,  57, 214,  36,  54, 149, 203
	.byte	146,  50,  53, 229, 149, 147,  25, 156, 210, 126,  14,  46,  49, 137,  12,  18
	.byte	185, 240,  38, 248, 147,   4,  79,  98, 224, 155,  92, 214, 219, 204,  26, 153
	.byte	248, 101, 207,  64,  84,  13,  30,   9, 218, 137,  54, 214,  18,  52, 194,  61
	.byte	206,  27, 223,  42,  53, 211, 107, 221, 220,  83,  31,  46, 111, 246,  85,  37
	.byte	 68, 169,  97, 160,  10,  66,  18,  50,  39, 152, 154, 227, 150,  11, 153, 130
	.byte	122,  85,   0, 158,  93,  85, 122, 154, 232, 255, 216, 215, 142,  58, 184, 133
	.byte	 54, 183,  44,   7, 223, 220,  23,  64, 249, 109, 105, 189, 116, 116,  98,  67
	.byte	 33,  88,  24, 183, 126,  88, 129,  61, 158, 167, 132, 122,  67,   2,  13,  81
	.byte	190, 219, 223, 222,  82, 210,  75, 124,  46, 224,  79,  59, 253, 177, 152,  95
	.byte	 71, 113, 128, 223, 166, 126, 137, 100,  97, 217, 126,  26, 156,  78,   0,  17
	.byte	 18, 223, 248,  57,  61,  85, 202, 104,  23,  37,  75, 104,  59, 107, 230, 243
	.byte	117,  39,  27, 229,  53, 159,   3,  78, 157, 129,  20, 137, 252, 249, 218,  37
	.byte	114, 113,  92,  56, 138,  49, 247, 111, 115,  79, 207,  66,  53,  26,  46,  90
	.byte	170, 206, 140, 101,  90, 104, 200, 117, 151, 230,  23, 221, 104,  15, 165, 172
	.byte	 46, 154, 144, 126, 132,  40,  40,  21, 217,  78,  60,  50, 239, 127, 252, 213
	.byte	 24, 221, 194, 219, 223,  37, 134, 110, 140, 248, 232, 104, 110, 225, 233, 113
	.byte	246,  77, 117,  12, 224, 160,  36, 184, 134, 132, 222, 177, 107,  73,  26, 160
	.byte	112,  23,  89, 172, 177, 153, 107,  88,  89,  88, 124,  53,  57, 181, 166, 106
	.byte	 16,  66, 194, 136,  71,  34, 158,  58,  51, 114,  18,  50, 244, 215, 149, 235
	.byte	 69,  39,  29,  16, 128, 139,   6, 195,  82, 145,  54, 190, 198,  39,  16, 147
	.byte	 44, 170,  39,   5,  25, 169, 181, 142, 145, 226, 254, 170, 139,  20, 218, 233
	.byte	 30,  80,  26, 239, 252, 112, 187,  16,  30, 109,  48, 119,  92, 177,  58,  50
	.byte	138, 144, 190,  55, 139,  98, 185, 241, 108, 255,  49,  48,  34, 223, 255,  73
	.byte	 28, 103,  70, 149, 216,  15, 254,  56, 102,  67,  49, 188, 250,  72, 124, 220
	.byte	244,   0, 141,  48, 210, 101, 188, 109, 186,  69,   5,  18,  33,   3, 156, 140
	.byte	201, 135, 174, 100,  67, 250,  27,  95, 100, 211, 111, 101, 102, 193, 125,  21
	.byte	 90,  54, 153,  27, 184, 236, 165,  70,  20, 190, 185,  98, 179,  85,   4,  30
	.byte	133, 226, 118, 130, 206, 146,  63,  44, 224,  27, 161, 200,  81, 181, 139, 159
	.byte	176, 236, 126,  40,  58, 120, 158, 124,  25,  86,   0, 136, 228, 239, 235, 212
	.byte	139, 161, 142, 227, 225,  83,  99, 226,  47,  25, 180,  31, 223, 246, 149, 241
	.byte	 34, 219, 208,  12,  88, 169,  81, 207, 222, 191,  93, 202,  41, 151, 211, 108
	.byte	186, 212, 119, 134, 201,   7, 142, 124,  58, 119,  78, 113, 205, 196, 242, 204
	.byte	208, 217, 244,  87,  12,  63, 122,  71, 124,  53, 197,   5, 102,  31, 110,  32
	.byte	245, 105, 131,  17, 203, 114, 209,  55, 214,   1, 255, 149, 136, 124,  56, 148
	.byte	 34,  17,  71, 236, 130, 165, 127, 160, 162, 158,  12,  68,  14, 248, 126,  15
	.byte	 76,  61, 248, 150, 195,  81, 212,   4, 138,  97, 180,  38, 175, 130, 112, 193
	.byte	242, 232,  56,  95, 131, 218,  66, 236,  56,  91,  75, 251, 127, 239, 187,  96
	.byte	211, 156,  89, 136,  45, 201, 104,  91, 168,  41,  19, 249, 240, 211, 239,  92
	.byte	198,  31,  27, 253,  14, 217, 127, 161, 222,  79, 126,  70, 150,  64, 122,  67
	.byte	169, 157, 220,  98, 112,  58, 252, 156, 254, 201,  33,  48, 103,  47,  41, 115
	.byte	206,  58,  43, 150,  29,  75, 228,  79, 222, 239, 105, 212,  49, 225,  64, 233
	.byte	115, 216, 103,  56, 147, 167, 126, 215,  35, 137,  11,  79, 153,  42,  30,  24
	.byte	198, 147,   8,  71, 106, 146, 127, 193,  90, 222,  49, 224, 227,  47, 131, 144
	.byte	 99,  37,  55,  70,  95,  46, 187, 158, 223, 221,   3, 188, 109,  38, 113, 140
	.byte	 64, 177, 121,  10,  63,  63,  46,   8, 185, 235, 120, 133, 104,  27, 169,  78
	.byte	 73, 215, 143, 155, 199,  12,  44,  92,  77, 176, 212, 128, 196, 195,  70, 245
	.byte	154, 108, 241, 190, 234, 188, 189,  21,  44,   5,  14, 114, 202, 175, 108, 151
	.byte	198, 172,  40, 184,  36, 214, 255,  85, 240,  87, 253,  72, 102, 136,  88,  47
	.byte	146, 183, 162,  60,  82,  84, 228, 142, 116,  54,   0, 203,  22, 201, 144, 172
	.byte	119,  29, 186,  98,  39, 106, 121,  15, 166,  50, 139, 131, 103, 213, 163, 199
	.byte	 34, 102, 178,  59, 102,  68,  35, 144, 163,  72, 208,  68,  36, 106, 105,  36
	.byte	 13,  90, 109, 178,  91,  27,  84, 211,  39, 126, 163, 173,  83,  50,  75, 222
	.byte	144,  65, 107,  81,  31,  71,  20, 189, 171, 250,   8,  46, 123, 112, 160,  10
	.byte	226,  18, 110, 243, 196,  69,  94, 225,  94, 206,   3, 204,  16,  31, 246,  99
	.byte	198, 100, 254,  39,  54, 240,  17,  65, 227, 228, 224, 112,   3, 203,  96, 214
	.byte	 85, 217, 113,  17,  21,  39,  81, 143,  34,  56,  60, 220, 214,  31, 167, 139
	.byte	144, 141,  35, 157, 142, 115, 253, 100,  68,  30, 205, 171, 172, 140,  25,  32
	.byte	165, 154, 202, 166,   2, 164,  43, 154, 190, 216,  14, 174, 160,  99,  93, 143
	.byte	108,  28,  86, 249, 227, 236,   6, 222,  35, 203, 247,  89, 132, 221, 165,  26
	.byte	144, 104, 245, 204,   9, 163, 173, 114,  16, 111, 162,  42,  55, 233,  68, 139
	.byte	176, 115, 115,  78, 202,   7,  81, 180, 133, 227,   9,  10,  67, 240, 189, 157
	.byte	101,  42,  86, 122, 229,  61, 187, 106,  10, 202, 107, 190,  14,  43,  86,  75
	.byte	142, 185, 144,  19,  96,  25,  61, 222,  90, 181,  20, 136, 175, 233, 174, 125
	.byte	231,  10, 134,  98, 241, 111, 181,  74,  69,  50, 201, 125, 129, 108, 137, 176
	.byte	194,  71,  12, 108, 197,  14,  52,  72,  83, 210, 217, 200, 159, 198,   2, 202
	.byte	 36, 119, 124,  66, 204,   5, 212, 132, 226, 133, 143,  33, 249,  34, 157,  76
	.byte	134, 119, 169,  93, 129, 207, 205,  72, 123, 148, 168, 219, 232, 148, 237,  92
	.byte	197,  55, 156, 226,  16, 181, 198, 182,  74, 166, 227, 179,  41,  36, 205, 218
	.byte	240, 200, 246, 187, 175, 252,  51,  33, 120, 232, 118, 214,  99,  44, 100, 147
	.byte	 36, 237, 178,  33,  12, 173, 168, 206, 226,  80, 190,  72, 165, 194, 169, 174
	.byte	166,  50,  32,  50,  85, 193, 205,   5,  21, 240,  86, 170, 222,  77,  61, 252
	.byte	229,  76,  83, 158,  83, 251, 227, 211, 100, 176,  30, 250, 246, 107,   7, 146
	.byte	174,  53, 254,  74, 198, 180, 132, 137, 181,  54, 204, 127, 127, 241,  96, 221
	.byte	200,  68, 117, 211, 190, 223, 120, 145,  41, 172, 139,  86, 103, 224, 234,  25
	.byte	190, 219,  77,  85, 136, 215, 102, 161,  52, 111, 229,  32, 156,   8,  65,  84
	.byte	105, 251, 249,  74,   2,  71, 208, 229, 249, 250, 122, 190, 184,  84, 175,  85
	.byte	 40, 140,  10,  98,  67, 231, 185, 231,  39, 239,  13, 204,  23,   2, 160, 175
	.byte	 93,  91, 134, 149, 166, 118, 183,   0,  99, 136, 120,  49,  83, 231,  55, 247
	.byte	 72,  70, 244,  59, 128, 119, 220,  92, 167,  57, 197,  65,  89,  19,  42, 172
	.byte	101, 232,  50, 126, 178, 158, 237, 240, 175,  79, 212,  27, 151, 249, 104,  92
	.byte	252, 132,  21,  56, 175,   2,  73, 151, 248,  54, 198, 213, 234, 133, 163,  20
	.byte	198, 205,   3, 160,  72, 182,  97, 140, 115, 131,  35,  73, 232,  41,  14, 198
	.byte	 76, 253,  98,  32,  73,  26, 113, 220, 129,   5,  62,   3,  31, 137,  64, 237
	.byte	188, 133, 132, 127, 172, 150,  64, 131,  15, 125, 101,  70,  84,  71, 248, 198
	.byte	104, 254,  38,  21, 140,  13,  90, 249,  54,  73,  50, 250,  64, 122, 121,  94
	.byte	 21, 221,   1, 117,  36,  58, 233, 101,  61,  93,  97,  17, 215, 253,  19, 160
	.byte	 38,  57, 165,  31, 145, 111, 202, 113,   4,  68, 158, 206, 225, 227, 125,  83
	.byte	102,  92, 239,  88,  49,  68, 104,  79,  41, 152, 239,  17, 220, 151,  44,  14
	.byte	  6,  54,  42,  45, 240,  27,  71, 136,  74, 166, 167, 131, 143,  12, 109, 127
	.byte	152, 170, 208,  46,  51, 231, 197,   1, 123, 197, 211,  22,  56,  77, 168,  10
	.byte	242, 217, 202, 211, 102, 181, 103,  42, 100, 112, 121, 179, 214, 121, 153, 238
	.byte	 12, 239, 226,  26, 228, 253,  42, 198, 149,  64, 127, 230, 207,  44,  18,  78
	.byte	124,  48, 195, 214, 197, 235, 101, 255, 214,  35, 214, 254, 177, 202,  99, 149
	.byte	 27, 246, 178, 128, 175,  45,  61,  35, 127, 120,  67, 247, 134, 191,  86, 222
	.byte	112, 245,  10, 119, 104,  68, 133, 240,  16,  47, 176, 115,  83,  60, 115,  35
	.byte	249,  38,  78,  72,   9,  43,  54,  88,  43,  27,  13, 104, 178,  13,  65, 151
	.byte	  2,  86, 135, 203, 232,  52,  94, 253, 151, 127, 196, 201, 217,  13, 246,  70
	.byte	100, 246,  67,  98, 141,  33, 218, 156,  97, 213, 135, 228, 207, 155, 241, 114
	.byte	130, 253, 232,  53,  52, 145, 148, 235, 122, 187,  51,  96, 182, 174,  95, 252
	.byte	 42, 169, 119,  58, 148, 252,  20, 228,  50, 187,  34,  28, 139, 146,  44, 208
	.byte	 12,  57,  29,  37,  49, 173,  47,  33, 187, 162,  66, 114,  92,  37, 149, 114
	.byte	168, 187,  26, 174, 240, 253, 134,  70, 119, 193, 140, 126, 194, 124, 108, 113
	.byte	156, 207,  56, 123, 175,  17,  68, 177,  60,  67,  88, 249,  59, 112,  47,  64
	.byte	 71, 113,  53, 249, 139, 109,  26,  75,   3, 214, 142, 175, 203, 235, 170, 202
	.byte	206,  34, 100, 184, 248, 189,  37, 108, 253, 236,  68,  70,  63,  70,  25,  64
	.byte	 12, 124, 146,   3,  46, 105, 216, 234,  98, 212, 250,  95,  64, 222, 149, 188
	.byte	218,  31, 171, 207, 125, 207,  58, 239, 110, 152,  67,  80, 210,  86, 177,  17
	.byte	 52,  78, 240, 110, 129,  73,  10, 206,  78,  81,  60, 155, 112, 224,  58, 105
	.byte	 38, 125,  14,  24,  42, 172, 197, 167, 148, 222,  37, 189, 211, 126,  30,   5
	.byte	101, 203, 114, 114, 233, 235, 162,  53, 197,  20,  95, 166, 225, 227, 216, 153
	.byte	224, 100, 225, 161, 243, 233,  73, 119,  70, 222, 197, 208, 188,  95, 143, 198
	.byte	 62, 180, 119,  93, 157,  38,   5,  45, 207,  89, 178,  11,  93, 145, 192, 195
	.byte	 18, 170,  38,  75,   3,  83,  45, 123,  75, 146,  59,   9,  32,  58, 185, 142
	.byte	 94, 158, 158,  91, 203,  65, 182,  54,   1, 137,  68,  80,  89,  65, 123,  25
	.byte	 98, 242,  46, 243, 191, 242,  11,  85, 116, 240, 121,  51,  12, 183, 204, 228
	.byte	156, 190,  14, 195,  49, 158,  79, 174,  31,  21, 152,  60, 175, 129, 177,  47
	.byte	252, 218, 156,  57, 171, 119,  13,  73, 152,  24, 145, 159, 238,  40, 130, 100
	.byte	 94,  94, 255,  28, 135, 252, 248,  94, 169,  92, 146, 201, 100,  12,  92,  15
	.byte	254, 180,  92, 204,  96, 144, 206,  18, 178, 228, 172, 108, 214, 220,  47, 172
	.byte	 32, 103, 232,  93,  40,  49, 101,  96, 232,  12, 151,  96,  19,  77,  79, 229
	.byte	 18, 159, 149, 233,  97, 157,  75, 180, 130,  80, 242,  44, 138, 134,  72, 183
	.byte	127, 195, 188, 122,   2, 246, 110, 168,  51,  65, 234,  44,  62,  16, 164,  11
	.byte	206,  57,  98,  41, 122, 237, 202, 229,  87, 100, 206, 139,  55, 216, 100, 139
	.byte	241,  41, 204, 191, 198,  49, 225,  41,  69,  44, 177,  62, 209, 191,  92,  14
	.byte	154, 213,  32, 198, 142,  74, 191, 191, 120,  21,  25, 192, 178, 123, 201, 254
	.byte	138, 212, 114, 206, 212,  45,   3,  38, 240, 152, 154,  85, 244, 250, 157, 233
	.byte	158, 164,  83, 163, 229, 118, 139, 175, 192, 242, 171,  12,   9, 150,  87, 240
	.byte	 24, 134, 106, 251, 198, 247, 146,  55, 105, 160,  81, 216,  69,  96, 104,   2
	.byte	164, 187,  78,  61,  21,  53, 164, 169,  30,  48, 226, 120, 218,  85,  40,  88
	.byte	 84, 186,  83, 242,  94, 227, 253,  64, 238, 254, 135, 229, 255,  72, 234, 121
	.byte	138, 213,  91, 116, 122, 217,  16,  54,  36,   0, 150,  53, 157,  14,  18,  24
	.byte	 78,  87, 131, 188, 231, 159, 192,  87, 235,  51,  55,  35,  93, 174,  94, 116
	.byte	134, 131, 120, 193, 111, 255, 133, 145, 251, 204, 214,  58, 115, 191,  32, 208
	.byte	115,  33,  70, 236,  17, 140, 140, 128, 177, 153, 203, 143, 151,  58,   0, 193
	.byte	212, 101, 247, 237, 152, 183,  30,  70,  70, 101, 220, 109,   9, 164, 124, 104
	.byte	251,  93, 176, 189, 104, 106, 108, 154,  72, 103, 207, 244,  75,   8,  15,  23
	.byte	 42,  89, 200, 226, 199, 188, 148,  13,  76, 135, 142, 153,  44,  88,  44, 144
	.byte	106,  11, 103,   1,  74, 207,  39,   0,  29, 123, 132, 174,   2, 249, 130,  70
	.byte	130,  19, 216, 146, 237, 118,  84, 123, 109, 162, 139, 116, 114, 255,  12, 212
	.byte	 16, 238, 228, 253, 123, 120, 173, 171,  23, 252,  58, 101,  46,  67,  43,  33
	.byte	238,  73,  85, 227,  22, 179,  39,  36,  65, 146, 230, 112, 114,  21, 161, 220
	.byte	 87, 164, 188,  10, 163, 127, 238,  53, 114,  78,  87, 125, 124, 103, 173,  37
	.byte	 10,  92,  20,  89,  58, 152, 145,   1, 181, 188, 196,  98,  92, 215,   2, 188
	.byte	251, 194, 145, 195, 174, 242,  12, 130, 246, 230, 230, 103, 200, 159,  24, 100
	.byte	 86, 217,  24,  26, 102,   7, 199,   9,  66, 152,  49, 187,  87, 176, 218,  60
	.byte	  4,  89,  25, 222, 136,  46, 135, 127, 228, 187, 181,  98, 247,  50,  69, 251
	.byte	168,  73, 197, 186, 232,  69,  67, 160, 252, 175, 180, 166,  92,   7, 112, 131
	.byte	125, 166, 191,  32,  48, 214,  63, 168, 215, 219, 182,  10, 113, 187, 161, 212
	.byte	  8, 197,  57, 187,  48,  93, 167,  67, 233,  99, 223, 173, 237,  61, 225,   4
	.byte	225, 176,  95, 128,  67, 131,  51, 198, 132, 187, 184,  21,  53, 198,  10, 158
	.byte	146,  92,  86,  46, 209,  85, 113,   4,  35, 101,  34, 229,  40, 111, 207, 171
	.byte	 61,  81, 162,   5,  43, 232, 208,  70,  52,  35,  89, 165,  40, 248,  81,   5
	.byte	 24, 247, 224, 113,  69, 251, 224, 183, 204,  36, 174, 185,   6,  21, 173,  38
	.byte	 14, 113,  84,  71,  59,  66, 246,  71, 216,  61,  83, 102, 177,  30,  74,  66
	.byte	 22, 140, 124,  45, 133, 160, 166, 205, 149, 167,  56,  98, 166, 141, 213,  81
	.byte	 34, 116,  22, 190,  36,  50, 207, 215, 237, 138,  87,  58,  16, 211, 209,  94
	.byte	154, 145,  81, 150, 249, 224, 107,  92, 191, 139,  16, 145, 140,  59,   6, 250
	.byte	206,  47,  61,   9, 219,  65, 247,  17, 134,   9,  49, 114,  30,  57, 142, 162
	.byte	128,  48,  27, 144,   6, 201, 126, 204, 175, 210, 235,  53,  69, 237,  20,  60
	.byte	191, 145,  33,  26, 218, 238, 163, 149, 121, 127,  78, 217,  94,  72, 107, 188
	.byte	 90,  51, 217, 168,  78, 251,  24, 125,  46,   8, 242,  57, 246,   3,  32, 114
	.byte	218, 141,  49,  90,  65, 111, 204, 241, 177,  52,  48, 134, 107, 177,  11, 105
	.byte	162,  47,  14, 233, 141, 195,  58, 249, 137, 121,  63, 147,  57, 216, 241,  35
	.byte	 12, 166,  86,  36,  86,   7, 176,  67, 141,  33, 119, 111, 176,  82,  20,  94
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86, 118,  84, 177, 238,  28,   4, 168,  33, 176, 222,  63,  91, 252, 158, 102
	.byte	147,  81, 115,  66,  85,  41, 185, 111, 144, 101, 114, 184, 155, 144,  32, 228
	.byte	 68, 233, 109,  47, 236, 176,   7, 191, 209,  93, 142,  48,  32,  65,  88, 251
	.byte	241, 210,  59, 210, 136, 103,  79,  40, 150, 175, 242, 227,  57, 222,  36, 133
	.byte	 14,  67, 147, 108, 197, 146,  10, 125,  68, 194, 164,  92, 116,  40, 164, 119
	.byte	212,  37, 189,  82,  68, 127,  13, 233,  42, 146, 161, 227,  98, 244, 152, 133
	.byte	112, 102,  81, 224,  75, 245, 225,  50, 114, 172, 250,  67,  59,   0, 134,  76
	.byte	 23, 192, 101,  57, 135, 180,  36, 140, 236,  48, 165,  56,  37, 120,  26, 248
	.byte	226, 241,  97, 251, 116, 221, 133, 232, 122,  24, 208, 169, 229,  31, 129,  52
	.byte	140, 235, 143, 191, 254, 131, 115, 225, 142,  96, 218, 210,  20, 145, 151, 166
	.byte	128,  82, 148,  73, 225,  22,  20, 115, 214, 116, 183,  90, 166,  22, 151,  22
	.byte	228,  35,  20, 249, 107,  88, 219,  68, 244, 191,  95,  26, 228, 206, 143,   2
	.byte	104, 197, 116,   9,  72,  85, 130, 202,   8, 165, 185,  99, 227,  74, 158, 240
	.byte	240, 182, 139,  22,  12,   2, 119,  55, 117, 216, 251, 219,  87, 132,  81,  35
	.byte	 38,  24, 118, 137, 136, 208,  93, 251,  66, 126, 247, 145, 139, 175, 106, 249
	.byte	194, 122, 211,  12, 156,  56, 240,  80, 135,  45, 224,  99, 210, 199,  73,   1
	.byte	 44, 133,   4, 204,  47, 208, 246,  16,  94, 243, 104, 188, 174,  73,  77,  81
	.byte	205, 124, 129, 186, 169,  10, 185,   4, 209, 102, 181, 120, 194,  33,  44,  76
	.byte	 26, 255, 135, 163, 249,  38,  33,  63, 176,  42, 157,  40, 142, 189, 198,  77
	.byte	 33,  16, 152,  87, 160,  27,  52, 112, 249, 109, 246, 227, 114,  89, 143, 203
	.byte	 28,   1, 227, 209,  92, 171,  59, 243,   3, 191, 243, 162, 229, 236, 146,  97
	.byte	238,  48, 184, 239, 188,  68,  87, 190, 206, 186, 176,  20,  69, 103, 226, 208
	.byte	238,   0, 191,  25, 157,  30, 220, 221,  41, 150, 180,  16,  53, 231,  37, 244
	.byte	109,  19,  25, 187,  55, 148, 120,  19,  31, 129, 140, 147, 120, 230, 255, 128
	.byte	146, 161, 153, 252, 129, 176, 116, 213, 221, 171,  34, 209, 223, 157, 152,  67
	.byte	244,  73,  60, 147,  41, 134, 191,  24, 145, 188, 152,  99,  31,  69, 228, 248
	.byte	184, 156,  91, 180,  41, 235,  97, 104, 246,  45, 103, 232,  52,  41,  86, 182
	.byte	175,  68, 120, 185, 231,  43, 181, 255,  47, 103,  68,  10,  35, 225, 184, 169
	.byte	132,  21, 241, 164, 138, 124, 231,   8, 184,  51,  79, 194, 186, 123,  47, 154
	.byte	203, 190,  23,  84,  64, 101, 141, 176, 202, 249, 128, 200,   7, 245, 120, 134
	.byte	240, 110, 166,  13, 184, 162,  66, 225,  80, 219,  61, 210, 197,  11, 161, 167
	.byte	  6, 167,  61,  49, 227,  95,  84, 163,  29, 132,  48, 199, 243,  81, 165,  17
	.byte	 90,  95,  30, 218,  33, 200,  30,  48,  63, 218, 225, 249,  32, 225, 158, 145
	.byte	136, 171, 181, 173, 159, 155,  61, 119, 229,  14,  38,  56,  75, 242, 167, 138
	.byte	 32, 208, 110, 246, 208, 233, 214,  60, 144,  87, 253, 125,  16,  52, 136, 167
	.byte	231,  76, 247, 109, 152, 182, 137, 249, 113,  21,  55,  43, 190, 174, 222, 147
	.byte	 12, 143,  84, 107, 213,  22,  84, 230,  43, 249,  39,  41,  31, 144, 215,  16
	.byte	 39, 153, 166,  38, 180, 182,  11,  40,   0, 121, 111, 114, 231, 171,  81, 169
	.byte	140, 205, 184, 127,  84,  42, 105, 126,  90, 214,  92, 182,  35,  41, 124,  86
	.byte	  4, 251, 224, 120, 123, 112,  11, 178, 123, 213, 191, 167,   9, 224, 197, 109
	.byte	104, 137,  46,  48,  10, 130,  81, 126, 223, 148, 143, 212, 112,  16,  94, 231
	.byte	 21,  77,  55, 193, 135,  49, 196,  72,  24, 166, 119, 191, 116, 141,  60, 155
	.byte	242,  98, 137, 166,  67, 178,  86,   9,  41, 202, 248,  15, 246,  71, 102, 151
	.byte	 92,  52, 167,  46, 255, 102,  20,  38, 184,  64,  62, 202, 199, 113,  86, 182
	.byte	202, 141, 191,  74,  18,  42,  34,  61,  95, 163,   0, 221,  52, 218,  18, 150
	.byte	 20,  13,  26,  66,  42,  18, 159,  98,  86, 249, 171,  23,  88, 145, 105,   4
	.byte	 20, 240, 118, 152,  34, 194, 171,  85, 216,  53,  94,  35,  94,  84,  32,  99
	.byte	 55, 144, 157, 214,  42,  30, 148, 160,  12, 172, 218, 128, 122, 119, 222, 203
	.byte	 76,  47, 126, 191, 178, 237,  61,  87, 116, 133,  32, 189, 171, 158,  79, 193
	.byte	216,  15, 230, 186, 249,  33,  40,  55, 186, 200, 207,  83,  82, 138,  54,  29
	.byte	 74,  13,  52, 170,  85, 165,  97,  39,  93, 155,  61, 233, 161,  11, 192, 112
	.byte	183,  79,  71,  67, 220, 208, 225,  96,  28, 142, 167, 143, 137, 148, 205,   4
	.byte	 90,  86, 253,  24, 158, 132,  38,  90, 209,  16, 106,  78,  71, 199,  93, 126
	.byte	232, 193,  40,   8, 216, 237, 227, 234, 150,  87,  47,  34, 207,  20, 233,  32
	.byte	 94, 135, 101, 207,  80, 213, 151, 215, 107, 103,  81, 221, 170, 186,  20,  18
	.byte	 10, 109,  78,  51, 209, 177,  12, 200,  58, 105, 152,  91, 218,  40, 238, 155
	.byte	128,  32,  14, 202,  68,  22,  23, 135, 161, 246,  63, 109, 135,  35, 129,  33
	.byte	146, 154,  43,  14, 194, 129,  92,  84, 210, 235, 213, 206, 159, 124, 111, 193
	.byte	134, 171,  90,  36, 215, 120,  77,  58, 237, 255,  90,  67, 215, 132,  26, 247
	.byte	 27, 134, 195,  66, 233,  49,  49, 141, 233, 242, 234,  93, 239,  76,  40,  53
	.byte	202, 166, 192, 131, 214,  93, 103,  77,   8, 129, 183, 110, 100, 118, 124,  54
	.byte	 21, 142, 202, 147,  80, 210,   0, 205,  69,  69, 194,  56,  93,  56, 164,  81
	.byte	 34, 118, 185, 135,  67, 249, 203, 224, 201,  70, 168, 246, 228, 144, 234, 101
	.byte	 53, 200,  55,  81, 179, 158,  21,  54, 202,   1,  95, 137, 249,  52,  16, 119
	.byte	 82, 140, 233, 143, 137,  95, 219, 203, 230,   2,  54, 243, 158, 201,  23,  72
	.byte	162,   9, 189, 166, 232,  40,  48,  92, 217, 204, 196,   7, 202,  68, 141,  87
	.byte	 42,  60,  57, 178,  33,  90, 202, 133, 251,  87, 105, 150, 251,  61, 186, 110
	.byte	 34,  99,  61, 202, 167, 172,  95, 157, 109,  97, 106, 131, 104, 239, 248, 116
	.byte	240,  81,  78, 118, 232,  53,   7, 175,  87,   7,  17, 168,  12, 212, 191, 104
	.byte	234, 236, 149, 205, 137, 196, 149,  96,  82,  46, 100,  83,  95, 139, 157,  86
	.byte	  8, 150, 247, 199, 190, 250,  61, 234,  28, 227,  53, 120,  94, 153, 181, 125
	.byte	 99,  56, 236,  74,  70,  78, 179, 220,  28,  29,  75,  21, 162,  14, 252,  19
	.byte	244, 159,  24,  39,  92,  48, 141, 254, 216, 206,  15,  24, 210, 100, 183, 220
	.byte	215, 137,  20,  18, 226,  89, 113,  97, 203, 107, 140, 215, 110,  92,   6, 204
	.byte	 42, 242, 226, 191, 244,  15, 255, 126,  26, 144,  56,  85, 110,  25, 128, 158
	.byte	115, 188,  51, 234, 153, 148,  84, 161, 217, 181,  85,  60,  89, 243, 234, 152
	.byte	142,   9, 231,   8, 208, 155,  54, 142,  46,  98,  60,  90, 217, 228,  49,  97
	.byte	 15,  38,  87,  82, 239,  85,  74, 102,  35,  11, 246, 211, 110, 223,  23, 182
	.byte	108, 134, 228,  73, 243, 232, 124,  80,  12, 120, 101,  91,  83,  40,  29,  24
	.byte	 96, 142,  21,  89, 193,  12, 197, 245, 154,  56, 245,  72, 198, 236,  19, 202
	.byte	132, 191, 246,  85,  93, 238,  52, 100, 216,  26,  97, 164, 140,  38,  94, 113
	.byte	 60,  72, 115, 157, 150,   8, 145, 251, 251,  65,  64, 135, 138, 139, 122,  79
	.byte	 84, 241,   6,  40,  35,  65, 185, 211, 177,  52,  89, 209, 176,  70, 141,  49
	.byte	152, 244,   7, 139,  26, 144, 146, 101,  98, 117, 187, 142,  49, 107,  90, 128
	.byte	124,  42, 110, 138, 115, 169, 211,   6, 182,  87, 154, 237, 163, 114,  69, 157
	.byte	 10,  13, 227, 227,   4, 109, 198, 222, 150,   0,  28, 148, 244, 153, 105, 174
	.byte	192,  40,  78,  78, 233,  15, 145, 191, 139, 234, 103, 168, 230,  61, 120,  85
	.byte	224, 152, 196,  24, 149, 164, 237, 241, 208, 179, 200,  32, 201, 123,   0, 219
	.byte	 84, 213,  69,  44,  18, 191,  82, 250,  88, 205,  89, 171, 231, 173, 194, 211
	.byte	103, 157,  25, 250, 229, 119, 191, 239, 123,  86,  54, 130, 223,  91,  17, 248
	.byte	 36,  35, 129, 235, 138, 240, 110,  21,  94, 231, 243,  87, 223, 173,   0, 125
	.byte	 20, 246,  16,  37, 104, 242, 167, 175,  88, 133,  85,  61, 253, 243, 195,  49
	.byte	 54, 135, 122, 115,   8, 119, 208,  26, 223,  67, 201, 134, 181,   7, 223,   1
	.byte	 10,  26, 252,  14, 202, 201, 159,  59,   1, 241, 138,  43, 129, 171,  28,  25
	.byte	102, 229, 101,   9, 165,  62, 246,   3, 207, 235,  10, 200,  44,  84,  43, 115
	.byte	212,  70, 139, 235,  39, 127,  89, 114, 183,  97, 153, 153, 142, 122,  26, 127
	.byte	178, 250, 186,  33, 254, 147, 120, 121, 136,  14, 205,  74, 156, 171,  99, 160
	.byte	246,  85, 233, 167,  61, 115, 250, 179,  80,   4, 198, 218,  98, 166,  46, 144
	.byte	 58,  11,  95,  65, 122,  45,  24,  41,  70, 191, 200, 160, 168, 208,  25,  47
	.byte	 42, 193, 180, 163, 238, 103, 133, 145,  63,  41,  96, 103, 175, 160, 111,  82
	.byte	186, 175, 178, 188, 231, 172,  84,  80, 112, 129, 192,  84, 100,  68, 159, 229
	.byte	211,  33,  68, 140,  87, 211,  76, 187, 210, 115, 253,  39, 214, 133, 154,  81
	.byte	236, 181,  30,  81,  27,  23,  95,  98,  58, 254, 235, 120, 117,  69, 207, 191
	.byte	153,  60,  63,  15, 127,  12, 160, 135, 252, 172, 221, 137,  50, 227, 147,   9
	.byte	140,  43,  58,  46, 123, 198, 105,  50, 229, 242, 114,  89,  33,  35,  93,  79
	.byte	123,  26, 131, 254, 227, 137, 221, 248, 164, 243,  33, 228, 215, 117, 130,  93
	.byte	216, 161,  50,  83, 146,  29, 220,  44, 125,   6, 236, 110,  65,  28, 139, 238
	.byte	 90, 172,  23, 188, 227, 195,  84, 137, 214,  81,  30, 154, 221, 203,  23, 155
	.byte	154, 227, 165,  50, 226, 130, 104, 203, 218,  28,  82,  85, 181, 198, 197, 147
	.byte	122, 155,   2,  15, 111, 191,  44,  54, 203, 218, 190,  17, 117, 120,  33,  92
	.byte	 70,  48, 115, 200,  51, 152, 142, 184, 250,  50, 193, 231, 193, 161,  14, 194
	.byte	198, 227,  37, 231,   8, 221,  38, 252,   5, 218, 244,  72, 230, 208, 212, 153
	.byte	194, 137, 145,  27, 243, 171, 183,  83,  13,  76,  51, 115,  61, 109, 157, 115
	.byte	207, 212, 200, 143,  78, 125, 222,  86, 144, 129, 131, 152, 176, 119, 129, 150
	.byte	140, 161, 145,  85, 181,  59,  68,  95,  45, 138, 101,  14,  44, 110,  90, 116
	.byte	254,  86, 142, 179,  88, 217, 235, 190, 229, 178,  36, 246, 112, 229, 194, 222
	.byte	116,  57, 207, 211,  11,  31, 157,  74, 233, 187, 215, 215,  63, 228,  76,  38
	.byte	 44,  26,  36, 142, 168, 116,  39, 173,   2, 178, 170,   2,  20, 157,  34,  34
	.byte	136, 129,  90,  10,  49, 178, 161,  42, 249, 246,  71, 171, 194, 161, 236,  45
	.byte	 85,  60, 112,   7,  24, 188, 206, 161, 109, 164, 144, 143, 254,  28,  88, 175
	.byte	178, 141, 250, 210, 217, 232,  23, 172, 186,  72, 151, 183, 210,  20,  93, 191
	.byte	125,   6,  79,  54,   2, 135,  56, 143,  14, 240, 145,  92, 103, 170,  17, 242
	.byte	122,   6, 197, 146, 141,  62, 230,  84, 204, 132, 133, 121, 118,  99,  96, 153
	.byte	244,  39, 214,  53, 205,  12,  91, 238, 171, 107,  77, 156, 207, 114,  14,  88
	.byte	  6, 116,  47, 169, 157, 202,  19, 101,  53, 211, 172, 217, 167, 227, 102, 133
	.byte	227,  76, 143, 251,  75,  57,  35, 252, 103, 247,   0, 102, 225,  27, 222, 205
	.byte	 78,   9, 183,  48, 132, 112, 128, 114, 175,  82, 174, 123,  87, 187, 181, 103
	.byte	186, 119, 168, 178,  78,  89, 183, 106,  63, 131, 135,  43, 172,  88, 126, 118
	.byte	 40,  93,  79, 144, 197, 116, 248,  30,  13, 116, 158,  36,  48, 238, 246,  40
	.byte	 21, 108, 221, 164, 241,  27, 171, 105, 240,   0,  41, 192, 134, 217, 250,  80
	.byte	192, 155,  29,  72, 230, 216, 158, 168, 163, 151, 135, 108, 220, 140,  94, 178
	.byte	199, 155,   9, 185, 168, 253, 237, 238,  35,  36, 120,  53, 242, 119,  77, 134
	.byte	 42, 216, 255,  77,  88, 170, 160, 179,  30, 131, 179, 184,  80, 221, 121,   7
	.byte	 21, 161, 249, 195, 164, 245,  57, 145, 138, 252, 138, 229, 153,  20,  62, 232
	.byte	 48, 236, 244, 145,  56,  11,  21, 188,  49, 186, 209, 108,  41, 100, 212,  34
	.byte	  2, 186,  21,  17,  49,  93, 118,  13, 208, 249,  80,  11,   0, 133,  20, 209
	.byte	 24, 159,  50,  57, 230,  71, 170, 155, 221, 200,  10, 112, 254,  24, 183, 140
	.byte	165,   9, 251, 110,  24,  15,  92,  35, 141, 230, 184, 124,  90, 134,  18, 226
	.byte	 38, 228,  58, 250, 210, 193, 235, 123, 144, 177, 228, 237, 252, 132, 118, 156
	.byte	113,   6, 232,  11, 137,  37,  42,  28, 104,  24,  11, 163,  87, 193,  32,  64
	.byte	128, 184,  95, 237, 202, 174,  80,  78,  83, 116, 234, 145,  49, 118, 152,  49
	.byte	196,  85,  10, 175, 247, 249, 152,  58, 134, 182,  47, 158, 107,  12,  15, 250
	.byte	216, 180,  36, 103,  70, 206, 135,  44, 209, 166,  75, 250,  13, 160, 232, 240
	.byte	158,   0, 229, 225, 179, 110,  52,  41, 232, 136,  72, 222, 179, 115,  20, 108
	.byte	184, 243,  64, 198, 232, 119,  77, 249,  74, 182, 161, 158, 238, 139, 134, 197
	.byte	209,  26, 215, 119, 201, 215, 220, 201, 230, 205, 210, 167,  10,  88, 100, 140
	.byte	 32, 192,  58,  45, 183, 242,   1, 168, 217, 103,  61, 141,   3,  72, 118,  83
	.byte	 57,  67, 210, 249,  61, 213, 150, 244, 198, 124, 156, 181,  55,  33, 246, 217
	.byte	244, 142,  46,  83,  95,  92, 112, 210, 199,  63,  96, 218,  52, 194,  48, 126
	.byte	240, 153, 114, 152,  92, 120, 134, 149, 202, 183, 244,   6, 195, 141,  61,  65
	.byte	218,  48,  92,  48,  19,   2, 171, 159,  57, 234, 211, 234, 137, 162, 241, 188
	.byte	115, 249, 191,  79, 227, 242,  13, 219, 253, 204, 225, 221, 189,  55, 114, 101
	.byte	172,  81,  71,  80,  50, 176,  74,  95, 199, 108, 115,  60, 255, 185, 222,  53
	.byte	165, 224, 187, 124,  56, 219,  82,  22, 196,  22, 100,   7, 185,  13,  64, 234
	.byte	194, 220, 138, 140,  63, 187, 104,  57,  76, 103, 124,  83, 103, 113,  17,  48
	.byte	122, 150, 250,  98,  26, 239, 103, 134, 105,  25,  71, 104, 238,  79, 190, 222
	.byte	 72, 188,  92,  20, 232, 221,  63,  90, 162,  84, 242,  79,   4, 180, 167, 138
	.byte	 72, 145, 127, 106, 174,  24,  15,  99, 131, 218,  45,  25,  45, 227,  20, 118
	.byte	126, 101,  92,  61, 227, 238,  17,  91,  42,  88, 196, 236, 173, 242,  18,  22
	.byte	 89,  31,  92,  62, 188,  17, 196,  84,  19,  41, 105,  11, 209, 233,  66,  76
	.byte	104,  42,  25,   1,  55, 236, 236, 100,  25, 197, 217,   8,  13, 165, 106,  67
	.byte	227,  27, 114, 134,  98,  37,  51, 179, 119, 141,  88, 213, 122, 136, 111,   2
	.byte	226, 230,  28,   9,  23, 110,  63, 175, 122, 226,  61,  14, 217, 181, 192,   9
	.byte	237, 178, 157, 219,  25, 247, 192,  25, 142,  80,  56, 239, 199, 253, 143,  99
	.byte	198,  59,  18,  25, 147, 189, 181,  98,  20, 226,  98, 244,   5,  91,  95, 254
	.byte	226,  26, 228, 167,  10,  64,  17,  26,  80,  21,  97, 184,  23, 106, 229, 208
	.byte	234,  83, 251,  21, 138, 100,  88, 213, 229,  91,  86, 225,  69,  86, 220, 209
	.byte	148, 157, 106, 192,  80,  81,  31,  50, 175,  71, 181, 232,  19,  64,  91, 199
	.byte	170, 191,  95,  39, 195,  67, 210, 215,  12, 190, 164, 101, 241, 164, 140, 109
	.byte	 95,  59, 156, 243, 217,  25,  70,  93, 108, 220, 226, 255, 252,  43, 197,  28
	.byte	170, 170,   6,  77, 244,  83, 225, 155,  56,  21, 108, 124, 131, 224, 195, 109
	.byte	 55, 177, 109, 178, 223, 235, 211,  46,  40,  13,   8, 138,  50, 104, 147, 125
	.byte	200,  17,  11,  92, 137, 172, 104, 128, 142,  90,  11, 139, 217,  48,  82, 219
	.byte	 35,   9,  53, 235, 178, 114,  82, 211, 142, 251, 119,   8, 156, 222,  59,  78
	.byte	196,  10,  98, 133, 252, 202,   4, 189, 243, 193,  32, 244,  58, 123,  76, 232
	.byte	 60,  59,  82, 165, 194,  10,   4,  19,  97,  82,   2, 223,  80,  13, 151, 226
	.byte	 80, 156, 134, 242, 239, 121,  43, 171, 155, 154,  94, 230,  27,  45,  40,  62
	.byte	195, 133, 235, 213,  77,  72,  17,  18, 147, 202,  55,   2,  48, 149,  25, 193
	.byte	114,  71, 122, 232,  36,  44, 178,  63, 223, 131,  52,  86,  16,  42,  19, 225
	.byte	140,  56, 101, 202, 106,  60, 174, 225,  37,  99,  65,  22,  60,  27, 199, 233
	.byte	 68, 255,  59,  40, 189,  82,  91,  98, 122,  59, 236,  22, 196, 181, 132,  38
	.byte	222, 104,   1,  86,  55, 153, 190, 219, 215, 146, 221,  49, 145, 250, 147, 251
	.byte	232, 187, 207, 194,  88, 124,  37, 253,   9, 186,  15,  72,  98, 163, 217,   8
	.byte	141, 132, 176, 125, 107,   4, 112, 246, 131, 151,  12, 188,  64, 231, 202,  17
	.byte	154, 177,   5,  34,  37, 125, 249,  92,  83,  83, 152, 143, 157,  30,  18, 176
	.byte	 82, 145, 181, 137, 225, 215, 142,  92,  70, 216,  42, 152, 124,  65, 193,  70
	.byte	210, 220, 137, 127, 144, 241,  59,  55, 102,  47, 132,  53, 150, 109, 152,  32
	.byte	  7, 106, 169,  12, 205,  75,  11, 170, 146, 255,  79,  48, 199,  84,  54,  97
	.byte	 78,  46,  86,  26, 228, 178, 118,  54, 246,  72, 135,  36, 146, 135, 163, 187
	.byte	232, 135, 208,  22,  15, 251, 187, 251, 199, 247, 123,  38,  78,   4, 235,   9
	.byte	254, 210, 251, 227, 167, 102, 152, 237, 140, 117, 129,   5, 231, 169, 207,  17
	.byte	 32,  63, 100, 209, 156,  15,  33, 150,  12,  38, 225,  34, 104, 123,  18, 200
	.byte	 16,  26, 140, 201,  65,  65, 192, 178, 254, 145, 218, 229,  81,  74,  82, 254
	.byte	 15,  62, 138, 223, 202,  18, 197, 223, 129,  50, 213,  75,  18, 218,  72, 212
	.byte	118, 125, 119,  80, 250,  99, 217, 129,   8, 232, 211, 102, 206,   3,  67, 193
	.byte	 54, 201,  45,  72, 229, 148, 205,  78, 112,   4,  25,  26, 122, 246, 138,  24
	.byte	204,  25,  97, 124, 181, 147,  11, 219,   4, 100,  47,  45, 213, 147,  53,  79
	.byte	132,  82,  30, 183, 244, 176,  63,  43, 200,  24,  14, 247, 161,  92, 185, 157
	.byte	166, 241,  75, 166,  65, 206,  98, 180,  67, 100, 235, 134,  27, 139, 132,  48
	.byte	233,  92, 189, 125,  20, 244, 114,  81, 204, 129, 125, 207, 223,  83,  28, 162
	.byte	234, 226, 112, 249, 181, 130,  33,   5, 136,  19,  62, 181, 121, 124, 108, 117
	.byte	208, 192, 162, 203,  65, 185,  23,  17,  83, 253,  28, 138,  49,  43,  80, 206
	.byte	216,  75,  42, 215, 141, 184,  57,  54, 149,  12,  78, 142, 159,   6, 113,  32
	.byte	172,  29, 218, 168,  79,  79, 182, 107,  83, 203, 100,   8, 155, 114,  86, 104
	.byte	 60,  18, 112, 142,  29, 221, 133, 138, 103, 193, 186, 104,  88, 246, 172, 253
	.byte	 72,  81,  17, 191,  10, 100,  31, 107,  10, 104, 242, 216, 203, 159, 255, 240
	.byte	164,  46,  11, 111, 159,  22, 168, 234,  68,  60, 118,  38, 150,  56, 137, 248
	.byte	219, 250, 230, 199,  84, 144, 209, 112,  84,  48,  63,  52, 209, 244,  93,  37
	.byte	 92,  64,  92, 165, 113,  61, 178, 187,  29, 194, 200, 248, 152, 117, 255, 116
	.byte	129, 176, 238,   0,  59,  96, 193,  97,  85,  80, 222,  53,  74, 108,  73, 144
	.byte	244, 154, 143,  43,  41,   1,  72, 200,  94,  48,  15, 194, 250, 231, 116, 183
	.byte	 84,  50,  22,  47, 226,  29, 101, 154,  68,  24, 184, 116,  16, 246, 236, 137
	.byte	100, 138, 190,   7,  32, 229, 214,  98,   6, 110, 237,  47, 135, 196, 117, 233
	.byte	250, 114, 124,  81, 211, 222,  27, 177, 116,  73, 217, 146,  64, 118, 207, 174
	.byte	 12, 235,  69, 158, 214, 120,  38, 102, 100, 150, 134, 128, 214, 107, 222, 249
	.byte	 93,  18, 237, 184,  79, 254, 213,  89,  87, 231,   5, 210, 157,  94,  95, 191
	.byte	116, 217, 116, 225, 101, 194, 238, 242, 115, 208,  71,  30, 158, 247, 186, 187
	.byte	 89,  90, 215,  57, 155, 210, 238,  65, 111,  93,  23, 170,  77,  45,  54, 122
	.byte	172,   2, 167, 152,  67, 253, 228,  27, 228, 231,  58,  13,  70,  76,  35, 132
	.byte	119, 142,  18, 248, 121,  88, 137, 133,  49, 190, 134,  64,  49,  98, 232, 238
	.byte	 18, 238, 165,  51,   8,  43,  72, 124, 187, 159, 180, 210,  99, 164, 116, 118
	.byte	172, 245,  88,  53, 210,  73,  42, 149,  55, 253, 101,  33,   2,  74, 123, 113
	.byte	 48, 134, 161, 120, 243,  84, 171, 173, 184, 168,  97,  53, 221,   8, 251,  97
	.byte	 73, 204, 255, 247, 120,  16, 101,  52, 202, 202, 142, 235,  59,  43, 154,  27
	.byte	 14, 189, 188, 240, 144,  41,  58,  13, 142, 180,  72, 206, 247,  21, 203, 115
	.byte	 62,  84, 197, 204, 242, 213,  25,  61,  62,  44, 222, 201,  78, 147, 222, 228
	.byte	  0,  33, 102, 185,  70, 141, 217,   9,   3,  91,  34,  37,  17,  43, 245,  57
	.byte	213, 221, 108,  48, 168,   2, 135,  21, 235,  51,  87, 212,  18, 187, 237, 205
	.byte	210,  42, 245, 156, 224, 239,  95,  45,  51, 146, 143,  20, 137,   2,  44, 221
	.byte	 70, 179,  28,  74,  63, 236, 109, 159, 103,   2, 174, 145, 166, 254, 125,  18
	.byte	148,   2, 215,  90,   4,  66, 115,  69, 195, 139, 151,  61, 177, 182, 174,  70
	.byte	249,   9, 174, 104, 169, 197, 250,   7,  89,   8,  36,  51, 198,  27, 246, 163
	.byte	122,   4,  26, 217, 111, 105,  65, 219, 141, 196, 104, 169, 185, 243,  43, 170
	.byte	118,  89,  21,  57,  16, 187, 195,   8, 166, 217, 208, 137,  76,  92,  77, 187
	.byte	 32,  56,  33,  90,  88, 153, 196, 201, 254, 111, 236, 194,  16, 134, 115, 253
	.byte	139, 191, 245, 244,  23, 181, 215, 120, 238, 168,   2, 169, 229, 206, 182, 131
	.byte	220, 190,  42, 138,   1, 192, 243,  25, 247,  82, 252, 157, 150, 211,  99, 166
	.byte	 72, 242, 219,  99,  20, 142, 250, 188, 150,  71, 196, 194, 174,  48, 189, 154
	.byte	120, 162, 225,  95,  63, 130, 183, 142, 131, 151,  60, 247, 222, 124, 170, 255
	.byte	249, 219,  10, 186,  26, 155, 154, 161,  69, 153, 177, 153, 170,  22, 208, 104
	.byte	138,  29,   4, 246,  17,  36, 189, 232,  41,  19, 221,  94,  50, 127, 109,  73
	.byte	120, 215,  79,  76,  91, 156, 206, 214,  42,  86, 156,  78,  12,  16,  19, 246
	.byte	 94, 231,  43, 167, 210, 250, 200, 126, 226, 128, 171, 190, 212, 173, 244, 207
	.byte	186, 117, 130,   0,  79, 206,  81,  83,  98, 130, 184,  37,  91, 103,   4, 199
	.byte	 42, 178, 218,  85,  86, 212,  97, 238, 221,  73,  93, 196,  90,  39, 197, 128
	.byte	171, 243, 101, 236, 119,  20,  22,  18, 160, 100, 141, 132, 184,  68, 162, 220
	.byte	 22, 237,  76, 255, 121, 170,  38, 161, 228, 117, 142,  51, 255,  59, 112, 244
	.byte	 29, 185, 128,  71, 149, 236, 116,  67,  70, 171, 204, 159, 191, 184, 198,   9
	.byte	 80, 216, 169, 203,  98,  15, 224, 255, 192,  80,  76, 241,  72, 163, 121,  66
	.byte	 38,  82, 195,  16,  91,  69,   3,  68,  23, 195,  59, 241,  70, 230, 143, 104
	.byte	206, 255, 224, 238,  30,  67, 218, 133, 209, 171,   1, 153, 209, 143, 215,  90
	.byte	 27, 158, 112, 138,  13, 144,  11, 190, 121,  30, 116,  26, 253, 161, 251,  69
	.byte	 26,  16, 145,  11,  94, 238, 248,  50,  97, 105,  20,  43,  55, 175, 219, 226
	.byte	 46, 241, 114, 209, 209, 229,  45, 228, 185,  34, 131,  89,  73, 239, 194, 189
	.byte	 14,  61, 215, 162, 224, 209,  10,  31,  82, 142, 232,  52,   9, 106,  59, 148
	.byte	 79,  26,  30, 124,  27, 146, 135, 193, 218, 190, 229, 128,  88, 227, 141, 154
	.byte	218,  24, 195, 251,   0, 167,  17,  32, 253,  93, 230,  47, 219, 236,  41,  37
	.byte	169,  72, 126, 106,  90, 121, 215, 135, 132, 152, 110, 162, 108, 157,  36,  61
	.byte	176,  24, 170, 138, 141,  77, 181,  23, 166, 118,  25, 152,  47, 150,  31, 195
	.byte	 41, 156,  22, 183,  32, 173, 160, 129, 131, 120,  11,  41, 212, 185,  89, 203
	.byte	110, 114, 123, 106, 115, 181,  56, 224,  49,  29,  93, 144,  74, 230, 231, 111
	.byte	147,  71,  35,  25, 101,  14,  36, 242, 145,  76, 233, 111,  94, 200,  85,  25
	.byte	 58, 141,  11, 212,  81, 244, 114, 134,  16,   5,  48, 203, 227, 216, 161, 198
	.byte	132, 218, 120,  31, 138, 181, 138,  29,  76, 107,  12, 195, 214, 217, 215, 124
	.byte	  8,  46,  20, 253, 227, 106,  53,  45, 203,  15, 234,  86, 232,  60, 182, 165
	.byte	254, 195,  59,  48, 128, 182,  56, 112, 252, 190, 148,  20,  69, 230,  46, 210
	.byte	 74, 193, 223, 118, 139, 117,  53, 119, 187,  99, 197, 103, 123,  59, 224, 224
	.byte	 43, 102, 187,  27, 186,   9, 211, 186, 143,  97,  75,  14,  84,  93, 205, 165
	.byte	166,  33, 169,  32, 186,  73,  80, 210, 105,  92, 226, 116, 191, 146, 202, 198
	.byte	123,  47, 203, 148,  12, 250, 235, 122, 251, 187, 133,  19, 146,  66, 211,   0
	.byte	138, 181, 252, 122, 112, 118, 117, 138, 168,  54, 229, 224, 238, 167,  15,   8
	.byte	233,  61,  19, 166, 133, 185, 210, 152, 112,   2, 228, 210, 134, 193, 223,  77
	.byte	 96, 167, 192, 145, 140, 183, 147,  82, 217, 235, 158, 105, 142, 145,  32, 116
	.byte	131, 213, 123, 215,  16, 244, 126, 120, 127, 117, 182,  47,  40,  68,  43, 109
	.byte	 60, 216, 143,  94, 239,  60, 174, 171, 111,  80, 233,  32,  44, 193,  29, 151
	.byte	127, 185,  54,  92, 183,   3, 172,  50,  54, 223, 182, 213, 147,  62, 120, 197
	.byte	150, 233, 222,  40,  99,  14, 249,  41,  51, 224, 173,  29,  39, 165,  38,  18
	.byte	 58,   2, 155, 190, 188,  51, 152, 223,  39,  53, 200, 226, 161, 253, 207,  89
	.byte	224, 146,  91, 146,  43,  61, 104, 112, 230, 145,  80,  38,  51, 166,   8,  73
	.byte	124, 230, 206, 166,  61,  67,  29, 250, 211, 171, 217, 106, 209, 150, 154,  52
	.byte	232,  53, 164, 130, 145, 212, 211, 189,  55, 191, 241,  21, 245, 252,  90, 123
	.byte	243, 211, 133, 108,   7, 235, 123, 197,  36, 177,  43,  65,  94, 189, 132,  45
	.byte	214, 208,  37,  67, 173, 102, 207, 109, 190,  40,   0, 175, 149, 121,   9,  80
	.byte	176,  20,  13, 236,  19, 247, 243, 116, 133, 247, 244, 253,  37, 149, 173, 150
	.byte	 62, 182, 242, 157, 138,  40, 170, 246, 134, 125, 177, 111,  12,  89,  63,  16
	.byte	104,  23,  58,  44,  11,  87, 150,  34, 124, 123, 251,  56,  98, 249, 188, 184
	.byte	220, 120, 100,  73,  61,  27, 222, 129,  77,  46,  86, 122,  68, 223, 180,  70
	.byte	125, 153,  11, 170, 159,  73, 250, 172, 116, 154,  78, 149, 201,  51, 101,  92
	.byte	212,  10, 228, 116,  94, 216, 126, 247,  26, 125, 119,   2, 163,  28, 184, 201
	.byte	230,   2, 164, 149, 207, 174,  52, 248, 217, 125,  12, 139, 219, 145, 228, 146
	.byte	 46, 129, 113, 210,  60, 175,  79, 173, 226, 194, 122,  92, 240,  68,  75, 209
	.byte	 29,  62, 104,  83,  23, 140, 146,  57,  71,  99, 102, 135,  73,   7, 165,  31
	.byte	112, 243, 135,   8, 146, 100, 108,  20,  76,  98, 183, 125, 133,  82,  32,  35
	.byte	 32,   3, 126,  91,  91, 151,   5, 187,  36, 128, 253,   9, 146, 137, 176, 178
	.byte	 28, 237,  81,  51,  85,  52,   4, 136, 171, 137,  10, 224, 114, 120, 206,  57
	.byte	 86, 229, 106, 191, 173, 206, 238, 103, 245, 104, 223,  49, 234, 165,  63, 248
	.byte	168, 239,  65, 193, 156, 191, 120,  45, 196, 228,  77, 177, 246, 139, 208, 253
	.byte	 41, 181, 137,  62,  20, 145, 162, 155,  29, 194, 243, 110,  74, 210,  85, 131
	.byte	214, 138,  60,  56, 221, 166,   7, 251, 135, 182, 108, 108,  55, 152, 172, 214
	.byte	206,  67, 217,  98,  32,   9, 213, 217, 197,  44,  50,  87, 217,  87,  16, 151
	.byte	 48, 160,  69,  44, 223, 210,  91,   2, 103,  97, 232, 190, 134, 193,  42,   8
	.byte	129, 181,  26, 124,  14, 115, 121,  65, 225, 183,   4, 177, 176, 146,  71, 224
	.byte	150, 142,  84,  83, 212, 247,  58, 147, 136, 170, 248, 200, 140, 209, 119, 123
	.byte	114, 131, 128, 164, 117, 146, 104,  30,   4, 243,  28, 141, 248, 113, 198, 252
	.byte	150, 205, 204, 187,  25, 254,  79, 221, 250,  90, 237,  46, 200,  35, 199,  36
	.byte	  2,  84, 149, 222, 137,  89, 123,  88, 230, 181, 254,  71,  57, 199, 193,  15
	.byte	  8,  20, 222, 200, 128, 117, 123, 159,  22,   7, 114, 153,  10, 215, 125, 133
	.byte	124, 121, 107,  89, 234, 224,  86, 244, 128,  53, 209,  88,  24,   3,  66, 196
	.byte	230, 204,  25,  39,  78,  25,  86, 250,  81, 197, 195,  15, 178, 244, 253, 203
	.byte	 37, 157,  86, 195, 115,  47, 228,   5, 166,  29, 126, 217,  55, 151, 182, 114
	.byte	 46, 219, 120,   0,  15,  10, 225,  50, 109, 239,  74, 217, 247,  99,  69, 212
	.byte	209, 226, 250,  55, 210, 126,  88, 213, 202,  22, 217, 217, 214, 122, 186,  51
	.byte	 30, 212, 164,  65, 128, 105, 152, 130, 179,   2,  38,  85, 223, 171, 200, 240
	.byte	140, 199, 191, 161, 138, 225, 230,  73,  51, 250, 209,  14, 125, 134, 216, 214
	.byte	128, 137,  61,   6, 173,   3, 163, 219,  18, 228,  63, 156,  24,  75,  14,  52
	.byte	130,  39, 196, 223, 236, 143,  80, 130,  10,  15,  29, 199, 189, 218, 204,  49
	.byte	146,  15, 198, 173,  11, 212,  61,  36, 166,  74, 222, 173, 234, 236, 221,  13
	.byte	 91,  81,  63, 133,   5,   3,   0,  62, 141, 156,  30, 250,  27,  57,  25, 117
	.byte	 74, 110, 180, 225,  59, 179,  61, 184,  43,  39, 208, 230,  28, 232,  62, 182
	.byte	  6, 199, 205,  77, 164, 243, 183,  93, 229,  59, 139, 234,  52, 132,  71, 252
	.byte	 16, 198, 226, 124,  17, 191, 155, 199,  67,  74, 163, 191,  88, 145, 208, 141
	.byte	168, 192,  42, 219,  14,   5, 147, 183,  51, 191, 124,  64,  33, 172,  70, 136
	.byte	 34, 136, 221, 167, 196,  73, 215,  68,  37,  99, 249, 202, 120,  18,  27, 227
	.byte	124,   8, 217, 228,   2, 218,  78, 126, 187, 116,  68, 170, 117,  85, 182,  59
	.byte	124,  93, 202,  19, 117,  25, 239, 250, 183, 206, 135, 154,  87, 214, 184, 109
	.byte	117, 184,  60, 243,  98, 188, 136, 171, 119, 247,  59,  86, 249,  40, 238, 240
	.byte	 36,  71,  80, 102, 162,  34, 222, 104, 203, 130, 123, 187, 218, 141, 212,  19
	.byte	 46,  73, 156, 217, 162,  87, 211, 100, 223, 156,  53,  68, 220, 208,  96, 250
	.byte	 74,  63, 180,  53, 181, 107, 192, 194, 147, 170,  32, 148, 182,  52, 171, 230
	.byte	200, 222, 196,  34, 242, 252, 236, 188, 120,   3,  26,  16, 193,  85,  14, 147
	.byte	176,  68,  40,  39, 144,  89, 255, 125, 211, 153, 210,  96,  51, 194,  50,  22
	.byte	224,  70,  77, 196, 139,  79, 201, 133, 209, 207, 112, 128, 228, 227, 214,   6
	.byte	168, 216,  39, 140,  61,  37, 116, 181, 110,  31,  28,  20,   9,   3,  19,  99
	.byte	 28,  18, 117,  32, 142,  72,   2, 106,  64,  64,  75,  99, 128,  74,  77, 179
	.byte	 68, 116, 149, 179,  74, 209, 134, 123, 169, 135, 247,  98, 228,  56,  11, 245
	.byte	194,  71, 253,   1, 186, 118, 123,  39, 199, 141,  12, 201,  18, 158, 220, 247
	.byte	246,  14,  32, 226, 182,  68,  92, 134,  18,   3, 120,  73,  90,  88, 219, 117
	.byte	101, 108,  86,  88, 129, 243, 165, 133, 213, 161, 124,  39, 101,   0, 226,  86
	.byte	104, 118, 152, 240, 159, 242,  66,  23, 146, 143, 175, 212,  58, 140,  47,  24
	.byte	 17,  31, 202, 153, 193,   9,  41, 142, 234,  80,  63, 238, 148, 106,  17, 220
	.byte	122, 205, 238,  90,  30,  37,  81,  86,  49,  67, 177,  54, 187, 225, 131, 185
	.byte	142, 207, 137,  97, 120,  38,  88, 244, 189, 174,  21, 183,  77, 189, 221, 161
	.byte	188,  78,  11, 203,  78, 106, 226, 104, 199, 127,  42, 129, 127, 113,   1, 220
	.byte	217, 178, 147, 110, 176,   7, 222,  83, 233,  20, 246, 157, 104, 107, 205, 158
	.byte	 90, 115, 221, 221,  44, 178, 118, 250, 242, 147, 157,  43, 181,  64, 202, 229
	.byte	158, 194,  28, 220, 182,  20,  56,  55,  79,  20,   2,  94,   3, 121,  79,  68
	.byte	162,  37, 144, 148,  28, 191, 238, 104, 170, 169, 241, 185, 253, 120, 108, 198
	.byte	192,   2, 253, 245, 188, 119,  36, 119, 192, 158, 123, 234, 130,  69, 231, 139
	.byte	 18, 215,  32,  25, 178, 215,  88, 227,  48, 110,  46, 107, 251, 154,  36, 114
	.byte	 75, 111,  26, 220,  74, 189, 188,  12, 125, 174, 113, 132,  76, 182, 110,   3
	.byte	 30,  43, 239,  94, 113,  16, 175, 221, 199,  98,  50,  95, 210, 155,  15, 170
	.byte	 98, 196,  37, 141,  76,   7, 109, 127, 127, 106, 136, 104, 229, 115, 115,   4
	.byte	  8,  94,   6, 179,  77, 208,  23, 188, 214,  10,  17,  26,  52,  25,  34,   7
	.byte	153,  74, 190,  49,  74, 197,  88,   8,  73, 215, 202, 135, 108,  29,  47,  65
	.byte	 90, 105,  28, 215,  28, 147,  67, 162, 150, 161,  95, 241, 106, 109,  60,  32
	.byte	224,  56, 157, 154, 174, 133,  29,  81, 144, 236, 252,  44, 215, 176,   6, 247
	.byte	 20, 134, 201,   1,  93,   5,  85, 219, 146, 184, 154, 196, 224, 250,  15,  43
	.byte	 55, 113,   3,  45,  81, 147, 240,  89, 161,  25, 143, 125, 136,  44, 116, 255
	.byte	138,  38, 223,  19, 173, 158, 115, 137, 171,  68,  90, 224, 125,  24, 223, 236
	.byte	 22,  36, 197,  33,  23, 229, 133,  47,  70, 104,  70, 220, 220, 159,  10, 133
	.byte	154, 182, 118, 230, 172, 174, 108, 245, 237, 103, 179,  11, 119, 226, 246,   8
	.byte	217, 114, 204,  29,   5, 101, 166,   8, 131,  80, 146,  58, 140, 188, 107,  66
	.byte	104, 198,  83, 189,  71,  72, 171, 218, 170, 239, 120, 118, 156,   3,  64,  37
	.byte	 53, 210, 146, 119, 122, 210,  29,  22, 109, 128, 132,  31,  88, 203, 151, 153
	.byte	146, 166, 216, 164,  65, 123, 198, 163, 118,  23,  50,  23, 182,  88,  94, 189
	.byte	 42,  83, 238, 160, 132, 178, 243, 228,  90, 121,  52, 161,  13,  68, 145,  25
	.byte	186, 116, 189,  94, 176, 148, 185,  54, 247,  88,  68,  76,   8,  43, 222, 189
	.byte	 57, 199, 152, 163,  34, 168, 189, 225, 252, 249, 114, 209, 217,  77, 215,  18
	.byte	144,   5, 214, 195, 202, 115,  14, 170,  51,   7, 103, 201,  32,  95,  75, 112
	.byte	230, 155, 129, 140, 231, 145,  94, 232, 237,  67, 151, 182, 206, 190, 200, 203
	.byte	 30,   3, 221, 181,  14, 192, 132, 231, 187,  54, 241, 214,  71, 215,  58, 231
	.byte	 84,  38, 209, 106, 224, 218,  98, 137,  51, 238, 244,   3,  86, 168, 100,  64
	.byte	 40, 149, 190, 187, 226,  41,  50,  85, 249,  38,  17, 110, 216,  82, 187, 206
	.byte	 36,  20,  31, 234,  38,   1,  68,  35, 204, 246, 200,  80,  11, 196, 200,  46
	.byte	108,  98, 120,  53, 193, 208,  22, 214, 188,  57, 185,  75,   1, 201, 233, 114
	.byte	 31, 155, 124,  69, 129, 184, 209, 120, 210,  36, 116, 110, 240, 200, 235,  96
	.byte	  0,  19,  39,  21, 193,  57,   0,  59, 238,  19,  95, 127,  21,  93, 253, 216
	.byte	184,  88, 162, 173, 207,  93,  36, 178, 131,  47, 101,  76, 209, 182,   1, 247
	.byte	238, 233,  99,  39,  14, 133,   1, 135, 186, 226, 222,   2,  41, 203, 125, 176
	.byte	193,  83, 192, 224,  30, 106, 200,  80,  92, 173,  33,   5, 174, 179, 245, 178
	.byte	 28, 247,  70, 114, 132, 149, 228,  98,  82, 254, 182, 118,  53,   6,  86,  87
	.byte	144, 188,  52,   1, 146, 222,  10, 181, 150, 219,  79, 174,  85, 104, 218, 144
	.byte	154, 185, 219, 179, 201, 100,   0, 129,  96,  49, 234,   0,  13,  29, 231,  49
	.byte	254, 162,  50,  63,  75, 172,   9, 216, 231, 150, 219, 244, 238, 169, 151, 179
	.byte	 18, 115,  97, 113, 150,   2,  74,  21, 121, 105,  44, 116,  48,  12,  79, 173
	.byte	122, 240,  20, 179, 196, 226, 212,  16, 217,  22,  31, 240, 160, 186, 110, 226
	.byte	  2,   8,  44,  53,  48, 187, 137,  74, 137, 206, 185, 176,  63, 207, 179, 172
	.byte	153,  65, 163, 231, 234, 148,  54, 232,   9,  50, 183, 141, 227,  83, 156,   8
	.byte	 98, 169, 255,  61, 216, 187, 138, 166, 114, 252,  34, 154,  21, 139,   3, 197
	.byte	 25, 184, 160, 213, 235, 107, 160,  95,  28, 238,  75, 227,  38, 187,  37, 162
	.byte	132,  98,  62,  49, 146,  55,  46, 163,  42, 111, 144, 218,  61,  17,  50, 117
	.byte	229,  41, 241, 189,   9,  86, 136, 253, 173,  85, 234, 189, 144,  21,  80,  93
	.byte	202,  31, 218, 205, 250,  47, 224, 153, 203,  96, 141, 136, 240, 242, 232, 159
	.byte	209,  13, 152, 168, 248,  78, 104, 160,  87, 127, 211,   5,  75, 150, 149, 249
	.byte	 90,  36, 223, 227, 210,  79, 226, 209, 231, 195,  88,  84,  76, 128,  83, 118
	.byte	243, 110,  80, 244, 173,  59, 231, 103,  13, 235, 185,  75,  47, 222, 238, 166
	.byte	 42, 190,   3,  28, 136, 105,  14,  53, 121,  77, 170, 183, 171, 135,   9, 163
	.byte	 39, 125,  56, 213, 126, 138, 172, 189, 130, 144, 181,  95, 120, 174, 151,  21
	.byte	170, 129,  50,  28,   9,  78,  33, 116, 101, 159, 226, 201,  80, 128, 122, 219
	.byte	204, 183,  74, 221, 169, 213, 219,  56,  23, 165, 201,  99, 112,  65,  90, 202
	.byte	118, 176,  83, 154, 142, 180,  47,  51,  96, 100, 191, 102, 247, 179, 248,  23
	.byte	 45,  82,  21, 185, 230,  90, 157, 156, 102, 173, 197, 124,  33, 210,  76,  74
	.byte	110, 115,  73, 250,  38,  66,  45,  85, 148,  33, 233, 194,  50,  80,  10,  81
	.byte	112, 173, 151, 126, 228,  82,  75,  14, 242,   6, 170, 163, 226, 209, 133,  35
	.byte	 74, 244,  59, 253, 227, 191,  71, 226, 183,  49,  97,  38, 222,  24, 166,  31
	.byte	 69, 216,  99, 111, 157,  84,  26, 216, 199, 154,  50, 162,  73, 212,  38,  81
	.byte	252, 186, 246, 228, 239, 229,  62, 213, 109, 159, 127, 185, 180, 235,  84, 145
	.byte	 19,   9, 103, 218, 172,  59, 154, 155, 148,  57, 254, 165,  11, 249, 245, 184
	.byte	176,  38,  53, 107, 157,  91, 207, 232, 250, 213, 221, 129, 233, 244, 111, 167
	.byte	103, 148, 209, 194,  94, 186, 249,  21,  93,  15, 142, 182, 139,  43, 237,  19
	.byte	 70,  12,  85, 124,  24, 223, 210,  81,  13,   2, 208,  18, 180,  88, 237, 176
	.byte	 77, 118, 125, 217, 139, 172,  45, 100, 164, 176,  43, 217,  11, 226, 103,  52
	.byte	 64,  19, 106, 149,  48, 120,  86, 217, 174, 177,   6,  55, 240, 106, 205,  59
	.byte	106,   8, 100, 119, 121, 155,  17, 128,  31, 167,  61, 251,  82,  49,  35, 233
	.byte	 66,  13, 186,  41, 197, 187, 205, 251, 244,  30,   0,   0,  73, 173, 102,  81
	.byte	 11, 120, 216,  54,  55, 157, 109,  24, 168, 198, 231,  43, 171, 251, 230,  73
	.byte	176,  92, 197, 212, 151, 226, 111,  53, 135,  31,  99, 232,  72, 250, 207, 104
	.byte	 37, 214,  13, 128,  81,  76,  70, 189,  91,  51, 109, 136, 160, 172,  44, 102
	.byte	252, 217, 249, 246, 247,  39,  35, 118,  92, 164,  66, 172, 142,  42, 207, 123
	.byte	139, 191,  97, 179, 239,  22, 170, 107, 234,  58,   0,   5,  30, 138, 117, 217
	.byte	232, 227, 205,  69,  75,  79,  73,  13,  23,  14,  55,  40,  33, 210,  34,  60
	.byte	198, 231, 169, 193, 166,  24, 194, 249,  27, 127, 121,  71, 143,  74, 144, 139
	.byte	196, 219,  50,  14,  82, 139, 219, 192, 118, 218, 118, 158,  43, 168, 216, 239
	.byte	135, 127,  36,  69, 204, 172, 172,  36, 163, 233, 202,  44,  17, 113,  90,  94
	.byte	238,  30, 115,  49, 126,  66, 102,  86,  33,  33, 161, 207,  14, 200,  16, 110
	.byte	112,   7, 184, 163, 237, 155,   4, 155,  74,  19, 189, 215, 136,  39, 146,  76
	.byte	 12, 212, 217, 238,  71, 141,  28, 187,  17,  27, 124, 126, 111, 165,  33, 150
	.byte	200,  20, 116,  41,  52, 242,  21,  46, 247, 122,  96,  93,  51,  50, 178, 206
	.byte	164, 137, 122, 138, 125,  12, 189, 179,  19,  41, 143, 160,  12, 161,  70, 179
	.byte	114, 198, 206,  94, 154,  80,  95, 215, 108,  99,  22,  88, 173, 103,  78, 147
	.byte	 90,  38,  13,  22, 173,  12, 255,  81, 198, 134,  18, 253,  75, 116, 214, 103
	.byte	103, 234,   5, 116, 173, 199, 162, 211, 248, 157, 244, 165, 169, 202,  55, 181
	.byte	 18, 143, 102, 124,  17, 160,  75, 207,  91, 170, 131, 126, 122, 139,  70,  73
	.byte	 54, 246,  71, 230, 206, 148,  74, 169, 144, 242,   3, 217,  66, 183,  20, 143
	.byte	248,   5, 183,   4,  35,  55,  55, 163,  89, 210, 237,  78, 171, 223, 141, 199
	.byte	121,   2,  92, 166, 177,  10,  26, 212, 200,   3, 224, 211, 115, 240, 150, 214
	.byte	168,  28, 177, 232,  82,  39,  45,   0, 230, 106, 247, 111,  68, 114,  36, 204
	.byte	178, 151,  50,  39, 172, 240,  32, 106,  81,  10,  13, 246, 189, 170, 110, 151
	.byte	102,  41, 223, 130, 134, 134,  82, 123,   8,  44, 206, 206, 219, 232, 241,  52
	.byte	149, 253,   9,  26,  48, 177,  36, 197, 236,  53, 156, 183,  78,   4,  80, 157
	.byte	224, 212, 163, 100, 175, 131, 172, 157, 228,  73, 102,  90, 201, 142, 225,  12
	.byte	 96,  39, 115, 232, 253, 105, 127,   7,   3, 232, 228,  34, 107, 211, 119, 115
	.byte	244, 161, 176,   8,  18, 116,  81, 199, 210, 215, 197, 172,   7,  58, 165, 109
	.byte	190,  81, 169, 107, 251, 201,  85,  62,  92, 200, 220,  28, 192, 158,  45, 126
	.byte	158, 152, 237, 165, 110, 130, 138,  38, 247, 150, 202, 214,  46, 120, 244, 189
	.byte	 18, 211, 235, 104, 213, 252, 140,   3,   3, 146, 131, 207,  50, 217, 146, 108
	.byte	174, 135,  48, 184, 247,  59, 212, 117,  39,  59,  84, 234,  61, 148, 177,  75
	.byte	216, 227, 211, 127,  28, 130,  57,  37,  33, 180, 197, 186, 243,  68,  38, 241
	.byte	 78,  15, 167, 151,  85,  93, 184,  49,  52, 179, 126,   6, 245,  24, 223,  49
	.byte	 10,   6, 231, 142, 204,  76,  30,  82,  45,  52, 139, 217,  24, 156,  35,  75
	.byte	174, 146, 230, 238, 180, 198,   5, 150, 133, 132, 103, 141, 128, 178, 141, 130
	.byte	111, 159, 188,  95, 166,  66, 130,  92,  70,  81,  71,  77, 156,  42,   0, 182
	.byte	186, 123, 145, 126, 211, 174, 198, 121,  98, 174, 169, 176, 193, 176, 144,  62
	.byte	198,  80, 209, 101,  86, 130, 230,  83, 195,  31, 220, 223,  30,  16, 187,  19
	.byte	140,  77, 142, 181,  83, 117, 213, 205, 224,  43,  65, 221,  67,  12,  24,  32
	.byte	 56,  56, 120,  12, 137,  91, 233, 229,  76, 128, 215, 202,  10, 201, 111, 218
	.byte	 14,  19, 252, 125,  56, 178, 160, 241,  40, 126,  98, 111, 198,  58,  11, 112
	.byte	 96,  85, 131,  72, 246, 121,  64, 140, 201, 209, 194, 222,  93, 233, 143, 200
	.byte	 92, 212, 195,  77, 132,  67, 139,  45, 119,  54,  14, 125,  50, 228, 209,  67
	.byte	150,  58,  95, 166, 130,  16,  68, 224, 134, 230, 167, 124, 202,  20, 163,  64
	.byte	 74, 186,  61,  66,  29,  24, 157, 115,  64, 220,   9,  72,  63, 120,  45, 215
	.byte	188,  32,  65, 190, 100,  75,  11,  37,  85,  64, 223, 231, 123, 108, 101, 248
	.byte	 78, 185,  63,  95,  71,  63,  31, 205,  16, 183,  25, 171, 137, 236, 119, 181
	.byte	155,  43, 103, 129, 128,  10,  11, 207, 146, 236,  76,  54, 125, 226, 194, 210
	.byte	176,  16, 202,  60,  45,  97,   1, 119, 246, 208,  13,  19,   3, 219,  90, 184
	.byte	254, 120, 104, 193, 203,  33, 226, 224, 189, 222,  49, 167, 207, 177,  51,  54
	.byte	 12, 163,  25,  81, 241,  36, 241, 114,  63,  36, 224, 152, 187,  58, 199, 191
	.byte	210, 249, 179, 128, 241, 170, 146, 235, 167,  15, 158, 216, 128, 188, 151,  14
	.byte	 84,  46,  98, 222, 179,  50, 215, 172,  26,  24, 237, 165,  56, 203, 226, 163
	.byte	 91, 137, 214,  44, 255,  91, 215, 255, 113, 153,  89, 232, 151, 155,  93, 217
	.byte	208, 145,  65,  93,  97,  52, 229, 104, 225, 153, 221, 166, 132,  90,  20, 115
	.byte	161, 114, 214, 175,   2, 159, 178, 250,  35,  17,   4, 208, 214, 131,  59, 130
	.byte	 22,  22, 191, 165, 180, 118, 251,  77,  69, 109, 209,  93, 236,   6,  30, 233
	.byte	 71,   7,  81, 159, 183, 169, 190, 149, 109,  87,  68,   6,  94,  74, 244,  84
	.byte	246,  19, 113, 114, 130,  93, 231,  35, 114, 191,  95,  60, 115,  32, 206, 238
	.byte	177,  66,  19, 124, 135, 175,  31,  92, 154,  72, 234, 189, 198, 132,  38,  40
	.byte	244, 255, 151,  43, 183, 153, 119,  81, 238, 224,  74, 125,  56, 197, 149, 235
	.byte	 76, 146,  41, 176, 127,  20,  96, 210,  46, 151, 128, 136, 180,  22,   7, 107
	.byte	102, 147,  84, 111,  82, 169, 169,  12, 250, 231,  93, 110, 185, 149, 150, 115
	.byte	192,  49, 138,  43,  91,  92,  78, 230,  66, 176,  79, 155,  51, 158,  94,  75
	.byte	172, 119, 154, 225, 125,  39, 246,   1,  31,  97, 105,  16,  11,  80,  80, 246
	.byte	196,  30, 101, 234,  29, 170, 171, 215,   8, 127, 158, 253,  85,  25,  76, 170
	.byte	 48, 214,  84, 187, 196,  24, 143, 130, 193, 250,  22, 105, 139,  34, 236, 147
	.byte	123, 120,  62,  32, 243,  19, 196, 219,  71,  19,  78, 156, 218, 185, 146,  17
	.byte	128, 167, 228,  60, 152, 112,  19, 130, 182, 169, 216, 209, 115, 192,   9, 102
	.byte	195, 218,  91, 140,  65, 215, 223, 219,   9,  73,  58,  81, 138, 235, 103, 138
	.byte	 76,  65, 133,   1,  42,  12, 236,  29, 193, 204,  33, 237, 230, 137, 125,  12
	.byte	128, 248, 229, 121,  78, 119, 126,   4, 129, 191, 230,  42, 212, 242, 181, 119
	.byte	138, 194,  55,  13, 161, 242, 118, 239,  44,  53, 203, 104, 141, 198, 187, 246
	.byte	222, 208, 237, 104, 177, 167,  36, 103, 124, 163,  72, 220,  98, 211, 211,  14
	.byte	228,  71,  24,  30, 234, 196,  56, 180,  95, 239, 200, 215, 240, 216, 156, 203
	.byte	 32, 234, 210,  89,   8, 235,  65, 231,  72,  94, 195,  51, 215, 225,  21, 117
	.byte	136, 195, 255, 239, 234, 219,  50,  12, 232,  49,   3,   2, 198, 183,  14, 109
	.byte	220,  16,   4, 156,  90,  87,  36,  73, 241,  81, 249,  73, 218,  72,  91,  10
	.byte	 12,  90, 165,  65, 173, 232,  16,  18,  42, 230, 155, 152, 196, 214, 142, 166
	.byte	212,  82, 148, 166, 196, 202, 117,  83,  54,  72, 194, 107,  78,  50, 216, 110
	.byte	  0,  29, 206,  78, 221, 195, 209, 176, 163, 167, 221, 156,  30,  79, 221, 201
	.byte	203, 212, 154,  45, 163, 126, 173,  84,  64, 235,  39, 228, 167,   7,  39,  21
	.byte	 64,  20, 191,  55, 159,  50, 199, 244, 109, 123,  20,  22,  71, 218,  10, 175
	.byte	 59, 190,  75,  49, 201, 157, 251, 148, 103,  16, 124, 204,  47, 169,  67, 159
	.byte	240,  77,  16,   0, 192, 124,   9, 123,  41,  56, 226, 199,  62,   7,  91,  58
	.byte	190,  85, 249,  14, 121, 142,  70,  76, 250, 216, 186, 173,  54, 132, 135,  47
	.byte	216, 199,  44,  77,  44, 104, 118, 131,  11,  49, 153,  36, 104, 135, 101,  90
	.byte	 53, 194,  71,   1, 163,  98, 134,  93,  46, 142,  73, 109, 249, 251,  90, 192
	.byte	252,  60, 223, 211, 149,  48, 214, 197,  26, 111,  57,  93, 207, 223,  38, 138
	.byte	181,  29, 189,  30, 179, 176, 236,  66,   5, 110, 211, 159, 172, 219,  39,   7
	.byte	182,   8, 146,  56, 228, 164,  71,  93,  90,  31,  75,  12, 185,  42, 234, 148
	.byte	220, 229, 160, 165, 250,   4, 178, 126,  24,  58, 121,  61, 124, 118,  65,  63
	.byte	158, 159, 145, 213, 113, 179, 140, 130, 171, 172,  46,  70,  63,  94, 152, 220
	.byte	104, 231,   3, 217,  86, 237,  97,  43, 220,  49, 118, 164, 201,   7,  32, 248
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	230, 151, 135, 241, 116, 219, 252, 239, 137, 229, 138, 238, 164, 129,  34, 124
	.byte	120, 146,  54, 188,  71, 202,  83, 199, 205,  41, 216,  51,  10,  53, 166, 249
	.byte	120,  90,  17, 128, 121,  50,  33, 126, 223,  20, 194,  46,  45, 155,  34,  89
	.byte	228, 170, 133,  79, 174, 190,  82, 248, 105, 250, 164,  91,  17, 221,  70, 154
	.byte	222, 226,  75, 161, 158,  86,  27, 255,  90, 243, 150, 143, 105, 242,  12,   7
	.byte	179, 200, 155, 161, 145, 143,  91, 232,  75, 181, 207, 172, 149, 249,  49, 133
	.byte	140, 252, 110,  44, 106, 216, 253,  36,  33, 103,  66, 135,   5, 201, 148, 189
	.byte	189,  18, 144, 227, 112, 145, 226, 197, 112, 145,   3, 238, 123, 177, 112, 234
	.byte	228,  78,  61, 192, 191,  67, 230, 249,  97,  80,  18, 237, 251, 193,  40, 171
	.byte	217, 202, 198, 161,  73,   3,  47,  91, 164, 127, 121,  19, 186,  92, 190, 167
	.byte	152,  27, 147,  24, 101,  45,  41, 143,  19,  42,  34, 216,  10,  78, 200, 176
	.byte	119, 236, 184, 218,  31,  25,   5, 128, 247, 202,  74,  49, 180, 150, 202, 134
	.byte	 58, 206, 125,  25, 234,   6, 191, 145,  73,   0, 187, 198,   7, 151, 137, 171
	.byte	 97, 123, 193, 132, 116, 113,  98, 146, 234, 114,  89,   0, 220, 152, 144, 242
	.byte	252,  23, 193,  36,  81, 191, 233, 131, 249, 222, 180,  70, 198,  63, 187,  69
	.byte	 68, 195, 253,  22, 198, 144, 104, 142,  36, 155,  20,  13, 179, 212, 198, 151
	.byte	254, 226, 115,   6,  90, 213,  49, 196,  46, 227, 145,  34,  47,  81, 176, 158
	.byte	225,  82, 247, 203, 209, 250, 229,  84, 215, 247, 231, 131,  16, 177, 202,  13
	.byte	250,  78, 240, 116, 235, 194,  37,  34, 172,  25, 108,  97, 113,  58, 227, 126
	.byte	 64, 147,  89, 129, 239, 232,  21,  54, 247,  85, 158, 104,  51,  50, 141, 118
	.byte	 14, 201, 132, 224, 194,  14, 205, 176, 172, 243, 152, 125,  61, 237, 130,  97
	.byte	147,  10, 164, 231, 255,  11, 178,  33, 243, 224,  74,  64, 134, 170, 213, 141
	.byte	 32, 188, 227, 146,  62, 135, 143, 180, 251,  37,  77, 202,  80,  96, 163, 138
	.byte	213, 250, 215, 123,  44, 136, 169,  28, 154,  97, 146,  73,   2,  99, 212, 111
	.byte	166,  36, 102,  84, 113, 161,  64,  31, 156, 168, 102, 200, 117, 103,  78, 246
	.byte	253, 189, 198,   4, 147, 184,  65,  74, 198, 114, 132, 245, 147,  27, 156, 174
	.byte	144, 156, 202, 150,  92,   9, 214, 245,  66,  52,  40, 111, 234,  24, 181, 165
	.byte	175,  53,  40,  22,  62, 229, 193, 130, 169,   9, 120, 213, 119, 244,  87,  63
	.byte	200,   7, 170,  16,  23, 242, 217, 196,  20,  60,  98,  24,  38,  24, 239, 252
	.byte	217,  90,  14, 157, 207,  64, 213,  99,   1,   6,  35, 254, 226, 113, 142, 255
	.byte	184, 200,  34, 201, 157,  37, 154,  97, 229, 238, 131, 199, 167, 126,   6,  93
	.byte	 16, 131,  75,  10,  56, 133, 157, 161, 218,  59, 221, 237, 202,  66, 133,  29
	.byte	152,  21, 251,  85,  37, 189, 181, 243, 119, 222,  88,  68,  82,  98, 122,  66
	.byte	134,  11, 112, 231, 189, 235, 101, 167, 223, 179, 113, 119, 234, 152, 146, 150
	.byte	110,  21, 201, 101, 182, 232,  47, 254, 159,  16,  42, 132,  88,  89,  32,  40
	.byte	 44, 250, 209,  43, 218,  52,  58,  53, 105,  12, 146, 102,   8,  71,  55,  73
	.byte	240,   2,  99, 177,  62, 250, 160,  71, 103,  53, 124, 179, 197, 202, 223,  15
	.byte	155,  40, 141, 222, 160,  17,  33, 167,  20,   3, 251, 196,   1, 206,  79, 149
	.byte	232,  14,  58, 142,   5,  87, 189, 104,  71,  93,  98, 138, 243, 159,  58, 197
	.byte	182, 182,   7, 169,  36, 151, 233, 102,  52, 242, 230, 103, 249,  36, 162,  55
	.byte	 38,  78,  62, 137, 157, 174,  82,  13, 178, 103, 216,  93,  51,  44, 191,  92
	.byte	 95,   3,  69, 155, 223, 246, 122,  57,  15, 170, 214, 229,  33,  54, 228, 246
	.byte	242, 182, 133,  84,  68, 122, 199, 131,   9,  14,  57, 104, 137, 247, 125, 222
	.byte	 63,  81, 245, 114,  97, 215,  34, 160, 167, 138, 184,  32,  44,  14, 230, 166
	.byte	 52, 230,  42,  81, 253, 164, 158, 169,  39, 238, 140,  51, 160, 183, 240, 192
	.byte	212,  55, 105,  74, 158,  67, 214,   0, 170,   9, 249, 203,  65, 248,  52, 143
	.byte	246, 128, 180,  70,  16, 224, 211,  55,  56,  28,  42, 158, 107, 230,  29, 190
	.byte	204, 226, 147, 224, 193, 212,   2,  31, 161,  47,  80, 144,  93,   7, 100,   5
	.byte	  6,  69, 107, 125, 164,  42, 236,  94, 249, 216,  21,  95, 154, 145, 197,  56
	.byte	202,  62, 186, 236, 104,  83,  29, 234,  74, 136, 178,  13,  91, 112, 231, 177
	.byte	 14,  90, 144, 172, 244, 132, 170, 153,  99, 224, 249,  62,  83, 131, 127, 248
	.byte	123,  54, 189, 116, 129,  23,  93, 212, 129,  39,  78, 112,   7,  89, 157, 231
	.byte	188,  44,   1,   1, 191, 215, 252, 185, 132,  96, 190,  26, 115, 236, 191, 241
	.byte	 31,  28, 111,  73,  75,  39, 167,  95, 187, 176, 216, 210,  74,  23,   6, 232
	.byte	242, 214, 227, 145, 252,   4,   7, 145,  40, 140, 233, 106, 104,  78, 230, 206
	.byte	 52,  60,  16, 166, 200,  44,  58, 208, 131,  83, 227,  79, 236, 168,  87, 205
	.byte	 32, 105,  35, 144, 223,  79, 230, 227, 153, 237, 161, 197, 101, 226, 160,   5
	.byte	 63,  26, 222, 170,  56, 216,  10,  87,  24, 250, 228,  83,  48, 218, 126, 114
	.byte	146,  17, 180, 156,   3, 106,  59,  32,   2,  43, 110, 148, 124, 129, 125,   2
	.byte	106, 145, 169,  80, 212,  26, 104, 152,  76, 229, 128, 103, 228,  80, 106,  84
	.byte	158, 134,  97,  11, 137,  14,  18,  41, 224, 153, 136, 111, 125,  37, 204, 144
	.byte	229,  57, 224, 146,  57, 193, 172, 244, 209, 216, 181, 119, 191, 223, 210, 197
	.byte	 62, 227,  27, 199, 190, 216, 109, 150,  65,   3,  47,  25, 174,  76, 143,  72
	.byte	232,  62,  45,  42,  19,  86,   8, 212, 162,  52, 247,  81, 106, 140,  21,  62
	.byte	 92, 140, 206, 112,  94, 247,  69,  37, 137, 223, 189, 238, 107, 186,  32, 184
	.byte	229, 204, 217,  10, 101,  20, 167,  59, 175, 174,  10, 174, 178, 157, 111, 215
	.byte	 80,  62,  72,  50,  71,   6,  47, 123,  10,  84, 245, 208, 203, 245, 214, 101
	.byte	214,  39, 208,  98, 193, 196,  98,   5, 141,  39, 219,  60, 131, 226, 141, 252
	.byte	214,  10, 123, 237, 254,   4,  36, 205, 129, 158,  46, 193, 141, 246, 134, 155
	.byte	 21, 183, 107, 234, 198, 150,  33, 195, 250, 184,  52,  54,   5,  77, 105, 119
	.byte	214,  85, 122, 184, 199, 236,   2,  95,  18,  46,  23, 177,  50, 181, 224, 246
	.byte	238, 120, 100, 154, 191,  89, 143,   3,  37,  91, 233,  99,   9, 115, 182, 109
	.byte	164, 214, 253,  48,   1,  55, 127, 177, 161, 119,  24,  66, 221, 167,  37, 191
	.byte	 34, 230, 210,  61,   3, 248,  95,  44,  24,  56, 214, 179, 210, 105, 254, 136
	.byte	 32,  87, 230, 135, 134, 131,  60, 200, 121,   6,  25, 231,  34,  71, 241,  56
	.byte	 97, 225, 145, 171, 209, 103,  49, 235, 239, 203,   6,  95,  39,  61, 194,  90
	.byte	222, 111, 252,  24, 138, 102,  93, 154, 210, 183, 152, 234,  35, 109, 197, 160
	.byte	236, 107, 232, 197,  72, 186,  60,  39, 108, 176, 157, 204, 144,  19, 105, 153
	.byte	 70, 255, 231,   0, 188,  74, 255,  27, 186,   3,  47, 246, 214,  94,  57, 114
	.byte	203,  52, 177,  62, 157,  48, 147,  79,   6,  49, 166, 156,  53,  24,  38,   2
	.byte	142, 233,  63, 146,  45,  26,  99, 183, 149,  44,  83, 252,  19, 220, 212, 172
	.byte	171,  34, 161, 184, 148,  16, 141, 150, 129, 137, 194, 242, 176, 123, 226,  75
	.byte	 72, 177, 110, 111, 219, 247,  18,  75, 170,  82,  18, 241,   6, 120, 176, 155
	.byte	 81, 121, 125, 127,  55, 215, 237,  76,  33, 161,  77, 195, 201, 105,  39, 215
	.byte	 78, 244, 204,  35,   9, 162, 100, 114, 246,  66, 194, 205,  78,  90,  69, 249
	.byte	132, 125,  57,  20,  17, 128,   5, 106,  50, 252, 206, 169,  85,  78,  82, 198
	.byte	226, 247,  17, 138, 242, 156, 177, 135, 239,   1, 124,  84, 222, 104,  79, 237
	.byte	 22,  43, 223, 103, 209,  70, 191, 221, 166, 143, 157, 120,   9,  78, 139, 107
	.byte	240, 202, 119, 176, 197, 140, 180, 156, 147, 128, 103, 123, 137, 177,  14,   0
	.byte	204,  96,  46,  91, 215, 154,   8, 145, 246, 105, 220, 135, 146,  80,  54, 217
	.byte	 28, 122, 181, 187, 204,  82, 238,  66, 142,  74, 237, 145, 193, 195, 195,  22
	.byte	255, 154, 110, 147, 236, 225,  43, 183, 251, 217, 218, 118,  64, 205, 210,  86
	.byte	242, 124, 190,   9, 179,  29,  80, 191, 193, 208, 175,  28,  87, 143,  86, 133
	.byte	226, 128, 251,  94,  33, 170, 205,  19,  17, 100, 107,  31, 105, 187, 142,  14
	.byte	252, 127, 188, 107, 171, 159, 104, 203, 132, 182, 173,   2,  89, 174, 193,   5
	.byte	237, 235, 234,  79, 220,  81, 152,  12,  68, 206, 209, 125, 155, 171, 125,  18
	.byte	 98,   9, 145,  54, 238,  93, 133, 113, 209, 155, 116, 226,   6, 152,  95,  63
	.byte	 52,  72, 119, 184, 209,  20, 210, 127, 235, 175, 182,   3, 238, 246,  31, 119
	.byte	110,  96,   0, 101, 246, 210, 173, 185,  53, 104,  40, 223, 209, 250, 157,  35
	.byte	 59, 194,  72, 192,  26, 120, 148,  62, 206, 225,  72, 207,  50, 121,  95, 174
	.byte	226,  14,   2, 226, 162,  64,  83,  73, 156, 165, 162, 222, 136, 171,  15,  32
	.byte	128, 100,  13,  18,  94, 151, 222, 226,  16, 164,  51, 157, 244,  90, 148,  17
	.byte	 36,  94, 213, 243, 168, 163, 250, 150, 242, 253,  91, 218, 210,  68,  19, 101
	.byte	 47, 139,  91, 240, 147, 128,  35, 223, 252, 131,  74,   6, 158,  32,  25, 184
	.byte	134, 218,  78, 189, 198,  17, 221,  31, 227, 229, 207, 130,  41,  79,  52,  14
	.byte	 76, 199, 216,   8, 232, 161,  97,  86, 103,  99, 240, 101,  82, 250,  11, 193
	.byte	 38,  52,  82,   4, 183, 156, 195,  17, 244, 236,  21, 175,  33, 205,  41, 139
	.byte	229, 179, 181, 117, 204,  68, 235, 176, 253, 120,  70,  52, 212, 154, 198, 190
	.byte	102,  96, 156, 149,  15, 118,   5,  52, 218,  66, 195,  35, 229, 101, 222,  41
	.byte	 85,   3, 217,  89, 183, 135, 134, 108, 215,  22, 186, 185, 172, 210, 164, 243
	.byte	142,  10,  27, 182,  40, 177,  29, 113,  68, 231, 173, 174, 164,  65,  78, 218
	.byte	 84, 220, 106, 247,   1,  30, 233, 171, 117,  75,   7, 160,  57, 109, 160, 206
	.byte	 70, 151, 148,  42,  38, 236,  93,  33, 128, 167, 242, 103, 227, 122,  13,  48
	.byte	140, 159,  99,  10,  76, 168, 160,   9,  11,   7,   0, 143,  64, 125, 111,  98
	.byte	 28,  86, 195, 246,  92, 255, 206,  45,  92,  64, 246, 147, 226,  39,  73,  86
	.byte	 27, 117, 106, 185,   4, 158,  79, 205,  33,  17, 105, 224, 238, 166,  20, 220
	.byte	 28,  41,  46, 223, 221, 140, 132,   5,  83,   9, 167,  76, 141,  21,  72, 140
	.byte	225,  95,   9, 162, 182, 208, 105, 192,  39,  38,  33,  36,  74, 191, 155, 220
	.byte	 20,  47, 103, 211,  56, 239, 125,  20,  96,  84, 251,   4,  65,  86,  13, 252
	.byte	176, 255, 118, 162, 151,  46,  26, 242, 247,   3, 116,  93, 227,  43, 167, 143
	.byte	188, 246, 215,  20,  74,   0,  66, 193,  43,  23,  95, 159, 101,  94, 252, 208
	.byte	 59, 244, 113,  14,  17,  89, 233,  90, 210, 208,  66,  63, 208, 140,  48, 110
	.byte	 38, 125,  33, 186, 172, 188, 212,   7,  91, 222,  16, 251,  81,  11, 142, 179
	.byte	217, 203,  93,  19,  77,  57, 231, 139,  27, 101,  58,  35, 159, 184, 238, 202
	.byte	  0, 125, 178, 250, 188,  61,  67,  90, 234, 118,  66,   7,  50, 149, 235, 247
	.byte	102, 254,  22, 195, 241, 109, 175,  83,  50, 226, 244, 254, 204, 127,  33, 183
	.byte	 70,  13,  78,  17, 121, 162, 212, 246, 249,  25, 217,  95,  28,  40,  82, 201
	.byte	 14, 192, 173,  19, 206,  44, 249,  91,   4,  14,  23, 177,  49, 171,  50,  84
	.byte	128,  51, 107,  47, 203, 109,  19, 144,  20, 248, 230, 215, 188,  85,  69, 150
	.byte	 16, 245,  44, 204,  63,  38, 108, 231, 185,  27,  37, 252, 250,  78,  46,  68
	.byte	244, 235, 195, 180, 111, 208,   5,  24,  68, 207,   0,  40, 222, 200, 237,  11
	.byte	 35, 119, 118, 124, 175, 167,   0, 124, 159,  87, 223, 156,  48,  99,  11, 235
	.byte	 60, 253,  39, 135,  35,   6,  36, 156, 171, 177, 107, 107, 174,   1, 231, 238
	.byte	186, 114,  49, 142,  26,  27,  59, 192,   3, 204,  42, 178, 188, 142, 164,  86
	.byte	 56, 112, 156, 151, 207, 162,  57, 149, 175,  71, 241, 246, 135, 224, 135,   7
	.byte	 39, 239,  16,   1,  41,  91, 127, 137,  90, 215, 155, 210, 124, 234, 118, 166
	.byte	146, 244, 135,   1, 189,   3, 200,  85,  51,   0, 232,  66, 113,  94, 211, 190
	.byte	 86, 129,  34, 157,  14,  71, 135,  44,  56, 182,  41, 115, 230, 164,  15, 240
	.byte	124, 106, 182, 237, 199, 222,  17, 204, 180, 103, 158, 201,  34,  67, 219, 107
	.byte	 90, 139, 157,  83, 121, 235, 228,  84,  29,  22,  68,  17,  20, 159, 132,   1
	.byte	212, 137,  30,   3, 120, 169,  81, 190,  28, 192,   9, 126, 156, 147,  46, 133
	.byte	120,  82, 121, 223, 239, 241,  91, 239, 117, 112, 127, 126, 231,  56,   5,   0
	.byte	  2, 143, 201,  82, 221,  89, 109, 211, 205, 167,  70, 127,  66, 241, 238, 184
	.byte	 16,  98,   0,  36, 220, 132,  60, 238, 199, 188, 204,  38,  29, 112, 243, 185
	.byte	148,  36, 126,  59, 200, 243, 188, 220, 149, 248,  30,  33, 180, 230,  53, 149
	.byte	 12, 123, 162, 181,  44,  86, 148, 218, 182, 155, 177, 196, 183, 123, 179,  16
	.byte	242,  32,  21,  29,   3,  63,  98,  96,  92,  64,  61, 238,  55, 197,  15,  40
	.byte	195, 236, 134, 215, 194,  25, 100,  74, 123,  63,  91, 178, 114,  70, 208, 253
	.byte	188, 220, 199, 121,  12, 216, 107,  85,  80, 168, 195, 195, 226, 172, 132, 253
	.byte	162, 172, 233, 191, 119, 206,  93, 147, 119,  91, 145,  76, 219, 103,  76, 106
	.byte	  6,  45,  38, 126,  47, 233, 199,  55, 207, 249,   4, 115, 248, 246,  70,  35
	.byte	215, 136, 159,  89, 179,  23,  82, 204, 198, 110, 252, 188,  18, 160, 153, 132
	.byte	126,  22, 153,  80, 133, 217, 119,  60,  44,  30,  31, 137, 152, 159,  83,  49
	.byte	244, 181, 197, 184, 176, 246,  69, 196, 201,  94,  63, 142, 254,  52,  77, 108
	.byte	214,  47, 193, 113,  14, 112,  93, 224, 238,  98,  24,  61, 118,  82, 154,  78
	.byte	203,  51, 106,  50, 108, 240,  20,  12,   7, 175, 227, 149, 214, 232, 108,  56
	.byte	142,   4,  21,  57, 137, 176,  94,  89,  68, 177,  98,  36, 186, 117,  50, 169
	.byte	165,  69,  47, 103, 137, 171, 133, 216, 239, 105,  94,  30, 176,  68,  23, 200
	.byte	246,   9,  86, 136,  60, 164, 183,  84, 225, 178, 204, 199, 223,  11, 194,  68
	.byte	105, 214, 145,  65,  82,  99, 238,  57, 120,  76, 123, 200, 202, 176, 157, 113
	.byte	106,   2,  35,  18, 238,   9, 245, 119, 173,  13,  86, 180,  10, 136, 126, 105
	.byte	 82, 238,  15,  28, 230, 184, 143,  28,  80, 101,  79,  96,  73, 201, 246, 231
	.byte	214, 175,  58, 231,  29, 199,  16, 188,  13, 203, 241, 209,  19, 234, 232, 107
	.byte	 25,  10, 150,  50, 199, 220, 195,  14,  85, 177, 121, 100,  98, 109,   8, 231
	.byte	122, 180, 153, 129,  24, 215, 202, 152,  27,  35,  15, 182, 126, 186, 150,  85
	.byte	203, 189, 129, 128,  27, 103,   8,  61,   1,  44, 102, 207,  60,  72,  14, 129
	.byte	 66,  46,  10,   3, 155, 208,  97, 135, 243, 209,  56,  74, 196, 247,  79, 255
	.byte	218, 168,  74, 154, 163,  92, 224, 145, 140, 166, 194,  97, 245,  74,   1,  30
	.byte	192, 109,   4, 190,  30,  11,  55,  69, 192, 186,  51, 146, 174, 217, 217, 188
	.byte	148, 117,  58, 127, 123, 209, 252, 115,  71, 223,   4, 197, 192,  26, 166,  90
	.byte	180, 121, 228, 198,  78, 229, 123, 202, 180,   6, 184,  37,  48, 101, 173, 158
	.byte	240, 169,  58,  50, 104, 212,  98, 243, 204,  52, 244, 124, 154,   3,  29, 122
	.byte	154, 177, 196, 211, 156, 254,  25,  38, 128,  93, 168, 123, 182, 100, 194,  39
	.byte	210,  24, 190, 196, 170,  29, 216, 180, 129, 115,  24,  91, 176,  80, 103, 125
	.byte	160,  68, 162,  46,  68, 145, 191,  15, 220,  88,  73, 157,  50, 131,  95, 249
	.byte	 33,  37,  45, 186, 195, 190, 235,  35,  75,  93, 138, 150,  40, 105,   8, 121
	.byte	234, 217, 157, 200,  99, 160, 245,  87,   1, 190,  68, 210,  74,  96, 118, 252
	.byte	243,  43, 197, 215,  29, 187,  63, 133, 109,  80,  60,   2, 170, 156,  34,  84
	.byte	208, 254, 132, 156,  47, 141,  49,  40, 154,  23, 206,  44,  54,   2,  82, 152
	.byte	163, 193,  71,  94,  50, 166,  79, 159,  34, 237, 145, 126,  63, 214,  88, 118
	.byte	120,  59,  45,  90,  85, 162,  11, 121,  82,  98, 229, 126, 107, 251, 246, 183
	.byte	129,  23, 161,  90,  10, 214,  17,  54,  37,  23, 101,  66, 100,  90,   1, 111
	.byte	148,  21,  18, 116,  72,  19, 221,  10,  99,  53, 219, 137, 102,  19, 105, 186
	.byte	163, 103,   9,  93, 222, 197,  14, 109, 255, 197,   1,   4, 177, 101, 202, 195
	.byte	 60, 102, 233,  45, 206,  36,  16, 241, 140, 117, 132,  83, 194,  46, 126, 143
	.byte	183, 135,  21, 205, 111, 117, 171, 106, 165, 225, 141,  81,   4, 161,  55, 143
	.byte	166, 132, 247,  92, 191, 185,  27, 234, 109, 212, 203,  17, 204,  26,  53,  10
	.byte	222,  40, 140,  18,  68, 197, 155, 112,  95, 255,  25,  65,  27,  31,  63, 239
	.byte	 14, 220,  80, 214, 204, 119, 101, 209, 178, 136,  47,  91,  57,  81, 234, 244
	.byte	 87, 181,  89, 175,   0,   4,  38, 230,  43, 116,  50, 101, 198, 100, 227, 114
	.byte	252, 186,  23,  91,  82, 182, 117,  27, 115,  44,  72,  82, 159,  61, 212, 157
	.byte	196, 160, 132,   6,  37, 110,  37, 217, 157, 149, 189, 245, 235,  53, 171,  30
	.byte	 34, 184, 162, 122, 156,  65,  88,  26,  99,  63, 240, 238,  72,  84, 155, 253
	.byte	 26, 107, 190, 186,   2,  79, 221,  73,  28,  58, 214, 175, 152,  51, 176, 181
	.byte	 52, 207, 106, 190, 209, 169, 171, 114, 167, 152,   8,  30,   0, 254, 182, 147
	.byte	108, 123, 193, 136,  61, 132, 192, 201,  16, 243, 118, 100,  84, 149, 108,  95
	.byte	210,  13,   1,  37,  32, 137, 100, 102,   9, 237,  50,  43, 143,  55,  31, 225
	.byte	229, 199, 115,  46,  25,  16,  61, 144,  83, 207, 247, 210,  54,  63, 232, 101
	.byte	174, 221,  51, 170, 198,  95, 165,  95, 163, 168,  71, 154, 168, 202, 110, 152
	.byte	 90, 129, 252, 243, 205,  80, 237,  11, 171,  96, 244, 243, 138,  11, 137, 234
	.byte	 60, 156, 128,  31,  97,  79,  76,  24,  29, 142, 131, 204, 139, 161,  65, 214
	.byte	 41,  25, 133, 168, 173, 178, 159, 123,  25, 244,  80, 133,  52, 116, 190, 101
	.byte	184, 111,  36,  50,   9, 106, 185,  57, 103,  73,  15, 114, 112, 208,   8,  41
	.byte	146, 212,  50, 249, 252,  27, 241,  59, 113,  83, 193, 124, 100, 242,   8, 187
	.byte	 96, 157,  48, 222,  63,  90,  30, 106,  53,  58, 199,  34,  74,   1, 252, 241
	.byte	  6, 189, 179, 247,   2,  35, 255,  12,  54, 237,   4,  68,  73, 186,  35,  44
	.byte	222, 206, 137,  26,  97, 106,  48, 101,   7, 109,  26, 144, 195, 174,  67, 131
	.byte	 63, 102,  12, 150, 215, 236, 249, 186,  96,  75, 246,   1, 180, 245,  14, 251
	.byte	240,  41, 237, 150,  42,  74,  30,  26,   8, 149, 231,  74, 160, 129, 181,  58
	.byte	 48, 227,  32,  72,  12,  41, 162, 226, 207, 196, 249, 123, 255, 106,   5,   8
	.byte	 52, 101,   4,  76, 117, 111, 173,  16, 157, 179,  25, 127,  13, 197,  93,  18
	.byte	 23, 169, 188, 246, 229,  44, 197,  63, 121,  13, 175, 224, 219,  90, 168, 217
	.byte	 48,   7, 206, 228, 125, 180,  67, 151, 113, 199, 175, 158, 163,  34,  96,  41
	.byte	119, 103, 111, 161, 226,  47,  81,   7, 175, 163,  34,  66, 104, 100,  40, 181
	.byte	182,  72, 118,  87, 125, 182,  80, 153, 212, 120,  60,  48, 176, 191, 112,  85
	.byte	240, 205, 245,   8, 156,  65, 121,  92, 206, 140, 255, 230, 147,  36, 151, 147
	.byte	 82,  70,  25, 101, 245, 193,  11,  60, 165,  90, 233, 205, 116, 235,  54,  19
	.byte	183,  21, 229, 222, 240,  54, 240,  88, 161, 216, 170,  83, 141,  71, 117, 174
	.byte	176,  94, 162, 153,  26,  27,  84,  51,  70,  80, 202, 171, 188, 131, 228,  28
	.byte	172, 133,  80, 172,  84,  86, 218,  32, 105,  76, 227,  13, 167, 244,  90, 212
	.byte	214, 179, 165, 227,  57, 120, 191,  40, 182, 124,   8,  36,  27, 245,  33,  75
	.byte	 63,  14, 137,  87,   9, 196, 145,  83, 175, 156, 237, 121, 180,  79, 132, 238
	.byte	 80, 197,  89,  98,  32, 200,  88,  20, 181,  94, 150,  39,  46, 191, 237, 159
	.byte	244,  28, 192, 231,   2, 143, 244,  41, 153, 243, 166,  86,  60, 183,  12, 176
	.byte	126,  72, 226, 253,  72,  16,  19, 229,  20, 204, 195, 229,  82, 111, 156, 137
	.byte	 53,  81,  88,  62, 248,  72,  92, 174,  17, 101, 160,  51, 137,  29, 197, 178
	.byte	 70, 158,  95, 106, 219, 244, 111,  14, 133, 187,  35,  80, 198, 103, 223, 101
	.byte	 12,  45,  88,  97, 161,  50, 246, 240, 104, 178, 206, 132, 164,  19, 213, 206
	.byte	122, 210, 236, 116, 209,  34, 246, 101,  78, 232,  97, 129,   6, 253,  80, 228
	.byte	211, 172, 165,  94, 226,  58, 115,  38, 230, 126, 126, 120, 140,  90, 134,  90
	.byte	  0, 191,  11, 210, 126, 151,  56, 178, 130, 105,  75, 251,  43,  36,  56, 249
	.byte	211, 205,  19, 184, 224, 240, 149, 151,  70, 130, 183,   4, 247,  27,  95,  78
	.byte	  4, 225, 120, 215,  25, 204,  26, 200, 239, 137,  98, 248, 156, 224, 122, 196
	.byte	 56,   2, 205, 187, 163, 233, 233, 140,  86, 194, 103, 115, 112,  53,  96,  35
	.byte	 40,  12, 195, 118, 127, 133,  80, 149, 107, 164, 166, 119, 170, 221, 214,  47
	.byte	181, 224,  41, 241,  11,  77,  15, 195, 213, 160,  51, 215,  85, 150,  45, 190
	.byte	250, 240, 132,  33,  44,  90,  14,  50,  59, 173, 202,  11,  10, 189,  77,  60
	.byte	213,  59, 133, 237,  80, 232,  99, 255,  29,  63, 225,  23,  40, 173,  37, 139
	.byte	202,  58, 224,  19, 220, 174,  65, 248, 192, 206,   0, 148,  80,  34,  56, 134
	.byte	235,  83,  70,  55,  11, 226, 190,  85, 234, 239,  25,  88, 199, 113, 248,  85
	.byte	176, 124,  85, 216,  29, 120, 238, 155,   0, 115,  76, 216, 251,  77, 108, 153
	.byte	126, 232, 125,  48, 191,  65, 241, 157, 205, 236, 151, 103,  27, 144,   7,  84
	.byte	218,  87,  11, 205,  62, 106, 203, 255, 175,  72, 172,  18, 103,  59, 115,  32
	.byte	 66, 162, 195, 176, 154, 161,   5, 223, 127,  40, 104, 132, 133, 209, 174, 244
	.byte	146, 213, 210,   0, 139,  70, 138, 164,  56, 143, 226,   2, 235, 164,  91, 132
	.byte	193, 121, 210, 135,  54, 134, 195, 100, 194, 195, 113,  68, 163,  16, 216, 167
	.byte	210,  97, 163, 234,  43, 144,  58, 151, 123, 118, 182,   0, 164, 252, 197, 176
	.byte	182, 238,  91,  92, 164, 107,  37, 131,  32,  36, 251, 178,  43,  39, 244, 183
	.byte	150, 208, 191, 170,  61,  42, 234, 233, 115,  42, 145,  19,  52, 150,  32,   9
	.byte	145, 244,   0,   7, 186, 140,  29, 214, 135,  50, 126, 143, 137,  48, 220, 117
	.byte	236,  46,  19, 237,  70, 242,  55,  24, 236,   6,  94,  27,  57,  31, 148, 201
	.byte	104,  13, 130, 204,  73, 134, 204,   8, 246, 197, 108, 188,  38,   5,  13, 101
	.byte	124, 186, 117,  54, 253, 197,  22, 247, 205, 192, 136, 120, 101, 182,   2,  49
	.byte	162, 238, 127, 116, 175, 201, 230, 214, 134,  54, 203,  94, 175,  80, 179, 230
	.byte	226,  53,  13,   6, 139, 183, 106, 198, 209,  78,   5,  98,   3,  67, 108, 157
	.byte	 37,  25, 115,  20, 118, 234,  51, 152, 193, 150, 166, 224, 193,   1, 164, 218
	.byte	166, 182, 123, 200, 199, 155, 180, 189, 175, 105, 214,  45,  92, 239, 107,   0
	.byte	 54,  61, 132, 158,  13, 183, 158, 220,  36, 209, 230, 110,  94, 114, 100, 238
	.byte	 24,  50,  65,  47,  28,  85,  22, 178,  27, 125, 168, 222, 130, 168,  61,   1
	.byte	221,  26,  24, 224, 223, 144, 247, 113, 211,  40, 222, 255,   4,  23, 229,  59
	.byte	110, 196,  11, 141, 129,  61, 116, 246, 163,  70, 248,  34, 124, 215,   8, 167
	.byte	120,  82,  53, 234,  99, 195,  57,  28, 143, 219, 156,  90, 132,  53, 187,  43
	.byte	156, 107, 149, 114, 160,  20, 133,  54, 149,   2, 162, 241, 209,  87, 196,  36
	.byte	216, 145, 147, 240, 206,  67,  27,  41,  66, 237, 200, 241, 218, 183, 228,   6
	.byte	 74, 225,   0, 169, 253,  56,  79, 139, 246, 160,  88,  93,  74, 236,  16,  37
	.byte	 64, 234, 122, 146,  12,  50,  27, 235, 119, 198,  43,  92, 185, 203, 170, 140
	.byte	 60,  63, 130, 213, 143, 152,  41,  87, 216, 144, 205, 163,  90,  12, 196, 253
	.byte	255, 247, 169, 163,  23, 101, 152,  58, 101, 190, 179, 147, 251, 206,  35, 146
	.byte	 18, 166, 112, 106,  39, 110,  29,  18, 185,  68, 229, 101, 136, 152, 198, 192
	.byte	125, 211, 124, 150, 193, 155, 114,  95, 115,  43, 102, 129, 115,  48, 248,  92
	.byte	 22, 124, 169, 163,  63, 105, 125, 217,  97,  58, 170,  54,  75, 176, 150,  48
	.byte	209, 154, 209,  39, 208,  21, 108, 236, 134, 166, 128, 222,  32,  23, 227,  99
	.byte	224, 234, 113, 218, 202,  66, 135,  42,  73, 154,   1, 180, 205,  25, 154,  38
	.byte	161, 235,   1,  18, 163,  30,  24,  25, 237,  10, 103,  16,  84, 105,  97,  91
	.byte	 98, 191, 115,  55, 210,  20,  54,   5, 125, 248, 243, 187,  10, 157,  31,  25
	.byte	165,  21, 242, 244,  89,  21,  22, 223, 225, 192,  88, 184,  61, 197, 151, 142
	.byte	 94, 189, 125, 224, 187,  40, 245, 158, 151,  84, 193,  51, 105, 185, 161,  16
	.byte	205,  12,  79, 231, 119, 143, 121,  10, 147,  25, 229, 199, 230, 250,  94,  70
	.byte	 36,  32,  61,  65, 105,  82,  35,  17,  54,  25, 135, 216,  66, 184,  81,  59
	.byte	 76, 115, 135,  63, 188, 201,   0,  92, 179,  68,  53, 251,  22, 172, 143, 135
	.byte	 70, 237, 246, 140, 108, 188, 199,  15,  58, 237, 133, 223, 199,  66, 153,  68
	.byte	 43, 115, 238, 162,  22,   3, 244,  68, 181, 171,  87,  96, 215, 182,  74,  85
	.byte	226, 186,  56,  98,   0, 236,  44, 228,  32, 186, 166,  51, 133,  99, 163, 196
	.byte	254,   9,  73, 150, 224, 106,   5,   6, 190, 119,  94, 172, 168, 128, 143,  87
	.byte	 46, 145, 159,  82, 150,  10, 146, 211, 114, 138, 117, 141, 244,  54,  38, 216
	.byte	243,  95,  75, 124, 240, 211, 129, 177, 223, 226, 245, 162, 153, 140, 100,   9
	.byte	 94, 254, 197, 189, 197,  87, 151,  97, 115, 251, 138,   1, 170, 112, 216, 138
	.byte	 42,  43,  53,   0,  56,  24, 219, 216, 237, 183, 148, 212, 119,  74, 146, 179
	.byte	178, 188, 212, 119,   1, 119,  19, 202,  30,   3,  86,  19,  81,  17, 211, 181
	.byte	 29,  34,  67, 149,   9,  28, 132, 228,  56,  69,  36, 194,  24,  32, 169, 194
	.byte	 84, 189, 224, 117, 247, 175, 134, 101, 200,  29, 248,  34,  21, 117,  78, 162
	.byte	 41,  60,  79,  17, 205, 126, 166,  49, 140,  76, 213,  40, 149,  87, 125,  95
	.byte	236,  16,  56,  98, 168,  54,  85,  85,  64,   4, 136,  24,   0,  47,  55,  67
	.byte	184, 156,  58,  49, 210,  88, 141,  10,  58,  58,  67,  88, 100, 115, 114,  95
	.byte	106,  45, 127, 199, 180,  12,  28,  22, 154, 199, 227, 126,  52,  49, 216, 205
	.byte	 38, 192,  30,  62,  57, 238, 108,  62, 214, 220,  22, 182,  58, 253, 187,  81
	.byte	206, 179,  47, 144,  44,  42, 199, 172, 183,  87,  55, 115, 215, 109, 219,  30
	.byte	231, 172, 210,  36,  60, 121, 123, 134, 218, 193, 169, 107, 148,  42, 220, 103
	.byte	104, 237, 130,  46, 242, 177, 253,   7,  34, 134,  31, 223, 200, 116,  32, 210
	.byte	112,  78, 124, 162,  74,  35,  77,  51,  69,  77, 103, 174, 104,  32, 232, 167
	.byte	164, 120, 158,  72,  34,  42, 220, 135, 210,  39, 166, 199, 180,  23, 193,  78
	.byte	167, 147, 169,  61, 153, 129, 137,  17, 190,  37,  81, 211, 201, 152, 101,  19
	.byte	 42, 189,  49, 245, 147,  47,  90, 211, 227,  46, 102, 120,  47, 248, 160,  78
	.byte	 57,  48, 187, 142, 129, 195, 133, 248,  54,  89,  67,  98, 127, 180,  84,  61
	.byte	 30, 217,  83, 241, 130, 227, 244,  60, 152, 146, 216, 116, 207,  76, 178,  18
	.byte	 84, 104, 185,  68,  93, 140,  88, 101,  99, 121,  41, 150, 240,   8,   4, 185
	.byte	 84,  14, 207, 210, 217, 252, 207,  39,  26, 111, 143,  25,  57, 205, 225,  28
	.byte	 24, 170,  41,  21, 246, 232, 142, 139,   2,  28,  50,  91, 110, 247, 176, 149
	.byte	 10,  79,   9, 170, 134, 110, 129,  50, 158,  96, 196,  14, 174,  39, 181, 170
	.byte	 48,  23,  62, 165,   2,  52,  43, 231, 240, 243, 215,  26,  55, 199,  83, 134
	.byte	 88,  60, 162,  69,  62, 126, 191,  34,  49,  24,  92,  53,   0, 195,   0, 114
	.byte	 37, 140, 239,  59, 164, 159, 221,  10,  19,  71,  79, 216,  30, 206, 220, 148
	.byte	214, 249, 198, 212, 120, 215,  62, 237, 198,  59, 248, 233, 156, 212, 131,   8
	.byte	101, 189,  44,  82,   1,  81,  70, 243, 223,  25,  55,  69, 245,  90,  56,  10
	.byte	166, 162, 180,  86, 251, 124,   2,  20,  32, 252,  47, 227,  59,  44,  54, 161
	.byte	142, 223, 247, 158, 129, 193, 228, 122,   9, 183, 205, 204,   3,   1,   0, 193
	.byte	206, 194,   7, 244,   4, 139, 211, 115, 151, 111,  51, 178, 252, 164,   5, 102
	.byte	132,  29,  78, 221, 193, 176,  24,  90,  21,  73, 124, 149, 104, 138,  41, 103
	.byte	178, 212,  14,  82,  21,  34, 123, 226, 129, 234, 166,   1,   0, 148,  51, 100
	.byte	147, 225, 211, 147, 253, 155, 174,   4,  29, 228,  49, 201,  92, 232, 170, 226
	.byte	 28, 138,  75, 216,  24,  71,  35, 103, 185, 251, 122, 101,  33,  22,  18, 228
	.byte	242,  48, 255, 113,  67, 124, 166, 196,  90,  58,  96, 165, 242, 249, 197, 175
	.byte	  6, 125, 158, 247, 237, 108, 237, 179, 228, 110, 191,   8,  11,  92,  59, 126
	.byte	 28,  11,  55,  95, 195, 161, 226,  93, 147,  50, 219, 195, 148, 238, 167, 240
	.byte	 44, 187, 115, 254, 202,  56, 213,  83, 125,  18, 189,  74, 133, 251,  25,  27
	.byte	114, 207, 168,  88, 129,   8, 123, 153, 126, 195,  61, 210, 207,  91,  62, 119
	.byte	200, 209, 200, 129, 112,  65,  54,  18, 162, 118,  32,  77,  60, 251,  12,  15
	.byte	161,  17,  37,  87, 168, 252, 188, 179,  36, 135, 216, 143, 146,  44, 151, 191
	.byte	  8, 191,  79,  87,  81, 179, 238,  44,  91,  64, 139, 211, 177, 238, 195, 214
	.byte	132,  83,  62, 136, 254,  16,   7, 246,  22, 236, 251,  99,  34,   2, 254,  58
	.byte	 24, 117,  12, 191,  62, 113, 141,  86,  61, 162,  43,   0,  25,   9,  70, 224
	.byte	238, 158, 197, 180, 185, 131,  96, 161, 195,  42,  42,   8, 137,  49, 167, 193
	.byte	 54, 225, 150, 159, 225,  24,  44,  58, 194, 173,   7, 222,  29, 124, 183,  98
	.byte	 28,  61, 219,   0, 101, 187,  66,  56,  47,  83, 122,  51, 231, 144, 117, 184
	.byte	 26, 191, 114, 163, 114, 170,  53, 161, 211,  11,  93,  36, 243, 182,  77, 109
	.byte	 81, 139, 114,  28, 129,  12, 142, 144,  90, 197, 254,  76, 239, 100, 164,  60
	.byte	 10,  35, 169, 175, 187, 247, 219,  94, 144, 220, 162,  67, 230,   7, 105,  24
	.byte	206,  50,  68, 236,  13, 137,  55, 215,  38, 123, 123,  37,  28, 167, 202,  34
	.byte	224,  17, 216, 109,  35, 150, 182,  56, 170,  52, 240, 208,   3, 218, 211,   1
	.byte	152,  30,  31,   1, 210,  30, 178, 157, 154, 170,   0, 152, 187, 176, 184,  41
	.byte	 86, 255, 166, 238, 185, 188, 118, 187,  90, 146, 248,  81, 118, 196,  45, 248
	.byte	 75, 217, 240, 103, 107, 153, 232, 235, 106, 209, 212,  29,  38, 117, 129, 231
	.byte	210, 118, 252, 106, 218,  41, 246,  58,  10, 102, 187, 235, 212, 115, 185,  99
	.byte	152,  89, 149, 184, 136,  44, 103, 162, 227, 199, 221, 191,  70, 133, 151, 184
	.byte	226,  94, 162,  72,  62,  81, 247,  54, 247, 124,  39, 107, 242, 116,  81,  86
	.byte	142, 217, 123, 238,  51, 230,   8,  37, 162, 154, 200,  42,  54,  59, 210,  31
	.byte	202, 193,   2, 109, 155,   3, 148, 202, 125, 231,  30, 107, 125, 223, 135, 234
	.byte	136, 252, 117, 168, 148,  66, 115, 194,  98,  26, 235,  23,  92,  12, 232, 185
	.byte	252, 242,  68, 172, 231, 194, 117, 186,  94, 124, 220, 189, 219,  13,  10, 138
	.byte	 17, 118, 176, 146, 171, 224, 227, 209, 124, 130, 100,  46,  75,  20, 210,  81
	.byte	 14, 175,  76, 183,  56, 232, 121, 242,  34, 127, 217,  37,  90, 250, 178, 123
	.byte	157, 101,   4,  21,  91, 255, 151,  38,  19,  42,  53,  96, 130, 125,  83,  12
	.byte	 14, 115,   2,  81, 180, 247,  55,  50, 115, 170, 169,  79, 120, 178, 170, 193
	.byte	163, 249, 117,  74,  60, 150, 119, 219,  33, 251, 234, 101, 248,  69, 191,  40
	.byte	222,  69, 134, 186, 210,   9,  74, 210, 111, 118,  45, 120,  99,  80, 111,  19
	.byte	 61, 237, 239,  33,  29,  33, 180, 102, 131, 172, 255, 248,  57,   8, 253, 152
	.byte	128,  82,  14, 112, 139, 138,   4, 159, 170,  47,   8, 183, 239, 127, 145,  61
	.byte	 19, 198,  15, 212, 191,  47, 103,  37, 242, 170, 172, 151, 101, 177,  40, 207
	.byte	  0, 156,  33, 241,   6, 123, 234, 233,   5, 170,  33, 155,  48,  73,  48, 112
	.byte	232, 240,  24, 231,  77,  30, 246,  49, 218, 149,  22, 212,  18,  64,  87, 209
	.byte	 32, 135, 101,  85, 106,   1,  15,  33, 252, 198,  53, 136,  23, 231,  48,   3
	.byte	174,  83,  40,  73, 222, 242, 231, 187,  76, 213,  15,  78, 246,  49, 105, 158
	.byte	182,  80, 173, 209, 207,  53, 115, 112,  53, 106,  51,  19, 104, 250, 143, 129
	.byte	179, 127, 141, 137,  60, 174, 166, 178,  10,  45, 143, 246, 144, 234, 243, 219
	.byte	 84,  74,  15, 155,   2,  85, 196, 219, 124,  52, 177, 100, 188,  34, 149,   2
	.byte	111,  69, 211,   2, 143, 181, 119, 145,  67,  72, 202, 187, 240, 138,  76,   5
	.byte	 74, 140,  42, 255, 137,  90, 124, 152, 244, 249, 173, 218,  32,  14,  37, 134
	.byte	 38,  12,  92, 136,  17, 206,   0, 147, 195, 237, 217,  61, 120,  51,  56, 139
	.byte	 72,   1, 138, 235,  92,  39, 215, 254,  86, 134,  94, 198,  90,  46, 129,  65
	.byte	248,  79, 141, 102, 154, 252,  70, 136, 131, 192,  15,  82, 246, 161, 198,  13
	.byte	234, 208,  60, 103, 216, 171,  50,  73,  45,  36, 150, 188,   2, 156,  60, 141
	.byte	 26,  90, 156,  65,  20, 188,  97, 163, 168, 148, 181, 173, 111,  68, 153,  96
	.byte	178, 222, 100, 223,  81,  36,  82, 128,   1, 177, 125, 228, 167, 210, 237, 167
	.byte	 12,  72,  26, 236, 174,  87,  35, 246, 244,  27, 214, 138,  79, 234, 204, 195
	.byte	 16, 160,   1,  54,  70,  35, 164,  51,  87,   8, 161, 118, 245, 231, 241, 187
	.byte	157, 145,   6,  27, 140, 107,  73, 248, 148, 246,  69, 156,  82,  92, 196, 109
	.byte	134, 145,  85,  26,   6,  89, 101,   8, 158, 194, 122,  15, 244,  46, 146,  35
	.byte	 18,  89, 220,  55, 251, 201,  40,  89, 136, 203,  74,  89, 148, 235,  43,  71
	.byte	164,  26,  44, 147, 158, 122,  49,  52,  81,  52, 251,  65,  95,  98,   4,  59
	.byte	 85,  73,  97,  86,  88,  43, 140, 137, 134, 215,  22, 146,  79,   1,  64,  54
	.byte	198, 105, 148, 234,  53, 181,  14, 239,   2,  57,  98,  93, 153, 250, 176,  50
	.byte	132,  20, 202, 153, 180, 120, 219,  69,  55, 245,  80, 226,  10, 202, 166,  59
	.byte	 26, 231,   0,  21, 160,  88,  86,  49,  76, 181, 152,  56,  45, 148, 152, 208
	.byte	219, 173, 252,  48, 180,  76,   5, 118,  88,  77, 140, 106, 202, 158, 224, 221
	.byte	102, 166, 194,  90, 252,  17, 111,  63, 166,  65,  22, 248, 162,  61, 117,  54
	.byte	 36, 165, 178, 174, 224, 167,  11,  14, 247, 225, 108, 243, 244, 247,  36, 129
	.byte	 30,  42, 177, 180, 157, 235,   3, 251, 240, 255, 253,   9, 153, 105,  12, 254
	.byte	107, 166, 212, 155,  36,   0, 110,   8,   3, 119, 135, 254, 148, 107, 129,  50
	.byte	236, 231, 247, 179, 195, 203,  82, 134,  59,  58, 105, 133,  28, 190, 142,  36
	.byte	122, 163,  79, 147, 133,   2,  82,  64, 212, 158,  45,  51, 196,  78, 141,  85
	.byte	168,  34, 215,  85, 116,   3,  52, 168, 108, 113, 111,  71,  57, 218, 206,  40
	.byte	152,  12, 219, 107, 231, 184, 192, 202, 153, 135,  17,  47,  46,  75, 162,  54
	.byte	254, 239, 237, 224,  33,  77, 155, 188, 220, 144, 118, 229,  12, 239, 228, 253
	.byte	 82,  90, 231, 247,  27,  85, 249,  39, 216,  85, 191, 171, 221, 222, 117, 168
	.byte	100, 196, 110, 130, 215, 174, 128, 222, 113, 150,   1, 146, 208, 216,  45, 223
	.byte	  4,  29,  39, 166, 162, 155, 251,  56,  98, 127, 142,  46, 183, 171,  99, 234
	.byte	 22, 164, 195,  97,  13,  59,  36, 132, 204, 126,  79, 138,  75,  27, 198,  13
	.byte	182,  30, 188, 199, 213,  86, 176,  44,  93, 184, 203,  47,  27, 231,   4, 189
	.byte	 12,  59,   8,  36, 224,  56,  67,  22, 249, 162, 182, 251, 163,  70,   2, 175
	.byte	105, 127, 203,   1,  93,  76, 226, 251,  15,  91, 121,  86, 237, 161, 224,  24
	.byte	130,  87, 140, 179, 255, 198, 219,  43, 102, 110,  56,  38, 183,  58,  81, 232
	.byte	 23, 211,  41,  10, 182,  25, 191,  85, 117, 144,   9, 250,  87, 131,  42, 254
	.byte	 12, 125, 129, 219,  90,   9, 122, 187,   7, 225,  15, 135, 236,  98, 154,  72
	.byte	 91, 105, 128, 208, 255, 232,  39, 134,  33, 183, 160, 110, 148, 124, 220, 130
	.byte	204, 212,  93,  24, 137,  44, 243, 181,  58, 210, 199,  34, 120, 114, 160, 128
	.byte	 49, 230,  84,  60, 189, 233, 122, 189, 196, 164, 154,  11, 212, 251, 216,  30
	.byte	 42, 168,  25, 142, 202,  25,  38, 171,  51, 129, 246, 199,  54, 128,  59, 141
	.byte	197,  99, 122, 188,  32, 174, 113, 195,  96, 118, 223,  89,  81, 197, 124, 108
	.byte	146,  66, 189,  97, 179,  33,  70,  37,  39,  42, 193,  96,  76, 171,  45, 122
	.byte	207, 167, 124, 218, 189,  36, 175,  39, 100, 226,  57, 122,  65,  91, 237,  10
	.byte	 46, 105, 144,   5,  11, 157,  56, 133,  49, 149, 149, 113,   2, 127,  56, 199
	.byte	125,  28, 135,  85, 109, 140, 198,  97,  41,  49, 237, 100,  12, 217, 241,  97
	.byte	222, 150, 241, 118,  46,  92, 113, 136, 113,  99, 232, 171,  59, 171, 170,   2
	.byte	125, 145,  58, 109,  42,  14,  69, 126, 166,   9,  65,  15, 102,  21, 240,  24
	.byte	 28,  86,  80, 125, 123,  95,  11, 199, 144,  18,   0,  75,  68, 170,  75,  62
	.byte	 37, 200,  75,  47, 242,  25,  85,  40, 241,  10,  56, 160,  60,  25,  50,   1
	.byte	156, 215,  18,  75,  48, 103, 185,  95, 195,   4,  48,  66,  71, 187, 115,  12
	.byte	217,  95,   2,  13, 239, 129, 130, 205, 126, 115,  11, 177, 149, 143, 133, 117
	.byte	 12, 120, 198,  33,  58, 119, 134, 207, 238, 101, 230, 242,  36, 212,  38, 146
	.byte	159, 116, 107, 206, 120,  71,  42, 156, 234, 214, 220, 254, 182, 189, 229, 169
	.byte	 78,   3, 109, 203, 213, 212,   6, 107,  87, 232, 151, 185,  12, 101, 124,  98
	.byte	  8,  39, 124, 153, 249, 254,  74,  88,  30, 229, 240,  48, 160,  11, 237, 160
	.byte	196,  82, 151, 225,  38,  36, 230, 134,  81, 125, 222, 168,  47,  22, 155,  96
	.byte	248, 221,  81,  62,  51, 165, 112, 242, 248,  43, 204, 121, 121, 134,  78,  56
	.byte	232, 251, 251,  86, 110,  40, 230,  60,  83, 249,  60, 248, 113,  11, 169,  58
	.byte	 31, 231,  57, 251,   6, 106, 155, 162,  77,  72, 236,  13,  36,  36, 192,  75
	.byte	234, 237, 252,  40, 119, 232, 224, 214, 175,  71, 137, 100, 227,  59,  15,  72
	.byte	212, 216,  38,  28, 178, 101, 201,  75, 163, 230, 133,  76, 225,  19,  77, 232
	.byte	226,  52, 217,  66, 134, 252,  16, 208, 143, 252,  85,  46, 213, 142, 114, 159
	.byte	 30,  81, 204, 240,  63, 104,  54, 161,  12, 175,  85, 174,  99, 182, 100, 243
	.byte	242,  75,  95, 150,  24,  20, 253, 180,  43, 124, 128,  65,  74, 131, 118, 156
	.byte	 29,   6, 177,  24, 245,  55, 147,  49, 189, 189, 143,  58,  24, 150,  28, 239
	.byte	222,  66, 184, 251,  54,  74, 156,   8,   1,  98,  24, 220,  47,  39, 100, 171
	.byte	133,  38, 159, 228, 198,  79, 180, 174,  50, 104, 122,  80, 165, 185, 155, 187
	.byte	 74,  17,  47,  41, 157,  99, 238,  25, 134, 163, 191,  56,  89, 200, 135, 140
	.byte	219,  10, 135,  49, 212,  95,  31,  30,   1, 130,   6, 240, 221, 248, 170, 126
	.byte	 94,  71, 207, 171,  32, 178, 158, 237,  99, 222,  44,  82, 243, 192, 250, 174
	.byte	161,   3,  45,  90,  65, 238, 149, 200, 202, 159,  87, 197,  62,  66, 170,  31
	.byte	218,  40, 116, 149, 247, 215, 225, 119, 147,  31, 133, 189, 105,  67, 165,  39
	.byte	144, 179, 232, 131,  59, 252, 190,  56, 136, 140, 212, 180, 105, 136,  66,  83
	.byte	120,   5,  53, 246, 192, 217, 118,  10,  69,  98, 116,  20, 169, 168, 245, 247
	.byte	114,  38,  17,  78, 242,  58, 217, 172,  78, 169,  41, 125, 165, 246, 225, 182
	.byte	140, 105,  61,  23, 220, 219,  47, 125,   5, 207,  39, 129,  59, 241, 180, 237
	.byte	211, 146, 182, 111, 185,  87,  10, 254, 254, 113,  45, 134, 251, 192, 187, 108
	.byte	170, 159, 254, 162, 172, 247, 248, 203, 141, 104,  47, 157,  83,  67, 199, 174
	.byte	136, 135, 210,  87, 209, 187,  39,  92, 113,  54, 219,  29,  85,  18,  53, 240
	.byte	 68,  22, 178, 222,  87, 177, 231, 167, 179, 183,  77, 185, 202, 175, 170, 203
	.byte	 35, 109,  39,   8,  35, 173, 224,  84, 169, 125,  17, 105,  76, 221, 167, 144
	.byte	130, 168, 121,  84, 100,  17, 252, 186, 158,  89, 253, 226, 232, 105,  21, 146
	.byte	166,  93, 216, 227, 203,   5,  41,  42, 101, 139, 133,  87,  86,  83,  25,  79
	.byte	162,  97, 184, 167, 158, 155,  17,   6, 200, 200, 103,  17,  20,  98,  64, 134
	.byte	179,  79,  79,  83, 122, 251, 113, 115, 186,  39, 236, 232, 139, 226, 157, 130
	.byte	 86, 209, 176, 143, 188,  14, 107,  76,  84,  25, 210, 128, 114, 173, 180,  95
	.byte	 34,  14, 138, 151,   9, 182, 185, 171,   7, 122,   0,  66, 112, 166,  42, 193
	.byte	 34,  44, 237, 160,  38,  80, 246, 222,  22,  39,  37, 138, 127,  67,   1,  46
	.byte	163, 151, 209,  62,   2, 117,  49, 222,  87, 222, 104, 228, 144,   9, 223, 103
	.byte	210, 244, 198, 200, 146, 132,  25,  14,  64,  11,  83, 204, 197,  56,  12,  43
	.byte	196, 206, 212, 166, 170,  33,  27, 122, 155, 145, 154, 206, 136, 121, 101, 154
	.byte	 60,  60, 189,  20, 195, 233,  26,  85, 148, 194, 174,  82,  51, 232,  69,  48
	.byte	208, 151, 231,  30,  74,   4, 185,  19,   7,  79, 194, 107, 225,  69, 229, 183
	.byte	222,  71,  53, 170, 126,  99, 206, 156, 112,  61, 170,  19,  48, 203,  10, 104
	.byte	 24, 234,  92,  18,   3, 133,  98, 248,  89,  85, 171, 100, 119,  17,  16,  33
	.byte	 10, 130,  36,  41, 140,  89,  97, 187,  63, 221, 231,  13,  58,  74,  80,  97
	.byte	241,  11, 246, 125, 111,   6,  84,  25, 172,  28, 225, 150,  14,  28, 195, 238
	.byte	246, 210,  28, 215, 227,  90, 193, 177,  33,  51, 223,  19,  83, 207,  61, 115
	.byte	 46, 130,  41, 102, 141, 142,  77, 234,  17, 250, 237, 131, 109, 206, 199, 247
	.byte	128, 240, 139,   7,  84, 238, 164, 112, 249,  39, 253,  63,  64, 202,  95, 178
	.byte	 69,  56, 224, 166, 112, 118,  87, 187, 118,  23,  86, 208,  78,  58,  31, 113
	.byte	142, 246, 111,  10,  63, 230, 128, 160,  81,  62,  21,  58, 165,  96,  88, 212
	.byte	109,  10, 178, 116, 160,  69,   0, 232,  53, 163, 239, 150,  35, 103,  44,  79
	.byte	 24, 237, 132, 156, 145,  28, 233,  29, 208,  48,  68, 192,  93,  10, 215,  10
	.byte	142, 133, 104,  15,  42, 197,   2,  21,  81, 128, 163,  20,  18, 251,  35, 164
	.byte	 72, 248,  23,  25, 239, 171,  70, 202, 207, 152, 177, 120, 197, 126,  91, 114
	.byte	212, 112,  61, 215,  87, 122,  79, 232, 223,  86, 196,  17, 155, 174,  22,  57
	.byte	194, 128,  32,  44,  98, 224,  80, 196,  11, 209,  39,  67, 108,  94, 136, 254
	.byte	123,  26, 250,  62, 249, 163,   3, 224,   6,  68, 186,  19,   2, 219, 143, 144
	.byte	 14, 165,  90,  37,  66, 166,   9, 233, 104,  94, 241,  95,  19, 246, 100, 241
	.byte	106,  76, 225,  60, 213, 242,  73, 118,  18,  29,  47,  88, 176, 245,   2,  85
	.byte	102,  91,  76,  46,  78, 185, 161,  57, 124, 198, 195, 195, 218, 158, 242, 253
	.byte	249,  94, 225, 199,  22, 135, 114,  48,  23,  86,  60,   3, 198, 124,  50, 201
	.byte	 86,  69,  83,  81, 227,  41,  28,  35,  78,  63,  21,  99, 162,  55, 200,  87
	.byte	245,  62, 164, 124, 158, 160,  55, 186, 245, 144, 124, 229, 191, 229, 211, 126
	.byte	224,  78,  44,  64, 130,  27, 160, 241,  20,   1, 222,  71, 239, 170, 171,  99
	.byte	194, 160,  36, 122,  42,  29,  33, 151, 151,  90, 255, 119, 250,  41,  17, 254
	.byte	230,  42, 201, 232,  56,  31, 221, 238,  98, 191, 233,  26, 201, 119,  69,  74
	.byte	 44,  55, 105, 252,  54,  60,   1,  37,  96, 104, 205, 153,  96,  70, 220, 168
	.byte	 54,  51,  82,  52,  98,  51, 106,  39,  79,  73, 164, 155,  48, 130, 110, 198
	.byte	157, 229, 255,   0,  92,  47, 135, 195, 236, 187,  16, 143,  19,  31,  33, 173
	.byte	166,   1,   5, 249, 224, 228,  92, 110, 230,  87, 135, 175,  35, 190, 160,  66
	.byte	182,  86, 203,   1, 107, 216, 193, 253, 232, 230, 197, 223,  17,  58, 102,  73
	.byte	154, 112, 108, 216,  70, 166, 249,   8,  36, 253,  30, 153, 110, 114, 157, 200
	.byte	125, 184, 172, 196,   5, 117, 225,  78,  68,  31, 249, 130, 131, 223, 194, 120
	.byte	128,   9,  21,  67,  37,  72,   7, 167, 126,  42, 191, 221, 164,  39, 158, 254
	.byte	152,  41,  24,  43, 237,  40, 207,  99,  74,  63, 232, 104,  82,  48, 128, 122
	.byte	192, 194, 243, 225, 240, 140,  91, 159, 142,  66,  72, 115,  59,  16, 110,  46
	.byte	226, 246, 128,  12, 218, 220, 144, 183,  47, 178, 251,  48, 122, 141, 101,  75
	.byte	182, 122, 226,  68, 181, 139, 188, 126, 199,  99, 128, 232, 154, 131,  44,  51
	.byte	210,  91, 139, 140, 111,   6,  36, 203, 180, 224, 116, 138, 132,  84, 217,   0
	.byte	 70,  42,  46,   2, 177, 108, 161,   5,  18,  45, 133,  19,  56, 101,  34,  15
	.byte	149, 159, 201, 111,  76, 130,  52,  97, 234, 146, 150, 189, 249,  69,  22,  21
	.byte	240, 220, 143,  85, 250,  87,  60,   5,  85, 131, 119, 108, 173, 194, 234,   7
	.byte	 75,  40,  43,  65, 236, 234,  70, 211,  27,  87, 215, 144, 101,  43,  21, 108
	.byte	200,  62, 229,  60, 233,  82, 126,  85, 149, 160, 165, 214,  70,  17, 249,  18
	.byte	253, 175, 146,  92,  20, 187,  29,  85,  49, 216, 167,  63,  50, 180,  12,  46
	.byte	 86, 166, 163, 167,   9,  11, 117,  40,  51, 132, 151,  56, 154,  78,  13,  93
	.byte	141,  30, 160,  51,  77,  49, 255, 120, 224, 198,  63, 193, 185,  97, 167, 192
	.byte	 88,  49,  20,  12,  51, 195,  51,  20, 159,  56,  56, 202, 129,  91,  68, 223
	.byte	 91,   0,  58,  98,  39,  78,  74, 121, 233,  18,  24,  38, 124,  10, 132,  27
	.byte	 54,  76,  17, 158,  36, 232,  76,  49, 112, 155, 100, 235, 237,  40,   5, 175
	.byte	233, 122, 194, 113,  31, 150, 169, 164,  26, 160,  57,  35, 112, 152, 111,  30
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188, 161,  25, 127,  91, 210, 213, 153, 185, 107,  24,  19, 158, 255,  25, 166
	.byte	255,  25,   2, 200, 112,  81, 106, 238,  69, 141,  35, 158, 198,  32,  79, 100
	.byte	108, 192,  37,  72,  21, 144, 203, 169, 202, 252,  32,  83, 220, 189, 221,  25
	.byte	  6, 125,  91, 250,  69, 189, 192,  52, 245, 188,  39,  80, 191, 174,  41, 167
	.byte	102, 222, 135,   1,  96, 156, 207, 175, 181,  79, 121,  58, 104, 121,   6, 245
	.byte	 13, 135,  60,  60, 247, 206, 174,   1,  16,   1,  14,  16,  10,  95, 228, 129
	.byte	 64,  22, 156, 159,  98, 241, 181,   1,  78,  89, 140,  34,   9,  70,   3, 125
	.byte	179, 197, 142,  33, 163,  37,  85, 237, 138,  12, 135, 188, 120, 248,  81, 143
	.byte	142, 162,  79, 103, 149,  90, 150, 182, 218,  18, 111, 123, 170,  16,  99, 212
	.byte	  2, 106,  40,  95, 202, 116,  30, 236, 104, 145,  27, 189, 179, 219, 101, 156
	.byte	140,  99, 144, 226, 183, 163, 181, 155, 242, 208, 185, 214, 129,   6, 155,  42
	.byte	235,  28, 248, 214,  33, 124, 167, 171, 242, 208,  49,  41, 138, 246, 163,  79
	.byte	242, 254, 122, 158, 118,   9, 213, 136, 220, 252, 119,  56,  60,  28,  19, 207
	.byte	161, 102, 201, 205, 163, 225,   9,   9, 136,  81, 209, 193,  50, 222, 213, 177
	.byte	128, 253, 251,  76, 177, 163, 223, 144, 160,  72, 179, 212, 131,  74, 234, 236
	.byte	 18, 133, 171,  35, 234, 117,  28, 224,  76,  60, 235, 103, 183, 251, 182,  54
	.byte	 64, 103, 114, 219, 203, 189, 126, 160, 144, 210,  15, 252, 172, 238,   6,   9
	.byte	255, 253, 222, 226,  67,  11, 146,  58,  84, 185,  55,  70, 135, 196, 196, 146
	.byte	230,  58, 191, 223,   1,  82, 171,  46, 199,  98, 144,   0, 104, 248, 161, 157
	.byte	157, 188, 132, 193, 255, 210,  88,  94,  66, 193,  66, 156, 116, 172,  13,  78
	.byte	254,  24,  11, 244, 117,  50, 157, 231, 133,  29, 209, 159,  97, 158,  38, 232
	.byte	 60, 200, 113, 159, 105,  40,  16, 231,   7, 104, 221, 149, 217,  92,  99,  49
	.byte	110, 246, 243,  67,  40, 191, 156,  60, 101,  98,  27, 107, 205,   5, 141, 224
	.byte	 93, 211,  80, 166, 110,  14, 165, 104,  88,  70,  86,  97, 245, 203,  35,  79
	.byte	162, 187,  92,  67, 231, 185,  67,  33, 199, 114,  51, 166, 210, 238, 102, 177
	.byte	194, 102, 244,   2,  84, 114, 229, 175, 219, 164, 214, 164, 147, 114,  34, 175
	.byte	228,  87, 227, 211, 202, 117,  87, 212, 108, 183,  51, 118,  81, 212, 241,  68
	.byte	205, 241, 201,  30,  30, 171,  61, 218, 114, 185, 248,  76,  93, 247, 196, 128
	.byte	238,  11,   3, 224,  79, 152, 110, 215,  83,  89,  90, 180, 153,  83, 110,  99
	.byte	202, 156,  94, 138, 150, 142,   1, 109, 142, 233, 189, 123, 176, 117, 162, 166
	.byte	220, 153, 174,   1, 115, 234, 195, 209,  98,  63,  65,  70,  46,  39, 242, 183
	.byte	 59, 194, 228,  24, 117,  89, 150, 254,  86, 209, 159, 183, 197,  70,  18,  58
	.byte	170, 128,  75, 124, 192,   7, 178, 114,  56,  76, 158, 247,  41,  21, 237,  60
	.byte	128,  68, 234, 239,  58,  60, 190, 195,  19, 171,  67,  13, 241, 203,  56, 224
	.byte	162, 168, 152, 225, 244, 142, 164,  55, 253, 216, 123,  29, 182, 105, 222,  49
	.byte	107,  27, 139,  36,  48, 145,  33,  74, 180,  44,  30, 128,  14,  66,   8,  43
	.byte	110, 202,  95,  71,  47, 226,  42, 149,  33, 116,  13, 144,   2, 178, 234, 213
	.byte	 48, 203, 189,  92,  43,  92, 102,  71, 186, 148,  95, 163, 241, 149, 138, 217
	.byte	152, 159,   6,  14,  20,  84, 236, 114,  41, 161, 131,  79, 114, 202, 103, 240
	.byte	167, 238, 105, 241,  60,  14,  32,   0,  22, 216,  84,  93, 144,  57,  78,  46
	.byte	206,   2,  31, 236, 117, 140, 233, 178,  41, 215, 247,  59, 193, 160,  62,  14
	.byte	101, 152, 250, 221,  32,  78,  51, 140, 150,  85,  84,  30,  94, 244, 247,  92
	.byte	174,  46, 165, 213, 238, 240, 190,  22,  87, 176,  98,  87,   0, 229, 238, 151
	.byte	 81,  21, 107,  89, 109, 178, 254,  50,  27,  34, 153, 137, 246,  60, 172,  15
	.byte	 72,  81,  12, 164,  85,  46, 114, 157, 198, 117, 249, 151,  23,  16,  92, 101
	.byte	173, 116,  60,  65, 245, 240,  79,  60, 138, 230,  62, 219, 121,   8, 251,  42
	.byte	104,  81,   7, 245, 137, 157, 196,   5, 188,  56, 195, 253, 167,  63,  73, 249
	.byte	133,  80,  74, 201, 184,  36, 184, 199,  50, 111, 186, 200, 129, 220, 111, 115
	.byte	170, 161,  51, 206, 200, 194, 100,  59,  78,  56, 242,   0,  81, 123,  20,  61
	.byte	225, 220, 241, 160, 244, 103, 220, 115,  55, 222,  62,  44, 207,  22, 128, 101
	.byte	110, 118, 128, 122, 254, 143,  41, 124, 253, 119, 253, 142,   4, 161, 238, 253
	.byte	 97, 171, 127, 168,  16, 111, 255,   2, 113, 190,   5,  70, 238, 243, 114, 165
	.byte	196, 119, 160,  34, 172,  77, 218, 134, 215,  99,  74, 147, 220, 212, 125, 116
	.byte	215,  95, 108,  87, 147,  32, 113, 130, 189,  90, 175, 175, 249, 247, 177,  85
	.byte	158,  76, 104,  13, 133,   5, 237, 110, 217,   1,  61,  62,  33, 180, 206, 112
	.byte	234, 201, 103,  11,  67, 164, 147, 126,   3, 243,  58, 165, 255, 181,  32,  82
	.byte	214, 135, 243,   7,  71,  56, 138, 203, 254, 107, 130,  14,  42,  76, 148, 233
	.byte	 36, 173,  87,  40,  69, 184, 216, 211, 204, 162,   9,  36,  61, 210, 139, 144
	.byte	 56, 100,  36,  98, 213, 209,  94,  35, 144,   7, 126,  51,  37, 142, 181,  72
	.byte	198,  80, 145, 130, 205, 165,  83,  48, 185,  86,  36, 100,  65, 251,  68,  51
	.byte	118,  41,  42, 202, 213, 221, 253, 140,  90, 233, 185,   4, 182, 119, 237, 204
	.byte	164, 147, 252, 228, 224, 207,  70, 222,  49, 243, 251, 144, 143, 228, 148, 223
	.byte	 84, 108, 221, 195,  56,   0, 189, 140, 221,  35, 148, 238, 217,  29, 245, 251
	.byte	213, 242, 176,  12, 182, 150,  11,  88, 181, 231,  61, 243,  51, 177, 243, 214
	.byte	230, 134, 249,  85, 115,  44, 246, 180, 188, 114, 235, 147, 230, 223, 197, 250
	.byte	173,  42, 117, 165, 218,  49,  78, 121, 104, 142,  26, 208, 148,  45, 135, 213
	.byte	232, 139, 229, 207,  82,  30, 230,  27, 148, 171,  77, 198, 102, 239, 218, 146
	.byte	 24,  68, 240, 225, 230,  45, 219, 114,  37,  68,  64, 224, 209,  55,  14, 193
	.byte	112, 165, 115,  28, 226,  98, 196, 163,  98,  20, 167,  63, 241, 224, 126, 160
	.byte	 63, 215, 239,  28,  39,  59, 170,  15, 235, 167, 145, 158, 239, 242,   9, 254
	.byte	 96, 254, 244,  57, 250,   0, 165, 216,  77, 130, 161,  13, 224, 113,  81,  37
	.byte	183, 230, 122, 211, 113, 111, 208,  43, 227,  45,  77, 201, 165, 162,  24,  11
	.byte	168,  32,  22, 165,  69, 132, 125, 249, 242, 134, 159, 233,  79,  29,  80,  27
	.byte	232,  88,  62, 128, 160,  47, 194, 191, 214, 240, 239, 130,  65, 144,  61,  64
	.byte	130, 240,  40,   5,  61,  23, 155,  83, 239, 157, 194,  42, 217,  49,  25,  15
	.byte	205,  64, 162, 184, 137,  71, 251, 155,  29, 103,   3, 224,   1, 108,  79,  52
	.byte	 72, 229,  29,  28, 180, 114,  50,  29,  71, 195, 110, 169, 106, 183, 119,  47
	.byte	 43, 149, 113,  96, 109, 206,  41,  49, 254,  42, 162,  91,  10, 209, 129, 175
	.byte	 58,  89,  82, 173, 211, 238,  71, 244,  96, 178, 161,  62,  37, 100,  49,  58
	.byte	190, 240, 246,  35,  99,  58, 203, 154,  54,  92,  62,   0, 110, 217, 221, 183
	.byte	 18, 186, 205, 181, 171,  92, 137, 161,  86,  75,  97, 208,  26, 214, 180,  73
	.byte	196, 237, 228,  85, 241,  58, 227, 148, 198,  70, 175, 239, 234,  32, 168,   5
	.byte	  0,  26, 131,  10, 123, 181, 171,  59, 139,  72, 128, 197,  27, 161,  76,  86
	.byte	247,   5,  27,  67, 155,  20, 141,  97, 164, 121, 211, 197, 127,  14, 146, 226
	.byte	148, 209, 241,  79, 137, 186, 194, 113, 150, 246, 250, 192, 202, 114,  33,  42
	.byte	163, 249, 206, 162,  38,  35,  47, 238, 201, 123, 191,  59,  85, 121,  81, 106
	.byte	120, 199,  94, 227, 164,  96, 183, 101,  21,  80,  65, 227, 187, 146,  18, 119
	.byte	226,  10,  88, 146, 190,  26, 250, 178, 240, 121, 162,  97,  86, 232, 136, 238
	.byte	144, 104, 184, 236, 177, 167, 237,   6, 205,   4,  13, 214, 242, 222, 197,  98
	.byte	231,  73, 189,  36, 135,  14, 242, 129, 254,  61, 152, 178, 190,  16, 161, 129
	.byte	 12,  16,  80,  39,  18,  99, 203, 173, 211,  84,  80,  30, 136,  21,  76, 115
	.byte	180, 192,  76, 173, 186,  51,  93, 236, 137, 117,  85, 199, 147, 199,   3, 104
	.byte	  4, 163, 241, 174, 241,  91, 115,  89, 251, 179, 180, 179, 234, 223,  45, 246
	.byte	 67, 122,  74, 178, 210,   0, 114, 181, 199,   7,  82,  23,  60,  11,  79,   7
	.byte	154,  56, 253,   0,  31,  21, 182, 195, 180, 137, 126,  76,  96, 145,   0,  37
	.byte	235,  27, 178, 124,  92, 190,  46, 133, 133, 120, 210, 184,   7,  30,   5, 154
	.byte	226, 118, 237, 245,  38,  25,  92, 201,  14, 149,  30, 141, 211, 166,  42, 153
	.byte	127, 183, 123, 144,  36,  68, 230, 101,  28, 164,  34, 218, 186, 187, 146,  42
	.byte	 82,  34,  38, 224, 217,  55,  35,  48, 226, 163,   3, 204, 127, 155,   1, 239
	.byte	123,  50, 144, 212,  26,   1,  35,  61,  13, 241, 122,  55,  66, 126, 214,  22
	.byte	108,  63,  53, 223, 108, 181, 120, 200, 122, 255,  74, 134, 143, 214,  78,  84
	.byte	 55, 127,  27, 223, 195,  20, 143, 218,  23, 222,  90, 221, 219, 129, 115, 203
	.byte	208, 198,  68, 103, 114,  84, 250, 160,  28, 188, 252, 210, 175, 120, 116,  87
	.byte	 48, 198, 140,  81, 182, 124, 239, 188, 255, 230, 122, 116, 135,  95, 182,  19
	.byte	 12, 206,  86,  10,  42,  81, 218,  57, 211,  67,  19, 174, 179, 177,  16, 100
	.byte	163,  63, 180,  61, 106, 191,  67, 208, 153, 168, 109, 107,  83, 166, 181, 220
	.byte	192, 108, 134, 113,  26, 120, 246, 200,  27, 123, 248,  74,  98, 185,  92, 166
	.byte	243, 177,  16, 253, 204, 174,  36, 139,  15, 229, 172,  58,  69, 247, 206, 194
	.byte	240, 122, 207, 159, 244, 127, 230, 185,  75, 215, 154,  47,  82, 124, 198, 210
	.byte	204,  43,  82,  30, 132,  47,  86, 207, 130, 175, 250, 125, 151, 212,  43, 180
	.byte	  6, 111, 208, 167, 104,  99,  66,  34, 145, 239, 133, 226, 182, 251,  73, 108
	.byte	147, 236,  39, 110,   8,  54, 175,  83,  66,  17,  45, 160, 156, 141, 134,  92
	.byte	 58, 138, 232,  32,   4, 164,  97, 187,  31,  77, 185,  43, 108,  28, 196, 237
	.byte	170,  72,  55, 161, 118, 167, 230, 241,  78, 180,  26, 150, 157,  74, 109, 127
	.byte	 58,  14, 233, 146, 142,  31, 219, 168,  43, 240, 150, 207,  51,  47, 182, 104
	.byte	161, 116,  51,   8,  97, 208, 178,  30,  63, 112,   9,  88,  43, 231, 133, 205
	.byte	 74, 231, 246, 177,  86, 246, 119, 210, 230,  17,  83, 203,  81, 146,  35, 200
	.byte	165, 158,  96, 132,  18,  23, 199,  65, 186, 137,  37, 111,  52, 244,  70, 111
	.byte	  2, 146, 140,  41, 180,   7,  77, 169, 241,   1, 140, 148,  40,  36,  80,   2
	.byte	180, 128, 171,  58, 198,  87, 220, 189,  33,  59, 107, 215,  61,  66,  51, 205
	.byte	 56, 137, 117,   1, 231,   8,  62, 253,  26, 153,  52, 103,  28, 144,   3,  68
	.byte	 41, 168,  51,  41,  50, 185, 110, 199, 237, 241, 227, 173,  53,   1, 133, 201
	.byte	134, 147, 207, 208,  32, 213, 173,  53,  89,  65, 110, 254,  80, 253, 190,   1
	.byte	 25,  61, 209,  14,  79, 154, 167,  53,  77, 156,  90,  13, 139, 226, 173, 189
	.byte	 50,  37,  30, 126, 215,  19, 105,  58,  44, 125,  69, 234,  31,  42, 213,  14
	.byte	120, 181, 162, 205, 154,  45, 218,  37,  93,  88,  96, 191, 237,  26,  40, 178
	.byte	214, 117,  75, 152, 158, 206, 187, 221, 179, 107, 168,  60, 163,  37,  96,  90
	.byte	 83, 168, 101,  59,  76, 180, 194, 173, 206, 115,  94, 200, 174, 205, 122,  92
	.byte	110,  51,  57, 176, 221, 141,  44, 134, 161, 137, 132, 118,  23, 219, 249, 251
	.byte	  1,  34, 239, 190,  82, 152,  47,  50,   1,  31, 161, 178, 245,  66, 121, 192
	.byte	148, 241, 194, 127,  14,  29, 243, 105,  31, 136, 194, 134, 159,  17, 150,  65
	.byte	181, 112,  35, 135,   4, 192,  15,  15, 251,  86,  57, 150,  55,  78,  29, 114
	.byte	102, 147, 172,  40, 242, 138,  63, 231, 146,  16, 213, 192,  19, 185, 125, 141
	.byte	 45,  73, 106,  52,  23,  45, 146, 127,  11, 219, 144, 150, 247, 135,  80,  48
	.byte	  4, 191,  99, 193,  83,  62, 235,  96, 195,  90, 215,   2, 158, 144, 144,  38
	.byte	209, 133, 235, 142,  96, 112, 211, 206,  35, 102, 149,  11, 193, 126, 109,  12
	.byte	154, 127,  70,  21,  40,  48, 162, 167, 108, 121,  90, 191, 116,  79,  22, 208
	.byte	132, 225, 106,  99, 229, 118,  85, 165, 235, 244,  62, 139, 115,  97,  97,   8
	.byte	 96, 208, 114, 106,   9, 210, 252, 133, 162,  91, 224, 232, 196, 111, 128,  72
	.byte	146,  58,  50, 159, 227, 246,  66, 180,   0,   9, 103,  34, 244, 130, 215,  93
	.byte	250, 183, 142, 198,   8, 201, 125, 156, 184, 193, 224, 232,  39,  90,  83, 106
	.byte	184, 133, 153,  80,  65, 223, 154,  26, 202, 138, 175, 251, 163, 193, 158,  35
	.byte	154,  96,  99, 250,  83,  53, 159,  45,  16, 193, 250, 244, 105, 244,  20, 235
	.byte	222, 158, 255,  53, 157, 219,  39, 198, 209,  21, 229, 180, 166,  19, 157, 224
	.byte	168,  92,  75, 251,  26, 176,  52, 253, 146, 250, 160,  87,  41, 217, 242, 175
	.byte	 59, 220, 225, 164, 148, 248, 200,  75, 243, 151,  10,  22,  30,  53,  48, 128
	.byte	130, 209, 242, 155, 226, 194, 104, 215, 138, 181, 140, 175, 214, 249, 108, 114
	.byte	143,  99,  97, 221, 122, 167, 139, 125, 203,  87, 124, 142,  68, 128,   8, 125
	.byte	 90,  86, 216,  78, 242, 180, 124,  69,  31, 126,  12, 167, 136,  59,  54, 113
	.byte	 24, 247, 192, 247,  17, 245, 105, 240, 137, 242, 156,  16, 253, 148,  35, 247
	.byte	190, 210, 150, 112,  14,   9, 224, 211, 161, 194,  26,  21, 194, 163,  79, 122
	.byte	223,  49,  57, 196,  45, 233, 222,  57,  82,  33, 103,  17, 110,  10, 132, 254
	.byte	232, 148, 132, 112,  53,  14,  70, 204,  31, 217,  20, 121, 152,   8,   1,  45
	.byte	175, 104, 150, 182, 119, 201, 136,  65, 235,  36, 236, 242,  17, 184, 108, 109
	.byte	 18, 176, 180,  47,  97, 120, 255, 128, 138, 232, 225, 200, 210,  72, 163,  31
	.byte	101, 141, 103, 124,  59, 107,  88, 152,   5,  66,  19,  44, 171, 227,  22, 120
	.byte	224,  38,   3, 210, 183,  55,  86,  94,   5, 223,  40, 170,  88, 133, 112,   8
	.byte	204,  19,  97,  51, 161, 165, 192,  92, 175, 167,  65,  64, 186, 229, 204,  53
	.byte	 70, 229,  93, 254, 205, 154, 236,  64,  69, 199, 201, 106, 183,  12,  12,   8
	.byte	  6, 192,  56,  29,   8, 156,   0,  26,  54,  60, 111,  25,   2,  72, 153,  76
	.byte	108,  56,  40,  40, 146,  47, 177, 115, 197, 220, 216, 130,  54,  31,  55, 186
	.byte	106, 114,  48, 247, 240, 245, 249, 196, 145,  19, 156, 139,  89, 251, 105, 102
	.byte	148, 221, 136, 160,  59, 103,   5, 192,   9,  17,  89, 118,  10,   9, 144,  89
	.byte	193, 158, 185, 153, 219, 109,  48,  21, 190, 128, 114, 238,  95, 188, 135, 212
	.byte	220, 220,   0, 245,  87, 197, 179, 163, 164, 173, 237, 200, 163, 175,  93,  62
	.byte	 67, 120, 136, 103,  74, 218, 216, 121,   0,  83, 150,  12, 230,  65, 210, 185
	.byte	234, 137, 134,  89, 229,  31, 151, 159,  10,  55, 178, 149, 159, 255, 114,   0
	.byte	191, 182, 179,  56,  40, 185,  11,  20,  77, 132, 117,  12, 205, 124,  93, 229
	.byte	 44, 123,  17, 220, 174, 176,  76, 214,  38,  23, 247,  22, 128,  19, 244,  48
	.byte	 81,  79, 146, 233, 196, 240, 194, 143,  81, 226, 168, 238, 139, 118,  82, 109
	.byte	130, 208,   1, 193,  34,  80,  86, 182, 169, 196, 209,  41,  69, 230,  33, 175
	.byte	242,  80, 129,  43, 158, 219, 158, 235,  23, 243,   8, 172, 207, 202, 247, 178
	.byte	 62,  52,  43,  54,  60, 126, 123, 167,  55, 242, 177, 112, 239, 195, 210, 159
	.byte	 44, 136, 118, 140, 107, 127, 174,   8,   9,   5, 162, 235, 212, 142, 203, 168
	.byte	  8, 129, 170,  94,   4,  32, 103,  23,  43, 119,  65,  70, 236, 129,  14, 117
	.byte	124, 251, 136,  32,   8, 208, 180, 130, 167,  94,  27, 153, 175, 248,  31,  88
	.byte	110, 255, 193, 228, 212,  48, 254, 118, 184,  45,  45, 191, 235, 241, 246, 226
	.byte	153, 105, 225, 135,  66,  26,  72, 108,  52,  53, 204,  35, 114,  92, 215, 117
	.byte	220, 208,  94, 136, 195, 234,  89, 131,  43, 107, 120, 150,  69,  53, 229, 238
	.byte	223, 222,  42, 178, 186,  50, 147, 210,  26,  85,   4,  22,  46, 200,  96, 112
	.byte	248, 111, 118, 245, 184,  51, 212, 210, 183,  29, 234, 220, 127, 106, 155, 184
	.byte	186, 248,  21,  22,  37,  34,  49, 175,   6,  35, 167,  20, 254, 161, 220,  63
	.byte	104,  54, 118,  73, 103, 189, 237, 245, 229,  55,  89,  48, 212, 134,  35,  87
	.byte	 65, 144,  52, 223, 254, 120,  16,  73,  39,  51,   6,  37, 120, 208,  35, 152
	.byte	182, 243, 111,  12, 130, 144,  96, 169,  60, 136, 127,  50,  47, 251,  23, 213
	.byte	217, 189, 119, 185, 137, 114, 187, 123, 131,  98,  58,  74, 203,  35, 242, 225
	.byte	 98, 240,  33,  36, 185, 209,  13, 154,  64,  47,  14, 142, 228, 157,  55,  84
	.byte	175, 164,  22,  87, 182, 173,  47, 163, 206, 151,  48,  77,  79,  42, 108,  55
	.byte	146, 114, 249, 248, 122, 213,  79, 177,  61, 248, 213,  66,  70, 192,  98,   3
	.byte	150, 153, 133, 187,   7, 144,   4, 250, 131,  28, 222,  56,  27,  91, 204, 232
	.byte	228,  96,  34,  35,  63,  11,   4, 229, 235, 177, 211, 238, 116,  71, 118,  12
	.byte	 24,  99,  46, 154, 137,  32, 225, 158,  91, 242,  65,   7, 154, 186,  91, 195
	.byte	182, 250, 233,  88,  38, 159, 210, 239,   1,  95,  78,  99,  30, 156, 113,  98
	.byte	152, 242,  74, 135, 255, 176,  57, 240, 220, 181, 241, 178, 168, 222, 135,  86
	.byte	 46,  45,  11, 246, 176, 198, 125, 101, 109, 176,  84, 185, 248, 222,  94, 132
	.byte	 94, 210, 136,   0, 122, 109,  89, 163,  25,  72, 119, 170, 189,  22, 185,  73
	.byte	254, 115,  74,  83,  69, 191, 252,  99,  38, 134, 215, 118, 117,  73, 242,  48
	.byte	 15, 197,  17,  73, 101, 155,  78, 198, 206, 141,  78, 238,  14, 167, 165, 152
	.byte	160, 227, 154,  61,  45,  72,  75, 231, 133, 224, 136,  93, 196, 180, 110, 202
	.byte	137, 233, 206,  99, 182, 103,  33, 111,  14, 220,   5,  72,  61, 198,  16,  58
	.byte	150,   6, 191, 191,  65,  74,  39, 138, 143, 245, 176, 141,   5,  42, 218, 174
	.byte	248, 203,  85,  51, 196,   3, 213, 153,  48, 125,  95,  97, 161, 228, 189, 237
	.byte	208, 138, 196, 249, 100, 207, 136,  75, 216,  77,  10, 116, 203,  35, 190, 128
	.byte	 35,  47,  54, 140, 238,  95, 246, 200, 235, 195, 185,  22, 216,  66, 176,  28
	.byte	250, 101, 144, 114,  39, 222,  20, 178,  57, 118, 238,  51, 226,  27,  62, 255
	.byte	241, 148, 208, 158, 112, 160,  99,   7, 207, 166, 215, 255,  35,  77, 187,  85
	.byte	226,  39, 173, 190, 154,  59, 249,  31, 241,  68,  34, 226,  34,  81,  61, 164
	.byte	 87, 241, 233,  31, 137, 228,   0,  92, 218, 139, 221,  34,  30,  67,  92, 204
	.byte	 26,  79, 215,  34, 235, 159,  37, 133, 196,   5, 175, 215, 220, 113,  35, 172
	.byte	151,  22, 179,  80,  38, 235, 236, 179, 230, 110, 137,  79, 106,  32,  23,  29
	.byte	244, 112,  20, 220,  30, 239, 110,  49,  36, 246, 237, 162,   5, 120,  84, 121
	.byte	248,  76,   3,   7, 210, 144, 104, 107, 167,  15,  93, 145,  69,  38, 155,   8
	.byte	 24,  46, 162,  35, 106,  17, 172,  23,  55, 198, 144, 119, 169,  74, 152,  74
	.byte	161, 133,  20, 113,  61, 189, 252, 172,  12, 164,  80,  35, 247,  41,  30, 159
	.byte	 72, 136, 236, 159, 154, 216, 197,  88,  82, 130,  24,  83, 119,  27, 204, 218
	.byte	 34,  65, 251, 165,  95, 196, 110,  48,  92, 225, 164,  36,  39, 132,  81, 193
	.byte	 46, 156, 120,  80, 180, 105,  62, 121, 151, 157,  85,  94, 149, 158, 153, 244
	.byte	148,  85, 166,  89, 252, 173,  37,  31,  43, 120, 231, 187, 175,  15, 133,  22
	.byte	124, 214,  24,  53, 174, 111, 109, 103,  29,  25, 102, 208,  40,  48, 212, 184
	.byte	 77, 253,  93, 120,  11, 221, 246,  24, 180,  83,  71, 231, 180, 191,  74, 244
	.byte	 74, 184, 151,  61, 213, 218, 169,  28,  12, 235,  82,  78,  68, 214,  60, 110
	.byte	129, 110,  39,  78, 224,  74,  33,  39, 174,  44, 128, 192,  32, 215, 216,  94
	.byte	146, 204, 180, 109, 109, 160, 179,  76, 232, 161,  39, 247,  35, 128, 105,  13
	.byte	145, 175, 233, 152,  71,  95,  93,  35,  67, 254,  28, 218, 241,  70,  46,  39
	.byte	 52, 219, 232, 158,   0,  35, 197, 196,  43,  55, 115,  13,  62, 127,  86, 144
	.byte	150,  57,  19, 229, 198,  79, 238, 188, 148, 174,   8, 120, 175,  70, 236,  42
	.byte	254, 126, 240,  91, 163,  10,  88,  43,  79, 213, 120,  75, 119, 249,  52, 201
	.byte	183, 156, 197, 151, 150, 253,   8,  57, 218,  29,  52, 102, 217, 251, 194, 168
	.byte	220, 160,  53, 107,   4,  72,  11,   0,  43,  81,  68, 107,  21,   2, 192, 129
	.byte	124, 206, 173, 141,  70, 194,  56, 229, 180,  37,  53, 247, 243,  71, 220, 176
	.byte	178,  50, 106,  99, 127,  86, 202, 192,  29, 209,  23,  12,  61, 115,  41,  72
	.byte	 56,  56, 235,  29, 216, 242,   2, 129,  60, 190, 164, 187, 130, 158, 214,  62
	.byte	 28, 144, 137, 168, 102, 246,  44,  95, 210,  43,  37, 140,  79, 143, 229,  72
	.byte	 51, 189, 198, 136, 189,   4, 239,  34, 215,  62, 122,  83,  67, 202,  90, 169
	.byte	190, 128, 236, 160,  59,  62,   5, 230, 100, 186, 226,  10,  39, 216, 124, 212
	.byte	110, 206, 196,  23, 250,  21,  23,  14, 177, 173, 251, 238,  34, 200,  79,  44
	.byte	230,  70, 225,  92, 210, 240,   1,  60,  36,  46,  49, 208, 123, 240, 127,  23
	.byte	102, 181,  15, 250, 213, 174, 220, 180, 205,   3,  75, 240, 206,  74,  28, 111
	.byte	102, 162,  47,  87, 126, 160,  17,  60, 229,  37,   2, 151,   4,  45, 105, 129
	.byte	137,  29,   5, 163, 198, 159, 226, 152, 154,  34,  79, 233, 194,  47,  29, 221
	.byte	 12,  70,  91, 199, 127,  58,  70, 139, 208, 221, 214, 234, 171,  73,   8, 100
	.byte	 76, 125, 240,  41, 177, 195, 212, 242, 130,  52, 109, 127,  26,   2,  93,  60
	.byte	194, 233, 135, 223, 191, 143,  60, 159, 113, 122,  80, 109, 166, 200,  24, 128
	.byte	100,  22, 215,  21,  24, 133, 176, 202, 143, 168, 230, 226, 212, 128, 167, 130
	.byte	138,  68, 165,  79, 213,  24, 222, 233, 120, 231,   3, 146, 180, 168, 204, 247
	.byte	 85,  63, 202, 144, 156,  76, 165,  48,  58,  93, 173,  32, 100, 110, 142, 243
	.byte	 94, 224, 170, 133,  12,  51, 135, 125, 162,  46, 251, 121, 136,  65, 178,  60
	.byte	210,  35, 171, 109, 118, 146, 120,  95, 213, 186, 217, 198,  24,  52, 104, 176
	.byte	 32, 228,  33,  39, 131, 155,  43, 100,  98, 132, 204,  31, 104,  51, 184, 109
	.byte	242,  49, 193, 140, 231, 136, 203, 186,   8, 121, 105,  45,  48,  11, 202, 232
	.byte	134, 152,  39, 235,  35,  94,  83, 223, 228, 187,  80,  82,  89,  89, 226,  79
	.byte	  1, 233,  74,  10, 202, 106, 108,  61, 205,  15,  87, 163,  25,  54, 142, 128
	.byte	108, 231,  70, 241,  68,   3, 117,  23,  30, 102,   2,  81, 172,  96, 169,  87
	.byte	 42, 112,  94, 109, 202, 122, 131, 119, 220, 149,  72, 202,  23, 248,  28, 244
	.byte	146,  40, 127, 142, 235, 222,  68, 215, 210, 230,  54, 157, 115,  78,  96,  41
	.byte	117,  73, 150, 171, 218, 114, 147, 237,  83, 118,  10,  52, 214,  62, 245, 178
	.byte	254, 221, 137,   1, 139,  66,  36,  11, 181, 225, 182, 162, 166, 202,  69, 138
	.byte	163, 162, 187, 187, 209, 176,  68, 212, 129, 146,  82, 237,  38,  31, 231, 149
	.byte	250, 130, 136, 234,  32,  13, 159, 124,  68, 237,  80, 172,  66, 154,  46, 179
	.byte	191,  93, 159,  92, 185, 179,  89, 253, 221,  89,  30,  48, 248, 121, 144, 103
	.byte	 62, 154, 142, 215, 219, 230,  25,   8,  28,  59, 111,  71,  86,  44, 199,  46
	.byte	 53, 141, 111,  75, 180, 229, 174,  44, 133, 113, 198, 252, 198, 246, 128, 251
	.byte	216,  77, 246, 178,   0,  49, 123, 173, 172, 233, 205, 186, 141,  40, 201,  30
	.byte	198,  77, 198,   8, 192, 233, 244, 212, 152,  30, 191, 214, 181,  40, 233, 121
	.byte	 26,  93, 142,  49, 165,  23, 179,  55,  85,   0, 167, 129, 112, 116,  89, 148
	.byte	154,  31, 197, 179, 197, 120, 201, 196, 143,   6, 128, 214,  45, 120, 109, 132
	.byte	244,   3, 176, 225,  78, 215,  97,  85, 126,  87, 182, 206,   7,  38,  96, 106
	.byte	121,   2,  84, 196, 253,  76, 212, 104,  75,  89,  94, 247,  52, 136,  49, 222
	.byte	  4,  23,   6,  75, 214, 176, 219, 224, 209,  90,  32, 197, 114, 146,  75,  30
	.byte	186, 131,  66, 213, 245, 175, 107,  90, 199,  53, 187, 248, 159, 172, 156, 177
	.byte	114, 211,  53,  90, 112, 231, 227, 176,  55, 242, 111, 211, 185,  77, 119, 126
	.byte	116,  41, 139, 254,  76, 242, 133, 152,  77,  37, 223,  35, 181, 169, 198, 203
	.byte	158, 114, 158, 146,  26, 228, 199, 137, 231, 251, 229, 241,   2,  53,  36, 150
	.byte	 86, 173, 127,   2, 127, 222,  29, 103, 207, 131, 162, 234,  94, 107,  42, 117
	.byte	226, 202, 152, 242,  86,  22, 219,   2, 246, 124,  84,  96, 140, 234, 239, 227
	.byte	146, 187, 231, 172,  20,  10,  89, 152, 117, 116,  19, 248, 236,  68,  71,  33
	.byte	190,  69, 230, 152,  98, 191,  91, 146, 145, 195, 115, 189, 116, 183, 113,  42
	.byte	 37, 132, 170, 228, 143,  67,  98, 149,   0, 247, 227, 108,  24, 231,  54,  49
	.byte	128, 180, 157,  44, 254, 201,  75, 230, 159, 125, 113, 112,  78, 155, 153, 146
	.byte	191,  12,  33,  35, 145,  90, 168,  85, 112, 141, 106,  88, 215,   3, 165,  47
	.byte	206, 120,  12,  16, 218,  90,  83,  27, 148, 109, 229, 213, 123,  99,  69,  89
	.byte	181, 181,  72, 136, 114, 206, 218, 233, 134, 143, 128, 192, 160,  18, 158, 141
	.byte	 60, 150, 228, 219,  74, 101, 139,  49,  35, 216, 175,  87, 114,  77,  89, 164
	.byte	162,   6, 139,   6,  26,  11, 129, 223, 147,  91, 187,  57, 217, 193, 236,  62
	.byte	 98, 187,  18, 183,  48, 209, 252, 146,  36, 220, 185, 188, 165, 244, 253, 255
	.byte	 18, 141,  39, 216,  14,  12, 252, 170,  16, 208, 110,  95, 139,   8, 203, 113
	.byte	110, 140, 186,  76, 115,   2, 194,  36, 139,  41,  66,  18, 237, 148, 233,  33
	.byte	247, 201, 122, 125, 239, 153,  85,  52,  19, 111, 232, 185, 200, 206,  29,   1
	.byte	168,   3,  75, 215, 228, 120, 152,  29,  52, 177, 246, 191,  84,  69, 116,  21
	.byte	205, 236,  29,   5,  20, 193,  90,  65, 152,  29,  50, 245,  61,  14, 101, 141
	.byte	  2,   7, 111, 139,   5, 243, 255, 109, 170,  50, 182, 110, 144,  47, 171, 216
	.byte	234,  98, 167, 116, 120, 139, 153,  52, 124, 152, 197, 205, 216, 144,  47, 136
	.byte	 66,  12,  44, 142, 128,  27, 250, 159, 114, 129, 225,  27, 210, 153, 142,   9
	.byte	 35,   2, 126, 167,   5,  43,  32,  44,  33, 219, 117,  70,   4, 197,   4,  60
	.byte	 16, 178,  31,  29, 218, 167, 205, 111, 239,  90, 236, 127,  96, 106,  98, 214
	.byte	 49,   1, 234,  92,  25,  59,  28, 161,  25, 166,  14,  18, 120, 245,  59,  87
	.byte	122,  60, 132,  36, 208, 112, 106, 160,  57, 161, 213, 217, 141, 158,  26, 179
	.byte	199,  11,  91, 213, 106, 180,   8,  41, 215, 243, 188,  15,  78,  31,  26, 239
	.byte	 96, 157, 185, 139, 188, 152, 222,  85,  58, 194, 127, 146, 135,  73, 153,  33
	.byte	107,  52, 222, 236, 159,  93,  76, 143,  24,  58,  35,  22, 182, 129, 195,  31
	.byte	192,  28, 208, 170, 166,  63,   1, 155,  42, 199, 105,  32, 110, 198, 192, 171
	.byte	114, 218,  24,  57, 101, 209, 117, 117,  79, 103, 168, 242, 196, 252,  80, 202
	.byte	 28,  97, 218, 113, 139, 245, 159,  45, 212, 248,  60,   2,  15,  62,  29, 163
	.byte	215,  57, 152,  16, 180, 112, 140, 176, 127, 238,  88, 251, 128, 182, 163, 145
	.byte	232,  64,  23,  75, 176,  15, 215,  81,  61, 127, 224,  65,  77,  60, 243, 165
	.byte	175, 173, 118, 179, 148, 100, 218,   7, 116, 147, 145, 248, 189,   7,  72, 115
	.byte	192, 132, 144, 227,  51,  48, 189,  42, 220, 215, 135, 218, 146,  76,  63,  47
	.byte	103, 165, 154,  26,  55,  14, 238,  52, 218,  63, 165, 179,  13,  99, 244,  83
	.byte	 62, 143,  58,  17, 176, 171, 100, 200,  81,  31, 236,  96, 188, 176, 183, 126
	.byte	150, 202, 142,   6, 202, 254,   0, 167, 114, 217,  11, 164, 152, 103, 147,   0
	.byte	114,  90,   9, 214, 220, 208,  90,  77,  15, 167, 196, 112, 237, 208,  43, 192
	.byte	 99, 252, 174,  60, 185, 213, 217, 114,  70, 215,  71,  66, 117, 145, 120,  95
	.byte	238, 228,  44,  31, 141, 232,  95,  49, 241, 208, 162, 217, 195,   0,  89, 208
	.byte	117, 225, 124,  95,  44, 146,  98, 237, 198,   8,  61,   9, 212, 171,  48, 171
	.byte	100, 255, 216, 105,  71,  79, 164,  84, 243,  48, 101,  35, 178, 233,  11, 227
	.byte	211,  91,  39, 210,  55, 230, 156, 172,  21,  69,  74,  29,  51,  60,  53,  31
	.byte	144,  71,  54, 152, 227, 174, 234,  25, 246, 223,  83,  51, 254,  61, 122, 106
	.byte	158, 239, 179, 128,  84, 196, 103, 147, 196, 220, 188, 194, 156, 249, 220, 113
	.byte	110, 137,  46, 103, 173, 152, 182, 131,  12, 229,  68,  65,  29, 252, 183,  18
	.byte	 39,  72, 218,  92, 190, 140, 251, 223,  71,  66,  23,   3, 179, 170,  86,  83
	.byte	 54,  21, 226, 158,  10, 228, 140,   9, 238, 150,  71,  85, 206,  12, 173, 172
	.byte	234, 248, 148, 141, 228,  36, 199, 228,  79, 128,   6, 152, 216, 121, 113,  85
	.byte	156, 237, 128, 133, 145, 230,  33, 249,  34, 175,  90,  22, 232, 119,  37, 127
	.byte	 92, 121, 174,  84, 153, 168, 165, 126,  48, 190, 236,  92, 159,   8,  24,  53
	.byte	 90, 180, 106, 224,  83, 216, 159, 173,  82,  73,  71, 235,   7,  37, 206, 137
	.byte	177,  16, 221, 241,  65, 235, 253,   6,   6, 103,  80,  41, 223, 103, 138, 203
	.byte	 86, 231, 156, 218, 228, 255, 109,  48,  67,  93,  73, 228, 201, 223,  90,   1
	.byte	128,  72, 202,  23, 224,  37, 185,  57,  40,  50, 183, 103, 163,  60, 140,  99
	.byte	254, 238, 195,  74, 118,  50,  78,  57, 162, 236, 220,  56, 167,  86,  15, 235
	.byte	 62, 229, 152,  72, 245,  24, 164,  19,  59, 122, 236,  94,  74, 228,  80,  35
	.byte	150,  27,  36, 152, 167, 145, 123,  83, 164,  64, 124,  10,  55, 105, 234, 162
	.byte	 56,  13, 233,  80,  71, 169, 221,  93, 106,  10, 239, 181, 229, 204,  18, 115
	.byte	 72, 223, 244,  48, 194,  18, 234, 239, 118, 168, 217, 113, 192, 161,  33,  68
	.byte	 12, 102, 194, 114, 193, 136,  98,  55,  90, 177, 169,  66, 218,  60, 155, 188
	.byte	 14,  62, 207,  90, 240, 187,  80,  74,  32, 115, 113, 176,  23, 181,  55,   9
	.byte	 30,  14, 112, 199, 178,   4,  65, 182, 179, 102,  98,  96, 152,  51, 123, 208
	.byte	252,  46, 252, 175, 157,   8,  99, 187, 209, 112,  61, 221,  37,  95, 152, 234
	.byte	  9, 214, 206,  17, 164, 181, 227, 126,  51,  90, 141, 107, 121, 243, 240,  68
	.byte	 66,  85, 236, 249, 175, 185, 135,  30,   8, 197,   7, 227, 198, 211, 227, 223
	.byte	217, 222, 208,  95,  73, 115, 107, 187,  55,  39,  24, 104, 104,  44,  30, 200
	.byte	210, 171,   8, 143,  13, 155, 244,  95, 135,  39, 138, 150, 240,  32, 143,  65
	.byte	148, 155, 122,  44,  75,  17, 249,  62, 138, 104, 132, 216,   8, 219,  42, 106
	.byte	  6, 231, 235,  94, 237, 134,  67, 251, 130,  35,  74,  30,   5,  22, 234, 140
	.byte	 76,  37,  42, 193,  15, 218,  68, 228, 129,  53, 119, 163, 232, 127, 200,  35
	.byte	206, 111, 162, 155, 153,  12,  30, 248, 103,  60, 198, 250,  30, 105, 176,  95
	.byte	 46, 137, 138,  91,  30, 232,  96, 141, 164, 143,  84, 106, 193, 147, 206,  79
	.byte	180, 225,  78, 224,  90, 114, 210, 113, 132,   3,  32, 168,  69,  69,  55,  14
	.byte	231, 160, 119,  28, 225, 175, 150,  76, 171, 251, 148, 208, 160, 209, 204,  79
	.byte	  4, 241, 123,  76, 220, 115,  13, 211, 131, 152,  82, 165,   1, 128, 191, 165
	.byte	 12, 235, 167, 204,  12, 246, 138,  66, 108, 168,  38, 137,  94, 153, 110, 192
	.byte	168,  47, 142, 108,  84, 112, 114, 253, 224, 129, 110,  71, 184, 193, 170, 244
	.byte	192, 113, 202, 181,  27, 154,   1, 215,  56, 253, 233, 162, 144,   4,  16,  86
	.byte	250, 157, 193, 126, 254, 171,  62,  46,  45,  57, 250, 196, 134,  48, 224,  30
	.byte	 51, 136,  75, 102, 255,  67,  88, 249,  17, 195, 208,  17, 247, 174, 178,  40
	.byte	228, 107, 180,   0,  33, 155, 133, 110, 218,  37,  53, 136, 167,  65,   6,   3
	.byte	159, 210,  40, 108,   2,  24, 183,  57,  84,  66,  92, 122,  32,  26, 226,  17
	.byte	 22, 116, 140, 101, 212, 220, 158, 124,  48,  55, 148,  20, 184,  85, 180,  87
	.byte	181,  14, 176, 113,  98,  30, 141,   8,  68, 194, 126, 223,  44, 166, 141, 164
	.byte	126,  44,  33, 189,  80,  65,  26, 123,  94,  74, 207, 113, 194,  32, 236,  38
	.byte	125,  15, 137, 101,  44, 178,  60,  98, 210, 197, 110, 178, 180, 169,  25, 120
	.byte	 20,  17, 147,  45, 217,  99, 109,  86,  56, 108, 146, 225, 178, 117, 240,  62
	.byte	 30,  53,  16, 139,  25, 222, 143, 126, 101,  22, 233, 100, 210,  54,  19, 127
	.byte	232, 182, 139,   5,   9, 194,  26,  76, 102,  93, 217,  38, 113, 238, 238, 137
	.byte	 89, 243,  94,  66,  23,  65, 120, 175, 159,  92,  10,  41, 194, 215, 218,  66
	.byte	 82, 126, 145,  10,  65, 152,  51,  72,   9, 218, 222, 195,  53,  93, 213, 180
	.byte	155, 208, 247,  77, 189, 153, 230, 159, 144, 204,  89, 236,  55, 227, 128, 146
	.byte	 22, 224, 109, 113, 126,  16, 162,  59, 112, 109,  59,  72,  33, 206, 140, 230
	.byte	215, 187, 123,  93, 145, 198,  96,  56,  55,  17, 165, 241, 239,  65,  36, 192
	.byte	226, 252,  31, 253,  79, 131,  39, 220, 135,  95, 235, 196, 144, 232, 108,  37
	.byte	105, 250, 174,  75, 225, 226,   6,  57,  58, 136, 223,  10, 235, 232, 209,  55
	.byte	186, 215, 127, 182, 158,  51, 186, 130,  88, 176,  91,  77,  54,  17,  16,  18
	.byte	133, 228,  34, 155, 238, 248,  60, 176,  48, 101,  83, 192,  65, 206,  82,  41
	.byte	186, 156,  90, 119,  29, 239, 113, 198,  77, 154,  43,  88,  71,  39, 237,  52
	.byte	134, 230,  24,  73, 176, 202,   2,  19,  99,  15, 219,  38,  63,   5, 243, 223
	.byte	122, 198, 171, 238, 230, 189, 133, 156, 111,  41,  12,  19, 188, 138, 197, 171
	.byte	141,  43,  75,  31,  79,  61,  51, 156,  40,  90,  24,  33, 199, 192, 109,  34
	.byte	 50, 176, 111,  71, 222,  39,  21,  18, 140,  84, 221, 102, 145,   5, 255, 192
	.byte	 26,  20, 152,  16, 173, 105,  68, 244, 126,  63, 143,  53, 124, 190, 148,  24
	.byte	176,  19, 159, 206,  15,   9, 207, 109, 235, 124, 231, 165, 122, 249,  27,  23
	.byte	 15, 201,  91, 189, 116,  56, 138, 200, 227, 248, 253, 152, 133, 198, 138, 163
	.byte	 40, 194, 155,  26, 232, 153, 232,  36, 189, 242,  48,  49, 220,  34,  33,  49
	.byte	212, 103, 209,  79, 157, 184, 117,  64, 212,  77, 116, 250, 241,  44,  75, 218
	.byte	106,  78, 172,  70, 255,  53, 245,  45,  20,  38, 218,  61,  68, 197, 251, 134
	.byte	126,  45,  35, 131, 109, 146,  71,  43,  64,  81, 235, 143, 205, 167, 213, 117
	.byte	194,  24,  76,   0, 126, 191, 212,  12, 242,  47, 199, 215,  85,  33,  80, 127
	.byte	248, 141,  78, 130, 225, 236, 158, 198, 131,  34,  55, 170, 129, 116,  60,  91
	.byte	134,  39,  94,  96, 105,  95,  37, 194, 153,  51,  55, 175,  64, 161, 217, 144
	.byte	 33,  94, 150,  59, 114,  29,  67,  66,  86,  76, 205,  22, 162, 142, 156, 150
	.byte	214, 114,  23, 111,  50,  50, 236, 161, 176,  31,  50, 194,  32, 119, 132, 156
	.byte	174, 236, 110, 123,  11, 251,  59, 176,  14,  12,  40,  60, 228, 120, 115,  37
	.byte	 64, 200, 228, 146,  74, 247, 186, 248,  44, 113, 166, 169,  61, 179, 140, 221
	.byte	227, 111, 134, 106,  94,  37,  77,  29, 243, 143,  30, 254, 113,  42,  26,  11
	.byte	 72,  73, 208, 238, 195,  55,   4, 221, 228,  58, 213,  58, 229,  88,  22,  82
	.byte	249,   5,  56, 149, 163,  93, 132,  47, 120,  82, 132, 176,  43,  60,  66, 148
	.byte	216, 214, 240, 250,  67, 114, 194, 114,   8, 132, 157,  77, 142,  88, 200,  36
	.byte	169, 254,  64, 105,  45, 169,  13, 242,   2,  27, 210, 217,  43,   1,  27, 121
	.byte	 70,  33, 189, 243, 156, 238, 178, 157, 165, 172,  34,  91,  14, 198, 106, 176
	.byte	 87, 160, 253,  57,  81, 173, 212, 182, 223,  49,  99, 107,  92, 231,  55, 125
	.byte	166, 115, 163,  38, 218, 183, 116, 246,   3,  52, 229, 243, 212, 237,  76, 180
	.byte	229,  70, 240,  16, 241,  18, 227,  18, 129, 184, 116,  65, 197,  86,  23,  50
	.byte	210,  15, 204, 155,  43, 193, 130,  16,  86, 245, 143,  70, 135,  35, 134,  34
	.byte	212, 229,  98, 194, 235, 217,  22, 173, 211,  57, 200, 242,  33, 113, 115, 184
	.byte	 30,  66,  39,  71, 138,  21, 215, 156, 142,   8, 232, 229,  47, 201,  12,  34
	.byte	 58, 103, 121,   7, 202, 217, 149, 174, 232, 218,   2, 165,   4, 221, 205, 137
	.byte	 26, 233,  62, 122, 243,  68, 164,  43, 107, 240, 196, 147,  84, 179,  60, 237
	.byte	  4, 169, 141, 217,   3,  56, 119, 190, 138, 218, 187, 159,  38,  56,  83,  58
	.byte	236, 212, 144,  96, 205, 159, 199, 123, 252, 159, 145,  55, 215, 158, 240,   6
	.byte	132, 125, 216,   6,  76, 105, 151, 150,  29,  37, 190,  12, 235, 190, 236, 159
	.byte	 74, 254, 253, 201,  69, 240, 105, 194,   8,  78, 179, 178, 191, 168, 131, 174
	.byte	112, 169, 120,  37, 195, 163,  98, 173,  84, 106, 218, 123,  50, 179, 210,  62
	.byte	234,  35,   8,  99,  59, 227, 248, 253, 147,  12, 143,  37,  28, 179,  55, 221
	.byte	135, 217,   4, 219,  57, 199,  98,  11,  10, 145, 254, 177, 175,  23,  61, 130
	.byte	 62,  15,   4, 161, 127, 218, 170, 102, 111, 192,  61,  97, 165, 220,  13, 133
	.byte	151, 224, 123, 249,  89, 234,  21, 148, 123, 203, 163, 156, 248,   7, 106,  22
	.byte	130, 180,  18, 159, 196, 232,  51, 227, 156, 189,  83,  19, 107, 136, 175, 175
	.byte	 20, 163, 170,  76,  62, 221,  92, 189, 253,   8,   7,  81,  78, 161,  33,  96
	.byte	216, 210, 191, 119, 141,  84, 236, 166, 252, 196, 102,  35, 190, 145,  65, 111
	.byte	187,  36,  41, 160,  65, 246,  43, 226,  31, 171,  24,  69, 195, 188, 251, 148
	.byte	148, 209, 107,   0, 115, 194, 108, 159, 252, 223,  69, 164, 146, 219,  30,   2
	.byte	167,   2, 188, 216, 164, 129, 171, 180,  60,  97, 243,  88, 247,  21, 184,  26
	.byte	108, 146, 124,  98,  77, 252, 225,  75, 188, 116, 184,  14,  42, 202,  35,  72
	.byte	193, 146,  36, 137, 176, 168,  89, 118, 166, 191,   6,  69, 135, 111, 244,   2
	.byte	 88, 237,  67,  98,  87, 169, 101, 219,  99,  78,  75,  89,  55, 247, 124, 172
	.byte	200,  26, 121, 215, 118,  83, 127, 128, 132, 195,  24,   6, 220, 122, 176, 128
	.byte	 54,  88, 134, 253, 189,  31, 163,  67, 145, 221,  15,  69,  68,  51,  10,  54
	.byte	 68,  89, 192,  57,  81, 154, 140, 216, 127, 196,  15, 166, 166,  68, 228, 227
	.byte	 94, 249,  92,  96,  91,  53, 237, 108, 253, 210, 231, 204,   3, 201, 149,  94
	.byte	139, 248, 141, 120,  67,  63,  10, 246, 203, 132,  72, 156, 195, 225,  45, 234
	.byte	 92,  71, 111, 202, 248,  43,  59, 211, 235,  48, 245, 143, 222,  63, 182, 233
	.byte	230, 220, 219, 241, 127,  74,  75, 151,  60,  82,   3, 239,   1,  33,  75, 109
	.byte	166, 140, 179,  51,  63,  74,   8, 164, 151,  13, 255,   6,  43, 101,  23,  75
	.byte	155, 123, 219, 125, 162, 255, 204, 242, 237, 210,  95, 216, 133, 145,   4,  99
	.byte	 26, 132, 202, 239, 186, 227, 140, 255, 252,  44, 150, 186,  96, 118, 170, 193
	.byte	254, 162,  55,  21, 159, 103,  45,  22, 138,  25,  20,  21, 120,  94,  20, 148
	.byte	222, 142, 157, 235, 139, 177, 143, 113,   9, 179,   9,   9, 167, 113, 229,  38
	.byte	219,  60, 102,  65, 249,  21,  56,  50, 159,  33, 104, 231, 175,  74, 255, 219
	.byte	 90,  82,   7,  80,  98,  78,  38, 107,  83,  56,  57, 238,  82,  95,   9,   7
	.byte	196,  11, 170, 212, 241,  33, 134, 172, 204,  76, 239, 221, 219, 183,  41, 203
	.byte	178, 197, 182, 182,   8, 163,  26, 248,  67, 172, 117,  95, 168,  64,  72, 209
	.byte	 32, 213,  35,  92,  52,  39,  66,  83, 153, 240,  91,  54,  82,  58, 237, 130
	.byte	 50, 227, 152, 122, 193, 122, 208, 181,  96, 129,   6,  32,  39,   9,   8,  48
	.byte	225,  31,  16, 120, 239, 104,  76, 101,  21, 183,  31,  70, 207, 149,  83, 165
	.byte	170, 168,   8, 169,  47,  80,  79, 232, 107, 240,  15,  63,  56,  52, 157,  36
	.byte	 16, 174, 125,  79, 199, 204, 108,  81, 186,  21,  76, 105, 238, 106,   3, 140
	.byte	174, 105, 118, 212,  37, 247,  45,   9,  40, 111, 215,  40, 142, 129,  60, 120
	.byte	108, 121,  85,  49, 236, 163,  27, 213, 189,  58, 146, 180, 138, 133, 146, 136
	.byte	112, 124,  77, 171, 197,  26, 228,  62,  92, 194, 160, 145, 113, 199,  97,  44
	.byte	247, 234, 210,  31,  69, 222, 194,  76, 100, 142, 223, 191, 153,   2, 138, 165
	.byte	 80, 156,  89, 155, 232, 219, 148, 138,  27, 190,  17, 149,  75,  72,  84,  19
	.byte	134, 232, 116, 223, 167, 142, 158, 208, 102, 120,  28, 209,  73, 136,  55, 145
	.byte	 28, 130,  99, 177, 148, 106,  83, 124, 238,  90, 201, 107, 122,  23, 195, 157
	.byte	191,  49,  93, 162, 185, 235, 218, 211, 122,  90,  76,  40, 175,  89,   0, 140
	.byte	 74, 169, 224, 196,  47, 190,  85, 155,  52,  42, 175,  49, 166,  23, 137, 151
	.byte	 17,  38, 146, 247,  92, 185, 106, 155, 133,  93, 209, 162, 198,  97, 174, 116
	.byte	 44,  76,  84,  98, 168, 158,  37, 243, 112, 196, 190, 169, 240, 186, 249, 201
	.byte	 68,  94, 242, 194, 178,  19,  85,  25, 112, 206, 102, 190, 214,  96,  73, 191
	.byte	244, 150, 101, 166, 166, 223, 134,  35, 104,  52, 193, 165, 146,  30, 145, 222
	.byte	178, 215, 173, 214, 112, 254,  37, 235, 213, 255, 197,  63,  33, 146,  74,   9
	.byte	102, 109, 210,  61, 214, 105,  63, 198, 208,  82,  38, 142, 131, 105, 115, 237
	.byte	 12,   6,  23,  50,  62,  30, 210, 134, 158,  40, 255, 116, 227,  81,  88,   3
	.byte	220, 159,  15, 226,  64, 250,  67, 192,  29, 196, 125, 197, 220, 242,  54,  40
	.byte	 26,  62, 147,  84, 171, 183, 183,  76,  73,  68, 131, 223, 106,  65,   2, 163
	.byte	 22, 178,  20, 142, 116, 222, 145, 175, 121,  95, 175, 224,  79, 218, 120, 212
	.byte	252, 139,  29, 109,  10,  53, 165, 146,  11,  21, 102, 186,  43, 230, 244,  67
	.byte	 50,  91, 246,  11, 102, 149,  30, 220,  74, 121,  25, 222, 185, 208, 234,  53
	.byte	 38, 212, 142, 158,  94, 194,  12, 227,  50, 185, 239, 184, 194, 188,  73, 249
	.byte	182, 232, 177, 165, 149, 149, 131,  86, 119,  70,  53, 135, 250, 241,  38, 199
	.byte	103,   9,  15,  56, 200,  74,  94, 124,  77,  31, 240,  68, 142, 115,  54, 192
	.byte	106, 156,  78,  57,  97,  65,  41, 104, 135,  66,  55,  45, 154,  48, 202, 119
	.byte	223, 242, 165,  85,  66, 210,  75, 232, 207, 232, 207, 228, 141, 255,  31, 113
	.byte	172, 250, 203, 159, 157,  61, 233, 178,  12, 247, 236, 231, 147,  99, 244,   3
	.byte	218, 146,  21,  15, 168,  94, 203, 222,  58, 220, 222, 180, 229, 134,  82, 113
	.byte	166, 164,  54, 119,   1,  83,  71, 218,  21,  25,  70, 246, 249, 151, 229,  13
	.byte	146,  28,  96, 137,  52, 247,  34, 169,  15, 178, 164, 236,  64, 177, 225, 232
	.byte	100,  59, 172, 128, 229, 180, 125, 141,   9, 208,  63, 104,  10, 103, 218,  26
	.byte	 82,   0, 102, 125,   1, 225, 160,  87,  31,   4, 227,  66,  28,   1,   6, 217
	.byte	 78, 251,  36, 104,  52, 234, 155, 168,  95,  69,  98, 187, 155,  69, 252, 169
	.byte	163,   1, 171, 153, 186, 160, 247, 154, 236, 114,  21, 109, 107,  41, 243, 132
	.byte	 48, 190, 135, 146,  49, 155, 215, 166, 239, 174, 130, 115, 202,  24, 223,  10
	.byte	173,  44, 112, 126,  96, 141, 154, 201, 251, 111,  60,  41, 225, 213,  21, 198
	.byte	142, 183, 175, 182, 143, 107, 149,  20,  44,  69, 185,  68, 126, 199,  79,   1
	.byte	131,  62, 174, 233, 231, 158,   4,  49, 243, 254,  34, 149, 175, 128, 114, 161
	.byte	 60,  76, 229, 247, 200, 209, 175, 154, 193, 190, 168,  68,  10,  34,  63,  16
	.byte	 13,  30,  80, 240,  30, 182, 159, 107, 191, 118, 181, 114, 205,  32,  51, 246
	.byte	156, 105,  80,  62, 245, 204,  84, 250, 157,  91, 161, 211,  31,  18,  48,  15
	.byte	183,  48,  22, 103,   8, 215,  18, 131,   9, 222, 189,  30,  21, 230, 245, 177
	.byte	228, 132, 249, 147,  63,   9, 189,  82, 140, 190, 128, 234, 204, 173,  86,  50
	.byte	215,  11, 137, 234, 121,  41, 151,  64,  77,  62,   0, 238, 153,  42, 253,   6
	.byte	146, 229,  45,  13,  39, 115, 237, 127, 205, 110, 120,  98, 150, 179,  18,  36
	.byte	136, 179, 199, 186,  18, 166, 140,  45,  71, 158, 248, 205, 156, 137,  56, 110
	.byte	 58, 163, 156,  52,  48, 255, 179, 238,  93, 225, 134,  63,  44,  17, 118, 200
	.byte	137, 167, 149, 166, 210, 199, 111,   4, 150,   3, 252,  16,  38,  45, 247, 220
	.byte	116,  85,  35, 227, 221, 117, 212,  58,  20,   1, 162,  26,  35,  78, 212,  45
	.byte	167, 251, 129, 170,   6, 118, 240, 182,  65,   0,   2,  78,  14,  52,  92, 194
	.byte	216,  67, 181,   1, 145, 233, 181,  19, 126,  47, 207, 127, 164, 119, 252,  86
	.byte	190, 118, 187,  50, 189,  56, 174, 157, 107,  38, 247, 243,  99,  15, 181,  67
	.byte	232, 234,  82,  11,  47, 114,  90, 211, 249, 199, 196, 193, 206, 211, 251, 216
	.byte	 47, 227,  50, 185, 188,  14, 104, 122, 191,  21, 200,  80,  81,  79, 199, 250
	.byte	 66,  20, 139, 220,  53,  38, 217, 144, 207,  87,  10, 163,  76, 159,  76,  61
	.byte	230,  38,  96, 106, 112,  54,  99,  19, 250, 143,  80, 220,  69,  36,  30,   9
	.byte	230,  93, 240, 249, 201,  30, 224, 120, 180, 168,  54,  37,  72, 231, 194,  36
	.byte	129, 106,  50, 244, 179, 104,  97, 118, 173,  96,  48,  21, 176, 135,  28,  15
	.byte	  4,  46, 222, 204,  29, 124,  94,  82,  63, 182, 145, 234, 199, 193, 110,   3
	.byte	 71, 128, 234, 217, 253, 128, 145, 241, 174, 203, 107, 135,  95, 117, 245, 174
	.byte	 46,  64,  64, 205, 237, 207, 208,  24,  96, 208,  78, 171, 125, 108,  41,  26
	.byte	127, 132, 116, 118,  10,  19, 126,  22,  29, 255, 228, 230,  39,  61, 167, 228
	.byte	 66,  44,  94,   8, 102, 180, 148,   2,  78,   5, 179,  13,  94, 155, 149,  56
	.byte	207, 249, 229, 178,  61, 116, 170, 144, 175,  76, 134,  60, 143,  57,  81, 121
	.byte	110, 155, 244,  63, 219,  72, 155,  83, 102, 199, 118, 198,  27, 240,  81, 227
	.byte	193,  84,  37, 105,  44,  54,  75,  48, 130,  32,  25, 188, 168, 163,  93,  68
G$k_matrix:
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	210, 111, 178,  20, 189,   3, 194, 107, 108, 160, 232,   7, 238, 231,  83, 166
	.byte	 75, 228,  28, 251,  62, 134,  61, 158, 203,  71,  74, 200, 147, 106,  34,  11
	.byte	 56, 221, 148,  14,  78,  73, 216, 228,   7, 111, 143, 138,  96, 227, 232, 189
	.byte	 29,  50, 115, 234, 149, 217,  10, 223,  68,  82, 173, 229, 222, 246,  82, 255
	.byte	110, 101, 195, 118, 218,  55,   0, 156, 237,  10, 165,  51,  98,  77, 198, 246
	.byte	 11,  57, 122, 117, 130, 145,  10, 169, 195, 131,  68, 175,   5, 104,   6,  67
	.byte	178,  20, 213, 202,  81,  71,   1, 243,  43,  29,  46,   7, 102,  36,  58, 180
	.byte	197,  10, 166,  40, 123,  97,   5, 180, 172,  90, 182,  31, 157,  30,  57, 251
	.byte	 16, 161, 156, 171, 135,  73, 119,  83, 104, 178, 161, 202,  86, 249, 148,  99
	.byte	 37,  76,   1, 202,  28, 159, 205, 234,  90, 215,  43, 199,  86, 236, 114,  15
	.byte	  4, 108,   3, 255,  48, 243,  37,  31, 135, 189,  12, 216,  48,  84, 177, 188
	.byte	246,  31, 218,  35, 149,  10, 120, 219,   5,  89, 151,   1, 247, 166, 170,  66
	.byte	162,  60, 254, 205,  72, 224,  72, 233, 218,  96,  13, 180,  74, 115,   7, 246
	.byte	221, 250,  39,  15,  55,  74, 122, 224, 211,  31,  28,  13,  86, 103,  91,  45
	.byte	112, 140, 158, 194, 134, 144, 101, 130, 195, 134, 152,  29,  30,   9, 246,  10
	.byte	 14,  97, 127,  30, 219, 241, 253, 216, 223, 160, 183, 105, 220,  70,  36, 193
	.byte	200,  99, 231, 101,   9,  88, 193, 175, 237, 177,  77, 165,  75, 148,  20, 103
	.byte	 30,  10, 230, 198,  24,  28,  88,  78, 208, 108, 113, 149,  11, 137, 240, 222
	.byte	230, 127, 240, 223, 128, 181, 185, 173,  65, 239, 159,  75, 232, 185,   6,  23
	.byte	141, 237, 170,   6,  76,  77, 188, 244, 213,  65, 112, 243,  19,  20, 107,  58
	.byte	144,  78, 247,  89,  29,  25,  70, 221, 173, 114, 229, 246,  44,  81,  43, 147
	.byte	134,  11, 208, 221, 145, 166,  17,  12, 211, 173,  88, 216, 201,  76, 206,  26
	.byte	168, 101,  92,  99, 119, 129, 214, 113, 103, 143, 141, 105,  92,  91, 109,  81
	.byte	166,  25, 137, 192,  81, 103, 131, 138,  86, 141, 156,  84,  37,  97, 151,  36
	.byte	198,  88,  96, 100, 190,  73, 144,  68,  63,  51,  47, 122,  74,  46, 137,  21
	.byte	100, 184,  78, 114, 113, 113,  78, 235, 211,   2,  96, 123,  50, 227, 120,  27
	.byte	 68,  36, 193,  42, 115, 204,  36, 227, 127,  11, 213, 199,  49,   1, 154,  28
	.byte	  6, 172, 248, 112, 100, 147,  88,  47, 186,  74, 226, 251,   6,   1,  14, 147
	.byte	 82,  13, 184, 241, 172,  94,  39, 206,  40, 174, 129,  99,  72, 145,  26, 191
	.byte	 50, 197, 235, 102,  55, 236, 178, 106, 116, 107, 203, 184,  78,   5,  48, 255
	.byte	154,  43, 195, 180, 122,  45, 180,  36,  57, 215,  45,   1, 220, 124,  65,  82
	.byte	170,  13, 119, 126,  86,  87,  31,  13, 170, 184,  48, 145,  52,   8, 174,  43
	.byte	 78,  31, 177, 202, 106,  82, 230, 118,  81,  21,   7, 110, 217,  38, 123, 250
	.byte	159,   9, 239,  75, 161, 240, 166,  86, 178, 121, 113, 172, 187, 162, 104,  84
	.byte	136, 244, 216,  45, 246, 159, 177, 154, 173, 146, 152,  75, 128, 244, 165, 156
	.byte	175, 228, 193,   9,  66, 211,  46, 167, 174,   7,  51,  63, 233, 190, 180, 190
	.byte	184,  75, 216, 165, 115, 222, 141, 178,  87, 192,  72,  54,  52,  43, 156,  87
	.byte	245,  93, 233, 120, 119, 162, 226,  87, 228, 228, 233,  19, 181,  97, 114, 171
	.byte	212,  63, 224, 241, 243, 103, 187, 171,  88, 232,  40, 137,  35, 136,  75, 202
	.byte	232, 230,  50, 173, 120,  67,  35,  99, 197,  63, 217, 163,  83, 124,  67, 172
	.byte	174, 115, 167, 216,   8,   7,  79, 153,  87, 162,  89,  90, 204, 203, 101, 176
	.byte	158, 140,  43, 186, 196,  87, 242, 198,  99, 212, 142, 235,  97, 196, 146,  57
	.byte	 88,  57, 169,  97,  71, 248, 204, 112, 114, 198, 200,  26, 248,  52, 245, 109
	.byte	  5, 159, 162,  66, 118, 226, 239,  15,  14,  24, 171, 135, 199, 104, 209,  26
	.byte	 92, 166,  12, 124,  68, 240, 244, 197,   4,  56, 121,  89, 198, 163, 103, 153
	.byte	 29,  73, 211, 102,  92, 139, 178, 154,  53, 134,  21, 209, 226, 104, 112,  69
	.byte	122,  82, 164, 162, 180, 169, 170,  63,  87, 238, 200, 132, 163, 242,  73, 109
	.byte	130, 137,  32, 119,  56, 143,  68, 118, 177, 192, 160, 168,  65, 163,  43, 179
	.byte	 58, 243,   6, 194, 147,  50,  45,  62,  70,  82, 118, 178, 200,  99, 231, 139
	.byte	248, 232,  95, 161,  91, 231, 228, 221, 112,  64, 152,  74, 110, 154,  23, 165
	.byte	158,  18,  37, 241, 186,   3, 173,  67,   0,  65, 210, 210, 159, 115,  82, 190
	.byte	219, 146,  10, 154,  46, 222, 208,  71, 207, 199, 110,  21,  94, 215, 224, 164
	.byte	 68,   4,  41, 224, 221, 222, 131,  57, 237,  13, 245, 183,  98,  82, 206, 129
	.byte	235,   0, 194, 219, 221, 254,  19,  53, 121,  67, 227,  15, 193,  20,  58, 195
	.byte	 30, 164, 247,  12, 254,  15,  47, 252,  48,  34, 162, 186, 238, 230, 124, 165
	.byte	163,  19, 186, 177,  90, 135, 138, 109,  55, 153, 105, 229,  22,  23,  87,  68
	.byte	200, 194, 236,  92,  86, 127, 167, 237,  61,  97, 112, 105, 180, 199, 161, 233
	.byte	141, 113,   9,  89, 121,  60, 247, 113,  76,  21, 191, 234, 194, 221, 198, 103
	.byte	116, 109, 149, 251,  74, 191,  46, 202, 194,  33,  98,  75,   2, 184,  62,  77
	.byte	120, 144, 111,  99, 143,  77,  13, 124,  80, 247, 128, 168, 218,  86,  69, 164
	.byte	 98,  92, 183, 245, 104,  61, 123, 206,   4,  35,   8, 147,  86,  54, 162, 244
	.byte	 45, 212, 141, 248,  43, 232,  83, 128,  86,  27,  33, 148,  62,  90, 171, 182
	.byte	252, 173, 152, 198, 137, 194,  32,  64,  99,  79, 230, 122, 158, 227, 229,  23
	.byte	 67,   8,  82, 121,  73, 242,  64,  26,  71, 126,  94,  61,  17, 254,  10,  68
	.byte	 44, 198, 174, 150,  45, 192, 252, 124,  59,  96,  56, 125, 164, 174,  34, 191
	.byte	245, 248,  78,  45,  72,  44, 235, 225,  35,  89, 120, 228,  20,  33, 231,  41
	.byte	126,  98,   6, 101, 245,  14,  84, 226, 171, 106, 132,  12,  39,  56, 134, 102
	.byte	 54,  40, 150, 199, 140,  13, 103,  14, 199, 108, 225, 163, 115, 222, 167,   8
	.byte	138, 213, 167,  61, 118, 162, 211, 137,  12, 243, 254,  53,  91,  13,  72,  18
	.byte	200,   2, 149,  30, 117, 246, 190, 127, 211, 160, 125,   3, 233, 215, 114,  25
	.byte	 34,  72, 131, 237, 206, 107,  32, 238,  79, 202,  16, 148,  88, 212,  71,  68
	.byte	126,  63,  23, 196,  99, 152,  63, 209,  85, 219, 253, 233, 184, 206, 234, 136
	.byte	180, 242, 114,  32,  93, 237, 178,  56,  90, 228,  82, 248,  22, 238, 111,  12
	.byte	161, 202, 167, 124, 210, 124, 146, 181,  50, 106, 220,  65, 144,   7,  14, 246
	.byte	106, 243,  64, 107, 246, 145, 216, 204,  80, 130,   0, 246, 243, 187,  38,  20
	.byte	 12, 146,  34, 210,  81, 188,  23, 134, 202, 111, 160, 140, 231,  57,  63, 177
	.byte	 62,  56, 228,   6,  41, 216, 216, 189, 141,  73, 107, 180, 204,  92, 117,  83
	.byte	215, 226, 193,  14,  77, 121,  40, 123,  69,  23,  49, 133, 153,  41, 124, 106
	.byte	 26, 232,  39, 114, 166,  92,  64,  10,  43,   9,  66, 215,  56, 156, 207,  42
	.byte	 76, 172,  32, 199, 168,  61, 242, 172,  42,  48,  28, 230, 155, 179, 185,  42
	.byte	252, 176,  86, 160, 132, 137, 212, 218, 124,  31,  23, 173, 172, 137, 246,  19
	.byte	 29, 105, 138, 114,  94, 197, 192,  52, 246, 135,  13,   6,  22, 143, 138, 101
	.byte	140,  76, 134, 166,  82,   3,  19, 208,  90, 236,  51,  44, 127, 222, 104, 127
	.byte	  3,  33,  22, 103, 176,  78,  60, 229,  83, 103, 100,   7, 244, 126, 164,   0
	.byte	 60, 217,  68, 198, 104,  44,  14,  96, 200, 122,  48, 190, 141, 156,  24, 117
	.byte	 16, 180,  79,  24, 116, 105, 187, 245,  29,   8, 243,  64,   4,  40, 167, 230
	.byte	 80, 176,   2,  27, 144, 245, 254, 173, 214, 206, 180,  68, 183,  11, 225, 143
	.byte	117, 187,  10, 226, 228, 231, 179,  41,  17,   2,  11, 105, 114, 192, 223, 200
	.byte	232,  28, 164,  73,   7, 233, 142,  50,  98, 225,  52,  43, 127, 100,   6,  95
	.byte	207,  36, 122,  30, 168, 220, 173, 103, 122, 144, 136,  88, 244, 176,  95,   4
	.byte	 84, 218,  61, 166,  37, 220,  92,  26,  66,   5,  76, 102, 141,  32,  61,  64
	.byte	163, 199,  91,  13, 129, 101,  26, 210, 166,  29, 246,  63,   3,  72, 146, 148
	.byte	252,  58, 200,  88,  89, 139, 171,  24, 227, 188,  28,  92, 230, 125,  28,  47
	.byte	 57, 137,  84, 230,  11, 168, 236,  95, 178,  79, 247, 228, 215, 225, 119,  70
	.byte	252, 108, 251, 108,  39,  56,  60,  63,  49,  65, 182,  15, 144, 185, 158,  60
	.byte	230, 184,  46,  50,  14,   8, 215, 104,  19, 131,   7, 128,  61,  56, 102, 113
	.byte	 10, 110, 190,  79,  76, 225,  79, 251,  86,  46,  52,  79, 252, 183,   2,  24
	.byte	225, 218,  44,  13, 236,  78, 243, 232, 250,  70, 111,  92, 134, 183,  99, 109
	.byte	 26, 106, 151, 198, 230, 128,  25,  30, 225, 219, 245,  29,  71,  36,  24, 219
	.byte	117, 228,  83,  24,  23,  11, 210, 122, 168, 135,  58, 228,  42,  50, 207, 171
	.byte	 74, 162, 145, 177, 107, 157,  92,  44, 236, 153, 247, 239, 197, 231, 204, 156
	.byte	 76,  86, 193, 171, 163, 130, 241, 231,  78,  20, 108,  16, 118, 214, 107,  54
	.byte	 16, 247, 219, 228,  25,  33, 119, 153, 181, 184, 184, 152, 207, 124, 163,  65
	.byte	174,  64, 238,  68,   9, 236, 126, 168,  28,  68, 144, 233, 224,  46, 234, 218
	.byte	184,  83,  20, 174, 124, 212,  75,  54,  97,   5, 140, 110,   5, 126, 214,  84
	.byte	248,  29, 227, 129, 143, 129, 207, 239, 236,  95, 195,  81, 242, 136,  94,  54
	.byte	194, 111, 144, 165,  13, 255, 237, 215, 194, 205, 195,  28, 178,  42,  40,  32
	.byte	156, 237,  55,  30,  88, 100,  76,  44,  48, 104,  89, 165,  54,  74,  73,  78
	.byte	238,  12, 235,  61, 142,   2, 188, 221,  71, 162, 174, 212,  15, 255, 199,  18
	.byte	129,  15, 170,  95, 142,   0, 206, 224, 172,  23, 121,   2,  69, 203, 167, 118
	.byte	158, 132, 105, 141,  12, 155, 141, 200,   6,  97, 133,  41, 235, 233, 161, 227
	.byte	 46,  51, 215, 225,  40, 208, 110, 107, 220, 167,  97,  18, 104, 205,  93,  48
	.byte	 90, 206, 168,  23, 236,  26,  31,  56, 219, 144, 190, 154,  50, 232, 157,  69
	.byte	103, 171, 217,  70, 104, 137, 180,  34,   0, 104,  76,  16, 234, 166,  79, 231
	.byte	 94,  33, 101, 218,   3, 171,  59, 218,  99, 254,  44,  16, 205, 110, 165, 147
	.byte	 60, 175, 102,  94, 143, 155, 180, 132, 178, 253, 236,  72, 144, 130, 154,  45
	.byte	 94,  39,  61, 218, 172,  52, 180, 110, 186, 149,  96, 129,  25, 222, 174, 133
	.byte	  1,  16, 215,  31, 241,  58,  80, 133,  68, 182, 233, 195, 164,   6, 149,  79
	.byte	 40,  97, 160, 140, 179, 138, 213, 214,   9, 175, 126, 105, 180,   8,   8,  70
	.byte	 47, 104, 217,  65,  82, 127, 255, 190,  87,  23, 228, 112, 148, 228, 113,  70
	.byte	224, 121, 193, 157, 185,  49, 235,  90, 147, 173,  92, 167, 142,  63, 167, 156
	.byte	109,  98, 190,  52,  56, 123, 212, 104, 231, 218, 138,  81, 121, 251, 199, 150
	.byte	  2, 242,  67,  20,  65, 178,  27, 159, 144, 147,   5, 102, 227,  61, 253, 144
	.byte	195, 142,  62,  50, 252, 201, 157, 200, 188, 120, 210,  91, 249, 121, 151,  17
	.byte	192, 188, 212, 246,  95,  89, 230, 242, 202, 206,  36,  26, 238,   7, 129,  50
	.byte	154, 175, 228, 226, 126,  86, 174,  23, 169, 209, 213, 208, 178,   5,  31, 178
	.byte	 76, 240, 199, 203, 101, 192,  28,  53, 118, 180, 201,  60,  46, 237,  31, 184
	.byte	179, 127,  10,  75, 214,  82, 104, 133, 168, 188,  16, 242, 163,  41,  77,  43
	.byte	154, 123,  11,  23, 162,  26,  20,  24, 234,  18,  34,  58, 251,  60, 162,  27
	.byte	 93, 135,  38, 221, 168,   8, 242,  44,  44, 128,  11, 104, 127, 230,  55, 176
	.byte	200,  58, 132, 237, 165,  80, 182,  58,  54, 188,  20, 171, 245,  38,  30, 104
	.byte	 42, 190,  47, 238, 107, 150, 148,  57,  58,  79, 228, 229,  52, 164,  18, 201
	.byte	106, 202,  86, 221,  44, 209,  62, 112, 242,   5, 190, 101, 129,  86, 186, 175
	.byte	 95, 154,   6, 180, 121,  10, 123,  85, 208, 220,  27, 251, 231,   0,  70, 125
	.byte	 38, 230,  62,  42, 232,  41,  32, 112,  19, 118, 123, 118,  17, 233, 202, 241
	.byte	 13, 143, 185,  13, 134, 167,  20, 225,  67,  33, 250,  61, 120, 218,  70, 124
	.byte	198, 247,  60, 116, 170,  69, 233,  53, 148,  51, 153, 169, 225, 133, 235,   0
	.byte	124, 139,  77,  67,  52,  64,  58, 213, 130,  87,  15, 173, 148, 102, 102, 182
	.byte	140, 248, 174,  58, 105,  24,   5, 169, 108, 154, 139, 178,  22, 151, 239,  91
	.byte	172, 196, 254, 166, 234, 117,  67, 177,  32, 229, 192,  58,  69, 173,  75,   3
	.byte	 42, 217, 108, 250,  62,  10, 174,  30, 253, 174, 165,  77, 101,  42,  95,   0
	.byte	 26,  14, 200, 172, 252, 112, 211, 135, 137, 239,  49, 216, 187,  92, 174,  53
	.byte	138, 104, 203,  68, 206, 135,  57, 249, 167,  83, 195,  41, 116, 122, 171,  85
	.byte	  5, 122, 204, 149,  79,  68,  76,  95, 201,  15, 166, 243, 252, 108, 130, 108
	.byte	162,   1,   3, 229, 178,  43, 203,  74, 140,  70, 209, 196, 184, 221, 108, 203
	.byte	 30, 131, 240, 253, 215, 217, 212, 128, 127, 139, 102,   6, 146, 235, 113, 205
	.byte	130, 168, 186,  38, 221,  24, 183, 238, 154,  97, 208, 130, 235,  47,  80,  64
	.byte	 55, 238,  82,  31, 159,  29, 121, 168, 130, 110,  92, 162,  87,  75,  57, 192
	.byte	102,  43,  72, 201, 106, 181, 122,  90,  48, 216,   3, 137, 140, 115,  14,   0
	.byte	 17,  43,  35, 250, 213, 135,  81, 173,  99, 137, 238,  48,  82,  60,  18, 248
	.byte	170, 240, 131,  26,  98, 209,  94,  41,  64, 238,  50, 179, 236, 213,  37,  41
	.byte	140, 120, 140, 251,  81, 199, 198,  86,  58, 124,  85,  31, 116, 189, 187,  65
	.byte	 80, 224, 228,  31, 183, 177,  74, 181, 198, 223, 147, 103,  54, 124,  12,  61
	.byte	239, 153, 179, 117, 156, 151, 218, 137, 144,  30, 254, 234, 232, 131, 232,  12
	.byte	 20, 212, 131, 120, 175, 194, 205, 132, 207, 246, 173, 128, 232, 116, 129,  20
	.byte	  5, 191, 198, 232, 220,  76, 248, 144, 156, 213,   7, 138, 254, 195, 147,  91
	.byte	 94, 185,   0,  78, 174, 151,   9, 248, 228, 177, 186,  19,  65, 174,  98, 141
	.byte	 26, 147, 156,  82,  42,  27, 120, 141,  43, 242,  54, 172, 108, 240, 119,  36
	.byte	 98, 128,  70, 199, 182, 142,  30, 118,  40, 184, 153, 237,  53,  40, 208, 172
	.byte	139,  41, 128, 117, 216,  51, 183, 185, 164, 131, 129, 138,  50, 182, 199,  12
	.byte	238,  72, 155,  18, 190,  80, 164, 217,  36, 168,  74,  76, 184,   0, 246,  45
	.byte	145,  84, 157, 254, 186,  89, 239, 225, 141, 120, 189, 175, 150, 242,  89, 222
	.byte	 78,  45, 236, 175, 210,  96,  78,  87, 140, 143,  82, 141,   5, 188,  83, 207
	.byte	 27, 183, 224, 131,  71,  92,  16,  53, 152, 110,  17, 161, 214, 115,  55, 129
	.byte	106, 214, 228, 108,  39,   8,  71, 165, 182,  10,  42, 141,  13, 224, 186, 224
	.byte	 89,  48, 250, 146, 108, 173,  98, 243, 246,  81,  49, 180, 141,  89,  54, 151
	.byte	 26, 158, 106, 248, 124, 168,  27, 123, 150,  41,  34, 192, 199,   7, 175,  11
	.byte	150, 226, 198, 238, 117,  75, 102, 223, 242, 115, 219, 123, 123,  41,   4, 220
	.byte	182, 120, 188, 178,  60,  46,  80, 179, 192, 184, 201, 247, 171, 224, 146, 112
	.byte	119, 178, 243,   4, 103, 175, 240,  51, 122, 196, 250, 233, 124, 150, 151,   8
	.byte	196, 182,  56,  84,  11, 214, 126, 212, 103, 157, 126, 155, 212,  55,  74, 131
	.byte	101,  60,  42,  78, 199, 193,  81,  49,  31, 247, 143,  70, 197,  54, 190,  28
	.byte	 22,   3,  62,   9, 229,  13, 222, 251,   3, 103,  78, 113, 123, 173,  46,  92
	.byte	228,  95,  31,  46, 217, 115, 244, 112, 155, 232,  34,  88, 213,  57, 145, 196
	.byte	132,  97,  84,  71,  79,  38, 194, 200, 112,  29, 251, 205,  37, 166,  21, 184
	.byte	 74, 151,  86, 208, 210, 125, 155,  75,  38,  34, 187, 144,  98,  73, 194, 152
	.byte	 96, 193, 199, 120, 171, 211, 181,  93, 142,  20, 218, 170, 240, 114,  62, 162
	.byte	251, 187, 255,  64, 147,  41,  89,  90, 219,  32, 246,  49,  35, 141,  68, 142
	.byte	 26,  46,  31, 207,  12,  27,   5, 184,  96,   6,  56, 144, 240, 243, 124,  70
	.byte	199, 126,  36, 193, 194,  34, 214,  96, 249, 131, 211,  44, 237, 158, 250, 184
	.byte	184, 250,  38, 171, 135,   9, 214,  72, 187,   3, 231,  53,  19, 200, 136, 115
	.byte	  0,   7,  13, 146, 202, 113, 225,   2,  13,  30,  48,  82,  58, 241, 171, 186
	.byte	228, 129,  60, 108, 192, 197, 115, 123,  36, 248, 198, 239, 201,   3, 173,  53
	.byte	152, 207, 221, 164, 204, 188, 134, 113,  17,  43,  67, 111,  72,  78,  17, 173
	.byte	 52,  83, 215,  52,  50, 113, 100, 235, 253,   8, 185, 218, 183,  27, 241, 173
	.byte	 23, 211,  24,  83, 218, 105, 237, 122, 144, 104, 101,  25,  52, 112, 225, 245
	.byte	 72, 236,  49, 143,  38, 148, 110,  62,  16, 216,  27, 118,  22, 185, 197, 160
	.byte	183, 140,  10, 232,  30, 154, 217,  27, 227,  16, 250, 190,  76,  54, 233,  61
	.byte	240, 210, 171, 146, 212, 193,  98, 157, 253, 216, 174,  28,  56, 176, 233, 120
	.byte	235, 179,   2, 108, 251, 183, 185, 199, 198, 227, 235, 213, 182,  76, 144, 131
	.byte	240,  17,   6, 253,   9, 156, 113, 210, 129,  22,  55,  46, 102, 143, 227,   9
	.byte	 62,  30,  42,  74, 155,  96, 216, 109, 251,  23, 209, 108,  37, 103,  44, 104
	.byte	230,  45, 198,  39, 239,  59,  76,  64, 173,  32, 156,  74, 138, 133,  73, 182
	.byte	208, 100, 202,  61,   5,   1, 220, 177, 205,  74,  62, 124, 178, 136, 222, 113
	.byte	 68, 101, 230,  10, 109,   7, 142, 161,  71, 142,   0,  53, 208,  27, 137, 193
	.byte	175,  16,  24, 147, 138, 233, 104,   8, 216, 144,  72,  96, 234, 152, 118, 135
	.byte	104, 185, 197,   6,  59,  19,  52,   9, 222, 186,  90,  38,  93,  95,  87, 253
	.byte	137, 153,  84,  34,   4, 199, 132, 136, 211,  11,  50, 131,  79, 223, 171, 107
	.byte	 58, 217,   7, 108, 167,  97,  76, 150, 190,  51, 185,  14, 166,  90,  10,  32
	.byte	 32, 140, 228,  31,  12,  67,  77, 217,  87, 195,   5, 150, 156,  87, 129, 120
	.byte	216, 192, 230, 234, 157, 200,  12, 240,  29, 164,   3, 101, 213, 244,  17, 173
	.byte	170, 227, 243, 237, 167,  29, 118,  46, 154, 116, 206,  59, 139, 141,  51,  11
	.byte	208, 164, 236,  15, 173,  19,  77,  51,  87, 249,  32, 180,   2, 176, 109,  24
	.byte	  1,  66, 111,  21,  19,  75, 226, 202, 139, 246, 153,  21, 100, 144, 243,  99
	.byte	212, 192, 116, 146,   4, 179,   1, 146, 129,  76, 253, 154, 127, 249,  59, 220
	.byte	151,  60,  38, 142, 162, 226, 101,   6,  50, 151, 192, 119, 157, 135,  68, 197
	.byte	228, 177, 142,  28, 224, 206,  90, 141, 114,  63, 157,  36,  26, 183, 249, 149
	.byte	 69,  29, 175,  99, 147, 201, 249,  72, 137, 176, 208, 122,  49,  98, 250,   6
	.byte	220, 201,  19,  97, 133,   6,  26, 187, 151,  66, 228,  58, 170, 111,  85, 134
	.byte	 37,  94, 178, 128, 241, 236,  65, 232,  64,  60, 218, 173,  25,  34, 218, 212
	.byte	250,  27,  70, 134, 176,  83, 174, 139,  36, 131,  71,  83,  73, 120,  57,  77
	.byte	 92, 233,  88, 214, 199,  58, 103, 122,  77,  75,  73,  96, 185,  26, 104, 178
	.byte	 62, 239, 168, 133, 152,  75,  72, 213, 137, 158, 209, 146, 214,  59,  39, 185
	.byte	112, 155,  18, 236,   3,  46, 136, 154,   0, 141, 153, 142,   9, 228,  89, 105
	.byte	 74,  44, 176, 227, 216, 216,  47, 208,  46, 231,  38,  24, 205, 145, 173, 195
	.byte	239, 180, 116, 234, 137, 151, 177,  67,  62,  37, 178, 227,  96, 159,  83, 210
	.byte	 66, 217, 241,   3, 192, 150, 147, 181, 220, 225, 168,  81, 150, 103,  75, 190
	.byte	 42, 169,  51,  46, 117,  88, 189, 220,  87,  77,  18,  30, 136, 101,  61, 189
	.byte	206,  94, 255, 253,  28, 118, 119,  92, 193, 143, 228,  61, 140, 130,  21, 153
	.byte	 19,  18, 191,  91,  92, 141, 231,   4, 110,   7,  79, 251,  38, 233,  44, 179
	.byte	112,  66,  17, 213, 129, 118,  58,  63,  53, 174, 176,  70, 164,  85, 173, 108
	.byte	 15,  53,  93, 237, 169,  58, 213, 159,  93, 162,  74, 125,  13,  29,  57,  93
	.byte	 62,  79, 170,  16,  40, 248,  36, 131, 244,  75, 190, 101, 238, 227, 217, 176
	.byte	129, 144, 146,  26, 200, 131,  96, 111,  55,  69,  35, 170,  78, 150,  14, 219
	.byte	 28, 198, 238,  92, 215, 208, 235, 108, 244, 121,  96,  44,  82, 126, 189,  39
	.byte	204, 146, 196,  83,  62, 117, 133,  20, 128,  47, 230,  65,  85, 168, 175,  62
	.byte	178,  19, 102,  20, 251,  34, 227, 195, 249,  54, 187, 157,  90,  45, 117, 168
	.byte	183, 172, 106,  16, 203,  80,  60,  15,  33, 249, 150, 202, 146,  99,  55,  57
	.byte	162,  86, 126, 156, 231,  22, 105, 194,  60,  27, 221,  20, 114, 164,  92,  88
	.byte	148,  96,   0, 225, 129, 239, 221,   1,  75,  53, 183, 154, 254, 110,  31, 184
	.byte	146, 236, 204, 183, 123,  51, 209, 104, 100, 202, 242,  67,  79, 237, 193,  18
	.byte	125,  18, 104, 222,   5, 158, 163, 168, 150, 160,  94, 237, 214, 106,  43, 107
	.byte	128, 177,  30, 154,   9, 100,  23,  57, 194, 153,  86,  86,   2, 130,  96,  15
	.byte	 21, 206, 128, 205,  92, 121,  30, 142,  14, 218, 222,  96, 136, 241, 226,  79
	.byte	234, 182, 156, 189, 161,  24,  91,  92, 243, 114, 111, 238, 147, 227, 107, 105
	.byte	244, 188, 145,  41, 205, 108,   9,  18, 120, 166, 193, 229, 154,  35, 228,  94
	.byte	 38, 117, 241, 219, 156, 208, 186,  57,  81, 213,  99, 139,  97,  17, 144,  64
	.byte	  7, 148, 242, 145,  70,  86, 251, 113, 140,  15, 227, 156, 253, 105, 213, 124
	.byte	  2, 248, 128, 159,  68,  53, 239, 152, 242,  35, 155,  43, 140,  12, 126,  83
	.byte	158,  33, 250, 231, 220,  77, 121, 162, 234,  72,  87, 114, 112, 101, 192,  98
	.byte	 52, 168, 151, 166, 146, 244, 225, 145, 161,  31,   5, 213,  40,  45,  26, 122
	.byte	 23, 103,  75,  49, 158,  31,  64, 130,  54,   1,  30, 161, 202, 217, 104,  88
	.byte	  6, 101,  40, 145, 113, 215, 158, 203, 229,  22, 241, 103,  75, 102,  90,  62
	.byte	239, 248, 254, 197,  70, 235, 102,  62, 119, 189,  97,  93,  22, 101, 210,  23
	.byte	 22, 203,  97, 148, 161,  32, 185,  29,   9,  39, 216,  57,  69,  50, 211,  39
	.byte	107,  36,  73, 198, 114,  78,  23, 108, 252, 163,  79,   9, 108, 222,  64, 168
	.byte	224, 242, 251,  61, 155, 143,  38, 229, 143, 124, 205, 254, 183,  14,  44, 103
	.byte	 68, 204, 176,  41, 162,  16, 253,  50,  66,  39, 183,  41, 200, 208, 184, 192
	.byte	252,  51,  67,  62,  65, 195,  75,  27,  18, 224,  62, 210, 189, 177, 115,  83
	.byte	252,  49, 184,   2,   3, 166, 235, 186,  63, 187, 128,   5,  86, 131, 129, 148
	.byte	136,  60, 116,  59, 205,  81,  92, 130,  64, 204, 177, 211, 233, 164,  46, 138
	.byte	143,   7,  64, 192, 225, 164,  76,  57,  22, 244, 218,  77, 223, 242, 111,  99
	.byte	230,  51,   6,  32, 239, 242, 186, 108,  49, 127, 183, 218, 216, 141, 233, 192
	.byte	145, 179,  84, 128, 113, 176, 216, 162,  14, 134,  19,  24, 160,   4, 222, 218
	.byte	244, 109, 229,  46, 196, 115,  16, 218,  48, 177, 184, 202, 131,  17, 207, 173
	.byte	237, 127,  67, 185, 151, 127, 185,  68, 129,  67,  91, 139,  72,  76,   2, 180
	.byte	 84,  51, 212,   6,  32,   9, 200,  65,   5, 140,  24, 190,  31,  50,  53, 237
	.byte	 61, 175,  50, 186, 138,  24, 216, 121, 127, 105,  39,  50, 120,  97,  48, 243
	.byte	178, 207,  96,  63, 233,  60, 140, 228, 201, 203, 123, 131, 136,   7,  54, 125
	.byte	197,  77, 127, 100,  11, 181, 178,   4,  33, 249,  88,  32, 129,  21, 148, 252
	.byte	 24,  32, 129, 129,  73,  17,  80,  26,  84,  38,  84, 146, 138, 151, 156, 197
	.byte	148, 198,  52, 201,  11, 205, 125,  97,   2, 155, 206, 216, 156,  80,  44, 218
	.byte	 78,  48,   7,  68,  30,  49,  48, 228, 187,  36,  87, 109, 173, 122,   7, 103
	.byte	 76,  13,  97,  14, 230, 139, 151,  15,  85, 220, 154, 110, 181,  93, 234, 246
	.byte	 58,  35,  90,  92, 174,  10, 174, 223, 162,  38,  22, 252,  68, 179, 144,  91
	.byte	 70,  83,   5, 125,  46, 175,   4, 230,  32, 253,  62,  49, 201,   2, 120, 245
	.byte	 98,  57, 104, 205,  76,  50,  65, 101, 220, 167,  32,  75, 135, 131,  83, 144
	.byte	141,  73, 236, 216, 172,  37,  26, 245,  60,  86,  68,  58, 128,  75, 158,  46
	.byte	104, 222, 243, 235, 241, 204, 125,  40,  43,  26,  28,  91, 140, 146, 122, 253
	.byte	176,  15,  75,  93, 225,  87,  67, 129, 127, 247,  63, 189,   3, 104, 156,  26
	.byte	148, 219,  86,  86, 150,  73,  45,  18, 215,  27,  61,  98, 196, 120,  76, 135
	.byte	 60, 235,  58,  87, 208, 206,  12, 243, 184,   5,  79,  36,  98,  37,  14, 255
	.byte	 52, 216, 103,  71, 254,  91,   6, 157, 234, 213, 208,  65, 225, 247, 112,  13
	.byte	206,  62,  28, 156, 195,  99, 114,  80, 247,  79, 197,  49, 188, 172,  29,   7
	.byte	  0, 228, 253, 144,  32,  32,  29,   1, 119, 186,  27, 117, 235, 243, 213, 141
	.byte	 36, 254, 122, 214, 246,   3,  36, 110, 154, 133, 229, 236,  54, 245,  27,  47
	.byte	180, 103,  75,  74,  96, 102, 198, 201,  11, 199,  26,  74, 107, 194, 208, 224
	.byte	212,   7, 208, 118,  91, 223,  90,  58,  78, 246, 144,  69, 212,  79,  51, 202
	.byte	190,  78,  56, 224, 110, 198, 243,  85,  22,  26,  76, 226,  18,  91, 203, 119
	.byte	214, 237, 228, 110, 197,  16, 141, 231, 240,  60, 190, 130,  19,  16,  38, 151
	.byte	106,  83,  11, 105, 133,  37, 206,  71,  58, 166, 229,  72,  92,  57,  63,  26
	.byte	 40,  20,  29,  34, 119, 252, 157, 164,  10, 117, 164, 106, 255,  52, 214, 220
	.byte	150, 136,  95,  84, 211, 157,  23, 205, 210, 145,  19,  71, 176,  72, 129, 195
	.byte	 41, 226, 104, 168, 194, 117, 254, 203, 195,   7,  77, 118,  52, 159, 254,  79
	.byte	178, 177, 151,  65,   4, 252, 177, 115, 245, 201,  99, 118, 141, 141,  55, 197
	.byte	187, 119, 221, 130,  30, 250,  53, 225, 108, 238,  16, 243, 158, 128,  77,  34
	.byte	166, 231,  48, 249, 139, 110,  52, 180, 116, 170, 140,  45, 103, 230, 189, 143
	.byte	 92, 218,  44,  65, 176, 154, 210, 191, 250,  80, 139, 173, 143, 220,  75,  41
	.byte	184,  21,  75,  89,  31, 248,  40,  86,  76,  67,   3, 225, 202, 168,  41, 183
	.byte	 97,  34,  16,  72, 244,  67,  44, 228, 114, 251, 214, 195,  66, 212,  11, 206
	.byte	 32, 177, 113,  16, 200,  69, 216, 226, 248,  94,  47, 156,  42,  83, 219,  20
	.byte	181, 186,   9, 206,  17, 220, 237, 144, 105, 224, 158,  89, 232,  31, 199,  97
	.byte	186, 142, 132,  91, 175, 232, 144, 235, 105,  64, 175, 171, 132, 232, 176, 193
	.byte	218,  98, 143, 133, 214, 120,  29, 144,  50, 146, 208,  80, 211, 150,  81, 156
	.byte	 88, 164, 154, 123, 157,  27, 255,  40,  75, 106, 110,  26, 104, 135,  14, 101
	.byte	129,  16, 237, 220, 189, 106, 149, 243, 160,  84, 245, 185, 219,  91, 143,  21
	.byte	176, 179,  48, 175,  34, 225,  65, 155, 169, 188, 243,  48, 124, 201,  82, 234
	.byte	  8,  80, 111, 246, 215, 197, 200, 149, 154, 162,  77, 234,  87,  43, 154, 185
	.byte	 58, 115,  92,  71,  79, 249,   3, 122,  19,  49, 156,  85,  69,  14,  39, 133
	.byte	219, 148, 243,  16,   5,  93,  11, 240, 105, 143, 153,  26, 183, 179,  49,  45
	.byte	204, 240, 201, 214, 160, 127, 156,  73, 225, 212, 223, 199, 100, 227, 246, 232
	.byte	 39,  28, 153, 247, 225,   5, 132, 109, 255,  81, 109,  98,  65, 182,  83,  92
	.byte	120,  14,  61, 132,  64, 192, 198,  96, 102,  22,   4,   9,  28, 207,  14, 221
	.byte	243, 179,  43, 223,  40,  22, 124, 254, 165, 176, 236, 172,  25, 248,  54, 237
	.byte	 28,  75, 226, 181,  48, 136, 181, 151,  10,  84, 168,  71, 154,  11, 181,  50
	.byte	254, 251, 254, 102, 229,  77, 180, 118,  96, 225, 241, 183,  11,  79, 203, 205
	.byte	 38, 150,  11, 172,   1,  33, 242, 181, 231, 122, 189,  65, 163, 188, 113, 233
	.byte	202, 220,  73, 140,  37,  86, 224,  20, 143,  36, 247, 152, 124,  18, 200, 104
	.byte	 34, 180,  39, 168,  48,  40, 155, 165, 103, 249,  65, 222, 221,  56, 168,  71
	.byte	110,  66, 122, 204,  64, 237,  97,  75, 111,  30, 235,  28,  29,  87,  78, 129
	.byte	146, 211,  95,  83,  54, 240, 107, 144,  66, 149, 147, 108, 182,  39,  66, 150
	.byte	151, 110,  63,  85, 181,  72, 219,  19,  30, 204, 174,  73, 168, 106,   0, 232
	.byte	 30,   8, 125, 170, 173, 239,  40, 213, 174, 205,  46,  44,  51,  92, 166, 243
	.byte	  7,  41,  51, 205,  76,  37, 146,  71, 121, 129, 208,  86, 246, 150,  52, 226
	.byte	120, 106,  45, 244, 185,  20, 153,  68, 168, 174, 161, 156, 115,   6,  38,  22
	.byte	152,  99,  55,  67,  26,  10,  29,   8, 147, 187, 170, 206,  82, 226, 185,  29
	.byte	 94, 198,   0, 142, 162,  18, 177, 168,  60, 194, 234, 251, 138, 251, 243, 254
	.byte	241, 139, 115,  40,  94, 115,  28,   6, 197, 163,  98, 157, 143, 227, 169, 199
	.byte	 34,  79, 206, 204,  87,  92,  17, 161, 121,  37, 101, 174,  69, 100, 170, 181
	.byte	164,  62, 143,  12,  69, 154,  41,  99,  21, 156,  95,  96, 110, 199, 247, 179
	.byte	 76, 211, 216,  23,  28, 154,  27,  17,  52,   1, 212, 243,  38,  42, 148,  62
	.byte	 60,   4, 190,  14, 233, 252, 101,  13, 136,  31,  83,  65,  25,  32, 150,  68
	.byte	240,  13, 201,  84, 150, 145,  22, 116, 122, 241, 134, 251,  19, 129, 194, 222
	.byte	115,   6,  50, 135,  28, 122,  83, 138,  11, 130, 199, 210,  18, 122, 158,  34
	.byte	196, 167, 129, 215, 200, 136, 106,  16, 171,  39,  60, 199,  90,  80,  46, 223
	.byte	100, 197,  50,  43,  54, 148,  16,  37, 151,  76,   1,   8, 249, 161, 124, 251
	.byte	 92,  72, 212,  82, 215, 151, 241, 153,  33, 169,  76, 221, 147,   7, 180,  91
	.byte	150,  62,  42, 233, 221, 125, 140, 155, 177, 181, 211, 109,  50, 230, 255,  29
	.byte	248,  28, 161,   0,  56,  21, 174, 166, 136,  96, 232,  32,  87, 122,  58,  14
	.byte	247,  41, 157, 110,  61,  41,  61, 201, 239, 231, 204, 183,  10, 139, 229,   6
	.byte	 10, 188, 158, 223,  92, 186,  59, 124, 198, 214, 107,  95,  31, 188, 109, 111
	.byte	159, 175, 214, 207,  47, 170,  24, 118, 166, 118, 207, 122,  90, 112, 130, 194
	.byte	150,  25, 248, 134,  46, 153, 209,  67,  20, 231,  13,  69,  74,  85,  15, 191
	.byte	  8, 136,  33,  64, 237,  25, 219,  59, 174, 158, 214,  67,  27, 134, 245, 225
	.byte	244, 117,  46,  79,  59,  24, 155, 246, 241, 110, 145, 235,   7, 163,  17, 120
	.byte	 74, 195, 230, 172, 245, 212,  86, 109, 115, 142, 142, 252,  92, 129, 191, 144
	.byte	116, 169,  84, 191,  61,  61, 145, 197, 146, 249,  78, 225,  33, 160,  69,  91
	.byte	227, 249,  98,  39, 102,  29,  64, 114, 156,  43,  29,   6, 172, 242,  33,  65
	.byte	 70,   6, 213, 201,  56,  72, 139, 252, 200,  84, 100, 242, 201, 140, 200,  31
	.byte	 77, 204, 161,  98,   7, 155, 146, 188,  96,   4, 139,   9,  45, 111, 178, 151
	.byte	 66,  96,  49,  15, 153, 164, 186, 107,  58,  91,  64, 140, 240, 118, 160, 125
	.byte	 66, 124,  17, 113, 224,   1, 249,  93, 186,  33, 248, 173, 101, 101,  32,  29
	.byte	242, 192,  81, 230, 188,  71, 211, 243,  62,  67, 232, 147, 179, 108, 234, 118
	.byte	 35, 213, 140, 142, 112, 180,  35,  57, 124, 204,  54, 112,  96, 142, 112, 139
	.byte	192, 201,  86, 119, 148, 252,  58, 179,  90,  76,   8, 147,  54,   3, 120,  40
	.byte	179, 243, 209,  22,   0, 183, 121,  42, 103, 102, 120, 244,  77, 157,   2, 206
	.byte	248, 131, 116, 182, 190, 176, 135,  59, 211, 241, 233, 201,  43,  81, 121,  47
	.byte	236, 242, 215, 251,  80, 226, 132, 109,  93,   4,  92, 237,  96,   5,  65,  95
	.byte	134, 188, 100,  45,  96, 248, 223, 164,  54, 135, 139, 186,  22,  64, 108,  65
	.byte	151,  27, 222, 150, 183, 147, 109, 188, 200, 223,  49, 221, 205, 134, 221, 117
	.byte	188, 102, 120,   4, 186,  65,  90,  18, 156,   3, 234, 228, 203,  70, 225, 189
	.byte	 75, 218, 199,  76, 175, 245,  69, 131, 233, 146, 204,  95, 213, 202, 235,  47
	.byte	 56,  11,  77, 202, 141, 224, 158, 176,  62, 122, 170, 175, 222,  38,  59,  21
	.byte	156, 187, 251, 177, 135, 109,  58,  85,  64,  81,  35, 120, 185, 110,  22, 118
	.byte	246, 205,  35,  60, 110, 183,  67, 238, 194, 203, 115,  47, 165,  34,  58,  91
	.byte	 46, 229, 107, 109,  65, 116, 223, 232, 249, 110, 219, 169,  22,  43, 156, 107
	.byte	 68, 254, 170,  96, 190,  86,  18, 250, 141, 180, 146, 110, 240, 232, 116, 240
	.byte	 56,   6, 236,  92,  75, 217, 187, 245,  81,   1, 177, 164,  87, 245, 252,   9
	.byte	120,  33,  45, 223,  95, 141, 217,  56,  35,   5,   7,  55, 246, 209, 147,  39
	.byte	113, 244,  41,  53, 154, 254,  66, 246, 187,   9, 107,  45,  69,  12, 243, 154
	.byte	148, 144,   9, 254,  94, 183, 166, 239,   3,  45, 203,  37, 103,  12, 203, 154
	.byte	147,  30, 112, 183,  43,  12, 197, 227,  50, 115, 239, 129,  39,  63, 185,  37
	.byte	 86,   9, 137,  53, 199, 117,  27, 230, 207, 102, 160, 164, 200,  20,  54,  44
	.byte	237,  45,  44, 127, 234,  59, 234, 146, 120, 247, 121, 234,  34,  54,  42,  22
	.byte	 54,  71, 220, 103, 195, 223, 186, 222,  43,  73, 255, 106, 223, 165,  95,  95
	.byte	  9, 196, 238,  44,  90, 175, 111, 164, 189,  63, 134,  20, 223, 225,  96, 159
	.byte	178, 147, 127, 242,  52, 204, 134, 167, 239,  29, 241, 203, 228,  38, 240,  59
	.byte	 45, 141, 118,   2,   5, 142, 208, 208, 128, 180,  27, 147, 214, 184, 120, 245
	.byte	134,  82, 123,   8, 160, 249, 141,  80, 151, 111,  39,  92,  18, 133,  47, 250
	.byte	 60, 140, 215,  41, 217, 180,  17, 124, 141, 236, 208,  26, 135, 117,  67, 209
	.byte	 50,  56, 116, 165,  54,  12,  85, 140, 150,  54, 192, 235,   9, 167,   1,  25
	.byte	 64, 241, 167, 119, 159, 162,  74,  72, 209, 135, 225,   7,  30, 101,  26,  32
	.byte	158,   5, 187, 123, 173, 113, 112,  32, 215,  28,  43,  10,   3, 228,  40, 171
	.byte	250, 156, 192,   4, 188, 211,   9, 108, 215, 174,  61, 167, 157, 104,  39, 121
	.byte	172, 243, 143, 226, 175,  47, 245,  69, 130, 159, 148,   2, 123, 156, 149, 124
	.byte	130,  80,   0,  68, 179, 240, 236, 228,  69, 148,  25,  14, 134, 132,  41, 240
	.byte	212, 240,  27,  10, 124,  85,  66,  12, 225, 253,  65, 223,  19, 174,  66, 119
	.byte	 72, 206,  59, 233, 163, 212,   3, 203, 201,  46, 180,  64, 156, 115, 186,  66
	.byte	172, 179, 188, 233, 186,  87, 244, 196, 222, 190, 134, 135,  48, 194, 155, 147
	.byte	164, 111, 205,  83, 202, 100, 217, 163, 152,  68,  98, 174, 146,  94, 244,  96
	.byte	 32,  84, 238, 146, 100,  87,  15,  34, 148,  93, 154, 213,  22, 153,  85,  72
	.byte	 84,  14,  65,  90, 189, 151, 140, 175, 177, 178, 235, 108, 105, 146,  14,  63
	.byte	 92, 137,  24, 124, 229, 162, 142,  87,  11,  34, 224,  53, 190,   2, 163, 111
	.byte	227, 104,  25,  50, 121,  17,  60,  72, 167,  57, 119, 138,  98,  34, 186,  53
	.byte	 72, 234, 162, 239, 254,  65, 213, 225, 169,  91,  49,  57, 250, 135, 190, 254
	.byte	230,  41,  82,  39, 236, 212, 195,  84, 120, 101,  62, 107, 167, 135, 237, 170
	.byte	 10, 117, 150,  94, 144,   9, 247,  66, 119,  70,  28, 207, 100,  70, 142,   9
	.byte	149,  12, 165, 113, 112,  25, 200, 125,   0,  90, 244, 126, 162,  39, 165, 228
	.byte	136, 166,  68, 135, 166, 159, 192, 126, 212,  78,  24, 121, 139,  27, 129,  23
	.byte	131, 126,  78,  15,  42,  81,  31, 157, 226,   0, 221,  11, 179, 137,  40,  21
	.byte	198, 226,  70,  70, 125, 151,  76, 144, 163, 117, 248,  90, 127,  54, 247, 233
	.byte	210, 242, 123,  97, 239, 151, 164, 249, 146,  62, 228, 114,  70,  50,  35, 244
	.byte	146,  92, 246,  36, 184, 102,  27,  12, 195,  75, 115, 227, 176, 112, 218,  63
	.byte	149, 235, 200, 108,  67,  81,  19, 102, 210, 195, 147, 188, 158, 215,   4,  89
	.byte	144, 125, 200,  34,  36, 140, 100,  98, 161,  98,  89,  16,  66, 228, 213, 234
	.byte	111, 175,  34,  64,   4,  52, 212,  72,  61,  62, 184, 240,  35, 207,  57, 155
	.byte	  0, 122,  12, 184, 146, 210, 152, 177, 180, 237, 156, 103, 115, 145, 139, 168
	.byte	112,   7, 125,  44,  92,  17, 119, 166, 174,  58,  55,  19,   1, 237, 187,  87
	.byte	 28,  40, 238,  10,  18, 248, 146, 200,  37,  19, 118,  79,  17,  80, 230,   7
	.byte	139, 159, 190,  92,  44, 204,  13, 217, 145,  17, 238,  23,  82, 175,  77, 209
	.byte	186, 214,  98, 252, 228, 171, 128, 162, 172, 164,  17, 243,  27, 240, 236,  40
	.byte	114,  31, 237, 100,  43, 107, 217,  64, 124,  44, 108, 141, 240,  82, 206, 191
	.byte	 90,   9,  35,  97, 186, 187,  47, 215, 202, 203,  12,   3,  56,  17,  39, 103
	.byte	194, 126,  84,  33, 189, 224, 125, 222,  10,  36, 192, 148, 107,  98,  34,  65
	.byte	194,  25,  80, 172, 238, 219,  76,  56, 212,  98, 211, 246, 175,  24, 120,  89
	.byte	100, 143, 110, 245, 102,  28, 244, 204, 136, 220, 160,  37, 164,  44, 228,  16
	.byte	138, 114, 138, 210,  30,  31, 139, 215, 136, 100, 237,  29,  63, 224, 250, 174
	.byte	 87,  16, 209, 249,  40, 197,  70, 227, 185, 185, 217,  58, 129, 186, 158, 185
	.byte	 24, 239,  93, 242,  96,  30, 248, 175,  10,  15, 178, 108, 205, 117, 197, 101
	.byte	 38,   8,  22, 184,  62,  90, 153, 105,  13,  40,  51, 211,  85,  99, 139, 171
	.byte	 20, 199,  55, 175,  94,  78, 181, 182, 104, 136,  11,  93,  61, 196,   2, 235
	.byte	 38, 162, 112,  31,   1, 130, 206, 238, 125, 171,  84,  49, 141,  73,  88, 216
	.byte	 20, 150, 250, 240,  58, 115, 155, 221, 155,   1, 158, 138,   4, 171,  13,  78
	.byte	159,  92, 192,  31,  27,  37,  29, 204,  19, 235,  60, 117, 136,  13,  55, 188
	.byte	118, 225,  84, 225,  39,  17, 139, 201,  40, 220,  51, 226, 186,  56,  46,  23
	.byte	 71, 146, 120, 137,  19,  49,  52, 148, 143, 129, 157, 240,  50, 175, 223, 235
	.byte	112, 185, 169, 169, 212,  25, 241, 109, 185, 130, 116,  85, 247, 170, 194, 184
	.byte	145,  40, 199,  45,  48,   7, 223, 143, 233, 146,  23, 214, 204, 190, 200,  30
	.byte	 56, 190,  34, 141, 131,  65, 232, 181,  37,  43, 126, 121, 186,  32, 104, 173
	.byte	 77, 249,  78,  56,  35, 232, 180, 134, 215,  17,  60, 235, 135,  57, 225, 222
	.byte	128, 192,  76, 138, 230, 187,   3,  66,  24,  96, 136, 161,  82, 113, 173, 140
	.byte	 72, 226, 138, 254,  40, 121,   3, 150, 147,  99, 101, 243,  68, 247, 138, 247
	.byte	168,  41, 164, 222,   9, 181, 101, 160,  64, 151, 199, 149,  25,  93, 156, 143
	.byte	213, 141,  61, 189, 229, 159, 121, 166, 255, 249,   1, 132, 229, 182, 218, 193
	.byte	244, 165,  57,  79,  12, 121, 250,  61,  75, 143, 181, 166, 135, 228,  30,  66
	.byte	207,  37,   0, 180, 160, 128, 130,  66, 201,  11, 168, 186, 218, 232,  45,  82
	.byte	146,  72, 239, 166, 226, 156, 192,  86, 142, 108, 167,  52, 103, 194,  86, 170
	.byte	235, 180, 227, 180, 201, 222, 128,  86,   3, 254, 161, 205,  27, 197,  16,  15
	.byte	192, 204, 249, 145, 120, 136, 254,  72, 252, 225, 197, 205, 182, 163, 179, 158
	.byte	154,  55,  81,  55,  75,  46, 105, 255, 100, 149, 133,  24, 204,  97, 149, 151
	.byte	 32,  74,  81, 240,  55,  82, 115,  75, 105, 243,  50, 211, 110,  20, 244, 101
	.byte	  2,  67, 141, 230, 139, 234, 102,   9, 147, 108, 209, 153,   3,  56, 216, 118
	.byte	200, 186, 251, 121,  90,  80, 252, 147, 237, 100, 178,  84, 116,  49, 238,  33
	.byte	115, 112, 116, 104,  92, 102,  57,  96, 135, 164,  32, 146, 170, 244, 167, 210
	.byte	126, 224,  11, 106,  80, 126, 178,  14,  22, 202, 150, 158,  85, 246,  52,  82
	.byte	  5, 246, 142, 137, 170, 177,  28, 179,  25, 116, 221,   1,  66,  55, 170, 219
	.byte	 82, 190,  15, 205, 163, 108, 240, 171,  50, 223,  54,  80,  32, 168,  10,  19
	.byte	 22, 133, 163, 144, 253,  81, 117, 255, 115, 221,  10, 138, 119, 126,  18, 216
	.byte	 86, 212, 103, 220, 101, 120, 191, 105, 251, 169, 187, 228,  13, 153,  51, 169
	.byte	204, 113,  46,   3, 148, 129,  56,  97,  73, 146,  76, 225, 180, 161, 125,  61
	.byte	 72,  31, 239, 242,   6,  35, 117, 128,  72,  27, 235,  58,  19, 160, 220, 224
	.byte	 79,  12, 184, 215,  56, 166,  60, 140, 103,   0,  48, 150, 222,   1, 243, 208
	.byte	 20, 232, 219, 201, 187, 130, 201, 157, 187, 218, 165, 135, 253, 216, 230, 252
	.byte	175,  11,  80,  98,  71, 186, 205, 134,  24, 148,  18,  77,  71, 229, 213,  70
	.byte	106, 226, 221,  84, 205, 255,  24, 146, 213, 142, 166,  71, 215,  16, 198, 214
	.byte	222,   4,  34, 175,  43,  34,  41, 212, 168,  56, 155, 159,  21, 160,  83, 186
	.byte	 54, 107, 107, 253, 100, 112, 159,  75, 238, 130,  16, 215,  53, 106, 107, 241
	.byte	 48,  41, 180, 158,  36,  58,  76, 161,  77, 209, 176, 232, 149, 179, 142,  86
	.byte	162, 180, 247, 138, 216,  43,  95,  59, 163, 215,  21, 192, 138, 153,  44, 243
	.byte	211, 242, 226,  33, 246, 239, 205,  46, 232, 108,  93, 247,  61, 249,  51,  11
	.byte	208, 165, 102, 134, 237, 153, 248, 254,  34,  38,  48, 114,  23, 189, 212, 238
	.byte	 93, 229, 193, 139, 185, 197, 103, 252,  75, 147,   0,  25, 239,  15, 251,   5
	.byte	 28,  30,  20,  76,  55, 243, 210, 234,  80, 254, 123, 205,  53, 204, 229,  80
	.byte	 99, 118,  25,  39,  38,  87, 104,  95,  76, 218,   2, 161,  21, 255,  33, 203
	.byte	 34, 230, 105, 249,  58,  16, 246, 231, 230,  71, 121, 193,  31,  87, 198,  98
	.byte	154, 115,  90,  67,  21,  23, 225,   4,  38,  29,  23, 121, 184,  43,  23, 240
	.byte	240, 206, 204, 219,   7, 139, 138,  37,  20,  38, 102, 123, 100, 115,  44, 210
	.byte	146, 219,  51,  24, 216,  85,  80, 233, 239, 194, 253,  20, 153,  21, 233,  81
	.byte	 20, 233,  58, 190, 154,  73,  55, 207,  59, 114,  95,  92, 253,  87,  90, 190
	.byte	 11,  47, 121,  42, 223, 197,  95, 249, 197,  15,  11, 242, 185, 218,   2, 203
	.byte	 20, 161,  33,  97,  33,  44,  12,  39, 140, 219, 110, 247,  54,  92, 249, 154
	.byte	 98,  47, 172, 227,  72,  40,  66,  87, 180,  62, 167, 199, 181,  54, 241, 178
	.byte	192, 144, 216, 223, 138,  65, 137,  57, 176, 183,  47,  75,  86,  90, 192, 222
	.byte	 70,  18,  87,  15, 197, 160, 214, 176, 181, 178, 248,  41, 160,   0, 174, 230
	.byte	  0, 154, 205, 100,  99,  12, 212,  25, 108,   9, 177, 204,  21, 225, 206, 253
	.byte	255, 233,   9, 192, 176,  14, 235,  23,  34, 100,  91, 135, 128,  96, 110, 143
	.byte	214,  16, 182, 134, 111, 253, 243, 199, 199, 219,  86,  61, 235, 182, 204, 119
	.byte	106, 141, 224, 170,  54, 104,  12,  55, 203,  97, 217,  13, 116,   8, 222, 203
	.byte	 40, 132,  19, 147,  79, 236, 110, 232,  99, 140, 188, 207, 221, 224, 124, 134
	.byte	 71,  88, 193, 112, 186, 176,   6,  22, 209, 143,   0, 198,  80, 162,  20, 149
	.byte	108,  57, 140, 130, 158, 229, 125, 237,  21,  98,  24,  27, 155, 153, 247, 134
	.byte	 70, 191, 151, 159,  92, 210,  98, 248,  65, 191, 132, 110,  28, 138, 106,   6
	.byte	 36,  88, 131,   2, 177, 205, 246, 100,  74, 225, 159, 157, 195, 180,  55, 233
	.byte	232, 253,  44, 117,  85,  98, 100,  19,  78, 248,  36,  15, 230,  28, 186,  68
	.byte	212, 240, 123, 223,  62, 109,  27,  46,  79,  10, 176,  47,  77,  50, 104,  31
	.byte	207,  77,  99, 118, 176, 112,  72,  24, 242, 141, 238, 169, 127, 219, 143,   2
	.byte	 84, 151,  93, 164, 176,  49, 151,  87, 112,  80, 212, 220, 135, 208, 168,   9
	.byte	 52,   3, 214,  55, 239, 132,  33, 174, 231, 155, 205, 247, 147, 253, 159, 193
	.byte	142,  58,   9, 202,  93, 136, 200, 201, 163,  88, 111,  81, 229,  74,  82, 208
	.byte	139, 227,  12, 244,  84, 182,  97, 209,  12, 116, 227, 107, 153,  32, 178, 140
	.byte	 26, 129, 126,  13,  14, 104, 119,  37,  32, 246, 210, 132, 103, 232,  82, 151
	.byte	186,   8,  46,   1, 186, 213, 234, 191, 121, 124, 160, 126,  47, 218, 130,  61
	.byte	 94, 160,  34, 150,   9, 195, 152, 155, 101, 106, 128, 252,  52,   2, 231, 152
	.byte	 25,  34,   7,  10, 224,   3, 147, 195,  95, 210, 233, 132,  53, 249,  86, 234
	.byte	248, 208, 239, 254, 200, 162, 129, 218, 240,  76,  17,  97,  18, 185,  10,  47
	.byte	 70,  51,  52,  82,   4,  97,  97, 187,  58, 105, 152, 220,  25, 146,  42, 218
	.byte	212, 123, 207, 103, 175,   8, 100,  65,  96, 234, 111, 180, 174, 106,  80, 192
	.byte	249, 194, 244, 146,  39,  95, 249, 223, 240, 100,  75,  62, 220,  73,  15, 202
	.byte	 26, 135,  48, 121,  72,  30, 112,   8, 135, 198, 139,   4,  47, 181, 204, 171
	.byte	 84,  84, 188, 217, 135, 100, 241,  19, 106,   4, 132, 140,  71, 144,  87, 228
	.byte	204,  72, 182, 184, 186, 253, 174,  63, 185, 248, 105,  91, 118, 228, 129, 179
	.byte	109,  24, 155, 252, 163,  81, 106,  87,  51, 101,  90,  52, 124, 228, 113, 183
	.byte	 50, 194, 114, 249, 232,  59,  57, 108,  53,  21,  86, 157, 120, 122, 248, 163
	.byte	250,  49,  77,  27, 160,  32, 252, 127, 174, 126, 188, 130, 198, 188, 253,  27
	.byte	156, 108,  77,  53, 253, 125, 218,  35, 247,  82, 147, 208, 137,  56, 179,  14
	.byte	 84,  25, 148, 255, 145, 243,  82, 200, 195, 102,  43,  82, 241, 216,  47, 194
	.byte	 36, 215,  77, 138, 156, 101,  36, 191,  77, 222, 158,  87, 254, 239,  32,   2
	.byte	148,  48,  48,  56, 111, 188, 248, 249, 211, 207,  20, 224, 208, 104,  35,  14
	.byte	170, 234, 215,  63,  54,  96, 170,  51, 217, 209, 154,   9, 250,  44, 127, 226
	.byte	 16, 101, 254, 209,  14,  65, 106, 147, 187,  98,  46, 196,  79, 253,  19, 162
	.byte	134,  94,  32,  22, 229, 154, 188, 227, 118, 255,  42,  74, 195, 125,  75, 128
	.byte	189, 189, 243, 129, 200, 239,  47,  84, 200,  33, 218, 110,  39, 167, 114,  86
	.byte	128,  23, 143, 216, 248, 196,  86,  24, 125, 160, 191, 175, 175,  36, 129, 143
	.byte	146, 125, 139,  27,  27, 177,  11,  19, 109,  90,  35, 212, 208, 244, 217, 175
	.byte	 88, 147, 184,  71,  62,  47,  23,  99, 222, 214, 248,  30,  12,  49, 255,  73
	.byte	109, 220, 238, 178, 196, 255, 160, 234,  95, 175, 195, 235, 108,  97,  65,  52
	.byte	140,  27,  22,  19,  45, 199, 150, 174, 168, 186, 254,  76,  29,   1, 188, 118
	.byte	 48, 146, 116, 166, 193, 116, 140, 185, 135, 215, 171,  44,   1,  40,  67, 250
	.byte	158, 130,  32,  46,  83,  33,  79, 190, 255, 210, 224, 131, 219, 231, 144,   9
	.byte	 81, 121, 142,  75,  61,  24, 153,  27,  89, 244, 154, 126, 108,  28,  79,  91
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122,  43, 121, 237,  79, 253, 171,  52, 163, 136, 195, 140,  38,  40, 237, 105
	.byte	 15,  84, 174,  23, 242, 189,  79, 158, 226, 197, 109, 217, 222,  42, 164, 149
	.byte	204, 127, 184, 180,  31,  66,  63,  26,  14, 179, 220, 162, 241, 117,  74, 228
	.byte	 30, 144, 112,  93, 217, 229, 255, 240,  29, 129,  29,  64,  66,  97, 162,  73
	.byte	162,  48,  49, 205, 133, 216, 118, 116,  14,  67, 109, 121, 182, 144, 185, 170
	.byte	177,  43,  51, 248, 208,  48, 183, 102, 117,  68, 175, 251,   7,  22, 175, 239
	.byte	 12,  59,  46, 187, 119, 135,  32,  75, 234,  98, 113, 145, 115, 211, 139, 200
	.byte	201, 191, 213, 227, 142, 190, 188,  40, 141,  22,   2, 171,  53,   9,   6, 208
	.byte	218, 142,  59, 155,  22,  42,  13,  30, 200, 229, 166,  40,  85,  10, 153, 211
	.byte	211, 139,  69, 188, 156, 122, 166, 122,   2, 208, 215, 238, 225, 124, 119, 129
	.byte	 30,  76, 212, 140, 182, 218, 123,  17, 221,   0,  90,  98, 201, 137, 132, 222
	.byte	  4, 187, 148, 221, 170, 130,  55,  21, 105,   9, 127,  35, 101, 169,   1,   8
	.byte	182, 142,  54,  16, 215, 158, 244,  44, 239,  86,   3, 224, 222,  19,   2, 210
	.byte	133,  87,  58, 164,  37, 200,  55, 179,  67, 212, 193, 220,  57, 208,  74,  76
	.byte	 96, 118, 178, 180, 187, 142, 169, 218,  99,  42, 124, 130, 123, 209, 191,  55
	.byte	182, 144, 123, 120,  47,  62, 111,  85, 193,  25, 107,  97,  64,  86, 110, 245
	.byte	 32,   8, 110, 230, 130,  67, 160, 251,  99,  93,   4, 111,  52,  78, 123,  60
	.byte	 50,  92, 186,  45,  50,  58, 254, 215, 226, 213, 175, 198,  99, 166,  96, 253
	.byte	 30,   7,  36,  23, 208, 239,  12,   0, 120, 191,  96,  49, 176, 140, 225,  67
	.byte	 73,  26,  95, 253, 220, 255, 108, 115,  14,  76, 230,  57, 253,  98, 136, 186
	.byte	104, 171, 147,  11,   4, 245,  59, 142, 167, 212, 149, 139,  25, 106, 127, 126
	.byte	117, 124, 181, 188,  32,   9, 223,  76,  61,  16,  98, 162,  58, 130,   1, 245
	.byte	170,  73, 118,  78,  69, 143, 217, 137, 216, 139, 142, 136, 197, 191,  82, 148
	.byte	220,  80,  72,  72, 178,  77,  35, 221, 179,   2,  66, 105, 159, 220, 116, 175
	.byte	134,  51, 204, 178,  41,  26, 152, 149,  58, 108,  42,  95,  23,  87,  75, 150
	.byte	129,  51,  47, 208,   1, 163, 135,  87,  32, 222,  89, 136, 104,  11, 237,  77
	.byte	194,   8,  59, 138, 124, 138, 245,  46,  79,  65, 214,  93, 228, 120, 249,  96
	.byte	 94,  94,  52, 122, 195,  29, 185, 164,  87, 166,  68,  51, 158,  84, 150, 120
	.byte	 44,  41,  68, 143,  62, 150,  92, 110, 203,  49, 120,  58, 166,  37, 124,  77
	.byte	156, 254, 245, 216,  16,  76, 232, 103, 179,   9, 145, 180,  32,  75,  45, 158
	.byte	202,  96, 237,  42,  66, 223, 237,  17, 153, 204,  62, 150,  29, 182, 150, 234
	.byte	128, 117,  60,   8, 182, 133, 221,  61, 213, 167, 159,  73,  35,   0, 162,  24
	.byte	106, 157,  28,  52, 118, 194,  32, 120, 117,  68, 215, 103,  91,  71,   5, 220
	.byte	 25,  54, 234, 155,  60, 224,  19,  39, 238,  61, 182,  41, 124, 166, 215,  19
	.byte	 14, 165, 242, 186, 216, 221, 200,  85, 182,  96, 178,  85,  66, 128, 191,  63
	.byte	 55,  62, 169, 186,  91, 158, 134,  59, 219, 142,  43,  10,  93,  94, 204,  27
	.byte	110,  83,  95, 145, 217, 113, 236,  52,  61,   2, 215,  76, 196,  47,  41,  49
	.byte	233,  29,  12,  61, 246,  35, 154, 170, 138, 236, 227,  93, 123, 122, 249, 189
	.byte	244, 196, 153, 156, 183, 224,  42,   7,  90,  51, 127,  83, 127, 168,  96, 228
	.byte	173, 245, 221,  77, 178, 200, 237,  36, 144,   7, 242, 105, 115, 113,  16, 250
	.byte	 34, 189, 220,  42, 156,  75, 113, 232,   5, 169, 152, 166,  87,  25,  59,  93
	.byte	219, 153, 148, 200,  51,  43, 148,  21,  54, 180,  72,  13,  58, 128, 115, 132
	.byte	246,  70, 219, 101,  11, 245, 209, 128, 153, 181,  62,  81,  35, 204, 121,   4
	.byte	153, 255,  76, 142,  49,  96, 207,  85, 104,   9, 238, 244, 107,  71, 238,  57
	.byte	164, 103, 123, 200, 171,  99, 220, 244,   9, 180, 194, 201, 172, 181, 118, 195
	.byte	 98,  71, 223,  85, 125, 220, 241, 199,  69,  73, 145,   7, 176, 201,   8, 169
	.byte	 98,  14, 232, 176, 201, 179,  90,  93, 138, 239, 190, 101, 179,  64, 220, 210
	.byte	244, 158,  31, 172,  47, 246,  26, 183,  34, 223, 150, 236, 229,  25, 166,  36
	.byte	184,  19,  28,  60,  92, 248,  71, 110, 105,  24, 193,   7,  29, 225, 132, 115
	.byte	195, 173, 227, 199, 211, 113,  65,  52, 163, 157, 218,  56,  17, 100,  20, 202
	.byte	188, 109,  65,  79,  65, 109,   0, 117,  67, 155,  83,  38, 115, 191, 210, 171
	.byte	175, 224,  38, 188, 143,  41,  45, 104, 218, 202, 250,  34, 213,   3, 181, 235
	.byte	 14, 128, 109, 209,  18,  47,   0, 229,  14,  88, 196,  82,  39,  10,  83, 185
	.byte	 71,  20, 177,  31,  53,  71, 130, 241, 181, 123, 119,  51, 154, 175, 191, 109
	.byte	 18,  62, 189, 149, 170, 134,  69, 236, 200,  71,  89, 193, 245,  86, 154, 129
	.byte	177, 148, 142,   2, 240,  92, 248,  68, 203, 247, 118,  45, 133, 132, 198, 112
	.byte	246,   4, 104, 111,  69, 234, 205,  48,  41,   1, 117,  28,  66,  84,  79,  62
	.byte	 40,  77,  24,  76, 232, 134, 127, 159, 233,  11, 201, 194, 123,  23, 218, 242
	.byte	 92, 210, 142, 183, 231, 143, 100, 126, 137, 182,  62, 196, 126,  85,  78, 221
	.byte	 92, 120,  45, 177,  57,  71,  56, 166, 141, 121, 189, 160,  89, 214, 162,  46
	.byte	 98, 130,  71,  43, 150, 252, 200, 212,  69, 170, 124, 178, 147,  68,  44, 176
	.byte	168, 100,  96, 173,  63, 215, 146, 196, 209,  75, 215,  37, 120, 203, 117, 243
	.byte	102, 196, 130, 139, 107, 204,   6,  94,  38,  17,  46,  50,  80,  13,  89,  93
	.byte	 83, 192, 124, 240,  71, 219,  72, 227, 213, 242,  59,  36, 173, 195,  30, 195
	.byte	154,  48, 123, 224, 189,  80, 249,  30,  34, 187, 160, 187, 190, 210,  56, 228
	.byte	154, 104, 210, 197,  43, 222, 147, 209,   4, 120,  71, 125,  22,  62,  68, 221
	.byte	188,  60,  49,  25, 149, 131, 181,  10, 167, 104,  49,  50,  95,  70,  30, 127
	.byte	 98, 213, 163,  13, 179, 197, 186, 162, 245,  99,  24, 186,   5, 128, 132,  12
	.byte	172, 225, 182,  26, 111, 214, 217,  67,  55,  26,  22, 201,  39, 193,   9, 231
	.byte	 17, 158, 195, 254,  49,   7,   4,  60, 193,  85, 149,  21, 104, 245, 160, 143
	.byte	214,  64, 103, 243, 202,  53, 188, 207, 107, 151,   2, 206, 245, 127,  42,  25
	.byte	171,  67,  73, 236, 241,  89,  98, 143, 173, 244, 155, 193, 205,  49, 115,  93
	.byte	244, 239, 153, 248,  56, 106, 232, 105, 243, 241, 193,  79,   6,  98,  64, 160
	.byte	 94,  14, 102, 204, 228,  98, 219, 157, 166,  65, 147,  81,  27, 249, 113,  42
	.byte	 62,  56,  69,  22,  25, 179,  19,  71,  21, 234, 179, 167, 187, 151,  33,  49
	.byte	 49, 187,  18,  97, 233, 150, 238, 224, 202,  33, 147, 167,   2,  37,   8,   2
	.byte	 74, 151,  77,  39,  55, 139, 101,  77,  71, 238,  47,  81, 208, 102,  35, 168
	.byte	 76, 253,  41, 131,   4, 219, 183, 254, 181, 220, 121, 103,  71, 148, 245, 117
	.byte	 80, 173,  47,  27, 228, 233, 130, 254, 211, 250,  95, 177,  48, 186, 244,  51
	.byte	 24,  85,  65, 131,   9, 244, 166,  53, 139, 205, 152,  23,  97,  15, 161,  14
	.byte	144, 143, 144, 137,  84, 150, 250, 102, 125, 241,  92,  23, 142, 205,  89,  79
	.byte	144, 219,  85, 140,  20,  26, 159, 241,  50, 165, 222, 165, 145, 225, 208, 176
	.byte	202,  85, 178, 199, 166,  40, 254, 141,  69,  65, 139,  72,  25, 160, 191, 180
	.byte	229, 102, 204,  16,  75, 105, 199,   4, 218, 227, 131,  15,  32, 120, 233, 242
	.byte	222, 209,  17,  50, 253, 160, 135,  45, 181, 122, 204, 166,  98,  24,  98, 240
	.byte	252, 118,  13,  55, 235,  12,  55, 194,  79, 127, 121,  11, 248,  46, 213, 155
	.byte	 10, 210,  10, 209,  38, 248, 224,  49,   1, 196, 128, 124, 147, 133, 203,  17
	.byte	219, 181, 110, 185,  80,  36, 176, 121,  64,  47, 178, 210,  68,   1, 233, 115
	.byte	 16,  80,  26, 172, 161, 246, 233, 162, 128,  18, 138, 238,   9,  68,  12,  92
	.byte	 37, 228, 126,   5,  53,  72,  62,  85, 170, 229, 251,  17, 248, 101,  30, 140
	.byte	  2, 114, 228, 142,  47, 152,  43,  32, 227, 120,  21,  66,  57,  91, 251, 172
	.byte	179,  33,  83, 148,  95,  69, 224,  35, 194,  42, 119, 246, 184, 104,  27,  52
	.byte	118, 181,  47, 207, 163,  57, 235, 147, 210, 184,  64, 247, 246,  23, 109,  68
	.byte	166,  26,   4,  51, 254,  58, 195,  37,  30, 243,  15, 154, 108, 144, 177,  71
	.byte	134, 111, 138, 251, 161,  57, 104, 197,  82, 182, 190, 123, 232,   0, 199,  33
	.byte	233, 139, 118, 121, 105,  90, 159, 238, 161, 254, 144, 110, 152,  72, 125, 139
	.byte	104, 101, 108,  86, 189, 219,  10,  37,  82, 209,  13, 125, 223, 195,  94,  81
	.byte	165, 108, 204,   5, 156, 227,  90,  95, 102,  26, 182, 133, 134,  69,  46, 144
	.byte	 14, 125, 219,  87,  82, 250, 244,  60, 182,  90, 150, 139, 115, 151, 204, 189
	.byte	227,  57, 251, 204, 128, 160, 146,  60, 202, 226,  21, 194,  94, 104, 197, 143
	.byte	206, 232, 212, 142, 249,  86, 187, 214, 161, 241,  48,  61, 222,  13,  68,  47
	.byte	 94, 143,  19,  90, 170, 132,  46, 126,  82,  69,  85, 175,  71, 230,  23,   0
	.byte	182, 107, 230, 157,  77,  93,   2,  62, 131, 178, 179, 110,  21,  18, 236,  89
	.byte	 55,  89, 158,   6, 144,  65,  62, 197, 185, 104, 126, 108, 178,  91,  65, 104
	.byte	 38,  18,  24, 239,  91,  80,  67, 218, 205, 132,  82, 255,  42, 202,  49, 178
	.byte	 50,   1, 176, 215, 178, 199,  32, 252,   6,  12, 158, 220, 238,  58, 100, 226
	.byte	 88, 116, 231,  71, 224, 172, 154, 187,  71, 155,  66,  89, 153, 119, 140, 140
	.byte	 59,  41, 238, 185,  15, 112, 247, 148,   3, 149, 242, 126, 231,  16, 187,  99
	.byte	172,   2,  83,  60,  54,  23, 124,  89, 236, 209,  37,  34,  67, 149,  35, 250
	.byte	 78, 112, 150,  14, 226,   0,  48, 113, 138,  57,  37,  58, 210,  36, 239,   0
	.byte	222,  13, 244,  76,  62, 120,  83, 117, 127,  85,  29,  10, 206,  37, 136, 195
	.byte	138, 215,  72, 245, 179, 115,   6, 219,  21, 214, 139, 210,  79,  50, 137,   9
	.byte	222,   1,  68, 105,  33,  49, 154, 219,  55, 229, 164, 206, 186, 238,  90, 102
	.byte	242,  36,  10,   4,  29, 175, 128,  11, 134,  27,  45,  70,  34, 202, 187,   3
	.byte	158, 110,  63, 100,  67,  14,  71, 198,  80, 216, 119,   5,  24,  34,  47, 244
	.byte	143, 111,  20, 125, 133, 208, 151, 168, 243, 202,   0, 171, 221,  87,  30, 179
	.byte	210,  75,  14,  74, 154, 119, 216,  32,  88, 196, 157,  59, 202, 240,   7,  56
	.byte	174,   9,  72,  58, 175,  31,   9, 196,  68,  40, 189, 135, 173, 113, 118, 161
	.byte	190,  21, 241,  77,  24, 104,  13, 165, 128,  46, 131, 123, 114, 101,  86, 136
	.byte	150,  41,  49, 230, 167, 170,  75,  12, 248,  58, 134, 184, 167,  19, 233,  64
	.byte	 70,  25,   0, 121,  52, 198, 235, 250, 145, 103,  24, 204,  25, 244, 133,  72
	.byte	 67, 184,  50,   6,  47, 242,  20, 142,  60, 219,  37,  83, 117, 143, 251,  84
	.byte	188,  46,  81, 165,  30,  57, 158, 246, 254, 182, 174,  54, 168,  39,  89,   8
	.byte	 18, 249, 120, 243, 142, 109,  78, 206,  66, 119,   2, 171, 154,  11, 174, 203
	.byte	126, 112, 117,  58, 221, 100, 216, 120, 172, 153,   8, 100, 227, 207, 112,  69
	.byte	  1,   3, 168, 132,  59,  12,  53, 238, 130, 149, 217, 211, 145,  29, 167, 108
	.byte	 72, 159, 169, 103,  84, 213,   2, 132, 215, 251, 205, 250, 194,  65,  27, 169
	.byte	 70, 204, 103, 174,  72, 101, 240, 142,  47, 244, 159,  74, 168,  94, 153, 121
	.byte	138,  64,  72,  82,  10,  65, 234,  99,  28, 134, 192, 226, 198, 198, 213, 100
	.byte	222, 211, 172,  41,  32, 162,  28,  79, 123, 175, 154, 218, 137,  24, 143,  10
	.byte	 88, 183,   0,  27, 216, 244, 114, 246,   3,  31, 153, 236, 223,  13,  78,  80
	.byte	234,  72, 184, 236,  15, 153,  51, 150, 206, 121, 179,  62, 146,  86, 133, 143
	.byte	 20, 226, 159, 224, 221,  54,  14, 195, 203, 194, 135,  89, 214, 204,  32, 241
	.byte	230,  16, 141,  22, 122, 199,  81, 208, 157, 162,  66, 130,  69, 110,   8, 250
	.byte	202, 114,  53,  33, 148,  74,  37,  29, 254,  17, 218,  58, 140,  73, 205, 141
	.byte	235,  95,  87, 193, 133,  17,  22, 207, 163, 178,  70,  30, 127, 247,  24, 201
	.byte	118, 145, 197, 251,  94, 167, 117, 107, 204, 141,  28,   1,  72,  13, 172,  53
	.byte	 74, 213, 201, 148,  66,  97, 188,  22, 204,  14, 172, 231,  19, 193,  24, 178
	.byte	 52, 232, 144,  40, 135, 230,  30, 166,  88, 240,  49,  21,   5, 204, 200,  57
	.byte	203, 253, 206, 206, 128, 189, 126, 197, 176, 144,  99,  70, 126,   5, 242,  16
	.byte	118, 218,  41, 211, 219, 173, 139, 219,  89,  49,  29,  28, 251, 119, 252,  20
	.byte	117, 147, 139, 205, 185, 142, 140, 189,  61,   2, 122, 111,  19,  71, 207,  70
	.byte	252, 142,  72,  82, 104,  38,  91,  75,   7,  70, 204, 192, 214,  19,  90, 120
	.byte	 83, 179,  43, 107, 100, 103,  33,  68,  41,  20,  13, 197, 132, 196,  76, 173
	.byte	168, 106, 225, 241, 143, 243, 197,  29,   3, 176,  41,  87,  47,  10,  12,  84
	.byte	183, 109, 171,  33, 253, 228, 206, 122, 174, 192,  22,  64, 198, 131, 124,  47
	.byte	 14,  78, 126, 147,  72,  33,  99,  63,   1, 169, 146, 136, 239,  54, 175,  65
	.byte	147,  25, 238, 234, 230,  61, 119,   3, 142, 249, 176,  87,  80, 226, 117,   0
	.byte	108,   3, 239, 170, 214, 216,  76, 144,  88,  29, 213,  97, 122,  39, 242,  92
	.byte	 41,   9,  21, 158, 162, 151, 136, 195, 196, 183, 134, 223,  97,  40, 154, 209
	.byte	178, 146,  92,  45, 177,   0, 199,  30, 153, 133, 167, 176, 252,  41,   1, 177
	.byte	  3, 185, 207, 115, 133, 162,  65, 186, 175,  42,  89,  23,  45, 182, 238, 206
	.byte	110,  88,  53,  88, 207,  42, 113,  65, 254, 161,   8,  37,  97,  97,  22, 200
	.byte	 18, 193,  66,  25,  16, 157,  81, 115, 213,  83, 137, 225, 209,  21,  20,  81
	.byte	108, 120, 164, 200, 128,   5, 179,  10,  47,  79, 130, 122, 130, 195,  82,  86
	.byte	 28,  72,  67, 142, 136, 187, 224, 108,  38,  92, 170,  44,  10, 114, 254,  99
	.byte	 48, 114, 230, 127,  39, 118,  73,  57,  84, 200,  13, 170,  98,  92,  82, 177
	.byte	124, 100, 130, 224, 208, 224, 234,  80, 240, 239,  23, 160, 116, 154,  88, 248
	.byte	218,  53,  47, 190,  43,  59, 214, 219, 130,  82, 108,  90, 226, 141, 122, 243
	.byte	231,  84, 173, 183, 236, 158, 133, 117, 208, 120, 232, 189,  36,  70,  21,  56
	.byte	 10, 102,  17, 195, 180,  72,  87,  89,  47, 210, 163, 204, 199, 245, 190, 202
	.byte	194, 199,  12, 143,  86,   4,  12,  90, 167,  33,  25, 120,  61,   4,  41,  92
	.byte	 12, 106,  86, 180,  74, 126, 229, 244,  51, 201, 162, 187, 231,  16, 205,  70
	.byte	227, 217, 191, 150, 185, 208, 225,  69, 151,  35, 254,   6,  71,  11,  16,  56
	.byte	 18,   0,  83, 199, 239,  20,  70, 248, 165, 191,  84,  48, 101,  33, 207, 187
	.byte	169, 113, 188,  86,  57, 106,  83,  58, 250, 227, 106,  19, 194, 184,  74, 182
	.byte	226,  89, 249, 243, 235, 175, 212, 191, 243, 112, 117, 252,  34, 175,  83,  91
	.byte	162, 220, 105, 199, 152, 146, 172,  11,   0, 117, 252, 119,  83,  83, 176,   1
	.byte	152,   5, 171, 170, 103,  76, 151,  13,  93, 110, 173, 238, 204,  30, 126,  21
	.byte	118,  10,   6, 188, 108, 118,  27,  36,   6, 167,  85, 118, 200,  61, 154,  98
	.byte	130, 226, 116, 196,  73, 190, 235, 206, 188, 155, 210, 131, 219, 174,   8, 197
	.byte	 27,   0,  11,  57,  91,  14, 147, 233, 188, 251,  33, 170, 230, 181, 152,  42
	.byte	 66,  78, 206, 191, 231, 136,  71,  64, 105, 194, 229, 139,  92, 146,  71,  99
	.byte	184,  43,  86,  18,  23, 236,  89, 188, 174,  38, 172,  52, 127, 250, 128, 214
	.byte	122, 187,  58, 228, 199, 137, 181, 144,  84,  60,  83,  50, 248, 222, 135,  95
	.byte	164, 204,   0, 171, 123, 231, 102, 198, 133, 156, 253,  57,  37,  16,  10, 254
	.byte	112,  37,  79, 150, 153, 239,   1, 155, 183,   5,  41, 198, 136, 189, 255, 231
	.byte	 91,   4,  92, 184, 142, 178,  15, 253, 147,  33, 102, 216,  25, 235, 223, 238
	.byte	  0,  81, 107,  89, 138, 158, 167,  42,  74, 236, 250,  85,  37,  77, 246,  29
	.byte	175,  10, 226,  76, 165, 216, 180,   8, 162,  88,   3,   3, 214, 238, 196,  49
	.byte	  6, 241, 170, 147,  21, 220, 183, 195, 231, 184, 255, 216, 233, 128,  16,  97
	.byte	 43, 249, 187, 132,  96, 173,  98, 214,  64, 170,  66,  25, 205,  70,  69, 135
	.byte	112, 234, 173, 133,  86, 238,  85,  76, 255, 172, 217, 128,  28,  70, 205, 250
	.byte	191,  67, 218, 198, 228,   1, 229, 252,  21, 152, 102, 254,  84, 246, 152,  69
	.byte	176,  33, 208, 169, 134, 121, 199,  31, 209,  21,  68, 124,  91,  26,  38, 121
	.byte	153,  28, 117, 237, 179,  19, 158,  42,  53,  62,  33,  94, 139, 102, 214, 169
	.byte	234, 127, 192,  13, 100,  31,  42, 110, 174,  54, 216,  39, 158, 210,  20, 130
	.byte	 99,  75, 152, 180, 225, 178, 188, 226, 249, 193, 218,  61,  36,  29, 199, 154
	.byte	236,  99,  15, 219,  74,   0,  71, 163, 108, 119, 148,  47, 110, 145, 146, 122
	.byte	 81,   2, 180, 124, 241,  43, 224, 113, 194, 222,  73, 104, 106,  47, 209,  75
	.byte	 34, 108, 135, 223, 209,  36,  20, 166,  22,  78,  74, 245, 103, 213, 143,  33
	.byte	136,  39,  10,  53, 170,  26, 119,  49,  50,  31,  58,  38, 173, 211,  61, 135
	.byte	 82, 206, 146, 171, 133, 152, 169, 190,  88,  72,  92, 136, 193,  82, 145,  73
	.byte	219, 153,  73, 251,  96, 214,  47, 179, 191, 148, 249, 145,  95,  35,  25, 147
	.byte	160, 197, 150, 125, 112, 182, 108,  21, 214,  47,  39, 109,  58, 218,  36, 220
	.byte	252,   4,  89, 108,  45,  40,  49, 104,  46, 187, 250, 146, 185,  43, 247,  19
	.byte	100,  22, 191,   8, 228, 138,  72, 198, 140, 105, 233, 209, 206,  19, 121, 183
	.byte	  7, 166, 223,  18, 157,  35, 187, 173,   8, 219,  86, 242,  47, 202, 211, 225
	.byte	 96, 135,  21, 104,  26,  38, 186, 201,  17, 161,  16,  19, 148, 162,  94, 210
	.byte	243,  72, 254, 101,  70,  42,  24, 100, 197, 152, 254,  41,  96,  39,   9, 111
	.byte	234,  80, 177,   0, 121, 160, 236,  82,  94,  11, 195, 185, 136,  62, 180, 164
	.byte	234, 109, 240, 176, 126, 186, 127, 124,  38, 215, 228,  65, 220, 169, 189, 173
	.byte	138, 200, 112,  90, 224,  60, 244, 167, 125, 146,  44,  33,  24,   4, 216,  64
	.byte	127, 215, 189, 157,  66, 253, 117, 183, 175,  17,  46,   2, 240, 113, 115, 143
	.byte	 38,  38, 102,  24, 129, 189, 109,   6, 116, 166, 145, 222,  49, 175, 110,  39
	.byte	129,  45,  64,  60, 116, 241, 223,  14, 149, 154, 179,  11, 119,  69,  24, 122
	.byte	170, 141, 113, 156, 227, 249,  16, 164,  30,  82, 244,  70, 203, 147, 248, 116
	.byte	 40, 202, 220, 142, 186, 222,  71, 218,  53,  68, 107, 219,  35,  39, 254, 142
	.byte	108,  53, 216, 249, 117, 156, 125, 108,   3, 220, 234, 168, 188,  97,  93, 241
	.byte	 51,   5, 216,  57,  52,  67, 199, 145, 149,  97,  27, 101, 130, 191, 206, 253
	.byte	178, 228, 192, 239, 211, 198, 121, 232,  10,  58, 177, 254, 195,  84,  25, 226
	.byte	 56,  99,  52, 211, 198, 209,  21,  80, 245,  13, 228,  10, 142,  83, 167,  21
	.byte	248,  91,  16, 147,  91, 254, 100, 146,   1, 118,  54, 150, 128, 145, 133, 209
	.byte	 13,  65, 202, 118,  35, 135, 216,  99, 109, 124, 189, 199, 226,  81, 104,  95
	.byte	 46,  40, 252,  29, 136,  10,  71,   8,  44, 161,   2, 114,  31,   2,  34,  34
	.byte	105,  11, 138,  72, 138,  73,  13, 172,  92,  50, 201,  60,  76, 129,  37, 160
	.byte	106,  63,   7, 113,  70, 220, 182, 164,  66,  15, 142, 188, 112, 125,  52, 100
	.byte	173, 207, 186,  91, 212, 157,  85, 228, 218,  47,  74, 141,  78, 254, 138, 189
	.byte	 20, 158, 171, 208,  79, 189, 237,  92, 240,  59,  75,  51, 124,  56, 252,  74
	.byte	 79, 119, 132, 177,  71, 254, 214, 183,  16, 174,  72, 134,  24, 130, 201,  40
	.byte	150,  75, 236, 202, 209, 235,  37, 227,  90, 179, 108, 117, 124, 190,  88,   0
	.byte	151, 210, 219,  25, 156, 240, 134, 155,  96, 139,  57,  67, 229, 108, 213, 196
	.byte	236, 207, 215, 237,  43, 210, 252, 201,  79,  52, 123, 183, 144,  52, 187, 213
	.byte	219, 187,  39, 155,  43, 113,  78,  32, 140, 194, 204,  16,  91, 209,  30, 238
	.byte	102,  50,   7, 180,  74, 113, 118,  48,  43,  69,   0, 108,  46, 187,  48,  85
	.byte	 65, 166, 224, 171, 174, 252, 234, 244,  12, 240,   9, 140, 112, 218, 190,  61
	.byte	 22, 212, 119, 146,  11,  35, 201,  36, 139,  58, 192,  17, 210,  39, 194,   1
	.byte	 98, 101, 103, 113, 139,  85,  11, 215, 248,  84, 252, 121,  36, 252, 182, 160
	.byte	230,  88,  63,  95, 125, 247, 129,   2, 237, 152,  83, 192,  75, 228, 118, 147
	.byte	169, 225, 105, 143,  16,  93,  50, 247, 242, 147, 237,  77, 170, 204, 170, 135
	.byte	  2, 138,  29, 212,  55, 113,  94,  17,  90,  40, 160,   0,  61, 177,   4, 205
	.byte	187, 239,  91,  16, 253,  85, 198, 236, 247, 104, 126, 204, 175,  99, 253, 113
	.byte	164, 128,  16, 123,  88, 217, 183,  33,  32, 238, 202, 167, 186,  34, 210, 168
	.byte	160,  70,  32,  50,  21, 109, 103, 207, 113,  75,  67, 187, 215, 148, 135,  63
	.byte	216,  21, 103,  46, 163, 108, 126, 220,   3, 215, 187,  59,  89, 111, 231, 197
	.byte	181,  54, 179, 184,  36, 109,  65, 226,  16, 204,  22, 134,  48, 181,  19,   3
	.byte	  2, 107, 211, 235, 205, 155,  97, 114, 226,  73, 199, 140,  18, 206, 200, 102
	.byte	 62, 164, 105,  26,  48, 255,  68, 227,  13,  83,  82,  62,  70, 188,  83,  94
	.byte	 98, 117, 196, 105, 211,  56,  44,   5, 178, 120,  75,  47,  53,  22, 119, 222
	.byte	  3,  55, 122,  63, 149, 176,  42,  43, 108, 230, 126,  14,  58, 184, 245, 233
	.byte	234, 116, 175,  32, 138,  96, 152,  10,  81, 144, 237, 238, 125, 242,   9, 255
	.byte	 31,  61,  97, 127,  83, 116, 237,  23, 253, 218,  83, 188, 223,  85, 172,  66
	.byte	 92, 223, 176,  43, 137,  71,  36, 165, 191,  11,  62, 134,  37,  98,  94, 204
	.byte	174,  38,  10,  34, 199,  51,  18, 106, 114, 106, 156, 229, 158,  19, 226, 235
	.byte	166,  23, 170,  98, 193, 133, 255,  47,  99, 139,  88, 186,  81,  31, 106, 149
	.byte	 52,  15,   4, 107, 138, 156,  90, 146, 243,   7, 137,  82,  29,  98, 128, 214
	.byte	244, 162, 114,  54,  56,  17,   2,  96, 109, 105,  24, 146,  69, 136, 232, 157
	.byte	140, 255, 174, 136,  95, 248,  92, 120,  32, 203, 161, 175, 173, 160, 172, 146
	.byte	170, 253, 226, 219, 125, 196, 220,  94, 204, 195, 232,  89,  85, 246, 186, 159
	.byte	170, 222,   2, 158, 139, 102, 164, 123, 179, 145, 124, 115, 126, 254, 103,  58
	.byte	 32,   0, 236, 204,  20, 132,  55, 153, 236,   0, 130,  41, 156,  89,  93,   6
	.byte	 48,   8, 104,  42, 171, 244, 125, 157, 171, 125, 204,  83, 116, 200, 117, 115
	.byte	216,  31, 180, 179,  92,  54,  65,  87,  52, 190,   5,  87, 216, 126, 172, 143
	.byte	210,  65,   6,   2, 139, 112,  22, 138,  55, 244,  61, 136, 251, 139, 194, 226
	.byte	 46,  72, 136, 190, 213, 112, 132, 153,  62, 202, 203,  40,  95,   1, 242, 139
	.byte	  9, 186,  57,  95, 141, 249, 150,  69, 187,  62, 249, 192, 154, 249, 167,  42
	.byte	194, 126, 200,  42,  75,  81,  23, 132,  30, 226,  91, 191,  32, 247, 170, 133
	.byte	 46, 162, 108,  52, 136,  51, 200, 199, 182, 222, 215, 165, 213, 216, 163, 245
	.byte	 90,   9, 141,  23, 226, 182,  31, 130, 103, 109, 173, 183, 191, 236,  99,  21
	.byte	 75, 194, 247, 106,  12, 230, 253, 201,  17, 190,  70,  49,  95, 186, 139,  76
	.byte	 96, 251, 246, 238,  19, 123,  80, 145, 109,  37,  27,  47,  90, 241, 189, 129
	.byte	 86,  99, 113, 103,  93, 119, 196, 221,  48,  98,  42,  30, 124, 203,  29, 174
	.byte	 24, 225, 205, 233, 231,  98, 226,  62, 212,  47, 122, 188, 249,  31, 241, 229
	.byte	251,  23,  38, 189, 142, 230,  66,  14, 133,  19, 180, 144, 153,   6, 141, 230
	.byte	 62,  31,  91,  68, 240, 105,  53,  11, 180,  56, 189, 175, 102, 147, 175, 241
	.byte	106, 171,  73, 101, 209, 243, 158, 163, 169, 121,  17, 237, 128, 236, 225,   4
	.byte	 10,  46, 183, 185, 181,  61,  26, 135,  40, 247, 137,  37,  70,  32, 186, 169
	.byte	115,  33, 107, 241,  63, 224, 110, 247, 134,  51,   3, 153,  22, 148, 251, 166
	.byte	 60,  91, 111, 145,  19, 217, 204, 109,  24,  88,  17,  10,  77,  91, 115, 251
	.byte	 43, 164,  16, 153, 193, 109, 113,  25, 208, 189,  24, 242,  80, 156, 245, 101
	.byte	 98,   9, 127,  84,  11,  42,  31,  40,   0, 245,  69,  26, 122, 128, 129,  51
	.byte	181, 105, 179,  58, 190, 230, 197,  12, 124,   8, 104,  24, 238, 163,  32, 221
	.byte	136, 226, 222,  67, 218,  55, 231, 231,  56,  13,  23,  68, 213, 194,  94, 167
	.byte	 89, 215,  26, 220, 247, 134,  18, 167,  12,  90,  52, 221,  73, 149, 150, 175
	.byte	230, 122, 137, 118,  47, 181,  79,  37, 160, 215,  71, 168,  86, 219, 104,  24
	.byte	 62, 254,  98,  14, 221, 209,  46, 193, 253, 146, 122, 237, 226,  75,  64, 106
	.byte	100,  78, 168, 139, 114, 248,  52, 190, 146, 215,  18, 191,  15, 227,  88, 226
	.byte	246,  15, 101, 124, 237, 148, 207, 200,  84,  73, 248,  80, 225, 219, 106,  99
	.byte	 58, 249,  42,  62, 198,  94,   1, 167,  50,  69, 211, 196, 178, 238, 234, 117
	.byte	142,  66, 153,  24, 211,  69,  19, 164, 168, 150,  71,  27, 214,  49,  98, 133
	.byte	 32,  78, 136,  42, 153,  92, 161, 175, 204,  60,   5, 161,  16, 235, 253, 196
	.byte	204, 116, 213, 249,  82, 107, 224, 227, 111,  22, 155, 138,  48, 139,  98, 186
	.byte	234, 155, 227,  58,   3,   9, 200, 102, 197, 133,  70, 128, 190,  29, 120, 175
	.byte	120, 238, 142, 249,  57,   7, 174, 135, 245, 140, 152, 253, 108,  96, 153, 127
	.byte	198,  59, 143, 133, 206,  90,  87, 226, 174,  90, 208,  40,  83,  75, 170,  67
	.byte	 16,  66,  71,  72, 153, 194, 142, 158, 146, 169, 146, 161, 241, 165, 205, 187
	.byte	244, 214,  26,  93, 121,  35,  92, 196,  99,  76,   5, 138,  90, 215,   1, 130
	.byte	191,  14,  92,  20, 193, 253, 229, 214,   8, 255, 119,  18, 222,  57, 253, 139
	.byte	 72,  34,  37,   5,  10, 175,  26,  76, 168, 188, 128,   6,  32, 177, 135, 158
	.byte	207,  37, 201, 116, 167, 221, 200,  24, 172, 210, 152,  71, 195, 133,  29, 148
	.byte	190, 211, 133,  75, 243,  26, 163, 238,  11, 224, 170,  31, 151,  80, 176,  82
	.byte	117,  39, 163,   3,  66, 171, 110, 225, 241,   6, 217, 105, 222,  58, 116,  10
	.byte	 38,  19,  80, 180,  64, 156,  27,  46, 165, 242,  51, 190, 120, 200, 244,  20
	.byte	191, 205,  74,  71, 247, 113,   4, 249,  23, 210, 244,  23,  74,  15, 122, 139
	.byte	168,  37,  21, 183,  11, 169, 127, 245, 131, 215, 185,  58,  33, 130, 151, 100
	.byte	  7, 153,  60, 102, 174,  54, 198, 194, 233, 101, 203, 152, 112,  71, 126,  69
	.byte	134,  33,  46,  63,   5, 168, 208,   8,  31, 149, 230,   7,  58,  90,  17, 189
	.byte	 56,  65,  39,  75, 189, 114, 153, 198,  67,  51, 101,  53,  24, 185, 222, 214
	.byte	198, 186, 128,  58, 121,  83,  66, 113, 221,  86,  64,  43,  96, 197,   7, 201
	.byte	 72,  47, 227,  68, 174,   1,  86, 248, 250, 137,  94,  97, 133, 169, 144, 169
	.byte	228,  59, 249, 186, 122,  25, 189, 171,  70,  41, 251, 151, 184, 144, 205, 254
	.byte	 91,  13, 109, 177,  41, 186,  41, 176,  18, 164,  10,  15,  11,  49, 221,  91
	.byte	 62,  62,  72, 125, 131,  25,  71,  99,  64, 217, 194,  54, 169,  28, 239, 234
	.byte	250, 145, 250, 146,  79,  57, 167, 194, 221, 102, 210, 188, 242,  87, 252, 160
	.byte	 28, 135,  57, 180, 255, 158, 214, 140, 229, 206, 255, 119, 131, 150, 194, 185
	.byte	 28, 245, 118, 190, 150,  29, 194, 165,  28, 199,  84, 171, 113,  17, 190, 173
	.byte	 64,  86, 235, 252, 250,  30, 201, 220,  43,  95,  99, 167, 179, 167, 124, 254
	.byte	 20,  60,  89,  97, 119,  51, 239, 126,  46, 122,  50, 181, 131,   5,  80,  45
	.byte	138,  82, 184, 101, 249, 249,  67, 139,  43,  46, 185, 238, 109,  55, 199,  69
	.byte	250,  89,  93, 254,  36, 233,  44, 203,  12,  78, 222, 225,  78, 166, 139,  31
	.byte	112, 169, 249, 139,  22,   5, 141, 146, 234, 222, 106, 211,  91,  67, 129, 217
	.byte	 39, 185,  33,   4, 221,  77, 184, 104, 210, 149, 187,  57,  81, 120, 241,  62
	.byte	 62, 244,  69, 240, 177, 141, 208,  62, 213, 173,   3, 120, 207,  38,  61, 246
	.byte	140, 209, 145,  49, 164, 161, 161,  63,  24, 101, 118, 127,  77,  24, 201, 162
	.byte	176, 242,  49, 143, 251, 243, 212,   2, 238,  82, 182, 176, 121, 111, 163, 123
	.byte	211, 242,  49, 253, 191,  48, 252, 250,  61, 151, 100, 191, 255,  84, 231,  82
	.byte	106,  96,  55, 108, 128, 153, 247, 203,  56,  89,  59,  29, 255, 231,  90,  45
	.byte	 79,  45, 225, 150, 161, 120, 131, 252, 228, 133,  41, 232, 185,  90,  18, 103
	.byte	106, 231, 202, 231, 156,   1,  59, 239, 208,  69, 214,  94, 140,  52, 150, 126
	.byte	169,  70, 157, 214,  73, 222, 245, 105, 223,  47, 163, 234,  38,  35, 152,  92
	.byte	208, 180,  13, 177, 235,   7, 238, 190, 126,   0, 158, 249, 180, 226, 240,   2
	.byte	167, 241,  80, 139, 228,  24,   2, 137, 148,  21, 131,  26, 170,  55,  46, 160
	.byte	182,   8,  94, 101, 252,  94,  37,  21, 113, 181,  47, 212,  98,  35,  52, 247
	.byte	 78,  98, 228, 157,  32, 108, 175,  52, 245,  56, 229,  63, 177, 124, 175, 195
	.byte	118, 151,  45, 199,  30,  50,  76, 103, 221, 115, 241, 170, 185, 223, 160, 238
	.byte	207, 192, 200,  69, 237,  63, 226, 109,  37, 228, 124,  21, 183,  30,  75,  48
	.byte	118, 142, 193, 127,   2, 143,  49,  77, 235,   2,  53, 189, 173, 118, 180, 254
	.byte	 54, 168, 244,  21,  28, 186,  65, 125, 147,   0,  35,  24, 127, 138,  42,  35
	.byte	 30, 128,  44, 219, 217, 200, 225, 117, 115, 234,  36,  50, 115,  38, 135,  61
	.byte	246, 120,  81, 202, 143, 164, 109,  97, 212, 111, 110, 136, 250,  59, 222, 213
	.byte	198, 111,  21, 100, 139,  24, 149,   0,  13, 237, 201, 208, 187, 183, 129, 172
	.byte	158, 180, 177,   3, 158,  59,  53, 239, 251,  23, 225, 173,  18, 239,  21,  75
	.byte	 78, 167, 112,  27, 159,  14,  32, 231, 237,  82, 190,  66,  33, 166, 158,  36
	.byte	133,  11, 215, 173,  55, 234, 214,  66, 209, 213, 183, 178,  64, 230, 199,  74
	.byte	 48, 217, 190,  57,  38,  56, 204,   3, 169,  37,  26,  93,  23,  67,  12,  26
	.byte	140,  44, 196, 237,  28, 105,  47,  78,   6,  68,  46,  52,  72, 127, 111,  67
	.byte	 36,  51, 119, 239,  50, 186,  58, 120,  89,  17,  94, 151, 253, 140,  19,   2
	.byte	  5,  45, 175, 160, 208,  41, 247, 167, 163, 194, 146, 135,  43,  18,  50,  63
	.byte	 36,  84,  69,  79, 175,  76,  92, 107,  69,  64, 182, 168,   3,  34, 144, 174
	.byte	207,  35, 180,  60,  87,  90, 105,  38,  44, 136,  94, 141,  46, 198, 134,  82
	.byte	 42, 192,  90,   6, 200,  65, 167,  95,  58,   8,  93, 148,   0, 173, 231, 108
	.byte	218,  56, 212, 179,  43, 229,  41, 158,  83, 204, 213, 232,  13,  29,  55, 186
	.byte	224,   3, 239, 112, 102,  71, 122, 217,  42,  99, 255, 102, 112,  38, 208,  45
	.byte	115, 101,  10, 157, 125,  42, 102, 143, 202,   7,  24, 202, 212, 120,  14, 211
	.byte	168, 157, 230,  55, 161,  35,  72,  71, 211, 223,  36, 108,  85,   4,  58, 244
	.byte	169,  37, 135,  28,  55, 211, 183, 142, 189,  37, 247, 150, 159,  66, 194,   7
	.byte	204,  77,  96,  30, 126, 192, 112, 181,  47, 200, 141, 183, 227, 248,  18, 182
	.byte	160,  81,  93,  44,  39, 212,  45, 243, 152, 236, 103, 156, 146,  96, 150,   9
	.byte	220,  77,  88, 247,  40, 178,   5,  29,  72, 205,   6,  21, 218, 221,   9, 107
	.byte	165, 242, 251, 104,  74,  99, 111, 157, 114, 166, 111,  66,  38, 136, 242, 231
	.byte	 80, 131, 202, 108, 162, 131, 113, 203,  18, 122, 240, 108, 110, 140, 208,   5
	.byte	154, 158, 252,  39, 144,  95, 237,  81,   9, 102, 248, 171, 132, 212, 253, 168
	.byte	198,  34, 240,  11, 165, 209, 158, 125, 225, 244, 210,   9, 139,  42,  53, 142
	.byte	200,  71, 116, 247, 233, 212, 153, 136,  24, 138,  77, 238, 117,  17, 254, 106
	.byte	226, 183, 138,  48,   2,  91,  36, 131, 178, 244,  33, 220, 122,  44, 217, 209
	.byte	161, 147,   3, 110,  72,  69, 125, 107, 234, 166, 165, 241, 254, 161, 140,  69
	.byte	196, 100, 165,  37, 143,  72, 142, 241,  78, 150, 122,  93, 249, 225, 137, 160
	.byte	177, 146,  54, 185, 245, 199,  43,  73,  53, 112,  63,  59,  38,   8, 188,  33
	.byte	168, 139, 169,  10,  83, 253, 199, 146, 253, 204, 170,  42,  46, 159, 159, 181
	.byte	141,  49,  39, 166,  76, 170, 180, 110,  63, 218, 167,  44, 248, 221,   4, 173
	.byte	 90, 195, 161, 143, 250, 121, 231, 186, 191,  55, 200, 251, 174,  48, 232, 224
	.byte	199, 247,  11,  80, 153,  88, 192,  37,  28,  79,  48, 116, 249, 249, 136,  45
	.byte	 86,  54, 140,  54, 173,  32, 210, 176, 207,  60, 159, 171, 156,  67,  35, 156
	.byte	 95,  98, 123,   5,   5, 121,  17,  61, 182,  66, 241, 244,  90, 201, 165,  55
	.byte	 72, 118, 143,  43,  49,  92,  74,  10,  18,  34,  82,   8, 246,  18, 137, 102
	.byte	179,  39, 217, 108, 229, 195, 104, 229,  35,   2, 105, 116, 143, 149, 254, 162
	.byte	 70, 236,  39, 121,  67, 195,   5,  47, 171, 233, 104,  95, 186, 184, 106, 127
	.byte	 16, 181,  22, 179, 162,  84,  67,  97, 245, 155, 121, 117, 223,  98, 147, 192
	.byte	  8, 234, 237,  25, 219, 117, 181,  20, 244, 158, 180, 176, 124, 121, 127, 223
	.byte	 66,  27, 140,  72,  14,   5,  23,  44, 242, 151, 245, 200, 212,  89,  88,  27
	.byte	194,  21,  78,  56, 128,  92,   3, 194, 134,  14, 238, 196, 135, 194,  66, 116
	.byte	115, 207,  50, 202, 242, 169,  77, 149,  47, 226, 252, 209,  99, 179, 130,  46
	.byte	108, 116, 156, 138, 250,   5, 252, 206, 121, 140, 222, 246, 156, 142,  54,  61
	.byte	238,  91,  54, 238,  46, 242,  89,  15, 101, 250, 230, 227,   7, 150, 207, 204
	.byte	 88,  89,  15, 159,  41,  18,  70,   6, 171, 100, 156,  11, 117, 182, 101, 196
	.byte	133, 217, 160,  27, 145, 181, 114,  59,  33,  32, 133, 110,  16, 162, 114, 237
	.byte	 98, 136,  60,  46, 137,  99, 138,   3, 145,  74,  80, 153, 157,  47, 125, 241
	.byte	 91,  45, 155, 234, 215, 166,  19,  50, 192,  61,  14, 165,  63,   4,  82, 254
	.byte	214, 185, 169,  32, 203,  27,   7,  50, 148, 132,  59, 140, 113, 106,  83,  11
	.byte	166,   2, 105, 172, 110, 218, 224, 114,  41,  81,  63, 225, 240, 224, 166, 114
	.byte	 28,  96, 108, 229, 206,  82, 175,  86, 242,  66, 160,  88,  41, 250, 160,  19
	.byte	 92, 180, 120,  31,  84,   5, 245,  20, 137,  98, 203, 210,  60,  17, 217, 221
	.byte	174, 239,  92, 198,  19, 197,  56,   5,  34, 147, 103, 249, 137, 225,  22,  73
	.byte	220,  30,  29, 148, 126,  74,  73, 153,  73, 233,  50, 119, 189,  58, 162,  32
	.byte	108, 175,  97, 148,  60, 231, 208,  16,  59, 149, 180,  71,  41,  93, 203, 203
	.byte	175,  90, 227,  71, 184, 165, 197, 141, 214, 235,  83, 101, 115, 191, 210,  54
	.byte	250, 187, 156, 154,  43, 138,  39, 167, 218, 170, 121, 224,  66, 134, 255, 159
	.byte	154, 178,  14, 188,  20,  17,  62, 131, 121, 198,  81,  52,  84,  78,  66, 123
	.byte	 10,  62, 180,  69,  94, 146, 227,  76,  66, 186, 113,  36, 173, 107, 152,  64
	.byte	 24,  69, 149,  64, 118, 172, 209,  79, 251,  21, 249, 249,  47,  99, 214, 126
	.byte	142,  86,   3,   9, 248,  56,  79, 108, 145, 106, 187, 190,  20,  10,  77, 199
	.byte	 63, 158, 189, 136,  52,  63, 125,  83, 212,  48, 187, 198,  93, 134, 218,  14
	.byte	 42, 252, 237, 144,  11, 112,  95,  31,  25, 132,  68, 130, 129, 143,   8, 211
	.byte	 52, 169, 249,  75,  89, 120, 100, 156,  91,  56,  37, 209, 219, 125, 242, 201
	.byte	216, 110, 114, 146, 182, 182,   8, 210, 232,  16,  50,  34, 210,  94, 104, 170
	.byte	193,  61, 167,  79,  67,  55,  60, 141,   4, 201,  53, 173, 160, 119, 124,  94
	.byte	 74, 148,  46,  39, 242, 211, 249,  93, 242, 193, 128, 174, 107, 222, 107, 223
	.byte	  7, 195,  57,  92, 217,  19,  41, 230, 165,  98,  72,  13, 244, 160, 139, 220
	.byte	146, 223, 167, 102,  44, 186,  52, 152, 124,  14, 244,  42,  92, 122, 128, 114
	.byte	241, 196,  37, 152,  77, 174, 225, 222, 183, 167, 140,  53, 163,  51,  13, 144
	.byte	160, 242, 193, 138,  28, 172,  44, 228, 174,  30, 192, 200, 244, 213, 115, 205
	.byte	 89, 244, 163,  64, 138, 164, 184, 133, 139, 104, 195, 161, 207,  48,  11, 123
	.byte	210,  45,  28, 135, 219, 114,  68,   6, 217, 169,  81,  13,  36, 190, 109, 174
	.byte	 40, 109,  74, 110, 213, 155, 204,  19, 204,  63, 134,  53, 253, 134,  57, 162
	.byte	166, 203,  29, 201,  89, 217,  74, 193, 207,  65, 162, 237,  27,  91, 194, 101
	.byte	213,  32, 174, 143,  53,  82, 199, 108, 220, 173,  98,  47, 229,  21, 187, 229
	.byte	246,  26,  85, 237,  79, 144,  95,  46,   7, 119,  30,  43,  76, 145,  71, 247
	.byte	 73, 169, 156, 216, 252,  28, 197, 128, 224,  41, 112,   9, 120, 205,  59,  92
	.byte	212,  49, 159, 216, 190, 197, 224,  95,  61, 116, 114,  98, 236,  12, 143, 108
	.byte	252, 114,  74, 156, 107, 136, 107, 117, 255, 229, 102, 127,  91, 126, 204, 124
	.byte	190, 239, 171, 173, 214, 148, 172,  36, 247, 115, 104,  32,  61, 204, 241, 194
	.byte	238, 142, 214,  74,  62, 109,  67, 210,   5,  39,   5,  51,  25,   3, 224,  95
	.byte	 84, 218, 212, 163, 215, 179, 147, 109,  85, 235, 170, 175, 143, 168, 185,  78
	.byte	 10,  68, 202,  93,  25,   0, 220, 231, 225, 231, 125, 151, 109, 208,  55, 165
	.byte	110,  20,  12, 174, 183, 189,  63, 106, 182, 119,  79, 139,   4, 232, 185, 177
	.byte	158,  77, 113, 103, 211, 211,  22, 180, 136,  66, 236, 186, 188, 232, 143, 232
	.byte	 42, 246,  87,  87,  75,  13, 139,  92, 122,  18,  41, 250,  18,  41, 110, 206
	.byte	116, 135,  78, 102,  56,  20, 227,  28, 189,  10, 110, 116,  19, 239, 232, 185
	.byte	 48, 106, 161, 148, 135, 163, 196, 135, 251, 156,  25, 131, 179, 249,  23, 203
	.byte	 73, 119, 213, 198, 223, 159,  41, 238, 183, 164, 189, 103, 186,   9, 214,  68
	.byte	204,  95, 162,  53, 199, 116,  53, 104, 214,  50, 252, 138, 227, 240, 232,  95
	.byte	 88,  92, 130, 187, 196, 125,  19, 183, 251, 216, 241,  91, 209, 147, 222, 156
	.byte	154, 134,  73, 135, 185, 125, 158, 215, 145, 171, 186, 247,  45,  88,  98, 219
	.byte	206,  57,  69, 142,  35,  41, 239, 118,  44, 212, 113, 183,  34, 195,  61,  95
	.byte	 48,  66,  59, 230, 248,   0,   4, 183, 254, 194, 210, 176, 138, 254, 165, 153
	.byte	224,  17,  44, 213, 251,  82, 157,  48, 240,  24, 225,  86, 142,  40,  32, 225
	.byte	220, 128,  35, 250,  43, 237,  99,  13, 214,   7, 187, 202, 123, 202, 120, 200
	.byte	 23, 176,  74, 178, 111,  49, 155, 208, 204, 220, 211, 174, 118, 212, 150, 225
	.byte	 18, 121, 184,  94, 132, 165, 109,   2,   1,  86, 227, 171,  88, 107, 126, 190
	.byte	 58,  53, 240, 201, 176,   6,  87, 101, 118, 182,  22,  33, 122, 226, 217, 109
	.byte	180, 216, 186, 243, 118,  20, 196, 184,  71, 252,  61, 143,  98, 131, 128, 180
	.byte	253,  22, 189, 231,  12, 189, 143,   2,  96,  10, 218,  34,  67, 210, 147, 203
	.byte	116,  58, 114,   2, 190,  29,  11,  55,  64,  66,   1,  97,  24, 231, 207, 195
	.byte	235, 128, 118,   6, 236, 174, 100, 165,  77, 237, 222,  43,  24,   1, 133, 116
	.byte	146, 228,  45, 213, 172, 137,  47,  34,   7, 162,  97, 197, 142, 100,  43, 180
	.byte	140,   0,  76,  44, 229,  22, 127, 232,  29, 217, 102, 191,  62,  11, 210, 110
	.byte	188,  13, 189,  25,   2, 225, 105,  87,  11, 211,  41, 169,   9,  33, 235, 214
	.byte	 58,  90,  60,  22, 142, 234,   0,  54, 116, 254, 153, 139, 227,  21, 209, 134
	.byte	 14, 109,  66,  73,  45, 156,  10,  65, 134, 104,  60, 222,  85,  29, 195,  52
	.byte	 82,  36, 140,  19, 178, 212, 201,   2,  37, 173,  36,  46, 128, 123, 128,  69
	.byte	106, 228,  11, 230, 166,  91, 128,  12, 192, 163, 126,  31,  47,  75,  43, 141
	.byte	158,  72, 119, 195, 215, 132, 195, 217,  28,  34, 120, 206, 176,  82, 205,  20
	.byte	246,  30,  33, 240,  22, 152, 214, 248, 246,  55,   4, 188,  90, 226, 136,  10
	.byte	236,   3, 102, 161,  18,  76, 188, 225,  21, 147, 119, 183,  47, 235, 224,  67
	.byte	106, 249, 101, 123, 222, 201,  46,  92, 218,   5, 193, 184,  10, 177,  31, 161
	.byte	 44,  12, 205,  66, 154,  44,  50, 174, 240, 133,  20,  97, 122, 183, 197,  55
	.byte	228, 238, 183, 143, 197, 154, 112, 172, 116, 251, 211,  35, 109,  68, 157,  18
	.byte	197, 120, 115,  99, 158, 244,  18,  36,  63, 127, 160, 228, 164, 102, 216,  48
	.byte	 94,  45,  26,   1, 249, 215, 150, 144,  49, 167, 116,  90, 175,  49,  24,  71
	.byte	 80, 210, 189,  55, 183,   0, 201,  55, 190, 133,  42, 203, 200, 151,  61, 123
	.byte	182,  62,  50, 136, 221,  90,  34, 131, 231, 118, 129,  26,  35, 198, 190, 230
	.byte	 65,  42, 167, 207, 166, 227,  33,  14,   3, 246,  60, 187, 179, 152, 166,  46
	.byte	 50, 175,  10,  97,  70, 199, 149, 237, 147,  93, 157,  69, 162, 245, 174, 145
	.byte	 40, 199,  96, 115, 213,  50,  92, 207, 111,  82, 247,  27, 195,  80,  83, 204
	.byte	194, 198, 236, 128, 177,  22,  71,  74, 229, 194,  32,   2,  11,  64,  97, 146
	.byte	156, 120, 204, 159, 160, 199,  40, 176,  96, 248, 210, 182,  14, 115, 223,  34
	.byte	 56, 216, 124,  54, 164, 245,  93, 185, 232,  55,  51,   3,  19, 238,  80, 230
	.byte	 93, 168, 181, 191, 199, 198,  71, 159,  83, 138, 192, 173,  51, 190, 181,  38
	.byte	 24,  99,  50,  78, 104, 156,  62,  93, 155, 225,   3, 189, 226, 163,  94,  52
	.byte	 90, 119, 182, 148, 135, 222, 109, 186, 155,   6, 158, 165,  98, 121,  43,   9
	.byte	172,  29,   5, 117,  66,  85, 114, 235, 204, 105, 250, 200, 101,  38, 252, 137
	.byte	106, 103,  32, 148,  59,  17,  81, 136,  57, 100, 168, 160,  15, 127,  40, 189
	.byte	246, 198, 233, 159, 179, 107,  91, 204,  97, 191, 211, 133, 217,  32, 150,  43
	.byte	255,  27, 164, 156,  69, 143, 119, 164,  25, 242, 252, 217, 210, 122, 137, 220
	.byte	226, 202,  69, 227,  30,  60, 213, 230, 171, 251, 227, 104,  93,  57, 221, 240
	.byte	173, 113,   0, 251, 105, 146, 236, 185, 128,  84,  45, 126, 118, 122,  80,  15
	.byte	102, 216,  62, 131, 152, 194, 223,  10, 180, 185, 197,  65,  22, 154, 120,   4
	.byte	 53, 149, 242, 100,  42, 238, 223,  90, 180,  17, 186, 199, 169, 162, 149,  87
	.byte	198, 194,  72, 236, 195,  70,  75, 215, 125,  91, 243, 107, 177,  46, 206, 179
	.byte	213, 197, 181,  97, 248, 164, 210, 113, 119,  60, 145, 170, 238,  53,  96, 196
	.byte	206, 206, 116,  61, 190, 192, 100, 238, 185, 203,  93,  31,   4,  58,  77, 248
	.byte	194, 221, 157,  28,  21, 196, 123,  11,  64,  51, 139, 191,  61,  74,  68, 164
	.byte	  2, 166, 151, 250, 152, 245, 176,  90,  11,   6, 146, 172,  64, 251, 176, 226
	.byte	 74,   7, 152, 221, 192, 243,  54, 118,  70, 164,  86, 103,   4, 173,  11, 125
	.byte	 94, 118,  76, 248,   2, 157, 147,  70, 163,  45, 105, 116, 214, 161, 209, 135
	.byte	239,  50,  36, 136, 109,  29,   6, 109,  53,  94, 151,  69, 183, 217,  24, 251
	.byte	212, 213,  30,  11,  99, 123,  86, 213,  40, 238, 147, 135, 227, 102, 214,  94
	.byte	201,  20,   1, 132,  25,  25, 171, 187, 229,  24,  19,  41, 181, 136, 249, 129
	.byte	100,  74, 233, 124, 180, 118, 103, 212, 115, 179,  87,  62,  54, 187, 101, 246
	.byte	  8,  16, 220,  94,  24, 107, 180, 185, 140,  14, 253, 188, 150, 129,  65,  82
	.byte	160, 184, 126, 123, 109,  38, 239,  30,  71, 240,  53,  15,  92, 153, 255, 237
	.byte	170, 211,  36, 221, 125, 241, 217,  11,  26,  92,  17,  88,  62, 181,  38, 212
	.byte	210,  52, 123,   9, 198,  65,  94,  49, 199, 211, 208, 183, 163, 214,  26,  59
	.byte	 78, 184, 130, 143,  11, 167, 180,  16,   3, 226, 206, 115, 196, 112,  69, 112
	.byte	 18,  39, 216, 252,  42, 110, 156,  43,  33,  22, 147, 198, 209,  20,  33,  49
	.byte	118, 225, 188, 199, 175,  64,  31, 214, 192, 251,  77,  60,  97,  98, 246, 224
	.byte	100,  53, 154,  12, 120, 220, 146, 243, 115,  47, 178, 113, 172, 233, 204,   6
	.byte	  9, 113,  86, 245,  29, 166, 108, 103, 108,  24, 128, 153, 136, 115,  87,   1
	.byte	 84,   9, 240, 144, 165, 129, 141, 222,   4, 230,  23,  64, 187, 110,  60, 224
	.byte	 59,  94, 253, 135,   0,  72,   2, 174,  79,  92, 160, 189,  84,  54, 207,  97
	.byte	 92, 104, 108,  66, 143, 173, 106,   4, 123, 209,  31,  17, 180,   5, 201, 126
	.byte	 58, 148, 146, 140,  89,   1,  66,  73,  12, 153, 249,  10,  77,  23,  86, 244
	.byte	 88,  93,  89,  85,   1, 210, 221,  29, 170,   3, 252,   2, 184,  49, 251, 152
	.byte	109, 115, 110,  57,  61, 177, 203, 202,  24, 248, 102, 222,   0, 252, 243, 148
	.byte	132, 229, 178, 232,  62, 202, 209, 216, 177,   3,  61, 202, 148, 138, 126, 176
	.byte	207,  35,  15, 252, 105, 245, 175, 179, 100, 101, 176,  95, 152, 200,   0,  72
	.byte	156, 182, 139, 184, 145, 161, 110, 123, 187, 125,  46, 138,  68,   4, 189, 179
	.byte	254,  51, 249, 196,  40,  74,  89, 190, 229, 136, 152, 151, 147, 236, 223, 110
	.byte	242,  71,  62, 141,  30, 203, 174,  25, 132,  56, 248,  64, 220, 134, 115, 232
	.byte	127, 174,  37, 165, 210, 177, 194, 128, 131, 168,  92, 223,  87, 133, 211, 204
	.byte	 84, 200, 242, 109,  58, 209, 121, 195, 197, 225,   6,  16, 122, 183,  22, 160
	.byte	244, 222,  54,  72,  52, 195, 250, 190,  93, 184, 215,  14, 233, 113,  70, 247
	.byte	222,  64, 110, 150, 233, 255, 119, 232,  78, 155, 108, 126, 147, 229,  38,  10
	.byte	 94, 103,  23, 118, 179,  16,  21,  10,  23, 112, 198,  64,  33,  65,   9, 228
	.byte	204,  66, 230,  98,  27,   6,  45, 169, 113, 189, 250,  23, 109, 185,  34,  42
	.byte	110, 174, 243, 114, 236, 118, 245,  51, 148,  16, 109,   9,  18,  28, 219, 210
	.byte	104,  50,  98, 217, 199,  41, 214,  21, 129, 160,  27,  47,  29,  14,  84,  70
	.byte	166,  83, 196,  89, 100, 134,  50, 182, 107,   1, 209, 136,   6, 194,  15, 225
	.byte	144,  30,  36, 247, 184,  60, 238, 168,  34, 171, 101,  25, 204, 116, 125, 109
	.byte	227,  65,  63,  55, 121, 209, 145, 244, 235, 103, 163,  31, 167,  58,   2, 197
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	128, 232,  65,  53, 249, 240, 224, 254, 209, 232,  13, 128, 245, 233, 124, 106
	.byte	  7, 127, 139, 161, 178, 105,  10, 131, 200, 174,  73,  81,  45, 162,  55,  53
	.byte	 50,  28, 230,  30, 223,  43,  27,  94,  36,  85,  44, 111, 182, 227, 161, 160
	.byte	 88, 188, 235, 128, 241, 236, 144,   7,  25, 169, 117,   5,  10, 134, 208,  48
	.byte	186,  45, 145, 179,  71, 208,  92,  56, 131,  90, 192, 143, 216, 155, 137, 247
	.byte	152, 245, 149, 142,  60, 149, 218, 187, 105, 130, 222,  94, 245,  56,  56,  81
	.byte	234,  79,  29,  15,  52, 127,  50, 200, 129,  81, 165, 129, 169, 233, 247,  57
	.byte	192, 244,  38, 187, 184,  14, 251,   4,   7,  27, 251, 199, 239,  35, 214,  31
	.byte	  6,  50, 234,  37, 253, 118,   9, 179, 140,  78, 226, 196,  14,  63, 176,  71
	.byte	 48,  55, 123, 195,   6,  48, 114,  92,  54,  92, 203, 184, 200,  64,  73, 105
	.byte	132,  69,  26,  40, 243,   2, 203, 240, 172,   6,  26, 234,  65, 202,  82,  29
	.byte	 34, 215, 105, 189, 253,  55,  60,  82,  77,  63, 131, 144, 100, 168,  89, 118
	.byte	228,  39, 156,   5, 244,  74, 213,  41,   0,  49, 212,  31,  71, 197,  74,  66
	.byte	 11,  45, 109, 253, 187, 224,  27, 200,  44, 220, 229, 101,  93, 232, 247, 185
	.byte	212, 235, 111,  41,   7, 145,   8, 147, 123,  55, 172, 198, 128,  96, 225,  70
	.byte	138,  62,  17,  87,  13, 141,  60, 113, 119, 186,   0,  38,  16,  82, 140, 208
	.byte	202,  56,  19, 245,  75, 210, 107, 142,  66, 233,   3,  52, 116,  18,  62,  11
	.byte	185,  28, 203,  54, 185,  13, 137, 125, 109, 169, 107, 197, 198, 131, 178,   3
	.byte	238, 242, 201,  31,  96, 133,  72, 248,  36, 144,  94,   7,   2, 144, 111, 111
	.byte	 86,  57,  36, 233,  92,   0, 217,  54, 189,  82,   6, 145, 152, 118, 180, 230
	.byte	 78, 157, 246, 152,  43, 217,  13, 227, 127, 132,   6, 224,  39, 109,  54, 237
	.byte	129,   2, 243, 214,  66,  71,  25, 100, 207, 120, 153,  61, 172, 223, 224,  41
	.byte	 46, 189,  40,  74, 228, 182,  40, 233, 160, 124, 236,  67, 252,  90, 200, 145
	.byte	109, 174,  35, 136,  96, 134, 208, 215,  33, 192, 228,  92, 214,   3, 125, 170
	.byte	124, 220, 106, 202, 167, 162,  25, 110,  93,  58, 125, 108, 196, 157, 132,   8
	.byte	 43,  30,  33, 159, 160,  17,  10, 182, 150, 165,  90, 175, 113,  97, 199,  15
	.byte	  0,  27,  74, 190, 220, 145, 141, 128,  73, 241,  94, 195, 206, 251,  77,  89
	.byte	 60,  11, 172,  77,  80, 218,  58, 151, 154, 171,  24, 213,  49,   3, 240,  28
	.byte	108, 193,   1, 170, 118, 234, 175, 129,  62,  73, 151,  47,  31, 199, 207,   5
	.byte	226, 132,  98, 201,  19, 167, 242, 201, 229, 219, 206,   1,  75, 145, 219,  25
	.byte	206,  27,  12, 215, 165, 219,  21,  52, 183,  48, 169,  38,  16,  28, 224, 147
	.byte	225, 111, 228, 205, 118, 142, 225, 150,  58,  69, 246, 208,  50, 184, 245, 155
	.byte	 38, 244, 115,  65,  45, 121,  23, 176, 195, 214,  32,   2,  62,  59,  30,  91
	.byte	  1, 234,   2, 134, 219,  89, 233, 113, 190,  41, 211, 237,  68, 183, 177,  73
	.byte	 88, 153, 192,  65, 243,  40, 213, 150, 254, 154, 193, 147, 216, 111,  74, 210
	.byte	112, 114,  39, 108, 160, 235, 156, 162, 231,  11, 101, 222, 239, 178,  73, 220
	.byte	 30,  53,  68, 140, 152, 187,   3, 227, 201, 139, 140, 196, 111, 199,  26, 181
	.byte	140,  35, 190,  16, 196, 195, 106, 202,  75,  62, 192, 144,  60, 143, 254,  52
	.byte	 34, 162, 128, 171, 172, 168, 189,  18,  18,  17, 232,  84,  99,  88, 236, 203
	.byte	211, 201, 134,  46, 194,  55,  84, 146, 212, 244, 228,  94, 211,  61, 115,  68
	.byte	108,  51, 112, 150,  26, 233,   2, 148, 155, 212,  34, 141, 200, 142, 190,  81
	.byte	 86,  81, 181,  18, 182,  75, 201, 141, 241,  87,  65, 255,  62, 159,  76,  19
	.byte	192, 220,   3, 153, 174, 253, 119, 252, 195, 131,  62, 137, 160, 100, 255, 235
	.byte	168, 100,  91,  70,  34,  64,  94,  65,  56, 225, 152, 103,  27, 189,  39,   4
	.byte	204,   2,  14,  56,  46, 138, 194,  35,  70, 130, 122, 230,  17,  83, 143, 180
	.byte	 75, 220, 161, 134, 142,  91, 247,  19,  16, 184, 243,  11, 199, 194, 115, 207
	.byte	194, 200, 202,  78, 242, 219,  69, 107,  14, 224, 176,  18, 186, 217, 103, 130
	.byte	187,  89,  82,  66,  28,  36, 208, 180, 147, 216, 178,  20,  56,  26,   5, 134
	.byte	 98, 218, 171, 241,  93,  34, 133, 241, 108,  85, 149,  55,  59, 198, 190,  66
	.byte	 60,  20,  37,  91, 185, 156, 219,  89,  96,  23, 129,  40,  24,  29, 191, 116
	.byte	  2,  28,  40, 184,  95,  29,  98,  17, 175,  17, 231, 250,  76, 250, 253,  11
	.byte	137, 111,  72, 146,  34, 133, 209,  90, 224, 174, 224,  63,  95,  40, 208,  49
	.byte	 42,  35, 129, 248, 245, 162,  91,  15, 183, 217,  68, 253, 102, 247, 255, 126
	.byte	228, 240,  64, 115,  61,  21,  79, 172, 160,   5, 130, 160,  32,  23, 169, 146
	.byte	152,  25, 233, 167, 136, 209,  38,  82, 210, 222,  72, 226, 127,  89, 235, 105
	.byte	126, 167,  95,  89,  61, 201,  58, 220, 111, 194,  65, 113,  74, 240,  84, 248
	.byte	110, 179, 110, 103,  92,  51, 167, 125, 243, 175, 146,  71, 233, 159, 162, 218
	.byte	 27, 205, 166,  47,   6, 118, 129,  78,  64, 151, 200, 202, 229, 199,  40, 150
	.byte	 88, 154, 184,  68, 116, 102, 188, 103, 241,  19, 190, 118, 203,  95, 136, 135
	.byte	184,  79, 214, 124,  36, 135, 160, 122, 104, 253,  88, 194, 187,  65,  57, 137
	.byte	 20,   7,  50, 130,  49, 177, 122, 238, 180, 163,   5, 183,   7, 254, 255, 120
	.byte	240, 249, 239, 101, 204,  72, 149, 207, 204,  75,  24, 241, 169, 148, 243,  79
	.byte	238,  10, 156, 116, 163, 209, 141, 234, 248, 223, 168,  10,  11, 251,  47, 126
	.byte	160,  63,  52,  77, 182, 156,  90, 128, 224, 153, 148, 149, 164, 254,  65,  46
	.byte	162, 146, 237,  85, 236,  90, 240, 109, 151,   5,  46,  62, 124, 112, 153, 176
	.byte	112,   8, 194, 155, 179, 184, 244, 226, 244, 115, 228,  30, 151,  26,   6,  75
	.byte	104, 181,  76, 159, 100,  25,  60,  58,  16, 225, 186, 245, 121, 165, 164,  13
	.byte	129, 105, 247, 179,  10, 123, 158, 171, 174, 204, 133, 153,  39, 161,   1, 167
	.byte	 54, 138,  76, 233, 254, 211, 206, 154,  80, 253, 158,  64,  62, 222,  95,  39
	.byte	173,   9,  99,  39,  34,  14,  67,  83, 230, 215, 239, 111,  13, 161, 203, 171
	.byte	192, 177, 118, 203,  71,   5, 225,  67,  63,  26,  25, 130, 183, 110,  62,  29
	.byte	  2,  70,  11, 215, 220, 219, 132, 220, 217,  50,  80,  30, 219, 242, 141, 205
	.byte	170, 242, 209,  95,   8,  37,   4,  65, 149, 151, 116, 122,  10, 182,  53,  52
	.byte	 78,   6, 229,   7,  63,  79,  56, 104, 122, 175, 198,  18, 195,  95, 145, 183
	.byte	116,  14,  73,  44, 144, 159,  49,  89, 171, 136, 229,  10, 250,  15, 130, 175
	.byte	126,  97,   3, 181,  41,  34,  32, 236, 227, 122,  62,   2,  40, 180,  45,  39
	.byte	 66, 169,  42, 150,  55,  21,  64, 137, 137, 191,  24, 108,  73,  31,  10, 252
	.byte	 88, 109,  76,   6, 139, 116, 220,  52, 135, 154,  18, 214, 245,  35, 202, 154
	.byte	150,  64, 212, 144,  47, 149,  24, 123,  29, 201, 204,  46, 123, 194, 145, 239
	.byte	161,  96,  87, 188, 169, 247, 189, 181,  19, 161,  53, 105, 223, 116,  28, 181
	.byte	180, 222, 129,  38, 214, 188, 102,  54, 152, 128,  11,  36,  18, 167,  47, 108
	.byte	195, 111,  18, 173,   9,  95,   2, 146, 146,  27,  51, 245, 139, 125,  95, 138
	.byte	212, 246, 101, 236, 190, 237, 147, 201, 178, 104, 109,  83, 133, 112, 203, 242
	.byte	202, 151, 237,  64,  68,  66, 106, 122, 218,  37, 186, 110,  88, 136, 135,  31
	.byte	 88,  77, 181, 125, 189, 206,  75,  95,   9,  55, 174, 239, 154, 225, 233, 208
	.byte	 14, 243,  99, 148,  39, 169, 110, 157, 170, 158, 155, 148,  47,  20, 108,  88
	.byte	242,  58, 206, 172, 232,  55, 220,  52,  49, 163, 242, 242, 126, 146, 240, 129
	.byte	212,  11,  99,  87, 158, 116, 241, 161,  11, 125, 192, 224,  80, 112,  66,  76
	.byte	118, 233, 129, 219, 224, 116, 195, 226, 162, 140,  10, 171, 130,  99, 237, 204
	.byte	 32,  89, 205, 101, 253, 241, 234, 131, 131, 182,  67, 101, 124, 120, 253,  81
	.byte	148, 129, 155, 157, 153,  92, 126, 108, 115,  33, 109,  88, 176, 183,   2,  42
	.byte	111,   5, 226, 247,  21,  39, 103, 199, 115, 177,  22, 126, 190, 169, 133, 195
	.byte	 66,  76,  82, 136,  98,  31, 171, 145,  59, 175,   2, 129,  67, 185,  81, 135
	.byte	 96,  42,  69, 214,  53,  51,  32, 152,  57,  99, 225,  82,  44, 231,  32, 111
	.byte	 80,  75,  97,  78, 153, 172, 226, 220,   4, 135,  71, 227,  93, 131,  69, 169
	.byte	233, 165,  34, 177,  79,   0, 253,  35,  37,  65, 127,   6,  20, 171, 106, 237
	.byte	110, 180, 118,  93,  49, 135, 225, 127, 229,  62,   2, 211, 240, 127, 250, 202
	.byte	239,  82, 198,  70, 105, 113, 237,  31, 109,  58,  72, 245,  10, 116,  89,  18
	.byte	 26,  72, 222, 108, 236, 200, 108,  57,  98, 202,  76, 249, 105, 168, 193,  49
	.byte	125,  64,  97, 143, 191,  53,  39, 170, 128,  97,  92, 206, 107,  76, 224,  22
	.byte	 68, 127, 127, 225,   3, 152,  40, 228,  85,  94, 176, 105, 220, 144, 212, 253
	.byte	166, 242,  24,  88, 154,   6, 114, 170, 126,  42, 193, 220, 224, 194,  56, 251
	.byte	 90, 220, 134, 247, 185,  85, 127, 166, 175, 141, 140,  26, 108, 205,  86, 179
	.byte	171, 231, 161,  60, 136, 154,  80, 246, 141, 216, 160, 206, 239, 225,  36,  21
	.byte	246,  83, 139, 111, 203, 112, 111, 133,  72, 114,  55, 112, 249,  34,  77, 164
	.byte	113,  13, 222,  71, 229,  31, 244,  49, 116, 122,  22, 248,  76,  61, 200, 148
	.byte	  0, 162, 135, 197, 228, 194,  88, 253,  78, 239, 127, 135,  15,  49,  42, 199
	.byte	214, 133, 169,  10,  81, 203,  37, 176, 147, 151, 187, 228, 183,   3, 211,  75
	.byte	174,  25, 216, 190,  48, 135, 132, 213, 175,  80,  80,  60,  24,   6,  60, 158
	.byte	172, 249,  98, 146,  52,  73, 178, 234, 233,  67,   8, 190,  30, 189, 111, 207
	.byte	 58, 157, 241, 175, 250, 222, 118, 129, 208, 248, 189, 234, 147, 150, 234,  48
	.byte	 55, 151, 108,  20,  52, 137,  91, 193, 199,  56, 235, 208,  22, 183,  69, 202
	.byte	 64, 241, 110,  89,  37, 165,  84,  29,  20, 129, 227, 173, 137,  71, 165, 119
	.byte	 60, 125,  94,  42, 152, 181, 246, 190,   4,  41, 108, 245, 185, 201,  73, 235
	.byte	 48,  33,  95,  14, 223, 217, 217, 233, 250, 208,  50, 224, 145, 178,  56, 203
	.byte	207,  69, 232,  56, 118,  29,  99, 154, 145, 119, 118, 204,  94, 209, 143,  30
	.byte	  8, 138,  86,  97, 174, 218, 112, 153, 253, 196, 205,  18, 127, 135, 161,  72
	.byte	116, 243, 217,  15, 129, 203, 254, 214, 166, 114,  61, 254,  36, 113, 185, 216
	.byte	136, 176,   2, 105,  30, 113, 229, 167,  60, 180, 102, 216, 162, 170, 195, 168
	.byte	 64, 205,   5, 147, 161, 250,  38,  23, 221, 225, 102,  81, 213,  27, 239,  66
	.byte	 14, 171, 151,  27, 137,  35, 218,  59, 224, 169,  91, 219, 188, 215,  96, 161
	.byte	111, 159, 126, 132,  90, 111,  11, 139, 252, 119,  66, 135,  78, 167, 241, 179
	.byte	 42, 228, 186,  12, 192, 144,  17, 179, 129, 214, 156, 159, 192,  83,  75,  21
	.byte	 85, 222,   3,  52, 138,  58,  38, 130,  26,  55, 156,  67, 212,  40,  94, 103
	.byte	214, 198, 235,  36, 161,   5, 209, 232,  66, 188,   3, 143, 185,  44, 242, 204
	.byte	149,   8, 181,  75, 181, 213, 229, 170,  95, 104, 218, 224,  92,  86, 184,  17
	.byte	 36,  75, 196,  61,  22, 120,  45,  43, 143, 180, 249, 255, 111,  45, 136,  10
	.byte	 92, 226, 125,  26, 218, 133,  96, 203, 101,  76, 185,  57, 246,  41, 100,  29
	.byte	210, 117, 149,   4,  26,  91,  40, 223, 127, 152,  81, 204,  83,  35, 150, 117
	.byte	137, 186,  35,   9, 114,  84,  28, 140, 131,  87, 136, 253, 207, 111, 158, 182
	.byte	218,  25,  48, 144, 123, 250, 130, 183,  15,  60, 234,  94, 102, 101,  37, 163
	.byte	 33, 234, 233,   9, 140, 100, 163, 241, 207,  89, 162,  51, 231,   2,  30, 215
	.byte	196, 252,  92,  51, 125, 111, 142,  14, 150, 228, 248,   5,   4, 163,  87,  45
	.byte	 96, 249, 221, 239,  72,  83,  48, 227, 229, 177,  35, 129, 130,  13,  63,  33
	.byte	170, 145, 146,  93,  62, 208, 171, 190,  67, 229,  45, 163, 191,  12,  93, 136
	.byte	212,  41, 125, 244, 221, 200, 232, 130,  65, 228, 129, 173,  62, 153, 182,  92
	.byte	130,  10,  11,  42, 118, 157,  44, 207, 217,  14,   9,   1, 194, 253,  17, 181
	.byte	225,  58, 208, 211, 125,  77, 105,  20, 194, 144, 248, 145,  45, 102, 111, 186
	.byte	 60, 249, 170,  14, 170, 157,  97,  53, 219,  61, 203,  72, 124, 146, 207,  45
	.byte	177, 131,  18,  81, 235, 123, 162,   5,  75, 203, 151,   5,  60,  97, 143, 126
	.byte	100, 182,  71,  91, 171, 106, 141,  25, 227, 157, 230,  67, 228,  76,  53, 230
	.byte	198, 167,  93,  63, 149,  20, 151,  66, 215, 198, 124, 232,  39, 110, 219,  88
	.byte	104, 135, 108,  28, 219,   5,  23,   7, 181, 219,  20, 202,  74, 236, 212, 171
	.byte	 70,  43, 250,  22, 167, 206, 198, 198, 198,  32, 162, 249,  19,  83, 155, 197
	.byte	178,  66, 218,  55, 107,  78,  43,   0, 236, 197, 225, 193, 211,  60,  43,   4
	.byte	245, 206, 220,  35, 255,  82, 214, 232,   8, 238, 238, 132, 172, 168, 183, 131
	.byte	 32, 195, 113, 110, 125, 249,  22,  49, 161,  35,  72, 148,  96,  33, 134, 201
	.byte	249, 114, 110, 162,   8,  27,  39,  91, 152, 116, 119, 140, 115,  39,  99,  31
	.byte	 44,  95,  13, 216, 129,  52, 166, 157, 240, 212,  62, 142, 232, 132,  72, 224
	.byte	 91, 169, 252, 123, 189, 117,   8,  40, 120, 119, 186, 186, 140,  29, 186, 253
	.byte	130, 113, 109,  42,  55, 157,  40, 234, 213, 115,  87,  59, 104, 222,  23, 197
	.byte	127, 120, 114, 176,  86,  44,  18, 144,  93, 107,  24, 152, 138,  57, 165, 249
	.byte	 88,  42,  90,  73, 232, 160, 141, 214, 206, 240, 222, 235, 205,  83, 192, 216
	.byte	251,  33,  10, 159, 170, 144,   2, 175, 134,  58, 189, 105, 217, 116,   6, 210
	.byte	254, 115,  85, 248,  58,  62, 232, 242, 215,  37, 137,  28, 118, 205, 179, 191
	.byte	 43, 180,  61,  38, 225, 171,  90, 219,  91,  31, 252, 198, 232, 208,  12, 132
	.byte	 54, 158, 102,  66,   2, 174,  86,   4,  83, 135,  53,  92, 105, 136, 217, 170
	.byte	 29, 228,  11,  16,  24, 125,  53, 228, 143, 194, 217, 211, 201,   4,  81, 149
	.byte	  0, 158,  43, 209, 210, 173, 173, 131,   1, 186, 229, 198,  78, 155, 130,  77
	.byte	196,  86, 236, 170,  83, 222,  83,  95, 191, 240, 243, 232, 138, 152,  60, 176
	.byte	 18, 179,  43, 219, 221,  76, 165, 121, 213, 240, 205, 146,  57,  65, 138, 159
	.byte	179,  50, 156,  89,  39, 128, 216,  30, 250, 123,  50, 105, 179, 232, 206,  32
	.byte	210, 234, 144, 214, 252, 107,  35,  45, 102, 224,   9, 184, 132, 253,  72, 198
	.byte	117, 199, 128, 182, 135, 225,  85, 187,  71, 188,  84, 201, 159, 142, 177, 196
	.byte	134,  44,  73, 198, 217, 178, 234, 147, 102, 194,  23, 192, 121, 203, 152,  22
	.byte	168,  16, 226, 120,  79, 232,  96,  78,  96, 240, 187,  40, 209, 107,   8, 221
	.byte	 50, 196, 140,   8,  20, 135, 189,  56, 144, 226, 219, 193, 130, 220, 254,  42
	.byte	104,  59, 165,  66, 151, 128, 243, 122, 203,  87, 178, 123,  21, 105, 114, 251
	.byte	148, 242, 226,  95, 110,  43, 149,  17, 135, 122, 143, 151, 215, 163, 182,  88
	.byte	243,  71, 247, 239,  26,  68, 111, 158, 207, 247,  73, 131, 236, 102,  24, 213
	.byte	184,  72, 174, 172,  92, 178, 243, 136,  39, 109, 194,  59,  33, 126,  87, 218
	.byte	127,  75, 122, 143, 139, 131,  24,  35, 223,  39,  52,  66, 221, 127, 226,   7
	.byte	138, 219, 222, 181,  21,  53,  55, 118, 118,  57, 138, 186,  73,  97,  81,  97
	.byte	 87, 143,  29,  69, 150, 156, 147, 161,  45, 163, 248, 100,  79, 194, 250,  10
	.byte	190,  16,  86, 170, 185,  70, 207,  85, 241, 207, 227,  71, 155, 108, 139,  75
	.byte	 93, 119,  85, 227, 222,  66, 139, 110,  50,  81, 182, 147, 142, 155, 151,  76
	.byte	134, 186, 137,  72, 112,  71,  13, 102,  41, 112,  31,  49,  99,  37,  79, 179
	.byte	146, 185,  87, 128, 139,  96,  91, 143, 222,   1,  23, 159, 252,  45, 145, 103
	.byte	198, 147,  21, 195, 156, 126,   1, 112, 170,  54, 201, 149, 210, 242, 192,  27
	.byte	198, 217, 226, 177,   4,  65,  43,  16,  64,  21, 152, 139,  78, 201, 250,  57
	.byte	104, 206,  29, 239,  58, 221, 187, 162,  76, 159, 154,  87, 170,  94, 214, 131
	.byte	234, 128, 250, 190,  22, 103, 164,   7, 187, 139,   9,  92,  68, 212, 227,  58
	.byte	102,  92, 124,  76, 106,  82, 139,  13, 133,  26, 217,  57,  83,  68, 219, 165
	.byte	122, 186, 155, 124, 158, 132, 197, 119,  20, 185, 164, 144, 210, 157, 242, 120
	.byte	254,  63,  45, 139, 216, 119,  83, 124,  43, 242, 247,  54,  44, 184, 232, 236
	.byte	117, 154,  27, 109, 173,  21, 223, 179, 181, 132,  18, 253, 138, 211, 193, 184
	.byte	186, 156, 149, 170,  36, 212,  59, 102,  43,  44, 169,  48, 196, 134, 197,  50
	.byte	  0,  68, 206, 164, 139,  67, 154,  17, 144, 218,  86, 157,  39,  16, 144,  76
	.byte	110, 163, 191, 121,   1, 122, 253, 217,  16, 246,  75,  21, 177,  87, 187, 128
	.byte	  7, 229,  51,   3, 137,   8, 115, 249,  55,   7,  79, 181,  74,  37,   6,  55
	.byte	142, 250, 184, 226, 244,  48,  88, 215,  62, 221, 244, 142, 220, 159, 124,  51
	.byte	114, 188, 199, 157, 201,  68,  64, 133, 242, 209,  15, 101, 109,  21, 109,  27
	.byte	 14, 146, 188,  54, 110, 241,  74, 250, 135,   0, 135, 188, 150,  48,  26,  15
	.byte	188, 188, 138, 161, 197,  89,  38, 131,   8, 204, 188, 229, 252, 202, 240,  29
	.byte	166,  68, 214,   3,  80, 231, 176,   7, 100, 243,  68, 163,  46,  12,  19, 116
	.byte	173,  82,  85, 124,  49, 245, 175,  51, 107,  52, 107, 229, 188, 165,  15,  35
	.byte	 46, 105, 255, 254,  28, 193, 212, 151, 191, 245, 219, 183, 110, 198,  30, 110
	.byte	113, 103,  89, 181, 218,  20,  58,  67, 220, 244, 148,  61, 169, 192, 215, 138
	.byte	 32, 148, 156, 222, 189, 137,   3, 199, 198,   1, 128,  95,  44, 229, 111, 168
	.byte	 40,  42, 104, 211,  86, 108, 248, 100, 157, 128, 165,  99,  54, 252,  13,  64
	.byte	130, 227,  17, 133,  17, 129,  64,  88, 102,   2, 177, 185, 231, 222, 162, 142
	.byte	 82,  64, 155, 205,  84, 209, 150,  27, 193, 169, 249,  47,  81, 143,  96,  96
	.byte	158, 205,   0, 112, 178, 200,  13, 129, 173, 168, 233, 112, 158, 137, 211,   0
	.byte	  0,  33, 168,  28, 112,  35, 238,  60, 123,  61,  11,  15, 108, 177, 168,  56
	.byte	 34, 166, 125, 110,  93,  98, 138,  92, 108, 131, 124, 227,  68, 201, 147,  61
	.byte	145, 163, 122, 137,   2, 163,   7, 146, 218,   5, 197,  56, 253, 250,  41, 161
	.byte	 96,  43, 178, 210, 146,  40, 116,  10, 188, 103,   2,  30, 153, 149, 155, 240
	.byte	234,  83,   4,  99, 179, 135,  34, 107, 199,   0, 185, 214, 102, 105, 195, 254
	.byte	 50,  80,  71,   6,  58, 238, 212, 159, 164,  39, 209, 212,  52, 246, 155,  18
	.byte	  3,  47, 137,   9, 225, 192,  65,  97,  40, 133,  64, 190,  99,  53, 242,  49
	.byte	210, 195, 113, 114, 224, 133, 186,  89, 169, 183, 132, 189, 121, 239, 194, 172
	.byte	 53, 187, 176, 211,  74,  71, 228, 191, 252, 195,   6, 152,  48, 173,   9,   8
	.byte	232, 229,   7, 143, 149, 250, 177,  28,  45, 174, 114, 206,  22, 206,  55, 151
	.byte	149,  19, 183, 217, 186, 160,  89, 124, 223,   0,  15, 195,  91, 159,  76,  21
	.byte	188, 127, 162,  51,  57, 133, 139, 189,  42, 166,  37, 123, 182, 254, 232,  46
	.byte	238, 181, 138,   7,  25,  87, 234, 230, 162, 119, 185, 154, 198, 225, 213,  24
	.byte	 30, 175, 214, 157,   2, 177, 214, 189, 126, 145,   1, 218,  13,  54, 161, 254
	.byte	200, 192, 246, 219, 227,  77,  28,  81, 252,  96, 125,  62, 217,  21, 255, 114
	.byte	110,  47,  30,  41,  17, 240,  31, 100,  55, 168,  69,  67,  83,  76,  79,  41
	.byte	 18, 139, 158, 192,  80, 171, 249,  91, 187,  92, 140, 181,  70, 196,  59, 149
	.byte	 98, 155, 138, 129,  32,  11,   7,  55, 243,  66, 121, 217, 174, 246, 181,  48
	.byte	226, 243,   7,  53,  79,  40, 249, 224, 138, 105,  13, 240,  66, 170,  37, 184
	.byte	 22,  35,  97, 247, 157, 226, 181,  85, 139, 230,  23, 199, 189,  82, 111,  44
	.byte	228,   1,  75, 160, 201, 161,  44, 248,  83, 219,  72,  40,  61,  14, 197, 171
	.byte	 32, 124,  26, 244, 123,   3, 184, 177, 107, 147,  26, 147, 115, 224,  65,  95
	.byte	180, 104, 113,  47, 207, 240, 188,   0, 251, 113, 196, 242, 100, 222, 179,  45
	.byte	172, 215,   3,  62, 235, 220, 227, 113, 153, 114,  95,   9,  46, 108, 105, 161
	.byte	105,  46, 105,  77,  19, 253, 137, 139,  92, 171,  31, 169, 240,  46, 213, 232
	.byte	 72, 198, 186,  27, 130, 205,  17, 220, 131,  12, 180,   1,  71,  39,  95, 147
	.byte	147, 246, 186,  45,  13, 197, 214, 127,  99,  53, 210, 214, 249,  77, 220,  71
	.byte	200, 105, 193,  48, 116, 169, 158,  93, 223, 130,  55, 158, 104, 245, 163, 104
	.byte	180, 238,  65, 100, 210, 115, 157, 144, 110, 183,  95,  55, 101, 192, 246,  18
	.byte	156, 166,  91,  45, 241, 223, 165,   8, 248,  32, 133, 194, 244, 173, 120, 223
	.byte	249, 143, 162, 228, 179,  84, 208,   3, 112, 133, 247,  47, 186,  96,  19, 134
	.byte	206,  75,  90,  23, 206, 231,  28, 171,  53, 157,  68, 129, 251, 244,  56, 183
	.byte	240,  25,  79, 147,  56,   2, 248, 169, 214, 176, 131,  12, 225, 253, 137, 206
	.byte	144,  62, 198, 134, 229, 172, 156, 166, 230, 147,  13,  82,  10,  49, 201,  45
	.byte	232, 226,  95, 141,  14,  20, 237, 206, 115, 103,  83, 181, 219, 114, 254,  52
	.byte	186,  39, 124, 195, 122,  21, 170,  54, 219, 241, 149,  54, 245,  48,  64, 201
	.byte	162,  57, 154,  71, 235,   6,  63,  19,  16, 156,   0,   2,  79,  49,  82, 176
	.byte	 88,  97,   1,  35, 176,  42, 107, 246,  10, 209, 169, 166,  19, 252, 242,  19
	.byte	 82, 120, 249, 211, 151, 236, 253, 150, 158,  88, 125,  81,  29,  11,  69, 121
	.byte	202, 127, 224, 143, 198,  42,  52, 165, 120, 223, 246,  81, 182,  39, 143,  28
	.byte	246, 152, 155,  70,  83, 129,  16, 186,  96,  96,   6, 159, 118, 219, 172, 242
	.byte	130,  30, 152,  41, 213, 223, 244, 181, 155, 119, 201, 172, 104, 159, 248, 232
	.byte	 42,  24,  84, 146, 103, 111,  44, 238, 218,  58, 120, 235,  37,  54,  50, 146
	.byte	168, 110,  29,  87, 231, 204,  90,  66,  94, 208, 239,   6, 181, 155, 174,  61
	.byte	 38,  25, 219,  20,  83, 115, 220, 208, 237, 232,   8,   1,  16, 178, 173,  83
	.byte	 76, 175,  95,  66, 111, 209,  87, 208,  92, 198, 160, 185, 169, 133, 102, 173
	.byte	 86,  16, 116, 239, 110,  70, 116,  79,  31, 208,  61,  92, 244,   7,  68, 248
	.byte	162,  15, 192, 107, 136,   6, 127, 183,  76, 120, 166, 212,  89, 183, 205, 156
	.byte	130,  70,  26, 247,  80,  68,  70, 246,  47,  29,  56,  44, 104, 234,  95, 158
	.byte	238, 205,  23, 146,  93,  61, 109, 252, 225,  47,  94,  64, 245,  21,  95,  17
	.byte	  0,  22, 195,  82, 140, 148, 191, 102,  31,   2,   1, 238, 160,  13, 132,  27
	.byte	178, 210, 254, 168,  87, 145,  55,  58, 193, 186,  78,  68, 108,  71, 244, 174
	.byte	167, 155,  33, 213,  91, 168, 132, 140, 156, 163, 188, 117, 133, 233, 200, 214
	.byte	 76, 229,  22, 208, 143,  33, 164, 103, 111,   3,  20, 246,  98,  62,  79,  75
	.byte	 53, 129, 147,  53, 171,  14, 155,  28,  35, 244,   3,  85,  21,  37,   2,   2
	.byte	106, 100, 240, 182, 246, 167,   8,  31, 231,  71, 110, 226, 164,   9,  13,  77
	.byte	234,  46,  59,  75,  74,  45, 190,  29,  27,  92, 116,  66,  36, 124, 222,  85
	.byte	130, 178, 178,  67, 107, 226, 178, 197,  41, 170,  56, 159,  97, 110,  87, 239
	.byte	113, 124, 178,   1, 219, 123,  47, 183, 122,  47, 180, 230,  97, 240, 133, 253
	.byte	248,  72,  18, 240,   9, 132, 156, 240, 114,  79,  66,  41,   8, 138, 164, 179
	.byte	174,  94,   8, 155,  14, 246,  37, 243, 120,  17, 151, 183,  71, 182, 169,  47
	.byte	 20, 159,  90, 173, 129,   1, 152,   9,  79, 188,  98, 168,  97, 110, 244,  15
	.byte	116,  79, 130,  22,  51,   1,  31,  98, 230, 157, 190, 160,  76, 139,  24, 225
	.byte	220, 133, 103, 101,  44, 108,  89,  85, 165, 219, 189, 206, 224,  92, 203, 233
	.byte	 23, 118, 183,  59, 119, 207,  32,  94, 171, 216, 166, 219,  88, 185, 151,  68
	.byte	126,  53, 167,  57, 243, 244, 145, 200, 175,  16,  30, 231,   1,   8, 102, 128
	.byte	239, 124,  86, 218, 226, 190, 101, 242,  68, 136, 121, 141,  33,  22,  22, 168
	.byte	228, 121, 158,  22, 163, 212, 239,  76, 233, 211,   9, 106, 154,  31, 182, 131
	.byte	 21, 102, 221, 191, 167, 173, 231, 238,  22, 196, 196, 221, 204,  19,  93,  12
	.byte	162,  97, 125, 158, 255,  96,  43, 136, 111,  95,   6, 244, 140, 185, 142, 126
	.byte	118, 231,  52, 126, 237, 191, 119, 131, 165,  70, 111, 246,   1,  11,  85,  29
	.byte	 32, 232,  34, 154, 244,  71, 155,  93, 210, 143, 151, 141, 255,  24, 161, 198
	.byte	147, 202,  78, 180, 210, 224, 181, 228, 217, 250,  56, 154, 242, 158,  70, 100
	.byte	182,  28,  99,  67,   5, 214, 152,  74,  68, 210, 167, 175, 233, 221, 106, 161
	.byte	 79, 197,   4, 209, 231, 119, 192,  94,  17, 201, 194,  46, 113, 165,  51, 195
	.byte	216, 214,  13, 199,  37, 149,  78, 213,  32, 182, 200,  49,  98,  53, 175, 178
	.byte	184, 204, 193,  17, 123, 190, 116, 216, 148,  90,  57, 151, 244, 120,  38,  34
	.byte	158,  45, 109,  37,   7, 123, 240, 100, 150, 120,  35, 113,  82,  41,  60,  71
	.byte	185,  14,  30, 251,   8, 130,  32,  66,  23, 139, 101, 167,  83, 189, 227, 146
	.byte	114, 144,  71, 171, 162, 107,  62, 170, 174, 175, 218, 138, 129, 173, 120,  98
	.byte	 98, 178,  79,  45, 155,  40, 176,  26,  81, 237,  90, 119, 143,  45, 183,  25
	.byte	 76, 192,  45,  57, 112, 114, 154, 176,  48, 238, 140,  27,  29,  68,  60, 116
	.byte	 81,  26,  34, 133, 103, 175,   5,  94,  56, 105,  41, 219, 234, 244,  17,  74
	.byte	248,  75, 242, 132, 138, 184,  45, 131,  91, 131,  73, 137,  35,  40,  87, 250
	.byte	 92, 109, 203,  64, 217, 186, 154, 243, 131, 241,  65, 119, 239, 107,  50,  22
	.byte	  8, 216, 116, 126, 155, 204, 234, 234, 114, 247, 105, 191, 236, 175, 206, 137
	.byte	 22, 192, 138, 236, 238,  12, 181, 185, 143, 244, 148, 178, 221, 245,  54,  94
	.byte	140,  46, 181,   9, 167,  43,  97, 232, 211, 227,  80, 160, 144,  86, 234, 126
	.byte	 87,   6, 202,  47, 124,   4,   2,  15,  74, 200,   5, 200, 151,  36, 129, 164
	.byte	 14, 221,  81, 140, 133, 241,  74,  84, 168, 123,  84, 228, 173,  58, 191, 202
	.byte	254, 243,  32,  63,  56, 108,   7, 164, 131, 225,  58, 164, 203, 112, 161, 137
	.byte	 58,   0, 184, 108, 181,  89,  59,  83,  37, 192, 226, 110, 152,  45,  20, 127
	.byte	118, 238, 167, 230, 223, 249, 111, 166,  50,  65, 100, 145, 139, 234, 166, 168
	.byte	 96, 128, 134,  39, 172, 120, 155, 229, 146, 136,  94, 116, 113, 191, 207, 193
	.byte	121,  12, 117,  23,  77, 177,  76,  21, 224,  39,  36,  96, 237, 182,  81,  72
	.byte	  4, 137,  69,  22, 130, 243, 201, 206, 118,  83, 191, 195,  16, 156, 122, 184
	.byte	 20,  99,  12,  24, 143,  61, 230, 123,  18, 198,  47, 241, 254,  93, 118, 148
	.byte	102,  71, 188,  81,  99, 179,  47,  18, 181, 200, 133, 118, 129, 231,  78, 226
	.byte	 52,  50,  53,  51,  94, 230, 227, 234, 125,  74, 100, 186,  24, 211, 147,  41
	.byte	206,  89, 106,  63,  66,  84, 250,  44, 105,  89,  29,  60, 239, 127,  47, 231
	.byte	246,   8, 201, 242, 200,  44, 170,  71, 193, 128,  88, 139,  54, 180, 177,  69
	.byte	136, 204, 172,  22, 253, 153,  48,  70, 216, 103,  42, 178,  77,  41,  93, 113
	.byte	146, 212,  48, 147,  41,   7,   7, 115, 153, 120, 212, 137, 219, 231,  95, 115
	.byte	198,  32, 109,  22, 187, 123,  83, 111,  77, 139,  73,  14,  59,  72,  95, 219
	.byte	 62, 120,  30, 203, 196, 180, 126,  86, 198, 190, 176, 200, 147,  26,  88,  54
	.byte	160, 167,  14,  89,  97, 219, 199, 189, 157,  35, 189, 148, 198,  98, 213, 233
	.byte	168,  20, 163, 132,  77, 219,   0, 190, 174, 109,  96, 172, 139,  33,  42, 104
	.byte	182,  50, 255, 231, 116, 183, 147,  66, 224, 106,  22, 142, 230,  47, 109,  30
	.byte	200,  13, 223, 183, 124,  72,  76, 249,  45, 156,  58,  70,  31, 162,  71, 146
	.byte	124, 242, 213,  95,  22, 186, 120, 130, 141, 132,  94, 233,  85, 252,  83,   7
	.byte	193,  30, 251, 196,  27, 233,  52, 174,  22, 246,  22, 163,  28,   6, 108,  68
	.byte	 38,  30, 115,  32, 193,  47, 102, 187, 237, 115, 225, 210, 129, 246, 206, 181
	.byte	 36, 184, 198,   6, 190, 116, 203,  13,   3, 181, 226,  48, 207, 230, 114, 245
	.byte	118, 212, 211, 204,  80, 221,  18, 175, 100, 208, 163, 254,   6, 191, 250,  53
	.byte	210, 118, 105, 148, 122,  64, 218, 222,  75,  66, 132, 197,  86, 165, 113, 169
	.byte	136,  15, 228, 221, 238,  60,   6, 246, 214, 223, 159, 128, 218, 208,  41, 244
	.byte	188, 223,  62, 195, 250,  13,  23, 160,  28,  80,  97, 193,  35, 205, 142, 102
	.byte	244, 215,  79,   7,  24,  23,  16, 184,  81, 116, 242,  63, 102, 141, 162,  60
	.byte	 45,  21, 109,  38,  77, 196, 182, 105, 168,  94,  23, 125,  37,  72,  95, 216
	.byte	162, 162,   1, 101, 144, 188, 179, 155, 152,  32, 181, 130, 100, 184, 243, 165
	.byte	101,  70, 184, 202, 224, 134,  46,  35, 207,  35, 179, 146, 201, 129,  59,  14
	.byte	 24, 154,  12, 159,  71, 119,  15,   8, 137,  82, 221,  42, 149, 152, 103, 130
	.byte	106, 165,  35, 222, 147, 182,  70, 219,  99,  92,  22, 251, 115, 132, 100, 217
	.byte	206, 158, 192,  61, 225, 114,  59, 223,   0, 118, 183, 207, 154,  10,  44, 246
	.byte	 13,  61, 224, 169, 193,  87,  62, 187, 192, 191, 121, 217,  49,  19, 197, 243
	.byte	186, 228, 193,  99,  34, 221,  57, 135, 155, 171, 249, 180, 185,   2,  59,  47
	.byte	239, 162, 162,  51, 152, 197, 102,  98,  42, 165,  61,  69, 110, 181, 232,  68
	.byte	218, 254,  73,  80, 184, 249,  12, 208, 147, 168,  50, 216, 244, 180,  64,  54
	.byte	126, 240, 173, 130,  86, 235, 125,  80, 121,  90, 123, 248,  56, 238, 146, 102
	.byte	212,  83,  18, 137, 223, 232, 209,  60,  23, 140, 144, 237, 188, 197, 134, 237
	.byte	123,  42, 231, 121,  78, 190,  33, 108, 203,  14,  45,  67, 144, 162, 111,  15
	.byte	208, 170,  37,   9, 161, 227,  46,  33, 236,  66, 142, 245,  85,  64,  93, 251
	.byte	 74, 158, 130, 129, 110, 244, 246, 183, 168, 240, 174,  54, 144, 226,  16, 215
	.byte	 74,  86,  64, 246, 156,  75, 235, 140, 237, 186, 103, 207,  77,  71,  80,  55
	.byte	  6,   3, 146,  63, 234,   8, 126, 173, 144,  44,  78,  78,  61,  54,  12, 201
	.byte	 14, 151,  40,  20,  39,  79, 253, 198, 252,   3, 155, 251, 153, 119, 163, 238
	.byte	 85, 140, 199,  27, 251, 252, 134, 138,  18,  51, 123,  25,  17, 188, 213, 110
	.byte	236, 136, 209, 215, 236, 234, 147,  14,  83, 130,  67, 165, 132,  69,  75,   5
	.byte	190, 149, 246, 211,  59,  10, 131, 166, 186, 247, 109, 231,  29,  46,  96, 197
	.byte	244, 177, 122,   4, 187, 192, 216, 128, 191, 114, 198, 120, 146, 242,   4,   2
	.byte	183,  57,  77,  77,   8, 162, 167,  17,  74,  84, 188, 164, 147, 233, 136,  40
	.byte	200,  43,  82, 156, 101,  30,  27,  85, 176, 116,  44, 147, 119, 216,  54, 129
	.byte	249,   3,  10,  69, 231, 105,  29,   8, 135,   6, 170, 149, 158, 205,  61,  79
	.byte	220, 229, 153,  17, 253,  67, 248, 126, 233, 200,  88, 179, 218, 172, 151, 255
	.byte	 21,  64, 100, 164,  94, 247, 226, 193, 134,  53, 101,  21, 207, 100, 218,  35
	.byte	184, 245,  75,  26, 141, 138, 155, 108,  84,  55,  10,  53, 251, 115, 107, 140
	.byte	192, 244,  71,  90, 171,  58, 255,  16, 188,  77, 173,  96, 246, 147, 117, 114
	.byte	198,  64, 214,  15, 204, 249,   7,  57,  72,  82,  21, 254,   6, 136,  45,  56
	.byte	112, 227, 243, 223, 195, 212,  98,  87, 140,  32,   6, 190,  34, 197,  10, 122
	.byte	192, 116, 110, 118, 145,   9, 130, 231, 131, 167, 189, 248, 158, 212, 208, 172
	.byte	 27, 252, 214,  90, 202, 176, 106, 227, 112,   8, 151, 193, 102, 100, 109, 226
	.byte	 36, 101, 222,  49,   0,  17, 162, 135, 157,  94, 243, 152,  11,  84,  44,  64
	.byte	 53,  20, 218,  54,   7, 173, 228,  80,  31, 164, 211, 119,  80,  81,  35,  84
	.byte	 90, 100,   9, 224, 230, 119,  16, 103, 172, 125, 228,  75,  55,  38, 242,  94
	.byte	 82, 228, 223, 196,  71, 125, 203, 121, 183, 147,   3, 164,  74, 211,  72, 219
	.byte	240, 149,  26, 213, 204,  40,  56, 226,  54, 100,  87, 209, 113, 254, 171, 227
	.byte	251, 208, 247,  80, 191, 245,  98, 160, 140, 163, 200, 215, 251,  31, 242, 196
	.byte	174, 173, 139, 221,  48,  38, 200, 136, 125, 155, 146,  50, 188, 121,   7, 104
	.byte	208,  97, 209,  47,  22, 241, 108, 220,  21, 107, 247, 251, 163,  49,  90,  20
	.byte	 96, 172,  87, 195,  95,  79, 158,  24, 206, 163,  15,  29, 253,  99,  32, 244
	.byte	252, 160,  47, 224, 174,  80, 249,  43,   9,  53,  66, 180, 247,  66, 124,   3
	.byte	116, 171, 221, 106,  98, 247,  50, 124,  11, 219,  41,  10, 197, 130, 223, 126
	.byte	  0,  80,  31,  81, 205,  73,  81,  83, 165,  27, 158, 152,  78, 146, 123,  22
	.byte	142, 152, 152, 220, 206,  48,  64,  58, 184,  70, 180, 100,   5,  28, 226, 235
	.byte	146,  57,  70, 201,  28,  93,  20,  60, 215,  78, 137, 202,  40, 197,  84, 248
	.byte	216, 238,   7,  31,  35, 199, 231, 242, 195, 208, 165, 124, 108, 226, 149, 100
	.byte	 92,  63,  47, 102,  70,   5, 105,  47,  22,  39, 238,  95, 133, 252,  35,  41
	.byte	168, 235, 191,  49, 159, 144,   6,  83,  81,  61,  97,  20, 209,   2, 123,  74
	.byte	 68,  95, 146, 159, 165, 177, 213,  83, 141, 163, 255, 132, 218, 136, 116,   4
	.byte	172,  25, 187,   5, 185, 129, 119, 109,  82, 201, 253,  29, 114, 131, 165,  96
	.byte	 64, 156,   2, 232, 145, 226, 178,  95,  92, 198, 132, 245, 202,  98,  94, 106
	.byte	 26,  89, 204, 179, 112, 161, 134,  75,  78, 241,  83, 193,  49,  91, 152,  26
	.byte	 19, 116, 251,  26, 149, 110, 137,  68,  88,  97,  92, 156, 192, 132, 209, 124
	.byte	 74, 220, 243, 157, 172, 168, 122, 180, 144, 203,  76,   7,  69, 107,  71,   4
	.byte	 50, 192,  20, 136, 226, 188,  38,   5, 236,  69, 224, 114, 157, 172, 149, 196
	.byte	182,  45,  80, 185,  29,  36, 220,   0,  52, 242, 154, 171,   1, 175, 178, 149
	.byte	 46,  61,  31, 202, 223, 122, 106, 139,  68,  87, 216,  62,  20, 249, 179,   2
	.byte	 22,  58, 162, 140,  42,  88,  77, 230, 102, 145, 195,  81,  64,  77, 247,  54
	.byte	 69,  22, 195, 233, 126, 188,  20,  86, 148, 146, 114,  71,  47,  63, 149, 191
	.byte	 22,  15, 205,  38,  37, 234,  99, 103, 188, 143, 148,  37, 174, 169, 214, 219
	.byte	157, 108,  77,  90, 233, 158,  64, 166, 111, 206, 233, 186, 243,  58, 105,  90
	.byte	162, 228,  20,  35, 163, 217, 253, 143, 219,  68, 235,  35, 143, 125,  79, 138
	.byte	 57,  30, 167,   5, 180,  58, 163,  61, 113, 196, 150, 209, 117,   6,  44, 153
	.byte	188, 151, 244,  77,  20, 251,  65,  15, 227,  35,  96, 123,  77, 152,  65,  59
	.byte	129, 183, 118,  19,  24, 227, 162, 181, 106,   6, 162, 188,  63, 255, 134,  79
	.byte	248,   2, 228,  26,  34, 116, 200,  45, 142, 146,  74, 126,   5, 165,   9, 244
	.byte	127,  11, 169,  21, 115, 121, 182,  10, 139,  27, 212,  34, 123, 104,  96,  17
	.byte	 34, 112, 135,  34, 250, 151, 229, 102,  27, 102,   1, 226,  16, 232, 211,  60
	.byte	231, 105, 185,  54, 150,  39,   0, 215,  67, 114, 219, 219, 117, 203, 247, 189
	.byte	 40, 163,  69,  19,  17, 179, 240, 199, 243,   7,  71, 153,  41, 185, 247,  60
	.byte	 27, 206, 220, 115, 112, 229,   8, 218, 123, 143, 193, 221,  43, 232,  86,  23
	.byte	 42,  35,  12, 184, 226, 196,  62, 179, 169,  23, 187, 220,  31, 204,  68, 177
	.byte	199, 155, 247, 105,   9,  36, 227, 223, 179, 191, 206, 212,  40, 150, 201, 179
	.byte	224, 112, 107, 231, 114, 224, 107,  54,   0, 194, 211, 247, 155,  49,  54, 223
	.byte	 32,  85, 240, 184, 119, 114,  54, 251, 246, 172, 171, 133, 112, 180, 213, 124
	.byte	218, 199, 154, 186,  56, 246,  75, 217, 193, 184, 221,  85, 147, 252, 228, 174
	.byte	 72, 148, 237, 242,  91, 187, 225,  40,  49, 159,  67, 247, 190, 201, 134,  91
	.byte	188, 245,  52,  15,  18, 148, 220, 229, 247,  82, 199,  43, 182, 225, 161, 215
	.byte	213,   8, 169, 201, 184, 212, 118,  66,  52,  70, 172,  69,  10, 249, 104,  56
	.byte	138, 255,  88, 213,  41,   4,  94, 111, 178, 107,  56,  52,  13,  87,   7, 125
	.byte	 34,  49, 244,  34,  93, 118, 105,  81,  66,  11, 103,  56,  94, 252, 246, 175
	.byte	 62,  56,  73,  74, 180, 137,  63, 168, 148, 223,  47,   3, 155,  44, 147,  41
	.byte	243,   7,  69,  67,  13, 242, 157, 155, 115,  97, 219,  54,  56, 193, 158,   0
	.byte	196, 143,  89, 207, 229, 136,  94, 177, 198,  64, 116,  15, 138, 128,  22,   2
	.byte	 60,   5,  89,  72,  21, 248,  11,  50,  60,  34, 196, 152, 169, 151, 181, 129
	.byte	180, 255, 158,  69,  62, 144, 112, 152, 233,  50, 180,  87,  61, 113, 125,  44
	.byte	171, 145, 235,  86, 214, 120,  50, 154, 108, 183,  36, 145,  10, 189, 189, 223
	.byte	188,  42,  87, 241,  14,  48,  86, 244,  10, 227,   6, 158, 218,  51,  60, 104
	.byte	 41,  24,  57, 160, 110, 173,  68,  20,  80, 130, 255, 212,  62, 149, 242, 234
	.byte	110,  89, 177, 174, 109, 124, 109,  90, 150,  45,  33,  92,   5, 157, 176, 245
	.byte	 31, 215, 236, 227,  68, 231,  42, 145, 159, 246, 190,  33, 112,  33,  45,  35
	.byte	 48, 240, 163,  71, 224, 116, 128, 131,  64, 200, 178,  22, 198,   3,  84,  49
	.byte	105, 180, 210, 218, 237,  24, 184, 139, 115, 116, 141, 252, 122, 204,  75, 128
	.byte	 48, 101, 120, 194, 197, 107, 154, 212, 153,   8, 236, 113, 231, 221,  38, 162
	.byte	114, 239, 194,  89,   5, 222,  79, 108,  17, 196,  61,  34, 118,  98, 104, 180
	.byte	 46, 247, 187, 104, 229,  73, 250, 181, 134, 205, 132, 144, 203, 169, 151, 236
	.byte	 66,  69, 104, 144,  50,  46, 190,  74, 167,  88, 235, 173, 104,   9, 138, 107
	.byte	  4,  22,  37, 225, 167,   5,  59,  21, 144, 125,  61, 247, 117, 221, 191, 104
	.byte	202, 127,  13, 130,  57, 116,  61, 188,  78, 113, 167, 232,  97, 195,  11, 214
	.byte	110, 139,  88,  46, 208, 156, 175, 127, 167,  54, 192, 240, 111, 185, 166, 107
	.byte	178, 246, 240, 152,  61, 139,  86,  97, 178,  63, 216, 193,  34, 205, 149,  26
	.byte	118, 213,  56, 141, 165, 101,  32,  94,  43, 107, 152, 123,  84, 138,  62, 174
	.byte	 52,  80, 114,  15,  35,  35, 251,  80,  19,  19, 167, 162, 143, 248, 192, 165
	.byte	104,  62, 245, 119,  16,  92, 117, 100, 168,  84, 160,   0, 229, 202,  37,  33
	.byte	152, 150, 115, 170, 190, 121, 166, 161,  28, 177, 182, 110,  77,  44, 117,   8
	.byte	146, 107,  82, 140,  72, 180, 121,  97, 189,  67,  79, 102,  28, 115, 213, 217
	.byte	 51,  25, 121, 129, 208,  81, 186, 192, 230, 243, 224, 182, 121,  21, 221,  53
	.byte	180,  23,  17,   6,  60, 109, 136, 219, 246,  69, 190, 195, 212, 142,  23,  64
	.byte	  9, 223, 185, 181, 107,  35, 177,  33, 242, 165, 222,  69,  58,  31, 141, 143
	.byte	 78, 187, 165,  14, 155,  39, 106, 243, 174, 221, 202, 134, 175, 131, 158,  35
	.byte	 71,  70, 222, 227,  43,  26, 161, 106, 139,  43, 184,  92,  78, 214,  39, 203
	.byte	102, 195,  77,  46, 116, 230,  47, 130,  52, 204,  32, 168, 241,  35, 200,  50
	.byte	245,  18, 212, 244, 216, 167, 252, 191,  53, 110, 179, 107, 111,  23,  59,  61
	.byte	180, 191,  79,   3, 116,  19, 155,  52, 212, 105,  68, 104, 218, 215, 185,  16
	.byte	 35,  80, 185, 254, 218, 248,  66,  87, 100, 153,  14,  15, 109, 161, 138, 251
	.byte	118,  79, 148, 224,  77, 119,   1, 202,  30, 205,  95, 234,  48, 121,  89,   4
	.byte	255,  16, 208, 124, 137,  88, 209,  18,  44, 108, 122,  90, 209,  64, 167,  25
	.byte	234, 236,  95, 244, 150, 128, 140, 133, 139,  69,  10,  23, 104,  79,  44, 138
	.byte	150, 250, 245, 233,  44, 149, 247, 117,  72, 220, 158, 184,  33,  39, 148, 102
	.byte	 46, 211,  69, 139, 214, 192,  51,  11, 220, 115, 192,  18,  91, 239, 215,  43
	.byte	216,  29, 173, 176, 147, 246, 155, 202, 245, 189,  22, 241, 215, 208,  42, 173
	.byte	244,  38, 195,  93, 131, 148, 243,  47, 224,  58,  80,  16, 152, 181,  56,  46
	.byte	205,  42,  57, 230, 107,  89,  10, 225, 163, 172,  83, 191, 176,  54,  17,  34
	.byte	 24, 139,  14, 218, 104, 239,  65,  79, 229, 189,   1,  74, 138, 186,  14, 124
	.byte	223, 205,  59,  87, 109,  16, 114,  93, 172,  85, 241, 196,   1, 247, 242, 129
	.byte	 86,  35, 179, 139, 187, 228, 234,  21, 253, 146,  51, 117,  25, 204, 108, 210
	.byte	135,  39, 238, 121,  82, 173, 218, 197, 118, 166, 230, 160,  95,  44, 195,  60
	.byte	114, 172, 173, 253, 229, 157, 144, 193, 242, 141,  82, 134,  13,  63, 245,   7
	.byte	184, 136, 145, 173,  88, 137, 133, 222, 248,  55,  33,  57, 183,  45, 169,  29
	.byte	 54,  12, 195,   8, 252,  18, 128, 192, 229,  47,   4,  99, 157, 107, 101,  20
	.byte	220,   2,  66, 246, 109,   0,  51, 220,  27, 146,  82,  83, 226,  80, 241,  95
	.byte	208,  48,  37, 179, 108,  11, 115,  58, 232, 223,  90,  85, 131,  83, 176, 232
	.byte	 52, 217, 247,  82, 183, 147,  28,  22,  69, 249,  18, 111, 105,   1, 146,  75
	.byte	  0, 183, 118, 200, 201, 222, 242,  21, 167, 137,  77, 207,  91, 177,  71,  29
	.byte	 22, 203,  15, 164, 195, 206, 128,  29, 235, 112, 125, 144,  73,  64,  70,  55
	.byte	222,  16, 101, 161,  19,  46, 107, 208,  11,   4, 218,  59, 160, 117,  86, 241
	.byte	204, 226,  17, 135,  58, 213, 186,  70,  73, 106,  17, 135,  21, 189, 112, 112
	.byte	156, 110,  19,  41,  54,  40, 166,  49,  22, 235, 185,  75,  90, 238,  47, 155
	.byte	153,  95, 166, 117, 169, 139,  12,  82,  26, 247, 201, 216, 242, 237, 222, 164
	.byte	 48, 143,  16, 140, 118,   5,  46, 243, 164,  85, 190,   2, 131, 147, 234, 233
	.byte	149, 143, 202, 207, 207,  36, 109,  96,  40, 214,  72, 108, 202,  72,  60,  15
	.byte	 10, 190, 138,  27, 131,  17,  39,  26, 235,  65,  30, 119, 121, 146, 205,  75
	.byte	  9, 196, 140, 111, 162, 208, 224,  42, 121,  57, 214,  22, 156,  17, 136, 222
	.byte	128, 105,  44, 252,   4, 131, 112,  78, 148, 131,  60,  26, 188, 219, 141, 143
	.byte	 56, 239,  77, 191,   7,  11,  21,  42,  91,  75,  78, 125,  45,  51,   1,  72
	.byte	122, 188, 223, 161,  36,  76, 140,  30, 189,  17, 218,  92, 153, 130, 161,   8
	.byte	 45, 232,  42, 127, 159, 131, 189, 230, 126, 140, 234, 204, 170,  37, 124, 162
	.byte	196, 250,   8, 244, 115, 180, 124, 216,  30, 149, 241, 158, 159, 175, 133, 239
	.byte	190,  31, 216, 224,  85,  24, 229,  65,  79, 171,  97, 169,  19, 158, 150,  94
	.byte	216,  47, 117,  26,  42,  27, 248, 132, 141,  68, 182, 149, 124,  57, 103, 245
	.byte	228, 118, 126,  66, 140, 174, 135, 173, 172, 101, 157, 213,  80, 125, 160,   2
	.byte	  2, 190,  92, 142,  78, 181, 129,  69,  70,  42, 226,  69, 154, 193, 106,  72
	.byte	 56, 245, 165, 199, 172, 239, 124,  84, 200,  93,  53,  74,  53,  47,  29, 188
	.byte	234,  71, 248,  90, 200, 190,  11,  32,  18, 113, 196, 218,  70, 139, 101, 180
	.byte	 14, 188, 201, 107,  13,  31,  53,  37, 108, 125,  13, 202,  57, 246, 103, 163
	.byte	242, 150,  91, 105,  54,  90, 147, 145,  78,  74,  44,  76, 222, 182,  93, 247
	.byte	220, 205,  67, 167, 255, 146, 157,   2, 188, 216, 222, 173, 193, 187,  10,  70
	.byte	 16, 114, 122,  79,  27, 196, 245, 135,  80, 228,   0, 231, 227, 170,  73,  15
	.byte	140, 175,  73,  41, 227, 214, 219, 127, 175, 208, 120,   3,  41,  54,  64, 245
	.byte	188, 112,  15, 121, 208, 242, 136, 252,  75, 251, 205,  35, 103, 140, 189,  32
	.byte	194,  96, 240, 131, 185,  59,  41,  89,  59, 245, 206,  62,  38,  50, 250, 129
	.byte	244, 141, 222, 161, 238, 182, 115, 238, 202,   5,  32, 234, 213, 110,   8,  79
	.byte	 63, 201, 210, 153, 175, 134, 235,  33,  13,  45, 227, 239, 247, 154, 198,  81
	.byte	 52, 131,  78, 235, 145, 104,  78,  95, 220, 122,  46,  33,  14,  66,  26, 118
	.byte	161, 251,  70,  40,  26, 218, 164, 127, 169,  95, 185,  17, 149,   1,  79, 230
	.byte	 16, 215, 144, 184,  76, 255,  15,  16, 168,  59,  99,   0, 134, 212,  96, 180
	.byte	118,  57, 153,  51,  13, 124, 138,  77, 111, 194, 233,  24, 109, 252, 162,  19
	.byte	116, 138, 110, 190, 221, 154,  11, 202, 141, 179,  60, 157,  44,  55,  48, 193
	.byte	167,  93,  56, 253, 208,   6,  84, 109, 101, 129, 231, 233, 114,  66,  86,  17
	.byte	 80,  88, 224, 199, 254,  69, 155,  27,  62,  24, 225,  42, 213, 160, 176, 101
	.byte	228, 107,  11, 174, 162,  15,  12, 141, 242, 253, 113, 198,  27, 187,  81,  81
	.byte	156,  41,  32,  38,   3, 104,  31, 243, 198, 151, 237, 200, 158,  10,  87, 224
	.byte	248, 105, 159, 179, 166,  84, 234,  79, 141,  56,  67, 184, 221, 198,  37, 108
	.byte	218,  84,  62,  27, 187,  49, 180,  42,  81, 151, 214,  36,  63, 151, 214,  55
	.byte	134,  61, 120, 173, 207,  94, 122,  96,  92, 246,  82, 242, 254,  16,  23,  82
	.byte	248, 132,  66, 189,  12,  89, 211, 134, 182, 196,  14, 193, 146,  84, 188, 113
	.byte	 28,  13, 195, 174, 154, 127, 242, 188, 136, 211, 144, 213, 140, 190, 230, 222
	.byte	 38, 206,  82,  37,  10, 212,  75, 166,  48,  85,  73, 220, 220,  31, 142, 243
	.byte	215, 222, 186, 124, 221, 159, 219, 227,  82, 219,  33,  34,  61,  88, 123, 211
	.byte	228, 208,  97,  55, 211,  92,  28, 189, 186,  85, 102, 157, 175, 169, 170,  51
	.byte	 54,   4, 104, 192, 248, 183, 206,  48,  16, 107, 239,   1,   0,  83, 173, 182
	.byte	 82,   9, 209, 196,  74, 239, 141,  13, 209, 172, 166, 223,  62,  83,  20,  85
	.byte	173, 212, 119,  71,  43, 147, 254, 118, 127, 126, 234, 127, 110, 183,  90, 121
	.byte	180,  73, 152, 109, 101, 118, 114,  48, 178,  62, 225, 148,  76,  77,   1,  49
	.byte	100, 249,  39, 238,  38, 254, 187,  41, 185,  29, 161, 122, 253, 205, 240,  76
	.byte	 50,  47,  34,  23, 134, 233, 164, 174,  11, 149,  34, 217,  70, 116, 211,  70
	.byte	252, 134,  39, 251,  68, 222, 214, 160,  32,  56, 155, 161,  55, 206, 185,  57
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	130, 230, 188,  57,  13,  23, 242, 197, 172, 219,  16,  65, 190, 176, 168, 250
	.byte	 88, 178, 168, 156,  67,  42, 223,  13,  94, 221, 239, 201,  16,  67, 127,  26
	.byte	240, 184,  10, 116,  46, 242, 112, 248, 171,  15, 102, 243, 197, 239,  31, 104
	.byte	205, 110, 140, 110, 183, 194, 159, 146, 196,  52, 237,  35, 233,  65, 175, 198
	.byte	234,  48, 101, 182, 205, 120, 167,  81,   9, 242,  41,  90, 176, 186, 152, 233
	.byte	242,  35, 204, 235, 217, 211, 221, 158,  99,  65,   2,  48, 124, 224, 195, 176
	.byte	 94, 244, 216,  89,  13,  98, 246, 103, 187, 217,  37,   0,  54, 208, 218,  21
	.byte	208,  93,  60,  35, 124,  27,  27,  73, 214, 125, 240, 118, 185, 140,  46,  50
	.byte	112,  49, 123, 168,  87, 121,  73, 207, 227, 138, 174, 159,  94, 200,  13,  97
	.byte	 32, 243, 119, 190,  43, 118, 245,  63,  76,  52, 221,  16, 236, 234,  29, 194
	.byte	130,  11,   8, 154,  44, 213,  21,  58, 132,   5, 101, 169, 251, 178, 177, 176
	.byte	208, 125,  72, 224, 202,  77,  66, 104, 213, 125,  31, 204, 101,  77, 250,  43
	.byte	238, 132, 185, 197, 239,  42, 139,  53,  96,  64, 227, 150,  90,  21,  52,  50
	.byte	153,   4,   3, 245, 143,  10,  64,  28, 252,  73,  84,  51, 128, 165,  90, 235
	.byte	 20,  20, 175, 247, 134, 169,  68, 135, 118,  42, 203,  93, 103, 246, 139, 205
	.byte	 36, 125,  10, 154, 106, 133, 132,  15,   2,  25, 247,  54, 127, 110, 212,  36
	.byte	162, 247, 176,  69, 218,  75, 145,  56, 156,  46,  18,  29,   9, 115, 198, 124
	.byte	 52, 146, 158, 187, 255, 173, 200, 109, 138,  71, 199,  60, 166, 138,  23, 103
	.byte	144,  82,  59, 156, 158, 163, 197, 173, 143, 123,  64,  14,  46,  60, 180,  15
	.byte	248, 202, 183,  63, 160,  47, 105, 181,  45, 119, 254,   9,  88, 217, 189, 227
	.byte	186,  37, 181, 138, 137, 217, 195,  27,   4,  65, 157,  82, 157, 216, 227,  53
	.byte	250,  33,  16, 120,  77, 169, 242, 125,  87,  84, 100,  37,  25, 155,  85,  76
	.byte	 76, 153, 198,  91, 160,  96, 139, 138,  15, 140, 250, 179,   3, 106,  70,  25
	.byte	241, 215, 159,  11,  86, 223,  12, 131, 219,  78, 134, 110,  69, 119,  64, 236
	.byte	148, 196, 128, 230,  84, 242,   1,  47, 159, 166, 143, 169, 112,  22, 108,  62
	.byte	229, 107,  71, 167, 253,  21,  59, 232, 205,  73,  76, 238, 208, 107, 253, 162
	.byte	142, 230,  76,  20,  58, 178,  94,  51, 147,  25, 129,  39, 108, 113, 171, 100
	.byte	114, 157, 236,  42, 234,  33, 140,  14,  13, 115,   1,  52, 179,  55, 171, 196
	.byte	 60,  23,  43, 217,   7, 164, 121,  89, 194,  41, 152,  57, 143, 176, 143,  82
	.byte	 33, 110, 183, 153, 115, 179, 145, 229,  91, 158, 103,  86, 102,  69, 124,  40
	.byte	154, 107, 164, 250, 251,  93, 143, 213, 134,   8, 243, 181, 183, 101,  50, 198
	.byte	 60,  71, 164, 111,  63, 117, 202, 172, 151, 150, 116, 176,  63,   4,  52, 238
	.byte	232, 178, 230, 252, 170,  15,  59, 140, 158, 179,  81, 245,  94, 234,  64, 207
	.byte	173, 132, 235, 236, 181,   4,  23,  96, 198, 147, 104, 254, 241,  55,  99, 228
	.byte	246, 200, 115,  97,  79, 147,  89, 221,  45, 115, 222, 226,  74, 106, 217, 165
	.byte	 75,  80,  36,  17, 177, 247, 202, 144, 214,  62,  29,  87, 235, 152, 134,  37
	.byte	252,  91, 157, 170, 103,  44, 152,  79,  47, 147,  47,  70,  99, 123, 103, 172
	.byte	124,  79, 121,  58, 253,  60, 158, 238, 122,  23, 204,  52, 235,   2, 169, 230
	.byte	 36,  54, 223, 116,  68, 128,  96,   9,  94,  97, 195,  55,  66,  31, 207, 166
	.byte	 13, 111, 101,  39, 125, 197, 128,  88,  76, 173, 224, 144, 136, 255,  32, 119
	.byte	232,   9,  84, 119, 102, 111, 163, 246,  14, 102, 215,  12, 100,   4, 254, 167
	.byte	 20,  77,  63, 195, 153, 184, 108,  88, 210, 179, 149,  18, 136, 137,  56,  39
	.byte	 54, 146,   5, 135,  15, 137,  88, 112,  87, 184, 157,   7,  62,  94, 254, 116
	.byte	 62,  37, 141, 191, 247, 117,  81,  38,  48, 209, 240,  79, 233, 226, 177, 213
	.byte	232,   7, 115, 175, 158, 144,  49, 206, 135, 248, 227,  32, 128,   6, 101,  93
	.byte	 38,  70,  95, 195,  38, 172,  49,  14,  76, 220,  93,  11,  10, 183, 223, 185
	.byte	154,  53,  30, 180,  52, 154, 183,  70,  83, 183, 253, 175,  79, 115, 135, 119
	.byte	196,  69,  69, 153,  22,  41, 217, 127,  75, 229,  16, 153, 216, 232, 246,   3
	.byte	182, 204, 113,  44, 166, 181, 112, 224, 236,  87, 246, 135,  38, 146, 193,  20
	.byte	147,  56, 252, 187,  47, 142,   2, 115, 140, 206,  60, 198, 174,  62,  21, 193
	.byte	 96, 209, 157, 207, 248,  26, 231,  16, 248,  30, 208, 107, 250, 225, 190,  15
	.byte	248, 197, 150,  18, 162, 200, 134, 163, 184,  80,  83,  97, 117, 202, 214, 140
	.byte	202, 168,  26, 255,  61, 160,  53, 111, 143, 186,  66,  98, 242,  12, 220,  34
	.byte	198,  25,  27,  78, 205, 194, 224,  82, 181,  84, 175,  55,  54, 231, 127, 240
	.byte	 86,  46, 212,  96,  62,  95,  71, 189, 107,  27,  42, 121, 222, 224, 127, 244
	.byte	150, 255,  31, 212, 217, 228, 231, 124,  56, 221, 106, 228, 126,  51,  94,  25
	.byte	 10, 198, 119, 241,  16, 158,  70,  99, 119, 188,   1,  51, 106, 100,  92, 198
	.byte	  8, 208, 208,  89, 209,  61,  78,  96,  68, 247,  23, 231, 143,  92, 114,  75
	.byte	 48, 197,  25,  73, 147,  82, 205, 165,  93,  45, 128,  82, 103,  99, 205,  73
	.byte	 76,  61, 214, 109, 100,  65, 134,  81, 131, 211, 201,  92,  85, 248, 254, 158
	.byte	168,  73, 140, 173,  71,   7, 248, 239, 117, 154,  62, 230,  18, 181,  38, 253
	.byte	166, 194,  46,   0, 156, 114, 206,   0,  22, 140, 250,  94, 143,  53, 152,  32
	.byte	118,  59,   3,  40, 216, 173,  80,  72, 177, 229, 238, 239, 186,  37,  30, 212
	.byte	 86,  18,   3,  96, 220, 107, 229,   6,  21,  67,  28, 244, 196, 179, 177,  32
	.byte	248, 198,  50, 135,   8, 188, 188, 248, 169,  58,  60, 216, 112,  14,  68, 106
	.byte	215,  66, 159, 252,  96, 140, 170, 182, 222,  76,  96, 149, 212, 254, 171,  28
	.byte	 22,  56,  73, 154,  85,  76,   8, 130, 145, 250, 152, 250,  84,  46, 189, 167
	.byte	227, 182,  98, 188,  37, 210,   8,  71, 196, 193,  68, 125,  89, 129, 101,  88
	.byte	210,   4, 200,  58, 122,  47, 192, 236, 159, 228, 213,  39, 214, 170, 129,  59
	.byte	 43, 131,  54,  38, 125,  28, 147,  96,  90, 185, 164,  71,  94,   5, 178,  96
	.byte	124, 228,  16, 254, 153,   5, 210, 164, 141, 247, 122,  91,  35, 182, 204,  89
	.byte	134, 197,  47, 139,  40,  31, 149, 199, 215, 236, 225, 243, 108, 210,  47, 139
	.byte	252,  32, 144,  11, 196,  99, 183, 143, 161,  57, 246,  80, 129,  61, 224, 254
	.byte	195, 195, 100, 234, 154, 104, 169, 145, 237, 148,   5, 240, 212,  64, 194, 138
	.byte	104,  66, 202,  72,   2, 159, 153, 199, 245, 149, 140,  25,  77, 130,  16, 116
	.byte	248, 180, 132, 168,  22, 170, 245, 210, 192, 255, 171,  85, 177,  15, 162, 212
	.byte	 86,  36, 140,  71, 200, 171, 116, 179,  59, 195,  83, 137, 101, 122, 245, 246
	.byte	254, 234,  29,  85,  59, 103,  95,  16, 207, 218, 159, 159,  47, 118, 198,  49
	.byte	 14, 243,  25,  28, 141, 127, 141,  76, 239,  59, 253, 104, 159, 225,  46,   6
	.byte	156, 225, 203,  44, 230, 252,  37, 237,  93, 212, 103, 119,  13,  50, 159,  89
	.byte	 34,  53, 209,  68, 126, 186, 156, 134,  89, 197, 241,   5, 236, 106,  34, 237
	.byte	 83, 209, 164, 236, 130, 166, 125, 131, 128, 111, 152, 130,  30,  75, 178, 114
	.byte	150, 178,  66,   6,  20, 120,  42,  97,  66, 180,  93, 114,  27,  82,  37, 118
	.byte	205, 163, 152, 179,  84,  80, 164,   2, 106,  83,   7, 217,  69, 251, 103, 117
	.byte	 60,  15,  46,  31, 150, 249,  81, 125, 146, 161, 188,  34,   0, 194,  98, 131
	.byte	102, 137,  58, 109,  75, 227, 183, 239, 223, 134,  66, 186, 227, 170,   0,  97
	.byte	130,  90, 252, 109,  56,   7, 167,  20, 208,  55,  91, 244, 153, 126, 233,  75
	.byte	136,  65,  72,  83, 159,   6, 163,   8, 107,   5,  60, 184, 226, 121,   0, 237
	.byte	220,  70,  23,  52,  46,  36, 142, 214,  65, 143, 199, 127, 131, 176, 247,  46
	.byte	100,  91, 230,  50, 252, 135,  77, 222,  44,   5, 227, 186, 172, 193,  37, 144
	.byte	 86, 181,   9,  11, 204,  67, 195,  29,  17, 191, 147,  29, 131, 234, 125, 147
	.byte	 34, 123, 153,  22,  97, 198,  46,  58,  87, 150,  67, 247, 193, 178, 205, 141
	.byte	248, 214,  61,  55, 181, 193, 210, 215, 254, 137,  91, 177,  97, 199, 226,  79
	.byte	 32, 255,  31, 180, 171,  57,  26, 115,   5,  56, 157, 179,  15,   2,  90,  60
	.byte	 52,  78,  34,  51,  10, 209, 105, 128, 164, 124,  70, 165,  79, 213, 104, 150
	.byte	240,  26,  22,  25, 253,  20, 211, 234, 213, 228, 172,   1,  10,  64,  30,  99
	.byte	 20,  50,   3,  21, 138, 121,  76, 120, 248, 126,  71, 226,  68, 250, 172, 148
	.byte	 35, 109, 221,  91, 128, 112,  26,  88, 103,  35,  60, 176, 243, 217, 181,  99
	.byte	142,  39, 128, 124,   8, 233, 190, 216, 249,  20,  53,  67, 101, 100,  39, 174
	.byte	129, 102, 233,  31,  53,   9, 161,  28, 223, 226,  19,  59, 202,  72, 102,  86
	.byte	112,  67, 166,  76, 131, 228,  45, 166, 183,  13, 221,  83, 226, 160, 135,   4
	.byte	185, 193, 177,  13,  92,   3,  46, 106,  32, 211,  54,  72, 251, 216, 163,   1
	.byte	  8,  15, 116,  59,  44, 123,  93,  91, 159, 227,  20, 189, 202,  47, 124, 106
	.byte	155,  83,  10, 106, 129,  81,  47, 195, 179,  42,  62,  58, 176, 119,  13,  15
	.byte	150,  15,  99, 182, 122,  92, 251,  14, 185,  37,  49,  85, 138, 178, 214, 149
	.byte	128, 148,  18,  35, 221, 244, 235,  95, 148, 162, 166, 101,  73, 139, 251, 145
	.byte	 18, 219,  88, 148, 208, 104, 225,  44,  84,  31,  50, 131, 207, 166,  93,  42
	.byte	 61,   5, 211,  73, 126,  77,  17, 153, 195, 134,  43, 175, 134, 226,  85, 226
	.byte	210,  41,  57,  34,   8, 165,  19, 209, 210, 121, 209, 233, 192,  88,  57, 193
	.byte	117,  46, 116,  67, 185,  52, 154,  69,  77, 246, 157, 168,  58,  57, 130,  90
	.byte	 88,  68, 186, 130,  44,   2, 217,  74, 226, 213, 219, 198,  69,  91, 143, 103
	.byte	  0, 187,  86,  37, 107, 211, 241, 231,  17, 133, 181, 144, 180,  90,  91, 116
	.byte	 92, 161, 244,  26,  11, 246, 243, 242, 111,  34, 248, 133, 246,   0, 123, 116
	.byte	 38, 201, 168, 106,  11, 215,  73,  84,  52,  85,  60, 127,   0, 246,  10, 171
	.byte	124,  90,  44,  97, 133, 190, 243,  88, 113, 142,  21,  49, 150,  82,  47, 132
	.byte	189, 208,  44, 103,  73,  18, 236, 158,   5,  66, 180, 195, 177, 132, 195, 136
	.byte	 42, 211,  91, 171, 253, 130, 164,  68, 228, 191, 109, 164, 190, 229, 252,  51
	.byte	180, 141, 109,   0,  74, 142,  30, 255, 156, 187, 185, 239, 167,  86, 169,  60
	.byte	 66,  47, 188, 200, 218, 140, 107, 190, 109, 124,   9,  93,   6,  87, 132, 161
	.byte	 47, 214,  59,  17, 114, 167, 103, 219, 124, 220,  49, 205,  49,  89, 101, 140
	.byte	196, 172, 151, 202, 184,  13, 176,   5, 111, 188, 133,   1, 120, 140, 123, 144
	.byte	237,   7, 106, 203, 112, 168, 157,  22,  75, 187,   7, 112,  45, 183, 105, 113
	.byte	216, 151,  59,  61, 161, 230,  70, 225,  46,  85,  81, 119,  31, 232, 232, 120
	.byte	254, 155,  92,  45,  41,  91, 132,  63, 132, 108, 128, 121, 105,  82, 213, 144
	.byte	168, 229, 196,  80, 252, 111, 145,  53, 232,  12,  57, 224, 177, 125,  12,  17
	.byte	100,  60, 208,  18,  42, 201, 208, 109, 117, 188, 144, 127, 146, 241,  11, 132
	.byte	140, 128,  22, 195,  71, 165,  70, 101, 255, 234,  46, 239, 101, 186, 102, 195
	.byte	 42,  50,  75,  77,  92, 142,  67, 188, 197, 159,  88,  90, 224, 140,  16,   4
	.byte	226,  27,  95,  58, 203,  81, 220,  52, 255, 127, 200, 102, 224,  73,  94, 196
	.byte	 94, 247, 224,  95,  26, 223, 173, 100, 153, 136, 191,  91, 240,  32, 204,  35
	.byte	 90,  70, 247, 166,  32, 232,  98, 189,  58, 115,  11, 165,  27, 212, 204,  87
	.byte	114, 120,  71, 254,   6, 158,   7,   7,   3,  86, 131,  10, 200,  48,  27,  11
	.byte	192,  41,  62,  43, 165, 230, 199, 158, 119,  62,  92, 102,  62, 211, 131, 254
	.byte	 69,  64,  58,  34,  68, 125,  40,  97,  44, 151, 148, 143, 220, 228, 164, 119
	.byte	194, 211,  75,  77, 248,  44,  43,  59, 255,  53, 177,  98, 228, 242,  88,   3
	.byte	194,  97, 199, 202, 246, 202, 107, 234,  86, 224, 253, 211, 113, 235, 143, 239
	.byte	220, 103, 252, 187, 207, 129, 228, 128,  38, 156, 235, 217,  56,  11, 128, 147
	.byte	238, 252,   7,  35,  38, 164,   3, 180, 145, 197, 114, 125, 142,  52,  30, 220
	.byte	156,  20, 111, 219,  54, 255,  93, 200, 246, 239,  42, 245, 181, 100, 142, 248
	.byte	235, 154,   5, 183,  32, 135, 190, 246, 129,  11, 162, 197, 155, 184, 128, 173
	.byte	 12, 161,  56, 111, 218, 255,  18,  35, 212, 210, 169,  89, 133, 131, 193,  34
	.byte	123, 145, 254, 249,  42, 255, 101,  41,   8, 238, 143,  65, 110, 189,  84,  95
	.byte	188,  55, 206,  31, 200,  62,  46,  86, 142, 157, 166,  59, 231,  88, 168,  54
	.byte	 16,  60,  80, 115, 113, 120,  19, 132,  42,  21,  39, 164, 149, 254, 149, 198
	.byte	224,  37, 175, 131, 187,  18,   3, 233, 205, 229, 222, 254,   2, 141,  26,  11
	.byte	  5, 189,  45,  82, 150, 248,  74, 246, 169, 248,  53, 111, 246, 202,  16, 213
	.byte	 38, 115, 132, 109,  27,  22,  99,   6, 137, 107, 222, 123, 219,  84, 245, 226
	.byte	117,  72, 188, 143, 220, 178,  90, 113, 247, 118,  23, 112, 104,  10,  51,  15
	.byte	 54,  31,  16, 220,  78,  36, 135,  39,   2,  12, 149, 117, 192, 229,  73, 254
	.byte	 99, 232, 223, 115,  19,  53, 109, 172, 154,  92, 204,  73, 171,  20, 225,  62
	.byte	 14, 179, 243, 248, 248,  65, 127,  97, 237, 210, 163, 154,  31, 115, 213,  46
	.byte	153,  75,  63, 138, 163, 172, 168, 238,  69, 185, 226, 118,  15, 104,  64,  39
	.byte	210,   4,   5,  86, 139, 220,  62, 234,  18, 240, 245,  73,  90,  76, 219, 149
	.byte	 67, 150, 106, 127, 149, 149, 199, 255,  25, 164,  20,  44,  76,   6, 184, 219
	.byte	 58, 119, 255, 117, 241, 222,  69, 226, 136, 204,  41,  46, 103, 221,  48, 160
	.byte	167,  12,  41, 101,  71, 124, 123, 138, 244,  22, 188, 187, 233,  51, 118,  24
	.byte	164, 148,  45, 133, 158,  43, 165, 245,  29, 108, 132, 241,  94,  95,  73,  98
	.byte	105, 140,  24,  71, 121, 142,  80, 150, 246,   0,  31, 100, 218, 238, 149,  11
	.byte	 32, 222,  12, 174,  46, 210, 120, 136,  71, 179,  98, 123,  65, 123, 194, 245
	.byte	  1, 147,  92,  13, 214, 228,  73,  53,  63, 133,  43, 133, 208, 137,  60, 120
	.byte	 48, 191,  66,   9,  31, 245, 100,  70, 129, 111,  60, 250, 186,  56, 121,  71
	.byte	237,  45, 254,  77, 171, 184,  74,  68, 206,  80, 101, 171, 171, 214,  97, 246
	.byte	196,  88,  36, 183, 176, 139, 129, 110,  88, 148,  23, 227,  36,  32, 250, 172
	.byte	148, 164, 182, 200, 209,  58,  78,  79, 191,  68, 137,  35, 136,  50, 253, 117
	.byte	 64, 238, 249, 101,  88,  76,  82, 119,  67,  88,  80, 241,  92,  60, 152, 155
	.byte	119, 109, 186,  96,  58, 189,  16,  88, 246, 114,  15,  69, 150,  70,  90, 217
	.byte	246, 226, 146, 123, 225, 205, 212, 160, 158, 190, 213, 121, 125, 183, 209, 252
	.byte	136, 247, 153,  17,  10, 192,  24, 145,   1, 108, 219,   7, 151, 121,  98, 248
	.byte	146,  86, 164, 119,  63, 105,  45,  81,  70, 114,  99,  37,  75,  27,  34, 155
	.byte	 99,  39, 188, 221,  81,   6,   6,  16, 139,  97,  75, 209, 202, 141,  72, 232
	.byte	 52, 125, 186, 107,  26, 111,   2, 234,  78, 156, 188, 191,  73, 126, 188, 232
	.byte	 61,  30,  10,  35, 141, 104,  67,  81,  68, 173,  15,  25, 169,  36,  18,  11
	.byte	 20, 138, 210,  84,  29, 194,  40,  23,  32, 179, 237,  24, 226, 240,  84,  17
	.byte	155,  66,  45,  95, 151, 111, 189, 131, 237, 157, 147,  95, 224, 112,  27,  26
	.byte	232,  82,  47,  16, 108, 241, 192,  82, 242, 107, 243, 119,  89, 176, 173,  21
	.byte	252,  40,  98,  48,   6,  65,   0, 211, 231, 210, 202, 147, 140, 162,  64, 145
	.byte	132,  30, 151, 131,   9,  95, 196, 192, 177, 202, 241, 250, 180, 169, 227,  40
	.byte	 76,  43, 120, 139,  37,  15, 169, 195, 166, 106,  89, 189,  13, 155, 123, 114
	.byte	158, 106, 206, 252, 113,  51, 214, 119, 201, 121, 251,  66,  56, 179,  32, 103
	.byte	188, 202, 122, 217, 168, 183, 217,  56, 175,  19, 142,  99, 249,  72,  25,  42
	.byte	154,  63, 120, 170,  69,  81,  30, 152, 248, 100, 125, 215,  34, 190,  38, 193
	.byte	163, 104,  37, 180, 154, 231, 173, 203,  10, 236,  68, 195,  28,  34, 119, 174
	.byte	200,  21,  84,  58,  47, 167, 105, 165, 177,  72, 213, 166,  82, 223,   9,  82
	.byte	 74, 228,  26, 226,  56, 235, 222, 245, 170, 173, 237, 110, 170,  13, 179, 189
	.byte	 20, 249, 176, 143, 125,  25,  59, 198,  66, 157, 231, 204, 221,  72, 217, 206
	.byte	221,  64, 110,  31, 115,  67, 252, 150,   2,   5, 208, 104, 153,  11,  54, 141
	.byte	124,  71, 128, 229,  82,  61, 230, 225, 215, 187, 238, 156,  27, 194, 224,  18
	.byte	148, 229,   5,  95, 156, 185,  13, 166,  57, 130,  50, 204, 241, 129, 211, 203
	.byte	122, 173,  44,  99, 201, 117, 193, 185, 120, 137, 153, 105,  53, 244, 128,  15
	.byte	190,  96,  92,  30, 202,  81, 218, 139,   0,  46,  25, 146, 115, 205, 225, 253
	.byte	 96, 180,  16, 232,   8,  47,   5, 172, 126, 160,  54, 255, 181, 120,  87,  70
	.byte	228,  71, 139,  36, 249, 146,  61, 113,  77, 199, 125, 121, 137,  25, 247,  40
	.byte	234,  13,  14,  89,  82, 200,  81, 234,  43, 102,  18, 181, 123,  24, 117, 252
	.byte	238,  93,  17, 223, 167, 206, 119, 231, 110, 181, 188, 209, 201, 140, 106, 251
	.byte	 80, 129, 151, 103,  55, 145, 141, 134,  15,  68, 251,  99,  72, 190, 243,  91
	.byte	144,  12,  59, 173, 222, 164, 220, 247, 182,  88, 159, 245, 134,  33, 181, 107
	.byte	 12, 198,  70,  55,  59,  50, 180, 135, 109, 189,  86, 167, 199,  91, 198,  70
	.byte	 98, 152,   7, 193, 167, 150, 233, 201, 121, 206, 117, 224, 148, 198, 119, 210
	.byte	138, 217, 148,  11,  56,  68, 198, 169,  54, 154, 172,   0, 102,  50,  51,  29
	.byte	 35, 210,  55,   2, 106, 245, 253, 173, 242,  48, 217,  75, 100,  81, 117, 241
	.byte	 42,  27, 112, 116,  78, 214,  93, 148, 130, 158, 160, 216,  35, 114, 165,  46
	.byte	 92,  71, 247,  44,  29,  64,   5, 161, 240, 116, 210, 206, 221,  93, 111, 177
	.byte	208, 232, 209, 227, 100, 132,  28,  27, 248,  25,  98,  47,  74,  16, 209, 212
	.byte	253, 255,  26, 197,  40,  81, 223,  58, 227, 233,  41, 233,   1,  72, 104, 149
	.byte	234, 228,  82,  60, 191, 213,  79, 146, 224, 185, 176, 198, 255,  94,  48, 226
	.byte	  7,  54, 220, 220, 174, 184,   6, 182, 249,  26, 152, 190,  67, 130, 186,  88
	.byte	194,  42, 152,  34, 198, 171, 148, 247,  69, 230,   5, 110, 220, 102, 171, 153
	.byte	 79, 216, 147, 120, 121,  77,  81, 135,  27,  28, 254,  34,  89,  32,  71, 195
	.byte	 64, 161, 246, 192,  10, 210,  79, 130, 200,  61, 145, 188,   4, 145,  57,  73
	.byte	177, 121, 120, 169,  11,  22,  39, 165, 198,  26,  53,   5, 196,  83, 142, 164
	.byte	180, 176, 178, 130,  22, 159,  10,  94, 230,  35,  45,  49,   7, 252, 225, 101
	.byte	165,  65, 183, 177, 109, 248, 244,  60,  33,  10, 116, 191, 242,  92, 157, 115
	.byte	156,  21, 213, 187,  91, 144, 220, 124, 136, 100,  71, 133, 186,  95,  96, 208
	.byte	243, 143, 132, 223, 131, 195, 137, 101,  37, 172,  87, 162, 231, 149, 191, 253
	.byte	120, 217, 178,  68,  54,  52, 148, 237, 181, 106, 189, 174, 236, 191, 230,  87
	.byte	140,  99, 223,  55, 138,  55, 248, 244, 177, 215,  11,  14, 205, 237, 195, 255
	.byte	 44, 253,   0, 233, 219,   9,  88, 218, 116, 176, 131, 117,  31, 242,  11,  92
	.byte	138, 171, 240, 136, 123, 170,  24,   7, 238, 212,  26,  10, 234, 184, 220, 241
	.byte	 14, 146,  21, 185,  89,  36, 225, 209, 146, 238, 159,  84,  56, 145, 249, 231
	.byte	 28, 198, 201, 157, 174,  10, 111, 240,   2, 250, 176, 134,  31, 214,   6,  23
	.byte	  6, 253, 148, 127,  58, 221,  78,  58, 175, 203, 241,  24,  51,  39, 241,  18
	.byte	 96, 217,  92,  45, 105,  63,  98, 135,  13, 242, 220,  22, 122, 129, 106,  71
	.byte	 52,  80,  89, 194, 208,  73,  87,  37, 223,  22, 213,  74,  23, 179,  30, 228
	.byte	 91, 194,  11, 182,  93, 111, 167,  83, 177,  55, 105,  56, 239, 209, 216, 112
	.byte	254, 101, 242, 150, 242, 121,  20, 163,  44, 104, 234,  90, 141,   7, 235,  16
	.byte	199, 255,  18, 132,  15,  82, 128, 153,  39,   6, 103, 165, 153,  79,  55, 199
	.byte	182,  16,  22,  12, 193, 138,  51, 159,  15,  51, 130, 110,  25, 140, 213, 166
	.byte	243, 157, 214,  20,  58,  46,  14, 161,  10,  49,  40, 221, 146,  55,  49,  90
	.byte	 38,   5, 211, 214,  25, 184,   4,  46,  34, 125, 234,  63,  61,  58,  98,  88
	.byte	 69,  77, 217,  83, 238,  77,   4, 107,  83, 119, 171, 200, 255, 234,  67, 229
	.byte	 90, 117,   4,  97, 225,  62,  96, 204, 220, 211, 122, 254, 220, 158,  79, 110
	.byte	247, 245,  70,  71, 208,  26,  68, 120, 183, 177,  85,   1, 134, 147,  57, 254
	.byte	230, 119,   5, 227,  73, 143,  65, 114,  61, 242, 199, 244, 125, 115, 100, 136
	.byte	237,  27,   2,  47,  58, 116, 202, 221, 200, 148,  90, 200,  34, 228,  29, 131
	.byte	 10,  66,  42, 201, 232, 117,  84, 225, 230, 102,  45, 164, 100, 225, 228,   4
	.byte	117,  41, 200,  89, 149, 130, 207,  92, 179,   3, 242, 181, 240,  24, 143, 169
	.byte	120, 237,  24, 234, 169, 143, 137, 137, 130, 234,  64,  99, 225,  98, 130, 186
	.byte	189, 225, 157,  11,  71, 182,  35, 245,  68,  53, 224,  88, 114, 170, 170, 207
	.byte	154,  83,  82, 225, 255, 113,   7, 140,  46, 201,  89, 207,  42, 220,  46, 174
	.byte	100, 206,  38,  26, 120, 139,   4, 166, 199, 239,  77, 137, 110, 119,  64,  41
	.byte	 22, 154, 157, 236,  28,  33, 108, 141,  39, 197, 167, 205,  30,  14, 161,  85
	.byte	 94, 237, 238, 173,  81,  91,  69,  12, 163, 254,  98, 113,  85,  59,  44, 219
	.byte	 26, 200,  56, 100, 202, 247, 141, 191,  24, 206, 242, 252,  27, 243, 180, 125
	.byte	122,  49, 152,  24, 241,  31,   5,  46, 204,  44,  59, 103, 127, 232, 164, 163
	.byte	 92, 128, 246, 110, 152, 249, 126, 154,  20,  41, 142, 170, 170, 241, 143, 211
	.byte	191, 193, 144, 187, 132, 174,  43,  91, 140,  30, 228, 103,  60,  41,  46,   4
	.byte	  4, 185, 149, 186, 137, 113, 160, 159, 127, 168,  90,  44,  15, 220, 127, 221
	.byte	243, 151, 114,  99,  52, 213,   7,  59, 237, 199,  76,  35, 215, 140, 232, 102
	.byte	 16, 157,  29,   2, 207, 173,  50, 102, 227, 159, 177, 184, 113,  16, 217, 205
	.byte	245,  70, 214, 152, 169, 157, 159, 204, 175, 244,  33, 162, 162,  37, 233, 134
	.byte	 66, 175,  48,  29, 134, 143, 214,  12,  48, 249, 212, 102,  73,   5, 142, 235
	.byte	 51, 144, 239, 159, 172,  38, 178, 212, 209, 125, 204, 155, 121, 235, 250, 237
	.byte	120, 179, 195,  82, 122, 114,  45, 194, 225,  23,  58,  50, 169,  69, 214, 249
	.byte	147,   4,  33, 129, 245, 163, 160, 192, 188,  27, 193, 185, 167, 110,  23, 232
	.byte	 52, 106, 157, 111, 220, 144,  26, 210, 140, 228, 206, 244,  31, 236,  70, 181
	.byte	215, 107,  71,  46, 196,  65,  68, 136,  52, 230,  54, 239,  37, 210, 112, 205
	.byte	 86, 178, 122,  39,  75,  41, 112, 250, 128,  48, 252, 241, 172,  82,  61, 127
	.byte	196,  33,  79,   4,  86, 161, 101, 197,  37, 168, 149, 185, 155, 113, 144, 246
	.byte	  8,  58, 144, 190,   5,  99, 183, 146, 184,  57,  51, 110, 128, 182, 229, 118
	.byte	106, 189, 181, 207,   4, 229, 126,  76, 194,  95, 104, 174, 209, 162, 188, 115
	.byte	  2, 114, 143,  57, 248, 200, 132,  85, 238, 143,  65,  53, 173, 221,  11, 143
	.byte	227, 146, 200, 217,  28,  92, 233,   7,  28, 153, 203,  88, 116, 150, 250, 190
	.byte	 22,  16,  69,  75,  57,  30, 221,  65, 172, 232, 185,  56, 206,  44, 176, 169
	.byte	 74,  88, 149, 129, 125, 176, 104,  56, 214,  88, 131, 228, 197,  19, 222,  26
	.byte	100, 233, 201, 115,  61,  39, 177,   7, 192, 176, 103,  92,  94, 211, 232,  32
	.byte	137, 210,  33, 255, 142, 156,  60,   5,  93,  63,  98, 255, 208,  48, 215, 249
	.byte	244, 119, 147, 188, 210,  93, 242,   4,  62, 221,  39, 186, 125, 168,  51, 165
	.byte	175, 162, 148, 161, 116,   4, 206, 192,  89, 205,  73,  26, 169, 120, 112, 211
	.byte	 64, 224, 121, 162, 160,  44, 113,  94, 169, 116,   6, 162,  12, 174, 128,  84
	.byte	119,  49,  70, 107, 161,  92,  37, 130, 135, 147,  72, 173,  47, 172,  88, 245
	.byte	 78,  27,  76, 201,  49, 126, 107, 241,  37, 156,  79, 196,  54, 186,  65, 237
	.byte	 30, 214, 202,  70, 155,  78,  74, 197,  74,  46, 124,  77,  26, 184, 119, 120
	.byte	168, 156, 135, 207, 250,  48,  64, 120, 199,  55, 131,  79,   4,  13, 184,  23
	.byte	 22, 184,  32,  36, 184,  47, 115, 147, 178, 175,  89, 174,  10, 134, 131,  39
	.byte	254, 112, 122, 179, 242, 140,  39, 109, 124, 238, 232, 234, 201,   0, 125,  42
	.byte	 76,  85, 180,  63, 241,  28,  55,   1, 114,  46, 125,  91, 171,  86,  66,  59
	.byte	246,  21, 110, 141, 139, 254, 136, 220, 141,  50, 246, 104, 177, 187,   1, 155
	.byte	111, 141, 203, 170,  39, 149, 232,  26, 110,  32,  10,  46, 160,  14, 221, 214
	.byte	 50, 132, 208, 110,  68, 116,  54, 109,  65, 249, 145, 201,  37, 206,  14, 187
	.byte	240, 172,  86,  33,  45, 173, 118, 141, 106,  35, 108, 222,  18,  23, 106, 146
	.byte	 42, 141, 226,  29, 185, 151,  55, 226, 223, 224, 161,  89, 186, 157, 210, 223
	.byte	 56,  95,  85, 164, 194, 195, 199, 217, 192,  23, 221, 186, 108,  87, 159,  94
	.byte	 60,  92, 182,  65, 203,   3, 120, 176,  98, 128, 127, 177, 244, 240, 230, 115
	.byte	 26, 253, 238, 206, 246, 148,  35, 204,  55, 103,  65, 154, 146, 219, 215, 174
	.byte	150,  79, 242,  75,  85, 132,  73, 233, 162, 135,  64,  15, 157, 144, 241, 144
	.byte	179, 238,  66, 228,  36, 147,  52, 236,  84, 158, 199, 189,   8, 159, 185,  53
	.byte	172, 142, 171, 202,  16,  81, 167, 130, 246, 171, 230, 198,  57,  61, 119, 117
	.byte	125, 222, 203, 163,  58,  98,   3, 148, 215, 100,  95, 136,  81, 125, 229,  81
	.byte	112,  91,  40, 190,  31,  35, 100, 168, 243, 209,  70, 114, 237,  63, 168,  91
	.byte	241, 172,  37,  24, 124, 187, 161,  97, 101, 108,  69,   5, 157, 126, 154, 122
	.byte	154, 217,  25, 100,  44,  92, 207, 212, 205,  39, 133, 224, 196, 195, 108, 182
	.byte	 23, 122, 180, 169, 171, 166, 254, 234, 149,   3, 137, 242, 238,  94,  13, 142
	.byte	 18, 105, 191, 101,  16, 158,  44,  89,  15, 147, 110,  30,  28,  35,  92,  95
	.byte	211, 144, 163, 175, 104, 112,   5, 236,   3,  33, 148,  99,  56, 208,  49, 249
	.byte	104, 239, 211,  55, 117, 133, 243, 177, 215, 218,  73,  75,  42, 189,  11, 238
	.byte	174, 105, 218,  79, 149, 236,  17, 171,  70, 167,  33, 183, 159,  64, 246, 234
	.byte	  6, 252, 216,   0, 128, 180,  99,  54, 171,  52,  55,  27, 149,  79, 230, 125
	.byte	117, 253, 235, 132, 154,  64,  60, 224, 134, 194,  58,  13,  55,  39, 213, 172
	.byte	 92,   8, 104, 232, 119, 100, 237, 106, 229, 166, 220, 119, 219, 233,  20,  10
	.byte	 40, 176, 194,  85, 243, 133,  64,  96,  75, 248,  64,  61,  30, 229, 202,  47
	.byte	 58,  12, 218, 204, 200,  52,  32, 227,  67,  14,  83,   7, 134, 236, 249,  86
	.byte	 69, 210,  51,  80,   8, 240,  96,  71, 252,  83, 171, 245, 143, 147, 157, 122
	.byte	 82,  48, 164,  78,  80,  71, 244, 104,  20,  72,  44, 141, 198, 131, 156,  32
	.byte	117, 112, 211,  50,  82,  78,  81, 236, 229,  96, 170, 178, 177, 153, 183, 103
	.byte	128, 169,  59,  24,  22, 156, 254, 158, 241,  13,  90,  10, 201, 223, 180, 152
	.byte	200,  25, 200,  73, 103, 251,  10,  68,  95, 113, 187,  14, 156, 182,  73, 250
	.byte	 46,  76, 200,  32, 202,  57, 194, 117, 239,  46,  98,  14, 110, 182, 134, 186
	.byte	 64,  33, 220, 226, 137, 159, 163,  13,  37,  17, 200, 113, 196, 224, 107, 143
	.byte	200,  12, 146,  74,  39, 168, 124, 188,  19, 207, 203,  18,  71,  93,  81, 232
	.byte	 17,   6,  85, 240, 187, 243, 100,  58, 239, 209, 125, 202, 128,  81, 241, 195
	.byte	130, 181,  44, 187,  42, 130,  17, 161, 232,  29, 184, 106, 137, 163, 160,  66
	.byte	103, 103,  73,  70, 170,  58, 201,  26,  69, 105,  83, 139,  48, 232, 228,  23
	.byte	 46,  82, 236, 238, 176, 184, 222, 155,  75, 229, 125, 224, 112, 253,  81, 193
	.byte	178,  86, 206, 174,  52, 140, 215, 186, 219, 143, 212,  74, 182,  53, 186,  61
	.byte	 56,  37, 116, 211,  51,  72, 120, 238,  68, 178,  22,  54,   8, 224,  26,   1
	.byte	245, 205,  41, 109,   4,  93, 101, 235,  96,  28, 114, 220,  69, 105, 252, 165
	.byte	208, 181, 170, 242, 217,  71, 216, 255, 202, 150, 211,   3,  23, 126, 148,  22
	.byte	163,  94, 230,  53, 172, 184,   2, 143, 139,  72, 235, 227,  92, 225,  56,   2
	.byte	246, 143, 235, 225,  62, 255,  69, 159, 174, 218,  37,   6,  48, 246, 245, 175
	.byte	121, 245,  86, 230,  10,  41,   1, 202,  96, 230, 199,   2,  10,  25, 196,  15
	.byte	146, 132, 110, 159,   0, 199,  75,  26,  68,  17, 158,   6,  66,  43,  95, 185
	.byte	245,  96,  40, 212, 187, 116,  28,  91, 177,   3,  16, 128, 155, 207,  64,  81
	.byte	 22, 118, 215,  63,  14, 134, 234, 182,  50, 230,  28, 202, 206, 108, 243, 210
	.byte	194, 155, 156, 129, 175, 188,  27, 145,   6, 156,  51,  86, 157, 148,  70, 212
	.byte	170, 101,  18, 204,   3, 115, 188, 204,  30, 168, 149,  20, 196, 138, 173,  16
	.byte	226, 125,  54,  54,  36,  44, 136, 158, 160, 126, 213, 145,  79, 147,  75, 218
	.byte	  4, 205, 217, 238, 174, 222,  78,  74,  90,  73, 107, 137,  17,  97, 151, 243
	.byte	247, 226,  18, 255, 239, 250, 238, 149, 112, 232,  51, 121, 239, 144, 221,  66
	.byte	 98,  22, 102, 218, 164, 201, 111,  57,  81,  38,  48, 179, 150, 151, 217, 168
	.byte	 37,  49, 115, 112,   4,  41,  19, 188, 217,  86, 126, 216, 247,  59,  90, 109
	.byte	220, 232, 211,  34,  38, 245, 173, 117, 124, 164, 217,  94, 137, 120, 231,  28
	.byte	183,  39, 208,   4, 165, 102, 244, 169,  77,  77,  27, 172,  40,  48, 110, 238
	.byte	206,  82, 198, 130, 236, 161, 118, 167, 178, 246, 169,  49,  63, 241, 176, 186
	.byte	241,  30, 154,  74, 189, 132,  51, 208, 168, 121, 126, 112, 134,  46, 187, 254
	.byte	156,  23, 211, 202,  18,  98, 209, 159, 194, 163, 197, 208, 119, 126, 189, 158
	.byte	119, 222, 198, 124, 235, 146, 194, 253, 183, 107, 188,   5, 208, 184, 223,  13
	.byte	148,  21, 140,   4, 172,  46,  82,  95, 250, 241, 201,  41,  13, 136, 205, 226
	.byte	  9,  12,  16,  27,  30, 125,  32,  98,  86,  18, 123,  10,  41,  68, 232, 169
	.byte	 36, 218,  26, 154, 208,   9,   0,  36, 142, 151,  31,  71, 168,  30,  57, 158
	.byte	148,  84, 175, 117,  61, 253, 199, 120, 246, 170,  28, 221, 210, 227,  81,  18
	.byte	252, 138,  46, 165, 244, 197, 183, 213, 124,  12, 194, 115, 128,  14,  78, 176
	.byte	215, 114,  88, 165, 196,  38, 107, 158, 122, 150, 248, 173,  70, 142, 145, 151
	.byte	 60, 252,  22, 228,  78, 254, 120,  33, 139, 117, 117,  96, 162,   1, 143,  36
	.byte	209, 177, 175,   9,  73, 245, 116, 221,  70, 134, 120, 183, 200, 136,  45, 218
	.byte	 82, 235,  25, 197, 157, 251,  13, 182, 102,  29, 217,  98, 243,  91, 183, 134
	.byte	215,  75, 111, 229, 237,  56,  40,  26,  23, 254, 129, 228, 159,  90,   1, 176
	.byte	 16, 110,  23,  64, 173,  44,  52, 176, 151, 188, 251, 219,  71, 138,  67,   2
	.byte	 66, 134, 191, 192, 197, 130, 123,  77,  62, 168,  13,   3,  37,  87,  40, 101
	.byte	 92,  96, 114, 171,  13, 239,  50,  11, 174, 109, 113, 131,  80, 173,  82, 184
	.byte	 58, 195, 185, 189, 188,  33, 244,  26, 195,  74, 153, 133, 240,  91, 113, 194
	.byte	 44, 126, 240,  15, 241, 116, 107, 165, 107, 125, 168,  66, 255, 217,  53, 222
	.byte	235, 202,  42, 142,  70,   3, 219,  82,  63,  96, 123, 132, 150, 192, 115, 196
	.byte	166, 186,  37,  67,  51,  76,  11, 202, 175, 103,  30,  47,  30,  81,  80, 191
	.byte	 67,  64,  71, 223, 248,  90, 182,  98,  90, 166, 181, 182, 209, 111, 210,  62
	.byte	102, 195, 133, 135, 238, 168,  16, 183,  78,  48, 248, 145,  46, 120,  71, 161
	.byte	152,  64, 158, 218, 237,  98,  60, 104,   6,   6, 119, 136, 134,  21, 195, 229
	.byte	168,  15,   2,  67, 118, 105, 103,  51, 146, 177, 141, 129, 187, 147, 147, 209
	.byte	226, 195,  83, 182, 200, 164,  89,  38,  44,  85, 164,  53, 175, 153, 196, 181
	.byte	152, 108, 223,  80, 145, 133, 114,  35, 111, 221, 249, 231,  46,  40, 180, 160
	.byte	225, 156,  12, 160, 229, 244, 169, 192,  98,  47, 251,  16, 229,  97, 127, 178
	.byte	174,  25, 199, 236, 190, 194, 199, 140, 211, 202, 188,  38, 248, 196, 171,  75
	.byte	181,  72, 243,  99,  98, 254, 208, 219, 187, 255,  26, 120,  36, 240,  46,  56
	.byte	130, 247, 199,  74, 104,  86,  67,  43,  61, 139, 138, 212, 201, 135, 111, 111
	.byte	223, 241, 135, 128, 119, 225, 144, 177,   7, 171, 223, 205, 141,  58,   7, 175
	.byte	164, 250, 141,  42, 104, 175,  94,  58,  71, 128, 133, 119,  27,  50,  44, 129
	.byte	147,  36,   6, 189, 197,  55,  29, 123, 149,  71, 243, 168, 220, 217, 217,  66
	.byte	 70,  35, 240, 160, 118, 206,  42,  26, 132,  73, 238,  73, 220, 249, 212, 115
	.byte	  1, 221, 103, 233,  88,  47,  50, 253, 146, 116,  63, 211,  25,  94, 188,  68
	.byte	  8, 230,  59,  81, 114, 151,   1, 153, 137, 234, 142, 244, 191, 169, 130, 131
	.byte	 66, 109, 212, 166,  67, 178,  78, 196, 122,  51, 162,  71, 251,  74, 209,  57
	.byte	 32, 222, 154, 225, 174, 217, 176, 166, 132, 106, 127,   7, 179, 102,  36,  24
	.byte	103,  72,  45, 200,  64,  72, 130, 114,  61, 204, 147,  95,  18,  19, 239, 250
	.byte	238, 186,  88,  67, 195, 118, 221, 157, 113, 185, 162,  56, 139, 147,  47, 122
	.byte	242, 244,  91,  48,  51, 121,  24,  86,  56,  25,  54, 245, 160,   8, 155,  28
	.byte	108,  37, 115,  75,  50,  51, 195,  17, 249, 114, 112, 204, 108,  39, 115, 151
	.byte	116,  25, 206, 145,  80, 137, 216, 192, 170,  19, 184, 243,  52,  28,  69, 119
	.byte	236, 174, 166, 241, 119,  47, 122,   5, 183, 222, 109,  38,  94, 113, 169,  12
	.byte	 23,  38, 192, 212, 231, 202,  32, 111, 241,  62,   5, 253,  36, 204, 140, 174
	.byte	  0, 114,  32,  12, 148, 254, 123,  63, 162,  94, 103, 110, 108, 187,  95, 121
	.byte	 13, 135,  28,   3, 226,  33, 111, 122,  80, 234, 197, 219, 148, 145, 226,   2
	.byte	106,  95, 126, 187, 206, 203, 148,  83, 227,  27, 254,  15, 115,  45,  89,  55
	.byte	204, 112, 163,  63, 208, 208,  21,   8, 236, 252,  15,  30, 192,  84, 159, 207
	.byte	 12, 152, 160, 135,  53, 149, 192, 120, 229, 238, 125,  99, 254, 214,   7, 245
	.byte	 14,  61,  34, 208, 253, 226, 132,  29,  41, 209,  89, 102, 208,  44,  26, 125
	.byte	 80,  53, 131,  64, 249,  79, 238, 229, 114,  70, 234, 231, 220, 237, 160,  90
	.byte	 10, 141, 136,  20, 253, 223, 228,  92,  62, 239, 118,   0,  26, 205, 144,  54
	.byte	 62, 142,   6, 144, 107,  30, 131, 102,  20, 132, 246, 144,  95, 205,  18,  34
	.byte	230,  73, 163,  90, 192, 208, 102, 106, 133, 109, 212,  67, 174, 157, 208, 156
	.byte	 88, 220, 225, 198, 224, 149,  35,  71,  41,  77, 126, 198, 221,  41,  33,  75
	.byte	188, 216, 173, 101, 159, 194, 142,  40, 108, 193, 254, 156, 154, 156, 197, 193
	.byte	222, 102, 138, 121, 203, 220,  14, 163,   3, 204,  16, 206, 220, 223, 179, 188
	.byte	191,  92, 182, 109, 168, 101, 201,  16, 225,  23, 145,  47,  42, 223, 180, 185
	.byte	 22,  34,  25, 168, 153, 163,  92, 236, 107, 192,  16,  92, 206, 237, 237, 144
	.byte	 15, 206, 142,  84, 224, 253, 110, 147, 235, 115,  17, 219, 112,  34,  43, 183
	.byte	152, 158,  17,  32,  14, 254,  34, 162,  45,  43,  62, 247, 202, 252, 150,  77
	.byte	 57,  14, 117, 228,  86, 230,  60,  22, 136, 131, 217, 147,  86, 114,  51, 159
	.byte	166, 169,  84,  56,  13, 206,  53, 191, 141, 107, 182,  33, 151,  53, 178, 207
	.byte	239, 145, 139, 238, 219, 123,   1, 112, 121, 117,  32, 198,  69, 249,  44, 224
	.byte	176, 233, 123,  68, 113, 238, 168, 248,  31, 123, 199,  98, 250,  15, 215,  30
	.byte	 32, 116,  98,  64,  76, 146,  93,  98, 148,  40, 124,  35, 103, 168, 118, 108
	.byte	254,   0, 169, 139,  62,  68,   8, 238, 139,  98,  98, 215,  85,  11, 250,  31
	.byte	 64,  45, 169,  17, 235, 247, 218,  74, 115, 195, 133,  67, 221, 190, 215, 103
	.byte	194, 244, 146, 200,  68,  58, 214,  24, 117, 149, 210, 189,   6, 164, 146, 252
	.byte	190,  78,  82, 247, 102, 161,   7, 103, 236, 154,  90, 119, 140, 108, 138,  59
	.byte	150,  71, 137, 250,  49, 247,  49, 198,  73, 224,  23, 168, 176, 149, 208,  27
	.byte	169,  33, 161, 194,  24,  88, 201, 107,  11, 186, 122, 119,  87,  55,  79, 187
	.byte	218, 152,  36, 249, 237,  82,  47, 195, 179, 233, 193, 166,  26,  20, 105, 150
	.byte	 49, 187, 169,  78, 244, 232, 192,  36,  43,  10, 148,  36,  99,  10, 206, 102
	.byte	  6,   7,  25, 207, 191, 159, 112,  80, 122,  79, 124, 213,  50, 221, 216, 114
	.byte	140, 187,  49, 148,  76,   1,  22,  67, 192, 216, 231,  90, 154, 116,  35, 143
	.byte	160, 224,  29, 247,  38, 141, 242, 158,  24, 166, 192, 103, 106,   7, 188, 200
	.byte	255, 148,   4,  27, 236,  89,  18, 154, 230, 225, 101, 245, 198, 134, 149,   4
	.byte	 22, 153, 204, 241, 244,  66, 184,  79, 141, 246, 160, 205,  75,  91, 164,  91
	.byte	237, 193,  74, 254, 186, 171, 111,  38, 132, 133,  81, 245, 205,  94, 171, 242
	.byte	 12, 163,   9, 213, 223,  72,   3, 140,  57,  72,  23,  27,  72, 134, 215, 233
	.byte	210,  14, 242, 170, 240, 220, 164, 127, 231, 217, 251,  96,   2, 205, 243, 248
	.byte	 28,   8,  47, 103, 217, 238, 251, 114,  44, 167,  73, 208, 159,  83, 104,   7
	.byte	 36, 151, 129,  51, 172,  29,  97, 216,  76, 135,  54, 224, 109, 185,  81,  88
	.byte	116, 143, 140, 220,  33, 250, 182, 166, 240, 182, 103, 214, 173,  11, 223, 202
	.byte	 26, 250,  73,  21, 219, 135, 173, 142, 250,  27,  18, 177,  73, 217,  55,  95
	.byte	 72, 243,  41,  72,  52, 175,  99,   7,  90, 167,  81, 218, 217, 226,  14, 100
	.byte	184, 165, 213, 148, 129, 176, 209, 120, 233, 182, 135,  47, 195,   8,  56,  94
	.byte	 82,  44, 244,  94,  31, 119, 152,  37, 148,  13, 184, 150,  95,  62,  14, 113
	.byte	213, 185, 198,   5, 235,  39,  22, 136, 121, 161, 198,  45,  10, 186, 150,  88
	.byte	 44,  20, 184, 155, 116,  86, 186,  78, 161, 221, 246,  42,  21,  90,  94, 127
	.byte	 38, 113,  44, 231, 183, 125, 143,   0,  81, 149, 240, 106,  49,  62, 196, 217
	.byte	146, 175, 229,  55, 163, 175, 119, 171, 145,  85, 153, 141, 255, 186,  71, 215
	.byte	242, 214,   8,   5, 151, 149, 226, 187, 205,  43, 131, 172,  86,  27,  26, 106
	.byte	 58,  93, 159, 120, 226,   0, 142, 154, 248, 136,  32, 136,  46,  68,  87,  71
	.byte	174,   4,  12, 165,  68, 246,  89, 117,  14, 240,   4, 129, 146,  35, 156, 249
	.byte	  2,  85, 153, 249, 123, 193, 172, 189,  45,  25, 144,  53,  43, 202, 212, 244
	.byte	104,   7,  36,  52, 149,  27,  26, 124, 175, 206,  48,  77,  54, 146, 124, 174
	.byte	118, 161, 222, 134, 251, 128,  15, 105, 182, 229,  81, 175,  33,  86, 208, 141
	.byte	 41, 254,  24, 154, 108,  57, 158,  59, 137,  63,  92, 182, 253, 181, 200, 219
	.byte	 70,   7,   5,  99,  30, 101,  89, 121, 169, 151, 162, 215,  67, 171, 155,  82
	.byte	 63, 205,  48, 105, 245, 242, 202, 255, 227, 220, 215,  11, 254,  33, 104, 157
	.byte	 70,  71, 112, 106,   9,  47,  61,  28, 112, 202, 175, 118,   3, 196,  23,  16
	.byte	190,  79,  28, 104, 187, 185,  48, 218, 235,   4, 167, 172, 113, 195,  39, 175
	.byte	148, 110,  54, 115, 160, 209,  58,  72, 111,   0, 236, 241, 172, 127,  60,  98
	.byte	207, 149,  45, 119,  90,   5,  58,  42,  53, 225, 155,  47,  40,   7,   6,  60
	.byte	234,  44, 136,  82,  77,  52,   4, 128, 202, 144,  92, 127, 255,  68, 236, 125
	.byte	 92,  86,  83, 209, 242,  59,  96,  44, 135,  50, 233, 112, 211,  99, 148, 201
	.byte	 40, 107, 134, 212, 104,  31,  62,  19,  59, 182, 141, 135,  14,   0, 147, 170
	.byte	243,  25,  30, 187, 227,  31, 134, 250, 122, 106, 111,  67, 143,  50, 179, 219
	.byte	  8, 198, 102, 132, 150, 240, 241,   6, 204,   2,  67, 247, 179, 245, 109,  37
	.byte	117, 181, 160, 173, 159, 187,  31, 255, 128, 115,  33,   8,  58,  96, 182,  25
	.byte	164,  17, 126, 213,  12, 160,  21,  21, 191, 200, 240,  71,  93, 175,  47,  83
	.byte	 39,  30, 152, 178, 152, 184,  11, 147,  71, 255,  57, 216, 250,  49, 149, 214
	.byte	 14, 123, 248,  50,  65,  17,  22, 200,  41, 224,  34, 164, 190, 159, 216,  43
	.byte	147, 203, 217, 212, 245,   6, 153, 167, 128, 235,  22,  48, 238, 129,  92,  28
	.byte	140, 158, 253,  73,  75,  31, 226, 237, 151,  95, 119,  97, 255,  10,  79, 121
	.byte	 26, 190, 219,  61,  31, 138, 230,  17,  42, 155,  48, 145,  38, 178, 138, 134
	.byte	168,   6, 160,   1, 141, 129,  75, 165,  84, 224, 191,  12, 160, 254, 150, 109
	.byte	211, 138,  86,  57,  69,  12, 199, 250,  30,  94,  81, 109, 106,  82,  62, 254
	.byte	  2,  72,  46,  45,  54,  16, 192, 194,  11, 143,  76,  72, 125, 253, 186,  77
	.byte	188,  91,  64,  43,  89,  94, 120, 153,  50,  24,  99,  55, 123,  29,  34, 183
	.byte	114, 115, 145,  27,  53, 201,  52, 181,  46, 181, 127, 141, 202,  23, 166, 224
	.byte	 68, 116, 220, 224, 161, 150, 157, 245,  28,  26, 198,   5,   1,  19, 103, 144
	.byte	164,  69,  88,  12, 158, 114, 248, 209,   7,  73,  98, 155,  57, 100, 212,  97
	.byte	147,  49, 147, 164,  48, 233,  35, 223, 157,  95,  86,  88, 232,  30,  56, 204
	.byte	180, 158,  72, 251, 198,  99, 142,  45, 199, 202, 138,  28, 158, 145,  76, 172
	.byte	227, 128, 207,  78, 147, 255,  83,  93, 170,  64, 155,  68, 119,  74,   7,   5
	.byte	242,  36, 250,  10, 136, 135,  71, 214, 171, 163, 114, 238, 203,  56, 117, 150
	.byte	154, 227, 178,  64, 192, 236, 164,  28, 211,  68,  62, 246, 189,  68,  81, 241
	.byte	 36,  77,  79, 122,  10, 175, 236,  97, 149,   2, 210, 126,  14,  90,  52, 245
	.byte	216, 238, 216, 246,  17,  87,  30, 135, 189, 172,  52,  20, 244,  30, 240, 140
	.byte	184, 219,   1, 205, 161, 215,  73, 235, 229, 185, 110,  72,   7, 167, 173, 146
	.byte	 54,  32,  82, 128, 246,  15, 234, 112, 154,  14,  72, 162, 113, 176, 109, 153
	.byte	 74,  69,  38, 234,  35, 157, 250, 180, 141, 156, 233, 205,   1,  68, 101, 231
	.byte	 70,  83, 229, 140, 195, 229, 169, 249, 122, 149, 247,  95,  87, 207, 239, 221
	.byte	112, 104, 163,  12,   6, 161, 231, 169,   0,  66,  14,  70, 171, 180, 233,  13
	.byte	 36, 225,  93,  90, 206, 165,  59, 229, 234, 108, 193, 148, 123, 123,  58, 240
	.byte	 20, 164,  58,  18,  42,  75, 154,  25, 104, 142,  30,  93, 103, 190, 197,  43
	.byte	114, 123, 104, 226, 238, 135, 254, 188, 183,  94, 112,  54,  20,  19, 234, 159
	.byte	140, 191, 179, 248, 115, 228,  42, 233, 148, 178, 154, 148, 224, 206,  15,  46
	.byte	 92,  30, 153, 173, 149, 205, 216, 181, 252,  88, 163, 203,  18, 241,  88, 180
	.byte	214, 140, 204,  66,  15,  15, 154,  44, 204, 102, 148,  77,  94, 125,  85, 215
	.byte	231,  97,  35, 176, 217,  39, 205,  66, 157,  97,  60, 246, 215, 220,  33,  50
	.byte	 66, 168,  59,  49, 144,  15, 168,  64,  29, 130, 220,  22,  88,  40, 228,  28
	.byte	 99, 246,   0, 131,  62, 194,  53, 236,  82, 170,   1, 161, 153, 153,   4, 155
	.byte	150, 112,  17, 212, 182, 132,  31,  96,  75, 156, 251, 242,  35, 174, 194, 231
	.byte	248,  81, 148, 220, 116,   4,  79,  47,  12,  41,  10, 151,   5,   0, 180,  79
	.byte	 82, 179,  91, 148, 179, 242, 125, 141,  73, 189,  79, 106,  95, 101,  23, 145
	.byte	 19,   1, 120, 117, 173, 252, 191,  26,   5,  56, 199,  92, 203,  51, 101,  35
	.byte	  8, 115, 225,   5, 228, 249, 190, 100, 225, 117, 127, 164,  98, 207,  48, 128
	.byte	126,  87, 231, 120,   0,  70,   1,   9, 233, 244, 158, 243, 131, 156, 221,  21
	.byte	194, 132,  19,   7,  99, 114,  72,  44, 123, 221, 152, 163, 237, 202, 128, 151
	.byte	104,  14, 206, 137,  46,  84,  91, 174, 199, 119,   1, 244,  83, 109,   7, 229
	.byte	 56,  87, 188,  99, 173,  96,  74,  22, 171,  27, 103,  38, 118,   1, 168, 231
	.byte	183,   8, 125, 102, 221, 123, 151, 122,  16,  58,  28,  82,  45, 224, 159, 164
	.byte	 18, 168, 124, 150, 108,  18,  37,  22, 240,  47, 162, 240,  60,  62,  99, 193
	.byte	156,  78, 169, 251, 232,  20, 214, 152, 210, 214, 152, 163, 219,  56,  17,  77
	.byte	214, 242,  81,  79,   8, 115, 107, 186,  88, 217, 164,  13,  34, 157, 114, 170
	.byte	203, 150, 179,  44, 242, 186, 139, 109,  39,  82,  19, 165,  82, 189, 227,   8
	.byte	 10, 199, 241,  46, 242,  26,  43, 183, 209,  72,  25, 111, 245, 122, 117, 128
	.byte	134,  13,  99, 205, 101, 178, 179,  82,  24, 222, 158,  38, 243, 147, 169, 151
	.byte	196,  39, 251,  33, 246, 176,  52,  58,  50,  39,  15, 208, 124,  67,  84, 182
	.byte	 73,  73, 114,  36,  48, 177, 217, 103, 249, 234, 230, 240,   8, 120, 105, 237
	.byte	104,  70,  63, 167,  87,   4, 159, 156,  32, 190, 138,  82,  99,  53, 209,  24
	.byte	153,  61,   6, 173,  50, 155, 223,  69,  36,   8, 186,  10, 239, 155, 169, 148
	.byte	 82, 140, 124, 144,  57, 132, 186,  90, 122,  57,  30, 123, 112, 120, 180, 127
	.byte	 99, 171, 131,  32,   1,  88, 212,  94, 193,  67, 200, 149, 107, 218, 242, 165
	.byte	156, 213,  90,  78,   9,  25,   8,   7,   8,  30, 218, 198,  74, 183, 213, 113
	.byte	105, 146, 222, 114, 250, 160,  84,  92, 144,  47,  67,   0,  39, 114, 221,  73
	.byte	196, 129, 239, 130, 186,  21,  75, 185, 243, 201,  80, 240,  85,  34, 198,  22
	.byte	 89,   2, 147,   3,  15,  56, 116, 180,  62,  46,  11,  73, 169,  66,  52,  72
	.byte	112, 254,  36, 243,  18,  79, 254, 229, 200, 121, 126, 109, 103, 234, 239, 166
	.byte	114, 182,  31, 162, 168,  25, 212, 245, 233, 214, 167, 224, 131,  52, 192, 139
	.byte	114,  51, 117, 194, 155, 112,  61,  28,  79,  88, 164,  87, 160,  13, 153, 159
	.byte	 65, 130, 236, 235,  38,  12, 162, 211, 198, 150,  49, 170, 205,  30, 172,  26
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	148,  99, 117, 207, 212, 212,   9, 162, 161, 125,  14,  11, 124, 238, 151, 162
	.byte	144, 156, 163, 116, 144, 254, 166, 144, 148, 220, 106,  59, 249,  90,  86, 242
	.byte	104,  43,  33, 212,  10,  73,  36,  57, 234, 131, 158, 121,  43, 180, 238,  13
	.byte	 81, 162, 154, 212,   5, 228, 164, 153, 202,   5,  37, 144, 229, 109,  52,   7
	.byte	114, 118, 206, 207, 117,  99, 136, 242, 116, 182, 209,   9, 162,  33, 249,  96
	.byte	208, 171,  18, 216, 109, 164, 243,   1,  56, 209, 117, 182, 113, 204, 112,  27
	.byte	 84, 231, 156,  45, 209, 154,   3, 113, 173, 155,  43, 145,  56, 194, 104, 201
	.byte	171,  62,  83, 132,  66, 102,   3, 221, 103,  15, 117, 136, 209, 145, 128,  63
	.byte	 98, 110,  96, 204, 228, 204,  74, 126, 113, 160, 145, 215, 132, 172, 154,  99
	.byte	226, 123, 179,  67, 133, 146, 156,  89, 200,  14,  66, 146,  78,  79, 228,  77
	.byte	186, 109,  29, 158, 240,  26, 173,   5, 135, 197, 116,  12, 122,  48, 232,  53
	.byte	122,   9, 141, 175,  46,  51,  72,  18,  29, 244,  22, 108,  67,  30, 115, 125
	.byte	 22,  61, 162,   8,   5, 179, 188, 237, 246, 155,  85, 155,  54,  90,  23, 186
	.byte	 97, 162,   1, 234, 199, 200,   0, 115, 197, 140, 203, 241, 114,  34,   3, 254
	.byte	 56, 111, 123,  59,  43,  87, 201, 215,  61,  16,  91, 171, 135,  10,  72, 100
	.byte	226,  93, 187, 143, 111, 112,  62, 107, 213, 252, 244,  24,  87, 147,  58,  59
	.byte	  6, 201, 215, 142,  21, 165,  46, 159, 213, 254, 133,  66, 130, 127, 157, 171
	.byte	170, 174, 154, 181, 230,  94,   6,   6, 219,   8, 116,  93,  55, 215, 121, 155
	.byte	  6,  54,  71,  63,  72,  95,  98,  56,  75, 136, 201, 162, 167, 153, 139,  62
	.byte	 21,  34, 165,  47, 147,   7,  38, 145,   5,  89,  39, 251, 222, 200,  32,  29
	.byte	114, 198,  35,  13,  23,   3,  18, 181, 238,  18,  25,  40, 156,  28, 226,  85
	.byte	 91,  94,  42, 143, 108,  70,   9,  85, 163, 225,  37, 162, 212, 186, 132, 246
	.byte	124, 135, 113,  62, 155, 185,  95,  68,  61, 104, 254,  68, 151,  25,  10,  41
	.byte	177, 129, 201, 147, 175, 172,  89, 137,  83, 210,   2, 205,  83,  32, 130,   0
	.byte	 42,  85, 185, 167,  38,  35, 164, 130, 199,  25, 105, 155,  85, 167, 131, 124
	.byte	145, 229, 215,  99, 115, 117, 116,  95, 117, 191,  62, 191,  23,  82, 200, 214
	.byte	 34,  66, 252,  75,  80, 135, 210,  51,  18, 234, 232,  67,  69, 184,  49, 230
	.byte	 54, 181,   5, 185, 198, 223,  76, 203,  67, 107,  10,   7, 249, 167, 127,  97
	.byte	 64, 201, 246,  46, 120,  64, 228,  48, 247, 177,  18,  42,  38,  87, 148, 182
	.byte	 43,  91,  17, 146,  74,  95,  46,  51,  69, 101, 252, 193,  53,  43,  59,  26
	.byte	 72,  61, 202,  18, 112,  13, 255,  73,  23, 205, 194,  10, 123, 171,  46,  22
	.byte	  6, 218, 252,   5,  25, 255,  51,  14, 137, 163, 134, 244, 122, 169, 195,  53
	.byte	 26,  28,   5,  51,  45,  55, 163, 133,  64,  11,  94,  97, 103, 186,  42, 182
	.byte	 82,  59, 129, 214, 121, 161,  13, 121,  65, 183,  40,  10, 118, 192, 123,   5
	.byte	158, 181,  89, 212, 161, 214,  80,  40,  92, 189,  91, 133, 139,  93, 170, 180
	.byte	  1,  67, 107, 181, 218, 204,  86,  72, 220,  81,  19,   5, 156,  20, 132, 224
	.byte	200, 132, 199, 131,  96, 197, 252, 246,  16, 191,  31,  85, 128,  25, 174, 170
	.byte	138,  52,  77, 149, 149, 133, 214,  29,  63, 143, 240, 225, 159, 122, 219,  70
	.byte	136,  27, 251, 199, 153,  32,  80, 153, 129, 162, 164, 164, 202,  15, 211, 127
	.byte	202, 251, 255,  37, 131, 133,  40, 183, 193,  80, 224, 145, 156,   4, 236,  17
	.byte	104, 200, 126, 237,  14, 198, 102,  96, 111, 103,  30,  82,  34, 187,  49,  57
	.byte	210,  87, 214,  35, 171, 228, 234, 132, 249, 161, 105, 201, 107, 138, 178,   9
	.byte	248, 191,  47, 254, 133,  63,  37, 124, 137,  95,  24, 171,  68,  52,  24,  45
	.byte	 79,  39,  54, 132,  36, 126, 104, 167,  93, 190,  20,  12,  36, 151, 104,  28
	.byte	154, 208, 159, 102,  63, 160,  97,  47, 194, 201, 216, 101, 219, 159,   8, 106
	.byte	 77, 143, 177, 132,  71, 254, 139,  46, 208, 151, 205, 172, 170, 204,   2,  97
	.byte	100, 171,   9,  14, 102, 119, 123,  44, 220,  25,  21,  70,  38, 224, 145, 151
	.byte	212, 127,   6, 173,  72, 106, 146, 152,  80, 204, 249, 204, 231,  80, 250, 134
	.byte	 26, 137, 161, 200, 229, 184, 238,  35,  52,  50, 194, 235, 219,  61, 142, 178
	.byte	165, 213,  70, 177, 161, 211, 118,  73, 212, 126,  17, 216, 205, 129, 154, 251
	.byte	212, 123, 250,  32,  78, 112, 173,  16, 203,  90,  50,  38, 108,  38, 186, 109
	.byte	210, 126,  90, 222,  26, 112, 167, 180,  18,  12, 167, 236, 139,  12, 207,  10
	.byte	148,  80,  16, 201, 109,  11,  30, 171,  69, 202, 144, 216,  19, 223, 141,  65
	.byte	 52, 169, 209,  50, 147, 254, 252,  47,  67, 115, 122, 180, 149, 214,  80, 247
	.byte	112, 100, 154, 146,   5, 128,  12, 229, 131,  68, 126, 220, 200, 207,   7,  37
	.byte	137, 141, 174, 100,  45,  82,  62, 169,  45, 207, 101, 192,   2, 224,   8,  72
	.byte	 10,  65,  80, 102,  40, 216,  71, 103,  92, 151,  31, 153, 183, 199,  80,  85
	.byte	 99, 194,  36, 240,  39,  98, 131, 187, 118,  17, 107,  67, 161,  14,  72, 192
	.byte	250, 146, 105, 159,  36,  45, 183,  87,  92,  55,  64, 160, 170,  75, 154, 157
	.byte	 29,  35, 255, 199,  53, 120,  72, 160,  66,  14,  98, 235, 124,  35, 176,  69
	.byte	 80,  93,  49, 237,   0,  63,  21, 158,  68, 190,   9, 243,  99, 245, 109, 148
	.byte	141,  49, 237, 179, 168,  35, 237, 234, 154, 187, 236,  19, 169, 222, 172, 209
	.byte	108,  18,  94, 138, 154, 147,  17,  19, 154, 194,  33,  14, 149,  34,  78, 122
	.byte	 76,  13, 153, 239,  67,  41,  81, 185, 171, 118,  24,  65, 223, 177, 107, 255
	.byte	206, 140, 243, 105,  38, 124, 107, 207, 130, 134,  51, 190, 177, 152,  92, 218
	.byte	235, 220, 252, 187, 202, 142,   6, 187, 180, 167,  88, 156,  42, 105, 134, 177
	.byte	134, 114, 128, 113, 144,  66, 127,  51,  80, 122, 188,  91, 212, 254, 160, 193
	.byte	136, 231,  43,  21,   9,  86, 173,  40,  21,  37, 147,  53,  16, 189, 217, 198
	.byte	 14, 195,  47,  39,  33, 125, 243, 123, 107, 189,  74,  52, 154,  21, 152,  11
	.byte	  9, 109, 216, 181, 181, 115, 124, 214, 111, 208,  15,  38, 246,  22, 254, 160
	.byte	 10, 198, 209,  12,  15,  42,  67, 159,  60, 253,  33, 153,  48, 255,  56, 248
	.byte	 99, 176, 175, 148, 196, 115, 132,   6, 158, 255,  43, 208,  54, 205, 200, 124
	.byte	 48, 169,  84, 242,  25, 181, 138, 111,   7, 210,  64, 104, 110, 176,  45, 106
	.byte	 85,  36, 125,  23, 130, 134,  61,  45, 187, 205,  47,  17, 168,   2,  68,  83
	.byte	160,  33, 152,  10, 192, 141, 232, 157,  86, 239,  33, 220, 103,  72, 243, 199
	.byte	116, 174, 235, 168,  90, 173,  11,  12, 152,  34,  31,  31, 238,  48,  90, 172
	.byte	168,  94, 203, 208, 239, 196,  14,  85, 144, 139, 210,  83,  69,  36,  37,  88
	.byte	172, 184, 141, 116,  81, 211, 243,  58,  27,  12,  23, 177, 185, 100,  76, 147
	.byte	150, 224, 149,  85,   5, 154, 206, 241, 101, 170,  58,  12,   0, 223, 170,  85
	.byte	 84, 243,  60, 141, 191, 214, 251, 147,  13, 151, 238, 202, 210,  33, 124, 142
	.byte	112,  65,  45,  26, 216, 174,  19, 155, 244, 224, 134, 228,   3, 248, 192, 151
	.byte	 87,  38, 183, 183, 195, 133, 207, 143, 153, 245, 225, 181,  60, 209, 200,  50
	.byte	122, 120, 251, 146, 110, 187,  99, 206, 208, 114,  51, 158,  86, 234,  52, 223
	.byte	248, 141, 106, 193, 245, 116, 158, 187,  94, 220,  62,   2, 254, 191, 227,   7
	.byte	 60,   1, 150, 228, 225,  83, 180, 142,  53, 168, 169,   3, 156, 245, 144, 227
	.byte	 37,  12, 227,  31, 227, 146, 246, 220, 136, 123, 104, 212, 135, 116, 225, 169
	.byte	 90,  64,  61,  93, 160, 245, 187, 228,  54, 146, 149, 137,  31, 212, 170, 102
	.byte	190, 251, 145, 152, 109, 219, 250, 253,  23, 159, 102, 157,  84, 178, 185, 230
	.byte	166,   3, 156,  85, 171, 200, 117,   1, 225, 133,  65,  65,  95, 120,  95,  66
	.byte	 46, 181, 137, 138,  39,  86, 167, 194, 144, 234, 201, 202,  29, 198,  98, 248
	.byte	252, 182, 207, 226,  95, 122, 175,  48, 181, 118,  95,  53, 122, 210, 227, 167
	.byte	111, 130, 131,  31, 234, 159,  87,  49,  29, 124,  59, 213, 244,  39, 181, 155
	.byte	 44,  79,  11, 235, 244,  57,  87, 163, 207,  81, 193, 182, 243, 190, 177, 198
	.byte	111, 141, 178, 169, 177, 241, 136, 168,  18, 216, 244, 209,  58, 241,  18,  81
	.byte	128, 209,  89, 237, 254,   9,  27,   3,  95,  55, 113,  59,  36, 252,  68, 224
	.byte	 41,  92, 197, 132, 117,  37, 149,  19,  75,  83,  81,  71,  25,  96, 215,   7
	.byte	120,  58, 184,  29,  11,  14, 136,  48,  60,  90,   5, 222,   1, 249,  36,  82
	.byte	 56, 243,  83,  15, 243, 206, 229, 116, 107, 120, 241, 243,  69,  44, 157,  74
	.byte	 78,  48, 127,  21, 194,  54, 158, 201,  69, 133, 169, 139, 167,  66, 212, 126
	.byte	227,  34,  28,  62, 230, 236, 107,  33,  97, 218, 237, 238, 136,  56, 153, 235
	.byte	230, 211,  44,  93, 203,   8, 176,  35, 225,  21, 177,  25, 141,  78, 196, 101
	.byte	 63,   0,   9,  31,  20,   1, 192, 135,  65, 140, 198, 160,   4, 195, 123,  86
	.byte	140, 130,  84, 140,  64, 176,  31, 200,  79,  24, 191, 123,  48, 120, 203,  89
	.byte	106, 172,  78, 136,  15, 176, 243, 234, 130,  11,  25, 110, 222,  83,  52, 110
	.byte	164, 135, 153,  34, 149, 148,  11, 156,  56,  31, 155, 165,  81,  24, 244, 181
	.byte	155,  60, 196, 199, 177,  60, 235,  98,  39,   2,  82, 111,  60, 184, 102, 147
	.byte	100, 236,  93,  38, 214, 221,   5, 118, 174, 246,  40,  56,   4, 146,  72, 162
	.byte	 74, 242,  16, 144, 171, 248, 149, 175, 128, 210, 147,  32,  16,  99, 158, 136
	.byte	176, 111, 206, 247, 127,  84, 189,  42, 178, 150, 248, 238,  10, 203, 186, 139
	.byte	195, 171, 232,  11, 133, 184,  80, 114,  83,  47, 176, 156,  61, 127, 232,  48
	.byte	 48, 227,  23, 215, 120, 165, 238, 119,   9,  45, 237,   2,  79, 223,   0, 172
	.byte	178, 178,  61, 242,   5,  16, 130, 186, 250, 151,  32,  47, 116,  68, 205, 123
	.byte	118,  24,  43, 110, 159, 248, 128,  37, 243, 252, 151,  54, 219,  49,  72, 184
	.byte	  3,  33, 116, 142, 136,  31, 252, 137, 243, 162,  26,   1, 233,  36, 156,  89
	.byte	142,  73,  26, 103,   6, 139, 129, 155,  16,  71, 104,   5, 231,  95,  66, 232
	.byte	119, 205, 241,  57, 139, 188, 161,   4,  66,   6, 208, 115,  94,  33, 163, 182
	.byte	 62, 144,   0, 149, 179,  89, 144,  76, 108, 231, 109,  32, 145,  33, 197, 224
	.byte	219, 126, 126, 184, 175,  73, 234, 118,  71,   1,  58, 165, 144, 124, 110,  74
	.byte	206, 145,  24, 232, 139,  39, 193,  88, 226, 174, 155,  11, 121, 139, 107,  89
	.byte	150, 111, 160, 123, 182, 212, 134,   2,   1,  54, 149, 247, 115, 250, 250, 195
	.byte	168, 173, 141,  56,  49, 108,  53, 238, 249, 192, 211,   1,  38,  75, 239,  56
	.byte	 96, 224, 228,   6, 199, 241, 157, 152, 240, 100,  38, 137,  49,   5, 245, 207
	.byte	244, 223,  88, 117, 229, 178, 234, 139,   8, 225,  58, 203,  20,  88, 240,  14
	.byte	 94, 182, 138, 197, 219, 214,  87,  50, 138, 150,  49, 248, 175, 207,  21,   3
	.byte	172,  85, 212, 154,  74, 199, 220, 107, 146, 118,  18, 111, 185,  20,  52, 162
	.byte	171, 230, 163, 185, 203, 252, 251, 174, 192, 197, 205,  48,  29, 131,  81, 103
	.byte	252, 170,  87,  14, 187,  15, 177,   1, 220, 123, 220,  14,  82, 200,  10, 238
	.byte	 64,  24,  57, 163,  20, 170, 195,  74, 217,  32,  43, 117,  71, 168, 126, 156
	.byte	220, 166,  49,  96, 204, 192, 214,  65, 121, 242,  69,  78, 189, 252,  52, 106
	.byte	204, 151, 135,  15, 136,  86,  55, 240,  80,  57,  79, 213, 173,  20, 118,  42
	.byte	136, 172, 231, 127, 206,  60, 155, 165,  37, 236, 173, 160, 186, 255, 181,  28
	.byte	206,   4,  89, 234, 233, 154,  99, 126, 233, 231, 196,   1, 209, 250, 195, 177
	.byte	188,  31,  19, 130,  80, 247, 158, 184,  90, 168, 157,  45,  75, 155, 169, 150
	.byte	172,  65,  63, 101, 159, 234, 146, 155,  59, 182,  71, 193,  48, 123, 180,  18
	.byte	180, 236,  32, 118,  50, 176,   6, 163, 219, 115, 223, 159, 112,  57,  58, 122
	.byte	251, 202, 172,  13,  78,   3, 245, 175,  50,  76,  23,  22,  56,   5, 203, 227
	.byte	 66, 108, 159,  21, 248,  95, 244, 106, 103, 226, 156, 193,  19, 210, 144, 198
	.byte	141, 169, 228, 129, 229, 114, 232, 209, 209, 122,  56,  37,   9, 105, 119,  25
	.byte	 38, 181, 170, 104, 187, 169, 196,  94, 151, 144, 241,   0, 111,  40, 203,  99
	.byte	 78, 252, 106,   9, 168,  95, 127, 150,  75, 202, 229, 220, 148,  31, 221,  14
	.byte	252,  33, 202,  72,  71, 189, 121, 126,  31,  56,  67, 245,  28, 194, 230, 225
	.byte	235,  27,  33, 122,  31, 209, 123, 181,  56, 222, 111,  36,  39, 211, 133, 223
	.byte	120, 150, 110,  48,  92, 141, 112, 143,  40, 227, 248, 219, 148, 220,  26, 117
	.byte	243, 223, 151, 178, 143, 196,  20,  48, 147,  30, 229,  95, 234, 135, 131, 129
	.byte	230, 121, 146,  66, 216, 235, 177, 170, 180, 171, 129, 186,   9,  16, 133,  73
	.byte	193,  44, 208,  70, 191, 252, 213,  88, 239, 236, 168, 162, 142,  92, 203,  89
	.byte	208, 171, 119,  55,  89, 144, 217, 239, 172, 242, 135, 159,  70, 119,  85, 247
	.byte	180,  36,  97, 204,  26,  36, 242, 131, 203, 103,  48,  17,   9, 135,  71, 232
	.byte	218, 235, 210, 216, 228, 145,  84, 241,  77, 251, 254, 254, 155, 176,  16, 181
	.byte	189, 157, 239, 126, 146, 252, 147, 200, 135,  16, 171, 163,  49, 181,  21,  23
	.byte	230,  57, 149, 178,  77, 181, 139,  43,  88, 145, 194,  71, 145, 251, 243, 234
	.byte	184,   9,  67, 224,  52, 136, 172, 107,  76,   8, 213, 147, 255, 115, 239,  56
	.byte	 70,  46, 238,  72,  60,  39, 216, 125, 118,  65,  30,  59, 183,  43, 115,  55
	.byte	246,  44,  47, 146, 200,  30,  73,  60, 190, 197, 237,   3, 141,   6, 242,  10
	.byte	 62, 234,  69,  93,  55,  15,  62, 129, 230,  61, 214, 179,   9,  11, 212,  59
	.byte	114,  89, 200,  23,  38, 240,  53,  49, 116, 145, 218,  74, 161,  41, 214,  21
	.byte	  2, 155, 210,   0, 114, 183, 144, 203, 253, 145, 107, 210, 222,  84, 170,  82
	.byte	 70,  54, 203,  98, 203,  42,  80,  47,  22,  38, 204,   1, 143, 159, 197, 159
	.byte	164,  89, 126,  53, 187,  89, 189,  56, 158, 183,  36,  61, 109, 114, 204,  62
	.byte	 33,  14,  74,  29,  27, 192,  26, 130,  41, 225, 188,  25, 204,  25,  63,  58
	.byte	 76, 203, 218,  44,   5, 200, 178,   2,  15, 169, 218, 166, 165, 218,   0,  13
	.byte	108, 220,  27, 118, 243, 241, 126, 229,  61, 136, 123, 182,   0, 254, 107,  68
	.byte	 68, 228, 120, 207, 189,  67, 228, 203, 242, 179, 188, 159,  75,  83, 213,  54
	.byte	142, 139,  89, 241, 136,   9, 141, 132,  40, 198, 135,   9, 203, 239, 104,  18
	.byte	 24,  81, 113, 238, 237, 196,  56,  52, 209,  99,  21, 192,  60, 132, 235, 121
	.byte	 72, 150, 207,  68,  24, 131,  13, 209,  97, 105,  55, 242, 227,  77, 131, 220
	.byte	168, 151, 110,  12,  66,   7, 201,  10,  97,  37, 232, 187, 221, 142,  55,   9
	.byte	248, 226,   0, 189, 164,  51,  21, 158,  75, 229,  74, 121,  53, 205,  99, 118
	.byte	108, 117,  23, 234, 173, 245,  59,  89,  77, 217,  52,  27, 181, 210,  20, 232
	.byte	151,   9, 190,  55, 106, 217, 212,  29, 148, 224, 206,   7,  90,  93, 219,  54
	.byte	180, 100,  98, 208,  47, 248,  52, 123, 199, 199, 241, 146,  36,  40, 184,  23
	.byte	252,  98, 240, 176, 207,  91, 152,  92, 147, 240, 197, 198, 150, 222,  24, 221
	.byte	 52,  34, 206, 210,  26,  87,  34, 189, 192, 234,   2, 106,  21, 232, 140, 142
	.byte	 90, 222, 151, 138, 150, 177,  51, 182, 113, 115,  97,  23, 152, 164, 218,  49
	.byte	250,  78, 178, 102, 108, 249, 252, 103, 157,  10, 154, 174,  95,  51, 196, 192
	.byte	136, 244,   4,  82,  33, 164, 255,  16, 169,  83,  15, 100, 133, 174, 249, 196
	.byte	224,   9, 205, 174, 140, 211, 145,   5, 171, 183,  24, 178,  84, 125, 223,  33
	.byte	218,  74, 120,  93, 228,  69,  71,  74,  48, 197, 192, 181, 255,  45,  44, 168
	.byte	222, 213,   4, 108, 254, 233,   2, 161,  48,  95, 242, 115, 157,  84, 150,  94
	.byte	  8, 209,  94,  35, 150,  72, 209, 207, 231,  64, 217, 110, 183,   9, 186,  26
	.byte	 58,  42, 126, 206, 132,  93, 164,  57, 114,  45, 162, 102,  39,  70, 248, 168
	.byte	133,  52,  23, 118, 138,  21, 221,  78,  86, 108, 160, 185,  91, 187, 184, 111
	.byte	202,  29, 175,  24, 153, 129,  92,  29, 124, 216, 225,  83, 195,  53,  91, 161
	.byte	 64,  94, 228, 146,  13, 242,  66,  14, 105, 187,  81,  56,  84,  93, 123, 156
	.byte	 74, 171, 192,  36,  65, 165, 215, 123, 101,  43, 102, 147, 107, 199, 183,  61
	.byte	 93, 128,  88, 248, 156,  90,  72, 161, 134, 161, 151, 186, 227, 183,  78, 182
	.byte	188,  16, 213, 195, 136, 186,  76,  95, 199,  74, 169, 102, 202,  70, 137, 239
	.byte	 80, 125,  59,  64, 198,  81, 192, 140, 119, 192,  61, 198,  18, 164, 242, 236
	.byte	122, 190,   2, 249,  76,  43,  72,  70,   5,  98,   0, 182, 143, 121,  55,  17
	.byte	250, 116, 232,   3, 203,  26,  23, 211, 169, 117, 155, 156, 213, 177,  47, 110
	.byte	 30,  83, 197,  74, 165, 240, 174, 202, 146, 255, 241,  80, 154,   1,  88,  56
	.byte	 38, 184,  26,  89, 118, 155,  22,  31,  17,  68, 123,  91, 162,   5,  17, 122
	.byte	246, 177, 228,  44,  69, 141,  33,  20,  36, 242, 195,  18,  14,  57,  69, 164
	.byte	 23,  45, 249,  90, 147, 198,  34, 144,  81, 188, 221, 125, 176,  27, 220,  71
	.byte	156,  27,  29,  87,  47,  49,  20, 103,  44, 129, 151, 176, 126,   6,   6,  31
	.byte	 26, 101, 167,  80,  98,  64,  65, 139, 209, 164, 200,   1,  30,  21,  50, 244
	.byte	 70, 222,  17,  24, 190, 177, 198, 145, 182,  82,  78,  84,  60,  60,  78,  68
	.byte	 32, 163, 218,  37, 117, 134, 110, 141, 135, 116,  22, 225, 221, 138, 213, 161
	.byte	 12,  39, 212, 110,   1, 145, 248, 101,  22, 186,  16,   4,  83, 180,  12, 142
	.byte	157, 175,   3,  81, 158,  39, 236, 184, 162, 195, 143, 107, 191,  43, 107, 190
	.byte	132, 111, 137, 216, 165,  61,   2, 175,  51, 185, 175,  26,  20,  65, 116,  65
	.byte	 97,  72, 124, 209,  70,  70,  11, 209, 149, 205, 153,  70, 116, 168, 155, 184
	.byte	  6,  13, 105, 245, 160, 211,  97,  31, 140, 134, 154,   1,  95, 215, 110, 204
	.byte	 39, 199,  50,  88,  88, 240, 119,  15, 188,  64,  90,  14, 162, 152,  78,   1
	.byte	 34, 149,   0, 134,   5, 208,   5, 196,  84, 226,   7,  87,   0,  58, 177,  57
	.byte	177,  95,  63,  45,  83, 250, 193, 196, 155, 167,  25, 148, 141, 113, 103, 221
	.byte	 52, 179, 133,  40,  19, 155,  31,   8, 203, 176, 102,  38, 214, 196, 124,  28
	.byte	206,  38,   2,  60,  51, 246, 180, 216,  19,  88, 204, 140,  76,  95,  15, 239
	.byte	 54,  21, 113,  68, 191, 176,   5,  37,  95, 254, 173, 225,  81,   4,  63,  29
	.byte	131,  14,   2, 198, 219,  75,  77,  28,  30, 243, 138, 162,  19,  19, 241, 199
	.byte	246, 190,  60, 103, 178, 205, 151,  61,  13,  68,  88,  38,  49,  29,  67,  65
	.byte	132, 100,  84, 250, 132, 231, 250, 117,  74, 161, 199,   1, 198, 194, 142, 166
	.byte	 24, 117, 243,  60, 152, 252, 133,  64, 234,  81, 235, 157, 171,  84,  11, 184
	.byte	 46, 253,  92,  41, 109, 204, 247, 158, 123, 235, 164,  49, 227, 185, 115, 222
	.byte	 90, 116, 221, 252, 225, 233,  71, 210, 103, 187, 154,  89,  75,  62, 157, 229
	.byte	177,  82,  55, 150,  51, 174, 239,  38, 250, 230, 247, 117, 136,   0, 134,  71
	.byte	112,  70, 250, 150, 139, 148,  69, 247, 240,  95,  46,  72, 172, 210,  91, 225
	.byte	158, 202, 160, 232,  91, 147,  49, 208, 175,   0,  66, 244,  68, 210,  28,  49
	.byte	190, 145, 144, 225, 133, 200, 253, 241, 118, 152, 157, 101, 175,   3, 194,  72
	.byte	 58, 165,  90,  89,  51,  57, 127, 249, 204, 115, 118,  18,  12,  59, 123, 133
	.byte	156,  28, 218, 172,  43, 149,  18, 197, 233, 127, 219,  43, 188, 167,  39,  98
	.byte	 46, 152, 165, 219, 113, 235,  85, 212, 203, 137, 249, 229, 120,  85,  76, 204
	.byte	238,  96,  30, 167, 114, 249, 164,  23,  32,   4,  87, 212,  22, 145,  23,  21
	.byte	220, 187, 145,  98, 134, 128,   6,  90, 225,  56,  48, 182, 152, 108,   1, 135
	.byte	 74, 164,  90, 210,  16,  54, 105, 223,  62, 217, 189, 238,  37, 189,  14, 245
	.byte	 37, 223,  89, 190,  30,  76, 181,  52,  16, 130, 149,  54, 166,  78, 201, 112
	.byte	234,  64, 231, 114, 157,  71,  90,  55, 253, 232, 151,  74, 252,   8,  39,  96
	.byte	  4,  20,  45, 111, 108,  63, 237, 102,  55,  75,  98,  87, 218,  64,  22, 132
	.byte	 86, 110, 177, 102, 229, 229,  84,  12, 211, 212,  87, 140,  51, 228, 179, 115
	.byte	115, 227,  66,  52,  46, 118, 253,  78, 247, 212,  85, 157,  53, 246,   5, 102
	.byte	234, 169, 165,  66, 202, 253,  40, 232, 195, 191, 118,  90, 168,   2,  20, 155
	.byte	 82, 143,  61, 166,  89,   9, 169,  40, 194, 158,  38,  79, 119, 135, 176,   5
	.byte	150, 134, 180,  50,  76,  56, 254,  95, 250,  57,  91, 226,  74, 210,  20, 189
	.byte	208, 145, 181, 226,  26, 154,  28, 204, 138,  52, 227,   1, 255, 234,   5, 211
	.byte	 34, 130, 111, 135,  90, 161, 244, 134, 134,  56, 236,  40,   6,  83,  28, 110
	.byte	102,  10, 216, 233, 220,  56, 152, 234,  82, 255,  70, 176,   2,   7, 182, 211
	.byte	144, 145,  71, 167, 221,  27,  11, 209, 143, 208,  94,  53, 162,  87, 205, 124
	.byte	 95,  18, 138, 198, 185,   2, 187, 209, 112, 181,  29, 185, 237, 145, 165,  91
	.byte	 10,  38,  98, 110, 139, 167, 117, 177, 158, 141, 152, 244, 103, 104,   3, 112
	.byte	152,  60,  70,  14,  72, 144, 187, 209,  17,  88, 218, 120, 124, 116,   3, 109
	.byte	 52, 233,  52,  30, 164, 216, 186, 102, 210,  73,  15, 145,  37, 213, 134, 170
	.byte	141,  83, 129, 123, 214, 203,  47,  29,  88, 203, 121, 184, 216,   7,  91, 194
	.byte	 18, 109, 103,  56, 214, 255, 133,  47,  48, 174, 177, 197, 141, 163, 175, 171
	.byte	 52, 184,  69,   0, 230,   1,  23, 173, 131,  24, 232, 246,  64, 182, 231,  13
	.byte	214, 202, 190, 186, 167,  79, 241, 113,  19,  45,   7, 165,   0, 176, 140, 153
	.byte	204, 155,  44, 150, 109,  43, 220, 150,  74,  88, 131,   1,  91, 243, 131, 135
	.byte	 26, 111, 226,  99, 149, 194,  63, 102, 155, 103, 157, 151, 146, 143, 171, 100
	.byte	 79, 236, 224, 238, 151, 209, 248, 222, 245, 219, 155, 115,  65, 140,  76, 180
	.byte	222,  63,   1, 180,  20,  76, 121, 203,  64, 119, 239,  58,  62,  59, 144,  63
	.byte	 80, 202, 177, 214, 238,  60,  84, 224,  80,  73, 143, 232, 224, 173, 162, 228
	.byte	 34, 163, 125, 196,  77, 185,  87, 149, 136, 244,  49, 202, 212, 252,  84,  87
	.byte	  0,  15, 220, 169, 142, 182, 122, 224, 133, 204,  74, 136,  21, 147,  65,  20
	.byte	132, 120,  13, 197,  62, 105, 127, 134,  67,  43,  62, 220,  86, 217,  40,  15
	.byte	180, 129, 169,  81, 148, 156, 153, 168, 217, 159, 207, 174, 227,  91, 254, 109
	.byte	224, 137, 255,  63,  51,  56, 126, 207, 220,  95, 243,  93, 100, 152, 144,  10
	.byte	 53,  85,  30, 133,  62, 142, 103, 151, 136,  35, 226, 230, 236,  74,  78,  23
	.byte	156, 142, 230, 113, 238,  31, 137,   3, 191,  93, 186, 254, 186,  82,  10, 185
	.byte	208,  32, 226, 115, 153, 136, 170, 225, 107,  98,  51, 195, 117,  95, 128,  30
	.byte	238,  95,  80, 105, 167, 141, 194, 111, 237, 239, 157,  80, 225, 160,  11, 201
	.byte	245, 220, 202, 203, 183, 247, 245, 172, 175, 204,  55,  45, 177, 104, 254,  52
	.byte	118, 218, 119, 198, 160,  65, 138, 180, 139,  86, 174,  74,  30,  78, 231,  28
	.byte	106, 101, 219,  27,   1, 196, 241, 210, 208, 201, 118, 102, 115, 183,  52,  11
	.byte	244,  37, 216,  80,   3, 170, 212,  60, 196,  84, 117,  10,  12, 179,  73, 121
	.byte	 35, 187,   2,  61, 219, 213, 187,  11, 237,  44, 196, 254, 153,  78, 254,  58
	.byte	 42, 172, 141,  42, 199, 148, 240,  20, 106, 176, 230,  76, 120, 109, 253,  97
	.byte	176, 201,  27, 215, 203,  50, 231, 249, 187, 207, 208, 120,  43, 244, 185, 144
	.byte	240,  68,  99, 116, 125, 223, 200,  69, 223, 129,  51,  50,   0, 176, 132, 142
	.byte	  1, 107,  44,  75,  38,  23,  84, 247,  64, 141, 215, 167,  85, 236,  43, 205
	.byte	 54, 175, 163, 213,  53, 251,  56, 198, 210, 125,  93, 151, 101,  85,  71, 187
	.byte	146, 181,  69, 179,  92,  67, 168, 236, 100, 245,  89,  34, 176,  39, 127, 120
	.byte	120, 194, 235,   6,  43,  85,  40, 197, 103,  31, 143, 187,  27, 225, 220,  51
	.byte	 79, 160,  21, 182,  30,  44, 183, 221,  29,  42, 186, 114, 217, 151, 149, 150
	.byte	 94,  16, 181, 133, 223, 249, 169,  53, 124, 247, 202,   2, 134, 172, 173,  14
	.byte	 87, 197, 125, 211, 116, 131,  52,  18,  77, 132, 116,  23, 238,  12, 162, 149
	.byte	244,  65,  60, 203, 218,  17, 113, 183, 185, 154,  98,  69, 144, 174, 166, 104
	.byte	 33,  78,  47, 102, 192,  15,   8,   7,  68, 115,   8,  23, 234,   6, 104, 195
	.byte	166, 199, 154,  30, 105, 168, 172,  52,  42,  29, 133,  28, 153, 252,  77, 107
	.byte	  2, 107, 169, 242, 116,  79,  31, 109, 195, 198, 143,  11, 107, 176,  52,   6
	.byte	214, 150,  54, 137, 137, 104, 194,  71, 245, 119, 129,  57,   8, 139,  64, 223
	.byte	 39, 156, 168,  47, 184,  27,  51, 135, 194, 140,  35, 109,  12, 124, 225, 211
	.byte	 80,  70, 183, 188,  68,  37, 127,   6, 165,  60, 255, 114, 202, 198, 212, 241
	.byte	194,  56, 163, 176,  12, 184,  50, 210,   7, 173,  95,  26,  34, 146,   6, 200
	.byte	176,   2, 126, 178,  52, 192,  14, 254,  29, 204, 144, 251, 253, 251, 227, 255
	.byte	 20,  12, 163, 255,  47,  25,  83, 164, 157, 233, 131, 165, 139, 129, 178,   9
	.byte	132, 138,   5, 235, 241, 206, 190, 104, 171,  93, 233,  86,  26, 223,  26, 167
	.byte	 57, 123, 202, 148,  23, 116,  34,  27, 194, 121,   5, 152, 161, 255, 249, 146
	.byte	  6, 241, 255,  86, 131, 132,  72, 105, 180, 232, 141, 197, 113, 138,  27, 156
	.byte	 18, 140,  18,  33,  51,  39,  45,  70, 205,  86, 157, 220, 168, 217,   2,  86
	.byte	 44, 178,  77,  65, 140, 127,  47, 183,  15, 220,  97, 196, 163, 255,  10, 122
	.byte	 82,   2, 209,  92, 158, 227, 211,  77, 219, 113,  72, 185, 216, 213,  42,  78
	.byte	 80, 218,  79, 135,  46,  97, 230, 118, 134,  13,  24, 124, 103, 171, 231, 226
	.byte	125, 254,  83, 112, 106, 187, 247, 228,  37,  16, 249, 134,   3, 214, 166,  73
	.byte	188,   5, 143,  94,  75, 187, 240, 191,  71, 119, 174,   3, 213, 232, 104,   1
	.byte	 34, 219, 249, 221, 187,  87,  43, 225,  65, 116, 255, 230, 199,  95, 220, 253
	.byte	 42, 130, 198, 167, 104, 136, 193, 167, 175,   0,   2, 189,  70, 253,  57, 112
	.byte	 57,  71, 191, 148, 202,  91,  11, 211, 195,  84,  75,  61, 104, 238, 252, 132
	.byte	180, 248, 200,  28, 253,  21, 147,  15,  76, 234, 189, 227,  68,   9, 171, 220
	.byte	104, 252,  41,  70, 181,   0,  59, 123, 206, 190, 100, 164, 191,  36,  30,  23
	.byte	 34,  24, 150, 173,  83,  44, 199,  52, 204,  63, 169, 188, 224, 100,  65, 172
	.byte	 48,  87, 186, 239,  81, 120, 174,   7,  24,   0, 139,  89,   4,  39, 165,  28
	.byte	 60, 230, 137, 233, 178, 156, 138,  43,  29,  52, 226, 159, 180,  51, 110, 174
	.byte	 78, 117, 148,  54, 143,  91, 189, 105,  38,  25, 157, 127, 233, 129, 248, 102
	.byte	 90, 166,  29, 130, 179, 125, 172,  14, 248, 210,  13,  74, 216, 156, 255,  10
	.byte	 71,  94, 153, 251,  62,  57, 162,  42,  59, 209,  33, 142, 222, 225, 100,  73
	.byte	138, 242,  14,  51,  66, 213, 122,  58, 188, 230, 200, 238,  69, 186, 101, 114
	.byte	 68, 249, 250,  87, 212, 112, 167, 247,  10, 194,  68,  85, 228,  63, 223, 237
	.byte	238,  85,   0,  11, 164, 223,   3, 203,  30,  95, 101,  80,   2, 150, 153, 105
	.byte	225,  50, 236, 233, 122,  44, 178, 218, 217, 169, 183, 127, 199, 103, 175,  37
	.byte	130,  39, 135, 213, 233, 210, 243, 188, 212, 119, 210, 115,  62,   9, 150,  26
	.byte	179, 152,  37, 176, 227, 182, 157, 187, 225, 238,  80,  74, 253,  55,  37, 137
	.byte	150,  57, 224,  46, 175,  94,   3,  28, 173,  19, 255, 157, 227, 205,  78,  46
	.byte	 94,  60,  94, 228,  90, 133,  11, 121, 171, 215,  78,  45,  62, 213, 173,  62
	.byte	236, 175,  55, 123, 203, 253, 112,  18, 242, 132, 224, 243,  50, 132, 199, 142
	.byte	196, 188, 148, 155,  54,  25, 250, 252, 163,  94, 190, 224,  79, 253,  88,  10
	.byte	  2,  51, 178,   9, 179, 153,  99,  11,  31, 255, 143,  57,  93, 131, 132,   3
	.byte	109, 201, 156,  48, 168, 182, 239,  33, 222,  63,  60, 107, 111, 168, 186,   3
	.byte	224,  22,  36,   9, 230, 127,   3, 186, 233, 152, 209,  59, 228,  11, 103, 201
	.byte	 68,  16, 141,  29, 160,  61,  70, 152, 147, 112,  35, 127,  73, 150,   7,  40
	.byte	 74, 172, 238, 200,  34,  27,  94,  87, 231, 140, 199, 184,  67,  10,  19,  89
	.byte	187, 101, 234,  28,  98, 233,  63, 187,  19, 173,  82,  22, 160,  74, 204, 246
	.byte	206, 190,  58,  90, 184,  25, 232,  82,  36, 136,  34, 127, 132,  32,  75,  72
	.byte	  7,  21, 199,  40,  20, 114,  65,  37, 120,  70, 202,  69, 249, 254,  65, 113
	.byte	216, 132, 165,  11,  63, 234, 220,  68, 154, 117, 187,  10, 208,  98,  63,  36
	.byte	227, 189,  88, 114,  82,  94, 142,  34, 181,  49, 244,  85,  97,  32,  54, 212
	.byte	226,  57, 104, 160,  43, 131, 157, 216,  68,  94,  22, 146, 243, 198,  74,  65
	.byte	  9,  85, 168,   3, 204,  91, 235, 215, 183, 188, 109, 101,  19, 131, 206, 152
	.byte	126,  48, 139, 172,  66, 220,  71, 231, 183,  17, 152,  88, 146, 183, 229, 254
	.byte	 93, 228,  21, 142, 195, 221,  70, 210, 105, 124,  79, 254,  72, 122,  52, 192
	.byte	122, 181,   0,  58, 216,  95, 194, 160,  43,  63, 153,  62, 242,  57, 198, 175
	.byte	 35,   9,  80,  40,  30, 161,  31, 251, 247, 249, 126, 187,  96, 170, 154, 147
	.byte	236,  48, 221,  68,  17,  25, 197,  84, 139, 205, 123, 197, 146, 229, 197,  11
	.byte	188, 187,  60, 134,  62,  72,  74,  67, 120,  91, 141, 223, 218,  66, 103, 255
	.byte	 86,  45,  71, 178, 134,  10,  77, 152, 229,  71,  72,  99, 123,  53,  86,  35
	.byte	226, 233,  68, 132,   8, 247, 109,  73, 144, 206, 138, 174,  35, 201, 242,   9
	.byte	 78, 178, 201,  86, 133, 117, 205, 190, 130, 128, 138, 129,   7, 189,  84, 236
	.byte	147, 188, 230,   8, 147, 201, 149, 199, 215, 106,  69, 190, 162,  67, 145,  76
	.byte	 18,  32, 161,  99, 137, 191, 240, 224, 146, 232, 133, 188,  66,  21, 183,  41
	.byte	119, 217, 205,  87,  29, 243,  71, 198, 174, 169, 182, 205, 168, 212, 134,   1
	.byte	216,  28, 176, 125,  84, 217,  40,  82, 202,   0, 178, 129, 185, 253, 239, 248
	.byte	117,  35, 210, 164, 192,  70, 100,  77,  44,  91, 197,  41,  90,  46, 134, 203
	.byte	 80, 142, 186,  73,  89,  12, 179,   6, 178, 198, 118,  81,   7, 119,  44,  55
	.byte	 32, 161, 140,  76,  89, 142, 167, 173,  35,  53, 139, 189, 103, 135, 135,  25
	.byte	 56, 230, 254, 234, 243, 249, 171,  76, 134, 181, 255, 227,  55,  93, 106,  90
	.byte	 19,  48, 205, 182,  19, 170, 199,  44, 122, 210, 157,  23, 231,  93,  43, 135
	.byte	 86, 221, 122,  37, 184,  97, 201, 102,  98,  19, 160, 144,  63,  88,  34,  38
	.byte	151, 139, 143, 239,   2, 241, 121,  70, 143,  91,  16, 241,   3,  31,  85, 175
	.byte	172, 176,  12,  90, 153, 107,  58, 149, 136,  88,  64,  42,  19, 154, 132, 173
	.byte	 52, 127, 216,  43, 190,   5, 135, 132, 239, 215, 239, 157,   0, 111,  62,  28
	.byte	 90, 210,   5, 230,  92, 129, 220, 180, 121,  65, 195,  93, 212, 204, 130,  39
	.byte	 16, 245, 162, 201, 158, 198, 210,  19, 139,   2,  65, 247, 193,  50,  71, 166
	.byte	 88, 118, 233, 249,  54,  60, 191, 196, 188,  79, 235,  94,  20, 228, 238, 171
	.byte	232, 160,  98, 182,  61, 251, 208, 217,  38,  16,  40,  21, 128, 194,  49, 199
	.byte	 46, 142,  74, 153, 117,  94,  57,  38, 150, 179,  31,   4,   9,  21, 167,  24
	.byte	 70, 125, 252, 246, 202,  41, 149,   9, 135, 110,  15,   7, 189, 187,   9,  59
	.byte	 96, 146, 165, 101, 106, 201,   0, 202,  22, 171, 203,  29, 152,   3, 136,  27
	.byte	159, 166,  91,  78, 159,  40,  51,  49,  30, 192,  47, 127, 174, 160,  31, 172
	.byte	 62, 130, 132, 242, 170, 114,  51, 225, 205, 119, 101, 237, 214, 200, 223, 205
	.byte	172, 255, 102,  63, 238, 238,  74,  63, 219, 222,  81, 227, 173,  19, 184, 222
	.byte	158, 210, 167, 174, 221,  33, 101, 212, 229,  85, 182, 169,  12,  18, 211, 226
	.byte	 18,  61, 131,  79, 248,  82, 199,  81, 190, 138, 181, 246, 238,  62,  35, 135
	.byte	 32,  42, 140,  82, 206, 146, 172, 168, 251,  49,  35, 136,  67, 221,  98, 216
	.byte	120, 123, 147, 102, 243,  39,  56, 234,  78, 177, 163, 214,  89,  96, 155, 166
	.byte	194,  77,  10, 215,  37, 207, 181, 106, 223, 169, 226, 244,  75, 163,  75, 160
	.byte	 85,  15, 176,   2, 212,  38, 109, 167, 212, 117,  60, 106, 245, 196,  26,  56
	.byte	162, 129, 142, 185,  46, 125, 246, 153,   5, 112,  77,  54, 223, 227,  26, 204
	.byte	233, 130,  95, 173,  34, 158, 195,  77,  75, 212, 233,  44, 124,  90,  80, 166
	.byte	 72, 129,  73, 242, 120, 249,  53, 105, 189, 190, 149, 254,  20, 242,  19,  75
	.byte	107, 225, 126,  98,  37,  10,  10,  60, 160, 124,  32, 247, 222, 151, 109, 182
	.byte	214, 119,  77, 177, 232, 175, 199, 105, 244,  41,  22,  78, 174,  19,  21,  74
	.byte	102,  58, 200, 107,  62, 109, 141,  76, 223, 161,  17,  41,   5, 144,  89, 113
	.byte	132, 109, 162,  66, 176, 101,  86,  18, 170, 177, 190, 229,  12,  39, 123, 211
	.byte	117, 128,   4,  49,  30,  20, 103, 217, 248, 234, 144, 159, 136, 113, 128, 224
	.byte	172, 161,  69, 102,  32,  23,  34, 150, 115,  30, 227, 211,  21,  86,   1,  40
	.byte	 78,  24, 171, 249,  95, 219,  35, 206,  72, 253,   0,  86, 108,  19, 228,  20
	.byte	126, 181, 160, 155,  38,   7, 127, 193,  60, 226,  36, 172, 105, 232, 124,  37
	.byte	129,   6,  64,  20, 251, 158, 133, 133, 238, 246,  39, 127,   5, 103,  95, 204
	.byte	110, 167,  32,  13, 255, 170,  57,  13, 170, 222,  17,  56, 241,  99, 131,  51
	.byte	 42,  79, 109, 204,  55,  27, 151,  92, 201, 203, 184, 164,  24, 101, 239, 101
	.byte	214,  14,  71,  52, 158, 154,  76,  74, 252, 108, 158, 246,  75, 247, 250, 101
	.byte	 65, 253,  65,  52,  82, 154,  42, 185, 184, 129, 245, 136, 100, 103,  37,  45
	.byte	 96, 201,  29, 248, 245,   8,  83,  10,  69, 149, 186, 100, 213, 115,  89, 233
	.byte	225, 123, 139,  64, 116, 233, 170,  53, 111, 162, 148, 111, 125, 114, 121,  38
	.byte	250, 140, 197, 142,  93, 114, 177,  93, 116, 107, 105, 148, 183, 247, 247, 254
	.byte	 34,  47,  26, 114, 158, 123, 220, 199,  27, 104,  63, 164, 176,  76,  20,  77
	.byte	126, 139, 222, 185, 215, 190, 207, 123,  33, 106,  74,  78, 224, 166,   1,  98
	.byte	 84, 122, 246,  14,  93, 170,  78, 113,  98, 243,  34,  61, 124,  14,  53,   6
	.byte	 26,  67, 130,   5,  59,  51, 127,  64, 101,  78, 186, 223, 235,   5, 253, 250
	.byte	241, 237,  49, 113,  10,  85,  51, 212,  51, 111,  72, 241,  41, 154, 212,  48
	.byte	254,   9,  20, 197, 251,  94,  88,  39,  53,  20, 253, 252, 128, 166,  15, 231
	.byte	 36, 247,  83, 119,  73, 228, 229, 178,  65, 111,  44,  42, 156, 104,  30, 118
	.byte	108,  71, 103, 198,  91, 235,  83, 201, 231,  57,   7, 112, 170,  70,   9, 248
	.byte	177, 223,  86, 137, 214, 148, 151, 170, 167, 198,  63,  91,  53,  34,  17,  16
	.byte	106,  74,  44,  78, 196, 204, 165, 230, 244, 150, 151, 112, 146, 158, 228,  87
	.byte	228, 240, 139, 143,  32,   2, 164,  32, 100,  57,  97, 112, 224, 213,  39, 121
	.byte	 60, 196,  95,  60, 213, 178, 212, 226, 117,  59, 165,  95, 205,  11,  67, 213
	.byte	 88,  34, 212, 165,  49, 104, 186, 201, 154,  34,  28, 105, 110, 163, 141,  72
	.byte	122, 105,  98, 136, 100, 100,  49,  63, 223, 213, 205,  67,  41, 167,  79,   6
	.byte	248, 122,  81, 132, 244, 169, 110, 162, 245,  51, 209, 218, 189,   7, 182, 200
	.byte	102, 217,  88,  21, 113, 254, 196, 196, 230,  41, 109, 226, 218, 125,  43, 211
	.byte	253,  74, 213, 170,  49, 213,  14, 218, 220, 252, 152,  98, 113, 140,  52, 247
	.byte	 20, 130,  47, 123, 141,  98, 111, 152, 230,  99,  62,  43,  43,  17, 167,   3
	.byte	148, 158,  65,   0,  88,  58,  36, 101, 186, 174, 204, 221,  21,  66, 177,  22
	.byte	 54, 239,  96, 170,  23, 143, 200,  29, 145,  99,  45, 159,  74, 193, 150,  20
	.byte	  1, 255,  47,  37,  11, 118, 210,   6, 213,  11,  74, 245,  20, 232, 167, 166
	.byte	 66, 139,   3,  88, 160,  11, 112, 105, 128, 130, 224,  75, 195, 131, 200, 115
	.byte	247, 197, 213,  22,  20, 100, 206,  52,  15, 233, 162, 236,  17,  74,  31,  74
	.byte	 32, 176, 227, 108, 211, 255, 166,  88,  58,  25,  91, 114, 167,  48,  43, 152
	.byte	197,  15,  52, 103,  55, 173, 152, 154,  92, 179, 221, 203,  53, 146, 253, 218
	.byte	254,  18,  93,  55, 225, 133, 228,  31, 147, 131,  60, 128, 147, 175, 185, 177
	.byte	120,  38, 228, 210, 188,  67, 122, 171,  38, 155, 103, 132, 219,   9, 149,  54
	.byte	108, 156, 158, 148,  68,  11,  44, 237,  24, 139, 223,  96, 147, 115, 142, 132
	.byte	205, 200, 240, 134, 243, 234, 149,  96, 105,  48, 174,  98, 189,  75, 140, 130
	.byte	150, 142, 214, 104, 159,  88,  89, 138, 173,  13, 170, 195, 160, 132, 231, 108
	.byte	123, 249, 235, 169,   3, 220,   2,  57,  25,  60, 212, 216, 156,  21, 135, 192
	.byte	176,  27,  47, 143, 247,  60, 137, 251, 242,  82, 105,  87, 215, 195,  23, 117
	.byte	 77, 248, 140, 230, 153,  84,  74, 249, 117,  34, 187, 194,  23,  15, 197, 241
	.byte	106, 242, 215, 108, 233,  23, 214, 148,  43, 122, 102, 118, 244,   4, 244,  51
	.byte	130,  76, 186,   2,  75, 121,   0, 123, 173,   1,  96, 168,  86, 180, 137,  63
	.byte	 86,  19, 248, 218, 188, 134,   1, 123, 166, 140, 149,  72,  63, 128,  16,  32
	.byte	 83, 104,   1, 177,  92, 215, 201, 250, 187,  46,  79, 248, 225, 226,  35, 171
	.byte	192, 198,  15, 158,  12, 188, 201, 137, 221, 238,  40,  83,  94,  68, 117, 193
	.byte	192,  81,  14, 176, 137, 109, 217,  60, 137, 212, 207, 216, 242,  55, 132, 116
	.byte	 88, 124, 254, 133, 152,  69, 120, 210, 117, 232, 191, 145, 204, 239, 137, 119
	.byte	139, 117, 145, 126, 175, 245, 110, 117,  73, 159, 162, 203, 203, 136, 153, 244
	.byte	116,  29, 251, 234, 162, 151, 165,  54, 171,  89, 184, 213,  18,  35, 162, 222
	.byte	 80, 145, 228, 164, 213, 100, 207,  98,  30, 240, 252,  48, 106,  62, 220,  97
	.byte	 48, 211,  41, 191,  44,  89, 254, 251, 241,  36, 228, 217, 188,  17, 120, 128
	.byte	192, 219,  55,  97, 111, 143, 126, 242,   9, 230,  98,  61,  65,  61, 220,  70
	.byte	130,  35, 146,  70,   9, 194, 222,  81, 169, 184,  88,  13, 157,  46, 223,  29
	.byte	 51, 152, 107, 222, 240,  27, 194, 195,  94, 241,  59, 171,  11,  46, 206, 238
	.byte	118,  76,  85, 118, 217, 224, 200, 153, 199, 155,   2, 191, 143, 158, 113,  53
	.byte	136, 196,  45,  41, 156, 210, 207, 129, 176, 216,  79,  41,  25,  64, 109, 199
	.byte	140,  94, 227,  72, 118,  67, 115,  71,  48,  29, 217,  80, 207, 118, 196, 254
	.byte	 94,  16, 156, 226,   6,  63, 110, 155, 192, 132, 125, 246,  39, 204,  65, 101
	.byte	228,  94, 115,  94,  58,   3, 192, 155, 141, 216,  43,  31,  57, 110,  77,  79
	.byte	119, 152, 150, 140,  50, 199, 212,  71,  59,  47, 228, 150, 181,  48, 165, 227
	.byte	 38, 196,   0, 155,  58, 207, 218,  10,  75,  10, 218,   5,  72, 221, 104,  72
	.byte	 74, 122, 184, 162,  32,  50,  77, 161, 180, 122,  70, 170, 101, 253,  99,  64
	.byte	212, 169,  93, 202, 187, 164, 163, 127, 226, 112,  24, 202, 232, 143, 161, 208
	.byte	 37, 142,  63, 219, 159, 253, 180, 100,  15,  91, 100, 106, 244, 132, 168, 202
	.byte	216, 214, 155, 234,   4, 158,  60,  51, 241,  44, 217, 231, 127, 235,  93,  59
	.byte	162,  32,  61, 133,  15,  70, 100, 247,  68,  31, 194,  49,  62,  38, 175, 205
	.byte	150,   0, 160, 155,   7, 168, 180, 137, 151, 153,  59, 221, 136, 194,  93,   2
	.byte	 38, 240, 151, 152,  39, 115,  15, 174,  77, 155, 133,  45, 253, 241,  70,  33
	.byte	240,  95, 212,   4, 186, 114, 218,  99, 211, 172, 101, 227, 190,  63, 155, 129
	.byte	172, 134, 163,  74, 111, 172, 171,  76, 215,  81, 172, 220, 168, 157, 218, 209
	.byte	  2, 239, 159,  78, 225, 139, 240,   5, 190, 117, 108, 203, 215, 180, 248, 180
	.byte	 32,  44,  53, 178,   0,  41, 148, 178,  26, 242,  99, 202,  90,  68,  57, 175
	.byte	100,  30,  98, 134,  70, 188, 254, 236, 182, 191, 159, 117, 103, 156, 247,  45
	.byte	241, 167,  38, 109,  51, 144,  23,  93, 185, 138,  46,   6,  97,  39,  57,  82
	.byte	110, 188, 215, 146,  65, 135, 217,   8, 171,  12, 192,  18, 158,  98,  81,  80
	.byte	134,   9, 128, 237, 233, 254,  49, 176,  56,  37, 154, 223, 122, 198,  41,  28
	.byte	 64,  39, 225, 169,  69,  90, 181, 187,  87, 194, 135,   7,  92, 236, 249, 117
	.byte	210,  20, 152, 228,   8, 166, 193,  18,  27, 169,  71, 202,   8, 117,  19, 192
	.byte	 86,  22, 252, 153,  12, 170,  63, 129, 222,  32, 193,  60, 199, 188,  88, 239
	.byte	247,  91,  10, 175,  65, 178, 118, 251,  63,  74,  82,  66, 113, 154,  50,  76
	.byte	116,  51,  36,  63, 152,  11,  42,  33,  21,  19,  63, 108, 134,  30,  48, 158
	.byte	188, 186, 193,  26,  75, 150,  98,  92, 176,  73,   0,   0,  78,  24, 134,  47
	.byte	250, 184, 228,  29,   6,  46,  64, 119,  22, 214, 205, 162, 128,  13,  97,  36
	.byte	208, 168, 111, 120, 254, 247,  17, 164, 239,  52,  72, 227,  71,  85,  41, 223
	.byte	222, 156,  74, 143, 222, 221,  13,  46, 174,  30, 193, 125, 161,  22,  12, 174
	.byte	158, 172, 236,  48,  27,  54, 193,  19, 173, 209, 223,  88, 119, 160, 217,  90
	.byte	200, 138,   7, 200, 203, 246, 101, 122, 238,  58,  94,  75, 112,  12,  99, 103
	.byte	 23,  37, 220,  48, 165,  74,   3, 133, 246,  41,  29,  76,  26,  63,   7, 155
	.byte	106,  20,  30, 240, 190, 211,  99, 240,  86,  39,  78, 238,  38, 231,  71, 220
	.byte	175,  28,  33, 181,   8, 229, 116,  62,  36, 207,  11, 240, 200, 223, 245,  70
	.byte	218, 105,  45,   8, 177,   1, 242, 230, 101, 177,  29, 136,  70,  18, 155,  40
	.byte	 91, 108,  43,  34, 142, 131, 151, 103,  64,   9, 194,  51, 205, 211, 213,  66
	.byte	128,  64, 251, 206, 191, 250,   9, 162,  58,  80,   5, 117,  88, 240, 193, 137
	.byte	225,  20, 196, 208,  81, 230, 163,  96,  37,  95,  87,   0,  66,  89, 205, 179
	.byte	190, 195, 243, 182,  75,   2,  56,  17, 232, 158, 219,  21, 149,  75, 123,  43
	.byte	201, 255,  97, 233, 114, 205, 197, 209, 210, 186,  95, 222, 112,  43, 110, 167
	.byte	 16,  63, 227,   7,  50, 165, 117,  38, 127, 191,  55, 206, 186,   4, 224,  65
	.byte	 98,  98,  41,  80,   6,  91,  40,  13, 178, 194, 172, 197,   1, 253,   1, 162
	.byte	188,  19, 229, 224,  57, 222, 114,  69,  78,  66, 210, 212, 230,  87, 221,  52
	.byte	 30, 113, 200,  12,  92, 203,   3, 188,  72, 242, 118, 235, 163, 144, 144, 136
	.byte	 38, 115,  78, 218, 233, 227, 171,  57,   7, 130,   8, 103, 175, 136,  26,  37
	.byte	214, 208,  56,  50,  27, 144,  62, 168, 100, 184, 221,  19, 110, 195, 195,  16
	.byte	 56,  50, 238, 163, 114, 145, 115, 152, 144, 137, 205, 244,  31,   8,  33,  50
	.byte	168,  57, 162, 126, 225,  84,  81, 200, 104, 135,   8, 125, 231, 167,  23, 216
	.byte	224, 111,  44, 142, 254, 207,  63,  80, 101, 149, 202, 152,   5, 185,  88,  14
	.byte	102, 134,  29,  15, 163, 180, 229, 116, 201,  40, 192, 168, 202,  10,  16, 252
	.byte	112, 155,  88,  88, 146, 133, 225, 156,  40,   0,  10, 172,  95, 181,  93,  71
	.byte	 25,  60, 165,  50, 162,   5, 163,  19,   8, 249,  30,   5, 116, 118, 107, 123
	.byte	202,   7,  96,  44, 156,  63,  20,  39,  21, 184, 220, 249,  68, 148,  59, 250
	.byte	203, 235,  43, 234, 200, 101,  71, 132,  94,  90,  89, 246, 206,  81, 251,  10
	.byte	  8, 136, 149,  74, 105,  84,   1, 201, 238, 136,  72, 223,  81, 248, 214, 147
	.byte	 85,  77,   3, 227, 250,  73, 160,  63, 195, 207, 134, 119, 240, 102, 222, 244
	.byte	232, 128,  21, 231, 119, 111, 157, 250, 115, 152,  70, 213, 222,   8, 152,  33
	.byte	196, 123,  98, 237,  50, 165, 115,  64, 174, 174, 168,  99, 115, 199,  95,  37
	.byte	  6,  87,  82,  36,  84, 119, 171, 253,  59, 126,  32, 118,  42,  33, 101, 102
	.byte	244, 194,  91, 204, 243,  61, 166, 203,  97, 160, 181, 198,  78, 221, 144, 105
	.byte	 52,   0, 168,  65, 231,  64,  46, 196,  77,   5,  91,  71, 154, 180, 142, 120
	.byte	 35,   7, 106,  27,   4,  19, 181,  89,  58, 223, 254, 167, 163, 187, 164,  75
	.byte	158,  50, 234,   1, 105, 252, 114, 186, 133, 182,  70,   7, 109, 101, 165,  32
	.byte	 32,  96,  80, 146,  76, 180,  90, 226, 133, 183,  85,  83, 204,  11,  22,  19
	.byte	112,  21,  31,  94,  68,  49, 243, 235,  77, 231,  40, 157,   8,  15,  39, 110
	.byte	106, 226,  59,  31, 153,  51, 165,  54, 177,  71, 176, 117,  27, 145, 217, 244
	.byte	254, 132,  12,  33, 111, 197,  11, 253, 244,  46,  73, 223,  71, 196,  90, 217
	.byte	 13, 102,  36,  30, 203, 104,  46, 249, 107, 110, 185, 217, 229, 171, 106, 230
	.byte	 22,  75,  19, 236,   3,  51, 227,  55,  21, 251, 158, 145, 216, 139, 216,  43
	.byte	 19,  21,  69, 240,  18, 150,  27,  57, 171,   4,   1, 121, 186,  99, 126, 122
	.byte	140, 179, 146,  12,  48, 105, 141,  69,  46, 193,   9, 251, 158, 131, 199, 111
	.byte	 71, 201, 158,  20, 241,  77,  21, 251,  24,  74, 119,  42,  55, 131, 243, 231
	.byte	 82,  15, 150, 144, 106,  17, 122,  23,  66, 167,  66, 135, 207, 154,  26, 191
	.byte	 84,  26,  29,  58,  20, 232, 158, 160, 177,  20,  59, 189,  13, 133, 151, 123
	.byte	212,  46,  58, 154, 147, 123,  35,  81, 252, 147,  57, 116, 227,  61, 199,  55
	.byte	110,  93, 134, 202, 245, 239, 128, 143, 248, 127, 213, 235,  75, 253,   7, 177
	.byte	  4,  30, 176,  53, 202,  82, 149, 215,  31,  26, 238, 228,  11,  80, 249, 109
	.byte	127,  47,  45,   9,  46, 187, 163, 208, 112, 220, 232, 143, 241,  92, 227,  48
G$r_c:
	.byte	 68, 231, 154,  34,  17,  13,  44, 178, 210, 228,   3, 235, 162, 176, 230, 113
	.byte	145, 252, 161, 214,  71,  13, 192,  72, 190, 166,  52, 154,  53, 126, 175,  35
	.byte	 36, 160,  20, 237, 103, 121, 190,   4, 206,  77,  13, 109, 199, 128, 130,  71
	.byte	227,  81, 139, 133,  14, 148,  22, 240,  99, 135,  45, 156,  32, 139,  11,  60
	.byte	 10,  74, 158, 149, 121, 132, 103,  97, 191, 104,  70, 122,  14,  89, 174, 131
	.byte	 32, 100, 110,  94,  28, 164,  82,  94, 248,  54, 245,  40,  58, 138,  18, 253
	.byte	 82,  39,  85,  37,  96,  47, 226,  12,  53, 206, 111,  88,  70, 129,  56, 143
	.byte	116, 118,  72, 119, 175,  20, 214, 160,  42,  63, 113,  91, 113,  17,  57,  49
G$bitmask_c:
	.byte	 72, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73
	.byte	146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146
G$bitmask_b:
	.byte	 36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36
	.byte	 73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73
G$bitmask_a:
	.byte	146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146
	.byte	 36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36
G$KECCAK1600_RC:
	.byte	  1,   0,   0,   0,   0,   0,   0,   0, 130, 128,   0,   0,   0,   0,   0,   0
	.byte	138, 128,   0,   0,   0,   0,   0, 128,   0, 128,   0, 128,   0,   0,   0, 128
	.byte	139, 128,   0,   0,   0,   0,   0,   0,   1,   0,   0, 128,   0,   0,   0,   0
	.byte	129, 128,   0, 128,   0,   0,   0, 128,   9, 128,   0,   0,   0,   0,   0, 128
	.byte	138,   0,   0,   0,   0,   0,   0,   0, 136,   0,   0,   0,   0,   0,   0,   0
	.byte	  9, 128,   0, 128,   0,   0,   0,   0,  10,   0,   0, 128,   0,   0,   0,   0
	.byte	139, 128,   0, 128,   0,   0,   0,   0, 139,   0,   0,   0,   0,   0,   0, 128
	.byte	137, 128,   0,   0,   0,   0,   0, 128,   3, 128,   0,   0,   0,   0,   0, 128
	.byte	  2, 128,   0,   0,   0,   0,   0, 128, 128,   0,   0,   0,   0,   0,   0, 128
	.byte	 10, 128,   0,   0,   0,   0,   0,   0,  10,   0,   0, 128,   0,   0,   0, 128
	.byte	129, 128,   0, 128,   0,   0,   0, 128, 128, 128,   0,   0,   0,   0,   0, 128
	.byte	  1,   0,   0, 128,   0,   0,   0,   0,   8, 128,   0, 128,   0,   0,   0, 128
	.ident	"Jasmin Compiler 2026.03.2"
