	.att_syntax
	.text
	.p2align	5
	.global	_verify_picnic3_jazz
	.global	_sign_picnic3_jazz
	.global	_keyGen_jazz
_verify_picnic3_jazz:
	movq	%rsp, %rax
	leaq	-1907776(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 1907720(%rsp)
	movq	%rbp, 1907728(%rsp)
	movq	%r12, 1907736(%rsp)
	movq	%r13, 1907744(%rsp)
	movq	%r14, 1907752(%rsp)
	movq	%r15, 1907760(%rsp)
	movq	%rax, 1907768(%rsp)
	movq	%r9, 1513984(%rsp)
	movq	%r8, 1513992(%rsp)
	movq	%rdi, %rax
	leaq	32(%rsp), %r8
	call	L_memcpy_3Words_from_reg$1
Lverify_picnic3_jazz$147:
	movq	%rsi, %rax
	leaq	64(%rsp), %r8
	call	L_memcpy_3Words_from_reg$1
Lverify_picnic3_jazz$146:
	movq	$0, %rsi
	jmp 	Lverify_picnic3_jazz$144
Lverify_picnic3_jazz$145:
	movb	(%rdx,%rsi), %al
	movb	%al, (%rsp,%rsi)
	incq	%rsi
Lverify_picnic3_jazz$144:
	cmpq	$13, %rsi
	jb  	Lverify_picnic3_jazz$145
	leaq	1514056(%rsp), %rdx
	call	L_memcpy_6Words_from_reg$1
Lverify_picnic3_jazz$143:
	movq	%rcx, %rax
	movq	%rax, 1514000(%rsp)
	leaq	1906814(%rsp), %rcx
	leaq	1906710(%rsp), %rdi
	leaq	-568(%rsp), %rsp
	call	L_expand_challenge$1
Lverify_picnic3_jazz$142:
	leaq	568(%rsp), %rsp
	movq	1514000(%rsp), %rax
	addq	$48, %rax
	movq	$0, %rsi
	jmp 	Lverify_picnic3_jazz$140
Lverify_picnic3_jazz$141:
	movq	(%rax), %rbp
	movq	%rbp, 96(%rsp,%rsi,8)
	addq	$8, %rax
	incq	%rsi
Lverify_picnic3_jazz$140:
	cmpq	$4, %rsi
	jb  	Lverify_picnic3_jazz$141
	movq	%rax, 1514000(%rsp)
	leaq	25760(%rsp), %rax
	leaq	1216(%rsp), %r8
	leaq	256(%rsp), %rsi
	call	L_createTree_1$1
Lverify_picnic3_jazz$139:
	leaq	48096(%rsp), %rax
	leaq	3136(%rsp), %r8
	leaq	2176(%rsp), %rsi
	call	L_createTree_3$1
Lverify_picnic3_jazz$138:
	movq	$80, %rax
	leaq	256(%rsp), %r9
	leaq	1906814(%rsp), %rcx
	leaq	1558096(%rsp), %rdx
	call	LrevealSeedsSize_1$1
Lverify_picnic3_jazz$137:
	movq	%rdi, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, 1514008(%rsp)
	movq	1514000(%rsp), %r11
	leaq	25760(%rsp), %rdx
	leaq	1216(%rsp), %r8
	leaq	256(%rsp), %rsi
	leaq	1558096(%rsp), %rax
	leaq	96(%rsp), %rbx
	leaq	-24(%rsp), %rsp
	call	L_reconstructSeeds_1$1
Lverify_picnic3_jazz$136:
	leaq	24(%rsp), %rsp
	movq	%rax, 1514000(%rsp)
	movq	$0, %rcx
	movw	$0, %si
	jmp 	Lverify_picnic3_jazz$132
Lverify_picnic3_jazz$133:
	leaq	1906814(%rsp), %r8
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$135:
	cmpb	$0, %bl
	jne 	Lverify_picnic3_jazz$134
	movw	%si, 1906918(%rsp,%rcx,2)
	incq	%rcx
Lverify_picnic3_jazz$134:
	incw	%si
Lverify_picnic3_jazz$132:
	cmpw	$419, %si
	jb  	Lverify_picnic3_jazz$133
	leaq	2176(%rsp), %rsi
	leaq	1906918(%rsp), %rax
	leaq	1558096(%rsp), %rdx
	call	L_openMerkleTreeSize$1
Lverify_picnic3_jazz$131:
	movq	%rcx, %rax
	imulq	$48, %rax, %rax
	movq	1514008(%rsp), %rdx
	addq	%rax, %rdx
	movq	%rdx, 1514008(%rsp)
	movq	1514000(%rsp), %rax
	leaq	48096(%rsp), %r10
	leaq	3136(%rsp), %rdx
	leaq	1558096(%rsp), %rsi
	call	L_openMerkleTree_verify$1
Lverify_picnic3_jazz$130:
	movq	1514008(%rsp), %rdx
	movw	$0, %si
	jmp 	Lverify_picnic3_jazz$124
Lverify_picnic3_jazz$125:
	leaq	1906814(%rsp), %r8
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$129:
	cmpb	$1, %bl
	jne 	Lverify_picnic3_jazz$126
	leaq	1906814(%rsp), %rcx
	call	L_indexOf$1
Lverify_picnic3_jazz$128:
	movw	1906710(%rsp,%r11,2), %cx
	cmpw	$15, %cx
	je  	Lverify_picnic3_jazz$127
	addq	$96, %rdx
Lverify_picnic3_jazz$127:
	addq	$48, %rdx
	addq	$24, %rdx
	addq	$96, %rdx
	addq	$96, %rdx
Lverify_picnic3_jazz$126:
	incw	%si
Lverify_picnic3_jazz$124:
	cmpw	$419, %si
	jb  	Lverify_picnic3_jazz$125
	movq	1513992(%rsp), %r8
	cmpq	%r8, %rdx
	je  	Lverify_picnic3_jazz$1
	movq	$4, %rax
	movq	1513984(%rsp), %rdx
	movq	%rax, (%rdx)
	jmp 	Lverify_picnic3_jazz$2
Lverify_picnic3_jazz$1:
	movb	$1, %dl
	movq	%rax, 1513992(%rsp)
	movw	$0, %si
	movq	$0, 1514008(%rsp)
	jmp 	Lverify_picnic3_jazz$110
Lverify_picnic3_jazz$111:
	leaq	1906814(%rsp), %r8
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$123:
	cmpb	$1, %bl
	jne 	Lverify_picnic3_jazz$112
	leaq	1906814(%rsp), %rcx
	call	L_indexOf$1
Lverify_picnic3_jazz$122:
	movw	1906710(%rsp,%r11,2), %dx
	movw	%si, 1906704(%rsp)
	movq	1514008(%rsp), %rax
	imulq	$360, %rax, %rax
	movq	1513992(%rsp), %rcx
	movw	%dx, 1906706(%rsp)
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rcx
	addq	$8, %rax
	movw	1906706(%rsp), %dx
	cmpw	$15, %dx
	jne 	Lverify_picnic3_jazz$119
	movb	$0, %dl
	addq	$96, %rax
	jmp 	Lverify_picnic3_jazz$120
Lverify_picnic3_jazz$119:
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movb	1519263(%rsp,%rax), %dl
	movb	$255, %sil
	shlb	$0, %sil
	xorb	$255, %sil
	andb	%sil, %dl
	cmpb	$0, %dl
	je  	Lverify_picnic3_jazz$120
	movb	$1, %dl
Lverify_picnic3_jazz$121:
Lverify_picnic3_jazz$120:
	cmpb	$0, %dl
	jne 	Lverify_picnic3_jazz$114
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movb	1519263(%rsp,%rax), %dl
	movb	$255, %sil
	shlb	$0, %sil
	xorb	$255, %sil
	andb	%sil, %dl
	cmpb	$0, %dl
	je  	Lverify_picnic3_jazz$118
	movb	$1, %dl
Lverify_picnic3_jazz$118:
	cmpb	$0, %dl
	jne 	Lverify_picnic3_jazz$114
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movb	1519263(%rsp,%rax), %dl
	movb	$255, %sil
	shlb	$0, %sil
	xorb	$255, %sil
	andb	%sil, %dl
	cmpb	$0, %dl
	je  	Lverify_picnic3_jazz$117
	movb	$1, %dl
Lverify_picnic3_jazz$117:
	cmpb	$0, %dl
	jne 	Lverify_picnic3_jazz$114
	movq	(%rcx), %rsi
	movq	%rsi, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rsi
	movq	%rsi, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rsi
	movq	%rsi, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rsi
	movq	%rsi, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rsi
	movq	%rsi, 1519264(%rsp,%rax)
	addq	$8, %rax
	addq	$8, %rcx
	movq	(%rcx), %rsi
	movq	%rsi, 1519264(%rsp,%rax)
	addq	$8, %rcx
Lverify_picnic3_jazz$116:
Lverify_picnic3_jazz$115:
Lverify_picnic3_jazz$114:
	movq	%rcx, 1513992(%rsp)
	cmpb	$1, %dl
	jne 	Lverify_picnic3_jazz$113
	movw	$419, 1906704(%rsp)
Lverify_picnic3_jazz$113:
	movq	1514008(%rsp), %rax
	incq	%rax
	movq	%rax, 1514008(%rsp)
	movw	1906704(%rsp), %si
Lverify_picnic3_jazz$112:
	incw	%si
Lverify_picnic3_jazz$110:
	cmpw	$419, %si
	jb  	Lverify_picnic3_jazz$111
	cmpb	$0, %dl
	jne 	Lverify_picnic3_jazz$2
	leaq	128(%rsp), %rdx
	leaq	64(%rsp), %rdi
	call	L_mzd_from_char_array$1
Lverify_picnic3_jazz$109:
	movq	$0, 1514008(%rsp)
	movq	$0, 1513992(%rsp)
	movq	$0, %rax
	movw	$0, 1906704(%rsp)
	jmp 	Lverify_picnic3_jazz$44
Lverify_picnic3_jazz$45:
	movq	%rax, 1514000(%rsp)
	movw	1906704(%rsp), %si
	leaq	1906814(%rsp), %r8
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$108:
	cmpb	$0, %bl
	je  	Lverify_picnic3_jazz$77
	leaq	1514104(%rsp), %rdx
	leaq	1907685(%rsp), %rax
	leaq	1907654(%rsp), %r9
	call	L_createTree_2$1
Lverify_picnic3_jazz$107:
	movq	1514008(%rsp), %rcx
	imulq	$45, %rcx, %rax
	movw	1906704(%rsp), %r8w
	leaq	1906814(%rsp), %rcx
	call	L_indexOf$1
Lverify_picnic3_jazz$106:
	movw	1906710(%rsp,%r11,2), %cx
	movw	%r8w, 1906706(%rsp)
	leaq	1907654(%rsp), %r9
	movw	%cx, 1906708(%rsp)
	movq	%r9, 1514016(%rsp)
	movq	$0, %rcx
	movw	1906708(%rsp), %bp
	addw	$15, %bp
	movw	%bp, 1514024(%rsp,%rcx,2)
	movzwq	%bp, %rbp
	incq	%rcx
	cmpq	$0, %rbp
	je  	Lverify_picnic3_jazz$102
	incq	%rbp
	shrq	$1, %rbp
	decq	%rbp
Lverify_picnic3_jazz$105:
	jmp 	Lverify_picnic3_jazz$102
Lverify_picnic3_jazz$103:
	movw	%bp, 1514024(%rsp,%rcx,2)
	cmpq	$0, %rbp
	je  	Lverify_picnic3_jazz$104
	incq	%rbp
	shrq	$1, %rbp
	decq	%rbp
Lverify_picnic3_jazz$104:
	incq	%rcx
Lverify_picnic3_jazz$102:
	cmpq	$0, %rbp
	jne 	Lverify_picnic3_jazz$103
	movq	$0, %rsi
	movq	$0, 1514032(%rsp)
	jmp 	Lverify_picnic3_jazz$85
Lverify_picnic3_jazz$86:
	movq	%rsi, 1514040(%rsp)
	movq	1514040(%rsp), %rbp
	movw	1514024(%rsp,%rbp,2), %bp
	movzwq	%bp, %rbp
	movq	1514016(%rsp), %r9
	call	L__hasSibling_2$1
Lverify_picnic3_jazz$101:
	cmpb	$1, %cl
	jne 	Lverify_picnic3_jazz$87
	movq	1514040(%rsp), %rbp
	movw	1514024(%rsp,%rbp,2), %bp
	movzwq	%bp, %rbp
	call	L__getSibling_2$1
Lverify_picnic3_jazz$100:
	movq	%rbp, 1514048(%rsp)
	movq	1514040(%rsp), %rdi
	leaq	1514024(%rsp), %rcx
	call	L_contains_pathSets_2$1
Lverify_picnic3_jazz$99:
	cmpb	$0, %bl
	jne 	Lverify_picnic3_jazz$87
	movq	1514016(%rsp), %r9
	movq	1514048(%rsp), %rbp
	call	L__hasRightChild_T2$1
Lverify_picnic3_jazz$98:
	movb	%cl, 1907652(%rsp)
	movb	$1, %cl
	subb	1907652(%rsp), %cl
	movb	%cl, 1907652(%rsp)
	movq	1514048(%rsp), %rbp
	call	L__isLeafNode_2$1
Lverify_picnic3_jazz$97:
	movb	%cl, 1907653(%rsp)
	movb	$1, %cl
	subb	1907653(%rsp), %cl
	addb	1907652(%rsp), %cl
	jmp 	Lverify_picnic3_jazz$93
Lverify_picnic3_jazz$94:
	movq	1514048(%rsp), %rbp
	shlq	$1, %rbp
	incq	%rbp
	movq	%rbp, 1514048(%rsp)
	movq	1514048(%rsp), %rbp
	movq	1514016(%rsp), %r9
	call	L__hasRightChild_T2$1
Lverify_picnic3_jazz$96:
	movb	%cl, 1907652(%rsp)
	movb	$1, %cl
	subb	1907652(%rsp), %cl
	movb	%cl, 1907652(%rsp)
	movq	1514048(%rsp), %rbp
	call	L__isLeafNode_2$1
Lverify_picnic3_jazz$95:
	movb	%cl, 1907653(%rsp)
	movb	$1, %cl
	subb	1907653(%rsp), %cl
	addb	1907652(%rsp), %cl
Lverify_picnic3_jazz$93:
	cmpb	$0, %cl
	je  	Lverify_picnic3_jazz$94
	movq	1514048(%rsp), %rsi
	movq	1514032(%rsp), %rdi
	movb	$0, %cl
	movq	$0, %r8
	jmp 	Lverify_picnic3_jazz$90
Lverify_picnic3_jazz$91:
	movq	1514848(%rsp,%r8,8), %rbp
	cmpq	%rsi, %rbp
	jne 	Lverify_picnic3_jazz$92
	movb	$1, %cl
Lverify_picnic3_jazz$92:
	incq	%r8
Lverify_picnic3_jazz$90:
	cmpq	%rdi, %r8
	jb  	Lverify_picnic3_jazz$91
	cmpb	$0, %cl
	jne 	Lverify_picnic3_jazz$89
	movq	1514032(%rsp), %rdi
	movq	%rsi, 1514848(%rsp,%rdi,8)
	incq	%rdi
Lverify_picnic3_jazz$89:
	movq	%rdi, 1514032(%rsp)
Lverify_picnic3_jazz$88:
Lverify_picnic3_jazz$87:
	movq	1514040(%rsp), %rsi
	incq	%rsi
Lverify_picnic3_jazz$85:
	cmpq	$4, %rsi
	jb  	Lverify_picnic3_jazz$86
	movq	1514032(%rsp), %rcx
	movq	$0, %r8
	jmp 	Lverify_picnic3_jazz$81
Lverify_picnic3_jazz$82:
	movq	1514848(%rsp,%r8,8), %rsi
	imulq	$24, %rsi, %rdx
	movq	%r8, 1514032(%rsp)
	movq	$0, %rsi
	jmp 	Lverify_picnic3_jazz$83
Lverify_picnic3_jazz$84:
	movq	1519264(%rsp,%rax,8), %rdi
	movq	%rdi, 1514104(%rsp,%rdx)
	incq	%rax
	addq	$8, %rdx
	incq	%rsi
Lverify_picnic3_jazz$83:
	cmpq	$3, %rsi
	jb  	Lverify_picnic3_jazz$84
	movq	1514032(%rsp), %r8
	movq	1514848(%rsp,%r8,8), %rsi
	movb	$1, 1907685(%rsp,%rsi)
	incq	%r8
Lverify_picnic3_jazz$81:
	cmpq	%rcx, %r8
	jb  	Lverify_picnic3_jazz$82
	movw	1906706(%rsp), %r8w
	leaq	1514104(%rsp), %rdx
	leaq	1907685(%rsp), %rax
	leaq	1907654(%rsp), %r9
	leaq	96(%rsp), %rbx
	leaq	-376(%rsp), %rsp
	call	L_expandSeeds_2$1
Lverify_picnic3_jazz$80:
	leaq	376(%rsp), %rsp
	incq	1514008(%rsp)
	jmp 	Lverify_picnic3_jazz$78
Lverify_picnic3_jazz$77:
	movq	1514000(%rsp), %rsi
	movw	1906704(%rsp), %r8w
	leaq	1514104(%rsp), %rdx
	leaq	1907685(%rsp), %rax
	leaq	1907654(%rsp), %r9
	leaq	25760(%rsp), %rdi
	leaq	96(%rsp), %rbx
	leaq	-24(%rsp), %rsp
	call	L_generateSeeds$1
Lverify_picnic3_jazz$79:
	leaq	24(%rsp), %rsp
Lverify_picnic3_jazz$78:
	movq	1514000(%rsp), %rax
	movq	%rax, %rsi
	imulq	$3392, %rsi, %r9
	movq	$0, %rsi
	jmp 	Lverify_picnic3_jazz$75
Lverify_picnic3_jazz$76:
	movq	%r9, %rcx
	addq	%rsi, %rcx
	movq	92736(%rsp,%rcx), %rcx
	movq	%rcx, 1515872(%rsp,%rsi)
	addq	$8, %rsi
Lverify_picnic3_jazz$75:
	cmpq	$3392, %rsi
	jb  	Lverify_picnic3_jazz$76
	leaq	96(%rsp), %rdx
	leaq	1514104(%rsp), %rcx
	leaq	1515872(%rsp), %r8
	movq	%r9, 1514032(%rsp)
	leaq	-24(%rsp), %rsp
	call	L_createRandomTapes$1
Lverify_picnic3_jazz$74:
	leaq	24(%rsp), %rsp
	movq	1514032(%rsp), %r9
	movq	$0, %rsi
	jmp 	Lverify_picnic3_jazz$72
Lverify_picnic3_jazz$73:
	movq	1515872(%rsp,%rsi), %rax
	movq	%r9, %rcx
	addq	%rsi, %rcx
	movq	%rax, 92736(%rsp,%rcx)
	addq	$8, %rsi
Lverify_picnic3_jazz$72:
	cmpq	$3392, %rsi
	jb  	Lverify_picnic3_jazz$73
	movq	1514000(%rsp), %rax
	movq	%rax, %rcx
	movq	1513992(%rsp), %rdx
	movw	1906704(%rsp), %si
	imulq	$3392, %rax, %r9
	movq	$0, %r8
	jmp 	Lverify_picnic3_jazz$70
Lverify_picnic3_jazz$71:
	movq	%r9, %rax
	addq	%r8, %rax
	movq	92736(%rsp,%rax), %rax
	movq	%rax, 1515872(%rsp,%r8)
	addq	$8, %r8
Lverify_picnic3_jazz$70:
	cmpq	$3392, %r8
	jb  	Lverify_picnic3_jazz$71
	leaq	1515872(%rsp), %rdi
	movq	%r9, 1514032(%rsp)
	movq	%rcx, 1514016(%rsp)
	movw	%si, 1906706(%rsp)
	movq	%rdx, 1514024(%rsp)
	leaq	1906814(%rsp), %r8
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$69:
	cmpb	$0, %bl
	je  	Lverify_picnic3_jazz$53
	movw	1906706(%rsp), %si
	leaq	1906814(%rsp), %rcx
	call	L_indexOf$1
Lverify_picnic3_jazz$68:
	movw	1906710(%rsp,%r11,2), %ax
	movw	%ax, 1906708(%rsp)
	movw	$0, %dx
	movw	1906706(%rsp), %ax
	leaq	96(%rsp), %rbp
	leaq	1514104(%rsp), %rcx
	leaq	1584912(%rsp), %r8
	leaq	-1176(%rsp), %rsp
	call	Lcommit_x4_verify$1
Lverify_picnic3_jazz$67:
	leaq	1176(%rsp), %rsp
	movw	$4, %dx
	movw	1906706(%rsp), %ax
	leaq	96(%rsp), %rbp
	leaq	1514104(%rsp), %rcx
	leaq	1584912(%rsp), %r8
	leaq	-1176(%rsp), %rsp
	call	Lcommit_x4_verify$1
Lverify_picnic3_jazz$66:
	leaq	1176(%rsp), %rsp
	movw	$8, %dx
	movw	1906706(%rsp), %ax
	leaq	96(%rsp), %rbp
	leaq	1514104(%rsp), %rcx
	leaq	1584912(%rsp), %r8
	leaq	-1176(%rsp), %rsp
	call	Lcommit_x4_verify$1
Lverify_picnic3_jazz$65:
	leaq	1176(%rsp), %rsp
	movw	$12, %dx
	movw	1906706(%rsp), %ax
	leaq	96(%rsp), %rbp
	leaq	1514104(%rsp), %rcx
	leaq	1584912(%rsp), %r8
	leaq	-1176(%rsp), %rsp
	call	Lcommit_x4_verify$1
Lverify_picnic3_jazz$64:
	leaq	1176(%rsp), %rsp
	movw	1906708(%rsp), %ax
	cmpw	$15, %ax
	je  	Lverify_picnic3_jazz$62
	movw	$15, %si
	movq	1514016(%rsp), %rax
	movq	1514024(%rsp), %rcx
	leaq	1584912(%rsp), %r8
	leaq	1514104(%rsp), %rdi
	leaq	1519264(%rsp), %rdx
	leaq	96(%rsp), %rbx
	leaq	-504(%rsp), %rsp
	call	L_commit_verify_v2$1
Lverify_picnic3_jazz$63:
	leaq	504(%rsp), %rsp
Lverify_picnic3_jazz$62:
	movw	1906708(%rsp), %ax
	movzwq	%ax, %rdx
	movq	1514016(%rsp), %rax
	movq	1514024(%rsp), %rcx
	imulq	$48, %rdx, %rdx
	imulq	$768, %rax, %rsi
	addq	%rdx, %rsi
	imulq	$360, %rcx, %rcx
	addq	$312, %rcx
	leaq	1584912(%rsp), %rdx
	leaq	1519264(%rsp), %rax
	call	L_copy_unnopened_party_commit$1
Lverify_picnic3_jazz$61:
	movq	1514024(%rsp), %rcx
	incq	%rcx
	movq	%rcx, 1514024(%rsp)
	jmp 	Lverify_picnic3_jazz$54
Lverify_picnic3_jazz$53:
	leaq	160(%rsp), %rcx
	leaq	-24(%rsp), %rsp
	call	L__computeAuxTape_aux$1
Lverify_picnic3_jazz$60:
	leaq	24(%rsp), %rsp
	movq	%rdi, 1514040(%rsp)
	movw	$0, %dx
	movw	1906706(%rsp), %ax
	leaq	96(%rsp), %rbp
	leaq	1514104(%rsp), %rcx
	leaq	1584912(%rsp), %r8
	leaq	-1176(%rsp), %rsp
	call	Lcommit_x4_verify$1
Lverify_picnic3_jazz$59:
	leaq	1176(%rsp), %rsp
	movw	$4, %dx
	movw	1906706(%rsp), %ax
	leaq	96(%rsp), %rbp
	leaq	1514104(%rsp), %rcx
	leaq	1584912(%rsp), %r8
	leaq	-1176(%rsp), %rsp
	call	Lcommit_x4_verify$1
Lverify_picnic3_jazz$58:
	leaq	1176(%rsp), %rsp
	movw	$8, %dx
	movw	1906706(%rsp), %ax
	leaq	96(%rsp), %rbp
	leaq	1514104(%rsp), %rcx
	leaq	1584912(%rsp), %r8
	leaq	-1176(%rsp), %rsp
	call	Lcommit_x4_verify$1
Lverify_picnic3_jazz$57:
	leaq	1176(%rsp), %rsp
	movw	$12, %dx
	movw	1906706(%rsp), %ax
	leaq	96(%rsp), %rbp
	leaq	1514104(%rsp), %rcx
	leaq	1584912(%rsp), %r8
	leaq	-1176(%rsp), %rsp
	call	Lcommit_x4_verify$1
Lverify_picnic3_jazz$56:
	leaq	1176(%rsp), %rsp
	movq	1514040(%rsp), %rdx
	movw	$15, %si
	movq	1514016(%rsp), %rax
	leaq	1584912(%rsp), %rcx
	leaq	1514104(%rsp), %rdi
	leaq	96(%rsp), %rbx
	leaq	-504(%rsp), %rsp
	call	L_commit_verify$1
Lverify_picnic3_jazz$55:
	leaq	504(%rsp), %rsp
Lverify_picnic3_jazz$54:
	movq	1514024(%rsp), %rax
	movq	1514032(%rsp), %r9
	movq	$0, %rsi
	jmp 	Lverify_picnic3_jazz$51
Lverify_picnic3_jazz$52:
	movq	1515872(%rsp,%rsi), %rcx
	movq	%r9, %rdx
	addq	%rsi, %rdx
	movq	%rcx, 92736(%rsp,%rdx)
	addq	$8, %rsi
Lverify_picnic3_jazz$51:
	cmpq	$3392, %rsi
	jb  	Lverify_picnic3_jazz$52
	movq	%rax, 1513992(%rsp)
	movq	1514000(%rsp), %rax
	cmpq	$416, %rax
	jnb 	Lverify_picnic3_jazz$46
	movq	1514000(%rsp), %rax
	incq	%rax
	andq	$3, %rax
	cmpq	$0, %rax
	jne 	Lverify_picnic3_jazz$47
	movq	1514000(%rsp), %rcx
	addq	$-3, %rcx
	leaq	5632(%rsp), %rdx
	leaq	1584912(%rsp), %rax
	leaq	-4120(%rsp), %rsp
	call	L_commit_h_x4$1
Lverify_picnic3_jazz$50:
	leaq	4120(%rsp), %rsp
Lverify_picnic3_jazz$49:
	jmp 	Lverify_picnic3_jazz$47
Lverify_picnic3_jazz$46:
	leaq	5632(%rsp), %rdx
	leaq	1584912(%rsp), %rcx
	leaq	-1112(%rsp), %rsp
	call	L_commit_h$1
Lverify_picnic3_jazz$48:
	leaq	1112(%rsp), %rsp
Lverify_picnic3_jazz$47:
	movw	1906704(%rsp), %dx
	incw	%dx
	movw	%dx, 1906704(%rsp)
	movq	1514000(%rsp), %rax
	incq	%rax
Lverify_picnic3_jazz$44:
	cmpq	$419, %rax
	jb  	Lverify_picnic3_jazz$45
	movq	$0, %rsi
	jmp 	Lverify_picnic3_jazz$32
Lverify_picnic3_jazz$33:
	movw	1906814(%rsp,%rsi,2), %ax
	movw	%ax, 1906704(%rsp)
	movw	1906710(%rsp,%rsi,2), %ax
	movw	%ax, 1906708(%rsp)
	movq	%rsi, 1513992(%rsp)
	movw	1906704(%rsp), %ax
	movzwq	%ax, %rsi
	imulq	$3392, %rsi, %rsi
	movw	1906704(%rsp), %bp
	leaq	1906814(%rsp), %rcx
	call	L_get_orderChallengeC$1
Lverify_picnic3_jazz$43:
	movq	%rax, 1514008(%rsp)
	imulq	$360, %rax, %rax
	addq	$96, %rax
	leaq	92736(%rsp), %rdx
	leaq	1519264(%rsp), %rcx
	call	L_setAuxBits$1
Lverify_picnic3_jazz$42:
	movw	1906704(%rsp), %ax
	movzwq	%ax, %rsi
	imulq	$3392, %rsi, %rsi
	movw	1906708(%rsp), %ax
	movzwq	%ax, %rax
	imulq	$192, %rax, %rax
	addq	%rax, %rsi
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$0, %rax
	jmp 	Lverify_picnic3_jazz$40
Lverify_picnic3_jazz$41:
	vmovdqu	%ymm0, 92736(%rsp,%rsi)
	addq	$32, %rsi
	addq	$32, %rax
Lverify_picnic3_jazz$40:
	cmpq	$192, %rax
	jb  	Lverify_picnic3_jazz$41
	vmovdqu	%ymm0, 4096(%rsp)
	vmovdqu	%ymm0, 4128(%rsp)
	vmovdqu	%ymm0, 4160(%rsp)
	vmovdqu	%ymm0, 4192(%rsp)
	vmovdqu	%ymm0, 4224(%rsp)
	vmovdqu	%ymm0, 4256(%rsp)
	vmovdqu	%ymm0, 4288(%rsp)
	vmovdqu	%ymm0, 4320(%rsp)
	vmovdqu	%ymm0, 4352(%rsp)
	vmovdqu	%ymm0, 4384(%rsp)
	vmovdqu	%ymm0, 4416(%rsp)
	vmovdqu	%ymm0, 4448(%rsp)
	vmovdqu	%ymm0, 4480(%rsp)
	vmovdqu	%ymm0, 4512(%rsp)
	vmovdqu	%ymm0, 4544(%rsp)
	vmovdqu	%ymm0, 4576(%rsp)
	vmovdqu	%ymm0, 4608(%rsp)
	vmovdqu	%ymm0, 4640(%rsp)
	vmovdqu	%ymm0, 4672(%rsp)
	vmovdqu	%ymm0, 4704(%rsp)
	vmovdqu	%ymm0, 4736(%rsp)
	vmovdqu	%ymm0, 4768(%rsp)
	vmovdqu	%ymm0, 4800(%rsp)
	vmovdqu	%ymm0, 4832(%rsp)
	vmovdqu	%ymm0, 4864(%rsp)
	vmovdqu	%ymm0, 4896(%rsp)
	vmovdqu	%ymm0, 4928(%rsp)
	vmovdqu	%ymm0, 4960(%rsp)
	vmovdqu	%ymm0, 4992(%rsp)
	vmovdqu	%ymm0, 5024(%rsp)
	vmovdqu	%ymm0, 5056(%rsp)
	vmovdqu	%ymm0, 5088(%rsp)
	vmovdqu	%ymm0, 5120(%rsp)
	vmovdqu	%ymm0, 5152(%rsp)
	vmovdqu	%ymm0, 5184(%rsp)
	vmovdqu	%ymm0, 5216(%rsp)
	vmovdqu	%ymm0, 5248(%rsp)
	vmovdqu	%ymm0, 5280(%rsp)
	vmovdqu	%ymm0, 5312(%rsp)
	vmovdqu	%ymm0, 5344(%rsp)
	vmovdqu	%ymm0, 5376(%rsp)
	vmovdqu	%ymm0, 5408(%rsp)
	vmovdqu	%ymm0, 5440(%rsp)
	vmovdqu	%ymm0, 5472(%rsp)
	vmovdqu	%ymm0, 5504(%rsp)
	vmovdqu	%ymm0, 5536(%rsp)
	vmovdqu	%ymm0, 5568(%rsp)
	vmovdqu	%ymm0, 5600(%rsp)
	movw	1906708(%rsp), %ax
	movzwq	%ax, %rsi
	imulq	$96, %rsi, %r9
	movq	1514008(%rsp), %rcx
	imulq	$360, %rcx, %rcx
	addq	$216, %rcx
	leaq	4096(%rsp), %rdx
	leaq	1519264(%rsp), %rdi
	call	L_copy_msg_from_proofs_to_msgs$1
Lverify_picnic3_jazz$39:
	movq	1514008(%rsp), %rcx
	imulq	$360, %rcx, %rcx
	addq	$192, %rcx
	leaq	160(%rsp), %rdx
	leaq	1519264(%rsp), %rdi
	call	L_mzd_from_char_array_2$1
Lverify_picnic3_jazz$38:
	movw	1906704(%rsp), %cx
	movzwq	%cx, %rcx
	movzwq	%ax, %rax
	imulq	$3392, %rcx, %r9
	movq	$0, %rsi
	jmp 	Lverify_picnic3_jazz$36
Lverify_picnic3_jazz$37:
	movq	%r9, %rcx
	addq	%rsi, %rcx
	movq	92736(%rsp,%rcx), %rcx
	movq	%rcx, 1515872(%rsp,%rsi)
	addq	$8, %rsi
Lverify_picnic3_jazz$36:
	cmpq	$3392, %rsi
	jb  	Lverify_picnic3_jazz$37
	leaq	160(%rsp), %r8
	leaq	1515872(%rsp), %rdi
	leaq	4096(%rsp), %rdx
	leaq	128(%rsp), %rsi
	leaq	-504(%rsp), %rsp
	call	L_simulateOnline$1
Lverify_picnic3_jazz$35:
	leaq	504(%rsp), %rsp
	movw	1906704(%rsp), %ax
	movq	1514008(%rsp), %rcx
	movzwq	%ax, %rax
	leaq	1537984(%rsp), %r8
	leaq	1519264(%rsp), %rdi
	leaq	4096(%rsp), %rdx
	leaq	-344(%rsp), %rsp
	call	L_commit_v_verify$1
Lverify_picnic3_jazz$34:
	leaq	344(%rsp), %rsp
	movq	1513992(%rsp), %rsi
	incq	%rsi
Lverify_picnic3_jazz$32:
	cmpq	$52, %rsi
	jb  	Lverify_picnic3_jazz$33
	movq	$0, 1513992(%rsp)
	movw	$0, %si
	jmp 	Lverify_picnic3_jazz$26
Lverify_picnic3_jazz$27:
	leaq	1906814(%rsp), %r8
	call	L_contains_challengeC_2$1
Lverify_picnic3_jazz$31:
	cmpb	$1, %bl
	jne 	Lverify_picnic3_jazz$28
	movzwq	%si, %r8
	movb	3647(%rsp,%r8), %al
	cmpb	$1, %al
	jne 	Lverify_picnic3_jazz$30
	movq	$1, 1513992(%rsp)
Lverify_picnic3_jazz$30:
	movq	%r8, %rcx
	imulq	$48, %rcx, %rcx
	movq	$511, %rax
	addq	%r8, %rax
	movb	$1, 3136(%rsp,%rax)
	imulq	$48, %rax, %rax
	leaq	48096(%rsp), %rdx
	leaq	1537984(%rsp), %rdi
	call	L__copy_leaf_to_tree$1
Lverify_picnic3_jazz$29:
Lverify_picnic3_jazz$28:
	incw	%si
Lverify_picnic3_jazz$26:
	cmpw	$419, %si
	jb  	Lverify_picnic3_jazz$27
	movq	$930, %rsi
	jmp 	Lverify_picnic3_jazz$13
Lverify_picnic3_jazz$14:
	movq	%rsi, 1514008(%rsp)
	movq	%rsi, %rax
	leaq	2176(%rsp), %rdx
	movb	$0, %cl
	cmpq	$930, %rax
	jnb 	Lverify_picnic3_jazz$25
	movb	(%rdx,%rax), %cl
Lverify_picnic3_jazz$25:
	cmpb	$1, %cl
	jne 	Lverify_picnic3_jazz$15
	movq	%rsi, %rbp
	cmpq	$0, %rbp
	je  	Lverify_picnic3_jazz$24
	incq	%rbp
	shrq	$1, %rbp
	decq	%rbp
Lverify_picnic3_jazz$24:
	movb	3136(%rsp,%rbp), %al
	cmpb	$0, %al
	jne 	Lverify_picnic3_jazz$15
	movq	%rbp, %rax
	shlq	$1, %rax
	incq	%rax
	movb	3136(%rsp,%rax), %cl
	cmpb	$1, %cl
	jne 	Lverify_picnic3_jazz$15
	incq	%rax
	movq	%rax, %rcx
	leaq	2176(%rsp), %rdx
	movb	$0, %sil
	cmpq	$930, %rcx
	jnb 	Lverify_picnic3_jazz$23
	movb	(%rdx,%rcx), %sil
Lverify_picnic3_jazz$23:
	cmpb	$1, %sil
	je  	Lverify_picnic3_jazz$18
	leaq	96(%rsp), %rdx
	movw	%bp, %ax
	leaq	48096(%rsp), %r9
	leaq	3136(%rsp), %r8
	leaq	2176(%rsp), %rsi
	leaq	-408(%rsp), %rsp
	call	L_computeParentHash$1
Lverify_picnic3_jazz$22:
	leaq	408(%rsp), %rsp
	jmp 	Lverify_picnic3_jazz$15
Lverify_picnic3_jazz$18:
	movb	3136(%rsp,%rax), %al
	cmpb	$1, %al
	jne 	Lverify_picnic3_jazz$15
	leaq	96(%rsp), %rdx
	movw	%bp, %ax
	leaq	48096(%rsp), %r9
	leaq	3136(%rsp), %r8
	leaq	2176(%rsp), %rsi
	leaq	-408(%rsp), %rsp
	call	L_computeParentHash$1
Lverify_picnic3_jazz$21:
	leaq	408(%rsp), %rsp
Lverify_picnic3_jazz$20:
Lverify_picnic3_jazz$19:
Lverify_picnic3_jazz$17:
Lverify_picnic3_jazz$16:
Lverify_picnic3_jazz$15:
	movq	1514008(%rsp), %rsi
	decq	%rsi
Lverify_picnic3_jazz$13:
	cmpq	$0, %rsi
	jnbe	Lverify_picnic3_jazz$14
	movb	3136(%rsp), %al
	cmpb	$0, %al
	je  	Lverify_picnic3_jazz$11
	movq	1513992(%rsp), %rax
	jmp 	Lverify_picnic3_jazz$12
Lverify_picnic3_jazz$11:
	movq	$2, %rax
Lverify_picnic3_jazz$12:
	cmpq	$0, %rax
	je  	Lverify_picnic3_jazz$4
	movq	$1, %rdx
	jmp 	Lverify_picnic3_jazz$5
Lverify_picnic3_jazz$4:
	leaq	192(%rsp), %rax
	leaq	5632(%rsp), %rdx
	leaq	48096(%rsp), %r10
	leaq	96(%rsp), %rbx
	leaq	32(%rsp), %rsi
	leaq	64(%rsp), %rcx
	movq	%rsp, %r9
	leaq	-248(%rsp), %rsp
	call	L_HCP_verify$1
Lverify_picnic3_jazz$10:
	leaq	248(%rsp), %rsp
	movq	$0, %rdx
	movq	$0, %rsi
	jmp 	Lverify_picnic3_jazz$6
Lverify_picnic3_jazz$7:
	movq	1514056(%rsp,%rsi,8), %rax
	movq	192(%rsp,%rsi,8), %rcx
	subq	%rcx, %rax
	cmpq	$0, %rax
	je  	Lverify_picnic3_jazz$8
	movq	$3, %rdx
	movq	$48, %rsi
	jmp 	Lverify_picnic3_jazz$6
Lverify_picnic3_jazz$8:
	incq	%rsi
Lverify_picnic3_jazz$9:
Lverify_picnic3_jazz$6:
	cmpq	$6, %rsi
	jb  	Lverify_picnic3_jazz$7
Lverify_picnic3_jazz$5:
	movq	1513984(%rsp), %r9
	movq	%rdx, (%r9)
Lverify_picnic3_jazz$3:
Lverify_picnic3_jazz$2:
	movq	1907720(%rsp), %rbx
	movq	1907728(%rsp), %rbp
	movq	1907736(%rsp), %r12
	movq	1907744(%rsp), %r13
	movq	1907752(%rsp), %r14
	movq	1907760(%rsp), %r15
	movq	1907768(%rsp), %rsp
	ret
_sign_picnic3_jazz:
	movq	%rsp, %rax
	leaq	-2875904(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 2875848(%rsp)
	movq	%rbp, 2875856(%rsp)
	movq	%r12, 2875864(%rsp)
	movq	%r13, 2875872(%rsp)
	movq	%r14, 2875880(%rsp)
	movq	%r15, 2875888(%rsp)
	movq	%rax, 2875896(%rsp)
	movq	%rsi, 71536(%rsp)
	movq	%rdi, 71544(%rsp)
	movq	%rdx, 71552(%rsp)
	movq	%r8, 71560(%rsp)
	movq	$0, %rax
	jmp 	Lsign_picnic3_jazz$84
Lsign_picnic3_jazz$85:
	movq	$0, 131904(%rsp,%rax,8)
	incq	%rax
Lsign_picnic3_jazz$84:
	cmpq	$5580, %rax
	jb  	Lsign_picnic3_jazz$85
	movq	71536(%rsp), %rax
	leaq	32(%rsp), %r8
	call	L_memcpy_3Words_from_reg$1
Lsign_picnic3_jazz$83:
	movq	71544(%rsp), %rax
	leaq	64(%rsp), %r8
	call	L_memcpy_3Words_from_reg$1
Lsign_picnic3_jazz$82:
	movq	71552(%rsp), %rax
	leaq	96(%rsp), %r8
	call	L_memcpy_3Words_from_reg$1
Lsign_picnic3_jazz$81:
	movq	$0, %rsi
	jmp 	Lsign_picnic3_jazz$79
Lsign_picnic3_jazz$80:
	movb	(%rcx,%rsi), %al
	movb	%al, (%rsp,%rsi)
	incq	%rsi
Lsign_picnic3_jazz$79:
	cmpq	$13, %rsi
	jb  	Lsign_picnic3_jazz$80
	leaq	160(%rsp), %rcx
	leaq	64(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	96(%rsp), %rdx
	movq	%rsp, %r8
	leaq	-312(%rsp), %rsp
	call	L_computeSaltAndRootSeed$1
Lsign_picnic3_jazz$78:
	leaq	312(%rsp), %rsp
	leaq	49216(%rsp), %rax
	leaq	1184(%rsp), %r8
	leaq	224(%rsp), %rsi
	call	L_createTree_1$1
Lsign_picnic3_jazz$77:
	leaq	49216(%rsp), %rcx
	leaq	192(%rsp), %rax
	call	L_memcpy_3Words$1
Lsign_picnic3_jazz$76:
	movb	$1, 1184(%rsp)
	movw	$0, %ax
	leaq	49216(%rsp), %rdx
	leaq	1184(%rsp), %r8
	leaq	224(%rsp), %rsi
	leaq	160(%rsp), %rbx
	leaq	-376(%rsp), %rsp
	call	L_expandSeeds_1$1
Lsign_picnic3_jazz$75:
	leaq	376(%rsp), %rsp
	leaq	128(%rsp), %rdx
	leaq	96(%rsp), %rdi
	call	L_mzd_from_char_array$1
Lsign_picnic3_jazz$74:
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$12989, %rax
	addq	$-7, %rax
	movq	$0, %rcx
	jmp 	Lsign_picnic3_jazz$72
Lsign_picnic3_jazz$73:
	vmovdqu	%ymm0, 16096(%rsp,%rcx)
	addq	$32, %rcx
Lsign_picnic3_jazz$72:
	cmpq	%rax, %rcx
	jb  	Lsign_picnic3_jazz$73
	movl	$0, 16096(%rsp,%rcx)
	addq	$4, %rcx
	movw	$0, 16096(%rsp,%rcx)
	addq	$2, %rcx
	movb	$0, 16096(%rsp,%rcx)
	movq	$0, %rcx
	jmp 	Lsign_picnic3_jazz$70
Lsign_picnic3_jazz$71:
	vmovdqu	%ymm0, 3104(%rsp,%rcx)
	addq	$32, %rcx
Lsign_picnic3_jazz$70:
	cmpq	%rax, %rcx
	jb  	Lsign_picnic3_jazz$71
	movl	$0, 3104(%rsp,%rcx)
	addq	$4, %rcx
	movw	$0, 3104(%rsp,%rcx)
	addq	$2, %rcx
	movb	$0, 3104(%rsp,%rcx)
	movq	$418, %rbp
	jmp 	Lsign_picnic3_jazz$59
Lsign_picnic3_jazz$60:
	imulq	$31, %rbp, %rax
	movq	%rbp, 71552(%rsp)
	movq	%rax, %rcx
	movq	%rax, %rdx
	movq	%rax, 71544(%rsp)
	addq	$31, %rdx
	decq	%rdx
	addq	$15, %rcx
	jmp 	Lsign_picnic3_jazz$68
Lsign_picnic3_jazz$69:
	movb	$1, 3104(%rsp,%rdx)
	decq	%rdx
Lsign_picnic3_jazz$68:
	cmpq	%rcx, %rdx
	jnbe	Lsign_picnic3_jazz$69
	movq	$15, %rcx
	jmp 	Lsign_picnic3_jazz$61
Lsign_picnic3_jazz$62:
	movq	%rcx, 71536(%rsp)
	shlq	$1, %rcx
	incq	%rcx
	addq	71544(%rsp), %rcx
	movb	$0, %dl
	leaq	3104(%rsp), %rax
	call	L__exists_22$1
Lsign_picnic3_jazz$67:
	cmpb	$1, %dl
	je  	Lsign_picnic3_jazz$63
	incq	%rcx
	leaq	3104(%rsp), %rax
	call	L__exists_22$1
Lsign_picnic3_jazz$66:
	cmpb	$1, %dl
	jne 	Lsign_picnic3_jazz$64
	movq	71544(%rsp), %rcx
	addq	71536(%rsp), %rcx
	movb	$1, 3104(%rsp,%rcx)
Lsign_picnic3_jazz$65:
	jmp 	Lsign_picnic3_jazz$64
Lsign_picnic3_jazz$63:
	movq	71544(%rsp), %rcx
	addq	71536(%rsp), %rcx
	movb	$1, 3104(%rsp,%rcx)
Lsign_picnic3_jazz$64:
	movq	71536(%rsp), %rcx
	decq	%rcx
Lsign_picnic3_jazz$61:
	cmpq	$0, %rcx
	jnbe	Lsign_picnic3_jazz$62
	addq	71544(%rsp), %rcx
	movb	$1, 3104(%rsp,%rcx)
	movq	71552(%rsp), %rbp
	decq	%rbp
Lsign_picnic3_jazz$59:
	cmpq	$0, %rbp
	jnbe	Lsign_picnic3_jazz$60
	movq	$31, %rax
	decq	%rax
	movq	$15, %rcx
	jmp 	Lsign_picnic3_jazz$57
Lsign_picnic3_jazz$58:
	movb	$1, 3104(%rsp,%rax)
	decq	%rax
Lsign_picnic3_jazz$57:
	cmpq	%rcx, %rax
	jnbe	Lsign_picnic3_jazz$58
	jmp 	Lsign_picnic3_jazz$50
Lsign_picnic3_jazz$51:
	movq	%rcx, 71552(%rsp)
	shlq	$1, %rcx
	incq	%rcx
	movb	$0, %dl
	leaq	3104(%rsp), %rax
	call	L__exists_22$1
Lsign_picnic3_jazz$56:
	cmpb	$1, %dl
	je  	Lsign_picnic3_jazz$52
	incq	%rcx
	leaq	3104(%rsp), %rax
	call	L__exists_22$1
Lsign_picnic3_jazz$55:
	cmpb	$1, %dl
	jne 	Lsign_picnic3_jazz$53
	movq	71552(%rsp), %rcx
	movb	$1, 3104(%rsp,%rcx)
Lsign_picnic3_jazz$54:
	jmp 	Lsign_picnic3_jazz$53
Lsign_picnic3_jazz$52:
	movq	71552(%rsp), %rcx
	movb	$1, 3104(%rsp,%rcx)
Lsign_picnic3_jazz$53:
	movq	71552(%rsp), %rcx
	decq	%rcx
Lsign_picnic3_jazz$50:
	cmpq	$0, %rcx
	jnbe	Lsign_picnic3_jazz$51
	movb	$1, 3104(%rsp,%rcx)
	movq	$0, %rbp
	jmp 	Lsign_picnic3_jazz$48
Lsign_picnic3_jazz$49:
	imulq	$31, %rbp, %rcx
	movb	$1, 16096(%rsp,%rcx)
	incq	%rbp
Lsign_picnic3_jazz$48:
	cmpq	$419, %rbp
	jb  	Lsign_picnic3_jazz$49
	movq	$0, %rax
	jmp 	Lsign_picnic3_jazz$38
Lsign_picnic3_jazz$39:
	movq	%rax, 71552(%rsp)
	movq	%rax, 71544(%rsp)
	movq	%rax, %rsi
	imulq	$744, %rsi, %rsi
	addq	$511, %rax
	imulq	$24, %rax, %rax
	movq	49216(%rsp,%rax), %rcx
	movq	%rcx, 176544(%rsp,%rsi)
	movq	49224(%rsp,%rax), %rcx
	movq	%rcx, 176552(%rsp,%rsi)
	movq	49232(%rsp,%rax), %rax
	movq	%rax, 176560(%rsp,%rsi)
	movq	71544(%rsp), %rax
	leaq	176544(%rsp), %rdx
	leaq	16096(%rsp), %r8
	leaq	3104(%rsp), %rsi
	leaq	160(%rsp), %rbx
	leaq	-376(%rsp), %rsp
	call	L_expandSeeds_22$1
Lsign_picnic3_jazz$47:
	leaq	376(%rsp), %rsp
	movq	71552(%rsp), %rax
	leaq	1453656(%rsp), %r8
	leaq	176544(%rsp), %rcx
	leaq	160(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	L_createRandomTapes2$1
Lsign_picnic3_jazz$46:
	leaq	24(%rsp), %rsp
	movq	71552(%rsp), %rcx
	leaq	1453656(%rsp), %rdx
	leaq	71568(%rsp), %rax
	leaq	64(%rsp), %rsi
	leaq	-88(%rsp), %rsp
	call	L_computeAuxTape2$1
Lsign_picnic3_jazz$45:
	leaq	88(%rsp), %rsp
	movq	71552(%rsp), %rax
	movw	$0, %si
	leaq	176544(%rsp), %rcx
	leaq	160(%rsp), %rdx
	leaq	488280(%rsp), %r8
	leaq	-1176(%rsp), %rsp
	call	Lcommit_x4$1
Lsign_picnic3_jazz$44:
	leaq	1176(%rsp), %rsp
	movq	71552(%rsp), %rax
	movw	$4, %si
	leaq	176544(%rsp), %rcx
	leaq	160(%rsp), %rdx
	leaq	488280(%rsp), %r8
	leaq	-1176(%rsp), %rsp
	call	Lcommit_x4$1
Lsign_picnic3_jazz$43:
	leaq	1176(%rsp), %rsp
	movq	71552(%rsp), %rax
	movw	$8, %si
	leaq	176544(%rsp), %rcx
	leaq	160(%rsp), %rdx
	leaq	488280(%rsp), %r8
	leaq	-1176(%rsp), %rsp
	call	Lcommit_x4$1
Lsign_picnic3_jazz$42:
	leaq	1176(%rsp), %rsp
	movq	71552(%rsp), %rax
	movw	$12, %si
	leaq	176544(%rsp), %rcx
	leaq	160(%rsp), %rdx
	leaq	488280(%rsp), %r8
	leaq	-1176(%rsp), %rsp
	call	Lcommit_x4$1
Lsign_picnic3_jazz$41:
	leaq	1176(%rsp), %rsp
	movq	71552(%rsp), %rax
	movw	$15, %dx
	leaq	488280(%rsp), %rcx
	leaq	176544(%rsp), %rdi
	leaq	1453656(%rsp), %rsi
	leaq	160(%rsp), %rbx
	leaq	-504(%rsp), %rsp
	call	L_commit$1
Lsign_picnic3_jazz$40:
	leaq	504(%rsp), %rsp
	movq	71552(%rsp), %rax
	incq	%rax
Lsign_picnic3_jazz$38:
	cmpq	$419, %rax
	jb  	Lsign_picnic3_jazz$39
	movq	$0, %rax
	jmp 	Lsign_picnic3_jazz$34
Lsign_picnic3_jazz$35:
	movq	%rax, 71552(%rsp)
	movq	71552(%rsp), %rcx
	imulq	$32, %rcx, %rcx
	leaq	64(%rsp), %rdx
	leaq	71568(%rsp), %rdi
	call	L_masked_mzd_from_char_array$1
Lsign_picnic3_jazz$37:
	movq	71552(%rsp), %rax
	imulq	$1536, %rax, %rcx
	movq	71552(%rsp), %rax
	imulq	$3392, %rax, %rsi
	movq	$16, %rdi
	leaq	64(%rsp), %r8
	leaq	1453656(%rsp), %rax
	leaq	810072(%rsp), %rdx
	leaq	128(%rsp), %rbx
	leaq	-504(%rsp), %rsp
	call	L_simulateOnline2$1
Lsign_picnic3_jazz$36:
	leaq	504(%rsp), %rsp
	movq	71552(%rsp), %rax
	incq	%rax
Lsign_picnic3_jazz$34:
	cmpq	$419, %rax
	jb  	Lsign_picnic3_jazz$35
	movq	$0, %rax
	jmp 	Lsign_picnic3_jazz$30
Lsign_picnic3_jazz$31:
	movq	%rax, 71552(%rsp)
	imulq	$4, %rax, %rcx
	leaq	29088(%rsp), %rdx
	leaq	488280(%rsp), %rax
	leaq	-4120(%rsp), %rsp
	call	L_commit_h_x4$1
Lsign_picnic3_jazz$33:
	leaq	4120(%rsp), %rsp
	movq	71552(%rsp), %rax
	imulq	$4, %rax, %rcx
	leaq	84976(%rsp), %rdx
	leaq	71568(%rsp), %rax
	leaq	810072(%rsp), %rbp
	leaq	-7320(%rsp), %rsp
	call	L_commit_v_x4$1
Lsign_picnic3_jazz$32:
	leaq	7320(%rsp), %rsp
	movq	71552(%rsp), %rax
	incq	%rax
Lsign_picnic3_jazz$30:
	cmpq	$104, %rax
	jb  	Lsign_picnic3_jazz$31
	movq	$416, %rax
	jmp 	Lsign_picnic3_jazz$26
Lsign_picnic3_jazz$27:
	movq	%rax, 71552(%rsp)
	leaq	29088(%rsp), %rdx
	leaq	488280(%rsp), %rcx
	leaq	-1112(%rsp), %rsp
	call	L_commit_h$1
Lsign_picnic3_jazz$29:
	leaq	1112(%rsp), %rsp
	movq	71552(%rsp), %rax
	leaq	71568(%rsp), %rdi
	leaq	810072(%rsp), %rcx
	leaq	84976(%rsp), %rdx
	leaq	-1912(%rsp), %rsp
	call	L_commit_v$1
Lsign_picnic3_jazz$28:
	leaq	1912(%rsp), %rsp
	movq	71552(%rsp), %rax
	incq	%rax
Lsign_picnic3_jazz$26:
	cmpq	$419, %rax
	jb  	Lsign_picnic3_jazz$27
	leaq	131904(%rsp), %rax
	leaq	2144(%rsp), %r8
	leaq	1184(%rsp), %rsi
	call	L_createTree_3$1
Lsign_picnic3_jazz$25:
	movq	$511, %rax
	movq	$0, %rsi
	movq	%rax, %rcx
	imulq	$6, %rax, %rax
	jmp 	Lsign_picnic3_jazz$21
Lsign_picnic3_jazz$22:
	movq	$0, %rdx
	jmp 	Lsign_picnic3_jazz$23
Lsign_picnic3_jazz$24:
	movq	84976(%rsp,%rsi,8), %rdi
	movq	%rdi, 131904(%rsp,%rax,8)
	incq	%rax
	incq	%rsi
	incq	%rdx
Lsign_picnic3_jazz$23:
	cmpq	$6, %rdx
	jb  	Lsign_picnic3_jazz$24
	movb	$1, 2144(%rsp,%rcx)
	incq	%rcx
Lsign_picnic3_jazz$21:
	cmpq	$2514, %rsi
	jb  	Lsign_picnic3_jazz$22
	movq	$929, %rsi
	jmp 	Lsign_picnic3_jazz$8
Lsign_picnic3_jazz$9:
	movq	%rsi, 71552(%rsp)
	movq	%rsi, %rax
	leaq	1184(%rsp), %rdx
	movb	$0, %cl
	cmpq	$930, %rax
	jnb 	Lsign_picnic3_jazz$20
	movb	(%rdx,%rax), %cl
Lsign_picnic3_jazz$20:
	cmpb	$1, %cl
	jne 	Lsign_picnic3_jazz$10
	movq	%rsi, %rbp
	cmpq	$0, %rbp
	je  	Lsign_picnic3_jazz$19
	incq	%rbp
	shrq	$1, %rbp
	decq	%rbp
Lsign_picnic3_jazz$19:
	movb	2144(%rsp,%rbp), %al
	cmpb	$0, %al
	jne 	Lsign_picnic3_jazz$10
	movq	%rbp, %rax
	shlq	$1, %rax
	incq	%rax
	movb	2144(%rsp,%rax), %cl
	cmpb	$1, %cl
	jne 	Lsign_picnic3_jazz$10
	incq	%rax
	movq	%rax, %rcx
	leaq	1184(%rsp), %rdx
	movb	$0, %sil
	cmpq	$930, %rcx
	jnb 	Lsign_picnic3_jazz$18
	movb	(%rdx,%rcx), %sil
Lsign_picnic3_jazz$18:
	cmpb	$1, %sil
	je  	Lsign_picnic3_jazz$13
	leaq	160(%rsp), %rdx
	movw	%bp, %ax
	leaq	131904(%rsp), %r9
	leaq	2144(%rsp), %r8
	leaq	1184(%rsp), %rsi
	leaq	-408(%rsp), %rsp
	call	L_computeParentHash$1
Lsign_picnic3_jazz$17:
	leaq	408(%rsp), %rsp
	jmp 	Lsign_picnic3_jazz$10
Lsign_picnic3_jazz$13:
	movb	2144(%rsp,%rax), %al
	cmpb	$1, %al
	jne 	Lsign_picnic3_jazz$10
	leaq	160(%rsp), %rdx
	movw	%bp, %ax
	leaq	131904(%rsp), %r9
	leaq	2144(%rsp), %r8
	leaq	1184(%rsp), %rsi
	leaq	-408(%rsp), %rsp
	call	L_computeParentHash$1
Lsign_picnic3_jazz$16:
	leaq	408(%rsp), %rsp
Lsign_picnic3_jazz$15:
Lsign_picnic3_jazz$14:
Lsign_picnic3_jazz$12:
Lsign_picnic3_jazz$11:
Lsign_picnic3_jazz$10:
	movq	71552(%rsp), %rsi
	decq	%rsi
Lsign_picnic3_jazz$8:
	cmpq	$0, %rsi
	jnbe	Lsign_picnic3_jazz$9
	movq	71560(%rsp), %rax
	leaq	29088(%rsp), %rdx
	leaq	131904(%rsp), %r10
	leaq	160(%rsp), %rbx
	leaq	32(%rsp), %rsi
	leaq	96(%rsp), %r8
	movq	%rsp, %r9
	leaq	2875008(%rsp), %rcx
	leaq	2874904(%rsp), %rdi
	leaq	-408(%rsp), %rsp
	call	L_HCP$1
Lsign_picnic3_jazz$7:
	leaq	408(%rsp), %rsp
	leaq	160(%rsp), %rax
	call	L_memcpy_salt$1
Lsign_picnic3_jazz$6:
	leaq	49216(%rsp), %rax
	leaq	224(%rsp), %r9
	leaq	2875008(%rsp), %rcx
	leaq	-26816(%rsp), %rsp
	call	L_revealSeeds$1
Lsign_picnic3_jazz$5:
	leaq	26816(%rsp), %rsp
	leaq	2875008(%rsp), %rdx
	leaq	2875112(%rsp), %rax
	call	L_getMissingLeavesList$1
Lsign_picnic3_jazz$4:
	leaq	1184(%rsp), %rsi
	leaq	2875112(%rsp), %rax
	leaq	105088(%rsp), %rdx
	call	L_openMerkleTreeSize$1
Lsign_picnic3_jazz$3:
	leaq	131904(%rsp), %rdx
	leaq	105088(%rsp), %rax
	call	L_openMerkleTree$1
Lsign_picnic3_jazz$2:
	leaq	176544(%rsp), %rcx
	leaq	3104(%rsp), %rax
	leaq	1453656(%rsp), %rdx
	leaq	160(%rsp), %rbx
	leaq	71568(%rsp), %rsi
	leaq	810072(%rsp), %r9
	leaq	2875008(%rsp), %rdi
	leaq	2874904(%rsp), %r8
	leaq	-888(%rsp), %rsp
	call	L_assemble_proof$1
Lsign_picnic3_jazz$1:
	leaq	888(%rsp), %rsp
	movq	2875848(%rsp), %rbx
	movq	2875856(%rsp), %rbp
	movq	2875864(%rsp), %r12
	movq	2875872(%rsp), %r13
	movq	2875880(%rsp), %r14
	movq	2875888(%rsp), %r15
	movq	2875896(%rsp), %rsp
	ret
_keyGen_jazz:
	movq	%rsp, %rax
	leaq	-96(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbp, 72(%rsp)
	movq	%r12, 80(%rsp)
	movq	%rax, 88(%rsp)
	movq	(%rdi), %rax
	bswapq	%rax
	movq	%rax, 16(%rsp)
	movq	8(%rdi), %rax
	bswapq	%rax
	movq	%rax, 8(%rsp)
	movq	16(%rdi), %rax
	bswapq	%rax
	movq	%rax, (%rsp)
	vmovdqu	48(%rdi), %ymm0
	vmovdqu	%ymm0, 24(%rsi)
	movq	48(%rdi), %rax
	bswapq	%rax
	movq	%rax, 48(%rsp)
	movq	56(%rdi), %rax
	bswapq	%rax
	movq	%rax, 40(%rsp)
	movq	64(%rdi), %rax
	bswapq	%rax
	movq	%rax, 32(%rsp)
	movq	%rsi, 64(%rsp)
	vmovdqu	32(%rsp), %ymm2
	movq	%rsp, %rcx
	leaq	glob_data + 55744(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192_v2$1
LkeyGen_jazz$13:
	call	L__sbox_uint64_lowmc_192_192_4$1
LkeyGen_jazz$12:
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %rcx
	vpxor	%ymm2, %ymm2, %ymm2
	leaq	glob_data + 31168(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192_v2$1
LkeyGen_jazz$11:
	vpxor	glob_data + 86464(%rip), %ymm3, %ymm2
	movq	%rsp, %rcx
	leaq	glob_data + 61888(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192_v2$1
LkeyGen_jazz$10:
	call	L__sbox_uint64_lowmc_192_192_4$1
LkeyGen_jazz$9:
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %rcx
	vpxor	%ymm2, %ymm2, %ymm2
	leaq	glob_data + 37312(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192_v2$1
LkeyGen_jazz$8:
	vpxor	glob_data + 86496(%rip), %ymm3, %ymm2
	movq	%rsp, %rcx
	leaq	glob_data + 68032(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192_v2$1
LkeyGen_jazz$7:
	call	L__sbox_uint64_lowmc_192_192_4$1
LkeyGen_jazz$6:
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %rcx
	vpxor	%ymm2, %ymm2, %ymm2
	leaq	glob_data + 43456(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192_v2$1
LkeyGen_jazz$5:
	vpxor	glob_data + 86528(%rip), %ymm3, %ymm2
	movq	%rsp, %rcx
	leaq	glob_data + 74176(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192_v2$1
LkeyGen_jazz$4:
	call	L__sbox_uint64_lowmc_192_192_4$1
LkeyGen_jazz$3:
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %rcx
	vpxor	%ymm2, %ymm2, %ymm2
	leaq	glob_data + 49600(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192_v2$1
LkeyGen_jazz$2:
	vpxor	glob_data + 86560(%rip), %ymm3, %ymm2
	movq	%rsp, %rcx
	leaq	glob_data + 80320(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192_v2$1
LkeyGen_jazz$1:
	vmovdqu	%ymm3, (%rsp)
	movq	64(%rsp), %rsi
	movq	16(%rsp), %rax
	bswapq	%rax
	movq	%rax, (%rsi)
	movq	8(%rsp), %rax
	bswapq	%rax
	movq	%rax, 8(%rsi)
	movq	(%rsp), %rax
	bswapq	%rax
	movq	%rax, 16(%rsi)
	movq	72(%rsp), %rbp
	movq	80(%rsp), %r12
	movq	88(%rsp), %rsp
	ret
L_simulateOnline2$1:
	movq	%rsi, 448(%rsp)
	movq	%rcx, 456(%rsp)
	movq	%rdi, 464(%rsp)
	vmovdqu	(%r8), %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	(%rbx), %ymm0
	vmovdqu	%ymm0, 64(%rsp)
	leaq	96(%rsp), %r9
	leaq	32(%rsp), %rcx
	leaq	glob_data + 55744(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r9)
	call	L_fl_mzd_addmul_v_uint64_192$1
L_simulateOnline2$47:
	leaq	128(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	64(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_simulateOnline2$46:
	movq	456(%rsp), %rcx
	movq	448(%rsp), %rsi
	movq	464(%rsp), %rdi
	movq	%rdi, 472(%rsp)
	movq	%rcx, 480(%rsp)
	movq	%rsi, 488(%rsp)
	vmovdqu	128(%rsp), %ymm0
	vpand	glob_data + 86656(%rip), %ymm0, %ymm1
	vpand	glob_data + 86624(%rip), %ymm0, %ymm2
	vpand	glob_data + 86592(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpermq	$147, %ymm3, %ymm3
	vmovdqu	%ymm0, 64(%rsp)
	vpor	%ymm3, %ymm1, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpermq	$147, %ymm4, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vmovdqu	%ymm3, 160(%rsp)
	vpor	%ymm4, %ymm2, %ymm5
	vpand	%ymm5, %ymm0, %ymm1
	vpand	%ymm3, %ymm0, %ymm0
	vmovdqu	%ymm5, 192(%rsp)
	vmovdqu	%ymm0, 224(%rsp)
	vpand	%ymm5, %ymm3, %ymm0
	vmovdqu	%ymm1, 256(%rsp)
	vmovdqu	%ymm0, 288(%rsp)
	movq	$0, %rsi
	jmp 	L_simulateOnline2$38
L_simulateOnline2$39:
	movq	%rsi, 496(%rsp)
	movq	472(%rsp), %rdi
	cmpq	%rsi, %rdi
	je  	L_simulateOnline2$40
	movq	496(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	488(%rsp), %rsi
	leaq	416(%rsp), %rcx
	call	L_mzd_from_bitstream_verify$1
L_simulateOnline2$45:
	vmovdqu	416(%rsp), %ymm0
	vpand	glob_data + 86656(%rip), %ymm0, %ymm2
	vpand	glob_data + 86624(%rip), %ymm0, %ymm3
	vpand	glob_data + 86592(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm2, %ymm1
	vpsllq	$2, %ymm2, %ymm2
	vmovdqu	%ymm0, 384(%rsp)
	vpermq	$147, %ymm1, %ymm1
	vpor	%ymm1, %ymm2, %ymm2
	vpsrlq	$63, %ymm3, %ymm1
	vpermq	$147, %ymm1, %ymm1
	vpsllq	$1, %ymm3, %ymm3
	vmovdqu	%ymm2, 352(%rsp)
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm3, 320(%rsp)
	movq	496(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	488(%rsp), %rsi
	addq	$24, %rsi
	leaq	416(%rsp), %rcx
	call	L_mzd_from_bitstream_verify$1
L_simulateOnline2$44:
	vmovdqu	192(%rsp), %ymm0
	vmovdqu	160(%rsp), %ymm1
	vmovdqu	416(%rsp), %ymm6
	vmovdqu	320(%rsp), %ymm2
	vpand	glob_data + 86624(%rip), %ymm6, %ymm5
	vmovdqu	352(%rsp), %ymm3
	vpand	glob_data + 86656(%rip), %ymm6, %ymm4
	vpand	glob_data + 86592(%rip), %ymm6, %ymm6
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
	vmovdqu	%ymm7, 416(%rsp)
	vpsllq	$2, %ymm4, %ymm4
	vpxor	288(%rsp), %ymm7, %ymm6
	vpor	%ymm10, %ymm4, %ymm4
	vmovdqu	%ymm6, 288(%rsp)
	vmovdqu	384(%rsp), %ymm6
	vpand	%ymm6, %ymm1, %ymm1
	vpand	%ymm0, %ymm6, %ymm0
	vpxor	%ymm4, %ymm1, %ymm1
	vmovdqu	64(%rsp), %ymm4
	vpxor	%ymm5, %ymm0, %ymm0
	vpand	%ymm4, %ymm3, %ymm3
	vpand	%ymm4, %ymm2, %ymm2
	vpxor	%ymm3, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	224(%rsp), %ymm1, %ymm6
	vpsllq	$62, %ymm1, %ymm3
	vpsllq	$63, %ymm0, %ymm2
	vpxor	256(%rsp), %ymm0, %ymm5
	vpermq	$57, %ymm3, %ymm3
	vpsrlq	$2, %ymm1, %ymm1
	vpermq	$57, %ymm2, %ymm2
	vmovdqu	%ymm5, 256(%rsp)
	vpsrlq	$1, %ymm0, %ymm0
	vpor	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm6, 224(%rsp)
	vpor	%ymm2, %ymm0, %ymm0
	vpxor	416(%rsp), %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 416(%rsp)
	movq	496(%rsp), %rcx
	imulq	$96, %rcx, %rsi
	addq	480(%rsp), %rsi
	leaq	416(%rsp), %rcx
	call	L_mzd_to_bitstream2_full_msgs$1
L_simulateOnline2$43:
	jmp 	L_simulateOnline2$41
L_simulateOnline2$40:
	movq	472(%rsp), %rcx
	imulq	$96, %rcx, %rsi
	addq	480(%rsp), %rsi
	leaq	416(%rsp), %rcx
	call	L_mzd_from_bitstream2_full_msgs$1
L_simulateOnline2$42:
	vmovdqu	416(%rsp), %ymm0
	vpand	glob_data + 86656(%rip), %ymm0, %ymm1
	vpand	glob_data + 86624(%rip), %ymm0, %ymm2
	vpand	glob_data + 86592(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpxor	288(%rsp), %ymm0, %ymm0
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm0, 288(%rsp)
	vpxor	224(%rsp), %ymm3, %ymm0
	vpor	%ymm2, %ymm4, %ymm1
	vpxor	256(%rsp), %ymm1, %ymm4
	vmovdqu	%ymm0, 224(%rsp)
	vmovdqu	%ymm4, 256(%rsp)
L_simulateOnline2$41:
	movq	496(%rsp), %rsi
	incq	%rsi
L_simulateOnline2$38:
	cmpq	$16, %rsi
	jb  	L_simulateOnline2$39
	vmovdqu	160(%rsp), %ymm0
	vpxor	192(%rsp), %ymm0, %ymm2
	vpxor	256(%rsp), %ymm0, %ymm1
	vpxor	224(%rsp), %ymm2, %ymm0
	vpsllq	$62, %ymm1, %ymm7
	vpsrlq	$2, %ymm1, %ymm1
	vpsllq	$63, %ymm0, %ymm3
	vpsrlq	$1, %ymm0, %ymm0
	vpermq	$57, %ymm7, %ymm7
	vpermq	$57, %ymm3, %ymm3
	vpor	%ymm7, %ymm1, %ymm1
	vpor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	64(%rsp), %ymm2, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	288(%rsp), %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rsp)
	leaq	96(%rsp), %r9
	leaq	128(%rsp), %rcx
	leaq	glob_data + 31168(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r9)
	call	L_fl_mzd_addmul_v_uint64_192$1
L_simulateOnline2$37:
	leaq	128(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	glob_data + 86464(%rip), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_simulateOnline2$36:
	leaq	128(%rsp), %r9
	leaq	32(%rsp), %rcx
	leaq	glob_data + 61888(%rip), %rbp
	call	L_fl_mzd_addmul_v_uint64_192$1
L_simulateOnline2$35:
	movq	456(%rsp), %rcx
	addq	$24, %rcx
	movq	448(%rsp), %rsi
	addq	$48, %rsi
	movq	464(%rsp), %rdi
	movq	%rdi, 488(%rsp)
	movq	%rcx, 480(%rsp)
	movq	%rsi, 472(%rsp)
	vmovdqu	128(%rsp), %ymm0
	vpand	glob_data + 86656(%rip), %ymm0, %ymm1
	vpand	glob_data + 86624(%rip), %ymm0, %ymm2
	vpand	glob_data + 86592(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpermq	$147, %ymm3, %ymm3
	vmovdqu	%ymm0, 288(%rsp)
	vpor	%ymm3, %ymm1, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpermq	$147, %ymm4, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vmovdqu	%ymm3, 64(%rsp)
	vpor	%ymm4, %ymm2, %ymm5
	vpand	%ymm5, %ymm0, %ymm1
	vpand	%ymm3, %ymm0, %ymm0
	vmovdqu	%ymm5, 224(%rsp)
	vmovdqu	%ymm0, 256(%rsp)
	vpand	%ymm5, %ymm3, %ymm0
	vmovdqu	%ymm1, 192(%rsp)
	vmovdqu	%ymm0, 160(%rsp)
	movq	$0, %rsi
	jmp 	L_simulateOnline2$27
L_simulateOnline2$28:
	movq	%rsi, 496(%rsp)
	movq	488(%rsp), %rdi
	cmpq	%rsi, %rdi
	je  	L_simulateOnline2$29
	movq	496(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	472(%rsp), %rsi
	leaq	320(%rsp), %rcx
	call	L_mzd_from_bitstream_verify$1
L_simulateOnline2$34:
	vmovdqu	320(%rsp), %ymm0
	vpand	glob_data + 86656(%rip), %ymm0, %ymm2
	vpand	glob_data + 86624(%rip), %ymm0, %ymm3
	vpand	glob_data + 86592(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm2, %ymm1
	vpsllq	$2, %ymm2, %ymm2
	vmovdqu	%ymm0, 352(%rsp)
	vpermq	$147, %ymm1, %ymm1
	vpor	%ymm1, %ymm2, %ymm2
	vpsrlq	$63, %ymm3, %ymm1
	vpermq	$147, %ymm1, %ymm1
	vpsllq	$1, %ymm3, %ymm3
	vmovdqu	%ymm2, 384(%rsp)
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm3, 416(%rsp)
	movq	496(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	472(%rsp), %rsi
	addq	$24, %rsi
	leaq	320(%rsp), %rcx
	call	L_mzd_from_bitstream_verify$1
L_simulateOnline2$33:
	vmovdqu	224(%rsp), %ymm0
	vmovdqu	64(%rsp), %ymm1
	vmovdqu	320(%rsp), %ymm6
	vmovdqu	416(%rsp), %ymm2
	vpand	glob_data + 86624(%rip), %ymm6, %ymm5
	vmovdqu	384(%rsp), %ymm3
	vpand	glob_data + 86656(%rip), %ymm6, %ymm4
	vpand	glob_data + 86592(%rip), %ymm6, %ymm6
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
	vmovdqu	%ymm7, 320(%rsp)
	vpsllq	$2, %ymm4, %ymm4
	vpxor	160(%rsp), %ymm7, %ymm6
	vpor	%ymm10, %ymm4, %ymm4
	vmovdqu	%ymm6, 160(%rsp)
	vmovdqu	352(%rsp), %ymm6
	vpand	%ymm6, %ymm1, %ymm1
	vpand	%ymm0, %ymm6, %ymm0
	vpxor	%ymm4, %ymm1, %ymm1
	vmovdqu	288(%rsp), %ymm4
	vpxor	%ymm5, %ymm0, %ymm0
	vpand	%ymm4, %ymm3, %ymm3
	vpand	%ymm4, %ymm2, %ymm2
	vpxor	%ymm3, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	256(%rsp), %ymm1, %ymm6
	vpsllq	$62, %ymm1, %ymm3
	vpsllq	$63, %ymm0, %ymm2
	vpxor	192(%rsp), %ymm0, %ymm5
	vpermq	$57, %ymm3, %ymm3
	vpsrlq	$2, %ymm1, %ymm1
	vpermq	$57, %ymm2, %ymm2
	vmovdqu	%ymm5, 192(%rsp)
	vpsrlq	$1, %ymm0, %ymm0
	vpor	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm6, 256(%rsp)
	vpor	%ymm2, %ymm0, %ymm0
	vpxor	320(%rsp), %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%rsp)
	movq	496(%rsp), %rcx
	imulq	$96, %rcx, %rsi
	addq	480(%rsp), %rsi
	leaq	320(%rsp), %rcx
	call	L_mzd_to_bitstream2_full_msgs$1
L_simulateOnline2$32:
	jmp 	L_simulateOnline2$30
L_simulateOnline2$29:
	movq	488(%rsp), %rcx
	imulq	$96, %rcx, %rsi
	addq	480(%rsp), %rsi
	leaq	320(%rsp), %rcx
	call	L_mzd_from_bitstream2_full_msgs$1
L_simulateOnline2$31:
	vmovdqu	320(%rsp), %ymm0
	vpand	glob_data + 86656(%rip), %ymm0, %ymm1
	vpand	glob_data + 86624(%rip), %ymm0, %ymm2
	vpand	glob_data + 86592(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpxor	160(%rsp), %ymm0, %ymm0
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm0, 160(%rsp)
	vpxor	256(%rsp), %ymm3, %ymm0
	vpor	%ymm2, %ymm4, %ymm1
	vpxor	192(%rsp), %ymm1, %ymm4
	vmovdqu	%ymm0, 256(%rsp)
	vmovdqu	%ymm4, 192(%rsp)
L_simulateOnline2$30:
	movq	496(%rsp), %rsi
	incq	%rsi
L_simulateOnline2$27:
	cmpq	$16, %rsi
	jb  	L_simulateOnline2$28
	vmovdqu	64(%rsp), %ymm0
	vpxor	224(%rsp), %ymm0, %ymm2
	vpxor	192(%rsp), %ymm0, %ymm1
	vpxor	256(%rsp), %ymm2, %ymm0
	vpsllq	$62, %ymm1, %ymm7
	vpsrlq	$2, %ymm1, %ymm1
	vpsllq	$63, %ymm0, %ymm3
	vpsrlq	$1, %ymm0, %ymm0
	vpermq	$57, %ymm7, %ymm7
	vpermq	$57, %ymm3, %ymm3
	vpor	%ymm7, %ymm1, %ymm1
	vpor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	288(%rsp), %ymm2, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	160(%rsp), %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rsp)
	leaq	96(%rsp), %r9
	leaq	128(%rsp), %rcx
	leaq	glob_data + 37312(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r9)
	call	L_fl_mzd_addmul_v_uint64_192$1
L_simulateOnline2$26:
	leaq	128(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	glob_data + 86496(%rip), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_simulateOnline2$25:
	leaq	128(%rsp), %r9
	leaq	32(%rsp), %rcx
	leaq	glob_data + 68032(%rip), %rbp
	call	L_fl_mzd_addmul_v_uint64_192$1
L_simulateOnline2$24:
	movq	456(%rsp), %rcx
	addq	$48, %rcx
	movq	448(%rsp), %rsi
	addq	$96, %rsi
	movq	464(%rsp), %rdi
	movq	%rdi, 472(%rsp)
	movq	%rcx, 480(%rsp)
	movq	%rsi, 488(%rsp)
	vmovdqu	128(%rsp), %ymm0
	vpand	glob_data + 86656(%rip), %ymm0, %ymm1
	vpand	glob_data + 86624(%rip), %ymm0, %ymm2
	vpand	glob_data + 86592(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpermq	$147, %ymm3, %ymm3
	vmovdqu	%ymm0, 160(%rsp)
	vpor	%ymm3, %ymm1, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpermq	$147, %ymm4, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vmovdqu	%ymm3, 288(%rsp)
	vpor	%ymm4, %ymm2, %ymm5
	vpand	%ymm5, %ymm0, %ymm1
	vpand	%ymm3, %ymm0, %ymm0
	vmovdqu	%ymm5, 256(%rsp)
	vmovdqu	%ymm0, 192(%rsp)
	vpand	%ymm5, %ymm3, %ymm0
	vmovdqu	%ymm1, 224(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	movq	$0, %rsi
	jmp 	L_simulateOnline2$16
L_simulateOnline2$17:
	movq	%rsi, 496(%rsp)
	movq	472(%rsp), %rdi
	cmpq	%rsi, %rdi
	je  	L_simulateOnline2$18
	movq	496(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	488(%rsp), %rsi
	leaq	416(%rsp), %rcx
	call	L_mzd_from_bitstream_verify$1
L_simulateOnline2$23:
	vmovdqu	416(%rsp), %ymm0
	vpand	glob_data + 86656(%rip), %ymm0, %ymm2
	vpand	glob_data + 86624(%rip), %ymm0, %ymm3
	vpand	glob_data + 86592(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm2, %ymm1
	vpsllq	$2, %ymm2, %ymm2
	vmovdqu	%ymm0, 384(%rsp)
	vpermq	$147, %ymm1, %ymm1
	vpor	%ymm1, %ymm2, %ymm2
	vpsrlq	$63, %ymm3, %ymm1
	vpermq	$147, %ymm1, %ymm1
	vpsllq	$1, %ymm3, %ymm3
	vmovdqu	%ymm2, 352(%rsp)
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm3, 320(%rsp)
	movq	496(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	488(%rsp), %rsi
	addq	$24, %rsi
	leaq	416(%rsp), %rcx
	call	L_mzd_from_bitstream_verify$1
L_simulateOnline2$22:
	vmovdqu	256(%rsp), %ymm0
	vmovdqu	288(%rsp), %ymm1
	vmovdqu	416(%rsp), %ymm6
	vmovdqu	320(%rsp), %ymm2
	vpand	glob_data + 86624(%rip), %ymm6, %ymm5
	vmovdqu	352(%rsp), %ymm3
	vpand	glob_data + 86656(%rip), %ymm6, %ymm4
	vpand	glob_data + 86592(%rip), %ymm6, %ymm6
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
	vmovdqu	%ymm7, 416(%rsp)
	vpsllq	$2, %ymm4, %ymm4
	vpxor	64(%rsp), %ymm7, %ymm6
	vpor	%ymm10, %ymm4, %ymm4
	vmovdqu	%ymm6, 64(%rsp)
	vmovdqu	384(%rsp), %ymm6
	vpand	%ymm6, %ymm1, %ymm1
	vpand	%ymm0, %ymm6, %ymm0
	vpxor	%ymm4, %ymm1, %ymm1
	vmovdqu	160(%rsp), %ymm4
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
	vpxor	416(%rsp), %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 416(%rsp)
	movq	496(%rsp), %rcx
	imulq	$96, %rcx, %rsi
	addq	480(%rsp), %rsi
	leaq	416(%rsp), %rcx
	call	L_mzd_to_bitstream2_full_msgs$1
L_simulateOnline2$21:
	jmp 	L_simulateOnline2$19
L_simulateOnline2$18:
	movq	472(%rsp), %rcx
	imulq	$96, %rcx, %rsi
	addq	480(%rsp), %rsi
	leaq	416(%rsp), %rcx
	call	L_mzd_from_bitstream2_full_msgs$1
L_simulateOnline2$20:
	vmovdqu	416(%rsp), %ymm0
	vpand	glob_data + 86656(%rip), %ymm0, %ymm1
	vpand	glob_data + 86624(%rip), %ymm0, %ymm2
	vpand	glob_data + 86592(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpxor	64(%rsp), %ymm0, %ymm0
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm0, 64(%rsp)
	vpxor	192(%rsp), %ymm3, %ymm0
	vpor	%ymm2, %ymm4, %ymm1
	vpxor	224(%rsp), %ymm1, %ymm4
	vmovdqu	%ymm0, 192(%rsp)
	vmovdqu	%ymm4, 224(%rsp)
L_simulateOnline2$19:
	movq	496(%rsp), %rsi
	incq	%rsi
L_simulateOnline2$16:
	cmpq	$16, %rsi
	jb  	L_simulateOnline2$17
	vmovdqu	288(%rsp), %ymm0
	vpxor	256(%rsp), %ymm0, %ymm2
	vpxor	224(%rsp), %ymm0, %ymm1
	vpxor	192(%rsp), %ymm2, %ymm0
	vpsllq	$62, %ymm1, %ymm7
	vpsrlq	$2, %ymm1, %ymm1
	vpsllq	$63, %ymm0, %ymm3
	vpsrlq	$1, %ymm0, %ymm0
	vpermq	$57, %ymm7, %ymm7
	vpermq	$57, %ymm3, %ymm3
	vpor	%ymm7, %ymm1, %ymm1
	vpor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	160(%rsp), %ymm2, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	64(%rsp), %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rsp)
	leaq	96(%rsp), %r9
	leaq	128(%rsp), %rcx
	leaq	glob_data + 43456(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r9)
	call	L_fl_mzd_addmul_v_uint64_192$1
L_simulateOnline2$15:
	leaq	128(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	glob_data + 86528(%rip), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_simulateOnline2$14:
	leaq	128(%rsp), %r9
	leaq	32(%rsp), %rcx
	leaq	glob_data + 74176(%rip), %rbp
	call	L_fl_mzd_addmul_v_uint64_192$1
L_simulateOnline2$13:
	movq	456(%rsp), %rcx
	addq	$72, %rcx
	movq	448(%rsp), %rsi
	addq	$144, %rsi
	movq	464(%rsp), %rdi
	movq	%rdi, 464(%rsp)
	movq	%rcx, 448(%rsp)
	movq	%rsi, 456(%rsp)
	vmovdqu	128(%rsp), %ymm0
	vpand	glob_data + 86656(%rip), %ymm0, %ymm1
	vpand	glob_data + 86624(%rip), %ymm0, %ymm2
	vpand	glob_data + 86592(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpermq	$147, %ymm3, %ymm3
	vmovdqu	%ymm0, 64(%rsp)
	vpor	%ymm3, %ymm1, %ymm3
	vpsrlq	$63, %ymm2, %ymm4
	vpermq	$147, %ymm4, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vmovdqu	%ymm3, 160(%rsp)
	vpor	%ymm4, %ymm2, %ymm5
	vpand	%ymm5, %ymm0, %ymm1
	vpand	%ymm3, %ymm0, %ymm0
	vmovdqu	%ymm5, 192(%rsp)
	vmovdqu	%ymm0, 224(%rsp)
	vpand	%ymm5, %ymm3, %ymm0
	vmovdqu	%ymm1, 256(%rsp)
	vmovdqu	%ymm0, 288(%rsp)
	movq	$0, %rsi
	jmp 	L_simulateOnline2$5
L_simulateOnline2$6:
	movq	%rsi, 488(%rsp)
	movq	464(%rsp), %rdi
	cmpq	%rsi, %rdi
	je  	L_simulateOnline2$7
	movq	488(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	456(%rsp), %rsi
	leaq	320(%rsp), %rcx
	call	L_mzd_from_bitstream_verify$1
L_simulateOnline2$12:
	vmovdqu	320(%rsp), %ymm0
	vpand	glob_data + 86656(%rip), %ymm0, %ymm2
	vpand	glob_data + 86624(%rip), %ymm0, %ymm3
	vpand	glob_data + 86592(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm2, %ymm1
	vpsllq	$2, %ymm2, %ymm2
	vmovdqu	%ymm0, 352(%rsp)
	vpermq	$147, %ymm1, %ymm1
	vpor	%ymm1, %ymm2, %ymm2
	vpsrlq	$63, %ymm3, %ymm1
	vpermq	$147, %ymm1, %ymm1
	vpsllq	$1, %ymm3, %ymm3
	vmovdqu	%ymm2, 384(%rsp)
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm3, 416(%rsp)
	movq	488(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	456(%rsp), %rsi
	addq	$24, %rsi
	leaq	320(%rsp), %rcx
	call	L_mzd_from_bitstream_verify$1
L_simulateOnline2$11:
	vmovdqu	192(%rsp), %ymm0
	vmovdqu	160(%rsp), %ymm1
	vmovdqu	320(%rsp), %ymm6
	vmovdqu	416(%rsp), %ymm2
	vpand	glob_data + 86624(%rip), %ymm6, %ymm5
	vmovdqu	384(%rsp), %ymm3
	vpand	glob_data + 86656(%rip), %ymm6, %ymm4
	vpand	glob_data + 86592(%rip), %ymm6, %ymm6
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
	vmovdqu	%ymm7, 320(%rsp)
	vpsllq	$2, %ymm4, %ymm4
	vpxor	288(%rsp), %ymm7, %ymm6
	vpor	%ymm10, %ymm4, %ymm4
	vmovdqu	%ymm6, 288(%rsp)
	vmovdqu	352(%rsp), %ymm6
	vpand	%ymm6, %ymm1, %ymm1
	vpand	%ymm0, %ymm6, %ymm0
	vpxor	%ymm4, %ymm1, %ymm1
	vmovdqu	64(%rsp), %ymm4
	vpxor	%ymm5, %ymm0, %ymm0
	vpand	%ymm4, %ymm3, %ymm3
	vpand	%ymm4, %ymm2, %ymm2
	vpxor	%ymm3, %ymm1, %ymm1
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	224(%rsp), %ymm1, %ymm6
	vpsllq	$62, %ymm1, %ymm3
	vpsllq	$63, %ymm0, %ymm2
	vpxor	256(%rsp), %ymm0, %ymm5
	vpermq	$57, %ymm3, %ymm3
	vpsrlq	$2, %ymm1, %ymm1
	vpermq	$57, %ymm2, %ymm2
	vmovdqu	%ymm5, 256(%rsp)
	vpsrlq	$1, %ymm0, %ymm0
	vpor	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm6, 224(%rsp)
	vpor	%ymm2, %ymm0, %ymm0
	vpxor	320(%rsp), %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%rsp)
	movq	488(%rsp), %rcx
	imulq	$96, %rcx, %rsi
	addq	448(%rsp), %rsi
	leaq	320(%rsp), %rcx
	call	L_mzd_to_bitstream2_full_msgs$1
L_simulateOnline2$10:
	jmp 	L_simulateOnline2$8
L_simulateOnline2$7:
	movq	464(%rsp), %rcx
	imulq	$96, %rcx, %rsi
	addq	448(%rsp), %rsi
	leaq	320(%rsp), %rcx
	call	L_mzd_from_bitstream2_full_msgs$1
L_simulateOnline2$9:
	vmovdqu	320(%rsp), %ymm0
	vpand	glob_data + 86656(%rip), %ymm0, %ymm1
	vpand	glob_data + 86624(%rip), %ymm0, %ymm2
	vpand	glob_data + 86592(%rip), %ymm0, %ymm0
	vpsrlq	$62, %ymm1, %ymm3
	vpsllq	$2, %ymm1, %ymm1
	vpxor	288(%rsp), %ymm0, %ymm0
	vpsrlq	$63, %ymm2, %ymm4
	vpsllq	$1, %ymm2, %ymm2
	vpermq	$147, %ymm3, %ymm3
	vpermq	$147, %ymm4, %ymm4
	vpor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm0, 288(%rsp)
	vpxor	224(%rsp), %ymm3, %ymm0
	vpor	%ymm2, %ymm4, %ymm1
	vpxor	256(%rsp), %ymm1, %ymm4
	vmovdqu	%ymm0, 224(%rsp)
	vmovdqu	%ymm4, 256(%rsp)
L_simulateOnline2$8:
	movq	488(%rsp), %rsi
	incq	%rsi
L_simulateOnline2$5:
	cmpq	$16, %rsi
	jb  	L_simulateOnline2$6
	vmovdqu	160(%rsp), %ymm0
	vpxor	192(%rsp), %ymm0, %ymm2
	vpxor	256(%rsp), %ymm0, %ymm1
	vpxor	224(%rsp), %ymm2, %ymm0
	vpsllq	$62, %ymm1, %ymm7
	vpsrlq	$2, %ymm1, %ymm1
	vpsllq	$63, %ymm0, %ymm3
	vpsrlq	$1, %ymm0, %ymm0
	vpermq	$57, %ymm7, %ymm7
	vpermq	$57, %ymm3, %ymm3
	vpor	%ymm7, %ymm1, %ymm1
	vpor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	64(%rsp), %ymm2, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	288(%rsp), %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rsp)
	leaq	96(%rsp), %r9
	leaq	128(%rsp), %rcx
	leaq	glob_data + 49600(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r9)
	call	L_fl_mzd_addmul_v_uint64_192$1
L_simulateOnline2$4:
	leaq	128(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	glob_data + 86560(%rip), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_simulateOnline2$3:
	leaq	128(%rsp), %r9
	leaq	32(%rsp), %rcx
	leaq	glob_data + 80320(%rip), %rbp
	call	L_fl_mzd_addmul_v_uint64_192$1
L_simulateOnline2$2:
	ret
L_computeAuxTape2$1:
	movq	%rcx, 64(%rsp)
	imulq	$3392, %rcx, %rcx
	movq	%rsi, 72(%rsp)
	leaq	32(%rsp), %r9
	movq	%rax, 80(%rsp)
	leaq	-24(%rsp), %rsp
	call	L__computeAuxTape2_aux$1
L_computeAuxTape2$3:
	leaq	24(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	72(%rsp), %rsi
	movq	64(%rsp), %rcx
	imulq	$32, %rcx, %rcx
	call	L__fl_masked_mzd_to_char_array$1
L_computeAuxTape2$2:
	ret
L_createRandomTapes2$1:
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	8(%rsp), %rax
	movw	$0, %dx
	movq	%rax, %rcx
	imulq	$3392, %rcx, %rcx
	movq	%rcx, %rsi
	movq	%rax, %rbp
	imulq	$744, %rbp, %rbp
	addq	$360, %rbp
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rbx
	leaq	-1784(%rsp), %rsp
	call	L__hashTapes2_x4$1
L_createRandomTapes2$5:
	leaq	1784(%rsp), %rsp
	movq	8(%rsp), %rax
	movw	$4, %dx
	movq	%rax, %rcx
	imulq	$3392, %rcx, %rsi
	addq	$768, %rsi
	movq	%rax, %rbp
	imulq	$744, %rbp, %rbp
	addq	$456, %rbp
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rbx
	leaq	-1784(%rsp), %rsp
	call	L__hashTapes2_x4$1
L_createRandomTapes2$4:
	leaq	1784(%rsp), %rsp
	movq	8(%rsp), %rax
	movw	$8, %dx
	movq	%rax, %rcx
	imulq	$3392, %rcx, %rsi
	addq	$1536, %rsi
	movq	%rax, %rbp
	imulq	$744, %rbp, %rbp
	addq	$552, %rbp
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rbx
	leaq	-1784(%rsp), %rsp
	call	L__hashTapes2_x4$1
L_createRandomTapes2$3:
	leaq	1784(%rsp), %rsp
	movq	8(%rsp), %rax
	movw	$12, %dx
	movq	%rax, %rcx
	imulq	$3392, %rcx, %rsi
	addq	$2304, %rsi
	movq	%rax, %rbp
	imulq	$744, %rbp, %rbp
	addq	$648, %rbp
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rbx
	leaq	-1784(%rsp), %rsp
	call	L__hashTapes2_x4$1
L_createRandomTapes2$2:
	leaq	1784(%rsp), %rsp
	ret
L__computeAuxTape2_aux$1:
	movq	%rcx, 8(%rsp)
	movq	$0, %rax
	jmp 	L__computeAuxTape2_aux$11
L__computeAuxTape2_aux$12:
	movq	(%rdx,%rcx), %rsi
	movq	%rsi, 3200(%rdx,%rcx)
	addq	$8, %rcx
	addq	$8, %rax
L__computeAuxTape2_aux$11:
	cmpq	$192, %rax
	jb  	L__computeAuxTape2_aux$12
	movq	$1, %rax
	jmp 	L__computeAuxTape2_aux$7
L__computeAuxTape2_aux$8:
	movq	8(%rsp), %rsi
	movq	$0, %rdi
	jmp 	L__computeAuxTape2_aux$9
L__computeAuxTape2_aux$10:
	movq	(%rdx,%rcx), %r8
	xorq	%r8, 3200(%rdx,%rsi)
	addq	$8, %rcx
	addq	$8, %rsi
	addq	$8, %rdi
L__computeAuxTape2_aux$9:
	cmpq	$192, %rdi
	jb  	L__computeAuxTape2_aux$10
	incq	%rax
L__computeAuxTape2_aux$7:
	cmpq	$16, %rax
	jb  	L__computeAuxTape2_aux$8
	movq	$0, %rax
	jmp 	L__computeAuxTape2_aux$5
L__computeAuxTape2_aux$6:
	movq	$0, (%rdx,%rcx)
	addq	$8, %rcx
	addq	$8, %rax
L__computeAuxTape2_aux$5:
	cmpq	$96, %rax
	jb  	L__computeAuxTape2_aux$6
	addq	$32, %rcx
	movq	$16, %rax
	jmp 	L__computeAuxTape2_aux$3
L__computeAuxTape2_aux$4:
	movq	(%rdx,%rcx), %rdi
	bswapq	%rdi
	movq	%rdi, (%r9,%rax)
	addq	$8, %rcx
	addq	$-8, %rax
L__computeAuxTape2_aux$3:
	cmpq	$0, %rax
	jnbe	L__computeAuxTape2_aux$4
	movq	(%rdx,%rcx), %rdi
	bswapq	%rdi
	movq	%rdi, (%r9,%rax)
	movq	8(%rsp), %rcx
	leaq	-152(%rsp), %rsp
	call	L__lowmc_aux_impl_verify2$1
L__computeAuxTape2_aux$2:
	leaq	152(%rsp), %rsp
	ret
L__lowmc_aux_impl_verify2$1:
	movq	%rcx, 128(%rsp)
	movq	%r9, 136(%rsp)
	movq	%rdx, 144(%rsp)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	64(%rsp), %rcx
	movq	136(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L__lowmc_aux_impl_verify2$19:
	movq	136(%rsp), %r9
	vmovdqu	%ymm0, (%r9)
	leaq	glob_data + 448(%rip), %rbp
	call	L_fl_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl_verify2$18:
	movq	%r9, 136(%rsp)
	leaq	32(%rsp), %r9
	movq	136(%rsp), %rcx
	leaq	glob_data + 80320(%rip), %rbp
	call	L_fl_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl_verify2$17:
	leaq	96(%rsp), %r9
	leaq	32(%rsp), %rcx
	leaq	glob_data + 25024(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r9)
	call	L_fl_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl_verify2$16:
	movq	128(%rsp), %rsi
	addq	$3344, %rsi
	movq	144(%rsp), %rax
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %rcx
	call	L_mzd_from_bitstream_full_tapes$1
L__lowmc_aux_impl_verify2$15:
	movq	128(%rsp), %rax
	movq	%rax, %rsi
	addq	$168, %rax
	addq	$72, %rsi
	movq	144(%rsp), %rdx
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %rdi
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced2$1
L__lowmc_aux_impl_verify2$14:
	leaq	344(%rsp), %rsp
	movq	%rdx, 144(%rsp)
	leaq	32(%rsp), %r9
	movq	136(%rsp), %rcx
	leaq	glob_data + 74176(%rip), %rbp
	call	L_fl_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl_verify2$13:
	leaq	96(%rsp), %r9
	leaq	32(%rsp), %rcx
	leaq	glob_data + 18880(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r9)
	call	L_fl_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl_verify2$12:
	movq	128(%rsp), %rsi
	addq	$3296, %rsi
	movq	144(%rsp), %rax
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %rcx
	call	L_mzd_from_bitstream_full_tapes$1
L__lowmc_aux_impl_verify2$11:
	movq	128(%rsp), %rax
	movq	%rax, %rsi
	addq	$120, %rax
	addq	$48, %rsi
	movq	144(%rsp), %rdx
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %rdi
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced2$1
L__lowmc_aux_impl_verify2$10:
	leaq	344(%rsp), %rsp
	movq	%rdx, 144(%rsp)
	leaq	32(%rsp), %r9
	movq	136(%rsp), %rcx
	leaq	glob_data + 68032(%rip), %rbp
	call	L_fl_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl_verify2$9:
	leaq	96(%rsp), %r9
	leaq	32(%rsp), %rcx
	leaq	glob_data + 12736(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r9)
	call	L_fl_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl_verify2$8:
	movq	128(%rsp), %rsi
	addq	$3248, %rsi
	movq	144(%rsp), %rax
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	leaq	32(%rsp), %rcx
	call	L_mzd_from_bitstream_full_tapes$1
L__lowmc_aux_impl_verify2$7:
	movq	128(%rsp), %rax
	movq	%rax, %rsi
	addq	$72, %rax
	addq	$24, %rsi
	movq	144(%rsp), %rdx
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %rdi
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced2$1
L__lowmc_aux_impl_verify2$6:
	leaq	344(%rsp), %rsp
	movq	%rdx, 144(%rsp)
	leaq	32(%rsp), %r9
	movq	136(%rsp), %rcx
	leaq	glob_data + 61888(%rip), %rbp
	call	L_fl_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl_verify2$5:
	leaq	96(%rsp), %r9
	leaq	32(%rsp), %rcx
	leaq	glob_data + 6592(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r9)
	call	L_fl_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl_verify2$4:
	leaq	32(%rsp), %rcx
	leaq	64(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L__lowmc_aux_impl_verify2$3:
	movq	128(%rsp), %rax
	movq	%rax, %rsi
	addq	$24, %rax
	movq	144(%rsp), %rdx
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %rdi
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced2$1
L__lowmc_aux_impl_verify2$2:
	leaq	344(%rsp), %rsp
	movq	136(%rsp), %r9
	ret
L_picnic3_aux_sbox_bitsliced2$1:
	movq	%rsi, 320(%rsp)
	vmovdqu	(%rcx), %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	(%rdi), %ymm0
	vmovdqu	%ymm0, 64(%rsp)
	leaq	96(%rsp), %rcx
	leaq	32(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$48:
	leaq	32(%rsp), %rbx
	leaq	glob_data + 86656(%rip), %rcx
	leaq	96(%rsp), %rsi
	call	L_fl_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$47:
	leaq	160(%rsp), %rbx
	leaq	glob_data + 86624(%rip), %rcx
	leaq	96(%rsp), %rsi
	call	L_fl_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$46:
	leaq	224(%rsp), %rbx
	leaq	glob_data + 86592(%rip), %rcx
	leaq	96(%rsp), %rsi
	call	L_fl_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$45:
	leaq	96(%rsp), %rcx
	leaq	32(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$44:
	leaq	32(%rsp), %rcx
	leaq	96(%rsp), %rdi
	call	L_fl_mzd_shift2_left_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$43:
	leaq	96(%rsp), %rcx
	leaq	160(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$42:
	leaq	160(%rsp), %rcx
	leaq	96(%rsp), %rdi
	call	L_fl_mzd_shift1_left_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$41:
	leaq	96(%rsp), %rcx
	leaq	64(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$40:
	leaq	64(%rsp), %rbx
	leaq	glob_data + 86656(%rip), %rcx
	leaq	96(%rsp), %rsi
	call	L_fl_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$39:
	leaq	128(%rsp), %rbx
	leaq	glob_data + 86624(%rip), %rcx
	leaq	96(%rsp), %rsi
	call	L_fl_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$38:
	leaq	192(%rsp), %rbx
	leaq	glob_data + 86592(%rip), %rcx
	leaq	96(%rsp), %rsi
	call	L_fl_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$37:
	leaq	96(%rsp), %rcx
	leaq	64(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$36:
	leaq	64(%rsp), %rcx
	leaq	96(%rsp), %rdi
	call	L_fl_mzd_shift2_left_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$35:
	leaq	96(%rsp), %rcx
	leaq	128(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$34:
	leaq	128(%rsp), %rcx
	leaq	96(%rsp), %rdi
	call	L_fl_mzd_shift1_left_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$33:
	leaq	256(%rsp), %rbx
	leaq	32(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$32:
	leaq	288(%rsp), %rbx
	leaq	128(%rsp), %rcx
	leaq	256(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$31:
	leaq	128(%rsp), %rbx
	leaq	64(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$30:
	leaq	96(%rsp), %rcx
	leaq	256(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$29:
	leaq	256(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	224(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$28:
	leaq	96(%rsp), %rcx
	leaq	256(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$27:
	leaq	256(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	192(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$26:
	leaq	192(%rsp), %rcx
	leaq	288(%rsp), %rdi
	call	L_fl_mzd_shift2_right_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$25:
	leaq	288(%rsp), %rcx
	leaq	128(%rsp), %rdi
	call	L_fl_mzd_shift1_right_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$24:
	leaq	96(%rsp), %rcx
	leaq	192(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$23:
	leaq	192(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	288(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$22:
	leaq	128(%rsp), %rbx
	leaq	192(%rsp), %rcx
	leaq	256(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$21:
	leaq	256(%rsp), %rbx
	leaq	32(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_fl_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$20:
	leaq	288(%rsp), %rbx
	leaq	160(%rsp), %rcx
	leaq	224(%rsp), %rsi
	call	L_fl_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$19:
	leaq	192(%rsp), %rbx
	leaq	224(%rsp), %rcx
	leaq	32(%rsp), %rsi
	call	L_fl_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$18:
	leaq	96(%rsp), %rcx
	leaq	192(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$17:
	leaq	192(%rsp), %rcx
	leaq	96(%rsp), %rdi
	call	L_fl_mzd_shift2_right_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$16:
	leaq	96(%rsp), %rcx
	leaq	288(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$15:
	leaq	288(%rsp), %rcx
	leaq	96(%rsp), %rdi
	call	L_fl_mzd_shift1_right_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$14:
	leaq	96(%rsp), %rcx
	leaq	192(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$13:
	leaq	192(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	288(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$12:
	leaq	96(%rsp), %rcx
	leaq	192(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$11:
	leaq	192(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	256(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$10:
	leaq	96(%rsp), %rcx
	leaq	128(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$9:
	leaq	128(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	192(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$8:
	leaq	256(%rsp), %rcx
	movq	%rax, %rsi
	addq	$3200, %rsi
	call	L_mzd_from_bitstream_tapes2$1
L_picnic3_aux_sbox_bitsliced2$7:
	leaq	96(%rsp), %rcx
	leaq	128(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$6:
	leaq	128(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	256(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$5:
	leaq	288(%rsp), %rcx
	movq	%rax, %rsi
	addq	$2880, %rsi
	call	L_mzd_from_bitstream_tapes2$1
L_picnic3_aux_sbox_bitsliced2$4:
	leaq	96(%rsp), %rcx
	leaq	128(%rsp), %r9
	call	L_fl_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced2$3:
	leaq	128(%rsp), %rbx
	leaq	96(%rsp), %rcx
	leaq	288(%rsp), %rsi
	call	L_fl_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced2$2:
	addq	$2880, %rax
	movq	144(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	136(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	128(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	movq	320(%rsp), %rax
	addq	$3072, %rax
	movq	144(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	136(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	128(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	ret
L_expandSeeds_22$1:
	movq	%rdx, 288(%rsp)
	movq	%r8, 296(%rsp)
	movq	%rsi, 304(%rsp)
	movq	%rbx, 312(%rsp)
	movw	%ax, %r8w
	movw	%r8w, 368(%rsp)
	imulq	$31, %rax, %rax
	movq	%rax, 320(%rsp)
	movq	$31, %rbp
	decq	%rbp
	cmpq	$0, %rbp
	je  	L_expandSeeds_22$29
	incq	%rbp
	shrq	$1, %rbp
	decq	%rbp
L_expandSeeds_22$29:
	movq	$0, %r13
	movq	$2, %rax
	cmpq	%rax, %rbp
	jnb 	L_expandSeeds_22$28
	movq	%rbp, %rax
L_expandSeeds_22$28:
	movq	%rbp, 328(%rsp)
	jmp 	L_expandSeeds_22$20
L_expandSeeds_22$21:
	movq	%r13, 336(%rsp)
	movq	%rax, 344(%rsp)
	movq	320(%rsp), %rax
	addq	%r13, %rax
	movq	296(%rsp), %r8
	movb	(%r8,%rax), %cl
	cmpb	$1, %cl
	jne 	L_expandSeeds_22$22
	imulq	$24, %rax, %rdi
	movw	%r13w, %dx
	movq	288(%rsp), %rax
	movq	312(%rsp), %rbx
	movw	368(%rsp), %r8w
	leaq	32(%rsp), %rcx
	leaq	-376(%rsp), %rsp
	call	L_hashSeed_22$1
L_expandSeeds_22$27:
	leaq	376(%rsp), %rsp
	movq	336(%rsp), %rax
	shlq	$1, %rax
	incq	%rax
	movq	320(%rsp), %rcx
	addq	%rcx, %rax
	movq	296(%rsp), %r8
	movb	(%r8,%rax), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_22$26
	movb	$1, (%r8,%rax)
	movq	$0, %rdx
	imulq	$24, %rax, %rsi
	movq	288(%rsp), %rax
	movq	32(%rsp,%rdx), %rdi
	movq	%rdi, (%rax,%rsi)
	movq	40(%rsp,%rdx), %rdi
	movq	%rdi, 8(%rax,%rsi)
	movq	48(%rsp,%rdx), %rdx
	movq	%rdx, 16(%rax,%rsi)
L_expandSeeds_22$26:
	movq	336(%rsp), %rbp
	shlq	$1, %rbp
	addq	$2, %rbp
	movq	320(%rsp), %rax
	addq	%rax, %rbp
	movq	304(%rsp), %r9
	call	L__fl_exists_22$1
L_expandSeeds_22$25:
	cmpb	$1, %al
	jne 	L_expandSeeds_22$22
	movq	296(%rsp), %rax
	movb	(%rax,%rbp), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_22$22
	movb	$1, (%rax,%rbp)
	movq	$24, %rax
	imulq	$24, %rbp, %rdx
	movq	288(%rsp), %r9
	movq	32(%rsp,%rax), %rcx
	movq	%rcx, (%r9,%rdx)
	movq	40(%rsp,%rax), %rcx
	movq	%rcx, 8(%r9,%rdx)
	movq	48(%rsp,%rax), %rax
	movq	%rax, 16(%r9,%rdx)
L_expandSeeds_22$24:
L_expandSeeds_22$23:
L_expandSeeds_22$22:
	movq	336(%rsp), %r13
	movq	344(%rsp), %rax
	incq	%r13
L_expandSeeds_22$20:
	cmpq	%rax, %r13
	jbe 	L_expandSeeds_22$21
	movq	328(%rsp), %rax
	shrq	$2, %rax
	shlq	$2, %rax
	jmp 	L_expandSeeds_22$10
L_expandSeeds_22$11:
	movq	%r13, 344(%rsp)
	movq	%rax, 336(%rsp)
	movq	%r13, %rax
	movq	320(%rsp), %rcx
	addq	%rcx, %rax
	imulq	$24, %rax, %rdi
	movq	288(%rsp), %rax
	movq	312(%rsp), %rdx
	movw	368(%rsp), %r8w
	leaq	32(%rsp), %rcx
	leaq	-984(%rsp), %rsp
	call	L_hashSeed_x4_22$1
L_expandSeeds_22$19:
	leaq	984(%rsp), %rsp
	movq	$0, %rax
	jmp 	L_expandSeeds_22$12
L_expandSeeds_22$13:
	movq	%rax, 352(%rsp)
	movq	344(%rsp), %rcx
	movq	320(%rsp), %rax
	addq	%rax, %rcx
	movq	296(%rsp), %rax
	movb	(%rax,%rcx), %al
	cmpb	$1, %al
	jne 	L_expandSeeds_22$14
	movq	344(%rsp), %rax
	shlq	$1, %rax
	incq	%rax
	movq	320(%rsp), %rcx
	addq	%rcx, %rax
	movq	296(%rsp), %r8
	movb	(%r8,%rax), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_22$18
	movq	352(%rsp), %rdx
	imulq	$2, %rdx, %rdx
	imulq	$32, %rdx, %rdx
	movb	$1, (%r8,%rax)
	imulq	$24, %rax, %rsi
	movq	288(%rsp), %rax
	movq	32(%rsp,%rdx), %rdi
	movq	%rdi, (%rax,%rsi)
	movq	40(%rsp,%rdx), %rdi
	movq	%rdi, 8(%rax,%rsi)
	movq	48(%rsp,%rdx), %rdx
	movq	%rdx, 16(%rax,%rsi)
L_expandSeeds_22$18:
	movq	%r8, 360(%rsp)
	movq	344(%rsp), %rbp
	shlq	$1, %rbp
	addq	$2, %rbp
	movq	320(%rsp), %rax
	addq	%rax, %rbp
	movq	304(%rsp), %r9
	call	L__fl_exists_22$1
L_expandSeeds_22$17:
	cmpb	$1, %al
	jne 	L_expandSeeds_22$14
	movq	360(%rsp), %rax
	movb	(%rax,%rbp), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_22$14
	movq	352(%rsp), %rcx
	imulq	$2, %rcx, %rcx
	imulq	$32, %rcx, %rdx
	addq	$24, %rdx
	movb	$1, (%rax,%rbp)
	imulq	$24, %rbp, %rsi
	movq	288(%rsp), %rax
	movq	32(%rsp,%rdx), %rcx
	movq	%rcx, (%rax,%rsi)
	movq	40(%rsp,%rdx), %rcx
	movq	%rcx, 8(%rax,%rsi)
	movq	48(%rsp,%rdx), %rcx
	movq	%rcx, 16(%rax,%rsi)
L_expandSeeds_22$16:
L_expandSeeds_22$15:
L_expandSeeds_22$14:
	movq	352(%rsp), %rax
	incq	%rax
	incq	344(%rsp)
L_expandSeeds_22$12:
	cmpq	$4, %rax
	jb  	L_expandSeeds_22$13
	movq	344(%rsp), %r13
	movq	336(%rsp), %rax
L_expandSeeds_22$10:
	cmpq	%rax, %r13
	jbe 	L_expandSeeds_22$11
	movq	328(%rsp), %rax
	jmp 	L_expandSeeds_22$2
L_expandSeeds_22$3:
	movq	%r13, 328(%rsp)
	movq	%rax, 336(%rsp)
	movq	320(%rsp), %rax
	addq	%rax, %r13
	movq	296(%rsp), %rax
	movb	(%rax,%r13), %al
	cmpb	$1, %al
	jne 	L_expandSeeds_22$4
	imulq	$24, %r13, %rdi
	movq	328(%rsp), %rdx
	movq	288(%rsp), %rax
	movq	312(%rsp), %rbx
	movw	368(%rsp), %r8w
	leaq	32(%rsp), %rcx
	leaq	-376(%rsp), %rsp
	call	L_hashSeed_22$1
L_expandSeeds_22$9:
	leaq	376(%rsp), %rsp
	movq	328(%rsp), %rax
	shlq	$1, %rax
	incq	%rax
	movq	320(%rsp), %rcx
	addq	%rcx, %rax
	movq	296(%rsp), %r8
	movb	(%r8,%rax), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_22$8
	movb	$1, (%r8,%rax)
	movq	$0, %rdx
	imulq	$24, %rax, %rax
	movq	288(%rsp), %r9
	movq	32(%rsp,%rdx), %rsi
	movq	%rsi, (%r9,%rax)
	movq	40(%rsp,%rdx), %rsi
	movq	%rsi, 8(%r9,%rax)
	movq	48(%rsp,%rdx), %rdx
	movq	%rdx, 16(%r9,%rax)
L_expandSeeds_22$8:
	movq	328(%rsp), %rbp
	shlq	$1, %rbp
	addq	$2, %rbp
	movq	320(%rsp), %rax
	addq	%rax, %rbp
	movq	304(%rsp), %r9
	call	L__fl_exists_22$1
L_expandSeeds_22$7:
	cmpb	$1, %al
	jne 	L_expandSeeds_22$4
	movq	296(%rsp), %rax
	movb	(%rax,%rbp), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_22$4
	movb	$1, (%rax,%rbp)
	movq	$24, %rax
	imulq	$24, %rbp, %rdx
	movq	288(%rsp), %r9
	movq	32(%rsp,%rax), %rcx
	movq	%rcx, (%r9,%rdx)
	movq	40(%rsp,%rax), %rcx
	movq	%rcx, 8(%r9,%rdx)
	movq	48(%rsp,%rax), %rax
	movq	%rax, 16(%r9,%rdx)
L_expandSeeds_22$6:
L_expandSeeds_22$5:
L_expandSeeds_22$4:
	movq	336(%rsp), %rax
	movq	328(%rsp), %r13
	incq	%r13
L_expandSeeds_22$2:
	cmpq	%rax, %r13
	jbe 	L_expandSeeds_22$3
	ret
L__fl_exists_22$1:
	movb	$0, %al
	cmpq	$12989, %rbp
	jnb 	L__fl_exists_22$2
	movb	(%r9,%rbp), %al
L__fl_exists_22$2:
	ret
L__hashTapes2_x4$1:
	movq	%r8, 848(%rsp)
	movq	%rcx, 856(%rsp)
	movq	%rbx, 864(%rsp)
	movq	%rax, 872(%rsp)
	movw	%dx, 1760(%rsp)
	movq	%rbp, 880(%rsp)
	movq	%rsi, 888(%rsp)
	movb	$17, %dl
	movb	$31, %cl
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L__hashTapes2_x4$10:
	movq	856(%rsp), %rcx
	movq	880(%rsp), %rbp
	movq	(%rcx,%rbp), %rax
	movq	%rax, 896(%rsp)
	addq	$8, %rbp
	movq	(%rcx,%rbp), %rax
	movq	%rax, 904(%rsp)
	addq	$8, %rbp
	movq	(%rcx,%rbp), %rax
	movq	%rax, 912(%rsp)
	addq	$8, %rbp
	movq	(%rcx,%rbp), %rax
	movq	%rax, 920(%rsp)
	addq	$8, %rbp
	movq	(%rcx,%rbp), %rax
	movq	%rax, 928(%rsp)
	addq	$8, %rbp
	movq	(%rcx,%rbp), %rax
	movq	%rax, 936(%rsp)
	addq	$8, %rbp
	movq	(%rcx,%rbp), %rax
	movq	%rax, 944(%rsp)
	addq	$8, %rbp
	movq	(%rcx,%rbp), %rax
	movq	%rax, 952(%rsp)
	addq	$8, %rbp
	movq	(%rcx,%rbp), %rax
	movq	%rax, 960(%rsp)
	addq	$8, %rbp
	movq	(%rcx,%rbp), %rax
	movq	%rax, 968(%rsp)
	addq	$8, %rbp
	movq	(%rcx,%rbp), %rax
	movq	%rax, 976(%rsp)
	addq	$8, %rbp
	movq	(%rcx,%rbp), %rax
	movq	%rax, 984(%rsp)
	movq	$24, %r12
	leaq	896(%rsp), %rdx
	leaq	920(%rsp), %r10
	leaq	944(%rsp), %rsi
	leaq	968(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LFL_N_TREE_DATA_SIZEx4___absorb_updstate_avx2x4$1
L__hashTapes2_x4$9:
	leaq	24(%rsp), %rsp
	movq	$32, %r10
	movq	864(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LFL_A32x4___absorb_bcast_updstate_avx2x4$1
L__hashTapes2_x4$8:
	leaq	24(%rsp), %rsp
	movq	$2, %r10
	movq	872(%rsp), %rax
	movw	%ax, 840(%rsp)
	leaq	840(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LFL_A2x4___absorb_bcast_updstate_avx2x4$1
L__hashTapes2_x4$7:
	leaq	24(%rsp), %rsp
	movw	1760(%rsp), %dx
	movw	%dx, 872(%rsp)
	incw	%dx
	movw	%dx, 874(%rsp)
	incw	%dx
	movw	%dx, 876(%rsp)
	incw	%dx
	movw	%dx, 878(%rsp)
	leaq	872(%rsp), %rdx
	leaq	874(%rsp), %r10
	leaq	876(%rsp), %rsi
	leaq	878(%rsp), %r9
	movq	$2, %r12
	leaq	-24(%rsp), %rsp
	call	LFL_A2x4___absorb_updstate_avx2x4$1
L__hashTapes2_x4$6:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L__hashTapes2_x4$5:
	movq	$192, %r12
	leaq	992(%rsp), %rdx
	leaq	1184(%rsp), %r10
	leaq	1376(%rsp), %rsi
	leaq	1568(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LFL_A256x4___squeeze_updstate_avx2x4$1
L__hashTapes2_x4$4:
	leaq	24(%rsp), %rsp
	movq	848(%rsp), %r8
	movq	888(%rsp), %rax
	movq	$0, %rsi
	jmp 	L__hashTapes2_x4$2
L__hashTapes2_x4$3:
	movq	992(%rsp,%rsi), %rcx
	movq	%rcx, (%r8,%rax)
	addq	$8, %rax
	addq	$8, %rsi
L__hashTapes2_x4$2:
	cmpq	$768, %rsi
	jb  	L__hashTapes2_x4$3
	ret
L_hashSeed_x4_22$1:
	movq	%rcx, 856(%rsp)
	movq	%rax, 864(%rsp)
	movq	%rdi, 872(%rsp)
	movq	%rdx, 880(%rsp)
	movw	%r8w, 848(%rsp)
	movw	%r13w, 984(%rsp)
	movb	$17, %dl
	movb	$31, %cl
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L_hashSeed_x4_22$9:
	movq	$1, %r10
	movb	$1, 840(%rsp)
	leaq	840(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LFL_A1x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_22$8:
	leaq	24(%rsp), %rsp
	movq	864(%rsp), %rax
	movq	872(%rsp), %rdi
	movq	(%rax,%rdi), %rcx
	movq	%rcx, 888(%rsp)
	movq	8(%rax,%rdi), %rcx
	movq	%rcx, 896(%rsp)
	movq	16(%rax,%rdi), %rcx
	movq	%rcx, 904(%rsp)
	movq	24(%rax,%rdi), %rcx
	movq	%rcx, 912(%rsp)
	movq	32(%rax,%rdi), %rcx
	movq	%rcx, 920(%rsp)
	movq	40(%rax,%rdi), %rcx
	movq	%rcx, 928(%rsp)
	movq	48(%rax,%rdi), %rcx
	movq	%rcx, 936(%rsp)
	movq	56(%rax,%rdi), %rcx
	movq	%rcx, 944(%rsp)
	movq	64(%rax,%rdi), %rcx
	movq	%rcx, 952(%rsp)
	movq	72(%rax,%rdi), %rcx
	movq	%rcx, 960(%rsp)
	movq	80(%rax,%rdi), %rcx
	movq	%rcx, 968(%rsp)
	movq	88(%rax,%rdi), %rax
	movq	%rax, 976(%rsp)
	movq	$24, %r12
	leaq	888(%rsp), %rdx
	leaq	912(%rsp), %r10
	leaq	936(%rsp), %rsi
	leaq	960(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LFL_N_TREE_DATA_SIZEx4___absorb_updstate_avx2x4$1
L_hashSeed_x4_22$7:
	leaq	24(%rsp), %rsp
	movq	$32, %r10
	movq	880(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LFL_A32x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_22$6:
	leaq	24(%rsp), %rsp
	movq	$2, %r10
	movw	848(%rsp), %r8w
	movw	%r8w, 848(%rsp)
	leaq	848(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LFL_A2x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_22$5:
	leaq	24(%rsp), %rsp
	movw	984(%rsp), %dx
	movw	%dx, 880(%rsp)
	incw	%dx
	movw	%dx, 882(%rsp)
	incw	%dx
	movw	%dx, 884(%rsp)
	incw	%dx
	movw	%dx, 886(%rsp)
	leaq	880(%rsp), %rdx
	leaq	882(%rsp), %r10
	leaq	884(%rsp), %rsi
	leaq	886(%rsp), %r9
	movq	$2, %r12
	leaq	-24(%rsp), %rsp
	call	LFL_A2x4___absorb_updstate_avx2x4$1
L_hashSeed_x4_22$4:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L_hashSeed_x4_22$3:
	movq	856(%rsp), %rcx
	movq	$48, %r12
	movq	%rcx, %rdx
	leaq	64(%rcx), %r10
	leaq	128(%rcx), %rsi
	leaq	192(%rcx), %r9
	leaq	-24(%rsp), %rsp
	call	LFL_A64x4___squeeze_updstate_avx2x4$1
L_hashSeed_x4_22$2:
	leaq	24(%rsp), %rsp
	ret
L_hashSeed_22$1:
	movq	%rcx, 336(%rsp)
	movq	%rbx, 344(%rsp)
	movw	%r8w, 64(%rsp)
	movw	%dx, 352(%rsp)
	movq	(%rax,%rdi), %rcx
	movq	%rcx, 96(%rsp)
	movq	8(%rax,%rdi), %rcx
	movq	%rcx, 104(%rsp)
	movq	16(%rax,%rdi), %rax
	movq	%rax, 112(%rsp)
	leaq	128(%rsp), %r8
	movb	$17, %bpl
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_hashSeed_22$9:
	movq	$1, %r12
	movb	$1, 32(%rsp)
	leaq	32(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LFL_A1___update_updstate_avx2$1
L_hashSeed_22$8:
	leaq	8(%rsp), %rsp
	leaq	96(%rsp), %rsi
	movq	$24, %r10
	leaq	-8(%rsp), %rsp
	call	LFL_N_PNC_SEED_SIZE___update_updstate_avx2$1
L_hashSeed_22$7:
	leaq	8(%rsp), %rsp
	movq	344(%rsp), %rdx
	movq	$32, %r12
	leaq	-8(%rsp), %rsp
	call	LFL_A32___update_updstate_avx2$1
L_hashSeed_22$6:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movw	64(%rsp), %ax
	movw	%ax, 64(%rsp)
	leaq	64(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LFL_A2___update_updstate_avx2$1
L_hashSeed_22$5:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movw	352(%rsp), %dx
	movw	%dx, 64(%rsp)
	leaq	64(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LFL_A2___update_updstate_avx2$1
L_hashSeed_22$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_hashSeed_22$3:
	movq	$48, %r12
	movq	336(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$1
L_hashSeed_22$2:
	leaq	8(%rsp), %rsp
	ret
L_mzd_to_bitstream2_full_msgs$1:
	movq	16(%rcx), %rdi
	bswapq	%rdi
	movq	%rdi, (%rdx,%rsi)
	movq	8(%rcx), %rdi
	bswapq	%rdi
	movq	%rdi, 8(%rdx,%rsi)
	movq	(%rcx), %rcx
	bswapq	%rcx
	movq	%rcx, 16(%rdx,%rsi)
	ret
L_mzd_from_bitstream_verify$1:
	movq	(%rax,%rsi), %rdi
	bswapq	%rdi
	movq	%rdi, 16(%rcx)
	movq	8(%rax,%rsi), %rdi
	bswapq	%rdi
	movq	%rdi, 8(%rcx)
	movq	16(%rax,%rsi), %rsi
	bswapq	%rsi
	movq	%rsi, (%rcx)
	ret
L_mzd_from_bitstream2_full_msgs$1:
	movq	(%rdx,%rsi), %rdi
	bswapq	%rdi
	movq	%rdi, 16(%rcx)
	movq	8(%rdx,%rsi), %rdi
	bswapq	%rdi
	movq	%rdi, 8(%rcx)
	movq	16(%rdx,%rsi), %rsi
	bswapq	%rsi
	movq	%rsi, (%rcx)
	ret
L_mzd_from_bitstream_full_tapes$1:
	movq	(%rax,%rsi), %rdx
	bswapq	%rdx
	movq	%rdx, 16(%rcx)
	movq	8(%rax,%rsi), %rdx
	bswapq	%rdx
	movq	%rdx, 8(%rcx)
	movq	16(%rax,%rsi), %rax
	bswapq	%rax
	movq	%rax, (%rcx)
	ret
L_mzd_from_bitstream_tapes2$1:
	movq	(%rdx,%rsi), %rdi
	bswapq	%rdi
	movq	%rdi, 16(%rcx)
	addq	$8, %rsi
	movq	(%rdx,%rsi), %rdi
	bswapq	%rdi
	movq	%rdi, 8(%rcx)
	addq	$8, %rsi
	movq	(%rdx,%rsi), %rsi
	bswapq	%rsi
	movq	%rsi, (%rcx)
	ret
L_fl_mzd_addmul_v_uint64_192$1:
	vmovdqu	(%r9), %ymm2
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$0, %rsi
	movq	$0, %r10
	jmp 	L_fl_mzd_addmul_v_uint64_192$2
L_fl_mzd_addmul_v_uint64_192$3:
	movq	(%rcx,%rsi), %r11
	movq	$0, %r12
	jmp 	L_fl_mzd_addmul_v_uint64_192$4
L_fl_mzd_addmul_v_uint64_192$5:
	movq	%r11, %rdi
	addq	$128, %r10
	andq	$1, %rdi
	negq	%rdi
	vmovq	%rdi, %xmm1
	movq	%r11, %rdi
	salq	$62, %rdi
	vpbroadcastq	%xmm1, %ymm1
	vpand	-128(%rbp,%r10), %ymm1, %ymm1
	sarq	$63, %rdi
	vmovq	%rdi, %xmm3
	movq	%r11, %rdi
	vpxor	%ymm1, %ymm2, %ymm2
	salq	$61, %rdi
	vpbroadcastq	%xmm3, %ymm1
	vpand	-96(%rbp,%r10), %ymm1, %ymm1
	sarq	$63, %rdi
	vmovq	%rdi, %xmm3
	movq	%r11, %rdi
	shrq	$4, %r11
	salq	$60, %rdi
	vpbroadcastq	%xmm3, %ymm3
	vpand	-64(%rbp,%r10), %ymm3, %ymm3
	sarq	$63, %rdi
	vmovq	%rdi, %xmm4
	vpxor	%ymm3, %ymm2, %ymm2
	vpbroadcastq	%xmm4, %ymm3
	vpand	-32(%rbp,%r10), %ymm3, %ymm3
	vpxor	%ymm1, %ymm3, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	addq	$4, %r12
L_fl_mzd_addmul_v_uint64_192$4:
	cmpq	$64, %r12
	jb  	L_fl_mzd_addmul_v_uint64_192$5
	addq	$8, %rsi
L_fl_mzd_addmul_v_uint64_192$2:
	cmpq	$24, %rsi
	jb  	L_fl_mzd_addmul_v_uint64_192$3
	vpxor	%ymm2, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r9)
	ret
L_fl_mzd_shift1_right_uint64_192$1:
	movq	(%rdi), %rsi
	movq	8(%rdi), %r8
	shrq	$1, %rsi
	shlq	$63, %r8
	orq 	%r8, %rsi
	movq	%rsi, (%rcx)
	movq	8(%rdi), %rsi
	movq	16(%rdi), %r8
	shrq	$1, %rsi
	shlq	$63, %r8
	orq 	%r8, %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%rdi), %rsi
	shrq	$1, %rsi
	movq	%rsi, 16(%rcx)
	ret
L_fl_mzd_shift2_right_uint64_192$1:
	movq	(%rdi), %rsi
	movq	8(%rdi), %r8
	shrq	$2, %rsi
	shlq	$62, %r8
	orq 	%r8, %rsi
	movq	%rsi, (%rcx)
	movq	8(%rdi), %rsi
	movq	16(%rdi), %r8
	shrq	$2, %rsi
	shlq	$62, %r8
	orq 	%r8, %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%rdi), %rsi
	shrq	$2, %rsi
	movq	%rsi, 16(%rcx)
	ret
L_fl_mzd_shift1_left_uint64_192$1:
	movq	16(%rdi), %rsi
	movq	8(%rdi), %r8
	shlq	$1, %rsi
	shrq	$63, %r8
	orq 	%r8, %rsi
	movq	%rsi, 16(%rcx)
	movq	8(%rdi), %rsi
	movq	(%rdi), %r8
	shlq	$1, %rsi
	shrq	$63, %r8
	orq 	%r8, %rsi
	movq	%rsi, 8(%rcx)
	movq	(%rdi), %rsi
	shlq	$1, %rsi
	movq	%rsi, (%rcx)
	ret
L_fl_mzd_shift2_left_uint64_192$1:
	movq	16(%rdi), %rsi
	movq	8(%rdi), %r8
	shlq	$2, %rsi
	shrq	$62, %r8
	orq 	%r8, %rsi
	movq	%rsi, 16(%rcx)
	movq	8(%rdi), %rsi
	movq	(%rdi), %r8
	shlq	$2, %rsi
	shrq	$62, %r8
	orq 	%r8, %rsi
	movq	%rsi, 8(%rcx)
	movq	(%rdi), %rsi
	shlq	$2, %rsi
	movq	%rsi, (%rcx)
	ret
L_fl_mzd_and_uint64_block$1:
	movq	(%rcx), %rdi
	andq	(%rsi), %rdi
	movq	%rdi, (%rbx)
	movq	8(%rcx), %rdi
	andq	8(%rsi), %rdi
	movq	%rdi, 8(%rbx)
	movq	16(%rcx), %rcx
	andq	16(%rsi), %rcx
	movq	%rcx, 16(%rbx)
	ret
L_fl_mzd_xor_uint64_block$1:
	vmovdqu	(%rcx), %ymm0
	vpxor	(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rbx)
	ret
L_fl_mzd_copy_uint64_192$1:
	vmovdqu	(%r9), %ymm1
	vmovdqu	%ymm1, (%rcx)
	ret
L__fl_masked_mzd_to_char_array$1:
	movq	$0, 24(%rax,%rcx)
	movq	$16, %rbp
	jmp 	L__fl_masked_mzd_to_char_array$2
L__fl_masked_mzd_to_char_array$3:
	movq	(%r9,%rbp), %rdx
	bswapq	%rdx
	movq	$16, %rdi
	subq	%rbp, %rdi
	movq	(%rsi,%rdi), %rdi
	xorq	%rdx, %rdi
	movq	%rdi, (%rax,%rcx)
	addq	$8, %rcx
	addq	$-8, %rbp
L__fl_masked_mzd_to_char_array$2:
	cmpq	$0, %rbp
	jnbe	L__fl_masked_mzd_to_char_array$3
	movq	(%r9,%rbp), %rdx
	bswapq	%rdx
	movq	$16, %rdi
	subq	%rbp, %rdi
	movq	(%rsi,%rdi), %rsi
	xorq	%rdx, %rsi
	movq	%rsi, (%rax,%rcx)
	ret
L_masked_mzd_from_char_array$1:
	movq	(%rdi,%rcx), %rax
	bswapq	%rax
	movq	%rax, 16(%rdx)
	addq	$8, %rcx
	movq	(%rdi,%rcx), %rax
	bswapq	%rax
	movq	%rax, 8(%rdx)
	addq	$8, %rcx
	movq	(%rdi,%rcx), %rax
	bswapq	%rax
	movq	%rax, (%rdx)
	ret
LFL_N_TREE_DATA_SIZEx4___absorb_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LFL_N_TREE_DATA_SIZEx4___absorb_updstate_avx2x4$7:
	movq	%r11, %r8
	movq	%r11, 8(%rsp)
	movq	$0, %r11
	addq	%rax, %r12
	jmp 	LFL_N_TREE_DATA_SIZEx4___absorb_updstate_avx2x4$3
LFL_N_TREE_DATA_SIZEx4___absorb_updstate_avx2x4$4:
	movq	%r12, 16(%rsp)
	call	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$1
LFL_N_TREE_DATA_SIZEx4___absorb_updstate_avx2x4$6:
	movq	16(%rsp), %r12
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LFL_N_TREE_DATA_SIZEx4___absorb_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r12
	movq	$0, %rax
LFL_N_TREE_DATA_SIZEx4___absorb_updstate_avx2x4$3:
	cmpq	%r12, %rdi
	jbe 	LFL_N_TREE_DATA_SIZEx4___absorb_updstate_avx2x4$4
	movq	%r12, %rdi
	call	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$1
LFL_N_TREE_DATA_SIZEx4___absorb_updstate_avx2x4$2:
	movq	8(%rsp), %r11
	movb	%al, 800(%r11)
	ret
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$29
	movq	%rdi, %r12
	subq	%rax, %r12
	shrq	$3, %rax
	shlq	$3, %rax
	movb	%r14b, %bl
	shlb	$3, %bl
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$50
	testq	$4, %r12
	jne 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$54
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$55
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$54:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$55:
	testq	$2, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$53
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$53:
	testq	$1, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$51
	movzbq	(%rdx,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$52:
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$51
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$50:
	movq	(%rdx,%r13), %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$51:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$44
	testq	$4, %r12
	jne 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$48
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$49
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$48:
	movl	(%r10,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$49:
	testq	$2, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$47
	movzwq	(%r10,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$47:
	testq	$1, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$45
	movzbq	(%r10,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$46:
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$45
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$44:
	movq	(%r10,%r13), %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$45:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 8(%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$38
	testq	$4, %r12
	jne 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$42
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$43
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$42:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$43:
	testq	$2, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$41
	movzwq	(%rsi,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$41:
	testq	$1, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$39
	movzbq	(%rsi,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$40:
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$39
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$38:
	movq	(%rsi,%r13), %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$39:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 16(%r8,%rax,4)
	movq	%r11, %rbp
	cmpq	$8, %r12
	jnb 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$32
	testq	$4, %r12
	jne 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$36
	movq	$0, %r13
	movb	$0, %cl
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$37
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$36:
	movl	(%r9,%rbp), %r13d
	addq	$4, %rbp
	movb	$32, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$37:
	testq	$2, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$35
	movzwq	(%r9,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	addq	$2, %rbp
	addb	$16, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$35:
	testq	$1, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$33
	movzbq	(%r9,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	incq	%rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$34:
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$33
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$32:
	movq	(%r9,%rbp), %r13
	addq	$8, %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$33:
	movb	%bl, %cl
	shlq	%cl, %r13
	xorq	%r13, 24(%r8,%rax,4)
	addq	%r14, %r12
	cmpq	$8, %r12
	jnb 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$30
	movq	%rbp, %r11
	movq	%rdi, %rax
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$29
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$30:
	addq	$8, %r11
	subq	%r14, %r11
	addq	$8, %rax
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$31:
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$29:
	movq	%rax, %rcx
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$27
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$28:
	movq	(%rdx,%r11), %rbp
	xorq	%rbp, (%r8,%rax,4)
	movq	(%r10,%r11), %rbp
	xorq	%rbp, 8(%r8,%rax,4)
	movq	(%rsi,%r11), %rbp
	xorq	%rbp, 16(%r8,%rax,4)
	movq	(%r9,%r11), %rbp
	xorq	%rbp, 24(%r8,%rax,4)
	movq	%rcx, %rax
	addq	$8, %r11
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$27:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$28
	cmpq	%rdi, %rax
	jnb 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$2
	movq	%rdi, %r12
	andq	$7, %r12
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$21
	testq	$4, %r12
	jne 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$25
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$26
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$25:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$26:
	testq	$2, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$24
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$24:
	testq	$1, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$22
	movzbq	(%rdx,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$23:
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$22
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$21:
	movq	(%rdx,%r13), %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$22:
	xorq	%rbp, (%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$15
	testq	$4, %r12
	jne 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$19
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$20
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$19:
	movl	(%r10,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$20:
	testq	$2, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$18
	movzwq	(%r10,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$18:
	testq	$1, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$16
	movzbq	(%r10,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$17:
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$16
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$15:
	movq	(%r10,%r13), %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$16:
	xorq	%rbp, 8(%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$9
	testq	$4, %r12
	jne 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$13
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$14
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$13:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$14:
	testq	$2, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$12
	movzwq	(%rsi,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$12:
	testq	$1, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$10
	movzbq	(%rsi,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$11:
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$10
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$9:
	movq	(%rsi,%r13), %rbp
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$10:
	xorq	%rbp, 16(%r8,%rax,4)
	cmpq	$8, %r12
	jnb 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$3
	testq	$4, %r12
	jne 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$8
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$7:
	movl	(%r9,%r11), %ebp
	addq	$4, %r11
	movb	$32, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$8:
	testq	$2, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$6
	movzwq	(%r9,%r11), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r11
	addb	$16, %cl
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$6:
	testq	$1, %r12
	je  	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$4
	movzbq	(%r9,%r11), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r11
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$5:
	jmp 	LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$4
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$3:
	movq	(%r9,%r11), %rbp
	addq	$8, %r11
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$4:
	xorq	%rbp, 24(%r8,%rax,4)
LFL_N_TREE_DATA_SIZEx4___add_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LFL_N_PNC_SEED_SIZE___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LFL_N_PNC_SEED_SIZE___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r10
	jmp 	LFL_N_PNC_SEED_SIZE___update_updstate_avx2$3
LFL_N_PNC_SEED_SIZE___update_updstate_avx2$4:
	call	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$1
LFL_N_PNC_SEED_SIZE___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LFL_N_PNC_SEED_SIZE___update_updstate_avx2$5:
	subq	%rdi, %r10
	movq	$0, %rax
LFL_N_PNC_SEED_SIZE___update_updstate_avx2$3:
	cmpq	%r10, %rdi
	jbe 	LFL_N_PNC_SEED_SIZE___update_updstate_avx2$4
	movq	%r10, %rdi
	movq	8(%rsp), %r8
	call	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$1
LFL_N_PNC_SEED_SIZE___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$13
	movq	%rdi, %rbx
	subq	%rax, %rbx
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %r13
	cmpq	$8, %rbx
	jnb 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$16
	testq	$4, %rbx
	jne 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$21
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$20:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$21:
	testq	$2, %rbx
	je  	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$19
	movzwq	(%rsi,%r13), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$19:
	testq	$1, %rbx
	je  	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$17
	movzbq	(%rsi,%r13), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	incq	%r13
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$18:
	jmp 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$17
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$16:
	movq	(%rsi,%r13), %rbp
	addq	$8, %r13
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$17:
	addq	%rax, %rbx
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %rbx
	jnb 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$14
	movq	%r13, %r9
	movq	%rdi, %rax
	jmp 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$13
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$15:
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$11
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rsi,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$9
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$10:
	movq	(%rsi,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$8
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$7:
	movl	(%rsi,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$6
	movzwq	(%rsi,%r9), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	addq	$2, %r9
	addb	$16, %cl
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$4
	movzbq	(%rsi,%r9), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	incq	%r9
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$5:
	jmp 	LFL_N_PNC_SEED_SIZE___add_updstate_avx2$4
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$3:
	movq	(%rsi,%r9), %rbp
	addq	$8, %r9
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LFL_N_PNC_SEED_SIZE___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$9:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	cmpq	$0, %rax
	jne 	LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$7
	call	L_keccakf1600_st25_avx2$1
LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$8:
	movq	$0, %rax
LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$7:
	movq	$0, %r13
	addq	%rax, %r12
	jmp 	LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$3
LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$4:
	call	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$1
LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$3:
	cmpq	%r12, %rdi
	jb  	LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$4
	movq	%r12, %rdi
	call	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$1
LFL_N_2_PNC_SEED_SIZE___squeeze_updstate_avx2$2:
	movq	8(%rsp), %r8
	movb	%al, 200(%r8)
	ret
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$12
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	(%r11,%rax), %r9
	movb	%r14b, %cl
	shlb	$3, %cl
	shrq	%cl, %r9
	movq	%r13, %rbx
	cmpq	$8, %r10
	jnb 	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$15
	testq	$4, %r10
	je  	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$19
	movl	%r9d, (%rdx,%rbx)
	addq	$4, %rbx
	shrq	$32, %r9
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$19:
	testq	$2, %r10
	je  	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$18
	movw	%r9w, (%rdx,%rbx)
	addq	$2, %rbx
	shrq	$16, %r9
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$18:
	testq	$1, %r10
	je  	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$16
	movb	%r9b, (%rdx,%rbx)
	incq	%rbx
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$17:
	jmp 	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$16
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$15:
	movq	%r9, (%rdx,%rbx)
	addq	$8, %rbx
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$16:
	addq	%r14, %r10
	cmpq	$8, %r10
	jnb 	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$13
	movq	%rbx, %r13
	movq	%rdi, %rax
	jmp 	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$12
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$13:
	addq	$8, %r13
	subq	%r14, %r13
	addq	$8, %rax
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$14:
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$12:
	movq	%rax, %rcx
	jmp 	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$10
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$11:
	vmovdqu	(%r11,%rax), %ymm1
	vmovdqu	%ymm1, (%rdx,%r13)
	movq	%rcx, %rax
	addq	$32, %r13
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$10:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$11
	movq	%rax, %rcx
	jmp 	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$8
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$9:
	movq	(%r11,%rax), %r9
	movq	%r9, (%rdx,%r13)
	movq	%rcx, %rax
	addq	$8, %r13
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$8:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$9
	cmpq	%rdi, %rax
	jnb 	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	(%r11,%rax), %r9
	cmpq	$8, %rbx
	jnb 	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$3
	testq	$4, %rbx
	je  	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$7
	movl	%r9d, (%rdx,%r13)
	addq	$4, %r13
	shrq	$32, %r9
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$7:
	testq	$2, %rbx
	je  	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$6
	movw	%r9w, (%rdx,%r13)
	addq	$2, %r13
	shrq	$16, %r9
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$6:
	testq	$1, %rbx
	je  	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$2
	movb	%r9b, (%rdx,%r13)
	incq	%r13
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$5:
	jmp 	LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$2
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$3:
	movq	%r9, (%rdx,%r13)
	addq	$8, %r13
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$4:
LFL_N_2_PNC_SEED_SIZE___dump_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LFL_A64x4___squeeze_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LFL_A64x4___squeeze_updstate_avx2x4$9:
	movq	%r11, %r8
	cmpq	$0, %rax
	jne 	LFL_A64x4___squeeze_updstate_avx2x4$7
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LFL_A64x4___squeeze_updstate_avx2x4$8:
	leaq	824(%rsp), %rsp
LFL_A64x4___squeeze_updstate_avx2x4$7:
	movq	$0, %r13
	addq	%rax, %r12
	jmp 	LFL_A64x4___squeeze_updstate_avx2x4$3
LFL_A64x4___squeeze_updstate_avx2x4$4:
	call	LFL_A64x4___dump_updstate_avx2x4$1
LFL_A64x4___squeeze_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LFL_A64x4___squeeze_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r12
	movq	$0, %rax
LFL_A64x4___squeeze_updstate_avx2x4$3:
	cmpq	%r12, %rdi
	jb  	LFL_A64x4___squeeze_updstate_avx2x4$4
	movq	%r12, %rdi
	call	LFL_A64x4___dump_updstate_avx2x4$1
LFL_A64x4___squeeze_updstate_avx2x4$2:
	movb	%al, 800(%r11)
	ret
LFL_A64x4___dump_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LFL_A64x4___dump_updstate_avx2x4$25
	movq	%rdi, %rbx
	subq	%rax, %rbx
	shrq	$3, %rax
	shlq	$3, %rax
	movb	%r14b, %cl
	shlb	$3, %cl
	movq	(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LFL_A64x4___dump_updstate_avx2x4$43
	testq	$4, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$47
	movl	%ebp, (%rdx,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LFL_A64x4___dump_updstate_avx2x4$47:
	testq	$2, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$46
	movw	%bp, (%rdx,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LFL_A64x4___dump_updstate_avx2x4$46:
	testq	$1, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$44
	movb	%bpl, (%rdx,%r15)
LFL_A64x4___dump_updstate_avx2x4$45:
	jmp 	LFL_A64x4___dump_updstate_avx2x4$44
LFL_A64x4___dump_updstate_avx2x4$43:
	movq	%rbp, (%rdx,%r15)
LFL_A64x4___dump_updstate_avx2x4$44:
	movq	8(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LFL_A64x4___dump_updstate_avx2x4$38
	testq	$4, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$42
	movl	%ebp, (%r10,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LFL_A64x4___dump_updstate_avx2x4$42:
	testq	$2, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$41
	movw	%bp, (%r10,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LFL_A64x4___dump_updstate_avx2x4$41:
	testq	$1, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$39
	movb	%bpl, (%r10,%r15)
LFL_A64x4___dump_updstate_avx2x4$40:
	jmp 	LFL_A64x4___dump_updstate_avx2x4$39
LFL_A64x4___dump_updstate_avx2x4$38:
	movq	%rbp, (%r10,%r15)
LFL_A64x4___dump_updstate_avx2x4$39:
	movq	16(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LFL_A64x4___dump_updstate_avx2x4$33
	testq	$4, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$37
	movl	%ebp, (%rsi,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LFL_A64x4___dump_updstate_avx2x4$37:
	testq	$2, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$36
	movw	%bp, (%rsi,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LFL_A64x4___dump_updstate_avx2x4$36:
	testq	$1, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$34
	movb	%bpl, (%rsi,%r15)
LFL_A64x4___dump_updstate_avx2x4$35:
	jmp 	LFL_A64x4___dump_updstate_avx2x4$34
LFL_A64x4___dump_updstate_avx2x4$33:
	movq	%rbp, (%rsi,%r15)
LFL_A64x4___dump_updstate_avx2x4$34:
	movq	24(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %rcx
	cmpq	$8, %rbx
	jnb 	LFL_A64x4___dump_updstate_avx2x4$28
	testq	$4, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$32
	movl	%ebp, (%r9,%rcx)
	addq	$4, %rcx
	shrq	$32, %rbp
LFL_A64x4___dump_updstate_avx2x4$32:
	testq	$2, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$31
	movw	%bp, (%r9,%rcx)
	addq	$2, %rcx
	shrq	$16, %rbp
LFL_A64x4___dump_updstate_avx2x4$31:
	testq	$1, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$29
	movb	%bpl, (%r9,%rcx)
	incq	%rcx
LFL_A64x4___dump_updstate_avx2x4$30:
	jmp 	LFL_A64x4___dump_updstate_avx2x4$29
LFL_A64x4___dump_updstate_avx2x4$28:
	movq	%rbp, (%r9,%rcx)
	addq	$8, %rcx
LFL_A64x4___dump_updstate_avx2x4$29:
	addq	%r14, %rbx
	cmpq	$8, %rbx
	jnb 	LFL_A64x4___dump_updstate_avx2x4$26
	movq	%rcx, %r13
	movq	%rdi, %rax
	jmp 	LFL_A64x4___dump_updstate_avx2x4$25
LFL_A64x4___dump_updstate_avx2x4$26:
	addq	$8, %r13
	subq	%r14, %r13
	addq	$8, %rax
LFL_A64x4___dump_updstate_avx2x4$27:
LFL_A64x4___dump_updstate_avx2x4$25:
	movq	%rax, %rcx
	jmp 	LFL_A64x4___dump_updstate_avx2x4$23
LFL_A64x4___dump_updstate_avx2x4$24:
	movq	(%r8,%rax,4), %rbp
	movq	%rbp, (%rdx,%r13)
	movq	8(%r8,%rax,4), %rbp
	movq	%rbp, (%r10,%r13)
	movq	16(%r8,%rax,4), %rbp
	movq	%rbp, (%rsi,%r13)
	movq	24(%r8,%rax,4), %rbp
	movq	%rbp, (%r9,%r13)
	movq	%rcx, %rax
	addq	$8, %r13
LFL_A64x4___dump_updstate_avx2x4$23:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_A64x4___dump_updstate_avx2x4$24
	cmpq	%rdi, %rax
	jnb 	LFL_A64x4___dump_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LFL_A64x4___dump_updstate_avx2x4$18
	testq	$4, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$22
	movl	%ebp, (%rdx,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LFL_A64x4___dump_updstate_avx2x4$22:
	testq	$2, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$21
	movw	%bp, (%rdx,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LFL_A64x4___dump_updstate_avx2x4$21:
	testq	$1, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$19
	movb	%bpl, (%rdx,%r15)
LFL_A64x4___dump_updstate_avx2x4$20:
	jmp 	LFL_A64x4___dump_updstate_avx2x4$19
LFL_A64x4___dump_updstate_avx2x4$18:
	movq	%rbp, (%rdx,%r15)
LFL_A64x4___dump_updstate_avx2x4$19:
	movq	8(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LFL_A64x4___dump_updstate_avx2x4$13
	testq	$4, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$17
	movl	%ebp, (%r10,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LFL_A64x4___dump_updstate_avx2x4$17:
	testq	$2, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$16
	movw	%bp, (%r10,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LFL_A64x4___dump_updstate_avx2x4$16:
	testq	$1, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$14
	movb	%bpl, (%r10,%r15)
LFL_A64x4___dump_updstate_avx2x4$15:
	jmp 	LFL_A64x4___dump_updstate_avx2x4$14
LFL_A64x4___dump_updstate_avx2x4$13:
	movq	%rbp, (%r10,%r15)
LFL_A64x4___dump_updstate_avx2x4$14:
	movq	16(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LFL_A64x4___dump_updstate_avx2x4$8
	testq	$4, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$12
	movl	%ebp, (%rsi,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LFL_A64x4___dump_updstate_avx2x4$12:
	testq	$2, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$11
	movw	%bp, (%rsi,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LFL_A64x4___dump_updstate_avx2x4$11:
	testq	$1, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$9
	movb	%bpl, (%rsi,%r15)
LFL_A64x4___dump_updstate_avx2x4$10:
	jmp 	LFL_A64x4___dump_updstate_avx2x4$9
LFL_A64x4___dump_updstate_avx2x4$8:
	movq	%rbp, (%rsi,%r15)
LFL_A64x4___dump_updstate_avx2x4$9:
	movq	24(%r8,%rax,4), %rbp
	cmpq	$8, %rbx
	jnb 	LFL_A64x4___dump_updstate_avx2x4$3
	testq	$4, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$7
	movl	%ebp, (%r9,%r13)
	addq	$4, %r13
	shrq	$32, %rbp
LFL_A64x4___dump_updstate_avx2x4$7:
	testq	$2, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$6
	movw	%bp, (%r9,%r13)
	addq	$2, %r13
	shrq	$16, %rbp
LFL_A64x4___dump_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LFL_A64x4___dump_updstate_avx2x4$2
	movb	%bpl, (%r9,%r13)
	incq	%r13
LFL_A64x4___dump_updstate_avx2x4$5:
	jmp 	LFL_A64x4___dump_updstate_avx2x4$2
LFL_A64x4___dump_updstate_avx2x4$3:
	movq	%rbp, (%r9,%r13)
	addq	$8, %r13
LFL_A64x4___dump_updstate_avx2x4$4:
LFL_A64x4___dump_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LFL_A32x4___absorb_bcast_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LFL_A32x4___absorb_bcast_updstate_avx2x4$7:
	movq	%r11, %r8
	movq	$0, %r9
	addq	%rax, %r10
	jmp 	LFL_A32x4___absorb_bcast_updstate_avx2x4$3
LFL_A32x4___absorb_bcast_updstate_avx2x4$4:
	call	LFL_A32x4___add_bcast_updstate_avx2x4$1
LFL_A32x4___absorb_bcast_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LFL_A32x4___absorb_bcast_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r10
	movq	$0, %rax
LFL_A32x4___absorb_bcast_updstate_avx2x4$3:
	cmpq	%r10, %rdi
	jbe 	LFL_A32x4___absorb_bcast_updstate_avx2x4$4
	movq	%r10, %rdi
	call	LFL_A32x4___add_bcast_updstate_avx2x4$1
LFL_A32x4___absorb_bcast_updstate_avx2x4$2:
	movb	%al, 800(%r11)
	ret
LFL_A32x4___add_bcast_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LFL_A32x4___add_bcast_updstate_avx2x4$11
	movq	%rdi, %rbx
	subq	%rax, %rbx
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %r13
	cmpq	$8, %rbx
	jnb 	LFL_A32x4___add_bcast_updstate_avx2x4$14
	testq	$4, %rbx
	jne 	LFL_A32x4___add_bcast_updstate_avx2x4$18
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A32x4___add_bcast_updstate_avx2x4$19
LFL_A32x4___add_bcast_updstate_avx2x4$18:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_A32x4___add_bcast_updstate_avx2x4$19:
	testq	$2, %rbx
	je  	LFL_A32x4___add_bcast_updstate_avx2x4$17
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_A32x4___add_bcast_updstate_avx2x4$17:
	testq	$1, %rbx
	je  	LFL_A32x4___add_bcast_updstate_avx2x4$15
	movzbq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	incq	%r13
LFL_A32x4___add_bcast_updstate_avx2x4$16:
	jmp 	LFL_A32x4___add_bcast_updstate_avx2x4$15
LFL_A32x4___add_bcast_updstate_avx2x4$14:
	movq	(%rdx,%r13), %rbp
	addq	$8, %r13
LFL_A32x4___add_bcast_updstate_avx2x4$15:
	addq	%rax, %rbx
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	vmovq	%rbp, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
	cmpq	$8, %rbx
	jnb 	LFL_A32x4___add_bcast_updstate_avx2x4$12
	movq	%r13, %r9
	movq	%rdi, %rax
	jmp 	LFL_A32x4___add_bcast_updstate_avx2x4$11
LFL_A32x4___add_bcast_updstate_avx2x4$12:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LFL_A32x4___add_bcast_updstate_avx2x4$13:
LFL_A32x4___add_bcast_updstate_avx2x4$11:
	movq	%rax, %rcx
	jmp 	LFL_A32x4___add_bcast_updstate_avx2x4$9
LFL_A32x4___add_bcast_updstate_avx2x4$10:
	vpbroadcastq	(%rdx,%r9), %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
	movq	%rcx, %rax
	addq	$8, %r9
LFL_A32x4___add_bcast_updstate_avx2x4$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_A32x4___add_bcast_updstate_avx2x4$10
	cmpq	%rdi, %rax
	jnb 	LFL_A32x4___add_bcast_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LFL_A32x4___add_bcast_updstate_avx2x4$3
	testq	$4, %rbx
	jne 	LFL_A32x4___add_bcast_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A32x4___add_bcast_updstate_avx2x4$8
LFL_A32x4___add_bcast_updstate_avx2x4$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LFL_A32x4___add_bcast_updstate_avx2x4$8:
	testq	$2, %rbx
	je  	LFL_A32x4___add_bcast_updstate_avx2x4$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LFL_A32x4___add_bcast_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LFL_A32x4___add_bcast_updstate_avx2x4$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LFL_A32x4___add_bcast_updstate_avx2x4$5:
	jmp 	LFL_A32x4___add_bcast_updstate_avx2x4$4
LFL_A32x4___add_bcast_updstate_avx2x4$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LFL_A32x4___add_bcast_updstate_avx2x4$4:
	vmovq	%rbp, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
LFL_A32x4___add_bcast_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LFL_A32___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LFL_A32___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LFL_A32___update_updstate_avx2$3
LFL_A32___update_updstate_avx2$4:
	call	LFL_A32___add_updstate_avx2$1
LFL_A32___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LFL_A32___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LFL_A32___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LFL_A32___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LFL_A32___add_updstate_avx2$1
LFL_A32___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LFL_A32___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LFL_A32___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %r13
	cmpq	$8, %r10
	jnb 	LFL_A32___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LFL_A32___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A32___add_updstate_avx2$21
LFL_A32___add_updstate_avx2$20:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_A32___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LFL_A32___add_updstate_avx2$19
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_A32___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LFL_A32___add_updstate_avx2$17
	movzbq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	incq	%r13
LFL_A32___add_updstate_avx2$18:
	jmp 	LFL_A32___add_updstate_avx2$17
LFL_A32___add_updstate_avx2$16:
	movq	(%rdx,%r13), %rbp
	addq	$8, %r13
LFL_A32___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LFL_A32___add_updstate_avx2$14
	movq	%r13, %r9
	movq	%rdi, %rax
	jmp 	LFL_A32___add_updstate_avx2$13
LFL_A32___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LFL_A32___add_updstate_avx2$15:
LFL_A32___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LFL_A32___add_updstate_avx2$11
LFL_A32___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rdx,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LFL_A32___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_A32___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LFL_A32___add_updstate_avx2$9
LFL_A32___add_updstate_avx2$10:
	movq	(%rdx,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LFL_A32___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_A32___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LFL_A32___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LFL_A32___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LFL_A32___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A32___add_updstate_avx2$8
LFL_A32___add_updstate_avx2$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LFL_A32___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LFL_A32___add_updstate_avx2$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LFL_A32___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LFL_A32___add_updstate_avx2$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LFL_A32___add_updstate_avx2$5:
	jmp 	LFL_A32___add_updstate_avx2$4
LFL_A32___add_updstate_avx2$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LFL_A32___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LFL_A32___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LFL_A2x4___absorb_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LFL_A2x4___absorb_updstate_avx2x4$7:
	movq	%r11, %r8
	movq	%r11, 8(%rsp)
	movq	$0, %r11
	addq	%rax, %r12
	jmp 	LFL_A2x4___absorb_updstate_avx2x4$3
LFL_A2x4___absorb_updstate_avx2x4$4:
	movq	%r12, 16(%rsp)
	call	LFL_A2x4___add_updstate_avx2x4$1
LFL_A2x4___absorb_updstate_avx2x4$6:
	movq	16(%rsp), %r12
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LFL_A2x4___absorb_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r12
	movq	$0, %rax
LFL_A2x4___absorb_updstate_avx2x4$3:
	cmpq	%r12, %rdi
	jbe 	LFL_A2x4___absorb_updstate_avx2x4$4
	movq	%r12, %rdi
	call	LFL_A2x4___add_updstate_avx2x4$1
LFL_A2x4___absorb_updstate_avx2x4$2:
	movq	8(%rsp), %r11
	movb	%al, 800(%r11)
	ret
LFL_A2x4___add_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LFL_A2x4___add_updstate_avx2x4$29
	movq	%rdi, %r12
	subq	%rax, %r12
	shrq	$3, %rax
	shlq	$3, %rax
	movb	%r14b, %bl
	shlb	$3, %bl
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LFL_A2x4___add_updstate_avx2x4$50
	testq	$4, %r12
	jne 	LFL_A2x4___add_updstate_avx2x4$54
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A2x4___add_updstate_avx2x4$55
LFL_A2x4___add_updstate_avx2x4$54:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_A2x4___add_updstate_avx2x4$55:
	testq	$2, %r12
	je  	LFL_A2x4___add_updstate_avx2x4$53
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_A2x4___add_updstate_avx2x4$53:
	testq	$1, %r12
	je  	LFL_A2x4___add_updstate_avx2x4$51
	movzbq	(%rdx,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LFL_A2x4___add_updstate_avx2x4$52:
	jmp 	LFL_A2x4___add_updstate_avx2x4$51
LFL_A2x4___add_updstate_avx2x4$50:
	movq	(%rdx,%r13), %rbp
LFL_A2x4___add_updstate_avx2x4$51:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LFL_A2x4___add_updstate_avx2x4$44
	testq	$4, %r12
	jne 	LFL_A2x4___add_updstate_avx2x4$48
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A2x4___add_updstate_avx2x4$49
LFL_A2x4___add_updstate_avx2x4$48:
	movl	(%r10,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_A2x4___add_updstate_avx2x4$49:
	testq	$2, %r12
	je  	LFL_A2x4___add_updstate_avx2x4$47
	movzwq	(%r10,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_A2x4___add_updstate_avx2x4$47:
	testq	$1, %r12
	je  	LFL_A2x4___add_updstate_avx2x4$45
	movzbq	(%r10,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LFL_A2x4___add_updstate_avx2x4$46:
	jmp 	LFL_A2x4___add_updstate_avx2x4$45
LFL_A2x4___add_updstate_avx2x4$44:
	movq	(%r10,%r13), %rbp
LFL_A2x4___add_updstate_avx2x4$45:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 8(%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LFL_A2x4___add_updstate_avx2x4$38
	testq	$4, %r12
	jne 	LFL_A2x4___add_updstate_avx2x4$42
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A2x4___add_updstate_avx2x4$43
LFL_A2x4___add_updstate_avx2x4$42:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_A2x4___add_updstate_avx2x4$43:
	testq	$2, %r12
	je  	LFL_A2x4___add_updstate_avx2x4$41
	movzwq	(%rsi,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_A2x4___add_updstate_avx2x4$41:
	testq	$1, %r12
	je  	LFL_A2x4___add_updstate_avx2x4$39
	movzbq	(%rsi,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LFL_A2x4___add_updstate_avx2x4$40:
	jmp 	LFL_A2x4___add_updstate_avx2x4$39
LFL_A2x4___add_updstate_avx2x4$38:
	movq	(%rsi,%r13), %rbp
LFL_A2x4___add_updstate_avx2x4$39:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 16(%r8,%rax,4)
	movq	%r11, %rbp
	cmpq	$8, %r12
	jnb 	LFL_A2x4___add_updstate_avx2x4$32
	testq	$4, %r12
	jne 	LFL_A2x4___add_updstate_avx2x4$36
	movq	$0, %r13
	movb	$0, %cl
	jmp 	LFL_A2x4___add_updstate_avx2x4$37
LFL_A2x4___add_updstate_avx2x4$36:
	movl	(%r9,%rbp), %r13d
	addq	$4, %rbp
	movb	$32, %cl
LFL_A2x4___add_updstate_avx2x4$37:
	testq	$2, %r12
	je  	LFL_A2x4___add_updstate_avx2x4$35
	movzwq	(%r9,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	addq	$2, %rbp
	addb	$16, %cl
LFL_A2x4___add_updstate_avx2x4$35:
	testq	$1, %r12
	je  	LFL_A2x4___add_updstate_avx2x4$33
	movzbq	(%r9,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	incq	%rbp
LFL_A2x4___add_updstate_avx2x4$34:
	jmp 	LFL_A2x4___add_updstate_avx2x4$33
LFL_A2x4___add_updstate_avx2x4$32:
	movq	(%r9,%rbp), %r13
	addq	$8, %rbp
LFL_A2x4___add_updstate_avx2x4$33:
	movb	%bl, %cl
	shlq	%cl, %r13
	xorq	%r13, 24(%r8,%rax,4)
	addq	%r14, %r12
	cmpq	$8, %r12
	jnb 	LFL_A2x4___add_updstate_avx2x4$30
	movq	%rbp, %r11
	movq	%rdi, %rax
	jmp 	LFL_A2x4___add_updstate_avx2x4$29
LFL_A2x4___add_updstate_avx2x4$30:
	addq	$8, %r11
	subq	%r14, %r11
	addq	$8, %rax
LFL_A2x4___add_updstate_avx2x4$31:
LFL_A2x4___add_updstate_avx2x4$29:
	movq	%rax, %rcx
	jmp 	LFL_A2x4___add_updstate_avx2x4$27
LFL_A2x4___add_updstate_avx2x4$28:
	movq	(%rdx,%r11), %rbp
	xorq	%rbp, (%r8,%rax,4)
	movq	(%r10,%r11), %rbp
	xorq	%rbp, 8(%r8,%rax,4)
	movq	(%rsi,%r11), %rbp
	xorq	%rbp, 16(%r8,%rax,4)
	movq	(%r9,%r11), %rbp
	xorq	%rbp, 24(%r8,%rax,4)
	movq	%rcx, %rax
	addq	$8, %r11
LFL_A2x4___add_updstate_avx2x4$27:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_A2x4___add_updstate_avx2x4$28
	cmpq	%rdi, %rax
	jnb 	LFL_A2x4___add_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LFL_A2x4___add_updstate_avx2x4$21
	testq	$4, %rbx
	jne 	LFL_A2x4___add_updstate_avx2x4$25
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A2x4___add_updstate_avx2x4$26
LFL_A2x4___add_updstate_avx2x4$25:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_A2x4___add_updstate_avx2x4$26:
	testq	$2, %rbx
	je  	LFL_A2x4___add_updstate_avx2x4$24
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_A2x4___add_updstate_avx2x4$24:
	testq	$1, %rbx
	je  	LFL_A2x4___add_updstate_avx2x4$22
	movzbq	(%rdx,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LFL_A2x4___add_updstate_avx2x4$23:
	jmp 	LFL_A2x4___add_updstate_avx2x4$22
LFL_A2x4___add_updstate_avx2x4$21:
	movq	(%rdx,%r13), %rbp
LFL_A2x4___add_updstate_avx2x4$22:
	xorq	%rbp, (%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LFL_A2x4___add_updstate_avx2x4$15
	testq	$4, %rbx
	jne 	LFL_A2x4___add_updstate_avx2x4$19
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A2x4___add_updstate_avx2x4$20
LFL_A2x4___add_updstate_avx2x4$19:
	movl	(%r10,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_A2x4___add_updstate_avx2x4$20:
	testq	$2, %rbx
	je  	LFL_A2x4___add_updstate_avx2x4$18
	movzwq	(%r10,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_A2x4___add_updstate_avx2x4$18:
	testq	$1, %rbx
	je  	LFL_A2x4___add_updstate_avx2x4$16
	movzbq	(%r10,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LFL_A2x4___add_updstate_avx2x4$17:
	jmp 	LFL_A2x4___add_updstate_avx2x4$16
LFL_A2x4___add_updstate_avx2x4$15:
	movq	(%r10,%r13), %rbp
LFL_A2x4___add_updstate_avx2x4$16:
	xorq	%rbp, 8(%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LFL_A2x4___add_updstate_avx2x4$9
	testq	$4, %rbx
	jne 	LFL_A2x4___add_updstate_avx2x4$13
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A2x4___add_updstate_avx2x4$14
LFL_A2x4___add_updstate_avx2x4$13:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LFL_A2x4___add_updstate_avx2x4$14:
	testq	$2, %rbx
	je  	LFL_A2x4___add_updstate_avx2x4$12
	movzwq	(%rsi,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LFL_A2x4___add_updstate_avx2x4$12:
	testq	$1, %rbx
	je  	LFL_A2x4___add_updstate_avx2x4$10
	movzbq	(%rsi,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LFL_A2x4___add_updstate_avx2x4$11:
	jmp 	LFL_A2x4___add_updstate_avx2x4$10
LFL_A2x4___add_updstate_avx2x4$9:
	movq	(%rsi,%r13), %rbp
LFL_A2x4___add_updstate_avx2x4$10:
	xorq	%rbp, 16(%r8,%rax,4)
	cmpq	$8, %rbx
	jnb 	LFL_A2x4___add_updstate_avx2x4$3
	testq	$4, %rbx
	jne 	LFL_A2x4___add_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A2x4___add_updstate_avx2x4$8
LFL_A2x4___add_updstate_avx2x4$7:
	movl	(%r9,%r11), %ebp
	addq	$4, %r11
	movb	$32, %cl
LFL_A2x4___add_updstate_avx2x4$8:
	testq	$2, %rbx
	je  	LFL_A2x4___add_updstate_avx2x4$6
	movzwq	(%r9,%r11), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r11
	addb	$16, %cl
LFL_A2x4___add_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LFL_A2x4___add_updstate_avx2x4$4
	movzbq	(%r9,%r11), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r11
LFL_A2x4___add_updstate_avx2x4$5:
	jmp 	LFL_A2x4___add_updstate_avx2x4$4
LFL_A2x4___add_updstate_avx2x4$3:
	movq	(%r9,%r11), %rbp
	addq	$8, %r11
LFL_A2x4___add_updstate_avx2x4$4:
	xorq	%rbp, 24(%r8,%rax,4)
LFL_A2x4___add_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LFL_A2x4___absorb_bcast_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LFL_A2x4___absorb_bcast_updstate_avx2x4$7:
	movq	%r11, %r8
	movq	$0, %r9
	addq	%rax, %r10
	jmp 	LFL_A2x4___absorb_bcast_updstate_avx2x4$3
LFL_A2x4___absorb_bcast_updstate_avx2x4$4:
	call	LFL_A2x4___add_bcast_updstate_avx2x4$1
LFL_A2x4___absorb_bcast_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LFL_A2x4___absorb_bcast_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r10
	movq	$0, %rax
LFL_A2x4___absorb_bcast_updstate_avx2x4$3:
	cmpq	%r10, %rdi
	jbe 	LFL_A2x4___absorb_bcast_updstate_avx2x4$4
	movq	%r10, %rdi
	call	LFL_A2x4___add_bcast_updstate_avx2x4$1
LFL_A2x4___absorb_bcast_updstate_avx2x4$2:
	movb	%al, 800(%r11)
	ret
LFL_A2x4___add_bcast_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LFL_A2x4___add_bcast_updstate_avx2x4$11
	movq	%rdi, %rbx
	subq	%rax, %rbx
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbp
	cmpq	$8, %rbx
	jnb 	LFL_A2x4___add_bcast_updstate_avx2x4$14
	testq	$4, %rbx
	jne 	LFL_A2x4___add_bcast_updstate_avx2x4$18
	movq	$0, %r13
	movb	$0, %cl
	jmp 	LFL_A2x4___add_bcast_updstate_avx2x4$19
LFL_A2x4___add_bcast_updstate_avx2x4$18:
	movl	(%rdx,%rbp), %r13d
	addq	$4, %rbp
	movb	$32, %cl
LFL_A2x4___add_bcast_updstate_avx2x4$19:
	testq	$2, %rbx
	je  	LFL_A2x4___add_bcast_updstate_avx2x4$17
	movzwq	(%rdx,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	addq	$2, %rbp
	addb	$16, %cl
LFL_A2x4___add_bcast_updstate_avx2x4$17:
	testq	$1, %rbx
	je  	LFL_A2x4___add_bcast_updstate_avx2x4$15
	movzbq	(%rdx,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	incq	%rbp
LFL_A2x4___add_bcast_updstate_avx2x4$16:
	jmp 	LFL_A2x4___add_bcast_updstate_avx2x4$15
LFL_A2x4___add_bcast_updstate_avx2x4$14:
	movq	(%rdx,%rbp), %r13
	addq	$8, %rbp
LFL_A2x4___add_bcast_updstate_avx2x4$15:
	addq	%rax, %rbx
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %r13
	vmovq	%r13, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
	cmpq	$8, %rbx
	jnb 	LFL_A2x4___add_bcast_updstate_avx2x4$12
	movq	%rbp, %r9
	movq	%rdi, %rax
	jmp 	LFL_A2x4___add_bcast_updstate_avx2x4$11
LFL_A2x4___add_bcast_updstate_avx2x4$12:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LFL_A2x4___add_bcast_updstate_avx2x4$13:
LFL_A2x4___add_bcast_updstate_avx2x4$11:
	movq	%rax, %rcx
	jmp 	LFL_A2x4___add_bcast_updstate_avx2x4$9
LFL_A2x4___add_bcast_updstate_avx2x4$10:
	vpbroadcastq	(%rdx,%r9), %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
	movq	%rcx, %rax
	addq	$8, %r9
LFL_A2x4___add_bcast_updstate_avx2x4$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_A2x4___add_bcast_updstate_avx2x4$10
	cmpq	%rdi, %rax
	jnb 	LFL_A2x4___add_bcast_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LFL_A2x4___add_bcast_updstate_avx2x4$3
	testq	$4, %rbx
	jne 	LFL_A2x4___add_bcast_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A2x4___add_bcast_updstate_avx2x4$8
LFL_A2x4___add_bcast_updstate_avx2x4$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LFL_A2x4___add_bcast_updstate_avx2x4$8:
	testq	$2, %rbx
	je  	LFL_A2x4___add_bcast_updstate_avx2x4$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LFL_A2x4___add_bcast_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LFL_A2x4___add_bcast_updstate_avx2x4$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LFL_A2x4___add_bcast_updstate_avx2x4$5:
	jmp 	LFL_A2x4___add_bcast_updstate_avx2x4$4
LFL_A2x4___add_bcast_updstate_avx2x4$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LFL_A2x4___add_bcast_updstate_avx2x4$4:
	vmovq	%rbp, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
LFL_A2x4___add_bcast_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LFL_A256x4___squeeze_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LFL_A256x4___squeeze_updstate_avx2x4$9:
	movq	%r11, %r8
	cmpq	$0, %rax
	jne 	LFL_A256x4___squeeze_updstate_avx2x4$7
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LFL_A256x4___squeeze_updstate_avx2x4$8:
	leaq	824(%rsp), %rsp
LFL_A256x4___squeeze_updstate_avx2x4$7:
	movq	$0, %r13
	addq	%rax, %r12
	jmp 	LFL_A256x4___squeeze_updstate_avx2x4$3
LFL_A256x4___squeeze_updstate_avx2x4$4:
	call	LFL_A256x4___dump_updstate_avx2x4$1
LFL_A256x4___squeeze_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LFL_A256x4___squeeze_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r12
	movq	$0, %rax
LFL_A256x4___squeeze_updstate_avx2x4$3:
	cmpq	%r12, %rdi
	jb  	LFL_A256x4___squeeze_updstate_avx2x4$4
	movq	%r12, %rdi
	call	LFL_A256x4___dump_updstate_avx2x4$1
LFL_A256x4___squeeze_updstate_avx2x4$2:
	movb	%al, 800(%r11)
	ret
LFL_A256x4___dump_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LFL_A256x4___dump_updstate_avx2x4$25
	movq	%rdi, %rbx
	subq	%rax, %rbx
	shrq	$3, %rax
	shlq	$3, %rax
	movb	%r14b, %cl
	shlb	$3, %cl
	movq	(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LFL_A256x4___dump_updstate_avx2x4$43
	testq	$4, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$47
	movl	%ebp, (%rdx,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LFL_A256x4___dump_updstate_avx2x4$47:
	testq	$2, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$46
	movw	%bp, (%rdx,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LFL_A256x4___dump_updstate_avx2x4$46:
	testq	$1, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$44
	movb	%bpl, (%rdx,%r15)
LFL_A256x4___dump_updstate_avx2x4$45:
	jmp 	LFL_A256x4___dump_updstate_avx2x4$44
LFL_A256x4___dump_updstate_avx2x4$43:
	movq	%rbp, (%rdx,%r15)
LFL_A256x4___dump_updstate_avx2x4$44:
	movq	8(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LFL_A256x4___dump_updstate_avx2x4$38
	testq	$4, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$42
	movl	%ebp, (%r10,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LFL_A256x4___dump_updstate_avx2x4$42:
	testq	$2, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$41
	movw	%bp, (%r10,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LFL_A256x4___dump_updstate_avx2x4$41:
	testq	$1, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$39
	movb	%bpl, (%r10,%r15)
LFL_A256x4___dump_updstate_avx2x4$40:
	jmp 	LFL_A256x4___dump_updstate_avx2x4$39
LFL_A256x4___dump_updstate_avx2x4$38:
	movq	%rbp, (%r10,%r15)
LFL_A256x4___dump_updstate_avx2x4$39:
	movq	16(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LFL_A256x4___dump_updstate_avx2x4$33
	testq	$4, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$37
	movl	%ebp, (%rsi,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LFL_A256x4___dump_updstate_avx2x4$37:
	testq	$2, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$36
	movw	%bp, (%rsi,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LFL_A256x4___dump_updstate_avx2x4$36:
	testq	$1, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$34
	movb	%bpl, (%rsi,%r15)
LFL_A256x4___dump_updstate_avx2x4$35:
	jmp 	LFL_A256x4___dump_updstate_avx2x4$34
LFL_A256x4___dump_updstate_avx2x4$33:
	movq	%rbp, (%rsi,%r15)
LFL_A256x4___dump_updstate_avx2x4$34:
	movq	24(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %rcx
	cmpq	$8, %rbx
	jnb 	LFL_A256x4___dump_updstate_avx2x4$28
	testq	$4, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$32
	movl	%ebp, (%r9,%rcx)
	addq	$4, %rcx
	shrq	$32, %rbp
LFL_A256x4___dump_updstate_avx2x4$32:
	testq	$2, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$31
	movw	%bp, (%r9,%rcx)
	addq	$2, %rcx
	shrq	$16, %rbp
LFL_A256x4___dump_updstate_avx2x4$31:
	testq	$1, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$29
	movb	%bpl, (%r9,%rcx)
	incq	%rcx
LFL_A256x4___dump_updstate_avx2x4$30:
	jmp 	LFL_A256x4___dump_updstate_avx2x4$29
LFL_A256x4___dump_updstate_avx2x4$28:
	movq	%rbp, (%r9,%rcx)
	addq	$8, %rcx
LFL_A256x4___dump_updstate_avx2x4$29:
	addq	%r14, %rbx
	cmpq	$8, %rbx
	jnb 	LFL_A256x4___dump_updstate_avx2x4$26
	movq	%rcx, %r13
	movq	%rdi, %rax
	jmp 	LFL_A256x4___dump_updstate_avx2x4$25
LFL_A256x4___dump_updstate_avx2x4$26:
	addq	$8, %r13
	subq	%r14, %r13
	addq	$8, %rax
LFL_A256x4___dump_updstate_avx2x4$27:
LFL_A256x4___dump_updstate_avx2x4$25:
	movq	%rax, %rcx
	jmp 	LFL_A256x4___dump_updstate_avx2x4$23
LFL_A256x4___dump_updstate_avx2x4$24:
	movq	(%r8,%rax,4), %rbp
	movq	%rbp, (%rdx,%r13)
	movq	8(%r8,%rax,4), %rbp
	movq	%rbp, (%r10,%r13)
	movq	16(%r8,%rax,4), %rbp
	movq	%rbp, (%rsi,%r13)
	movq	24(%r8,%rax,4), %rbp
	movq	%rbp, (%r9,%r13)
	movq	%rcx, %rax
	addq	$8, %r13
LFL_A256x4___dump_updstate_avx2x4$23:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_A256x4___dump_updstate_avx2x4$24
	cmpq	%rdi, %rax
	jnb 	LFL_A256x4___dump_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LFL_A256x4___dump_updstate_avx2x4$18
	testq	$4, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$22
	movl	%ebp, (%rdx,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LFL_A256x4___dump_updstate_avx2x4$22:
	testq	$2, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$21
	movw	%bp, (%rdx,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LFL_A256x4___dump_updstate_avx2x4$21:
	testq	$1, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$19
	movb	%bpl, (%rdx,%r15)
LFL_A256x4___dump_updstate_avx2x4$20:
	jmp 	LFL_A256x4___dump_updstate_avx2x4$19
LFL_A256x4___dump_updstate_avx2x4$18:
	movq	%rbp, (%rdx,%r15)
LFL_A256x4___dump_updstate_avx2x4$19:
	movq	8(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LFL_A256x4___dump_updstate_avx2x4$13
	testq	$4, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$17
	movl	%ebp, (%r10,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LFL_A256x4___dump_updstate_avx2x4$17:
	testq	$2, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$16
	movw	%bp, (%r10,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LFL_A256x4___dump_updstate_avx2x4$16:
	testq	$1, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$14
	movb	%bpl, (%r10,%r15)
LFL_A256x4___dump_updstate_avx2x4$15:
	jmp 	LFL_A256x4___dump_updstate_avx2x4$14
LFL_A256x4___dump_updstate_avx2x4$13:
	movq	%rbp, (%r10,%r15)
LFL_A256x4___dump_updstate_avx2x4$14:
	movq	16(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LFL_A256x4___dump_updstate_avx2x4$8
	testq	$4, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$12
	movl	%ebp, (%rsi,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LFL_A256x4___dump_updstate_avx2x4$12:
	testq	$2, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$11
	movw	%bp, (%rsi,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LFL_A256x4___dump_updstate_avx2x4$11:
	testq	$1, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$9
	movb	%bpl, (%rsi,%r15)
LFL_A256x4___dump_updstate_avx2x4$10:
	jmp 	LFL_A256x4___dump_updstate_avx2x4$9
LFL_A256x4___dump_updstate_avx2x4$8:
	movq	%rbp, (%rsi,%r15)
LFL_A256x4___dump_updstate_avx2x4$9:
	movq	24(%r8,%rax,4), %rbp
	cmpq	$8, %rbx
	jnb 	LFL_A256x4___dump_updstate_avx2x4$3
	testq	$4, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$7
	movl	%ebp, (%r9,%r13)
	addq	$4, %r13
	shrq	$32, %rbp
LFL_A256x4___dump_updstate_avx2x4$7:
	testq	$2, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$6
	movw	%bp, (%r9,%r13)
	addq	$2, %r13
	shrq	$16, %rbp
LFL_A256x4___dump_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LFL_A256x4___dump_updstate_avx2x4$2
	movb	%bpl, (%r9,%r13)
	incq	%r13
LFL_A256x4___dump_updstate_avx2x4$5:
	jmp 	LFL_A256x4___dump_updstate_avx2x4$2
LFL_A256x4___dump_updstate_avx2x4$3:
	movq	%rbp, (%r9,%r13)
	addq	$8, %r13
LFL_A256x4___dump_updstate_avx2x4$4:
LFL_A256x4___dump_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LFL_A2___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LFL_A2___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LFL_A2___update_updstate_avx2$3
LFL_A2___update_updstate_avx2$4:
	call	LFL_A2___add_updstate_avx2$1
LFL_A2___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LFL_A2___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LFL_A2___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LFL_A2___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LFL_A2___add_updstate_avx2$1
LFL_A2___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LFL_A2___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LFL_A2___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbx
	cmpq	$8, %r10
	jnb 	LFL_A2___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LFL_A2___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A2___add_updstate_avx2$21
LFL_A2___add_updstate_avx2$20:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LFL_A2___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LFL_A2___add_updstate_avx2$19
	movzwq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LFL_A2___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LFL_A2___add_updstate_avx2$17
	movzbq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%rbx
LFL_A2___add_updstate_avx2$18:
	jmp 	LFL_A2___add_updstate_avx2$17
LFL_A2___add_updstate_avx2$16:
	movq	(%rdx,%rbx), %rbp
	addq	$8, %rbx
LFL_A2___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LFL_A2___add_updstate_avx2$14
	movq	%rbx, %r9
	movq	%rdi, %rax
	jmp 	LFL_A2___add_updstate_avx2$13
LFL_A2___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LFL_A2___add_updstate_avx2$15:
LFL_A2___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LFL_A2___add_updstate_avx2$11
LFL_A2___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rdx,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LFL_A2___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_A2___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LFL_A2___add_updstate_avx2$9
LFL_A2___add_updstate_avx2$10:
	movq	(%rdx,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LFL_A2___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_A2___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LFL_A2___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LFL_A2___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LFL_A2___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A2___add_updstate_avx2$8
LFL_A2___add_updstate_avx2$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LFL_A2___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LFL_A2___add_updstate_avx2$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LFL_A2___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LFL_A2___add_updstate_avx2$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LFL_A2___add_updstate_avx2$5:
	jmp 	LFL_A2___add_updstate_avx2$4
LFL_A2___add_updstate_avx2$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LFL_A2___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LFL_A2___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LFL_A1x4___absorb_bcast_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LFL_A1x4___absorb_bcast_updstate_avx2x4$7:
	movq	%r11, %r8
	movq	$0, %r9
	addq	%rax, %r10
	jmp 	LFL_A1x4___absorb_bcast_updstate_avx2x4$3
LFL_A1x4___absorb_bcast_updstate_avx2x4$4:
	call	LFL_A1x4___add_bcast_updstate_avx2x4$1
LFL_A1x4___absorb_bcast_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LFL_A1x4___absorb_bcast_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r10
	movq	$0, %rax
LFL_A1x4___absorb_bcast_updstate_avx2x4$3:
	cmpq	%r10, %rdi
	jbe 	LFL_A1x4___absorb_bcast_updstate_avx2x4$4
	movq	%r10, %rdi
	call	LFL_A1x4___add_bcast_updstate_avx2x4$1
LFL_A1x4___absorb_bcast_updstate_avx2x4$2:
	movb	%al, 800(%r11)
	ret
LFL_A1x4___add_bcast_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LFL_A1x4___add_bcast_updstate_avx2x4$11
	movq	%rdi, %rbx
	subq	%rax, %rbx
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbp
	cmpq	$8, %rbx
	jnb 	LFL_A1x4___add_bcast_updstate_avx2x4$14
	testq	$4, %rbx
	jne 	LFL_A1x4___add_bcast_updstate_avx2x4$18
	movq	$0, %r13
	movb	$0, %cl
	jmp 	LFL_A1x4___add_bcast_updstate_avx2x4$19
LFL_A1x4___add_bcast_updstate_avx2x4$18:
	movl	(%rsi,%rbp), %r13d
	addq	$4, %rbp
	movb	$32, %cl
LFL_A1x4___add_bcast_updstate_avx2x4$19:
	testq	$2, %rbx
	je  	LFL_A1x4___add_bcast_updstate_avx2x4$17
	movzwq	(%rsi,%rbp), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %r13
	addq	$2, %rbp
	addb	$16, %cl
LFL_A1x4___add_bcast_updstate_avx2x4$17:
	testq	$1, %rbx
	je  	LFL_A1x4___add_bcast_updstate_avx2x4$15
	movzbq	(%rsi,%rbp), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %r13
	incq	%rbp
LFL_A1x4___add_bcast_updstate_avx2x4$16:
	jmp 	LFL_A1x4___add_bcast_updstate_avx2x4$15
LFL_A1x4___add_bcast_updstate_avx2x4$14:
	movq	(%rsi,%rbp), %r13
	addq	$8, %rbp
LFL_A1x4___add_bcast_updstate_avx2x4$15:
	addq	%rax, %rbx
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %r13
	vmovq	%r13, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
	cmpq	$8, %rbx
	jnb 	LFL_A1x4___add_bcast_updstate_avx2x4$12
	movq	%rbp, %r9
	movq	%rdi, %rax
	jmp 	LFL_A1x4___add_bcast_updstate_avx2x4$11
LFL_A1x4___add_bcast_updstate_avx2x4$12:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LFL_A1x4___add_bcast_updstate_avx2x4$13:
LFL_A1x4___add_bcast_updstate_avx2x4$11:
	movq	%rax, %rcx
	jmp 	LFL_A1x4___add_bcast_updstate_avx2x4$9
LFL_A1x4___add_bcast_updstate_avx2x4$10:
	vpbroadcastq	(%rsi,%r9), %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
	movq	%rcx, %rax
	addq	$8, %r9
LFL_A1x4___add_bcast_updstate_avx2x4$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_A1x4___add_bcast_updstate_avx2x4$10
	cmpq	%rdi, %rax
	jnb 	LFL_A1x4___add_bcast_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LFL_A1x4___add_bcast_updstate_avx2x4$3
	testq	$4, %rbx
	jne 	LFL_A1x4___add_bcast_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A1x4___add_bcast_updstate_avx2x4$8
LFL_A1x4___add_bcast_updstate_avx2x4$7:
	movl	(%rsi,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LFL_A1x4___add_bcast_updstate_avx2x4$8:
	testq	$2, %rbx
	je  	LFL_A1x4___add_bcast_updstate_avx2x4$6
	movzwq	(%rsi,%r9), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	addq	$2, %r9
	addb	$16, %cl
LFL_A1x4___add_bcast_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LFL_A1x4___add_bcast_updstate_avx2x4$4
	movzbq	(%rsi,%r9), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	incq	%r9
LFL_A1x4___add_bcast_updstate_avx2x4$5:
	jmp 	LFL_A1x4___add_bcast_updstate_avx2x4$4
LFL_A1x4___add_bcast_updstate_avx2x4$3:
	movq	(%rsi,%r9), %rbp
	addq	$8, %r9
LFL_A1x4___add_bcast_updstate_avx2x4$4:
	vmovq	%rbp, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
LFL_A1x4___add_bcast_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LFL_A1___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LFL_A1___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LFL_A1___update_updstate_avx2$3
LFL_A1___update_updstate_avx2$4:
	call	LFL_A1___add_updstate_avx2$1
LFL_A1___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LFL_A1___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LFL_A1___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LFL_A1___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LFL_A1___add_updstate_avx2$1
LFL_A1___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LFL_A1___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LFL_A1___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbx
	cmpq	$8, %r10
	jnb 	LFL_A1___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LFL_A1___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A1___add_updstate_avx2$21
LFL_A1___add_updstate_avx2$20:
	movl	(%rsi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LFL_A1___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LFL_A1___add_updstate_avx2$19
	movzwq	(%rsi,%rbx), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LFL_A1___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LFL_A1___add_updstate_avx2$17
	movzbq	(%rsi,%rbx), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	incq	%rbx
LFL_A1___add_updstate_avx2$18:
	jmp 	LFL_A1___add_updstate_avx2$17
LFL_A1___add_updstate_avx2$16:
	movq	(%rsi,%rbx), %rbp
	addq	$8, %rbx
LFL_A1___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LFL_A1___add_updstate_avx2$14
	movq	%rbx, %r9
	movq	%rdi, %rax
	jmp 	LFL_A1___add_updstate_avx2$13
LFL_A1___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LFL_A1___add_updstate_avx2$15:
LFL_A1___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LFL_A1___add_updstate_avx2$11
LFL_A1___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rsi,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LFL_A1___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_A1___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LFL_A1___add_updstate_avx2$9
LFL_A1___add_updstate_avx2$10:
	movq	(%rsi,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LFL_A1___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LFL_A1___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LFL_A1___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LFL_A1___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LFL_A1___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LFL_A1___add_updstate_avx2$8
LFL_A1___add_updstate_avx2$7:
	movl	(%rsi,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LFL_A1___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LFL_A1___add_updstate_avx2$6
	movzwq	(%rsi,%r9), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	addq	$2, %r9
	addb	$16, %cl
LFL_A1___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LFL_A1___add_updstate_avx2$4
	movzbq	(%rsi,%r9), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	incq	%r9
LFL_A1___add_updstate_avx2$5:
	jmp 	LFL_A1___add_updstate_avx2$4
LFL_A1___add_updstate_avx2$3:
	movq	(%rsi,%r9), %rbp
	addq	$8, %r9
LFL_A1___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LFL_A1___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
L_simulateOnline$1:
	movq	%rax, 448(%rsp)
	vmovdqu	(%r8), %ymm1
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm1, 32(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	leaq	64(%rsp), %rax
	leaq	96(%rsp), %rbx
	leaq	glob_data + 55744(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192$1
L_simulateOnline$39:
	call	L_mzd_xor_uint64_block$1
L_simulateOnline$38:
	movq	$0, %rcx
	movq	$0, %rsi
	movq	448(%rsp), %rax
	movq	%rax, 456(%rsp)
	movq	%rcx, 464(%rsp)
	movq	%rsi, 472(%rsp)
	vmovdqu	96(%rsp), %ymm1
	vpand	glob_data + 86656(%rip), %ymm1, %ymm4
	vpand	glob_data + 86624(%rip), %ymm1, %ymm2
	vpand	glob_data + 86592(%rip), %ymm1, %ymm1
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
	jmp 	L_simulateOnline$32
L_simulateOnline$33:
	movq	%rsi, 480(%rsp)
	movq	456(%rsp), %rax
	cmpq	%rsi, %rax
	je  	L_simulateOnline$34
	leaq	416(%rsp), %rax
	movq	480(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	472(%rsp), %rsi
	call	L_mzd_from_bitstream$1
L_simulateOnline$37:
	vmovdqu	416(%rsp), %ymm1
	vpand	glob_data + 86656(%rip), %ymm1, %ymm2
	vpand	glob_data + 86624(%rip), %ymm1, %ymm3
	vpand	glob_data + 86592(%rip), %ymm1, %ymm1
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
	leaq	416(%rsp), %rax
	movq	480(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	472(%rsp), %rsi
	addq	$24, %rsi
	call	L_mzd_from_bitstream$1
L_simulateOnline$36:
	vmovdqu	192(%rsp), %ymm1
	vmovdqu	160(%rsp), %ymm2
	vmovdqu	416(%rsp), %ymm6
	vmovdqu	320(%rsp), %ymm3
	vpand	glob_data + 86624(%rip), %ymm6, %ymm9
	vmovdqu	352(%rsp), %ymm4
	vpand	glob_data + 86656(%rip), %ymm6, %ymm5
	vpand	glob_data + 86592(%rip), %ymm6, %ymm6
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
	movq	480(%rsp), %rax
	imulq	$96, %rax, %rax
	addq	464(%rsp), %rax
	movq	432(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	424(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	416(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	jmp 	L_simulateOnline$35
L_simulateOnline$34:
	movq	456(%rsp), %rax
	imulq	$96, %rax, %rax
	addq	464(%rsp), %rax
	movq	(%rdx,%rax), %rcx
	bswapq	%rcx
	movq	%rcx, 432(%rsp)
	addq	$8, %rax
	movq	(%rdx,%rax), %rcx
	bswapq	%rcx
	movq	%rcx, 424(%rsp)
	addq	$8, %rax
	movq	(%rdx,%rax), %rax
	bswapq	%rax
	movq	%rax, 416(%rsp)
	vmovdqu	416(%rsp), %ymm1
	vpand	glob_data + 86656(%rip), %ymm1, %ymm4
	vpand	glob_data + 86624(%rip), %ymm1, %ymm2
	vpand	glob_data + 86592(%rip), %ymm1, %ymm1
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
L_simulateOnline$35:
	movq	480(%rsp), %rsi
	incq	%rsi
L_simulateOnline$32:
	cmpq	$16, %rsi
	jb  	L_simulateOnline$33
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
	leaq	64(%rsp), %rax
	leaq	96(%rsp), %r8
	leaq	glob_data + 31168(%rip), %rbp
	vpxor	%ymm1, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rax)
	call	L_mzd_addmul_v_uint64_192$1
L_simulateOnline$31:
	leaq	96(%rsp), %rbx
	leaq	64(%rsp), %rax
	leaq	glob_data + 86464(%rip), %rsi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline$30:
	leaq	96(%rsp), %rax
	leaq	32(%rsp), %r8
	leaq	glob_data + 61888(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192$1
L_simulateOnline$29:
	movq	$24, %rcx
	movq	$48, %rsi
	movq	448(%rsp), %rax
	movq	%rax, 472(%rsp)
	movq	%rcx, 464(%rsp)
	movq	%rsi, 456(%rsp)
	vmovdqu	96(%rsp), %ymm1
	vpand	glob_data + 86656(%rip), %ymm1, %ymm4
	vpand	glob_data + 86624(%rip), %ymm1, %ymm2
	vpand	glob_data + 86592(%rip), %ymm1, %ymm1
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
	jmp 	L_simulateOnline$23
L_simulateOnline$24:
	movq	%rsi, 480(%rsp)
	movq	472(%rsp), %rax
	cmpq	%rsi, %rax
	je  	L_simulateOnline$25
	leaq	320(%rsp), %rax
	movq	480(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	456(%rsp), %rsi
	call	L_mzd_from_bitstream$1
L_simulateOnline$28:
	vmovdqu	320(%rsp), %ymm1
	vpand	glob_data + 86656(%rip), %ymm1, %ymm2
	vpand	glob_data + 86624(%rip), %ymm1, %ymm3
	vpand	glob_data + 86592(%rip), %ymm1, %ymm1
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
	leaq	320(%rsp), %rax
	movq	480(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	456(%rsp), %rsi
	addq	$24, %rsi
	call	L_mzd_from_bitstream$1
L_simulateOnline$27:
	vmovdqu	224(%rsp), %ymm1
	vmovdqu	128(%rsp), %ymm2
	vmovdqu	320(%rsp), %ymm6
	vmovdqu	416(%rsp), %ymm3
	vpand	glob_data + 86624(%rip), %ymm6, %ymm9
	vmovdqu	384(%rsp), %ymm4
	vpand	glob_data + 86656(%rip), %ymm6, %ymm5
	vpand	glob_data + 86592(%rip), %ymm6, %ymm6
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
	movq	480(%rsp), %rax
	imulq	$96, %rax, %rax
	addq	464(%rsp), %rax
	movq	336(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	328(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	320(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	jmp 	L_simulateOnline$26
L_simulateOnline$25:
	movq	472(%rsp), %rax
	imulq	$96, %rax, %rax
	addq	464(%rsp), %rax
	movq	(%rdx,%rax), %rcx
	bswapq	%rcx
	movq	%rcx, 336(%rsp)
	addq	$8, %rax
	movq	(%rdx,%rax), %rcx
	bswapq	%rcx
	movq	%rcx, 328(%rsp)
	addq	$8, %rax
	movq	(%rdx,%rax), %rax
	bswapq	%rax
	movq	%rax, 320(%rsp)
	vmovdqu	320(%rsp), %ymm1
	vpand	glob_data + 86656(%rip), %ymm1, %ymm4
	vpand	glob_data + 86624(%rip), %ymm1, %ymm2
	vpand	glob_data + 86592(%rip), %ymm1, %ymm1
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
L_simulateOnline$26:
	movq	480(%rsp), %rsi
	incq	%rsi
L_simulateOnline$23:
	cmpq	$16, %rsi
	jb  	L_simulateOnline$24
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
	leaq	64(%rsp), %rax
	leaq	96(%rsp), %r8
	leaq	glob_data + 37312(%rip), %rbp
	vpxor	%ymm1, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rax)
	call	L_mzd_addmul_v_uint64_192$1
L_simulateOnline$22:
	leaq	96(%rsp), %rbx
	leaq	64(%rsp), %rax
	leaq	glob_data + 86496(%rip), %rsi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline$21:
	leaq	96(%rsp), %rax
	leaq	32(%rsp), %r8
	leaq	glob_data + 68032(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192$1
L_simulateOnline$20:
	movq	$48, %rcx
	movq	$96, %rsi
	movq	448(%rsp), %rax
	movq	%rax, 456(%rsp)
	movq	%rcx, 464(%rsp)
	movq	%rsi, 472(%rsp)
	vmovdqu	96(%rsp), %ymm1
	vpand	glob_data + 86656(%rip), %ymm1, %ymm4
	vpand	glob_data + 86624(%rip), %ymm1, %ymm2
	vpand	glob_data + 86592(%rip), %ymm1, %ymm1
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
	jmp 	L_simulateOnline$14
L_simulateOnline$15:
	movq	%rsi, 480(%rsp)
	movq	456(%rsp), %rax
	cmpq	%rsi, %rax
	je  	L_simulateOnline$16
	leaq	416(%rsp), %rax
	movq	480(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	472(%rsp), %rsi
	call	L_mzd_from_bitstream$1
L_simulateOnline$19:
	vmovdqu	416(%rsp), %ymm1
	vpand	glob_data + 86656(%rip), %ymm1, %ymm2
	vpand	glob_data + 86624(%rip), %ymm1, %ymm3
	vpand	glob_data + 86592(%rip), %ymm1, %ymm1
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
	leaq	416(%rsp), %rax
	movq	480(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	472(%rsp), %rsi
	addq	$24, %rsi
	call	L_mzd_from_bitstream$1
L_simulateOnline$18:
	vmovdqu	256(%rsp), %ymm1
	vmovdqu	288(%rsp), %ymm2
	vmovdqu	416(%rsp), %ymm6
	vmovdqu	320(%rsp), %ymm3
	vpand	glob_data + 86624(%rip), %ymm6, %ymm9
	vmovdqu	352(%rsp), %ymm4
	vpand	glob_data + 86656(%rip), %ymm6, %ymm5
	vpand	glob_data + 86592(%rip), %ymm6, %ymm6
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
	movq	480(%rsp), %rax
	imulq	$96, %rax, %rax
	addq	464(%rsp), %rax
	movq	432(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	424(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	416(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	jmp 	L_simulateOnline$17
L_simulateOnline$16:
	movq	456(%rsp), %rax
	imulq	$96, %rax, %rax
	addq	464(%rsp), %rax
	movq	(%rdx,%rax), %rcx
	bswapq	%rcx
	movq	%rcx, 432(%rsp)
	addq	$8, %rax
	movq	(%rdx,%rax), %rcx
	bswapq	%rcx
	movq	%rcx, 424(%rsp)
	addq	$8, %rax
	movq	(%rdx,%rax), %rax
	bswapq	%rax
	movq	%rax, 416(%rsp)
	vmovdqu	416(%rsp), %ymm1
	vpand	glob_data + 86656(%rip), %ymm1, %ymm4
	vpand	glob_data + 86624(%rip), %ymm1, %ymm2
	vpand	glob_data + 86592(%rip), %ymm1, %ymm1
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
L_simulateOnline$17:
	movq	480(%rsp), %rsi
	incq	%rsi
L_simulateOnline$14:
	cmpq	$16, %rsi
	jb  	L_simulateOnline$15
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
	leaq	64(%rsp), %rax
	leaq	96(%rsp), %r8
	leaq	glob_data + 43456(%rip), %rbp
	vpxor	%ymm1, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rax)
	call	L_mzd_addmul_v_uint64_192$1
L_simulateOnline$13:
	leaq	96(%rsp), %rbx
	leaq	64(%rsp), %rax
	leaq	glob_data + 86528(%rip), %rsi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline$12:
	leaq	96(%rsp), %rax
	leaq	32(%rsp), %r8
	leaq	glob_data + 74176(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192$1
L_simulateOnline$11:
	movq	$72, %rcx
	movq	$144, %rsi
	movq	448(%rsp), %rax
	movq	%rax, 448(%rsp)
	movq	%rcx, 472(%rsp)
	movq	%rsi, 464(%rsp)
	vmovdqu	96(%rsp), %ymm1
	vpand	glob_data + 86656(%rip), %ymm1, %ymm4
	vpand	glob_data + 86624(%rip), %ymm1, %ymm2
	vpand	glob_data + 86592(%rip), %ymm1, %ymm1
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
	movq	%rsi, 456(%rsp)
	movq	448(%rsp), %rax
	cmpq	%rsi, %rax
	je  	L_simulateOnline$7
	leaq	320(%rsp), %rax
	movq	456(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	464(%rsp), %rsi
	call	L_mzd_from_bitstream$1
L_simulateOnline$10:
	vmovdqu	320(%rsp), %ymm1
	vpand	glob_data + 86656(%rip), %ymm1, %ymm2
	vpand	glob_data + 86624(%rip), %ymm1, %ymm3
	vpand	glob_data + 86592(%rip), %ymm1, %ymm1
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
	leaq	320(%rsp), %rax
	movq	456(%rsp), %rcx
	imulq	$192, %rcx, %rsi
	addq	464(%rsp), %rsi
	addq	$24, %rsi
	call	L_mzd_from_bitstream$1
L_simulateOnline$9:
	vmovdqu	192(%rsp), %ymm1
	vmovdqu	160(%rsp), %ymm2
	vmovdqu	320(%rsp), %ymm6
	vmovdqu	416(%rsp), %ymm3
	vpand	glob_data + 86624(%rip), %ymm6, %ymm9
	vmovdqu	384(%rsp), %ymm4
	vpand	glob_data + 86656(%rip), %ymm6, %ymm5
	vpand	glob_data + 86592(%rip), %ymm6, %ymm6
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
	movq	456(%rsp), %rax
	imulq	$96, %rax, %rax
	addq	472(%rsp), %rax
	movq	336(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	328(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	addq	$8, %rax
	movq	320(%rsp), %rcx
	bswapq	%rcx
	movq	%rcx, (%rdx,%rax)
	jmp 	L_simulateOnline$8
L_simulateOnline$7:
	movq	448(%rsp), %rax
	imulq	$96, %rax, %rax
	addq	472(%rsp), %rax
	movq	(%rdx,%rax), %rcx
	bswapq	%rcx
	movq	%rcx, 336(%rsp)
	addq	$8, %rax
	movq	(%rdx,%rax), %rcx
	bswapq	%rcx
	movq	%rcx, 328(%rsp)
	addq	$8, %rax
	movq	(%rdx,%rax), %rax
	bswapq	%rax
	movq	%rax, 320(%rsp)
	vmovdqu	320(%rsp), %ymm1
	vpand	glob_data + 86656(%rip), %ymm1, %ymm4
	vpand	glob_data + 86624(%rip), %ymm1, %ymm2
	vpand	glob_data + 86592(%rip), %ymm1, %ymm1
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
	movq	456(%rsp), %rsi
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
	leaq	64(%rsp), %rax
	leaq	96(%rsp), %r8
	leaq	glob_data + 49600(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rax)
	call	L_mzd_addmul_v_uint64_192$1
L_simulateOnline$4:
	leaq	96(%rsp), %rbx
	leaq	64(%rsp), %rax
	leaq	glob_data + 86560(%rip), %rsi
	call	L_mzd_xor_uint64_block$1
L_simulateOnline$3:
	leaq	96(%rsp), %rax
	leaq	32(%rsp), %r8
	leaq	glob_data + 80320(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192$1
L_simulateOnline$2:
	ret
L_assemble_proof$1:
	movq	%rbx, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%r9, 48(%rsp)
	movq	%rdi, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	$0, %rax
	movw	$0, 832(%rsp)
	jmp 	L_assemble_proof$2
L_assemble_proof$3:
	movq	%rax, 72(%rsp)
	movw	832(%rsp), %si
	movq	56(%rsp), %r8
	call	L_contains_challengeC_2$1
L_assemble_proof$13:
	cmpb	$1, %bl
	jne 	L_assemble_proof$4
	movw	832(%rsp), %si
	movq	56(%rsp), %rcx
	call	L_indexOf$1
L_assemble_proof$12:
	movq	64(%rsp), %rdi
	movw	(%rdi,%r11,2), %ax
	movw	%ax, 834(%rsp)
	movzwq	%ax, %rcx
	movq	%rcx, 80(%rsp)
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	72(%rsp), %rsi
	leaq	88(%rsp), %rdi
	leaq	836(%rsp), %r8
	call	L_copy_full_tree$1
L_assemble_proof$11:
	leaq	88(%rsp), %rdx
	leaq	836(%rsp), %r9
	leaq	-1088(%rsp), %rsp
	call	L_revealSeeds_2$1
L_assemble_proof$10:
	leaq	1088(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$15, %rbp
	cmpq	%rax, %rbp
	je  	L_assemble_proof$8
	movq	32(%rsp), %rax
	movq	72(%rsp), %rdx
	imulq	$3392, %rdx, %rdx
	addq	$3072, %rdx
	call	L__copy_tape_aux_to_proof$1
L_assemble_proof$9:
L_assemble_proof$8:
	movq	40(%rsp), %rax
	movq	72(%rsp), %rdx
	imulq	$32, %rdx, %rdx
	call	L__copy_input_to_proof$1
L_assemble_proof$7:
	movq	80(%rsp), %rax
	imulq	$96, %rax, %rax
	movq	72(%rsp), %rdx
	imulq	$1536, %rdx, %rdx
	addq	%rdx, %rax
	movq	48(%rsp), %rdx
	call	L__copy_msgs_to_proof$1
L_assemble_proof$6:
	movq	72(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rdi
	movq	32(%rsp), %rsi
	movw	834(%rsp), %r8w
	leaq	-440(%rsp), %rsp
	call	L_commit_assemble$1
L_assemble_proof$5:
	leaq	440(%rsp), %rsp
L_assemble_proof$4:
	movw	832(%rsp), %ax
	incw	%ax
	movw	%ax, 832(%rsp)
	movq	72(%rsp), %rax
	incq	%rax
L_assemble_proof$2:
	cmpq	$419, %rax
	jb  	L_assemble_proof$3
	ret
L_openMerkleTree_verify$1:
	movq	$0, %r8
	jmp 	L_openMerkleTree_verify$5
L_openMerkleTree_verify$6:
	movq	$0, (%r10,%r8)
	addq	$8, %r8
L_openMerkleTree_verify$5:
	cmpq	$44640, %r8
	jb  	L_openMerkleTree_verify$6
	movq	$0, %r8
	jmp 	L_openMerkleTree_verify$2
L_openMerkleTree_verify$3:
	movq	(%rsi,%r8,8), %r9
	movb	$1, (%rdx,%r9)
	imulq	$48, %r9, %r9
	call	L__copy_digest_to_tree$1
L_openMerkleTree_verify$4:
	incq	%r8
L_openMerkleTree_verify$2:
	cmpq	%rcx, %r8
	jb  	L_openMerkleTree_verify$3
	ret
L_generateSeeds$1:
	call	L_createTree_2$1
L_generateSeeds$4:
	addq	$511, %rsi
	imulq	$24, %rsi, %rcx
	movq	$0, %rsi
	call	L__copy_seed_from_iSeed$1
L_generateSeeds$3:
	movb	$1, (%rax)
	leaq	-376(%rsp), %rsp
	call	L_expandSeeds_2$1
L_generateSeeds$2:
	leaq	376(%rsp), %rsp
	ret
L_reconstructSeeds_1$1:
	movq	%rbx, 8(%rsp)
	movq	$0, %rcx
	jmp 	L_reconstructSeeds_1$3
L_reconstructSeeds_1$4:
	movq	(%rax,%rcx,8), %r9
	imulq	$24, %r9, %r9
	call	L__copy_seed_from_sig$1
L_reconstructSeeds_1$5:
	movq	(%rax,%rcx,8), %r9
	movb	$1, (%r8,%r9)
	incq	%rcx
L_reconstructSeeds_1$3:
	cmpq	%rdi, %rcx
	jb  	L_reconstructSeeds_1$4
	movq	%r11, 16(%rsp)
	movq	8(%rsp), %rbx
	movw	$0, %ax
	leaq	-376(%rsp), %rsp
	call	L_expandSeeds_1$1
L_reconstructSeeds_1$2:
	leaq	376(%rsp), %rsp
	movq	16(%rsp), %rax
	ret
LrevealSeedsSize_1$1:
	leaq	-7544(%rsp), %rsp
	call	L_getRevealedNodes$1
LrevealSeedsSize_1$2:
	leaq	7544(%rsp), %rsp
	ret
L_getMissingLeavesList$1:
	movq	$0, %rcx
	movw	$0, %si
	jmp 	L_getMissingLeavesList$2
L_getMissingLeavesList$3:
	call	L__contains_challengeC$1
L_getMissingLeavesList$5:
	cmpq	$0, %r9
	jne 	L_getMissingLeavesList$4
	movw	%si, (%rax,%rcx,2)
	incq	%rcx
L_getMissingLeavesList$4:
	incw	%si
L_getMissingLeavesList$2:
	cmpw	$419, %si
	jb  	L_getMissingLeavesList$3
	ret
L__contains_challengeC$1:
	movq	$0, %r9
	movq	$0, %r8
	jmp 	L__contains_challengeC$2
L__contains_challengeC$3:
	movw	(%rdx,%r8,2), %di
	cmpw	%si, %di
	jne 	L__contains_challengeC$4
	movq	$1, %r9
	movq	$52, %r8
L__contains_challengeC$4:
	incq	%r8
L__contains_challengeC$2:
	cmpq	$52, %r8
	jb  	L__contains_challengeC$3
	ret
L_mzd_from_char_array_2$1:
	movq	16(%rdi,%rcx), %rsi
	bswapq	%rsi
	movq	%rsi, (%rdx)
	movq	8(%rdi,%rcx), %rsi
	bswapq	%rsi
	movq	%rsi, 8(%rdx)
	movq	(%rdi,%rcx), %rcx
	bswapq	%rcx
	movq	%rcx, 16(%rdx)
	ret
L_createRandomTapes$1:
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movw	$0, %dx
	movq	$0, %rax
	movq	$360, %rbp
	movq	8(%rsp), %rcx
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rsi
	leaq	-1752(%rsp), %rsp
	call	L_hashTapes_x4$1
L_createRandomTapes$5:
	leaq	1752(%rsp), %rsp
	movw	$4, %dx
	movq	$768, %rax
	movq	$456, %rbp
	movq	8(%rsp), %rcx
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rsi
	leaq	-1752(%rsp), %rsp
	call	L_hashTapes_x4$1
L_createRandomTapes$4:
	leaq	1752(%rsp), %rsp
	movw	$8, %dx
	movq	$1536, %rax
	movq	$552, %rbp
	movq	8(%rsp), %rcx
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rsi
	leaq	-1752(%rsp), %rsp
	call	L_hashTapes_x4$1
L_createRandomTapes$3:
	leaq	1752(%rsp), %rsp
	movw	$12, %dx
	movq	$2304, %rax
	movq	$648, %rbp
	movq	8(%rsp), %rcx
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rsi
	leaq	-1752(%rsp), %rsp
	call	L_hashTapes_x4$1
L_createRandomTapes$2:
	leaq	1752(%rsp), %rsp
	ret
L_setAuxBits$1:
	addq	$2880, %rsi
	movq	$0, %r8
	movq	$24, %rdi
	addq	%rsi, %rdi
	jmp 	L_setAuxBits$8
L_setAuxBits$9:
	movq	(%rcx,%rax), %r9
	movq	%r9, (%rdx,%rdi)
	addq	$8, %rax
	addq	$8, %rdi
	incq	%r8
L_setAuxBits$8:
	cmpq	$3, %r8
	jb  	L_setAuxBits$9
	movq	$0, %r8
	movq	$72, %rdi
	addq	%rsi, %rdi
	jmp 	L_setAuxBits$6
L_setAuxBits$7:
	movq	(%rcx,%rax), %r9
	movq	%r9, (%rdx,%rdi)
	addq	$8, %rax
	addq	$8, %rdi
	incq	%r8
L_setAuxBits$6:
	cmpq	$3, %r8
	jb  	L_setAuxBits$7
	movq	$0, %r8
	movq	$120, %rdi
	addq	%rsi, %rdi
	jmp 	L_setAuxBits$4
L_setAuxBits$5:
	movq	(%rcx,%rax), %r9
	movq	%r9, (%rdx,%rdi)
	addq	$8, %rax
	addq	$8, %rdi
	incq	%r8
L_setAuxBits$4:
	cmpq	$3, %r8
	jb  	L_setAuxBits$5
	movq	$0, %r8
	movq	$168, %rdi
	addq	%rsi, %rdi
	jmp 	L_setAuxBits$2
L_setAuxBits$3:
	movq	(%rcx,%rax), %r9
	movq	%r9, (%rdx,%rdi)
	addq	$8, %rax
	addq	$8, %rdi
	incq	%r8
L_setAuxBits$2:
	cmpq	$3, %r8
	jb  	L_setAuxBits$3
	ret
L__computeAuxTape_aux$1:
	movq	$0, %rax
	jmp 	L__computeAuxTape_aux$9
L__computeAuxTape_aux$10:
	movq	(%rdi,%rax), %rdx
	movq	%rdx, 3200(%rdi,%rax)
	addq	$8, %rax
L__computeAuxTape_aux$9:
	cmpq	$192, %rax
	jb  	L__computeAuxTape_aux$10
	movq	$1, %rax
	jmp 	L__computeAuxTape_aux$5
L__computeAuxTape_aux$6:
	movq	$0, %rdx
	jmp 	L__computeAuxTape_aux$7
L__computeAuxTape_aux$8:
	imulq	$192, %rax, %rsi
	addq	%rdx, %rsi
	movq	(%rdi,%rsi), %rsi
	xorq	%rsi, 3200(%rdi,%rdx)
	addq	$8, %rdx
L__computeAuxTape_aux$7:
	cmpq	$192, %rdx
	jb  	L__computeAuxTape_aux$8
	incq	%rax
L__computeAuxTape_aux$5:
	cmpq	$16, %rax
	jb  	L__computeAuxTape_aux$6
	movq	3200(%rdi), %rax
	bswapq	%rax
	movq	%rax, 16(%rcx)
	movq	3208(%rdi), %rax
	bswapq	%rax
	movq	%rax, 8(%rcx)
	movq	3216(%rdi), %rax
	bswapq	%rax
	movq	%rax, (%rcx)
	movq	$3072, %rax
	jmp 	L__computeAuxTape_aux$3
L__computeAuxTape_aux$4:
	movq	$0, (%rdi,%rax)
	addq	$8, %rax
L__computeAuxTape_aux$3:
	cmpq	$3168, %rax
	jb  	L__computeAuxTape_aux$4
	leaq	-184(%rsp), %rsp
	call	L__lowmc_aux_impl$1
L__computeAuxTape_aux$2:
	leaq	184(%rsp), %rsp
	ret
L_indexOf$1:
	movq	$0, %r11
	movq	$0, %r9
	jmp 	L_indexOf$2
L_indexOf$3:
	movw	(%rcx,%r9,2), %di
	cmpw	%si, %di
	jne 	L_indexOf$4
	movq	%r9, %r11
	movq	$52, %r9
L_indexOf$4:
	incq	%r9
L_indexOf$2:
	cmpq	$52, %r9
	jb  	L_indexOf$3
	ret
L_get_orderChallengeC$1:
	movq	$0, %rax
	movq	$0, %r8
	jmp 	L_get_orderChallengeC$2
L_get_orderChallengeC$3:
	movw	(%rcx,%r8,2), %dx
	cmpw	%bp, %dx
	jnb 	L_get_orderChallengeC$4
	incq	%rax
L_get_orderChallengeC$4:
	incq	%r8
L_get_orderChallengeC$2:
	cmpq	$52, %r8
	jb  	L_get_orderChallengeC$3
	ret
L_contains_challengeC_2$1:
	movb	$0, %bl
	movq	$0, %r11
	jmp 	L_contains_challengeC_2$2
L_contains_challengeC_2$3:
	movw	(%r8,%r11,2), %r9w
	cmpw	%si, %r9w
	jne 	L_contains_challengeC_2$4
	movb	$1, %bl
	movq	$52, %r11
L_contains_challengeC_2$4:
	incq	%r11
L_contains_challengeC_2$2:
	cmpq	$52, %r11
	jb  	L_contains_challengeC_2$3
	ret
L__lowmc_aux_impl$1:
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	(%rcx), %ymm0
	vmovdqu	%ymm0, 64(%rsp)
	leaq	96(%rsp), %rax
	leaq	64(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L__lowmc_aux_impl$25:
	leaq	128(%rsp), %rax
	leaq	64(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L__lowmc_aux_impl$24:
	leaq	128(%rsp), %rax
	leaq	96(%rsp), %r8
	leaq	glob_data + 448(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rax)
	call	L_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl$23:
	leaq	64(%rsp), %rax
	leaq	128(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L__lowmc_aux_impl$22:
	leaq	128(%rsp), %rax
	leaq	64(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L__lowmc_aux_impl$21:
	leaq	32(%rsp), %rax
	leaq	128(%rsp), %r8
	leaq	glob_data + 80320(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl$20:
	leaq	160(%rsp), %rax
	leaq	32(%rsp), %r8
	leaq	glob_data + 25024(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rax)
	call	L_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl$19:
	movq	$3344, %rsi
	leaq	32(%rsp), %rax
	call	L_mzd_from_bitstream$1
L__lowmc_aux_impl$18:
	movq	$168, %rdx
	movq	$72, %rsi
	leaq	32(%rsp), %rax
	leaq	160(%rsp), %r8
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced$1
L__lowmc_aux_impl$17:
	leaq	344(%rsp), %rsp
	leaq	128(%rsp), %rax
	leaq	64(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L__lowmc_aux_impl$16:
	leaq	32(%rsp), %rax
	leaq	128(%rsp), %r8
	leaq	glob_data + 74176(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl$15:
	leaq	160(%rsp), %rax
	leaq	32(%rsp), %r8
	leaq	glob_data + 18880(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rax)
	call	L_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl$14:
	movq	$3296, %rsi
	leaq	32(%rsp), %rax
	call	L_mzd_from_bitstream$1
L__lowmc_aux_impl$13:
	movq	$120, %rdx
	movq	$48, %rsi
	leaq	32(%rsp), %rax
	leaq	160(%rsp), %r8
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced$1
L__lowmc_aux_impl$12:
	leaq	344(%rsp), %rsp
	leaq	128(%rsp), %rax
	leaq	64(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L__lowmc_aux_impl$11:
	leaq	32(%rsp), %rax
	leaq	128(%rsp), %r8
	leaq	glob_data + 68032(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl$10:
	leaq	160(%rsp), %rax
	leaq	32(%rsp), %r8
	leaq	glob_data + 12736(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rax)
	call	L_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl$9:
	movq	$3248, %rsi
	leaq	32(%rsp), %rax
	call	L_mzd_from_bitstream$1
L__lowmc_aux_impl$8:
	movq	$72, %rdx
	movq	$24, %rsi
	leaq	32(%rsp), %rax
	leaq	160(%rsp), %r8
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced$1
L__lowmc_aux_impl$7:
	leaq	344(%rsp), %rsp
	leaq	128(%rsp), %rax
	leaq	64(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L__lowmc_aux_impl$6:
	leaq	32(%rsp), %rax
	leaq	128(%rsp), %r8
	leaq	glob_data + 61888(%rip), %rbp
	call	L_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl$5:
	leaq	160(%rsp), %rax
	leaq	32(%rsp), %r8
	leaq	glob_data + 6592(%rip), %rbp
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rax)
	call	L_mzd_addmul_v_uint64_192$1
L__lowmc_aux_impl$4:
	leaq	32(%rsp), %rax
	leaq	96(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L__lowmc_aux_impl$3:
	movq	$24, %rdx
	movq	$0, %rsi
	leaq	32(%rsp), %rax
	leaq	160(%rsp), %r8
	leaq	-344(%rsp), %rsp
	call	L_picnic3_aux_sbox_bitsliced$1
L__lowmc_aux_impl$2:
	leaq	344(%rsp), %rsp
	vmovdqu	64(%rsp), %ymm0
	vmovdqu	%ymm0, (%rcx)
	ret
L_picnic3_aux_sbox_bitsliced$1:
	movq	%rsi, 320(%rsp)
	vmovdqu	(%rax), %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	(%r8), %ymm0
	vmovdqu	%ymm0, 64(%rsp)
	leaq	96(%rsp), %rax
	leaq	32(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$50:
	leaq	32(%rsp), %rbx
	leaq	glob_data + 86656(%rip), %rax
	leaq	96(%rsp), %rsi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$49:
	leaq	160(%rsp), %rbx
	leaq	glob_data + 86624(%rip), %rax
	leaq	96(%rsp), %rsi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$48:
	leaq	224(%rsp), %rbx
	leaq	glob_data + 86592(%rip), %rax
	leaq	96(%rsp), %rsi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$47:
	leaq	96(%rsp), %rax
	leaq	32(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$46:
	leaq	32(%rsp), %rax
	leaq	96(%rsp), %r8
	call	L_mzd_shift2_left_uint64_192$1
L_picnic3_aux_sbox_bitsliced$45:
	leaq	96(%rsp), %rax
	leaq	160(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$44:
	leaq	160(%rsp), %rax
	leaq	96(%rsp), %r8
	call	L_mzd_shift1_left_uint64_192$1
L_picnic3_aux_sbox_bitsliced$43:
	leaq	96(%rsp), %rax
	leaq	64(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$42:
	leaq	64(%rsp), %rbx
	leaq	glob_data + 86656(%rip), %rax
	leaq	96(%rsp), %rsi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$41:
	leaq	128(%rsp), %rbx
	leaq	glob_data + 86624(%rip), %rax
	leaq	96(%rsp), %rsi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$40:
	leaq	192(%rsp), %rbx
	leaq	glob_data + 86592(%rip), %rax
	leaq	96(%rsp), %rsi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$39:
	leaq	96(%rsp), %rax
	leaq	64(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$38:
	leaq	64(%rsp), %rax
	leaq	96(%rsp), %r8
	call	L_mzd_shift2_left_uint64_192$1
L_picnic3_aux_sbox_bitsliced$37:
	leaq	96(%rsp), %rax
	leaq	128(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$36:
	leaq	128(%rsp), %rax
	leaq	96(%rsp), %r8
	call	L_mzd_shift1_left_uint64_192$1
L_picnic3_aux_sbox_bitsliced$35:
	leaq	256(%rsp), %rbx
	leaq	32(%rsp), %rax
	leaq	160(%rsp), %rsi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$34:
	leaq	288(%rsp), %rbx
	leaq	128(%rsp), %rax
	leaq	256(%rsp), %rsi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$33:
	leaq	128(%rsp), %rbx
	leaq	64(%rsp), %rax
	leaq	32(%rsp), %rsi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$32:
	leaq	96(%rsp), %rax
	leaq	256(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$31:
	leaq	256(%rsp), %rbx
	leaq	96(%rsp), %rax
	leaq	224(%rsp), %rsi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$30:
	leaq	96(%rsp), %rax
	leaq	256(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$29:
	leaq	256(%rsp), %rbx
	leaq	96(%rsp), %rax
	leaq	192(%rsp), %rsi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$28:
	leaq	192(%rsp), %rax
	leaq	288(%rsp), %r8
	call	L_mzd_shift2_right_uint64_192$1
L_picnic3_aux_sbox_bitsliced$27:
	leaq	288(%rsp), %rax
	leaq	128(%rsp), %r8
	call	L_mzd_shift1_right_uint64_192$1
L_picnic3_aux_sbox_bitsliced$26:
	leaq	96(%rsp), %rax
	leaq	192(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$25:
	leaq	192(%rsp), %rbx
	leaq	96(%rsp), %rax
	leaq	288(%rsp), %rsi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$24:
	leaq	128(%rsp), %rbx
	leaq	192(%rsp), %rax
	leaq	256(%rsp), %rsi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$23:
	leaq	256(%rsp), %rbx
	leaq	32(%rsp), %rax
	leaq	160(%rsp), %rsi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$22:
	leaq	288(%rsp), %rbx
	leaq	160(%rsp), %rax
	leaq	224(%rsp), %rsi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$21:
	leaq	192(%rsp), %rbx
	leaq	224(%rsp), %rax
	leaq	32(%rsp), %rsi
	call	L_mzd_and_uint64_block$1
L_picnic3_aux_sbox_bitsliced$20:
	leaq	96(%rsp), %rax
	leaq	192(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$19:
	leaq	192(%rsp), %rax
	leaq	96(%rsp), %r8
	call	L_mzd_shift2_right_uint64_192$1
L_picnic3_aux_sbox_bitsliced$18:
	leaq	96(%rsp), %rax
	leaq	288(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$17:
	leaq	288(%rsp), %rax
	leaq	96(%rsp), %r8
	call	L_mzd_shift1_right_uint64_192$1
L_picnic3_aux_sbox_bitsliced$16:
	leaq	96(%rsp), %rax
	leaq	192(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$15:
	leaq	192(%rsp), %rbx
	leaq	96(%rsp), %rax
	leaq	288(%rsp), %rsi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$14:
	leaq	96(%rsp), %rax
	leaq	192(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$13:
	leaq	192(%rsp), %rbx
	leaq	96(%rsp), %rax
	leaq	256(%rsp), %rsi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$12:
	leaq	96(%rsp), %rax
	leaq	128(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$11:
	leaq	128(%rsp), %rbx
	leaq	96(%rsp), %rax
	leaq	192(%rsp), %rsi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$10:
	movq	%rdx, %rsi
	addq	$3200, %rsi
	leaq	256(%rsp), %rax
	call	L_mzd_from_bitstream$1
L_picnic3_aux_sbox_bitsliced$9:
	leaq	96(%rsp), %rax
	leaq	128(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$8:
	leaq	128(%rsp), %rbx
	leaq	96(%rsp), %rax
	leaq	256(%rsp), %rsi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$7:
	movq	%rdx, %rsi
	addq	$2880, %rsi
	leaq	288(%rsp), %rax
	call	L_mzd_from_bitstream$1
L_picnic3_aux_sbox_bitsliced$6:
	leaq	96(%rsp), %rax
	leaq	128(%rsp), %r9
	call	L_mzd_copy_uint64_192$1
L_picnic3_aux_sbox_bitsliced$5:
	leaq	128(%rsp), %rbx
	leaq	96(%rsp), %rax
	leaq	288(%rsp), %rsi
	call	L_mzd_xor_uint64_block$1
L_picnic3_aux_sbox_bitsliced$4:
	movq	%rdx, %rsi
	addq	$2880, %rsi
	leaq	128(%rsp), %rax
	call	L_mzd_to_bitstream$1
L_picnic3_aux_sbox_bitsliced$3:
	movq	320(%rsp), %rsi
	addq	$3072, %rsi
	leaq	128(%rsp), %rax
	call	L_mzd_to_bitstream$1
L_picnic3_aux_sbox_bitsliced$2:
	ret
L_revealSeeds_2$1:
	movq	%r10, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movw	%ax, 1080(%rsp)
	movq	%r9, 24(%rsp)
	movq	$0, %rax
	movw	1080(%rsp), %bp
	addw	$15, %bp
	movw	%bp, 1082(%rsp,%rax,2)
	movzwq	%bp, %rbp
	incq	%rax
	cmpq	$0, %rbp
	je  	L_revealSeeds_2$22
	incq	%rbp
	shrq	$1, %rbp
	decq	%rbp
L_revealSeeds_2$25:
	jmp 	L_revealSeeds_2$22
L_revealSeeds_2$23:
	movw	%bp, 1082(%rsp,%rax,2)
	cmpq	$0, %rbp
	je  	L_revealSeeds_2$24
	incq	%rbp
	shrq	$1, %rbp
	decq	%rbp
L_revealSeeds_2$24:
	incq	%rax
L_revealSeeds_2$22:
	cmpq	$0, %rbp
	jne 	L_revealSeeds_2$23
	movq	$0, %rdx
	movq	$0, 32(%rsp)
	jmp 	L_revealSeeds_2$5
L_revealSeeds_2$6:
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %r9
	movw	1082(%rsp,%r9,2), %bp
	movzwq	%bp, %rbp
	movq	24(%rsp), %r9
	call	L__hasSibling_2$1
L_revealSeeds_2$21:
	cmpb	$1, %cl
	jne 	L_revealSeeds_2$7
	movq	40(%rsp), %r9
	movw	1082(%rsp,%r9,2), %bp
	movzwq	%bp, %rbp
	call	L__getSibling_2$1
L_revealSeeds_2$20:
	movq	%rbp, 48(%rsp)
	movq	40(%rsp), %rdi
	leaq	1082(%rsp), %rcx
	call	L_contains_pathSets_2$1
L_revealSeeds_2$19:
	cmpb	$0, %bl
	jne 	L_revealSeeds_2$7
	movq	24(%rsp), %r9
	movq	48(%rsp), %rbp
	call	L__hasRightChild_T2$1
L_revealSeeds_2$18:
	movb	%cl, 1090(%rsp)
	movb	$1, %al
	subb	1090(%rsp), %al
	movb	%al, 1090(%rsp)
	movq	48(%rsp), %rbp
	call	L__isLeafNode_2$1
L_revealSeeds_2$17:
	movb	%cl, 1091(%rsp)
	movb	$1, %al
	subb	1091(%rsp), %al
	addb	1090(%rsp), %al
	jmp 	L_revealSeeds_2$13
L_revealSeeds_2$14:
	movq	48(%rsp), %rbp
	shlq	$1, %rbp
	incq	%rbp
	movq	%rbp, 48(%rsp)
	movq	48(%rsp), %rbp
	movq	24(%rsp), %r9
	call	L__hasRightChild_T2$1
L_revealSeeds_2$16:
	movb	%cl, 1090(%rsp)
	movb	$1, %al
	subb	1090(%rsp), %al
	movb	%al, 1090(%rsp)
	movq	48(%rsp), %rbp
	call	L__isLeafNode_2$1
L_revealSeeds_2$15:
	movb	%cl, 1091(%rsp)
	movb	$1, %al
	subb	1091(%rsp), %al
	addb	1090(%rsp), %al
L_revealSeeds_2$13:
	cmpb	$0, %al
	je  	L_revealSeeds_2$14
	movq	48(%rsp), %rsi
	movq	32(%rsp), %rdi
	movb	$0, %al
	movq	$0, %rcx
	jmp 	L_revealSeeds_2$10
L_revealSeeds_2$11:
	movq	56(%rsp,%rcx,8), %r9
	cmpq	%rsi, %r9
	jne 	L_revealSeeds_2$12
	movb	$1, %al
L_revealSeeds_2$12:
	incq	%rcx
L_revealSeeds_2$10:
	cmpq	%rdi, %rcx
	jb  	L_revealSeeds_2$11
	cmpb	$0, %al
	jne 	L_revealSeeds_2$9
	movq	32(%rsp), %rdi
	movq	%rsi, 56(%rsp,%rdi,8)
	incq	%rdi
L_revealSeeds_2$9:
	movq	%rdi, 32(%rsp)
L_revealSeeds_2$8:
L_revealSeeds_2$7:
	movq	40(%rsp), %rdx
	incq	%rdx
L_revealSeeds_2$5:
	cmpq	$4, %rdx
	jb  	L_revealSeeds_2$6
	movq	32(%rsp), %rdi
	movq	8(%rsp), %rcx
	movq	$0, %rsi
	jmp 	L_revealSeeds_2$2
L_revealSeeds_2$3:
	movq	%rdi, 8(%rsp)
	movq	56(%rsp,%rsi,8), %rax
	imulq	$3, %rax, %rax
	movq	16(%rsp), %rdx
	call	L__copy_seed_to_proof$1
L_revealSeeds_2$4:
	movq	8(%rsp), %rdi
	incq	%rsi
L_revealSeeds_2$2:
	cmpq	%rdi, %rsi
	jb  	L_revealSeeds_2$3
	ret
L_revealSeeds$1:
	leaq	8(%rsp), %rdx
	leaq	-7544(%rsp), %rsp
	call	L_getRevealedNodes$1
L_revealSeeds$5:
	leaq	7544(%rsp), %rsp
	movq	$0, %rcx
	jmp 	L_revealSeeds$2
L_revealSeeds$3:
	movq	8(%rsp,%rcx,8), %rdx
	imulq	$24, %rdx, %rsi
	call	L__copy_seed_to_sig$1
L_revealSeeds$4:
	incq	%rcx
L_revealSeeds$2:
	cmpq	%rdi, %rcx
	jb  	L_revealSeeds$3
	ret
L_openMerkleTree$1:
	movq	$0, %rsi
	jmp 	L_openMerkleTree$2
L_openMerkleTree$3:
	movq	(%rax,%rsi,8), %r9
	imulq	$48, %r9, %r9
	call	L__copy_digest_from_tree_v2$1
L_openMerkleTree$4:
	incq	%rsi
L_openMerkleTree$2:
	cmpq	%rcx, %rsi
	jb  	L_openMerkleTree$3
	ret
L_openMerkleTreeSize$1:
	leaq	-936(%rsp), %rsp
	call	L_getRevealedMerkleNodes$1
L_openMerkleTreeSize$2:
	leaq	936(%rsp), %rsp
	ret
L_getRevealedMerkleNodes$1:
	movq	$0, %rcx
	jmp 	L_getRevealedMerkleNodes$25
L_getRevealedMerkleNodes$26:
	movb	$0, 8(%rsp,%rcx)
	incq	%rcx
L_getRevealedMerkleNodes$25:
	cmpq	$930, %rcx
	jb  	L_getRevealedMerkleNodes$26
	movq	$0, %rcx
	jmp 	L_getRevealedMerkleNodes$23
L_getRevealedMerkleNodes$24:
	movw	(%rax,%rcx,2), %di
	movzwq	%di, %r9
	movb	$1, 519(%rsp,%r9)
	incq	%rcx
L_getRevealedMerkleNodes$23:
	cmpq	$367, %rcx
	jb  	L_getRevealedMerkleNodes$24
	movq	$929, %rbp
	cmpq	$0, %rbp
	je  	L_getRevealedMerkleNodes$12
	incq	%rbp
	shrq	$1, %rbp
	decq	%rbp
L_getRevealedMerkleNodes$22:
	jmp 	L_getRevealedMerkleNodes$12
L_getRevealedMerkleNodes$13:
	movq	%rbp, %rcx
	movb	$0, %bl
	cmpq	$930, %rcx
	jnb 	L_getRevealedMerkleNodes$21
	movb	(%rsi,%rcx), %bl
L_getRevealedMerkleNodes$21:
	cmpb	$1, %bl
	jne 	L_getRevealedMerkleNodes$14
	shlq	$1, %rcx
	addq	$2, %rcx
	movb	$0, %bl
	cmpq	$930, %rcx
	jnb 	L_getRevealedMerkleNodes$20
	movb	(%rsi,%rcx), %bl
L_getRevealedMerkleNodes$20:
	cmpb	$1, %bl
	je  	L_getRevealedMerkleNodes$15
	decq	%rcx
	movb	8(%rsp,%rcx), %cl
	cmpb	$1, %cl
	jne 	L_getRevealedMerkleNodes$14
	movb	$1, 8(%rsp,%rbp)
L_getRevealedMerkleNodes$19:
	jmp 	L_getRevealedMerkleNodes$14
L_getRevealedMerkleNodes$15:
	movb	8(%rsp,%rcx), %bl
	cmpb	$1, %bl
	jne 	L_getRevealedMerkleNodes$14
	decq	%rcx
	movb	8(%rsp,%rcx), %cl
	cmpb	$1, %cl
	jne 	L_getRevealedMerkleNodes$14
	movb	$1, 8(%rsp,%rbp)
L_getRevealedMerkleNodes$18:
L_getRevealedMerkleNodes$17:
L_getRevealedMerkleNodes$16:
L_getRevealedMerkleNodes$14:
	decq	%rbp
L_getRevealedMerkleNodes$12:
	cmpq	$0, %rbp
	jnbe	L_getRevealedMerkleNodes$13
	movq	$0, %rcx
	movq	$0, %rsi
	jmp 	L_getRevealedMerkleNodes$2
L_getRevealedMerkleNodes$3:
	movw	(%rax,%rsi,2), %bp
	addw	$511, %bp
	movzwq	%bp, %r9
	movzwq	%bp, %rdi
	jmp 	L_getRevealedMerkleNodes$4
L_getRevealedMerkleNodes$5:
	cmpq	$0, %r9
	je  	L_getRevealedMerkleNodes$11
	incq	%r9
	shrq	$1, %r9
	decq	%r9
L_getRevealedMerkleNodes$11:
	movb	8(%rsp,%r9), %bl
	cmpb	$0, %bl
	jne 	L_getRevealedMerkleNodes$6
	movb	$0, %bl
	movq	$0, %r8
	jmp 	L_getRevealedMerkleNodes$8
L_getRevealedMerkleNodes$9:
	movq	(%rdx,%r8,8), %r9
	cmpq	%rdi, %r9
	jne 	L_getRevealedMerkleNodes$10
	movb	$1, %bl
L_getRevealedMerkleNodes$10:
	incq	%r8
L_getRevealedMerkleNodes$8:
	cmpq	%rcx, %r8
	jb  	L_getRevealedMerkleNodes$9
	cmpb	$0, %bl
	jne 	L_getRevealedMerkleNodes$7
	movq	%rdi, (%rdx,%rcx,8)
	incq	%rcx
L_getRevealedMerkleNodes$7:
	movq	$0, %r9
L_getRevealedMerkleNodes$6:
	movq	%r9, %rdi
L_getRevealedMerkleNodes$4:
	cmpq	$0, %r9
	jne 	L_getRevealedMerkleNodes$5
	incq	%rsi
L_getRevealedMerkleNodes$2:
	cmpq	$367, %rsi
	jb  	L_getRevealedMerkleNodes$3
	ret
L_getRevealedNodes$1:
	movq	$0, %rsi
	jmp 	L_getRevealedNodes$21
L_getRevealedNodes$22:
	movw	(%rcx,%rsi,2), %bp
	addw	$511, %bp
	movq	$0, %rdi
	imulq	$52, %rdi, %rdi
	addq	%rsi, %rdi
	movw	%bp, 8(%rsp,%rdi,2)
	addq	$52, %rdi
	cmpw	$0, %bp
	je  	L_getRevealedNodes$23
	incw	%bp
	shrw	$1, %bp
	decw	%bp
L_getRevealedNodes$26:
	jmp 	L_getRevealedNodes$23
L_getRevealedNodes$24:
	movw	%bp, 8(%rsp,%rdi,2)
	cmpw	$0, %bp
	je  	L_getRevealedNodes$25
	incw	%bp
	shrw	$1, %bp
	decw	%bp
L_getRevealedNodes$25:
	addq	$52, %rdi
L_getRevealedNodes$23:
	cmpw	$0, %bp
	jne 	L_getRevealedNodes$24
	incq	%rsi
L_getRevealedNodes$21:
	cmpq	$52, %rsi
	jb  	L_getRevealedNodes$22
	movq	$0, %rsi
	movq	$0, %rdi
	jmp 	L_getRevealedNodes$2
L_getRevealedNodes$3:
	movq	$0, %r8
	jmp 	L_getRevealedNodes$4
L_getRevealedNodes$5:
	movq	%rsi, %rcx
	imulq	$52, %rcx, %rcx
	addq	%r8, %rcx
	movw	8(%rsp,%rcx,2), %bp
	movzwq	%bp, %rbp
	call	L__hasSibling$1
L_getRevealedNodes$20:
	cmpb	$1, %cl
	jne 	L_getRevealedNodes$6
	movq	%rsi, %rcx
	imulq	$52, %rcx, %rcx
	addq	%r8, %rcx
	movw	8(%rsp,%rcx,2), %bp
	movzwq	%bp, %rbp
	call	L__getSibling$1
L_getRevealedNodes$19:
	movq	%rsi, %rcx
	imulq	$52, %rcx, %r12
	leaq	8(%rsp), %rcx
	call	L_contains_pathSets$1
L_getRevealedNodes$18:
	cmpb	$0, %r14b
	jne 	L_getRevealedNodes$6
	call	L__hasRightChild_T1_v2$1
L_getRevealedNodes$17:
	call	L__isLeafNode$1
L_getRevealedNodes$16:
	addb	%bl, %cl
	jmp 	L_getRevealedNodes$12
L_getRevealedNodes$13:
	shlq	$1, %rbp
	incq	%rbp
	call	L__hasRightChild_T1_v2$1
L_getRevealedNodes$15:
	call	L__isLeafNode$1
L_getRevealedNodes$14:
	addb	%bl, %cl
L_getRevealedNodes$12:
	cmpb	$0, %cl
	je  	L_getRevealedNodes$13
	movb	$0, %bl
	movq	$0, %rcx
	jmp 	L_getRevealedNodes$9
L_getRevealedNodes$10:
	movq	(%rdx,%rcx,8), %r13
	cmpq	%rbp, %r13
	jne 	L_getRevealedNodes$11
	movb	$1, %bl
L_getRevealedNodes$11:
	incq	%rcx
L_getRevealedNodes$9:
	cmpq	%rdi, %rcx
	jb  	L_getRevealedNodes$10
	cmpb	$0, %bl
	jne 	L_getRevealedNodes$6
	movq	%rbp, (%rdx,%rdi,8)
	incq	%rdi
L_getRevealedNodes$8:
L_getRevealedNodes$7:
L_getRevealedNodes$6:
	incq	%r8
L_getRevealedNodes$4:
	cmpq	$52, %r8
	jb  	L_getRevealedNodes$5
	incq	%rsi
L_getRevealedNodes$2:
	cmpq	$9, %rsi
	jb  	L_getRevealedNodes$3
	ret
L_expandSeeds_2$1:
	movq	%rdx, 296(%rsp)
	movq	%rax, 304(%rsp)
	movq	%r9, 312(%rsp)
	movq	%rbx, 320(%rsp)
	movw	%r8w, 360(%rsp)
	movq	$31, %rbp
	decq	%rbp
	cmpq	$0, %rbp
	je  	L_expandSeeds_2$29
	incq	%rbp
	shrq	$1, %rbp
	decq	%rbp
L_expandSeeds_2$29:
	movq	$0, %r13
	movq	$2, %rcx
	cmpq	%rcx, %rbp
	jnb 	L_expandSeeds_2$28
	movq	%rbp, %rcx
L_expandSeeds_2$28:
	movq	%rbp, 328(%rsp)
	jmp 	L_expandSeeds_2$20
L_expandSeeds_2$21:
	movq	304(%rsp), %rax
	movb	(%rax,%r13), %al
	cmpb	$1, %al
	jne 	L_expandSeeds_2$22
	movq	%r13, %rax
	imulq	$24, %rax, %rdi
	movw	%r13w, %ax
	movq	%r13, 336(%rsp)
	movq	%rcx, 288(%rsp)
	movq	296(%rsp), %rcx
	movq	320(%rsp), %rdx
	movw	360(%rsp), %r8w
	leaq	32(%rsp), %r9
	leaq	-344(%rsp), %rsp
	call	L_hashSeed_2$1
L_expandSeeds_2$27:
	leaq	344(%rsp), %rsp
	movq	336(%rsp), %rbp
	shlq	$1, %rbp
	incq	%rbp
	movq	304(%rsp), %rax
	movb	(%rax,%rbp), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_2$26
	movb	$1, (%rax,%rbp)
	movq	$0, %rax
	imulq	$24, %rbp, %rdx
	movq	296(%rsp), %r9
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
	movb	55(%rsp,%rax), %al
	movb	%al, 23(%r9,%rdx)
L_expandSeeds_2$26:
	movq	336(%rsp), %rbp
	shlq	$1, %rbp
	addq	$2, %rbp
	movq	312(%rsp), %r9
	call	L__exists_2$1
L_expandSeeds_2$25:
	cmpb	$1, %cl
	jne 	L_expandSeeds_2$23
	movq	304(%rsp), %rax
	movb	(%rax,%rbp), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_2$23
	movb	$1, (%rax,%rbp)
	movq	$24, %rax
	imulq	$24, %rbp, %rdx
	movq	296(%rsp), %r9
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
	movb	55(%rsp,%rax), %al
	movb	%al, 23(%r9,%rdx)
L_expandSeeds_2$24:
L_expandSeeds_2$23:
	movq	336(%rsp), %r13
	movq	288(%rsp), %rcx
L_expandSeeds_2$22:
	incq	%r13
L_expandSeeds_2$20:
	cmpq	%rcx, %r13
	jbe 	L_expandSeeds_2$21
	movq	328(%rsp), %rax
	shrq	$2, %rax
	shlq	$2, %rax
	jmp 	L_expandSeeds_2$10
L_expandSeeds_2$11:
	movq	%r13, %rbp
	imulq	$24, %rbp, %rdi
	movw	%r13w, %dx
	movq	%r13, 336(%rsp)
	movq	%rax, 288(%rsp)
	movq	296(%rsp), %rax
	movq	320(%rsp), %rbx
	movw	360(%rsp), %r8w
	leaq	32(%rsp), %rcx
	leaq	-984(%rsp), %rsp
	call	L_hashSeed_x4_2$1
L_expandSeeds_2$19:
	leaq	984(%rsp), %rsp
	movq	$0, %rax
	jmp 	L_expandSeeds_2$12
L_expandSeeds_2$13:
	movq	%rax, 344(%rsp)
	movq	336(%rsp), %rbp
	movq	304(%rsp), %rax
	movb	(%rax,%rbp), %al
	cmpb	$1, %al
	jne 	L_expandSeeds_2$14
	movq	336(%rsp), %r13
	shlq	$1, %r13
	incq	%r13
	movq	304(%rsp), %rax
	movb	(%rax,%r13), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_2$18
	movq	344(%rsp), %rdx
	imulq	$2, %rdx, %rdx
	imulq	$32, %rdx, %rdx
	movb	$1, (%rax,%r13)
	imulq	$24, %r13, %rsi
	movq	296(%rsp), %r9
	movb	32(%rsp,%rdx), %dil
	movb	%dil, (%r9,%rsi)
	movb	33(%rsp,%rdx), %dil
	movb	%dil, 1(%r9,%rsi)
	movb	34(%rsp,%rdx), %dil
	movb	%dil, 2(%r9,%rsi)
	movb	35(%rsp,%rdx), %dil
	movb	%dil, 3(%r9,%rsi)
	movb	36(%rsp,%rdx), %dil
	movb	%dil, 4(%r9,%rsi)
	movb	37(%rsp,%rdx), %dil
	movb	%dil, 5(%r9,%rsi)
	movb	38(%rsp,%rdx), %dil
	movb	%dil, 6(%r9,%rsi)
	movb	39(%rsp,%rdx), %dil
	movb	%dil, 7(%r9,%rsi)
	movb	40(%rsp,%rdx), %dil
	movb	%dil, 8(%r9,%rsi)
	movb	41(%rsp,%rdx), %dil
	movb	%dil, 9(%r9,%rsi)
	movb	42(%rsp,%rdx), %dil
	movb	%dil, 10(%r9,%rsi)
	movb	43(%rsp,%rdx), %dil
	movb	%dil, 11(%r9,%rsi)
	movb	44(%rsp,%rdx), %dil
	movb	%dil, 12(%r9,%rsi)
	movb	45(%rsp,%rdx), %dil
	movb	%dil, 13(%r9,%rsi)
	movb	46(%rsp,%rdx), %dil
	movb	%dil, 14(%r9,%rsi)
	movb	47(%rsp,%rdx), %dil
	movb	%dil, 15(%r9,%rsi)
	movb	48(%rsp,%rdx), %dil
	movb	%dil, 16(%r9,%rsi)
	movb	49(%rsp,%rdx), %dil
	movb	%dil, 17(%r9,%rsi)
	movb	50(%rsp,%rdx), %dil
	movb	%dil, 18(%r9,%rsi)
	movb	51(%rsp,%rdx), %dil
	movb	%dil, 19(%r9,%rsi)
	movb	52(%rsp,%rdx), %dil
	movb	%dil, 20(%r9,%rsi)
	movb	53(%rsp,%rdx), %dil
	movb	%dil, 21(%r9,%rsi)
	movb	54(%rsp,%rdx), %dil
	movb	%dil, 22(%r9,%rsi)
	movb	55(%rsp,%rdx), %dl
	movb	%dl, 23(%r9,%rsi)
L_expandSeeds_2$18:
	movq	%rax, 352(%rsp)
	shlq	$1, %rbp
	addq	$2, %rbp
	movq	312(%rsp), %r9
	call	L__exists_2$1
L_expandSeeds_2$17:
	cmpb	$1, %cl
	jne 	L_expandSeeds_2$14
	movq	352(%rsp), %r8
	movb	(%r8,%rbp), %al
	cmpb	$0, %al
	jne 	L_expandSeeds_2$14
	movq	344(%rsp), %rax
	imulq	$2, %rax, %rax
	imulq	$32, %rax, %rax
	addq	$24, %rax
	movb	$1, (%r8,%rbp)
	imulq	$24, %rbp, %rdx
	movq	296(%rsp), %r9
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
	movb	55(%rsp,%rax), %al
	movb	%al, 23(%r9,%rdx)
L_expandSeeds_2$16:
L_expandSeeds_2$15:
L_expandSeeds_2$14:
	movq	344(%rsp), %rax
	incq	%rax
	incq	336(%rsp)
L_expandSeeds_2$12:
	cmpq	$4, %rax
	jb  	L_expandSeeds_2$13
	movq	336(%rsp), %r13
	movq	288(%rsp), %rax
L_expandSeeds_2$10:
	cmpq	%rax, %r13
	jbe 	L_expandSeeds_2$11
	movq	328(%rsp), %rcx
	jmp 	L_expandSeeds_2$2
L_expandSeeds_2$3:
	movq	304(%rsp), %rax
	movb	(%rax,%r13), %al
	cmpb	$1, %al
	jne 	L_expandSeeds_2$4
	movq	%r13, %rax
	imulq	$24, %rax, %rdi
	movw	%r13w, %ax
	movq	%r13, 328(%rsp)
	movq	%rcx, 288(%rsp)
	movq	296(%rsp), %rcx
	movq	320(%rsp), %rdx
	movw	360(%rsp), %r8w
	leaq	32(%rsp), %r9
	leaq	-344(%rsp), %rsp
	call	L_hashSeed_2$1
L_expandSeeds_2$9:
	leaq	344(%rsp), %rsp
	movq	328(%rsp), %r13
	movq	%r13, %rbp
	shlq	$1, %rbp
	incq	%rbp
	movq	304(%rsp), %rax
	movb	(%rax,%rbp), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_2$8
	movb	$1, (%rax,%rbp)
	movq	$0, %rax
	imulq	$24, %rbp, %rdx
	movq	296(%rsp), %r9
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
	movb	55(%rsp,%rax), %al
	movb	%al, 23(%r9,%rdx)
L_expandSeeds_2$8:
	movq	%r13, %rbp
	shlq	$1, %rbp
	addq	$2, %rbp
	movq	312(%rsp), %r9
	call	L__exists_2$1
L_expandSeeds_2$7:
	cmpb	$1, %cl
	jne 	L_expandSeeds_2$4
	movq	304(%rsp), %rax
	movb	(%rax,%rbp), %cl
	cmpb	$0, %cl
	jne 	L_expandSeeds_2$4
	movb	$1, (%rax,%rbp)
	movq	$24, %rax
	imulq	$24, %rbp, %rdx
	movq	296(%rsp), %r9
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
	movb	55(%rsp,%rax), %al
	movb	%al, 23(%r9,%rdx)
L_expandSeeds_2$6:
L_expandSeeds_2$5:
L_expandSeeds_2$4:
	movq	288(%rsp), %rcx
	incq	%r13
L_expandSeeds_2$2:
	cmpq	%rcx, %r13
	jbe 	L_expandSeeds_2$3
	movq	296(%rsp), %rax
	movq	304(%rsp), %r8
	movq	312(%rsp), %rsi
	ret
L_expandSeeds_1$1:
	movq	%rdx, 288(%rsp)
	movq	%r8, 296(%rsp)
	movq	%rsi, 304(%rsp)
	movq	%rbx, 312(%rsp)
	movw	%ax, 360(%rsp)
	movq	$930, %rbp
	decq	%rbp
	cmpq	$0, %rbp
	je  	L_expandSeeds_1$29
	incq	%rbp
	shrq	$1, %rbp
	decq	%rbp
L_expandSeeds_1$29:
	movq	$0, %rcx
	movq	$2, %rax
	cmpq	%rax, %rbp
	jnb 	L_expandSeeds_1$28
	movq	%rbp, %rax
L_expandSeeds_1$28:
	movq	%rbp, 320(%rsp)
	jmp 	L_expandSeeds_1$20
L_expandSeeds_1$21:
	movq	296(%rsp), %r8
	movb	(%r8,%rcx), %dl
	cmpb	$1, %dl
	jne 	L_expandSeeds_1$22
	movq	%rcx, %rbp
	imulq	$24, %rbp, %rdi
	movw	%cx, %dx
	movq	%rcx, 328(%rsp)
	movq	%rax, 336(%rsp)
	movq	288(%rsp), %rax
	movq	312(%rsp), %rbx
	movw	360(%rsp), %r8w
	leaq	32(%rsp), %rcx
	leaq	-376(%rsp), %rsp
	call	L_hashSeed_1$1
L_expandSeeds_1$27:
	leaq	376(%rsp), %rsp
	movq	336(%rsp), %rax
	movq	328(%rsp), %rcx
	movq	%rcx, %rbp
	shlq	$1, %rbp
	incq	%rbp
	movq	296(%rsp), %r8
	movb	(%r8,%rbp), %dl
	cmpb	$0, %dl
	jne 	L_expandSeeds_1$26
	movb	$1, (%r8,%rbp)
	movq	$0, %rdx
	imulq	$24, %rbp, %rsi
	leaq	32(%rsp), %rdi
	movq	288(%rsp), %r9
	movq	(%rdi,%rdx), %r10
	movq	%r10, (%r9,%rsi)
	movq	8(%rdi,%rdx), %r10
	movq	%r10, 8(%r9,%rsi)
	movq	16(%rdi,%rdx), %rdx
	movq	%rdx, 16(%r9,%rsi)
L_expandSeeds_1$26:
	movq	%rcx, %rbp
	shlq	$1, %rbp
	addq	$2, %rbp
	movq	304(%rsp), %rsi
	movb	$0, %dl
	cmpq	$930, %rbp
	jnb 	L_expandSeeds_1$25
	movb	(%rsi,%rbp), %dl
L_expandSeeds_1$25:
	cmpb	$1, %dl
	jne 	L_expandSeeds_1$22
	movq	296(%rsp), %r8
	movb	(%r8,%rbp), %dl
	cmpb	$0, %dl
	jne 	L_expandSeeds_1$22
	movb	$1, (%r8,%rbp)
	movq	$24, %rdx
	imulq	$24, %rbp, %rdi
	leaq	32(%rsp), %r9
	movq	288(%rsp), %r10
	movq	(%r9,%rdx), %r11
	movq	%r11, (%r10,%rdi)
	movq	8(%r9,%rdx), %r11
	movq	%r11, 8(%r10,%rdi)
	movq	16(%r9,%rdx), %rdx
	movq	%rdx, 16(%r10,%rdi)
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
	movq	%rcx, %rbp
	imulq	$24, %rbp, %rdi
	movq	%rcx, 328(%rsp)
	movq	%rax, 336(%rsp)
	movq	%r8, 344(%rsp)
	movq	%rsi, 352(%rsp)
	movq	288(%rsp), %rax
	movq	312(%rsp), %rbx
	movw	360(%rsp), %r8w
	leaq	32(%rsp), %rcx
	leaq	-984(%rsp), %rsp
	call	L_hashSeed_x4_1$1
L_expandSeeds_1$19:
	leaq	984(%rsp), %rsp
	movq	344(%rsp), %r8
	movq	352(%rsp), %rsi
	movq	328(%rsp), %rcx
	movq	336(%rsp), %rax
	movq	$0, %rdx
	jmp 	L_expandSeeds_1$12
L_expandSeeds_1$13:
	movq	296(%rsp), %r8
	movb	(%r8,%rcx), %bl
	cmpb	$1, %bl
	jne 	L_expandSeeds_1$14
	movq	%rcx, %rbp
	shlq	$1, %rbp
	incq	%rbp
	movb	(%r8,%rbp), %sil
	cmpb	$0, %sil
	jne 	L_expandSeeds_1$18
	movq	%rdx, %rdi
	imulq	$2, %rdi, %rdi
	imulq	$32, %rdi, %rsi
	movq	296(%rsp), %r8
	movb	$1, (%r8,%rbp)
	imulq	$24, %rbp, %rdi
	leaq	32(%rsp), %r9
	movq	288(%rsp), %r10
	movq	(%r9,%rsi), %r11
	movq	%r11, (%r10,%rdi)
	movq	8(%r9,%rsi), %r11
	movq	%r11, 8(%r10,%rdi)
	movq	16(%r9,%rsi), %rsi
	movq	%rsi, 16(%r10,%rdi)
L_expandSeeds_1$18:
	movq	%rcx, %rbp
	shlq	$1, %rbp
	addq	$2, %rbp
	movq	304(%rsp), %rsi
	movb	$0, %bl
	cmpq	$930, %rbp
	jnb 	L_expandSeeds_1$17
	movb	(%rsi,%rbp), %bl
L_expandSeeds_1$17:
	cmpb	$1, %bl
	jne 	L_expandSeeds_1$14
	movq	296(%rsp), %r8
	movb	(%r8,%rbp), %bl
	cmpb	$0, %bl
	jne 	L_expandSeeds_1$14
	movq	%rdx, %rdi
	imulq	$2, %rdi, %rdi
	imulq	$32, %rdi, %rdi
	addq	$24, %rdi
	movb	$1, (%r8,%rbp)
	imulq	$24, %rbp, %r9
	leaq	32(%rsp), %r10
	movq	288(%rsp), %r11
	movq	(%r10,%rdi), %rbx
	movq	%rbx, (%r11,%r9)
	movq	8(%r10,%rdi), %rbx
	movq	%rbx, 8(%r11,%r9)
	movq	16(%r10,%rdi), %rdi
	movq	%rdi, 16(%r11,%r9)
L_expandSeeds_1$16:
L_expandSeeds_1$15:
L_expandSeeds_1$14:
	incq	%rdx
	incq	%rcx
L_expandSeeds_1$12:
	cmpq	$4, %rdx
	jb  	L_expandSeeds_1$13
L_expandSeeds_1$10:
	cmpq	%rax, %rcx
	jbe 	L_expandSeeds_1$11
	movq	320(%rsp), %rax
	jmp 	L_expandSeeds_1$2
L_expandSeeds_1$3:
	movq	296(%rsp), %r8
	movb	(%r8,%rcx), %dl
	cmpb	$1, %dl
	jne 	L_expandSeeds_1$4
	movw	%cx, %dx
	movq	%rcx, %rbp
	imulq	$24, %rbp, %rdi
	movq	%rcx, 320(%rsp)
	movq	%rax, 336(%rsp)
	movq	288(%rsp), %rax
	movq	312(%rsp), %rbx
	movw	360(%rsp), %r8w
	leaq	32(%rsp), %rcx
	leaq	-376(%rsp), %rsp
	call	L_hashSeed_1$1
L_expandSeeds_1$9:
	leaq	376(%rsp), %rsp
	movq	320(%rsp), %rcx
	movq	336(%rsp), %rax
	movq	%rcx, %rbp
	shlq	$1, %rbp
	incq	%rbp
	movq	296(%rsp), %r8
	movb	(%r8,%rbp), %dl
	cmpb	$0, %dl
	jne 	L_expandSeeds_1$8
	movb	$1, (%r8,%rbp)
	movq	$0, %rdx
	imulq	$24, %rbp, %rsi
	leaq	32(%rsp), %rdi
	movq	288(%rsp), %r9
	movq	(%rdi,%rdx), %r8
	movq	%r8, (%r9,%rsi)
	movq	8(%rdi,%rdx), %r8
	movq	%r8, 8(%r9,%rsi)
	movq	16(%rdi,%rdx), %rdx
	movq	%rdx, 16(%r9,%rsi)
L_expandSeeds_1$8:
	movq	%rcx, %rbp
	shlq	$1, %rbp
	addq	$2, %rbp
	movq	304(%rsp), %rdx
	movb	$0, %sil
	cmpq	$930, %rbp
	jnb 	L_expandSeeds_1$7
	movb	(%rdx,%rbp), %sil
L_expandSeeds_1$7:
	cmpb	$1, %sil
	jne 	L_expandSeeds_1$4
	movq	296(%rsp), %r8
	movb	(%r8,%rbp), %dl
	cmpb	$0, %dl
	jne 	L_expandSeeds_1$4
	movb	$1, (%r8,%rbp)
	movq	$24, %rdx
	imulq	$24, %rbp, %rsi
	leaq	32(%rsp), %rdi
	movq	288(%rsp), %r9
	movq	(%rdi,%rdx), %r8
	movq	%r8, (%r9,%rsi)
	movq	8(%rdi,%rdx), %r8
	movq	%r8, 8(%r9,%rsi)
	movq	16(%rdi,%rdx), %rdx
	movq	%rdx, 16(%r9,%rsi)
L_expandSeeds_1$6:
L_expandSeeds_1$5:
L_expandSeeds_1$4:
	incq	%rcx
L_expandSeeds_1$2:
	cmpq	%rax, %rcx
	jbe 	L_expandSeeds_1$3
	movq	288(%rsp), %rax
	movq	296(%rsp), %r8
	movq	304(%rsp), %rsi
	ret
L_createTree_3$1:
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$0, %rax
	movq	$930, %rcx
	addq	$-2, %rcx
	jmp 	L_createTree_3$11
L_createTree_3$12:
	vmovdqu	%ymm0, (%r8,%rax)
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
L_createTree_3$11:
	cmpq	%rcx, %rax
	jb  	L_createTree_3$12
	movw	$0, (%r8,%rax)
	movw	$0, (%rsi,%rax)
	movq	$930, %rax
	addq	$-419, %rax
	movq	$930, %rcx
	jmp 	L_createTree_3$9
L_createTree_3$10:
	movb	$1, (%rsi,%rax)
	incq	%rax
L_createTree_3$9:
	cmpq	%rcx, %rax
	jb  	L_createTree_3$10
	movq	$930, %rax
	addq	$-419, %rax
	jmp 	L_createTree_3$2
L_createTree_3$3:
	movq	%rax, %rbp
	shlq	$1, %rbp
	incq	%rbp
	movb	$0, %cl
	cmpq	$930, %rbp
	jnb 	L_createTree_3$8
	movb	(%rsi,%rbp), %cl
L_createTree_3$8:
	cmpb	$1, %cl
	je  	L_createTree_3$4
	incq	%rbp
	movb	$0, %cl
	cmpq	$930, %rbp
	jnb 	L_createTree_3$7
	movb	(%rsi,%rbp), %cl
L_createTree_3$7:
	cmpb	$1, %cl
	jne 	L_createTree_3$5
	movb	$1, (%rsi,%rax)
L_createTree_3$6:
	jmp 	L_createTree_3$5
L_createTree_3$4:
	movb	$1, (%rsi,%rax)
L_createTree_3$5:
	decq	%rax
L_createTree_3$2:
	cmpq	$0, %rax
	jnbe	L_createTree_3$3
	movb	$1, (%rsi)
	ret
L_createTree_2$1:
	movq	$0, %rbp
	movq	$31, %r10
	jmp 	L_createTree_2$11
L_createTree_2$12:
	movb	$0, (%rax,%rbp)
	movb	$0, (%r9,%rbp)
	incq	%rbp
L_createTree_2$11:
	cmpq	%r10, %rbp
	jb  	L_createTree_2$12
	movq	$31, %rbp
	addq	$-16, %rbp
	movq	$31, %r10
	jmp 	L_createTree_2$9
L_createTree_2$10:
	movb	$1, (%r9,%rbp)
	incq	%rbp
L_createTree_2$9:
	cmpq	%r10, %rbp
	jb  	L_createTree_2$10
	movq	$31, %r13
	addq	$-16, %r13
	jmp 	L_createTree_2$2
L_createTree_2$3:
	movq	%r13, %rbp
	shlq	$1, %rbp
	incq	%rbp
	call	L__exists_2$1
L_createTree_2$8:
	cmpb	$1, %cl
	je  	L_createTree_2$4
	incq	%rbp
	call	L__exists_2$1
L_createTree_2$7:
	cmpb	$1, %cl
	jne 	L_createTree_2$5
	movb	$1, (%r9,%r13)
L_createTree_2$6:
	jmp 	L_createTree_2$5
L_createTree_2$4:
	movb	$1, (%r9,%r13)
L_createTree_2$5:
	decq	%r13
L_createTree_2$2:
	cmpq	$0, %r13
	jnbe	L_createTree_2$3
	movb	$1, (%r9)
	ret
L_createTree_1$1:
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$0, %rcx
	movq	$930, %rdx
	addq	$-2, %rdx
	jmp 	L_createTree_1$13
L_createTree_1$14:
	vmovdqu	%ymm0, (%r8,%rcx)
	vmovdqu	%ymm0, (%rsi,%rcx)
	addq	$32, %rcx
L_createTree_1$13:
	cmpq	%rdx, %rcx
	jb  	L_createTree_1$14
	movw	$0, (%r8,%rcx)
	movw	$0, (%rsi,%rcx)
	movq	$0, %rcx
	movq	$22320, %rdx
	addq	$-16, %rdx
	jmp 	L_createTree_1$11
L_createTree_1$12:
	vmovdqu	%ymm0, (%rax,%rcx)
	addq	$32, %rcx
L_createTree_1$11:
	cmpq	%rdx, %rcx
	jb  	L_createTree_1$12
	movq	$0, (%rax,%rcx)
	movq	$0, 8(%rax,%rcx)
	movq	$930, %rax
	addq	$-419, %rax
	movq	$930, %rcx
	jmp 	L_createTree_1$9
L_createTree_1$10:
	movb	$1, (%rsi,%rax)
	incq	%rax
L_createTree_1$9:
	cmpq	%rcx, %rax
	jb  	L_createTree_1$10
	movq	$930, %rax
	addq	$-419, %rax
	jmp 	L_createTree_1$2
L_createTree_1$3:
	movq	%rax, %rbp
	shlq	$1, %rbp
	incq	%rbp
	movb	$0, %cl
	cmpq	$930, %rbp
	jnb 	L_createTree_1$8
	movb	(%rsi,%rbp), %cl
L_createTree_1$8:
	cmpb	$1, %cl
	je  	L_createTree_1$4
	incq	%rbp
	movb	$0, %cl
	cmpq	$930, %rbp
	jnb 	L_createTree_1$7
	movb	(%rsi,%rbp), %cl
L_createTree_1$7:
	cmpb	$1, %cl
	jne 	L_createTree_1$5
	movb	$1, (%rsi,%rax)
L_createTree_1$6:
	jmp 	L_createTree_1$5
L_createTree_1$4:
	movb	$1, (%rsi,%rax)
L_createTree_1$5:
	decq	%rax
L_createTree_1$2:
	cmpq	$0, %rax
	jnbe	L_createTree_1$3
	movb	$1, (%rsi)
	ret
L__isLeafNode_2$1:
	shlq	$1, %rbp
	incq	%rbp
	cmpq	$31, %rbp
	jnbe	L__isLeafNode_2$2
	movb	$0, %cl
	jmp 	L__isLeafNode_2$3
L__isLeafNode_2$2:
	movb	$1, %cl
L__isLeafNode_2$3:
	ret
L__isLeafNode$1:
	movq	%rbp, %r11
	shlq	$1, %r11
	incq	%r11
	cmpq	$930, %r11
	jnbe	L__isLeafNode$2
	movb	$0, %bl
	jmp 	L__isLeafNode$3
L__isLeafNode$2:
	movb	$1, %bl
L__isLeafNode$3:
	ret
L__getSibling_2$1:
	call	L__isLeftChild$1
L__getSibling_2$5:
	cmpb	$1, %cl
	je  	L__getSibling_2$2
	decq	%rbp
	jmp 	L__getSibling_2$3
L__getSibling_2$2:
	incq	%rbp
	cmpq	$31, %rbp
	jb  	L__getSibling_2$3
	movq	$0, %rbp
L__getSibling_2$4:
L__getSibling_2$3:
	ret
L__getSibling$1:
	call	L__isLeftChild$1
L__getSibling$5:
	cmpb	$1, %cl
	je  	L__getSibling$2
	decq	%rbp
	jmp 	L__getSibling$3
L__getSibling$2:
	incq	%rbp
	cmpq	$930, %rbp
	jb  	L__getSibling$3
	movq	$0, %rbp
L__getSibling$4:
L__getSibling$3:
	ret
L__hasSibling_2$1:
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
	incq	%rbp
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
	movb	$0, %cl
	cmpq	$930, %rbp
	jnb 	L__hasSibling$10
	movb	(%r9,%rbp), %cl
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
	incq	%rbp
	movb	$0, %cl
	cmpq	$930, %rbp
	jnb 	L__hasSibling$8
	movb	(%r9,%rbp), %cl
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
	movq	%rbp, %rcx
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
	movb	$0, %bl
	movq	$0, %rsi
	jmp 	L_contains_pathSets_2$2
L_contains_pathSets_2$3:
	movw	(%rcx,%rdi,2), %dx
	movzwq	%dx, %r9
	cmpq	%rbp, %r9
	jne 	L_contains_pathSets_2$4
	movb	$1, %bl
L_contains_pathSets_2$4:
	incq	%rdi
	incq	%rsi
L_contains_pathSets_2$2:
	cmpq	$1, %rsi
	jb  	L_contains_pathSets_2$3
	ret
L_contains_pathSets$1:
	movb	$0, %r14b
	movq	$0, %r11
	jmp 	L_contains_pathSets$2
L_contains_pathSets$3:
	movw	(%rcx,%r12,2), %bx
	movzwq	%bx, %r13
	cmpq	%rbp, %r13
	jne 	L_contains_pathSets$4
	movb	$1, %r14b
L_contains_pathSets$4:
	incq	%r12
	incq	%r11
L_contains_pathSets$2:
	cmpq	$52, %r11
	jb  	L_contains_pathSets$3
	ret
L__hasRightChild_T2$1:
	movq	%rbp, %rdx
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
L__hasRightChild_T1_v2$1:
	movq	%rbp, %rcx
	shlq	$1, %rcx
	addq	$2, %rcx
	cmpq	$930, %rcx
	jb  	L__hasRightChild_T1_v2$2
	movb	$0, %cl
	jmp 	L__hasRightChild_T1_v2$3
L__hasRightChild_T1_v2$2:
	movb	$0, %cl
	cmpq	$929, %rbp
	jnb 	L__hasRightChild_T1_v2$3
	movb	(%r9,%rbp), %cl
L__hasRightChild_T1_v2$4:
L__hasRightChild_T1_v2$3:
	ret
L__exists_22$1:
	movb	$0, %dl
	cmpq	$12989, %rcx
	jnb 	L__exists_22$2
	movb	(%rax,%rcx), %dl
L__exists_22$2:
	ret
L__exists_2$1:
	movb	$0, %cl
	cmpq	$31, %rbp
	jnb 	L__exists_2$2
	movb	(%r9,%rbp), %cl
L__exists_2$2:
	ret
L_commit_v_x4$1:
	movq	%rcx, %rsi
	imulq	$32, %rsi, %rsi
	movq	(%rax,%rsi), %rdi
	movq	%rdi, 856(%rsp)
	movq	8(%rax,%rsi), %rdi
	movq	%rdi, 864(%rsp)
	movq	16(%rax,%rsi), %rdi
	movq	%rdi, 872(%rsp)
	movq	24(%rax,%rsi), %rdi
	movq	%rdi, 880(%rsp)
	movq	32(%rax,%rsi), %rdi
	movq	%rdi, 888(%rsp)
	movq	40(%rax,%rsi), %rdi
	movq	%rdi, 896(%rsp)
	movq	48(%rax,%rsi), %rdi
	movq	%rdi, 904(%rsp)
	movq	56(%rax,%rsi), %rdi
	movq	%rdi, 912(%rsp)
	movq	64(%rax,%rsi), %rdi
	movq	%rdi, 920(%rsp)
	movq	72(%rax,%rsi), %rdi
	movq	%rdi, 928(%rsp)
	movq	80(%rax,%rsi), %rdi
	movq	%rdi, 936(%rsp)
	movq	88(%rax,%rsi), %rdi
	movq	%rdi, 944(%rsp)
	movq	96(%rax,%rsi), %rdi
	movq	%rdi, 952(%rsp)
	movq	104(%rax,%rsi), %rdi
	movq	%rdi, 960(%rsp)
	movq	112(%rax,%rsi), %rdi
	movq	%rdi, 968(%rsp)
	movq	120(%rax,%rsi), %rax
	movq	%rax, 976(%rsp)
	movq	%rcx, %rsi
	imulq	$1536, %rsi, %rsi
	movq	(%rbp,%rsi), %rax
	movq	%rax, 1176(%rsp)
	movq	8(%rbp,%rsi), %rax
	movq	%rax, 1184(%rsp)
	movq	16(%rbp,%rsi), %rax
	movq	%rax, 1192(%rsp)
	movq	24(%rbp,%rsi), %rax
	movq	%rax, 1200(%rsp)
	movq	32(%rbp,%rsi), %rax
	movq	%rax, 1208(%rsp)
	movq	40(%rbp,%rsi), %rax
	movq	%rax, 1216(%rsp)
	movq	48(%rbp,%rsi), %rax
	movq	%rax, 1224(%rsp)
	movq	56(%rbp,%rsi), %rax
	movq	%rax, 1232(%rsp)
	movq	64(%rbp,%rsi), %rax
	movq	%rax, 1240(%rsp)
	movq	72(%rbp,%rsi), %rax
	movq	%rax, 1248(%rsp)
	movq	80(%rbp,%rsi), %rax
	movq	%rax, 1256(%rsp)
	movq	88(%rbp,%rsi), %rax
	movq	%rax, 1264(%rsp)
	movq	96(%rbp,%rsi), %rax
	movq	%rax, 1272(%rsp)
	movq	104(%rbp,%rsi), %rax
	movq	%rax, 1280(%rsp)
	movq	112(%rbp,%rsi), %rax
	movq	%rax, 1288(%rsp)
	movq	120(%rbp,%rsi), %rax
	movq	%rax, 1296(%rsp)
	movq	128(%rbp,%rsi), %rax
	movq	%rax, 1304(%rsp)
	movq	136(%rbp,%rsi), %rax
	movq	%rax, 1312(%rsp)
	movq	144(%rbp,%rsi), %rax
	movq	%rax, 1320(%rsp)
	movq	152(%rbp,%rsi), %rax
	movq	%rax, 1328(%rsp)
	movq	160(%rbp,%rsi), %rax
	movq	%rax, 1336(%rsp)
	movq	168(%rbp,%rsi), %rax
	movq	%rax, 1344(%rsp)
	movq	176(%rbp,%rsi), %rax
	movq	%rax, 1352(%rsp)
	movq	184(%rbp,%rsi), %rax
	movq	%rax, 1360(%rsp)
	movq	192(%rbp,%rsi), %rax
	movq	%rax, 1368(%rsp)
	movq	200(%rbp,%rsi), %rax
	movq	%rax, 1376(%rsp)
	movq	208(%rbp,%rsi), %rax
	movq	%rax, 1384(%rsp)
	movq	216(%rbp,%rsi), %rax
	movq	%rax, 1392(%rsp)
	movq	224(%rbp,%rsi), %rax
	movq	%rax, 1400(%rsp)
	movq	232(%rbp,%rsi), %rax
	movq	%rax, 1408(%rsp)
	movq	240(%rbp,%rsi), %rax
	movq	%rax, 1416(%rsp)
	movq	248(%rbp,%rsi), %rax
	movq	%rax, 1424(%rsp)
	movq	256(%rbp,%rsi), %rax
	movq	%rax, 1432(%rsp)
	movq	264(%rbp,%rsi), %rax
	movq	%rax, 1440(%rsp)
	movq	272(%rbp,%rsi), %rax
	movq	%rax, 1448(%rsp)
	movq	280(%rbp,%rsi), %rax
	movq	%rax, 1456(%rsp)
	movq	288(%rbp,%rsi), %rax
	movq	%rax, 1464(%rsp)
	movq	296(%rbp,%rsi), %rax
	movq	%rax, 1472(%rsp)
	movq	304(%rbp,%rsi), %rax
	movq	%rax, 1480(%rsp)
	movq	312(%rbp,%rsi), %rax
	movq	%rax, 1488(%rsp)
	movq	320(%rbp,%rsi), %rax
	movq	%rax, 1496(%rsp)
	movq	328(%rbp,%rsi), %rax
	movq	%rax, 1504(%rsp)
	movq	336(%rbp,%rsi), %rax
	movq	%rax, 1512(%rsp)
	movq	344(%rbp,%rsi), %rax
	movq	%rax, 1520(%rsp)
	movq	352(%rbp,%rsi), %rax
	movq	%rax, 1528(%rsp)
	movq	360(%rbp,%rsi), %rax
	movq	%rax, 1536(%rsp)
	movq	368(%rbp,%rsi), %rax
	movq	%rax, 1544(%rsp)
	movq	376(%rbp,%rsi), %rax
	movq	%rax, 1552(%rsp)
	movq	384(%rbp,%rsi), %rax
	movq	%rax, 1560(%rsp)
	movq	392(%rbp,%rsi), %rax
	movq	%rax, 1568(%rsp)
	movq	400(%rbp,%rsi), %rax
	movq	%rax, 1576(%rsp)
	movq	408(%rbp,%rsi), %rax
	movq	%rax, 1584(%rsp)
	movq	416(%rbp,%rsi), %rax
	movq	%rax, 1592(%rsp)
	movq	424(%rbp,%rsi), %rax
	movq	%rax, 1600(%rsp)
	movq	432(%rbp,%rsi), %rax
	movq	%rax, 1608(%rsp)
	movq	440(%rbp,%rsi), %rax
	movq	%rax, 1616(%rsp)
	movq	448(%rbp,%rsi), %rax
	movq	%rax, 1624(%rsp)
	movq	456(%rbp,%rsi), %rax
	movq	%rax, 1632(%rsp)
	movq	464(%rbp,%rsi), %rax
	movq	%rax, 1640(%rsp)
	movq	472(%rbp,%rsi), %rax
	movq	%rax, 1648(%rsp)
	movq	480(%rbp,%rsi), %rax
	movq	%rax, 1656(%rsp)
	movq	488(%rbp,%rsi), %rax
	movq	%rax, 1664(%rsp)
	movq	496(%rbp,%rsi), %rax
	movq	%rax, 1672(%rsp)
	movq	504(%rbp,%rsi), %rax
	movq	%rax, 1680(%rsp)
	movq	512(%rbp,%rsi), %rax
	movq	%rax, 1688(%rsp)
	movq	520(%rbp,%rsi), %rax
	movq	%rax, 1696(%rsp)
	movq	528(%rbp,%rsi), %rax
	movq	%rax, 1704(%rsp)
	movq	536(%rbp,%rsi), %rax
	movq	%rax, 1712(%rsp)
	movq	544(%rbp,%rsi), %rax
	movq	%rax, 1720(%rsp)
	movq	552(%rbp,%rsi), %rax
	movq	%rax, 1728(%rsp)
	movq	560(%rbp,%rsi), %rax
	movq	%rax, 1736(%rsp)
	movq	568(%rbp,%rsi), %rax
	movq	%rax, 1744(%rsp)
	movq	576(%rbp,%rsi), %rax
	movq	%rax, 1752(%rsp)
	movq	584(%rbp,%rsi), %rax
	movq	%rax, 1760(%rsp)
	movq	592(%rbp,%rsi), %rax
	movq	%rax, 1768(%rsp)
	movq	600(%rbp,%rsi), %rax
	movq	%rax, 1776(%rsp)
	movq	608(%rbp,%rsi), %rax
	movq	%rax, 1784(%rsp)
	movq	616(%rbp,%rsi), %rax
	movq	%rax, 1792(%rsp)
	movq	624(%rbp,%rsi), %rax
	movq	%rax, 1800(%rsp)
	movq	632(%rbp,%rsi), %rax
	movq	%rax, 1808(%rsp)
	movq	640(%rbp,%rsi), %rax
	movq	%rax, 1816(%rsp)
	movq	648(%rbp,%rsi), %rax
	movq	%rax, 1824(%rsp)
	movq	656(%rbp,%rsi), %rax
	movq	%rax, 1832(%rsp)
	movq	664(%rbp,%rsi), %rax
	movq	%rax, 1840(%rsp)
	movq	672(%rbp,%rsi), %rax
	movq	%rax, 1848(%rsp)
	movq	680(%rbp,%rsi), %rax
	movq	%rax, 1856(%rsp)
	movq	688(%rbp,%rsi), %rax
	movq	%rax, 1864(%rsp)
	movq	696(%rbp,%rsi), %rax
	movq	%rax, 1872(%rsp)
	movq	704(%rbp,%rsi), %rax
	movq	%rax, 1880(%rsp)
	movq	712(%rbp,%rsi), %rax
	movq	%rax, 1888(%rsp)
	movq	720(%rbp,%rsi), %rax
	movq	%rax, 1896(%rsp)
	movq	728(%rbp,%rsi), %rax
	movq	%rax, 1904(%rsp)
	movq	736(%rbp,%rsi), %rax
	movq	%rax, 1912(%rsp)
	movq	744(%rbp,%rsi), %rax
	movq	%rax, 1920(%rsp)
	movq	752(%rbp,%rsi), %rax
	movq	%rax, 1928(%rsp)
	movq	760(%rbp,%rsi), %rax
	movq	%rax, 1936(%rsp)
	movq	768(%rbp,%rsi), %rax
	movq	%rax, 1944(%rsp)
	movq	776(%rbp,%rsi), %rax
	movq	%rax, 1952(%rsp)
	movq	784(%rbp,%rsi), %rax
	movq	%rax, 1960(%rsp)
	movq	792(%rbp,%rsi), %rax
	movq	%rax, 1968(%rsp)
	movq	800(%rbp,%rsi), %rax
	movq	%rax, 1976(%rsp)
	movq	808(%rbp,%rsi), %rax
	movq	%rax, 1984(%rsp)
	movq	816(%rbp,%rsi), %rax
	movq	%rax, 1992(%rsp)
	movq	824(%rbp,%rsi), %rax
	movq	%rax, 2000(%rsp)
	movq	832(%rbp,%rsi), %rax
	movq	%rax, 2008(%rsp)
	movq	840(%rbp,%rsi), %rax
	movq	%rax, 2016(%rsp)
	movq	848(%rbp,%rsi), %rax
	movq	%rax, 2024(%rsp)
	movq	856(%rbp,%rsi), %rax
	movq	%rax, 2032(%rsp)
	movq	864(%rbp,%rsi), %rax
	movq	%rax, 2040(%rsp)
	movq	872(%rbp,%rsi), %rax
	movq	%rax, 2048(%rsp)
	movq	880(%rbp,%rsi), %rax
	movq	%rax, 2056(%rsp)
	movq	888(%rbp,%rsi), %rax
	movq	%rax, 2064(%rsp)
	movq	896(%rbp,%rsi), %rax
	movq	%rax, 2072(%rsp)
	movq	904(%rbp,%rsi), %rax
	movq	%rax, 2080(%rsp)
	movq	912(%rbp,%rsi), %rax
	movq	%rax, 2088(%rsp)
	movq	920(%rbp,%rsi), %rax
	movq	%rax, 2096(%rsp)
	movq	928(%rbp,%rsi), %rax
	movq	%rax, 2104(%rsp)
	movq	936(%rbp,%rsi), %rax
	movq	%rax, 2112(%rsp)
	movq	944(%rbp,%rsi), %rax
	movq	%rax, 2120(%rsp)
	movq	952(%rbp,%rsi), %rax
	movq	%rax, 2128(%rsp)
	movq	960(%rbp,%rsi), %rax
	movq	%rax, 2136(%rsp)
	movq	968(%rbp,%rsi), %rax
	movq	%rax, 2144(%rsp)
	movq	976(%rbp,%rsi), %rax
	movq	%rax, 2152(%rsp)
	movq	984(%rbp,%rsi), %rax
	movq	%rax, 2160(%rsp)
	movq	992(%rbp,%rsi), %rax
	movq	%rax, 2168(%rsp)
	movq	1000(%rbp,%rsi), %rax
	movq	%rax, 2176(%rsp)
	movq	1008(%rbp,%rsi), %rax
	movq	%rax, 2184(%rsp)
	movq	1016(%rbp,%rsi), %rax
	movq	%rax, 2192(%rsp)
	movq	1024(%rbp,%rsi), %rax
	movq	%rax, 2200(%rsp)
	movq	1032(%rbp,%rsi), %rax
	movq	%rax, 2208(%rsp)
	movq	1040(%rbp,%rsi), %rax
	movq	%rax, 2216(%rsp)
	movq	1048(%rbp,%rsi), %rax
	movq	%rax, 2224(%rsp)
	movq	1056(%rbp,%rsi), %rax
	movq	%rax, 2232(%rsp)
	movq	1064(%rbp,%rsi), %rax
	movq	%rax, 2240(%rsp)
	movq	1072(%rbp,%rsi), %rax
	movq	%rax, 2248(%rsp)
	movq	1080(%rbp,%rsi), %rax
	movq	%rax, 2256(%rsp)
	movq	1088(%rbp,%rsi), %rax
	movq	%rax, 2264(%rsp)
	movq	1096(%rbp,%rsi), %rax
	movq	%rax, 2272(%rsp)
	movq	1104(%rbp,%rsi), %rax
	movq	%rax, 2280(%rsp)
	movq	1112(%rbp,%rsi), %rax
	movq	%rax, 2288(%rsp)
	movq	1120(%rbp,%rsi), %rax
	movq	%rax, 2296(%rsp)
	movq	1128(%rbp,%rsi), %rax
	movq	%rax, 2304(%rsp)
	movq	1136(%rbp,%rsi), %rax
	movq	%rax, 2312(%rsp)
	movq	1144(%rbp,%rsi), %rax
	movq	%rax, 2320(%rsp)
	movq	1152(%rbp,%rsi), %rax
	movq	%rax, 2328(%rsp)
	movq	1160(%rbp,%rsi), %rax
	movq	%rax, 2336(%rsp)
	movq	1168(%rbp,%rsi), %rax
	movq	%rax, 2344(%rsp)
	movq	1176(%rbp,%rsi), %rax
	movq	%rax, 2352(%rsp)
	movq	1184(%rbp,%rsi), %rax
	movq	%rax, 2360(%rsp)
	movq	1192(%rbp,%rsi), %rax
	movq	%rax, 2368(%rsp)
	movq	1200(%rbp,%rsi), %rax
	movq	%rax, 2376(%rsp)
	movq	1208(%rbp,%rsi), %rax
	movq	%rax, 2384(%rsp)
	movq	1216(%rbp,%rsi), %rax
	movq	%rax, 2392(%rsp)
	movq	1224(%rbp,%rsi), %rax
	movq	%rax, 2400(%rsp)
	movq	1232(%rbp,%rsi), %rax
	movq	%rax, 2408(%rsp)
	movq	1240(%rbp,%rsi), %rax
	movq	%rax, 2416(%rsp)
	movq	1248(%rbp,%rsi), %rax
	movq	%rax, 2424(%rsp)
	movq	1256(%rbp,%rsi), %rax
	movq	%rax, 2432(%rsp)
	movq	1264(%rbp,%rsi), %rax
	movq	%rax, 2440(%rsp)
	movq	1272(%rbp,%rsi), %rax
	movq	%rax, 2448(%rsp)
	movq	1280(%rbp,%rsi), %rax
	movq	%rax, 2456(%rsp)
	movq	1288(%rbp,%rsi), %rax
	movq	%rax, 2464(%rsp)
	movq	1296(%rbp,%rsi), %rax
	movq	%rax, 2472(%rsp)
	movq	1304(%rbp,%rsi), %rax
	movq	%rax, 2480(%rsp)
	movq	1312(%rbp,%rsi), %rax
	movq	%rax, 2488(%rsp)
	movq	1320(%rbp,%rsi), %rax
	movq	%rax, 2496(%rsp)
	movq	1328(%rbp,%rsi), %rax
	movq	%rax, 2504(%rsp)
	movq	1336(%rbp,%rsi), %rax
	movq	%rax, 2512(%rsp)
	movq	1344(%rbp,%rsi), %rax
	movq	%rax, 2520(%rsp)
	movq	1352(%rbp,%rsi), %rax
	movq	%rax, 2528(%rsp)
	movq	1360(%rbp,%rsi), %rax
	movq	%rax, 2536(%rsp)
	movq	1368(%rbp,%rsi), %rax
	movq	%rax, 2544(%rsp)
	movq	1376(%rbp,%rsi), %rax
	movq	%rax, 2552(%rsp)
	movq	1384(%rbp,%rsi), %rax
	movq	%rax, 2560(%rsp)
	movq	1392(%rbp,%rsi), %rax
	movq	%rax, 2568(%rsp)
	movq	1400(%rbp,%rsi), %rax
	movq	%rax, 2576(%rsp)
	movq	1408(%rbp,%rsi), %rax
	movq	%rax, 2584(%rsp)
	movq	1416(%rbp,%rsi), %rax
	movq	%rax, 2592(%rsp)
	movq	1424(%rbp,%rsi), %rax
	movq	%rax, 2600(%rsp)
	movq	1432(%rbp,%rsi), %rax
	movq	%rax, 2608(%rsp)
	movq	1440(%rbp,%rsi), %rax
	movq	%rax, 2616(%rsp)
	movq	1448(%rbp,%rsi), %rax
	movq	%rax, 2624(%rsp)
	movq	1456(%rbp,%rsi), %rax
	movq	%rax, 2632(%rsp)
	movq	1464(%rbp,%rsi), %rax
	movq	%rax, 2640(%rsp)
	movq	1472(%rbp,%rsi), %rax
	movq	%rax, 2648(%rsp)
	movq	1480(%rbp,%rsi), %rax
	movq	%rax, 2656(%rsp)
	movq	1488(%rbp,%rsi), %rax
	movq	%rax, 2664(%rsp)
	movq	1496(%rbp,%rsi), %rax
	movq	%rax, 2672(%rsp)
	movq	1504(%rbp,%rsi), %rax
	movq	%rax, 2680(%rsp)
	movq	1512(%rbp,%rsi), %rax
	movq	%rax, 2688(%rsp)
	movq	1520(%rbp,%rsi), %rax
	movq	%rax, 2696(%rsp)
	movq	1528(%rbp,%rsi), %rax
	movq	%rax, 2704(%rsp)
	movq	1536(%rbp,%rsi), %rax
	movq	%rax, 2712(%rsp)
	movq	1544(%rbp,%rsi), %rax
	movq	%rax, 2720(%rsp)
	movq	1552(%rbp,%rsi), %rax
	movq	%rax, 2728(%rsp)
	movq	1560(%rbp,%rsi), %rax
	movq	%rax, 2736(%rsp)
	movq	1568(%rbp,%rsi), %rax
	movq	%rax, 2744(%rsp)
	movq	1576(%rbp,%rsi), %rax
	movq	%rax, 2752(%rsp)
	movq	1584(%rbp,%rsi), %rax
	movq	%rax, 2760(%rsp)
	movq	1592(%rbp,%rsi), %rax
	movq	%rax, 2768(%rsp)
	movq	1600(%rbp,%rsi), %rax
	movq	%rax, 2776(%rsp)
	movq	1608(%rbp,%rsi), %rax
	movq	%rax, 2784(%rsp)
	movq	1616(%rbp,%rsi), %rax
	movq	%rax, 2792(%rsp)
	movq	1624(%rbp,%rsi), %rax
	movq	%rax, 2800(%rsp)
	movq	1632(%rbp,%rsi), %rax
	movq	%rax, 2808(%rsp)
	movq	1640(%rbp,%rsi), %rax
	movq	%rax, 2816(%rsp)
	movq	1648(%rbp,%rsi), %rax
	movq	%rax, 2824(%rsp)
	movq	1656(%rbp,%rsi), %rax
	movq	%rax, 2832(%rsp)
	movq	1664(%rbp,%rsi), %rax
	movq	%rax, 2840(%rsp)
	movq	1672(%rbp,%rsi), %rax
	movq	%rax, 2848(%rsp)
	movq	1680(%rbp,%rsi), %rax
	movq	%rax, 2856(%rsp)
	movq	1688(%rbp,%rsi), %rax
	movq	%rax, 2864(%rsp)
	movq	1696(%rbp,%rsi), %rax
	movq	%rax, 2872(%rsp)
	movq	1704(%rbp,%rsi), %rax
	movq	%rax, 2880(%rsp)
	movq	1712(%rbp,%rsi), %rax
	movq	%rax, 2888(%rsp)
	movq	1720(%rbp,%rsi), %rax
	movq	%rax, 2896(%rsp)
	movq	1728(%rbp,%rsi), %rax
	movq	%rax, 2904(%rsp)
	movq	1736(%rbp,%rsi), %rax
	movq	%rax, 2912(%rsp)
	movq	1744(%rbp,%rsi), %rax
	movq	%rax, 2920(%rsp)
	movq	1752(%rbp,%rsi), %rax
	movq	%rax, 2928(%rsp)
	movq	1760(%rbp,%rsi), %rax
	movq	%rax, 2936(%rsp)
	movq	1768(%rbp,%rsi), %rax
	movq	%rax, 2944(%rsp)
	movq	1776(%rbp,%rsi), %rax
	movq	%rax, 2952(%rsp)
	movq	1784(%rbp,%rsi), %rax
	movq	%rax, 2960(%rsp)
	movq	1792(%rbp,%rsi), %rax
	movq	%rax, 2968(%rsp)
	movq	1800(%rbp,%rsi), %rax
	movq	%rax, 2976(%rsp)
	movq	1808(%rbp,%rsi), %rax
	movq	%rax, 2984(%rsp)
	movq	1816(%rbp,%rsi), %rax
	movq	%rax, 2992(%rsp)
	movq	1824(%rbp,%rsi), %rax
	movq	%rax, 3000(%rsp)
	movq	1832(%rbp,%rsi), %rax
	movq	%rax, 3008(%rsp)
	movq	1840(%rbp,%rsi), %rax
	movq	%rax, 3016(%rsp)
	movq	1848(%rbp,%rsi), %rax
	movq	%rax, 3024(%rsp)
	movq	1856(%rbp,%rsi), %rax
	movq	%rax, 3032(%rsp)
	movq	1864(%rbp,%rsi), %rax
	movq	%rax, 3040(%rsp)
	movq	1872(%rbp,%rsi), %rax
	movq	%rax, 3048(%rsp)
	movq	1880(%rbp,%rsi), %rax
	movq	%rax, 3056(%rsp)
	movq	1888(%rbp,%rsi), %rax
	movq	%rax, 3064(%rsp)
	movq	1896(%rbp,%rsi), %rax
	movq	%rax, 3072(%rsp)
	movq	1904(%rbp,%rsi), %rax
	movq	%rax, 3080(%rsp)
	movq	1912(%rbp,%rsi), %rax
	movq	%rax, 3088(%rsp)
	movq	1920(%rbp,%rsi), %rax
	movq	%rax, 3096(%rsp)
	movq	1928(%rbp,%rsi), %rax
	movq	%rax, 3104(%rsp)
	movq	1936(%rbp,%rsi), %rax
	movq	%rax, 3112(%rsp)
	movq	1944(%rbp,%rsi), %rax
	movq	%rax, 3120(%rsp)
	movq	1952(%rbp,%rsi), %rax
	movq	%rax, 3128(%rsp)
	movq	1960(%rbp,%rsi), %rax
	movq	%rax, 3136(%rsp)
	movq	1968(%rbp,%rsi), %rax
	movq	%rax, 3144(%rsp)
	movq	1976(%rbp,%rsi), %rax
	movq	%rax, 3152(%rsp)
	movq	1984(%rbp,%rsi), %rax
	movq	%rax, 3160(%rsp)
	movq	1992(%rbp,%rsi), %rax
	movq	%rax, 3168(%rsp)
	movq	2000(%rbp,%rsi), %rax
	movq	%rax, 3176(%rsp)
	movq	2008(%rbp,%rsi), %rax
	movq	%rax, 3184(%rsp)
	movq	2016(%rbp,%rsi), %rax
	movq	%rax, 3192(%rsp)
	movq	2024(%rbp,%rsi), %rax
	movq	%rax, 3200(%rsp)
	movq	2032(%rbp,%rsi), %rax
	movq	%rax, 3208(%rsp)
	movq	2040(%rbp,%rsi), %rax
	movq	%rax, 3216(%rsp)
	movq	2048(%rbp,%rsi), %rax
	movq	%rax, 3224(%rsp)
	movq	2056(%rbp,%rsi), %rax
	movq	%rax, 3232(%rsp)
	movq	2064(%rbp,%rsi), %rax
	movq	%rax, 3240(%rsp)
	movq	2072(%rbp,%rsi), %rax
	movq	%rax, 3248(%rsp)
	movq	2080(%rbp,%rsi), %rax
	movq	%rax, 3256(%rsp)
	movq	2088(%rbp,%rsi), %rax
	movq	%rax, 3264(%rsp)
	movq	2096(%rbp,%rsi), %rax
	movq	%rax, 3272(%rsp)
	movq	2104(%rbp,%rsi), %rax
	movq	%rax, 3280(%rsp)
	movq	2112(%rbp,%rsi), %rax
	movq	%rax, 3288(%rsp)
	movq	2120(%rbp,%rsi), %rax
	movq	%rax, 3296(%rsp)
	movq	2128(%rbp,%rsi), %rax
	movq	%rax, 3304(%rsp)
	movq	2136(%rbp,%rsi), %rax
	movq	%rax, 3312(%rsp)
	movq	2144(%rbp,%rsi), %rax
	movq	%rax, 3320(%rsp)
	movq	2152(%rbp,%rsi), %rax
	movq	%rax, 3328(%rsp)
	movq	2160(%rbp,%rsi), %rax
	movq	%rax, 3336(%rsp)
	movq	2168(%rbp,%rsi), %rax
	movq	%rax, 3344(%rsp)
	movq	2176(%rbp,%rsi), %rax
	movq	%rax, 3352(%rsp)
	movq	2184(%rbp,%rsi), %rax
	movq	%rax, 3360(%rsp)
	movq	2192(%rbp,%rsi), %rax
	movq	%rax, 3368(%rsp)
	movq	2200(%rbp,%rsi), %rax
	movq	%rax, 3376(%rsp)
	movq	2208(%rbp,%rsi), %rax
	movq	%rax, 3384(%rsp)
	movq	2216(%rbp,%rsi), %rax
	movq	%rax, 3392(%rsp)
	movq	2224(%rbp,%rsi), %rax
	movq	%rax, 3400(%rsp)
	movq	2232(%rbp,%rsi), %rax
	movq	%rax, 3408(%rsp)
	movq	2240(%rbp,%rsi), %rax
	movq	%rax, 3416(%rsp)
	movq	2248(%rbp,%rsi), %rax
	movq	%rax, 3424(%rsp)
	movq	2256(%rbp,%rsi), %rax
	movq	%rax, 3432(%rsp)
	movq	2264(%rbp,%rsi), %rax
	movq	%rax, 3440(%rsp)
	movq	2272(%rbp,%rsi), %rax
	movq	%rax, 3448(%rsp)
	movq	2280(%rbp,%rsi), %rax
	movq	%rax, 3456(%rsp)
	movq	2288(%rbp,%rsi), %rax
	movq	%rax, 3464(%rsp)
	movq	2296(%rbp,%rsi), %rax
	movq	%rax, 3472(%rsp)
	movq	2304(%rbp,%rsi), %rax
	movq	%rax, 3480(%rsp)
	movq	2312(%rbp,%rsi), %rax
	movq	%rax, 3488(%rsp)
	movq	2320(%rbp,%rsi), %rax
	movq	%rax, 3496(%rsp)
	movq	2328(%rbp,%rsi), %rax
	movq	%rax, 3504(%rsp)
	movq	2336(%rbp,%rsi), %rax
	movq	%rax, 3512(%rsp)
	movq	2344(%rbp,%rsi), %rax
	movq	%rax, 3520(%rsp)
	movq	2352(%rbp,%rsi), %rax
	movq	%rax, 3528(%rsp)
	movq	2360(%rbp,%rsi), %rax
	movq	%rax, 3536(%rsp)
	movq	2368(%rbp,%rsi), %rax
	movq	%rax, 3544(%rsp)
	movq	2376(%rbp,%rsi), %rax
	movq	%rax, 3552(%rsp)
	movq	2384(%rbp,%rsi), %rax
	movq	%rax, 3560(%rsp)
	movq	2392(%rbp,%rsi), %rax
	movq	%rax, 3568(%rsp)
	movq	2400(%rbp,%rsi), %rax
	movq	%rax, 3576(%rsp)
	movq	2408(%rbp,%rsi), %rax
	movq	%rax, 3584(%rsp)
	movq	2416(%rbp,%rsi), %rax
	movq	%rax, 3592(%rsp)
	movq	2424(%rbp,%rsi), %rax
	movq	%rax, 3600(%rsp)
	movq	2432(%rbp,%rsi), %rax
	movq	%rax, 3608(%rsp)
	movq	2440(%rbp,%rsi), %rax
	movq	%rax, 3616(%rsp)
	movq	2448(%rbp,%rsi), %rax
	movq	%rax, 3624(%rsp)
	movq	2456(%rbp,%rsi), %rax
	movq	%rax, 3632(%rsp)
	movq	2464(%rbp,%rsi), %rax
	movq	%rax, 3640(%rsp)
	movq	2472(%rbp,%rsi), %rax
	movq	%rax, 3648(%rsp)
	movq	2480(%rbp,%rsi), %rax
	movq	%rax, 3656(%rsp)
	movq	2488(%rbp,%rsi), %rax
	movq	%rax, 3664(%rsp)
	movq	2496(%rbp,%rsi), %rax
	movq	%rax, 3672(%rsp)
	movq	2504(%rbp,%rsi), %rax
	movq	%rax, 3680(%rsp)
	movq	2512(%rbp,%rsi), %rax
	movq	%rax, 3688(%rsp)
	movq	2520(%rbp,%rsi), %rax
	movq	%rax, 3696(%rsp)
	movq	2528(%rbp,%rsi), %rax
	movq	%rax, 3704(%rsp)
	movq	2536(%rbp,%rsi), %rax
	movq	%rax, 3712(%rsp)
	movq	2544(%rbp,%rsi), %rax
	movq	%rax, 3720(%rsp)
	movq	2552(%rbp,%rsi), %rax
	movq	%rax, 3728(%rsp)
	movq	2560(%rbp,%rsi), %rax
	movq	%rax, 3736(%rsp)
	movq	2568(%rbp,%rsi), %rax
	movq	%rax, 3744(%rsp)
	movq	2576(%rbp,%rsi), %rax
	movq	%rax, 3752(%rsp)
	movq	2584(%rbp,%rsi), %rax
	movq	%rax, 3760(%rsp)
	movq	2592(%rbp,%rsi), %rax
	movq	%rax, 3768(%rsp)
	movq	2600(%rbp,%rsi), %rax
	movq	%rax, 3776(%rsp)
	movq	2608(%rbp,%rsi), %rax
	movq	%rax, 3784(%rsp)
	movq	2616(%rbp,%rsi), %rax
	movq	%rax, 3792(%rsp)
	movq	2624(%rbp,%rsi), %rax
	movq	%rax, 3800(%rsp)
	movq	2632(%rbp,%rsi), %rax
	movq	%rax, 3808(%rsp)
	movq	2640(%rbp,%rsi), %rax
	movq	%rax, 3816(%rsp)
	movq	2648(%rbp,%rsi), %rax
	movq	%rax, 3824(%rsp)
	movq	2656(%rbp,%rsi), %rax
	movq	%rax, 3832(%rsp)
	movq	2664(%rbp,%rsi), %rax
	movq	%rax, 3840(%rsp)
	movq	2672(%rbp,%rsi), %rax
	movq	%rax, 3848(%rsp)
	movq	2680(%rbp,%rsi), %rax
	movq	%rax, 3856(%rsp)
	movq	2688(%rbp,%rsi), %rax
	movq	%rax, 3864(%rsp)
	movq	2696(%rbp,%rsi), %rax
	movq	%rax, 3872(%rsp)
	movq	2704(%rbp,%rsi), %rax
	movq	%rax, 3880(%rsp)
	movq	2712(%rbp,%rsi), %rax
	movq	%rax, 3888(%rsp)
	movq	2720(%rbp,%rsi), %rax
	movq	%rax, 3896(%rsp)
	movq	2728(%rbp,%rsi), %rax
	movq	%rax, 3904(%rsp)
	movq	2736(%rbp,%rsi), %rax
	movq	%rax, 3912(%rsp)
	movq	2744(%rbp,%rsi), %rax
	movq	%rax, 3920(%rsp)
	movq	2752(%rbp,%rsi), %rax
	movq	%rax, 3928(%rsp)
	movq	2760(%rbp,%rsi), %rax
	movq	%rax, 3936(%rsp)
	movq	2768(%rbp,%rsi), %rax
	movq	%rax, 3944(%rsp)
	movq	2776(%rbp,%rsi), %rax
	movq	%rax, 3952(%rsp)
	movq	2784(%rbp,%rsi), %rax
	movq	%rax, 3960(%rsp)
	movq	2792(%rbp,%rsi), %rax
	movq	%rax, 3968(%rsp)
	movq	2800(%rbp,%rsi), %rax
	movq	%rax, 3976(%rsp)
	movq	2808(%rbp,%rsi), %rax
	movq	%rax, 3984(%rsp)
	movq	2816(%rbp,%rsi), %rax
	movq	%rax, 3992(%rsp)
	movq	2824(%rbp,%rsi), %rax
	movq	%rax, 4000(%rsp)
	movq	2832(%rbp,%rsi), %rax
	movq	%rax, 4008(%rsp)
	movq	2840(%rbp,%rsi), %rax
	movq	%rax, 4016(%rsp)
	movq	2848(%rbp,%rsi), %rax
	movq	%rax, 4024(%rsp)
	movq	2856(%rbp,%rsi), %rax
	movq	%rax, 4032(%rsp)
	movq	2864(%rbp,%rsi), %rax
	movq	%rax, 4040(%rsp)
	movq	2872(%rbp,%rsi), %rax
	movq	%rax, 4048(%rsp)
	movq	2880(%rbp,%rsi), %rax
	movq	%rax, 4056(%rsp)
	movq	2888(%rbp,%rsi), %rax
	movq	%rax, 4064(%rsp)
	movq	2896(%rbp,%rsi), %rax
	movq	%rax, 4072(%rsp)
	movq	2904(%rbp,%rsi), %rax
	movq	%rax, 4080(%rsp)
	movq	2912(%rbp,%rsi), %rax
	movq	%rax, 4088(%rsp)
	movq	2920(%rbp,%rsi), %rax
	movq	%rax, 4096(%rsp)
	movq	2928(%rbp,%rsi), %rax
	movq	%rax, 4104(%rsp)
	movq	2936(%rbp,%rsi), %rax
	movq	%rax, 4112(%rsp)
	movq	2944(%rbp,%rsi), %rax
	movq	%rax, 4120(%rsp)
	movq	2952(%rbp,%rsi), %rax
	movq	%rax, 4128(%rsp)
	movq	2960(%rbp,%rsi), %rax
	movq	%rax, 4136(%rsp)
	movq	2968(%rbp,%rsi), %rax
	movq	%rax, 4144(%rsp)
	movq	2976(%rbp,%rsi), %rax
	movq	%rax, 4152(%rsp)
	movq	2984(%rbp,%rsi), %rax
	movq	%rax, 4160(%rsp)
	movq	2992(%rbp,%rsi), %rax
	movq	%rax, 4168(%rsp)
	movq	3000(%rbp,%rsi), %rax
	movq	%rax, 4176(%rsp)
	movq	3008(%rbp,%rsi), %rax
	movq	%rax, 4184(%rsp)
	movq	3016(%rbp,%rsi), %rax
	movq	%rax, 4192(%rsp)
	movq	3024(%rbp,%rsi), %rax
	movq	%rax, 4200(%rsp)
	movq	3032(%rbp,%rsi), %rax
	movq	%rax, 4208(%rsp)
	movq	3040(%rbp,%rsi), %rax
	movq	%rax, 4216(%rsp)
	movq	3048(%rbp,%rsi), %rax
	movq	%rax, 4224(%rsp)
	movq	3056(%rbp,%rsi), %rax
	movq	%rax, 4232(%rsp)
	movq	3064(%rbp,%rsi), %rax
	movq	%rax, 4240(%rsp)
	movq	3072(%rbp,%rsi), %rax
	movq	%rax, 4248(%rsp)
	movq	3080(%rbp,%rsi), %rax
	movq	%rax, 4256(%rsp)
	movq	3088(%rbp,%rsi), %rax
	movq	%rax, 4264(%rsp)
	movq	3096(%rbp,%rsi), %rax
	movq	%rax, 4272(%rsp)
	movq	3104(%rbp,%rsi), %rax
	movq	%rax, 4280(%rsp)
	movq	3112(%rbp,%rsi), %rax
	movq	%rax, 4288(%rsp)
	movq	3120(%rbp,%rsi), %rax
	movq	%rax, 4296(%rsp)
	movq	3128(%rbp,%rsi), %rax
	movq	%rax, 4304(%rsp)
	movq	3136(%rbp,%rsi), %rax
	movq	%rax, 4312(%rsp)
	movq	3144(%rbp,%rsi), %rax
	movq	%rax, 4320(%rsp)
	movq	3152(%rbp,%rsi), %rax
	movq	%rax, 4328(%rsp)
	movq	3160(%rbp,%rsi), %rax
	movq	%rax, 4336(%rsp)
	movq	3168(%rbp,%rsi), %rax
	movq	%rax, 4344(%rsp)
	movq	3176(%rbp,%rsi), %rax
	movq	%rax, 4352(%rsp)
	movq	3184(%rbp,%rsi), %rax
	movq	%rax, 4360(%rsp)
	movq	3192(%rbp,%rsi), %rax
	movq	%rax, 4368(%rsp)
	movq	3200(%rbp,%rsi), %rax
	movq	%rax, 4376(%rsp)
	movq	3208(%rbp,%rsi), %rax
	movq	%rax, 4384(%rsp)
	movq	3216(%rbp,%rsi), %rax
	movq	%rax, 4392(%rsp)
	movq	3224(%rbp,%rsi), %rax
	movq	%rax, 4400(%rsp)
	movq	3232(%rbp,%rsi), %rax
	movq	%rax, 4408(%rsp)
	movq	3240(%rbp,%rsi), %rax
	movq	%rax, 4416(%rsp)
	movq	3248(%rbp,%rsi), %rax
	movq	%rax, 4424(%rsp)
	movq	3256(%rbp,%rsi), %rax
	movq	%rax, 4432(%rsp)
	movq	3264(%rbp,%rsi), %rax
	movq	%rax, 4440(%rsp)
	movq	3272(%rbp,%rsi), %rax
	movq	%rax, 4448(%rsp)
	movq	3280(%rbp,%rsi), %rax
	movq	%rax, 4456(%rsp)
	movq	3288(%rbp,%rsi), %rax
	movq	%rax, 4464(%rsp)
	movq	3296(%rbp,%rsi), %rax
	movq	%rax, 4472(%rsp)
	movq	3304(%rbp,%rsi), %rax
	movq	%rax, 4480(%rsp)
	movq	3312(%rbp,%rsi), %rax
	movq	%rax, 4488(%rsp)
	movq	3320(%rbp,%rsi), %rax
	movq	%rax, 4496(%rsp)
	movq	3328(%rbp,%rsi), %rax
	movq	%rax, 4504(%rsp)
	movq	3336(%rbp,%rsi), %rax
	movq	%rax, 4512(%rsp)
	movq	3344(%rbp,%rsi), %rax
	movq	%rax, 4520(%rsp)
	movq	3352(%rbp,%rsi), %rax
	movq	%rax, 4528(%rsp)
	movq	3360(%rbp,%rsi), %rax
	movq	%rax, 4536(%rsp)
	movq	3368(%rbp,%rsi), %rax
	movq	%rax, 4544(%rsp)
	movq	3376(%rbp,%rsi), %rax
	movq	%rax, 4552(%rsp)
	movq	3384(%rbp,%rsi), %rax
	movq	%rax, 4560(%rsp)
	movq	3392(%rbp,%rsi), %rax
	movq	%rax, 4568(%rsp)
	movq	3400(%rbp,%rsi), %rax
	movq	%rax, 4576(%rsp)
	movq	3408(%rbp,%rsi), %rax
	movq	%rax, 4584(%rsp)
	movq	3416(%rbp,%rsi), %rax
	movq	%rax, 4592(%rsp)
	movq	3424(%rbp,%rsi), %rax
	movq	%rax, 4600(%rsp)
	movq	3432(%rbp,%rsi), %rax
	movq	%rax, 4608(%rsp)
	movq	3440(%rbp,%rsi), %rax
	movq	%rax, 4616(%rsp)
	movq	3448(%rbp,%rsi), %rax
	movq	%rax, 4624(%rsp)
	movq	3456(%rbp,%rsi), %rax
	movq	%rax, 4632(%rsp)
	movq	3464(%rbp,%rsi), %rax
	movq	%rax, 4640(%rsp)
	movq	3472(%rbp,%rsi), %rax
	movq	%rax, 4648(%rsp)
	movq	3480(%rbp,%rsi), %rax
	movq	%rax, 4656(%rsp)
	movq	3488(%rbp,%rsi), %rax
	movq	%rax, 4664(%rsp)
	movq	3496(%rbp,%rsi), %rax
	movq	%rax, 4672(%rsp)
	movq	3504(%rbp,%rsi), %rax
	movq	%rax, 4680(%rsp)
	movq	3512(%rbp,%rsi), %rax
	movq	%rax, 4688(%rsp)
	movq	3520(%rbp,%rsi), %rax
	movq	%rax, 4696(%rsp)
	movq	3528(%rbp,%rsi), %rax
	movq	%rax, 4704(%rsp)
	movq	3536(%rbp,%rsi), %rax
	movq	%rax, 4712(%rsp)
	movq	3544(%rbp,%rsi), %rax
	movq	%rax, 4720(%rsp)
	movq	3552(%rbp,%rsi), %rax
	movq	%rax, 4728(%rsp)
	movq	3560(%rbp,%rsi), %rax
	movq	%rax, 4736(%rsp)
	movq	3568(%rbp,%rsi), %rax
	movq	%rax, 4744(%rsp)
	movq	3576(%rbp,%rsi), %rax
	movq	%rax, 4752(%rsp)
	movq	3584(%rbp,%rsi), %rax
	movq	%rax, 4760(%rsp)
	movq	3592(%rbp,%rsi), %rax
	movq	%rax, 4768(%rsp)
	movq	3600(%rbp,%rsi), %rax
	movq	%rax, 4776(%rsp)
	movq	3608(%rbp,%rsi), %rax
	movq	%rax, 4784(%rsp)
	movq	3616(%rbp,%rsi), %rax
	movq	%rax, 4792(%rsp)
	movq	3624(%rbp,%rsi), %rax
	movq	%rax, 4800(%rsp)
	movq	3632(%rbp,%rsi), %rax
	movq	%rax, 4808(%rsp)
	movq	3640(%rbp,%rsi), %rax
	movq	%rax, 4816(%rsp)
	movq	3648(%rbp,%rsi), %rax
	movq	%rax, 4824(%rsp)
	movq	3656(%rbp,%rsi), %rax
	movq	%rax, 4832(%rsp)
	movq	3664(%rbp,%rsi), %rax
	movq	%rax, 4840(%rsp)
	movq	3672(%rbp,%rsi), %rax
	movq	%rax, 4848(%rsp)
	movq	3680(%rbp,%rsi), %rax
	movq	%rax, 4856(%rsp)
	movq	3688(%rbp,%rsi), %rax
	movq	%rax, 4864(%rsp)
	movq	3696(%rbp,%rsi), %rax
	movq	%rax, 4872(%rsp)
	movq	3704(%rbp,%rsi), %rax
	movq	%rax, 4880(%rsp)
	movq	3712(%rbp,%rsi), %rax
	movq	%rax, 4888(%rsp)
	movq	3720(%rbp,%rsi), %rax
	movq	%rax, 4896(%rsp)
	movq	3728(%rbp,%rsi), %rax
	movq	%rax, 4904(%rsp)
	movq	3736(%rbp,%rsi), %rax
	movq	%rax, 4912(%rsp)
	movq	3744(%rbp,%rsi), %rax
	movq	%rax, 4920(%rsp)
	movq	3752(%rbp,%rsi), %rax
	movq	%rax, 4928(%rsp)
	movq	3760(%rbp,%rsi), %rax
	movq	%rax, 4936(%rsp)
	movq	3768(%rbp,%rsi), %rax
	movq	%rax, 4944(%rsp)
	movq	3776(%rbp,%rsi), %rax
	movq	%rax, 4952(%rsp)
	movq	3784(%rbp,%rsi), %rax
	movq	%rax, 4960(%rsp)
	movq	3792(%rbp,%rsi), %rax
	movq	%rax, 4968(%rsp)
	movq	3800(%rbp,%rsi), %rax
	movq	%rax, 4976(%rsp)
	movq	3808(%rbp,%rsi), %rax
	movq	%rax, 4984(%rsp)
	movq	3816(%rbp,%rsi), %rax
	movq	%rax, 4992(%rsp)
	movq	3824(%rbp,%rsi), %rax
	movq	%rax, 5000(%rsp)
	movq	3832(%rbp,%rsi), %rax
	movq	%rax, 5008(%rsp)
	movq	3840(%rbp,%rsi), %rax
	movq	%rax, 5016(%rsp)
	movq	3848(%rbp,%rsi), %rax
	movq	%rax, 5024(%rsp)
	movq	3856(%rbp,%rsi), %rax
	movq	%rax, 5032(%rsp)
	movq	3864(%rbp,%rsi), %rax
	movq	%rax, 5040(%rsp)
	movq	3872(%rbp,%rsi), %rax
	movq	%rax, 5048(%rsp)
	movq	3880(%rbp,%rsi), %rax
	movq	%rax, 5056(%rsp)
	movq	3888(%rbp,%rsi), %rax
	movq	%rax, 5064(%rsp)
	movq	3896(%rbp,%rsi), %rax
	movq	%rax, 5072(%rsp)
	movq	3904(%rbp,%rsi), %rax
	movq	%rax, 5080(%rsp)
	movq	3912(%rbp,%rsi), %rax
	movq	%rax, 5088(%rsp)
	movq	3920(%rbp,%rsi), %rax
	movq	%rax, 5096(%rsp)
	movq	3928(%rbp,%rsi), %rax
	movq	%rax, 5104(%rsp)
	movq	3936(%rbp,%rsi), %rax
	movq	%rax, 5112(%rsp)
	movq	3944(%rbp,%rsi), %rax
	movq	%rax, 5120(%rsp)
	movq	3952(%rbp,%rsi), %rax
	movq	%rax, 5128(%rsp)
	movq	3960(%rbp,%rsi), %rax
	movq	%rax, 5136(%rsp)
	movq	3968(%rbp,%rsi), %rax
	movq	%rax, 5144(%rsp)
	movq	3976(%rbp,%rsi), %rax
	movq	%rax, 5152(%rsp)
	movq	3984(%rbp,%rsi), %rax
	movq	%rax, 5160(%rsp)
	movq	3992(%rbp,%rsi), %rax
	movq	%rax, 5168(%rsp)
	movq	4000(%rbp,%rsi), %rax
	movq	%rax, 5176(%rsp)
	movq	4008(%rbp,%rsi), %rax
	movq	%rax, 5184(%rsp)
	movq	4016(%rbp,%rsi), %rax
	movq	%rax, 5192(%rsp)
	movq	4024(%rbp,%rsi), %rax
	movq	%rax, 5200(%rsp)
	movq	4032(%rbp,%rsi), %rax
	movq	%rax, 5208(%rsp)
	movq	4040(%rbp,%rsi), %rax
	movq	%rax, 5216(%rsp)
	movq	4048(%rbp,%rsi), %rax
	movq	%rax, 5224(%rsp)
	movq	4056(%rbp,%rsi), %rax
	movq	%rax, 5232(%rsp)
	movq	4064(%rbp,%rsi), %rax
	movq	%rax, 5240(%rsp)
	movq	4072(%rbp,%rsi), %rax
	movq	%rax, 5248(%rsp)
	movq	4080(%rbp,%rsi), %rax
	movq	%rax, 5256(%rsp)
	movq	4088(%rbp,%rsi), %rax
	movq	%rax, 5264(%rsp)
	movq	4096(%rbp,%rsi), %rax
	movq	%rax, 5272(%rsp)
	movq	4104(%rbp,%rsi), %rax
	movq	%rax, 5280(%rsp)
	movq	4112(%rbp,%rsi), %rax
	movq	%rax, 5288(%rsp)
	movq	4120(%rbp,%rsi), %rax
	movq	%rax, 5296(%rsp)
	movq	4128(%rbp,%rsi), %rax
	movq	%rax, 5304(%rsp)
	movq	4136(%rbp,%rsi), %rax
	movq	%rax, 5312(%rsp)
	movq	4144(%rbp,%rsi), %rax
	movq	%rax, 5320(%rsp)
	movq	4152(%rbp,%rsi), %rax
	movq	%rax, 5328(%rsp)
	movq	4160(%rbp,%rsi), %rax
	movq	%rax, 5336(%rsp)
	movq	4168(%rbp,%rsi), %rax
	movq	%rax, 5344(%rsp)
	movq	4176(%rbp,%rsi), %rax
	movq	%rax, 5352(%rsp)
	movq	4184(%rbp,%rsi), %rax
	movq	%rax, 5360(%rsp)
	movq	4192(%rbp,%rsi), %rax
	movq	%rax, 5368(%rsp)
	movq	4200(%rbp,%rsi), %rax
	movq	%rax, 5376(%rsp)
	movq	4208(%rbp,%rsi), %rax
	movq	%rax, 5384(%rsp)
	movq	4216(%rbp,%rsi), %rax
	movq	%rax, 5392(%rsp)
	movq	4224(%rbp,%rsi), %rax
	movq	%rax, 5400(%rsp)
	movq	4232(%rbp,%rsi), %rax
	movq	%rax, 5408(%rsp)
	movq	4240(%rbp,%rsi), %rax
	movq	%rax, 5416(%rsp)
	movq	4248(%rbp,%rsi), %rax
	movq	%rax, 5424(%rsp)
	movq	4256(%rbp,%rsi), %rax
	movq	%rax, 5432(%rsp)
	movq	4264(%rbp,%rsi), %rax
	movq	%rax, 5440(%rsp)
	movq	4272(%rbp,%rsi), %rax
	movq	%rax, 5448(%rsp)
	movq	4280(%rbp,%rsi), %rax
	movq	%rax, 5456(%rsp)
	movq	4288(%rbp,%rsi), %rax
	movq	%rax, 5464(%rsp)
	movq	4296(%rbp,%rsi), %rax
	movq	%rax, 5472(%rsp)
	movq	4304(%rbp,%rsi), %rax
	movq	%rax, 5480(%rsp)
	movq	4312(%rbp,%rsi), %rax
	movq	%rax, 5488(%rsp)
	movq	4320(%rbp,%rsi), %rax
	movq	%rax, 5496(%rsp)
	movq	4328(%rbp,%rsi), %rax
	movq	%rax, 5504(%rsp)
	movq	4336(%rbp,%rsi), %rax
	movq	%rax, 5512(%rsp)
	movq	4344(%rbp,%rsi), %rax
	movq	%rax, 5520(%rsp)
	movq	4352(%rbp,%rsi), %rax
	movq	%rax, 5528(%rsp)
	movq	4360(%rbp,%rsi), %rax
	movq	%rax, 5536(%rsp)
	movq	4368(%rbp,%rsi), %rax
	movq	%rax, 5544(%rsp)
	movq	4376(%rbp,%rsi), %rax
	movq	%rax, 5552(%rsp)
	movq	4384(%rbp,%rsi), %rax
	movq	%rax, 5560(%rsp)
	movq	4392(%rbp,%rsi), %rax
	movq	%rax, 5568(%rsp)
	movq	4400(%rbp,%rsi), %rax
	movq	%rax, 5576(%rsp)
	movq	4408(%rbp,%rsi), %rax
	movq	%rax, 5584(%rsp)
	movq	4416(%rbp,%rsi), %rax
	movq	%rax, 5592(%rsp)
	movq	4424(%rbp,%rsi), %rax
	movq	%rax, 5600(%rsp)
	movq	4432(%rbp,%rsi), %rax
	movq	%rax, 5608(%rsp)
	movq	4440(%rbp,%rsi), %rax
	movq	%rax, 5616(%rsp)
	movq	4448(%rbp,%rsi), %rax
	movq	%rax, 5624(%rsp)
	movq	4456(%rbp,%rsi), %rax
	movq	%rax, 5632(%rsp)
	movq	4464(%rbp,%rsi), %rax
	movq	%rax, 5640(%rsp)
	movq	4472(%rbp,%rsi), %rax
	movq	%rax, 5648(%rsp)
	movq	4480(%rbp,%rsi), %rax
	movq	%rax, 5656(%rsp)
	movq	4488(%rbp,%rsi), %rax
	movq	%rax, 5664(%rsp)
	movq	4496(%rbp,%rsi), %rax
	movq	%rax, 5672(%rsp)
	movq	4504(%rbp,%rsi), %rax
	movq	%rax, 5680(%rsp)
	movq	4512(%rbp,%rsi), %rax
	movq	%rax, 5688(%rsp)
	movq	4520(%rbp,%rsi), %rax
	movq	%rax, 5696(%rsp)
	movq	4528(%rbp,%rsi), %rax
	movq	%rax, 5704(%rsp)
	movq	4536(%rbp,%rsi), %rax
	movq	%rax, 5712(%rsp)
	movq	4544(%rbp,%rsi), %rax
	movq	%rax, 5720(%rsp)
	movq	4552(%rbp,%rsi), %rax
	movq	%rax, 5728(%rsp)
	movq	4560(%rbp,%rsi), %rax
	movq	%rax, 5736(%rsp)
	movq	4568(%rbp,%rsi), %rax
	movq	%rax, 5744(%rsp)
	movq	4576(%rbp,%rsi), %rax
	movq	%rax, 5752(%rsp)
	movq	4584(%rbp,%rsi), %rax
	movq	%rax, 5760(%rsp)
	movq	4592(%rbp,%rsi), %rax
	movq	%rax, 5768(%rsp)
	movq	4600(%rbp,%rsi), %rax
	movq	%rax, 5776(%rsp)
	movq	4608(%rbp,%rsi), %rax
	movq	%rax, 5784(%rsp)
	movq	4616(%rbp,%rsi), %rax
	movq	%rax, 5792(%rsp)
	movq	4624(%rbp,%rsi), %rax
	movq	%rax, 5800(%rsp)
	movq	4632(%rbp,%rsi), %rax
	movq	%rax, 5808(%rsp)
	movq	4640(%rbp,%rsi), %rax
	movq	%rax, 5816(%rsp)
	movq	4648(%rbp,%rsi), %rax
	movq	%rax, 5824(%rsp)
	movq	4656(%rbp,%rsi), %rax
	movq	%rax, 5832(%rsp)
	movq	4664(%rbp,%rsi), %rax
	movq	%rax, 5840(%rsp)
	movq	4672(%rbp,%rsi), %rax
	movq	%rax, 5848(%rsp)
	movq	4680(%rbp,%rsi), %rax
	movq	%rax, 5856(%rsp)
	movq	4688(%rbp,%rsi), %rax
	movq	%rax, 5864(%rsp)
	movq	4696(%rbp,%rsi), %rax
	movq	%rax, 5872(%rsp)
	movq	4704(%rbp,%rsi), %rax
	movq	%rax, 5880(%rsp)
	movq	4712(%rbp,%rsi), %rax
	movq	%rax, 5888(%rsp)
	movq	4720(%rbp,%rsi), %rax
	movq	%rax, 5896(%rsp)
	movq	4728(%rbp,%rsi), %rax
	movq	%rax, 5904(%rsp)
	movq	4736(%rbp,%rsi), %rax
	movq	%rax, 5912(%rsp)
	movq	4744(%rbp,%rsi), %rax
	movq	%rax, 5920(%rsp)
	movq	4752(%rbp,%rsi), %rax
	movq	%rax, 5928(%rsp)
	movq	4760(%rbp,%rsi), %rax
	movq	%rax, 5936(%rsp)
	movq	4768(%rbp,%rsi), %rax
	movq	%rax, 5944(%rsp)
	movq	4776(%rbp,%rsi), %rax
	movq	%rax, 5952(%rsp)
	movq	4784(%rbp,%rsi), %rax
	movq	%rax, 5960(%rsp)
	movq	4792(%rbp,%rsi), %rax
	movq	%rax, 5968(%rsp)
	movq	4800(%rbp,%rsi), %rax
	movq	%rax, 5976(%rsp)
	movq	4808(%rbp,%rsi), %rax
	movq	%rax, 5984(%rsp)
	movq	4816(%rbp,%rsi), %rax
	movq	%rax, 5992(%rsp)
	movq	4824(%rbp,%rsi), %rax
	movq	%rax, 6000(%rsp)
	movq	4832(%rbp,%rsi), %rax
	movq	%rax, 6008(%rsp)
	movq	4840(%rbp,%rsi), %rax
	movq	%rax, 6016(%rsp)
	movq	4848(%rbp,%rsi), %rax
	movq	%rax, 6024(%rsp)
	movq	4856(%rbp,%rsi), %rax
	movq	%rax, 6032(%rsp)
	movq	4864(%rbp,%rsi), %rax
	movq	%rax, 6040(%rsp)
	movq	4872(%rbp,%rsi), %rax
	movq	%rax, 6048(%rsp)
	movq	4880(%rbp,%rsi), %rax
	movq	%rax, 6056(%rsp)
	movq	4888(%rbp,%rsi), %rax
	movq	%rax, 6064(%rsp)
	movq	4896(%rbp,%rsi), %rax
	movq	%rax, 6072(%rsp)
	movq	4904(%rbp,%rsi), %rax
	movq	%rax, 6080(%rsp)
	movq	4912(%rbp,%rsi), %rax
	movq	%rax, 6088(%rsp)
	movq	4920(%rbp,%rsi), %rax
	movq	%rax, 6096(%rsp)
	movq	4928(%rbp,%rsi), %rax
	movq	%rax, 6104(%rsp)
	movq	4936(%rbp,%rsi), %rax
	movq	%rax, 6112(%rsp)
	movq	4944(%rbp,%rsi), %rax
	movq	%rax, 6120(%rsp)
	movq	4952(%rbp,%rsi), %rax
	movq	%rax, 6128(%rsp)
	movq	4960(%rbp,%rsi), %rax
	movq	%rax, 6136(%rsp)
	movq	4968(%rbp,%rsi), %rax
	movq	%rax, 6144(%rsp)
	movq	4976(%rbp,%rsi), %rax
	movq	%rax, 6152(%rsp)
	movq	4984(%rbp,%rsi), %rax
	movq	%rax, 6160(%rsp)
	movq	4992(%rbp,%rsi), %rax
	movq	%rax, 6168(%rsp)
	movq	5000(%rbp,%rsi), %rax
	movq	%rax, 6176(%rsp)
	movq	5008(%rbp,%rsi), %rax
	movq	%rax, 6184(%rsp)
	movq	5016(%rbp,%rsi), %rax
	movq	%rax, 6192(%rsp)
	movq	5024(%rbp,%rsi), %rax
	movq	%rax, 6200(%rsp)
	movq	5032(%rbp,%rsi), %rax
	movq	%rax, 6208(%rsp)
	movq	5040(%rbp,%rsi), %rax
	movq	%rax, 6216(%rsp)
	movq	5048(%rbp,%rsi), %rax
	movq	%rax, 6224(%rsp)
	movq	5056(%rbp,%rsi), %rax
	movq	%rax, 6232(%rsp)
	movq	5064(%rbp,%rsi), %rax
	movq	%rax, 6240(%rsp)
	movq	5072(%rbp,%rsi), %rax
	movq	%rax, 6248(%rsp)
	movq	5080(%rbp,%rsi), %rax
	movq	%rax, 6256(%rsp)
	movq	5088(%rbp,%rsi), %rax
	movq	%rax, 6264(%rsp)
	movq	5096(%rbp,%rsi), %rax
	movq	%rax, 6272(%rsp)
	movq	5104(%rbp,%rsi), %rax
	movq	%rax, 6280(%rsp)
	movq	5112(%rbp,%rsi), %rax
	movq	%rax, 6288(%rsp)
	movq	5120(%rbp,%rsi), %rax
	movq	%rax, 6296(%rsp)
	movq	5128(%rbp,%rsi), %rax
	movq	%rax, 6304(%rsp)
	movq	5136(%rbp,%rsi), %rax
	movq	%rax, 6312(%rsp)
	movq	5144(%rbp,%rsi), %rax
	movq	%rax, 6320(%rsp)
	movq	5152(%rbp,%rsi), %rax
	movq	%rax, 6328(%rsp)
	movq	5160(%rbp,%rsi), %rax
	movq	%rax, 6336(%rsp)
	movq	5168(%rbp,%rsi), %rax
	movq	%rax, 6344(%rsp)
	movq	5176(%rbp,%rsi), %rax
	movq	%rax, 6352(%rsp)
	movq	5184(%rbp,%rsi), %rax
	movq	%rax, 6360(%rsp)
	movq	5192(%rbp,%rsi), %rax
	movq	%rax, 6368(%rsp)
	movq	5200(%rbp,%rsi), %rax
	movq	%rax, 6376(%rsp)
	movq	5208(%rbp,%rsi), %rax
	movq	%rax, 6384(%rsp)
	movq	5216(%rbp,%rsi), %rax
	movq	%rax, 6392(%rsp)
	movq	5224(%rbp,%rsi), %rax
	movq	%rax, 6400(%rsp)
	movq	5232(%rbp,%rsi), %rax
	movq	%rax, 6408(%rsp)
	movq	5240(%rbp,%rsi), %rax
	movq	%rax, 6416(%rsp)
	movq	5248(%rbp,%rsi), %rax
	movq	%rax, 6424(%rsp)
	movq	5256(%rbp,%rsi), %rax
	movq	%rax, 6432(%rsp)
	movq	5264(%rbp,%rsi), %rax
	movq	%rax, 6440(%rsp)
	movq	5272(%rbp,%rsi), %rax
	movq	%rax, 6448(%rsp)
	movq	5280(%rbp,%rsi), %rax
	movq	%rax, 6456(%rsp)
	movq	5288(%rbp,%rsi), %rax
	movq	%rax, 6464(%rsp)
	movq	5296(%rbp,%rsi), %rax
	movq	%rax, 6472(%rsp)
	movq	5304(%rbp,%rsi), %rax
	movq	%rax, 6480(%rsp)
	movq	5312(%rbp,%rsi), %rax
	movq	%rax, 6488(%rsp)
	movq	5320(%rbp,%rsi), %rax
	movq	%rax, 6496(%rsp)
	movq	5328(%rbp,%rsi), %rax
	movq	%rax, 6504(%rsp)
	movq	5336(%rbp,%rsi), %rax
	movq	%rax, 6512(%rsp)
	movq	5344(%rbp,%rsi), %rax
	movq	%rax, 6520(%rsp)
	movq	5352(%rbp,%rsi), %rax
	movq	%rax, 6528(%rsp)
	movq	5360(%rbp,%rsi), %rax
	movq	%rax, 6536(%rsp)
	movq	5368(%rbp,%rsi), %rax
	movq	%rax, 6544(%rsp)
	movq	5376(%rbp,%rsi), %rax
	movq	%rax, 6552(%rsp)
	movq	5384(%rbp,%rsi), %rax
	movq	%rax, 6560(%rsp)
	movq	5392(%rbp,%rsi), %rax
	movq	%rax, 6568(%rsp)
	movq	5400(%rbp,%rsi), %rax
	movq	%rax, 6576(%rsp)
	movq	5408(%rbp,%rsi), %rax
	movq	%rax, 6584(%rsp)
	movq	5416(%rbp,%rsi), %rax
	movq	%rax, 6592(%rsp)
	movq	5424(%rbp,%rsi), %rax
	movq	%rax, 6600(%rsp)
	movq	5432(%rbp,%rsi), %rax
	movq	%rax, 6608(%rsp)
	movq	5440(%rbp,%rsi), %rax
	movq	%rax, 6616(%rsp)
	movq	5448(%rbp,%rsi), %rax
	movq	%rax, 6624(%rsp)
	movq	5456(%rbp,%rsi), %rax
	movq	%rax, 6632(%rsp)
	movq	5464(%rbp,%rsi), %rax
	movq	%rax, 6640(%rsp)
	movq	5472(%rbp,%rsi), %rax
	movq	%rax, 6648(%rsp)
	movq	5480(%rbp,%rsi), %rax
	movq	%rax, 6656(%rsp)
	movq	5488(%rbp,%rsi), %rax
	movq	%rax, 6664(%rsp)
	movq	5496(%rbp,%rsi), %rax
	movq	%rax, 6672(%rsp)
	movq	5504(%rbp,%rsi), %rax
	movq	%rax, 6680(%rsp)
	movq	5512(%rbp,%rsi), %rax
	movq	%rax, 6688(%rsp)
	movq	5520(%rbp,%rsi), %rax
	movq	%rax, 6696(%rsp)
	movq	5528(%rbp,%rsi), %rax
	movq	%rax, 6704(%rsp)
	movq	5536(%rbp,%rsi), %rax
	movq	%rax, 6712(%rsp)
	movq	5544(%rbp,%rsi), %rax
	movq	%rax, 6720(%rsp)
	movq	5552(%rbp,%rsi), %rax
	movq	%rax, 6728(%rsp)
	movq	5560(%rbp,%rsi), %rax
	movq	%rax, 6736(%rsp)
	movq	5568(%rbp,%rsi), %rax
	movq	%rax, 6744(%rsp)
	movq	5576(%rbp,%rsi), %rax
	movq	%rax, 6752(%rsp)
	movq	5584(%rbp,%rsi), %rax
	movq	%rax, 6760(%rsp)
	movq	5592(%rbp,%rsi), %rax
	movq	%rax, 6768(%rsp)
	movq	5600(%rbp,%rsi), %rax
	movq	%rax, 6776(%rsp)
	movq	5608(%rbp,%rsi), %rax
	movq	%rax, 6784(%rsp)
	movq	5616(%rbp,%rsi), %rax
	movq	%rax, 6792(%rsp)
	movq	5624(%rbp,%rsi), %rax
	movq	%rax, 6800(%rsp)
	movq	5632(%rbp,%rsi), %rax
	movq	%rax, 6808(%rsp)
	movq	5640(%rbp,%rsi), %rax
	movq	%rax, 6816(%rsp)
	movq	5648(%rbp,%rsi), %rax
	movq	%rax, 6824(%rsp)
	movq	5656(%rbp,%rsi), %rax
	movq	%rax, 6832(%rsp)
	movq	5664(%rbp,%rsi), %rax
	movq	%rax, 6840(%rsp)
	movq	5672(%rbp,%rsi), %rax
	movq	%rax, 6848(%rsp)
	movq	5680(%rbp,%rsi), %rax
	movq	%rax, 6856(%rsp)
	movq	5688(%rbp,%rsi), %rax
	movq	%rax, 6864(%rsp)
	movq	5696(%rbp,%rsi), %rax
	movq	%rax, 6872(%rsp)
	movq	5704(%rbp,%rsi), %rax
	movq	%rax, 6880(%rsp)
	movq	5712(%rbp,%rsi), %rax
	movq	%rax, 6888(%rsp)
	movq	5720(%rbp,%rsi), %rax
	movq	%rax, 6896(%rsp)
	movq	5728(%rbp,%rsi), %rax
	movq	%rax, 6904(%rsp)
	movq	5736(%rbp,%rsi), %rax
	movq	%rax, 6912(%rsp)
	movq	5744(%rbp,%rsi), %rax
	movq	%rax, 6920(%rsp)
	movq	5752(%rbp,%rsi), %rax
	movq	%rax, 6928(%rsp)
	movq	5760(%rbp,%rsi), %rax
	movq	%rax, 6936(%rsp)
	movq	5768(%rbp,%rsi), %rax
	movq	%rax, 6944(%rsp)
	movq	5776(%rbp,%rsi), %rax
	movq	%rax, 6952(%rsp)
	movq	5784(%rbp,%rsi), %rax
	movq	%rax, 6960(%rsp)
	movq	5792(%rbp,%rsi), %rax
	movq	%rax, 6968(%rsp)
	movq	5800(%rbp,%rsi), %rax
	movq	%rax, 6976(%rsp)
	movq	5808(%rbp,%rsi), %rax
	movq	%rax, 6984(%rsp)
	movq	5816(%rbp,%rsi), %rax
	movq	%rax, 6992(%rsp)
	movq	5824(%rbp,%rsi), %rax
	movq	%rax, 7000(%rsp)
	movq	5832(%rbp,%rsi), %rax
	movq	%rax, 7008(%rsp)
	movq	5840(%rbp,%rsi), %rax
	movq	%rax, 7016(%rsp)
	movq	5848(%rbp,%rsi), %rax
	movq	%rax, 7024(%rsp)
	movq	5856(%rbp,%rsi), %rax
	movq	%rax, 7032(%rsp)
	movq	5864(%rbp,%rsi), %rax
	movq	%rax, 7040(%rsp)
	movq	5872(%rbp,%rsi), %rax
	movq	%rax, 7048(%rsp)
	movq	5880(%rbp,%rsi), %rax
	movq	%rax, 7056(%rsp)
	movq	5888(%rbp,%rsi), %rax
	movq	%rax, 7064(%rsp)
	movq	5896(%rbp,%rsi), %rax
	movq	%rax, 7072(%rsp)
	movq	5904(%rbp,%rsi), %rax
	movq	%rax, 7080(%rsp)
	movq	5912(%rbp,%rsi), %rax
	movq	%rax, 7088(%rsp)
	movq	5920(%rbp,%rsi), %rax
	movq	%rax, 7096(%rsp)
	movq	5928(%rbp,%rsi), %rax
	movq	%rax, 7104(%rsp)
	movq	5936(%rbp,%rsi), %rax
	movq	%rax, 7112(%rsp)
	movq	5944(%rbp,%rsi), %rax
	movq	%rax, 7120(%rsp)
	movq	5952(%rbp,%rsi), %rax
	movq	%rax, 7128(%rsp)
	movq	5960(%rbp,%rsi), %rax
	movq	%rax, 7136(%rsp)
	movq	5968(%rbp,%rsi), %rax
	movq	%rax, 7144(%rsp)
	movq	5976(%rbp,%rsi), %rax
	movq	%rax, 7152(%rsp)
	movq	5984(%rbp,%rsi), %rax
	movq	%rax, 7160(%rsp)
	movq	5992(%rbp,%rsi), %rax
	movq	%rax, 7168(%rsp)
	movq	6000(%rbp,%rsi), %rax
	movq	%rax, 7176(%rsp)
	movq	6008(%rbp,%rsi), %rax
	movq	%rax, 7184(%rsp)
	movq	6016(%rbp,%rsi), %rax
	movq	%rax, 7192(%rsp)
	movq	6024(%rbp,%rsi), %rax
	movq	%rax, 7200(%rsp)
	movq	6032(%rbp,%rsi), %rax
	movq	%rax, 7208(%rsp)
	movq	6040(%rbp,%rsi), %rax
	movq	%rax, 7216(%rsp)
	movq	6048(%rbp,%rsi), %rax
	movq	%rax, 7224(%rsp)
	movq	6056(%rbp,%rsi), %rax
	movq	%rax, 7232(%rsp)
	movq	6064(%rbp,%rsi), %rax
	movq	%rax, 7240(%rsp)
	movq	6072(%rbp,%rsi), %rax
	movq	%rax, 7248(%rsp)
	movq	6080(%rbp,%rsi), %rax
	movq	%rax, 7256(%rsp)
	movq	6088(%rbp,%rsi), %rax
	movq	%rax, 7264(%rsp)
	movq	6096(%rbp,%rsi), %rax
	movq	%rax, 7272(%rsp)
	movq	6104(%rbp,%rsi), %rax
	movq	%rax, 7280(%rsp)
	movq	6112(%rbp,%rsi), %rax
	movq	%rax, 7288(%rsp)
	movq	6120(%rbp,%rsi), %rax
	movq	%rax, 7296(%rsp)
	movq	6128(%rbp,%rsi), %rax
	movq	%rax, 7304(%rsp)
	movq	6136(%rbp,%rsi), %rax
	movq	%rax, 7312(%rsp)
	imulq	$48, %rcx, %rax
	movq	%rdx, 840(%rsp)
	movq	%rax, 848(%rsp)
	movb	$17, %dl
	movb	$31, %cl
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L_commit_v_x4$6:
	movq	$24, %r12
	leaq	856(%rsp), %rdx
	leaq	888(%rsp), %r10
	leaq	920(%rsp), %rsi
	leaq	952(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA24x4___absorb_updstate_avx2x4$1
L_commit_v_x4$5:
	leaq	24(%rsp), %rsp
	leaq	1176(%rsp), %rdx
	leaq	2712(%rsp), %r10
	leaq	4248(%rsp), %rsi
	leaq	5784(%rsp), %r9
	movq	$1536, %r12
	leaq	-24(%rsp), %rsp
	call	LA1536x4___absorb_updstate_avx2x4$1
L_commit_v_x4$4:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L_commit_v_x4$3:
	movq	$48, %r12
	leaq	984(%rsp), %rdx
	leaq	1032(%rsp), %r10
	leaq	1080(%rsp), %rsi
	leaq	1128(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA48x4___squeeze_updstate_avx2x4$1
L_commit_v_x4$2:
	leaq	24(%rsp), %rsp
	movq	840(%rsp), %rcx
	movq	848(%rsp), %rbp
	movq	984(%rsp), %rax
	movq	%rax, (%rcx,%rbp)
	movq	992(%rsp), %rax
	movq	%rax, 8(%rcx,%rbp)
	movq	1000(%rsp), %rax
	movq	%rax, 16(%rcx,%rbp)
	movq	1008(%rsp), %rax
	movq	%rax, 24(%rcx,%rbp)
	movq	1016(%rsp), %rax
	movq	%rax, 32(%rcx,%rbp)
	movq	1024(%rsp), %rax
	movq	%rax, 40(%rcx,%rbp)
	movq	1032(%rsp), %rax
	movq	%rax, 48(%rcx,%rbp)
	movq	1040(%rsp), %rax
	movq	%rax, 56(%rcx,%rbp)
	movq	1048(%rsp), %rax
	movq	%rax, 64(%rcx,%rbp)
	movq	1056(%rsp), %rax
	movq	%rax, 72(%rcx,%rbp)
	movq	1064(%rsp), %rax
	movq	%rax, 80(%rcx,%rbp)
	movq	1072(%rsp), %rax
	movq	%rax, 88(%rcx,%rbp)
	movq	1080(%rsp), %rax
	movq	%rax, 96(%rcx,%rbp)
	movq	1088(%rsp), %rax
	movq	%rax, 104(%rcx,%rbp)
	movq	1096(%rsp), %rax
	movq	%rax, 112(%rcx,%rbp)
	movq	1104(%rsp), %rax
	movq	%rax, 120(%rcx,%rbp)
	movq	1112(%rsp), %rax
	movq	%rax, 128(%rcx,%rbp)
	movq	1120(%rsp), %rax
	movq	%rax, 136(%rcx,%rbp)
	movq	1128(%rsp), %rax
	movq	%rax, 144(%rcx,%rbp)
	movq	1136(%rsp), %rax
	movq	%rax, 152(%rcx,%rbp)
	movq	1144(%rsp), %rax
	movq	%rax, 160(%rcx,%rbp)
	movq	1152(%rsp), %rax
	movq	%rax, 168(%rcx,%rbp)
	movq	1160(%rsp), %rax
	movq	%rax, 176(%rcx,%rbp)
	movq	1168(%rsp), %rax
	movq	%rax, 184(%rcx,%rbp)
	ret
L_commit_h_x4$1:
	movq	%rcx, %rsi
	imulq	$768, %rsi, %rsi
	movq	(%rax,%rsi), %rdi
	movq	%rdi, 1048(%rsp)
	movq	8(%rax,%rsi), %rdi
	movq	%rdi, 1056(%rsp)
	movq	16(%rax,%rsi), %rdi
	movq	%rdi, 1064(%rsp)
	movq	24(%rax,%rsi), %rdi
	movq	%rdi, 1072(%rsp)
	movq	32(%rax,%rsi), %rdi
	movq	%rdi, 1080(%rsp)
	movq	40(%rax,%rsi), %rdi
	movq	%rdi, 1088(%rsp)
	movq	48(%rax,%rsi), %rdi
	movq	%rdi, 1096(%rsp)
	movq	56(%rax,%rsi), %rdi
	movq	%rdi, 1104(%rsp)
	movq	64(%rax,%rsi), %rdi
	movq	%rdi, 1112(%rsp)
	movq	72(%rax,%rsi), %rdi
	movq	%rdi, 1120(%rsp)
	movq	80(%rax,%rsi), %rdi
	movq	%rdi, 1128(%rsp)
	movq	88(%rax,%rsi), %rdi
	movq	%rdi, 1136(%rsp)
	movq	96(%rax,%rsi), %rdi
	movq	%rdi, 1144(%rsp)
	movq	104(%rax,%rsi), %rdi
	movq	%rdi, 1152(%rsp)
	movq	112(%rax,%rsi), %rdi
	movq	%rdi, 1160(%rsp)
	movq	120(%rax,%rsi), %rdi
	movq	%rdi, 1168(%rsp)
	movq	128(%rax,%rsi), %rdi
	movq	%rdi, 1176(%rsp)
	movq	136(%rax,%rsi), %rdi
	movq	%rdi, 1184(%rsp)
	movq	144(%rax,%rsi), %rdi
	movq	%rdi, 1192(%rsp)
	movq	152(%rax,%rsi), %rdi
	movq	%rdi, 1200(%rsp)
	movq	160(%rax,%rsi), %rdi
	movq	%rdi, 1208(%rsp)
	movq	168(%rax,%rsi), %rdi
	movq	%rdi, 1216(%rsp)
	movq	176(%rax,%rsi), %rdi
	movq	%rdi, 1224(%rsp)
	movq	184(%rax,%rsi), %rdi
	movq	%rdi, 1232(%rsp)
	movq	192(%rax,%rsi), %rdi
	movq	%rdi, 1240(%rsp)
	movq	200(%rax,%rsi), %rdi
	movq	%rdi, 1248(%rsp)
	movq	208(%rax,%rsi), %rdi
	movq	%rdi, 1256(%rsp)
	movq	216(%rax,%rsi), %rdi
	movq	%rdi, 1264(%rsp)
	movq	224(%rax,%rsi), %rdi
	movq	%rdi, 1272(%rsp)
	movq	232(%rax,%rsi), %rdi
	movq	%rdi, 1280(%rsp)
	movq	240(%rax,%rsi), %rdi
	movq	%rdi, 1288(%rsp)
	movq	248(%rax,%rsi), %rdi
	movq	%rdi, 1296(%rsp)
	movq	256(%rax,%rsi), %rdi
	movq	%rdi, 1304(%rsp)
	movq	264(%rax,%rsi), %rdi
	movq	%rdi, 1312(%rsp)
	movq	272(%rax,%rsi), %rdi
	movq	%rdi, 1320(%rsp)
	movq	280(%rax,%rsi), %rdi
	movq	%rdi, 1328(%rsp)
	movq	288(%rax,%rsi), %rdi
	movq	%rdi, 1336(%rsp)
	movq	296(%rax,%rsi), %rdi
	movq	%rdi, 1344(%rsp)
	movq	304(%rax,%rsi), %rdi
	movq	%rdi, 1352(%rsp)
	movq	312(%rax,%rsi), %rdi
	movq	%rdi, 1360(%rsp)
	movq	320(%rax,%rsi), %rdi
	movq	%rdi, 1368(%rsp)
	movq	328(%rax,%rsi), %rdi
	movq	%rdi, 1376(%rsp)
	movq	336(%rax,%rsi), %rdi
	movq	%rdi, 1384(%rsp)
	movq	344(%rax,%rsi), %rdi
	movq	%rdi, 1392(%rsp)
	movq	352(%rax,%rsi), %rdi
	movq	%rdi, 1400(%rsp)
	movq	360(%rax,%rsi), %rdi
	movq	%rdi, 1408(%rsp)
	movq	368(%rax,%rsi), %rdi
	movq	%rdi, 1416(%rsp)
	movq	376(%rax,%rsi), %rdi
	movq	%rdi, 1424(%rsp)
	movq	384(%rax,%rsi), %rdi
	movq	%rdi, 1432(%rsp)
	movq	392(%rax,%rsi), %rdi
	movq	%rdi, 1440(%rsp)
	movq	400(%rax,%rsi), %rdi
	movq	%rdi, 1448(%rsp)
	movq	408(%rax,%rsi), %rdi
	movq	%rdi, 1456(%rsp)
	movq	416(%rax,%rsi), %rdi
	movq	%rdi, 1464(%rsp)
	movq	424(%rax,%rsi), %rdi
	movq	%rdi, 1472(%rsp)
	movq	432(%rax,%rsi), %rdi
	movq	%rdi, 1480(%rsp)
	movq	440(%rax,%rsi), %rdi
	movq	%rdi, 1488(%rsp)
	movq	448(%rax,%rsi), %rdi
	movq	%rdi, 1496(%rsp)
	movq	456(%rax,%rsi), %rdi
	movq	%rdi, 1504(%rsp)
	movq	464(%rax,%rsi), %rdi
	movq	%rdi, 1512(%rsp)
	movq	472(%rax,%rsi), %rdi
	movq	%rdi, 1520(%rsp)
	movq	480(%rax,%rsi), %rdi
	movq	%rdi, 1528(%rsp)
	movq	488(%rax,%rsi), %rdi
	movq	%rdi, 1536(%rsp)
	movq	496(%rax,%rsi), %rdi
	movq	%rdi, 1544(%rsp)
	movq	504(%rax,%rsi), %rdi
	movq	%rdi, 1552(%rsp)
	movq	512(%rax,%rsi), %rdi
	movq	%rdi, 1560(%rsp)
	movq	520(%rax,%rsi), %rdi
	movq	%rdi, 1568(%rsp)
	movq	528(%rax,%rsi), %rdi
	movq	%rdi, 1576(%rsp)
	movq	536(%rax,%rsi), %rdi
	movq	%rdi, 1584(%rsp)
	movq	544(%rax,%rsi), %rdi
	movq	%rdi, 1592(%rsp)
	movq	552(%rax,%rsi), %rdi
	movq	%rdi, 1600(%rsp)
	movq	560(%rax,%rsi), %rdi
	movq	%rdi, 1608(%rsp)
	movq	568(%rax,%rsi), %rdi
	movq	%rdi, 1616(%rsp)
	movq	576(%rax,%rsi), %rdi
	movq	%rdi, 1624(%rsp)
	movq	584(%rax,%rsi), %rdi
	movq	%rdi, 1632(%rsp)
	movq	592(%rax,%rsi), %rdi
	movq	%rdi, 1640(%rsp)
	movq	600(%rax,%rsi), %rdi
	movq	%rdi, 1648(%rsp)
	movq	608(%rax,%rsi), %rdi
	movq	%rdi, 1656(%rsp)
	movq	616(%rax,%rsi), %rdi
	movq	%rdi, 1664(%rsp)
	movq	624(%rax,%rsi), %rdi
	movq	%rdi, 1672(%rsp)
	movq	632(%rax,%rsi), %rdi
	movq	%rdi, 1680(%rsp)
	movq	640(%rax,%rsi), %rdi
	movq	%rdi, 1688(%rsp)
	movq	648(%rax,%rsi), %rdi
	movq	%rdi, 1696(%rsp)
	movq	656(%rax,%rsi), %rdi
	movq	%rdi, 1704(%rsp)
	movq	664(%rax,%rsi), %rdi
	movq	%rdi, 1712(%rsp)
	movq	672(%rax,%rsi), %rdi
	movq	%rdi, 1720(%rsp)
	movq	680(%rax,%rsi), %rdi
	movq	%rdi, 1728(%rsp)
	movq	688(%rax,%rsi), %rdi
	movq	%rdi, 1736(%rsp)
	movq	696(%rax,%rsi), %rdi
	movq	%rdi, 1744(%rsp)
	movq	704(%rax,%rsi), %rdi
	movq	%rdi, 1752(%rsp)
	movq	712(%rax,%rsi), %rdi
	movq	%rdi, 1760(%rsp)
	movq	720(%rax,%rsi), %rdi
	movq	%rdi, 1768(%rsp)
	movq	728(%rax,%rsi), %rdi
	movq	%rdi, 1776(%rsp)
	movq	736(%rax,%rsi), %rdi
	movq	%rdi, 1784(%rsp)
	movq	744(%rax,%rsi), %rdi
	movq	%rdi, 1792(%rsp)
	movq	752(%rax,%rsi), %rdi
	movq	%rdi, 1800(%rsp)
	movq	760(%rax,%rsi), %rdi
	movq	%rdi, 1808(%rsp)
	movq	768(%rax,%rsi), %rdi
	movq	%rdi, 1816(%rsp)
	movq	776(%rax,%rsi), %rdi
	movq	%rdi, 1824(%rsp)
	movq	784(%rax,%rsi), %rdi
	movq	%rdi, 1832(%rsp)
	movq	792(%rax,%rsi), %rdi
	movq	%rdi, 1840(%rsp)
	movq	800(%rax,%rsi), %rdi
	movq	%rdi, 1848(%rsp)
	movq	808(%rax,%rsi), %rdi
	movq	%rdi, 1856(%rsp)
	movq	816(%rax,%rsi), %rdi
	movq	%rdi, 1864(%rsp)
	movq	824(%rax,%rsi), %rdi
	movq	%rdi, 1872(%rsp)
	movq	832(%rax,%rsi), %rdi
	movq	%rdi, 1880(%rsp)
	movq	840(%rax,%rsi), %rdi
	movq	%rdi, 1888(%rsp)
	movq	848(%rax,%rsi), %rdi
	movq	%rdi, 1896(%rsp)
	movq	856(%rax,%rsi), %rdi
	movq	%rdi, 1904(%rsp)
	movq	864(%rax,%rsi), %rdi
	movq	%rdi, 1912(%rsp)
	movq	872(%rax,%rsi), %rdi
	movq	%rdi, 1920(%rsp)
	movq	880(%rax,%rsi), %rdi
	movq	%rdi, 1928(%rsp)
	movq	888(%rax,%rsi), %rdi
	movq	%rdi, 1936(%rsp)
	movq	896(%rax,%rsi), %rdi
	movq	%rdi, 1944(%rsp)
	movq	904(%rax,%rsi), %rdi
	movq	%rdi, 1952(%rsp)
	movq	912(%rax,%rsi), %rdi
	movq	%rdi, 1960(%rsp)
	movq	920(%rax,%rsi), %rdi
	movq	%rdi, 1968(%rsp)
	movq	928(%rax,%rsi), %rdi
	movq	%rdi, 1976(%rsp)
	movq	936(%rax,%rsi), %rdi
	movq	%rdi, 1984(%rsp)
	movq	944(%rax,%rsi), %rdi
	movq	%rdi, 1992(%rsp)
	movq	952(%rax,%rsi), %rdi
	movq	%rdi, 2000(%rsp)
	movq	960(%rax,%rsi), %rdi
	movq	%rdi, 2008(%rsp)
	movq	968(%rax,%rsi), %rdi
	movq	%rdi, 2016(%rsp)
	movq	976(%rax,%rsi), %rdi
	movq	%rdi, 2024(%rsp)
	movq	984(%rax,%rsi), %rdi
	movq	%rdi, 2032(%rsp)
	movq	992(%rax,%rsi), %rdi
	movq	%rdi, 2040(%rsp)
	movq	1000(%rax,%rsi), %rdi
	movq	%rdi, 2048(%rsp)
	movq	1008(%rax,%rsi), %rdi
	movq	%rdi, 2056(%rsp)
	movq	1016(%rax,%rsi), %rdi
	movq	%rdi, 2064(%rsp)
	movq	1024(%rax,%rsi), %rdi
	movq	%rdi, 2072(%rsp)
	movq	1032(%rax,%rsi), %rdi
	movq	%rdi, 2080(%rsp)
	movq	1040(%rax,%rsi), %rdi
	movq	%rdi, 2088(%rsp)
	movq	1048(%rax,%rsi), %rdi
	movq	%rdi, 2096(%rsp)
	movq	1056(%rax,%rsi), %rdi
	movq	%rdi, 2104(%rsp)
	movq	1064(%rax,%rsi), %rdi
	movq	%rdi, 2112(%rsp)
	movq	1072(%rax,%rsi), %rdi
	movq	%rdi, 2120(%rsp)
	movq	1080(%rax,%rsi), %rdi
	movq	%rdi, 2128(%rsp)
	movq	1088(%rax,%rsi), %rdi
	movq	%rdi, 2136(%rsp)
	movq	1096(%rax,%rsi), %rdi
	movq	%rdi, 2144(%rsp)
	movq	1104(%rax,%rsi), %rdi
	movq	%rdi, 2152(%rsp)
	movq	1112(%rax,%rsi), %rdi
	movq	%rdi, 2160(%rsp)
	movq	1120(%rax,%rsi), %rdi
	movq	%rdi, 2168(%rsp)
	movq	1128(%rax,%rsi), %rdi
	movq	%rdi, 2176(%rsp)
	movq	1136(%rax,%rsi), %rdi
	movq	%rdi, 2184(%rsp)
	movq	1144(%rax,%rsi), %rdi
	movq	%rdi, 2192(%rsp)
	movq	1152(%rax,%rsi), %rdi
	movq	%rdi, 2200(%rsp)
	movq	1160(%rax,%rsi), %rdi
	movq	%rdi, 2208(%rsp)
	movq	1168(%rax,%rsi), %rdi
	movq	%rdi, 2216(%rsp)
	movq	1176(%rax,%rsi), %rdi
	movq	%rdi, 2224(%rsp)
	movq	1184(%rax,%rsi), %rdi
	movq	%rdi, 2232(%rsp)
	movq	1192(%rax,%rsi), %rdi
	movq	%rdi, 2240(%rsp)
	movq	1200(%rax,%rsi), %rdi
	movq	%rdi, 2248(%rsp)
	movq	1208(%rax,%rsi), %rdi
	movq	%rdi, 2256(%rsp)
	movq	1216(%rax,%rsi), %rdi
	movq	%rdi, 2264(%rsp)
	movq	1224(%rax,%rsi), %rdi
	movq	%rdi, 2272(%rsp)
	movq	1232(%rax,%rsi), %rdi
	movq	%rdi, 2280(%rsp)
	movq	1240(%rax,%rsi), %rdi
	movq	%rdi, 2288(%rsp)
	movq	1248(%rax,%rsi), %rdi
	movq	%rdi, 2296(%rsp)
	movq	1256(%rax,%rsi), %rdi
	movq	%rdi, 2304(%rsp)
	movq	1264(%rax,%rsi), %rdi
	movq	%rdi, 2312(%rsp)
	movq	1272(%rax,%rsi), %rdi
	movq	%rdi, 2320(%rsp)
	movq	1280(%rax,%rsi), %rdi
	movq	%rdi, 2328(%rsp)
	movq	1288(%rax,%rsi), %rdi
	movq	%rdi, 2336(%rsp)
	movq	1296(%rax,%rsi), %rdi
	movq	%rdi, 2344(%rsp)
	movq	1304(%rax,%rsi), %rdi
	movq	%rdi, 2352(%rsp)
	movq	1312(%rax,%rsi), %rdi
	movq	%rdi, 2360(%rsp)
	movq	1320(%rax,%rsi), %rdi
	movq	%rdi, 2368(%rsp)
	movq	1328(%rax,%rsi), %rdi
	movq	%rdi, 2376(%rsp)
	movq	1336(%rax,%rsi), %rdi
	movq	%rdi, 2384(%rsp)
	movq	1344(%rax,%rsi), %rdi
	movq	%rdi, 2392(%rsp)
	movq	1352(%rax,%rsi), %rdi
	movq	%rdi, 2400(%rsp)
	movq	1360(%rax,%rsi), %rdi
	movq	%rdi, 2408(%rsp)
	movq	1368(%rax,%rsi), %rdi
	movq	%rdi, 2416(%rsp)
	movq	1376(%rax,%rsi), %rdi
	movq	%rdi, 2424(%rsp)
	movq	1384(%rax,%rsi), %rdi
	movq	%rdi, 2432(%rsp)
	movq	1392(%rax,%rsi), %rdi
	movq	%rdi, 2440(%rsp)
	movq	1400(%rax,%rsi), %rdi
	movq	%rdi, 2448(%rsp)
	movq	1408(%rax,%rsi), %rdi
	movq	%rdi, 2456(%rsp)
	movq	1416(%rax,%rsi), %rdi
	movq	%rdi, 2464(%rsp)
	movq	1424(%rax,%rsi), %rdi
	movq	%rdi, 2472(%rsp)
	movq	1432(%rax,%rsi), %rdi
	movq	%rdi, 2480(%rsp)
	movq	1440(%rax,%rsi), %rdi
	movq	%rdi, 2488(%rsp)
	movq	1448(%rax,%rsi), %rdi
	movq	%rdi, 2496(%rsp)
	movq	1456(%rax,%rsi), %rdi
	movq	%rdi, 2504(%rsp)
	movq	1464(%rax,%rsi), %rdi
	movq	%rdi, 2512(%rsp)
	movq	1472(%rax,%rsi), %rdi
	movq	%rdi, 2520(%rsp)
	movq	1480(%rax,%rsi), %rdi
	movq	%rdi, 2528(%rsp)
	movq	1488(%rax,%rsi), %rdi
	movq	%rdi, 2536(%rsp)
	movq	1496(%rax,%rsi), %rdi
	movq	%rdi, 2544(%rsp)
	movq	1504(%rax,%rsi), %rdi
	movq	%rdi, 2552(%rsp)
	movq	1512(%rax,%rsi), %rdi
	movq	%rdi, 2560(%rsp)
	movq	1520(%rax,%rsi), %rdi
	movq	%rdi, 2568(%rsp)
	movq	1528(%rax,%rsi), %rdi
	movq	%rdi, 2576(%rsp)
	movq	1536(%rax,%rsi), %rdi
	movq	%rdi, 2584(%rsp)
	movq	1544(%rax,%rsi), %rdi
	movq	%rdi, 2592(%rsp)
	movq	1552(%rax,%rsi), %rdi
	movq	%rdi, 2600(%rsp)
	movq	1560(%rax,%rsi), %rdi
	movq	%rdi, 2608(%rsp)
	movq	1568(%rax,%rsi), %rdi
	movq	%rdi, 2616(%rsp)
	movq	1576(%rax,%rsi), %rdi
	movq	%rdi, 2624(%rsp)
	movq	1584(%rax,%rsi), %rdi
	movq	%rdi, 2632(%rsp)
	movq	1592(%rax,%rsi), %rdi
	movq	%rdi, 2640(%rsp)
	movq	1600(%rax,%rsi), %rdi
	movq	%rdi, 2648(%rsp)
	movq	1608(%rax,%rsi), %rdi
	movq	%rdi, 2656(%rsp)
	movq	1616(%rax,%rsi), %rdi
	movq	%rdi, 2664(%rsp)
	movq	1624(%rax,%rsi), %rdi
	movq	%rdi, 2672(%rsp)
	movq	1632(%rax,%rsi), %rdi
	movq	%rdi, 2680(%rsp)
	movq	1640(%rax,%rsi), %rdi
	movq	%rdi, 2688(%rsp)
	movq	1648(%rax,%rsi), %rdi
	movq	%rdi, 2696(%rsp)
	movq	1656(%rax,%rsi), %rdi
	movq	%rdi, 2704(%rsp)
	movq	1664(%rax,%rsi), %rdi
	movq	%rdi, 2712(%rsp)
	movq	1672(%rax,%rsi), %rdi
	movq	%rdi, 2720(%rsp)
	movq	1680(%rax,%rsi), %rdi
	movq	%rdi, 2728(%rsp)
	movq	1688(%rax,%rsi), %rdi
	movq	%rdi, 2736(%rsp)
	movq	1696(%rax,%rsi), %rdi
	movq	%rdi, 2744(%rsp)
	movq	1704(%rax,%rsi), %rdi
	movq	%rdi, 2752(%rsp)
	movq	1712(%rax,%rsi), %rdi
	movq	%rdi, 2760(%rsp)
	movq	1720(%rax,%rsi), %rdi
	movq	%rdi, 2768(%rsp)
	movq	1728(%rax,%rsi), %rdi
	movq	%rdi, 2776(%rsp)
	movq	1736(%rax,%rsi), %rdi
	movq	%rdi, 2784(%rsp)
	movq	1744(%rax,%rsi), %rdi
	movq	%rdi, 2792(%rsp)
	movq	1752(%rax,%rsi), %rdi
	movq	%rdi, 2800(%rsp)
	movq	1760(%rax,%rsi), %rdi
	movq	%rdi, 2808(%rsp)
	movq	1768(%rax,%rsi), %rdi
	movq	%rdi, 2816(%rsp)
	movq	1776(%rax,%rsi), %rdi
	movq	%rdi, 2824(%rsp)
	movq	1784(%rax,%rsi), %rdi
	movq	%rdi, 2832(%rsp)
	movq	1792(%rax,%rsi), %rdi
	movq	%rdi, 2840(%rsp)
	movq	1800(%rax,%rsi), %rdi
	movq	%rdi, 2848(%rsp)
	movq	1808(%rax,%rsi), %rdi
	movq	%rdi, 2856(%rsp)
	movq	1816(%rax,%rsi), %rdi
	movq	%rdi, 2864(%rsp)
	movq	1824(%rax,%rsi), %rdi
	movq	%rdi, 2872(%rsp)
	movq	1832(%rax,%rsi), %rdi
	movq	%rdi, 2880(%rsp)
	movq	1840(%rax,%rsi), %rdi
	movq	%rdi, 2888(%rsp)
	movq	1848(%rax,%rsi), %rdi
	movq	%rdi, 2896(%rsp)
	movq	1856(%rax,%rsi), %rdi
	movq	%rdi, 2904(%rsp)
	movq	1864(%rax,%rsi), %rdi
	movq	%rdi, 2912(%rsp)
	movq	1872(%rax,%rsi), %rdi
	movq	%rdi, 2920(%rsp)
	movq	1880(%rax,%rsi), %rdi
	movq	%rdi, 2928(%rsp)
	movq	1888(%rax,%rsi), %rdi
	movq	%rdi, 2936(%rsp)
	movq	1896(%rax,%rsi), %rdi
	movq	%rdi, 2944(%rsp)
	movq	1904(%rax,%rsi), %rdi
	movq	%rdi, 2952(%rsp)
	movq	1912(%rax,%rsi), %rdi
	movq	%rdi, 2960(%rsp)
	movq	1920(%rax,%rsi), %rdi
	movq	%rdi, 2968(%rsp)
	movq	1928(%rax,%rsi), %rdi
	movq	%rdi, 2976(%rsp)
	movq	1936(%rax,%rsi), %rdi
	movq	%rdi, 2984(%rsp)
	movq	1944(%rax,%rsi), %rdi
	movq	%rdi, 2992(%rsp)
	movq	1952(%rax,%rsi), %rdi
	movq	%rdi, 3000(%rsp)
	movq	1960(%rax,%rsi), %rdi
	movq	%rdi, 3008(%rsp)
	movq	1968(%rax,%rsi), %rdi
	movq	%rdi, 3016(%rsp)
	movq	1976(%rax,%rsi), %rdi
	movq	%rdi, 3024(%rsp)
	movq	1984(%rax,%rsi), %rdi
	movq	%rdi, 3032(%rsp)
	movq	1992(%rax,%rsi), %rdi
	movq	%rdi, 3040(%rsp)
	movq	2000(%rax,%rsi), %rdi
	movq	%rdi, 3048(%rsp)
	movq	2008(%rax,%rsi), %rdi
	movq	%rdi, 3056(%rsp)
	movq	2016(%rax,%rsi), %rdi
	movq	%rdi, 3064(%rsp)
	movq	2024(%rax,%rsi), %rdi
	movq	%rdi, 3072(%rsp)
	movq	2032(%rax,%rsi), %rdi
	movq	%rdi, 3080(%rsp)
	movq	2040(%rax,%rsi), %rdi
	movq	%rdi, 3088(%rsp)
	movq	2048(%rax,%rsi), %rdi
	movq	%rdi, 3096(%rsp)
	movq	2056(%rax,%rsi), %rdi
	movq	%rdi, 3104(%rsp)
	movq	2064(%rax,%rsi), %rdi
	movq	%rdi, 3112(%rsp)
	movq	2072(%rax,%rsi), %rdi
	movq	%rdi, 3120(%rsp)
	movq	2080(%rax,%rsi), %rdi
	movq	%rdi, 3128(%rsp)
	movq	2088(%rax,%rsi), %rdi
	movq	%rdi, 3136(%rsp)
	movq	2096(%rax,%rsi), %rdi
	movq	%rdi, 3144(%rsp)
	movq	2104(%rax,%rsi), %rdi
	movq	%rdi, 3152(%rsp)
	movq	2112(%rax,%rsi), %rdi
	movq	%rdi, 3160(%rsp)
	movq	2120(%rax,%rsi), %rdi
	movq	%rdi, 3168(%rsp)
	movq	2128(%rax,%rsi), %rdi
	movq	%rdi, 3176(%rsp)
	movq	2136(%rax,%rsi), %rdi
	movq	%rdi, 3184(%rsp)
	movq	2144(%rax,%rsi), %rdi
	movq	%rdi, 3192(%rsp)
	movq	2152(%rax,%rsi), %rdi
	movq	%rdi, 3200(%rsp)
	movq	2160(%rax,%rsi), %rdi
	movq	%rdi, 3208(%rsp)
	movq	2168(%rax,%rsi), %rdi
	movq	%rdi, 3216(%rsp)
	movq	2176(%rax,%rsi), %rdi
	movq	%rdi, 3224(%rsp)
	movq	2184(%rax,%rsi), %rdi
	movq	%rdi, 3232(%rsp)
	movq	2192(%rax,%rsi), %rdi
	movq	%rdi, 3240(%rsp)
	movq	2200(%rax,%rsi), %rdi
	movq	%rdi, 3248(%rsp)
	movq	2208(%rax,%rsi), %rdi
	movq	%rdi, 3256(%rsp)
	movq	2216(%rax,%rsi), %rdi
	movq	%rdi, 3264(%rsp)
	movq	2224(%rax,%rsi), %rdi
	movq	%rdi, 3272(%rsp)
	movq	2232(%rax,%rsi), %rdi
	movq	%rdi, 3280(%rsp)
	movq	2240(%rax,%rsi), %rdi
	movq	%rdi, 3288(%rsp)
	movq	2248(%rax,%rsi), %rdi
	movq	%rdi, 3296(%rsp)
	movq	2256(%rax,%rsi), %rdi
	movq	%rdi, 3304(%rsp)
	movq	2264(%rax,%rsi), %rdi
	movq	%rdi, 3312(%rsp)
	movq	2272(%rax,%rsi), %rdi
	movq	%rdi, 3320(%rsp)
	movq	2280(%rax,%rsi), %rdi
	movq	%rdi, 3328(%rsp)
	movq	2288(%rax,%rsi), %rdi
	movq	%rdi, 3336(%rsp)
	movq	2296(%rax,%rsi), %rdi
	movq	%rdi, 3344(%rsp)
	movq	2304(%rax,%rsi), %rdi
	movq	%rdi, 3352(%rsp)
	movq	2312(%rax,%rsi), %rdi
	movq	%rdi, 3360(%rsp)
	movq	2320(%rax,%rsi), %rdi
	movq	%rdi, 3368(%rsp)
	movq	2328(%rax,%rsi), %rdi
	movq	%rdi, 3376(%rsp)
	movq	2336(%rax,%rsi), %rdi
	movq	%rdi, 3384(%rsp)
	movq	2344(%rax,%rsi), %rdi
	movq	%rdi, 3392(%rsp)
	movq	2352(%rax,%rsi), %rdi
	movq	%rdi, 3400(%rsp)
	movq	2360(%rax,%rsi), %rdi
	movq	%rdi, 3408(%rsp)
	movq	2368(%rax,%rsi), %rdi
	movq	%rdi, 3416(%rsp)
	movq	2376(%rax,%rsi), %rdi
	movq	%rdi, 3424(%rsp)
	movq	2384(%rax,%rsi), %rdi
	movq	%rdi, 3432(%rsp)
	movq	2392(%rax,%rsi), %rdi
	movq	%rdi, 3440(%rsp)
	movq	2400(%rax,%rsi), %rdi
	movq	%rdi, 3448(%rsp)
	movq	2408(%rax,%rsi), %rdi
	movq	%rdi, 3456(%rsp)
	movq	2416(%rax,%rsi), %rdi
	movq	%rdi, 3464(%rsp)
	movq	2424(%rax,%rsi), %rdi
	movq	%rdi, 3472(%rsp)
	movq	2432(%rax,%rsi), %rdi
	movq	%rdi, 3480(%rsp)
	movq	2440(%rax,%rsi), %rdi
	movq	%rdi, 3488(%rsp)
	movq	2448(%rax,%rsi), %rdi
	movq	%rdi, 3496(%rsp)
	movq	2456(%rax,%rsi), %rdi
	movq	%rdi, 3504(%rsp)
	movq	2464(%rax,%rsi), %rdi
	movq	%rdi, 3512(%rsp)
	movq	2472(%rax,%rsi), %rdi
	movq	%rdi, 3520(%rsp)
	movq	2480(%rax,%rsi), %rdi
	movq	%rdi, 3528(%rsp)
	movq	2488(%rax,%rsi), %rdi
	movq	%rdi, 3536(%rsp)
	movq	2496(%rax,%rsi), %rdi
	movq	%rdi, 3544(%rsp)
	movq	2504(%rax,%rsi), %rdi
	movq	%rdi, 3552(%rsp)
	movq	2512(%rax,%rsi), %rdi
	movq	%rdi, 3560(%rsp)
	movq	2520(%rax,%rsi), %rdi
	movq	%rdi, 3568(%rsp)
	movq	2528(%rax,%rsi), %rdi
	movq	%rdi, 3576(%rsp)
	movq	2536(%rax,%rsi), %rdi
	movq	%rdi, 3584(%rsp)
	movq	2544(%rax,%rsi), %rdi
	movq	%rdi, 3592(%rsp)
	movq	2552(%rax,%rsi), %rdi
	movq	%rdi, 3600(%rsp)
	movq	2560(%rax,%rsi), %rdi
	movq	%rdi, 3608(%rsp)
	movq	2568(%rax,%rsi), %rdi
	movq	%rdi, 3616(%rsp)
	movq	2576(%rax,%rsi), %rdi
	movq	%rdi, 3624(%rsp)
	movq	2584(%rax,%rsi), %rdi
	movq	%rdi, 3632(%rsp)
	movq	2592(%rax,%rsi), %rdi
	movq	%rdi, 3640(%rsp)
	movq	2600(%rax,%rsi), %rdi
	movq	%rdi, 3648(%rsp)
	movq	2608(%rax,%rsi), %rdi
	movq	%rdi, 3656(%rsp)
	movq	2616(%rax,%rsi), %rdi
	movq	%rdi, 3664(%rsp)
	movq	2624(%rax,%rsi), %rdi
	movq	%rdi, 3672(%rsp)
	movq	2632(%rax,%rsi), %rdi
	movq	%rdi, 3680(%rsp)
	movq	2640(%rax,%rsi), %rdi
	movq	%rdi, 3688(%rsp)
	movq	2648(%rax,%rsi), %rdi
	movq	%rdi, 3696(%rsp)
	movq	2656(%rax,%rsi), %rdi
	movq	%rdi, 3704(%rsp)
	movq	2664(%rax,%rsi), %rdi
	movq	%rdi, 3712(%rsp)
	movq	2672(%rax,%rsi), %rdi
	movq	%rdi, 3720(%rsp)
	movq	2680(%rax,%rsi), %rdi
	movq	%rdi, 3728(%rsp)
	movq	2688(%rax,%rsi), %rdi
	movq	%rdi, 3736(%rsp)
	movq	2696(%rax,%rsi), %rdi
	movq	%rdi, 3744(%rsp)
	movq	2704(%rax,%rsi), %rdi
	movq	%rdi, 3752(%rsp)
	movq	2712(%rax,%rsi), %rdi
	movq	%rdi, 3760(%rsp)
	movq	2720(%rax,%rsi), %rdi
	movq	%rdi, 3768(%rsp)
	movq	2728(%rax,%rsi), %rdi
	movq	%rdi, 3776(%rsp)
	movq	2736(%rax,%rsi), %rdi
	movq	%rdi, 3784(%rsp)
	movq	2744(%rax,%rsi), %rdi
	movq	%rdi, 3792(%rsp)
	movq	2752(%rax,%rsi), %rdi
	movq	%rdi, 3800(%rsp)
	movq	2760(%rax,%rsi), %rdi
	movq	%rdi, 3808(%rsp)
	movq	2768(%rax,%rsi), %rdi
	movq	%rdi, 3816(%rsp)
	movq	2776(%rax,%rsi), %rdi
	movq	%rdi, 3824(%rsp)
	movq	2784(%rax,%rsi), %rdi
	movq	%rdi, 3832(%rsp)
	movq	2792(%rax,%rsi), %rdi
	movq	%rdi, 3840(%rsp)
	movq	2800(%rax,%rsi), %rdi
	movq	%rdi, 3848(%rsp)
	movq	2808(%rax,%rsi), %rdi
	movq	%rdi, 3856(%rsp)
	movq	2816(%rax,%rsi), %rdi
	movq	%rdi, 3864(%rsp)
	movq	2824(%rax,%rsi), %rdi
	movq	%rdi, 3872(%rsp)
	movq	2832(%rax,%rsi), %rdi
	movq	%rdi, 3880(%rsp)
	movq	2840(%rax,%rsi), %rdi
	movq	%rdi, 3888(%rsp)
	movq	2848(%rax,%rsi), %rdi
	movq	%rdi, 3896(%rsp)
	movq	2856(%rax,%rsi), %rdi
	movq	%rdi, 3904(%rsp)
	movq	2864(%rax,%rsi), %rdi
	movq	%rdi, 3912(%rsp)
	movq	2872(%rax,%rsi), %rdi
	movq	%rdi, 3920(%rsp)
	movq	2880(%rax,%rsi), %rdi
	movq	%rdi, 3928(%rsp)
	movq	2888(%rax,%rsi), %rdi
	movq	%rdi, 3936(%rsp)
	movq	2896(%rax,%rsi), %rdi
	movq	%rdi, 3944(%rsp)
	movq	2904(%rax,%rsi), %rdi
	movq	%rdi, 3952(%rsp)
	movq	2912(%rax,%rsi), %rdi
	movq	%rdi, 3960(%rsp)
	movq	2920(%rax,%rsi), %rdi
	movq	%rdi, 3968(%rsp)
	movq	2928(%rax,%rsi), %rdi
	movq	%rdi, 3976(%rsp)
	movq	2936(%rax,%rsi), %rdi
	movq	%rdi, 3984(%rsp)
	movq	2944(%rax,%rsi), %rdi
	movq	%rdi, 3992(%rsp)
	movq	2952(%rax,%rsi), %rdi
	movq	%rdi, 4000(%rsp)
	movq	2960(%rax,%rsi), %rdi
	movq	%rdi, 4008(%rsp)
	movq	2968(%rax,%rsi), %rdi
	movq	%rdi, 4016(%rsp)
	movq	2976(%rax,%rsi), %rdi
	movq	%rdi, 4024(%rsp)
	movq	2984(%rax,%rsi), %rdi
	movq	%rdi, 4032(%rsp)
	movq	2992(%rax,%rsi), %rdi
	movq	%rdi, 4040(%rsp)
	movq	3000(%rax,%rsi), %rdi
	movq	%rdi, 4048(%rsp)
	movq	3008(%rax,%rsi), %rdi
	movq	%rdi, 4056(%rsp)
	movq	3016(%rax,%rsi), %rdi
	movq	%rdi, 4064(%rsp)
	movq	3024(%rax,%rsi), %rdi
	movq	%rdi, 4072(%rsp)
	movq	3032(%rax,%rsi), %rdi
	movq	%rdi, 4080(%rsp)
	movq	3040(%rax,%rsi), %rdi
	movq	%rdi, 4088(%rsp)
	movq	3048(%rax,%rsi), %rdi
	movq	%rdi, 4096(%rsp)
	movq	3056(%rax,%rsi), %rdi
	movq	%rdi, 4104(%rsp)
	movq	3064(%rax,%rsi), %rax
	movq	%rax, 4112(%rsp)
	imulq	$48, %rcx, %rax
	movq	%rdx, 840(%rsp)
	movq	%rax, 848(%rsp)
	movb	$17, %dl
	movb	$31, %cl
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L_commit_h_x4$5:
	leaq	1048(%rsp), %rdx
	leaq	1816(%rsp), %r10
	leaq	2584(%rsp), %rsi
	leaq	3352(%rsp), %r9
	movq	$768, %r12
	leaq	-24(%rsp), %rsp
	call	LA768x4___absorb_updstate_avx2x4$1
L_commit_h_x4$4:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L_commit_h_x4$3:
	movq	$48, %r12
	leaq	856(%rsp), %rdx
	leaq	904(%rsp), %r10
	leaq	952(%rsp), %rsi
	leaq	1000(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA48x4___squeeze_updstate_avx2x4$1
L_commit_h_x4$2:
	leaq	24(%rsp), %rsp
	movq	840(%rsp), %rcx
	movq	848(%rsp), %rbp
	movq	856(%rsp), %rax
	movq	%rax, (%rcx,%rbp)
	movq	864(%rsp), %rax
	movq	%rax, 8(%rcx,%rbp)
	movq	872(%rsp), %rax
	movq	%rax, 16(%rcx,%rbp)
	movq	880(%rsp), %rax
	movq	%rax, 24(%rcx,%rbp)
	movq	888(%rsp), %rax
	movq	%rax, 32(%rcx,%rbp)
	movq	896(%rsp), %rax
	movq	%rax, 40(%rcx,%rbp)
	movq	904(%rsp), %rax
	movq	%rax, 48(%rcx,%rbp)
	movq	912(%rsp), %rax
	movq	%rax, 56(%rcx,%rbp)
	movq	920(%rsp), %rax
	movq	%rax, 64(%rcx,%rbp)
	movq	928(%rsp), %rax
	movq	%rax, 72(%rcx,%rbp)
	movq	936(%rsp), %rax
	movq	%rax, 80(%rcx,%rbp)
	movq	944(%rsp), %rax
	movq	%rax, 88(%rcx,%rbp)
	movq	952(%rsp), %rax
	movq	%rax, 96(%rcx,%rbp)
	movq	960(%rsp), %rax
	movq	%rax, 104(%rcx,%rbp)
	movq	968(%rsp), %rax
	movq	%rax, 112(%rcx,%rbp)
	movq	976(%rsp), %rax
	movq	%rax, 120(%rcx,%rbp)
	movq	984(%rsp), %rax
	movq	%rax, 128(%rcx,%rbp)
	movq	992(%rsp), %rax
	movq	%rax, 136(%rcx,%rbp)
	movq	1000(%rsp), %rax
	movq	%rax, 144(%rcx,%rbp)
	movq	1008(%rsp), %rax
	movq	%rax, 152(%rcx,%rbp)
	movq	1016(%rsp), %rax
	movq	%rax, 160(%rcx,%rbp)
	movq	1024(%rsp), %rax
	movq	%rax, 168(%rcx,%rbp)
	movq	1032(%rsp), %rax
	movq	%rax, 176(%rcx,%rbp)
	movq	1040(%rsp), %rax
	movq	%rax, 184(%rcx,%rbp)
	ret
Lcommit_x4_verify$1:
	movzwq	%dx, %rsi
	imulq	$24, %rsi, %rsi
	addq	$360, %rsi
	movq	(%rcx,%rsi), %rdi
	movq	%rdi, 872(%rsp)
	movq	8(%rcx,%rsi), %rdi
	movq	%rdi, 880(%rsp)
	movq	16(%rcx,%rsi), %rdi
	movq	%rdi, 888(%rsp)
	movq	24(%rcx,%rsi), %rdi
	movq	%rdi, 896(%rsp)
	movq	32(%rcx,%rsi), %rdi
	movq	%rdi, 904(%rsp)
	movq	40(%rcx,%rsi), %rdi
	movq	%rdi, 912(%rsp)
	movq	48(%rcx,%rsi), %rdi
	movq	%rdi, 920(%rsp)
	movq	56(%rcx,%rsi), %rdi
	movq	%rdi, 928(%rsp)
	movq	64(%rcx,%rsi), %rdi
	movq	%rdi, 936(%rsp)
	movq	72(%rcx,%rsi), %rdi
	movq	%rdi, 944(%rsp)
	movq	80(%rcx,%rsi), %rdi
	movq	%rdi, 952(%rsp)
	movq	88(%rcx,%rsi), %rcx
	movq	%rcx, 960(%rsp)
	movzwq	%ax, %rcx
	imulq	$16, %rcx, %rcx
	imulq	$48, %rcx, %rcx
	movzwq	%dx, %rdi
	imulq	$48, %rdi, %rdi
	addq	%rdi, %rcx
	movq	%r8, 848(%rsp)
	movq	%rbp, 856(%rsp)
	movw	%ax, 840(%rsp)
	movw	%dx, 1160(%rsp)
	movq	%rcx, 864(%rsp)
	movb	$17, %dl
	movb	$31, %cl
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
Lcommit_x4_verify$8:
	movq	$24, %r12
	leaq	872(%rsp), %rdx
	leaq	896(%rsp), %r10
	leaq	920(%rsp), %rsi
	leaq	944(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA24x4___absorb_updstate_avx2x4$1
Lcommit_x4_verify$7:
	leaq	24(%rsp), %rsp
	movq	$32, %r10
	movq	856(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_bcast_updstate_avx2x4$1
Lcommit_x4_verify$6:
	leaq	24(%rsp), %rsp
	movq	$2, %r12
	movw	840(%rsp), %ax
	movw	%ax, 840(%rsp)
	leaq	840(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_bcast_updstate_avx2x4$1
Lcommit_x4_verify$5:
	leaq	24(%rsp), %rsp
	movw	1160(%rsp), %dx
	movw	%dx, 856(%rsp)
	incw	%dx
	movw	%dx, 858(%rsp)
	incw	%dx
	movw	%dx, 860(%rsp)
	incw	%dx
	movw	%dx, 862(%rsp)
	movq	$2, %r12
	leaq	856(%rsp), %rdx
	leaq	858(%rsp), %r10
	leaq	860(%rsp), %rsi
	leaq	862(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_updstate_avx2x4$1
Lcommit_x4_verify$4:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
Lcommit_x4_verify$3:
	movq	$48, %r12
	leaq	968(%rsp), %rdx
	leaq	1016(%rsp), %r10
	leaq	1064(%rsp), %rsi
	leaq	1112(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA48x4___squeeze_updstate_avx2x4$1
Lcommit_x4_verify$2:
	leaq	24(%rsp), %rsp
	movq	848(%rsp), %rcx
	movq	864(%rsp), %rax
	movq	968(%rsp), %rdx
	movq	%rdx, (%rcx,%rax)
	movq	976(%rsp), %rdx
	movq	%rdx, 8(%rcx,%rax)
	movq	984(%rsp), %rdx
	movq	%rdx, 16(%rcx,%rax)
	movq	992(%rsp), %rdx
	movq	%rdx, 24(%rcx,%rax)
	movq	1000(%rsp), %rdx
	movq	%rdx, 32(%rcx,%rax)
	movq	1008(%rsp), %rdx
	movq	%rdx, 40(%rcx,%rax)
	movq	1016(%rsp), %rdx
	movq	%rdx, 48(%rcx,%rax)
	movq	1024(%rsp), %rdx
	movq	%rdx, 56(%rcx,%rax)
	movq	1032(%rsp), %rdx
	movq	%rdx, 64(%rcx,%rax)
	movq	1040(%rsp), %rdx
	movq	%rdx, 72(%rcx,%rax)
	movq	1048(%rsp), %rdx
	movq	%rdx, 80(%rcx,%rax)
	movq	1056(%rsp), %rdx
	movq	%rdx, 88(%rcx,%rax)
	movq	1064(%rsp), %rdx
	movq	%rdx, 96(%rcx,%rax)
	movq	1072(%rsp), %rdx
	movq	%rdx, 104(%rcx,%rax)
	movq	1080(%rsp), %rdx
	movq	%rdx, 112(%rcx,%rax)
	movq	1088(%rsp), %rdx
	movq	%rdx, 120(%rcx,%rax)
	movq	1096(%rsp), %rdx
	movq	%rdx, 128(%rcx,%rax)
	movq	1104(%rsp), %rdx
	movq	%rdx, 136(%rcx,%rax)
	movq	1112(%rsp), %rdx
	movq	%rdx, 144(%rcx,%rax)
	movq	1120(%rsp), %rdx
	movq	%rdx, 152(%rcx,%rax)
	movq	1128(%rsp), %rdx
	movq	%rdx, 160(%rcx,%rax)
	movq	1136(%rsp), %rdx
	movq	%rdx, 168(%rcx,%rax)
	movq	1144(%rsp), %rdx
	movq	%rdx, 176(%rcx,%rax)
	movq	1152(%rsp), %rdx
	movq	%rdx, 184(%rcx,%rax)
	ret
Lcommit_x4$1:
	movzwq	%si, %rdi
	imulq	$24, %rdi, %rdi
	addq	$360, %rdi
	movq	%rax, %r12
	imulq	$744, %r12, %r12
	addq	%r12, %rdi
	movq	(%rcx,%rdi), %r9
	movq	%r9, 880(%rsp)
	movq	8(%rcx,%rdi), %r9
	movq	%r9, 888(%rsp)
	movq	16(%rcx,%rdi), %r9
	movq	%r9, 896(%rsp)
	movq	24(%rcx,%rdi), %r9
	movq	%r9, 904(%rsp)
	movq	32(%rcx,%rdi), %r9
	movq	%r9, 912(%rsp)
	movq	40(%rcx,%rdi), %r9
	movq	%r9, 920(%rsp)
	movq	48(%rcx,%rdi), %r9
	movq	%r9, 928(%rsp)
	movq	56(%rcx,%rdi), %r9
	movq	%r9, 936(%rsp)
	movq	64(%rcx,%rdi), %r9
	movq	%r9, 944(%rsp)
	movq	72(%rcx,%rdi), %r9
	movq	%r9, 952(%rsp)
	movq	80(%rcx,%rdi), %r9
	movq	%r9, 960(%rsp)
	movq	88(%rcx,%rdi), %rcx
	movq	%rcx, 968(%rsp)
	movq	%rax, %rcx
	imulq	$16, %rcx, %rcx
	imulq	$48, %rcx, %rcx
	movzwq	%si, %rdi
	imulq	$48, %rdi, %rdi
	addq	%rdi, %rcx
	movq	%r8, 848(%rsp)
	movq	%rdx, 856(%rsp)
	movq	%rax, 864(%rsp)
	movw	%si, 1168(%rsp)
	movq	%rcx, 872(%rsp)
	movb	$17, %dl
	movb	$31, %cl
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
Lcommit_x4$8:
	movq	$24, %r12
	leaq	880(%rsp), %rdx
	leaq	904(%rsp), %r10
	leaq	928(%rsp), %rsi
	leaq	952(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA24x4___absorb_updstate_avx2x4$1
Lcommit_x4$7:
	leaq	24(%rsp), %rsp
	movq	$32, %r10
	movq	856(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_bcast_updstate_avx2x4$1
Lcommit_x4$6:
	leaq	24(%rsp), %rsp
	movq	$2, %r12
	movq	864(%rsp), %rax
	movw	%ax, 840(%rsp)
	leaq	840(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_bcast_updstate_avx2x4$1
Lcommit_x4$5:
	leaq	24(%rsp), %rsp
	movw	1168(%rsp), %dx
	movw	%dx, 864(%rsp)
	incw	%dx
	movw	%dx, 866(%rsp)
	incw	%dx
	movw	%dx, 868(%rsp)
	incw	%dx
	movw	%dx, 870(%rsp)
	movq	$2, %r12
	leaq	864(%rsp), %rdx
	leaq	866(%rsp), %r10
	leaq	868(%rsp), %rsi
	leaq	870(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_updstate_avx2x4$1
Lcommit_x4$4:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
Lcommit_x4$3:
	movq	$48, %r12
	leaq	976(%rsp), %rdx
	leaq	1024(%rsp), %r10
	leaq	1072(%rsp), %rsi
	leaq	1120(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA48x4___squeeze_updstate_avx2x4$1
Lcommit_x4$2:
	leaq	24(%rsp), %rsp
	movq	848(%rsp), %rcx
	movq	872(%rsp), %rax
	movq	976(%rsp), %rdx
	movq	%rdx, (%rcx,%rax)
	movq	984(%rsp), %rdx
	movq	%rdx, 8(%rcx,%rax)
	movq	992(%rsp), %rdx
	movq	%rdx, 16(%rcx,%rax)
	movq	1000(%rsp), %rdx
	movq	%rdx, 24(%rcx,%rax)
	movq	1008(%rsp), %rdx
	movq	%rdx, 32(%rcx,%rax)
	movq	1016(%rsp), %rdx
	movq	%rdx, 40(%rcx,%rax)
	movq	1024(%rsp), %rdx
	movq	%rdx, 48(%rcx,%rax)
	movq	1032(%rsp), %rdx
	movq	%rdx, 56(%rcx,%rax)
	movq	1040(%rsp), %rdx
	movq	%rdx, 64(%rcx,%rax)
	movq	1048(%rsp), %rdx
	movq	%rdx, 72(%rcx,%rax)
	movq	1056(%rsp), %rdx
	movq	%rdx, 80(%rcx,%rax)
	movq	1064(%rsp), %rdx
	movq	%rdx, 88(%rcx,%rax)
	movq	1072(%rsp), %rdx
	movq	%rdx, 96(%rcx,%rax)
	movq	1080(%rsp), %rdx
	movq	%rdx, 104(%rcx,%rax)
	movq	1088(%rsp), %rdx
	movq	%rdx, 112(%rcx,%rax)
	movq	1096(%rsp), %rdx
	movq	%rdx, 120(%rcx,%rax)
	movq	1104(%rsp), %rdx
	movq	%rdx, 128(%rcx,%rax)
	movq	1112(%rsp), %rdx
	movq	%rdx, 136(%rcx,%rax)
	movq	1120(%rsp), %rdx
	movq	%rdx, 144(%rcx,%rax)
	movq	1128(%rsp), %rdx
	movq	%rdx, 152(%rcx,%rax)
	movq	1136(%rsp), %rdx
	movq	%rdx, 160(%rcx,%rax)
	movq	1144(%rsp), %rdx
	movq	%rdx, 168(%rcx,%rax)
	movq	1152(%rsp), %rdx
	movq	%rdx, 176(%rcx,%rax)
	movq	1160(%rsp), %rdx
	movq	%rdx, 184(%rcx,%rax)
	ret
L_hashTapes_x4$1:
	movq	(%rcx,%rbp), %rdi
	movq	%rdi, 880(%rsp)
	movq	8(%rcx,%rbp), %rdi
	movq	%rdi, 888(%rsp)
	movq	16(%rcx,%rbp), %rdi
	movq	%rdi, 896(%rsp)
	movq	24(%rcx,%rbp), %rdi
	movq	%rdi, 904(%rsp)
	movq	32(%rcx,%rbp), %rdi
	movq	%rdi, 912(%rsp)
	movq	40(%rcx,%rbp), %rdi
	movq	%rdi, 920(%rsp)
	movq	48(%rcx,%rbp), %rdi
	movq	%rdi, 928(%rsp)
	movq	56(%rcx,%rbp), %rdi
	movq	%rdi, 936(%rsp)
	movq	64(%rcx,%rbp), %rdi
	movq	%rdi, 944(%rsp)
	movq	72(%rcx,%rbp), %rdi
	movq	%rdi, 952(%rsp)
	movq	80(%rcx,%rbp), %rdi
	movq	%rdi, 960(%rsp)
	movq	88(%rcx,%rbp), %rcx
	movq	%rcx, 968(%rsp)
	movq	%r8, 848(%rsp)
	movq	%rbx, 856(%rsp)
	movq	%rsi, 864(%rsp)
	movw	%dx, 1744(%rsp)
	movq	%rax, 872(%rsp)
	movb	$17, %dl
	movb	$31, %cl
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L_hashTapes_x4$8:
	movq	$24, %r12
	leaq	880(%rsp), %rdx
	leaq	904(%rsp), %r10
	leaq	928(%rsp), %rsi
	leaq	952(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA24x4___absorb_updstate_avx2x4$1
L_hashTapes_x4$7:
	leaq	24(%rsp), %rsp
	movq	856(%rsp), %rdx
	movq	$32, %r10
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_bcast_updstate_avx2x4$1
L_hashTapes_x4$6:
	leaq	24(%rsp), %rsp
	movq	864(%rsp), %rax
	movw	%ax, 840(%rsp)
	movq	$2, %r12
	leaq	840(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_bcast_updstate_avx2x4$1
L_hashTapes_x4$5:
	leaq	24(%rsp), %rsp
	movw	1744(%rsp), %dx
	movw	%dx, 864(%rsp)
	incw	%dx
	movw	%dx, 866(%rsp)
	incw	%dx
	movw	%dx, 868(%rsp)
	incw	%dx
	movw	%dx, 870(%rsp)
	movq	$2, %r12
	leaq	864(%rsp), %rdx
	leaq	866(%rsp), %r10
	leaq	868(%rsp), %rsi
	leaq	870(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_updstate_avx2x4$1
L_hashTapes_x4$4:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L_hashTapes_x4$3:
	movq	$192, %r12
	leaq	976(%rsp), %rdx
	leaq	1168(%rsp), %r10
	leaq	1360(%rsp), %rsi
	leaq	1552(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA192x4___squeeze_updstate_avx2x4$1
L_hashTapes_x4$2:
	leaq	24(%rsp), %rsp
	movq	848(%rsp), %r8
	movq	872(%rsp), %rax
	movq	976(%rsp), %rcx
	movq	%rcx, (%r8,%rax)
	movq	984(%rsp), %rcx
	movq	%rcx, 8(%r8,%rax)
	movq	992(%rsp), %rcx
	movq	%rcx, 16(%r8,%rax)
	movq	1000(%rsp), %rcx
	movq	%rcx, 24(%r8,%rax)
	movq	1008(%rsp), %rcx
	movq	%rcx, 32(%r8,%rax)
	movq	1016(%rsp), %rcx
	movq	%rcx, 40(%r8,%rax)
	movq	1024(%rsp), %rcx
	movq	%rcx, 48(%r8,%rax)
	movq	1032(%rsp), %rcx
	movq	%rcx, 56(%r8,%rax)
	movq	1040(%rsp), %rcx
	movq	%rcx, 64(%r8,%rax)
	movq	1048(%rsp), %rcx
	movq	%rcx, 72(%r8,%rax)
	movq	1056(%rsp), %rcx
	movq	%rcx, 80(%r8,%rax)
	movq	1064(%rsp), %rcx
	movq	%rcx, 88(%r8,%rax)
	movq	1072(%rsp), %rcx
	movq	%rcx, 96(%r8,%rax)
	movq	1080(%rsp), %rcx
	movq	%rcx, 104(%r8,%rax)
	movq	1088(%rsp), %rcx
	movq	%rcx, 112(%r8,%rax)
	movq	1096(%rsp), %rcx
	movq	%rcx, 120(%r8,%rax)
	movq	1104(%rsp), %rcx
	movq	%rcx, 128(%r8,%rax)
	movq	1112(%rsp), %rcx
	movq	%rcx, 136(%r8,%rax)
	movq	1120(%rsp), %rcx
	movq	%rcx, 144(%r8,%rax)
	movq	1128(%rsp), %rcx
	movq	%rcx, 152(%r8,%rax)
	movq	1136(%rsp), %rcx
	movq	%rcx, 160(%r8,%rax)
	movq	1144(%rsp), %rcx
	movq	%rcx, 168(%r8,%rax)
	movq	1152(%rsp), %rcx
	movq	%rcx, 176(%r8,%rax)
	movq	1160(%rsp), %rcx
	movq	%rcx, 184(%r8,%rax)
	movq	1168(%rsp), %rcx
	movq	%rcx, 192(%r8,%rax)
	movq	1176(%rsp), %rcx
	movq	%rcx, 200(%r8,%rax)
	movq	1184(%rsp), %rcx
	movq	%rcx, 208(%r8,%rax)
	movq	1192(%rsp), %rcx
	movq	%rcx, 216(%r8,%rax)
	movq	1200(%rsp), %rcx
	movq	%rcx, 224(%r8,%rax)
	movq	1208(%rsp), %rcx
	movq	%rcx, 232(%r8,%rax)
	movq	1216(%rsp), %rcx
	movq	%rcx, 240(%r8,%rax)
	movq	1224(%rsp), %rcx
	movq	%rcx, 248(%r8,%rax)
	movq	1232(%rsp), %rcx
	movq	%rcx, 256(%r8,%rax)
	movq	1240(%rsp), %rcx
	movq	%rcx, 264(%r8,%rax)
	movq	1248(%rsp), %rcx
	movq	%rcx, 272(%r8,%rax)
	movq	1256(%rsp), %rcx
	movq	%rcx, 280(%r8,%rax)
	movq	1264(%rsp), %rcx
	movq	%rcx, 288(%r8,%rax)
	movq	1272(%rsp), %rcx
	movq	%rcx, 296(%r8,%rax)
	movq	1280(%rsp), %rcx
	movq	%rcx, 304(%r8,%rax)
	movq	1288(%rsp), %rcx
	movq	%rcx, 312(%r8,%rax)
	movq	1296(%rsp), %rcx
	movq	%rcx, 320(%r8,%rax)
	movq	1304(%rsp), %rcx
	movq	%rcx, 328(%r8,%rax)
	movq	1312(%rsp), %rcx
	movq	%rcx, 336(%r8,%rax)
	movq	1320(%rsp), %rcx
	movq	%rcx, 344(%r8,%rax)
	movq	1328(%rsp), %rcx
	movq	%rcx, 352(%r8,%rax)
	movq	1336(%rsp), %rcx
	movq	%rcx, 360(%r8,%rax)
	movq	1344(%rsp), %rcx
	movq	%rcx, 368(%r8,%rax)
	movq	1352(%rsp), %rcx
	movq	%rcx, 376(%r8,%rax)
	movq	1360(%rsp), %rcx
	movq	%rcx, 384(%r8,%rax)
	movq	1368(%rsp), %rcx
	movq	%rcx, 392(%r8,%rax)
	movq	1376(%rsp), %rcx
	movq	%rcx, 400(%r8,%rax)
	movq	1384(%rsp), %rcx
	movq	%rcx, 408(%r8,%rax)
	movq	1392(%rsp), %rcx
	movq	%rcx, 416(%r8,%rax)
	movq	1400(%rsp), %rcx
	movq	%rcx, 424(%r8,%rax)
	movq	1408(%rsp), %rcx
	movq	%rcx, 432(%r8,%rax)
	movq	1416(%rsp), %rcx
	movq	%rcx, 440(%r8,%rax)
	movq	1424(%rsp), %rcx
	movq	%rcx, 448(%r8,%rax)
	movq	1432(%rsp), %rcx
	movq	%rcx, 456(%r8,%rax)
	movq	1440(%rsp), %rcx
	movq	%rcx, 464(%r8,%rax)
	movq	1448(%rsp), %rcx
	movq	%rcx, 472(%r8,%rax)
	movq	1456(%rsp), %rcx
	movq	%rcx, 480(%r8,%rax)
	movq	1464(%rsp), %rcx
	movq	%rcx, 488(%r8,%rax)
	movq	1472(%rsp), %rcx
	movq	%rcx, 496(%r8,%rax)
	movq	1480(%rsp), %rcx
	movq	%rcx, 504(%r8,%rax)
	movq	1488(%rsp), %rcx
	movq	%rcx, 512(%r8,%rax)
	movq	1496(%rsp), %rcx
	movq	%rcx, 520(%r8,%rax)
	movq	1504(%rsp), %rcx
	movq	%rcx, 528(%r8,%rax)
	movq	1512(%rsp), %rcx
	movq	%rcx, 536(%r8,%rax)
	movq	1520(%rsp), %rcx
	movq	%rcx, 544(%r8,%rax)
	movq	1528(%rsp), %rcx
	movq	%rcx, 552(%r8,%rax)
	movq	1536(%rsp), %rcx
	movq	%rcx, 560(%r8,%rax)
	movq	1544(%rsp), %rcx
	movq	%rcx, 568(%r8,%rax)
	movq	1552(%rsp), %rcx
	movq	%rcx, 576(%r8,%rax)
	movq	1560(%rsp), %rcx
	movq	%rcx, 584(%r8,%rax)
	movq	1568(%rsp), %rcx
	movq	%rcx, 592(%r8,%rax)
	movq	1576(%rsp), %rcx
	movq	%rcx, 600(%r8,%rax)
	movq	1584(%rsp), %rcx
	movq	%rcx, 608(%r8,%rax)
	movq	1592(%rsp), %rcx
	movq	%rcx, 616(%r8,%rax)
	movq	1600(%rsp), %rcx
	movq	%rcx, 624(%r8,%rax)
	movq	1608(%rsp), %rcx
	movq	%rcx, 632(%r8,%rax)
	movq	1616(%rsp), %rcx
	movq	%rcx, 640(%r8,%rax)
	movq	1624(%rsp), %rcx
	movq	%rcx, 648(%r8,%rax)
	movq	1632(%rsp), %rcx
	movq	%rcx, 656(%r8,%rax)
	movq	1640(%rsp), %rcx
	movq	%rcx, 664(%r8,%rax)
	movq	1648(%rsp), %rcx
	movq	%rcx, 672(%r8,%rax)
	movq	1656(%rsp), %rcx
	movq	%rcx, 680(%r8,%rax)
	movq	1664(%rsp), %rcx
	movq	%rcx, 688(%r8,%rax)
	movq	1672(%rsp), %rcx
	movq	%rcx, 696(%r8,%rax)
	movq	1680(%rsp), %rcx
	movq	%rcx, 704(%r8,%rax)
	movq	1688(%rsp), %rcx
	movq	%rcx, 712(%r8,%rax)
	movq	1696(%rsp), %rcx
	movq	%rcx, 720(%r8,%rax)
	movq	1704(%rsp), %rcx
	movq	%rcx, 728(%r8,%rax)
	movq	1712(%rsp), %rcx
	movq	%rcx, 736(%r8,%rax)
	movq	1720(%rsp), %rcx
	movq	%rcx, 744(%r8,%rax)
	movq	1728(%rsp), %rcx
	movq	%rcx, 752(%r8,%rax)
	movq	1736(%rsp), %rcx
	movq	%rcx, 760(%r8,%rax)
	ret
L_hashSeed_x4_2$1:
	movq	%rcx, 856(%rsp)
	movq	%rax, 864(%rsp)
	movq	%rdi, 872(%rsp)
	movq	%rbx, 880(%rsp)
	movw	%r8w, 848(%rsp)
	movw	%dx, 984(%rsp)
	movb	$17, %dl
	movb	$31, %cl
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L_hashSeed_x4_2$11:
	movq	$1, %r10
	movb	$1, 840(%rsp)
	leaq	840(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA1x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_2$10:
	leaq	24(%rsp), %rsp
	movq	864(%rsp), %rax
	movq	872(%rsp), %rdi
	movq	$0, %rcx
	jmp 	L_hashSeed_x4_2$8
L_hashSeed_x4_2$9:
	movq	(%rax,%rdi), %rdx
	movq	%rdx, 888(%rsp,%rcx)
	addq	$8, %rdi
	addq	$8, %rcx
L_hashSeed_x4_2$8:
	cmpq	$96, %rcx
	jb  	L_hashSeed_x4_2$9
	movq	$24, %r12
	leaq	888(%rsp), %rdx
	leaq	912(%rsp), %r10
	leaq	936(%rsp), %rsi
	leaq	960(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA24x4___absorb_updstate_avx2x4$1
L_hashSeed_x4_2$7:
	leaq	24(%rsp), %rsp
	movq	$32, %r10
	movq	880(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_2$6:
	leaq	24(%rsp), %rsp
	movq	$2, %r12
	movw	848(%rsp), %ax
	movw	%ax, 848(%rsp)
	leaq	848(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_2$5:
	leaq	24(%rsp), %rsp
	movq	$2, %r12
	movw	984(%rsp), %ax
	movw	%ax, 880(%rsp)
	incw	%ax
	movw	%ax, 882(%rsp)
	incw	%ax
	movw	%ax, 884(%rsp)
	incw	%ax
	movw	%ax, 886(%rsp)
	leaq	880(%rsp), %rdx
	leaq	882(%rsp), %r10
	leaq	884(%rsp), %rsi
	leaq	886(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_updstate_avx2x4$1
L_hashSeed_x4_2$4:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L_hashSeed_x4_2$3:
	movq	856(%rsp), %rcx
	movq	$48, %r12
	movq	%rcx, %rdx
	leaq	64(%rcx), %r10
	leaq	128(%rcx), %rsi
	leaq	192(%rcx), %r9
	leaq	-24(%rsp), %rsp
	call	LA64x4___squeeze_updstate_avx2x4$1
L_hashSeed_x4_2$2:
	leaq	24(%rsp), %rsp
	ret
L_hashSeed_x4_1$1:
	movq	(%rax,%rdi), %rsi
	movq	%rsi, 872(%rsp)
	movq	8(%rax,%rdi), %rsi
	movq	%rsi, 880(%rsp)
	movq	16(%rax,%rdi), %rsi
	movq	%rsi, 888(%rsp)
	movq	24(%rax,%rdi), %rsi
	movq	%rsi, 896(%rsp)
	movq	32(%rax,%rdi), %rsi
	movq	%rsi, 904(%rsp)
	movq	40(%rax,%rdi), %rsi
	movq	%rsi, 912(%rsp)
	movq	48(%rax,%rdi), %rsi
	movq	%rsi, 920(%rsp)
	movq	56(%rax,%rdi), %rsi
	movq	%rsi, 928(%rsp)
	movq	64(%rax,%rdi), %rsi
	movq	%rsi, 936(%rsp)
	movq	72(%rax,%rdi), %rsi
	movq	%rsi, 944(%rsp)
	movq	80(%rax,%rdi), %rsi
	movq	%rsi, 952(%rsp)
	movq	88(%rax,%rdi), %rax
	movq	%rax, 960(%rsp)
	movq	%rcx, 856(%rsp)
	movq	%rbx, 864(%rsp)
	movw	%r8w, 848(%rsp)
	movw	%dx, 968(%rsp)
	movb	$17, %dl
	movb	$31, %cl
	leaq	32(%rsp), %r11
	call	L_init_updstate_avx2x4$1
L_hashSeed_x4_1$9:
	movq	$1, %r10
	movb	$1, 840(%rsp)
	leaq	840(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	LA1x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_1$8:
	leaq	24(%rsp), %rsp
	movq	$24, %r12
	leaq	872(%rsp), %rdx
	leaq	896(%rsp), %r10
	leaq	920(%rsp), %rsi
	leaq	944(%rsp), %r9
	leaq	-24(%rsp), %rsp
	call	LA24x4___absorb_updstate_avx2x4$1
L_hashSeed_x4_1$7:
	leaq	24(%rsp), %rsp
	movq	$32, %r10
	movq	864(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA32x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_1$6:
	leaq	24(%rsp), %rsp
	movq	$2, %r12
	movw	848(%rsp), %ax
	movw	%ax, 848(%rsp)
	leaq	848(%rsp), %rdx
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_bcast_updstate_avx2x4$1
L_hashSeed_x4_1$5:
	leaq	24(%rsp), %rsp
	movw	968(%rsp), %ax
	movw	%ax, 864(%rsp)
	incw	%ax
	movw	%ax, 866(%rsp)
	incw	%ax
	movw	%ax, 868(%rsp)
	incw	%ax
	movw	%ax, 870(%rsp)
	leaq	864(%rsp), %rdx
	leaq	866(%rsp), %r10
	leaq	868(%rsp), %rsi
	leaq	870(%rsp), %r9
	movq	$2, %r12
	leaq	-24(%rsp), %rsp
	call	LA2x4___absorb_updstate_avx2x4$1
L_hashSeed_x4_1$4:
	leaq	24(%rsp), %rsp
	call	L_finish_updstate_avx2x4$1
L_hashSeed_x4_1$3:
	movq	856(%rsp), %rcx
	movq	$48, %r12
	movq	%rcx, %rdx
	leaq	64(%rcx), %r10
	leaq	128(%rcx), %rsi
	leaq	192(%rcx), %r9
	leaq	-24(%rsp), %rsp
	call	LA64x4___squeeze_updstate_avx2x4$1
L_hashSeed_x4_1$2:
	leaq	24(%rsp), %rsp
	ret
LA1536x4___absorb_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA1536x4___absorb_updstate_avx2x4$7:
	movq	%r11, %r8
	movq	%r11, 8(%rsp)
	movq	$0, %r11
	addq	%rax, %r12
	jmp 	LA1536x4___absorb_updstate_avx2x4$3
LA1536x4___absorb_updstate_avx2x4$4:
	movq	%r12, 16(%rsp)
	call	LA1536x4___add_updstate_avx2x4$1
LA1536x4___absorb_updstate_avx2x4$6:
	movq	16(%rsp), %r12
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA1536x4___absorb_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r12
	movq	$0, %rax
LA1536x4___absorb_updstate_avx2x4$3:
	cmpq	%r12, %rdi
	jbe 	LA1536x4___absorb_updstate_avx2x4$4
	movq	%r12, %rdi
	call	LA1536x4___add_updstate_avx2x4$1
LA1536x4___absorb_updstate_avx2x4$2:
	movq	8(%rsp), %r11
	movb	%al, 800(%r11)
	ret
LA1536x4___add_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA1536x4___add_updstate_avx2x4$29
	movq	%rdi, %r12
	subq	%rax, %r12
	shrq	$3, %rax
	shlq	$3, %rax
	movb	%r14b, %bl
	shlb	$3, %bl
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LA1536x4___add_updstate_avx2x4$50
	testq	$4, %r12
	jne 	LA1536x4___add_updstate_avx2x4$54
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1536x4___add_updstate_avx2x4$55
LA1536x4___add_updstate_avx2x4$54:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA1536x4___add_updstate_avx2x4$55:
	testq	$2, %r12
	je  	LA1536x4___add_updstate_avx2x4$53
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA1536x4___add_updstate_avx2x4$53:
	testq	$1, %r12
	je  	LA1536x4___add_updstate_avx2x4$51
	movzbq	(%rdx,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA1536x4___add_updstate_avx2x4$52:
	jmp 	LA1536x4___add_updstate_avx2x4$51
LA1536x4___add_updstate_avx2x4$50:
	movq	(%rdx,%r13), %rbp
LA1536x4___add_updstate_avx2x4$51:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LA1536x4___add_updstate_avx2x4$44
	testq	$4, %r12
	jne 	LA1536x4___add_updstate_avx2x4$48
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1536x4___add_updstate_avx2x4$49
LA1536x4___add_updstate_avx2x4$48:
	movl	(%r10,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA1536x4___add_updstate_avx2x4$49:
	testq	$2, %r12
	je  	LA1536x4___add_updstate_avx2x4$47
	movzwq	(%r10,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA1536x4___add_updstate_avx2x4$47:
	testq	$1, %r12
	je  	LA1536x4___add_updstate_avx2x4$45
	movzbq	(%r10,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA1536x4___add_updstate_avx2x4$46:
	jmp 	LA1536x4___add_updstate_avx2x4$45
LA1536x4___add_updstate_avx2x4$44:
	movq	(%r10,%r13), %rbp
LA1536x4___add_updstate_avx2x4$45:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 8(%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LA1536x4___add_updstate_avx2x4$38
	testq	$4, %r12
	jne 	LA1536x4___add_updstate_avx2x4$42
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1536x4___add_updstate_avx2x4$43
LA1536x4___add_updstate_avx2x4$42:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA1536x4___add_updstate_avx2x4$43:
	testq	$2, %r12
	je  	LA1536x4___add_updstate_avx2x4$41
	movzwq	(%rsi,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA1536x4___add_updstate_avx2x4$41:
	testq	$1, %r12
	je  	LA1536x4___add_updstate_avx2x4$39
	movzbq	(%rsi,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA1536x4___add_updstate_avx2x4$40:
	jmp 	LA1536x4___add_updstate_avx2x4$39
LA1536x4___add_updstate_avx2x4$38:
	movq	(%rsi,%r13), %rbp
LA1536x4___add_updstate_avx2x4$39:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 16(%r8,%rax,4)
	movq	%r11, %rbp
	cmpq	$8, %r12
	jnb 	LA1536x4___add_updstate_avx2x4$32
	testq	$4, %r12
	jne 	LA1536x4___add_updstate_avx2x4$36
	movq	$0, %r13
	movb	$0, %cl
	jmp 	LA1536x4___add_updstate_avx2x4$37
LA1536x4___add_updstate_avx2x4$36:
	movl	(%r9,%rbp), %r13d
	addq	$4, %rbp
	movb	$32, %cl
LA1536x4___add_updstate_avx2x4$37:
	testq	$2, %r12
	je  	LA1536x4___add_updstate_avx2x4$35
	movzwq	(%r9,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	addq	$2, %rbp
	addb	$16, %cl
LA1536x4___add_updstate_avx2x4$35:
	testq	$1, %r12
	je  	LA1536x4___add_updstate_avx2x4$33
	movzbq	(%r9,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	incq	%rbp
LA1536x4___add_updstate_avx2x4$34:
	jmp 	LA1536x4___add_updstate_avx2x4$33
LA1536x4___add_updstate_avx2x4$32:
	movq	(%r9,%rbp), %r13
	addq	$8, %rbp
LA1536x4___add_updstate_avx2x4$33:
	movb	%bl, %cl
	shlq	%cl, %r13
	xorq	%r13, 24(%r8,%rax,4)
	addq	%r14, %r12
	cmpq	$8, %r12
	jnb 	LA1536x4___add_updstate_avx2x4$30
	movq	%rbp, %r11
	movq	%rdi, %rax
	jmp 	LA1536x4___add_updstate_avx2x4$29
LA1536x4___add_updstate_avx2x4$30:
	addq	$8, %r11
	subq	%r14, %r11
	addq	$8, %rax
LA1536x4___add_updstate_avx2x4$31:
LA1536x4___add_updstate_avx2x4$29:
	movq	%rax, %rcx
	jmp 	LA1536x4___add_updstate_avx2x4$27
LA1536x4___add_updstate_avx2x4$28:
	movq	(%rdx,%r11), %rbp
	xorq	%rbp, (%r8,%rax,4)
	movq	(%r10,%r11), %rbp
	xorq	%rbp, 8(%r8,%rax,4)
	movq	(%rsi,%r11), %rbp
	xorq	%rbp, 16(%r8,%rax,4)
	movq	(%r9,%r11), %rbp
	xorq	%rbp, 24(%r8,%rax,4)
	movq	%rcx, %rax
	addq	$8, %r11
LA1536x4___add_updstate_avx2x4$27:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA1536x4___add_updstate_avx2x4$28
	cmpq	%rdi, %rax
	jnb 	LA1536x4___add_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LA1536x4___add_updstate_avx2x4$21
	testq	$4, %rbx
	jne 	LA1536x4___add_updstate_avx2x4$25
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1536x4___add_updstate_avx2x4$26
LA1536x4___add_updstate_avx2x4$25:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA1536x4___add_updstate_avx2x4$26:
	testq	$2, %rbx
	je  	LA1536x4___add_updstate_avx2x4$24
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA1536x4___add_updstate_avx2x4$24:
	testq	$1, %rbx
	je  	LA1536x4___add_updstate_avx2x4$22
	movzbq	(%rdx,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA1536x4___add_updstate_avx2x4$23:
	jmp 	LA1536x4___add_updstate_avx2x4$22
LA1536x4___add_updstate_avx2x4$21:
	movq	(%rdx,%r13), %rbp
LA1536x4___add_updstate_avx2x4$22:
	xorq	%rbp, (%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LA1536x4___add_updstate_avx2x4$15
	testq	$4, %rbx
	jne 	LA1536x4___add_updstate_avx2x4$19
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1536x4___add_updstate_avx2x4$20
LA1536x4___add_updstate_avx2x4$19:
	movl	(%r10,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA1536x4___add_updstate_avx2x4$20:
	testq	$2, %rbx
	je  	LA1536x4___add_updstate_avx2x4$18
	movzwq	(%r10,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA1536x4___add_updstate_avx2x4$18:
	testq	$1, %rbx
	je  	LA1536x4___add_updstate_avx2x4$16
	movzbq	(%r10,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA1536x4___add_updstate_avx2x4$17:
	jmp 	LA1536x4___add_updstate_avx2x4$16
LA1536x4___add_updstate_avx2x4$15:
	movq	(%r10,%r13), %rbp
LA1536x4___add_updstate_avx2x4$16:
	xorq	%rbp, 8(%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LA1536x4___add_updstate_avx2x4$9
	testq	$4, %rbx
	jne 	LA1536x4___add_updstate_avx2x4$13
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1536x4___add_updstate_avx2x4$14
LA1536x4___add_updstate_avx2x4$13:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA1536x4___add_updstate_avx2x4$14:
	testq	$2, %rbx
	je  	LA1536x4___add_updstate_avx2x4$12
	movzwq	(%rsi,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA1536x4___add_updstate_avx2x4$12:
	testq	$1, %rbx
	je  	LA1536x4___add_updstate_avx2x4$10
	movzbq	(%rsi,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA1536x4___add_updstate_avx2x4$11:
	jmp 	LA1536x4___add_updstate_avx2x4$10
LA1536x4___add_updstate_avx2x4$9:
	movq	(%rsi,%r13), %rbp
LA1536x4___add_updstate_avx2x4$10:
	xorq	%rbp, 16(%r8,%rax,4)
	cmpq	$8, %rbx
	jnb 	LA1536x4___add_updstate_avx2x4$3
	testq	$4, %rbx
	jne 	LA1536x4___add_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1536x4___add_updstate_avx2x4$8
LA1536x4___add_updstate_avx2x4$7:
	movl	(%r9,%r11), %ebp
	addq	$4, %r11
	movb	$32, %cl
LA1536x4___add_updstate_avx2x4$8:
	testq	$2, %rbx
	je  	LA1536x4___add_updstate_avx2x4$6
	movzwq	(%r9,%r11), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r11
	addb	$16, %cl
LA1536x4___add_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LA1536x4___add_updstate_avx2x4$4
	movzbq	(%r9,%r11), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r11
LA1536x4___add_updstate_avx2x4$5:
	jmp 	LA1536x4___add_updstate_avx2x4$4
LA1536x4___add_updstate_avx2x4$3:
	movq	(%r9,%r11), %rbp
	addq	$8, %r11
LA1536x4___add_updstate_avx2x4$4:
	xorq	%rbp, 24(%r8,%rax,4)
LA1536x4___add_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LA768x4___absorb_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA768x4___absorb_updstate_avx2x4$7:
	movq	%r11, %r8
	movq	%r11, 8(%rsp)
	movq	$0, %r11
	addq	%rax, %r12
	jmp 	LA768x4___absorb_updstate_avx2x4$3
LA768x4___absorb_updstate_avx2x4$4:
	movq	%r12, 16(%rsp)
	call	LA768x4___add_updstate_avx2x4$1
LA768x4___absorb_updstate_avx2x4$6:
	movq	16(%rsp), %r12
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA768x4___absorb_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r12
	movq	$0, %rax
LA768x4___absorb_updstate_avx2x4$3:
	cmpq	%r12, %rdi
	jbe 	LA768x4___absorb_updstate_avx2x4$4
	movq	%r12, %rdi
	call	LA768x4___add_updstate_avx2x4$1
LA768x4___absorb_updstate_avx2x4$2:
	movq	8(%rsp), %r11
	movb	%al, 800(%r11)
	ret
LA768x4___add_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA768x4___add_updstate_avx2x4$29
	movq	%rdi, %r12
	subq	%rax, %r12
	shrq	$3, %rax
	shlq	$3, %rax
	movb	%r14b, %bl
	shlb	$3, %bl
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LA768x4___add_updstate_avx2x4$50
	testq	$4, %r12
	jne 	LA768x4___add_updstate_avx2x4$54
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA768x4___add_updstate_avx2x4$55
LA768x4___add_updstate_avx2x4$54:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA768x4___add_updstate_avx2x4$55:
	testq	$2, %r12
	je  	LA768x4___add_updstate_avx2x4$53
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA768x4___add_updstate_avx2x4$53:
	testq	$1, %r12
	je  	LA768x4___add_updstate_avx2x4$51
	movzbq	(%rdx,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA768x4___add_updstate_avx2x4$52:
	jmp 	LA768x4___add_updstate_avx2x4$51
LA768x4___add_updstate_avx2x4$50:
	movq	(%rdx,%r13), %rbp
LA768x4___add_updstate_avx2x4$51:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LA768x4___add_updstate_avx2x4$44
	testq	$4, %r12
	jne 	LA768x4___add_updstate_avx2x4$48
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA768x4___add_updstate_avx2x4$49
LA768x4___add_updstate_avx2x4$48:
	movl	(%r10,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA768x4___add_updstate_avx2x4$49:
	testq	$2, %r12
	je  	LA768x4___add_updstate_avx2x4$47
	movzwq	(%r10,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA768x4___add_updstate_avx2x4$47:
	testq	$1, %r12
	je  	LA768x4___add_updstate_avx2x4$45
	movzbq	(%r10,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA768x4___add_updstate_avx2x4$46:
	jmp 	LA768x4___add_updstate_avx2x4$45
LA768x4___add_updstate_avx2x4$44:
	movq	(%r10,%r13), %rbp
LA768x4___add_updstate_avx2x4$45:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 8(%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LA768x4___add_updstate_avx2x4$38
	testq	$4, %r12
	jne 	LA768x4___add_updstate_avx2x4$42
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA768x4___add_updstate_avx2x4$43
LA768x4___add_updstate_avx2x4$42:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA768x4___add_updstate_avx2x4$43:
	testq	$2, %r12
	je  	LA768x4___add_updstate_avx2x4$41
	movzwq	(%rsi,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA768x4___add_updstate_avx2x4$41:
	testq	$1, %r12
	je  	LA768x4___add_updstate_avx2x4$39
	movzbq	(%rsi,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA768x4___add_updstate_avx2x4$40:
	jmp 	LA768x4___add_updstate_avx2x4$39
LA768x4___add_updstate_avx2x4$38:
	movq	(%rsi,%r13), %rbp
LA768x4___add_updstate_avx2x4$39:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 16(%r8,%rax,4)
	movq	%r11, %rbp
	cmpq	$8, %r12
	jnb 	LA768x4___add_updstate_avx2x4$32
	testq	$4, %r12
	jne 	LA768x4___add_updstate_avx2x4$36
	movq	$0, %r13
	movb	$0, %cl
	jmp 	LA768x4___add_updstate_avx2x4$37
LA768x4___add_updstate_avx2x4$36:
	movl	(%r9,%rbp), %r13d
	addq	$4, %rbp
	movb	$32, %cl
LA768x4___add_updstate_avx2x4$37:
	testq	$2, %r12
	je  	LA768x4___add_updstate_avx2x4$35
	movzwq	(%r9,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	addq	$2, %rbp
	addb	$16, %cl
LA768x4___add_updstate_avx2x4$35:
	testq	$1, %r12
	je  	LA768x4___add_updstate_avx2x4$33
	movzbq	(%r9,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	incq	%rbp
LA768x4___add_updstate_avx2x4$34:
	jmp 	LA768x4___add_updstate_avx2x4$33
LA768x4___add_updstate_avx2x4$32:
	movq	(%r9,%rbp), %r13
	addq	$8, %rbp
LA768x4___add_updstate_avx2x4$33:
	movb	%bl, %cl
	shlq	%cl, %r13
	xorq	%r13, 24(%r8,%rax,4)
	addq	%r14, %r12
	cmpq	$8, %r12
	jnb 	LA768x4___add_updstate_avx2x4$30
	movq	%rbp, %r11
	movq	%rdi, %rax
	jmp 	LA768x4___add_updstate_avx2x4$29
LA768x4___add_updstate_avx2x4$30:
	addq	$8, %r11
	subq	%r14, %r11
	addq	$8, %rax
LA768x4___add_updstate_avx2x4$31:
LA768x4___add_updstate_avx2x4$29:
	movq	%rax, %rcx
	jmp 	LA768x4___add_updstate_avx2x4$27
LA768x4___add_updstate_avx2x4$28:
	movq	(%rdx,%r11), %rbp
	xorq	%rbp, (%r8,%rax,4)
	movq	(%r10,%r11), %rbp
	xorq	%rbp, 8(%r8,%rax,4)
	movq	(%rsi,%r11), %rbp
	xorq	%rbp, 16(%r8,%rax,4)
	movq	(%r9,%r11), %rbp
	xorq	%rbp, 24(%r8,%rax,4)
	movq	%rcx, %rax
	addq	$8, %r11
LA768x4___add_updstate_avx2x4$27:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA768x4___add_updstate_avx2x4$28
	cmpq	%rdi, %rax
	jnb 	LA768x4___add_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LA768x4___add_updstate_avx2x4$21
	testq	$4, %rbx
	jne 	LA768x4___add_updstate_avx2x4$25
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA768x4___add_updstate_avx2x4$26
LA768x4___add_updstate_avx2x4$25:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA768x4___add_updstate_avx2x4$26:
	testq	$2, %rbx
	je  	LA768x4___add_updstate_avx2x4$24
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA768x4___add_updstate_avx2x4$24:
	testq	$1, %rbx
	je  	LA768x4___add_updstate_avx2x4$22
	movzbq	(%rdx,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA768x4___add_updstate_avx2x4$23:
	jmp 	LA768x4___add_updstate_avx2x4$22
LA768x4___add_updstate_avx2x4$21:
	movq	(%rdx,%r13), %rbp
LA768x4___add_updstate_avx2x4$22:
	xorq	%rbp, (%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LA768x4___add_updstate_avx2x4$15
	testq	$4, %rbx
	jne 	LA768x4___add_updstate_avx2x4$19
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA768x4___add_updstate_avx2x4$20
LA768x4___add_updstate_avx2x4$19:
	movl	(%r10,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA768x4___add_updstate_avx2x4$20:
	testq	$2, %rbx
	je  	LA768x4___add_updstate_avx2x4$18
	movzwq	(%r10,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA768x4___add_updstate_avx2x4$18:
	testq	$1, %rbx
	je  	LA768x4___add_updstate_avx2x4$16
	movzbq	(%r10,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA768x4___add_updstate_avx2x4$17:
	jmp 	LA768x4___add_updstate_avx2x4$16
LA768x4___add_updstate_avx2x4$15:
	movq	(%r10,%r13), %rbp
LA768x4___add_updstate_avx2x4$16:
	xorq	%rbp, 8(%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LA768x4___add_updstate_avx2x4$9
	testq	$4, %rbx
	jne 	LA768x4___add_updstate_avx2x4$13
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA768x4___add_updstate_avx2x4$14
LA768x4___add_updstate_avx2x4$13:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA768x4___add_updstate_avx2x4$14:
	testq	$2, %rbx
	je  	LA768x4___add_updstate_avx2x4$12
	movzwq	(%rsi,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA768x4___add_updstate_avx2x4$12:
	testq	$1, %rbx
	je  	LA768x4___add_updstate_avx2x4$10
	movzbq	(%rsi,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA768x4___add_updstate_avx2x4$11:
	jmp 	LA768x4___add_updstate_avx2x4$10
LA768x4___add_updstate_avx2x4$9:
	movq	(%rsi,%r13), %rbp
LA768x4___add_updstate_avx2x4$10:
	xorq	%rbp, 16(%r8,%rax,4)
	cmpq	$8, %rbx
	jnb 	LA768x4___add_updstate_avx2x4$3
	testq	$4, %rbx
	jne 	LA768x4___add_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA768x4___add_updstate_avx2x4$8
LA768x4___add_updstate_avx2x4$7:
	movl	(%r9,%r11), %ebp
	addq	$4, %r11
	movb	$32, %cl
LA768x4___add_updstate_avx2x4$8:
	testq	$2, %rbx
	je  	LA768x4___add_updstate_avx2x4$6
	movzwq	(%r9,%r11), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r11
	addb	$16, %cl
LA768x4___add_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LA768x4___add_updstate_avx2x4$4
	movzbq	(%r9,%r11), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r11
LA768x4___add_updstate_avx2x4$5:
	jmp 	LA768x4___add_updstate_avx2x4$4
LA768x4___add_updstate_avx2x4$3:
	movq	(%r9,%r11), %rbp
	addq	$8, %r11
LA768x4___add_updstate_avx2x4$4:
	xorq	%rbp, 24(%r8,%rax,4)
LA768x4___add_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LA192x4___squeeze_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA192x4___squeeze_updstate_avx2x4$9:
	movq	%r11, %r8
	cmpq	$0, %rax
	jne 	LA192x4___squeeze_updstate_avx2x4$7
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA192x4___squeeze_updstate_avx2x4$8:
	leaq	824(%rsp), %rsp
LA192x4___squeeze_updstate_avx2x4$7:
	movq	$0, %r13
	addq	%rax, %r12
	jmp 	LA192x4___squeeze_updstate_avx2x4$3
LA192x4___squeeze_updstate_avx2x4$4:
	call	LA192x4___dump_updstate_avx2x4$1
LA192x4___squeeze_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA192x4___squeeze_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r12
	movq	$0, %rax
LA192x4___squeeze_updstate_avx2x4$3:
	cmpq	%r12, %rdi
	jb  	LA192x4___squeeze_updstate_avx2x4$4
	movq	%r12, %rdi
	call	LA192x4___dump_updstate_avx2x4$1
LA192x4___squeeze_updstate_avx2x4$2:
	movb	%al, 800(%r11)
	ret
LA192x4___dump_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA192x4___dump_updstate_avx2x4$25
	movq	%rdi, %rbx
	subq	%rax, %rbx
	shrq	$3, %rax
	shlq	$3, %rax
	movb	%r14b, %cl
	shlb	$3, %cl
	movq	(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA192x4___dump_updstate_avx2x4$43
	testq	$4, %rbx
	je  	LA192x4___dump_updstate_avx2x4$47
	movl	%ebp, (%rdx,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA192x4___dump_updstate_avx2x4$47:
	testq	$2, %rbx
	je  	LA192x4___dump_updstate_avx2x4$46
	movw	%bp, (%rdx,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA192x4___dump_updstate_avx2x4$46:
	testq	$1, %rbx
	je  	LA192x4___dump_updstate_avx2x4$44
	movb	%bpl, (%rdx,%r15)
LA192x4___dump_updstate_avx2x4$45:
	jmp 	LA192x4___dump_updstate_avx2x4$44
LA192x4___dump_updstate_avx2x4$43:
	movq	%rbp, (%rdx,%r15)
LA192x4___dump_updstate_avx2x4$44:
	movq	8(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA192x4___dump_updstate_avx2x4$38
	testq	$4, %rbx
	je  	LA192x4___dump_updstate_avx2x4$42
	movl	%ebp, (%r10,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA192x4___dump_updstate_avx2x4$42:
	testq	$2, %rbx
	je  	LA192x4___dump_updstate_avx2x4$41
	movw	%bp, (%r10,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA192x4___dump_updstate_avx2x4$41:
	testq	$1, %rbx
	je  	LA192x4___dump_updstate_avx2x4$39
	movb	%bpl, (%r10,%r15)
LA192x4___dump_updstate_avx2x4$40:
	jmp 	LA192x4___dump_updstate_avx2x4$39
LA192x4___dump_updstate_avx2x4$38:
	movq	%rbp, (%r10,%r15)
LA192x4___dump_updstate_avx2x4$39:
	movq	16(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA192x4___dump_updstate_avx2x4$33
	testq	$4, %rbx
	je  	LA192x4___dump_updstate_avx2x4$37
	movl	%ebp, (%rsi,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA192x4___dump_updstate_avx2x4$37:
	testq	$2, %rbx
	je  	LA192x4___dump_updstate_avx2x4$36
	movw	%bp, (%rsi,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA192x4___dump_updstate_avx2x4$36:
	testq	$1, %rbx
	je  	LA192x4___dump_updstate_avx2x4$34
	movb	%bpl, (%rsi,%r15)
LA192x4___dump_updstate_avx2x4$35:
	jmp 	LA192x4___dump_updstate_avx2x4$34
LA192x4___dump_updstate_avx2x4$33:
	movq	%rbp, (%rsi,%r15)
LA192x4___dump_updstate_avx2x4$34:
	movq	24(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %rcx
	cmpq	$8, %rbx
	jnb 	LA192x4___dump_updstate_avx2x4$28
	testq	$4, %rbx
	je  	LA192x4___dump_updstate_avx2x4$32
	movl	%ebp, (%r9,%rcx)
	addq	$4, %rcx
	shrq	$32, %rbp
LA192x4___dump_updstate_avx2x4$32:
	testq	$2, %rbx
	je  	LA192x4___dump_updstate_avx2x4$31
	movw	%bp, (%r9,%rcx)
	addq	$2, %rcx
	shrq	$16, %rbp
LA192x4___dump_updstate_avx2x4$31:
	testq	$1, %rbx
	je  	LA192x4___dump_updstate_avx2x4$29
	movb	%bpl, (%r9,%rcx)
	incq	%rcx
LA192x4___dump_updstate_avx2x4$30:
	jmp 	LA192x4___dump_updstate_avx2x4$29
LA192x4___dump_updstate_avx2x4$28:
	movq	%rbp, (%r9,%rcx)
	addq	$8, %rcx
LA192x4___dump_updstate_avx2x4$29:
	addq	%r14, %rbx
	cmpq	$8, %rbx
	jnb 	LA192x4___dump_updstate_avx2x4$26
	movq	%rcx, %r13
	movq	%rdi, %rax
	jmp 	LA192x4___dump_updstate_avx2x4$25
LA192x4___dump_updstate_avx2x4$26:
	addq	$8, %r13
	subq	%r14, %r13
	addq	$8, %rax
LA192x4___dump_updstate_avx2x4$27:
LA192x4___dump_updstate_avx2x4$25:
	movq	%rax, %rcx
	jmp 	LA192x4___dump_updstate_avx2x4$23
LA192x4___dump_updstate_avx2x4$24:
	movq	(%r8,%rax,4), %rbp
	movq	%rbp, (%rdx,%r13)
	movq	8(%r8,%rax,4), %rbp
	movq	%rbp, (%r10,%r13)
	movq	16(%r8,%rax,4), %rbp
	movq	%rbp, (%rsi,%r13)
	movq	24(%r8,%rax,4), %rbp
	movq	%rbp, (%r9,%r13)
	movq	%rcx, %rax
	addq	$8, %r13
LA192x4___dump_updstate_avx2x4$23:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA192x4___dump_updstate_avx2x4$24
	cmpq	%rdi, %rax
	jnb 	LA192x4___dump_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA192x4___dump_updstate_avx2x4$18
	testq	$4, %rbx
	je  	LA192x4___dump_updstate_avx2x4$22
	movl	%ebp, (%rdx,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA192x4___dump_updstate_avx2x4$22:
	testq	$2, %rbx
	je  	LA192x4___dump_updstate_avx2x4$21
	movw	%bp, (%rdx,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA192x4___dump_updstate_avx2x4$21:
	testq	$1, %rbx
	je  	LA192x4___dump_updstate_avx2x4$19
	movb	%bpl, (%rdx,%r15)
LA192x4___dump_updstate_avx2x4$20:
	jmp 	LA192x4___dump_updstate_avx2x4$19
LA192x4___dump_updstate_avx2x4$18:
	movq	%rbp, (%rdx,%r15)
LA192x4___dump_updstate_avx2x4$19:
	movq	8(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA192x4___dump_updstate_avx2x4$13
	testq	$4, %rbx
	je  	LA192x4___dump_updstate_avx2x4$17
	movl	%ebp, (%r10,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA192x4___dump_updstate_avx2x4$17:
	testq	$2, %rbx
	je  	LA192x4___dump_updstate_avx2x4$16
	movw	%bp, (%r10,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA192x4___dump_updstate_avx2x4$16:
	testq	$1, %rbx
	je  	LA192x4___dump_updstate_avx2x4$14
	movb	%bpl, (%r10,%r15)
LA192x4___dump_updstate_avx2x4$15:
	jmp 	LA192x4___dump_updstate_avx2x4$14
LA192x4___dump_updstate_avx2x4$13:
	movq	%rbp, (%r10,%r15)
LA192x4___dump_updstate_avx2x4$14:
	movq	16(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA192x4___dump_updstate_avx2x4$8
	testq	$4, %rbx
	je  	LA192x4___dump_updstate_avx2x4$12
	movl	%ebp, (%rsi,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA192x4___dump_updstate_avx2x4$12:
	testq	$2, %rbx
	je  	LA192x4___dump_updstate_avx2x4$11
	movw	%bp, (%rsi,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA192x4___dump_updstate_avx2x4$11:
	testq	$1, %rbx
	je  	LA192x4___dump_updstate_avx2x4$9
	movb	%bpl, (%rsi,%r15)
LA192x4___dump_updstate_avx2x4$10:
	jmp 	LA192x4___dump_updstate_avx2x4$9
LA192x4___dump_updstate_avx2x4$8:
	movq	%rbp, (%rsi,%r15)
LA192x4___dump_updstate_avx2x4$9:
	movq	24(%r8,%rax,4), %rbp
	cmpq	$8, %rbx
	jnb 	LA192x4___dump_updstate_avx2x4$3
	testq	$4, %rbx
	je  	LA192x4___dump_updstate_avx2x4$7
	movl	%ebp, (%r9,%r13)
	addq	$4, %r13
	shrq	$32, %rbp
LA192x4___dump_updstate_avx2x4$7:
	testq	$2, %rbx
	je  	LA192x4___dump_updstate_avx2x4$6
	movw	%bp, (%r9,%r13)
	addq	$2, %r13
	shrq	$16, %rbp
LA192x4___dump_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LA192x4___dump_updstate_avx2x4$2
	movb	%bpl, (%r9,%r13)
	incq	%r13
LA192x4___dump_updstate_avx2x4$5:
	jmp 	LA192x4___dump_updstate_avx2x4$2
LA192x4___dump_updstate_avx2x4$3:
	movq	%rbp, (%r9,%r13)
	addq	$8, %r13
LA192x4___dump_updstate_avx2x4$4:
LA192x4___dump_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LA64x4___squeeze_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA64x4___squeeze_updstate_avx2x4$9:
	movq	%r11, %r8
	cmpq	$0, %rax
	jne 	LA64x4___squeeze_updstate_avx2x4$7
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA64x4___squeeze_updstate_avx2x4$8:
	leaq	824(%rsp), %rsp
LA64x4___squeeze_updstate_avx2x4$7:
	movq	$0, %r13
	addq	%rax, %r12
	jmp 	LA64x4___squeeze_updstate_avx2x4$3
LA64x4___squeeze_updstate_avx2x4$4:
	call	LA64x4___dump_updstate_avx2x4$1
LA64x4___squeeze_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA64x4___squeeze_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r12
	movq	$0, %rax
LA64x4___squeeze_updstate_avx2x4$3:
	cmpq	%r12, %rdi
	jb  	LA64x4___squeeze_updstate_avx2x4$4
	movq	%r12, %rdi
	call	LA64x4___dump_updstate_avx2x4$1
LA64x4___squeeze_updstate_avx2x4$2:
	movb	%al, 800(%r11)
	ret
LA64x4___dump_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA64x4___dump_updstate_avx2x4$25
	movq	%rdi, %rbx
	subq	%rax, %rbx
	shrq	$3, %rax
	shlq	$3, %rax
	movb	%r14b, %cl
	shlb	$3, %cl
	movq	(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$43
	testq	$4, %rbx
	je  	LA64x4___dump_updstate_avx2x4$47
	movl	%ebp, (%rdx,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$47:
	testq	$2, %rbx
	je  	LA64x4___dump_updstate_avx2x4$46
	movw	%bp, (%rdx,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$46:
	testq	$1, %rbx
	je  	LA64x4___dump_updstate_avx2x4$44
	movb	%bpl, (%rdx,%r15)
LA64x4___dump_updstate_avx2x4$45:
	jmp 	LA64x4___dump_updstate_avx2x4$44
LA64x4___dump_updstate_avx2x4$43:
	movq	%rbp, (%rdx,%r15)
LA64x4___dump_updstate_avx2x4$44:
	movq	8(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$38
	testq	$4, %rbx
	je  	LA64x4___dump_updstate_avx2x4$42
	movl	%ebp, (%r10,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$42:
	testq	$2, %rbx
	je  	LA64x4___dump_updstate_avx2x4$41
	movw	%bp, (%r10,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$41:
	testq	$1, %rbx
	je  	LA64x4___dump_updstate_avx2x4$39
	movb	%bpl, (%r10,%r15)
LA64x4___dump_updstate_avx2x4$40:
	jmp 	LA64x4___dump_updstate_avx2x4$39
LA64x4___dump_updstate_avx2x4$38:
	movq	%rbp, (%r10,%r15)
LA64x4___dump_updstate_avx2x4$39:
	movq	16(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$33
	testq	$4, %rbx
	je  	LA64x4___dump_updstate_avx2x4$37
	movl	%ebp, (%rsi,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$37:
	testq	$2, %rbx
	je  	LA64x4___dump_updstate_avx2x4$36
	movw	%bp, (%rsi,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$36:
	testq	$1, %rbx
	je  	LA64x4___dump_updstate_avx2x4$34
	movb	%bpl, (%rsi,%r15)
LA64x4___dump_updstate_avx2x4$35:
	jmp 	LA64x4___dump_updstate_avx2x4$34
LA64x4___dump_updstate_avx2x4$33:
	movq	%rbp, (%rsi,%r15)
LA64x4___dump_updstate_avx2x4$34:
	movq	24(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %rcx
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$28
	testq	$4, %rbx
	je  	LA64x4___dump_updstate_avx2x4$32
	movl	%ebp, (%r9,%rcx)
	addq	$4, %rcx
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$32:
	testq	$2, %rbx
	je  	LA64x4___dump_updstate_avx2x4$31
	movw	%bp, (%r9,%rcx)
	addq	$2, %rcx
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$31:
	testq	$1, %rbx
	je  	LA64x4___dump_updstate_avx2x4$29
	movb	%bpl, (%r9,%rcx)
	incq	%rcx
LA64x4___dump_updstate_avx2x4$30:
	jmp 	LA64x4___dump_updstate_avx2x4$29
LA64x4___dump_updstate_avx2x4$28:
	movq	%rbp, (%r9,%rcx)
	addq	$8, %rcx
LA64x4___dump_updstate_avx2x4$29:
	addq	%r14, %rbx
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$26
	movq	%rcx, %r13
	movq	%rdi, %rax
	jmp 	LA64x4___dump_updstate_avx2x4$25
LA64x4___dump_updstate_avx2x4$26:
	addq	$8, %r13
	subq	%r14, %r13
	addq	$8, %rax
LA64x4___dump_updstate_avx2x4$27:
LA64x4___dump_updstate_avx2x4$25:
	movq	%rax, %rcx
	jmp 	LA64x4___dump_updstate_avx2x4$23
LA64x4___dump_updstate_avx2x4$24:
	movq	(%r8,%rax,4), %rbp
	movq	%rbp, (%rdx,%r13)
	movq	8(%r8,%rax,4), %rbp
	movq	%rbp, (%r10,%r13)
	movq	16(%r8,%rax,4), %rbp
	movq	%rbp, (%rsi,%r13)
	movq	24(%r8,%rax,4), %rbp
	movq	%rbp, (%r9,%r13)
	movq	%rcx, %rax
	addq	$8, %r13
LA64x4___dump_updstate_avx2x4$23:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA64x4___dump_updstate_avx2x4$24
	cmpq	%rdi, %rax
	jnb 	LA64x4___dump_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$18
	testq	$4, %rbx
	je  	LA64x4___dump_updstate_avx2x4$22
	movl	%ebp, (%rdx,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$22:
	testq	$2, %rbx
	je  	LA64x4___dump_updstate_avx2x4$21
	movw	%bp, (%rdx,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$21:
	testq	$1, %rbx
	je  	LA64x4___dump_updstate_avx2x4$19
	movb	%bpl, (%rdx,%r15)
LA64x4___dump_updstate_avx2x4$20:
	jmp 	LA64x4___dump_updstate_avx2x4$19
LA64x4___dump_updstate_avx2x4$18:
	movq	%rbp, (%rdx,%r15)
LA64x4___dump_updstate_avx2x4$19:
	movq	8(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$13
	testq	$4, %rbx
	je  	LA64x4___dump_updstate_avx2x4$17
	movl	%ebp, (%r10,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$17:
	testq	$2, %rbx
	je  	LA64x4___dump_updstate_avx2x4$16
	movw	%bp, (%r10,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$16:
	testq	$1, %rbx
	je  	LA64x4___dump_updstate_avx2x4$14
	movb	%bpl, (%r10,%r15)
LA64x4___dump_updstate_avx2x4$15:
	jmp 	LA64x4___dump_updstate_avx2x4$14
LA64x4___dump_updstate_avx2x4$13:
	movq	%rbp, (%r10,%r15)
LA64x4___dump_updstate_avx2x4$14:
	movq	16(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$8
	testq	$4, %rbx
	je  	LA64x4___dump_updstate_avx2x4$12
	movl	%ebp, (%rsi,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$12:
	testq	$2, %rbx
	je  	LA64x4___dump_updstate_avx2x4$11
	movw	%bp, (%rsi,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$11:
	testq	$1, %rbx
	je  	LA64x4___dump_updstate_avx2x4$9
	movb	%bpl, (%rsi,%r15)
LA64x4___dump_updstate_avx2x4$10:
	jmp 	LA64x4___dump_updstate_avx2x4$9
LA64x4___dump_updstate_avx2x4$8:
	movq	%rbp, (%rsi,%r15)
LA64x4___dump_updstate_avx2x4$9:
	movq	24(%r8,%rax,4), %rbp
	cmpq	$8, %rbx
	jnb 	LA64x4___dump_updstate_avx2x4$3
	testq	$4, %rbx
	je  	LA64x4___dump_updstate_avx2x4$7
	movl	%ebp, (%r9,%r13)
	addq	$4, %r13
	shrq	$32, %rbp
LA64x4___dump_updstate_avx2x4$7:
	testq	$2, %rbx
	je  	LA64x4___dump_updstate_avx2x4$6
	movw	%bp, (%r9,%r13)
	addq	$2, %r13
	shrq	$16, %rbp
LA64x4___dump_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LA64x4___dump_updstate_avx2x4$2
	movb	%bpl, (%r9,%r13)
	incq	%r13
LA64x4___dump_updstate_avx2x4$5:
	jmp 	LA64x4___dump_updstate_avx2x4$2
LA64x4___dump_updstate_avx2x4$3:
	movq	%rbp, (%r9,%r13)
	addq	$8, %r13
LA64x4___dump_updstate_avx2x4$4:
LA64x4___dump_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LA48x4___squeeze_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA48x4___squeeze_updstate_avx2x4$9:
	movq	%r11, %r8
	cmpq	$0, %rax
	jne 	LA48x4___squeeze_updstate_avx2x4$7
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA48x4___squeeze_updstate_avx2x4$8:
	leaq	824(%rsp), %rsp
LA48x4___squeeze_updstate_avx2x4$7:
	movq	$0, %r13
	addq	%rax, %r12
	jmp 	LA48x4___squeeze_updstate_avx2x4$3
LA48x4___squeeze_updstate_avx2x4$4:
	call	LA48x4___dump_updstate_avx2x4$1
LA48x4___squeeze_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA48x4___squeeze_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r12
	movq	$0, %rax
LA48x4___squeeze_updstate_avx2x4$3:
	cmpq	%r12, %rdi
	jb  	LA48x4___squeeze_updstate_avx2x4$4
	movq	%r12, %rdi
	call	LA48x4___dump_updstate_avx2x4$1
LA48x4___squeeze_updstate_avx2x4$2:
	movb	%al, 800(%r11)
	ret
LA48x4___dump_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA48x4___dump_updstate_avx2x4$25
	movq	%rdi, %rbx
	subq	%rax, %rbx
	shrq	$3, %rax
	shlq	$3, %rax
	movb	%r14b, %cl
	shlb	$3, %cl
	movq	(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA48x4___dump_updstate_avx2x4$43
	testq	$4, %rbx
	je  	LA48x4___dump_updstate_avx2x4$47
	movl	%ebp, (%rdx,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA48x4___dump_updstate_avx2x4$47:
	testq	$2, %rbx
	je  	LA48x4___dump_updstate_avx2x4$46
	movw	%bp, (%rdx,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA48x4___dump_updstate_avx2x4$46:
	testq	$1, %rbx
	je  	LA48x4___dump_updstate_avx2x4$44
	movb	%bpl, (%rdx,%r15)
LA48x4___dump_updstate_avx2x4$45:
	jmp 	LA48x4___dump_updstate_avx2x4$44
LA48x4___dump_updstate_avx2x4$43:
	movq	%rbp, (%rdx,%r15)
LA48x4___dump_updstate_avx2x4$44:
	movq	8(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA48x4___dump_updstate_avx2x4$38
	testq	$4, %rbx
	je  	LA48x4___dump_updstate_avx2x4$42
	movl	%ebp, (%r10,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA48x4___dump_updstate_avx2x4$42:
	testq	$2, %rbx
	je  	LA48x4___dump_updstate_avx2x4$41
	movw	%bp, (%r10,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA48x4___dump_updstate_avx2x4$41:
	testq	$1, %rbx
	je  	LA48x4___dump_updstate_avx2x4$39
	movb	%bpl, (%r10,%r15)
LA48x4___dump_updstate_avx2x4$40:
	jmp 	LA48x4___dump_updstate_avx2x4$39
LA48x4___dump_updstate_avx2x4$38:
	movq	%rbp, (%r10,%r15)
LA48x4___dump_updstate_avx2x4$39:
	movq	16(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA48x4___dump_updstate_avx2x4$33
	testq	$4, %rbx
	je  	LA48x4___dump_updstate_avx2x4$37
	movl	%ebp, (%rsi,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA48x4___dump_updstate_avx2x4$37:
	testq	$2, %rbx
	je  	LA48x4___dump_updstate_avx2x4$36
	movw	%bp, (%rsi,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA48x4___dump_updstate_avx2x4$36:
	testq	$1, %rbx
	je  	LA48x4___dump_updstate_avx2x4$34
	movb	%bpl, (%rsi,%r15)
LA48x4___dump_updstate_avx2x4$35:
	jmp 	LA48x4___dump_updstate_avx2x4$34
LA48x4___dump_updstate_avx2x4$33:
	movq	%rbp, (%rsi,%r15)
LA48x4___dump_updstate_avx2x4$34:
	movq	24(%r8,%rax,4), %rbp
	shrq	%cl, %rbp
	movq	%r13, %rcx
	cmpq	$8, %rbx
	jnb 	LA48x4___dump_updstate_avx2x4$28
	testq	$4, %rbx
	je  	LA48x4___dump_updstate_avx2x4$32
	movl	%ebp, (%r9,%rcx)
	addq	$4, %rcx
	shrq	$32, %rbp
LA48x4___dump_updstate_avx2x4$32:
	testq	$2, %rbx
	je  	LA48x4___dump_updstate_avx2x4$31
	movw	%bp, (%r9,%rcx)
	addq	$2, %rcx
	shrq	$16, %rbp
LA48x4___dump_updstate_avx2x4$31:
	testq	$1, %rbx
	je  	LA48x4___dump_updstate_avx2x4$29
	movb	%bpl, (%r9,%rcx)
	incq	%rcx
LA48x4___dump_updstate_avx2x4$30:
	jmp 	LA48x4___dump_updstate_avx2x4$29
LA48x4___dump_updstate_avx2x4$28:
	movq	%rbp, (%r9,%rcx)
	addq	$8, %rcx
LA48x4___dump_updstate_avx2x4$29:
	addq	%r14, %rbx
	cmpq	$8, %rbx
	jnb 	LA48x4___dump_updstate_avx2x4$26
	movq	%rcx, %r13
	movq	%rdi, %rax
	jmp 	LA48x4___dump_updstate_avx2x4$25
LA48x4___dump_updstate_avx2x4$26:
	addq	$8, %r13
	subq	%r14, %r13
	addq	$8, %rax
LA48x4___dump_updstate_avx2x4$27:
LA48x4___dump_updstate_avx2x4$25:
	movq	%rax, %rcx
	jmp 	LA48x4___dump_updstate_avx2x4$23
LA48x4___dump_updstate_avx2x4$24:
	movq	(%r8,%rax,4), %rbp
	movq	%rbp, (%rdx,%r13)
	movq	8(%r8,%rax,4), %rbp
	movq	%rbp, (%r10,%r13)
	movq	16(%r8,%rax,4), %rbp
	movq	%rbp, (%rsi,%r13)
	movq	24(%r8,%rax,4), %rbp
	movq	%rbp, (%r9,%r13)
	movq	%rcx, %rax
	addq	$8, %r13
LA48x4___dump_updstate_avx2x4$23:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA48x4___dump_updstate_avx2x4$24
	cmpq	%rdi, %rax
	jnb 	LA48x4___dump_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA48x4___dump_updstate_avx2x4$18
	testq	$4, %rbx
	je  	LA48x4___dump_updstate_avx2x4$22
	movl	%ebp, (%rdx,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA48x4___dump_updstate_avx2x4$22:
	testq	$2, %rbx
	je  	LA48x4___dump_updstate_avx2x4$21
	movw	%bp, (%rdx,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA48x4___dump_updstate_avx2x4$21:
	testq	$1, %rbx
	je  	LA48x4___dump_updstate_avx2x4$19
	movb	%bpl, (%rdx,%r15)
LA48x4___dump_updstate_avx2x4$20:
	jmp 	LA48x4___dump_updstate_avx2x4$19
LA48x4___dump_updstate_avx2x4$18:
	movq	%rbp, (%rdx,%r15)
LA48x4___dump_updstate_avx2x4$19:
	movq	8(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA48x4___dump_updstate_avx2x4$13
	testq	$4, %rbx
	je  	LA48x4___dump_updstate_avx2x4$17
	movl	%ebp, (%r10,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA48x4___dump_updstate_avx2x4$17:
	testq	$2, %rbx
	je  	LA48x4___dump_updstate_avx2x4$16
	movw	%bp, (%r10,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA48x4___dump_updstate_avx2x4$16:
	testq	$1, %rbx
	je  	LA48x4___dump_updstate_avx2x4$14
	movb	%bpl, (%r10,%r15)
LA48x4___dump_updstate_avx2x4$15:
	jmp 	LA48x4___dump_updstate_avx2x4$14
LA48x4___dump_updstate_avx2x4$13:
	movq	%rbp, (%r10,%r15)
LA48x4___dump_updstate_avx2x4$14:
	movq	16(%r8,%rax,4), %rbp
	movq	%r13, %r15
	cmpq	$8, %rbx
	jnb 	LA48x4___dump_updstate_avx2x4$8
	testq	$4, %rbx
	je  	LA48x4___dump_updstate_avx2x4$12
	movl	%ebp, (%rsi,%r15)
	addq	$4, %r15
	shrq	$32, %rbp
LA48x4___dump_updstate_avx2x4$12:
	testq	$2, %rbx
	je  	LA48x4___dump_updstate_avx2x4$11
	movw	%bp, (%rsi,%r15)
	addq	$2, %r15
	shrq	$16, %rbp
LA48x4___dump_updstate_avx2x4$11:
	testq	$1, %rbx
	je  	LA48x4___dump_updstate_avx2x4$9
	movb	%bpl, (%rsi,%r15)
LA48x4___dump_updstate_avx2x4$10:
	jmp 	LA48x4___dump_updstate_avx2x4$9
LA48x4___dump_updstate_avx2x4$8:
	movq	%rbp, (%rsi,%r15)
LA48x4___dump_updstate_avx2x4$9:
	movq	24(%r8,%rax,4), %rbp
	cmpq	$8, %rbx
	jnb 	LA48x4___dump_updstate_avx2x4$3
	testq	$4, %rbx
	je  	LA48x4___dump_updstate_avx2x4$7
	movl	%ebp, (%r9,%r13)
	addq	$4, %r13
	shrq	$32, %rbp
LA48x4___dump_updstate_avx2x4$7:
	testq	$2, %rbx
	je  	LA48x4___dump_updstate_avx2x4$6
	movw	%bp, (%r9,%r13)
	addq	$2, %r13
	shrq	$16, %rbp
LA48x4___dump_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LA48x4___dump_updstate_avx2x4$2
	movb	%bpl, (%r9,%r13)
	incq	%r13
LA48x4___dump_updstate_avx2x4$5:
	jmp 	LA48x4___dump_updstate_avx2x4$2
LA48x4___dump_updstate_avx2x4$3:
	movq	%rbp, (%r9,%r13)
	addq	$8, %r13
LA48x4___dump_updstate_avx2x4$4:
LA48x4___dump_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LA32x4___absorb_bcast_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA32x4___absorb_bcast_updstate_avx2x4$7:
	movq	%r11, %r8
	movq	$0, %r9
	addq	%rax, %r10
	jmp 	LA32x4___absorb_bcast_updstate_avx2x4$3
LA32x4___absorb_bcast_updstate_avx2x4$4:
	call	LA32x4___add_bcast_updstate_avx2x4$1
LA32x4___absorb_bcast_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA32x4___absorb_bcast_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r10
	movq	$0, %rax
LA32x4___absorb_bcast_updstate_avx2x4$3:
	cmpq	%r10, %rdi
	jbe 	LA32x4___absorb_bcast_updstate_avx2x4$4
	movq	%r10, %rdi
	call	LA32x4___add_bcast_updstate_avx2x4$1
LA32x4___absorb_bcast_updstate_avx2x4$2:
	movb	%al, 800(%r11)
	ret
LA32x4___add_bcast_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA32x4___add_bcast_updstate_avx2x4$11
	movq	%rdi, %rbx
	subq	%rax, %rbx
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %r13
	cmpq	$8, %rbx
	jnb 	LA32x4___add_bcast_updstate_avx2x4$14
	testq	$4, %rbx
	jne 	LA32x4___add_bcast_updstate_avx2x4$18
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32x4___add_bcast_updstate_avx2x4$19
LA32x4___add_bcast_updstate_avx2x4$18:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA32x4___add_bcast_updstate_avx2x4$19:
	testq	$2, %rbx
	je  	LA32x4___add_bcast_updstate_avx2x4$17
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA32x4___add_bcast_updstate_avx2x4$17:
	testq	$1, %rbx
	je  	LA32x4___add_bcast_updstate_avx2x4$15
	movzbq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	incq	%r13
LA32x4___add_bcast_updstate_avx2x4$16:
	jmp 	LA32x4___add_bcast_updstate_avx2x4$15
LA32x4___add_bcast_updstate_avx2x4$14:
	movq	(%rdx,%r13), %rbp
	addq	$8, %r13
LA32x4___add_bcast_updstate_avx2x4$15:
	addq	%rax, %rbx
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	vmovq	%rbp, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
	cmpq	$8, %rbx
	jnb 	LA32x4___add_bcast_updstate_avx2x4$12
	movq	%r13, %r9
	movq	%rdi, %rax
	jmp 	LA32x4___add_bcast_updstate_avx2x4$11
LA32x4___add_bcast_updstate_avx2x4$12:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA32x4___add_bcast_updstate_avx2x4$13:
LA32x4___add_bcast_updstate_avx2x4$11:
	movq	%rax, %rcx
	jmp 	LA32x4___add_bcast_updstate_avx2x4$9
LA32x4___add_bcast_updstate_avx2x4$10:
	vpbroadcastq	(%rdx,%r9), %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
	movq	%rcx, %rax
	addq	$8, %r9
LA32x4___add_bcast_updstate_avx2x4$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA32x4___add_bcast_updstate_avx2x4$10
	cmpq	%rdi, %rax
	jnb 	LA32x4___add_bcast_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA32x4___add_bcast_updstate_avx2x4$3
	testq	$4, %rbx
	jne 	LA32x4___add_bcast_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32x4___add_bcast_updstate_avx2x4$8
LA32x4___add_bcast_updstate_avx2x4$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA32x4___add_bcast_updstate_avx2x4$8:
	testq	$2, %rbx
	je  	LA32x4___add_bcast_updstate_avx2x4$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA32x4___add_bcast_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LA32x4___add_bcast_updstate_avx2x4$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LA32x4___add_bcast_updstate_avx2x4$5:
	jmp 	LA32x4___add_bcast_updstate_avx2x4$4
LA32x4___add_bcast_updstate_avx2x4$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LA32x4___add_bcast_updstate_avx2x4$4:
	vmovq	%rbp, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
LA32x4___add_bcast_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LA24x4___absorb_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA24x4___absorb_updstate_avx2x4$7:
	movq	%r11, %r8
	movq	%r11, 8(%rsp)
	movq	$0, %r11
	addq	%rax, %r12
	jmp 	LA24x4___absorb_updstate_avx2x4$3
LA24x4___absorb_updstate_avx2x4$4:
	movq	%r12, 16(%rsp)
	call	LA24x4___add_updstate_avx2x4$1
LA24x4___absorb_updstate_avx2x4$6:
	movq	16(%rsp), %r12
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA24x4___absorb_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r12
	movq	$0, %rax
LA24x4___absorb_updstate_avx2x4$3:
	cmpq	%r12, %rdi
	jbe 	LA24x4___absorb_updstate_avx2x4$4
	movq	%r12, %rdi
	call	LA24x4___add_updstate_avx2x4$1
LA24x4___absorb_updstate_avx2x4$2:
	movq	8(%rsp), %r11
	movb	%al, 800(%r11)
	ret
LA24x4___add_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA24x4___add_updstate_avx2x4$29
	movq	%rdi, %r12
	subq	%rax, %r12
	shrq	$3, %rax
	shlq	$3, %rax
	movb	%r14b, %bl
	shlb	$3, %bl
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LA24x4___add_updstate_avx2x4$50
	testq	$4, %r12
	jne 	LA24x4___add_updstate_avx2x4$54
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA24x4___add_updstate_avx2x4$55
LA24x4___add_updstate_avx2x4$54:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA24x4___add_updstate_avx2x4$55:
	testq	$2, %r12
	je  	LA24x4___add_updstate_avx2x4$53
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA24x4___add_updstate_avx2x4$53:
	testq	$1, %r12
	je  	LA24x4___add_updstate_avx2x4$51
	movzbq	(%rdx,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA24x4___add_updstate_avx2x4$52:
	jmp 	LA24x4___add_updstate_avx2x4$51
LA24x4___add_updstate_avx2x4$50:
	movq	(%rdx,%r13), %rbp
LA24x4___add_updstate_avx2x4$51:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LA24x4___add_updstate_avx2x4$44
	testq	$4, %r12
	jne 	LA24x4___add_updstate_avx2x4$48
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA24x4___add_updstate_avx2x4$49
LA24x4___add_updstate_avx2x4$48:
	movl	(%r10,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA24x4___add_updstate_avx2x4$49:
	testq	$2, %r12
	je  	LA24x4___add_updstate_avx2x4$47
	movzwq	(%r10,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA24x4___add_updstate_avx2x4$47:
	testq	$1, %r12
	je  	LA24x4___add_updstate_avx2x4$45
	movzbq	(%r10,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA24x4___add_updstate_avx2x4$46:
	jmp 	LA24x4___add_updstate_avx2x4$45
LA24x4___add_updstate_avx2x4$44:
	movq	(%r10,%r13), %rbp
LA24x4___add_updstate_avx2x4$45:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 8(%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LA24x4___add_updstate_avx2x4$38
	testq	$4, %r12
	jne 	LA24x4___add_updstate_avx2x4$42
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA24x4___add_updstate_avx2x4$43
LA24x4___add_updstate_avx2x4$42:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA24x4___add_updstate_avx2x4$43:
	testq	$2, %r12
	je  	LA24x4___add_updstate_avx2x4$41
	movzwq	(%rsi,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA24x4___add_updstate_avx2x4$41:
	testq	$1, %r12
	je  	LA24x4___add_updstate_avx2x4$39
	movzbq	(%rsi,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA24x4___add_updstate_avx2x4$40:
	jmp 	LA24x4___add_updstate_avx2x4$39
LA24x4___add_updstate_avx2x4$38:
	movq	(%rsi,%r13), %rbp
LA24x4___add_updstate_avx2x4$39:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 16(%r8,%rax,4)
	movq	%r11, %rbp
	cmpq	$8, %r12
	jnb 	LA24x4___add_updstate_avx2x4$32
	testq	$4, %r12
	jne 	LA24x4___add_updstate_avx2x4$36
	movq	$0, %r13
	movb	$0, %cl
	jmp 	LA24x4___add_updstate_avx2x4$37
LA24x4___add_updstate_avx2x4$36:
	movl	(%r9,%rbp), %r13d
	addq	$4, %rbp
	movb	$32, %cl
LA24x4___add_updstate_avx2x4$37:
	testq	$2, %r12
	je  	LA24x4___add_updstate_avx2x4$35
	movzwq	(%r9,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	addq	$2, %rbp
	addb	$16, %cl
LA24x4___add_updstate_avx2x4$35:
	testq	$1, %r12
	je  	LA24x4___add_updstate_avx2x4$33
	movzbq	(%r9,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	incq	%rbp
LA24x4___add_updstate_avx2x4$34:
	jmp 	LA24x4___add_updstate_avx2x4$33
LA24x4___add_updstate_avx2x4$32:
	movq	(%r9,%rbp), %r13
	addq	$8, %rbp
LA24x4___add_updstate_avx2x4$33:
	movb	%bl, %cl
	shlq	%cl, %r13
	xorq	%r13, 24(%r8,%rax,4)
	addq	%r14, %r12
	cmpq	$8, %r12
	jnb 	LA24x4___add_updstate_avx2x4$30
	movq	%rbp, %r11
	movq	%rdi, %rax
	jmp 	LA24x4___add_updstate_avx2x4$29
LA24x4___add_updstate_avx2x4$30:
	addq	$8, %r11
	subq	%r14, %r11
	addq	$8, %rax
LA24x4___add_updstate_avx2x4$31:
LA24x4___add_updstate_avx2x4$29:
	movq	%rax, %rcx
	jmp 	LA24x4___add_updstate_avx2x4$27
LA24x4___add_updstate_avx2x4$28:
	movq	(%rdx,%r11), %rbp
	xorq	%rbp, (%r8,%rax,4)
	movq	(%r10,%r11), %rbp
	xorq	%rbp, 8(%r8,%rax,4)
	movq	(%rsi,%r11), %rbp
	xorq	%rbp, 16(%r8,%rax,4)
	movq	(%r9,%r11), %rbp
	xorq	%rbp, 24(%r8,%rax,4)
	movq	%rcx, %rax
	addq	$8, %r11
LA24x4___add_updstate_avx2x4$27:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA24x4___add_updstate_avx2x4$28
	cmpq	%rdi, %rax
	jnb 	LA24x4___add_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LA24x4___add_updstate_avx2x4$21
	testq	$4, %rbx
	jne 	LA24x4___add_updstate_avx2x4$25
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA24x4___add_updstate_avx2x4$26
LA24x4___add_updstate_avx2x4$25:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA24x4___add_updstate_avx2x4$26:
	testq	$2, %rbx
	je  	LA24x4___add_updstate_avx2x4$24
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA24x4___add_updstate_avx2x4$24:
	testq	$1, %rbx
	je  	LA24x4___add_updstate_avx2x4$22
	movzbq	(%rdx,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA24x4___add_updstate_avx2x4$23:
	jmp 	LA24x4___add_updstate_avx2x4$22
LA24x4___add_updstate_avx2x4$21:
	movq	(%rdx,%r13), %rbp
LA24x4___add_updstate_avx2x4$22:
	xorq	%rbp, (%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LA24x4___add_updstate_avx2x4$15
	testq	$4, %rbx
	jne 	LA24x4___add_updstate_avx2x4$19
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA24x4___add_updstate_avx2x4$20
LA24x4___add_updstate_avx2x4$19:
	movl	(%r10,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA24x4___add_updstate_avx2x4$20:
	testq	$2, %rbx
	je  	LA24x4___add_updstate_avx2x4$18
	movzwq	(%r10,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA24x4___add_updstate_avx2x4$18:
	testq	$1, %rbx
	je  	LA24x4___add_updstate_avx2x4$16
	movzbq	(%r10,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA24x4___add_updstate_avx2x4$17:
	jmp 	LA24x4___add_updstate_avx2x4$16
LA24x4___add_updstate_avx2x4$15:
	movq	(%r10,%r13), %rbp
LA24x4___add_updstate_avx2x4$16:
	xorq	%rbp, 8(%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LA24x4___add_updstate_avx2x4$9
	testq	$4, %rbx
	jne 	LA24x4___add_updstate_avx2x4$13
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA24x4___add_updstate_avx2x4$14
LA24x4___add_updstate_avx2x4$13:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA24x4___add_updstate_avx2x4$14:
	testq	$2, %rbx
	je  	LA24x4___add_updstate_avx2x4$12
	movzwq	(%rsi,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA24x4___add_updstate_avx2x4$12:
	testq	$1, %rbx
	je  	LA24x4___add_updstate_avx2x4$10
	movzbq	(%rsi,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA24x4___add_updstate_avx2x4$11:
	jmp 	LA24x4___add_updstate_avx2x4$10
LA24x4___add_updstate_avx2x4$9:
	movq	(%rsi,%r13), %rbp
LA24x4___add_updstate_avx2x4$10:
	xorq	%rbp, 16(%r8,%rax,4)
	cmpq	$8, %rbx
	jnb 	LA24x4___add_updstate_avx2x4$3
	testq	$4, %rbx
	jne 	LA24x4___add_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA24x4___add_updstate_avx2x4$8
LA24x4___add_updstate_avx2x4$7:
	movl	(%r9,%r11), %ebp
	addq	$4, %r11
	movb	$32, %cl
LA24x4___add_updstate_avx2x4$8:
	testq	$2, %rbx
	je  	LA24x4___add_updstate_avx2x4$6
	movzwq	(%r9,%r11), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r11
	addb	$16, %cl
LA24x4___add_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LA24x4___add_updstate_avx2x4$4
	movzbq	(%r9,%r11), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r11
LA24x4___add_updstate_avx2x4$5:
	jmp 	LA24x4___add_updstate_avx2x4$4
LA24x4___add_updstate_avx2x4$3:
	movq	(%r9,%r11), %rbp
	addq	$8, %r11
LA24x4___add_updstate_avx2x4$4:
	xorq	%rbp, 24(%r8,%rax,4)
LA24x4___add_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LA2x4___absorb_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA2x4___absorb_updstate_avx2x4$7:
	movq	%r11, %r8
	movq	%r11, 8(%rsp)
	movq	$0, %r11
	addq	%rax, %r12
	jmp 	LA2x4___absorb_updstate_avx2x4$3
LA2x4___absorb_updstate_avx2x4$4:
	movq	%r12, 16(%rsp)
	call	LA2x4___add_updstate_avx2x4$1
LA2x4___absorb_updstate_avx2x4$6:
	movq	16(%rsp), %r12
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA2x4___absorb_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r12
	movq	$0, %rax
LA2x4___absorb_updstate_avx2x4$3:
	cmpq	%r12, %rdi
	jbe 	LA2x4___absorb_updstate_avx2x4$4
	movq	%r12, %rdi
	call	LA2x4___add_updstate_avx2x4$1
LA2x4___absorb_updstate_avx2x4$2:
	movq	8(%rsp), %r11
	movb	%al, 800(%r11)
	ret
LA2x4___add_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA2x4___add_updstate_avx2x4$29
	movq	%rdi, %r12
	subq	%rax, %r12
	shrq	$3, %rax
	shlq	$3, %rax
	movb	%r14b, %bl
	shlb	$3, %bl
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LA2x4___add_updstate_avx2x4$50
	testq	$4, %r12
	jne 	LA2x4___add_updstate_avx2x4$54
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$55
LA2x4___add_updstate_avx2x4$54:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$55:
	testq	$2, %r12
	je  	LA2x4___add_updstate_avx2x4$53
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$53:
	testq	$1, %r12
	je  	LA2x4___add_updstate_avx2x4$51
	movzbq	(%rdx,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA2x4___add_updstate_avx2x4$52:
	jmp 	LA2x4___add_updstate_avx2x4$51
LA2x4___add_updstate_avx2x4$50:
	movq	(%rdx,%r13), %rbp
LA2x4___add_updstate_avx2x4$51:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LA2x4___add_updstate_avx2x4$44
	testq	$4, %r12
	jne 	LA2x4___add_updstate_avx2x4$48
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$49
LA2x4___add_updstate_avx2x4$48:
	movl	(%r10,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$49:
	testq	$2, %r12
	je  	LA2x4___add_updstate_avx2x4$47
	movzwq	(%r10,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$47:
	testq	$1, %r12
	je  	LA2x4___add_updstate_avx2x4$45
	movzbq	(%r10,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA2x4___add_updstate_avx2x4$46:
	jmp 	LA2x4___add_updstate_avx2x4$45
LA2x4___add_updstate_avx2x4$44:
	movq	(%r10,%r13), %rbp
LA2x4___add_updstate_avx2x4$45:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 8(%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %r12
	jnb 	LA2x4___add_updstate_avx2x4$38
	testq	$4, %r12
	jne 	LA2x4___add_updstate_avx2x4$42
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$43
LA2x4___add_updstate_avx2x4$42:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$43:
	testq	$2, %r12
	je  	LA2x4___add_updstate_avx2x4$41
	movzwq	(%rsi,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$41:
	testq	$1, %r12
	je  	LA2x4___add_updstate_avx2x4$39
	movzbq	(%rsi,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA2x4___add_updstate_avx2x4$40:
	jmp 	LA2x4___add_updstate_avx2x4$39
LA2x4___add_updstate_avx2x4$38:
	movq	(%rsi,%r13), %rbp
LA2x4___add_updstate_avx2x4$39:
	movb	%bl, %cl
	shlq	%cl, %rbp
	xorq	%rbp, 16(%r8,%rax,4)
	movq	%r11, %rbp
	cmpq	$8, %r12
	jnb 	LA2x4___add_updstate_avx2x4$32
	testq	$4, %r12
	jne 	LA2x4___add_updstate_avx2x4$36
	movq	$0, %r13
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$37
LA2x4___add_updstate_avx2x4$36:
	movl	(%r9,%rbp), %r13d
	addq	$4, %rbp
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$37:
	testq	$2, %r12
	je  	LA2x4___add_updstate_avx2x4$35
	movzwq	(%r9,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	addq	$2, %rbp
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$35:
	testq	$1, %r12
	je  	LA2x4___add_updstate_avx2x4$33
	movzbq	(%r9,%rbp), %r15
	shlq	%cl, %r15
	addq	%r15, %r13
	incq	%rbp
LA2x4___add_updstate_avx2x4$34:
	jmp 	LA2x4___add_updstate_avx2x4$33
LA2x4___add_updstate_avx2x4$32:
	movq	(%r9,%rbp), %r13
	addq	$8, %rbp
LA2x4___add_updstate_avx2x4$33:
	movb	%bl, %cl
	shlq	%cl, %r13
	xorq	%r13, 24(%r8,%rax,4)
	addq	%r14, %r12
	cmpq	$8, %r12
	jnb 	LA2x4___add_updstate_avx2x4$30
	movq	%rbp, %r11
	movq	%rdi, %rax
	jmp 	LA2x4___add_updstate_avx2x4$29
LA2x4___add_updstate_avx2x4$30:
	addq	$8, %r11
	subq	%r14, %r11
	addq	$8, %rax
LA2x4___add_updstate_avx2x4$31:
LA2x4___add_updstate_avx2x4$29:
	movq	%rax, %rcx
	jmp 	LA2x4___add_updstate_avx2x4$27
LA2x4___add_updstate_avx2x4$28:
	movq	(%rdx,%r11), %rbp
	xorq	%rbp, (%r8,%rax,4)
	movq	(%r10,%r11), %rbp
	xorq	%rbp, 8(%r8,%rax,4)
	movq	(%rsi,%r11), %rbp
	xorq	%rbp, 16(%r8,%rax,4)
	movq	(%r9,%r11), %rbp
	xorq	%rbp, 24(%r8,%rax,4)
	movq	%rcx, %rax
	addq	$8, %r11
LA2x4___add_updstate_avx2x4$27:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA2x4___add_updstate_avx2x4$28
	cmpq	%rdi, %rax
	jnb 	LA2x4___add_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LA2x4___add_updstate_avx2x4$21
	testq	$4, %rbx
	jne 	LA2x4___add_updstate_avx2x4$25
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$26
LA2x4___add_updstate_avx2x4$25:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$26:
	testq	$2, %rbx
	je  	LA2x4___add_updstate_avx2x4$24
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$24:
	testq	$1, %rbx
	je  	LA2x4___add_updstate_avx2x4$22
	movzbq	(%rdx,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA2x4___add_updstate_avx2x4$23:
	jmp 	LA2x4___add_updstate_avx2x4$22
LA2x4___add_updstate_avx2x4$21:
	movq	(%rdx,%r13), %rbp
LA2x4___add_updstate_avx2x4$22:
	xorq	%rbp, (%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LA2x4___add_updstate_avx2x4$15
	testq	$4, %rbx
	jne 	LA2x4___add_updstate_avx2x4$19
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$20
LA2x4___add_updstate_avx2x4$19:
	movl	(%r10,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$20:
	testq	$2, %rbx
	je  	LA2x4___add_updstate_avx2x4$18
	movzwq	(%r10,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$18:
	testq	$1, %rbx
	je  	LA2x4___add_updstate_avx2x4$16
	movzbq	(%r10,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA2x4___add_updstate_avx2x4$17:
	jmp 	LA2x4___add_updstate_avx2x4$16
LA2x4___add_updstate_avx2x4$15:
	movq	(%r10,%r13), %rbp
LA2x4___add_updstate_avx2x4$16:
	xorq	%rbp, 8(%r8,%rax,4)
	movq	%r11, %r13
	cmpq	$8, %rbx
	jnb 	LA2x4___add_updstate_avx2x4$9
	testq	$4, %rbx
	jne 	LA2x4___add_updstate_avx2x4$13
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$14
LA2x4___add_updstate_avx2x4$13:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$14:
	testq	$2, %rbx
	je  	LA2x4___add_updstate_avx2x4$12
	movzwq	(%rsi,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$12:
	testq	$1, %rbx
	je  	LA2x4___add_updstate_avx2x4$10
	movzbq	(%rsi,%r13), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
LA2x4___add_updstate_avx2x4$11:
	jmp 	LA2x4___add_updstate_avx2x4$10
LA2x4___add_updstate_avx2x4$9:
	movq	(%rsi,%r13), %rbp
LA2x4___add_updstate_avx2x4$10:
	xorq	%rbp, 16(%r8,%rax,4)
	cmpq	$8, %rbx
	jnb 	LA2x4___add_updstate_avx2x4$3
	testq	$4, %rbx
	jne 	LA2x4___add_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_updstate_avx2x4$8
LA2x4___add_updstate_avx2x4$7:
	movl	(%r9,%r11), %ebp
	addq	$4, %r11
	movb	$32, %cl
LA2x4___add_updstate_avx2x4$8:
	testq	$2, %rbx
	je  	LA2x4___add_updstate_avx2x4$6
	movzwq	(%r9,%r11), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r11
	addb	$16, %cl
LA2x4___add_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LA2x4___add_updstate_avx2x4$4
	movzbq	(%r9,%r11), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r11
LA2x4___add_updstate_avx2x4$5:
	jmp 	LA2x4___add_updstate_avx2x4$4
LA2x4___add_updstate_avx2x4$3:
	movq	(%r9,%r11), %rbp
	addq	$8, %r11
LA2x4___add_updstate_avx2x4$4:
	xorq	%rbp, 24(%r8,%rax,4)
LA2x4___add_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LA2x4___absorb_bcast_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA2x4___absorb_bcast_updstate_avx2x4$7:
	movq	%r11, %r8
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LA2x4___absorb_bcast_updstate_avx2x4$3
LA2x4___absorb_bcast_updstate_avx2x4$4:
	call	LA2x4___add_bcast_updstate_avx2x4$1
LA2x4___absorb_bcast_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA2x4___absorb_bcast_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r12
	movq	$0, %rax
LA2x4___absorb_bcast_updstate_avx2x4$3:
	cmpq	%r12, %rdi
	jbe 	LA2x4___absorb_bcast_updstate_avx2x4$4
	movq	%r12, %rdi
	call	LA2x4___add_bcast_updstate_avx2x4$1
LA2x4___absorb_bcast_updstate_avx2x4$2:
	movb	%al, 800(%r11)
	ret
LA2x4___add_bcast_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA2x4___add_bcast_updstate_avx2x4$11
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbx
	cmpq	$8, %r10
	jnb 	LA2x4___add_bcast_updstate_avx2x4$14
	testq	$4, %r10
	jne 	LA2x4___add_bcast_updstate_avx2x4$18
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_bcast_updstate_avx2x4$19
LA2x4___add_bcast_updstate_avx2x4$18:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2x4___add_bcast_updstate_avx2x4$19:
	testq	$2, %r10
	je  	LA2x4___add_bcast_updstate_avx2x4$17
	movzwq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2x4___add_bcast_updstate_avx2x4$17:
	testq	$1, %r10
	je  	LA2x4___add_bcast_updstate_avx2x4$15
	movzbq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%rbx
LA2x4___add_bcast_updstate_avx2x4$16:
	jmp 	LA2x4___add_bcast_updstate_avx2x4$15
LA2x4___add_bcast_updstate_avx2x4$14:
	movq	(%rdx,%rbx), %rbp
	addq	$8, %rbx
LA2x4___add_bcast_updstate_avx2x4$15:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	vmovq	%rbp, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
	cmpq	$8, %r10
	jnb 	LA2x4___add_bcast_updstate_avx2x4$12
	movq	%rbx, %r9
	movq	%rdi, %rax
	jmp 	LA2x4___add_bcast_updstate_avx2x4$11
LA2x4___add_bcast_updstate_avx2x4$12:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA2x4___add_bcast_updstate_avx2x4$13:
LA2x4___add_bcast_updstate_avx2x4$11:
	movq	%rax, %rcx
	jmp 	LA2x4___add_bcast_updstate_avx2x4$9
LA2x4___add_bcast_updstate_avx2x4$10:
	vpbroadcastq	(%rdx,%r9), %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
	movq	%rcx, %rax
	addq	$8, %r9
LA2x4___add_bcast_updstate_avx2x4$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA2x4___add_bcast_updstate_avx2x4$10
	cmpq	%rdi, %rax
	jnb 	LA2x4___add_bcast_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA2x4___add_bcast_updstate_avx2x4$3
	testq	$4, %rbx
	jne 	LA2x4___add_bcast_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2x4___add_bcast_updstate_avx2x4$8
LA2x4___add_bcast_updstate_avx2x4$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA2x4___add_bcast_updstate_avx2x4$8:
	testq	$2, %rbx
	je  	LA2x4___add_bcast_updstate_avx2x4$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA2x4___add_bcast_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LA2x4___add_bcast_updstate_avx2x4$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LA2x4___add_bcast_updstate_avx2x4$5:
	jmp 	LA2x4___add_bcast_updstate_avx2x4$4
LA2x4___add_bcast_updstate_avx2x4$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LA2x4___add_bcast_updstate_avx2x4$4:
	vmovq	%rbp, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
LA2x4___add_bcast_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
LA1x4___absorb_bcast_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
LA1x4___absorb_bcast_updstate_avx2x4$7:
	movq	%r11, %r8
	movq	$0, %r9
	addq	%rax, %r10
	jmp 	LA1x4___absorb_bcast_updstate_avx2x4$3
LA1x4___absorb_bcast_updstate_avx2x4$4:
	call	LA1x4___add_bcast_updstate_avx2x4$1
LA1x4___absorb_bcast_updstate_avx2x4$6:
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
LA1x4___absorb_bcast_updstate_avx2x4$5:
	leaq	824(%rsp), %rsp
	subq	%rdi, %r10
	movq	$0, %rax
LA1x4___absorb_bcast_updstate_avx2x4$3:
	cmpq	%r10, %rdi
	jbe 	LA1x4___absorb_bcast_updstate_avx2x4$4
	movq	%r10, %rdi
	call	LA1x4___add_bcast_updstate_avx2x4$1
LA1x4___absorb_bcast_updstate_avx2x4$2:
	movb	%al, 800(%r11)
	ret
LA1x4___add_bcast_updstate_avx2x4$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA1x4___add_bcast_updstate_avx2x4$11
	movq	%rdi, %rbx
	subq	%rax, %rbx
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbp
	cmpq	$8, %rbx
	jnb 	LA1x4___add_bcast_updstate_avx2x4$14
	testq	$4, %rbx
	jne 	LA1x4___add_bcast_updstate_avx2x4$18
	movq	$0, %r13
	movb	$0, %cl
	jmp 	LA1x4___add_bcast_updstate_avx2x4$19
LA1x4___add_bcast_updstate_avx2x4$18:
	movl	(%rsi,%rbp), %r13d
	addq	$4, %rbp
	movb	$32, %cl
LA1x4___add_bcast_updstate_avx2x4$19:
	testq	$2, %rbx
	je  	LA1x4___add_bcast_updstate_avx2x4$17
	movzwq	(%rsi,%rbp), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %r13
	addq	$2, %rbp
	addb	$16, %cl
LA1x4___add_bcast_updstate_avx2x4$17:
	testq	$1, %rbx
	je  	LA1x4___add_bcast_updstate_avx2x4$15
	movzbq	(%rsi,%rbp), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %r13
	incq	%rbp
LA1x4___add_bcast_updstate_avx2x4$16:
	jmp 	LA1x4___add_bcast_updstate_avx2x4$15
LA1x4___add_bcast_updstate_avx2x4$14:
	movq	(%rsi,%rbp), %r13
	addq	$8, %rbp
LA1x4___add_bcast_updstate_avx2x4$15:
	addq	%rax, %rbx
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %r13
	vmovq	%r13, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
	cmpq	$8, %rbx
	jnb 	LA1x4___add_bcast_updstate_avx2x4$12
	movq	%rbp, %r9
	movq	%rdi, %rax
	jmp 	LA1x4___add_bcast_updstate_avx2x4$11
LA1x4___add_bcast_updstate_avx2x4$12:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA1x4___add_bcast_updstate_avx2x4$13:
LA1x4___add_bcast_updstate_avx2x4$11:
	movq	%rax, %rcx
	jmp 	LA1x4___add_bcast_updstate_avx2x4$9
LA1x4___add_bcast_updstate_avx2x4$10:
	vpbroadcastq	(%rsi,%r9), %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
	movq	%rcx, %rax
	addq	$8, %r9
LA1x4___add_bcast_updstate_avx2x4$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA1x4___add_bcast_updstate_avx2x4$10
	cmpq	%rdi, %rax
	jnb 	LA1x4___add_bcast_updstate_avx2x4$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA1x4___add_bcast_updstate_avx2x4$3
	testq	$4, %rbx
	jne 	LA1x4___add_bcast_updstate_avx2x4$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1x4___add_bcast_updstate_avx2x4$8
LA1x4___add_bcast_updstate_avx2x4$7:
	movl	(%rsi,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA1x4___add_bcast_updstate_avx2x4$8:
	testq	$2, %rbx
	je  	LA1x4___add_bcast_updstate_avx2x4$6
	movzwq	(%rsi,%r9), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA1x4___add_bcast_updstate_avx2x4$6:
	testq	$1, %rbx
	je  	LA1x4___add_bcast_updstate_avx2x4$4
	movzbq	(%rsi,%r9), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	incq	%r9
LA1x4___add_bcast_updstate_avx2x4$5:
	jmp 	LA1x4___add_bcast_updstate_avx2x4$4
LA1x4___add_bcast_updstate_avx2x4$3:
	movq	(%rsi,%r9), %rbp
	addq	$8, %r9
LA1x4___add_bcast_updstate_avx2x4$4:
	vmovq	%rbp, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r8,%rax,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r8,%rax,4)
LA1x4___add_bcast_updstate_avx2x4$2:
	movq	%rdi, %rax
	ret
L_finish_updstate_avx2x4$1:
	movq	800(%r11), %rcx
	call	L_ststatus_data_avx2x4$1
L_finish_updstate_avx2x4$2:
	movb	%al, %cl
	shrq	$3, %rax
	shlq	$5, %rax
	andb	$7, %cl
	shlb	$3, %cl
	shlq	%cl, %r8
	vmovq	%r8, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r11,%rax), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r11,%rax)
	movq	$1, %rax
	shlq	$63, %rax
	decq	%rdi
	shrq	$3, %rdi
	shlq	$5, %rdi
	vmovq	%rax, %xmm0
	vpbroadcastq	%xmm0, %ymm1
	vpxor	(%r11,%rdi), %ymm1, %ymm1
	vmovdqu	%ymm1, (%r11,%rdi)
	andl	$-16711936, 800(%r11)
	ret
L_ststatus_data_avx2x4$1:
	movq	%rcx, %rax
	andq	$255, %rax
	shrq	$8, %rcx
	movq	%rcx, %rdi
	andq	$255, %rdi
	incq	%rdi
	shlq	$3, %rdi
	movq	$200, %r8
	cmpq	$200, %rdi
	cmovnbe	%r8, %rdi
	movq	$0, %r8
	cmpq	%rax, %rdi
	cmovbe	%r8, %rax
	shrq	$8, %rcx
	andq	$255, %rcx
	movq	%rcx, %r8
	ret
L_init_updstate_avx2x4$1:
	vpxor	%ymm0, %ymm0, %ymm0
	movzbq	%cl, %rax
	shlq	$8, %rax
	decb	%dl
	movzbq	%dl, %rcx
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
	leaq	glob_data + 86688(%rip), %rcx
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
	xchg	%r8, %rbx
	vpbroadcastq	8(%rcx,%rbp,8), %ymm2
	call	L_keccakf1600_4x_pround$1
L_keccakf1600_avx2x4$4:
	vpxor	(%rbx), %ymm2, %ymm2
	vmovdqu	%ymm2, (%rbx)
	xchg	%rbx, %r8
	addq	$2, %rbp
L_keccakf1600_avx2x4$2:
	cmpq	$24, %rbp
	jb  	L_keccakf1600_avx2x4$3
	ret
L_keccakf1600_4x_pround$1:
	vmovdqu	(%r8), %ymm7
	vmovdqu	32(%r8), %ymm5
	vmovdqu	64(%r8), %ymm6
	vmovdqu	96(%r8), %ymm8
	vmovdqu	128(%r8), %ymm9
	vpxor	160(%r8), %ymm7, %ymm7
	vpxor	192(%r8), %ymm5, %ymm5
	vpxor	224(%r8), %ymm6, %ymm6
	vpxor	256(%r8), %ymm8, %ymm8
	vpxor	288(%r8), %ymm9, %ymm9
	vpxor	320(%r8), %ymm7, %ymm7
	vpxor	352(%r8), %ymm5, %ymm5
	vpxor	384(%r8), %ymm6, %ymm6
	vpxor	416(%r8), %ymm8, %ymm8
	vpxor	448(%r8), %ymm9, %ymm9
	vpxor	480(%r8), %ymm7, %ymm7
	vpxor	512(%r8), %ymm5, %ymm5
	vpxor	544(%r8), %ymm6, %ymm6
	vpxor	576(%r8), %ymm8, %ymm8
	vpxor	608(%r8), %ymm9, %ymm9
	vpxor	640(%r8), %ymm7, %ymm7
	vpxor	672(%r8), %ymm5, %ymm5
	vpxor	704(%r8), %ymm6, %ymm6
	vpxor	736(%r8), %ymm8, %ymm8
	vpxor	768(%r8), %ymm9, %ymm9
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
	vmovdqu	(%r8), %ymm8
	vpxor	%ymm3, %ymm8, %ymm8
	vmovdqu	192(%r8), %ymm9
	vpxor	%ymm4, %ymm9, %ymm9
	vpsllq	$44, %ymm9, %ymm10
	vpsrlq	$20, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vmovdqu	384(%r8), %ymm10
	vpxor	%ymm5, %ymm10, %ymm10
	vpsllq	$43, %ymm10, %ymm11
	vpsrlq	$21, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vmovdqu	576(%r8), %ymm11
	vpxor	%ymm6, %ymm11, %ymm11
	vpsllq	$21, %ymm11, %ymm12
	vpsrlq	$43, %ymm11, %ymm11
	vpor	%ymm12, %ymm11, %ymm11
	vmovdqu	768(%r8), %ymm12
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
	vmovdqu	96(%r8), %ymm8
	vpxor	%ymm6, %ymm8, %ymm8
	vpsllq	$28, %ymm8, %ymm9
	vpsrlq	$36, %ymm8, %ymm8
	vpor	%ymm9, %ymm8, %ymm8
	vmovdqu	288(%r8), %ymm9
	vpxor	%ymm7, %ymm9, %ymm9
	vpsllq	$20, %ymm9, %ymm10
	vpsrlq	$44, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vpsllq	$3, %ymm10, %ymm11
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vmovdqu	512(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vpsllq	$45, %ymm11, %ymm12
	vpsrlq	$19, %ymm11, %ymm11
	vpor	%ymm12, %ymm11, %ymm11
	vmovdqu	704(%r8), %ymm12
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
	vmovdqu	32(%r8), %ymm8
	vpxor	%ymm4, %ymm8, %ymm8
	vpsllq	$1, %ymm8, %ymm9
	vpsrlq	$63, %ymm8, %ymm8
	vpor	%ymm9, %ymm8, %ymm8
	vmovdqu	224(%r8), %ymm9
	vpxor	%ymm5, %ymm9, %ymm9
	vpsllq	$6, %ymm9, %ymm10
	vpsrlq	$58, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vpsllq	$25, %ymm10, %ymm11
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vmovdqu	608(%r8), %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vpshufb	%ymm0, %ymm11, %ymm11
	vmovdqu	640(%r8), %ymm12
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
	vmovdqu	128(%r8), %ymm8
	vpxor	%ymm7, %ymm8, %ymm8
	vpsllq	$27, %ymm8, %ymm9
	vpsrlq	$37, %ymm8, %ymm8
	vpor	%ymm9, %ymm8, %ymm8
	vmovdqu	160(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vpsllq	$36, %ymm9, %ymm10
	vpsrlq	$28, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vpsllq	$10, %ymm10, %ymm11
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vmovdqu	544(%r8), %ymm11
	vpxor	%ymm5, %ymm11, %ymm11
	vpsllq	$15, %ymm11, %ymm12
	vpsrlq	$49, %ymm11, %ymm11
	vpor	%ymm12, %ymm11, %ymm11
	vmovdqu	736(%r8), %ymm12
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
	vmovdqu	64(%r8), %ymm8
	vpxor	%ymm5, %ymm8, %ymm5
	vpsllq	$62, %ymm5, %ymm8
	vpsrlq	$2, %ymm5, %ymm5
	vpor	%ymm8, %ymm5, %ymm5
	vmovdqu	256(%r8), %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vpsllq	$55, %ymm6, %ymm8
	vpsrlq	$9, %ymm6, %ymm6
	vpor	%ymm8, %ymm6, %ymm6
	vmovdqu	448(%r8), %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpsllq	$39, %ymm7, %ymm8
	vpsrlq	$25, %ymm7, %ymm7
	vpor	%ymm8, %ymm7, %ymm7
	vmovdqu	480(%r8), %ymm8
	vpxor	%ymm3, %ymm8, %ymm3
	vpsllq	$41, %ymm3, %ymm8
	vpsrlq	$23, %ymm3, %ymm3
	vpor	%ymm8, %ymm3, %ymm3
	vmovdqu	672(%r8), %ymm8
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
	leaq	32(%rsp), %r8
	movq	%rax, 240(%rsp)
	movq	%rsi, %rax
	leaq	-40(%rsp), %rsp
	call	L_HCP_base$1
L_HCP_verify$3:
	leaq	40(%rsp), %rsp
	movq	$48, %r12
	movq	240(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA48___squeeze_updstate_avx2$1
L_HCP_verify$2:
	leaq	8(%rsp), %rsp
	ret
L_HCP$1:
	movq	(%r10), %r11
	movq	%r11, 96(%rsp)
	movq	8(%r10), %r11
	movq	%r11, 104(%rsp)
	movq	16(%r10), %r11
	movq	%r11, 112(%rsp)
	movq	24(%r10), %r11
	movq	%r11, 120(%rsp)
	movq	32(%r10), %r11
	movq	%r11, 128(%rsp)
	movq	40(%r10), %r10
	movq	%r10, 136(%rsp)
	movq	(%rsi), %r10
	movq	%r10, 32(%rsp)
	movq	8(%rsi), %r10
	movq	%r10, 40(%rsp)
	movq	16(%rsi), %rsi
	movq	%rsi, 48(%rsp)
	movq	(%r8), %rsi
	movq	%rsi, 64(%rsp)
	movq	8(%r8), %rsi
	movq	%rsi, 72(%rsp)
	movq	16(%r8), %rsi
	movq	%rsi, 80(%rsp)
	movq	%rax, 368(%rsp)
	movq	%rcx, 376(%rsp)
	movq	%rdi, 384(%rsp)
	leaq	160(%rsp), %r8
	leaq	96(%rsp), %r10
	leaq	32(%rsp), %rax
	leaq	64(%rsp), %rcx
	leaq	-40(%rsp), %rsp
	call	L_HCP_base$1
L_HCP$4:
	leaq	40(%rsp), %rsp
	movq	$48, %r12
	movq	368(%rsp), %rdx
	leaq	-32(%rsp), %rsp
	call	L_squeeze_m_updstate_avx2$1
L_HCP$3:
	leaq	32(%rsp), %rsp
	movq	368(%rsp), %rax
	movq	376(%rsp), %rcx
	movq	384(%rsp), %rdi
	leaq	-568(%rsp), %rsp
	call	L_expand_challenge$1
L_HCP$2:
	leaq	568(%rsp), %rsp
	movq	368(%rsp), %r10
	addq	$48, %r10
	ret
L_HCP_base$1:
	movq	%rbx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r9, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movb	$31, %cl
	movb	$17, %bpl
	call	L_init_updstate_avx2$1
L_HCP_base$9:
	movq	$20112, %r12
	leaq	-8(%rsp), %rsp
	call	LA20112___update_updstate_avx2$1
L_HCP_base$8:
	leaq	8(%rsp), %rsp
	movq	$48, %r12
	movq	24(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA48___update_updstate_avx2$1
L_HCP_base$7:
	leaq	8(%rsp), %rsp
	movq	$32, %r12
	movq	8(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_HCP_base$6:
	leaq	8(%rsp), %rsp
	movq	$24, %r12
	movq	16(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_HCP_base$5:
	leaq	8(%rsp), %rsp
	movq	$24, %r12
	movq	40(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_HCP_base$4:
	leaq	8(%rsp), %rsp
	movq	$13, %r12
	movq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA13___update_updstate_avx2$1
L_HCP_base$3:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_HCP_base$2:
	ret
L_expand_challenge$1:
	movq	(%rax), %rsi
	movq	%rsi, 64(%rsp)
	movq	8(%rax), %rsi
	movq	%rsi, 72(%rsp)
	movq	16(%rax), %rsi
	movq	%rsi, 80(%rsp)
	movq	24(%rax), %rsi
	movq	%rsi, 88(%rsp)
	movq	32(%rax), %rsi
	movq	%rsi, 96(%rsp)
	movq	40(%rax), %rsi
	movq	%rsi, 104(%rsp)
	movq	%rcx, 336(%rsp)
	movq	%rdi, 344(%rsp)
	movq	$0, %rsi
	jmp 	L_expand_challenge$28
L_expand_challenge$29:
	movw	$0, 368(%rsp,%rsi,2)
	incq	%rsi
L_expand_challenge$28:
	cmpq	$96, %rsi
	jb  	L_expand_challenge$29
	movq	$419, %rax
	decq	%rax
	lzcntq	%rax, %rax
	movq	$64, %rcx
	subq	%rax, %rcx
	movq	%rcx, 352(%rsp)
	movq	$0, %rsi
	jmp 	L_expand_challenge$15
L_expand_challenge$16:
	movq	352(%rsp), %rcx
	leaq	64(%rsp), %r8
	leaq	368(%rsp), %rdi
	call	L_bitsToChunks$1
L_expand_challenge$27:
	movq	$0, %r8
	jmp 	L_expand_challenge$22
L_expand_challenge$23:
	movw	368(%rsp,%r8,2), %dx
	cmpw	$419, %dx
	jnb 	L_expand_challenge$25
	movq	336(%rsp), %rcx
	call	L__appendUnique$1
L_expand_challenge$26:
L_expand_challenge$25:
	cmpq	$52, %rsi
	jne 	L_expand_challenge$24
	movq	%rax, %r8
L_expand_challenge$24:
	incq	%r8
L_expand_challenge$22:
	cmpq	%rax, %r8
	jb  	L_expand_challenge$23
	movq	%rsi, 360(%rsp)
	leaq	128(%rsp), %r8
	movb	$17, %bpl
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_expand_challenge$21:
	movq	$1, %r12
	movb	$1, 32(%rsp)
	leaq	32(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA1___update_updstate_avx2$1
L_expand_challenge$20:
	leaq	8(%rsp), %rsp
	movq	$48, %r12
	leaq	64(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA48___update_updstate_avx2$1
L_expand_challenge$19:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_expand_challenge$18:
	movq	$48, %r12
	leaq	64(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA48___squeeze_updstate_avx2$1
L_expand_challenge$17:
	leaq	8(%rsp), %rsp
	movq	360(%rsp), %rsi
L_expand_challenge$15:
	cmpq	$52, %rsi
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
	leaq	64(%rsp), %r8
	leaq	368(%rsp), %rdi
	call	L_bitsToChunks$1
L_expand_challenge$14:
	movq	$0, %r8
	jmp 	L_expand_challenge$10
L_expand_challenge$11:
	movw	368(%rsp,%r8,2), %dx
	cmpw	$16, %dx
	jnb 	L_expand_challenge$13
	movq	%rsi, %rcx
	movq	344(%rsp), %rdi
	movw	%dx, (%rdi,%rcx,2)
	incq	%rsi
L_expand_challenge$13:
	cmpq	$52, %rsi
	jne 	L_expand_challenge$12
	movq	%rax, %r8
L_expand_challenge$12:
	incq	%r8
L_expand_challenge$10:
	cmpq	%rax, %r8
	jb  	L_expand_challenge$11
	movq	%rsi, 360(%rsp)
	cmpq	$52, %rsi
	jnb 	L_expand_challenge$4
	leaq	128(%rsp), %r8
	movb	$17, %bpl
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_expand_challenge$9:
	movb	$1, 32(%rsp)
	movq	$1, %r12
	leaq	32(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA1___update_updstate_avx2$1
L_expand_challenge$8:
	leaq	8(%rsp), %rsp
	movq	$48, %r12
	leaq	64(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA48___update_updstate_avx2$1
L_expand_challenge$7:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_expand_challenge$6:
	movq	$48, %r12
	leaq	64(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA48___squeeze_updstate_avx2$1
L_expand_challenge$5:
	leaq	8(%rsp), %rsp
L_expand_challenge$4:
	movq	360(%rsp), %rsi
L_expand_challenge$2:
	cmpq	$52, %rsi
	jb  	L_expand_challenge$3
	movq	336(%rsp), %rcx
	movq	344(%rsp), %rdi
	ret
L__appendUnique$1:
	cmpq	$0, %rsi
	je  	L__appendUnique$2
	movq	$0, %r9
	jmp 	L__appendUnique$5
L__appendUnique$6:
	movq	%r9, %rdi
	movw	(%rcx,%rdi,2), %di
	cmpw	%dx, %di
	jne 	L__appendUnique$7
	movq	%rsi, %r9
L__appendUnique$7:
	incq	%r9
L__appendUnique$5:
	cmpq	%rsi, %r9
	jb  	L__appendUnique$6
	cmpq	%rsi, %r9
	jne 	L__appendUnique$3
	movq	%rsi, %rdi
	movw	%dx, (%rcx,%rdi,2)
	incq	%rsi
L__appendUnique$4:
	jmp 	L__appendUnique$3
L__appendUnique$2:
	movq	%rsi, %rdi
	movw	%dx, (%rcx,%rdi,2)
	incq	%rsi
L__appendUnique$3:
	ret
L_bitsToChunks$1:
	cmpq	$384, %rcx
	jnbe	L_bitsToChunks$2
	movq	$384, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	$0, %r9
	jmp 	L_bitsToChunks$4
L_bitsToChunks$5:
	movw	$0, (%rdi,%r9,2)
	movq	$0, %rdx
	jmp 	L_bitsToChunks$6
L_bitsToChunks$7:
	movq	%rcx, %r10
	imulq	%r9, %r10
	addq	%rdx, %r10
	call	L__get_u16$1
L_bitsToChunks$10:
	movq	%rdx, %rbp
	jmp 	L_bitsToChunks$8
L_bitsToChunks$9:
	shlw	$1, %bx
	decq	%rbp
L_bitsToChunks$8:
	cmpq	$0, %rbp
	jnbe	L_bitsToChunks$9
	addw	(%rdi,%r9,2), %bx
	movw	%bx, (%rdi,%r9,2)
	incq	%rdx
L_bitsToChunks$6:
	cmpq	%rcx, %rdx
	jb  	L_bitsToChunks$7
	incq	%r9
L_bitsToChunks$4:
	cmpq	%rax, %r9
	jb  	L_bitsToChunks$5
	jmp 	L_bitsToChunks$3
L_bitsToChunks$2:
	movq	$0, %rax
L_bitsToChunks$3:
	ret
L__get_u16$1:
	movq	%r10, %r11
	shrq	$3, %r11
	movw	(%r8,%r11), %bx
	andq	$7, %r10
	movq	$7, %r11
	subq	%r10, %r11
	jmp 	L__get_u16$2
L__get_u16$3:
	shrw	$1, %bx
	decq	%r11
L__get_u16$2:
	cmpq	$0, %r11
	jnbe	L__get_u16$3
	andw	$1, %bx
	ret
L_computeParentHash$1:
	movq	%r9, 368(%rsp)
	movq	%r8, 376(%rsp)
	movq	%rsi, 384(%rsp)
	movq	%rdx, 392(%rsp)
	movq	%rbp, 400(%rsp)
	movw	%ax, 64(%rsp)
	leaq	160(%rsp), %r8
	movb	$17, %bpl
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_computeParentHash$17:
	movb	$3, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	$1, %r12
	leaq	-8(%rsp), %rsp
	call	LA1___update_updstate_avx2$1
L_computeParentHash$16:
	leaq	8(%rsp), %rsp
	movq	368(%rsp), %rax
	movq	400(%rsp), %rbp
	shlq	$1, %rbp
	imulq	$48, %rbp, %r9
	addq	$48, %r9
	movq	$0, %rcx
	jmp 	L_computeParentHash$14
L_computeParentHash$15:
	movq	%r9, %rdx
	addq	%rcx, %rdx
	movq	(%rax,%rdx), %rdx
	movq	%rdx, 96(%rsp,%rcx)
	addq	$8, %rcx
L_computeParentHash$14:
	cmpq	$48, %rcx
	jb  	L_computeParentHash$15
	leaq	96(%rsp), %rsi
	movq	$48, %r12
	leaq	-8(%rsp), %rsp
	call	LA48___update_updstate_avx2$1
L_computeParentHash$13:
	leaq	8(%rsp), %rsp
	movq	400(%rsp), %rbp
	shlq	$1, %rbp
	addq	$2, %rbp
	cmpq	$930, %rbp
	jnb 	L_computeParentHash$8
	movq	368(%rsp), %rax
	movq	400(%rsp), %rcx
	movq	384(%rsp), %rsi
	movb	(%rsi,%rcx), %cl
	cmpb	$1, %cl
	jne 	L_computeParentHash$8
	imulq	$48, %rbp, %r9
	movq	$0, %rcx
	jmp 	L_computeParentHash$11
L_computeParentHash$12:
	movq	%r9, %rdx
	addq	%rcx, %rdx
	movq	(%rax,%rdx), %rdx
	movq	%rdx, 96(%rsp,%rcx)
	addq	$8, %rcx
L_computeParentHash$11:
	cmpq	$48, %rcx
	jb  	L_computeParentHash$12
	leaq	96(%rsp), %rsi
	movq	$48, %r12
	leaq	-8(%rsp), %rsp
	call	LA48___update_updstate_avx2$1
L_computeParentHash$10:
	leaq	8(%rsp), %rsp
L_computeParentHash$9:
L_computeParentHash$8:
	movq	$32, %r12
	movq	392(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_computeParentHash$7:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movw	64(%rsp), %ax
	movw	%ax, 64(%rsp)
	leaq	64(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_computeParentHash$6:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_computeParentHash$5:
	movq	400(%rsp), %rcx
	movq	376(%rsp), %rax
	movb	$1, (%rax,%rcx)
	imulq	$48, %rcx, %rcx
	movq	$48, %r12
	leaq	96(%rsp), %rdx
	movq	%rcx, 376(%rsp)
	leaq	-8(%rsp), %rsp
	call	LA48___squeeze_updstate_avx2$1
L_computeParentHash$4:
	leaq	8(%rsp), %rsp
	movq	368(%rsp), %rax
	movq	376(%rsp), %r9
	movq	$0, %rcx
	jmp 	L_computeParentHash$2
L_computeParentHash$3:
	movq	96(%rsp,%rcx), %rdx
	movq	%r9, %rsi
	addq	%rcx, %rsi
	movq	%rdx, (%rax,%rsi)
	addq	$8, %rcx
L_computeParentHash$2:
	cmpq	$48, %rcx
	jb  	L_computeParentHash$3
	ret
L_commit_v_verify$1:
	imulq	$360, %rcx, %rcx
	addq	$192, %rcx
	movq	(%rdi,%rcx), %rsi
	movq	%rsi, 32(%rsp)
	movq	8(%rdi,%rcx), %rsi
	movq	%rsi, 40(%rsp)
	movq	16(%rdi,%rcx), %rsi
	movq	%rsi, 48(%rsp)
	movq	24(%rdi,%rcx), %rcx
	movq	%rcx, 56(%rsp)
	movq	%r8, 336(%rsp)
	movq	%rax, 344(%rsp)
	movb	$31, %cl
	movb	$17, %bpl
	leaq	128(%rsp), %r8
	call	L_init_updstate_avx2$1
L_commit_v_verify$6:
	movq	$24, %r12
	leaq	32(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_commit_v_verify$5:
	leaq	8(%rsp), %rsp
	movq	$1536, %r12
	leaq	-8(%rsp), %rsp
	call	LA1536___update_updstate_avx2$1
L_commit_v_verify$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit_v_verify$3:
	movq	$48, %r12
	leaq	64(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA48___squeeze_updstate_avx2$1
L_commit_v_verify$2:
	leaq	8(%rsp), %rsp
	movq	336(%rsp), %rcx
	movq	344(%rsp), %rax
	imulq	$48, %rax, %rax
	movq	64(%rsp), %rdx
	movq	%rdx, (%rcx,%rax)
	movq	72(%rsp), %rdx
	movq	%rdx, 8(%rcx,%rax)
	movq	80(%rsp), %rdx
	movq	%rdx, 16(%rcx,%rax)
	movq	88(%rsp), %rdx
	movq	%rdx, 24(%rcx,%rax)
	movq	96(%rsp), %rdx
	movq	%rdx, 32(%rcx,%rax)
	movq	104(%rsp), %rdx
	movq	%rdx, 40(%rcx,%rax)
	ret
L_commit_v$1:
	movq	%rax, %rsi
	imulq	$32, %rsi, %rsi
	movq	(%rdi,%rsi), %r8
	movq	%r8, 32(%rsp)
	movq	8(%rdi,%rsi), %r8
	movq	%r8, 40(%rsp)
	movq	16(%rdi,%rsi), %r8
	movq	%r8, 48(%rsp)
	movq	24(%rdi,%rsi), %rsi
	movq	%rsi, 56(%rsp)
	movq	%rax, %rsi
	imulq	$1536, %rsi, %rsi
	movq	(%rcx,%rsi), %rdi
	movq	%rdi, 352(%rsp)
	movq	8(%rcx,%rsi), %rdi
	movq	%rdi, 360(%rsp)
	movq	16(%rcx,%rsi), %rdi
	movq	%rdi, 368(%rsp)
	movq	24(%rcx,%rsi), %rdi
	movq	%rdi, 376(%rsp)
	movq	32(%rcx,%rsi), %rdi
	movq	%rdi, 384(%rsp)
	movq	40(%rcx,%rsi), %rdi
	movq	%rdi, 392(%rsp)
	movq	48(%rcx,%rsi), %rdi
	movq	%rdi, 400(%rsp)
	movq	56(%rcx,%rsi), %rdi
	movq	%rdi, 408(%rsp)
	movq	64(%rcx,%rsi), %rdi
	movq	%rdi, 416(%rsp)
	movq	72(%rcx,%rsi), %rdi
	movq	%rdi, 424(%rsp)
	movq	80(%rcx,%rsi), %rdi
	movq	%rdi, 432(%rsp)
	movq	88(%rcx,%rsi), %rdi
	movq	%rdi, 440(%rsp)
	movq	96(%rcx,%rsi), %rdi
	movq	%rdi, 448(%rsp)
	movq	104(%rcx,%rsi), %rdi
	movq	%rdi, 456(%rsp)
	movq	112(%rcx,%rsi), %rdi
	movq	%rdi, 464(%rsp)
	movq	120(%rcx,%rsi), %rdi
	movq	%rdi, 472(%rsp)
	movq	128(%rcx,%rsi), %rdi
	movq	%rdi, 480(%rsp)
	movq	136(%rcx,%rsi), %rdi
	movq	%rdi, 488(%rsp)
	movq	144(%rcx,%rsi), %rdi
	movq	%rdi, 496(%rsp)
	movq	152(%rcx,%rsi), %rdi
	movq	%rdi, 504(%rsp)
	movq	160(%rcx,%rsi), %rdi
	movq	%rdi, 512(%rsp)
	movq	168(%rcx,%rsi), %rdi
	movq	%rdi, 520(%rsp)
	movq	176(%rcx,%rsi), %rdi
	movq	%rdi, 528(%rsp)
	movq	184(%rcx,%rsi), %rdi
	movq	%rdi, 536(%rsp)
	movq	192(%rcx,%rsi), %rdi
	movq	%rdi, 544(%rsp)
	movq	200(%rcx,%rsi), %rdi
	movq	%rdi, 552(%rsp)
	movq	208(%rcx,%rsi), %rdi
	movq	%rdi, 560(%rsp)
	movq	216(%rcx,%rsi), %rdi
	movq	%rdi, 568(%rsp)
	movq	224(%rcx,%rsi), %rdi
	movq	%rdi, 576(%rsp)
	movq	232(%rcx,%rsi), %rdi
	movq	%rdi, 584(%rsp)
	movq	240(%rcx,%rsi), %rdi
	movq	%rdi, 592(%rsp)
	movq	248(%rcx,%rsi), %rdi
	movq	%rdi, 600(%rsp)
	movq	256(%rcx,%rsi), %rdi
	movq	%rdi, 608(%rsp)
	movq	264(%rcx,%rsi), %rdi
	movq	%rdi, 616(%rsp)
	movq	272(%rcx,%rsi), %rdi
	movq	%rdi, 624(%rsp)
	movq	280(%rcx,%rsi), %rdi
	movq	%rdi, 632(%rsp)
	movq	288(%rcx,%rsi), %rdi
	movq	%rdi, 640(%rsp)
	movq	296(%rcx,%rsi), %rdi
	movq	%rdi, 648(%rsp)
	movq	304(%rcx,%rsi), %rdi
	movq	%rdi, 656(%rsp)
	movq	312(%rcx,%rsi), %rdi
	movq	%rdi, 664(%rsp)
	movq	320(%rcx,%rsi), %rdi
	movq	%rdi, 672(%rsp)
	movq	328(%rcx,%rsi), %rdi
	movq	%rdi, 680(%rsp)
	movq	336(%rcx,%rsi), %rdi
	movq	%rdi, 688(%rsp)
	movq	344(%rcx,%rsi), %rdi
	movq	%rdi, 696(%rsp)
	movq	352(%rcx,%rsi), %rdi
	movq	%rdi, 704(%rsp)
	movq	360(%rcx,%rsi), %rdi
	movq	%rdi, 712(%rsp)
	movq	368(%rcx,%rsi), %rdi
	movq	%rdi, 720(%rsp)
	movq	376(%rcx,%rsi), %rdi
	movq	%rdi, 728(%rsp)
	movq	384(%rcx,%rsi), %rdi
	movq	%rdi, 736(%rsp)
	movq	392(%rcx,%rsi), %rdi
	movq	%rdi, 744(%rsp)
	movq	400(%rcx,%rsi), %rdi
	movq	%rdi, 752(%rsp)
	movq	408(%rcx,%rsi), %rdi
	movq	%rdi, 760(%rsp)
	movq	416(%rcx,%rsi), %rdi
	movq	%rdi, 768(%rsp)
	movq	424(%rcx,%rsi), %rdi
	movq	%rdi, 776(%rsp)
	movq	432(%rcx,%rsi), %rdi
	movq	%rdi, 784(%rsp)
	movq	440(%rcx,%rsi), %rdi
	movq	%rdi, 792(%rsp)
	movq	448(%rcx,%rsi), %rdi
	movq	%rdi, 800(%rsp)
	movq	456(%rcx,%rsi), %rdi
	movq	%rdi, 808(%rsp)
	movq	464(%rcx,%rsi), %rdi
	movq	%rdi, 816(%rsp)
	movq	472(%rcx,%rsi), %rdi
	movq	%rdi, 824(%rsp)
	movq	480(%rcx,%rsi), %rdi
	movq	%rdi, 832(%rsp)
	movq	488(%rcx,%rsi), %rdi
	movq	%rdi, 840(%rsp)
	movq	496(%rcx,%rsi), %rdi
	movq	%rdi, 848(%rsp)
	movq	504(%rcx,%rsi), %rdi
	movq	%rdi, 856(%rsp)
	movq	512(%rcx,%rsi), %rdi
	movq	%rdi, 864(%rsp)
	movq	520(%rcx,%rsi), %rdi
	movq	%rdi, 872(%rsp)
	movq	528(%rcx,%rsi), %rdi
	movq	%rdi, 880(%rsp)
	movq	536(%rcx,%rsi), %rdi
	movq	%rdi, 888(%rsp)
	movq	544(%rcx,%rsi), %rdi
	movq	%rdi, 896(%rsp)
	movq	552(%rcx,%rsi), %rdi
	movq	%rdi, 904(%rsp)
	movq	560(%rcx,%rsi), %rdi
	movq	%rdi, 912(%rsp)
	movq	568(%rcx,%rsi), %rdi
	movq	%rdi, 920(%rsp)
	movq	576(%rcx,%rsi), %rdi
	movq	%rdi, 928(%rsp)
	movq	584(%rcx,%rsi), %rdi
	movq	%rdi, 936(%rsp)
	movq	592(%rcx,%rsi), %rdi
	movq	%rdi, 944(%rsp)
	movq	600(%rcx,%rsi), %rdi
	movq	%rdi, 952(%rsp)
	movq	608(%rcx,%rsi), %rdi
	movq	%rdi, 960(%rsp)
	movq	616(%rcx,%rsi), %rdi
	movq	%rdi, 968(%rsp)
	movq	624(%rcx,%rsi), %rdi
	movq	%rdi, 976(%rsp)
	movq	632(%rcx,%rsi), %rdi
	movq	%rdi, 984(%rsp)
	movq	640(%rcx,%rsi), %rdi
	movq	%rdi, 992(%rsp)
	movq	648(%rcx,%rsi), %rdi
	movq	%rdi, 1000(%rsp)
	movq	656(%rcx,%rsi), %rdi
	movq	%rdi, 1008(%rsp)
	movq	664(%rcx,%rsi), %rdi
	movq	%rdi, 1016(%rsp)
	movq	672(%rcx,%rsi), %rdi
	movq	%rdi, 1024(%rsp)
	movq	680(%rcx,%rsi), %rdi
	movq	%rdi, 1032(%rsp)
	movq	688(%rcx,%rsi), %rdi
	movq	%rdi, 1040(%rsp)
	movq	696(%rcx,%rsi), %rdi
	movq	%rdi, 1048(%rsp)
	movq	704(%rcx,%rsi), %rdi
	movq	%rdi, 1056(%rsp)
	movq	712(%rcx,%rsi), %rdi
	movq	%rdi, 1064(%rsp)
	movq	720(%rcx,%rsi), %rdi
	movq	%rdi, 1072(%rsp)
	movq	728(%rcx,%rsi), %rdi
	movq	%rdi, 1080(%rsp)
	movq	736(%rcx,%rsi), %rdi
	movq	%rdi, 1088(%rsp)
	movq	744(%rcx,%rsi), %rdi
	movq	%rdi, 1096(%rsp)
	movq	752(%rcx,%rsi), %rdi
	movq	%rdi, 1104(%rsp)
	movq	760(%rcx,%rsi), %rdi
	movq	%rdi, 1112(%rsp)
	movq	768(%rcx,%rsi), %rdi
	movq	%rdi, 1120(%rsp)
	movq	776(%rcx,%rsi), %rdi
	movq	%rdi, 1128(%rsp)
	movq	784(%rcx,%rsi), %rdi
	movq	%rdi, 1136(%rsp)
	movq	792(%rcx,%rsi), %rdi
	movq	%rdi, 1144(%rsp)
	movq	800(%rcx,%rsi), %rdi
	movq	%rdi, 1152(%rsp)
	movq	808(%rcx,%rsi), %rdi
	movq	%rdi, 1160(%rsp)
	movq	816(%rcx,%rsi), %rdi
	movq	%rdi, 1168(%rsp)
	movq	824(%rcx,%rsi), %rdi
	movq	%rdi, 1176(%rsp)
	movq	832(%rcx,%rsi), %rdi
	movq	%rdi, 1184(%rsp)
	movq	840(%rcx,%rsi), %rdi
	movq	%rdi, 1192(%rsp)
	movq	848(%rcx,%rsi), %rdi
	movq	%rdi, 1200(%rsp)
	movq	856(%rcx,%rsi), %rdi
	movq	%rdi, 1208(%rsp)
	movq	864(%rcx,%rsi), %rdi
	movq	%rdi, 1216(%rsp)
	movq	872(%rcx,%rsi), %rdi
	movq	%rdi, 1224(%rsp)
	movq	880(%rcx,%rsi), %rdi
	movq	%rdi, 1232(%rsp)
	movq	888(%rcx,%rsi), %rdi
	movq	%rdi, 1240(%rsp)
	movq	896(%rcx,%rsi), %rdi
	movq	%rdi, 1248(%rsp)
	movq	904(%rcx,%rsi), %rdi
	movq	%rdi, 1256(%rsp)
	movq	912(%rcx,%rsi), %rdi
	movq	%rdi, 1264(%rsp)
	movq	920(%rcx,%rsi), %rdi
	movq	%rdi, 1272(%rsp)
	movq	928(%rcx,%rsi), %rdi
	movq	%rdi, 1280(%rsp)
	movq	936(%rcx,%rsi), %rdi
	movq	%rdi, 1288(%rsp)
	movq	944(%rcx,%rsi), %rdi
	movq	%rdi, 1296(%rsp)
	movq	952(%rcx,%rsi), %rdi
	movq	%rdi, 1304(%rsp)
	movq	960(%rcx,%rsi), %rdi
	movq	%rdi, 1312(%rsp)
	movq	968(%rcx,%rsi), %rdi
	movq	%rdi, 1320(%rsp)
	movq	976(%rcx,%rsi), %rdi
	movq	%rdi, 1328(%rsp)
	movq	984(%rcx,%rsi), %rdi
	movq	%rdi, 1336(%rsp)
	movq	992(%rcx,%rsi), %rdi
	movq	%rdi, 1344(%rsp)
	movq	1000(%rcx,%rsi), %rdi
	movq	%rdi, 1352(%rsp)
	movq	1008(%rcx,%rsi), %rdi
	movq	%rdi, 1360(%rsp)
	movq	1016(%rcx,%rsi), %rdi
	movq	%rdi, 1368(%rsp)
	movq	1024(%rcx,%rsi), %rdi
	movq	%rdi, 1376(%rsp)
	movq	1032(%rcx,%rsi), %rdi
	movq	%rdi, 1384(%rsp)
	movq	1040(%rcx,%rsi), %rdi
	movq	%rdi, 1392(%rsp)
	movq	1048(%rcx,%rsi), %rdi
	movq	%rdi, 1400(%rsp)
	movq	1056(%rcx,%rsi), %rdi
	movq	%rdi, 1408(%rsp)
	movq	1064(%rcx,%rsi), %rdi
	movq	%rdi, 1416(%rsp)
	movq	1072(%rcx,%rsi), %rdi
	movq	%rdi, 1424(%rsp)
	movq	1080(%rcx,%rsi), %rdi
	movq	%rdi, 1432(%rsp)
	movq	1088(%rcx,%rsi), %rdi
	movq	%rdi, 1440(%rsp)
	movq	1096(%rcx,%rsi), %rdi
	movq	%rdi, 1448(%rsp)
	movq	1104(%rcx,%rsi), %rdi
	movq	%rdi, 1456(%rsp)
	movq	1112(%rcx,%rsi), %rdi
	movq	%rdi, 1464(%rsp)
	movq	1120(%rcx,%rsi), %rdi
	movq	%rdi, 1472(%rsp)
	movq	1128(%rcx,%rsi), %rdi
	movq	%rdi, 1480(%rsp)
	movq	1136(%rcx,%rsi), %rdi
	movq	%rdi, 1488(%rsp)
	movq	1144(%rcx,%rsi), %rdi
	movq	%rdi, 1496(%rsp)
	movq	1152(%rcx,%rsi), %rdi
	movq	%rdi, 1504(%rsp)
	movq	1160(%rcx,%rsi), %rdi
	movq	%rdi, 1512(%rsp)
	movq	1168(%rcx,%rsi), %rdi
	movq	%rdi, 1520(%rsp)
	movq	1176(%rcx,%rsi), %rdi
	movq	%rdi, 1528(%rsp)
	movq	1184(%rcx,%rsi), %rdi
	movq	%rdi, 1536(%rsp)
	movq	1192(%rcx,%rsi), %rdi
	movq	%rdi, 1544(%rsp)
	movq	1200(%rcx,%rsi), %rdi
	movq	%rdi, 1552(%rsp)
	movq	1208(%rcx,%rsi), %rdi
	movq	%rdi, 1560(%rsp)
	movq	1216(%rcx,%rsi), %rdi
	movq	%rdi, 1568(%rsp)
	movq	1224(%rcx,%rsi), %rdi
	movq	%rdi, 1576(%rsp)
	movq	1232(%rcx,%rsi), %rdi
	movq	%rdi, 1584(%rsp)
	movq	1240(%rcx,%rsi), %rdi
	movq	%rdi, 1592(%rsp)
	movq	1248(%rcx,%rsi), %rdi
	movq	%rdi, 1600(%rsp)
	movq	1256(%rcx,%rsi), %rdi
	movq	%rdi, 1608(%rsp)
	movq	1264(%rcx,%rsi), %rdi
	movq	%rdi, 1616(%rsp)
	movq	1272(%rcx,%rsi), %rdi
	movq	%rdi, 1624(%rsp)
	movq	1280(%rcx,%rsi), %rdi
	movq	%rdi, 1632(%rsp)
	movq	1288(%rcx,%rsi), %rdi
	movq	%rdi, 1640(%rsp)
	movq	1296(%rcx,%rsi), %rdi
	movq	%rdi, 1648(%rsp)
	movq	1304(%rcx,%rsi), %rdi
	movq	%rdi, 1656(%rsp)
	movq	1312(%rcx,%rsi), %rdi
	movq	%rdi, 1664(%rsp)
	movq	1320(%rcx,%rsi), %rdi
	movq	%rdi, 1672(%rsp)
	movq	1328(%rcx,%rsi), %rdi
	movq	%rdi, 1680(%rsp)
	movq	1336(%rcx,%rsi), %rdi
	movq	%rdi, 1688(%rsp)
	movq	1344(%rcx,%rsi), %rdi
	movq	%rdi, 1696(%rsp)
	movq	1352(%rcx,%rsi), %rdi
	movq	%rdi, 1704(%rsp)
	movq	1360(%rcx,%rsi), %rdi
	movq	%rdi, 1712(%rsp)
	movq	1368(%rcx,%rsi), %rdi
	movq	%rdi, 1720(%rsp)
	movq	1376(%rcx,%rsi), %rdi
	movq	%rdi, 1728(%rsp)
	movq	1384(%rcx,%rsi), %rdi
	movq	%rdi, 1736(%rsp)
	movq	1392(%rcx,%rsi), %rdi
	movq	%rdi, 1744(%rsp)
	movq	1400(%rcx,%rsi), %rdi
	movq	%rdi, 1752(%rsp)
	movq	1408(%rcx,%rsi), %rdi
	movq	%rdi, 1760(%rsp)
	movq	1416(%rcx,%rsi), %rdi
	movq	%rdi, 1768(%rsp)
	movq	1424(%rcx,%rsi), %rdi
	movq	%rdi, 1776(%rsp)
	movq	1432(%rcx,%rsi), %rdi
	movq	%rdi, 1784(%rsp)
	movq	1440(%rcx,%rsi), %rdi
	movq	%rdi, 1792(%rsp)
	movq	1448(%rcx,%rsi), %rdi
	movq	%rdi, 1800(%rsp)
	movq	1456(%rcx,%rsi), %rdi
	movq	%rdi, 1808(%rsp)
	movq	1464(%rcx,%rsi), %rdi
	movq	%rdi, 1816(%rsp)
	movq	1472(%rcx,%rsi), %rdi
	movq	%rdi, 1824(%rsp)
	movq	1480(%rcx,%rsi), %rdi
	movq	%rdi, 1832(%rsp)
	movq	1488(%rcx,%rsi), %rdi
	movq	%rdi, 1840(%rsp)
	movq	1496(%rcx,%rsi), %rdi
	movq	%rdi, 1848(%rsp)
	movq	1504(%rcx,%rsi), %rdi
	movq	%rdi, 1856(%rsp)
	movq	1512(%rcx,%rsi), %rdi
	movq	%rdi, 1864(%rsp)
	movq	1520(%rcx,%rsi), %rdi
	movq	%rdi, 1872(%rsp)
	movq	1528(%rcx,%rsi), %rcx
	movq	%rcx, 1880(%rsp)
	movq	%rdx, 1888(%rsp)
	movq	%rax, 1896(%rsp)
	movb	$31, %cl
	movb	$17, %bpl
	leaq	128(%rsp), %r8
	call	L_init_updstate_avx2$1
L_commit_v$6:
	movq	$24, %r12
	leaq	32(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_commit_v$5:
	leaq	8(%rsp), %rsp
	movq	$1536, %r12
	leaq	352(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA1536___update_updstate_avx2$1
L_commit_v$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit_v$3:
	movq	$48, %r12
	leaq	64(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA48___squeeze_updstate_avx2$1
L_commit_v$2:
	leaq	8(%rsp), %rsp
	movq	1888(%rsp), %rcx
	movq	1896(%rsp), %rax
	imulq	$48, %rax, %rax
	movq	64(%rsp), %rdx
	movq	%rdx, (%rcx,%rax)
	movq	72(%rsp), %rdx
	movq	%rdx, 8(%rcx,%rax)
	movq	80(%rsp), %rdx
	movq	%rdx, 16(%rcx,%rax)
	movq	88(%rsp), %rdx
	movq	%rdx, 24(%rcx,%rax)
	movq	96(%rsp), %rdx
	movq	%rdx, 32(%rcx,%rax)
	movq	104(%rsp), %rdx
	movq	%rdx, 40(%rcx,%rax)
	ret
L_commit_h$1:
	movq	%rax, %rsi
	imulq	$768, %rsi, %rsi
	movq	(%rcx,%rsi), %rdi
	movq	%rdi, 320(%rsp)
	movq	8(%rcx,%rsi), %rdi
	movq	%rdi, 328(%rsp)
	movq	16(%rcx,%rsi), %rdi
	movq	%rdi, 336(%rsp)
	movq	24(%rcx,%rsi), %rdi
	movq	%rdi, 344(%rsp)
	movq	32(%rcx,%rsi), %rdi
	movq	%rdi, 352(%rsp)
	movq	40(%rcx,%rsi), %rdi
	movq	%rdi, 360(%rsp)
	movq	48(%rcx,%rsi), %rdi
	movq	%rdi, 368(%rsp)
	movq	56(%rcx,%rsi), %rdi
	movq	%rdi, 376(%rsp)
	movq	64(%rcx,%rsi), %rdi
	movq	%rdi, 384(%rsp)
	movq	72(%rcx,%rsi), %rdi
	movq	%rdi, 392(%rsp)
	movq	80(%rcx,%rsi), %rdi
	movq	%rdi, 400(%rsp)
	movq	88(%rcx,%rsi), %rdi
	movq	%rdi, 408(%rsp)
	movq	96(%rcx,%rsi), %rdi
	movq	%rdi, 416(%rsp)
	movq	104(%rcx,%rsi), %rdi
	movq	%rdi, 424(%rsp)
	movq	112(%rcx,%rsi), %rdi
	movq	%rdi, 432(%rsp)
	movq	120(%rcx,%rsi), %rdi
	movq	%rdi, 440(%rsp)
	movq	128(%rcx,%rsi), %rdi
	movq	%rdi, 448(%rsp)
	movq	136(%rcx,%rsi), %rdi
	movq	%rdi, 456(%rsp)
	movq	144(%rcx,%rsi), %rdi
	movq	%rdi, 464(%rsp)
	movq	152(%rcx,%rsi), %rdi
	movq	%rdi, 472(%rsp)
	movq	160(%rcx,%rsi), %rdi
	movq	%rdi, 480(%rsp)
	movq	168(%rcx,%rsi), %rdi
	movq	%rdi, 488(%rsp)
	movq	176(%rcx,%rsi), %rdi
	movq	%rdi, 496(%rsp)
	movq	184(%rcx,%rsi), %rdi
	movq	%rdi, 504(%rsp)
	movq	192(%rcx,%rsi), %rdi
	movq	%rdi, 512(%rsp)
	movq	200(%rcx,%rsi), %rdi
	movq	%rdi, 520(%rsp)
	movq	208(%rcx,%rsi), %rdi
	movq	%rdi, 528(%rsp)
	movq	216(%rcx,%rsi), %rdi
	movq	%rdi, 536(%rsp)
	movq	224(%rcx,%rsi), %rdi
	movq	%rdi, 544(%rsp)
	movq	232(%rcx,%rsi), %rdi
	movq	%rdi, 552(%rsp)
	movq	240(%rcx,%rsi), %rdi
	movq	%rdi, 560(%rsp)
	movq	248(%rcx,%rsi), %rdi
	movq	%rdi, 568(%rsp)
	movq	256(%rcx,%rsi), %rdi
	movq	%rdi, 576(%rsp)
	movq	264(%rcx,%rsi), %rdi
	movq	%rdi, 584(%rsp)
	movq	272(%rcx,%rsi), %rdi
	movq	%rdi, 592(%rsp)
	movq	280(%rcx,%rsi), %rdi
	movq	%rdi, 600(%rsp)
	movq	288(%rcx,%rsi), %rdi
	movq	%rdi, 608(%rsp)
	movq	296(%rcx,%rsi), %rdi
	movq	%rdi, 616(%rsp)
	movq	304(%rcx,%rsi), %rdi
	movq	%rdi, 624(%rsp)
	movq	312(%rcx,%rsi), %rdi
	movq	%rdi, 632(%rsp)
	movq	320(%rcx,%rsi), %rdi
	movq	%rdi, 640(%rsp)
	movq	328(%rcx,%rsi), %rdi
	movq	%rdi, 648(%rsp)
	movq	336(%rcx,%rsi), %rdi
	movq	%rdi, 656(%rsp)
	movq	344(%rcx,%rsi), %rdi
	movq	%rdi, 664(%rsp)
	movq	352(%rcx,%rsi), %rdi
	movq	%rdi, 672(%rsp)
	movq	360(%rcx,%rsi), %rdi
	movq	%rdi, 680(%rsp)
	movq	368(%rcx,%rsi), %rdi
	movq	%rdi, 688(%rsp)
	movq	376(%rcx,%rsi), %rdi
	movq	%rdi, 696(%rsp)
	movq	384(%rcx,%rsi), %rdi
	movq	%rdi, 704(%rsp)
	movq	392(%rcx,%rsi), %rdi
	movq	%rdi, 712(%rsp)
	movq	400(%rcx,%rsi), %rdi
	movq	%rdi, 720(%rsp)
	movq	408(%rcx,%rsi), %rdi
	movq	%rdi, 728(%rsp)
	movq	416(%rcx,%rsi), %rdi
	movq	%rdi, 736(%rsp)
	movq	424(%rcx,%rsi), %rdi
	movq	%rdi, 744(%rsp)
	movq	432(%rcx,%rsi), %rdi
	movq	%rdi, 752(%rsp)
	movq	440(%rcx,%rsi), %rdi
	movq	%rdi, 760(%rsp)
	movq	448(%rcx,%rsi), %rdi
	movq	%rdi, 768(%rsp)
	movq	456(%rcx,%rsi), %rdi
	movq	%rdi, 776(%rsp)
	movq	464(%rcx,%rsi), %rdi
	movq	%rdi, 784(%rsp)
	movq	472(%rcx,%rsi), %rdi
	movq	%rdi, 792(%rsp)
	movq	480(%rcx,%rsi), %rdi
	movq	%rdi, 800(%rsp)
	movq	488(%rcx,%rsi), %rdi
	movq	%rdi, 808(%rsp)
	movq	496(%rcx,%rsi), %rdi
	movq	%rdi, 816(%rsp)
	movq	504(%rcx,%rsi), %rdi
	movq	%rdi, 824(%rsp)
	movq	512(%rcx,%rsi), %rdi
	movq	%rdi, 832(%rsp)
	movq	520(%rcx,%rsi), %rdi
	movq	%rdi, 840(%rsp)
	movq	528(%rcx,%rsi), %rdi
	movq	%rdi, 848(%rsp)
	movq	536(%rcx,%rsi), %rdi
	movq	%rdi, 856(%rsp)
	movq	544(%rcx,%rsi), %rdi
	movq	%rdi, 864(%rsp)
	movq	552(%rcx,%rsi), %rdi
	movq	%rdi, 872(%rsp)
	movq	560(%rcx,%rsi), %rdi
	movq	%rdi, 880(%rsp)
	movq	568(%rcx,%rsi), %rdi
	movq	%rdi, 888(%rsp)
	movq	576(%rcx,%rsi), %rdi
	movq	%rdi, 896(%rsp)
	movq	584(%rcx,%rsi), %rdi
	movq	%rdi, 904(%rsp)
	movq	592(%rcx,%rsi), %rdi
	movq	%rdi, 912(%rsp)
	movq	600(%rcx,%rsi), %rdi
	movq	%rdi, 920(%rsp)
	movq	608(%rcx,%rsi), %rdi
	movq	%rdi, 928(%rsp)
	movq	616(%rcx,%rsi), %rdi
	movq	%rdi, 936(%rsp)
	movq	624(%rcx,%rsi), %rdi
	movq	%rdi, 944(%rsp)
	movq	632(%rcx,%rsi), %rdi
	movq	%rdi, 952(%rsp)
	movq	640(%rcx,%rsi), %rdi
	movq	%rdi, 960(%rsp)
	movq	648(%rcx,%rsi), %rdi
	movq	%rdi, 968(%rsp)
	movq	656(%rcx,%rsi), %rdi
	movq	%rdi, 976(%rsp)
	movq	664(%rcx,%rsi), %rdi
	movq	%rdi, 984(%rsp)
	movq	672(%rcx,%rsi), %rdi
	movq	%rdi, 992(%rsp)
	movq	680(%rcx,%rsi), %rdi
	movq	%rdi, 1000(%rsp)
	movq	688(%rcx,%rsi), %rdi
	movq	%rdi, 1008(%rsp)
	movq	696(%rcx,%rsi), %rdi
	movq	%rdi, 1016(%rsp)
	movq	704(%rcx,%rsi), %rdi
	movq	%rdi, 1024(%rsp)
	movq	712(%rcx,%rsi), %rdi
	movq	%rdi, 1032(%rsp)
	movq	720(%rcx,%rsi), %rdi
	movq	%rdi, 1040(%rsp)
	movq	728(%rcx,%rsi), %rdi
	movq	%rdi, 1048(%rsp)
	movq	736(%rcx,%rsi), %rdi
	movq	%rdi, 1056(%rsp)
	movq	744(%rcx,%rsi), %rdi
	movq	%rdi, 1064(%rsp)
	movq	752(%rcx,%rsi), %rdi
	movq	%rdi, 1072(%rsp)
	movq	760(%rcx,%rsi), %rcx
	movq	%rcx, 1080(%rsp)
	movq	%rdx, 1088(%rsp)
	movq	%rax, 1096(%rsp)
	leaq	96(%rsp), %r8
	movb	$17, %bpl
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_commit_h$5:
	movq	$768, %r12
	leaq	320(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA768___update_updstate_avx2$1
L_commit_h$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit_h$3:
	movq	$48, %r12
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA48___squeeze_updstate_avx2$1
L_commit_h$2:
	leaq	8(%rsp), %rsp
	movq	1088(%rsp), %rcx
	movq	1096(%rsp), %rax
	imulq	$48, %rax, %rax
	movq	32(%rsp), %rdx
	movq	%rdx, (%rcx,%rax)
	movq	40(%rsp), %rdx
	movq	%rdx, 8(%rcx,%rax)
	movq	48(%rsp), %rdx
	movq	%rdx, 16(%rcx,%rax)
	movq	56(%rsp), %rdx
	movq	%rdx, 24(%rcx,%rax)
	movq	64(%rsp), %rdx
	movq	%rdx, 32(%rcx,%rax)
	movq	72(%rsp), %rdx
	movq	%rdx, 40(%rcx,%rax)
	ret
L_commit_assemble$1:
	movq	%rcx, 400(%rsp)
	movq	%rdi, 408(%rsp)
	movq	%rsi, 416(%rsp)
	movq	%rdx, 424(%rsp)
	movq	%rax, 432(%rsp)
	movw	%r8w, 440(%rsp)
	leaq	192(%rsp), %r8
	movb	$17, %bpl
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_commit_assemble$14:
	movq	432(%rsp), %rax
	movw	440(%rsp), %dx
	movq	408(%rsp), %rcx
	imulq	$744, %rax, %rax
	movzwq	%dx, %rdi
	addq	$15, %rdi
	imulq	$24, %rdi, %rdi
	addq	%rax, %rdi
	movq	$0, %rsi
	jmp 	L_commit_assemble$12
L_commit_assemble$13:
	movq	%rdi, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax), %rax
	movq	%rax, 64(%rsp,%rsi)
	addq	$8, %rsi
L_commit_assemble$12:
	cmpq	$24, %rsi
	jb  	L_commit_assemble$13
	leaq	64(%rsp), %rsi
	movq	$24, %r12
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_commit_assemble$11:
	leaq	8(%rsp), %rsp
	cmpw	$15, %dx
	jne 	L_commit_assemble$7
	movq	432(%rsp), %rax
	movq	416(%rsp), %rcx
	imulq	$3392, %rax, %rdi
	addq	$3072, %rdi
	movq	$0, %rsi
	jmp 	L_commit_assemble$9
L_commit_assemble$10:
	movq	%rdi, %rax
	addq	%rsi, %rax
	movq	(%rcx,%rax), %rax
	movq	%rax, 96(%rsp,%rsi)
	addq	$8, %rsi
L_commit_assemble$9:
	cmpq	$96, %rsi
	jb  	L_commit_assemble$10
	leaq	96(%rsp), %rdx
	movq	$96, %r12
	leaq	-8(%rsp), %rsp
	call	LA96___update_updstate_avx2$1
L_commit_assemble$8:
	leaq	8(%rsp), %rsp
L_commit_assemble$7:
	movq	424(%rsp), %rdx
	movq	$32, %r12
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit_assemble$6:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movq	432(%rsp), %rax
	movw	%ax, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit_assemble$5:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movw	440(%rsp), %dx
	movw	%dx, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit_assemble$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit_assemble$3:
	movq	$48, %r12
	movq	400(%rsp), %rdx
	leaq	-32(%rsp), %rsp
	call	L_squeeze_m_updstate_avx2$1
L_commit_assemble$2:
	leaq	32(%rsp), %rsp
	movq	%rdx, %r10
	ret
L_commit_verify_v2$1:
	movq	%r8, 464(%rsp)
	movq	%rbx, 472(%rsp)
	movq	%rax, 480(%rsp)
	movw	%si, 488(%rsp)
	movzwq	%si, %rsi
	addq	$15, %rsi
	imulq	$24, %rsi, %rsi
	movq	(%rdi,%rsi), %rax
	movq	%rax, 64(%rsp)
	movq	8(%rdi,%rsi), %rax
	movq	%rax, 72(%rsp)
	movq	16(%rdi,%rsi), %rax
	movq	%rax, 80(%rsp)
	imulq	$360, %rcx, %rax
	addq	$96, %rax
	movq	(%rdx,%rax), %rcx
	movq	%rcx, 160(%rsp)
	movq	8(%rdx,%rax), %rcx
	movq	%rcx, 168(%rsp)
	movq	16(%rdx,%rax), %rcx
	movq	%rcx, 176(%rsp)
	movq	24(%rdx,%rax), %rcx
	movq	%rcx, 184(%rsp)
	movq	32(%rdx,%rax), %rcx
	movq	%rcx, 192(%rsp)
	movq	40(%rdx,%rax), %rcx
	movq	%rcx, 200(%rsp)
	movq	48(%rdx,%rax), %rcx
	movq	%rcx, 208(%rsp)
	movq	56(%rdx,%rax), %rcx
	movq	%rcx, 216(%rsp)
	movq	64(%rdx,%rax), %rcx
	movq	%rcx, 224(%rsp)
	movq	72(%rdx,%rax), %rcx
	movq	%rcx, 232(%rsp)
	movq	80(%rdx,%rax), %rcx
	movq	%rcx, 240(%rsp)
	movq	88(%rdx,%rax), %rax
	movq	%rax, 248(%rsp)
	leaq	256(%rsp), %r8
	movb	$17, %bpl
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_commit_verify_v2$9:
	movq	$24, %r12
	leaq	64(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_commit_verify_v2$8:
	leaq	8(%rsp), %rsp
	movq	$96, %r12
	leaq	160(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA96___update_updstate_avx2$1
L_commit_verify_v2$7:
	leaq	8(%rsp), %rsp
	movq	$32, %r12
	movq	472(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit_verify_v2$6:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movq	480(%rsp), %rax
	movw	%ax, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit_verify_v2$5:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movw	488(%rsp), %dx
	movw	%dx, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit_verify_v2$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit_verify_v2$3:
	movq	$48, %r12
	leaq	96(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA48___squeeze_updstate_avx2$1
L_commit_verify_v2$2:
	leaq	8(%rsp), %rsp
	movq	464(%rsp), %rcx
	movq	480(%rsp), %rax
	movw	488(%rsp), %dx
	imulq	$768, %rax, %rax
	movzwq	%dx, %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rax
	movq	96(%rsp), %rdx
	movq	%rdx, (%rcx,%rax)
	movq	104(%rsp), %rdx
	movq	%rdx, 8(%rcx,%rax)
	movq	112(%rsp), %rdx
	movq	%rdx, 16(%rcx,%rax)
	movq	120(%rsp), %rdx
	movq	%rdx, 24(%rcx,%rax)
	movq	128(%rsp), %rdx
	movq	%rdx, 32(%rcx,%rax)
	movq	136(%rsp), %rdx
	movq	%rdx, 40(%rcx,%rax)
	ret
L_commit_verify$1:
	movq	%rcx, 464(%rsp)
	movq	%rbx, 472(%rsp)
	movq	%rax, 480(%rsp)
	movw	%si, 488(%rsp)
	movzwq	%si, %rax
	addq	$15, %rax
	imulq	$24, %rax, %rax
	movq	(%rdi,%rax), %rcx
	movq	%rcx, 64(%rsp)
	movq	8(%rdi,%rax), %rcx
	movq	%rcx, 72(%rsp)
	movq	16(%rdi,%rax), %rax
	movq	%rax, 80(%rsp)
	movq	$3072, %rax
	movq	(%rdx,%rax), %rcx
	movq	%rcx, 160(%rsp)
	movq	8(%rdx,%rax), %rcx
	movq	%rcx, 168(%rsp)
	movq	16(%rdx,%rax), %rcx
	movq	%rcx, 176(%rsp)
	movq	24(%rdx,%rax), %rcx
	movq	%rcx, 184(%rsp)
	movq	32(%rdx,%rax), %rcx
	movq	%rcx, 192(%rsp)
	movq	40(%rdx,%rax), %rcx
	movq	%rcx, 200(%rsp)
	movq	48(%rdx,%rax), %rcx
	movq	%rcx, 208(%rsp)
	movq	56(%rdx,%rax), %rcx
	movq	%rcx, 216(%rsp)
	movq	64(%rdx,%rax), %rcx
	movq	%rcx, 224(%rsp)
	movq	72(%rdx,%rax), %rcx
	movq	%rcx, 232(%rsp)
	movq	80(%rdx,%rax), %rcx
	movq	%rcx, 240(%rsp)
	movq	88(%rdx,%rax), %rax
	movq	%rax, 248(%rsp)
	leaq	256(%rsp), %r8
	movb	$17, %bpl
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_commit_verify$9:
	movq	$24, %r12
	leaq	64(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_commit_verify$8:
	leaq	8(%rsp), %rsp
	movq	$96, %r12
	leaq	160(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA96___update_updstate_avx2$1
L_commit_verify$7:
	leaq	8(%rsp), %rsp
	movq	$32, %r12
	movq	472(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit_verify$6:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movq	480(%rsp), %rax
	movw	%ax, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit_verify$5:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movw	488(%rsp), %dx
	movw	%dx, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit_verify$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit_verify$3:
	movq	$48, %r12
	leaq	96(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA48___squeeze_updstate_avx2$1
L_commit_verify$2:
	leaq	8(%rsp), %rsp
	movq	464(%rsp), %rcx
	movq	480(%rsp), %rax
	movw	488(%rsp), %dx
	imulq	$768, %rax, %rax
	movzwq	%dx, %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rax
	movq	96(%rsp), %rdx
	movq	%rdx, (%rcx,%rax)
	movq	104(%rsp), %rdx
	movq	%rdx, 8(%rcx,%rax)
	movq	112(%rsp), %rdx
	movq	%rdx, 16(%rcx,%rax)
	movq	120(%rsp), %rdx
	movq	%rdx, 24(%rcx,%rax)
	movq	128(%rsp), %rdx
	movq	%rdx, 32(%rcx,%rax)
	movq	136(%rsp), %rdx
	movq	%rdx, 40(%rcx,%rax)
	ret
L_commit$1:
	movq	%rcx, 464(%rsp)
	movq	%rsi, 472(%rsp)
	movq	%rbx, 480(%rsp)
	movq	%rax, 488(%rsp)
	movw	%dx, 496(%rsp)
	imulq	$744, %rax, %rax
	movzwq	%dx, %rsi
	addq	$360, %rax
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rax
	movq	(%rdi,%rax), %rcx
	movq	%rcx, 64(%rsp)
	movq	8(%rdi,%rax), %rcx
	movq	%rcx, 72(%rsp)
	movq	16(%rdi,%rax), %rax
	movq	%rax, 80(%rsp)
	movq	472(%rsp), %rax
	movq	488(%rsp), %rcx
	imulq	$3392, %rcx, %rcx
	addq	$3072, %rcx
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
	movq	88(%rax,%rcx), %rax
	movq	%rax, 248(%rsp)
	leaq	256(%rsp), %r8
	movb	$17, %bpl
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_commit$9:
	movq	$24, %r12
	leaq	64(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_commit$8:
	leaq	8(%rsp), %rsp
	movq	$96, %r12
	leaq	160(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA96___update_updstate_avx2$1
L_commit$7:
	leaq	8(%rsp), %rsp
	movq	$32, %r12
	movq	480(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_commit$6:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movq	488(%rsp), %rax
	movw	%ax, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit$5:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movw	496(%rsp), %dx
	movw	%dx, 32(%rsp)
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_commit$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_commit$3:
	movq	$48, %r12
	leaq	96(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA48___squeeze_updstate_avx2$1
L_commit$2:
	leaq	8(%rsp), %rsp
	movq	464(%rsp), %rcx
	movq	488(%rsp), %rax
	movw	496(%rsp), %dx
	imulq	$768, %rax, %rax
	movzwq	%dx, %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rax
	movq	96(%rsp), %rdx
	movq	%rdx, (%rcx,%rax)
	movq	104(%rsp), %rdx
	movq	%rdx, 8(%rcx,%rax)
	movq	112(%rsp), %rdx
	movq	%rdx, 16(%rcx,%rax)
	movq	120(%rsp), %rdx
	movq	%rdx, 24(%rcx,%rax)
	movq	128(%rsp), %rdx
	movq	%rdx, 32(%rcx,%rax)
	movq	136(%rsp), %rdx
	movq	%rdx, 40(%rcx,%rax)
	ret
L_hashSeed_2$1:
	movq	%r9, 336(%rsp)
	movw	%r8w, 64(%rsp)
	movw	%ax, 344(%rsp)
	movq	(%rcx,%rdi), %rax
	movq	%rax, 96(%rsp)
	movq	8(%rcx,%rdi), %rax
	movq	%rax, 104(%rsp)
	movq	16(%rcx,%rdi), %rax
	movq	%rax, 112(%rsp)
	leaq	128(%rsp), %r8
	movb	$17, %bpl
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_hashSeed_2$9:
	movq	$1, %r12
	movb	$1, 32(%rsp)
	leaq	32(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA1___update_updstate_avx2$1
L_hashSeed_2$8:
	leaq	8(%rsp), %rsp
	movq	$24, %r12
	leaq	96(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_hashSeed_2$7:
	leaq	8(%rsp), %rsp
	movq	$32, %r12
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_hashSeed_2$6:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movw	64(%rsp), %ax
	movw	%ax, 64(%rsp)
	leaq	64(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_hashSeed_2$5:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movw	344(%rsp), %ax
	movw	%ax, 64(%rsp)
	leaq	64(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_hashSeed_2$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_hashSeed_2$3:
	movq	$48, %r12
	movq	336(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA48___squeeze_updstate_avx2$1
L_hashSeed_2$2:
	leaq	8(%rsp), %rsp
	ret
L_hashSeed_1$1:
	movq	%rcx, 336(%rsp)
	movq	%rbx, 344(%rsp)
	movw	%r8w, 64(%rsp)
	movw	%dx, 352(%rsp)
	movq	(%rax,%rdi), %rcx
	movq	%rcx, 96(%rsp)
	movq	8(%rax,%rdi), %rcx
	movq	%rcx, 104(%rsp)
	movq	16(%rax,%rdi), %rax
	movq	%rax, 112(%rsp)
	leaq	128(%rsp), %r8
	movb	$17, %bpl
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_hashSeed_1$9:
	movb	$1, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	$1, %r12
	leaq	-8(%rsp), %rsp
	call	LA1___update_updstate_avx2$1
L_hashSeed_1$8:
	leaq	8(%rsp), %rsp
	movq	$24, %r12
	leaq	96(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_hashSeed_1$7:
	leaq	8(%rsp), %rsp
	movq	$32, %r12
	movq	344(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA32___update_updstate_avx2$1
L_hashSeed_1$6:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movw	64(%rsp), %ax
	movw	%ax, 64(%rsp)
	leaq	64(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_hashSeed_1$5:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	movw	352(%rsp), %ax
	movw	%ax, 64(%rsp)
	leaq	64(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_hashSeed_1$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_hashSeed_1$3:
	movq	$48, %r12
	movq	336(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA48___squeeze_updstate_avx2$1
L_hashSeed_1$2:
	leaq	8(%rsp), %rsp
	ret
L_computeSaltAndRootSeed$1:
	movq	%rcx, 272(%rsp)
	movq	%rdi, 280(%rsp)
	movq	%rsi, 288(%rsp)
	movq	%rdx, 296(%rsp)
	movq	%r8, 304(%rsp)
	leaq	64(%rsp), %r8
	movb	$17, %bpl
	movb	$31, %cl
	call	L_init_updstate_avx2$1
L_computeSaltAndRootSeed$9:
	movw	$192, %ax
	movw	%ax, 32(%rsp)
	movq	$24, %r12
	movq	280(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_computeSaltAndRootSeed$8:
	leaq	8(%rsp), %rsp
	movq	$13, %r12
	movq	304(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA13___update_updstate_avx2$1
L_computeSaltAndRootSeed$7:
	leaq	8(%rsp), %rsp
	movq	$24, %r12
	movq	288(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_computeSaltAndRootSeed$6:
	leaq	8(%rsp), %rsp
	movq	$24, %r12
	movq	296(%rsp), %rsi
	leaq	-8(%rsp), %rsp
	call	LA24___update_updstate_avx2$1
L_computeSaltAndRootSeed$5:
	leaq	8(%rsp), %rsp
	movq	$2, %r12
	leaq	32(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA2___update_updstate_avx2$1
L_computeSaltAndRootSeed$4:
	leaq	8(%rsp), %rsp
	call	L_finish_updstate_avx2$1
L_computeSaltAndRootSeed$3:
	movq	$56, %r12
	movq	272(%rsp), %rdx
	leaq	-8(%rsp), %rsp
	call	LA56___squeeze_updstate_avx2$1
L_computeSaltAndRootSeed$2:
	leaq	8(%rsp), %rsp
	ret
LA20112___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LA20112___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LA20112___update_updstate_avx2$3
LA20112___update_updstate_avx2$4:
	call	LA20112___add_updstate_avx2$1
LA20112___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA20112___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LA20112___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LA20112___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LA20112___add_updstate_avx2$1
LA20112___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LA20112___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA20112___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %r13
	cmpq	$8, %r10
	jnb 	LA20112___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LA20112___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA20112___add_updstate_avx2$21
LA20112___add_updstate_avx2$20:
	movl	(%rdx,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA20112___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LA20112___add_updstate_avx2$19
	movzwq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA20112___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LA20112___add_updstate_avx2$17
	movzbq	(%rdx,%r13), %r15
	shlq	%cl, %r15
	addq	%r15, %rbp
	incq	%r13
LA20112___add_updstate_avx2$18:
	jmp 	LA20112___add_updstate_avx2$17
LA20112___add_updstate_avx2$16:
	movq	(%rdx,%r13), %rbp
	addq	$8, %r13
LA20112___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LA20112___add_updstate_avx2$14
	movq	%r13, %r9
	movq	%rdi, %rax
	jmp 	LA20112___add_updstate_avx2$13
LA20112___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA20112___add_updstate_avx2$15:
LA20112___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LA20112___add_updstate_avx2$11
LA20112___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rdx,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LA20112___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA20112___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LA20112___add_updstate_avx2$9
LA20112___add_updstate_avx2$10:
	movq	(%rdx,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LA20112___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA20112___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LA20112___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA20112___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LA20112___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA20112___add_updstate_avx2$8
LA20112___add_updstate_avx2$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA20112___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LA20112___add_updstate_avx2$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA20112___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LA20112___add_updstate_avx2$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LA20112___add_updstate_avx2$5:
	jmp 	LA20112___add_updstate_avx2$4
LA20112___add_updstate_avx2$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LA20112___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LA20112___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LA1536___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LA1536___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LA1536___update_updstate_avx2$3
LA1536___update_updstate_avx2$4:
	call	LA1536___add_updstate_avx2$1
LA1536___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA1536___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LA1536___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LA1536___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LA1536___add_updstate_avx2$1
LA1536___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LA1536___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA1536___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbx
	cmpq	$8, %r10
	jnb 	LA1536___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LA1536___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1536___add_updstate_avx2$21
LA1536___add_updstate_avx2$20:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA1536___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LA1536___add_updstate_avx2$19
	movzwq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA1536___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LA1536___add_updstate_avx2$17
	movzbq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%rbx
LA1536___add_updstate_avx2$18:
	jmp 	LA1536___add_updstate_avx2$17
LA1536___add_updstate_avx2$16:
	movq	(%rdx,%rbx), %rbp
	addq	$8, %rbx
LA1536___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LA1536___add_updstate_avx2$14
	movq	%rbx, %r9
	movq	%rdi, %rax
	jmp 	LA1536___add_updstate_avx2$13
LA1536___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA1536___add_updstate_avx2$15:
LA1536___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LA1536___add_updstate_avx2$11
LA1536___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rdx,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LA1536___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA1536___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LA1536___add_updstate_avx2$9
LA1536___add_updstate_avx2$10:
	movq	(%rdx,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LA1536___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA1536___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LA1536___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA1536___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LA1536___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1536___add_updstate_avx2$8
LA1536___add_updstate_avx2$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA1536___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LA1536___add_updstate_avx2$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA1536___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LA1536___add_updstate_avx2$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LA1536___add_updstate_avx2$5:
	jmp 	LA1536___add_updstate_avx2$4
LA1536___add_updstate_avx2$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LA1536___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LA1536___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LA768___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LA768___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LA768___update_updstate_avx2$3
LA768___update_updstate_avx2$4:
	call	LA768___add_updstate_avx2$1
LA768___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA768___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LA768___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LA768___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LA768___add_updstate_avx2$1
LA768___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LA768___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA768___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbx
	cmpq	$8, %r10
	jnb 	LA768___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LA768___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA768___add_updstate_avx2$21
LA768___add_updstate_avx2$20:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA768___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LA768___add_updstate_avx2$19
	movzwq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA768___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LA768___add_updstate_avx2$17
	movzbq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%rbx
LA768___add_updstate_avx2$18:
	jmp 	LA768___add_updstate_avx2$17
LA768___add_updstate_avx2$16:
	movq	(%rdx,%rbx), %rbp
	addq	$8, %rbx
LA768___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LA768___add_updstate_avx2$14
	movq	%rbx, %r9
	movq	%rdi, %rax
	jmp 	LA768___add_updstate_avx2$13
LA768___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA768___add_updstate_avx2$15:
LA768___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LA768___add_updstate_avx2$11
LA768___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rdx,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LA768___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA768___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LA768___add_updstate_avx2$9
LA768___add_updstate_avx2$10:
	movq	(%rdx,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LA768___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA768___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LA768___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA768___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LA768___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA768___add_updstate_avx2$8
LA768___add_updstate_avx2$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA768___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LA768___add_updstate_avx2$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA768___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LA768___add_updstate_avx2$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LA768___add_updstate_avx2$5:
	jmp 	LA768___add_updstate_avx2$4
LA768___add_updstate_avx2$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LA768___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LA768___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LA96___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LA96___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LA96___update_updstate_avx2$3
LA96___update_updstate_avx2$4:
	call	LA96___add_updstate_avx2$1
LA96___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA96___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LA96___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LA96___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LA96___add_updstate_avx2$1
LA96___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LA96___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA96___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbx
	cmpq	$8, %r10
	jnb 	LA96___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LA96___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA96___add_updstate_avx2$21
LA96___add_updstate_avx2$20:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA96___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LA96___add_updstate_avx2$19
	movzwq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA96___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LA96___add_updstate_avx2$17
	movzbq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%rbx
LA96___add_updstate_avx2$18:
	jmp 	LA96___add_updstate_avx2$17
LA96___add_updstate_avx2$16:
	movq	(%rdx,%rbx), %rbp
	addq	$8, %rbx
LA96___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LA96___add_updstate_avx2$14
	movq	%rbx, %r9
	movq	%rdi, %rax
	jmp 	LA96___add_updstate_avx2$13
LA96___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA96___add_updstate_avx2$15:
LA96___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LA96___add_updstate_avx2$11
LA96___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rdx,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LA96___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA96___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LA96___add_updstate_avx2$9
LA96___add_updstate_avx2$10:
	movq	(%rdx,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LA96___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA96___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LA96___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA96___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LA96___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA96___add_updstate_avx2$8
LA96___add_updstate_avx2$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA96___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LA96___add_updstate_avx2$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA96___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LA96___add_updstate_avx2$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LA96___add_updstate_avx2$5:
	jmp 	LA96___add_updstate_avx2$4
LA96___add_updstate_avx2$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LA96___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LA96___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LA56___squeeze_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LA56___squeeze_updstate_avx2$9:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	cmpq	$0, %rax
	jne 	LA56___squeeze_updstate_avx2$7
	call	L_keccakf1600_st25_avx2$1
LA56___squeeze_updstate_avx2$8:
	movq	$0, %rax
LA56___squeeze_updstate_avx2$7:
	movq	$0, %r13
	addq	%rax, %r12
	jmp 	LA56___squeeze_updstate_avx2$3
LA56___squeeze_updstate_avx2$4:
	call	LA56___dump_updstate_avx2$1
LA56___squeeze_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA56___squeeze_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LA56___squeeze_updstate_avx2$3:
	cmpq	%r12, %rdi
	jb  	LA56___squeeze_updstate_avx2$4
	movq	%r12, %rdi
	call	LA56___dump_updstate_avx2$1
LA56___squeeze_updstate_avx2$2:
	movq	8(%rsp), %r8
	movb	%al, 200(%r8)
	ret
LA56___dump_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA56___dump_updstate_avx2$12
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	(%r11,%rax), %r9
	movb	%r14b, %cl
	shlb	$3, %cl
	shrq	%cl, %r9
	movq	%r13, %rcx
	cmpq	$8, %r10
	jnb 	LA56___dump_updstate_avx2$15
	testq	$4, %r10
	je  	LA56___dump_updstate_avx2$19
	movl	%r9d, (%rdx,%rcx)
	addq	$4, %rcx
	shrq	$32, %r9
LA56___dump_updstate_avx2$19:
	testq	$2, %r10
	je  	LA56___dump_updstate_avx2$18
	movw	%r9w, (%rdx,%rcx)
	addq	$2, %rcx
	shrq	$16, %r9
LA56___dump_updstate_avx2$18:
	testq	$1, %r10
	je  	LA56___dump_updstate_avx2$16
	movb	%r9b, (%rdx,%rcx)
	incq	%rcx
LA56___dump_updstate_avx2$17:
	jmp 	LA56___dump_updstate_avx2$16
LA56___dump_updstate_avx2$15:
	movq	%r9, (%rdx,%rcx)
	addq	$8, %rcx
LA56___dump_updstate_avx2$16:
	addq	%r14, %r10
	cmpq	$8, %r10
	jnb 	LA56___dump_updstate_avx2$13
	movq	%rcx, %r13
	movq	%rdi, %rax
	jmp 	LA56___dump_updstate_avx2$12
LA56___dump_updstate_avx2$13:
	addq	$8, %r13
	subq	%r14, %r13
	addq	$8, %rax
LA56___dump_updstate_avx2$14:
LA56___dump_updstate_avx2$12:
	movq	%rax, %rcx
	jmp 	LA56___dump_updstate_avx2$10
LA56___dump_updstate_avx2$11:
	vmovdqu	(%r11,%rax), %ymm1
	vmovdqu	%ymm1, (%rdx,%r13)
	movq	%rcx, %rax
	addq	$32, %r13
LA56___dump_updstate_avx2$10:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA56___dump_updstate_avx2$11
	movq	%rax, %rcx
	jmp 	LA56___dump_updstate_avx2$8
LA56___dump_updstate_avx2$9:
	movq	(%r11,%rax), %rax
	movq	%rax, (%rdx,%r13)
	movq	%rcx, %rax
	addq	$8, %r13
LA56___dump_updstate_avx2$8:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA56___dump_updstate_avx2$9
	cmpq	%rdi, %rax
	jnb 	LA56___dump_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	(%r11,%rax), %r9
	cmpq	$8, %rbx
	jnb 	LA56___dump_updstate_avx2$3
	testq	$4, %rbx
	je  	LA56___dump_updstate_avx2$7
	movl	%r9d, (%rdx,%r13)
	addq	$4, %r13
	shrq	$32, %r9
LA56___dump_updstate_avx2$7:
	testq	$2, %rbx
	je  	LA56___dump_updstate_avx2$6
	movw	%r9w, (%rdx,%r13)
	addq	$2, %r13
	shrq	$16, %r9
LA56___dump_updstate_avx2$6:
	testq	$1, %rbx
	je  	LA56___dump_updstate_avx2$2
	movb	%r9b, (%rdx,%r13)
	incq	%r13
LA56___dump_updstate_avx2$5:
	jmp 	LA56___dump_updstate_avx2$2
LA56___dump_updstate_avx2$3:
	movq	%r9, (%rdx,%r13)
	addq	$8, %r13
LA56___dump_updstate_avx2$4:
LA56___dump_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LA48___squeeze_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LA48___squeeze_updstate_avx2$9:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	cmpq	$0, %rax
	jne 	LA48___squeeze_updstate_avx2$7
	call	L_keccakf1600_st25_avx2$1
LA48___squeeze_updstate_avx2$8:
	movq	$0, %rax
LA48___squeeze_updstate_avx2$7:
	movq	$0, %r13
	addq	%rax, %r12
	jmp 	LA48___squeeze_updstate_avx2$3
LA48___squeeze_updstate_avx2$4:
	call	LA48___dump_updstate_avx2$1
LA48___squeeze_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA48___squeeze_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LA48___squeeze_updstate_avx2$3:
	cmpq	%r12, %rdi
	jb  	LA48___squeeze_updstate_avx2$4
	movq	%r12, %rdi
	call	LA48___dump_updstate_avx2$1
LA48___squeeze_updstate_avx2$2:
	movq	8(%rsp), %r8
	movb	%al, 200(%r8)
	ret
LA48___dump_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA48___dump_updstate_avx2$12
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	(%r11,%rax), %r9
	movb	%r14b, %cl
	shlb	$3, %cl
	shrq	%cl, %r9
	movq	%r13, %r15
	cmpq	$8, %r10
	jnb 	LA48___dump_updstate_avx2$15
	testq	$4, %r10
	je  	LA48___dump_updstate_avx2$19
	movl	%r9d, (%rdx,%r15)
	addq	$4, %r15
	shrq	$32, %r9
LA48___dump_updstate_avx2$19:
	testq	$2, %r10
	je  	LA48___dump_updstate_avx2$18
	movw	%r9w, (%rdx,%r15)
	addq	$2, %r15
	shrq	$16, %r9
LA48___dump_updstate_avx2$18:
	testq	$1, %r10
	je  	LA48___dump_updstate_avx2$16
	movb	%r9b, (%rdx,%r15)
	incq	%r15
LA48___dump_updstate_avx2$17:
	jmp 	LA48___dump_updstate_avx2$16
LA48___dump_updstate_avx2$15:
	movq	%r9, (%rdx,%r15)
	addq	$8, %r15
LA48___dump_updstate_avx2$16:
	addq	%r14, %r10
	cmpq	$8, %r10
	jnb 	LA48___dump_updstate_avx2$13
	movq	%r15, %r13
	movq	%rdi, %rax
	jmp 	LA48___dump_updstate_avx2$12
LA48___dump_updstate_avx2$13:
	addq	$8, %r13
	subq	%r14, %r13
	addq	$8, %rax
LA48___dump_updstate_avx2$14:
LA48___dump_updstate_avx2$12:
	movq	%rax, %rcx
	jmp 	LA48___dump_updstate_avx2$10
LA48___dump_updstate_avx2$11:
	vmovdqu	(%r11,%rax), %ymm1
	vmovdqu	%ymm1, (%rdx,%r13)
	movq	%rcx, %rax
	addq	$32, %r13
LA48___dump_updstate_avx2$10:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA48___dump_updstate_avx2$11
	movq	%rax, %rcx
	jmp 	LA48___dump_updstate_avx2$8
LA48___dump_updstate_avx2$9:
	movq	(%r11,%rax), %rax
	movq	%rax, (%rdx,%r13)
	movq	%rcx, %rax
	addq	$8, %r13
LA48___dump_updstate_avx2$8:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA48___dump_updstate_avx2$9
	cmpq	%rdi, %rax
	jnb 	LA48___dump_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	(%r11,%rax), %r9
	cmpq	$8, %rbx
	jnb 	LA48___dump_updstate_avx2$3
	testq	$4, %rbx
	je  	LA48___dump_updstate_avx2$7
	movl	%r9d, (%rdx,%r13)
	addq	$4, %r13
	shrq	$32, %r9
LA48___dump_updstate_avx2$7:
	testq	$2, %rbx
	je  	LA48___dump_updstate_avx2$6
	movw	%r9w, (%rdx,%r13)
	addq	$2, %r13
	shrq	$16, %r9
LA48___dump_updstate_avx2$6:
	testq	$1, %rbx
	je  	LA48___dump_updstate_avx2$2
	movb	%r9b, (%rdx,%r13)
	incq	%r13
LA48___dump_updstate_avx2$5:
	jmp 	LA48___dump_updstate_avx2$2
LA48___dump_updstate_avx2$3:
	movq	%r9, (%rdx,%r13)
	addq	$8, %r13
LA48___dump_updstate_avx2$4:
LA48___dump_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LA48___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LA48___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LA48___update_updstate_avx2$3
LA48___update_updstate_avx2$4:
	call	LA48___add_updstate_avx2$1
LA48___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA48___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LA48___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LA48___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LA48___add_updstate_avx2$1
LA48___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LA48___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA48___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %r13
	cmpq	$8, %r10
	jnb 	LA48___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LA48___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA48___add_updstate_avx2$21
LA48___add_updstate_avx2$20:
	movl	(%rsi,%r13), %ebp
	addq	$4, %r13
	movb	$32, %cl
LA48___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LA48___add_updstate_avx2$19
	movzwq	(%rsi,%r13), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	addq	$2, %r13
	addb	$16, %cl
LA48___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LA48___add_updstate_avx2$17
	movzbq	(%rsi,%r13), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	incq	%r13
LA48___add_updstate_avx2$18:
	jmp 	LA48___add_updstate_avx2$17
LA48___add_updstate_avx2$16:
	movq	(%rsi,%r13), %rbp
	addq	$8, %r13
LA48___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LA48___add_updstate_avx2$14
	movq	%r13, %r9
	movq	%rdi, %rax
	jmp 	LA48___add_updstate_avx2$13
LA48___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA48___add_updstate_avx2$15:
LA48___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LA48___add_updstate_avx2$11
LA48___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rsi,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LA48___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA48___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LA48___add_updstate_avx2$9
LA48___add_updstate_avx2$10:
	movq	(%rsi,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LA48___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA48___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LA48___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA48___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LA48___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA48___add_updstate_avx2$8
LA48___add_updstate_avx2$7:
	movl	(%rsi,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA48___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LA48___add_updstate_avx2$6
	movzwq	(%rsi,%r9), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA48___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LA48___add_updstate_avx2$4
	movzbq	(%rsi,%r9), %rdx
	shlq	%cl, %rdx
	addq	%rdx, %rbp
	incq	%r9
LA48___add_updstate_avx2$5:
	jmp 	LA48___add_updstate_avx2$4
LA48___add_updstate_avx2$3:
	movq	(%rsi,%r9), %rbp
	addq	$8, %r9
LA48___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LA48___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LA32___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LA32___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LA32___update_updstate_avx2$3
LA32___update_updstate_avx2$4:
	call	LA32___add_updstate_avx2$1
LA32___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA32___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LA32___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LA32___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LA32___add_updstate_avx2$1
LA32___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LA32___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA32___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbx
	cmpq	$8, %r10
	jnb 	LA32___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LA32___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32___add_updstate_avx2$21
LA32___add_updstate_avx2$20:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA32___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LA32___add_updstate_avx2$19
	movzwq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA32___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LA32___add_updstate_avx2$17
	movzbq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%rbx
LA32___add_updstate_avx2$18:
	jmp 	LA32___add_updstate_avx2$17
LA32___add_updstate_avx2$16:
	movq	(%rdx,%rbx), %rbp
	addq	$8, %rbx
LA32___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LA32___add_updstate_avx2$14
	movq	%rbx, %r9
	movq	%rdi, %rax
	jmp 	LA32___add_updstate_avx2$13
LA32___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA32___add_updstate_avx2$15:
LA32___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LA32___add_updstate_avx2$11
LA32___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rdx,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LA32___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA32___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LA32___add_updstate_avx2$9
LA32___add_updstate_avx2$10:
	movq	(%rdx,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LA32___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA32___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LA32___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA32___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LA32___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA32___add_updstate_avx2$8
LA32___add_updstate_avx2$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA32___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LA32___add_updstate_avx2$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA32___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LA32___add_updstate_avx2$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LA32___add_updstate_avx2$5:
	jmp 	LA32___add_updstate_avx2$4
LA32___add_updstate_avx2$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LA32___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LA32___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LA24___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LA24___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LA24___update_updstate_avx2$3
LA24___update_updstate_avx2$4:
	call	LA24___add_updstate_avx2$1
LA24___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA24___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LA24___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LA24___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LA24___add_updstate_avx2$1
LA24___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LA24___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA24___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbx
	cmpq	$8, %r10
	jnb 	LA24___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LA24___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA24___add_updstate_avx2$21
LA24___add_updstate_avx2$20:
	movl	(%rsi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA24___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LA24___add_updstate_avx2$19
	movzwq	(%rsi,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA24___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LA24___add_updstate_avx2$17
	movzbq	(%rsi,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%rbx
LA24___add_updstate_avx2$18:
	jmp 	LA24___add_updstate_avx2$17
LA24___add_updstate_avx2$16:
	movq	(%rsi,%rbx), %rbp
	addq	$8, %rbx
LA24___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LA24___add_updstate_avx2$14
	movq	%rbx, %r9
	movq	%rdi, %rax
	jmp 	LA24___add_updstate_avx2$13
LA24___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA24___add_updstate_avx2$15:
LA24___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LA24___add_updstate_avx2$11
LA24___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rsi,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LA24___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA24___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LA24___add_updstate_avx2$9
LA24___add_updstate_avx2$10:
	movq	(%rsi,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LA24___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA24___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LA24___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA24___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LA24___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA24___add_updstate_avx2$8
LA24___add_updstate_avx2$7:
	movl	(%rsi,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA24___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LA24___add_updstate_avx2$6
	movzwq	(%rsi,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA24___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LA24___add_updstate_avx2$4
	movzbq	(%rsi,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LA24___add_updstate_avx2$5:
	jmp 	LA24___add_updstate_avx2$4
LA24___add_updstate_avx2$3:
	movq	(%rsi,%r9), %rbp
	addq	$8, %r9
LA24___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LA24___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LA13___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LA13___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LA13___update_updstate_avx2$3
LA13___update_updstate_avx2$4:
	call	LA13___add_updstate_avx2$1
LA13___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA13___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LA13___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LA13___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LA13___add_updstate_avx2$1
LA13___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LA13___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA13___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbx
	cmpq	$8, %r10
	jnb 	LA13___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LA13___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA13___add_updstate_avx2$21
LA13___add_updstate_avx2$20:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA13___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LA13___add_updstate_avx2$19
	movzwq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA13___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LA13___add_updstate_avx2$17
	movzbq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%rbx
LA13___add_updstate_avx2$18:
	jmp 	LA13___add_updstate_avx2$17
LA13___add_updstate_avx2$16:
	movq	(%rdx,%rbx), %rbp
	addq	$8, %rbx
LA13___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LA13___add_updstate_avx2$14
	movq	%rbx, %r9
	movq	%rdi, %rax
	jmp 	LA13___add_updstate_avx2$13
LA13___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA13___add_updstate_avx2$15:
LA13___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LA13___add_updstate_avx2$11
LA13___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rdx,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LA13___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA13___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LA13___add_updstate_avx2$9
LA13___add_updstate_avx2$10:
	movq	(%rdx,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LA13___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA13___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LA13___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA13___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LA13___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA13___add_updstate_avx2$8
LA13___add_updstate_avx2$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA13___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LA13___add_updstate_avx2$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA13___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LA13___add_updstate_avx2$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LA13___add_updstate_avx2$5:
	jmp 	LA13___add_updstate_avx2$4
LA13___add_updstate_avx2$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LA13___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LA13___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LA2___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LA2___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LA2___update_updstate_avx2$3
LA2___update_updstate_avx2$4:
	call	LA2___add_updstate_avx2$1
LA2___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA2___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LA2___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LA2___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LA2___add_updstate_avx2$1
LA2___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LA2___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA2___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbx
	cmpq	$8, %r10
	jnb 	LA2___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LA2___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2___add_updstate_avx2$21
LA2___add_updstate_avx2$20:
	movl	(%rdx,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA2___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LA2___add_updstate_avx2$19
	movzwq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA2___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LA2___add_updstate_avx2$17
	movzbq	(%rdx,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%rbx
LA2___add_updstate_avx2$18:
	jmp 	LA2___add_updstate_avx2$17
LA2___add_updstate_avx2$16:
	movq	(%rdx,%rbx), %rbp
	addq	$8, %rbx
LA2___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LA2___add_updstate_avx2$14
	movq	%rbx, %r9
	movq	%rdi, %rax
	jmp 	LA2___add_updstate_avx2$13
LA2___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA2___add_updstate_avx2$15:
LA2___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LA2___add_updstate_avx2$11
LA2___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rdx,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LA2___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA2___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LA2___add_updstate_avx2$9
LA2___add_updstate_avx2$10:
	movq	(%rdx,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LA2___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA2___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LA2___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA2___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LA2___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA2___add_updstate_avx2$8
LA2___add_updstate_avx2$7:
	movl	(%rdx,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA2___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LA2___add_updstate_avx2$6
	movzwq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA2___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LA2___add_updstate_avx2$4
	movzbq	(%rdx,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LA2___add_updstate_avx2$5:
	jmp 	LA2___add_updstate_avx2$4
LA2___add_updstate_avx2$3:
	movq	(%rdx,%r9), %rbp
	addq	$8, %r9
LA2___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LA2___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
LA1___update_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
LA1___update_updstate_avx2$7:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	movq	$0, %r9
	addq	%rax, %r12
	jmp 	LA1___update_updstate_avx2$3
LA1___update_updstate_avx2$4:
	call	LA1___add_updstate_avx2$1
LA1___update_updstate_avx2$6:
	call	L_keccakf1600_st25_avx2$1
LA1___update_updstate_avx2$5:
	subq	%rdi, %r12
	movq	$0, %rax
LA1___update_updstate_avx2$3:
	cmpq	%r12, %rdi
	jbe 	LA1___update_updstate_avx2$4
	movq	%r12, %rdi
	movq	8(%rsp), %r8
	call	LA1___add_updstate_avx2$1
LA1___update_updstate_avx2$2:
	movb	%al, 200(%r8)
	ret
LA1___add_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	LA1___add_updstate_avx2$13
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	%r9, %rbx
	cmpq	$8, %r10
	jnb 	LA1___add_updstate_avx2$16
	testq	$4, %r10
	jne 	LA1___add_updstate_avx2$20
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1___add_updstate_avx2$21
LA1___add_updstate_avx2$20:
	movl	(%rsi,%rbx), %ebp
	addq	$4, %rbx
	movb	$32, %cl
LA1___add_updstate_avx2$21:
	testq	$2, %r10
	je  	LA1___add_updstate_avx2$19
	movzwq	(%rsi,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %rbx
	addb	$16, %cl
LA1___add_updstate_avx2$19:
	testq	$1, %r10
	je  	LA1___add_updstate_avx2$17
	movzbq	(%rsi,%rbx), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%rbx
LA1___add_updstate_avx2$18:
	jmp 	LA1___add_updstate_avx2$17
LA1___add_updstate_avx2$16:
	movq	(%rsi,%rbx), %rbp
	addq	$8, %rbx
LA1___add_updstate_avx2$17:
	addq	%rax, %r10
	movb	%r14b, %cl
	shlb	$3, %cl
	shlq	%cl, %rbp
	xorq	%rbp, (%r11,%rax)
	cmpq	$8, %r10
	jnb 	LA1___add_updstate_avx2$14
	movq	%rbx, %r9
	movq	%rdi, %rax
	jmp 	LA1___add_updstate_avx2$13
LA1___add_updstate_avx2$14:
	addq	$8, %r9
	subq	%r14, %r9
	addq	$8, %rax
LA1___add_updstate_avx2$15:
LA1___add_updstate_avx2$13:
	movq	%rax, %rcx
	jmp 	LA1___add_updstate_avx2$11
LA1___add_updstate_avx2$12:
	vmovdqu	(%r11,%rax), %ymm0
	vmovdqu	(%rsi,%r9), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r11,%rax)
	movq	%rcx, %rax
	addq	$32, %r9
LA1___add_updstate_avx2$11:
	addq	$32, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA1___add_updstate_avx2$12
	movq	%rax, %rcx
	jmp 	LA1___add_updstate_avx2$9
LA1___add_updstate_avx2$10:
	movq	(%rsi,%r9), %rbp
	xorq	%rbp, (%r11,%rax)
	movq	%rcx, %rax
	addq	$8, %r9
LA1___add_updstate_avx2$9:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	LA1___add_updstate_avx2$10
	cmpq	%rdi, %rax
	jnb 	LA1___add_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	cmpq	$8, %rbx
	jnb 	LA1___add_updstate_avx2$3
	testq	$4, %rbx
	jne 	LA1___add_updstate_avx2$7
	movq	$0, %rbp
	movb	$0, %cl
	jmp 	LA1___add_updstate_avx2$8
LA1___add_updstate_avx2$7:
	movl	(%rsi,%r9), %ebp
	addq	$4, %r9
	movb	$32, %cl
LA1___add_updstate_avx2$8:
	testq	$2, %rbx
	je  	LA1___add_updstate_avx2$6
	movzwq	(%rsi,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	addq	$2, %r9
	addb	$16, %cl
LA1___add_updstate_avx2$6:
	testq	$1, %rbx
	je  	LA1___add_updstate_avx2$4
	movzbq	(%rsi,%r9), %r13
	shlq	%cl, %r13
	addq	%r13, %rbp
	incq	%r9
LA1___add_updstate_avx2$5:
	jmp 	LA1___add_updstate_avx2$4
LA1___add_updstate_avx2$3:
	movq	(%rsi,%r9), %rbp
	addq	$8, %r9
LA1___add_updstate_avx2$4:
	xorq	%rbp, (%r11,%rax)
LA1___add_updstate_avx2$2:
	movq	%rdi, %rax
	ret
L_squeeze_m_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
L_squeeze_m_updstate_avx2$9:
	movq	%r8, %r11
	movq	%r8, 8(%rsp)
	cmpq	$0, %rax
	jne 	L_squeeze_m_updstate_avx2$7
	call	L_keccakf1600_st25_avx2$1
L_squeeze_m_updstate_avx2$8:
	movq	$0, %rax
L_squeeze_m_updstate_avx2$7:
	addq	%rax, %r12
	jmp 	L_squeeze_m_updstate_avx2$3
L_squeeze_m_updstate_avx2$4:
	call	L_dump_m_updstate_avx2$1
L_squeeze_m_updstate_avx2$6:
	movq	%rdi, 16(%rsp)
	movq	%r12, 24(%rsp)
	movq	%rdx, 32(%rsp)
	call	L_keccakf1600_st25_avx2$1
L_squeeze_m_updstate_avx2$5:
	movq	16(%rsp), %rdi
	movq	24(%rsp), %r12
	movq	32(%rsp), %rdx
	subq	%rdi, %r12
	movq	$0, %rax
L_squeeze_m_updstate_avx2$3:
	cmpq	%r12, %rdi
	jb  	L_squeeze_m_updstate_avx2$4
	movq	%r12, %rdi
	call	L_dump_m_updstate_avx2$1
L_squeeze_m_updstate_avx2$2:
	movq	8(%rsp), %r8
	movb	%al, 200(%r8)
	ret
L_dump_m_updstate_avx2$1:
	movq	%rax, %r14
	andq	$7, %r14
	cmpq	$0, %r14
	je  	L_dump_m_updstate_avx2$10
	movq	%rdi, %r10
	subq	%rax, %r10
	shrq	$3, %rax
	shlq	$3, %rax
	movq	(%r11,%rax), %r9
	movb	%r14b, %cl
	shlb	$3, %cl
	shrq	%cl, %r9
	movq	%rdx, %rsi
	cmpq	$8, %r10
	jnb 	L_dump_m_updstate_avx2$13
	testq	$4, %r10
	je  	L_dump_m_updstate_avx2$17
	movl	%r9d, (%rsi)
	addq	$4, %rsi
	shrq	$32, %r9
L_dump_m_updstate_avx2$17:
	testq	$2, %r10
	je  	L_dump_m_updstate_avx2$16
	movw	%r9w, (%rsi)
	addq	$2, %rsi
	shrq	$16, %r9
L_dump_m_updstate_avx2$16:
	testq	$1, %r10
	je  	L_dump_m_updstate_avx2$14
	movb	%r9b, (%rsi)
	incq	%rsi
L_dump_m_updstate_avx2$15:
	jmp 	L_dump_m_updstate_avx2$14
L_dump_m_updstate_avx2$13:
	movq	%r9, (%rsi)
	addq	$8, %rsi
L_dump_m_updstate_avx2$14:
	addq	%r14, %r10
	cmpq	$8, %r10
	jnb 	L_dump_m_updstate_avx2$11
	movq	%rsi, %rdx
	movq	%rdi, %rax
	jmp 	L_dump_m_updstate_avx2$10
L_dump_m_updstate_avx2$11:
	addq	$8, %rdx
	subq	%r14, %rdx
	addq	$8, %rax
L_dump_m_updstate_avx2$12:
L_dump_m_updstate_avx2$10:
	movq	%rax, %rcx
	jmp 	L_dump_m_updstate_avx2$8
L_dump_m_updstate_avx2$9:
	movq	(%r11,%rax), %rax
	movq	%rax, (%rdx)
	movq	%rcx, %rax
	addq	$8, %rdx
L_dump_m_updstate_avx2$8:
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jbe 	L_dump_m_updstate_avx2$9
	cmpq	%rdi, %rax
	jnb 	L_dump_m_updstate_avx2$2
	movq	%rdi, %rbx
	andq	$7, %rbx
	movq	(%r11,%rax), %r9
	cmpq	$8, %rbx
	jnb 	L_dump_m_updstate_avx2$3
	testq	$4, %rbx
	je  	L_dump_m_updstate_avx2$7
	movl	%r9d, (%rdx)
	addq	$4, %rdx
	shrq	$32, %r9
L_dump_m_updstate_avx2$7:
	testq	$2, %rbx
	je  	L_dump_m_updstate_avx2$6
	movw	%r9w, (%rdx)
	addq	$2, %rdx
	shrq	$16, %r9
L_dump_m_updstate_avx2$6:
	testq	$1, %rbx
	je  	L_dump_m_updstate_avx2$2
	movb	%r9b, (%rdx)
	incq	%rdx
L_dump_m_updstate_avx2$5:
	jmp 	L_dump_m_updstate_avx2$2
L_dump_m_updstate_avx2$3:
	movq	%r9, (%rdx)
	addq	$8, %rdx
L_dump_m_updstate_avx2$4:
L_dump_m_updstate_avx2$2:
	movq	%rdi, %rax
	ret
L_finish_updstate_avx2$1:
	movq	200(%r8), %rcx
	call	L_ststatus_data$1
L_finish_updstate_avx2$2:
	xorb	%cl, (%r8,%rax)
	xorb	$128, -1(%r8,%rdi)
	andl	$-16711936, 200(%r8)
	ret
L_ststatus_data$1:
	movq	%rcx, %rax
	andq	$255, %rax
	shrq	$8, %rcx
	movq	%rcx, %rdi
	andq	$255, %rdi
	incq	%rdi
	shlq	$3, %rdi
	movq	$200, %r9
	cmpq	$200, %rdi
	cmovnbe	%r9, %rdi
	movq	$0, %r9
	cmpq	%rax, %rdi
	cmovbe	%r9, %rax
	shrq	$8, %rcx
	ret
L_init_updstate_avx2$1:
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r8)
	vmovdqu	%ymm0, 32(%r8)
	vmovdqu	%ymm0, 64(%r8)
	vmovdqu	%ymm0, 96(%r8)
	vmovdqu	%ymm0, 128(%r8)
	vmovdqu	%ymm0, 160(%r8)
	movq	$0, 192(%r8)
	movzbq	%cl, %rax
	shlq	$8, %rax
	decb	%bpl
	movzbq	%bpl, %rcx
	addq	%rcx, %rax
	shlq	$8, %rax
	movq	%rax, 200(%r8)
	ret
L_keccakf1600_st25_avx2$1:
	vpbroadcastq	(%r11), %ymm11
	vmovdqu	8(%r11), %ymm5
	vmovq	40(%r11), %xmm0
	vmovdqu	48(%r11), %ymm1
	vmovq	80(%r11), %xmm2
	vmovdqu	88(%r11), %ymm3
	movq	120(%r11), %rcx
	vpinsrq	$1, %rcx, %xmm0, %xmm0
	vmovdqu	128(%r11), %ymm4
	movq	160(%r11), %rcx
	vpinsrq	$1, %rcx, %xmm2, %xmm2
	vinserti128	$1, %xmm0, %ymm2, %ymm0
	vmovdqu	168(%r11), %ymm12
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
	vmovlpd	%xmm11, (%r11)
	vmovdqu	%ymm5, 8(%r11)
	vpblendd	$240, %ymm3, %ymm1, %ymm5
	vpblendd	$240, %ymm1, %ymm3, %ymm6
	vpblendd	$240, %ymm4, %ymm2, %ymm7
	vpblendd	$240, %ymm2, %ymm4, %ymm1
	vextracti128	$1, %ymm0, %xmm2
	vmovlpd	%xmm2, 40(%r11)
	vpblendd	$195, %ymm1, %ymm5, %ymm3
	vmovdqu	%ymm3, 48(%r11)
	vmovlpd	%xmm0, 80(%r11)
	vpblendd	$195, %ymm6, %ymm1, %ymm3
	vmovdqu	%ymm3, 88(%r11)
	vmovhpd	%xmm2, 120(%r11)
	vpblendd	$195, %ymm5, %ymm7, %ymm3
	vmovdqu	%ymm3, 128(%r11)
	vmovhpd	%xmm0, 160(%r11)
	vpblendd	$195, %ymm7, %ymm6, %ymm3
	vmovdqu	%ymm3, 168(%r11)
	ret
L__keccakf1600_avx2$1:
	leaq	glob_data + 86688(%rip), %rax
	movq	$0, %rcx
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
	vpbroadcastq	(%rax,%rcx,8), %ymm7
	vpxor	%ymm7, %ymm6, %ymm11
	incq	%rcx
	cmpq	$24, %rcx
	jb  	L__keccakf1600_avx2$2
	ret
L__sbox_uint64_lowmc_192_192_4$1:
	vpand	glob_data + 86656(%rip), %ymm3, %ymm1
	vpand	glob_data + 86624(%rip), %ymm3, %ymm2
	vpand	glob_data + 86592(%rip), %ymm3, %ymm3
	vpsrlq	$62, %ymm1, %ymm0
	vpsllq	$2, %ymm1, %ymm1
	vpermq	$147, %ymm0, %ymm0
	vpor	%ymm0, %ymm1, %ymm1
	vpsrlq	$63, %ymm2, %ymm0
	vpermq	$147, %ymm0, %ymm0
	vpsllq	$1, %ymm2, %ymm2
	vpandn	%ymm1, %ymm3, %ymm7
	vpor	%ymm0, %ymm2, %ymm2
	vpand	%ymm2, %ymm3, %ymm0
	vpxor	%ymm2, %ymm7, %ymm7
	vpxor	%ymm1, %ymm0, %ymm0
	vpsllq	$63, %ymm7, %ymm4
	vpor	%ymm2, %ymm1, %ymm1
	vpsllq	$62, %ymm0, %ymm5
	vpermq	$57, %ymm4, %ymm2
	vpxor	%ymm3, %ymm1, %ymm1
	vpsrlq	$2, %ymm0, %ymm0
	vpsrlq	$1, %ymm7, %ymm7
	vpermq	$57, %ymm5, %ymm5
	vpor	%ymm5, %ymm0, %ymm0
	vpor	%ymm2, %ymm7, %ymm7
	vpxor	%ymm7, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	ret
L_mzd_to_bitstream$1:
	movq	16(%rax), %rdx
	bswapq	%rdx
	movq	%rdx, (%rdi,%rsi)
	movq	8(%rax), %rdx
	bswapq	%rdx
	movq	%rdx, 8(%rdi,%rsi)
	movq	(%rax), %rax
	bswapq	%rax
	movq	%rax, 16(%rdi,%rsi)
	ret
L_mzd_from_bitstream$1:
	movq	(%rdi,%rsi), %r8
	bswapq	%r8
	movq	%r8, 16(%rax)
	movq	8(%rdi,%rsi), %r8
	bswapq	%r8
	movq	%r8, 8(%rax)
	movq	16(%rdi,%rsi), %rsi
	bswapq	%rsi
	movq	%rsi, (%rax)
	ret
L_mzd_addmul_v_uint64_192_v2$1:
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$0, %rsi
	movq	$0, %r10
	jmp 	L_mzd_addmul_v_uint64_192_v2$2
L_mzd_addmul_v_uint64_192_v2$3:
	movq	(%rcx,%rsi), %rax
	movq	$0, %r12
	jmp 	L_mzd_addmul_v_uint64_192_v2$4
L_mzd_addmul_v_uint64_192_v2$5:
	movq	%rax, %rdi
	addq	$128, %r10
	andq	$1, %rdi
	negq	%rdi
	vmovq	%rdi, %xmm1
	movq	%rax, %rdi
	salq	$62, %rdi
	vpbroadcastq	%xmm1, %ymm1
	vpand	-128(%rbp,%r10), %ymm1, %ymm1
	sarq	$63, %rdi
	vmovq	%rdi, %xmm3
	movq	%rax, %rdi
	vpxor	%ymm1, %ymm2, %ymm2
	salq	$61, %rdi
	vpbroadcastq	%xmm3, %ymm1
	vpand	-96(%rbp,%r10), %ymm1, %ymm1
	sarq	$63, %rdi
	vmovq	%rdi, %xmm3
	movq	%rax, %rdi
	shrq	$4, %rax
	salq	$60, %rdi
	vpbroadcastq	%xmm3, %ymm3
	vpand	-64(%rbp,%r10), %ymm3, %ymm3
	sarq	$63, %rdi
	vmovq	%rdi, %xmm4
	vpxor	%ymm3, %ymm2, %ymm2
	vpbroadcastq	%xmm4, %ymm3
	vpand	-32(%rbp,%r10), %ymm3, %ymm3
	vpxor	%ymm1, %ymm3, %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	addq	$4, %r12
L_mzd_addmul_v_uint64_192_v2$4:
	cmpq	$64, %r12
	jb  	L_mzd_addmul_v_uint64_192_v2$5
	addq	$8, %rsi
L_mzd_addmul_v_uint64_192_v2$2:
	cmpq	$24, %rsi
	jb  	L_mzd_addmul_v_uint64_192_v2$3
	vpxor	%ymm0, %ymm2, %ymm3
	ret
L_mzd_addmul_v_uint64_192$1:
	vmovdqu	(%rax), %ymm2
	vpxor	%ymm1, %ymm1, %ymm1
	movq	$0, %r9
	movq	$0, %r10
	jmp 	L_mzd_addmul_v_uint64_192$2
L_mzd_addmul_v_uint64_192$3:
	movq	(%r8,%r9), %r11
	movq	$0, %r12
	jmp 	L_mzd_addmul_v_uint64_192$4
L_mzd_addmul_v_uint64_192$5:
	movq	%r11, %r13
	addq	$128, %r10
	andq	$1, %r13
	negq	%r13
	vmovq	%r13, %xmm3
	movq	%r11, %r13
	salq	$62, %r13
	vpbroadcastq	%xmm3, %ymm3
	vpand	-128(%rbp,%r10), %ymm3, %ymm3
	sarq	$63, %r13
	vmovq	%r13, %xmm4
	movq	%r11, %r13
	vpxor	%ymm3, %ymm2, %ymm2
	salq	$61, %r13
	vpbroadcastq	%xmm4, %ymm4
	vpand	-96(%rbp,%r10), %ymm4, %ymm4
	sarq	$63, %r13
	vmovq	%r13, %xmm3
	movq	%r11, %r13
	shrq	$4, %r11
	salq	$60, %r13
	vpbroadcastq	%xmm3, %ymm3
	vpand	-64(%rbp,%r10), %ymm3, %ymm3
	sarq	$63, %r13
	vmovq	%r13, %xmm5
	vpxor	%ymm3, %ymm2, %ymm2
	vpbroadcastq	%xmm5, %ymm3
	vpand	-32(%rbp,%r10), %ymm3, %ymm3
	vpxor	%ymm4, %ymm3, %ymm3
	vpxor	%ymm3, %ymm1, %ymm1
	addq	$4, %r12
L_mzd_addmul_v_uint64_192$4:
	cmpq	$64, %r12
	jb  	L_mzd_addmul_v_uint64_192$5
	addq	$8, %r9
L_mzd_addmul_v_uint64_192$2:
	cmpq	$24, %r9
	jb  	L_mzd_addmul_v_uint64_192$3
	vpxor	%ymm2, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rax)
	ret
L_mzd_shift1_right_uint64_192$1:
	movq	(%r8), %rsi
	movq	8(%r8), %r9
	shrq	$1, %rsi
	shlq	$63, %r9
	orq 	%r9, %rsi
	movq	%rsi, (%rax)
	movq	8(%r8), %rsi
	movq	16(%r8), %r9
	shrq	$1, %rsi
	shlq	$63, %r9
	orq 	%r9, %rsi
	movq	%rsi, 8(%rax)
	movq	16(%r8), %rsi
	shrq	$1, %rsi
	movq	%rsi, 16(%rax)
	ret
L_mzd_shift2_right_uint64_192$1:
	movq	(%r8), %rsi
	movq	8(%r8), %r9
	shrq	$2, %rsi
	shlq	$62, %r9
	orq 	%r9, %rsi
	movq	%rsi, (%rax)
	movq	8(%r8), %rsi
	movq	16(%r8), %r9
	shrq	$2, %rsi
	shlq	$62, %r9
	orq 	%r9, %rsi
	movq	%rsi, 8(%rax)
	movq	16(%r8), %rsi
	shrq	$2, %rsi
	movq	%rsi, 16(%rax)
	ret
L_mzd_shift1_left_uint64_192$1:
	movq	16(%r8), %rsi
	movq	8(%r8), %r9
	shlq	$1, %rsi
	shrq	$63, %r9
	orq 	%r9, %rsi
	movq	%rsi, 16(%rax)
	movq	8(%r8), %rsi
	movq	(%r8), %r9
	shlq	$1, %rsi
	shrq	$63, %r9
	orq 	%r9, %rsi
	movq	%rsi, 8(%rax)
	movq	(%r8), %rsi
	shlq	$1, %rsi
	movq	%rsi, (%rax)
	ret
L_mzd_shift2_left_uint64_192$1:
	movq	16(%r8), %rsi
	movq	8(%r8), %r9
	shlq	$2, %rsi
	shrq	$62, %r9
	orq 	%r9, %rsi
	movq	%rsi, 16(%rax)
	movq	8(%r8), %rsi
	movq	(%r8), %r9
	shlq	$2, %rsi
	shrq	$62, %r9
	orq 	%r9, %rsi
	movq	%rsi, 8(%rax)
	movq	(%r8), %rsi
	shlq	$2, %rsi
	movq	%rsi, (%rax)
	ret
L_mzd_and_uint64_block$1:
	movq	(%rax), %r8
	andq	(%rsi), %r8
	movq	%r8, (%rbx)
	movq	8(%rax), %r8
	andq	8(%rsi), %r8
	movq	%r8, 8(%rbx)
	movq	16(%rax), %rax
	andq	16(%rsi), %rax
	movq	%rax, 16(%rbx)
	ret
L_mzd_xor_uint64_block$1:
	vmovdqu	(%rax), %ymm1
	vpxor	(%rsi), %ymm1, %ymm1
	vmovdqu	%ymm1, (%rbx)
	ret
L_mzd_copy_uint64_192$1:
	vmovdqu	(%r9), %ymm0
	vmovdqu	%ymm0, (%rax)
	ret
L_copy_full_tree$1:
	movq	$0, %r9
	movq	%rsi, %r11
	imulq	$744, %r11, %r11
	jmp 	L_copy_full_tree$4
L_copy_full_tree$5:
	movb	(%rcx,%r11), %bpl
	movb	%bpl, (%rdi,%r9)
	incq	%r11
	incq	%r9
L_copy_full_tree$4:
	cmpq	$744, %r9
	jb  	L_copy_full_tree$5
	movq	$0, %rcx
	imulq	$31, %rsi, %rsi
	jmp 	L_copy_full_tree$2
L_copy_full_tree$3:
	movb	(%rdx,%rsi), %bpl
	movb	%bpl, (%r8,%rcx)
	incq	%rcx
L_copy_full_tree$2:
	cmpq	$31, %rcx
	jb  	L_copy_full_tree$3
	ret
L__copy_leaf_to_tree$1:
	movq	(%rdi,%rcx), %r8
	movq	%r8, (%rdx,%rax)
	movq	8(%rdi,%rcx), %r8
	movq	%r8, 8(%rdx,%rax)
	movq	16(%rdi,%rcx), %r8
	movq	%r8, 16(%rdx,%rax)
	movq	24(%rdi,%rcx), %r8
	movq	%r8, 24(%rdx,%rax)
	movq	32(%rdi,%rcx), %r8
	movq	%r8, 32(%rdx,%rax)
	movq	40(%rdi,%rcx), %rcx
	movq	%rcx, 40(%rdx,%rax)
	ret
L__copy_digest_to_tree$1:
	movq	(%rax), %rdi
	movq	%rdi, (%r10,%r9)
	addq	$8, %rax
	movq	(%rax), %rdi
	movq	%rdi, 8(%r10,%r9)
	addq	$8, %rax
	movq	(%rax), %rdi
	movq	%rdi, 16(%r10,%r9)
	addq	$8, %rax
	movq	(%rax), %rdi
	movq	%rdi, 24(%r10,%r9)
	addq	$8, %rax
	movq	(%rax), %rdi
	movq	%rdi, 32(%r10,%r9)
	addq	$8, %rax
	movq	(%rax), %rdi
	movq	%rdi, 40(%r10,%r9)
	addq	$8, %rax
	ret
L_copy_msg_from_proofs_to_msgs$1:
	movq	$0, %rsi
	jmp 	L_copy_msg_from_proofs_to_msgs$2
L_copy_msg_from_proofs_to_msgs$3:
	movq	(%rdi,%rcx), %r8
	movq	%r8, (%rdx,%r9)
	addq	$8, %r9
	addq	$8, %rcx
	incq	%rsi
L_copy_msg_from_proofs_to_msgs$2:
	cmpq	$12, %rsi
	jb  	L_copy_msg_from_proofs_to_msgs$3
	ret
L_copy_unnopened_party_commit$1:
	movq	$0, %r8
	jmp 	L_copy_unnopened_party_commit$2
L_copy_unnopened_party_commit$3:
	movb	(%rax,%rcx), %bl
	movb	%bl, (%rdx,%rsi)
	incq	%rsi
	incq	%rcx
	incq	%r8
L_copy_unnopened_party_commit$2:
	cmpq	$48, %r8
	jb  	L_copy_unnopened_party_commit$3
	ret
L__copy_msgs_to_proof$1:
	movq	$0, %rsi
	jmp 	L__copy_msgs_to_proof$2
L__copy_msgs_to_proof$3:
	movq	(%rdx,%rax), %rdi
	movq	%rdi, (%rcx)
	addq	$8, %rax
	addq	$8, %rcx
	incq	%rsi
L__copy_msgs_to_proof$2:
	cmpq	$12, %rsi
	jb  	L__copy_msgs_to_proof$3
	ret
L__copy_input_to_proof$1:
	movq	$0, %rsi
	jmp 	L__copy_input_to_proof$2
L__copy_input_to_proof$3:
	movq	(%rax,%rdx), %r9
	movq	%r9, (%rcx)
	addq	$8, %rcx
	addq	$8, %rdx
	incq	%rsi
L__copy_input_to_proof$2:
	cmpq	$3, %rsi
	jb  	L__copy_input_to_proof$3
	ret
L__copy_tape_aux_to_proof$1:
	movq	(%rax,%rdx), %rsi
	movq	%rsi, (%rcx)
	addq	$8, %rcx
	movq	8(%rax,%rdx), %rsi
	movq	%rsi, (%rcx)
	addq	$8, %rcx
	movq	16(%rax,%rdx), %rsi
	movq	%rsi, (%rcx)
	addq	$8, %rcx
	movq	24(%rax,%rdx), %rsi
	movq	%rsi, (%rcx)
	addq	$8, %rcx
	movq	32(%rax,%rdx), %rsi
	movq	%rsi, (%rcx)
	addq	$8, %rcx
	movq	40(%rax,%rdx), %rsi
	movq	%rsi, (%rcx)
	addq	$8, %rcx
	movq	48(%rax,%rdx), %rsi
	movq	%rsi, (%rcx)
	addq	$8, %rcx
	movq	56(%rax,%rdx), %rsi
	movq	%rsi, (%rcx)
	addq	$8, %rcx
	movq	64(%rax,%rdx), %rsi
	movq	%rsi, (%rcx)
	addq	$8, %rcx
	movq	72(%rax,%rdx), %rsi
	movq	%rsi, (%rcx)
	addq	$8, %rcx
	movq	80(%rax,%rdx), %rsi
	movq	%rsi, (%rcx)
	addq	$8, %rcx
	movq	88(%rax,%rdx), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	ret
L__copy_seed_to_proof$1:
	movq	(%rdx,%rax,8), %rdi
	movq	%rdi, (%rcx)
	addq	$8, %rcx
	movq	8(%rdx,%rax,8), %rdi
	movq	%rdi, (%rcx)
	addq	$8, %rcx
	movq	16(%rdx,%rax,8), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	ret
L__copy_seed_from_sig$1:
	movq	(%r11), %r10
	movq	%r10, (%rdx,%r9)
	addq	$8, %r11
	movq	(%r11), %r10
	movq	%r10, 8(%rdx,%r9)
	addq	$8, %r11
	movq	(%r11), %r10
	movq	%r10, 16(%rdx,%r9)
	addq	$8, %r11
	ret
L__copy_seed_from_iSeed$1:
	movb	(%rdi,%rcx), %r14b
	movb	%r14b, (%rdx,%rsi)
	movb	1(%rdi,%rcx), %r14b
	movb	%r14b, 1(%rdx,%rsi)
	movb	2(%rdi,%rcx), %r14b
	movb	%r14b, 2(%rdx,%rsi)
	movb	3(%rdi,%rcx), %r14b
	movb	%r14b, 3(%rdx,%rsi)
	movb	4(%rdi,%rcx), %r14b
	movb	%r14b, 4(%rdx,%rsi)
	movb	5(%rdi,%rcx), %r14b
	movb	%r14b, 5(%rdx,%rsi)
	movb	6(%rdi,%rcx), %r14b
	movb	%r14b, 6(%rdx,%rsi)
	movb	7(%rdi,%rcx), %r14b
	movb	%r14b, 7(%rdx,%rsi)
	movb	8(%rdi,%rcx), %r14b
	movb	%r14b, 8(%rdx,%rsi)
	movb	9(%rdi,%rcx), %r14b
	movb	%r14b, 9(%rdx,%rsi)
	movb	10(%rdi,%rcx), %r14b
	movb	%r14b, 10(%rdx,%rsi)
	movb	11(%rdi,%rcx), %r14b
	movb	%r14b, 11(%rdx,%rsi)
	movb	12(%rdi,%rcx), %r14b
	movb	%r14b, 12(%rdx,%rsi)
	movb	13(%rdi,%rcx), %r14b
	movb	%r14b, 13(%rdx,%rsi)
	movb	14(%rdi,%rcx), %r14b
	movb	%r14b, 14(%rdx,%rsi)
	movb	15(%rdi,%rcx), %r14b
	movb	%r14b, 15(%rdx,%rsi)
	movb	16(%rdi,%rcx), %r14b
	movb	%r14b, 16(%rdx,%rsi)
	movb	17(%rdi,%rcx), %r14b
	movb	%r14b, 17(%rdx,%rsi)
	movb	18(%rdi,%rcx), %r14b
	movb	%r14b, 18(%rdx,%rsi)
	movb	19(%rdi,%rcx), %r14b
	movb	%r14b, 19(%rdx,%rsi)
	movb	20(%rdi,%rcx), %r14b
	movb	%r14b, 20(%rdx,%rsi)
	movb	21(%rdi,%rcx), %r14b
	movb	%r14b, 21(%rdx,%rsi)
	movb	22(%rdi,%rcx), %r14b
	movb	%r14b, 22(%rdx,%rsi)
	movb	23(%rdi,%rcx), %cl
	movb	%cl, 23(%rdx,%rsi)
	ret
L__copy_seed_to_sig$1:
	movq	(%rax,%rsi), %rdx
	movq	%rdx, (%r10)
	addq	$8, %rsi
	addq	$8, %r10
	movq	(%rax,%rsi), %rdx
	movq	%rdx, (%r10)
	addq	$8, %rsi
	addq	$8, %r10
	movq	(%rax,%rsi), %rdx
	movq	%rdx, (%r10)
	addq	$8, %r10
	ret
L__copy_digest_from_tree_v2$1:
	movq	$0, %r8
	jmp 	L__copy_digest_from_tree_v2$2
L__copy_digest_from_tree_v2$3:
	movq	(%rdx,%r9), %rdi
	movq	%rdi, (%r10)
	addq	$8, %r9
	addq	$8, %r10
	incq	%r8
L__copy_digest_from_tree_v2$2:
	cmpq	$6, %r8
	jb  	L__copy_digest_from_tree_v2$3
	ret
L_memcpy_salt$1:
	movq	$0, %rcx
	jmp 	L_memcpy_salt$2
L_memcpy_salt$3:
	movq	(%rax,%rcx,8), %r9
	movq	%r9, (%r10)
	addq	$8, %r10
	incq	%rcx
L_memcpy_salt$2:
	cmpq	$4, %rcx
	jb  	L_memcpy_salt$3
	ret
L_memcpy_3Words$1:
	movq	$0, %rsi
	jmp 	L_memcpy_3Words$2
L_memcpy_3Words$3:
	movq	(%rax,%rsi), %r9
	movq	%r9, (%rcx,%rsi)
	addq	$8, %rsi
L_memcpy_3Words$2:
	cmpq	$24, %rsi
	jb  	L_memcpy_3Words$3
	ret
L_memcpy_6Words_from_reg$1:
	movq	$0, %rsi
	jmp 	L_memcpy_6Words_from_reg$2
L_memcpy_6Words_from_reg$3:
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdx,%rsi,8)
	incq	%rsi
L_memcpy_6Words_from_reg$2:
	cmpq	$6, %rsi
	jb  	L_memcpy_6Words_from_reg$3
	ret
L_memcpy_3Words_from_reg$1:
	movq	$0, %r9
	jmp 	L_memcpy_3Words_from_reg$2
L_memcpy_3Words_from_reg$3:
	movq	(%rax,%r9,8), %rbp
	movq	%rbp, (%r8,%r9,8)
	incq	%r9
L_memcpy_3Words_from_reg$2:
	cmpq	$3, %r9
	jb  	L_memcpy_3Words_from_reg$3
	ret
L_mzd_from_char_array$1:
	movq	16(%rdi), %r9
	bswapq	%r9
	movq	%r9, (%rdx)
	movq	8(%rdi), %r9
	bswapq	%r9
	movq	%r9, 8(%rdx)
	movq	(%rdi), %rdi
	bswapq	%rdi
	movq	%rdi, 16(%rdx)
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
	.byte	231, 127, 190, 116,   0,  24, 155, 193, 196,  38, 235,  18,  73,  58,  89, 252
	.byte	157, 174, 115,  54,  70, 158,  59,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 92,   6,  97, 224, 230, 112, 152, 113, 219,  28,  42, 206, 136, 124,  67, 243
	.byte	221, 223, 151,  19,  94,  49,  78,  17,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	110, 225, 144, 223, 171,  67, 174, 211,  72, 246, 108, 220,  18, 124, 203, 190
	.byte	120,  61, 240, 214, 121, 203, 245, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	125,  45, 144, 134,  52, 224, 139, 252, 175,  99,  82, 128,  25, 111, 171, 159
	.byte	192,  14,  85, 172,  16, 100, 183, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0, 209,  57,  40, 252, 112, 207, 186,  24, 118, 108, 200, 238, 196,  50, 154
	.byte	242,  87, 202,  67, 103,  38, 103,  63,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	100, 182, 113, 102, 181,  65, 209, 244, 240,  21, 184,  66, 159, 133,  91, 166
	.byte	  7, 250,  14, 151,  84, 112, 160, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 90,  25,  91,  43,   2,   2,  75,  77, 101, 128,  57, 141,  81, 219, 156,  13
	.byte	244,  97, 124,  38, 210, 189, 133, 228,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 60,  20,   8,  22,  30,  29,   2,  63,   9, 237,  79,   9,  57, 147, 103,  23
	.byte	210,  81, 121, 179,  14, 127, 131, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 80, 191, 254, 172,  42, 115,  50, 236, 159, 133,  86, 234, 219,  90,  84,  59
	.byte	179,  21, 201,  49, 135,  23,  20, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 89, 226,  88, 243, 213, 180, 113,  55, 169,   5, 186, 222, 103,  29, 222,  61
	.byte	 15,  43,  53,  56,  22, 214,  16, 203,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	176, 193, 213, 237,  79, 201, 170, 186, 253, 104, 208,  52, 219, 223, 223, 175
	.byte	151, 226, 210, 164,  40,  62, 255,  16,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 95,  29,  16, 238, 242, 209,  77, 213,  97, 190, 160, 134,  26, 247,  99,  37
	.byte	 15,  84,  23,   0, 153,  92,  31,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	200,  97, 105,   8, 195, 196,   8, 167, 119, 167,  44, 185, 120,  66, 240,  25
	.byte	241,   7, 128, 214,  73,  41, 238, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	192, 159, 184,  32, 227, 231,  21, 247, 191, 124, 189,  72, 140,  28, 122, 137
	.byte	149, 127, 229,  17,  33, 208, 147, 191,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188,  65, 102, 218,  52, 104, 252,  57, 247,  93, 177,   6,  65, 249, 172,  22
	.byte	 37,  69, 109,  85,  45, 182,  64,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82, 139, 140,  51,  40, 103, 218, 115,  56, 193, 114, 211,  11, 188,  18,  42
	.byte	 10, 125, 249, 164, 151, 224, 153, 176,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76, 146, 206, 148, 163,  78,  87, 236, 252, 232, 155, 134,  35, 140,  54, 178
	.byte	222, 248,  33, 103, 184, 197,  83, 160,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116, 103, 143, 180,   9,  85,  53, 170, 107, 133, 133, 226, 218, 195, 201,  95
	.byte	200,  93, 253, 166,  57,  91,   0,  34,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126, 195, 159, 170, 134, 228,   0, 200, 221, 207,  27, 171, 226,   3,   0, 152
	.byte	135,  71, 127, 227, 195, 155, 133, 202,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 71, 223, 245, 180, 228, 207,  35, 231,  26,   3,  36,  95, 254, 144,  24, 159
	.byte	 85,  27, 245, 156, 210, 206, 214,  69,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 62,  46, 184, 189, 243, 173,  65, 249, 240,  93, 242, 156,  81,  87,  21,  82
	.byte	136,  97, 185, 176, 252,  99,   1,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  9,  46, 202,  64,  53, 139,  72,  98, 230, 136, 219, 232, 197,  11, 127,  33
	.byte	 49, 159,  65, 203, 166,  43,  17, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  8, 245, 219, 111, 171, 240,  32, 156,   4, 124, 161,  17,  23, 239, 134,  23
	.byte	196, 167,   2, 170, 140, 166, 154, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121, 220,  53, 115, 241,  64,  22,  60, 205, 145, 118, 254,  74,  89,  92, 156
	.byte	110, 109, 108, 200,  28,  93,   3,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10, 146, 109, 100,  35, 167, 210,  46,   9, 147, 177,  12, 171, 202,  95,  78
	.byte	166, 202, 140,  81,  64,  33, 216,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	218, 113, 253, 198,  59,  23, 135,  82, 180,  60, 158, 185,  51,  76, 126,   1
	.byte	121, 114,   4, 175,   4, 191, 227, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 122,  47, 198,  57, 177, 123, 239, 244,  73,  64,  35, 228, 229, 103,  92
	.byte	123, 140,  86, 188,  98,  68,  77,  35,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	201, 171, 161, 234, 143, 131, 236, 238, 217, 140,  42, 198, 210, 193,  53, 123
	.byte	127, 215,  67,  21,  38, 248, 188, 112,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 89,  84,  23,  85,  94,  70, 247,   5,   7,  98, 142, 123,  93, 196, 167, 171
	.byte	140, 227, 183,  48, 205,  96, 190,   6,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	251, 182,   7, 145, 196,  75, 184, 130,  13,  99, 186, 107, 142,  17, 244,  72
	.byte	112, 101, 209, 184, 207, 181, 214, 220,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	120,  23, 222, 148,  29,  17, 157, 194,  18, 144, 171,  60, 153, 135, 183, 190
	.byte	 63, 123,  86, 219, 156,  50,  93,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	114, 250, 198, 128, 185, 151,  59,  44, 193, 155,  52,   3,  96, 200,   9,  68
	.byte	 54, 239, 198,  87, 151, 137,  64,  20,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84, 219,  25,  35, 140, 236, 158, 249, 241, 194,  48, 172,  54,  77, 244, 106
	.byte	 17, 154, 203, 187, 100, 204,  52,  40,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82, 238,  42, 190, 218, 167,  11, 114,  69,  12, 161,  36,  45, 125, 232,  28
	.byte	177,  15,  42,  39,  65, 160,  25,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	230, 160, 213, 213, 205, 220, 210, 230, 103, 210, 158, 205,  11, 254, 179, 215
	.byte	198,   5, 101, 180,  75,  86, 146, 185,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	114, 165,  83,  38, 174, 119, 134, 212,  87,  75, 178, 200, 230, 138,  14, 108
	.byte	110, 105, 134, 209,  63,  71, 231, 215,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	165, 223,  17,  92,  70, 208, 114, 140, 184, 183,  25,  48, 109,  75, 220,  41
	.byte	 87, 165, 162, 100,  85,  20, 230, 242,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67,  40, 202, 249, 238, 100, 163, 233, 255, 135,  31,  94, 234, 103, 164, 210
	.byte	205,   4, 132,  52, 184, 151, 164, 195,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153,  70,  26, 253,   3,  17, 132, 253,  78, 221, 176, 111,  31, 196,  73, 212
	.byte	 20, 139, 172,  74, 140, 204, 125,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	155, 243,  10, 114, 112,  94,  24, 240, 220, 139, 180,  24, 112, 215, 138, 201
	.byte	202,  82, 132, 181, 133, 131,  99, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	206,  76, 130,   4, 204,   9,  91, 159, 228, 146, 205, 115, 237, 176,  16, 173
	.byte	 18, 134, 170,  73, 212, 103, 156,  74,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 14, 220, 191, 120, 255,  42, 190,  81, 137,  92, 163,  44, 155,  29, 136,   7
	.byte	108,  77, 217,  58, 225, 230,  90,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	114,  55,  79, 246,  99, 194, 158, 224,  28,  27, 105, 226, 113, 152, 131,   2
	.byte	115, 189, 236, 149, 170,  57, 119, 215,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0, 172, 217,  91, 148,  81,  24,  16, 199, 194,   6,  45, 103, 107, 164,  25
	.byte	 58, 197,  60, 127, 191, 252, 118, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111,  68,  53,  71, 196, 246,  53, 158,   7, 219,   0,  41,  35, 130, 105,   6
	.byte	 86, 248, 197, 115,  58,  10,  55, 129,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 28, 223,  82, 233, 117, 197, 249, 251, 219,  35,  15,  50, 114, 242,  52, 196
	.byte	223, 113, 178,  53, 249, 194,  44, 203,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 110, 141, 190, 240, 188, 113,  81,  71,  44,  24,  95,  60, 243,  28,  67
	.byte	 75,  52, 227, 245, 112, 192,   9, 104,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	134,  63, 134, 108, 215, 228,  11,  62, 230, 175, 254,  94, 174, 153,  62,  53
	.byte	 93, 209, 224,  62, 229,   8,   4,  37,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 85, 254, 247,  53, 137, 145,  88,  19, 146, 157, 167, 104, 191, 217, 202, 139
	.byte	 35, 237, 211,  72, 128, 251, 143, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	233,  66, 144, 231, 190, 201, 107,  82, 247, 253, 203, 145,  72,  51,  71,  24
	.byte	 79, 102, 217, 159, 230,  89, 212,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	245, 252, 230, 108, 140,  48,  84, 126, 185, 202,  90,  31, 141,  68,  80, 254
	.byte	236,  27, 113, 121,  96, 239, 158, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  4, 251, 152, 250, 249,  55, 148, 207, 209, 211, 227, 144,  60, 239,  96,  16
	.byte	120,  62,  41,  95, 101, 118, 253, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	206, 196,  17, 252, 188, 103,  59, 155, 226,  47, 213, 239, 183,  28, 133, 167
	.byte	226, 203,  92,  73, 201, 126,  39, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	107,  45, 134,  62,  24, 144,   5, 151,  75, 246,  52, 182,  30, 196, 239, 180
	.byte	103, 250,  53,  12,  47,  59, 138, 171,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 14, 169, 100, 254,  42, 193, 241, 168, 124,  84,  68, 208, 185,  41,  90,  98
	.byte	 85, 166, 180, 165,  97,  61, 179, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	204,  96,  72,  51,  96, 196, 123,  76,  17,  25,  42,  50, 153, 241,  70,  10
	.byte	187, 245,  52,  43, 106, 120, 165, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 27, 182,  22, 217, 161, 173, 244,  78, 176,  54, 145,  37, 213, 194, 141, 217
	.byte	 28, 148, 204,  86, 230,  29, 133, 112,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	139, 118, 167, 215,  13, 159, 208,  91, 196, 241, 203, 152,  93,  49, 173, 159
	.byte	168,  22, 111, 218, 112, 140, 208, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 53,   9, 190,  58, 159,   1, 217, 162,  58, 255, 224, 130, 142,  92, 145, 201
	.byte	 99,  72, 156,  89, 149, 145,   5, 123,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202, 209,   7, 204,  60,  29, 160, 239,  56, 253, 237,  64,  58,   9, 210, 137
	.byte	  1,  99, 197,  75,  93, 252, 182, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121, 251,  10,  99, 236, 239, 162, 218, 245, 116,  87, 195, 123, 151, 182, 135
	.byte	150, 150, 147,  40, 128, 140, 191, 251,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	199, 135, 221, 234, 191,  11, 219, 223, 231, 213,  18,  62,  21,  44,  14, 171
	.byte	 57,  99,  84, 225, 117, 166,  65,  41,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	231, 167,  44, 123, 236,  44, 255,  19, 102, 117, 181, 250, 220, 141,  34, 149
	.byte	 52, 179, 192, 183, 110, 246, 214, 242,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	243,   2, 211, 242, 113, 197, 226, 114, 252, 206,  32,  79,  85,   6, 192, 122
	.byte	160,   5, 189, 204, 148,  85,  86, 102,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	238, 193, 247, 105,  35, 152, 159, 252,  32,  28,  54, 112,  27,  10, 108, 100
	.byte	118, 126, 152, 229,  43, 180, 175,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	244, 215, 124, 234,  41,  42, 155, 249,  13, 126, 113,  49,  54, 227, 134,  44
	.byte	211,  27, 143,  42,   7, 126, 140,  77,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 69, 216, 134, 197, 175, 191, 166,  40, 212,  57,  98,  63, 189, 207,  61,  45
	.byte	 24, 119,  65,  85, 181, 245, 226,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111,  75,  29, 213,  47, 133,  37, 177,   3, 115, 100,  60, 115, 144, 176,  32
	.byte	100, 134,  27, 183, 221,  45,  61, 131,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 30, 119, 248, 222, 237, 182, 250,  98, 115,  86, 250, 102,  19, 122,  28, 112
	.byte	 69,  55,   8,  37, 233, 215, 146,  35,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	164, 198, 225, 105, 194,  97, 138, 117, 125, 220,   2, 209, 150,  18,  46, 106
	.byte	104, 215,  12,  60, 120, 121, 143,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111, 135,  99,   0,   8, 157, 211, 123, 214, 245, 231,  31,  36,  99, 166,  41
	.byte	157, 180,  65, 125, 242, 223, 162, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	206, 100, 189, 120, 167,  64, 230, 156, 146,  85, 139, 220,  29, 231, 206,  30
	.byte	174,  58,  37, 126,  50,  46, 131, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 20, 237, 121, 244, 113,  97, 144, 174, 110, 237,   7, 199, 160,  52, 145, 132
	.byte	230, 240, 169, 248,  48, 144, 119,  79,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36,  49, 232, 106,  67, 229, 135, 241, 115, 245, 157, 255,   7, 225, 193,  56
	.byte	141,  91,  21,  44,  75, 111,  88, 128,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 61, 172, 227,  26,  37, 223,  68, 158,  50,  64,  44,  15,  69,  71,   5,  47
	.byte	191, 192,  30, 247, 177,   5, 204, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54,  89,  74,   1, 146, 240, 249, 233, 208, 164, 140, 236, 139, 222, 103, 167
	.byte	242, 123, 242, 138,  65, 189, 206,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	174, 138,  56, 112, 184,  39,  47,  47, 159,  70,   9, 248, 212, 129,  79,  51
	.byte	  6, 167, 130,  32,  21, 107, 175, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	168, 225, 133,  78, 200,  21, 148, 226, 204, 157, 198,   5, 196, 245, 126,  49
	.byte	 96, 159,  90, 203,  92,  30,  25,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	243, 180, 235,   6,  71,  36,  58,  69,  55,  58, 254, 215,  50, 188, 128, 227
	.byte	182, 182, 231, 242, 251, 193,  77, 225,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 87,   3,  29, 118, 120, 180, 153, 160,  59,  85, 252, 249, 154,  80,   8,  64
	.byte	121, 160,   7, 147, 233,  30, 224, 118,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	146, 244, 214,  89,   7, 170, 168,  61, 227,  91,  46, 198, 178, 215, 189,  95
	.byte	233, 238, 163, 214, 243, 182, 123, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 72,  24, 208,  13, 187,  89, 135, 229, 173, 128,  93,  29, 201,  46, 249, 161
	.byte	179,  79, 180, 181, 232, 232,  72, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 72,   3, 112,  96, 193,  57,   9, 227, 171, 238, 163,  65, 241, 255, 211,  16
	.byte	 69,  38, 137, 242, 106,   2,   0,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149, 230, 198, 219, 101,  15,  52,  50,   5,   8,  25,  83, 160, 113, 168, 152
	.byte	 50, 245, 194, 189, 103, 189, 111,  89,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	100, 132, 227, 237,  58, 113,  75,  13, 197, 129, 204, 137,  63,  32, 251, 214
	.byte	175,   7,  57,  96, 222, 124, 211, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	213, 232,  95, 242,  83, 160,  94, 215, 224, 189, 190, 186, 230, 168,  12, 211
	.byte	217, 165, 155, 119,  33,   0, 110,  34,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  6, 122,  48,  16,  91, 129, 114, 254,   6, 115,  78, 192,  54, 188,  82, 158
	.byte	227, 114, 216,  19, 187,  68, 229, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	250,   6, 184,  66, 168, 253, 154, 180, 120, 144,  94, 175, 218, 183, 236, 140
	.byte	 90, 153, 142,  28,  32, 206,  32, 189,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	209,  85, 114, 204, 163,  35, 207,  38, 209,  46,  92,  58, 216, 196, 227, 157
	.byte	  4,   3,  43, 242,  77, 225, 149, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 26, 174,  54, 194, 192, 216, 240, 147, 199,  99,  55,  81, 140, 236, 251, 196
	.byte	128, 142,  40, 112,  49,  10, 134,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	254, 134,  38,  94, 166, 161, 205, 113, 213, 197, 236,  94,  53,  82, 183,  29
	.byte	201, 125,  77, 156,  54, 156,  88,  55,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36,  79, 218, 163, 101, 190, 137, 137, 228,  13, 161, 119, 190, 254, 121, 136
	.byte	139, 209, 103, 117, 209, 137, 200, 251,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10, 158, 186,  73,  49, 127, 129,  14, 157, 126, 245, 155, 189, 158,   0, 159
	.byte	 38,  80, 242,  71,  94,  94,  37, 251,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	252, 143, 183, 102,  21, 105, 126,  51,  69, 210, 169, 187, 138,  76,  83, 251
	.byte	184, 146, 237, 189, 138, 176, 229, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	157, 196,  76,  38,  42,  28,  94,  99,  69,   0, 226,   4, 218, 182,  44, 216
	.byte	145,  50,  76,  15,  81,  26, 241, 182,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	226,  23,  10, 124,  79, 211, 223, 118, 153,  88, 105,  50,  13, 121,  18, 156
	.byte	118, 117,   4,  59, 171,  33, 121, 195,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	130,  74,  98,  87, 192,  20, 125,  78, 168,  71, 168, 212,  18, 245,  52,   7
	.byte	 87, 129, 100,  99, 235, 161,  27, 213,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98,   5, 182, 216, 122,  98, 144, 177, 218, 228,  86,  95, 184,  66,  97, 236
	.byte	 55,   0, 240, 107, 197, 165, 214,  98,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5,  86, 204,  76, 177,  21, 246,  22,  95,  20, 209,  43, 149, 105, 153,   3
	.byte	 93,  95, 227, 116,  45,  53,  97, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 23,  99, 121,  74,  65, 215, 120, 192,  48,  84,  90,  26, 208, 120,  62,  71
	.byte	 90, 105,  68,  46,  20,  28, 170,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115, 203,  59, 197, 116, 187, 107, 246, 161, 170, 241, 235,  25,  94,  98, 191
	.byte	188, 152, 237, 217, 158, 242,  53, 127,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43,  84, 128,  88,  57, 220, 136, 191,  94,  27, 120,  63,  92,   9,  40, 230
	.byte	249, 134, 212, 208, 247,  53,   5,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216, 230, 123, 232,  72, 125, 229,  37,  85,  75,  19,  52, 122,  75,   4, 188
	.byte	185,  49, 234, 133,  43,  42, 108, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	154,  52, 205,  99, 123,  60,  49, 229, 204, 176, 138,  44, 172,  82,  68,  69
	.byte	188, 104,  79, 162,  33,  87,  93,  58,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 85,  80, 137, 122,  16, 244, 165, 185, 159, 152, 235,  91, 174,  88,  46,  88
	.byte	240,  41,  47, 242,  18, 189, 114,  44,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236,  94, 105, 214, 201, 126,  54, 236,   3, 221, 132, 186,  77,  85, 205, 163
	.byte	 55, 210, 234, 119,  68, 158,   6, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	184, 100,  68,  83, 230, 187, 133, 101, 137, 104, 100, 219, 196, 148, 207, 137
	.byte	224,  20, 214, 237,  77, 246, 147,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	106,  74, 109, 139, 177,  82, 171,  75, 251, 161, 205,  75, 240, 172,  39, 106
	.byte	143,  47, 177, 232, 236,  67,  66, 194,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 57, 134, 195, 205, 171, 245, 201, 176, 110, 175,  68,  33,  35,  95,  67,  81
	.byte	144, 136,  25, 189, 177,  84, 186,  26,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111, 120, 167,  98, 116, 153, 205, 159, 150, 197, 114, 247,  98,  92, 214, 120
	.byte	175, 210, 137, 245, 205, 214,  11,  24,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16,  59,   2, 206, 171,  17,  29, 196, 219,  33, 130,  81,  75,   3, 100, 131
	.byte	202, 157, 185, 242, 201, 134,   7, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	104, 180, 168, 163, 172, 129, 251,   6,  74, 135, 224, 126, 146,  76, 218,  11
	.byte	128,  59, 162, 126, 173, 192,  79,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	180,  48,  44,  85,  33, 125,  31,  77, 114,   1, 104,  95, 247, 159, 143, 231
	.byte	 93, 125, 117, 238, 227,  26,  60,  42,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	127, 181,  27, 155,  20,  97, 204,   5, 164, 147, 215, 226,  52,  86, 230, 109
	.byte	 55,  31,  82,  32, 155, 157,   9,  14,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123, 156, 107,  76, 232, 211, 126,  76,  31, 101,  43, 121, 105, 198, 175, 225
	.byte	175, 189, 137,  56, 176, 114, 131, 171,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 57, 174,  25, 127, 107, 124, 213, 119,  68,  91, 163,  75, 153,  24, 208,  87
	.byte	175, 230, 219,  15, 131, 179, 187, 140,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 62, 211, 167, 111, 100, 217, 177, 135, 107,  91,  80, 241, 158,  27, 151,  48
	.byte	 33, 105, 163,  43, 157,  91,  91,  47,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54, 254, 173,  79,  40,  67, 167, 242, 191,   8,  84,  67,  92, 237,  27,  35
	.byte	220, 248,  48, 126,  97,  19, 133,  52,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	242, 157, 188,  44, 192, 103,  73,   5, 151,  11, 159, 235, 241, 113, 112, 122
	.byte	184,  49, 170, 219, 248,  47, 143,  51,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 77,  50, 218,  52, 101, 236, 216,   6, 208,  67,  28, 230, 212, 215,  60, 185
	.byte	 95, 224,  27,  82,  91,  89, 226,  13,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	171, 217,   6, 166, 250,   0, 209, 120,  70,  35, 127,  34, 189,  78,  93, 170
	.byte	  1,  81,  95, 152,  78, 241, 151, 241,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 124, 221, 136,  39,  21,  36, 208, 121, 252, 123, 100,  79, 217,  54,  22
	.byte	244, 240, 189,   4,   3,  97, 106,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 35,  89, 153, 101, 211,  15, 116,  29, 187,  42,  89,  76,  75,   0,  93, 244
	.byte	 72,  13,  68, 136, 188, 169,  72,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 85, 196, 119, 235, 238,  64, 187, 191, 252,   2, 223, 209, 152,  41, 226, 216
	.byte	 65,  20,  55, 216,  68, 140, 128,  38,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 79, 158,  57,  69, 243,  20, 210, 139,  48, 175, 237, 204, 178, 160, 126,  97
	.byte	159,   1, 204, 154, 146, 209, 154,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	145, 229, 107, 240, 165,  26,  54, 100, 170,  15, 134, 246, 173,  32, 103, 132
	.byte	200, 166,  39, 110,  71,  11, 255,   9,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  4, 134, 196, 247, 112,  95,  46,  45,  18, 198, 117, 200, 210,  85, 235, 187
	.byte	 13, 113, 155, 120, 179, 174, 223, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 90, 178, 252,  12,  92, 108, 118,  11, 143,  94, 254, 252,  40, 223, 171,  97
	.byte	 76,   5,  92,  65, 183, 170, 151,  77,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140, 141, 247,  39, 208, 180, 171,  32,  64,  86, 163, 200, 112,  27, 247, 158
	.byte	185,   0, 119,  41,  30, 157,  61,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 33,  60, 197,   1, 200, 113, 134, 234, 208,  27,  89, 190,  33, 178,  51,  93
	.byte	190, 150, 132,  25, 134,  12,  85, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101, 166, 109, 195, 143, 203, 206, 182,  71, 208, 124,  92, 189, 173, 101,  96
	.byte	 27,  64,  80,  86, 235,   7, 232,  58,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 87, 119,  13, 207,  17, 100, 155,  35, 228, 220,  59, 201, 126, 221, 199,  24
	.byte	150,  63,  81,  95, 115,   5, 227, 134,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24, 142, 213, 166, 100, 221, 218, 115, 183, 140, 236, 179,  96,   4,  76, 235
	.byte	132, 195, 117,  39,   2, 117, 193,  80,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 15,  14, 216, 254,  33, 101, 136, 189, 123, 249, 140,  75,  35,  72,  52, 182
	.byte	144,  45, 243,  31, 226, 100,  25, 189,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	108, 105,  62,  31, 208,  35,  69, 206,  60, 105, 140,  58,   9,  51, 161,  91
	.byte	184, 215, 193, 157, 249, 190, 100, 249,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	241, 241,  92,  58, 232, 186, 193, 201,  94, 213,  15,   5, 183,  96,  55, 145
	.byte	 61, 216, 171, 149,  12,  11, 210, 150,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10, 161, 202,  35,  53,  65, 252, 210,  20,  97, 192, 115,  74,  89, 159,  83
	.byte	 31, 214, 118, 189,  83, 126, 120, 220,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149,  60, 154, 235,  78, 128, 150,  73, 231, 182, 203, 152, 104,  25,  48,  92
	.byte	142, 201, 218,  27, 142, 251, 242, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101, 205,   2,  15, 184, 150,  27, 216, 249, 106,  46,  90, 246,  34, 100, 211
	.byte	 61, 103,  28, 175, 178, 212,  19, 179,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	219,  66, 140, 118, 154,  12, 133,  35,  25,  45, 118, 166, 186, 238, 187,  23
	.byte	 45,  52, 159, 220, 241, 130, 127, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123, 232, 150, 185,  24, 153, 137, 188,  68, 135, 168,  72,  25, 120, 136,  58
	.byte	156, 148, 205,  91,  98, 212, 157, 244,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	117, 126, 245, 213, 151, 196, 230,  33, 156, 145, 128, 184, 254,  24, 227,  97
	.byte	 25, 151,  57, 255, 149, 237, 160, 124,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227,  10, 192, 247,  43, 105, 195, 234, 142, 203, 250,  75, 150, 137, 159, 224
	.byte	 40, 177, 209, 188, 203, 232,  99, 252,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	108,  64,  62, 120,  95,  90, 193,  59, 210,  91,  14, 126,  64, 100, 227, 147
	.byte	100, 142, 123,  67, 153,   1, 157,  28,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	165,  27, 174, 162,  20, 177, 127, 114, 238, 159, 144, 198, 242,  51, 149,  67
	.byte	137, 138, 132,  58, 172,  78, 219,  22,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 95, 149,  99,   6, 126, 186, 203, 199, 217,  53,  54, 255, 164,  91, 224,  72
	.byte	 94, 252,  86, 169, 150, 244,   5, 107,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 96,  84,   9, 135,  34,   6, 240, 180, 211, 189, 237, 224, 171, 188, 195, 141
	.byte	 77, 239, 230, 150, 155,  63,  77, 103,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172, 102, 226,  23, 225, 169, 168,  73, 225, 167, 174,   9, 176, 120,  22, 164
	.byte	 65, 209, 166, 132,  67, 215,  11,   8,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	254,  70, 212,  29, 226,  62, 212, 174,  89,   4,  12, 133,  94,  19, 165,   0
	.byte	208,  37, 174,  53,  27,  66, 235,  69,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98, 247, 133,  60, 181, 172, 129, 142,  72,  51, 208, 142,  19,  60,  64,  44
	.byte	232, 177, 251, 226,  53, 103,  29, 204,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  3,  76,  97,  13, 247,   7, 204, 153, 170,   3, 178, 145,  74, 171, 250, 132
	.byte	239,  19,  29, 201, 216,  30,  66,  31,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	205, 203, 156,  10,  84, 228,  43, 239,  19,  73, 204,  93, 121, 239,  97,  51
	.byte	203,  97,  54,  19, 198,   1, 143, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126, 190, 107, 226, 108, 153, 173, 108,  32,   1, 210,  38, 240, 143,  89, 101
	.byte	242, 249,  44,  50, 150, 111,  30,  91,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	214,  85,  59,  71, 169, 109,  42, 201,  58,  86, 124,   9,  34, 115, 245, 222
	.byte	210,  27,  37,  70, 143,  50,  97, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247, 126, 248, 226, 125, 231,  34,   9, 131,  58,  65,  83, 105,  65,  28, 197
	.byte	 83, 223, 250, 214, 224, 184,  45,  14,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 51,  93,   2, 176, 153,  76, 113, 184,  47,  52, 217, 196,  32,  30, 172,  21
	.byte	160,  58,  91, 131, 227,  53, 109, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234, 178,  51, 214,  55, 164, 136,  61,  15, 138, 115, 111, 127, 152, 240, 151
	.byte	235, 146, 193,   5, 251,  47, 199,   3,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247,  14,  71, 181, 100, 161,  87, 211,  21, 162, 174, 164, 184, 189, 126, 173
	.byte	 20, 216, 138, 122,  26,  26, 192, 235,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5, 235,  36, 225,  25, 205, 159,  66,  65, 239, 167, 195, 130,  45, 236, 206
	.byte	 68, 232,  11, 101,  81,   3, 231,  28,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	197,  46, 120, 209, 114,  75, 101,  74,  55, 105,  56,   3, 130, 102, 174, 147
	.byte	 88,  11, 244, 191, 177, 140, 166,  89,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136,  76,  63, 152, 170,  73, 130, 170,  21, 106, 211,  27,  47, 139, 212, 155
	.byte	243, 179,  82, 104, 149, 207, 193, 201,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	228, 239, 156, 230,  59, 222, 164, 235, 181,  51,  68, 167, 101,  65, 153,  44
	.byte	129, 113,  32, 165, 130,   0,   7,  86,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216,  10, 172,  43,  14, 108, 201, 147, 225,  47, 198, 118, 108, 196, 101, 247
	.byte	200,  26, 181, 209, 230,  87,  23, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	137,  71, 131,  36,  72,   4, 147, 143, 161, 153, 211, 179,  89, 135, 129, 123
	.byte	181, 217,  91, 160, 111,  67,  12, 250,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 13,  18, 134, 255, 240,  40, 166,  13, 138,  31,  96, 127, 117, 185,  74,  33
	.byte	 62, 216, 116, 116,  14, 213, 104, 194,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98, 186,  76, 131, 249,  20, 210,  54, 154,  28,   5, 242, 149, 243,  73,   1
	.byte	252,  92,  55,   9, 111, 178, 200,  47,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  2,  87,  41, 193, 159, 149, 173,  91, 138,  36, 245,  87, 254, 203, 154, 192
	.byte	128, 127,  41, 144, 118, 165,  20, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	221, 202, 224, 208,  55, 172,  68, 234,  18,  33, 127, 158, 163,  20,  69, 102
	.byte	127, 184,  57, 118, 198, 231, 211,  32,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126, 227,  79, 225, 157,  64, 255, 213,  29, 152,   9, 171,  89, 143, 162, 111
	.byte	152, 112,  25, 227, 132, 172, 163, 210,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11, 223,  26, 200, 252, 196, 169,  88, 227, 132,  26, 185,  49, 245, 209,  64
	.byte	233,   8, 145, 245, 148,  22,  87, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	183, 176, 212, 189,  89,  82, 105,  38, 118, 153, 108, 161,  90, 101,  16,  64
	.byte	175, 156, 252,  16, 246,  18, 223, 143,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 52,  63, 170, 111,  49, 235, 102, 239, 192,  67, 208, 193, 128, 247,  62, 253
	.byte	 45, 223, 162, 148, 203, 199,  60, 244,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 48, 163, 157,  61, 225,  54, 255, 210, 195, 122, 210,  53,  64,  49,  33,  65
	.byte	 93, 106, 103,  18,  66, 136, 146,  77,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223, 170, 150,  87, 154, 155,  80,  19,  55,  92,  60, 230,  58, 172, 237,  94
	.byte	 91, 181,  89,  53, 221,  32, 204, 176,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156,  64,  87,  54, 164, 123, 149, 246, 125, 240,  31, 232,  36, 154, 219, 115
	.byte	 67, 125, 243, 223,  42, 233,  95, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	187,  25, 119,  85,  92,  67,  74, 209, 200,  22,  18, 167, 198,  21, 161, 219
	.byte	152, 208, 116,  42, 101, 117, 112,  51,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 87,  56, 146, 154, 115, 167,  90, 205,   5, 188, 143, 173, 192,  86, 124, 162
	.byte	202, 177, 245, 113, 198, 177, 131, 116,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 181, 233, 143,  15,  85, 178,  96,   7, 139, 113,  89,  80, 182, 167,  64
	.byte	151,  39,  17,  88,  44, 165, 131, 254,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	193, 107, 155,   0, 174,  76, 243, 190, 120,  60,  28, 237, 252,  24, 110,  61
	.byte	173, 232,  84,  86,  22,  50,  43, 135,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	184, 217, 135, 230,  35,  48, 233, 109, 190, 175, 185, 122,  97,  53, 225,  51
	.byte	 83,  99, 183,  78, 187, 146,  53, 180,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	152, 147, 185,  88, 138,  50, 189,  17,  98, 135,  91, 226, 197, 215,  49,  60
	.byte	 40, 185, 152, 212, 246,  70,  93, 227,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	237, 130, 133, 136,  55,  64, 110, 164,  50,   8,  99, 167,  63, 103, 215, 119
	.byte	113, 100,  66, 219, 141, 121, 186,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223, 194, 181, 166, 158,  80,  67,  55, 137, 192,  34, 204, 139, 163,  93, 242
	.byte	 42, 120, 159, 193,  58, 205, 210, 123,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	206,  20, 143, 125, 179, 157, 172, 196,  72,  85, 222,  49,  17, 134, 233, 193
	.byte	238, 229,  65,  83,  77, 109, 102, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	198, 120, 213, 143, 170,  16, 129,  54,  88, 232,   2,  83,  72, 203,  73, 191
	.byte	178, 178,  44, 144,  94,  81, 109, 131,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	184, 200,  71, 177, 149, 246, 145,  79, 204, 244, 137,   0, 220, 226, 174, 129
	.byte	 17, 243, 189, 196, 138,  35, 202,   8,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	174,  55,  71,  76, 114, 222, 222,  78,  18,  80, 237, 184,  83,  51,  89, 136
	.byte	160, 226, 152, 122, 132, 124,  37,  92,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227,  32,  42, 106, 212, 162, 212, 227,  62,  99,  80,  41,  14, 234,  39,  49
	.byte	158, 254, 184, 160,  37,  86,  59,  93,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24,  17, 131,  51,  79, 101,  25, 143, 212,  92,  78,  12, 209, 192,  24,  33
	.byte	 10,  16,  61, 194,  47, 178,  71, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50, 238, 149, 145, 242, 191, 138, 155, 181,  53,  22,  29, 204, 249, 157,  27
	.byte	 93, 161, 164, 128, 128,  70, 178, 172,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	192, 115, 153,  19, 138,  74,  38, 200,   6, 239, 180,  34, 242, 105, 251,  46
	.byte	 89, 134,  74,  80, 157, 164,  60,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103, 225, 101, 127, 123, 181,  43,  26, 152,  10,  67, 204,  91,  63, 130,  44
	.byte	112,  72,  34, 240, 100,  68, 236,  43,   0,   0,   0,   0,   0,   0,   0,   0
G$li_matrix:
	.byte	  7,  11, 207,   0, 188,  39, 194, 167,  29, 120, 145, 238, 230,   8,  22, 186
	.byte	  2,  18, 133, 179,  16, 201, 158,  13,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	182,  96, 254,  31,  15,  60, 153, 197,  53, 126, 201, 193,  71, 123, 189,  58
	.byte	247, 212, 214,  28, 170, 141,  22,  73,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140,  97, 244, 205,  33, 225,  64, 198, 105,  35,  72, 110, 198, 168, 187, 225
	.byte	232, 145, 183, 248, 226,  47, 160, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 59, 188,  57, 167, 156, 214,  40, 132, 186, 121, 175,  75, 163, 227,  83, 151
	.byte	 78, 244,  81,  59,  33, 230, 181, 139,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	161,  11, 135, 128, 172, 109, 207, 249,  17, 160, 133,  99, 202, 118, 233, 197
	.byte	193,  77, 225, 162, 198, 169, 112, 153,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	130, 197, 211, 252,  16, 229,  66,  96, 251, 118,  39, 224, 100, 127,  22, 153
	.byte	  9,  38, 202,  94, 124,  32,  91, 238,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 26, 167, 182, 137, 202,   6, 119, 177, 213,  20, 195,  89, 112, 146, 114,  47
	.byte	112,  96, 177, 135, 181, 247, 253, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	173, 232, 158, 173, 117, 254,  27, 125, 193,  63, 190, 150,  28, 120,  55, 175
	.byte	104,   9,  47, 182, 105,  65, 100,  54,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126,  64,   3, 193, 251, 124,  93, 113, 120, 210, 180, 112,  19, 150, 245, 178
	.byte	212,  89,  88, 148, 102, 161, 195, 251,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 58, 127,  24, 168, 215, 144,  25,  56, 253,  90,  87, 149,  39, 219, 161, 105
	.byte	 72,  48,  46, 161,  85, 164, 108,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 60,  91, 137, 224,  30,  79, 202,  94,  75, 192,  53,  75,  87, 107,  17,  35
	.byte	 90, 148, 215,  60, 228, 217, 122, 182,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	192,  82, 212, 124, 101,  45,  82, 226, 197, 213,  52, 231,  97, 167, 136, 148
	.byte	 38,  14,  29, 147, 116, 106, 123, 202,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	214, 108,  10, 175,  98, 169,  75, 161,  56,  69, 130, 182,  50,   0, 121,  93
	.byte	173, 163, 237, 248, 174,  90, 142, 132,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 65, 115,  23,  49, 112, 127,  55, 104,  70,  75,  39, 245, 190, 208, 209,   6
	.byte	130,  89,  23,  81, 188, 242, 174, 168,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143, 168, 101, 124, 120,  40, 214,  77, 106, 125,  92,  42, 126, 181,  13, 240
	.byte	112, 224, 197, 236, 144,  53,  46,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 95,   8,  97, 223, 173, 148,  35, 237, 217, 192, 160,  31, 222, 148,   6,  57
	.byte	156, 191, 190,  94, 106, 101,  14,  82,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	239,  26, 220,  43, 235, 133,  89,  70,  80, 250,  13, 114, 125,  47,  76, 127
	.byte	 63,  98, 186, 178, 236,  25, 187,  24,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 21, 248,  37, 158,  70,  59, 129, 157, 152, 175, 252, 230, 131,  77, 113, 174
	.byte	151,  28,  67, 126,  22,  65, 174, 210,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11, 122,  69,  16, 218, 167,  99, 148, 147,   1, 138, 126,  54, 233,  73, 185
	.byte	 64,  37, 239, 160, 125,  86, 143, 103,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	215,  30, 134, 130, 244,   1, 237, 130,  57,  60,  68, 240, 128, 135,  23,  43
	.byte	212, 212,  91,   9, 111, 184, 162,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	182,  84, 198, 129, 171, 206,  62, 220,  22, 134,  82,   2, 244,  28, 228, 162
	.byte	141, 208,   6,  73,  74, 217, 122, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	196, 253, 205, 249, 223, 252,   1, 156, 139,  61,  15, 107,   7, 180,  39, 221
	.byte	189, 148, 156, 242,  84, 207,  58,  48,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 87,  55, 156, 122,  23, 181,  72, 239, 173, 252, 227, 183,  57,  26,  75, 196
	.byte	 91,  48, 227, 190, 145,  37,   9, 128,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50,  86,  37,  79, 163,  57, 194,   3,   8,  93, 205, 235, 250,  76, 192, 178
	.byte	209, 243,  79,  47,  45,  37, 211, 176,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 58, 245, 173, 193,   3, 203,  69, 104,  97, 254,  18,  75, 174, 242, 115, 239
	.byte	 91, 126,  69,  25, 226, 163, 134, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 46,  95, 185,  76, 247,  49,  62, 183, 236, 173,   7,  77,  50,  67, 150, 166
	.byte	207, 251,   1, 164, 222,  66,  55, 109,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 12,  15, 180, 177, 196, 168, 166, 200,  41,   8, 174, 170, 121, 238, 142,   4
	.byte	 21, 113, 105, 133, 147,  45, 175, 198,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 89, 226, 250, 248, 151, 237, 172,  52,   7, 107, 146,  37,  37,  33, 135, 145
	.byte	171,  69, 179, 192, 178,  60, 172, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 41,  27, 238, 176, 188, 120, 242, 250, 202, 200, 103, 195, 211,  90,  75, 194
	.byte	193,  66, 144,  34,   9,  37, 175,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	187, 109, 105, 202, 207,  24,  32, 148, 231,  77, 250,  12,  60,  31, 218,  15
	.byte	197,  29,  94, 243, 114,   2, 159, 118,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	128, 162, 125,  49, 135,  96,  92,  58,  75,  45, 206, 133, 113,  49,  76,  38
	.byte	 86,  21, 158,  45, 170, 236,  75,  97,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  7,  20, 170, 118,  50,  59, 149,  26,   9, 234,  83, 187, 213,  99, 249,  47
	.byte	169, 238,  43, 106, 167, 117,  66,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 91, 134, 193, 153, 102, 155, 139, 234,  36, 134, 153,  74, 196, 131, 147,  94
	.byte	 61,  29,  95,  76, 248, 153, 203,  93,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	207, 220,  84,  12, 110, 178,  73,  71,  74, 155,  89, 232, 215,   1,  30, 129
	.byte	 49,  78,  32, 160,  95,  19, 203, 245,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5, 210, 148,  53, 235, 189, 159, 236,  78,  63,  24,  37, 198, 234, 110, 118
	.byte	 72,   8, 247, 250, 225, 120,  34, 241,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	230,   9, 165, 220, 218, 185,  12, 101, 210, 181,  39,  40,  65,   4,  38, 203
	.byte	  5, 229, 235,  23,  50, 204, 124, 155,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248,  45,  28, 213,  24, 218, 165, 166, 197, 135,  78, 234, 226, 149, 186, 180
	.byte	134,  61, 115, 175,  93, 218,  26, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 62,  10, 157,  93, 150,  76,  17, 177,  98, 162, 143, 214, 171, 223, 205, 224
	.byte	 68, 116, 208, 169, 147,   6,  43,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 64, 101,  58,   1, 210,  62, 116,  32, 139, 113, 237,  39, 175,  47,  45, 252
	.byte	252, 116,  60, 248, 154, 172,  33, 252,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	208, 199, 251,  88,  77, 148, 116, 250, 145,  77,  37, 114, 222, 145, 250,  62
	.byte	147, 165, 169, 106,  59,  51, 206,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 49,  10, 169, 243,  47,  76,  97, 159,  98, 136, 156,  54,   4,  48, 166, 162
	.byte	225, 118, 237, 229, 126, 194, 161, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	181, 127, 120,  32, 253, 236, 236,  32, 147, 140, 238,  26,  87, 253,  38, 108
	.byte	 54, 154,  95, 205, 103, 105, 165, 197,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	255, 193, 192, 232, 117,  49, 228, 215, 144, 157, 218, 117, 137,  97,   0, 196
	.byte	  9, 112, 163, 103, 109, 113, 147, 217,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	178, 237, 202, 249, 140, 176, 188, 138, 105,  24, 221, 108,  25, 217, 236, 211
	.byte	237, 207, 178, 242, 120,  41, 142, 251,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	110, 174, 150, 184, 137, 167,  86, 161, 105, 110,  96, 115,  11, 166,  93,  37
	.byte	 86,   0,  52, 131,  94,   6,  26, 225,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 25,  63, 254, 158, 122,  57,  21, 224, 223,  86, 111, 129, 222, 219,  88, 228
	.byte	 95, 206,  32, 170, 168, 124, 193,  93,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 83, 188,  13, 107, 172,  49, 191,  49, 180, 123,  83,  55,  61,  96, 102, 194
	.byte	217,  28,  62,  91,  63, 251, 174,  50,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140, 101, 120, 193, 147,  44,  98,  12, 188, 248, 225, 186,  80, 138, 170, 197
	.byte	204,  37, 170,  58,  94, 146, 220, 129,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 75, 238,  19, 119, 229, 133,   0, 242, 107, 253,  45, 224, 219, 204, 215,  78
	.byte	 57,  72,  14, 158, 248, 193, 129, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111, 185,  31, 103,  48, 243, 221, 123,  87,  76,   8,  27, 185, 175, 117, 113
	.byte	139,  95,  39,  90, 149, 183,  44, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240, 100,  65,  54, 238,   3, 151,  67, 207, 192,  73,  41, 104,  48,  94,  76
	.byte	  0,  56, 177, 179, 225,  50, 255,  36,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 34,  41,  73, 249, 108, 237,  52, 204, 101,  33,  19, 220, 153, 211,  59,  65
	.byte	 16,  80, 213,  65, 182,  61, 121, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43, 224, 116, 237,  17,  83,  78, 217,  42, 214, 232,   4, 241, 218, 206, 244
	.byte	116, 130, 151, 167,  36, 178, 191, 162,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 59, 247,  93, 213,  49,  13, 115, 183,  93,  95,  73, 110,  19,  77,  52, 163
	.byte	162, 219, 141,  44, 243, 207,  67,  71,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118,  23, 152, 204, 187,  30,  49, 209, 102, 219,  84, 234,  49, 162,  68, 223
	.byte	185,  94, 246, 126,  68,  40, 229, 228,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63,  33, 127, 181, 105,  62, 112, 212, 103, 210,  42, 218, 210, 244,  11,  84
	.byte	236,   9,  37, 250,   9, 129, 135, 161,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 15,  70, 220,  35, 146, 173,  94,  81,  47, 151, 244,   4, 114, 101,  50,  46
	.byte	 16, 148, 177,  75,  96, 241,  88,  52,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 45, 215,  44, 106, 112, 123, 123, 243,  80, 105,  60,  89,  23, 154, 140,   6
	.byte	  2,  36, 236,  83,  33, 155, 150,  20,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	218, 122,  70,  52,  68, 112, 129,  25, 208,   3,  52, 186, 191, 149, 114, 145
	.byte	114, 165, 235, 196,  90,  19, 117, 149,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	117,  68,  36, 101, 247, 117, 172, 218,  22, 164,  52, 162, 227,  74,  76,  19
	.byte	118, 178, 229, 190, 255, 108, 119, 192,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179,  51, 133, 183, 234, 213,  46,  33,  74, 165,  27, 200,  80,  88,  42,  97
	.byte	103, 230, 210,  11,  18,  43,  72,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67, 124, 156,  80, 201, 119, 161,   5, 189, 180,  73, 234,  58, 228,  84, 206
	.byte	127,  81,   3, 205,  44, 150, 109, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  7, 243, 126, 177,  48, 145, 180, 245, 107, 137,  71,  78,  47, 221, 228,  72
	.byte	121,   9, 119,  31,  38,  70, 251, 168,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	138,  98, 211,  37, 149,  68, 248, 172,  61, 235, 229, 214, 119,  20, 236, 123
	.byte	 76, 181, 163, 161, 168, 214, 235, 233,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 49, 208, 178, 196,   2, 109, 113,  38, 182, 130, 212, 108,  15, 216,  41, 250
	.byte	141, 234,   3, 140, 240, 198,  50,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103, 125, 143,  27, 239, 101,  51, 137, 179,  85, 199,  13,  56,  99, 126, 104
	.byte	246, 125, 153,  29, 190, 124, 234, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43, 223, 169, 231, 240, 220, 223, 205,  22,  60,   9, 198,  36, 236, 230, 224
	.byte	242,  13,   6, 151,  33,  47, 196, 121,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16, 167, 249, 211, 145,  43, 151, 176, 148, 184, 240, 247, 194,  38,  55,  42
	.byte	195, 168,  18,   0,  84,  69, 240, 244,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	150, 219, 253, 159, 184,  51,  55, 133, 207, 246, 236, 108,  29, 119, 206, 167
	.byte	193,  16, 103,   7,   4, 139, 247,   7,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 232, 152, 203, 106, 234, 218,  22,  41, 227, 104,  18, 173, 112, 205, 152
	.byte	130, 149, 238,  62,  43,  83, 124, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175, 149,   5,  62, 132, 183,  25, 197, 181, 224,  97,  42,  61,  35, 228, 208
	.byte	 77, 255, 209,  25,  39, 101, 171,  41,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  7,  98, 220, 201, 150, 247, 226, 210, 227, 228,  67, 189, 153, 248,  53, 238
	.byte	119,  65, 183,  81, 158, 203, 255,  57,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121, 118,  63, 234, 118, 106, 205,  59, 164, 252,  33, 193, 231,  82,  63,  97
	.byte	100, 150, 142,  84, 240, 181, 177, 187,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	224, 195,  30,  97,  46, 166,  44, 159,  60, 119,  69, 236, 117, 253, 241,  45
	.byte	239, 100, 161,  98, 243, 217, 246,  80,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	217, 236, 185, 194,  54,  19, 151,  66, 215,  79,  16, 204, 123,  27, 102, 155
	.byte	236, 107,  80, 212, 248,  20, 120,  50,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 90, 171,  27, 156, 144, 138, 130,   8, 247,  22, 177, 147, 179,  91,  88, 235
	.byte	 47,   8,  70, 106, 249, 101, 152, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131, 240,  74, 231, 166, 240, 153, 128, 212, 123,  21, 203, 102, 174, 221, 107
	.byte	187, 115,  22, 199, 231, 127, 156, 242,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  3,   4, 234, 245,  98, 219, 120, 255,  84, 173, 110,  18,  46, 178,  85, 170
	.byte	 73,  27,  83,  46, 181, 170, 220, 194,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240,  87, 205,  67,  25, 239,  45, 133,  31,  74, 149, 248, 246, 225, 169,  64
	.byte	204, 219, 161, 132, 108,  97, 161, 247,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	114,  77,   8,  44, 146, 206, 188, 244, 115, 237,  66,  93, 213,  21, 143,  11
	.byte	210, 136, 125, 133, 106, 248, 160, 241,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	127, 183, 218,  99,  84, 189,  45, 225, 187,  18,  72,  65,  31, 211,  19, 213
	.byte	162, 197,  53, 165, 139, 176, 115,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	252,  27, 223,  19,  31, 176, 233, 142,   5, 104, 129,  67,   1,  17, 235, 163
	.byte	 48,   7, 216, 244, 153,  77, 244, 148,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	100, 166, 144, 151, 192, 226, 146,   1, 104, 115,  93, 119,  34,  56, 118,  62
	.byte	246, 121,   3, 235,  20,  82,   6, 253,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	141, 225, 203,  20,  70, 173, 172, 109,  54,  91, 233, 231,  25,  90, 104, 117
	.byte	109, 159,  86,  31, 143,  45, 193, 234,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175,  21,  40, 128,  54,  21,  48, 182, 199, 216,  67, 171, 227, 114,  98,  71
	.byte	165, 164, 209, 176, 223, 130, 219, 127,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 85, 119,  34,  48,  68, 135,  35,  63,  86, 217, 143,  31,  59, 143,  56,  22
	.byte	237, 126,  33, 161, 183, 136, 210, 180,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 71, 218, 222, 150, 252,  64,   4,  19,  41, 250, 251,  90,  44,  93,  66, 186
	.byte	 15,  21,  38, 195,  26, 150, 166,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122,  69, 224, 254,  47, 203,   1,  31,  49,  15,  29, 118, 105,  69, 144, 230
	.byte	168, 119, 147, 137, 162, 241, 253,  54,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 48, 198, 117, 163,  76,  50,  33, 169, 227, 198,  95, 216, 212,  17, 156, 115
	.byte	216, 198, 156,  31, 170, 119, 107, 178,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	127, 254,  68, 220, 160,  71, 187, 232,  48, 210,  50,  46,  11, 122,  33, 241
	.byte	198, 109,  99,  98, 131,  90,   2, 150,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191,  28, 164, 217,   6,  99, 105,  42, 163,  38, 255, 202, 172, 114, 140,  79
	.byte	242,  60,  43, 124,  75, 140, 167,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	251, 161,  15,  77, 253, 149, 209, 227,  73, 217,  41, 204, 118,   6, 202,  26
	.byte	125, 222, 166, 206,  18,  65, 175, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 23, 111, 227, 243, 164,  10, 230,  29, 126, 103, 211, 182, 101, 164, 106,   5
	.byte	104, 198, 224,  28,  78,  81, 120, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 21,  89, 100,  50, 141, 230, 229, 216,  34, 123, 174, 122,  53, 146, 203, 113
	.byte	 85, 245,  11,  18, 194, 169, 146,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 30,  52,  54, 248, 189, 248, 177, 238, 107,  98,  20, 202, 119, 181, 252, 176
	.byte	109, 212, 195, 178, 130,   1,  36, 254,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 58, 244,  11, 254,   3,  28, 235, 198,  55, 191, 234,  30,  95, 156, 135,  15
	.byte	183,  94,  72,  19,  49,   6, 245,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 93, 221, 146, 125, 251, 114, 167, 170, 240, 128, 248, 169, 194,   8,  22, 174
	.byte	209,  82,  29, 138, 115, 106, 117, 162,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 27,   3, 152,  84, 219,   3, 124, 135, 182,  20,  46, 186, 251,  18, 178, 240
	.byte	189, 135,  16, 243,  14,  25,  46, 150,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103,   5, 214,  24,   5, 102, 124,   2, 157, 100, 178, 182,  33,  56,  10, 128
	.byte	250, 206,  53, 126, 209,  56, 178, 195,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	232, 188, 254,  67, 233, 229,  67,  41, 186, 174,  32, 137, 217, 115,  27,  57
	.byte	242, 148,  11, 143,  41, 229, 200, 130,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 62, 119, 106, 214, 116, 109,  59,  58,  40,  39,  71,  31, 209, 122,  78,  57
	.byte	 65,  83, 234, 178,  41,  60,  37, 132,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	245, 129,  88,  32, 156,  88,  52, 108,  82,  93, 108, 188,  66,  27,  77, 138
	.byte	 58, 111, 126, 233, 247, 125, 193, 165,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188, 252,  14, 165, 253, 130,  68,  92, 142,  71, 199, 145,  26, 239,  63,  99
	.byte	199, 149, 194, 159, 208, 114,  74,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 218, 199,  81, 170, 185,  88,  40,   3, 235, 129, 244,  19, 203,  82,  95
	.byte	250, 173, 125, 191, 215,  22, 220, 193,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102, 122,  44,  25, 208,  11, 207,  45, 148,   6, 241,  96, 151, 189,  18, 112
	.byte	189,  22,  99, 177,  58,  35, 117,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	139,  23, 155,  42,  77, 179, 138, 197,  48,  71, 169,  19,   5,  18,  77,  79
	.byte	 51, 133,  56, 221, 108, 155,  66,  24,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 80, 106, 183, 233,  44,  73,  85,  42, 149, 144,  59, 110,  58, 215, 126, 197
	.byte	 48, 126,  51, 142, 231, 173,   9, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50, 119,  95, 226, 133, 125, 224, 161,  96,  53, 124,  68,  57,   8,  37,  86
	.byte	 61, 186, 166,  33, 250, 213,  66,  40,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143, 152,  96, 206,  32, 196, 114, 151,  29, 240, 198, 124,  61, 200,  90, 146
	.byte	144,  50, 192, 199, 103,  73, 247, 218,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175, 180, 159,  86, 108, 104, 136, 235,  49, 120,  35, 141, 206, 185, 224,  55
	.byte	156,  22,  41,  19, 154, 233, 133, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	238, 147,  63,  89,  72,   6,   9, 183,  15, 227, 171, 107,  85,  52, 246, 250
	.byte	139, 214,  72, 124, 200, 115, 158,  19,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98, 112,  39, 153, 232,  64, 214, 242,  37,  37,  13,  81, 215, 242,  55, 156
	.byte	175,  22, 198, 251,  28,  43,  37, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123, 195,  39, 210, 149, 161,   5, 195, 108,  67, 204, 100,  72, 214, 154,  64
	.byte	209, 143,  86, 109, 218, 240, 181, 167,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 13, 123,  37, 168,   6,  60, 116,   4, 243, 200,  25,  54, 104,  96, 132, 252
	.byte	 63,  84, 224, 155, 149,  40,  41,  75,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	157, 212, 201,  54,  27,   9,  45,  52,  99, 184,   5, 141, 143, 135, 171,  45
	.byte	217, 103,  96,   3, 190,  33,  13,  36,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5,  81, 214,  78,   1, 103,  48,  63, 215, 204,  37,  14, 137, 152,  88,  31
	.byte	150,   6,  31,  19,  34, 224,  63, 201,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 93, 134, 109, 155,  52,  89,  85, 108,  62, 191,  68, 115, 245, 228, 179, 236
	.byte	 82, 166,  68, 245, 158, 224, 186, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 51,  32,  30,   0, 195, 171, 161, 192, 242,  85, 192,  74,  73,  15,  36, 168
	.byte	 98, 235, 151,  85,  51,  51,   2, 192,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 68, 220, 197,  32,  75, 156, 122, 254,  37, 255, 127, 222, 213,  41,  31, 230
	.byte	131,  56, 118, 239, 127, 120, 229, 191,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105,  93,  34, 243,  75, 230, 189, 138,  27,  54, 129,  80,  78, 172,  42,  67
	.byte	 61, 108, 138, 160,  13, 160,  83, 126,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102, 180, 218, 229,  62,  72, 232, 217, 109, 114, 252, 187,   6, 218,  58,   9
	.byte	200,  59,  16, 232, 122, 246,  52, 168,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 35,  50, 247, 102,  21,  85, 199, 187, 155, 225, 142, 198,   5, 117,  17,  38
	.byte	228, 139, 174,  33,  36,  14, 226, 109,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	178,  86, 158, 232, 118,  33,  77,  42, 134,  25, 109, 101,  20, 195, 200, 226
	.byte	101, 197, 229, 179, 184,  97, 152, 244,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	112,  41, 128, 213,   3, 125, 134,  61, 199,  94,  97,  56,  22,  39, 138, 100
	.byte	  5,   4, 168, 213, 236, 168, 140,  22,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	253, 136, 119,  39, 245,  37, 126,  48,  75, 209, 171,  27, 116, 244,   0, 242
	.byte	158, 116,  46, 203, 161,  94, 125, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	139, 148,  20, 146, 160, 130,  81, 203, 110, 151,  12, 140,  29, 124, 243,   9
	.byte	 82,  96, 220,  24,  20,  67,  51,  37,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	164, 145, 198, 247, 205, 239, 230, 171, 114, 172,  85, 188, 183,  36,  75, 205
	.byte	 81, 166, 106, 137,  80, 231, 137,  32,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149,  76,  66,  10, 251, 154, 171,  20,  22, 193, 190, 147,  93, 145,  10,  53
	.byte	234,  52, 170, 231, 157, 121, 247, 190,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 47,  95, 240, 164, 219, 122,  47, 195, 132, 167, 155, 112,  34,  28, 184,  65
	.byte	242,  89, 244, 179,  33, 109,  88,  42,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	246, 249, 121,  95,  53, 105, 226, 164, 200, 185, 251, 118,   8, 177, 180, 251
	.byte	147, 124, 111, 150, 196, 226, 136,   2,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	107, 234,  14, 192, 135, 204,  72,  79, 139,  38, 239,  41,  19, 236, 172, 231
	.byte	154,   9, 255, 195, 243,  26, 138, 210,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	243, 227, 134, 247, 172, 120, 251, 137, 122,   6, 122,   4, 150, 177,  71,  49
	.byte	157,  48,  25, 201, 147, 217,  81,  34,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11, 222, 117,  82,  17, 255, 151, 226,  80, 157,  48, 170, 144,  40, 229,  98
	.byte	119,  60, 170, 115, 233,  11, 124, 215,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	158, 110,  80, 237, 178, 116, 202,  29, 163, 147, 141,  68, 213, 141, 233, 206
	.byte	212,  10, 254, 132,   4,  56, 211,  31,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	114, 191, 214, 221, 218, 152,  99, 145,  13,  19, 126, 237,  90, 119, 142,  40
	.byte	102, 160,  97,  58, 125, 213, 160,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	243,  13,  46,  43,  17,  58, 123, 249,   2, 235, 112, 230, 128,  29,  98, 242
	.byte	 69,  40, 156, 201,  50, 241, 114,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	138,  57,  23, 151,   4, 157, 100,   7,  94, 192,  17,  34, 122, 141, 108,  91
	.byte	177, 110, 230, 252,   0, 214,  71,  40,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76,  41, 155,  33, 209, 192,  15, 210,  72,  63,  33, 123,  51,   3, 117,  65
	.byte	248,  21,  20, 135, 212,  88, 221, 131,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	145, 163, 197, 189, 192, 254,  63, 197, 126, 250,  89,  18, 216, 155, 250,  19
	.byte	209,  62, 193,  29,  41, 182, 200,  20,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	245, 234, 244, 102, 161, 100,  25, 219,  74, 203,  43,  32,  63, 235, 149, 238
	.byte	211, 187,  62, 249, 168,  20,  37, 174,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	214,  15, 178, 154,  33,  87,  10,  73,  93,  72, 187, 143,  69, 245, 194, 205
	.byte	195, 224, 190,  45, 109, 209, 178, 107,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105,   5, 222, 164,  66,  27, 124, 146, 116, 102,  10,  29, 122,   8, 103, 122
	.byte	224, 144,  35,  15, 121, 113, 143, 250,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 49, 203, 131, 123,  62,  28,  50, 120,  19,  92,  63, 169,  21, 143, 207, 241
	.byte	  0, 218, 205, 187,  99,  15, 197, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	237, 162, 255, 226,  11,  82, 187, 152, 230,  27, 160,   4,  23, 154,  78, 117
	.byte	 23, 168, 126,  88,  67,   0,  77,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227,  90,  76, 104,  35,   8, 242,  57,  63, 133,  22, 230,  90, 203, 120, 202
	.byte	204, 126, 160, 186, 104,  78, 200,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 21, 204,  70, 218, 242, 184, 194, 207,  74, 171, 168,  81, 121,   6,  49, 185
	.byte	 86,  39,  10,  32, 155, 122, 199,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101,  14, 202, 214, 207, 187, 239,  62, 140, 155, 153, 208,  11, 148,  84, 137
	.byte	183, 155,  88, 144, 231,  54,  92, 232,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	154,  68, 226, 204, 176, 186,  61, 208,  17, 151, 242,   9, 105, 101,  18, 113
	.byte	 73, 132, 134, 253,  94,   0, 104, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0, 194,  46, 150, 189, 253, 160, 153, 243,  40, 164, 101, 219, 188,  35,  95
	.byte	 72, 111, 214,  55,  14, 165, 229, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143, 200, 140, 150, 150, 214,  53,  75,   8, 113,  69,   2,  21, 104,  22, 105
	.byte	161,  44,  41,  52,   7,  98,   7, 209,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	108,  59,  91, 190, 117,  91,   5, 164,  91, 171, 250, 116, 169, 223, 221,  96
	.byte	224, 254, 236,  78, 138,   0, 223, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247,  50,  98, 170, 222, 158,  89, 237, 140, 115, 132,  18, 147,  92, 118, 115
	.byte	179, 145,  72, 216, 184, 255,   3,  13,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82, 157, 177,  55, 165,  42,  60, 151, 102, 117, 209, 110, 114,  19,  18, 204
	.byte	182, 183,  67,  94, 109, 221, 194,  67,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	106, 145, 216, 231,  81,  77,   8,  13, 150,  15, 111, 143,  68, 132,  84, 252
	.byte	132,  94, 169, 179,  96, 219,  36, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	125, 168, 103,  31, 119, 122, 141, 118,  40, 217, 106,  10,  38, 142,  30,  76
	.byte	221, 156,  76, 252, 153, 152, 181,  75,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 90, 164, 194, 220, 164, 185, 215, 104,  21, 224, 123,   8, 230, 120,  83, 166
	.byte	157, 178,  94, 207, 116, 196, 254, 235,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76, 156, 165, 204, 168,  28,  15, 248,  72,  57, 133, 116,  94,  31, 157, 230
	.byte	228,  87, 192,  95, 156, 240,   5,  44,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	155, 125,  64, 121, 163, 140, 240,  12, 219, 159,  22, 181,  42, 149, 106, 135
	.byte	 57,  41, 175, 183, 202, 137, 139,   3,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236,  60, 205,  70, 128,   7,  12, 129,   9, 217, 228, 198, 152,  94, 104,  44
	.byte	255, 233, 168, 200, 127, 136, 118, 149,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147,  12,   1, 172,  22,  91,  27,  73, 145, 240, 104,  79, 106, 141, 216,  71
	.byte	101, 140, 135, 239, 234, 120,  38,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67, 211, 205, 168, 217,  99,  52, 140, 144, 155, 147, 180,   9,  57, 126, 234
	.byte	217, 181, 145, 245, 144, 112, 137, 104,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	163,  82, 107, 175, 213, 221, 254,  16, 170, 152,  81, 124, 188, 228,  13, 119
	.byte	  6, 128,  44,  11,  52,  30,  35, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 39, 207, 177,  40, 151,  52,  16,  16, 126,   9,  42, 181, 195, 189,  26,  83
	.byte	 71, 138, 241, 199,  76, 110, 252, 161,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 13,  80,  72, 250, 133, 159,  63, 255, 203, 114, 128, 214, 198,  34, 245,  42
	.byte	255, 177,  49,  13, 212, 238, 240, 202,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5, 179, 167, 137, 118, 102, 127,  70, 202,  43, 206,  23,  12, 244, 119, 130
	.byte	 81,  25,  91, 106, 193, 182, 140, 103,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 110, 143,  68,  38, 188,  19, 243, 245, 237, 226, 162, 254, 217,  94, 122
	.byte	 98,   5,  63, 104, 189, 140,  20, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235, 243,  37, 104,  71,  55,  66, 194,  37, 226, 133,   1,  64, 192, 132, 147
	.byte	152, 145,  54, 242, 137,  29, 209, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172, 208, 178, 100, 178,   3,  87,  42, 138,  67,  61, 208, 140, 220, 218,  58
	.byte	 57,  39, 162, 132, 184, 211, 116,  95,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	182, 159,   5, 189, 123, 191,  47,  30,  41,  93, 139, 100,  45, 254, 198, 249
	.byte	220, 115, 124,  74, 158, 190, 195, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	184, 122,  62,  62,  75, 204,  53, 179,  82, 167,  47, 203, 139, 124, 142, 215
	.byte	 84, 124, 172, 209, 171,  28, 203, 253,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 73,   4, 190, 225,  16,  55,  76, 152,  34, 192, 223, 241, 219,  52, 111, 166
	.byte	138,  70,  25,  20,  33,   0,  63,  18,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 53, 226, 128,  30,  11,  80, 191, 253, 189,  25, 105, 238, 186,  79, 215, 184
	.byte	127, 186,  19,  32, 135, 193, 199, 160,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 53, 207, 141, 208,  95,  16, 243, 239,  56, 236, 127, 147, 243, 108, 161,  76
	.byte	125,  95,  92, 212,  28,  46,   8,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	155,  81,  55, 117, 230, 157, 120, 112, 136, 229,  51, 215, 135, 129, 184, 131
	.byte	 73,  90, 111, 147,  90, 187,  93, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 73,  96,   8, 178, 120,  89,  91, 244, 164, 152, 127, 251,  57, 200, 144, 208
	.byte	 28,  75,   4, 131,  29, 151, 188,   9,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	165, 238, 118,  44, 126, 111, 109,  83,  61, 160, 129, 213, 139, 211, 157,  27
	.byte	189, 255, 131,  79, 139, 218,  32, 172,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	213,  66, 215,  61,  26,   5, 103, 175,   7,  54, 178, 120, 128, 248,  73, 222
	.byte	133, 129,  89,  27, 239, 199, 158, 102,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 83, 254,  35,  51,  80, 197, 130,  95, 107, 124,  31, 201,  85, 237, 254,  82
	.byte	 46, 166, 141,  88, 239,  41,  18, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 170, 125,  92,  94, 212, 154,  45,  72,  36,  66, 234,  89, 239,   8, 178
	.byte	162, 164,  88,  25, 116, 207,  65, 147,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	119, 196,  60, 205,  94,  66, 213,  62,  80,  23,  44, 156,   3, 134, 214,  60
	.byte	125,  56,  66,  40, 154,   8,  68,  50,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 232, 150,   2, 155,  76, 141, 138,   8,  85, 125, 121, 153, 158, 157, 180
	.byte	177, 182, 197,  52, 231, 119, 201,  73,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	180,  36, 220, 113, 165, 233,  36, 159, 170, 228, 245,  62,  57,  39, 208,  53
	.byte	171, 243, 198, 104,  38, 103,  81,  32,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	237, 104,  70, 251, 104, 136, 244, 207, 153,  19, 208, 183,  49, 101, 120, 126
	.byte	146, 232,  86,  68, 214, 192, 165, 209,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  1, 209, 222, 106,  31,  82, 142,  83, 219,  97, 251, 110, 233, 133, 108,  22
	.byte	155, 140,  13, 212,  52, 118,  51,  34,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 19,  46, 241, 216, 186, 116,  84,  84, 188,   5,  52, 183,   1, 127,   3,  54
	.byte	178,  90, 218,  49, 194, 124,  41,  84,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	120, 179, 125,  31, 164, 110, 203,  10,  64, 121, 119, 196, 152, 159, 235,  65
	.byte	138, 222, 226,  35,  69, 252, 102,  86,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236, 126, 239, 124, 166,  57, 104,  92,  97, 155, 188, 231, 196, 106, 254, 218
	.byte	125, 211, 160,  47,  72,  64, 253, 250,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67,  31, 243,  26, 151, 119, 155, 209, 105,  53, 105,  24,  96, 140, 220,  87
	.byte	159,  52, 146, 117,  73,  59, 125,   7,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115,  53, 148,  45,  89,  11,  65,  60, 169, 248, 220,  52, 237, 123, 235, 201
	.byte	159, 226,  69,  79, 147,   5,  58,  17,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	158,  41, 141,   0, 170, 224, 184,  48, 195,  52, 242,  91,  31, 173, 150,  15
	.byte	  4, 243, 124,  38, 165, 147,  93, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 44,  43, 176, 175, 133,  57,  80,  24,  96, 114,  61, 139, 165, 219, 167,  40
	.byte	 97, 192, 220, 140, 128,  82,   2, 157,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	110, 159, 136, 100, 186,  69, 115,  18, 173,  80, 134,  41,  94, 102, 170,  94
	.byte	 95, 161,  53,  53, 147, 254, 143, 204,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63, 217,  62, 144,  33,  56,  74, 147, 232,   1,  37,  75,  36, 180,  38,  12
	.byte	 81, 165, 247,  80,  81,  40, 228, 147,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 53,  57, 240,  35,   8, 222,  33, 112, 202, 131, 194, 116,  80,   5, 220, 202
	.byte	 13,  65, 198, 195,  18,  79, 123,   2,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126,  58,  72,  61,  92,  11,  81, 230,  41,  16, 113, 251, 131, 198, 125, 112
	.byte	160, 159, 173, 174,  16, 234, 222,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	133,  94, 145, 131, 169, 210, 204,   6,  57,  46,  91, 173,  81,  88, 226,  46
	.byte	245,  43, 159, 253, 148,  18, 210, 167,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 13,  48,  96, 223,  35, 149, 242,  54, 144, 236, 156, 168, 213,  63,  57, 242
	.byte	 14, 209,  84, 203,  30,   0,  37,  98,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101,  75,  70, 213, 146,  38,  75, 121,  71, 211,  46, 197, 236, 126,   4,  22
	.byte	 52, 233,  27, 135, 156, 161,  68, 193,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	246,  33, 163,  97, 152, 196,   6,  74,  11, 194, 154, 124, 108, 223, 167, 199
	.byte	 96,  39,  86, 101,  13, 155, 172, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202, 100,  21,  34, 116,  41,  58,  35, 222, 189,   0, 120, 206, 205,  68, 218
	.byte	 32,  67, 139,   6,  13, 143,  14, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 61,  65, 179, 130, 157, 163,  69,  81,  49,  79,  96, 155,  83,  27, 134,  25
	.byte	156, 228,  13, 241, 225,  62,  96, 197,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216, 224,  76, 104, 252, 217,  54, 241,  92, 125,   5, 110,  76,  70, 243, 167
	.byte	 48, 156, 122, 116, 161, 171,  14, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147,  42, 201, 135, 164, 241, 206, 217,  49,  77, 135, 133,   4, 229, 159, 219
	.byte	110, 176, 117, 115, 149, 143,   8, 253,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	203, 198, 216, 246,  48, 240, 247, 183,  83,  80,  11, 199, 184, 253, 127, 127
	.byte	230, 252, 125,  13, 187, 121, 159,  78,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	229, 173, 251, 218, 132, 250,  94, 151, 241, 233, 201,  30, 115, 140,  21, 109
	.byte	133, 164, 167, 123, 130, 227, 203,  79,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	114, 133, 130, 176, 105,   8, 173, 150,  22, 111,  26, 200, 137, 242, 132, 205
	.byte	212,  36,  88,  36, 142, 254,  72,  67,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101,   2,  45, 105, 191,  11,  49, 117, 152,  28,  22,  31, 182, 163, 185,  62
	.byte	224,  60,  69,  17,  33, 151,  16, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	246, 129,  91,  97,  67,  42, 232, 197, 147,  56, 198,  68, 108, 130, 166, 185
	.byte	134, 160, 157,  44, 245,  74, 240, 102,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 27,  40,   7, 232, 114,   2, 172,  39, 103,  72,  74,  58,  10, 180,  74,  17
	.byte	145, 233,  36,  54,   8,  73,  85, 237,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16,  67, 187, 107, 123, 193,  61,  72, 114, 111, 189,   2, 106, 204, 226, 113
	.byte	167, 120,  48, 212, 245,  75, 125,  74,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 57, 168,  56,  21,  69, 239, 110,  99, 117,  72,  60, 172,  23,  43, 176,  44
	.byte	132,  15,  24,  90,  84,  20,  69, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	237,  89, 251, 127,  70,  16, 191, 249,  56, 179,  10,  84, 108,   5, 170, 129
	.byte	226,  20,  16, 191,  19, 116, 177, 167,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84, 149, 232, 152, 187, 249,  45, 246,  47,   3,  49,  59, 162, 181, 240,  17
	.byte	172,  58, 152, 238, 205,  92,  63, 221,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	195,  76,  46, 198, 138, 205, 148, 241, 108, 188, 203, 114, 132, 187, 150, 225
	.byte	130, 138, 199, 229, 153, 233,  97, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 12, 208, 201,  75,  67, 207, 153,   1, 237, 114,  70,  79,  95, 206, 157, 177
	.byte	 78, 135, 156,  67,  57, 129, 215, 154,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	224, 184, 106,  21,  96, 192, 247,  53, 199,  90, 106,  70, 203, 208, 215, 112
	.byte	 59,  80, 165, 231, 215,   2,  92, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  1,   7,  68, 180, 163,  64, 247,  58, 194, 238,   9, 235, 180, 135,  68, 161
	.byte	183, 169, 130,   1,  41,  80, 163, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 27, 114,  82, 160,  88,  75, 174,  89,  21, 142,  82, 127,  47, 241, 222, 229
	.byte	131,  97, 220, 192, 201, 181,  85, 216,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123, 156,  44,  22,  94, 170,  33, 230,  34,   0, 187,  11, 196,  32,  57, 229
	.byte	135, 216, 192, 102, 102, 216,   6,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153, 220, 115, 237,  69,  17,  63,  95, 170, 143, 254,   0, 169, 156, 237,  33
	.byte	134,  46,  74, 144,   8,  25, 180, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	117, 164, 232, 163, 137, 107,  27, 237,   7,   7,  11,  89,  12,  51, 228, 245
	.byte	227, 243,  41, 109, 137,  75, 221,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 70,  29, 226,  61, 119, 190,  15, 203, 117, 229, 162, 179, 188, 127,  32,  14
	.byte	 48, 120,  40, 108, 232,  48, 104, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235, 205, 158, 225, 113,  86,  74, 131, 241, 167, 102,  42, 209,  88,  12, 106
	.byte	138,  19, 219,   2, 113, 176,  67,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247, 150,  34, 109, 172, 234, 211, 145, 190,  92, 245,   6,  18, 204, 110,  71
	.byte	129, 120,  65, 204, 139,   9, 248,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 97,   2, 122, 137, 216, 214, 148, 170, 255,  29, 250, 253,   0,  28, 237, 236
	.byte	225,  31, 235, 110, 202, 150,  37,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 81,  86, 137,  32,   2,   8,  90, 248, 113, 191, 152, 191, 237,  56, 225, 111
	.byte	210, 142, 232,  13, 114,  93, 169, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103, 166,   2, 159, 183,  59, 225,  29, 209,  36, 234,  72,  51,  49, 178, 124
	.byte	 84, 177,  23,  96,  94, 101,  47, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 33, 250, 118,  91, 173, 224,  42,  54, 107, 218, 229, 209, 164, 157, 214,  21
	.byte	233, 143,  46, 196, 123,  95, 212, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43, 202,  30,  23, 122,   9, 117, 137, 157, 103,  93, 226, 151,  58,  75, 217
	.byte	 39,  13,  45,  17, 227,  62, 115, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153, 124,  12,  65,   8, 235, 140, 161, 238, 133,  25,  98,  90,  40, 205, 116
	.byte	214, 224, 126, 179, 230, 179, 108, 171,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 28, 120, 175, 165, 170,  14, 173, 162,  24, 252, 146,  78, 200,  27,   3, 145
	.byte	 49,  63,  11, 254, 211, 249, 209, 218,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  9,   3,  67, 220,  31, 246,  62,  43,  49, 154, 177, 131, 206, 209, 172,   8
	.byte	 45, 190, 161,  92, 240,   0, 212, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86, 104, 159, 100, 134,  99, 147,  85, 223, 122, 203, 109, 109, 184, 178, 205
	.byte	237, 238,  84, 215,  19,  97, 132,  73,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	137,  37, 199,  97, 138, 238, 142, 204,  58,  56,  44,  50, 241,  67, 233, 170
	.byte	220, 147, 234, 119, 212, 174,   7, 189,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82,  82, 154,  24, 158, 184,  14, 108, 153, 127,  63,  11, 107, 202, 205,  46
	.byte	 51,  27, 205, 154, 107, 202, 115, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	195,  86, 102, 155,  54, 106, 187,   7,   2,  68,  23, 140,  62, 166,  76,  68
	.byte	228, 165,  72,  51,  49, 119,  55,  55,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 71,  17, 174,  18,  33, 177,  99, 234, 202, 231,   0,   4, 255,  98,   8, 159
	.byte	190, 173,  34,  38, 101, 235, 171, 234,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 35,  80, 170, 127,   6, 120, 178, 156,  92, 228,   4,  94,  28, 166,  40,  16
	.byte	176,  81, 228, 133, 144,  24, 141, 243,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5, 232, 251, 168, 108,  42, 177,  49, 168, 119, 143, 201,  18, 120, 183,   5
	.byte	170,  67,  37, 123, 170,  37, 226, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	224,  18, 141, 115,  41,  35, 101,  84,  54, 204,  64,  35, 109,  24, 111, 102
	.byte	 25, 211,  66, 147,  40, 175,  71, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143,  40, 247,  42, 157, 245, 166,   1, 165,  51, 116, 244,   5,  94,   6,  50
	.byte	143, 230, 234, 169,  77, 239,  10, 221,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 44,  70, 136,  87, 197,  28, 149,  29,  85, 251, 163, 107, 245,  34, 130, 165
	.byte	 12,  19, 251,  26,  17, 253,  76,  73,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86, 156, 225, 124,  73, 110,  99,  28, 106, 232, 154,  13, 219, 200,   7, 162
	.byte	 10, 240,  95, 219, 151, 165, 142,   6,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	158, 207, 147, 153, 219, 230,  34, 182, 122,  99,  79,  41, 106, 149,  26, 119
	.byte	135, 173, 155,  96, 157, 139, 171,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 96, 210,   7,  54, 235, 174,  34,  34,  97, 231, 193, 208, 148, 140,  51,  50
	.byte	107, 229,  32, 234, 196,  92, 142,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	154,  63, 184,   3, 180, 114, 254, 193, 254, 112, 166, 247,  49, 142, 218, 246
	.byte	142, 210, 235, 135,  32, 125, 242, 122,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 55, 246, 160,  61,  72, 130, 171, 233,   7,  73, 221, 152,  69,  82, 102, 219
	.byte	 32, 151,  40,  91, 139, 207, 130, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179,  25,  10, 163,  63,  79, 191,  18, 158, 190,  46, 100, 189,  30,  33,  50
	.byte	165,  41,  45, 204,  72,  83, 170, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122, 133, 145, 205,   0,  40,  30, 216, 185, 118,  30, 164, 186, 116, 161, 182
	.byte	 53,  11,  11, 243, 218, 219, 190, 192,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 92, 187, 173, 212,  17,  22, 247, 221, 236,  88,  41,  15, 107,  10, 119, 227
	.byte	244, 202,  11, 187,  23, 240,   4, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 65,  21,   4, 135,  36, 247, 111, 165,  22,  98, 176,  42,  16,  59,   5, 216
	.byte	 53, 102, 186, 133, 130,   4, 125, 201,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191,  26, 159, 233,   3, 254, 208, 100, 126,   2,  43,  42, 128, 226,  44, 210
	.byte	212,  91,  60,  71,   7,  88, 129, 159,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 46,  87, 210,  99, 200, 105, 116,  64, 225,  74, 212, 255, 199, 171,  99, 213
	.byte	215,  42,  58, 219, 180, 132,  47,  70,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 60, 204,  73, 217,  48, 178,  78,  46, 168,  83,  40, 116,  89, 174,  11,  44
	.byte	 89, 128, 171, 210, 213,  16, 108,   3,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143, 189,  73,  76,  91, 253,  51,   8,  77, 222, 196, 141, 188,  30,  65, 195
	.byte	176, 136,  15,   6, 192, 204, 155, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101,   2, 136,  46, 255, 113, 128,   7,  23, 154, 232,  23, 133, 125,   8, 104
	.byte	244,  77, 113, 227, 117, 248, 105, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 57,  34, 135, 119, 200,  11,  72,  53,  64,  52, 202, 151,  53, 150,  56, 195
	.byte	  0, 247, 120, 109, 232, 108, 157, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	217, 254, 228,  76,  32,  83, 155,  13,  20,  24, 210, 214, 131,  97,  56,  98
	.byte	  6, 142, 140, 133, 206, 183, 251,  28,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 35, 217, 107,  29, 134,  54,  67, 109, 211, 243, 155, 210, 117,  94,  90, 209
	.byte	 81, 220,  89,  39, 129, 226, 225, 192,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	213, 233,  84, 168, 226,  96, 145, 128, 225,  56,  23, 216, 230, 185, 139, 253
	.byte	150, 128,  24, 131, 153,  45,  62, 247,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	254,   5,  91, 133, 244,  97, 110,  96,  61,  27,  86, 137, 124,  69, 204,  13
	.byte	 90,  93,  70,  56, 122,  85,  30,  14,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156, 165,  35,  41,   2,   8, 197, 215, 127,  22, 211, 131, 236, 152, 141, 216
	.byte	110, 140, 168, 246, 106, 213, 109, 141,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153,  28, 193, 234, 151,  82, 188, 228,  21, 149,  17, 154, 140,  33,  18, 145
	.byte	183,  35,  78, 188,  34,  41, 245, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	241,  83, 175,  86, 211,  74, 226,  96, 219, 248,  86,  45,   1,  38, 186, 156
	.byte	 51,  57,  93, 128, 219, 231, 127, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	159,  41,   4,  32, 119, 252,  54, 181, 243,  50, 106, 172,  64, 215,  56, 254
	.byte	 59, 131, 191, 252, 152, 252, 141,  60,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	154,  19, 245, 176, 239, 186, 105,  84, 144,  92, 185, 249, 231, 217, 104, 186
	.byte	200, 218,  77, 219,  50, 226, 165, 236,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	239,  98, 160, 111,  86,  66, 245, 112,  22, 213, 121,  98, 127,  91,  39, 202
	.byte	174,  18, 231, 207,  53,   8, 194, 214,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111, 245, 158, 103,  75, 170, 223,  13, 187, 140, 168, 225, 226,  48,  57, 232
	.byte	  7,  66, 188,  89,  59, 217, 106, 173,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189,  23,  29,   1,  12, 217, 201, 111, 123, 230,  61, 214,  97, 121, 241,  24
	.byte	151, 210,  61,  79,  49, 173, 157,  93,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	209,  90, 142,  51,  14, 179, 225,  21,  48, 172, 209, 134,  45, 246,  61, 205
	.byte	145, 130, 229,  12,  60, 175,   3, 213,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	104, 131,  78, 221, 197, 177,  37,  32,  36,  53, 213, 252, 191, 217, 116, 132
	.byte	248, 128, 201, 212, 151, 218, 161, 110,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	155, 135,  70, 154, 103,  37, 128,  71,  85, 216, 216,  17, 102,  94,  51, 225
	.byte	119,  94, 132,  90,  82, 217,  22, 109,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	241, 233, 161, 204, 119, 185, 104, 225, 177, 208, 255, 108,  51,  95,  74,  36
	.byte	 43,  40,  39,   5, 154,   2,  19,  19,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	180,  65, 212,  10, 139, 227, 206, 202, 214,  64,  12, 163, 247, 189, 245, 212
	.byte	 61,  97,  14,  56, 137, 108, 137, 146,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	109, 138,  98, 111, 244, 218,  39, 244, 100,   8, 119, 159, 176,  69, 101, 226
	.byte	147,  19, 246, 234, 113,  34,  90,  60,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	177, 193,  82, 192, 252, 199,   6,  32, 128,  41, 157,  17,  29,  61, 105,  80
	.byte	 74,  32,  16,  60, 154, 109,   6,  36,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143,  28, 123, 140,  80, 254, 159, 211, 192, 201, 199, 245, 240, 209, 168, 193
	.byte	220, 232, 238, 205,  41,  13,  67, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63,  82,  66, 218,   5, 250,  74,  96, 137,  26, 207, 174, 229, 136,  23, 143
	.byte	209, 175, 119, 255, 136, 220, 199, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	144,  31, 159,   1, 169, 201,  88,   0, 233, 104,  15,  79,  46,  33, 204,  27
	.byte	131, 113, 118,  43,  32, 234, 160,  41,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 77,  12,  54, 229,  20, 241, 235, 174, 121, 153, 254, 139, 179, 178, 185, 208
	.byte	249, 215,  90, 121,  60, 120, 191,   6,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	117, 127,  35,   3, 167, 106, 165, 130,   1, 129,  47, 128,  96, 208,  69, 231
	.byte	  4,  85,  51, 113, 254,  80, 104,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111,  54,  15, 172, 187,  46,  12, 177, 225, 252,  22, 124, 214,  18,  22, 212
	.byte	151,  34,  37, 157, 198,  42, 127, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 65, 121, 192, 208,  59,  69,  26,  88,  46,  38,   2,  78, 141, 146, 238,   8
	.byte	155, 172,  56, 109,  31, 211, 195, 149,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 41, 144, 204, 209, 202,  55, 237, 181,  77,  15,   3, 211, 139, 114,  34, 173
	.byte	 49,  20, 175, 151,  10, 164,  47,  24,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185, 164, 243, 178, 249,  60, 200,  41, 123, 167,  91,  27, 143, 153, 134, 211
	.byte	 39, 214,  66, 150, 127, 210, 131,  79,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	255, 165, 169, 195, 210, 127,   1,  23, 167,  34,  91, 255, 195, 127,  48, 117
	.byte	  3, 206,  82,  60, 235,  92, 251, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  1,  41, 212, 232, 247, 183,  86,  68, 239, 239,  32,  60, 106,  44, 206,  25
	.byte	 29,  73,  44, 181, 240, 168, 236, 139,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	110,  51,  54,  39,  18, 151, 251, 244, 253,   9, 108, 224, 193,  18,  14,   7
	.byte	205, 130, 215, 168, 241, 102,  63, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 72, 193,  51, 209, 245, 164, 241, 242,  68, 152, 138, 191, 111, 110,   5, 193
	.byte	118,  21,  35,  32,  94,  63, 242, 141,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	239, 147,  81,  14, 151,  61,  52,  27, 120,  69, 147,  68, 239, 242, 131, 123
	.byte	210, 169, 211,  83,  28, 213, 138, 123,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	205, 204,  23, 244,  90,  86, 214,  16,  69, 146, 236, 186, 233,   5, 220,  41
	.byte	 39, 223,  77,  17, 180, 104, 158, 146,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101, 117, 119, 203, 247,  47, 231, 174, 142, 217,  55, 209, 141, 180,  94, 148
	.byte	  2, 227, 167,  98,  15, 106, 152, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	138,  52,  42,  49,  13,   6, 179,  29,  14,  34, 179, 107, 238, 207,  82,   5
	.byte	 66,  88,  68,  54, 188,  37, 201,  54,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	207,  75, 109, 254, 243, 228,  14, 251, 198,  11, 181,  65, 210, 166,  70, 133
	.byte	 34, 142, 127, 181, 180, 223, 147, 148,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 42,  37, 137,  51,  99,  37, 217,   0, 175,  53,  44,  37,  41, 212,  36, 177
	.byte	131, 115,  73, 224, 183, 222, 110, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	221, 102,  86, 147, 252, 252,  90,  50, 130,  37, 124,  47, 181,  96,  67,  90
	.byte	 27, 112,  31, 106, 132, 211,  81,  36,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98, 229, 231, 202, 176,  15, 179,  25, 128, 124, 100,  46, 113, 144,  17, 189
	.byte	189,  51,  82,   7,  56, 138, 207,  35,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153, 129,  37, 200,  24,  56,  66,  28, 234, 138, 112, 175,  63, 250,  85,  75
	.byte	 81,  80, 155, 118, 211, 227, 115,   7,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 45,  50,  89, 229, 101, 230, 159,  25,  27, 227,  62,  68,  88,  15, 108, 143
	.byte	209, 153,  21, 141, 181, 186,  25, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5, 211,   6, 132, 129, 229, 208, 134, 106,  89, 138, 188, 251, 116, 108,  50
	.byte	245, 202, 207, 142, 101,  82,  41, 140,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	245,  69, 186, 191, 223, 160, 200,  29, 145, 247,  17,  71, 177,  16, 201,  10
	.byte	 32, 177, 100,  79,   1,   1, 226, 190,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149, 227,  76, 245, 111,  72, 223,  99, 168, 180, 183, 102,  69, 164, 113, 164
	.byte	242, 166,  55,  63,  25, 255, 186,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 89, 164,  84,  38, 181,  44, 184, 238,   9,  98,  33,   8,  57,  67,   6,  59
	.byte	 76, 244,  16, 174, 102, 224, 224,  78,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	177,  69, 176, 158,  85, 237, 202,  25, 116,  97,  62,  58, 191, 234, 237,   8
	.byte	174, 246, 130,  57, 244, 225, 138, 254,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	201, 145, 103, 210, 147, 190, 253, 190,  28, 170,  61, 209, 217,  51, 247, 108
	.byte	140, 243,   0, 251, 174, 152, 221, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	181, 201, 146, 126, 241,  59, 175,  44, 246, 238, 201, 208, 134,  45, 178, 239
	.byte	 47, 183,  36, 216, 162, 128, 142, 167,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	183,  71,  30, 219, 134,   5,  10, 201, 193, 104,  81, 163,  41, 219,  33,  26
	.byte	153, 206, 130, 205,  48,  40,  33,  85,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	150,  71, 144, 138,  69,  63, 150, 186,  24, 251, 147,   0, 252, 247,  62,  81
	.byte	 33, 126, 176, 120,  80,  28, 166,  42,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37,  35, 136,   9,  46, 209,  19, 165, 128, 132,  74,  96,   7, 195, 250,  57
	.byte	120,  60,  39,  16, 130, 182, 137, 153,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	158,  87,  34, 248, 117,  49,  26, 211, 119, 115, 172,   8,  41, 115, 194, 203
	.byte	 87,  33, 133, 161, 214, 207,  83,  68,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	232,  11,  80,   9,  40, 168, 118,  71, 154,  88, 239,  72, 237, 196, 215,  98
	.byte	128,  35, 230, 240, 204,  49,  93, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	196, 150, 159, 195, 206,  54, 184, 111, 165, 240, 108, 181,  77, 183,   2, 115
	.byte	 34, 196,  67,  53, 142, 188, 217,  58,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	125, 219,  53, 135,  24, 195, 154,  57,   4,  65, 194,  94,  58,   0, 145,  44
	.byte	183, 108, 249,  13, 221, 163,  53, 187,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 33, 150, 254, 202, 179, 117, 208, 209, 181, 208, 184,  36,  88, 233,  30,  37
	.byte	122,  20,   8, 249, 175, 221, 115,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	159, 151, 136,  13, 135, 129, 148,  27, 188,  96,  97, 230, 213, 159, 185,  12
	.byte	249, 179,  40, 210, 148, 110, 181,  50,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227,  47, 254, 130,  20, 229,  29,  79, 236, 247, 143, 250,  99, 131, 112,  33
	.byte	 59, 130,  15,  40,  50, 172,  63,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 41, 139, 231, 161, 194, 144, 196, 151, 210,  62,  27, 206, 213, 108,  75,  25
	.byte	 17, 231,  21, 160,  10, 102, 223, 141,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111,  33,  58,  69,  85,  81, 245,  97, 104,  22,  26, 247, 255, 114, 239, 200
	.byte	 64,  19, 155,  63, 120, 203, 198,  84,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147, 130, 106,  86, 170, 153,  84,  34,  71, 142,  96,  18, 229,  72, 128,  83
	.byte	 33,  12, 113,  71,  56, 125,   4,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	145,  24, 233, 222, 207,  95, 167,   9, 136,   5,  97, 142, 206, 143,   2, 215
	.byte	156,  79, 155, 211, 155, 181, 113, 178,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111, 229, 109,  47,  49, 117,  64, 110, 193,  47, 108,  89, 244,  80, 134,  47
	.byte	145, 220, 146,  85, 160, 161,  14, 167,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	112,   7, 146, 157, 181, 133, 158, 130, 233, 161,  61,  67, 210, 170, 127,  54
	.byte	132, 146, 249, 198,  22, 196, 168,  30,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	161,  22,  23,  51,  47,  77, 126,  95, 239, 120,  94,  19, 221, 150, 158, 245
	.byte	102, 235,  91, 115,  57, 182, 138, 187,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	211, 121,  51, 235, 136,  44, 208, 200, 252, 164, 175,  98, 185,  35, 219,  82
	.byte	131, 117,  18, 106,  73,  42, 190,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  3,   9,   9,  21, 171,  93, 240,  71, 109, 231,  98, 243, 224, 127,  63, 120
	.byte	 60, 169, 149,  62,  64,  90, 223, 107,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202, 106,  11, 226,  72,  24, 101, 202, 197,   5, 159, 135,  50, 215,  44, 145
	.byte	195, 233, 178,  82, 226, 135, 145, 248,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	239, 112, 255, 248,  89,  31, 180, 138,   1, 221,  91, 165,  57,  16, 136, 177
	.byte	 61,  78,  60, 112,  49, 185, 102, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191, 224, 204, 143, 133, 219, 102,  80, 192, 153, 189, 180, 223, 247, 131, 120
	.byte	224, 149,  19,  92, 234, 167, 157, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	145,  96,  97, 252, 192, 191, 189, 157, 121, 154,  12, 148,  64, 108,  32, 144
	.byte	132,  73, 155,  93, 215, 164, 180,   9,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36,  14, 146,  91,   9,  67, 234,  79, 134,  46, 234, 164,  53,  91, 233, 187
	.byte	 28, 131, 182,  46, 220, 125, 170, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10, 171, 210, 134, 243, 158, 235,  89, 117, 137, 248, 135, 121, 204,  33, 144
	.byte	213, 223, 141,  74,  54, 245, 226,  28,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43, 245, 171, 126, 179, 211,  88, 149, 194, 178, 195, 120, 171, 238,  53, 205
	.byte	250,  69, 168, 146,  50, 215, 154,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94, 143, 148, 154,  56, 146, 180, 207, 150, 240, 153,  47, 229, 146,  13, 162
	.byte	103, 241, 196,  80,  90,  71, 113, 247,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	148, 255,  47, 166,  14, 136,  53, 201,  46, 217,  21,  92,  44, 237, 176, 127
	.byte	216, 229,  47, 123, 211, 165, 123, 165,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 72,  58, 231, 175,  96,  69,  69, 128, 157, 251,  85,  39,  72, 212, 216, 144
	.byte	215, 186,  47, 192,  94, 243, 142,  77,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	176, 118,  15, 180,  75,  32,   7,  90, 205,  31,  67,  23, 126, 200, 172,  24
	.byte	  8, 102, 242,  77, 128,  24,  30, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 53, 182,  86, 185, 115,   2,  21, 196, 112, 199, 157, 243,  91, 206,  15, 240
	.byte	189, 253,  36, 132, 158,  49, 239, 228,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	228,  12, 206,  14, 138, 162, 229, 157,  83, 136, 174, 232,  75, 194,  55, 178
	.byte	170, 192,  79,  46, 217, 252, 248, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	239, 225,  18, 105,  70, 228, 210, 213, 149, 119, 139, 138, 193, 214, 222, 138
	.byte	169, 102,  84,  85, 244,  83, 162, 130,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	239, 207, 193, 243, 148,  38, 229, 140, 195, 243,  91, 113, 196, 191,  59,  78
	.byte	 41, 236, 125, 167, 194,   9,  32, 165,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84,  42, 179, 126,  36, 177, 241,  51,  64, 108,  77, 195, 183, 206,  13, 237
	.byte	 16, 113,  16, 184,  68,  80, 202,  72,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	168, 117,  70, 159, 184, 221,  84, 208, 110, 240, 249, 161,  64,  94, 199, 195
	.byte	165, 238, 244, 131, 232,  31,  93, 185,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 66, 114, 250, 114, 111, 238, 130, 115,  46, 151,  59,  15, 194, 184, 164,  54
	.byte	117, 139,  16, 164, 153,  65,  16, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175,  49, 152, 182,  52, 203,  23, 166, 137, 230,  74, 139, 153, 233,  47, 227
	.byte	 42, 199,  34, 110,   6, 220, 211, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 52, 182,  82, 253,  85,  86,  93,  97,  18, 105, 101, 139, 196,  69, 137, 193
	.byte	237,  33,  51, 108, 183,  81, 204, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	137, 241,  62,  25, 245, 122, 126, 189, 231, 105,  74, 129, 228, 221,  85,  30
	.byte	130,  62, 170, 231, 255,  76, 197, 168,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 185, 239, 239,  97,  80,  86,  50,  75, 244, 100,  23,   5,  98, 247, 240
	.byte	 15, 250, 182, 217,  12,  54, 179,  86,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	241,   8,  82,  89, 220, 141,  68, 155, 129, 147,  99, 152, 200,  57,  71, 101
	.byte	193,   0,  92, 187, 124,  45, 168,  73,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172, 208, 228, 178, 205,  77,  27,  40, 173,  84,  21, 174, 100, 157, 120,  15
	.byte	 87,  33, 146, 214, 243, 166,  39, 203,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216,  23, 236, 106,   8, 253, 125, 142,  99, 133, 103, 114, 211, 150, 243, 202
	.byte	246,  48,  64, 172,  79, 117, 137,  18,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	165, 148, 239, 253, 106, 183, 189, 156, 213, 241, 107,  74, 147, 146, 178,  51
	.byte	200, 135, 120, 236, 202,  73,   6,   7,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	127, 199,  26, 251, 142, 202, 212, 161,  10,  73, 164,  82,  25,  57, 137,  61
	.byte	 54, 107, 111, 125,   6,   5, 226, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	151, 202, 138, 121,  44,  45, 161,  83, 168, 193,  15, 205,   3, 238,  32,  89
	.byte	 17, 109, 143, 225,  25,  35, 189,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185, 229, 161,  66, 122, 213, 188,  30, 205,   3, 107,   2,  27, 129, 174, 176
	.byte	 88, 127, 130,  41,  21, 187, 100,  24,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202, 117, 123, 138, 171, 146, 158, 220, 239, 166,  58,  58,  44, 120,   4, 182
	.byte	 82,  27, 134, 208,   5,   5, 165,  82,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	254,  32,  49, 103,  37, 219, 119, 232, 138, 151,  45, 211,  26, 231,  73, 171
	.byte	158,  12, 118,   3, 164,  56,  19, 225,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 80, 240, 107,  17, 133, 171,  60,  67, 176, 108, 230,  16,  29,  93, 215, 182
	.byte	225, 148,  39,  48, 122,  27,  95,  19,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 59,  28,  71, 192, 252, 129, 179,  30, 157, 172,  58, 147,  91, 195,  41, 209
	.byte	223, 121,  24, 170, 179,  20, 213,   8,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	166, 214,  88, 143,  27, 204,  20,  58,  17,  48, 246, 102, 228,  71,  48, 149
	.byte	194,  58,  75,  74, 149,  71,  51,  84,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84, 119,  10,  97,  41, 239, 206,  30,  83,  22, 232, 169, 202, 244, 115, 101
	.byte	 10,  34,  79, 171,  71, 252, 154,  88,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  7,   4,  98, 158,  44, 159,  66,   4, 203,  26,  77, 222, 127,  91, 184,  39
	.byte	174, 141, 220,  13,  90, 183, 105, 228,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76,  81,  15,   8, 203, 216,  43,  42, 216,  49, 108,  56,  35,  88, 182, 201
	.byte	217, 138,  20,  22, 111, 164, 143,  20,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	228,   6, 119, 112,  32,  69, 134, 237,  69,  36,  83, 140,  49, 190,  33,  79
	.byte	160, 104, 115, 113, 154,   1, 171,  68,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136, 210,  49, 240, 105,  25, 212,  52,  43, 121,  90,  17, 121, 129,  63, 244
	.byte	109, 142,  95, 137,  56, 255, 234, 197,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	232, 149, 205, 144,  44,  82,  42, 244, 118,  30, 228, 215, 194,  57, 247, 157
	.byte	224,  97,  60,  32, 145, 104,  45,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 55,  54, 104,  17, 106, 104, 138, 112,  66, 175,  31, 156, 104, 181, 121,  88
	.byte	 99, 114, 118, 254,  10, 186,  50,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 158, 136, 169,  87, 238, 182, 244, 181, 122,  51,  50, 224,  95, 134, 230
	.byte	135, 171, 247, 250,  84, 125, 117, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  8, 140,  86, 120,  10, 243,  12, 215, 130, 238, 116,  43, 242, 185,  80, 252
	.byte	130, 150, 236, 232, 229,  64, 191, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76, 183, 188, 159,  25, 161, 146, 182,  59, 197,  43, 230,  75,  23, 150, 112
	.byte	 31, 101, 183, 185, 253, 194, 156, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	201,  96,  11, 175, 182,  96, 224, 213,  48, 154, 151, 206, 135, 121, 247, 241
	.byte	226, 107, 162, 140,  31, 196,  18, 234,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 91, 164,  91, 220,  51, 178, 191, 111, 216, 240, 175, 146, 164,  12, 234,  23
	.byte	 72, 112, 105, 211, 110,  70, 141, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247, 132,  18, 163,  78,  50,  76, 154, 163, 104,  74,  80,  77, 168,   8,  81
	.byte	131, 186, 181,  46, 118,  57, 135, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	120,  91,  38,  48, 153,   8, 251, 107,  54, 224, 186,  30, 232, 159, 245, 247
	.byte	116, 157, 161,  19, 217, 193, 232, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	108, 177,  93, 250, 185, 111,   6,  58,  92, 251,  75,  54, 181, 128, 232, 135
	.byte	 58,   1, 254, 249,  35, 133,  57, 198,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 90, 146,  70, 223,  97,  47, 226,  33, 201, 172,  66,  73, 238,  37, 229, 168
	.byte	130, 218,  81,  43, 125, 255,  92, 244,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 238, 208,  94, 164, 112,  78,  31,   7,  70,  72,  74, 243,  66, 124,  37
	.byte	193, 231, 221,  34, 143,  84,  87, 252,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 17, 164,  10,  49,  82,  25, 208, 202,   5,  79, 187,  59, 142, 193, 113, 247
	.byte	194, 200,  41, 144, 141,  68, 135, 110,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	186, 198, 140, 148,  87,  19, 142,  56, 201,   1,   7, 177,  35, 203,  17, 120
	.byte	206, 202,  15, 206, 102, 251, 138, 174,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175, 207,  23,  75, 107, 194,  93,  22,  74, 223, 161, 109, 243,  66,  77,  65
	.byte	 96, 239,  53, 125,  81, 252,  25,  54,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248,  66, 144, 226,  23, 123,  52, 131, 251,  90,  80, 226,  99,  38,  87, 211
	.byte	155, 104, 235,  72, 118, 171,  69, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0, 223,  12,   9,  18, 225,  37, 227, 145,  90, 232,  69, 113,  78, 187, 146
	.byte	  5,  97,  75,  65, 183,  17, 242, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 70,  12, 157,  65,  58,  46,  93,  40,  82,  80, 212, 231,  96,  38, 218,  88
	.byte	108, 252,  14,  85, 204, 242, 197, 165,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	208,  14,  40,  10,  51, 190, 157,  93, 102,  60, 178,  64,  45, 221, 100,  58
	.byte	 68, 159, 231,  81, 178, 190,  49, 109,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67, 173, 105, 131, 190,  19,   7, 199,  55, 173, 146,  28, 105,  68,  64, 117
	.byte	 86,  75, 186,  86,  16,  53, 143, 214,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 83,  18,  31,  80, 158,  42,   6, 130,  35, 112,  40, 212,  42, 169,  85,  25
	.byte	195, 158, 216, 115, 105,  72, 181, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	167,  88, 177,  80, 237, 183, 116, 150, 198, 210,  62,  44,  49, 191, 144, 138
	.byte	 93, 136, 174, 201,  47,  59, 222,  50,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 38,  80, 152, 130,  58,   4,  88, 119, 140, 221, 242, 116, 171, 228, 118,  37
	.byte	 80,  67, 243, 194, 215, 213,  38, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	229, 178, 187,  47,  45, 176, 187, 104, 224, 212, 197,  40, 218,  51,  43,  36
	.byte	 26, 132, 145,  12, 181, 227,  43, 219,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84,  45,  39,  35, 187, 202, 168, 118,  70, 251, 254,  62, 211,  89,   5, 246
	.byte	140,  81, 252, 155, 181,  84, 231,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 14, 134, 202,  69, 142,  89, 181,  19, 204,  83, 247,  64,  45, 178, 133,  52
	.byte	119,  46, 252, 228, 254, 124, 180,  56,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94, 141, 139, 175, 112, 123,  35, 164,  69, 138,  36,  33, 245, 219, 128,  98
	.byte	 18, 148, 189, 165, 163,  19, 220, 112,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	173, 170, 205, 229, 127, 236,   4, 201, 187,  53, 213, 157, 220,  59, 223, 229
	.byte	108,  43, 241,  58,  93,  22, 140, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54, 106, 155, 120, 146,  48, 152,  48, 119, 212,  79,  75, 101, 216, 130, 192
	.byte	 59, 179,  58, 134,  73,  82,  58, 166,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131,  20,  56,  79, 187, 221,  50, 230,  44, 155,  96, 248,  94, 253,  42, 168
	.byte	237,  32,  69, 223,  91, 176,  21, 140,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36,  62, 200,  23, 216,  83, 185, 172, 210, 108, 205,  43,  41, 132, 198, 163
	.byte	 96, 207,  41,  90, 240,  97, 207, 252,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	225, 161, 195, 158, 149, 250, 110,  45, 117,  35, 179, 138, 120,  97, 116, 215
	.byte	175, 214, 207, 200,  20, 203,  10, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 19, 212, 164, 152, 210, 190,  45,  42,  69, 151, 148,  42,  58, 105, 252, 224
	.byte	142,  24,  45, 126,   8, 132, 238,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 122, 136,  17, 237, 154,  24, 220, 160, 220,  81, 182, 215, 240, 125,  92
	.byte	222, 164, 168, 236, 223, 119,  39,  59,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	173, 234, 128,  19,  69, 197,  27,  33, 174, 136,  65,   3, 102,  49, 235,   6
	.byte	 83,  87, 147,  76,  17,  37,  96, 162,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	237,  92, 148, 103, 149, 217,  93, 120,  30, 228,  78,  63, 156, 193, 230,  99
	.byte	211, 169, 119, 230,  31,  16, 136, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 62,  62, 229,  85,  55, 116, 141,   2,  29,  92, 137,  81, 169, 123, 229,  55
	.byte	200,  68, 210,  78, 172,  89, 232,  70,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 14, 147,  30, 250, 139,  89, 219,  23, 136,  32, 109, 225, 200,  72,  62, 165
	.byte	234, 230,  33,  92, 118, 223, 231,  42,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 58, 137,  75, 107, 127, 225, 218,  30,  76, 182, 250, 209, 196, 157, 179, 228
	.byte	  5, 109, 119,  56,  77,  15,  11, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 21,  95, 234, 224, 208, 154, 167, 249, 111,  39,   8,  35, 222, 238,  23, 232
	.byte	 57, 159,  74,  41, 255, 241, 248, 239,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	198,  67,  89, 177,  39, 120, 151,  20,  82,  55,  59, 163, 145, 143,  11, 110
	.byte	171, 105,  34, 101,  56, 206, 175, 253,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 188,  23,  86,  74,  67, 170, 223,  70, 190,  19,  27, 237,  33,  20, 120
	.byte	230, 133,  14, 182,  52, 252,  61,  55,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	224,  88, 201, 242, 243, 129, 175,  79,  65,  58, 142,   3,  95, 195,  73,  84
	.byte	247, 206, 241,  55, 171,  42, 239, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 57,  71,   1, 232,  36, 223,  32, 223,  19,  97, 230, 183,  20,   8,  82, 253
	.byte	200, 111,  16, 216, 161, 218, 231,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  2, 166, 102, 132, 171,  23, 100, 242, 246,  76,  97, 141, 149, 191, 251,   7
	.byte	255,  22,  10,  62,  53,  45, 144,  58,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	158, 246,  49, 196,  40,  54,  36,  60, 247,  30,  56, 201, 242,  97,  32,  16
	.byte	 23, 105,  77,  79,  77,  20,  33, 239,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	230,  37, 110, 202, 181,  83, 252,  96,  64, 189,   2, 238, 140,  82, 162,  66
	.byte	255,   3,  90, 236, 154,  78, 249, 195,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 33,  86, 169, 242, 140, 158, 228,  99, 181, 196,  59,   2, 239, 119, 215, 194
	.byte	 31, 163, 104, 250, 115, 175,  66, 253,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	178,  65,  49, 186, 101, 157, 221, 153,  68,  97,  35, 178,  50, 132,  66,  82
	.byte	233,  32,  28,  66, 238, 112, 166, 124,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	130,  76,  74, 116, 178, 154,  22, 176,  56, 217,  73,  93, 225, 180,  41, 129
	.byte	 26,  52, 200, 200, 241, 214, 199,  58,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172,  40,  84, 216, 158,  75,  13,  23,  51,  51, 248, 156,   1, 165, 206, 166
	.byte	224,  40, 161, 195, 194, 214, 199,  72,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	176,  11, 190,  12,  45,  85, 213,  42, 177,  12, 183, 154,  16, 233,  78, 127
	.byte	199, 163, 132, 183,  88, 249, 134,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	231, 213,  93,  40,  25, 189, 173, 245, 149, 122,  96, 247,  36,  13,   1, 209
	.byte	 65, 152,  29,  80,   8, 156, 119,  63,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	193, 148, 210, 245, 192,  29, 145,  49, 177, 227, 174,   4, 238,   2,  48,  35
	.byte	209, 186, 103, 104,  25, 152, 250, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43,  64,  68,   6, 148, 237, 167,  25, 242, 174,  86, 173, 199,  82,  42, 100
	.byte	116, 204,   9, 116, 187,  21, 178, 173,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	124,  40, 149, 160, 225, 121, 111, 113,  10,  87,  84,  85, 231,  49, 140, 140
	.byte	130, 161, 246, 149, 241,  25, 191,   7,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185, 128,  32, 135, 224, 220, 121,  68, 251, 186,  14, 151, 250, 223,   2, 235
	.byte	234,  51, 168, 107,  53, 104, 125,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	152,  65,  88,  35,  69,  93, 208, 156, 128, 238, 115,  51,  99, 109,  98, 153
	.byte	105,  65, 209, 178, 205, 157,  24, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185, 196, 176,  87, 178,  83,  13, 124, 170,  61, 156, 213, 229, 189, 249, 229
	.byte	 44,  10, 143, 101,  48, 160, 252,  73,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 93, 236, 176, 253, 226,  65, 196, 232, 176,  61, 144,  49, 109, 230,  25,  25
	.byte	 60, 249, 202, 187, 142,  79,   9,  57,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122, 173, 127,  71,  88,   9, 164,  23,  51,  23, 170, 249, 135,  52, 135, 197
	.byte	100,  29, 173,  22,  41,  99, 118, 201,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	201, 246,  96, 142, 123,  17,  48, 253, 110, 172, 198, 111, 108, 203, 161, 227
	.byte	232,  90, 122,  56, 244, 101,  63,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  7, 239,  19, 206,  17, 218, 123, 238, 227,  76, 238,  73, 205, 216, 153, 129
	.byte	 47,  80, 127,  11, 193,  74, 181, 148,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86, 124, 213,  97,  27,  65, 191,  68, 119, 199, 132,  11, 163, 253, 134, 156
	.byte	159,  10, 114, 187, 146,  85,  95, 139,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67,   7, 133,  21, 229, 243, 174,  84,  13, 196, 163, 229, 148, 194, 126, 175
	.byte	 23, 161,   3, 252, 126, 252, 161,   6,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	134, 248, 233,  11, 183,  68, 221, 132,  53, 179, 222,  74,  69, 144,  51,   5
	.byte	 11,  16, 126,  87, 213, 180, 165, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191, 153, 207,  26, 252,  63,  23, 203, 165, 209, 122,  30,  57, 109, 229,  36
	.byte	 43,  40,  69,  22,  84, 168, 246, 218,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	222, 102, 205, 165, 201, 239, 217, 243,  13,  76, 215, 226,  57, 146, 143, 250
	.byte	230, 146, 154,  56,  78, 244, 175,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153, 229,  50, 107,  93,  79, 112,   6, 114, 145, 164,  46,  22, 170, 202, 137
	.byte	 80,  80,  56,  77, 117, 117, 179, 245,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 34, 151,  41,   3,  91, 108,  82, 132, 243, 222, 227, 234, 148, 212, 210,  42
	.byte	112, 251, 255, 122, 163,  81, 108, 168,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140, 222, 134, 136,  96, 114, 126, 224,   7, 247,  37,  83,  88,  30,  95,  52
	.byte	247, 102, 223, 169, 177, 230, 102, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	242,  46, 214, 119,  89,  29,  41, 152, 169,  43, 177, 128, 214,  92,  28, 175
	.byte	202, 202, 133, 119, 176, 155, 108,  48,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131, 154, 166,  61, 245, 145,  49, 187,  36, 220,  64, 216, 106, 160, 226,  56
	.byte	117, 176, 189, 124, 241, 224, 252,  72,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94,  82, 157, 223, 149, 160, 225, 112,  33,  73, 169, 225, 164, 173, 193, 137
	.byte	236, 151, 120, 225, 217, 138,  62,  95,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 88, 214,  94, 233,  52,  60,  97,  33, 197, 248,   3,  36, 189,  54, 221, 246
	.byte	255, 235, 221, 128, 143,  43, 122,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 45, 123,  85, 126, 203, 191, 233, 218,  68, 110, 144, 194, 124,  44, 126,   5
	.byte	 98, 198, 151, 251,  61, 206, 145, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121, 226, 105, 166,  53,  11, 221, 235, 147, 165,   5,  61, 185, 132, 225,  75
	.byte	 67, 160, 191, 172, 128,  20, 160, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	180, 206, 128,  80, 232,  57, 245, 218, 159, 219, 202,  77,  83, 238, 175, 233
	.byte	 94,   2,  49, 141,  49, 163,  67, 154,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216, 143,  71,  47, 160,  13, 237, 251, 119, 142,  63, 127, 128, 119,  95,  97
	.byte	188,  70, 201, 178, 248, 245, 195, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 65, 146, 248, 119, 247, 232, 203,  67, 123, 244, 114,  94, 195,  54, 104,  84
	.byte	196, 165,  36,  64,  91,  23, 248, 170,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	181, 127, 157,  64, 237,  11, 151, 123, 217,  61, 251,  79,  36, 134,  41, 149
	.byte	195, 200,  21, 121,  37, 199, 167,  28,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 79, 108, 214, 121,  66,   6,  63, 236,  56,  29,  39,  14,  47, 168,   2, 176
	.byte	165,  18, 244,  75,  56,  95,  72,  47,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	238, 216, 221, 148,   5,  61,  17, 153, 243, 188, 165,  49,  45, 230, 232, 230
	.byte	 23,  70,  22,  37, 250,   2, 232, 220,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 47, 173, 226,  16,  83, 208,   3,   7, 173,  60,  52,  24, 230,  52, 172, 250
	.byte	 64, 130,  86, 124, 255,  90, 215, 242,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149, 139, 154, 104, 106,  27,  39, 200,  49,  60,  32, 136,  69,  78, 193, 106
	.byte	183, 236, 142, 121, 194, 220, 175,  89,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	195, 206, 170,  56,  31,  90, 122,  59,  59,  56,   2,  50, 254, 111, 245,  92
	.byte	119, 142, 120,  14,  44, 193, 189,  23,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	186, 214,  75, 169,  95, 132, 137,  91, 237, 236,  27,  72,  38, 172, 190, 187
	.byte	 22, 169,  94,  62,   2, 182,  51, 193,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	100, 144, 161,  75, 177, 231, 161, 221, 225,   2, 162, 223, 181, 140, 187,  62
	.byte	230, 141,  69, 151, 183,  88, 148, 185,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	130, 225,  59,  40, 184,  52,  82,  88,  22, 232, 217,  32, 248, 191, 155, 163
	.byte	 19, 188, 182,  51, 245, 253, 130, 252,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111, 198, 173, 243,  95,  39, 136,  31,  68, 126,   8, 242, 181, 204,  97,   4
	.byte	108, 211, 186, 119, 235, 205, 130, 134,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136,  60, 139,  47,  72, 120, 142,  30, 199, 240,  68, 125, 100, 127, 190, 143
	.byte	148,  15, 159, 223, 252,  55, 239,   7,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 23, 164,  90,  26,  78, 155, 173,  41,  69, 255,  93,  32, 167,  51, 169, 163
	.byte	111,  62, 210, 199,  26, 168, 128, 209,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	176, 194, 221,  36, 100,  48,  94, 199, 160,  55, 181, 237, 151, 136, 248,  26
	.byte	222, 139, 136, 115, 201, 158,  29, 203,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	100, 121,  59, 210,  51, 157,   3,  51,  44, 179, 192, 234, 230, 178,  27,  57
	.byte	 32, 192, 129, 228,  10, 251,  26, 110,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	139,  35,   4, 207, 238,   0,  12, 131,  45, 186, 236,  26,  52, 130, 201,  88
	.byte	184, 248,   4,  65, 206, 219,  76,  78,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  3,  19, 190,   3, 183, 111, 139, 168, 182, 250,  23,  61, 114,  41,  23, 178
	.byte	  6, 143,  45, 165,  23,  76, 141, 171,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122,  59, 139, 197, 179, 163,  39,  36, 235, 113, 200, 131, 222,  46, 165, 252
	.byte	 74, 154,  13,  13,  78, 133, 206, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131,  57, 130,   0, 106, 159, 162, 225, 148,  50,   7, 248,  28,  23, 138,  81
	.byte	 42, 210, 240,  72, 196, 189,  65, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191,  32, 142,  59,  18, 212,  85, 152, 132,  63, 161, 189,  63,  63,  84, 146
	.byte	  4,  81, 173, 120,  80,  79,  23, 100,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54,  37,  85, 235, 148, 130, 169, 150, 215,  87, 135, 182, 105, 227, 217, 166
	.byte	239,  60,  17, 115, 194, 150, 142,   1,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	190, 213,  17, 210,  85,  98, 104, 217,  19, 245,  71,  15,  73, 215, 253, 255
	.byte	 61, 232, 188, 131,  79,  29, 226, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216,  87,  17, 145, 174, 207,  20, 196, 232,  16, 176,  46, 128,  25, 118, 191
	.byte	101, 201, 224, 178, 229,  40, 141, 102,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84, 156, 105, 171, 128, 140, 171, 148,  27,  69,  21,  16, 125,  48,   9, 149
	.byte	  0,  39,  71, 210,  34, 179,  48,  47,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	125,  59, 217, 132, 236, 220, 115,  21, 101,  47, 234, 139,  30, 194, 142, 241
	.byte	 68, 242, 177, 143,  13, 209, 125, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 13, 204,  70, 163,  97,  28,  66,  50,  97, 203,  69, 126, 228, 194, 130, 126
	.byte	 79, 244,   1, 112, 189,  88,  17, 177,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 40, 245, 245, 168, 183, 229,  44, 148, 160,   6, 230, 188,  54,  17, 115,  20
	.byte	 62, 221, 218,  69,  12, 228, 195, 155,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111,  11, 249, 186,  85,  39, 159,  61, 244, 195, 176,  25, 191, 194, 101,  40
	.byte	 11, 227, 180,  59, 208,  44, 241,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223,  95,  97,  70, 201,  40, 146,  91, 199, 228,  45,  65, 200, 162,  17, 163
	.byte	180, 191, 142,  74, 255,  13, 160, 178,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 18,   6,  65, 100, 164,  59,  82, 204, 216, 255, 251,  35, 107, 202,  88,  76
	.byte	 55, 233,  13, 140, 149,  93,  82, 131,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	173, 221, 240, 236, 247,  14, 208,  44, 146, 180,  12,  75,  40, 212,  63, 169
	.byte	128,  54,  92, 247, 202,  19,   0, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	242, 154, 186,  81,  64, 220,  49,  39,   3, 185,  54, 130,  37,  74,  80, 171
	.byte	  9,  67,  38,  60,  66,   1, 187, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56,  64, 228,  42,  53, 171,  78, 114,  24,   3, 171, 213, 252, 106,  26, 219
	.byte	 87, 148, 116,  27, 157, 150, 237,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	208,  46, 229,  49, 206, 127,  13, 106, 165, 112, 153, 195, 224, 154, 232,  78
	.byte	 98,  44, 223, 201, 107, 167,  30,  78,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0, 128, 176, 121, 205,  79, 177,  71,  28, 250,  26, 169, 187,  16,  32, 112
	.byte	 29,   4,  55, 202,  62, 174, 231, 154,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202, 181, 102, 236,  55, 179, 223, 185, 178,  47, 181,  49,  39,  13, 125, 119
	.byte	132, 240, 251,  96, 186,  50, 243,  26,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	218, 110, 216,  45, 148,   1,   6, 207, 171, 232,  31,  17, 246,  55, 210, 104
	.byte	  1, 136,   9, 200,  69, 200,  94,  16,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102, 242,  48, 173, 216, 117, 163, 157, 118, 237,  78, 184, 190, 161, 123, 113
	.byte	 53,  73,  93, 226,  93, 135,  81, 195,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122, 134, 184,  80,   0,  75,  67,  75,  99,  54, 199, 207, 199, 155,   4, 197
	.byte	176, 192, 169,  81, 177,  87, 226,  54,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37,  24,  46,  90,  92,  22, 210,  28,  65, 174,  31,   6, 123, 178, 198, 147
	.byte	126,  93, 108, 211, 138, 182,  90, 132,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	241,  76, 245,  29,  24, 111, 199,  77, 148,  49,  37,  12,  80,  99, 246, 221
	.byte	210, 131,  15, 158, 140, 242, 233,  92,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248,  76, 126,  43, 219, 139, 168, 108, 132, 159, 205, 213, 128, 200, 187, 176
	.byte	238, 223, 252, 221, 133, 168, 181,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	146,  86, 185, 196,  36,  57, 231,  51,  79,  10,  23, 207, 241, 142, 186, 102
	.byte	224,   0, 232,  90,  63, 245, 233,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	196, 249, 226, 111, 190, 132, 119, 227,  18,  91,  12, 241,  80,  47, 219, 187
	.byte	180,  13, 222, 210, 217, 119,  66,  82,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24,  88,  16,  60, 251, 105, 175, 241, 200,  28,  40, 128, 251, 241,  13, 215
	.byte	250,  21, 163, 191,  55, 246,  91,  67,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	174, 208, 148,  36, 179, 240, 209, 112,  65,  67,  58, 200,  32,  72,   5, 202
	.byte	187,  23, 189, 115,  97, 111,  54, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	129,  85,  43,   7,  96, 124, 141,  38, 167,  34,  72, 111,  64, 106, 102,  27
	.byte	143,  82, 157,  84, 212, 188, 239,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236, 107, 183, 236, 190, 250,  54, 219, 142, 128, 240,  29,  57, 163, 150, 229
	.byte	 39, 118,  53,  94,  79,  50, 212,  80,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 117, 195,  57,  51, 181,  12, 189, 251, 188, 148,  45,  37, 241,  48,  66
	.byte	142,  78, 138, 129, 194, 152, 252, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170,  29, 109,  47, 143, 196,  13, 234, 224, 237, 183, 251, 252, 174, 180, 226
	.byte	184, 171, 115, 159, 245, 200,  18, 127,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103,  95,  43,  33, 228,  67, 203, 155, 132,  76,  54,  68,  48, 111,  32,   0
	.byte	122, 219, 180, 159, 128, 206, 245,  25,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	254, 132,  71,   8, 163,  94, 226, 221, 136, 112, 209,  37, 197, 156,  82,  72
	.byte	149,  87, 247, 198, 226,  29, 224,  47,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	119, 196, 179, 250,  71,  79, 104,  10,  18,  33, 236,   2,  46, 107,  60, 150
	.byte	203,  79, 200, 186,  95,  63, 128, 127,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188, 201, 139, 155, 249,  37,  25, 147, 198, 226, 109, 123, 204, 206, 116, 139
	.byte	 15, 105,  31, 222, 215, 155, 228, 167,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235, 132, 145,  97,  85, 222,  98, 223, 216, 164, 233, 148,  82,  50,  66,  17
	.byte	 76, 113, 196,  95, 130,  85,  83, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	218, 254, 163, 123, 175,   5, 151,  23, 174,  60, 244, 157, 103,  38, 249,  74
	.byte	 15, 137,  31, 158,  63, 170, 142, 252,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 25, 219, 190, 101, 180, 153,  21,  28, 206,  68, 101, 233, 179, 140, 167, 112
	.byte	125, 169, 199,  28, 183, 106,  27,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 78, 177,  11, 246, 157, 105,  50, 193,  81, 109, 192, 185, 241, 241, 120, 211
	.byte	 74, 149, 158, 130, 171,  88, 191,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 22, 153, 182,  10,  86,  87, 158,  34, 245,  49, 129,  95, 231,   5, 172,  88
	.byte	 93, 254, 129,  85, 177,   6, 124,  70,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 22, 180, 253,  51, 105, 130, 196, 158,  79, 122,   2,  61,  82, 121, 233, 153
	.byte	247, 225,  17, 123, 248, 227, 251,  63,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126,   6,  49, 209, 239, 247,  31, 249,  83,  81, 147,  53, 252,  36, 144, 221
	.byte	251, 176,  27, 199, 165,  95, 108,  37,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 34,  77,  15, 252,  71, 187,  33,  41, 251,  25,  96,  51,  25,  99, 160,  28
	.byte	232,  69, 237, 149, 242, 219, 221,  71,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  3,  21, 237,  62, 183, 183, 143, 174, 109, 223, 102, 106,  58, 160, 173, 122
	.byte	 97, 126,  29, 248, 158, 137,  41,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	198, 242, 124, 120, 133, 139, 118, 187, 129, 177, 133,  60, 218, 243, 140, 187
	.byte	 50, 191,  91, 141,  75,  74,  93, 201,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 96,  39,  24,   7, 137,  12, 120, 121, 230, 119,  19, 230, 147, 190,  88, 241
	.byte	179, 197,  67, 152, 239, 179, 203, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	132, 123, 228,  98, 167, 102, 123,  68, 183,  89, 236,  26, 114,  69, 207,  88
	.byte	205, 226,  97,  42,  76, 121, 167, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	255, 213,  40, 149,  87, 222, 217, 243,  83,  41, 188,  80, 135, 210, 179,  49
	.byte	197, 196, 204, 108, 161,  18, 143,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	134,  70,  12, 235, 227,  22, 214, 112,  29, 167,  77, 226, 166, 249, 221, 213
	.byte	254, 122, 145,  92, 139, 170, 220,   7,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 181,  12,  71,  58, 142, 252, 117, 104, 215, 213,  86,  73, 163, 168, 116
	.byte	139, 149, 225, 187, 193, 177, 214, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153, 198,  51, 119,  89,  91,   1, 166, 228,  38, 241,  15, 153,  92, 124, 177
	.byte	116, 197,  52,  78, 126,  52, 220, 182,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113,  34, 253, 240,  52, 153,  92, 232,  83, 211,  64, 226, 168,  97, 202, 186
	.byte	103,  64, 237, 133, 132, 152, 177, 132,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	138, 236,  70, 133,  53,  17, 164,  88, 181, 104,  84,  68,  78, 215, 254, 107
	.byte	105,  86,  88, 137,   8, 146, 113, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123, 244, 150, 245, 196, 219,  69,  40, 136,  47,  17, 222, 216, 133, 135, 122
	.byte	140, 233,  65, 191, 122, 131,  87,  79,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	132,  71, 104,  29,  25,  57, 232, 253,  19,  62, 224,  47, 121, 231, 235, 214
	.byte	190, 220,  87, 174, 220, 253, 123, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191, 245, 128, 181, 246,  47, 236, 163, 105, 116, 248, 115,  25,   5, 112, 179
	.byte	 43,  82, 148, 231, 112, 137, 110, 173,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	251, 201,  90,  24,  73, 153, 227, 170, 187,  91, 142,  15,  59, 222,  35, 239
	.byte	210, 166,  86,   9, 111, 158, 142, 129,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	253, 170, 216,  24, 200,   2, 146, 110,  73, 245, 143,  67,  24, 105,  37, 147
	.byte	206,  26, 145,  19,   0, 199,  53,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 92, 247, 112, 230, 211, 127, 144,  77,  18,  23,  71, 127,  40,  56,  59, 247
	.byte	 86, 144, 100, 197, 115, 233, 158, 140,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 15, 162, 154, 181, 240, 192, 144,  10, 246,  32,   6, 247,  39,  35,  48, 116
	.byte	217,  58, 199, 109, 254, 107, 190, 244,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 79, 248,  38, 180, 181, 254, 133, 108,  22,  55,  35, 112,  83,   2,  46, 231
	.byte	 32,  35,   3,  61, 132, 116, 104, 168,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63, 194, 158, 101,  79, 203, 203, 188, 110, 159,  25,  25,  65,  52, 244, 225
	.byte	100,  32, 215, 112, 126,  70, 179, 146,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84,   8, 124, 219,  18,  53,  89, 215, 200,  83, 244, 154, 103,  93,  35,   3
	.byte	 17,  46, 216, 159, 143, 147, 159, 123,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	132, 117, 113,  82,  51, 206, 102,   1,  75,  62, 124,  28, 243, 121,  47, 228
	.byte	120, 120,  40, 247, 220, 213, 120, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	139, 231,  60,  76, 143,  46, 165, 218,  31, 224, 196, 189, 151, 219, 119,  45
	.byte	129, 215, 121, 233, 137, 126, 168, 163,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	171,  38, 155,  62, 108, 139, 177,  95, 174, 134, 255, 190, 161, 213, 147, 168
	.byte	177, 184, 149, 140, 192,  95, 184,   1,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 42,  26,  37, 241,  48, 147, 167, 119, 241, 167, 244, 134, 163,  22,  43, 109
	.byte	214, 230,   7, 110, 247, 231, 166, 225,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235,  73, 106, 249, 226,  57, 110,  94,  27,  11,  83,  80,  70, 140, 157, 142
	.byte	104, 121, 185,  53, 152, 239, 190, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	217,  88,  50,  17,  76, 184,  84, 120, 106,  20, 127, 118, 236,  49,  69, 168
	.byte	 16, 183, 172, 196, 181,  82, 136, 216,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	199,  85,  91,  55, 171, 245,  26, 116, 251, 109,   9,  89, 188,  38, 182, 187
	.byte	 29,  44,  33, 206,  19, 110,  55, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	199, 181,  27,  49, 141, 174, 225,  10, 161,  48, 119, 137,  17, 134,  27,  46
	.byte	191,  51,   2, 125,  17, 111,   2,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105, 213,  57, 141, 116, 221, 142,  84, 109, 242, 129,  66, 225, 139,  33, 251
	.byte	108,  34,  21, 195,  30,  23,  65,  73,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 92, 112, 206, 213, 243,  79, 228, 167, 139,  54,  78,  62, 149, 136,  81,  56
	.byte	 79, 236, 145,   2, 245, 208,  50, 118,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	107, 127, 125,  10, 189, 151, 215,  36, 182, 205,  11,  15,  19, 165, 104, 215
	.byte	112,   2, 158, 248,  36,  95, 244,  73,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24, 224, 206, 123,  94, 122,  97, 202, 164, 141, 121, 227,  43, 104, 245, 255
	.byte	159, 106,  98, 145,  57, 136, 133,  24,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 69,  57, 245,  50, 134,  80, 140, 120,  28,  30, 166, 221,  92,  80,  45, 122
	.byte	176,  77, 133, 174, 174, 172, 119, 241,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	211,  71, 183,  64,   6, 241, 157, 142,  89,  38,  54,  57,  71,   5, 244,  39
	.byte	 11,  25, 223, 152,  78, 149, 166,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	178,  91, 110,  26,  87,  93,  48,  56, 176, 233,  61, 201, 235,  18, 237, 203
	.byte	 97, 184, 149,  27, 254, 158,  92,  37,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	144, 245, 129, 187, 240, 215,  52, 166, 190, 148, 134, 134,  11, 166,   8,  39
	.byte	142, 166, 189,  61, 190, 143, 102, 173,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 78, 228,  10,  56, 247,  96,  14, 129,  47,  43,  36, 179,   0, 238, 157, 224
	.byte	208, 211, 143, 135, 244,  88, 107, 206,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	228, 244, 244,  87, 110, 120, 165,  80, 166, 160,  28, 141, 219,  58, 230, 159
	.byte	217,   8, 158, 178, 182, 201, 180,  57,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102, 236,  12,  77, 173,  86,  89, 193,  77,  89, 171, 201,  54,  41, 174, 185
	.byte	 27,  42, 230, 220,   0,  82,  31, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	250, 221,  23,  83,  32, 134, 100,  88,  67, 151,  15,   4, 112,  30,  23, 166
	.byte	227,  22, 119,  87,  13, 206, 228,  23,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	145, 253,   2, 199, 151, 197,  69, 104,  47, 122,  16, 160,  11, 135, 127, 160
	.byte	 23,  16, 233, 115,  47,  34, 236, 140,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	141, 208, 131,  26,  75, 120, 176,  61,  50,  13, 234, 136,  28,   1, 206,  47
	.byte	172, 248,   3, 232,  60,  51, 128, 248,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123, 213,  80, 173,  21, 118,  84,  65,  31, 159,  93, 217, 197, 163,  67, 213
	.byte	 19, 243,  92, 157, 175,  56, 107, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	109,  37, 168, 163,  18, 189, 124, 132, 127,  45, 164,  77, 116, 211,  82, 232
	.byte	 44, 100,   1,  31, 112,  43, 187,  70,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105, 124, 211, 186,  61,  15,  28, 162,  12, 155, 243,  70, 166, 137,  47,  92
	.byte	228,  26, 101,  48, 158, 169, 139, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	152, 145, 119, 204, 163, 188,  59,  39,  97, 192,  76,  33, 250,  89, 156,  12
	.byte	234,  41, 218,  60,  40, 190,  96,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  9, 205, 238, 244, 100,  34,  18, 170, 176, 227, 175, 249, 183,  57, 240,  79
	.byte	160,  54, 122, 223, 204, 209, 139, 109,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	213,  65,  79, 175,  53,  67, 144,  12, 103, 252, 123,   2, 199, 102, 139, 210
	.byte	183, 131, 120,  81,  39,  37,  96, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 74, 177, 212, 220, 243,  18,  92, 149, 100,   3,  14, 195, 224,  34,  98, 208
	.byte	206,  57, 199,  97, 114,  25, 239,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 46,  85, 104,  58, 231, 141,  27,  51,  85,  95, 148,  48, 197,  28,  87, 153
	.byte	 93, 207, 247, 114,  47, 251, 193, 140,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 47, 148, 207, 181,  31, 254, 192,   5, 161, 106,  92, 223,  47,  46,   4,  99
	.byte	111, 201,  37, 178,  14, 104, 222,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115,  61, 202, 218,  48, 118, 248, 157, 110, 255, 137,  60, 155,  71, 249,  85
	.byte	131, 123,  62, 198, 179,  22,  15,  41,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227,   7, 189, 254, 207, 225, 229,  56, 255, 151, 166,  65, 211, 221, 219, 140
	.byte	142, 165,  36, 172, 139,   2, 192, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	166, 230,  18,  74, 189,  57,  55,   5,  56, 222,   8,  34, 107, 246,  92, 150
	.byte	  3,  60, 163,  72,  35, 214, 145,  34,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	222, 111,   5, 193, 234,  52,  28,  49, 108,  20, 189,  82,  26, 238, 174,  24
	.byte	250, 126,  20,  59,  48, 165,  80,  60,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	133,  34, 119, 145, 195,  42,  53,  79,   1,  12, 145, 143, 226,  69,  60,  73
	.byte	 77, 101, 164,  38, 228,  28,  37,  59,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	144, 149, 236, 218, 128, 114, 121, 160, 214, 254, 164, 199, 116,  35,  69, 242
	.byte	 67,  81,  28,  97, 252,  77,  40,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234,  81,  56,  21, 147,   7, 210, 113, 136, 246,  16, 120,  59,  86,  74,  96
	.byte	 99, 124, 109,  46,  59,  80, 234, 245,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 79,  84, 133, 133,  22, 124, 183, 243,  53,  30,  26,  17, 202, 167, 214, 233
	.byte	 47, 129,   5, 208,  14,  26, 197, 251,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37, 128,  16,  82, 196, 199,  55,  78, 166,  73, 120, 121,   7, 230,  73,  27
	.byte	199, 100, 253, 181,  96,   2, 119, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	255,  96, 132,  54, 105, 122,  75,  80, 206, 131, 189, 226,  53, 226,  23, 179
	.byte	168, 178,  87,   0, 219, 136,   3, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185,  38,  73, 226, 189, 212, 112, 115, 158,  98, 181, 150,  80,  48,  58, 188
	.byte	222, 161, 205,  58, 215,  33, 136, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	220, 182, 249,  97, 232, 178, 194, 152,  41, 239, 175,  91, 105,  59, 184, 131
	.byte	219, 230, 122,  31, 217,  10,  75, 215,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126,   5,  51, 209, 119, 205,   5,  10, 217, 109, 126, 243, 218, 243, 150, 166
	.byte	242, 254,  87,  54,  98, 224,  77, 126,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	104, 244, 178, 156, 205, 203,  26, 124,  22,  76, 126, 162, 206, 221,  50,  79
	.byte	 17, 227, 191,  74, 237, 234,  23,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113,  86, 149, 133,  49,  60, 115,  39, 210,  43,  58,  12,  78, 208,  93, 107
	.byte	205, 208, 118, 247, 143,  48,  52,  87,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	244, 236, 139,  67, 222, 224,   1, 198, 197,  54, 179, 165, 195, 248,  10, 202
	.byte	170, 114, 104, 173, 236, 141,  18, 165,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126, 229, 198, 251, 135, 184,  10, 196, 234, 247,  33,  30, 109,  44, 131, 194
	.byte	171,  34,  63, 227, 161, 170, 238, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140,  62,  95, 211, 203,  44,  71,  14, 235, 205,  72, 187, 170,  21, 138, 203
	.byte	104, 114, 243, 255, 199, 204, 134,  67,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	100, 158, 245, 215, 227,  43,  41, 200,  67, 124,  94, 179, 189, 188, 165, 224
	.byte	112, 201, 193, 228, 168,  57, 236, 144,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 31,  11,  13,  11,  16, 188, 144, 202, 149, 115,  81, 179,  79, 140,  80,  62
	.byte	136,  59, 133, 163, 213,  35, 231, 214,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	117, 213,  23,  90, 202,  74, 116, 123, 230, 199,  36, 237, 127, 156,  84, 232
	.byte	235, 131,  63,  81,  82, 210, 235, 174,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 65, 250, 149, 150, 208, 161, 168,  99,  29, 217, 154,  65, 199, 223, 101, 109
	.byte	100, 224,  86, 142, 218, 126, 198, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147,  22,  46, 198, 243, 156,  96, 230,  36,  55, 166, 159, 158, 136, 183,  53
	.byte	122, 224, 136, 113,  62,  64,  18, 188,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240, 215, 247,  68, 106, 164, 172, 159, 125,  72, 210, 226,  11, 186, 198, 228
	.byte	 53, 250, 169,  69, 237,  10, 145, 129,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 55,   4, 205,  12, 206, 207, 207, 166, 109,  93,  45, 143, 170, 124, 190, 206
	.byte	 43, 138, 247,  98, 164, 255, 255, 213,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	208,   5,  68, 147, 163, 141, 228, 135, 184, 234,  73,  89, 104, 207, 192, 212
	.byte	198, 175, 160, 191,  32,   4, 121, 193,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126, 182, 106, 200,  90,  58, 251, 125, 162,  16, 167, 197,  58,  46,  96, 151
	.byte	 62,  69, 123,  96, 154, 206, 157, 160,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179,  91,  92, 165, 149, 173, 165,  57,  92,  69, 192, 133, 197, 232, 250,  80
	.byte	104,  20, 227,  83, 157, 236, 250, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	184, 101, 246,  73,  99, 244,  64, 240, 241,  96, 136, 171,  62, 135,  36, 203
	.byte	 82,   9, 178, 157, 183, 170, 231, 193,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115, 207, 195,  53,  39, 160,  72, 175,  97, 235,  84, 156, 103, 108, 124, 227
	.byte	 66,  33, 115, 238, 160, 221, 164, 150,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94,  23, 235,  40,  42, 131,  72, 248, 253, 251, 176, 164, 196,  19, 245, 254
	.byte	 50, 147, 198,  32, 148, 132, 242,  23,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	238, 244,  36,   5, 181, 113, 107,  72, 110, 135,  37,  49, 135, 213,  53, 173
	.byte	147,  59, 179, 187, 108,  96, 109, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 65,  40, 121,  83,  19,  72,  12,  51,  73,  42, 116,  57, 120, 153,  87,  45
	.byte	187, 154, 130, 215, 220, 240, 167, 244,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 52,  46,  55,  37, 223,  86,  59,  55,  26, 103, 169, 196,  60,  87,  37, 253
	.byte	 88, 233, 222, 157,  18,  10,  63, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153, 126,   4,  31, 237, 110, 169,   7, 136,  34, 131, 146, 185, 243, 232, 159
	.byte	130,  97, 242,   5,  17,  22, 155,  23,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169, 218, 198, 153, 150,  40,  60, 137, 166, 153, 181, 165,  25, 233, 250,  30
	.byte	146,  85,  87, 228,  61,  33,  78, 147,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	159, 187, 104, 133, 100, 140, 147, 111, 199,  73, 110, 180, 250, 255, 166,  36
	.byte	 96,  11, 207, 124, 157, 100,  62, 220,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 101, 131, 146,  25,  42,   1, 186, 106,  12,  79, 232,  26, 133, 157,   4
	.byte	206, 252,  37, 114, 218, 150,  20, 219,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  8,  74,  29, 139, 150, 117,  70, 179,  89, 241,  28, 193,  82, 116, 203, 202
	.byte	 40, 181, 190,  31,   6, 113,  55, 135,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	128, 249, 104, 116, 208, 244,   3,  85, 150, 113, 193,  28, 119,  61, 104, 181
	.byte	 11, 185, 127, 200, 164,  10,  36,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 65, 193, 219, 189, 139, 100, 125,  16, 141, 171, 124, 226,  47, 176,  12,  94
	.byte	179,  86,  26, 104, 124, 108, 139, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136, 226, 186, 108, 151, 177, 157, 181, 191, 159, 174, 225, 151, 255, 109, 237
	.byte	255,  50, 130,  61, 100,  20, 179,  14,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149, 171,  14, 203, 129, 121, 115, 145,  62, 140,   7, 253, 216, 188,  57, 135
	.byte	119,  29, 115, 112,  96, 234, 109, 110,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	167,  71, 164, 232, 237, 253, 210, 135, 125, 175, 134,  17,  99,  59, 246,  93
	.byte	 78,  94,  78, 199, 105, 210, 227, 203,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122, 151, 153, 180, 135, 229, 222, 178,  61,  38, 145, 195,  36,  18,  14, 214
	.byte	134, 201, 117, 156,  71, 179,   1,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175,  51, 119,  22, 244, 118,  56,  36, 231,  86, 223,  99, 145,  26, 173, 163
	.byte	 19,  63, 244,  77, 201, 162, 191, 180,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	232, 162,  58, 105,  33, 214,  30, 153,  45, 249,  49, 119,  10, 251,  61, 212
	.byte	198,  23, 230,  40, 190, 145, 152, 168,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	255, 189, 202,  56,  49, 152,  16, 120, 143,   4,  46, 157,  47, 195, 102, 196
	.byte	 38, 182,   6, 228, 167,  30,  78, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 236,  13,  80, 112, 201,  62,   5, 251, 170,  29,  19, 168, 247,  30, 216
	.byte	247,   6, 191, 118,  65, 248, 151, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	205, 235, 119,  40, 137,  44,  97, 199, 121, 116, 177, 248, 231, 129, 119, 230
	.byte	113, 232, 215,  64, 196,  39,  13, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248,  35, 157,  36,  11, 113, 208,  99, 158,  65,  78,  10,   3,  32, 155,  62
	.byte	111,   4, 160, 226, 123, 230, 247, 239,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	246, 156, 132, 112,  76,  87, 243,  82, 164, 134,  68, 227,  25, 171,  64, 243
	.byte	118, 237, 195, 239, 126, 158, 161, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 35,  21,  44,  43,  17, 217,  88,  38, 194, 216, 218, 123,  67,  40, 147, 120
	.byte	207, 115, 232, 149, 187,  11,  36,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	137,  96, 204, 157,  48, 199, 187,  83, 110, 241, 115,   9, 251, 217, 195, 214
	.byte	 33,   1, 183, 106, 226, 192, 145,  87,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248,  64, 175, 122,  63,  85, 245, 167, 251, 180,  70,  78, 201, 175,  17,  25
	.byte	 40, 122, 226,  87,  34, 209, 170, 250,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 52, 187,  80, 205,  37,  71, 199, 175,  63,  69,  99,  19,  80, 166, 225, 163
	.byte	 86, 235, 165, 225,  16, 169, 223, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	141, 182,  71, 190, 103, 187,  41, 160, 158, 220, 216, 240, 189, 230,  86, 214
	.byte	118, 140, 184,  12,  69, 173, 174, 147,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172, 184, 247, 115, 238,  67,  12, 215,  40,  53,  17, 225, 123, 162, 199,  24
	.byte	 90, 223,  36, 236, 179,  89, 141, 220,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	183, 237, 110, 245, 175, 165,  76, 221, 229, 208, 129,   6, 104, 172,  91,  66
	.byte	 55, 242, 116,  41, 107, 201,  46,  30,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 51, 174, 220, 217, 223, 197, 175, 239, 155,  12,   6, 179,  99, 195, 197, 154
	.byte	255, 222, 211, 116, 222,  21, 229,  63,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	117, 143, 129, 203, 198, 193,  89, 137, 108, 100,  49, 159, 140, 123,   0,  33
	.byte	126, 159,  29, 140, 113,  22, 201,  13,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	146, 146,   8, 128, 134,  10,  13,  76, 250, 234,  64,  44, 186,  61, 109, 123
	.byte	120, 238, 219, 163, 114,  21, 124,   3,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	186,  37,  18,  58,  11,  88,  28, 213, 165, 244, 164,  20, 222,  17, 238, 223
	.byte	201, 146, 160, 242,  55, 195,  85, 128,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	194, 250, 234, 244, 210, 203, 105,  72, 216,  82, 165,  17,  57,  86, 135, 184
	.byte	177, 168,   9,  93, 219, 157,  38,  80,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84, 232,  31, 237, 125,  21, 209,  14, 184,   1,   6,  11, 168,  72,  12, 208
	.byte	 50, 113, 173,  71, 182, 244,  29, 141,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24, 126,  83,  18,  62,  60,  64,  49,  33, 114, 111, 138, 180, 243,   1,   4
	.byte	 28, 144, 254, 168, 130, 165, 155, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 44, 109, 175, 222, 128, 255,   9,  55, 129,  79, 180,  34,  12,  33,  22,  60
	.byte	102, 106, 203, 230, 201, 208, 211, 189,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	180, 149, 183, 178,  22,  44, 115,  50, 230, 158, 237,  91, 178,  12,  51,  30
	.byte	158,   9, 237, 224,  32, 250, 179, 178,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102, 228, 162, 101, 195, 105, 242, 129, 146, 149, 144,  29,  78, 102,  79, 155
	.byte	250,  37, 157,  68,   7,   1, 208,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 85,   9, 101, 191, 147, 157, 224,  83,  31,  77, 187, 185, 204, 162,  63,  43
	.byte	232, 141,  83, 140,  62, 161,  46,  70,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123,  94,  13, 166, 196, 135, 227, 206, 176, 251, 175, 176,  49, 126,  51, 172
	.byte	 30, 186, 150, 145,  57, 101,  35, 142,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 38, 122,  92,  77,  29,  63, 108, 185, 130,   4,  40, 198,  53, 149, 156,  67
	.byte	145, 107, 220,  49,  37, 197, 139, 173,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56, 236,  40, 168,  51, 112,  23, 182,   1, 160, 190, 166, 153,  95,  80, 128
	.byte	 48,  44, 153, 235, 149, 201, 127, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 46, 168, 163, 211,   3, 101, 112,  52,  48, 229, 168, 228, 159, 128, 252,  86
	.byte	181, 243, 243, 164, 109, 181, 166,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115,  86, 209, 206, 191, 161, 137, 150, 134, 221, 174,  46, 177, 170, 121,  74
	.byte	 51,  27, 113,  60,  16, 124,  19,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	157,  79,  41, 218,   5, 255, 126,  38, 127,  14, 251, 244, 225,  29,  24,  23
	.byte	255, 195, 128, 163, 194, 114, 236, 149,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149,  18,  24,  55, 170,  20,  38, 232,  35,  50, 162, 195,  48,  51, 225,  95
	.byte	241,   3,   0,  69,  26, 254, 178, 162,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 27, 196, 118, 160, 114, 212, 165, 157,  10, 154,   4,  43,  90,  48, 213, 251
	.byte	 25, 234, 242,  11, 229, 181,  43,   6,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 79,  43, 219, 198, 208,  31,   1, 164, 103,  27,  18,  29, 230, 108, 204,  68
	.byte	167, 214,  17,  83, 101,  55,  52,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	199, 204,   6, 183,  79,  59, 139, 157, 230,  24,   2,  39, 233, 135,  63,  12
	.byte	219, 132, 171, 208,  33, 187, 231,  61,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	142,   9, 197, 196, 119, 151,  14,  53,  91,  38, 119, 183,  30, 156,  16, 164
	.byte	193, 216, 182, 247, 191, 156,  92, 235,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	184, 108, 100,  14,  19, 173, 200, 158, 183, 131, 153, 179, 231, 127, 143, 160
	.byte	255, 236,  79,   7, 234, 166,  59,  57,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	137,  46, 222, 228, 216,  56, 169, 226, 217, 248, 102, 162, 210, 171,  93,  54
	.byte	228, 244, 213, 170, 150, 226, 164,  26,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	166,  58,  49,   8, 141, 158,  87, 153, 135, 198,  20, 207,  72, 148, 179,  58
	.byte	147, 207,  57,   7, 214, 212, 129,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 73, 115,  23, 104, 161, 181, 238, 165,  20,  44,  11, 212,  33, 131, 102, 147
	.byte	136, 235,  52, 151,  80,  98,  71,  92,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	161,  50,  95, 159, 168,  29,   6,  43,  87, 148, 186, 108, 200, 115,  25, 100
	.byte	  4, 104, 100,  71, 232, 251,  76, 103,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24, 242, 237, 165,  41, 112, 153,  25,  11, 123, 206,  69, 168, 164,  74, 197
	.byte	163, 116, 154,  53,  18, 128, 251,  17,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185, 252,  96, 104, 183, 196, 239, 207,  89, 128,  48,  73, 146,  20,  32,   9
	.byte	161, 132,   8, 246, 156,  37,  30, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	155, 137, 181,  78,  84,  28, 102,  96,   6, 173,  30, 246, 208,  18, 224,  31
	.byte	 74, 237, 152, 220, 220, 174, 151, 198,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170, 230, 199, 221, 218, 216, 230, 168, 216, 148, 154,  16,  94,   1,  77, 102
	.byte	107,  38, 111,  72,  11, 220,  92,  50,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	137,  62,  54, 172, 120, 178,  69, 202,  53,  10, 117, 230,  85,  32, 235, 229
	.byte	166,  20, 171, 237,  74, 189,  38,  20,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76, 106, 177, 199, 119,  31,  35, 153, 242,  80,  60, 209,  96,   3,  31,  61
	.byte	242, 206,  28, 232,  31, 126, 127, 122,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	225, 110,   2,  73,  52,  82,  28, 132, 135, 161,  26, 141, 240,  10, 106,   6
	.byte	134, 154, 171,  12, 114, 126, 239, 248,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240,  20, 169, 128, 237, 227, 126,  79, 165,  77, 205, 149, 216,  76,  77, 154
	.byte	250,  15,  11, 185, 212, 226, 175, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122, 217, 249,  93,  12,  43,  30, 161, 237, 130, 167,  48, 125, 206, 255, 101
	.byte	 27,  16, 193,  50, 166, 241,  15, 244,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	242,  17, 170, 126, 125, 163,  96,  85, 146, 131,  40, 225,  22,  12,  39,  23
	.byte	125, 202, 177, 248, 177,  51,   6,  85,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 61, 153, 197, 108, 146,  84,  16,  93, 100, 106,  63, 117, 177,   0,  34, 175
	.byte	 24, 193, 120,  85, 149,  10, 185,  69,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191,   5,  67, 221,  47,  49,  44, 193, 108,  51, 246, 238, 206, 234,  56,  30
	.byte	140, 239, 235,  92,  49,  40,  97, 237,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 52, 117,  16,  84,  66,  91, 219,  38, 118,  98, 226,  68, 128,  96,  24, 100
	.byte	187, 143,  66,  33,   9, 217,  60, 146,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240, 163,  89, 232, 156, 215, 155, 205, 134, 211,   0, 117,   0, 222, 254, 196
	.byte	146, 147, 153, 244,  51,  28, 227, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236, 120,  14, 174, 154,  65, 169, 192, 119, 189, 186,  10, 224, 110, 219,  62
	.byte	235, 147, 150,  27, 138, 144, 104,  67,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 96,  94, 219,  50, 146, 194, 136, 179,  62, 154, 250,  85, 106,  37,   7, 182
	.byte	174,  89, 159, 147, 198, 124, 122, 190,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118, 104,  15, 252,  56, 140,  77,  88,  99,  68, 204, 117, 237, 178, 250,   2
	.byte	167, 242, 136,  41, 161, 253,  20,  36,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121, 168, 210, 145,  51,  50,  49, 181, 156, 187,  85, 181,   6, 107, 220, 180
	.byte	206, 249, 225,  24,   0,  45,  23,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	178,  23,  52,  44, 121, 115,  30,  96,  56, 102, 110,  22, 118,  93, 200, 163
	.byte	171, 215, 149, 156, 134,  35, 170, 244,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105,  26,  37,  64, 171,  39, 105, 173, 159, 196, 160,  22, 252,  14, 168,  49
	.byte	169, 198, 158, 114,  32, 138,   1,  53,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188,  56, 253,  67, 100, 199, 225,  30,  98, 244,  81, 176,  29, 105, 184, 146
	.byte	104,  21, 157, 217, 236,  45,  69,  28,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169,  94, 237,  75, 155, 180,  35, 115, 205, 181, 114, 111, 186, 230, 184,   8
	.byte	 17, 173,  97,  32,  37,  98, 198, 160,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 33,  32, 251,  69,  69,  69,  68, 106, 165, 221, 130, 200,  18, 249,  92, 253
	.byte	113,   7,  48, 110, 216, 136, 129, 155,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227,  94, 238, 209, 233, 239,  95, 216,  85,  98,  14, 133, 131,  11, 238,  10
	.byte	 96, 134,   7, 176, 147,  34, 224, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24,  12,  10, 140, 145,  64,  46,  72,   4,  24, 133,  15, 222, 251, 254,   6
	.byte	177, 160, 141, 119,  59, 188,  68, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16, 171,  46, 192,  63, 177, 127, 172, 224, 139,  45,  69,  87,  68, 103, 125
	.byte	108,  10, 191,  80,  92, 135,  70, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 72,  74, 217,  84, 202,  36, 213, 214,  21, 196,  86, 122, 121, 240,  32, 243
	.byte	 62, 222,  20,  32,  41, 224,  18, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	104,   3,  45, 123, 251,  78, 142, 238, 138, 149,  98, 217, 231,  58,  71, 197
	.byte	138, 251, 126, 162, 142,  21, 174, 155,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	203, 247, 205,  66,  49,  96, 123, 243, 151, 213,   8, 196, 155,  43,  50, 236
	.byte	  9, 169, 173,  68, 180, 192, 176,  23,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  3,  40, 124, 154, 202, 187, 115,  40,  61,  81, 167, 228, 215, 251,  81, 190
	.byte	164, 130, 219, 143,   7, 134,  94, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  3,  30, 110,  98, 234, 236,  56, 187, 155, 106,  35, 136, 229, 165, 178,  78
	.byte	 92,  13,  94,  59, 226,  80, 131, 157,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 31, 182,   5,   9, 214, 126,  37, 131,  74, 193,  83, 242, 186, 128, 225, 226
	.byte	 84, 157, 189, 157, 156, 153,  41, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	114,  23, 167,  31,   4, 110, 144, 181, 120, 107, 117, 228, 233, 141,  20,  90
	.byte	172, 227, 122, 155, 231, 231, 176, 192,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 12, 158, 141, 230, 105, 237, 205,  39, 145, 109, 249, 113,  44, 230, 153,  63
	.byte	108,  25, 224,  47, 124,  75, 188,   2,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 13, 197, 115, 184, 214,  31, 144, 138, 142, 251,  83,  75,  76, 213, 167,  17
	.byte	211, 115, 122, 100,  19, 168,  42, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122, 209, 162, 133, 150, 166,  94, 211, 249, 209,  80, 193,  76, 127, 250, 226
	.byte	182, 130,  30, 165, 190,  64, 234,  17,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	132,  40,  30, 196,  53,  59,  85, 175, 232,  65,   3, 142,  87, 230,  63, 156
	.byte	206,   3, 181,  88,  75,  62, 204,  44,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43, 132, 207, 205,  90,  22,   0, 247, 159, 188,  11, 138, 177, 142, 209,  28
	.byte	153, 129, 122, 171,  43,  15,  32, 141,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	117, 174,   9, 122,  52, 225, 248, 197, 197, 233, 162, 144, 103,   0, 172,  67
	.byte	183,  64, 125, 149, 184, 154,  52,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 65, 201,  65,   8, 134, 106, 196,  64, 148,  40, 140, 249, 169, 183,  27, 196
	.byte	 16, 254, 186, 125, 228,  56,  63, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156,  17, 231, 188, 236,  19,  39,  50, 199, 183, 240, 216,  16, 227,  78, 185
	.byte	  1, 219,  79,  84, 175, 132, 228, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 25,  49, 102, 117, 227, 231, 101, 116, 200, 179, 166, 199,  97,  76, 223,  25
	.byte	 76,  88, 178,  95, 249,  66, 187, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16, 132,  31,  71,  50, 125, 228, 190, 243, 123, 162, 195,  55, 131,  56, 236
	.byte	255, 152, 160,  88,  12,  34,  63, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 48, 167, 115,  65, 190, 237,   3, 154,  24,  69,  88, 170, 234,  94, 210, 248
	.byte	  8, 143, 234, 177,  57,  42, 194,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67, 175, 228, 150,  29, 170, 111, 209, 125, 153,  98, 232, 254, 173, 180, 244
	.byte	127,  32, 142, 205,  27,  59, 198, 195,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	130, 244,  50, 206, 204, 189, 100, 131,  71, 109, 205,  36, 153, 167, 214, 144
	.byte	 68, 246,  27, 182,  26, 195,  25, 191,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	157,  89, 234,  83,  82,  51, 183, 178,  80, 113, 170,  18,  29, 170,  51,  84
	.byte	191, 186, 166, 130, 217,  51, 208, 110,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136,   1, 199,  62,  75, 118, 118, 207, 137, 124, 101,  44,  18, 233, 125,  77
	.byte	  2,   1,  73, 237, 245,  26, 133, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  3,  18,  95, 147,  59,  16, 133, 192, 178, 142,  43, 113,  49,  84,  44, 165
	.byte	230, 103,  71, 204,  51,  89, 194, 210,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235,  94,  55, 213, 231, 144,  23,  83,  88, 190,  11, 110, 143, 157, 168,  36
	.byte	244, 235, 151, 199,  59, 251, 201, 249,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	196, 147,  25, 213, 150, 212, 105, 148, 190, 221,  82,  53, 181,  37, 162, 131
	.byte	145, 194, 174,  26, 120, 238, 251, 131,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	199, 162,  22, 233, 100, 247, 183, 111,   7, 179, 198,  30,  44, 158, 188, 136
	.byte	 73, 145,  70,  76, 173, 207, 156, 116,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121, 179,  14, 141, 165,  91,  34,  96,  38, 124, 211, 110, 121, 156, 121,  88
	.byte	 42,  95, 236,  11, 195,  26, 226, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	252,  17,  43, 226, 153, 223,  14, 115, 139, 113,  98, 251, 198, 206, 118, 101
	.byte	178,  75, 150, 130, 151,  70,  17, 157,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82,   0, 193, 152, 174,  88, 165, 239, 125, 110, 236, 226, 207,   3,  78, 167
	.byte	 64,  16, 142,  85,  11, 231,  50,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	238,  78,  80, 249, 117, 226, 170, 210, 221, 144, 140, 207, 195,  15, 126, 182
	.byte	 38, 106, 213,  75,  48,  52,  51, 213,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247, 153,   4, 157, 236, 254,  71, 251,  91,  16,  25,  94,  68,  22, 161, 158
	.byte	  2, 241,  34, 152,  87, 238, 186, 215,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  9, 122, 122, 147, 141,  41, 123, 162, 234, 186,  84, 173, 245,  56, 151,  50
	.byte	200,  98, 119, 230,   1, 169,  81,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216,  13, 229, 192, 214, 244,  47,  35, 250,  81,  10,  35,  20,   3, 164,  84
	.byte	 31, 146, 116, 235,  45, 116, 242,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36,  38, 212, 177, 187, 232, 247, 252, 242,  41,  84,  36, 166, 156, 237,  39
	.byte	  5,  21,  46, 226,   0,  92, 140, 172,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76, 240, 167,  88,  36, 216, 113, 183,  20, 192, 122, 134, 106, 129, 194,  37
	.byte	143,  65, 136, 182,  26, 147, 110,  78,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 81, 166,  55, 246, 248,  65, 126,  45, 106,  32, 169, 160, 155,  65,  52,  32
	.byte	113, 206,  52,  97, 116,   1, 224,  36,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	125, 109,  52, 183, 187, 240, 128, 179, 249, 228,  20,  15, 121, 214,  52, 194
	.byte	  0, 250,  75,  96, 155,  92, 174,  20,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	205, 105, 124,  29, 223, 217,  55, 111,  92, 205, 107, 227, 232, 222, 245,  18
	.byte	121, 156,  11,  22,   5,  87,  45, 254,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	208,  48, 199, 147, 141, 122,  44, 137, 149, 124,   3, 194, 182, 179, 113, 232
	.byte	105,   0, 212, 245,  84,  71,  40,  60,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	134, 117,  34,  27,  55, 148,  34,  47,  52, 129,  45,   8, 244, 210,  16, 125
	.byte	 77,  78, 145,  51, 146, 155, 199, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126,  87, 142, 148, 213, 147,  47, 211, 130, 150,  76, 144,  47, 141, 222,   3
	.byte	 67,  71, 184,  75,  61,  97, 156, 242,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	155, 161,  46, 108,  21, 137,  64,  23,  94, 226, 238, 111, 172,  66,  55, 105
	.byte	110, 153, 172, 104, 237, 255, 115, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 25,   8, 167, 197,  27, 225, 201,  33, 172,  13, 100, 186, 213,  48,  67,  95
	.byte	122,  32, 148, 225,  84,  53,  78, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	219, 133, 135, 132, 188, 136, 249,  63, 118, 146, 132, 251, 103, 180, 105, 156
	.byte	224, 144, 134, 253, 200, 172,  11, 162,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	168,  19, 230,  94, 117,  39, 238, 184,  86,  43,  83, 239,  29, 238,   2, 191
	.byte	 42, 171, 226, 215, 149,  73,  48,  24,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	144, 145, 113, 172, 206, 119,  12, 215, 230, 113, 199,  49,  19,  21, 140,  76
	.byte	101, 125,  62, 241,  60, 246,   2, 147,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	127,  80, 235, 160, 228,  25, 119,  73, 202,   1,  26, 248, 118, 192, 117, 219
	.byte	126,  19, 144, 145, 237, 244,  49, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36,  71,  92, 200,  50, 129, 191,  47,  47,  37,  30,  16,  75,  76, 190,  85
	.byte	175,  36, 122, 216, 141,  98,  55,  28,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	190, 181,  75,  54,  50, 152, 194, 150, 127, 123,   8, 130, 236,   2,  60, 215
	.byte	 16,  71,  43,  66,  98,   8, 244,   2,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5, 187,  41,  90, 218, 240, 133,  10,   5,   5, 158, 165, 236, 155, 170, 109
	.byte	 54,  80, 151,  14, 117,  38, 123, 165,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	212, 248, 161, 102, 188, 159, 238, 185, 145,  50,  21, 139,  15, 181,  65, 121
	.byte	177, 242,  20, 216, 248,  87,  97,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	150, 199, 211, 234, 108,  32, 253,  82,  36, 219, 212, 179, 191,  72, 144, 142
	.byte	228, 218, 156, 162, 198, 167,  34,  47,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	253, 178,  46, 235,   4, 244, 251, 155, 222,   3, 228, 202,  38,  80,  60, 136
	.byte	 19, 208, 236,   3, 182, 142, 254, 100,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	187, 148,  21, 181, 151,  44, 158, 232, 102,  42, 173, 218,  94, 141, 190,   3
	.byte	151,  77, 107, 133, 253, 116, 231, 233,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	127,  67, 189, 203,  58, 215, 132, 248, 235, 132, 160, 159,   6, 185,  59,  84
	.byte	224, 175, 116,  22, 243,  82, 247, 191,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	226, 235,  91, 153, 139,   1,  42,  11,  77, 202, 156,  92, 222, 182, 224, 239
	.byte	 68,  91, 237, 131,  22,  10,  21,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240, 164,  13, 202, 141,  34,  52,  51, 117, 103, 123, 134, 128, 165, 213, 153
	.byte	228,  90, 232, 151, 126,  26, 117,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	151,   8, 131,  78, 226, 201, 181,  13, 192, 173, 246,  84, 114,  10,  89, 150
	.byte	144, 213,  51, 228, 172,  32,  59, 243,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156, 159, 195, 126,  42,  66, 149, 114, 199, 115, 251,  14, 228, 180, 161, 117
	.byte	125,  99, 104, 103, 100, 100, 185, 241,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 52,  70, 111, 202,  82, 137,  88, 224,  98,  43,  22, 166, 213,  80,  58,  12
	.byte	185, 145,  85, 199, 184,   8,  45, 185,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235, 247, 188,  38, 140, 131, 222, 117,  42, 144,  90, 243, 184,  65, 137, 200
	.byte	124,  18,  72, 157,   4,  55,  60, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 196, 131,  56, 153,  23, 251, 101,  48,  92, 106, 104, 161,  71,  10,  80
	.byte	132,  48,  57, 169, 116, 217, 138, 157,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 48, 251, 151,  11,  83, 236,  68, 206, 228, 182,  39,  40,  35, 154,  52, 124
	.byte	226,  40,  74,  98, 179, 253,   3, 180,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235,  62, 157, 153,  68,  95, 216,  76,  62, 138, 193,  18, 106, 169, 194, 150
	.byte	 49, 251, 202, 111, 214, 116, 225, 250,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	250,  86,  25,  30, 187,  58, 169, 101, 114, 252, 187,  81,  32, 134, 128, 126
	.byte	175,  42, 155,  27, 175, 245, 132,  60,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	253, 255, 233,  35, 164, 192, 116, 164, 191, 171,  67, 101, 174, 253, 162, 109
	.byte	109,  70, 128, 127,  62, 120, 212, 190,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	108,  68, 187, 165, 232,  46, 122,  82, 101,  40,   8,  77, 251,  72, 198,  84
	.byte	104,  63,  88,  76, 249,  70,  79,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	162, 173, 143,  94, 209,  54, 187, 146, 218,  18,  12, 212, 135,  40,   6, 221
	.byte	  7,  69, 119,  40, 227, 170,  78, 188,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	206, 254,  61, 110,  42,  98, 104,  40, 113, 219, 174, 206,  37, 108,  49, 183
	.byte	158, 150, 155, 165, 100, 128, 213, 118,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	124, 165, 156, 222, 131,  68, 218, 238, 192,   0, 173,  87, 254,  29, 214, 133
	.byte	177, 168,  22, 199, 136, 155,  25,   6,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	107,  89,  69,  30,   3, 102, 149, 127, 231, 239,  19, 192,  51, 197, 234, 137
	.byte	172, 244,  40, 131,  59,  75, 195,  71,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235,  84, 251, 173,   0,  82, 161, 216, 240, 189,  93, 202, 152,  56,  26, 115
	.byte	243,  22, 151, 149,  92, 202, 187, 248,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188, 216, 105,   8, 106,  29,  47, 233, 247,  18, 205, 143, 140, 149, 143,  81
	.byte	 35,   3, 159, 194,  75, 246, 122, 218,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 46,  98,  15,  16, 138, 221, 177,  98, 157, 141, 225,  24, 245,  32, 182,  40
	.byte	 28, 189, 165, 193,  58, 229, 125, 197,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	226, 231,   1,  81, 102,  19,  74,  43, 228, 248, 148, 185, 156,  11,  30,  41
	.byte	 61,  38,  95,  84, 195, 183,  80, 142,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11,  67, 192, 173, 107, 232, 242, 116,  10,  65, 234,  82, 230, 199,  54, 123
	.byte	127, 145, 120,  52,  13,  79,  52, 102,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	204, 109, 147, 210, 116, 154, 229, 155, 184, 170,  82, 212, 162, 170,  27, 155
	.byte	 93, 230,  11, 144, 151, 231, 105,  23,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115, 146, 212, 202,  44, 215,  63, 108, 111,  67, 132,  44,  14, 151, 114, 142
	.byte	117, 146,  38, 185, 112, 207, 103,  68,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	208, 141, 100,  57, 166, 210, 251, 209, 112,   3, 178, 179,  93, 181, 245, 238
	.byte	  4, 113,  39, 238, 208, 217, 253,  18,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122,   4, 167, 200,  27, 156, 121, 178, 103, 254,  64,  66,  96, 119, 179,  35
	.byte	237,  55, 181, 212, 101, 167, 220, 252,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	176,  81,  72, 218, 189, 208, 188, 181, 205, 221, 239,  66, 157, 229,  68, 191
	.byte	169, 205,  27, 156,  20,  90, 188, 154,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	192,  21, 185,  95, 220, 238,  23, 210,  53, 226,  13, 240, 232,   6, 240, 205
	.byte	 29,  77, 148, 226,  16, 153, 210, 116,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 20, 235, 141,  89,  83,  28, 172, 133, 169, 146,  12, 134, 176, 143, 111, 145
	.byte	 65,  31,  17, 168, 222,  31, 194,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 20, 203, 155, 255, 177,  45, 153, 139, 169,  44, 214,  93, 151,  44,  41, 164
	.byte	137, 131,  10,  75, 109, 104, 123, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86,   9,  68, 203,  53,  51, 253,  17, 155, 151, 132, 129,  13, 151, 221, 165
	.byte	176, 131,  90, 221,   0, 171, 105, 221,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136,  70,  79, 254, 100, 112, 207,  11, 218,  84,  52, 162,  54,  98, 153,  46
	.byte	 46, 187, 184,  92,  75,  54,   1, 213,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50,   6,  56, 207,  44,  64, 132, 237, 247,   2, 214,  25, 172,  33, 106,  54
	.byte	167, 205, 130, 109, 105, 139, 248, 213,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	199,  81, 254, 110, 124, 149, 188,  36, 213,  63,  24,  41, 227, 178, 127, 235
	.byte	234, 111, 253, 186, 248, 223, 194, 128,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	225,  32, 161,  39,  97,  82,  80, 145, 239,  71, 123,   6, 194, 184,  12,  12
	.byte	221, 173,  19, 205,  99, 181, 231,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	132, 213,  20, 249,  46,   1, 240,  84,  77, 207, 247,  33, 186, 182,  35,  91
	.byte	170, 136, 145, 250, 131, 116, 106,  63,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 44,  69, 246,  65,  57, 191,  99, 212, 146, 200, 241,  60, 251, 122,  64,   4
	.byte	247,  23, 131, 129, 240, 112,  17,  60,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	193, 151, 105, 235,  69, 221, 191, 230,  38,  83, 182,  94,  14,  19, 186,  54
	.byte	223,  54, 219, 192, 190, 128, 117,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	183,  81, 182,  32,  18, 120,  92, 177,  35, 163, 204, 255, 127, 131, 169, 185
	.byte	  8, 153,  64, 107, 243,  84, 130,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 115, 254, 154, 107, 224, 242, 208, 239, 172, 201, 135, 210,  36,   3, 188
	.byte	 48, 178, 248, 192, 152,  61, 120,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	203,   4,  71,  87, 199,  58, 168, 100,  15, 164,  23, 253,  51,  48,  58, 118
	.byte	131, 147, 132, 252,  49, 125,  67, 123,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	148, 112,  33,  19, 103, 151,   8, 194, 129,   6, 240,   7, 179,  52,  47, 214
	.byte	 67, 226,  27, 233, 104,  60, 228,  59,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111, 255, 113, 114,  39,  32, 121, 190, 223, 177,  82,  15, 175,  24,  64,  57
	.byte	243, 184, 137,  73, 170, 159,  57, 197,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	132,  29, 170, 126, 141,  91,  15, 226,  68, 155,  13, 172,  15,  45, 169, 102
	.byte	160, 202, 153, 234, 132, 137, 155, 139,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 28,   4,  77,  61, 225, 115, 184,  61, 166, 181, 255,  49, 176, 142,  83, 161
	.byte	 54, 234,  30, 241,  14,  18, 172, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	222, 178, 134, 178, 141,  59, 183, 213,  82, 199, 198, 162, 211,  26,  91,  78
	.byte	104, 124, 218,  23, 253,  66, 239,  40,   0,   0,   0,   0,   0,   0,   0,   0
G$l_matrix:
	.byte	 76, 136,  40, 219, 236, 149, 216, 145, 198, 177, 181, 234, 199,  70, 149, 117
	.byte	  0,   6, 178, 105, 220,  42,  56,  50,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	183,  81,  36,   0, 111,   2, 249, 153,  94,  10, 125, 250, 145,  25, 206, 150
	.byte	 81, 164,  66,  69, 130,  99,  93, 229,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	186,  66, 143, 142, 129, 136,  14, 130, 207, 201,   4, 209, 241, 205,  27, 187
	.byte	165, 171,  59,  87, 101, 154, 213,  40,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86, 178,  12,  43, 192, 141, 237, 173, 188,  87,  39, 231, 162, 234, 118,  49
	.byte	 69, 243, 197, 220, 158, 248, 169, 133,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 39, 129, 249,  96, 137, 153, 193,  74,  76,  92, 189, 241,   2, 137, 145, 134
	.byte	 74, 205, 132,  12, 243,  25, 142,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	218, 154, 134,  65,  35, 204,  96, 210, 115,  39, 233, 174,  24,  25, 199, 218
	.byte	 77,  70, 193, 151, 138, 129, 222,  72,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	205,  67,  11,  16,  92, 205,  88, 205, 137, 112, 236,  13, 249, 197,  35, 136
	.byte	178,   2, 116,  55, 239, 195, 121, 215,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	166, 153, 209, 252, 144, 129, 142, 183, 254,  43, 117,  72,  68,  30, 203,   8
	.byte	 44,  38,  55, 251,  19,  75,  17, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67,  42,  59,  58,  69,   5,   2, 171,  13, 177,  78, 156, 221, 200,  52,  63
	.byte	 64,  54,  44, 148,   2, 170, 122,  73,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	108, 131,  93,  75, 186,   3, 255, 252, 169, 141,  15,  27,  24, 122,  38, 252
	.byte	 96, 130, 231,  95, 217, 160, 250, 235,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43, 205,  46,  69, 240, 117, 211,  17,  87, 209, 112, 149, 221, 252, 161, 163
	.byte	147, 221,  38, 130, 111,  33,  78, 182,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	134,  64,  89,  17,  40, 151, 137, 191, 182, 153,  33,  67, 175, 124,  25,   4
	.byte	176, 163, 111,  87, 208,  50, 225,  54,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153, 100,   1, 142, 166, 135, 181,  53, 152,  93, 255,  88, 221, 251, 165, 160
	.byte	 30,  21,  10, 205, 191, 164, 149, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	230,  89,  27, 184, 188, 155, 105,  16,   1, 128, 190, 250, 251,  49,  11,  70
	.byte	136, 156, 118, 133, 123,  32, 150, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 66,  47, 129,  60,  47,  12, 137,  97, 122, 163,  53, 169,  89, 171, 122,  81
	.byte	247,  73,  56, 238, 132, 187, 193, 203,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 87, 137,  52, 118, 228,  72, 186, 225, 234, 139, 235, 233,  26, 201,  30, 234
	.byte	207, 105,  60,  20,  88, 229, 134,  32,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56, 198, 113, 212,  90, 241,  84,  32,  24,  28,  73,  99, 133, 186,  38, 118
	.byte	 63,  64, 173,  57,  37,  34, 255,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247,  16, 210,  94, 217, 232,  20,  86,  70, 240,  79, 190, 116, 124,  22,   7
	.byte	239, 140,  92, 179, 171, 227, 182, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 93,  65, 121, 108,  42, 181, 200,  26, 148, 120, 195, 129, 141,  24, 136,  48
	.byte	 98,  61, 142,  74, 159,  30, 109, 118,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169,  77, 250, 210, 176, 215, 219, 114, 134,  69,  44,  51,  18, 229, 242,  57
	.byte	150, 203, 228,  59, 222, 140,  61, 118,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  6,  29, 154,  10, 184,  80, 220,  83,  72,  75, 162, 235, 194,  17, 205, 176
	.byte	 27, 150, 146,  11, 229,  33, 235,  48,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	125,   7,  43, 195, 193,  81, 239,  79,  22,  79,  15,  68,  11, 150, 135,  92
	.byte	180, 198, 188, 188, 217,  87, 127, 221,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	251,  41, 167, 222,  25, 236, 195, 170, 122, 209,  58,  81, 180,  51,  67, 254
	.byte	 77, 110, 119, 228,  85,  22, 139, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 91, 121, 102,  90, 126,  11, 166,  98,  72,  33, 142,  15,  71,  20, 200, 196
	.byte	103, 128,  62,   9,  80, 136, 198,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37,  28, 236, 204, 137, 123,  19, 212, 193,  83,  34, 241, 154,   0,  89, 206
	.byte	 13,  27, 131, 166,  78,  33, 210, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	249,  64, 111,  31, 140, 125, 226,  50, 189,  36,  31,  48,  57, 159, 116, 132
	.byte	217,  27,  64, 161, 151, 110, 211, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	224,  56,  60,  54, 182, 232, 148, 169, 121, 217,   2, 170,  37, 186,  77, 254
	.byte	190,  20, 223,  37, 214,  62, 127, 127,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 27,  14,  25, 236, 240,  11,  94, 198, 119, 106, 101,   3,  78,  54, 203,  20
	.byte	140, 225, 137,  34,  24, 243, 112,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121,  26, 142, 161,  48,  13, 129, 228, 175, 100, 112,  71, 180, 226, 137, 166
	.byte	  3,  70, 200, 255, 172, 245, 137, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	203, 196, 183,  53,  22, 178, 117, 153,  67,  85,  62,   4, 242, 181, 239,   8
	.byte	 97,   3,   1, 195, 249, 195,  26, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5, 174,  71,   4,  46,  29, 181,  23,  75,   2, 151, 166,  49,  62, 105, 236
	.byte	193, 100,   4,  56, 200,  51, 214,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82, 192, 228,   0, 204, 213, 154, 102, 218, 247,  19, 251,  46, 245, 159,   7
	.byte	199, 126, 147, 233, 222, 192, 182, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 166,  13, 198,  63, 170, 118, 107, 159,  28, 172,  77, 105,  12, 249, 238
	.byte	 32, 240, 203, 140, 104, 104, 108,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 66,  39,  36,  13, 153, 243,  79,  25,  13, 110,  75, 144, 121, 244, 118, 106
	.byte	 85, 120, 212,  61, 219,  48,  80, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	155,  56, 233, 190,  42, 151, 121,  10, 247, 114, 201, 206, 182,  70,  55, 187
	.byte	140, 237,   5,  51,  87, 127, 137,  82,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 53, 182,  50, 187, 216, 100,  28,  46, 136,  23, 173, 178, 155,  85,   4,  34
	.byte	133, 249, 228,  57, 219,  92,  26, 132,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116,  15,  78, 153, 153, 237,  88, 135, 168,  92, 180, 248,  63,  48,   7, 254
	.byte	113, 221,  17, 255, 139, 123,  52, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	125, 112,  47, 129, 172, 240, 189,   6, 145, 154,  62, 252, 193, 191,  53,  29
	.byte	164, 222,  89,  18,  20,  60, 141, 114,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  4, 117,  38,  65, 107, 221,  73, 219,  43,  65, 187,  37, 208,  26, 201,  50
	.byte	172,  23, 234,  82, 112,  99,  16,  57,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37, 168, 156, 177, 125,  12, 129,   4, 239,   6, 151,  85, 131, 167, 228,  14
	.byte	 91, 234, 128, 179, 155, 151, 226,  37,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	255, 103, 112, 185, 168, 148,   6, 165, 250,  83, 213, 242,  73, 254, 152, 177
	.byte	192,   9, 201,  33, 159, 184,  11, 149,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216, 111,  67, 173,  29, 126, 213, 222, 156, 126, 102,  32, 250, 166, 173, 198
	.byte	201,  98, 185,  68,  44, 209,  30, 238,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 19,  17,  82,  66,  56,  15,  72,  93, 162, 129, 199, 125, 206, 193,  47, 129
	.byte	218,  30, 236,  78, 125, 207,  41, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 44, 194,  37,  77, 238, 238, 222, 154, 231,  32,  16, 196, 158,  82,  27, 133
	.byte	157, 230,  65, 199, 204,  62, 142, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37, 160, 182, 227,  42, 176, 144,  66, 201,  42,  46,  28, 202,  24, 134, 148
	.byte	183, 168, 178,  34, 180, 112, 104,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149, 255,  69,  76,  38, 188, 128,  41,  90,  32,  22, 152,  43, 196,  55, 168
	.byte	 29,  81,  49,  67,  66, 245, 253, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 81, 140, 251,  18, 134,  62, 202, 199, 253,  54, 118, 232,  71, 199,  23,  77
	.byte	 68, 149, 204, 135, 177, 250, 188,  28,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	151, 190, 217, 103,  14,  85, 123,   4,  60, 216,  23, 150,  38, 149, 186, 192
	.byte	 29, 196,  16,  63, 101, 170,  50, 228,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43, 100,   0,  16,  32, 232, 187, 136,  77, 183,  52, 207, 246, 119, 104, 191
	.byte	 44, 143, 196, 232, 224,  66, 246, 148,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  6, 155,  31,  16,  32, 192, 161,  63, 181, 113,  19, 148, 139, 129,  70, 246
	.byte	 69,  62, 137,  21,  40, 234,  46, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	133, 232, 196, 151, 148, 112, 125, 121, 231, 198,  50, 101,  69,  31, 223,  17
	.byte	 89, 243, 136, 146,  96, 104,  47,  74,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131, 211, 217,   4,  53,  38, 137,   6,  52, 207, 186, 232,  59, 168,  44, 150
	.byte	 81, 129,  35, 233,  70,  71,  89, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	109, 198,  83, 112, 188, 244,  58, 148, 216, 189, 133,   2, 248, 232,  97, 115
	.byte	 10, 150, 200, 240, 208, 132,  85, 146,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 88,  60, 219,  86, 161, 106,  62, 238, 231, 172, 111, 162, 220, 124, 124,  57
	.byte	 82,  73,  62, 167,  42, 159,  48,  11,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	117,  54, 168,  29,  28, 210, 124, 154, 124, 146,  54, 151, 124, 192, 128, 198
	.byte	197, 234, 117, 159, 214, 119, 253, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	246, 172,  89, 111,  93,  70, 219,  38,  26, 233, 150,  43,  73, 104, 243,  90
	.byte	134,  40, 233,  90, 203, 161, 101,  88,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223, 116,  81, 189, 158,   5,  73, 177, 204, 180,  45,  89,  88,  68, 106, 193
	.byte	 66, 178, 184,  36, 173,  32, 220,  52,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	220, 125, 231, 224,  26,   6, 129,  95,  80, 115, 143, 215, 196, 170, 175, 227
	.byte	 52,  40,  40,  37, 197, 113,   6, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	224, 221, 147, 142,  89, 216, 171, 215, 160,  73,  33, 132, 218,  77,  78,  96
	.byte	171, 100, 171, 143, 152, 225, 132, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	106, 176, 118, 177,  14, 140, 208, 154,  92,  73,   5, 196, 192, 140, 161, 229
	.byte	 70,  35, 186, 217, 207,  42,  49, 129,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 78, 191, 114, 193, 174, 203, 242, 167, 177, 143,  17,  53, 124, 182, 205, 231
	.byte	 17,  39, 135, 152, 223, 238,  62, 100,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 87,  18,  67, 211, 177, 195, 128, 143, 199,  34, 198,  32, 177, 143,  62,  12
	.byte	152, 159, 214, 109, 198,  23, 232,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156, 231, 232, 124,  78, 108, 217, 234,  62, 170, 102, 242,  51,  58,  84,  87
	.byte	 32,  96,  73,  35, 105, 145, 108,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149,  20, 185, 209, 151, 202, 247,   7, 127, 192,  39, 195,  90, 140,  33, 176
	.byte	 76, 212, 113, 167,   2, 214, 231,  63,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	213, 243, 197,  96,  38, 134,  53, 131, 206,  27,  29, 164, 182, 166, 202,  14
	.byte	 61, 114,  49, 209,  22,  31,  52,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	142,  91,  55,  48,   6, 208, 246, 184,   1,  57,  30,  86,  13, 210,  94,   2
	.byte	 81,  83, 214, 135, 146, 196,  63, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 21, 231,  16, 234, 116,  97, 220,   9,  73, 153,   0, 218, 248, 166,  74, 135
	.byte	 31, 156, 200, 191, 229,   3,  21, 155,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	193,  47,  51,  16, 165, 110, 131, 201,  81, 252,  71,  60, 110, 136,  38,  15
	.byte	102, 238,  39, 154, 118, 249, 135,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179,   1, 124, 199, 198, 204, 123, 243,  59,  47, 220,  58, 205,  10, 198,   7
	.byte	107, 234, 163,  84,  62,  39,  85,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16,  39, 189,  16, 101, 233,  15, 159,  76,  12, 158, 227, 240, 125,  68, 250
	.byte	 55, 211,   9, 229,  58,  54,  91, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	246, 119,  84, 169, 213, 213, 151, 139, 128, 162,  94,  68, 240,  98, 193, 115
	.byte	202,  51, 154,  34,  28, 182, 105,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84, 197, 175, 227,  71,  53,   4,  62, 207, 204, 155, 199,  26, 224, 110, 152
	.byte	234, 152, 114, 150,  56,  30,  87,  72,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 85, 191, 230, 124,  45,  68, 246,  34, 127,  81, 225, 247, 222, 102,  77, 100
	.byte	249, 199, 133, 147, 199, 168, 166, 126,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54, 105, 197, 226, 206,  11, 102,   4, 240, 251,  94, 234, 193, 127,  28,  60
	.byte	153, 140, 255, 122,  68, 226,  24, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234, 148,  99,  36, 171,  18, 172, 194, 238,  11, 161,  38,  14, 243, 227, 237
	.byte	231, 102, 149,   2, 226, 108, 198,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	174,  75,  51, 252, 103, 248,   0, 124, 126,  15, 199, 181,  29, 216,   1,   9
	.byte	 66,  80, 119, 164, 102, 193, 108, 209,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 14, 226,  98,  95, 130,  62,  61,  96, 153,  70,  64, 243, 138, 229, 112, 221
	.byte	226, 202,  94, 120,  72,  67,  49,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147, 159, 188, 145, 126,  28, 193,  62, 172,  94, 198,  20, 165, 219, 132,  51
	.byte	129, 248, 181, 175,  77, 170, 223, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	164, 205,  22,   4,  56,  18, 242,  76,  14, 115, 131,   5, 243,  31,  14, 158
	.byte	102, 226, 137,  21, 158, 114, 167,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 32, 124,  11, 163, 140, 116, 179,  68, 174, 126,  50, 158,  84,  53, 230, 208
	.byte	158, 123, 190,   2, 108,  52, 132, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143, 236, 253, 139, 148,  93, 200,  70,  47, 208, 121,  51,  28,  49,   4, 133
	.byte	 43,  26, 188, 218,  14,  23,  50, 163,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67, 215, 226,  45, 223,  54,  55, 123, 220, 100, 227,  49,   7,  56, 218, 242
	.byte	122, 168, 156, 170,  89, 144,  75, 214,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	138,  93,  65, 154,  85,  10,  38,  64,  71,  48,  56,  35,  15,   3, 151, 169
	.byte	 50, 179,   8, 133, 188,   5, 197, 233,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	148, 195, 159,  35, 244, 243,  62, 164, 192,  90,  17,  48, 102,  40,  61,  94
	.byte	 91, 237, 143, 195, 160, 227, 243, 192,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	212,  66, 113, 103, 253, 105,  27, 123,  25,  95,  99, 218,  39, 185,  53,  14
	.byte	145, 226,  10,   0, 225, 186,  42, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	108,  45, 235, 240, 153, 139, 124, 197, 207,  63, 225, 146, 234, 231, 196,  47
	.byte	 10,  86, 106,  18, 191, 125,  50,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 26, 108,  61,  28, 164, 208, 147, 187,  23, 117, 127,   6,  47, 105,  16, 198
	.byte	 20,  95,  83, 124, 123,  61,  48, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 81, 195,   4, 192, 150,  10, 113, 225,  78, 237,  27, 230, 210, 151,  68, 229
	.byte	216,  83,  46, 252,  78, 167,  79,  36,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102,  19,  87, 137, 137, 160, 242, 152, 140, 101,  10, 133,  49, 237,   1,  15
	.byte	136,  64, 119, 238,  92, 109, 146, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121,  15, 175,  94, 165,  36, 128,  31, 211,  19, 236, 186,  98,  93,  38, 252
	.byte	 37, 108, 153, 201, 137, 213,  12,   3,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 19, 217, 196,  27, 146,  70, 230, 253,  16, 244, 187,  68,  18, 114,  12,  68
	.byte	188, 163, 192, 211, 181,   1, 234, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115, 234, 139, 103,  90, 194, 137, 150, 206, 251,  67, 194, 240,   0,  62, 239
	.byte	216,  13,  25, 218, 119, 144, 179,  16,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169, 249,   3,   9, 153,  32,   6, 121,   0, 180, 113, 224, 105,  47,  37, 102
	.byte	143, 104, 131,  62, 233,  24, 150,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115, 188, 136, 196, 188, 122, 151, 161,  82, 208, 171, 180, 188,   4,  44, 155
	.byte	230, 106,  51, 121, 121, 102, 239,   3,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	151, 181, 170, 144,  61, 116,   0, 174, 216,  56,  61,   2, 110, 107,  26, 225
	.byte	100,  11,  31, 120, 237,  39,  29, 121,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	159,  62, 216, 219, 159, 165,  51,  44,  60, 133, 199, 158,  29,  95,  63,  93
	.byte	107, 233, 193,  59, 234, 216, 150, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63, 204,   8,  39, 174,  20, 188,   8, 180, 207, 251,  22,   5, 204,  66, 209
	.byte	 97, 168,  67, 118,   7, 118,   2, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 147, 125,   5, 201, 134, 122, 240, 206,  97,  78,  56, 138, 171, 205, 239
	.byte	 25, 104,  66, 110, 121,  74, 177, 174,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	107, 128,  72, 193, 127, 131, 239,  62,  50,  42, 119, 180,   6, 104, 162, 148
	.byte	213, 222, 250, 110,  17, 246,  94, 143,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	225,  63, 174, 212,  69,  32,  17, 141, 238, 199, 215,  86,  31,  77, 207, 119
	.byte	 61,  90, 201, 108, 111,  83, 226, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	174,  56, 189,  38,   2, 134,   5, 224, 238, 176,  92,  62, 164, 187,  49,  86
	.byte	 58, 254,  51,   8,  84, 252, 180, 227,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	154, 122,  91,  86,  20,  39,  35,  64,  76,  34, 139, 132,  42,  56,   0, 134
	.byte	107,  28, 141, 182, 180,   1,  36, 114,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 70,  91,   7, 192, 232, 183, 100, 153, 225, 205,  58,  61, 188,  89, 123, 241
	.byte	 22,  79, 194, 109,  14,  49,  57,  99,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 97, 151,  15, 141,  79, 195, 249, 100, 109,  28, 178, 125, 183,   2,  55, 102
	.byte	169, 164,  41,  84, 145, 255, 183,  37,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216,  19,  42, 202,  45, 143, 209, 208,  21, 162,   2,  92, 195, 151, 250, 198
	.byte	246, 244,  53, 141, 103,  11, 110,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	210, 223,  34, 149, 154, 199, 210,  61, 137, 132, 117, 221, 176, 230, 119,  66
	.byte	 63, 229,  79,   5, 131, 250,  31,  18,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	138, 244, 102,  97, 246, 140, 177, 102, 167, 241, 180, 154, 102, 253, 224, 251
	.byte	223, 239,  23, 146, 124,   7, 242, 204,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	160,  34,  59,  36,  55, 134, 111, 181,  37, 222, 131, 110, 109, 137, 254,  80
	.byte	228,  40, 248,   3, 227, 143,  67,  25,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94, 163,  22,  32, 179, 164,  79, 223, 116, 175,  30, 199, 234, 241, 188, 211
	.byte	 67,  27, 252,  47,  64,  95, 234, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	229,  44,  85,  26, 173, 196, 114,  19, 166, 102,   1,  56, 253, 129, 120, 243
	.byte	212, 148, 113, 142, 130, 163, 114, 149,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	139, 210,   3,  63, 148, 153, 184, 126, 204, 188,  78, 230,  89, 114, 174, 140
	.byte	138, 204,  34,  95,  87, 242, 201,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 25, 192, 107, 177,  28,  26,  69, 193, 254, 254, 245, 248, 237, 134,  68, 188
	.byte	 36,  83, 180,  30, 125, 240, 122, 238,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	159, 148,  24, 115, 232, 228, 167, 174,  12, 119,  79,  99, 113, 221, 166,  42
	.byte	190,  64,  76, 250, 255,  23, 245, 118,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	253,  24, 228,   9, 179,  11, 203, 190, 102,  40,  64,  72,  26, 100, 251, 171
	.byte	199,   9, 242, 216, 146,  97,  16, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	215, 249, 146, 205, 177,  57,   6,  75, 105,  89,  73, 112,  35,  96, 142,  86
	.byte	118,  70,  52,  73, 143,  38, 216,  97,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 19, 249,   6, 100,  86,  58, 105, 100, 123,  68,   4, 231, 244, 113,  43, 251
	.byte	 97, 171,  32,  23, 255,   2, 119, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	164, 214,  58, 162, 143, 161, 237, 240, 162, 246,  69, 191,  33,  22,  51, 110
	.byte	 35, 204, 208, 158,  29, 240, 123, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	109, 168, 194, 213, 143, 190, 171, 216, 228, 205, 136, 143, 254, 156, 221, 100
	.byte	 62, 161, 128, 122,  14, 214,  53,   3,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191,  15, 133, 235, 153, 117,  30,  49, 245, 239, 112, 194, 184,  83, 249, 173
	.byte	 37, 254,  57,  31, 136, 122, 125, 134,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169, 218, 186, 249, 159,  29, 189,   8, 193,  87, 215, 239, 140,  73,  77, 180
	.byte	150,  40, 220,  66, 165, 139, 142, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 20, 123, 176, 167, 234, 208,  36,  25,  20,   8,  87, 113,   8,  96,  23, 145
	.byte	193, 239, 167,  86, 252,  68,  15, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 51, 207, 157, 150, 223,  40,   3, 245,  32, 207, 249, 219, 127,  87, 155, 166
	.byte	232, 230,  94, 219, 236, 252, 157,  66,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	229,  52, 157,  93, 198,  70,  49,  49,  50,  10, 171, 100,  79,  22, 166,   5
	.byte	223, 111, 141,  79,  56, 229,  90, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 70,  25,  99,  84, 104, 109,  29, 222, 223, 168, 116,  81,  23, 192, 249, 229
	.byte	165,  40, 181, 207,  71, 231, 171,  89,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 53, 146,  94,  92, 122, 232, 123,  42, 221, 207, 244, 161,  23,  36, 233, 211
	.byte	  1,  74, 205,  87, 200,  33, 171, 177,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 95, 243,  10, 237,  92, 227, 167,  73,  82, 217, 223,  34, 110, 218, 220, 149
	.byte	181, 209, 100, 215,   6,  28, 158, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50,  40,  82,  15,  16,  87, 227,  96, 163,   9, 149,  80, 203,  43,  56, 122
	.byte	232,  68, 209, 179,  13, 249, 100, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147,  20, 125, 190,  83, 241, 254, 232, 215,  51, 180, 194, 206, 197, 123,  32
	.byte	216, 159, 105,  22, 246, 216,  65, 185,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	148,  86, 251, 124,  33, 153, 102, 250, 224,  45, 206, 245, 204, 104, 187, 226
	.byte	 59,  97, 209,  69, 124,  66,   7,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10,  60, 111, 190,  33, 138, 179,  52, 108,  97, 200, 244,  73, 219,   0,  12
	.byte	161, 115, 218, 141, 233, 226, 162, 139,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156, 200,  59, 249, 239, 170,  91,  65,  43,  28,  62, 215,  30, 126, 129, 119
	.byte	106, 187, 178,  69,  26,  16, 158, 166,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	195, 121, 164, 225, 253,  15,  97, 150,  54, 232, 151,  96, 224,  80, 196,  94
	.byte	212, 244,  19, 110, 203,  72,   1,  13,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98, 213, 206,  96,  93, 173, 245, 250, 128, 235, 112, 211, 201, 128,  89, 202
	.byte	231, 130, 229, 176, 238, 225, 249, 214,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235,  77,  19, 101,  96, 195, 143, 127, 151, 150,  81,  73,  46,  61, 160, 245
	.byte	  1,   3,  61,  58, 177,  60, 204, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185, 105, 206,   0,  32, 170, 245,   8,  28, 166,  70, 249, 186, 120,  98, 174
	.byte	127, 252,  11, 216,  19,  41,  75,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43, 192, 127, 144,  29,  78, 240, 221, 107, 231, 141, 129, 216, 177,  73, 140
	.byte	155, 232,  25, 225, 116,  45, 207,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	203, 183, 244,  55,  69, 233, 251,  76, 195,  71,  60, 218,  28, 250, 199,  95
	.byte	 85, 121, 205,  76, 181, 143,  23, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10,  36,  35, 178, 186,  44, 213, 180, 164, 195, 158, 243,  21, 143, 218,  69
	.byte	170, 218,  86, 216, 135, 160, 248, 109,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 12, 107, 166, 127, 105, 205,  63, 114, 132, 212, 251,  47, 111, 143,  60,  31
	.byte	170,  45,  62, 242, 206,  57,  57,  58,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 77, 104, 124,  46,  48,  58,  64, 186,  92, 192,  68, 178,  82,  65, 224, 110
	.byte	247, 203,  72, 220, 175, 162, 212, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	178, 144,  11, 149,  74,  88, 239, 208,  95,  40, 171, 176, 218, 176,  58,  62
	.byte	 62, 231, 252,  19, 212,  76, 214, 239,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	187,  16,   6, 232,  57,  71,  72,  59,   9, 173,  47,  91,  93,  39, 129, 169
	.byte	  9, 111,   5, 207,  52, 156, 183, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	106,  78,  76,  33,  86, 251,  88, 246, 156,  52,  90, 111,  19, 148, 253,  59
	.byte	241,  83,  45, 234,  90,  90, 235, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56,  54, 214, 234,  77, 163,   1, 152,  74, 217,  38, 139, 208,   8,  26,  51
	.byte	142,  29, 218,  99, 104, 216, 129, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	194, 215, 196, 207, 129, 200, 234,  20,  54,  11, 226,  75, 179, 194, 155, 236
	.byte	  9, 114, 250,  75,  53, 186, 115,  75,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 12, 134, 139,  45,  94,  51, 169, 250, 194,  29, 115, 116,  83,  24, 236,   5
	.byte	157,  70, 173, 127,   0,  98,  29, 161,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116, 213, 169,  62, 180,  90, 153, 253,   1, 205,   7,  38, 160, 159, 186,  52
	.byte	 48, 167, 139,  96, 168, 195,   6,  84,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	151,  69,  43, 158, 240, 230, 138, 193,  29, 125,  10, 161, 196, 128, 102,  18
	.byte	245, 211,  61,  84, 107, 237,  13,  11,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247, 197, 184, 218,  39,  33, 197,  38, 249,   6,  32,  57, 103, 105,  63,  15
	.byte	218,  17, 194, 124,  44, 253,  63, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	239,  71, 161,  19, 158, 255, 201,  86, 121,   5,  32,  27, 251, 176, 197, 159
	.byte	  0,  15,  33,  67,  99, 253, 249, 215,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 83,  11, 247, 241, 206, 185, 101, 206, 145,  92, 194,   8, 213, 155, 235, 245
	.byte	 95,  36, 177, 222,  23, 231, 247,  53,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 87,  62,  86, 194, 223,   7, 180, 147,  12, 161, 193, 254, 171, 152,  68, 158
	.byte	123, 231,  92, 155,  36,  67,  76,   1,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115, 226,  92, 215,   4, 165, 136,  16,  31,  61,  61, 220, 129, 241,  81, 222
	.byte	208,  73, 207, 124,  42, 112, 127,  16,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	192,  66,  11, 208,  57, 125, 134, 169, 162, 191,  79, 248, 200, 210, 199, 223
	.byte	162, 157, 229, 190, 145, 242,  91, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 89, 242, 151, 207, 164, 191, 226, 158, 220,  32,  37, 107, 237, 122, 216, 176
	.byte	234, 190, 254,  72, 148, 195, 128,   8,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 46, 115,  35, 214, 124, 207,  71, 253,  85, 113, 110,  50,  69, 111, 177,  39
	.byte	 45,  35, 247, 224, 194, 187, 208,  74,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202, 127,  96,  31, 252, 226, 187, 179,  46,  78, 214, 204, 155, 190, 104, 109
	.byte	 36, 211, 117, 201, 150, 215,   9, 191,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	186, 216,  83,  30,  95,  69,  18, 177,  37,   6, 122,  94,  64,  63, 204,  52
	.byte	  0,  76, 105, 162, 182, 220, 233,   8,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63,  39, 121, 113, 131,  68, 126, 174, 186,  17,  51, 165,  78, 239,  42,  45
	.byte	 28,   8,  55,  34,  57, 233, 153, 248,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	249, 132,  66,  19, 231, 131,  93, 111, 115, 215, 116,  52,  76,  25,   0, 137
	.byte	137, 223, 200, 129, 226,  49,  50, 233,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 18,  38,  80,  34,   3, 136,   1,  12,  85, 201, 130, 182,  32, 218, 253,  74
	.byte	 73, 236,  81,  15, 183,  91, 108, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50, 128,  59, 109, 111,  45,  51, 159, 131, 206, 183,  20, 209, 255, 157, 167
	.byte	 68, 155, 179,  66, 113, 133, 193,  67,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10,  69,  51, 109, 191,  89,  30, 131, 101, 129,  85, 243, 136,  93,  84, 108
	.byte	152,  70, 138,  70, 154, 182, 158,  89,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  2, 120, 163, 241,  25,  69,  50, 165, 136, 114, 136,  64,  42, 126, 161,  67
	.byte	143, 157, 127, 243,   6, 240,  92, 122,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 80, 195, 200, 135,  99, 221, 127, 185,  78,  11,  82,  84, 153, 233,  38, 243
	.byte	 25, 168, 232, 237, 227,  86, 126,  58,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 40, 252, 135, 219,  42, 194, 169, 226, 110, 221, 124,  93, 101, 113, 142, 101
	.byte	228,  40, 116,  93,  54, 151,  56, 129,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	238,  15, 156, 100,  93, 221, 118, 177,  61, 163, 245, 248, 117, 228, 236, 164
	.byte	126, 114, 231, 209,  57, 153, 113, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	180, 169, 160,  32, 107,  96,  55,  46, 224, 112,  89,  95, 111, 125, 153, 107
	.byte	241,  68,  51, 209,  98, 219, 210, 232,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	165, 249, 253,  56, 220,   1, 179,  98, 204, 115,  31, 202, 207,  97, 209,  19
	.byte	196, 241,  18, 123, 195, 179, 105,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216, 136,   1, 211, 120,   1, 152,  16,  31, 173, 247,  84, 169, 186,  54, 152
	.byte	223,  78, 190,  16, 138, 105, 113, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	219, 124, 168, 214, 132, 125,  23,  40, 226,  22,  71,  71,  76, 246, 201,  59
	.byte	 84,  80,   4,   0, 156, 143,  45, 188,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	241,  89, 116, 232,  31,  57,  31,  60, 133,  71,  74,  56, 110, 175,  17, 206
	.byte	253,  45, 106,  51, 207,  92,  91,  26,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113,  83, 223,  80,  76, 170, 254, 191,  43, 237, 132,  12, 236,  99, 136,  45
	.byte	 67, 172, 124,  47, 132, 206, 121,  22,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 80, 206,  65, 210, 251, 195,  78, 138,  78, 181, 208, 248,  11,  48, 115,  75
	.byte	120, 165,   0,  86, 205, 104, 141, 202,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 51,  19,  63,  39, 108, 152, 164,  77,  74,  25, 250, 175, 232,  14, 140, 134
	.byte	226, 126, 246,  30, 129,  77, 139, 103,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 22, 185, 224,  23,  31, 248,  97,  88, 220, 253,  71,  78, 107,  58, 138, 215
	.byte	 69,  13, 178, 158, 163,  46, 170,   3,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 79, 250,  24,  66,  21, 184, 136, 136,  67,  56, 145, 217, 159, 161, 231, 104
	.byte	150, 195,  29,  10, 234,  55, 170, 154,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	220,  23,  93,  75, 179,  75, 252,  86, 116, 137, 172,  61,  61,  66, 202, 199
	.byte	 92, 210, 240, 158, 254, 195, 138,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54,   5,  44, 230,  67,  36,   0,  33, 240, 253, 208, 127, 211,  34, 159, 136
	.byte	 45,  55,  50, 181, 138, 160,  12, 202,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118, 169, 168,  38,  93, 231, 179,  96,  49,  11, 255, 161,  67, 187, 227, 234
	.byte	  5, 242,  15,  56, 216,  84, 115, 193,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156, 157,  21,  68,  29,  96, 147,   5,  91, 178, 252, 146, 147,  65,  58,  69
	.byte	249, 223,   4,  86, 175,  48, 202,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	166, 177,  55, 191, 121, 198,  96,  44, 100, 146,  10, 181, 243, 207, 191, 229
	.byte	107,  69, 115, 125,  64, 158,  98,  69,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	157, 242,  76, 203, 239, 184, 104, 166, 217, 144,  25, 122, 121,  86, 215,  25
	.byte	 96,  16, 202, 208,  89, 149,   9, 201,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	117, 149, 111, 243, 218,  27,  94, 119, 196, 115,  38, 152,  34, 202,  68,  93
	.byte	 10,   3,  29, 214, 221, 144,  22, 166,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	164, 162,  11,  42,  18, 197, 134,  85, 175, 133, 170, 173, 211, 127,  89, 137
	.byte	 62,  62, 108,  60, 217,  18, 169,   7,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	166, 107,  39,  72, 162, 245,  35, 255,   4,  57, 186,  83, 249,  74, 104,  54
	.byte	194, 227, 225,  50,  39, 162, 165, 194,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105, 124, 148,  43, 201,  19, 193,  94, 243, 244,  74,  46, 169, 199, 148,  49
	.byte	174, 242, 227,  80, 128, 178, 159, 154,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	129, 179, 163, 223,  99,  92, 172, 124, 173, 216, 172,  58, 245,  34, 245, 147
	.byte	249,  25, 218,  70,  46,  80,  29,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	200,  32, 198,   0,  25,  36, 208, 219, 242, 192,  39, 152, 197, 117, 227, 177
	.byte	 89, 140, 148,  30,  91,  30, 234,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 131, 105, 126, 139,  58,  55, 225, 242,  81, 189, 178, 207, 182, 156,  97
	.byte	167,  26,   4, 223,  80,  50, 253,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 15,  66,  19,  81, 100,  90, 141,   3,  20, 126, 124, 219, 142,  13,  90, 146
	.byte	  2,  14,  59,  89, 150,  79,  89, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 85, 255, 197,   9,  94,  96, 107, 132,  95,  28,  54,  32,  35, 222, 233, 104
	.byte	174, 187, 208,   7,  90,  83, 219,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	250, 195, 135, 216,  87,  15, 252,  68,   4,  60,  95, 218, 210, 149,  20,  72
	.byte	233,  57,  44,  23, 102, 186, 213, 142,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	162,  15, 155,  91,  24,  52, 195, 247,  40,  52,  75, 141,  38, 168,  14, 238
	.byte	 43, 184, 223,  46, 210, 212, 214, 177,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98,  65,  51,  55,  92, 155,  87,  24, 177, 235, 213,  39, 167, 167, 226, 113
	.byte	176, 118,  90, 253,  64, 122,  63,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	222, 230, 208,  36,  65, 135,  85,  69, 212, 118,  42, 233, 114,  84, 205,  98
	.byte	156, 178, 242, 114, 245, 197, 130, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191,  65, 235, 226,  43,  19, 167, 220, 228, 193, 151, 140, 186,   2, 242, 189
	.byte	199, 173,  68, 149, 199,  15, 121,  58,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	152, 242, 115, 238, 220, 171, 240, 106,  37,  45, 251, 158,  33, 193, 162,  72
	.byte	216, 187,  87,  22, 158, 233, 169, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	226,   7,  75, 205, 100, 181, 198,  18,  36, 218, 172, 170, 192,  92, 241, 202
	.byte	  2,  91, 151,  83,  40,  54, 209,  22,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 49, 225, 207,  58,  74, 124, 216, 227,  28,  13,   0, 104,  67,  83, 252, 106
	.byte	186, 130,  57, 173, 136,  27,  90,  72,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	211, 220, 240,   7, 134, 201, 217, 219,  21, 119,  55, 255, 183, 117, 199,  95
	.byte	 67, 208,  60, 137, 153, 157, 174, 187,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 99, 202, 118, 128, 138, 253,  58,  81,  85, 209,  33, 229, 125,  85,  49,  45
	.byte	 78, 230, 123, 178, 244, 218, 189, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131, 105, 108, 150, 208,  27, 234,  18, 119,  51, 156, 134, 238, 142,  84, 107
	.byte	180, 168,  27, 124, 123, 236,  94, 162,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 65, 147,  39,  79,  14, 104, 177, 200, 156, 155, 154,  32, 191, 197, 127,  60
	.byte	 90, 192, 156, 132, 228,  59, 216,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202,  60, 170,  47, 176, 179, 205,  34,  53, 193, 212, 249, 103,  13,  55, 182
	.byte	 23, 204,  32,   1, 168, 207, 207,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	231, 250, 104, 225, 253,  60,  32,  19, 124, 237,   0, 196,  60,  23,  47,  86
	.byte	 48,   3,  95,  93,   9, 200, 124, 124,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 85,  96, 107, 190,  32, 161, 234,  63,  88,  97, 234,  75, 122, 172, 113,  20
	.byte	211,  24,  28, 177, 209, 196,   6, 168,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	100,  71,  41, 119,  70, 149,  67,   6, 114,  97,  13,  94,  98, 133,  95, 153
	.byte	204, 185, 103,  51, 187, 181,  19,  68,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 22, 216,  20, 143,  58, 131, 248,  31, 107, 119, 235,  16,  35, 119, 234,  32
	.byte	 46,   2,  44, 235,  16,  63, 237,  68,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223, 253,  88, 222, 103, 146, 244, 248, 251,  28,  34, 235, 156, 244, 114, 195
	.byte	207, 139, 217,  83,  48,  11, 175,  97,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	155, 121,  62,  31, 209,  30,  47, 202, 145,  57, 118,  23, 186, 193,  20,  89
	.byte	123, 123, 148, 151, 243, 110,  84, 163,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 69, 195, 173, 125, 195, 220, 179, 193, 119,  41,  35,  76, 200, 167,  36,  28
	.byte	247, 242,  53,  34, 240, 245,  30, 239,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	243, 219,  60,  31, 226,  83, 237, 132, 234,  41, 187,  37,  17,  59, 125,   5
	.byte	119, 102, 225, 249,  29, 190,  90, 193,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  2, 188, 135, 243, 111, 174, 223,  78, 230,  57, 234,  30, 136,  78, 153, 246
	.byte	219, 150, 200, 157,  11,  49, 187,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	139, 181,  21, 125, 226,   8,   4, 222, 213, 189,  80, 209,   9, 157,  94,  89
	.byte	112, 209,  16, 143, 216, 149, 145,  56,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82,  18, 178, 160,   9, 204, 130,  23, 117, 159, 174,  92, 181,  34,  56, 172
	.byte	 12,  44, 249,  63, 105,  18, 155,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103, 204, 124,  72, 117,  58, 230, 174,  84, 128, 140,  25, 251, 216, 160,  38
	.byte	 91, 188,  77, 218, 122, 227, 111, 166,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 72,  65, 242, 100, 226, 218, 186, 223,  64, 115, 242, 221, 135, 212, 132, 126
	.byte	131, 171,  35, 112, 114,  98,  71, 195,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 30, 149,  20, 203,  15, 119, 203,  17, 204,  98,  88,  75, 101,  96, 211,  92
	.byte	  3, 145, 226, 234,  23,  86,  97, 128,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 69, 207, 231, 183,  34, 142,  52,  17, 244, 229, 193, 162, 241, 220, 254,   2
	.byte	105, 106, 103, 189, 144, 141, 143,  68,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	228, 244,  52,  65,  44, 118, 170, 240, 177,  26, 180, 233, 211, 123, 159,  41
	.byte	132, 249,  76, 118, 196,  27,  72, 192,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 19, 181, 108, 217, 148, 139,   7,   9, 170,  75, 242, 224, 221, 177, 105, 139
	.byte	210,  69, 180, 186,  75, 235, 208, 168,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37, 240, 231, 126,  87,  89, 171, 213, 134, 217, 155,  96, 159,  35,  28,  89
	.byte	253, 100, 196,  21, 255, 145,  53, 100,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54,  48, 171, 170, 235, 138, 114,  72, 233,  29, 106, 181,  21, 117, 152,  79
	.byte	 69, 226,  51, 245, 190, 138,  46, 167,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	152,  65, 208, 243,  78, 206, 103, 200, 224, 179, 169, 250,  98, 215,  29, 107
	.byte	149,  37, 209,  33, 155, 255, 134,  17,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	204,  22,  86, 125, 128, 138, 122,  52,  21,  65, 156, 153, 106,  48, 248, 120
	.byte	225,  20,  39, 250,   1, 254,  85,   6,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 68,  33, 211,  54, 137, 155,   6, 165, 233, 165,  99,  13,  98,  19,  16, 103
	.byte	  0, 200,  34,  95, 188, 126, 102, 209,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 13,  90, 187,  37, 241, 120,   7, 112,   6,  47, 175, 252, 179,  13, 103, 246
	.byte	157, 178,  39, 191,  53,  47,  86, 123,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	186, 123,  21, 119, 136,  44, 210, 189, 247, 160, 196, 140, 133,  95,  56,  65
	.byte	 21,  68, 229, 120, 178, 206,  36, 229,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170,  23, 134, 180, 130,  23,  84,  23,  73, 174,  94, 171,  75, 186,  15,  97
	.byte	215, 216, 192,  43,  16, 235,  26,   9,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 52,  69,  41,  45, 206, 226,   0, 190, 190, 228, 255,  75, 116, 221, 216, 151
	.byte	130,  62,  14, 149,  53, 103, 173, 197,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156, 159, 253, 104,  16, 166,  98,  24,  86, 138, 116, 216,  58, 201, 222,  41
	.byte	217, 178,  34, 228, 145,  73, 215, 249,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	218,  53,  76,  37, 212, 186, 184, 235, 176, 190,  58, 202,  29, 134,  80, 143
	.byte	201, 251, 252,  77, 210, 120,   6, 173,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	218, 210, 189, 177,  86, 250, 137, 223,   7, 169, 107, 215,   8,  11, 131,  64
	.byte	248, 186,   3,  79, 178,  83, 183, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 57,   9,   4, 231, 183, 116, 118, 197,  37, 199, 156,  11,  43,  47, 122, 114
	.byte	166, 223,  58,  14, 220,  11, 126, 238,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169,  51, 242, 162, 109, 232, 157, 230, 116, 142, 169,  93, 245, 183,  65,  54
	.byte	241, 176, 137, 100, 220, 230,  27,   8,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	228,  64,  51,   1,  41,  78, 133, 246, 198, 132, 123,  21, 248, 235, 247,  98
	.byte	 23, 232, 100,  30,  17, 171,  97, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 49, 179, 191, 228,  24, 101, 156,  91, 128,  57, 242, 187, 227, 185, 153, 216
	.byte	120,  81, 202, 238, 186,  25,  68, 185,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37, 251,  47, 129, 143, 132, 120, 209,  84, 127,  30,  24,  26, 169,   4, 206
	.byte	 38, 142,  47, 181, 206, 230, 109, 141,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	232, 218, 108, 122,  26,  41, 156,  65, 194, 100,  61, 149,  22,  58, 120,  84
	.byte	246,  19, 157, 130,  44,  28,  47,  91,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191,  68, 147,   0,  78, 118,  65, 187, 121, 191,  12, 252, 223,   7, 185, 155
	.byte	 73, 125,   6,  47, 242,   2, 151, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147,  30, 246, 151, 254, 187, 154, 182, 152, 199, 148, 183, 161,  94,  29,  73
	.byte	 18, 188, 148,  37,  22, 254, 109, 206,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	196, 175, 227,  54, 156, 246, 175,  56, 135,  48, 208,  43, 245, 241, 123, 123
	.byte	112,  45,  50,  98, 147, 251,  86, 219,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 48, 186, 104,  65,   0, 217, 244,  84, 161,  62,  53, 246, 146, 242, 202,  17
	.byte	228,  33,  54,   5,   6,  65,   3,  87,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	195,  15, 248, 157, 100,  82, 217, 183, 200, 132, 199, 141,   7, 184,  27, 221
	.byte	 64, 132,  26,  31, 137, 228, 237, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	231,  94,  70, 202,  59,  21, 135,  57, 255, 217, 255,  51,   3, 161,  17,  60
	.byte	115,  47,   9,  16, 148,  47, 248,  75,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	162,  40, 190,  11, 234, 207,  51, 191, 135, 204,  55,  29,   6, 254,  41,  32
	.byte	173, 228, 223,   2,  40,  75,  46, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56, 124, 226,  55, 195,  42, 251,  51, 207, 109, 183, 151,  49, 127,  44,  61
	.byte	247,   7,  12, 178, 164,  46, 111, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82, 185,  43, 235, 169,  10, 243,  97, 123,  96, 239,  55,  40,  20,  18,  41
	.byte	176, 209, 170, 205, 130, 185, 153, 124,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	151, 119,  81,   0,  10,   4,  20, 115, 117, 155, 167,  55,  83,  52, 216, 173
	.byte	186, 113, 234, 246,  52,  94,  65,  70,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	142, 106, 171,   3,  11, 249, 249, 154,  84, 143, 121, 121,  94,  67,  11, 151
	.byte	244,   4, 100,  87,   6, 200, 135,  89,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	157,   6,  36,  17, 152, 224,  41,  74, 168, 211,  61,  78, 241, 217, 156, 204
	.byte	193,  38,  12, 163, 215, 144,  73,  66,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	210, 208,  93,  82, 227, 148, 250, 131, 196,  33,  62, 186,  24, 185, 225, 253
	.byte	 87, 187,  72,  59,  87, 113, 184,  18,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188, 112, 152,  85,  13,  57,  94,  61,  80,  12,  32, 120, 103, 250,  54, 246
	.byte	228, 133, 221, 138, 108,  91, 188, 190,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223, 129,  36, 123,  42, 142,  56, 243,  90,  87,  12, 214, 165, 210, 106,  32
	.byte	188, 178,  89, 156, 193, 160, 242, 149,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 89, 232, 226, 155, 121, 239,  11,   8, 171, 171,  17,  36, 228,   4,  55, 109
	.byte	171,  11, 172, 233,   3,  57,   9, 243,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 29, 116,  95,  77,  65, 134, 123, 205, 251, 147,  93, 185, 102, 106, 139, 243
	.byte	 90,  41,  46,  12, 140, 115,  62,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101,  87,  18,  56, 220, 202, 145, 150, 196,  80, 251, 132, 116,  77, 111,  73
	.byte	 27,  86, 191, 153, 200, 114, 215, 127,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	124,  46,  76,  10, 185,  65,  98, 105, 225,  35, 192,  90, 128, 147, 134, 118
	.byte	248, 175,  84, 158,  34, 212, 195,  25,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24, 104, 164, 113, 117, 176, 179, 213, 132,  13, 180,  30, 137,  51, 100, 220
	.byte	162, 105, 134,  34,  29,  21, 196, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172, 252, 238, 148, 184, 204, 184, 147, 236, 220, 222,  52, 107, 253, 176, 199
	.byte	 43,  13,  23, 106,  69, 160,  28, 248,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143,  42, 101,  59,  63, 188,  74,  38,  31,  36,  29,  17,  50, 129, 233, 129
	.byte	174,  51,  49, 174, 115, 205, 128,  11,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 99, 222, 130,  60, 137, 240,  60,  80, 160, 156, 168, 139,  48,  21, 207,  61
	.byte	151, 227, 115,  38,  73, 182,  45,  51,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	196, 215, 218, 199,  26,  54,  22,  44,  10, 118, 191, 134, 251,  68,  70, 223
	.byte	146,  63,  35, 118, 187,  23, 170,  84,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123, 140, 251,  97,  78,  71, 132, 122, 214,   0,  43, 252, 168,  70, 121, 168
	.byte	219, 133, 202, 139,  53, 165,  95,  67,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 91,  49,  75,  58,   7,   8, 243, 180, 167,  87, 151, 100, 130, 165,  33, 155
	.byte	171, 117,  58, 247, 111,  78, 115,  60,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	112, 242, 126,  92,  10, 201,  17,  85, 188, 190, 180, 252, 102, 217, 122,  81
	.byte	115, 177,  41, 225, 125, 129, 102, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140, 110,  41,  98, 111,  89,  30, 140, 152, 143,  41, 211, 131,  60, 235,  71
	.byte	148, 143,  42, 224,  10,  14, 220,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 92, 184, 192, 131, 215, 240,  51, 123, 188,  83, 145, 252,  71,  32, 226,  52
	.byte	 29, 252,  85, 103, 250, 182, 225, 220,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118, 157, 245, 215,  53, 193, 253, 147,  37,  62,  50,  74,  62, 243, 168, 138
	.byte	197, 152,  45, 106,  28, 252, 245, 126,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	242, 122, 204, 127,  44, 125, 114,  66, 153,  18, 150,  55, 113, 170,  80,  76
	.byte	 97,  38, 187, 122,  97, 149, 189, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76, 191, 172,  28,  34, 224, 180,  45,  97,   8, 244, 220,  18,  82,  35,  18
	.byte	233, 164,   3, 116, 217, 254,  36,  26,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 97,  65, 215, 111, 171,  54, 165,  22, 172, 239,  14,   3,  98, 193, 207, 209
	.byte	154, 197, 237, 246, 197,  79,  37,   9,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	152, 147, 254, 145, 152, 229,  61, 254, 229,  73,  50, 229,  46,  93, 234, 137
	.byte	217,  53,  61, 242,  63,  90, 253,  36,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	177,  72, 146, 121,  22, 162, 124, 174, 220,  84, 193, 223, 117, 177, 210, 113
	.byte	174, 253,  23,  30, 187,  46, 107,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	146, 222, 153,  69, 253,  96, 173, 239, 244, 213, 229,  65, 103,  65, 112, 113
	.byte	181,  65, 124, 110,  24, 116,  10, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115,  84, 178, 118, 253,  84,  52, 225,  37, 156,  28,  57, 137, 184,  26,  23
	.byte	131,  31, 116, 145,  11, 187, 111,  69,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 80, 162, 243, 103,  34, 151, 188,  47, 169, 234,  49,  84, 121, 111, 159,   7
	.byte	124, 231, 193,  34, 248, 143, 168,  50,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136, 210,  44, 170, 140, 221,  38,  37, 207, 189,  54, 144, 215,  49,  81,  86
	.byte	206, 217,  52, 245,  14,  18,  40, 149,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 38, 246, 232,  73, 226, 178, 253, 184, 148, 124, 137,  35, 177, 116, 165, 106
	.byte	  8, 235,  65, 120, 206, 111, 223, 143,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	213,   4, 179,  15,   2, 208, 192, 198, 106, 165, 120,  95,  14, 254,  13, 254
	.byte	 88,  66, 192, 162,  61,  66, 166, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 74, 146, 237, 119, 147,  24, 140, 113, 106, 111, 113, 158, 161, 161, 170, 200
	.byte	155,  96, 219, 149, 219, 135,  95,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 99, 137, 156,  14,  25,  47,  99, 233, 106, 243,  53,  40, 234, 182, 113,  23
	.byte	155, 230, 235, 181, 210, 176, 187, 107,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156,  21, 138, 194,  60,  95, 110, 222, 175, 144,  61, 203,  68, 253, 153,  75
	.byte	150, 144,  91, 125,  62,  41, 210,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 74, 206,  47, 166, 189,  73, 123, 165,  66, 229,  24, 110, 250, 112, 136,  98
	.byte	108,   1,  11, 141,  22,  17, 104,  20,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76,  26, 116, 149,  63, 151, 198, 123, 226,  49, 114,  36,   3,  37, 223, 209
	.byte	107, 134,  17,  64,  57, 110, 139, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 18, 151, 166,  58, 221,  93,  40, 101,  28, 226, 223, 176,  33, 171, 177, 213
	.byte	  6, 194, 186,  13, 176, 201,  55, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 62, 191, 198, 177, 207, 201, 208, 113, 141, 125, 229,  54,   6, 227,  92, 156
	.byte	195, 142, 113, 140, 141,   8, 202, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	151, 237, 216, 129,  79, 193, 146,  40, 160, 155,  70, 230, 204, 110,   9, 171
	.byte	 45, 198,  45,  19,  19, 233,  82, 203,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 14,  52, 135, 192, 101, 184, 156,  54, 150, 185,   7, 118,   9, 118, 219,  14
	.byte	162, 119, 199, 191, 103, 132, 252, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	199, 209, 128,  37,  71, 104, 179, 165, 119,  27,  15, 191, 181, 142, 167, 210
	.byte	 69, 206, 149, 188,  67, 135, 167, 176,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	181, 224, 101, 250, 189,  48,  95, 165, 149,  86, 186, 166, 203, 122, 114,   1
	.byte	157,   2, 106, 192,   0,  36,  43,  69,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 110, 251,  22, 145, 173, 228,  60, 236, 123,  43,  82, 227, 104,  91,   5
	.byte	212, 244,   0, 112, 209, 127,  60,  66,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	206, 166, 174,  91, 196,   9,  66, 145, 242, 234, 208,  13, 233, 181,  51, 135
	.byte	 17,  21, 229,  79, 175,  24, 233, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122,   7,  38, 192, 126,  30, 246, 215,  17, 229, 205,   3, 185, 154, 235, 105
	.byte	 49,  15, 103, 104, 168, 205, 183,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	238,  80,   8, 124,  57, 250, 125, 119,  86,  50,  20, 164, 187, 214, 201,  55
	.byte	214, 146, 102,  60, 152, 243,  10,  57,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153, 193,  26, 156, 152,  18,  38,  60, 106, 160, 227, 198, 254,  12, 206, 242
	.byte	241,  97, 110, 219, 232, 208, 220,  82,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 89,  68, 217,  69,   7, 200,  25, 226, 134,  60, 169,  38, 251, 178, 133, 236
	.byte	113,  96,  88,  19,  50,  24, 142, 179,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0, 219, 253, 145,  84, 111, 104,  15, 109,  75, 249, 122, 154, 126, 102,  99
	.byte	 42,  37,  42, 170,  26, 248, 148,  66,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169, 244, 147,   3,  11, 177,  46, 234, 226,  94,  47, 118, 249, 106,  33, 151
	.byte	 92, 107, 159,  14, 119, 111, 181, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105,  74,  34, 174, 175,  50, 240, 102,  90, 249,  27,  60, 134, 151,  88,  21
	.byte	199, 149,  67, 220,  29, 235, 155,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	137, 233, 245, 125, 118,  88, 199,  92, 162, 211, 223,  19, 141, 142,  80, 211
	.byte	120,  34, 196,  73,  27, 198, 224, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94, 140,  31, 102,  46,  62, 225,   0, 114, 133, 151,  15,  84,  62, 177,  39
	.byte	126,  86,  97,  49,  87, 149,  20,   8,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	244, 131, 164,  51,  84, 242,   7, 184,   4, 140, 237, 235, 244,  51,  80, 162
	.byte	227, 212, 238,  66, 235,  81,  37,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	226, 234, 217, 164, 238,  28, 128, 217,  76, 230, 253,  59, 159, 224, 138, 187
	.byte	204, 136,  17, 244, 187, 101,  75, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 75, 117,  98, 225,  34, 111,  61,  97,  91,  93, 254, 236,  35,  42,  17,  44
	.byte	153, 111,  50, 103,  23,   4,  86, 144,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 97, 161,  91,  35, 250,  79, 215,  64,  41, 254,  94,  44,  31, 144, 208, 193
	.byte	255, 106, 126, 229,  56, 115, 227, 202,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	221,  91, 191, 177, 237, 224,  45,   5, 153, 109,  45,  46, 193, 171, 189, 182
	.byte	162, 241, 121, 249,  16, 148,  80, 187,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 51, 183,  15, 231, 133, 213, 227, 249,  54,  38, 154, 129, 170, 225,  16,  71
	.byte	154, 127,  98, 197, 135, 120,  37, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236,  37, 248,  71,  73, 138, 241,  73, 216, 165,  42,  72,   1,  46, 103, 244
	.byte	116, 182,  80,  34,  39, 180, 196,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227,  54,  57,  79, 198, 207, 160,  53, 224, 118, 188, 141, 137,  63, 152,  21
	.byte	196,  34, 218,  70, 207, 206,  67, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	201, 225, 123,  23,  73,  24, 218, 164,   9,  17,  68, 227, 186, 122, 228, 216
	.byte	250, 252,  79,  61, 128,  12,  66, 110,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	138, 120, 120, 190, 108, 164,  24, 167, 172, 115,  30,  26,  34,  12,  66, 121
	.byte	 39, 211, 239,  94,  56, 235, 203,   2,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235, 129, 141, 147, 140, 217, 199, 175,  77,  55,  44, 183, 236,   2,  47,  29
	.byte	236,  82,  84, 136, 119, 148,  37,  67,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63, 144, 163, 212,  19, 211,  44, 107,  24, 151,  16, 188,  58, 150, 158, 170
	.byte	175, 127, 210, 163, 118, 154,  34, 214,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115,  25,  43, 122, 250,   4,  78, 158, 194, 251, 123, 229, 150, 168, 171, 198
	.byte	247, 128,  28, 151,  78, 201, 188,  30,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11,  67,  98, 192, 164, 209, 230,  80,  30, 111, 164,  45, 206, 117, 164, 238
	.byte	103, 250, 205,  89, 204,  65,  88, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172,  93, 186,  98, 187, 113,  92, 168, 179, 125, 130, 216,  11,  96,  83, 191
	.byte	 49, 221,  70, 165, 180,  90, 196, 193,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	151, 214, 240, 239,  30,  44,  45, 169, 152, 117, 216, 179,  37, 216,  85,  76
	.byte	255,  53, 100,  38,  39, 132, 157,  68,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	243, 177,  16,   2, 242,  29, 186,  74, 216, 220,  84, 127, 184, 175,  38, 113
	.byte	183, 166,  79, 141, 183, 220, 113, 190,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	197,  91, 100, 106, 207,   7,  43, 166,  35, 235, 112,  19,  11, 214, 126,  22
	.byte	 41, 252,  71,  40, 227, 159, 118, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 52,  72, 198,  62,  35,  32, 211, 242,  31, 200, 172, 189,  93,  61, 154,  76
	.byte	244, 189, 166,  45,  61, 159, 231,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	110,  21,  14, 170, 196, 186, 241,  84, 211,  64,  13, 187, 249, 235, 202,  12
	.byte	 74, 181,  46, 123,  32, 255,  69,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140,  23, 157,  92, 173, 220, 103, 233,  46, 129,  44, 112, 220, 198, 152,  85
	.byte	 74, 119, 199, 176, 130, 158, 169, 133,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	100,  67, 251, 215, 240,  49, 228,  66, 211, 157,  53, 212, 103,  35,  89,  80
	.byte	149, 121,  71, 166,  69, 164, 241,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 69, 143, 233,  41, 162,  67, 151,  99,  86, 108,  77, 127, 251, 226,  66, 103
	.byte	 95, 127,  10,  90, 227,  47, 135, 233,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 23,  30,  25, 235,  81, 123, 103,  76, 208,  43,   1, 146, 106, 188, 223,  97
	.byte	 11, 198, 193, 241,  62, 190,  95,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  9,  47, 165, 103, 130, 143, 130,  18, 118,  68,  12, 120,  12, 148,   5,  84
	.byte	135, 179, 141, 201, 176,  97, 246,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126, 168,  34, 141, 162, 180,  33,  34,  75,  42,  53, 226, 205,  28, 228,  41
	.byte	 83, 219, 110, 158, 158, 254, 123, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	120, 117, 131, 151,  32, 185, 201, 132, 188,  67, 247, 192, 182,  80,  10, 105
	.byte	 77, 166,   9, 194, 112, 215,  26, 176,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  6, 189, 234, 206,  67,  75,   2,  35, 208,  33,  12, 179, 186, 226, 196,  25
	.byte	171,  57,  70,  90, 221, 133, 215, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	162,  95, 128, 215,   8, 217,  47, 120, 172, 103, 125, 180, 247,  75,  21, 168
	.byte	111, 139,  39,  30, 230,  28, 198, 154,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	206,   0, 161,  57, 155,  40,  98, 109,  87, 191, 129, 164,   1,  98,  23, 203
	.byte	158,  34, 102,  86,  70,  68, 163, 195,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36, 147, 134, 190, 205, 107, 193,  50, 202, 231, 171,  84,  63,  18,  72,   8
	.byte	202, 245, 209,   7,  26, 183, 218, 131,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216, 221,   6,  38,  69, 110, 132,  58,  92,  12,  15, 193, 206,  76, 136, 173
	.byte	 24, 125, 146,  32, 235,  84,  50, 238,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	114, 239,  93,  47,  72, 177,  75, 202,  77,  64,  19, 134, 178,   9, 158,  18
	.byte	149,  97, 132,  41, 159, 121,  74, 155,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  8,  16,  18, 214,  25,  54,  78, 211,  25, 228, 175,  55,  42,  40, 137, 198
	.byte	 34,  20,  11,  17,  77, 138, 142, 235,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	193, 118,  34, 113, 170,  75,   7, 129, 108, 253, 192,  23, 163, 131, 195, 112
	.byte	216, 235,  20,  39,  24,  72, 224, 134,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	212, 199, 189,  43, 131, 248, 138, 176,  58, 183,  20, 212,  22, 218, 101,  90
	.byte	170, 197, 145,  68, 231, 133,  46, 239,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	229,  18, 255, 226, 199, 148, 179, 212,  48, 226, 179, 173, 186,  69, 150, 168
	.byte	138,  65,  64, 127,   0,  93,  30, 214,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	142, 207, 132, 108, 223, 166, 191,  53,  96, 123, 175, 251, 116, 129, 238, 165
	.byte	211, 159, 176, 107,  33, 248,  56,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 39, 128, 241, 181,  33, 195, 101, 113, 203, 115, 130, 162,  25,  39, 201, 251
	.byte	 97,  86,  23, 174, 238,  99,  63, 237,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	221, 173, 238, 145, 214,   9, 235,  59,  92, 110, 210, 208,  49, 100, 155,  48
	.byte	193,  59,  49, 158,  18,  66,   8, 143,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227, 150, 207,  22, 178, 238, 212,  44, 217, 169, 240,   1, 146, 180, 145, 171
	.byte	102, 201,  83, 252, 125,  39, 245, 202,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67, 105,  49, 173, 156, 229,  64,  50, 189,   8, 102,  20, 139, 116,  48,  64
	.byte	 31, 174, 103,  72, 156, 171, 255, 250,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	168, 227,  90, 222,  99,  87,  27, 196, 175, 235,  94,  13,  99, 109, 147, 187
	.byte	 65, 192,  79,  47, 243, 220,   7, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	163,  42,  44, 165,  30, 255, 115, 170, 201, 173, 237, 213, 141, 110,  40,  80
	.byte	138, 102, 102,  96, 207, 105,  14,  70,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123, 235,  74, 232,  15,  28,  75,  31, 134,  87, 178, 149,  53,  57,  71,  60
	.byte	149, 179, 122,  84,  30,  57, 245,   9,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	197, 146,  42,  52, 219, 156,   0, 188, 180, 218, 214,  95, 180,  68,  23,  70
	.byte	 17, 221, 243, 251,  58, 203,  73,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	176, 245,  73,  85,  78, 228,  52,  33, 227, 188,  40,  42,  64, 245, 142, 161
	.byte	166, 251,  40,  97,  53,  41, 192, 180,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	190, 219, 211, 173, 144,  62, 152, 161,  48,  55, 161, 164, 113, 193,  72, 139
	.byte	189, 208, 132,  77, 201, 232,   7,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191, 146,  67,  17, 135,  92,   0, 137,  45, 244, 138,  62, 230, 224, 223, 206
	.byte	178,  81, 177,   7, 180, 203,  32, 198,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	194, 101,  95, 225, 113,  41,  72, 192,  77, 183,  64, 100,  80, 110, 159,  55
	.byte	  1,  56, 207, 152, 209, 197, 139, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	154,  44,  41, 115, 179, 107, 204, 128, 199,  80, 100, 245, 178,  64,   4,  98
	.byte	 21, 221,  82, 167,  67,  24,  86, 167,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 58, 157,  93, 221, 113,  85,  52,  12, 183, 139,  89,  78,  96, 102,  78,  86
	.byte	 18, 219,  89, 177, 131, 241,  66, 170,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	160, 176, 124, 148,  75, 231, 221,  86, 114, 189,   2, 253,  77, 101, 118, 216
	.byte	156, 159, 197, 148, 185,  70, 156,  56,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0, 214, 117, 139, 122, 177,  47, 226, 182,  86, 169,  93, 218,  91, 101,  78
	.byte	122,  17, 202,  18, 240, 200,  49, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	119,  20, 191, 137,  93, 168, 215,  37, 130, 114,  13,  60, 230,  24, 230,  85
	.byte	114, 138,   3, 230,  69, 152, 228, 229,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 41, 211,  66, 126,  87,  74, 170,   9, 246, 154, 154, 173,   9, 211, 129,  98
	.byte	179, 210, 203, 202, 138,  27,  63, 185,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76, 201, 168, 165, 205,  59,  60, 203,  58,  95, 112,  99, 135,   5,   1, 141
	.byte	157,  92,   8,  28,   0,  27, 219, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94, 249,  27, 248,  94, 176,  96, 217, 221, 146,  23,  74, 212, 239,  64, 246
	.byte	 72, 237, 210, 108,  64,  35, 187,  91,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 38, 184, 252, 132,  93,  15, 128, 236, 239,  32, 231,  93, 164, 214, 175, 183
	.byte	201, 133, 252,  80, 205,   0, 208, 251,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 59,  36,  30, 231, 180,  17,  22, 156,  85, 189, 241, 222, 108, 159,  28, 192
	.byte	251, 142, 179, 254,  61, 230, 145, 216,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185, 153,  18, 178,  20, 128,  51,  93, 250,  14,  24, 202,  41,  39, 188, 113
	.byte	  4, 136,  64,  32,  52,  18, 219,  85,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	199,  72, 170,  57,   4, 147,   9,  55, 125, 201, 155, 169, 210,  82, 149,  82
	.byte	151,  43, 103, 103,  76,  56,   7, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	180, 225,  72, 239,  47,  28,  48,  89,  48, 182, 202, 199, 125, 199, 216, 221
	.byte	 59, 214, 170,  83, 245, 219, 105,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	142, 243, 161, 103,  22, 118, 246,  25,  86, 236, 116, 119, 114, 159,  10,  84
	.byte	 46, 101, 105,  22,  36,  95, 134, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 51,  47,  39,  20, 140, 155, 189,  40,  83, 105, 189,  13, 141, 218, 206, 153
	.byte	 49,  44, 197, 178,  79,  65,  80, 198,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 22,  92,  52, 139,  23, 202, 116, 166,  80,  70,  51, 154, 118, 173, 152,  15
	.byte	164, 221,  99, 248, 161, 250, 200,  16,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 20, 134, 164,  53,  89,  81, 210, 154, 215,  70, 117,  90,  50,  35, 117,  11
	.byte	203, 228, 183, 124, 215, 146,  69, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	244, 124, 227, 173,  70,  37, 125,  74, 193,  67,  26, 170,  50,  27, 156, 129
	.byte	  9,  15, 121, 111, 189,  63, 180, 229,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	171, 217,  72, 128, 240, 121,  34,  45,  20,  44, 216,  20, 221, 227, 197,  32
	.byte	152, 136, 192,  19, 217,  95, 235, 109,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156, 157, 181, 176,   9, 207,  35, 176,  25, 111,  76, 255,  15, 150, 162, 116
	.byte	 68, 118, 106,  50, 147,  97,  73,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118, 205, 107, 253,  44,  48, 108,  92,   5,  98,  20, 136, 152, 120,  33, 158
	.byte	 27, 102, 167,  82, 119,  91,  94,  22,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	204,  46,   3, 159, 159, 142, 194,  97, 105,  81, 195,  48, 255, 217, 143, 112
	.byte	203,  51, 115, 243,  55,  38,  24, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 69, 175, 230, 112, 101, 195, 171, 120, 193, 140,  65, 144, 213, 151, 185, 156
	.byte	185, 156,   1, 138,  19, 167, 128, 157,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	200,  34,  67,  22,  93, 136, 136, 114, 248, 117,  29,  25,  64, 181,  16, 141
	.byte	 45,  85,  51, 130, 162,  24,  35,  51,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 78,  26, 138,  49, 245, 121, 130, 180, 111,  96, 244,  77, 222, 180, 206, 154
	.byte	236,  60,  37, 255, 162, 105, 156, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189,  54,  64,  87, 212,  39,  15, 110,   2,  48, 169,   4,  93,  55, 133, 253
	.byte	 89, 112, 131,  71, 231,  12, 146,  75,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50, 123, 127, 177,  30,  80, 244, 109,  27,  57, 245, 215,  91, 142, 247,  48
	.byte	184, 157, 191,  46, 198,  79,  35, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 178,  47,  10,  27, 124, 217,  17, 254, 109,  32, 144,  37, 119, 226, 179
	.byte	134,  35, 239,  10,  68, 177,  61,  91,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	214, 135, 200, 132,  90,  38, 231,  44, 113, 141, 218,   0, 222,  37, 150, 135
	.byte	143, 101,  49,  39,   9, 176, 226,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 30,  78,  41, 173,  90,  53, 249,  52, 242, 210, 209,  93, 168, 116,  70, 218
	.byte	 77, 164, 106, 108, 107, 252, 235, 170,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122,  89,  57, 103, 140, 211,  42, 193, 225,  67, 139, 144,  89,  50,   8, 215
	.byte	 55,  55, 142, 217, 141, 118, 241, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 91,  37, 249, 208, 132,  23, 227,  79, 252,  14,  74,   8, 226, 233, 145, 217
	.byte	 71, 206,  75,  95, 236, 160,  81, 187,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	137, 247, 129,  73,  79, 254,  55,  94, 202, 185, 109, 225, 196, 216, 168,  32
	.byte	139, 230, 229, 147, 195, 122, 193, 114,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	182, 226, 242, 230,  69, 201, 155, 106, 122, 195, 120,  67, 106, 116, 226, 253
	.byte	 50, 104,  37, 195,  77,   9, 101,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	239, 247,   7,  91, 176,  33, 247, 203, 162, 182,  69, 121, 229, 120,  47, 206
	.byte	192, 223, 164, 107, 198,  66,  15, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147, 228, 135,  87,  46,  18,  98, 201,  83,  63,  29, 146, 214, 226,  75, 166
	.byte	 10, 235, 172, 182, 164, 221, 171,   1,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	171, 131, 154, 141, 252,  68, 211,  26,  67, 245, 245, 124,  53, 145, 216, 203
	.byte	 95, 135, 176,  66, 211, 202,  53, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189,  97, 179,  49, 227, 210,  43,  88, 139, 231, 191,  44, 118, 210,  23, 252
	.byte	183,   1, 105, 198, 130, 134, 213, 171,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 88,  18, 203,  31,   4,   1,  80,  23,  40,  93,  55, 132, 150,  92,  70, 213
	.byte	255,  61,  64,  95,   8, 155,  47,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	161, 206,  48, 247, 248,  70, 104, 117,  52,  17, 180,  80, 142, 240, 233,  90
	.byte	163, 202,  92, 199, 129,  47,  93, 221,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 42, 110,  56, 246,   4, 155, 224,  74, 134, 105,  86, 142, 160, 172, 209, 247
	.byte	114,  94, 139, 225,  74, 195, 176, 204,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223,  63, 222, 117, 175,  22, 206,  79, 168, 164, 247,   3, 184, 202,  69,   2
	.byte	169, 197,  77, 171,  67,  11,  62, 217,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	196, 101, 107,  50, 209, 149,  21, 151, 177, 245, 175, 109, 150,  25, 168,  26
	.byte	 50,  22,  99, 255, 154, 157, 222, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 130, 227, 161, 135,  10,   6, 209, 137,  39, 230, 156, 182,  16,  36, 101
	.byte	170,  33, 252, 211, 235,  10,  66, 131,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	200, 167, 237,  80, 207, 109, 230,  67, 231, 128, 118,  95,   2, 156, 196, 241
	.byte	168, 168,  50,  13,  61,  45, 159, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	157, 109,  76, 188, 166, 201, 250, 141, 243,  47, 159,  13,   3, 158, 234,  43
	.byte	 36,  72,  52,  33, 255,  43, 222, 134,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115, 212, 148,   1, 213, 225,   0,  80, 128, 106,  41,  88, 208, 150, 237,  48
	.byte	126, 223, 115,  22, 156,  57, 160, 178,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202, 150, 128,  84, 254,  34, 202,  56,  29, 255,  92, 109, 104, 155, 153,  67
	.byte	 99,  43, 112, 248, 100,  60, 221, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 21, 112,  62,  57,   5,  23, 161, 113, 225, 242,  24,  29,  72,  14, 106,  67
	.byte	 79, 220, 144,  25, 102, 153, 201, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 90,  23, 247, 179, 200, 153,  26, 217, 195,  36, 239, 187, 228,  85, 220,  32
	.byte	 78, 121, 247, 231, 236, 136, 182, 192,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185,  90,  20, 242, 217, 253,  90, 150,  99, 248,  49, 172,  19,  55,  60, 255
	.byte	162, 249,  43,  29, 111, 110, 197,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 81, 109, 133,  27, 109, 249, 241, 249, 219, 231,  89,  95,   6, 114, 208, 174
	.byte	154,  76,  59, 129, 166, 212, 100, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50, 214, 105, 136, 166,  70, 162, 246, 113, 156, 202, 128, 237, 163, 234, 254
	.byte	159, 221, 147, 152, 212, 125,  84, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	114,  13,  30, 108, 183, 183,  11, 165,  10, 131,  80, 118,  56,  33, 148, 226
	.byte	125,  41,  91,  50, 176,  46, 103,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	233, 205, 164,  34, 193, 230, 242,  97,  36, 169, 129, 166, 152, 112,   8, 201
	.byte	145, 255, 179,  64,  17,   0, 139, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	233, 127,  29,  12, 197, 113,  75,  30,   4,  24,   7, 158,  81,  74,  39, 109
	.byte	168, 243,   2, 124, 204, 238,  69, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	214,  28, 136, 241,   1, 211, 166,  91, 180, 168,  11,  36, 185,  90, 125, 170
	.byte	  8, 146, 106, 232, 205, 101, 250, 144,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	233,  29, 141, 251, 209,  78, 174, 122, 147,  72, 131, 192, 121,  12, 178, 126
	.byte	184,  44, 136,  74, 158,  51, 195, 247,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	249, 246, 233,   5, 199, 207,  74,  89,   3, 112, 170,  48,  95, 177,  14, 173
	.byte	156, 214,  16,  64,  44,  45,   5, 197,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76, 148,  68, 160,  60, 171,  98, 114, 168, 100, 153,  69, 239,  40,  22, 188
	.byte	230, 221, 120, 114, 227, 219, 104, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	112, 227, 137, 103, 193,  43, 103, 240,  43,  71,  89, 242,  54, 187,  51,  19
	.byte	 31, 113, 100, 218, 103, 214, 198, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121,  17, 227, 197,  52, 198, 234, 129,  16, 132,  73, 197,  93,   9,  68,  42
	.byte	 90, 129, 252, 238, 142,  45, 198, 182,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 66, 165, 201, 173,  69,  84, 104,  75, 153, 161, 125, 102, 207,  67,  21, 244
	.byte	 89,  12,  69, 201, 229, 136,  63,  50,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 81,  21, 162, 250, 226, 208,  67, 198, 249,  14,  95, 153,  62, 212,  67,  89
	.byte	253, 139, 212,   7, 204, 164, 168, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	182,  51, 218, 179, 127, 245, 141,  72,   7, 144,  36, 188, 192, 211,  12, 205
	.byte	231,  52,  32, 210, 156, 104,  63, 150,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169, 244,  31, 228, 199,  70,  35, 210,  27, 178,  68, 133,  80, 165,  51,  22
	.byte	 26, 154, 186, 145,   0,   9,  30, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122,  97, 149, 131, 229,  73,  23,  99,   3,   1, 251, 245, 179, 114,  28, 202
	.byte	 50,  55, 185,  65,  90, 202, 237, 219,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  1, 199, 186,   9, 125,  19,  42, 246, 112, 185,  34, 172, 163, 119, 150,  99
	.byte	117, 143, 216,  20, 203,  65,  96, 188,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	194, 161, 122, 118,  46, 208, 138, 134, 149, 216, 253,  55, 254, 158, 109, 108
	.byte	250, 129,  46, 145, 160, 242,  90, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 49, 151,  79,  63,   5, 147, 233, 112,   0,  58,  86, 195,  30, 217, 198, 252
	.byte	177, 184, 140,  94, 124, 103,  17,  98,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	157, 238, 203, 153,  74, 233,  58, 249, 121, 121, 214, 239,  67, 250, 200,  47
	.byte	 12, 156,  19,  23,  31,  50, 232,  61,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 74,  49, 172, 134,  38, 244, 155, 150, 141, 201, 115, 150,  47, 202,  32, 226
	.byte	 65, 227,   0,  28,  53,  82,   8,  86,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 97, 215, 252,  66,  36, 228, 168, 203, 123, 160, 120, 113, 196,  52, 159, 194
	.byte	  0,  35, 168, 228, 147, 219, 153, 159,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	146, 146,  29, 232, 250,  35, 247,  74,  66,  75,  50, 138,  86,   3,  47,  85
	.byte	 24,  23,  50,  95, 171,  86, 128, 165,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126,  33,  29, 142, 163,  13, 193, 122, 204,  72, 244, 151,  57, 227, 133,  14
	.byte	172, 112, 126,  18, 130,  46, 236, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	190,  56, 134, 175, 255, 217,  59, 189, 138, 234,  90, 251, 231, 160, 158, 160
	.byte	214,  91, 215, 242,  14,  23, 122, 227,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 153, 199, 241, 126,  51, 155, 232,  19,  21, 177, 151, 174, 135, 255,  44
	.byte	232,  75,  53,   3, 125, 231,  44, 176,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 68,  12,  51,  78, 202, 138, 124, 190, 241,  22, 147,  55, 155,  79, 121, 105
	.byte	 33, 208, 222,  36, 107,  39,  54, 193,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	152, 106, 105, 185, 158,  90,  73,  58,  64, 224, 122, 103, 238, 225, 203,  63
	.byte	 96, 228, 195, 218,  40,  96,  29, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	203, 193, 193, 123, 100, 141, 123,  59, 246, 109, 113,  40, 185, 235, 178,  94
	.byte	101, 246, 150, 147,   2, 254, 205,  32,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	160, 222,  56,  96, 203,   6, 160, 135,  59,  28,  51,  99,  40,  25, 238,  15
	.byte	229,  81, 211, 202, 144, 135,  77, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 55, 191, 252,  52, 202,  69,  81,  93, 180, 137,  34,  40,  74, 193, 253,  67
	.byte	 10,  29, 219,  12,  92,  11, 166, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 30,  69,  45,  95, 108, 206, 159, 139, 109,  84, 175, 192, 204, 164,  60, 106
	.byte	 57, 194, 212, 220, 195,  94, 149, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	241, 223,  58, 112, 232, 122,  95,  71, 123, 185, 164, 228, 157,   3,  46, 131
	.byte	 10, 206, 164,  58,  58,  42, 209, 157,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	130,   3, 240,  48,   4, 217, 148, 229,  31, 159, 215,  64,  64, 101, 112, 243
	.byte	252,  36,  47, 215,  76, 213,   8, 206,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140, 205, 221,  18, 156, 119, 131, 126,  36,  55, 230,  95, 231,  83, 173, 152
	.byte	224,  79, 148,   7, 119, 149, 227, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116,  28, 248, 219, 112, 162, 100, 133, 145, 236,  39, 220, 152, 115,  34, 118
	.byte	238,  10,  56, 192, 249, 254, 230,   1,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185,  22,  52, 167, 120, 213, 209,  20, 244, 186, 249, 121,  48, 217, 214, 223
	.byte	 34, 253, 164, 124,  33, 207, 204, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	154, 236, 127, 132,  88,  53,  50, 170,  57, 253,  58, 101, 183,  49,  97, 109
	.byte	 17,  46, 192,  76, 215,  14,  28,  14,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170, 226, 248, 203,  49, 228, 125,   7, 220,  92, 227, 202,  71,   1, 202, 196
	.byte	 61,  84,  34,   5, 118, 134, 248, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 42, 224,   4, 204, 204, 113, 144,  68, 158, 229,  64,   5, 110,  87, 156, 190
	.byte	226, 138,  98, 196, 159, 198, 114,  57,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122, 213,   7, 192, 154, 168, 160, 205,  85, 201,  98, 158, 231,   6, 124,  28
	.byte	167,  10, 223, 139,  81,  57,   0, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 47, 136,  33,  95,  84, 150, 173, 151, 150, 218, 133, 189, 122,  76, 107, 199
	.byte	 90,   3, 253, 192, 100,  98,  32,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 58, 220,  96, 171, 224, 145,  26, 109,  71,  83, 162,   4,  84,  95, 104,  17
	.byte	138,  79, 220, 220, 239,   4, 236, 163,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	237, 122,  58,   1, 132, 175, 121,  90,  74,  58, 235, 158, 194,  24,  59, 233
	.byte	 98,  12, 106, 111,  75, 223, 105, 193,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	205, 117, 183, 215,  59, 208, 240,  14,  98, 175, 180, 252, 183, 106, 164,  12
	.byte	184,  30,  84, 104, 161,  50,  66, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170, 103,  32, 203,  42, 245,  95,  33,  44,  46,  15, 233, 186,  15, 127, 118
	.byte	113, 195,  93, 145,  66,  93, 222,  16,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36, 157, 237,  72, 208, 237, 148, 214,  96,  61, 244,  49, 227, 171, 137, 179
	.byte	 44, 233,  26, 231, 155, 220,   6,  38,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	167, 117,  52,  84,  21, 220, 181, 191, 150,  55, 154,  82, 235,  58, 187, 160
	.byte	251, 114, 133,  64, 229,  56, 156, 144,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131, 231, 218, 172,  68, 199, 149, 125, 244, 254, 155, 107, 224, 113,   8, 204
	.byte	 20, 155,  79, 158, 138,  62, 189, 203,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	127, 169, 183, 167,  21, 129, 226, 147,  68,  84,  55,  87, 204, 191, 202, 119
	.byte	191,  14,  90, 131,  25, 226, 215,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 38,  96,  27,  87,  19,   8, 193,  25, 252,  22,  53, 228, 200,  63, 105, 206
	.byte	246, 158,  38, 187, 127,  41,  66, 197,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82,  44,  89,  21, 111, 246, 153, 226, 147, 189, 234, 150, 159, 197, 172, 218
	.byte	217,  56, 252,  70, 184, 116, 112, 182,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	104, 128, 139,  39, 188,  20,  54, 101, 215, 108, 158,  23, 182,  88, 196,  22
	.byte	122, 218, 235, 135, 185, 242, 104, 192,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 51, 143,  30, 247, 115, 200, 221, 233,  32, 229, 179, 105, 143, 223, 210, 158
	.byte	193,  56,  43, 234,   4, 218,  42,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 92,  88,  61, 251, 157, 245,  92,  99,  50,  36, 243, 254, 172, 234, 124, 163
	.byte	232, 207, 109, 227,  30,  49, 189,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	203, 191,  84,  16,  58,  31,   2,  62,  45, 142, 135, 222, 144, 178,  27,  71
	.byte	 74, 139,  41, 107,  26,  88, 194, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	146,  25, 197, 214, 121,   4, 182,  56, 248, 105,   9, 212, 178, 115, 196, 135
	.byte	154,  52, 195,  40, 153, 235, 172,  75,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	225,   4,  99,  83,  93,  25, 123, 101, 137,  30,  93,  45, 159, 203,  83,  56
	.byte	 55, 209, 188, 155, 112, 246, 227,  26,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248, 204,  99,  18, 126, 221, 183,  17, 108, 241, 118,  45,   0, 227, 149, 236
	.byte	244, 118,   3, 190,  62, 223, 220, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234,  64, 209, 236,  75,   5, 110, 222, 111, 133, 119,  58,  17, 141, 217,  85
	.byte	  1, 140, 237, 152, 249, 216, 116,  17,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223, 253, 125,  86,  93,  31,  15, 157, 212,  88,  25, 132, 253, 198, 112, 229
	.byte	102,  75, 124, 115,  89, 110,  66,  24,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	184,  39, 182, 105, 144, 196, 155,  15, 189, 180, 216, 139, 224, 103,  64, 249
	.byte	103, 218, 243,  32, 182,   2,  85,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147, 136,  49, 137, 231, 121, 157, 173, 137, 165, 151,  45,   3,  56,  98, 103
	.byte	 12, 209,  19,  21, 102, 115,  31, 116,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67, 224, 142,   0, 115, 243, 184, 115,  35,   9, 123,  98,  10, 106, 212,  81
	.byte	211,  46,  28,  37,   4,  97,  29, 239,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94,  48,  61,  20,  90, 202, 235, 211,  48, 122, 101, 155,  45, 131, 228, 235
	.byte	202,  54,   4, 172, 186, 249, 168, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 22, 248,  22, 198,  80,  63, 163,   9,  74, 114,  62,  23, 186, 233,  61, 150
	.byte	163,  38, 106,   1,  58,  66, 229, 112,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248,  15,  75,  94,  59,   0, 254, 198, 173,  37,  53,  94,  94, 254, 148, 184
	.byte	179, 239, 126,  20,  40, 167, 123,  22,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	231, 237, 113, 140, 144, 144,  87,  95,  35,  41, 170, 114,  97,  45,  10, 102
	.byte	234, 226,   2, 199,  83, 248,  13,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 99, 180,  47,  17, 155, 144,  63,   8, 255, 137, 252,  11, 208,  63,  11, 181
	.byte	134, 225,  64,  58, 175,  13,  39, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105,  54, 229, 228, 176, 209, 194, 104,   2, 239, 136,  72,  70, 156,  72, 217
	.byte	226, 200,  89, 183, 118, 231, 186, 215,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	215,   6,  29, 180, 246, 247, 106, 219, 161,  75,  55,  81, 173, 204, 248, 194
	.byte	149, 166,  31, 224,   3,  84,  38, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	168, 251, 249, 119, 103,  92,  61, 121,  94,  68,   9, 146,  44,  14,   1, 117
	.byte	253, 127,  40, 188, 203, 230, 167, 228,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103, 242,  53, 120, 172, 178, 103,  76,  88, 164, 161,  20, 112, 190,  44,  99
	.byte	215, 176,  69,  37, 183, 194, 213, 148,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54,  95, 170, 194,  45, 219, 201,  28, 119, 164, 138,  91, 212, 235, 254,  95
	.byte	 64, 129,  35,  66,  38, 222, 147, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	167,  60,  40, 238, 216,  51,  36,  53, 181,  76, 213, 228, 186,  69, 229, 150
	.byte	 45, 175,  53,  32, 232,  65,  66, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131, 248, 127, 206, 124, 254, 179,  36, 149,   4, 108,  47,  12, 153,  67, 112
	.byte	160,  83, 137, 246, 223, 159, 180, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 81, 199,  62, 251, 129,  38, 148,  73, 110, 176, 181,  12, 142,  85, 200,  96
	.byte	 80,  84,  92,   3, 165, 125, 216, 232,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 30,  89,  90, 159, 253, 127,  75,  49,  36,  71,  54,  25, 189,  86,  63, 117
	.byte	172, 148, 111, 169,  91,  73,  89, 143,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54, 129,  72,   9, 189, 250, 170,  78, 198,  73, 142,  65, 149, 108, 141, 155
	.byte	178, 235, 128,   0, 144,  15,  27, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 75, 168,   7, 178,  29, 153,  36, 158,  38,  10, 212,  97,  46, 164,   0, 109
	.byte	154,  35,   2, 255,  73, 131, 118, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170, 125, 194,  16, 108, 131,  92,  35, 117, 189, 105, 220,  15, 107,  48,  39
	.byte	 82,  17, 148,  58, 156,  62, 135, 213,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 199, 144,  91,   5, 235,  18, 177,  76,  82, 171, 166,  41, 245,  18,  23
	.byte	114, 218,   7,  11,  11,  42, 165, 157,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	124, 202, 247,  14, 205,  82, 228, 155, 147, 222, 211, 202, 130, 220,  52, 222
	.byte	148, 216,  54,  24, 214, 140,   7,  41,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156, 179,  43, 190,  21,  72,  64,  67, 107,  26, 146,   1, 205, 248,  85, 240
	.byte	 97,  48, 243, 248, 151,  19,  18, 201,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	133,  96, 127,  35, 186, 214, 216,  56, 202,  47, 202, 146,  56, 235,  59, 210
	.byte	 64, 115, 132, 100,  66, 138, 225, 217,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 78, 146,  71, 197, 164, 239, 197,  88, 171, 168, 195, 208,   5,   5, 136, 245
	.byte	 77, 106, 141, 120, 218, 214, 158,  88,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	231, 159,  95, 184, 175, 175, 153, 177, 171, 243, 207,  38,  22, 169,   0,  51
	.byte	248, 245,  98,   4, 114,  65, 153, 127,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103, 129,  98, 216, 151,   5, 218, 239,  29, 215,  12,  86,  40,  29, 168, 120
	.byte	 84, 166,  95, 155,  11,  28, 159, 148,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	205,  78, 121, 238, 236, 137,  11, 204,  59,  65,  71,  13,  58, 160, 152,  88
	.byte	  1,  30,  78, 111, 186,   2, 185,  91,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126,  58,  22, 162,  29, 223, 132, 171,  60, 254,  17, 122,   0,  49, 206, 224
	.byte	 81, 122,  33, 213, 112, 118, 215,  64,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118,  98, 175,  74,  17, 101, 102, 171,  51,  42,  22,  22,  32, 124,  67, 255
	.byte	205, 247, 110, 135,  95,  43, 204, 197,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 87, 255,  16,  23, 139,  96, 161, 206,  85, 140,  70,  36,  48, 252,  92,  50
	.byte	 58, 115, 105, 137, 180, 211, 142, 123,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11,  63, 208,   4,  43, 227, 140, 184, 137, 234,  90, 237,  19, 139,  86,  35
	.byte	135, 236, 128,  77, 104, 201,  51,  14,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 18, 171,  64, 229, 214,   1, 194,  38,  69, 191, 185, 253,  86, 238, 103, 100
	.byte	146, 161, 135, 127,  32, 151, 180, 179,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	138, 158,  61,  22,  82,  66,  76, 107, 143, 229, 236, 230, 194,   9, 123,  85
	.byte	 94, 103, 144,  49,  26,  54, 110,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11,  75, 152, 242,  10, 124,  52,   4,  19, 176,  20, 139, 126,   4,   3,  26
	.byte	 52,  28, 179,  86, 176, 149,  42,  34,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16,  24, 208, 128,  10,  22, 122, 200,  12,  21,   3, 221, 106, 101, 218, 159
	.byte	165, 199, 151, 172, 115, 203,  35, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	245, 239, 105,   2, 101,  67,  29,  66,   3, 135,   7,  80, 155,   4, 220, 209
	.byte	 13, 244, 133, 112, 157,  94, 167, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16, 191, 240,  39, 156, 255, 172, 228, 140,  60,  83,  83, 195,  26, 134, 184
	.byte	148, 233, 214,  41,  76,  87, 230,  20,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 21, 168, 235,  81, 167, 168,  26,  57, 152,  75,  63,  69, 161, 117,  28,  70
	.byte	106,  19,  23, 233,  90, 100, 108,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 95,  34, 134, 228, 223, 173, 219,  26, 200,  54,  45,  20,  30,  12, 172, 245
	.byte	 27, 190,  55, 109,  82,  10,  52, 219,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248, 199, 112,  75,  46, 200,  44,  49, 162, 239, 187,  55, 218, 242, 186, 140
	.byte	239, 133, 237,  91, 187, 188, 221, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 89, 224,  94, 232,   7, 187,  48, 234, 164, 144,  57, 101,  15, 200, 214, 218
	.byte	139,  47, 235,  22,  16, 144,  28, 190,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 68,   2, 202,  79, 224, 253, 156, 216, 247, 130,  20, 130, 174, 252, 203,  89
	.byte	167, 210, 149, 168,  90,  51,  79,  34,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5,  60,  94,  70, 117, 117,  84,  22,  78,  35, 228, 217,  61,  66, 183, 211
	.byte	119, 158, 159, 133,  50, 160,  96, 197,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103, 151, 197,  68, 138, 147, 221, 145,  94,  72,  42, 135, 216, 159,  67, 169
	.byte	 52, 146, 204, 216,  86, 252, 233,  35,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	203,  30, 244,  27,  65, 162,  74, 245,   7,   0, 183,  33, 239, 136,  70, 135
	.byte	 22,  55, 144,   4, 126,  63, 103, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 35,  75, 215, 226, 180, 201, 188,  18,  35, 197,  56,  31, 105, 144,  48, 218
	.byte	130, 176, 101, 224, 135, 100, 202, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	204, 128, 253, 142,  63, 120, 129,  25, 113, 167, 182, 192,  48,  56, 211, 125
	.byte	126, 249,   9, 167,  28, 245, 149, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188, 122, 187, 159,  69,  67, 235,   2,  45,  36, 204,  15,  44,  53, 152, 143
	.byte	 53, 162, 180, 170,  37, 255, 129,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 35,  61, 238, 116,  71, 170,  24,  22,  63,  16, 198,  66,  16, 151,  43, 234
	.byte	234, 118, 139, 235, 194, 147,  76, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	135,  24,   3,  46, 238, 118, 237,  54,  16,  21, 244, 112, 214, 239, 175,  31
	.byte	 82, 174, 233,  20, 106, 186, 105, 236,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	194,  94, 127, 104, 227,  38, 203, 198,  80, 163, 169, 144, 229, 175,  60, 101
	.byte	164, 218, 150,  40, 203, 231,  77, 166,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 57, 127, 110, 174, 103, 107, 210, 112,  55, 178,  68,  18,  44, 205,  50, 174
	.byte	 19,  81, 212, 250, 179,  81, 115, 103,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227,  81, 233, 229, 244,  36, 200, 117,   6,  18,   9,  81, 224,  47, 114, 172
	.byte	149, 184, 146,  56, 214,  29,  56, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	129, 149, 201,  96, 188, 188,  39, 248,  39,   8,   7,  75,   0,  81, 217, 162
	.byte	182,  98, 155,  61,  21, 149, 102, 241,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	171,  31, 192,  54, 110, 140, 187,   2,  99,  15, 222, 108, 115,  50,   1, 177
	.byte	 54,  68, 237, 188, 113, 224, 177,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	112, 179, 131,  29, 183,  93,  86, 213, 127, 150, 193, 183, 120, 201,  49, 224
	.byte	189, 182,  87, 244, 119, 136, 136, 202,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191, 251,  31, 251, 172,  60, 119,  70, 164, 119,  21,  76,  15, 231, 219, 168
	.byte	109,  25,  65,  20, 141,  37,  21, 247,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	133, 113, 191,  43,  47, 235, 237, 109, 123, 254, 240, 228, 168, 251, 151, 182
	.byte	175,  71, 133, 144,  43, 163, 104,  25,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	104, 123, 159, 145, 213, 188, 185, 233, 168,  20, 115,  18, 105, 150, 130, 124
	.byte	175,  42, 214,  43,  29,   1,  77, 140,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	229, 148, 249, 101, 145, 244, 150,  11,  33, 222, 191, 147, 225,  97,  40,  18
	.byte	 16, 186,  27, 133,   5,  71,   8, 170,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	215, 213, 155, 171, 120,   3,  35,  66, 198,  19, 188,   5, 108, 151,  87,  79
	.byte	225, 131, 245, 138,  54, 247, 152, 149,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105,  45,  11, 223, 144,  46, 214, 196, 144, 175,  47, 236, 195,  17,   7, 102
	.byte	215,  93,  33, 179, 124, 147,  96,  72,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 34,   6,  87, 171,  67, 132, 219, 182,  34,  77, 158,  21, 232,   4, 119, 222
	.byte	182, 212,   4, 101, 223, 118,   7,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 188, 196, 254,  58, 172, 255, 255, 176, 189, 150, 243,  90, 155,  65, 127
	.byte	 79,  87, 103,  85,  30,  46,  34, 188,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82, 159,  70, 156, 229,  91, 182, 122, 168, 215,  23,  94, 174, 225, 208, 201
	.byte	 51, 250, 223,  52, 130,  12, 139, 187,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 72, 110, 180,  15,  62, 100, 220,  34,  37, 152,  21, 118, 181, 238, 164,   0
	.byte	136,  83, 120, 134, 178, 124, 103,  79,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143, 217, 142, 236, 214, 245, 154,  67, 201, 138, 168, 218, 142,  14, 170,  20
	.byte	132, 202, 192,  98, 124,  87, 183, 123,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	198, 227, 195,  18, 152,  74,  38, 158,  57,  90, 224, 203,  40, 243,  44, 134
	.byte	 99, 183,  77, 122, 151, 199, 125, 236,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	130,  89,  36,  16,  11,  39,  62,  39,  67,  69, 199, 106, 240, 246, 189,  96
	.byte	 40, 230, 242, 118, 183,  31, 108, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121,  83, 191,  64, 224,  40,  35, 139,  96, 234,  66, 174,  19, 136,   9, 240
	.byte	 83, 214,  28,  80, 161, 220,  72, 103,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102, 225, 177,  43, 118,  99,  62, 111, 136,  99, 192,  47,   5, 151, 252,  69
	.byte	234, 209,  35, 179,  40,  46,  89, 248,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126, 225,  97,  73, 188, 220,  81, 199, 221, 249, 126,  74, 156, 170, 171,  54
	.byte	 69,  83, 251,  87,  73, 242, 166,  55,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67, 243,  52, 233, 112,  57,  94,  41,   0,  11, 118, 171, 160,  48, 218, 195
	.byte	111,  90,  49, 217,  84,  76,  93, 188,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 75, 130, 201,  98, 216,  79, 215,  71,  92, 137, 250,  91, 179, 178, 143, 117
	.byte	 99, 237, 102, 158, 229, 117, 233,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 39, 227,  49, 105, 242, 214,  71,  49,  68, 181, 103, 155, 243, 152,  35, 110
	.byte	  1, 151, 216, 247, 218, 226, 224,  70,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	174,  43,  97, 247,  75, 249, 158, 199, 111,  20, 187, 156, 203, 170, 211, 154
	.byte	218, 199, 214, 168, 229, 142, 177, 173,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 41, 147, 234,  62,  53, 113,  85, 169,  89, 144,  95,  25,  75, 189, 180, 217
	.byte	 51,  28,  85, 139,  68,  31, 145,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172, 148,  34, 232, 250, 172, 249, 190,  54, 122, 104,  87,   8,   0, 171,  95
	.byte	 19,  71,   3,  61, 241,  54, 153, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 79, 241, 198,  75, 197,  86,  88,  64,  41, 136, 169,  90, 234, 161,  36, 234
	.byte	182, 121,  44,  96,  56,  32, 120, 229,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 32, 125,  59,  65,  36,  45,   3,   6, 254, 160,  64, 167, 123,  86, 251,  14
	.byte	246, 191,  24,  84, 194,  45, 210, 157,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	242,  92,  45,  42,  16, 169, 202, 230, 246, 184, 155, 175, 119, 136, 113, 194
	.byte	210,  68,  95, 235, 180, 157, 182,  37,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136, 255,  16, 112,  77,  36,  49,  78,  89,  17,  17, 140, 199, 140,  79,  31
	.byte	  6, 183, 174,  64, 226,   8, 190,  69,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 77,  17, 115,  61, 175, 202,  17, 158, 169, 159, 184, 240,  67, 179, 205,  63
	.byte	 15, 160, 213, 190, 128, 207, 200, 166,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 122, 228, 191, 238, 254,   1, 210,  29,  40, 128,  17, 164,  22,  53,  98
	.byte	151, 107,  31, 210, 124,  29, 229,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248, 111, 108, 173, 248,  19, 107,  86, 180,  36, 234,  10, 168,  39, 223, 135
	.byte	143, 132,  51,   5,  74,  55,  56, 227,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  8, 132, 148, 199,  99, 114, 222,  78, 119, 142,   4, 187,  74, 246, 224, 229
	.byte	 13,  25,  39,  37, 166, 191,  22, 123,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56,  64,  63, 194, 152, 180, 183, 106, 175,  77, 254,   0,  83, 212, 188, 158
	.byte	143, 122, 142,  60,  93,  61,  32, 166,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111,  77,   9, 157, 149,  69,  55, 201, 188, 201, 190, 165, 169, 196, 127, 118
	.byte	 40,  78, 230,  97,   1, 230, 107,  58,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	232,  67, 108, 209,  67,  25,  36, 216, 102, 144,  15, 152, 161,   1,  31, 172
	.byte	116, 254,  23,  55, 181,  45, 170,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 12,  97, 135,  43, 146, 182, 185, 171, 163,  27,   9,  24, 204,  23, 115, 239
	.byte	 52, 177, 223,  80, 220, 246,  92, 217,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126,  32,  18, 113, 207, 164, 222, 114, 170,  50,  89, 177,  61,  50, 184, 214
	.byte	114,  36,  90,   2,  26, 207, 109, 247,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 32, 170, 150, 199,  66, 152, 190,  66, 184, 150, 245, 244,  22, 201,  74,  85
	.byte	120, 238, 151,   6,  74, 157, 224, 166,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11, 234, 188, 168, 235, 251, 109,  62, 166,  94, 203, 159, 173, 227,  99,  78
	.byte	 35, 237, 236, 178,  55, 209,  27, 216,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227, 150,  12,  43, 176, 156, 250, 145, 166, 206, 102, 101,  18, 181,  52, 123
	.byte	235,  74,  69,  52,  51, 217,   5,   2,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 15, 243,  88,  17,   2, 110, 190, 138, 121, 100, 255,  82, 223, 132,  61, 241
	.byte	 99, 103, 145,   6,  16, 108, 175,  72,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 15, 108,  86,  99, 245, 167, 233, 235, 208, 183,  87, 249,  21,  80, 247, 209
	.byte	198, 237, 167, 121,  13, 185, 233, 122,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103, 166, 136, 234,  49, 124, 122, 188,  93, 202, 153,  48, 224, 251, 230,  99
	.byte	246,  35, 122, 152, 122, 238,  26,  57,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 30,  79, 241, 219,  37, 241, 121,  72, 176, 230, 119, 235, 120,  20, 147, 107
	.byte	232, 169, 134, 187, 232,  86, 136,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 42,  66,  36,  85,  78, 167, 142,  26,  42,  60,  54,  83,  67, 194, 174, 234
	.byte	 90,  37, 254, 122, 125,   5,  93, 162,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234,  20, 227, 179, 146, 136, 217, 219, 231,  93, 201, 232, 109, 182,  22, 125
	.byte	136, 191, 227,  86, 162, 220,  39, 124,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 42, 193, 217, 171, 223, 147, 126, 110, 103, 238,  17,  21, 104,  61,  97, 141
	.byte	189, 246,   1,  40, 130, 170, 174, 197,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105,  25,  15, 233,  93,  21, 133, 124,  53, 123, 125, 250,  28,  80, 204,  95
	.byte	134,  50, 192, 195,  99,  86, 135,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234, 161, 252,   2, 123,  13, 132, 253, 116,  67, 255,  33, 197,  38, 204, 173
	.byte	221, 177, 198, 140, 149, 249,  69, 146,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 91,  34, 139, 148, 162, 243,  23, 230, 166, 183,  43,  86, 113, 122, 171, 249
	.byte	211,  47, 183,  69, 165, 130, 124, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202, 181, 101,  87, 203, 212, 156, 130,  87, 208,  55,  69, 216,  67,  74, 195
	.byte	133, 166,  52,  61, 130, 177,  55, 239,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	241,  80,  86,  47, 201,  62, 232, 229,  29, 229, 222, 162, 132, 195, 221,  62
	.byte	 43,   8, 177, 116, 250,  96,  89, 139,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 26, 238, 211, 126, 128, 210, 157,  59,  95,  53, 100, 244,  26, 136, 226, 132
	.byte	 10,  54, 140, 222, 186, 181,  76,  63,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	210,   4,   4, 212,  16,  62, 177,  34, 195, 221,  47, 147, 132, 101, 155, 230
	.byte	 74,  49, 186, 219,  38, 111,   2,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	210, 211,  41, 164, 132, 141, 214,  22, 213, 244, 218,  88, 129, 155, 239, 194
	.byte	 21,  60,  66,  97, 239, 225, 127, 236,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	145,  70,  11,  17, 247,  52, 138, 132, 246, 128, 249,  33,  81, 123,  99, 183
	.byte	196,  27,  25,  20, 198, 253,  75, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	120,   8, 240,   6, 205,  55, 230,  46,  49, 153, 132, 130,  16, 105, 222, 131
	.byte	176,  17, 174, 161,  95,  85, 239, 118,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 90,  80,  60,  88, 117, 243,  41, 249, 211,  41,  63, 159,  67, 130, 190, 171
	.byte	230, 240, 158, 238, 116, 111, 208,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 35,  64, 218,  76,  71, 112,  14, 143, 164, 232,  49, 247,   7, 237, 142, 217
	.byte	116,   1,   9, 178, 129,  38,  46, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 62, 194,  50,  36, 149, 144, 229,  27,  59,  81, 135, 149, 177, 138,  83,  22
	.byte	130, 244,  73, 172, 194,  24, 196,  64,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123,  16, 104, 212, 229, 152, 206,  36, 146, 114,  87, 134, 210, 148, 108,  76
	.byte	 61,  52,  52, 180, 119,  96, 148,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 12, 175,  43, 203, 171,  10, 226, 158,  50, 192,  63, 172, 180, 234, 116, 238
	.byte	109, 146, 205, 251,  51,  20, 230,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56,  93,   9, 178, 116,  16, 225,  21, 176,  51, 243, 145, 182, 226, 224,  43
	.byte	148, 146, 249,  90,  34,   8, 182, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	255, 133, 188, 213, 241,  18,  69,  18,  10, 190, 138, 236,  81,  39, 102, 231
	.byte	237, 109,  46, 113, 151, 240,  32, 188,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	197, 172,  50, 197, 220, 214, 117, 121, 211,  34,  63, 198,  29,  95, 145, 247
	.byte	 56,  60,  55, 185, 175,  38, 182, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175, 139, 178,  44, 188, 216, 196,  57, 128,  61,   7,  17,  25,  61, 229,  27
	.byte	193, 119, 186, 214, 150, 212, 234, 150,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	251, 149, 185, 254,  19, 207,  66,  17,  34, 219, 149,  26,  10, 170,  64,  62
	.byte	106,  71,  17,  44,  84,  14, 204,  72,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	178, 127,  26,  69, 190, 212, 106, 250,  84, 200,   9, 191, 156, 191, 115, 200
	.byte	109,  61,  42, 157,   0, 114, 254,  79,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36, 141,  21,  17, 159, 177, 122,  87,  53, 120,  20, 235, 134, 173, 139, 126
	.byte	 82, 188,  52, 224,  72, 224,  89,  52,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 253, 133,   1, 247, 224, 155,  69, 213,  85, 213,  78, 181,  17, 166, 176
	.byte	254,  98,  26, 132,   4, 185, 240,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	133, 172, 172, 254, 141, 235, 183,  14,  38,   8,  46,  29,  60, 147,  51,  22
	.byte	131,  27, 150,  96, 156, 220, 176, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156,  41, 175, 173,  51, 132, 101, 250, 146,  32, 121,  26, 173,  57,  98, 128
	.byte	180, 189, 133, 111, 137,  79,  37,  26,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	204, 112, 225, 169, 209, 244,  11,  69,   8, 163, 217,   2, 107, 190,  32,  82
	.byte	  7, 212, 114,  24,  16, 144, 117,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67, 185,  31,  26, 236, 164, 155, 144, 113,  41, 223, 153, 196, 242,  27, 251
	.byte	220, 135, 244,  47,  55, 164, 242, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 25, 229,  97, 178,  46,  85,  61, 173,  48, 165,  83, 140,  96,  93, 126,  53
	.byte	115, 229, 130, 111, 180, 191,   3,  48,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 20, 209, 213,  42,  70, 221, 137,  99, 211, 227, 239,  13, 120, 108, 164, 166
	.byte	125, 154, 137,  24,  22, 129, 164, 100,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10, 234,  46, 123,  95, 131, 144, 158, 140, 188,  30,  81, 119, 213, 204, 134
	.byte	119, 134,  68, 191, 137, 181, 198, 243,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 23,  21, 178, 230, 250, 122, 161, 104, 227,  10,   3, 203, 224, 120,  15,  95
	.byte	194,  16,  16, 125,  77,  11,  27, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 88,   5, 224, 146,  28, 246, 200, 206, 196, 152, 165, 148,  12,  84, 163, 253
	.byte	154, 123,  80, 211,   9,  59,  61, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24, 237, 124,  94, 119,  29,  15, 100,  17, 114, 137, 252, 204,  55,  49, 102
	.byte	106,  61, 134,  70, 134, 105,  55,  31,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	177, 234,  70, 210,  70, 103,  45, 165, 135, 222, 253, 244, 250,  45,  87, 106
	.byte	139, 220,  32, 109, 130,  56,  26,   8,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37, 205, 211, 169, 123, 101, 153, 177,  73,  68, 214,  15, 200, 190, 226,  64
	.byte	255, 191, 179,   1,  15, 108,  90,  25,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116,  94, 223,  91, 165, 240, 187,  28, 131, 252, 200,  62, 236, 233,   8,  55
	.byte	116,  37,  16,  28,  66, 154, 157,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98,  11,  19, 157,  13, 120,  15,  60, 246, 172, 152,  31, 205,  19,  94,  69
	.byte	208, 196,  39, 246,  26, 121, 169, 220,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63,  31, 151, 182, 231, 106,  11, 106, 119,   9,   7, 121,  41, 107, 107, 229
	.byte	121,  47,  50, 222, 101,  57,   0, 234,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 74, 207, 211,  22,  39, 160,  67,  13,  28, 102, 225, 211, 116,  79,  66, 189
	.byte	 86, 100,  83, 182, 129,  76, 241, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191, 192, 216,  73,  18, 167, 118, 102, 174,  30, 221, 184, 159, 107, 242, 132
	.byte	204,  36, 153, 194, 217,  31, 143, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 17,  36, 227,  36, 125,  98,   9,  18, 247,  54,  28,  57, 166, 202,  48,  50
	.byte	248, 192,  69, 113, 200,  10,  98, 135,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63, 210, 194,  96, 241, 235, 223,  71, 185, 119, 112,  95, 199, 172,  56,  61
	.byte	117,  17, 140, 197, 149,  26,  29, 112,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  1,  26, 209,  92,  98,  47, 171, 113,   2,  32,  36,  13, 162, 102, 100,  71
	.byte	131,  90,  86, 191, 203,  99,  59, 127,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236, 214,   5, 252, 122, 188, 121,  53,  19, 226, 141, 117, 148, 125,  68, 111
	.byte	165, 110, 245,  38, 211,  39, 244,   2,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 88, 149, 184, 126,  49, 198, 221,  86, 141,  50,  15,  54,  93,  21,  84, 194
	.byte	 51,  48, 185, 201, 118,  51, 219, 148,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188,  93, 178, 254,  93,   9, 134, 196, 207,  17, 218,  20,  26, 122,  99,  51
	.byte	104,  13,  40, 213, 178, 219,  78, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	251,  22,  82,  38, 175, 217, 227,  29,  62, 142, 189,  66, 104, 133, 104, 171
	.byte	162,  35, 183,  15, 234, 203, 224, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98, 198,  94, 195, 142, 164, 190, 138, 102, 106, 103, 215, 100,   7, 242, 101
	.byte	246,  80, 151, 238,  91,  39, 194,  48,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	208, 127, 248, 172, 222, 183, 159, 141,   7,  92, 152,  60, 169,   0, 110, 140
	.byte	 13,  12, 165,  47,  15,  79, 130, 206,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 59,  13, 247, 202, 206, 120,  20,  68, 209, 233,  44, 185, 214,  24,  29, 236
	.byte	114, 141, 132, 134, 153,  12,  29, 248,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	192, 184,  84,  42, 126,  84,   5,  55,  51,  36,  31, 249, 205,  84, 243, 200
	.byte	173, 133,  11, 244,  37, 208,  64, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 23, 155, 223,  16, 199, 225, 249,  97, 129,  94,  10,  72, 226, 180,  51, 142
	.byte	 98,  57, 157, 191,  87,  59, 121,  61,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118, 193,  40, 184,  78, 140,  48, 146, 248, 129, 187, 216, 219, 191, 163,  35
	.byte	227, 208, 145,  56, 105, 246, 168, 228,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	159, 240, 154, 189, 228, 227, 239, 146, 169, 230,  85, 254,   6, 206, 211,  28
	.byte	 88, 254, 166,  35,  22, 209,  52, 147,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 51, 142,  99,  68,  49, 133,   6, 185, 123, 155, 201, 102, 112, 238, 153, 115
	.byte	225,  85, 187, 188, 218, 191, 235, 221,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	229, 225, 244, 174,  11,   7,  28, 177, 249, 199, 193, 102, 237, 228, 189,  76
	.byte	170,  96, 180,  55, 209,  38, 215, 206,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	255, 255, 235, 201, 106, 159, 244,  29, 159,  90,  28, 147, 113,  74, 151, 189
	.byte	225, 238, 123,  67, 137,  71, 195, 126,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	148,   3, 128,  99,  94, 163,  75,  33, 189, 152,  19,  28, 251, 162, 185,  72
	.byte	 17, 121, 105, 143, 251,  36, 109, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	104, 188, 208, 175, 190,  67, 163,  35, 106,  73, 246,  20, 104, 226, 216, 104
	.byte	208, 219,  79, 197, 160, 241,  79, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0, 150, 101, 128, 167, 201,   5,  30, 234,  75,  47,  78,  93, 126, 207, 210
	.byte	177, 150, 187, 239,  59,  77, 249,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	130, 188, 254,  65, 134,  19,   7, 237, 218, 109,  24, 203, 242,  51, 129,  50
	.byte	 79, 248,  12,  29, 114,  17,  90, 248,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172, 142,  60, 168,  91, 174, 208, 125,   0, 185, 139, 144,  93,  76,  98, 194
	.byte	163, 236,  50,  90, 181, 248,  90, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	129, 187,  12, 135, 195, 168,  60, 229,  87, 208, 217,  25, 210, 149, 163,   0
	.byte	177, 225,  22, 151, 212, 179, 194,  20,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	243, 191, 111, 153,  19, 104, 170, 252, 238, 145, 252,  64, 184, 201, 163, 157
	.byte	253, 122, 113, 166, 134, 174, 137, 194,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	210, 240, 163,  64, 229,   7, 102, 200,  13, 217, 230,  58,  42,  62, 115, 135
	.byte	  1,  34, 226, 220, 221,  50, 196, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	106, 103, 107, 158, 223, 139, 198, 103,  51, 138,   1,   8,  20, 152,  47, 189
	.byte	163,  75,  64,  38,  56, 246, 211, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 72, 133, 144,  82,  88,  29, 207,  47, 249,  32, 239,  75, 212,  94, 171,  77
	.byte	232, 158, 133, 243, 159, 201,  91, 129,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	246, 244, 146, 134, 101, 121, 114, 120, 247,  43, 147, 240, 107, 194, 161, 153
	.byte	247, 130, 212, 112,  43, 160,  50, 165,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  4, 222, 236, 152, 121, 136, 173,  97, 222, 126,  83, 213, 100,  28,  66,  72
	.byte	175, 159, 176,  17, 155,  36, 180, 248,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 68,  29, 232,  41, 100, 114, 190, 188,  64, 151, 104, 141,  90, 195, 190,  61
	.byte	238,   5, 184,  69, 124,  49,  37,  95,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 73, 186,  91, 217,  83, 111, 253, 208, 216, 210, 219, 119, 242,  17, 252,  97
	.byte	 51, 125, 247, 227, 151, 214,  92,  86,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 48, 130, 170, 145, 181,  10, 114,  68, 133, 205,  67, 193, 133, 119, 245, 211
	.byte	 30, 163,  63,  29,  60, 132,  60,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 66, 235,  92, 222,  65, 253, 230, 180,  54, 197, 239,  42, 116,  18,  43, 255
	.byte	167, 151, 176,   0,  57, 155, 142,   6,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84, 207, 210,  24,  19,   7,  26, 188,  50,  97, 228,  23, 127, 123,  28,  95
	.byte	167,   5,  13, 199, 117,  27,  46, 190,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 49, 234,  11,   2,  71, 149, 135, 174, 167, 103, 111, 117, 122, 191, 173, 204
	.byte	 77, 118, 177,  38, 106, 242, 226, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175, 108, 176, 231, 169,  13, 159,  26, 227, 216,  31, 243,   5, 160,  68,  74
	.byte	 58,  90,  46, 253, 141, 179, 223, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 15, 204, 238, 243,  60, 245, 164,  31, 110, 155, 183, 130,   0,  37, 205,  27
	.byte	126,  55, 201, 131, 227, 188, 147, 112,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156, 113,  87,  74, 170,   8, 112,   0,  22, 116, 134,  48, 116,  76,  78, 124
	.byte	 55, 118, 150, 152,  46, 215, 159, 170,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	220,  27, 214, 214,  94, 243, 239,  58, 220, 190,  96,  14,  55, 134, 209,  44
	.byte	 60, 246,  38, 144, 196, 237,  58, 244,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 14, 220,  11,  57, 151,  43, 231, 237, 110, 137, 179,  72,  68,   9,   7, 241
	.byte	235, 215,  38, 203,  75, 135, 244,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	184,  10, 142, 250,  94, 143, 149,  88, 156,  95, 230,   3,  29, 114, 197, 133
	.byte	 25, 114, 212,  80,  74,  92, 154, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169, 215, 159, 140, 143, 225,  39,  97,  82,  51, 118, 147, 167,  29, 119,  89
	.byte	214, 185,  85,   3, 228, 227, 189, 150,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	167, 199, 100, 187, 181, 163,  58, 108, 144, 195, 119,  38, 134,  23, 127,   8
	.byte	 31,  99, 196, 191,  69,  55,  94, 163,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 47, 216, 201, 211,  86,   3,  99, 130, 204,  35, 167,   2, 225, 230, 243, 160
	.byte	231, 176,  80,  92, 211, 113,  57, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 26,  76,  25,  69,   3,   4, 254,   3, 102,  13,  99, 191, 104,  82,  30,  87
	.byte	132,  12, 251, 234, 225, 100,  74,  47,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	165, 233,  50,  48,  89,  59, 172,   9, 131,  56,  23, 146,  31,  17, 164, 114
	.byte	221,  31, 151,  92, 192,  85, 148,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	198, 154, 225,  50,  25,  58,  91, 158, 195, 176,  92, 182,  79, 223, 188,  83
	.byte	207, 124,  36,   7, 193,  85, 180, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43, 198,  39,  11,  30, 104,  77, 157, 123, 167, 159, 201, 199,  57, 124,  63
	.byte	218,  18, 179, 134, 223, 209,  77, 110,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	110,  65, 112,  52, 218,   3,   6, 138, 110, 114, 112, 163,  17,   8, 103,   0
	.byte	237, 215, 176, 138, 222, 145, 185, 166,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 29, 232, 138,  94,   6, 148,  56,  49,  75,   7, 236,  94,  31,  68,  31,  53
	.byte	186, 170, 119, 244, 154,  26,  73,  97,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	165, 225, 143,  23, 194, 193, 199,  42,  71, 178,  59,  59, 231, 240, 157, 215
	.byte	153,  82, 133,  62,  88,  17, 132,  16,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	212, 104, 203, 158, 207,   4, 228,  58, 175,  29,  69,  62,  45, 168, 252, 203
	.byte	 16,  42,  98, 248,  64, 203, 252, 176,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	106, 139, 126, 121, 134, 249,  27, 165, 196,  30, 131, 235,  59, 143,  10, 130
	.byte	165, 100, 174, 230, 235,  22,  55, 249,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	109, 151, 230, 136,  20, 185, 160,  34,  90, 253, 147, 194, 105, 189, 208, 235
	.byte	170, 144, 168, 120, 148, 194,  95, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175,  32,  18, 126, 252,   2,  71,  74,  82, 137, 220, 219, 110,   3, 227, 205
	.byte	 91,  20, 237, 159,  26, 192,  76, 242,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	242, 160,  16, 191, 114, 131,  76,  65, 157,  65, 202,  35, 136, 153,  87, 216
	.byte	 83,  73, 213,  40,  95,  24, 114, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140, 208,  72,  51,  94,  63, 110, 175, 193, 208, 116,  59, 226, 224,  76, 231
	.byte	 88,  28, 137,  92,  65, 232, 178, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	183,  21, 118, 215, 146,  97, 108, 252, 134,  63,  12,  23, 118, 190,  68, 126
	.byte	  5,  32, 148, 198,  36,   6,  90, 170,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 70,  61, 191, 115, 205, 158,  49,  41,  95, 138, 134, 156,  89, 249,  24, 185
	.byte	169,  10,  91, 177, 253, 108, 153, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	243,  42,  54,   0, 172,  16, 107, 212,  67, 211, 175, 215, 146,  50,  16, 208
	.byte	214, 121, 165, 152,  74, 230, 177,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	195, 217,  33, 136,  11, 205, 141, 229,  21, 145, 137, 159, 177,  27, 245, 148
	.byte	230, 131,  34,  30, 147, 233, 127, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76,  38, 110,  72, 158, 250,  66,  46,   5, 193,  29,  96,  16, 183, 214,  19
	.byte	221, 111, 226, 170, 247, 194, 158,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 25,  67,  95, 118, 234, 200, 225, 184,  18,   1,   8, 197,  65, 186,   2, 194
	.byte	116, 179,  32, 176, 238, 202,  80, 146,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126,  20, 136, 213, 204, 218,  51, 252, 197, 204, 231, 155, 251, 173,  19,  82
	.byte	 33, 154, 154,  94, 194,  52,  46, 219,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191, 246, 195,  71, 220,  63, 249,  88,  52, 114,  94,  57, 154,  79, 202, 201
	.byte	192,  13, 191, 230, 159,  79,  29, 187,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	224, 209, 218, 247,  74,  73, 120,  71,  35, 220, 222, 149,  97, 206, 204, 235
	.byte	157,  84,  79, 127, 181, 188, 197, 163,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	119, 186,  55,  87,  90, 127,  24, 234, 209, 167, 100, 109,  49, 129, 182, 246
	.byte	255, 119, 173,   7, 103, 160,  91, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50,  23,  48,  19, 144,  31, 107, 224,  79, 139,  90, 184,  62, 138, 197, 163
	.byte	135,  58, 220,  39, 185,  61, 157, 100,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	200, 180, 235, 217, 139, 104,  61, 138, 126, 135, 110,  39,  34,   0, 152, 194
	.byte	197, 190, 137,  25,  29, 107, 100, 210,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172,  60, 154, 144,  63,  98,  74, 241,   3, 177, 250, 100,  38,  24, 124, 255
	.byte	107, 178, 206, 147,  46, 199,  71, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 79, 235,  58, 153, 166, 218,  99,  13, 234, 172, 111, 188, 251, 251, 193,  82
	.byte	142, 179, 192,  32, 254,   2,  69, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 59,  31,  95, 233, 221,  21, 221, 250,  62,  52,   1, 177, 132, 160,  84,   0
	.byte	167,  75,  57, 190, 179, 203, 148,  41,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136,  75, 234, 156, 162, 160,  93, 205, 208,  85, 126,  15,  16, 183, 242, 142
	.byte	 83,  86, 112,  68, 239, 100,  37, 109,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 18,  99, 155,  62, 219,  56,  36,   5,  23,   3, 234, 116,  21, 130, 184, 145
	.byte	180,  24, 212, 199, 142,  30, 167, 154,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 99, 223, 116,   7,  78, 127, 141, 236, 141, 207, 158, 196, 238,  82, 243,  90
	.byte	255, 190,  46, 171, 255, 122, 179,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202,  49, 212, 103,  17,  83,  50,  48, 221,  63, 131, 112,  34, 149, 189,  19
	.byte	181, 199,  81, 216, 234, 234, 212, 188,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 26,  86, 127, 200, 193,  10,  55,  89, 159,  95,  62, 114, 183, 185, 246, 201
	.byte	 42,  53,  17,  76, 236, 181,  28, 237,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	243, 198,  49,  93, 136,  47, 135, 112,  24, 140, 217,  53, 250, 239,  16,   8
	.byte	182, 136, 132, 166,  41,  14, 104, 132,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247, 144, 113, 156, 254, 111, 136, 116, 139,  48, 221, 122,  21,  28, 235,  75
	.byte	117, 128, 123, 147, 129, 139, 178, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 83, 190,  66, 195, 176,  24,  36,  83,  89, 178,  99,  72, 184,  69,  40, 188
	.byte	202, 154, 220,   2,  50,  68, 162, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50, 183, 186,   8,   2,  40,   5,  66, 172, 177,  34, 182, 231, 217, 247, 227
	.byte	  1,  36, 251, 195, 208,  51, 132, 209,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11,  57,  32,  63,  65,  58,   2, 137,  36, 102, 155, 123,   6,  26, 239, 178
	.byte	201, 144,  51, 193,   3, 168, 222, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  6,  99,  22, 195,  47,  66,  40,  70,  76, 179, 112, 242,  71,  37, 166,   6
	.byte	 20, 243, 205, 128,   3, 252,  43, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10, 240, 205,  55,  33,  96, 118, 113, 138,  65,  85,  15, 155, 214,  92, 231
	.byte	 98, 155,  16, 255, 176,  69, 208,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 12, 114, 164,  37, 147,  29, 168,  32, 193, 223, 232, 209,  56, 132,  43, 213
	.byte	 51,  21, 231,  32, 119, 133, 125,  64,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131,  76,  41,  47, 222,  85, 105,  89, 141, 206, 189,  23,  34,  99, 157,  35
	.byte	205, 212, 171, 141, 173,  37, 204, 216,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156, 116, 143, 144, 247,  14,   9,   1,  75, 154,  21, 176,  43,  73,  69, 155
	.byte	109, 160, 167, 222, 121, 183, 218,  84,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 96, 203, 182, 111,  28, 149, 121, 232,  17, 235,  88, 160, 187,  20,  28, 113
	.byte	162,  60,  80,  38, 213,  86, 156,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131, 123, 179,  65, 130, 147, 228,  89,  65, 221, 150, 142, 215, 221, 160,  95
	.byte	112, 106,  41,  75,  94, 174,  66, 234,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	251, 192, 182, 201, 235,  89,   6,  32, 180,   3, 127, 247,  77, 172,  25, 165
	.byte	136,  54,  81, 236,   0,  99,  60,  95,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	167, 175, 253,  36,  19, 106, 159,  31, 186, 153,  45,  29, 110, 244, 218,  29
	.byte	179,  54, 144,  93,   3,  97,  61,  44,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	168,  18, 160,  65, 250, 234, 172,  89, 184,  76,   5,  75,   4, 163, 162, 124
	.byte	139,  75, 231, 137,  31,  56,  29, 107,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235, 246, 124, 113,  51,   0, 116, 134, 220,  95,  78, 224,  85, 111,  89, 246
	.byte	100, 173, 254,  80,   9,  58,   2,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	218, 184,  83, 172, 185, 220, 249, 100,  12, 155, 139,  52, 135, 251,  48, 251
	.byte	 75,   2,  47, 122, 222, 200,  54,  51,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227,  95,  38,  91, 215,   1,  34, 169, 251, 129, 152, 115, 245, 164, 225,  71
	.byte	 16, 127, 237,  44, 196, 126, 160,  18,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	205, 252, 202, 252, 143,   5, 247,  14, 210, 214, 223,  51, 136,  29, 148,  56
	.byte	  3, 168,  65,   1, 125,  99, 122,  23,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 81,  54,  53, 216, 189, 128,   8,  17,  20,  24, 240,  37,  40, 190,  92, 180
	.byte	186,  38, 244, 245,  41, 175,  16,  17,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149, 152, 145, 207, 247,  77,  76, 160, 208, 154,  59, 106,  63,  58, 214,  19
	.byte	135, 167,  86,  14,  16, 171, 162,  67,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98, 167, 143,  79, 247, 158, 171, 227, 240,  31, 159, 187,  11,  57, 225, 133
	.byte	186,  27, 198, 220, 117, 248, 219,  25,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 30,   5,  41,  84, 139, 188, 153,   0,  81, 243,  82, 244, 117, 224, 216, 187
	.byte	171, 111,  14, 233, 238, 153, 128, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	210, 170,  86, 205,  39,  66,  87,  33,  59,  93, 170,  53, 233, 113,  34, 143
	.byte	112,  95,  93,  34,  30,  51,  32, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	222,  31,  83, 198,   8, 227,  47,  90, 188, 140, 240, 113, 106,  76, 173, 195
	.byte	220, 231,  13,  60, 150, 195, 164, 253,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 22, 131, 147,  79, 151,   3,  19, 174, 144,  39, 234,  29, 154, 188, 107,   4
	.byte	158, 124, 163, 193, 203, 163, 138, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 91, 178, 110, 219,  93,  36,  80,   3, 103,  20, 131,   8, 159, 100,  91,  33
	.byte	 93, 211, 227, 233,  87,  93,  47, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  7, 162, 192, 112, 108, 149, 154, 197, 207,  99,  95,  87, 239,  43,  68, 169
	.byte	186,  27,  41, 192, 145, 177,  11, 118,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	252,  94, 136,  30, 225, 177, 162, 155, 131,   3, 121, 102, 168, 185, 133, 159
	.byte	 24, 182, 231, 149, 221, 158,  61, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 92, 236,  78,  35, 116,  15,  50, 189, 167, 220, 175, 208,  18, 125, 249, 237
	.byte	159,  55, 208,   4, 243, 148, 242,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126, 221, 190, 238,  70,  26, 170, 151,  47, 129, 185, 218, 204,  69,   5,  33
	.byte	140, 176,  53,  34, 217,  15, 139, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  9, 167, 138,  23,  84,   2, 169, 128,  43, 120, 138,  16, 168,  40, 159,  19
	.byte	 18, 177,  99,  92, 100,   6, 136, 229,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  4, 253, 184, 205,  41, 167, 187,  62, 111, 238, 170,  56, 180, 236,  96, 202
	.byte	122, 201, 218, 252, 195, 155,  60,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	117,  53,  50, 238, 189,  56, 252,  96,  15, 199, 131,  39, 219, 160, 231, 123
	.byte	225, 112, 108, 163, 114,  26, 197, 192,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101, 152, 169, 169,  38,  28, 240,  92, 135,  53, 249, 103, 145, 192, 144,  69
	.byte	166,  93, 182, 241, 103, 217,  33, 178,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	164, 102, 238, 236,  41, 178,  47,  92,  15,  50, 213, 249,  30, 137, 233, 139
	.byte	165,   2,  16,  60,  19, 215,   3,  13,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 18, 223,   0, 180, 108, 220, 214, 180, 144, 115, 164,  76, 165, 180,  85, 144
	.byte	172, 135,  14,  31,  73, 253, 151,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	141, 150, 255,  25, 166, 226, 166,   4, 113, 189, 104,  81, 121, 245, 179, 104
	.byte	108,  22, 221,  61, 119, 126,  63,  23,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	160, 255, 148, 165, 183, 128, 199,  10, 104,  60,  52, 238,  66, 139,  18, 197
	.byte	205,  68, 237, 218,  24, 232,  40, 179,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	117, 159, 143, 122, 237, 237,   1,  94, 226, 244,  55, 255,  19,  24, 193,  47
	.byte	112, 229, 208,   2,  34, 127,   1, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67, 150, 150, 196,  70,   1, 103, 186, 222,   9, 246, 207, 168, 232, 115, 149
	.byte	 81,  86, 213,  63, 126,  27,  21, 104,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	192, 221, 105,  15,  12,  96, 254, 228,   6, 210, 238, 109,  95,  61,  10, 189
	.byte	184,  64,  66,  31, 227,  68,  69,  71,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	229,  27,  97,  39, 241,  19, 170, 141,  71, 179, 195, 148, 255, 232, 191, 160
	.byte	245, 183,  37, 242, 237,  76,  80,  51,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	237,  88, 147, 189, 180, 161, 207,  60,  70,  79, 230, 165, 199,  30, 227,  74
	.byte	 97, 110, 151, 106, 182, 233, 118,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	192,  69, 236, 113,  10,  21,  86, 207,  61, 110,  14,  31, 127,   9, 198, 240
	.byte	165, 115, 156,   1,  68,  25,  85, 155,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170, 133,  31, 172, 125, 213, 233,  70, 130, 134,   4, 136,  20,   8, 218,  60
	.byte	184, 198, 126,   7, 242, 189, 110,  59,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248,  21, 126, 124, 238,  39,  30, 134, 140, 243, 253, 199, 198, 175, 184, 242
	.byte	212,  71,  90,  18, 111,  35,  87,  47,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	145, 176,  95,  42, 151, 177,  97, 166, 181,  39,  62, 134,  94, 149, 123, 155
	.byte	177,  27, 131, 225,  62, 168,  94, 174,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	209, 145,  65, 117, 130, 242, 219,  92,  78, 138, 181, 158,  98, 242, 181, 158
	.byte	212, 160, 208, 170, 141, 183, 221,   6,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	173,  71, 221,   6,  32,  12,  27, 225, 184,  49,  65, 157, 216, 165, 147, 228
	.byte	117, 235, 216, 173, 216,  89,  16, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248,  99,   8,  46, 217,  55, 107, 213, 186, 195, 105,  86, 158,  99,  12, 153
	.byte	230, 233,  51,  66, 104, 192, 253,  60,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 25,  44,  64, 254, 216, 236, 242, 152, 241,  77, 201, 118, 202,  26, 255,  79
	.byte	128,  51,   0, 118,  59,  12, 131, 135,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240, 251,  74, 252, 180,  87,   5, 203,  42, 228, 193, 111,  52,  23, 230, 160
	.byte	 25, 230, 213, 248,  70, 136,  64,   2,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 42,  99, 209, 240, 174, 240, 147,  68, 217,  48,  67,   1,  83,  36,  45,   6
	.byte	  2, 181, 195,  44, 188,  14, 135, 252,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118,  84, 208, 248,  30, 137, 194, 145, 154, 169,  48, 126, 243,  42, 135, 228
	.byte	222, 200, 108, 237, 169, 127,   3, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 21, 152, 203, 128, 154, 132, 124, 102, 139,  16,  29,  34, 164, 177,  96, 123
	.byte	  5,  21, 215, 213, 206,  49, 190,  69,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 32, 132,  59,  18,  22, 109, 117, 178,  51, 179,  10, 213, 176,  57,  43, 123
	.byte	  8, 162, 128,  97,   8,  28,  57, 241,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 97,  59, 221,  70, 247, 201, 179, 102,  50, 112, 120, 111, 210,  63, 157, 203
	.byte	 41, 161,  53,  54, 106, 184, 130,  34,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223, 151, 146, 238, 203,  26, 215, 244, 214, 121, 151, 243, 197,  44, 101,  18
	.byte	179,  34, 160, 198, 173, 189,  85,  88,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240, 181, 157, 224, 176, 255, 104,  76, 219, 151, 138,  36,  15,  37, 157, 124
	.byte	 88,   4, 228,  10,  38,  60, 217, 165,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	133, 246, 244,  20,  50, 197,  26, 128, 237,   5,  60, 100,  93, 232,  91,  93
	.byte	 63, 139,  49,  53, 196, 204, 242, 148,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	119, 101,  34,  51,  98, 200,  76,  83, 164, 231,  19,  39, 132, 163,  15, 157
	.byte	217, 137,  17,  31, 144, 132, 185, 227,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	104,  74, 155,  95, 186,  64, 221, 175, 228, 231,  64, 128,  69, 100, 248,  92
	.byte	 45,  18, 145, 202, 152, 240, 128,  31,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	160,  33,   1, 120,  72, 102, 168,   4,  69,  63, 245, 183,  91, 230, 132, 252
	.byte	 30, 112,  35, 169, 140, 118, 175,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	244,  82,  78, 170,  51, 231,  45, 163,  96,  96, 231,  31,  97, 192,   7, 194
	.byte	 13,  43, 165, 214, 179,  37, 180,   6,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	242, 213, 233,  12, 106,  15, 255, 237,  99, 151, 131,  68,  77, 184, 127,  33
	.byte	 71, 213,  97,  85,  43, 132, 126,  51,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	233, 152, 191, 180, 241, 159,  61,  62, 185,  26, 170,  71, 140, 239,  42,  71
	.byte	  2, 180,  92,  86, 140, 124, 107, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 58,  80, 208, 124, 253,  44, 169, 119, 195, 124, 193,  91,  27, 192, 252, 210
	.byte	189,   0, 149, 114, 236, 220,  72, 121,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	182,   3, 233, 205, 148, 244, 161, 118,  84, 147, 235, 189,  64, 131, 143, 135
	.byte	224,  54, 112,  48, 206, 151,  82, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	208, 232, 167, 221,  82, 140, 188, 145, 234, 247, 133, 228, 212,  72,  24, 189
	.byte	211, 186,  61, 217, 163,  75,  96, 206,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	158,  19, 215, 127, 148,  72, 226, 127, 103,  81, 251, 252, 182,  58, 238, 196
	.byte	 84, 103, 228, 217,  13,  56, 199,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	210,  55, 246, 129, 251,  30,  38, 123, 116, 134, 126, 130, 221, 252,  26, 251
	.byte	  6, 119,  79, 166, 198,  47, 123, 221,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 68,  12,  24, 218, 199,  60, 150, 229,   2,  36, 137, 162, 184, 232,  74, 124
	.byte	 42,  45,  84, 111,  51, 243, 125, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	106, 198, 233, 188, 203, 239, 131, 193, 151,  81, 113,  39, 131,  32,  74, 143
	.byte	128, 235, 109, 192, 230, 167, 187,  92,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170, 109,  97, 149,  98,  73, 163, 148, 109, 139, 157,  14, 107,  13, 246,  83
	.byte	  2,  87,  80, 144, 239, 204,  87,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	112,  10, 250, 168, 122, 231, 128, 105,  81,  92, 154, 194, 141,  68, 249,  59
	.byte	 38, 252,  19, 175, 229, 100, 144,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	109, 221,  92, 109, 104, 115, 126,  22, 196,  21, 240, 109, 177, 236,  20, 242
	.byte	168, 174, 184, 211, 242, 203, 207,  36,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	183, 132, 193, 239,  17, 197,  78, 232,  24,  94, 239, 134,  11, 162, 153, 115
	.byte	 30, 228,  31, 182, 217, 218, 216, 100,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 51, 117, 248,  12,   2,  42,  95, 146, 169, 143,  71,  19,  64,  16, 197, 222
	.byte	206, 172, 126, 168, 198, 215,  91, 114,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236, 227, 237, 150, 206, 142, 119,  99,  57, 247, 238,  65, 213, 181, 243,  11
	.byte	121,   1, 241,  33, 150,  33, 212, 130,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118, 177,  95, 213, 209,  84, 116,  63,  36, 189, 188, 165, 177,  72, 232, 216
	.byte	180,  84,  61,  20, 218, 195, 106, 220,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	181, 113, 228,  83, 170, 247,  54, 182, 133,  20, 218,  79,  21, 168,  30, 150
	.byte	135,  47,  63, 179, 222, 136,   2, 218,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  7, 162,  26, 148, 171, 211,  93,  90, 187, 233, 124, 234, 181,  39, 187, 107
	.byte	118, 172, 193, 248,   8,  92, 183, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 74, 112, 237, 164, 245,  92, 236, 189, 230, 190, 251, 157, 209,  56,  33, 242
	.byte	 29, 204, 187, 110,  41,  41,  36, 230,   0,   0,   0,   0,   0,   0,   0,   0
G$k_matrix:
	.byte	201,  75, 127, 246, 124, 184, 153, 146, 248, 108, 167,  19,  59, 141, 134, 236
	.byte	139,  66,  23,  12,  65, 238,  10, 248,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	148,  43,  45, 184, 124, 207, 238, 135, 214, 119, 139, 215,  46, 204, 220,  69
	.byte	110,   0, 155, 135,  34, 240, 254,  55,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	155, 103,  28,  83,  62, 204, 234, 175, 225, 236, 249,  98, 118,  19,  57, 127
	.byte	 75,  47, 128,  23,   2,  91, 236,  87,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	122, 150, 229, 114, 133,  21, 144,  43,  76,  22, 222,  92, 161, 159, 195,  20
	.byte	239,  99,  33,  10,  68,   6,  18,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	145, 208, 187,  45,  26,  26,  49, 143, 245,  66,  39,  13,  84, 161, 237, 168
	.byte	  6,   1, 231, 135, 227, 194,  34,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	193, 242, 158, 250,  90, 218,  52,  47,  16, 117,  66, 106,  61,  65, 230, 212
	.byte	214, 138,   0,  15, 105,  91,  32,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105,  19, 101,  46,  16, 194,   4, 226,  42, 115, 147, 250,  87,  79, 219,  92
	.byte	109,  71,  11,  89, 131, 198,  49, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	190, 242,  64, 153, 199, 111, 199,  38,  18, 184, 111, 197,   8, 229, 129, 166
	.byte	147, 181, 132, 183, 107,  48, 100, 209,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	157, 230, 203, 156,  38, 125,   3, 212, 166,  99,  36, 242, 154, 111, 209,  30
	.byte	252, 109, 237, 113,  70, 192,  63,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 33, 247, 129, 150, 146, 187,   7,  85, 120,  94,  53,  63, 141, 104, 233,  76
	.byte	238,  26, 184, 107, 244,  92, 152, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	106, 121, 165,   1, 234,  61, 217,  63, 180, 222,  64, 122, 237,  45,  20,  26
	.byte	115,  56, 103,  66, 215, 230, 105, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 88, 107, 150, 183, 156,  65,  60, 168, 158, 168, 109, 186, 203, 144, 224, 170
	.byte	 55, 158,  87,  87,  82,   2,  51,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 74,  98, 235, 177,  58, 140,  66, 215, 235,  47, 114,  46,  59,  73,  82,  82
	.byte	123,  61,  10,  23,  26, 132,  97, 133,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105, 193, 146, 195, 222, 115, 152, 223, 206, 204, 249, 104, 204, 240,  63,   3
	.byte	 29, 228,  30, 122, 224,  23, 202, 216,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 74,  33,  99, 162, 102, 223, 143, 232, 199,  95, 241, 186,  57,  76, 125, 202
	.byte	 72,  65, 220, 104,   3,  60, 189,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	200, 251, 163, 190, 239,  16, 168, 169, 182,  55, 126, 205, 100, 196, 171, 153
	.byte	108,  35, 177,  88, 124, 186,  75, 141,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	251, 218, 226, 255,  71, 113,  49, 101, 216, 241, 125, 239,  28,  84, 160, 162
	.byte	225,  84, 153, 147,  40, 189, 220, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235, 156,  39,  33, 217,  23,  27, 253,  11, 199, 197, 110, 255,  25, 191, 219
	.byte	200, 162,  87,  68, 185, 106,  71,  69,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	130, 117,   5, 124, 149,  38, 229, 125, 125, 103, 140, 136, 229,  77,  37, 110
	.byte	219,  29,  87, 239, 234, 231, 247, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54, 140,  85, 113, 199,  86, 134, 222, 188, 198, 222, 185,  94, 243, 243, 169
	.byte	188, 145,  78, 195,  13, 243,  89, 176,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189, 135,  97,  42, 138, 167, 156,   2, 172,  37,  38,  62,  95,  73, 252,  64
	.byte	 48, 186,   6,  46, 116, 144,  63, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	204,  49, 167, 121, 114, 204, 252,  55, 103, 247, 236, 158, 142, 103,  42,  82
	.byte	211, 175,  22,  69, 160, 215, 233, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 80, 165, 224, 202, 209, 224, 133, 213, 151,  77,  47, 196, 111,  51,  89,   6
	.byte	132, 204,  30, 114,  73, 207, 245,  92,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234, 151, 120, 212, 172, 244,   3, 236, 200, 209, 105, 231,  47,  84, 197,  73
	.byte	144, 178, 171, 119, 194, 186, 127,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	249,  41, 216,   9,  10, 234, 235,  89,  56,  36, 250, 134, 230, 142, 165,  48
	.byte	 81,  27, 150, 217,  49, 129,  96,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140, 184,  58, 101, 200, 189, 162,  73, 241,  64,  50, 248,  87,  27, 211, 217
	.byte	 35, 221, 179, 112, 234, 158, 157, 118,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 20,  26, 106,  70,  98,  58, 225, 203,   3,  40, 118, 150,  73, 156, 208,  59
	.byte	212,  75, 140, 162, 179, 142,  54, 107,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	206,  28, 202, 196,  95, 240,  30,  73,  11,  12, 137, 111,  18, 214,  91, 174
	.byte	128,  10,  47, 238, 103, 193, 140, 234,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	207, 161, 180,  59, 227,  92,  70, 143, 253, 252, 212, 149, 123,  22,  43,  64
	.byte	 55,  36, 179,  57, 140, 223, 252, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	165, 157,   8, 195, 122, 190, 216, 122, 229, 222,  20,  50,  45, 125,  66, 219
	.byte	139, 138,  78,  86,  76, 107,  75, 112,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 14, 238,  78, 123,  65, 135, 243, 175,   0, 100, 195, 250, 203,  55,  33,  98
	.byte	159, 213, 217, 194, 101, 215,  54, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 42,  23,  32, 177, 201,  42, 142,   7, 190,  56, 162,  89,   0, 237, 167,  90
	.byte	237,  32, 203,  55,  20,  43,  15,  36,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	199,  73, 171, 160, 221, 253, 188,  94, 255, 126,  87, 203,   8,  74,  78, 174
	.byte	174, 234,  50,  75, 177,  42, 117, 153,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126,  74, 125, 224, 112,  83,  71,  33, 188, 241, 235, 174,  54, 187,  38, 233
	.byte	153, 132,  64, 137, 233,   0, 247, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	192, 138, 231, 198, 132, 211, 244, 104, 244,  47, 129,   6, 102,  64, 249, 206
	.byte	 46,  27, 147, 151, 242, 125, 215, 232,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 13, 112,  89, 233,  47, 101,  28, 131, 201, 238,  53, 225,  82,  66, 184, 149
	.byte	 80,  56, 110,  95, 178,  84,  63, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 59, 109,  32,  78, 124, 130,  61, 190, 225, 209, 136, 108, 227, 252,  19, 180
	.byte	131, 230, 161, 216,  33, 109,  47, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	209,  48,  82,  32, 163, 213,  93, 125,  71, 197, 206, 240, 169, 173, 151, 254
	.byte	 85, 185,   4, 229, 151,  25, 119, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	112,  75,  37, 152, 150, 160, 192,  31, 228, 176,  28,  98, 191,  75, 124,  97
	.byte	188, 237, 205,  47, 125, 109, 174,  38,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	130, 239,  89, 244, 145, 135,  49, 245,  57, 254, 134, 183, 202, 156, 178, 201
	.byte	136,  48, 251, 139, 224, 135,  17,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	165, 183,  94,  91,  46,  99, 205, 182,  85, 249, 114, 225, 188, 185, 179, 154
	.byte	152, 249, 231,   4,  40, 176, 183,  28,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86, 141, 166, 205, 106, 218, 110,  21,  78, 157, 228, 236, 170,  44, 107,  85
	.byte	147, 191, 202,  50, 162, 122, 243, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94,   2,   8, 199,   3, 144, 232, 131, 249,  39, 101, 248, 169,  46, 193, 149
	.byte	182, 213,   5,   0,  30,  86, 242, 168,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	203, 125,  57,  33,  46, 178,  51,   1,  87, 164, 205, 221,  49,  15, 107,  79
	.byte	100, 213, 220, 171,  18, 100, 226, 159,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170,  43,  20,  44,   5, 125,  40, 151,  98, 207, 216,   4,  26, 113,  98, 115
	.byte	 20, 130, 133, 182, 124, 181, 143, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 17, 227, 148, 202, 205,  69, 186,  92, 212, 159,  53,  47, 236,  67,   2, 208
	.byte	204, 149,  55,  57, 115,  27, 114, 103,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	159,  66, 168,  25,  20,  88,  78, 250, 181, 127, 205,  65,  38,  77, 204,  81
	.byte	 65, 151,  22,  21, 145,  11, 165,  74,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	221, 193, 238, 153,   4, 114, 115, 128, 103, 170, 221,   5, 186, 110, 115, 193
	.byte	198,  63, 126, 108, 114, 207, 159, 148,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 32,   5,  59, 176, 189, 172, 239, 170, 133, 180,  87,  31, 181,  24, 174,  78
	.byte	 20,  30,  59, 180, 194, 157,  48,  28,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	174, 226,  43,  51, 196, 117,  14,  45,  90,  81,  62, 172,  26, 150, 171, 155
	.byte	 21, 116,  20, 106, 157, 247, 233,  20,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188,  86, 214,  16,  29, 185, 138, 226,  31, 244, 245, 102, 130, 215,  12,  12
	.byte	 77,  45, 105, 163, 191, 253,  45, 153,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	181, 116, 211, 170,  11,  74,  72, 168,  61,  48,  84, 219, 129, 143, 242, 207
	.byte	215, 187, 143, 183, 141,  42,  84, 182,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 17,  29, 236,  62, 194, 203, 210,  32, 230, 178, 242,   0, 118, 233,  12,  82
	.byte	203, 118,  45, 121,  22, 108, 188,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	152, 195, 157, 190, 187, 100, 178, 188, 234,  45, 119, 227,   3,  83, 236,  16
	.byte	103,  86, 172, 181, 254, 217, 169, 195,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98, 129,   6, 183, 192, 195, 119, 114, 101, 185,  54, 125, 174,  50, 162, 147
	.byte	156, 187, 114, 163, 164,  15,  73, 249,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115, 196, 116, 255, 248, 174,  15,   8, 220, 196,  65, 197,  68,  29, 144, 115
	.byte	241, 227, 166,  28, 116,  86,  10,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149, 111,  26, 230, 241, 153, 172,  12,  38, 223, 209, 197, 230,  74,  87, 169
	.byte	 78, 212, 235,  42,  44, 110, 148,  53,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	206,  41, 133, 149,  26,  30,  74, 236, 136, 241, 219, 216, 130, 103, 142, 146
	.byte	 49, 241, 156, 113,  75, 199,  44, 168,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	127, 136,  37,  35,  85,  89,  14, 175,  85, 194, 185, 212,   4, 193, 122, 135
	.byte	237,  93,  68, 103, 210, 100, 176, 177,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  8,  30,  42,  57,   9,  86,  86, 131, 128,  57, 246,  38, 179, 227,  32,  73
	.byte	220,  57,  10, 208, 249, 125, 140, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	107,  23, 192,  65, 178, 163,  49,  77, 173, 201,  35, 105,  56, 183,  47, 226
	.byte	237,  44, 135, 149, 132, 128,  92, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	250, 158, 110, 215, 242,  65, 197, 143, 185, 146, 103,  65,  39, 225, 128, 100
	.byte	 59, 119, 231, 207,  66, 230, 122, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 15,  98, 158,  29, 111, 194,  31,  49,  31,   2,  52, 141,  65,  82, 233, 230
	.byte	254,  42, 171, 240,  15,  94, 133, 155,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116,   8, 249, 224, 179,  91, 198,  40,  39, 211, 180,  16,  42, 217,  15,  12
	.byte	249, 223, 247, 236, 192,  52, 188, 218,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 218, 146,  53, 142, 111,  97, 243, 181,  60, 107,  45, 138, 204, 119, 176
	.byte	 52, 243,  69,  91, 247, 125,  96, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82,  33,  77, 252,  79,  60, 148, 154, 109, 136,  96, 114, 107,  93, 142, 170
	.byte	 66, 103, 118, 166, 252, 142,  24,  37,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131, 252,  15, 156, 144, 142, 204, 227, 115,  25, 112, 184,  63, 185,  69,  48
	.byte	 18, 174, 249, 227,  30, 167,  83, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 95,  32, 237,  40, 114, 176, 178, 116,  75, 233,   4, 250,  70, 111, 199,  38
	.byte	231, 229,   8, 221, 183, 253, 205,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 65, 176, 244, 249,  26, 101, 105, 163, 244, 123, 196,  24, 238,  42, 218, 221
	.byte	247, 232,  40, 168,  50, 143,  23, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	151, 188,  28, 170,  71, 240, 159, 240,  77, 165, 178,  12,  51, 170, 201, 241
	.byte	145, 195, 150, 128, 152, 123,  73, 232,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86, 163, 148,  25, 121, 213,  49, 180,  34,  30, 242, 102, 131, 240, 216,  38
	.byte	 39,  65, 235, 235, 195, 198, 153,  32,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	251, 104, 223,  79,  44,  56, 112, 209, 239,  26, 212, 201,  59,  76,  77, 152
	.byte	120,   8, 174, 240, 164, 162,   5,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	217, 208, 211, 100,  42, 211, 181, 168,  75, 125,  14, 182, 119, 240, 152, 176
	.byte	 31, 247, 187, 246, 231, 181,  54, 213,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24, 154, 102, 128, 128, 121, 219, 222,  63,  35, 127,  15, 254, 175, 144, 127
	.byte	219,   0, 251,  37, 211, 252, 131,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 64, 233, 117, 119, 191, 148,  32, 127,  73, 147, 186,  21, 181, 180, 114,  20
	.byte	183,  91, 158, 189,  13,  43,  28,  86,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	180,  50,  66, 101,  90, 150, 234, 162,  70,  28, 133,  54, 170, 102, 159, 231
	.byte	 72, 115,  38,  52,  42, 216, 112, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149, 165,  15, 218, 226, 158, 221, 172,  79, 242,  17,  97,   2, 148, 101,  15
	.byte	195, 136,   0,   4, 191, 222,  88, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	249, 134, 255, 212, 153, 244,  76, 131,  21, 141, 170, 116, 203,  77,  30, 148
	.byte	 88,  10,   6, 227, 123, 159,  70, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102, 243,  96,   8, 109,  26, 170, 101, 210, 107, 219, 118, 159,  53,  62, 237
	.byte	130,  47, 159, 137, 136, 182, 178, 248,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	217,  39, 111, 241,  28, 229, 173,  82, 192, 197, 168,  87, 220, 221, 196, 149
	.byte	 27,  97, 205, 162, 223,   6, 180, 210,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	196,  56, 151,  42,  23,  38, 115, 246, 198, 253, 228, 112, 247, 135, 183,  51
	.byte	 44, 178, 134, 115,   1,  67, 206,  18,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175, 235,   4, 168,  62,  56, 180, 182,  92,   5, 171, 159, 148, 133, 130,   4
	.byte	234, 140,  66, 215, 139, 224, 228, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36,  69, 200,  39, 229,  93,  54,  93, 219,  48, 202, 183, 251,  60,  37,  97
	.byte	 28, 181, 228, 133,  11,  84, 160,  67,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	200, 224, 191,  30, 146, 204,  44, 201, 195,  12,  97, 250, 250,  65,  65,  32
	.byte	141, 180, 105, 203, 194, 188, 216, 218,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235, 245, 227, 245, 155, 179, 128,  44, 248,  63,  43,  60,  89, 188, 145, 163
	.byte	175, 252, 151, 185, 193,  79, 177, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	104,  30, 109,  59, 218, 127,  24, 169,  15, 230,  73, 165, 143, 237, 221, 231
	.byte	140,   1, 136, 128,  88, 149, 141, 133,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10, 196, 230, 171, 255, 167, 229,  22, 250,  74, 100, 145,  53, 128, 134, 118
	.byte	192, 194, 179, 109, 156,  38,  93, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	125, 235, 141, 223, 182, 132,  76,  91, 216, 144, 217, 109, 232,  88, 204,  40
	.byte	124, 229, 246,  12,  39, 120, 201, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 207, 197,  26,  93,  69,  58, 159,  48, 196, 218,  83,  20,  72,  72,  47
	.byte	121, 205, 104, 102, 184, 178, 247,  48,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	141, 224,  61, 218, 129, 146,  80,  82, 142, 102,  60, 112, 247, 227,  38, 146
	.byte	 66, 197, 103,  38, 222,   1, 186,  18,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 93,  66, 237,  67, 187,  45, 145, 207, 213, 159, 225, 233,  86,  34, 224,  49
	.byte	 11, 116, 100, 135, 226,  42,  15,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	217,  67, 133, 209, 172,  69,  98, 150, 190, 175,  39, 187,  99, 233,  39,   8
	.byte	 98,  48, 239,  40, 165, 192, 234, 135,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	213,  44, 144, 193,  13,  94, 211, 126, 218, 161,   0, 156, 101, 244, 140, 216
	.byte	173, 197,  26,  83,  56,  77, 232, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	152,   8, 159, 222,  69,  49,  30,  64,  98,  82, 211, 170,   5, 126,   0,   2
	.byte	192,  52,   5,  82, 190,  40, 181, 129,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	154, 178,  68,  18, 239, 252, 233,  82, 157,  92, 143, 249, 186, 152,  52, 173
	.byte	173, 172, 149,  14, 129,  82, 108,  44,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	100, 209, 249,  88,   4,  39, 205, 164, 237,  33,  54,  80, 191, 188,  40, 228
	.byte	 30,  40, 239, 119,  95, 254,  31,  56,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11, 119,  56,  38, 212, 232,  53,  85, 139, 130, 234, 224, 117, 197,  45, 206
	.byte	198, 214,  81, 183,  39, 110, 250, 202,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 92, 222, 226, 205,   1, 234,  67, 145, 148, 249, 229, 109, 248, 214, 110, 149
	.byte	199, 219, 219, 227, 115,  83, 211,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 42,  79,  85,  72, 124, 218, 237, 190,  22,  88,  63, 210, 164,   6, 207,  92
	.byte	 63,  73, 214, 145, 122, 154, 247,   1,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	198,  29,  87, 118,  27, 130,   8,  70,  95,  20, 153, 244, 189,  20, 130,   1
	.byte	188,  97,  57,  91, 192,  56, 252, 219,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	137, 216, 203, 227, 213, 251, 119, 100, 237,  34, 164,  98, 206, 139,  73, 228
	.byte	195, 248,  98,  32,  65,  95, 130,  40,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  1, 155,  84, 147, 203, 142,  27, 209, 237, 172,  22,  59,  34, 172,  92, 127
	.byte	131,  56, 205, 162, 233, 231, 199, 201,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	167,  36, 224,  82,  85,  91, 154,  88, 127,  67, 161,  31, 133, 244,  29,  44
	.byte	 11,  85,  39, 120,   2, 203, 202,  78,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	228,  91,  48,  69, 121, 148,  29, 146,  62, 141, 245,  39,  50, 185,  34, 157
	.byte	 20,  79, 237, 150,  21, 224,  61, 225,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	150, 123,  16, 244, 141,  13, 143,  60, 135,  92,  47,  32, 232, 219,  59,  46
	.byte	 79,  78,  44,  89, 140, 149, 208,  88,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	222, 124,  36,  70,   7, 122, 252, 140, 113, 218, 182,  90,  37,  98,  30, 123
	.byte	135, 121, 229,  26, 198, 108,  71, 191,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	152, 201,  65, 179, 248,  85, 198,   2, 191, 236,  49, 235, 178, 180, 136,  36
	.byte	235, 249, 225, 188, 213,  66,  75, 251,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 46, 207, 208,   7,  22, 100,  66,  38,  54, 123,  80,  31, 211, 210, 154,  69
	.byte	 98, 165,  33, 100, 204, 163, 231, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103,  32, 155,  83, 162, 137, 202, 159, 207,  89, 188,  53,  38,  90, 104, 103
	.byte	162,  50,  98, 240, 148,  78,  55, 251,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	173, 221, 104,  58, 172,  64, 178, 126,  10, 180, 193, 221,  42,  61, 232, 253
	.byte	  7,  33, 129, 127, 166, 175,  21,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	165, 132, 203, 153, 240, 173, 122,  10, 156,  64,  38, 106, 221, 251, 245,  94
	.byte	223,  97,  43, 191, 227, 184, 138, 241,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	124, 209, 109, 130,  39, 100, 175,  29, 157,  66,  22, 190,  14, 105, 152, 189
	.byte	 61,  28, 183,  65, 156, 165, 148, 135,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227, 182, 209, 209, 176,  66,  90, 120, 200, 160, 154, 180, 135,  13,  29, 214
	.byte	 37, 205, 123,  52,  78,  27,  34, 107,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 77, 146, 215,  81, 254,  43,  48, 212, 166, 149, 202, 110, 171, 194, 216, 218
	.byte	 28, 240, 238, 116,  47,  24, 102, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131,  25,  27,  95, 120,  37,  78,  39,  28, 151, 108, 250, 150, 221, 115, 193
	.byte	102,  34,  22, 134, 160, 175, 122, 189,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	104, 107,  83, 164, 103, 188, 161, 129, 111,  71,  39, 188, 145,  75, 251,  56
	.byte	 51, 211,  81, 152, 125,  36,  28,   2,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 96, 115,  53, 212, 253, 225, 152,  58, 152, 230, 114,  30, 173, 110,  44, 134
	.byte	 55, 237,  11,  37, 222, 156, 215,  42,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	210, 234,  95, 108,  79, 230, 150, 244,  34, 141,  95,  76, 132, 106, 139,  68
	.byte	 36, 244,  52, 123, 245,  94, 154,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 91, 191,   3, 112, 185,  20,  24, 224,   9, 176, 254, 188, 205,  47, 187, 133
	.byte	175, 225,  95, 224, 184, 176, 118,  54,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131, 251, 200,  48, 201,  28,  16,  28, 117, 116, 127,  91, 199,  42, 196, 110
	.byte	 23, 237, 116,  24,  55, 100, 205,   7,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	148, 234,  57,  57, 207, 205, 125, 123,  79,  82, 194, 203,  60, 223, 248, 136
	.byte	148,  62,  62,  56,  39,  84, 227,  99,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191,  71, 204, 254,  51, 245, 133, 139, 214,  77, 153, 221, 101, 117, 105, 230
	.byte	 20,  28, 137, 144, 112, 166, 193,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248, 103,  49, 202,  92, 192, 158, 176, 119, 181,  37,  48, 189, 158,  52, 251
	.byte	254, 183, 112, 100, 213,  69, 236,  93,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	243,  69, 222,  26, 215, 237,  77, 116, 180,  77, 136,  40,  44, 101, 168, 218
	.byte	 67,  75, 213,  59, 218,  41,   4, 179,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 35, 114,  46,   8, 213, 232,  28, 132, 187, 242,  66,  25, 158,   9,   2,  47
	.byte	 42,  43, 106, 150, 185,  53,  30, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 42,  98, 190,   4, 220,  11, 103, 136,   8,  78,  86, 155, 237,  91, 160, 195
	.byte	 57, 181, 103, 236, 127,  68, 176, 127,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	212,  33,  89, 155,  11, 186, 226,  80, 114, 147,  17, 241,  57,  83, 243, 140
	.byte	 57,  25, 144,  48, 137, 121,  80,  60,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	124, 196, 158, 214, 174,  55, 120, 127, 195,  75, 182,  59, 114, 106, 179,  68
	.byte	134, 102,   9, 232, 121, 252,  64,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	167, 254, 112, 222,   4, 139,  91,  76, 106,  39, 239, 246, 181,  50, 182, 147
	.byte	  5, 236, 127, 155, 149,  40, 245, 243,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 38,  47,  31, 188, 247, 202, 218,  46,  19, 165, 229, 108,  90, 192, 144, 132
	.byte	229,  41,  79,  63, 104,  45, 240,  52,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 14, 196, 195, 130,  72, 181,  50, 177,  19, 206, 226,  70, 136, 213,  15, 151
	.byte	 19, 181, 253, 127,  99, 254, 200,  91,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	206, 157, 194, 211,  98,  37,  71,  84,  19, 156, 219, 196, 127, 136, 144, 141
	.byte	198, 237, 173,  46,  76,  66,  34,  98,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	141, 138, 244,  76, 108, 161, 216, 199,  68,  19, 175, 241,  57, 205,  54, 182
	.byte	 80, 225, 235, 148, 187, 139, 243,  82,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  2,  72, 163, 244, 136, 198, 204, 174,  23,  37,  64, 102,  44, 127,  93, 193
	.byte	177, 124, 208, 219,  26,  19,  57, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	255,  33, 169,  63,   6, 172,  66,  83, 124,  41, 164,  44,  26, 216,  63,  96
	.byte	115, 190, 165,  51, 165, 136,   7, 139,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 55, 242, 213, 225,  59,  51, 180, 246, 225, 204,  62, 228, 159,  13, 208, 101
	.byte	200,  96,  48,  63, 130,  49,  12, 216,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 79,   3,   0, 246, 237,  49, 114, 143,  11, 163, 191, 202, 238,  16, 238,  63
	.byte	182,  55,  38, 216,  31, 143, 228,  41,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 15, 199,  31,  88, 214, 224,  14, 123,  34,  44,  45, 140, 144, 146, 106, 108
	.byte	 81, 251, 131,  95, 178, 124,  17, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86,  27, 217, 231,  48, 225,  46,  29, 198, 126, 155, 212,  91, 212, 214,  71
	.byte	174,  90,  95, 143,  34, 219, 209,  41,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86,  16,   0, 223, 207, 201, 130, 255, 236, 136,  63, 207, 157, 249, 241,  76
	.byte	 32, 203, 147, 221, 192,   0, 195, 112,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	132,  92, 111, 105,  44, 121, 189,  42,  85,  98,   3, 208, 188, 205, 239, 169
	.byte	219,  17,  12,  45,  50,  48,  65, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	232,   2,  61, 192,  18, 178, 120,  37,  38, 203, 151,  17, 101, 226, 251, 119
	.byte	 77,  59, 204, 223, 160,  29, 199, 178,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 52,  28, 240, 229,   7,  83,  28,  32,   2,  23, 215, 238,  20,  75, 249, 187
	.byte	108, 180,  47, 141,  70, 161,  45, 245,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84, 236, 167, 161,  83, 213, 211, 211, 135, 205, 111, 223, 212, 111,  65,  63
	.byte	126,   7, 161,  50, 100,  97,  39,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 30,  25, 205,  78, 198, 169, 184,   7, 106,  99,  33,  27, 172,  22, 172,  28
	.byte	 45, 183,  16, 236, 123,  44, 136, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 48, 195,   6,  16,  44,  69, 230, 202, 112, 113,  47, 130, 127, 132, 237, 179
	.byte	 39,  57, 140, 227,  53,  50, 113,  41,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	200, 240, 231, 251, 127, 187, 120,   7,  48,  29,  96,  81, 104, 240, 119, 104
	.byte	130,  45,  29, 209, 185,  94,  68, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	110, 143, 176, 155, 166, 252, 249,  76,  73, 213, 219,  10, 241, 223,  25, 137
	.byte	 15,  17, 216,  64, 164, 241,  83, 241,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	183, 122, 115,   5,  15, 205, 216,  40, 185,  54,   3, 235, 202, 126, 222,  20
	.byte	213,  22, 210, 176,  76, 207, 206,  28,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	221,  14, 189,  35, 151, 151, 110, 182, 233, 155, 108,  28, 250, 113, 219,  15
	.byte	194,  54,  15, 189, 195, 137, 177,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	154, 152, 183, 250, 187,  29, 173, 174,  89, 141,  34,  25, 124,  95, 176, 155
	.byte	210, 200, 232, 186,  14,  31, 199, 215,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 20, 216, 101, 189, 233, 251, 156, 174, 166, 166, 129,  43, 230, 246, 134, 169
	.byte	 75,  52, 173, 156,  35,  85,  40, 254,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	106, 148, 179, 162, 109, 146,   5, 248, 102, 168, 127,   5, 236,  90, 143,  52
	.byte	 29, 170, 145, 201, 100, 242, 151, 188,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 79,  68,  27,  90,  19, 191, 132, 177,  66,  40, 203, 237, 212,  68, 214, 219
	.byte	169, 208,  17,  42,  97,   3,  35, 134,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147, 120, 164,  50, 194,  57, 158, 190, 225,  74,  36, 135,  21,  21, 238, 241
	.byte	 88, 166, 191,  42, 104, 132, 177,  11,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67,  25,  23, 221,  16,  46,  77, 215, 132, 244,  91, 117,  44, 170,  18,  67
	.byte	 46,  43, 106,  38,  89, 118, 227,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223, 234,  14,  89, 139, 222, 117, 223, 186, 165, 252,  11, 238,  80, 112, 134
	.byte	 94, 198, 249, 114, 143,  34,  89,  17,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236,  95,  49,   1, 212, 211, 217,  48,  20, 186, 161, 120, 158, 203,  82,  12
	.byte	167,  87,  21, 172, 173, 248,  70, 109,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	133, 194, 132,  18, 145, 151,  19,  89,  90,  44,  46, 230, 164, 146, 141, 150
	.byte	 81,  35,  80, 113, 156,  15,  82, 195,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 66,  64, 210, 166, 202,   0,  83, 200,  95, 104, 212,  36, 105, 123, 133, 166
	.byte	235,  46, 135,  36,  22, 114,  14, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16, 252, 192, 216, 122,  49,  23,  32, 198, 214,  54, 114,  63,  32, 148,  63
	.byte	 40,  27, 183, 235, 248,  13, 149,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	231,  26,   8,  28,  81, 209, 157,  22,  93, 115, 126, 157, 122, 226,  11, 221
	.byte	240, 118, 155, 241, 182, 160, 240,  85,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	237, 151, 247, 124,  84,  60,  22, 219, 205,  47, 226, 241, 110,  28,  87, 246
	.byte	238,  41, 185, 170,  71, 178, 225, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153,  41,  85, 185,  70, 113, 125,  31,   8,   0, 121, 238,  76, 143, 222, 125
	.byte	148,   4, 127, 163, 235, 238, 208,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140,  37, 108,  72, 135,  97,  31, 222, 135,  93, 221, 155, 239, 170, 149,  12
	.byte	182, 215,  85, 236,  45, 253, 224,  86,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	182,  95, 124, 136,  76, 104,  91, 219,  84, 109,  99,  38, 245, 191, 123, 232
	.byte	121,  69,  66,  19, 126, 169, 148, 234,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 14,  50, 132, 161, 211, 107, 211, 211,  15,  37,  73, 101, 107, 191, 161, 249
	.byte	194, 112, 250,  44,  99,  84, 156,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	162,  36,  98, 250, 197, 149,  32,  89, 248, 152, 186,  75,   0,  39,  61,  21
	.byte	 81,   1, 162, 157, 184,  14,  52, 180,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191, 137,  38,  41,  79, 161, 204,  28, 212,  11, 129, 251,  50,  46, 250, 212
	.byte	167, 153,  36,   8,  28, 208, 127, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 93, 241,  48,  94, 122, 133, 170, 182, 230, 209,  31, 166, 207, 114,  85,   3
	.byte	238, 237, 219, 105, 184,  35, 121, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	189,  11, 147, 189, 219, 234, 199,  75, 136, 215,   0, 227, 184,  20,  91, 245
	.byte	 30, 139,  31,  42,  39,  53, 124, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 29, 254, 115,  32,  25,  76,  58,  10, 193, 208,  41,  23, 175,  33,  44,  33
	.byte	 71, 168, 239,  65, 130,  20, 184,   2,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84, 151,   3, 172,  76, 214, 108, 250, 197,  14, 150,  94,  89, 234, 215,   0
	.byte	115, 176, 221, 116,  42,  81,  90, 150,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	222, 255, 151, 241, 129,  55, 178, 100,  28, 249,  90,  24,  46, 179, 253,  54
	.byte	 52,  71,  16,  92, 132,  23, 135,  91,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 71,  87, 190, 120,  49, 100, 137,  51,  12, 196,  61,  75,  40, 235,  88, 235
	.byte	 82,  70,  87, 130, 191,   9,  64,   6,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63, 103, 207,  91,  75, 207, 187,  16, 190,  32,  52, 245,  52, 186, 194, 211
	.byte	190,  68,  47, 255, 179, 236, 250,  18,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 155,  70,  30, 169,  14,  64,  98, 201,  50, 183,  63,  88, 182,  81, 245
	.byte	188,  25, 144,  85,  87, 238,  78,  50,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	168, 253,  67, 242, 223, 190,  31, 248, 190,  22, 176,  73,  17, 216,   9, 135
	.byte	 79, 120, 214,  10, 177,  51, 234, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	109,  56, 141,  19,  84, 252, 180,  60, 214,  76, 242, 234,  23, 111,  58,  15
	.byte	158, 102,  25,  33, 110, 114, 225, 244,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	201,  72,   9, 181, 114, 169, 100, 133, 193,  29,  54, 214, 103, 207, 109, 103
	.byte	 54, 243,  17, 223,  85,  44, 108,  16,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101,  24,  86, 173, 166, 108, 137,  65, 182,  35,  93, 171,  89,  42,  54, 184
	.byte	125,  68, 161, 244,  27, 158, 142,  32,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	238, 245,  86,  65, 234, 212,  30, 151, 100, 191, 171,  28,  28, 150, 160, 231
	.byte	 62, 237,  75, 200,  55,  36,  96,  60,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	174, 224, 165,  54, 185, 239,  26,  82, 113,  56,  38, 253,  25,  72, 252, 225
	.byte	109,  25,  82, 208,  27,  16, 226, 144,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63, 116, 190,  17,  44,  28,  58,  27, 121,  17, 204, 228, 123, 172,   6,  11
	.byte	125,  59,  58,  28,  72, 228, 247, 163,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	173,   1,  50,  54,  30, 212,   3,  91,  31, 105, 209, 253,  80, 202,  85, 213
	.byte	205, 182, 193,  99,  68, 120, 254, 102,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 30, 243,  24,  90, 209,   7, 109, 104,  48, 232,  35, 194,   3, 140,  28, 105
	.byte	 56, 126, 243,   3,  57,   1, 181,  11,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 61,  95, 249, 128, 106, 209, 114,  55, 191,  17,  99,  47, 159,   6,  85, 239
	.byte	147,  80, 139,  21, 193,  32,  42, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	255, 243,  42, 108, 136,  66,  57,  92, 148,  29, 125,  11, 147, 164,  77, 117
	.byte	 56,  93,  33,   4,  46, 137, 110,   6,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	142, 195, 228,  97,  23, 207,  32, 136, 133, 200,  19,  25,  71,  74, 113, 198
	.byte	112,  90, 187, 174, 166, 158, 174,  24,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	142, 215,  38,  95,  75, 133, 240, 104, 123, 247, 186, 140, 243,  47,   4, 185
	.byte	 39, 104, 192,  63,  56,  16,  93, 204,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 79,   6, 127, 183,  61,  84, 243, 186,  64, 203, 160, 239, 216,  41,  14,  58
	.byte	185,   3, 125,  10, 177, 205,  12,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,  42, 106,  83,   8, 130,  71, 180,  84, 239, 211,  87, 117, 105,  46, 164
	.byte	 60,  27, 197, 135,  23, 128, 218, 201,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 90,  84, 101, 193, 158, 230, 229, 154, 129, 211, 128, 188,  48, 133, 163,  60
	.byte	100, 254,  51, 171, 126, 252, 212, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24,  18, 194, 118, 111, 207, 201, 136, 187, 186, 139,  25,  29,  93, 108,  26
	.byte	 90, 147, 173,  49, 156, 249, 126,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  3, 155, 252, 138, 157,  97, 216, 201, 182,  99, 253,  48, 138, 255, 227,  98
	.byte	226, 234, 115,   0,  70, 213, 122, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 46, 247, 101, 118, 222, 192, 219,  18,  95, 205, 101, 214,  78,  76, 184, 245
	.byte	157,  20, 183, 211, 155,  10,  16,  74,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118, 154, 188, 160, 205, 103, 196,  85, 146, 202, 125, 120, 230, 157, 221, 184
	.byte	162, 235,  56, 134,  34, 162, 244, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	107, 170,  89,  10, 190, 166, 151,  18, 207,  84,  76,  71, 164, 108, 243, 252
	.byte	 74, 135, 163, 202,  12, 182,   7, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94,  28, 182, 237,   1, 236,  38,  78,  35,  60, 134, 114, 229, 225,   2, 204
	.byte	 81, 242,  26,  42, 120, 247, 217,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	164,  42, 176, 102, 103, 196,  24, 202, 114, 140, 151,   7, 107,  16,  16, 243
	.byte	 16, 169, 168,  33, 108, 128, 110, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 48,  67, 182, 208,  58, 103, 125, 249, 128, 218, 153, 122,  38, 107,  21, 191
	.byte	204,  73, 152,   5,  80, 182, 130, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	212, 159, 190,   7, 225,  94,   1, 114, 115, 222,  83, 245,  55, 225, 138, 129
	.byte	 34, 121, 109, 135, 221, 190, 146, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86,   4, 112, 197, 223, 253,  63,  60, 165, 209, 172, 161,  72, 165, 142, 133
	.byte	252, 175,  84,  91,   4,  25, 215,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175,  93, 188, 165,  19, 168, 173, 144,  42, 215, 141,  93,  16,  33, 248, 186
	.byte	113, 140, 239, 253, 156, 250, 144,  79,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	112, 140, 231,  16, 116,  60, 103,  53, 246,  38,  64, 113,  23, 219, 174, 166
	.byte	 77, 250, 187, 229,  45,   7, 100, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 44, 188, 206,  35,  46,   0, 214, 160,  22,  85,  99,  71, 161,  63, 235, 125
	.byte	107,  62,  65,  17, 190, 156, 144, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  8, 208, 173, 174, 203, 181, 103, 129,  87,  29,  18,  29, 219, 200,  88,   3
	.byte	214, 139, 119, 203,  42, 219,  44, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  1, 151,  70, 215, 166,  55, 108,  20, 153, 114, 152, 187, 126,  50, 155, 215
	.byte	143,  63, 210,   0,   5, 137, 239,  38,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	211, 176, 252, 153, 138, 209, 120, 137, 102,  33, 152, 154, 134, 184, 251, 213
	.byte	203,  46, 147, 146, 134, 212, 138, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 70, 220,  56, 168,  99, 227,  54,  92, 104,  32,  45, 116, 144, 119, 152,  50
	.byte	164,  59,  42,   4, 156, 172, 180,  38,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 71,  38,  60, 165,  19,  92,  71,  28, 198,  45, 152, 202, 132, 203, 156, 169
	.byte	 35, 182, 137,  50,  30, 246,  84, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113, 180, 223,  62, 251,  34,  83,  13, 129,   2,  46,  18, 151, 165, 137, 131
	.byte	 24, 139, 131,   9,  87, 169,  10, 243,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156,  38,  91, 192,  28, 109,  95, 214,  34, 135,  45, 169, 189, 135, 165,  61
	.byte	 38,  38,  48, 238, 244, 180, 182, 149,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234, 154, 251,  84,   1,  52,   3, 188, 191, 114,  19,  35,  57,  26, 139, 177
	.byte	120, 150, 129, 158,  38, 212, 153, 139,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 62,  30, 165, 169,  50, 113, 123, 161, 254,  69,  13, 152,  31, 229, 164,  27
	.byte	209,   6, 189, 234,   2, 157,  91, 154,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	174,  91,  99, 165, 207,   2, 153, 117, 235, 243, 142, 156,  70, 243, 186, 154
	.byte	237, 137, 108,  78, 116, 109, 129,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147,  25, 165,  32, 106, 243,  47, 243, 142, 203, 198, 105,  50,  39,  55, 121
	.byte	109, 147, 107, 147,  13, 188,  36, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202, 213,  68, 182,  38, 191, 150,  31,  79,  29, 172,  28, 150, 127, 173, 143
	.byte	 97,  37,  57, 204,  80,  24, 210, 128,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105, 209,  93,   8,  95,  78, 106,  20, 185,  65, 235, 193, 173,  71, 246, 210
	.byte	215, 157, 108, 147, 221, 113,   2, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	141, 166, 142, 108, 202,  67, 237, 113,  10, 223,  12,  15, 203, 254, 188, 169
	.byte	 84, 179, 175,  65, 117, 193, 115, 198,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	139, 251, 180,  64, 158, 232, 149,  86, 209, 143,   5,  93,  11, 184, 174,  74
	.byte	221, 174, 138, 237,  99, 143, 206,  40,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94, 215, 233, 192, 255,  28,  66,  96, 134, 220,  59, 218, 235, 131,  10,  22
	.byte	216, 251,  61, 179,  68, 216,  13,  35,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	232,  89,  76, 155,  31,  47, 103, 202, 249,  72, 117, 100, 133,   3, 144,  87
	.byte	204, 125, 222,   6, 251,  23,  23, 172,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	129, 218,  51, 148, 241, 241,  66,  49, 177,  77,   0, 141, 111,  52,  13,  71
	.byte	223, 197,  37, 175,  76, 129, 124, 172,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  2, 177, 161, 191,  70,  59, 226,  46,  75,  27,  80,  65, 210, 158, 200, 126
	.byte	185,  12,  87, 203, 207, 118,  21,  92,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	230,  88, 125,  29, 167,  15,  15, 132,  62, 219,  22,  55,  48,  18,  13,  98
	.byte	 19, 250,  57,  72, 248,  53, 162,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	134,  54,  42, 118, 147, 152,  31, 215,  74, 254, 108, 152, 109,  98,  15, 242
	.byte	108,  40, 118, 168, 123, 235, 110, 214,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	238,   5, 252,  14,  97, 120,  84,  10, 230, 106, 167,  30,  25, 231, 104, 249
	.byte	245,   6,  56, 109,  52, 206, 223, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 49,  88, 150, 122, 146, 162, 207,  96,  65,  41,  60, 111, 104, 115,  90, 102
	.byte	184, 193, 118, 146, 141,  31,  53,  52,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118,  29, 247,  66, 170,  44, 112,  80,  80, 101, 103, 104,  95,  55,  83, 212
	.byte	109,  73, 214,  51, 112, 163, 227, 107,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 60, 205, 212, 164,  36, 178, 153, 102,  90, 194,  44,  61, 177, 247,  88,  67
	.byte	223, 214,  76, 147, 252, 243, 203,  98,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 61,  92, 113,   4,  55,  48, 231, 173, 172,  53, 156, 184, 118, 199, 141, 169
	.byte	 18,   1,  48,  25, 118, 203,  36, 239,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169, 222, 215, 212,  21, 147,  75,  30,   6, 244,  60,  76, 198,  48,  76, 176
	.byte	 74,  15, 207,  19, 231, 125, 121, 225,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 13,   7,  93,  50,   4,   5, 221,  33,  86, 170,  98, 124,  77,  26, 214, 199
	.byte	 97,  92,  24, 248, 214,  95,  28,  73,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	252,  12, 181, 103,  51,   6,  21, 250,  96,  37, 153, 161, 135, 144, 234, 103
	.byte	180,  33,   2,  46, 117,  76, 105,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	100, 236, 238,   0,   9, 233,  69, 144,  41,  17, 172, 129, 205, 119, 151, 254
	.byte	 55,  85, 196, 205,  40, 244, 184,  99,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	218, 112, 100,  12,  31, 157, 216, 201,   1,  42,  45,   6,  67,  15, 226, 167
	.byte	148, 161,  92, 121,  11, 210,  93, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	219,  97, 181, 102,  30, 228, 246, 155, 248, 243, 236, 237,  14,  44, 186,  55
	.byte	142, 112,  91, 164, 221, 157, 255, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	106, 229, 232,  78,  16,  34, 116,  92,  59,  45, 209,  89, 118,  86, 244, 211
	.byte	 35,  31, 240,   4,  84, 108, 125,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240, 104, 145,   2, 125, 160,  17, 233,  10, 225,   3,  70, 201, 183, 199, 166
	.byte	 81, 154,  87, 145, 101, 136, 122, 104,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 18,  33,  88, 208, 189, 111, 138, 189, 245, 224,   1,  85, 155,   3, 203,  13
	.byte	220, 240, 172, 116, 205, 230,  56, 228,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113,  74, 183,  96,  52,  45,  19, 127, 145, 217, 217, 135, 250,  17, 122, 128
	.byte	248, 228, 107,  56, 145, 251, 168, 173,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115, 106,  96, 211,  36, 187, 102, 109,  49, 225,  42, 107,  44,  26, 104, 109
	.byte	 69,  81, 189,  61, 130, 138, 115,   2,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11, 114, 201, 240,  59, 155, 188, 107,  57, 116,  26,  91, 153, 255, 165,   9
	.byte	 93,  56, 152,  45,  90, 221,  59, 192,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 78,  66, 252,  16,  82, 175,  35, 253, 215, 109, 166, 187,  50, 235, 123, 168
	.byte	120, 238, 239, 187,  29, 100,  17,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 89,  76,  10,  29, 131,  54, 156, 123, 107,  44,  61,  93,  67, 118, 253, 186
	.byte	225, 192, 117,  81,  16, 173,  40, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 79, 150, 102, 118,  63,  13, 182, 116,  61,  71, 132, 202, 197, 235, 217,  60
	.byte	 92, 133,  61,  35, 119,  84, 158, 216,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 66,  24,  15,  29,  17, 172, 131, 238,   3,  72, 235, 141, 109, 223, 170, 197
	.byte	188, 203,  14, 125, 113, 187,   5, 179,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 74, 137,  49, 217, 104, 152,  18,  44,  70,  78, 222, 112, 194, 175,  54, 251
	.byte	118, 167,  20, 128,  75,  68, 151, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	233, 170, 119, 121,  46,  87,  82,  79, 202,  21,  35, 112, 126, 131, 255, 190
	.byte	  0, 116,  69, 194,  49, 175, 151,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185, 105, 149,   0,  93, 194, 165,  50,  53, 210, 107, 233,  20, 131,  28, 141
	.byte	166, 200,  42, 134, 173,  13, 208,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	199, 247, 183, 116, 217, 116, 151, 189, 140,  25, 199, 109,  62,   1, 242, 156
	.byte	108, 235, 132,  22, 164, 166, 201,  48,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 15,  63, 149, 249,  27, 156,  31, 221, 174,  58,  49, 172, 102,  36, 182, 207
	.byte	186,  17, 126,  71, 110, 135,  71, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	158,   1, 219, 221, 106, 191,  39,  14, 111, 158,  26,  25,  97, 115, 165,  87
	.byte	175,  58, 215,  26, 183,  93, 151, 118,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	225,  13,  25, 134, 163,  80, 238,   8,  86, 250,  19,  83,  79, 148,  22, 119
	.byte	175, 172, 115, 206, 196, 146, 101,  80,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	148, 244,  47, 215,  83, 182,   3, 244, 101, 147, 158,  25, 168,  68,  20,  71
	.byte	202, 115, 153,  62,  38,  79, 172, 237,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	139,  68, 129, 171,  10, 178, 169,  94, 181,  20,  24, 234, 226,  87,  28,   4
	.byte	178,   7, 202,  53, 253, 109, 182, 253,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131, 227, 158,  20, 187,  63, 168, 233, 243, 164, 153,  24,  51,  51, 168,  33
	.byte	  7, 185, 151, 159, 225, 131,   2, 229,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103,  73, 219, 201, 145,  29,   4, 207, 226,  52, 163, 192, 118, 205,  95, 141
	.byte	 56,   3,  57, 103,  11, 128,  69, 189,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216, 172, 167,  91,  19,  12, 185,   0, 150, 202, 229,  33, 186, 173, 233,  27
	.byte	208,  20, 202,   7,  81,  92,  27, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	190,  13, 182, 177,  30, 154, 223,  29,  83, 189, 123,  69,  78, 156,  79, 120
	.byte	 35,  76, 108, 124,  26,  50, 140, 190,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 38, 232, 143, 247,  10, 240,  87, 157,  62,  79, 120, 118,  10, 225, 224, 223
	.byte	126, 215, 135,  80, 172, 144, 209,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	233,  55, 226, 247, 159,  34, 151,  24,  40,  89,  46, 235, 236, 124, 235, 121
	.byte	 63,  22, 207,  89, 140,  34, 253,  75,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	129,  92,  51, 137, 251, 211,  95,  41, 190,  63, 161, 150, 114, 186, 105, 172
	.byte	240,  62, 183,   1, 189, 169, 214,  78,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	160,  74, 246, 239, 127,  16, 107,  77, 181,  47, 117,  22, 228, 176,  37, 137
	.byte	 98, 154, 118, 229,  10, 143, 146, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	120,  93, 179, 176,  19, 188,  67, 162, 186, 144,  14, 166, 123, 142, 216, 231
	.byte	196, 176,  16,  66, 202, 162,  64, 118,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	120,  92, 232,  60,  67, 191,   1,  97, 107,  13, 178,  19, 222, 189, 110,  96
	.byte	 95, 240,  52,  34,  46, 202,  63,  82,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	254, 242, 224,  19, 162,  30,  83, 113,  83, 235,  77, 151,  17,  27, 125,  83
	.byte	171, 148, 117, 210, 182, 126,  40, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 60, 172, 176, 162,   7, 251, 143, 141, 157, 169, 147, 221, 125, 197,  98, 202
	.byte	204, 171,  67, 156,  23,  83,  57, 203,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	207,  83,  10, 227,  88, 115, 166, 149, 200,  65, 123, 232,  85,  54, 214,  95
	.byte	 99,  78, 203, 210,  40, 173, 147, 126,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94,  27, 156,  88, 180, 194, 210,  67, 107, 142, 155, 165, 212, 144, 164, 179
	.byte	 44, 150, 187,  30, 210, 181, 146, 116,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169,  41, 241, 112, 114,  80, 231, 167,  28, 238, 240, 188,  75, 185, 169, 186
	.byte	 87,  64, 134,  37, 200,  49, 219,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	215, 103,   3,  48,  21,  19,  27,  82, 111, 229, 223, 106, 111,  54, 211, 220
	.byte	 33,  40,  66,  99, 229,  71,  97,  98,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240,  56, 140, 118, 184, 191,  51, 221, 205, 184,  34,  37, 255,  92,  69,  31
	.byte	104, 217,  70,  88, 134, 163,  22, 252,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	128,  79, 150, 176, 173, 229,  50,  49,  21, 130,  83, 131, 136, 138, 174,  18
	.byte	  8, 152,  93,  20, 250, 117,  39, 242,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123,  51,  20, 217,  66, 112,  36,   6,  80, 229, 175, 229,  61,  95,  27,  53
	.byte	 85, 254, 186, 233,  11,  95, 156,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	209, 105, 104,  63, 191, 207, 134,  22,  24,  81, 223, 128, 173, 247,   4, 172
	.byte	100, 206,  27, 171,  65, 121, 206, 234,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10,   0, 157,  80, 178, 212,  10, 187, 253, 108,  77,  23, 148, 194, 227, 173
	.byte	137,  80, 178,  62, 153, 204, 207,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247, 253, 107, 199, 184, 185,  74, 251,  96, 254, 160, 174, 143,  27, 228,   6
	.byte	 25, 127, 103, 231, 206,  78,  46, 185,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 51,  79, 100,  39, 249,  45, 146,  91, 118, 147,  31,  47,  96,  48, 138, 132
	.byte	118, 110, 204,  23, 217,  50, 202,  97,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24, 166, 215, 123, 104, 220, 122, 208, 167,  25, 125,  51, 154, 221, 118, 193
	.byte	155, 131,  31, 203, 236, 157, 205,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 77,  55,  97,  54,  94,  19,  75,  19,  18, 231, 240, 188,  18,   8, 211,  41
	.byte	220, 163, 113, 137, 160, 193,  63, 214,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	160,  80, 156,   7, 250, 196, 232, 145,  70, 199,  10,  98, 164, 118, 167, 167
	.byte	172, 141, 128, 169, 227,  53, 195,  93,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	219, 111, 219, 135, 101, 224,   8, 178, 109,  66, 250, 250,  65, 128,  73,  54
	.byte	116, 198, 226,  32, 232,  46, 130, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240, 227,  69, 198,  48, 120, 127, 184, 199,  89,  40, 202, 231, 194,  27, 232
	.byte	168, 200,   1,  37,   6,  43,  64,  20,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	241, 125,  68, 136, 255,  83,  70, 173, 161, 140,  63, 185,  56,  10, 142, 143
	.byte	132, 190, 227,  53,  62,  67, 139, 229,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 66, 246,  39, 184,  78,  44,  89, 226, 112, 141,  56, 188,  23,  87,  93,  28
	.byte	 34,  70,  49, 156, 156, 110,  95, 102,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 53,   9,   8, 229, 168,  96, 106, 193, 113,  64,  26,   3,  78, 163, 124, 147
	.byte	192, 111, 176,  97,  42, 114, 250, 185,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149, 213, 245, 213,  36,  98, 246, 133,  35, 225, 129, 187,  13,  79,  74, 147
	.byte	235,   7,  58, 174, 177, 133, 119,  59,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 92,  21, 160,  60, 217,  17, 144, 248, 201, 169, 251,  13,  92, 251, 157,  15
	.byte	 23, 172, 118, 116,  60,  93, 113,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	245, 224, 104, 231,  16, 193, 147, 182, 250,  40, 231, 100, 123,   9,  47,  45
	.byte	138, 235, 197,   3, 127,  24, 123, 203,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	249, 190,  90,  95,  90,   5,  32,  14,  80, 195,  99, 114, 147, 150, 192,   7
	.byte	 23,   5, 225, 194, 232,  49,  86, 140,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	177,  25, 243,  60, 214,  77, 126, 157, 158, 237, 130, 187, 104, 141,  88,  53
	.byte	 37, 153, 174,  13, 129,  62, 230, 234,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185,  50, 250, 238,  97,  21, 102,  10, 214, 187, 241,  57,   3, 129, 171, 192
	.byte	 69, 147, 168, 130,  48, 130,  31, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 49, 229,  83,  45,  37,  26, 212,   9, 156, 121, 122, 184,  36,  87, 240, 147
	.byte	 63,  78,  92, 251, 254, 216, 110,  63,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 173,  81, 212,  45, 115, 197, 132, 139,   9,  67,  66,   2, 188, 207,  58
	.byte	212,  58, 229,  68, 224,  18, 213, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11, 212,  47, 191,  18, 212,  70, 218, 135, 240,  82, 210, 151, 111,  48, 154
	.byte	 18,  60, 183,  43, 131,  51, 101,   1,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169, 148,  31, 241, 172,  73,  96, 165, 162, 156, 127, 118, 249, 171,  30,   3
	.byte	208, 151,  65, 204,   1, 222,  50, 131,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56, 163, 162, 169,  45,  54, 252, 106,  24, 253,  32,  62, 144, 138, 251, 157
	.byte	230,  39, 218, 200, 224, 124, 132,  60,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140, 161, 206, 145,  87,  50, 195,  87,  65, 161, 184, 187, 108, 153, 251,  23
	.byte	 81, 227,  65,  57,  73,  59, 251, 180,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	244, 217,  19,  75,  31, 206, 129, 223, 185, 141,  92,   1, 195, 206,  44,  83
	.byte	110, 107,  46, 215, 151,  58, 112,  32,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123,  38,  21, 138,  41, 144,  12, 176, 100,  60, 117,  88,  24,  43, 183,  51
	.byte	 46, 235, 114,  35,  19, 189,  11, 236,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24, 203,  49,   5, 114, 162,  68,  89,  75, 245, 196, 197, 189, 111,  91, 225
	.byte	 36,   1,  74, 135, 191,  38,  49, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 31, 180, 151,  24,  22,   5, 252, 115,  59,  79, 167, 118, 215, 201,  78, 228
	.byte	149,  97, 177, 178, 138,  13, 189, 154,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94,  42, 107, 199,  77, 145,  73,  12, 209, 209, 218, 242,  89,  35, 104,  48
	.byte	 96, 146,  53, 166,  26, 131, 216,  52,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126, 192,  79,  86, 238,   1, 109, 153,  17,  93, 118,  38, 215, 164, 141, 183
	.byte	240, 182, 163, 164,  52,  53, 206, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	228,  72, 201, 126, 200, 112, 227, 254,  79, 179, 247,  19,  60, 192, 172,  92
	.byte	 58, 209, 214,  93, 114,  54,  32,  48,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247,  28, 204, 100,  29, 100,  60,  72,  72, 139,  68, 150,  92,  37, 140, 201
	.byte	 39,   1,  71, 248,  34, 108, 105, 130,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 31, 225, 171, 252, 250,  31,  96, 179, 144,  88,  98, 184, 118,  19, 224, 167
	.byte	 84, 123, 172, 196,  81,   6, 225, 155,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188,  94,  73, 249, 162, 126, 209, 147, 181, 185, 157, 115, 214, 106,  30,  45
	.byte	195,  54,  36, 191, 131,  79, 186, 112,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5,  64, 102, 168, 133,  88, 237,  82, 158, 225, 236, 226,  53, 122, 130,  25
	.byte	186,  77,  35,  30, 144,  33, 129,  22,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  8,  23,  99, 222, 187, 195, 119, 162, 185, 255,  66, 224,  91,  69, 127, 123
	.byte	232, 177, 230, 132,  47, 223, 168,  41,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	252, 178, 242, 251,  17,  11, 187,   8, 165,  29, 100,  29, 196,  81, 106, 120
	.byte	126, 218, 118,  70, 247, 143, 250,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	167, 155, 135, 179,  33,  82, 253,  62,  15,  75,  10, 217, 243, 230,  69, 116
	.byte	237, 177, 195, 249, 219, 154,  53,  19,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101, 208, 218, 101, 194,  40, 104, 124,  69,  39,  90,  31, 189,  29, 185,  23
	.byte	228, 136, 226, 231,  65, 126,  21, 123,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	161, 140, 153,  72, 199, 114,   9, 126,  67, 175, 212,  12,  84,  90,  41, 203
	.byte	228, 172,  52, 151,  46, 195,  80, 116,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  1, 207, 120, 105,  70, 173, 135, 243,  77,  29, 110,  48, 248, 145,  31, 148
	.byte	214,  17, 173, 150,  35, 159, 223,  91,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86,   0, 134,  59,  69, 135, 148,  46, 189, 182, 113, 157,  20, 180,  69,  18
	.byte	  1, 170,  11,  98, 209, 177,  82,  40,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	225, 246,  92,  70, 170,  98, 132,  36, 141, 168, 132, 119,  65, 246, 249, 176
	.byte	 39, 183,  95,  88, 132, 154, 232, 159,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	167, 173, 247, 128, 250, 208,  22,  11, 134, 166,   4, 110, 129, 178,  33, 151
	.byte	227, 254, 174,  87, 132,  31,  35,  14,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121, 202, 254, 228, 154, 178, 132,  50, 144, 195,  58, 102,  28, 120, 150,  86
	.byte	  9, 230,  32, 111,  66, 160,  39, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	231,  88, 123,  32, 211,   6, 220, 219, 199, 211,  44,  20, 144, 143, 103, 143
	.byte	240, 218, 210,  46, 202,  61,   2, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 62, 188, 151,  44, 149, 191, 168, 230, 107, 182, 193,  38,  68,  22, 210, 156
	.byte	182, 183, 156, 130,  85, 208,  31, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	184, 125, 210, 208,  44, 103, 193, 224, 164,  74, 251,  74, 101, 213, 143, 250
	.byte	 16, 118, 112,  57,   5, 164,  95,  99,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82,  93,  81, 167,   8, 109, 214,  40, 168,  49,  22,  42,  81,  97, 188, 241
	.byte	194,  91, 188, 189, 178, 219, 233,  87,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 40, 219,  61,  55, 184,  33, 164,  27, 177,  49,  91, 104, 163, 157,  10,  16
	.byte	 63,  96,   0, 103, 220,  69,  89, 213,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 62, 236,  42, 246,  83,  62,  19,  94, 195,  15,  18, 100,  23, 120, 134,  44
	.byte	 24, 101,  11, 102, 139,  54,  35, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	162,  25,  97, 178,  46, 182, 237,   2,  58, 253, 240, 217, 194,  75,  55, 157
	.byte	245, 244, 236,  98,  57, 233,  41, 232,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	239, 134, 116, 240,  69, 102, 203, 203, 139,  12, 252, 175,  59, 195, 111,  88
	.byte	 33, 153,  62, 186, 236, 168,  58, 135,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	108,  32, 234, 136, 183, 111, 240,  59, 146, 142, 157, 214,   8, 140,  73, 119
	.byte	  9,  96,   4, 136,   6,  35,  82, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 21, 246,  40, 156,  30, 218, 162,  62,  10, 251, 187,  49, 174, 112,  51,  78
	.byte	 47, 238, 220, 243, 113, 135,  29, 178,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	146,   8,  28,  78, 156, 107,  38,  74, 127,  16, 186, 230, 186, 212, 155,  23
	.byte	173,  57, 110,  43, 133, 131, 215,  32,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	141,  50, 157, 148, 220, 115, 221,  44,  49, 158,   4, 218, 169,  71, 239,  39
	.byte	143, 115,   8,  40,  27, 134, 231,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 78, 158, 127,  14, 182, 112, 224,   2,  90,  65,  35, 165,  74, 128, 122, 131
	.byte	144, 215,  29, 165,  75,  21,  46, 167,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	197, 166, 233,  89, 166, 177, 156,  14,  77,  16, 150, 142,  76, 105, 187, 244
	.byte	218, 155, 141,  18, 169,  85, 232, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102,  48, 246, 175, 230, 217, 200, 187, 145,   3, 119, 110, 156, 228,  95,  18
	.byte	 60, 246,  69,  11, 234, 207, 186, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76, 194, 231, 195,  19,  35,  15, 236, 213, 236, 194, 100,  89, 190,  60,  32
	.byte	106, 138, 199,  67, 169,  29,  13, 221,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	198, 206, 180, 128, 204,  12, 152, 178, 129,  93, 235, 131,  41, 241,   3, 174
	.byte	248, 218,  68,  25, 130,  23, 127, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 33,  59, 165, 199,  80, 159,  76, 115, 235,  48, 175, 143,  36, 220, 158,  47
	.byte	151,  97, 187,  80,  65, 230, 209,  55,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  3,  47,  76, 194, 255,   4, 100,  28, 201, 170,  36, 124, 206,  61, 238, 238
	.byte	245,  87,  69,  69, 189, 221,  99, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  2, 152, 183,  32, 191, 253, 174, 144,  65,  88, 251,  78,   4, 208, 138,  24
	.byte	234, 104, 232, 156, 162,  87,  82, 128,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 30,   8, 172, 103, 104,  58, 109, 247, 178,  13, 118, 184, 214,   5,  67,  28
	.byte	 25,  37, 235, 170, 162, 241, 166, 202,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	218, 222,   5,  99,  45, 129, 149,  92,   1, 100, 214, 178, 240, 169, 228,  28
	.byte	105,  90,  81, 214,  16,  63, 211, 219,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37,  70, 224, 239, 217, 143,  90, 230,  93,  65,  46,  18, 214, 184, 182, 154
	.byte	 55, 225, 186, 155,   9,  34, 150, 210,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	183,   3, 107, 184, 186,  83, 205, 236, 190,  57, 217, 218, 121, 130, 123, 204
	.byte	 19,   8,  27, 202,  94, 227,  26, 206,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 97,  42, 141,  32, 100,  89, 177, 107,  91, 249, 184, 214,  65, 196, 233,  59
	.byte	136, 191,  36, 216, 134, 147, 201,   1,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235, 212, 217, 162, 146, 106, 198, 127, 159,  68, 196, 221, 179,  80,  59, 201
	.byte	146, 196, 197,  86, 217, 183,  19, 116,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 66, 207, 146,  47, 226, 137, 210, 134,  41,  78, 191,   5, 173, 158,  80, 242
	.byte	 32,  48, 142, 107, 238,  29, 179, 146,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	148, 143, 105, 177, 149, 114, 127,  75, 162, 196, 133, 175,  57, 254,  76, 241
	.byte	158,  69,  74,  86, 163,  91, 225, 203,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	201, 252, 134, 181, 138, 125, 105, 247,  28, 222,  44,  68, 233, 186, 173, 254
	.byte	160, 197, 123,  21, 173,  13, 244, 134,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 28, 157, 242,  53,  49, 111, 146, 113, 132, 226,  25, 105, 250,  92, 125, 248
	.byte	185,  48, 178,  17, 197, 183,  31,  25,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103, 129,  11, 247,  55, 128, 190,  46, 173, 115, 191, 206, 194, 130, 137,  36
	.byte	 38,  79, 197,  61,  82, 189,  96,  51,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236, 205,  86, 204, 204, 194,  22, 148, 189, 124,  29,  26, 219, 243, 122, 126
	.byte	124, 139, 169, 172, 150,   3, 250, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 41, 144,  63,  66, 140, 162, 240, 245,  55,  76,  48, 194, 150, 222,  70, 184
	.byte	 28,  89, 107,  90,  16, 193,  73,  88,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	219, 120, 241, 174, 253,  83, 168, 227, 116, 217,  82,  84, 104,  14,  52, 253
	.byte	159, 218, 218,  20, 127, 138, 191,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 80,  39, 111, 175, 149,  38,  89, 142,  79, 110, 249,  94,  82, 163, 129, 233
	.byte	 51, 128,  92, 211, 206, 230, 197, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56, 249,  17,  58, 108,  23,  84,  46,  98, 203,  58,  45, 232,  51,  24,  95
	.byte	 12,  43, 143,  18,  64, 148, 224, 157,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10, 191, 152, 160, 206, 236, 207,  82,  91, 226, 161,  23, 244, 211,  29, 111
	.byte	213,  20, 197, 137,  60, 249,  29,  52,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	125, 167, 255, 194, 205, 135, 242,  77,  57, 194, 151,  30, 208, 253, 238, 186
	.byte	 70, 185, 178, 179, 241, 169,  95, 227,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140,  78, 166, 233, 121,  77, 196, 189, 192, 115,  77, 129, 181, 226, 115, 151
	.byte	193, 143,  93,  98, 249,  60, 208,  84,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	124,  95,  94, 110, 251, 113, 166, 171,  23, 239, 238,  71,  92, 177, 127,  97
	.byte	  3, 113,  16, 187,  22,  68, 151,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 55, 251, 100,  33, 141, 159, 248,  76, 216,  92,  99,  70, 164, 248,  22, 171
	.byte	226, 150, 203, 223, 164,  20, 158,  80,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 64, 167,  19,  80,  91,  18, 136,  27, 165,   5, 204,  21, 121,  16, 223, 221
	.byte	  1, 171,  22, 118, 193,  62, 118, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37, 173, 228, 204, 253,  98, 138, 218, 214, 182, 224, 244, 171, 213, 159,   1
	.byte	  1, 235, 160,  88, 202, 113,  85, 210,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	253, 218, 159, 221, 171,  37,  65, 112, 165, 197,  37, 230, 163,  34,  88, 234
	.byte	167,  80,  90,  17,   7, 150,  83,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	166, 110,  69, 157, 171, 115, 138, 244,  96,  70, 154,  98, 252, 112,  47, 109
	.byte	 78,  13, 223, 244, 164, 246, 225, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	255,  19, 197,  90,  49, 229, 159,  12, 246, 219, 199, 235,  66,  98, 160,   0
	.byte	232, 179, 166, 104, 171, 153,  72,  58,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175,  23, 160, 101,  89, 177, 172, 147,  56, 143, 184, 177, 191, 104, 203, 159
	.byte	 18, 183,  65,   3, 128,  16,  72, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	155, 222, 159, 210, 170,  61,  59, 249, 225,  32,   3,  78,  96, 118, 179,  21
	.byte	176,  69,   0, 160,  47,  15,  36, 124,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170,  65, 206,  89, 203, 127, 163, 109,  47, 115,   6, 185,  85,   3,  17, 237
	.byte	230, 162, 227, 144,  49, 214, 178,  26,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	166, 102, 173, 233, 239, 136, 158, 141,  12, 241, 208, 213, 110, 132, 112, 101
	.byte	107,  61, 124, 106,  58, 209,  65,  59,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	139,  95, 100,  68, 170, 199,  98,  79, 245,  51, 219,  21, 238,  78, 180, 176
	.byte	 40,   2,  43, 102, 179,  21, 216, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	231,  14, 120, 130,  11,  10, 168,  93, 220, 149, 242,  16,  89, 142,  34,  94
	.byte	 57,  83,  99, 147, 151, 149, 178, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	151,  28,  53,  86, 254, 188,  19, 225, 221,  84, 163, 158, 232, 108, 125, 138
	.byte	 85, 139, 158, 115,   2,  28,  73, 166,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43,  89,  53,  94,  80,  68,  26, 155,  67,  43, 139,  11, 120,  32, 206, 217
	.byte	231,  94,   5, 250,  79,  57, 102,  89,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 17, 105, 119,  71, 176,  50, 196,  58,  93,   2,  43, 189,   2, 226, 221,  34
	.byte	  3,  35, 192,  15, 237, 133,  28,  65,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 13, 136, 173, 129, 244,  67,  41, 219, 195, 203,   3, 247, 232, 158,  93, 198
	.byte	202,  11,  51, 231,  68, 245,  64, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	158,  18, 242,  39, 223, 221, 121, 164, 115, 138,  34, 219, 161, 187,  26, 141
	.byte	 45, 202, 163,  26, 235,  89, 247, 234,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	226, 189, 132, 224, 163, 222, 143, 211,  12, 190, 244, 185,  36, 233,  54, 131
	.byte	 94, 168,  46,   2,  73, 115, 170, 237,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	120,  64, 174, 220, 216, 193,  81, 107,   1, 207,  37,  55,  82,  68, 147,   0
	.byte	 66,  57, 197, 247, 151,  78, 107,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	190, 210, 155,  39,   8, 138,   9, 199,  49, 153, 178, 210,  25,  86,  64, 168
	.byte	108, 142,  45, 201, 105, 166, 216,  11,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	230, 214,  79,  82,  45,  15, 172, 221, 185, 122, 246,  62, 218, 202,  75, 239
	.byte	 83,  22, 100, 167,  66,  20,  52, 242,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 85,  54, 220, 125, 153, 198, 117,  86, 210, 182, 148,  79,  98, 147, 168,  66
	.byte	150, 224, 122, 203, 244, 122, 163,   3,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149, 197,  50,  14, 190, 144, 242, 121, 220, 161,  62,  50,  88, 103, 172, 213
	.byte	186,  25, 110, 108,  93, 131, 200, 239,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  2, 126, 151, 107,  91, 214,  57, 135, 169, 234, 201,  19, 172,  75,  57, 222
	.byte	 52,   9,  58,  27, 216, 227, 254,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  2, 188,   2, 224, 254,  72,  72,  88, 164, 103,  67, 201, 147, 222,  40, 132
	.byte	221, 120, 129, 145, 133, 155, 166,  38,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	212, 218,  68, 206, 223,  49,  49, 164, 104, 132,  85,  65, 108,  63, 139, 147
	.byte	139, 209, 128,  49, 126, 117,  58,  10,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67,   9, 138, 171, 137, 145, 237, 158, 205, 215,  22,  99, 169, 215, 208, 200
	.byte	  7, 130,  39, 217,  80, 180, 252, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118,  72,   2,  12,  62,  15, 114,  92, 190, 111, 112, 180,  68, 133,   1, 138
	.byte	223,  95, 135,  20, 106, 165,  53, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156,  33, 193,  62, 150,  21,  82, 226,  76,  15,  64,  43, 167,  74, 157, 203
	.byte	236, 247, 248,   0,  31,  76, 226,  53,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63,  30,  85, 192,  58,  67, 113, 144,  51, 202,  38, 182, 195, 246, 161, 107
	.byte	223, 137,  18, 225, 125, 251,  32, 241,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 90,  91, 244, 185,  28, 243, 146, 201,  20,  10, 124, 204,  35,  76, 219, 251
	.byte	116,  87, 138, 109, 226, 209, 141,  63,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170, 110, 178, 202,  11,  64, 195,  94,  43, 182,  68, 211, 167, 157,  93, 158
	.byte	222, 115, 253, 215,  33,  31, 186, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147,  22, 132, 170, 138, 193, 137, 240, 171, 215, 204, 134, 136, 125,  14,  60
	.byte	179, 255, 129,  64, 135, 236, 178,  57,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	180, 185,  66,  70, 210, 200,  10, 150,  64, 149,  32, 201, 198, 122, 157, 140
	.byte	198, 202, 248, 197, 249, 222, 197, 218,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76, 234, 170,  40,  18,  61,  52, 187, 169,  67, 115,  20,  78,  22,  49,  38
	.byte	147, 108, 205, 243, 232,  52,  93, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 99, 204,  24, 191, 137,  42, 181, 142, 251, 165, 128,  49,  11, 131, 202, 199
	.byte	 40,  80, 249, 203,  74,  17,  40, 183,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	157, 100, 172, 128,  39, 105, 102,  80, 208, 141,  29, 192,  83, 126,  47, 126
	.byte	 45, 216, 115, 153,  89, 102, 253, 185,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 26,  21, 142, 240, 234, 222, 176, 141, 119, 220, 186, 216, 246,  38, 209,  22
	.byte	 19,  79,  14, 229,   4, 190, 118, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11, 251, 231, 255,  96, 170,  49,   7, 120, 220, 196, 105, 125,  78, 144, 103
	.byte	167,  24,  55,  80, 190, 175, 181, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115,  51,  92,  70, 121,   7, 210,  33, 231, 255,  16,  68, 171, 118, 160,  64
	.byte	 53, 119, 104, 175, 150, 246,  24, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	231, 211,  21,  48,  65, 195,  78, 149, 152,  94,  86, 116, 242, 198, 174, 187
	.byte	 69,  74,  99, 162, 185, 147, 139, 172,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	229, 228,   3, 198, 191, 127, 225, 172,  23, 131, 233, 106,  62, 164, 144, 130
	.byte	163, 102,  55,  73, 126,  85, 212, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	190, 246, 134, 161, 108,  17, 128,  46, 254, 231,  88, 144,  47, 213,  80, 233
	.byte	136,  77,  72,  27, 157, 143, 210, 217,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  7, 238,  54,  62,  35,  43,   7,  50, 107, 230, 156,  23, 121,  44,  18,  12
	.byte	  2, 206, 102, 134,   6,   6,  37,  52,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	178, 133, 146, 162, 229, 126, 106, 219,  27, 182, 148, 241, 105, 215, 187, 153
	.byte	 13, 174,   0, 111, 152,  30,   5,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	251,  86, 227,  51,  52, 240, 140,  50,  52,  34, 118, 169,  32,  19,  26,  86
	.byte	106, 134,  18, 112, 254,  89, 182, 171,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111, 177,  38, 253, 119, 174, 202, 240, 171, 170, 237, 178,  50,  18,  40,  41
	.byte	120, 119,  68, 244, 251,  65, 131, 153,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	133,  40, 144,  99,  36,  95, 229, 245, 216, 146, 247, 180,  37,  53, 151, 239
	.byte	232, 111, 150,  31, 232,  91,  22, 218,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140, 121,  91,  68,  82,   9, 160, 147, 233, 248,  45, 235,   0,  94,  94, 193
	.byte	115, 235,  50, 141,  60, 228,  45, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11, 132, 178, 202, 229, 237,  62, 169, 210, 129, 161, 165, 211, 246, 128, 103
	.byte	200, 137,  84, 186, 127, 179, 123,  77,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	245,  27, 203, 242,  84,  31,   7,  48, 115, 235, 156,  95, 180,   4, 142, 153
	.byte	166, 165,  17, 247,  94, 215, 209,   9,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  6, 109, 249, 107, 141, 199, 104,  28, 176, 158, 254, 206, 190,  32, 253, 119
	.byte	195,  42, 226, 175,  95, 195,  83, 194,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 48,  29, 229, 154, 121, 110, 171, 106, 146,  58, 224, 171, 109,  54,  41,  97
	.byte	170,  12, 103, 240, 220,  15,  10, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248,  26, 215,   1,  80,  34, 133, 148,  58,  58, 203, 162, 216, 249,  84, 188
	.byte	130, 156, 150, 155, 126,  99,  34,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10, 239,  41,   0,   5, 100, 171,  51, 197,  70,  90, 107, 252, 144, 118, 223
	.byte	 20, 137, 108,  63, 231,  35,  89,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	190, 193, 171,  19,  68,   5,  38, 240, 128,   2, 231,   5, 146, 121,  62, 144
	.byte	 94, 211,  99, 226,  21, 225, 116, 227,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	197, 236, 197,   5,  77, 177,  68, 197, 243, 185,  71, 233,  57, 162,  25, 171
	.byte	144, 139, 122, 241, 195, 156, 111, 235,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11, 157,  32, 110, 184,  46,  39, 206,  64, 125, 145, 138, 101,  25, 251,  34
	.byte	 23, 255,  57,  95, 123, 116, 190, 144,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 12,  82, 227,  84,  22, 150, 211, 228,  33,  59, 183,  98,   2, 164,   1, 105
	.byte	201, 114, 222, 245, 185, 213,   5, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 40,  46, 206,  20, 203, 125, 169, 152, 129,  19,  98, 163,  94,  14, 185, 115
	.byte	156,   8, 188,  35, 245, 249,  71, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 81, 125, 155, 205, 204, 154,   8, 194,  42,  37,  33,  68, 151,  93, 217,  81
	.byte	110,  98, 207, 117, 174, 206, 152,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 18, 160, 198,  94,  41, 232, 209, 129, 211,   5, 103,  55, 181, 205,  43, 131
	.byte	 23, 221, 172, 156, 232, 154,  30, 250,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63, 211,  31, 150,  48, 114, 160,  27, 246, 183, 116, 118, 201, 194, 175, 243
	.byte	124,  96, 217, 222,  79, 191,  90, 225,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	221, 152, 167, 150, 131,  21, 246,  66, 165, 167, 142,  29,  31, 119,  52, 242
	.byte	  0, 138, 243, 244,  30, 186, 130, 188,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	217, 142, 230, 164, 176,  65, 119, 163,  14, 140, 180, 185,  29, 249, 131, 142
	.byte	107,  74, 201, 151, 183, 107, 251, 134,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	249, 219, 234, 100,  52, 219,  88, 179, 229, 189,  60, 163, 203,  78,  14,  46
	.byte	127,  46,   0,  77, 175, 243, 102,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	128,  19, 203, 157, 202, 171,  17, 119,  58,  11,  31,  89,  41, 123, 245,  41
	.byte	155, 142, 222,  77, 106,  12, 129, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247, 201, 182,   7, 251,  72, 197, 109, 171, 201, 149, 243, 114, 236, 230,  65
	.byte	 61,  67, 220,  55,  59,  91, 254,   4,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50, 209,  71, 242, 220, 253, 141,  94, 232, 212,  89, 195, 119, 119, 190, 188
	.byte	188, 203,  71, 232, 194, 226,   8, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	159, 154, 168, 139,  47, 137, 150, 178, 236, 234,  37,   6, 116,  31,  22,  35
	.byte	131,  85, 252,  39, 110,  36,  83,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	145,  36,  80,  34, 210, 149,  16, 105,  10,   1, 204, 100, 113, 121, 192,  91
	.byte	131, 131,  46, 136, 219, 206, 140, 219,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 39, 205,  14,  91,  80, 181, 253, 158, 217, 219, 243,  53, 214,  51, 123, 205
	.byte	 61,  93, 145, 252, 130,   9,  90, 144,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 52, 175, 210, 112, 219,  88,  34,  66, 167, 234, 179, 217, 216, 125, 193, 166
	.byte	228, 216, 194, 202, 139,  20, 139,  68,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  9,   1,  59, 200, 201, 102,  49, 184, 189, 159, 146,  30, 149,  49,  29, 230
	.byte	 36, 242, 196, 166,  45,  61, 133, 140,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169, 245, 188, 104, 143,  80, 210, 113,  37, 178,  71,  60,   8,  39,  57,  88
	.byte	 66, 164, 117, 235,  80, 100,  76,  53,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5,  87,  87, 131, 254, 203,  14, 236, 119,  29,  51,  25, 236, 184, 219, 193
	.byte	254, 196,  82, 249, 154,  35,  12, 225,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56, 245, 127,   3,  81,  96,  26, 111, 144,  16,  54, 159,  30,  75, 108, 162
	.byte	227, 252, 242,  44,  13,  28,   2, 209,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94, 132,  38, 252, 140,  93, 254, 209,   0,  76, 235,   3,  35, 183, 179, 154
	.byte	254, 245, 251, 211,  51,  88, 154, 242,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116,  94, 108, 158,  91, 200,  38, 134, 120,  45, 243, 131, 151, 150,  63,  32
	.byte	 32, 245, 247, 231, 137,  98,  35,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123, 149,  76, 119, 117,  19,  88, 149, 100, 146, 176,  61, 235, 118,  55, 219
	.byte	116,  43, 141, 251, 244,  93,  60,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11,  13,  95, 206, 192, 183, 200, 207,  99, 231,  41, 214,  51,  91,  56, 230
	.byte	114, 238, 165, 180, 230,  47,  17, 213,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172, 190, 160, 102, 217, 104,   3,  40, 234, 246, 171,  48,  71,  27,  54,  69
	.byte	 44, 122, 217, 230,  70,  58,  47,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126, 190, 100, 212, 216, 186, 184, 144,  85,   7, 116,  23, 180, 227, 106,  63
	.byte	214, 238,  83, 105,  81, 107,  25,  11,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	207,  33,  83,  27, 138, 222,  85, 155,   1,  33, 104,  71, 211, 179, 123,   5
	.byte	101, 104,  82,  68, 229,  78,   0,  52,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136,  32,  44, 145,  22,  33, 210,  96, 198, 100, 163, 198,  83, 158, 208, 115
	.byte	144, 131, 133, 176,  72,  60,  99, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	208,  64, 242, 202, 138,  50,  45, 178, 245, 119, 139, 245, 105, 222, 143, 226
	.byte	 46, 164, 218,  23, 189, 147, 115,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 74,  59,  46,  48,  90, 252,  41, 202, 178,  19, 233,   3, 165, 208, 186,  10
	.byte	124, 207, 209, 177,  74, 248, 177, 190,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	231, 239, 205,  69, 217, 154, 214, 227, 125,  10, 237, 199,  13,  16, 106, 119
	.byte	179, 233,  13,  89,  27, 119,  23, 126,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 28, 225, 111, 161,  61,  30,   5, 156, 212, 226,  61, 206, 104, 155,  47,  53
	.byte	106, 167, 159, 143,  65, 141, 241, 107,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	205, 124,  53,  38, 169,  60, 168,   6, 137, 218, 142,  72, 116,  13, 156,  75
	.byte	 90, 187, 175,  96, 171, 101,  97, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 81, 197,  86, 220,  54, 173,  83, 244,  61, 150, 219, 207,   2,  37, 235, 114
	.byte	241,  27, 110,  84,  34,   9, 206, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	191, 246, 101,   2,  81, 169,  14, 218,  79,  81, 188, 192, 126,  26, 110,  56
	.byte	 36, 240, 175, 200,  65,  70, 109, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 75, 188, 145, 198,  31,  82,  55,   5, 115, 165, 184, 165,   6, 166,  60,  13
	.byte	118,  51,  84,  79, 154,  31,   7, 100,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	232, 162,  94,  66,  13,  56,   6, 114, 250,  91, 107, 224, 128, 136,  40, 212
	.byte	 95,  84, 247,   8,  37, 123,  38,  48,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116, 215,  87, 220,  52, 120,  49, 116, 241, 204, 119, 123, 189, 249, 218, 191
	.byte	 97, 118, 211,  18, 158, 189,  80, 146,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 30, 245,  93,  15, 120,  51, 113, 202, 144,  40, 159, 154, 130, 254, 242, 245
	.byte	 61, 250,  75,  30, 165,  10, 138,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	129,  83, 217, 157,   4, 246, 144,  63,  98,  92, 105, 217, 139,  85,  71,   9
	.byte	 11,  95, 225, 164, 199, 199,  54, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	197, 112, 244, 155, 195,  25,  44, 148, 129, 226,  61, 233, 160,  31, 161,  46
	.byte	107, 233, 114, 152,   1, 114, 155,  77,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 60,   7, 235, 129, 116, 231,  97, 181, 126, 136,  94,  84, 227, 169,   5, 218
	.byte	138,  64, 224, 217, 237, 196,  77, 204,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234, 171, 164, 142, 129, 130, 175,   3, 229, 231,   0,  28, 222, 254, 167, 232
	.byte	243, 135, 110,  41,   7, 226, 106, 148,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86, 223,  86, 144,  14,  42, 207, 204, 160, 230, 155,  78,  94,  45,  58, 137
	.byte	217, 231,  35,  82, 142, 196,  80, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 23,  95, 188, 172, 225, 115, 143,  94,  65, 222, 139,  74,  29, 148, 145, 137
	.byte	155,  10,  35, 123,  10, 137, 142, 187,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235,  93, 198,  31,   4,  44, 223, 127, 227, 249,  56,  28,  93, 205, 209, 188
	.byte	114, 228, 111, 186, 134,  60,  92, 135,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54,  81, 221, 192,  65,  16, 252,   3,  43, 245, 107, 175,  78, 229,  42,  40
	.byte	  0, 140,  24,  71, 233, 204, 206,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	177, 205, 165,  57, 101, 185,  43, 207, 175,  65, 113, 228, 217, 159, 220,   1
	.byte	192, 247, 126, 150, 183,  99, 198, 201,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16,  60, 154, 186, 115,  34,  22,  65, 148, 127, 227, 179, 241,  93,  74, 129
	.byte	115, 133, 142,  26,  59, 218,  67, 201,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	205,  93,  34, 231, 208, 236,  64,  32,   8, 193, 142,  41, 170, 218, 246, 114
	.byte	255,  74,  14,  83, 168,  18,   2,  44,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227, 250, 198, 173,  98, 250,  36, 181,   1,  55,  34, 156, 135,  78, 163,  80
	.byte	 68, 224, 202, 102,   1,  72,  32,  55,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216,  57, 158,  94,  58, 255, 198,  95,  42, 182,  82, 149, 137,  32,  98,  19
	.byte	 51, 163,   2, 155, 136,  34,  91, 139,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 15,  95, 176, 180, 108,  19,  38, 227, 104, 173, 210,  41, 254, 126, 122,   7
	.byte	 14, 150,   4, 194, 106, 204,  77, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	249, 150, 202, 158,  31, 119, 145,  79, 110, 151, 173, 101, 146,  60,  97, 160
	.byte	 18,  52,  55,  87, 250,  28,   0,  98,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56, 252, 138, 119,  70,  91,  84,  30, 128, 199, 159, 119,  73,  58,  11, 197
	.byte	 40,  77, 190, 125,  10, 157, 162, 239,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	133, 155,  73,  39,  23, 201, 242,  52, 245,  52,  70,  50,  22, 123,  56, 221
	.byte	 40,   2,  21,   2, 191, 108,  58, 163,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236, 130,  60,  93,  54, 216, 179,  62, 144,  61, 200, 176, 143, 159, 139,  20
	.byte	 91,  66, 229,  66,  13, 164, 130, 143,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	250, 127, 146, 115,  43, 249,   8, 187, 193, 158,  53, 210, 162,  77, 237, 119
	.byte	141,  15, 117, 108, 142, 191, 231, 227,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118,  85, 121, 170, 223, 120, 209, 218,  91, 163, 213,   9,  89, 129, 102,  56
	.byte	 37, 209, 191,  91, 162, 184,  55, 210,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140, 182,  45, 160, 160,  62, 147,  66,  91, 189, 195,  39, 157, 116,  25, 183
	.byte	  5,  27, 174, 198, 187, 113,   0, 213,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 23, 163,  74, 243, 104, 231,  96, 123, 112, 187, 224, 164,  81, 220,  53, 193
	.byte	253,  50,  95, 145,  63,  42, 123,  52,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82, 179,  43, 159, 158, 131, 227,   1, 192, 197,  33,  72,  72,  87, 246,   2
	.byte	159, 243, 132, 134,  89, 247,  90, 218,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113,  24,   1, 195, 119,  94,  40, 217,  90,  20,  79, 168, 121, 243, 229, 103
	.byte	  7,  77, 181,  43, 190, 212, 155, 121,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143, 203,  12, 144, 254,  59, 112, 183, 187, 153, 106,  31, 104, 137,  20, 164
	.byte	147,  91,  85, 182,  80, 106, 167, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 90, 163, 124, 245,   2, 196,  53, 231, 171,  92, 253,  89,  59,  74, 227, 193
	.byte	 24, 146, 154, 194, 105, 163,  91,   9,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 24, 191,  67,  30,   3,  37, 235, 224, 207,  75,  32,  46,  75, 182, 252, 246
	.byte	  8, 194, 226, 160,  31,  97, 170, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	106,  29, 124,  87, 243, 206, 155, 240, 138, 117,   7, 143,  82,  90,  29,  30
	.byte	163, 252, 100,  58, 154,  41, 122, 237,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	220,  27, 156, 193, 174, 160,  77, 134, 121, 152,  45, 194,  47,  30, 219,  33
	.byte	146, 200,  10,  79,  63, 144, 120, 251,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 64,  53,  52,  24,  41, 127,  30, 118, 187,  90, 200,  15,  86,  17, 144, 238
	.byte	195,  55, 189, 246,  64, 237, 132, 253,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172, 197, 250, 127, 108, 245,   8,  59, 126,  76, 217, 111, 178,  43, 149,  74
	.byte	229,  88,  34, 160,  74,  51, 152, 252,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 48, 104, 189,  41,   8, 220, 114,  69,  99,  49, 165, 211,  37,  46,  82,  16
	.byte	 53,  55, 253, 215,  46, 120, 187, 215,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	195, 196,  34, 231, 156,  94, 140, 155, 121,  18, 240, 178, 255, 192, 139, 192
	.byte	 10,  10,  80,  58,   7,  65, 104, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131,  43,  27, 173,  74,  81,  45,  35, 179, 146,  23, 149,  18, 169,   3,  11
	.byte	 49, 159, 151, 157,   1,  87,   7, 251,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	168,  76,  17,  21, 138, 200,  92,  92, 183,  46, 120, 253,  60,  91,  16, 134
	.byte	 29, 194, 181,  79, 186,  32, 171, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	128, 183, 119,  51,  54,  25,  73,  94,  56, 195,  54, 101, 221,  53, 196,  18
	.byte	231, 197, 194, 221, 177, 104, 136, 165,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 44, 199, 196, 156, 119,   8,  64, 188,  11,  47,  15, 124, 234, 193, 230, 241
	.byte	134,  37,  77,  82, 218, 204, 156,  14,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	128, 146, 220,   3,  73, 129,  96, 191,  25,  51,  61, 209, 231, 216,   1, 221
	.byte	  0,  47, 107,  75, 217, 179, 222,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	140, 132,  48,  43,  66, 125, 168, 130,  72, 209, 245,  75, 106, 162, 178,  60
	.byte	  2, 220, 149, 219,  72, 153, 203,  25,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 20, 217, 182, 196,  53, 228,  66,  78, 131, 201,  33, 203, 181,  19, 144,  71
	.byte	225,  37, 176, 246, 167, 101, 211, 117,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	134, 212, 164, 146, 176, 133,   7, 239, 148, 151, 181,  22,   7, 120, 237, 241
	.byte	 88, 123, 197, 240, 235,  87,  70,  17,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	225,  36,  66, 251, 137, 107,   7, 181,  29, 103, 223, 254, 130, 243, 236,  63
	.byte	 47,  40, 129, 224, 209, 157, 202, 195,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	146,  73, 241, 113, 219, 244, 129, 224,  92, 243,  38, 216,  64, 221, 217,  59
	.byte	224,   6, 210, 109, 135, 226, 242, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116,  52, 152, 253, 129, 123, 149,   8,  69,  39, 138, 197,  16,  88, 165, 226
	.byte	163, 251, 159, 237, 247, 238, 205, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	144,  51, 100, 236, 167, 142, 139, 131,  31,  59, 188,  48,  20, 148,   4, 242
	.byte	134, 139,   0,  40, 158,  12, 139, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	134, 154, 210,  12,   3, 210, 109,  92, 244, 222, 149, 100,   4,  47,  31, 109
	.byte	248, 254, 189, 176, 241, 101,  97, 133,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	126, 207,  33, 118, 194,  83, 148,  18,  87,  89, 135, 216,  54, 182,  34,  77
	.byte	223, 226,  66, 220,  81,  94,  41, 235,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	112, 121, 223, 141, 156,  52,  27,  51, 173, 222, 128, 165,  23, 150, 179, 217
	.byte	 86,  98, 119,  44,  85,  78, 113,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	177, 144,  63,  71,   1,  35,  78, 204, 191, 225, 181,  92, 201, 181,  74,  10
	.byte	 32, 137,  98, 203, 139, 211, 163,  38,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	142, 128, 167, 201,  33, 152,  70,  92,  68, 234, 103, 241, 218,   3,  92, 218
	.byte	 38,  91, 121,  54,  42, 113, 108, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 17,  46, 182,  46, 250, 149,  59, 106,  28, 166,  78, 138,  67, 188, 206,  96
	.byte	192, 184, 220,  60,  74,  38,  37,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248, 165, 214, 214,  86, 132, 164,  85, 156, 191,  94, 103, 201, 240,  70, 223
	.byte	255, 239,  17, 202,  40, 230, 239, 239,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 34, 219,  58, 172,  51, 137, 198,  86, 183,  26, 166, 125, 103, 135, 110,  67
	.byte	 78,  51,  73, 113, 226,  80, 235,  85,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102, 192,  69, 110, 122, 235, 237,  85, 142,  74, 213,  19, 132,  39, 237, 230
	.byte	132, 251, 249,  96, 218,  78, 147,   8,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	225, 214,   1,  35, 120, 211, 209, 153, 195, 187, 200, 173, 139, 136, 237,  38
	.byte	 66, 142,   7,  45, 245,  66,  78,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	215, 103, 191, 109,  88, 111,  66,  83,  57, 177, 103,  57,  35, 136, 136,  77
	.byte	231,  35,  17, 155, 146, 191, 122,  31,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 83,  85, 135, 204, 105, 255,  19,   4,   5, 220, 123,  63,  28,  73, 117, 195
	.byte	126, 206, 219,  86,  36, 100, 192, 179,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	224, 140, 208, 130,  44, 103, 160, 225, 153,  57,  98, 133, 188,  82,  52,  40
	.byte	 27,  59,   4, 165, 108, 117,  62,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 78, 251,  69, 138, 233, 158, 188, 173, 226,  54,  82, 114, 174,  82, 202,  92
	.byte	185, 202,  25, 197,  38,  21,  28, 254,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	246, 122, 128,  61, 161, 166, 135, 207,  14, 106,  49, 251, 227, 200, 153, 106
	.byte	201, 213, 164,  78, 158,  39, 251, 174,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	237,   6, 200, 246,  63, 137, 121, 123,   5, 230,  50, 254, 112, 158, 106,  64
	.byte	165,  62, 190, 224, 135, 127, 171, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 22, 195, 174, 217, 229, 233, 135, 226, 101, 180, 200, 127,  14, 164, 166, 100
	.byte	 85, 242, 135, 125,  71,  40,  44, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	231,  67, 205,  22, 188,  81, 160, 188, 194, 196,  12, 139, 142, 198, 104,  10
	.byte	190,  21,  22,   5, 246,  52, 254, 143,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	224, 168, 150, 135, 167, 106,  43,  97, 171,  75,   1, 212, 231,  64, 158,  13
	.byte	 55, 247, 218,  35,  60, 147,  86, 220,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202,  91, 244, 110,  79, 208, 237, 185, 154,  97,  49,   4, 120, 131, 117, 210
	.byte	168,   3,  76, 158, 212, 130,  78, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 58, 188, 158, 194,  56, 237,  15,  78, 233, 139, 194, 170, 244, 108, 185, 245
	.byte	168, 247, 249, 190, 111,  36,  74,  39,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147,  75,  88,  97,  40, 192,  94, 117,  57,  71,  98, 105,  87, 138, 175,   0
	.byte	178, 240,  51, 155,   2,   2, 150, 101,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	244,   4, 240, 119, 193, 199,  55, 170, 214,  27,  65, 180, 111,  91,  55, 190
	.byte	179,  43, 253, 207, 213, 253, 134,  87,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	135, 180, 202, 197, 101, 247, 157, 117, 208, 116, 129, 170, 152,  58, 152,  41
	.byte	 37, 164, 171, 187,  79,  73, 135, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	109,  48, 238,  33,  18, 241, 246, 112, 152,  20,  73, 119, 169, 170,  74, 159
	.byte	138, 184, 107, 130, 244, 192, 126, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 91,  96, 199, 126, 143,  58, 135, 221,   0,  15, 175,  37, 192, 149, 155, 177
	.byte	 56,  84, 236,  57, 105, 107, 242, 104,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 44,  91,  27, 156,  60, 141,  89,  32, 143, 215,  23,  29,  84, 131, 170, 152
	.byte	 41, 148,  53, 147, 227, 221, 103, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82, 225,  86, 201, 166, 201, 192, 178,  67, 113,  81, 153, 148,  53, 108, 130
	.byte	167,  73, 212, 119, 103, 136,  61,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	159, 254,  57, 115,  91, 173, 228,  19, 164,  80, 154, 175,  80, 223,  48, 151
	.byte	 80, 248, 246,  43,  38, 106, 164, 159,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 75,   4, 204, 161, 218, 111, 163, 191,  45, 162, 162, 125,  32,  15, 131, 102
	.byte	219,  21,  81, 236, 168,   6,  46,  14,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	100, 254, 115, 174,  34, 118,  53,  36, 193, 214,  63, 130, 233,  33,  24,  37
	.byte	 56, 199, 189,  30,  84, 159, 158,  42,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	144,  60, 190, 100,  83, 212, 151,  23,  68, 168,  65, 180, 116,  27, 136, 255
	.byte	239,  52, 136, 148, 237, 129,  73, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82,  96, 147, 217,  53, 200, 120,  92,  36,   0,   3,   2,   6, 134,  67,  20
	.byte	164,  63, 245, 228,  60,  73, 161, 154,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	250,  39, 252,  29,  30,  55, 249, 207, 120, 220,  76,  74,  69,  68, 235,  29
	.byte	 80, 184,  14,  23, 139,  79, 168, 179,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	184,  50,  85, 146, 190,  77, 227, 126, 246,  87, 144, 205, 125,  22, 108, 216
	.byte	 28, 105, 160,  17, 255,  92,  34, 144,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147,  72,  35,  90, 190, 104, 129, 152, 198, 159, 111, 120, 100,  14, 182,  81
	.byte	157, 129, 168,  65,  23, 175,  87, 133,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	176, 156, 227,  34, 193, 222, 226, 178, 225,  17, 163,  15, 125, 107, 217,  90
	.byte	168,  28,  16,  33, 230,   7,  19, 159,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	110, 177, 183, 187, 254,  14, 104, 100,  62,  15, 146, 206,  78,   0, 166, 111
	.byte	223,  41, 143,  18, 163, 147,  65, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16,  25, 188, 253,  19, 196, 226,  24,  78, 108, 192, 205,  79, 182,   8, 232
	.byte	 75, 215,  52,  57, 189,  45,  72,  72,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	142, 135, 190, 186,   3, 137, 196, 222,  94,  76,  56, 163, 127,  10, 163, 229
	.byte	 44,  67,  61, 215, 157, 245,  77, 214,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234,   9, 254, 197, 189, 155, 115,  24, 188, 135, 237, 215, 100, 186,  58, 249
	.byte	109, 127,  53, 199, 247,  15,  98, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	224, 223, 177,  53,  52,  53, 114, 156, 232,  87,  82, 162, 248, 105,   1, 147
	.byte	194, 106, 226, 250, 167,  57, 241, 215,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 83,  19,  30,  95, 117,  74,  55, 225, 123, 124,  78,   6, 117, 188, 251,  48
	.byte	167,  17, 112, 191,  12,  48, 191,  22,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	249, 170, 127,  81, 193,  89, 139,  93, 237, 159, 125,  80,  82,  43, 189,  19
	.byte	227, 148, 240,  31, 237,  93, 197,  60,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	213,  42, 133, 175, 165, 126, 240, 217,  57, 204,  85, 157, 167, 211, 125, 175
	.byte	250,  52,  60,  26, 113, 179, 107,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 66, 166, 226, 247, 162, 119, 173,  77,  40, 111,  56, 170, 204, 155, 173, 160
	.byte	100,  81, 227, 156,  77, 216,  13,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 83,   4, 222, 220, 113, 193, 244, 159, 127, 214,  46,  68, 145,  25,  79, 188
	.byte	 29, 184,   8,  59,  90, 214,   1, 207,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102, 110,  52,  96,  38, 176, 201, 150, 166, 255,  17, 198,  32, 165,  92,  11
	.byte	 99, 100, 203, 240, 233,  16, 152, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	239, 215,   5,  67, 166, 245, 220,  13,  44,   4, 198, 172, 144,  86, 111, 253
	.byte	197, 191, 247, 225,  83, 213, 130, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	193,  40,  41,  78,  35,  82,  30, 149, 229,  19, 115,  47, 242, 180,  29,   2
	.byte	 78,  68,  16, 120, 248,  44,  86, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	192,  67,  56, 178, 108,  79,  46, 105,  39,  32, 129, 173, 120,   6, 122, 176
	.byte	173, 240, 171,  87,  28, 135,  17, 109,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,  19, 240,  50, 138, 240, 183, 174, 194, 137, 132,  80, 221, 135, 137,  44
	.byte	170,  32, 228, 215,  37,  42, 210,  44,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	243,  45,  31, 163,  90, 120,  36, 125, 231,  83,  14, 167,  26, 197,  65, 103
	.byte	 43,  47, 125, 119,   1, 255, 107,   8,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	203, 125,  88, 251, 187, 137, 254, 132, 103, 244, 146, 207, 188, 192, 125, 216
	.byte	106, 171, 187, 205, 146,  75,  60, 149,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	165, 207,  33,  68, 255,  13, 140, 180, 242,  16,  42,  62, 198, 216, 170, 195
	.byte	227, 102, 246,  51,  79, 247,  23,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 41, 139, 232,  45,   6, 121,  24, 127,  40, 182, 217,  60,  35, 162, 228,  60
	.byte	241, 225, 245, 182, 143, 101,  45,  25,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 83, 154, 122,  85, 219,  56, 174, 134,  56,  83, 148, 205, 168,  37,  34,  83
	.byte	111, 109,  47, 206,   2, 160,  79,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	159,  75, 129, 221, 144,  21, 146, 161,  39, 186,  41,  69,  10,  80, 108,  82
	.byte	113, 157, 155, 227, 209,  72, 151, 180,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170,  65, 166, 210,  30, 230, 160, 109,  48,  74, 187,  41, 185,  70, 248,   1
	.byte	 37,  30, 136, 161,   9, 176,  12, 228,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113,  70, 155, 190,  94, 224, 105, 169, 115, 136, 184,  67, 102, 231, 205,  13
	.byte	198,  30, 188,  20, 196, 233, 150,  19,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43, 112,  23, 108, 201, 251, 238, 153,  90,  68, 176, 242, 134, 242, 167,  41
	.byte	 76, 139, 228, 129, 220,  51, 231,  72,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	128,  16, 221,  56, 229,  40, 140, 157, 209,  14, 133, 118, 116, 191,  73, 144
	.byte	 90, 129, 101,  59, 166,  93,  79,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 86,  52, 174,  26, 174, 214,  28, 250, 128,  11, 195,  46, 121,   1, 214, 193
	.byte	148, 215,  33, 216, 219, 248, 118, 253,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149, 146,  97,  49,  49, 227,  52, 190,  72, 124,  64, 240, 202,  87, 136, 182
	.byte	 23,   4, 185, 196, 100, 128, 154,  27,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11, 240, 107, 143, 179, 188, 146, 212, 142,  28, 195,  92, 205, 203, 181,  68
	.byte	 19,  16, 153, 218, 216, 112, 155,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	158,  18, 120,  87,  97, 115, 200, 133, 223, 134,  88, 203, 166, 132,  27, 195
	.byte	 71,  41, 228, 172,  61, 142,  33,   8,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	200,  78, 252, 240,  80,  81, 151, 101,  99,  66,   0, 191, 226, 190, 143, 181
	.byte	 45, 120, 219, 198, 192,  65,  26, 182,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56,  12, 222, 103, 149, 118, 148, 157,  23, 149, 178, 189,  75,  86,  26, 134
	.byte	116, 216, 164, 202, 168, 131, 212, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	219, 123, 154, 117,  33, 108,  57,  94,  72,  93, 125,  29, 206,  74, 237, 169
	.byte	 51,   7, 213, 148, 255, 162, 194, 144,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234, 170,  67,  28,  14, 201,  41, 198, 186, 249,  35, 212,  86, 194,  76, 215
	.byte	 67, 200, 162, 139,  40,  19, 201, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	119, 112, 115, 118,  12, 183, 222,  45,  27, 212,  77, 201, 164, 163,  76,  50
	.byte	 63, 141, 186, 108, 229, 115, 255,  22,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116,  35,  82, 202, 141, 170, 149,  27, 163, 209,  31, 183, 168,  14,   6,  50
	.byte	217, 194, 112,  63, 112, 100, 177,  82,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	254,  21, 213,  11, 218,  53, 242, 188, 232, 185, 196, 171, 245,  24, 162, 196
	.byte	  7, 192,  53, 171, 143,  88, 170,  29,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149,  78, 100,  75, 117, 115, 239,  63, 140,  34, 255, 215, 131, 102,  70, 108
	.byte	225, 180, 158,  78, 138, 143,   9, 173,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	177,  76, 165,  50,  84, 201, 230,  73, 200, 121, 128, 169,  85,  41, 228, 240
	.byte	112,  89, 210,  16,  48, 141,   8, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	177, 233, 119, 132, 224,  59,   1, 249, 197, 202,  37, 237, 210, 212, 255, 240
	.byte	206, 100, 254,  67, 194,  35, 115, 185,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 33,  94, 234, 137, 165, 231, 173, 106,  44, 244, 139, 180,  60, 151, 107, 115
	.byte	187, 187, 215, 250, 206,  10,  60, 196,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 67, 228, 251, 240,  81,  39, 217,  91, 205,  19,  87, 159, 206, 123, 112, 138
	.byte	152, 152,  80, 176, 253,  96, 124,  71,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	187,  90,  46,  69,  25,  37, 169,  27,  18, 243,  80, 198,  23,  98,  20, 237
	.byte	221,  80, 113, 180, 210, 189, 129, 137,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147, 164, 154, 245, 115, 102, 246, 113,  32, 202, 232, 255, 165, 181, 137, 134
	.byte	195, 166,  75,  12,  83, 191,  65, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	166,  15, 237, 190, 114, 160, 252,  88,  12, 101,  50, 246, 178, 200, 170, 161
	.byte	144,  94, 195, 203, 121, 150, 147,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	163, 221,  35, 186,  18, 107, 160,  97,  63,  36, 154,  98, 252,  25, 138, 226
	.byte	218, 230, 130,  71, 179, 106,  52,  66,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	133,  32,  78,  56, 210, 123,  27, 246, 130,  80, 203,  76, 109, 210, 250, 203
	.byte	144, 153, 150,  48, 214,  99, 170, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	106, 157,  39, 226, 164, 242, 249,  21, 222, 204, 167, 101, 127,  69, 196, 138
	.byte	193, 211,  81, 185, 179, 163, 144, 143,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	109, 148, 178,  82, 173,  46, 187, 227,  94, 160, 177,  12, 114, 210,  65, 145
	.byte	197,  74, 127, 134,  60, 177,  37,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	160, 148, 252, 200, 234, 181,  97,  93, 156,  32,  48, 128, 174, 153, 208,  66
	.byte	 56,  49, 122, 103, 102, 166, 102, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 11,  29, 228,  17, 166, 166, 210,  59,  93,  97,  87, 207,  58,  52, 219, 217
	.byte	 86,  44, 190,  74, 105, 236, 248, 243,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,  26, 115,  34,  47,  76,  44, 237,  40,  76, 254,  65,  34,  77, 121,   0
	.byte	201, 212, 123,  51,  40, 192, 230, 124,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 20, 136,  53, 221, 160,   0,  86,  18, 101, 224, 227,  55,  66, 249, 142, 249
	.byte	 90,  41, 208, 200, 133,  78, 218,  17,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 21, 146, 192, 142,   6,  97,   8, 204,  72, 234, 149,  75, 246, 183, 123,  51
	.byte	195, 134, 159, 226,   0, 193, 156, 246,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 48,   8, 145, 130,  95, 121, 247,  92, 152,  11, 225,  17,  75,  78,  51,  15
	.byte	220,  75,  81,  87,  94,  55, 199,  70,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 17, 216, 217,  12, 198, 108, 218,  13,  85,  46,  28, 114,  30,  47, 114, 227
	.byte	165, 207, 233,   7,  72, 144, 115,  51,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  1, 147,  78, 238, 193, 121,   4,  66,  70, 152, 212,  87, 138, 168,  80, 196
	.byte	241, 113, 146, 177, 192,  60,  45, 254,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  6, 241, 146, 191, 243,   6,  50,  19, 255,  61, 198, 117, 251, 216, 136, 141
	.byte	194, 150, 169, 126, 127,  29,  88, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	237, 176, 239, 125,  69,  49,  46,  82,  51,  23,  52,  85,  38, 129, 122, 128
	.byte	165, 145, 183,  84, 228, 115, 243, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	176, 121,  19, 213,  37, 106, 188, 128,  39, 172,   2, 241, 135,  90, 157, 115
	.byte	100,   2, 139, 143, 153,  64, 235,  97,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235,  23,  24, 155, 191, 117, 142,  20,  57,  23, 174, 224,  43,  54, 192, 215
	.byte	  4, 240, 172,  43, 197,  70,   7, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 69,  86,  30, 214,  31,  58, 231, 130,  96, 231, 239, 231, 203, 192,   1,  64
	.byte	  2, 170,  90, 211,  54,   9,  41, 187,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 64, 214, 226, 137,  30, 107, 196,  24,  92,  73,  64,  20, 218,  13, 239, 186
	.byte	199, 189,  78, 107, 255, 156, 218,  22,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 96, 226,  67,  83, 120,  82, 227, 141,  41, 191, 191, 190,  60,  23,  21, 193
	.byte	125,  38, 100, 152, 168,  29, 119,  32,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	254, 162,  62, 211, 212, 110, 125, 213, 186, 182, 249, 103,   7,  22,  22, 226
	.byte	149, 107,  66, 202,  94, 144, 144, 159,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 57, 103, 183,  85, 188,  51,  78, 239,  83,   4, 213, 104,  77, 194,  82,  30
	.byte	163,  20,   5, 115, 232,  37, 208, 187,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116, 247,  39,  80, 156, 122, 204, 112, 165, 117, 157,  13, 122,  99, 179,  21
	.byte	244, 186, 238, 252,  46,   8, 237, 116,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  6, 113,  27,  11, 103,   6, 172, 104,  56, 232, 183,  11, 129, 228, 248, 252
	.byte	136, 108,  89,  17, 139,  93, 207, 245,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	128, 199, 252,  65, 107, 150, 121, 133,  70,  41, 254,  70, 241, 119, 135,  56
	.byte	  7, 195,  57,  27, 173,  47, 100, 100,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 76,  48,  60,  43, 134,  64,  75, 243, 112,  23, 109,  77,  22,  18, 103,  28
	.byte	 50, 211, 102, 129, 123, 179, 179,  56,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	205, 113, 247, 177, 177,  37,  82,  53, 190, 230, 219, 181,  88, 223, 176, 119
	.byte	153, 149, 179, 195, 171,  87,   3,  25,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	213, 221,  11, 252, 196, 105, 103,  66, 245, 115,  40,  69, 121, 147,  52, 235
	.byte	169, 107, 126,  56,  52,  78, 103, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 38, 101, 161, 170,  73, 175, 209,  23,   2,  11, 160,  71, 126,  39, 152, 231
	.byte	237,  27, 125,  71, 169,  39, 149,  34,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 82, 229,  84, 254,  22, 165,  86,  43,   7,  78, 169, 183,  14, 121,  61,  71
	.byte	 36, 157, 144, 123, 107, 240, 228, 102,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175,  62, 172,  66,  58, 115, 236,  17, 117,  81, 216,  62, 206, 145, 218,  91
	.byte	227,  70, 233, 181,  21,  96,  51, 159,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	155, 237, 173,  37, 236,  56, 113, 251, 207, 217,  97, 195, 197, 153, 202, 200
	.byte	226, 134, 115, 120,  84, 158, 209, 233,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36, 158,  65, 213, 239,  51, 247, 186,  93, 123,  91, 252,  18, 209,  20, 157
	.byte	240, 196,  17,  80,  52,   8, 208,  51,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	217, 173,  28,  96,  55,  80,  89, 115,  97,  23, 231, 124, 249, 238,   9, 156
	.byte	247, 103, 212, 160, 183, 137, 216, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	108,  35, 164, 191, 227,  56, 112,  71, 245,  58,  76, 159, 209, 194,  60, 199
	.byte	 65,   0,  22, 177, 217, 229,  94, 143,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	120, 220, 186, 147,  49, 193, 123, 102, 173, 154, 113, 171,  70,   8, 251, 215
	.byte	253, 204,  30, 124, 119, 104, 186, 135,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 61, 219,  22, 198,  23, 180,   2, 219, 211, 168, 216,  90,  42, 102,  92, 137
	.byte	163,   2, 134, 132, 209,  75, 239, 121,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153, 218, 195,  90, 238,  97,  20, 130, 170, 165, 140, 130,  76, 168, 255,  87
	.byte	230,  78,  87, 132,  58,  88, 119, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54,  26, 228, 183, 212,  45,  24,   2, 148, 245,  60, 115,  52,  61,  73,  23
	.byte	 43, 119, 145,  90,  37, 210, 187,  24,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	108, 177,  71, 249, 181,   3, 190, 174,  15,  98, 224, 188,  29, 176, 149, 240
	.byte	117,  21,  62, 200, 228,   8, 172,  19,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98, 250,  67,  42, 200,   6, 224,  24, 249, 106,  12, 166,  16,  43, 106, 218
	.byte	 32,   5,  41, 120, 205, 254, 238, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 19, 253, 129, 178,  53, 173, 204,  32, 118, 217,  95, 116, 106,  17, 179, 189
	.byte	160, 110, 102,  95,  59,  92, 124, 161,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	128,  54,  93, 118,  25,  58, 183,  78, 147, 146, 151,  55, 131, 250,  10,  13
	.byte	 31,  42, 242,  95, 148, 220, 137, 202,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	187, 196, 167, 160,  27,  44, 135,  53, 246, 103, 140, 215,  12, 179, 224,   4
	.byte	129, 136,  12, 160,  20, 190,  69,  16,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	201, 166,  21, 255,  16, 181, 111,  51, 118, 179, 185, 101, 103,  67, 134,  84
	.byte	240, 205, 107, 122, 157, 201,  15,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235, 109,  48, 126, 186, 206,  63,  95,  25,  13,  55,   8, 189, 225,  94, 252
	.byte	 45,  22, 183, 110, 107, 100, 254, 100,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	139,  28, 241, 214, 250,  74,  64, 207,  99, 179, 190,  41, 197,  75, 120, 170
	.byte	110, 210,  70, 173,  22, 155,  95, 108,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  2, 155, 173, 240, 135,  62, 120, 132, 231,  45, 226, 244, 139,  34, 161, 210
	.byte	117,  54, 249,  38, 139, 137, 249, 209,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0,  35,  80,  31, 163, 218, 124, 216,   0, 187, 125, 130,  10,  38, 236, 158
	.byte	184, 162,  10, 186, 179, 235, 220, 189,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185, 140,  89, 200, 132, 218, 218, 201, 226, 162,  32, 238,  98, 187, 195,  14
	.byte	124, 184,  28, 152, 211,  74, 249, 165,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131,  46,  17, 206, 129, 112, 151, 110, 181, 102,  87, 230, 238, 212, 103, 109
	.byte	 91, 215,  58,  15,  75, 112, 116,  19,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  8, 170,  84,  87, 194, 186, 146,  33, 123, 145,  72,  90,  94, 129,  20, 169
	.byte	 20,  59,  76, 248, 184, 220,  29, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	226, 145, 166, 244, 200, 248, 154,  94, 125,  41,  15, 239, 252,  76, 246, 236
	.byte	 58,   2,  62, 154, 147,  97,  20, 253,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	200,  85, 140,  46, 203, 136,  21, 191, 128, 244,  69, 137,  83, 232,  55, 152
	.byte	 68,  92,  72, 247, 197,  56,  59, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115, 164, 112, 168,  24,  32,  17,  57, 216,  92,  66, 103, 238,  70, 237, 132
	.byte	 32, 145,  62, 245,  83, 136,  72, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  7,  63, 216, 118, 185,  95, 112, 196, 230,  66,   6, 176,  21,   3, 224, 169
	.byte	178, 213, 179, 109,  75,   6, 140, 179,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	149,  33, 136, 172,  52, 195,  96, 240, 201, 160, 253,  26,  29, 177,  87, 199
	.byte	 62, 195, 218, 179, 206, 239, 244,  96,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 180, 145,  94,  22,  23, 236,  59,  92,  57, 167,  58,  57,  24, 138, 178
	.byte	180, 154, 155, 226,  96,   1,  29, 142,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	105, 139, 176, 248, 249,  57,  29, 236, 245, 185, 214, 124,  73, 149, 254, 127
	.byte	153, 211, 221, 117,  72,  81,  42,  75,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16,   2,  33, 178,  22, 234,  49,   2,  87,  49, 232, 238, 168,  94, 160, 207
	.byte	153,  41, 234, 114,  24, 225,  94, 235,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 45, 148, 189, 127, 127, 173, 250, 145,  40,  44, 169,  57, 228, 229, 250,  59
	.byte	 42, 112, 221, 122, 102, 204,  66, 172,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	249, 147, 186,   2, 158, 232, 105, 125,  83,  59, 180, 144,  53, 102, 214,  11
	.byte	238, 245, 207,  28,  10,  57,  58, 243,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 19,  10,  29,  28, 176,  66,  71,  35, 233, 185, 129,  98, 193, 113, 212, 171
	.byte	231,  62,  81, 206, 254, 162, 164, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 31,  10,  13, 173,  97,  12,  40, 241, 168, 154, 179, 242, 104,  58,  14, 237
	.byte	143, 249, 107, 233,  25, 163, 136, 146,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170, 110,  30, 140, 188, 224,  45, 235, 107, 183, 250,  94, 185, 107, 215, 197
	.byte	224, 136,   7,  22,   1, 235, 245, 160,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 50, 137,  71, 142, 242, 126, 172,  58, 142, 254, 190, 196, 149, 191, 105, 199
	.byte	111,  61, 172,  80,  95,   1,  14, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 80, 230, 105, 112, 153, 234, 158,  41, 101,  11, 233, 248,  61,  56, 210,  98
	.byte	119, 213,  36, 142, 118, 201,  81,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	182, 231,  50, 159,  98, 191,  42,  49, 172,   5,  23, 151, 149, 146,  94,  98
	.byte	211, 211,  69, 162, 183, 121, 154,  89,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	111,  86, 100, 151, 151,  71, 141, 170, 142,  54,  20,  79, 220, 195,  13,  22
	.byte	 42,  13, 140, 142,  58, 191, 203,  84,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  9, 106,  26, 231,  14,  99, 102, 143,  66,   4, 233,  58,  60, 131, 177,  15
	.byte	125, 201, 233, 161, 173,  91,  25, 209,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	134, 216,  76, 116,  59,  20,  33, 229,  94, 228,  73, 137, 111, 152, 249, 223
	.byte	146,  84,   1,  90, 117, 111, 113, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 41,  86,  28, 162, 191, 169,   1, 203, 232,  84, 207,  75, 205, 135, 161, 203
	.byte	135, 225, 214,  64, 154,  40, 157,  69,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	209, 161, 236, 116,  50, 139, 224, 183,  31, 118, 163, 124, 107,  41, 151, 107
	.byte	 95, 142, 207, 107, 194,  75, 122, 254,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101, 224,  63, 152, 215, 240, 214,  54, 121, 121, 174, 183, 127,  87,   1, 126
	.byte	215, 196, 109, 182, 185,  80,  70,  74,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	146,  48,  78,  64, 209,  77,  82,  55, 214, 218, 120, 161, 233, 130, 103, 236
	.byte	 78, 206, 149,  67, 232, 191,  81, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 33, 183,  20,  10,  68,  91, 160, 180,  54,  74, 158,  73, 132, 166,   6, 247
	.byte	 98,  77,   1,   4, 240, 125,  31, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	132, 229, 176, 188, 107, 208,  37, 189,  56,  66,  22, 152, 196, 109, 182, 204
	.byte	192,  46, 126, 173, 209, 166, 209, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147,  61, 150,  78, 102, 252,  82,  44,   7, 181, 132, 109, 227, 101, 147, 167
	.byte	211,  31, 180, 167, 120, 235, 212,  48,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	181,  95, 154,  77, 160, 158,   5,  77,  35, 237, 253, 216, 159, 217, 253,  53
	.byte	145, 131, 155, 234,  77,  92, 167, 254,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	164,  67, 174, 208, 174, 167,  63, 203,  28,  37, 135,  10, 217,  79,  71, 182
	.byte	168, 214, 248, 161,  60,  82, 121, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 27, 179,  83, 218,  90, 235, 222, 207, 109, 146,  37, 198,   7, 171, 249,   7
	.byte	133, 109, 213, 244, 203,  71, 184, 150,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	192, 162, 248, 228, 138, 241, 207,  74,  81, 140, 202, 132, 213,  50, 111,  68
	.byte	 31, 107, 191, 234, 218, 242, 170, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	174, 168, 226,  86, 145, 117,  79,  20, 147, 239, 224, 191,  85, 246, 188, 179
	.byte	224, 119, 114,   7, 147, 141,  31,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 83, 150,  31,  29,  58, 153, 156, 200, 140, 159,  72, 122, 119, 127, 154, 109
	.byte	 86, 254, 112, 143, 226,  23, 222, 219,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 90,  34,  23, 206, 106, 246,  36,  26, 234, 159,  67, 155, 243,  96,  30, 127
	.byte	  1, 151,  72,  80, 169, 161, 127, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	178,  35,  43, 163,  78,  90, 139, 100, 247, 106, 202,  91, 229, 212,   3, 132
	.byte	197, 223, 112,  33, 230, 255, 187,   9,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136, 107, 204,  67, 160, 146,  65,  59, 217, 209,  32, 131,  12, 215,  30,  72
	.byte	119,  56,  38, 151,  73, 159,  38, 203,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	150, 125,  17, 254,  53, 142, 218,   4,  23,  33, 187,  88, 220, 204, 148, 227
	.byte	181,  77,  94, 176,  81, 161,  12,  69,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	145,  54,   3,   0, 170,   0, 199,  72,  51,  99, 129,  81, 218,  72, 121, 158
	.byte	243, 209,  26,  15, 151, 184, 140, 178,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136, 125, 112, 212, 120,  62,  49, 213,  33,  52, 182, 229, 194, 185, 156, 207
	.byte	 37, 204,  29, 209, 235,  37, 203,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	235,  96, 187,  97,  28, 247,  29,  85,  99, 224,  40, 179,  95, 122, 144, 125
	.byte	 18, 242, 146, 198,  23, 165, 207, 112,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	230, 195, 126, 200, 174, 182,  13, 109, 170, 218,   0, 153, 242,  37, 250,  67
	.byte	115, 161,  12, 122, 122, 113, 167, 232,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 47, 164,  83, 207,  18,  64, 180,  58, 169, 160, 116, 145, 246,  36, 184, 178
	.byte	203, 100, 163, 217,  43, 204, 125, 182,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 73,  40, 182, 137, 198, 190,  51, 239, 177,  39,  65,   7, 116, 122,  64, 197
	.byte	150,  22, 186, 241, 172, 173, 152, 178,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	144, 131, 252, 208, 125, 159, 141, 141, 200, 193, 215,  57, 141,  62, 114,   0
	.byte	 92, 216, 183, 236, 158,  42,  26,  79,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	246,  53,  11, 152, 207, 149, 172,  63,  52, 234, 186, 139, 223, 166,  59,  37
	.byte	205, 154, 213, 124, 240,  43, 193, 102,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  7, 181, 232, 138,  99, 192, 254, 229, 101, 101,  27,  29, 148, 131, 221, 172
	.byte	 65, 237,  28, 104,  97,  61, 178, 186,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	212,  16,  24, 252, 141, 234, 158, 206, 205, 234, 208,  20,  22, 178, 238,  43
	.byte	 60, 116,  94, 122,  67, 106, 219, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 41,  69,   0, 235, 221, 139,   9, 147,  22,  49, 139, 222,  28, 161, 114,   8
	.byte	 47, 249, 165, 214,  27, 107,  13,  88,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136, 209,  63,  90,   3,  59,  25, 201, 133,  74,  44,  20,  88,  90,  36, 185
	.byte	 21, 170,  29, 246,  81,  51, 155, 169,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  3, 251,  68, 136, 147, 255, 180, 112, 231,   8, 152, 209, 250, 242,  43, 115
	.byte	217, 251, 232, 149, 151, 101,  92, 171,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	186, 129,  95,  13,  80, 143,   5, 196, 207,   2, 220, 244,  45, 220, 107,  29
	.byte	152, 103,  15, 115,  62, 185,  28, 162,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	230, 138, 120, 222,  14, 202, 192, 170, 187,  16,  87, 230, 136, 188,   1, 248
	.byte	 75, 198, 164, 232, 145, 232, 168, 209,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234, 254,  81,   6, 150, 219,  88,  88, 245,  18,  80, 242, 219, 224, 230,  74
	.byte	241,  56, 212, 183, 147, 109,  19, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223, 121, 148,   1, 194, 190, 222,  52,  99,  45,  70,   9, 224, 253,  79, 184
	.byte	185,  12, 100, 253,  74,  76,  63, 210,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	175,  75, 161, 218,  93, 247, 237, 162, 148, 160, 244,  56, 115,  99,  34,  58
	.byte	194, 148,  96,  61,  35, 158, 251, 131,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  7,  35, 217, 194,  91, 100, 164, 235,   4, 142, 177, 143,  79, 193,  63,  87
	.byte	 50, 155, 250, 221, 139, 147, 101, 157,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	196, 208, 117,  94, 152,  10, 113, 217, 131, 122, 163,  53, 169,  54, 207, 139
	.byte	241, 232, 249,   8,  35, 120, 244, 244,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103,  28, 114, 151, 207,   3, 130, 114,  51,  53,   3, 176,  21, 175,   1,  18
	.byte	207,  48,  25,  46, 110,  72,   3, 171,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	214, 191, 130, 134, 206,  45,  94,  95, 122, 244,  29,  83, 106,  39,  48, 251
	.byte	 48,  41, 242, 245,  18, 148, 226, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 33, 250, 198, 250, 225, 210,  79, 223,  12, 137, 201,  58,  56, 106,  73,  71
	.byte	190, 224,  61, 128, 143, 133, 178, 219,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  7, 253, 153, 102, 237,  38,  65, 210,  90, 252,  43, 156, 210, 185,  74,  17
	.byte	 28,   7,  79,  33,  62, 164,  97, 237,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 29,  59, 244,  72, 226,  13, 158, 238, 211, 152, 100, 155, 146,  13,  86,  40
	.byte	172,  98, 224,   1,  41, 137, 128, 170,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	244, 165,  74, 229,  26,  83,  43, 193,  20, 128, 158, 140,  29,  60, 197,   6
	.byte	123,  30,  93, 187, 167,  77,  23, 159,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	183, 145, 100, 149, 222, 169, 124,  10,  60,  24, 159,  11,  25,  83,   7, 181
	.byte	200,  96, 196,  31,  71, 247, 147, 129,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 96,  73, 133, 163, 114, 159,  67, 151,  55,  69, 239, 197,  33, 110,  13,  68
	.byte	157, 192, 154, 239,  87, 221,  96,  24,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 59,  70, 171, 170, 126, 233, 141, 123, 180, 152, 103, 223,  36, 225,   8,  51
	.byte	166, 131, 144, 247, 204, 147, 190, 178,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 39,  14, 109, 166, 190, 175, 168,  26, 180, 224, 212, 139, 190,  34, 183, 145
	.byte	203, 248,  34,  96,  73,  87, 189, 106,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37, 160,  88, 116,  96, 204, 208,  54,  68,  89,  55, 255, 217, 204,  69, 214
	.byte	230,  40, 193,  97, 250, 243, 252, 214,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216,  59, 109, 107, 239, 215, 138, 133, 221, 229,  92,  33, 183,  93,  42, 217
	.byte	 26, 122,  62, 233,  97, 104, 144,  85,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121, 208, 187, 229,  50, 240,   7, 103, 189, 247,  46,  56,  61, 214, 163,  27
	.byte	 73, 116, 181,  68, 108, 171, 172,  85,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	164,  67, 174,  15, 223,  82, 215, 249, 229, 137, 131, 175, 206, 182, 120, 238
	.byte	196, 213, 216, 101,  94,  11, 174, 143,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	104,  36, 183,  38, 137,  60,  38, 154, 229, 120, 230, 140,  76,  97, 211, 221
	.byte	111,  16, 235,  41, 183, 220,  93,  33,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202, 115,  27,  87, 116, 209,  21,  77,  51,  28, 219,  25,  31, 164, 230, 234
	.byte	 21, 181, 128, 139, 239, 244,  15, 241,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 59, 114, 211,  31,  39,  50, 131, 249,   9,   9, 170, 241,  40, 244, 161, 200
	.byte	132, 229, 104, 149, 191, 249,  76, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10, 194,  91,  86, 170, 244,  50,  32, 234, 195,  43, 244,  31, 161, 164,  33
	.byte	230, 126, 154,  37,  62, 161, 101,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	139, 175, 119, 108, 163,  18, 251, 190,  31,  43, 148,   0,   4, 248, 246, 149
	.byte	216, 239, 152,  91, 117, 143, 115, 120,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 154, 112,  10,  71, 179,  33, 252, 112, 202, 101, 119,  66, 167,  64, 216
	.byte	200, 230,  86, 145, 224,  67,  32, 216,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236, 108,   8,  19, 210,   8,  50, 232, 148,  40, 246, 248, 255,  75,  19,  64
	.byte	  2, 138,  81, 123,  63,  82, 155, 145,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 17, 249, 204, 129, 236, 254,  76, 217, 118, 194,  85, 173, 157, 182, 110,  94
	.byte	156, 192, 170,  53, 145,  85,  37, 168,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	252, 187, 124, 253, 181,  93,  16, 133,  62, 116, 203, 224, 102, 172, 233,  80
	.byte	 93,   2, 141,  77,  31,   3,  54, 227,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	220, 135, 253, 117,  48, 154, 152, 230,   1, 125, 204,  10, 246, 176, 100,  10
	.byte	 40,   4,  72,  52, 118,  64, 148, 193,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  9, 103, 116, 200, 172, 222,   6, 100, 218, 171,  84, 102, 247,  64, 116,  78
	.byte	193, 184,  38,   4,  44, 179, 249,   1,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 59, 152,  48,  99,  63,  61, 243,  78,  73, 121,  72,  93, 199, 204, 210,  73
	.byte	210, 209,  92,  78, 214,   5, 211,  55,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 49, 156,  95, 220,  53, 106, 191,   8, 123, 248,  15, 250, 199,  79, 138, 203
	.byte	159,  89,  19, 214, 199,  52, 209,  95,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	255, 251, 165, 209, 166,  92, 164,  89, 224, 191,  89, 200, 185,  36,   4, 101
	.byte	 53, 173, 188, 133, 175,  46, 119, 243,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 28, 208,  13,  76,  78, 211,   2, 240, 224, 117, 171,  65, 221,   4, 176, 249
	.byte	 65,  84,  35, 205, 203, 190,  44, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115, 224,  70, 130,  11,  57,  36, 198,  35,  39,  90,  87,  91, 166,   0, 242
	.byte	 59,  46,  29,  85, 182,  97,  50, 198,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248, 114,  13, 203,  99, 169, 177, 155, 176, 216, 216,  70,  35, 118, 105,  71
	.byte	 11,   2,  66, 195,  50,  74,  43, 142,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43, 110, 133,  99, 137,  14,   2,  75,  30,  14, 164,  42, 242, 130,  60, 179
	.byte	 10, 217,  51, 145,  39, 220, 131, 105,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 65,  23,  59,  59, 147, 162, 166,  59, 117,  94, 152, 187, 237, 173,  89, 156
	.byte	147, 111,  41,  69,  51, 171,  49, 254,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	199, 105,  81,   3, 181,  34, 205,  31, 254, 236, 171,   7, 169, 179, 226, 154
	.byte	204,  45,  85, 250, 165,  49, 109, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 28, 253, 247,  43, 153, 181, 185, 151,  14,  21, 181, 252, 226, 246, 155, 194
	.byte	152, 198, 233,  96, 146,  37,  78, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 33,  88, 136, 235, 252, 190, 186,  82,  36, 251,  78, 164, 128,  15,  15, 120
	.byte	222,  89, 155, 220, 189,  80,  81, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	202, 203,  97, 167, 134,  27, 194,  23,  98, 181, 242, 186, 165,  61, 109, 145
	.byte	160,  28, 149, 182, 144, 152, 174, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102, 140,  65, 136,  43,  46, 174,  67, 205,  19, 216,  23, 214, 107, 215, 254
	.byte	 37, 186, 142, 173,  77,  59, 183, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 55, 121, 227,  82, 232,  97,  99, 249, 103, 153, 225,  80, 112, 168,  64, 165
	.byte	143,  19,  22, 124,  93, 154, 126, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 44,  13, 163,  39,  16, 107,  44, 161,  67,  59,  88,  51, 243,  84,  27, 190
	.byte	101, 227, 180, 116, 207,  34, 175,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153, 123, 197,   7, 164,  54,  58, 250,  65,  89, 116, 153, 252, 246, 201,  37
	.byte	169,  25, 135,  11,  88, 188,  89, 146,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	245,   6, 250, 193, 238,  38, 235, 223, 121,  62, 103, 205,  58, 202, 109, 163
	.byte	  9,   5, 232,  99,  56, 213, 251, 163,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 37,  75, 111, 191, 172, 131, 113, 171, 160,  73,  65, 191,  83, 178,   9, 147
	.byte	255, 155, 191,  18,  73, 219, 240, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185, 129, 253, 160, 108,  73, 206, 130, 228,  47, 199, 191, 242, 249, 137, 253
	.byte	 95, 184, 150, 124,  63,  44,  91, 112,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	225, 154, 169, 182, 212, 192, 177, 113, 181, 108, 223, 167, 231, 247,  26, 139
	.byte	243,  18, 218, 103, 213, 230, 203, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 85, 188,  90, 243,  30, 194,  94,  34,  38,  58, 207,  10, 139,   3, 127,  21
	.byte	 34, 242,   9, 190,  37, 169,   2,  73,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	241, 132, 202, 115,  44, 252,  75, 131, 127,  83, 214, 196, 165, 171, 162, 212
	.byte	 19, 159,  41, 202, 185, 112, 223, 206,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 53,  77, 157, 228, 163, 152,  91, 194, 100, 212, 141, 146,  37, 237, 153, 221
	.byte	 18, 147, 137, 195,  72,  90, 189, 175,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240, 247,  74, 252, 177,  68, 190, 103, 165,  37,  58,   6, 119, 196, 234, 195
	.byte	 78, 231, 123,  97, 185,  16, 209,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43,  77,  63,  81, 211, 103, 158, 136, 227, 212, 194, 166, 206, 227,  53,  11
	.byte	 16, 212,  14,  13, 211,  57, 157, 217,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	151, 216,  75, 222, 251, 168,  40,  57,  43,  65,  23,  86,  82,  66,  60,  61
	.byte	 96,  47, 173,  14, 150, 227,   1, 240,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 77, 106, 138,  43, 106,  98, 154,  22, 165, 144,   8, 181, 219,  78,  88,  24
	.byte	 15,  26, 127, 246, 246, 210, 131,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 26, 188,  23,  96, 124, 199, 248,  45, 128,   6, 191,  79, 254, 232,  96, 252
	.byte	  7, 102,   9, 151, 225, 102,  45,  95,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	103, 238, 141, 196,   7, 109, 230,  40, 233,  68,  47, 176, 196, 152, 194,  58
	.byte	 99, 122, 169, 253,  51, 244,  31, 113,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248, 221, 174, 113, 187, 241,  76, 176, 221,  16, 255, 201,  54,  46,   7, 165
	.byte	229, 146, 196, 238, 253,  62, 140, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 38,  16, 216, 204, 236, 218,  80,  23, 172, 162, 199,  96, 104,   7, 174,  32
	.byte	182, 181, 132, 122, 196,  40, 219, 102,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	216, 165, 211,  90, 243,  18, 231, 129,  47,  84,  60,  58,  35, 181, 117, 187
	.byte	158,  23, 130, 250, 166, 159,  89, 233,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 74, 205, 142, 243,   7, 238,  80, 219, 110,  82,  36, 135,  40,  29,  92,  46
	.byte	100, 239,  11, 249, 125, 248,  17, 199,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 93,  82,  59, 205, 125, 138,  71, 216, 208,  17, 166,  96, 170,  95, 234,  94
	.byte	138,  93, 171, 154,  73,  27, 154,  91,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 61, 144, 181,  38, 197, 242,  70,  71, 178, 218,   5, 163,  84, 241, 127, 131
	.byte	233, 246, 111,  83, 111, 146, 243,  66,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 13, 221, 242, 243,  41, 197,  26,  77, 106, 145, 186, 223, 241,  27,  74,   9
	.byte	147, 235, 109,  54, 199, 142, 179, 141,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 99, 178,  92,  93,   9,  98,  51,  97, 106, 110,  75, 177, 101,  41, 234, 192
	.byte	 93,  68,   1, 254,  35, 138,  91,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 14, 200,   0,  65,   2,  50, 127, 202, 169,  89, 107, 172, 220,  28, 250, 150
	.byte	 97, 130,  13, 129, 121, 234, 181,  74,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	138, 142, 210, 188, 167,  74, 150,  71, 153, 128, 225,   2,  66, 117, 248,  68
	.byte	 59, 251, 232, 166, 159,  91, 233, 205,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	244, 162,  53,  58, 235, 197,  38, 118, 121, 205,   4, 252,  61,  88,  68, 154
	.byte	250, 119, 252, 119, 212, 189, 117,  12,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	217, 151,  19,  92, 195, 151,  82, 194,  31, 100, 132, 129, 161,  49,  66, 199
	.byte	223, 155,  74,  42, 167,   7, 246,  95,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	244, 214, 111,  68, 146,  68,  15, 130,   1, 174,   0, 173, 229, 100, 111, 242
	.byte	  7, 108, 217,  76,  69,  59, 201,  44,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	100, 103,  19, 120,  44,  82, 171, 124,  79, 159, 247, 248, 176,  39, 154,  12
	.byte	 89, 220, 237, 230, 147, 212,  74,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 71,  61,  87,  68,  82,   0, 103,  87, 124,  83, 246,  66,  49,  47,  95, 171
	.byte	 19, 168, 108, 149, 167, 114,  22, 181,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123, 175, 212,   8, 144, 128, 107,  90, 169,  80,  58,  45,  64,   5, 249, 134
	.byte	182, 147,  21, 134, 217, 214, 141, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 70, 174, 168,  19,   1, 199, 212,  18, 250,  75, 127,  60, 109, 218, 198, 202
	.byte	106, 169, 165, 153,  71,   3,  30, 142,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	132,  10, 178, 245,  70,  16, 232, 214, 248, 105,   2,  73, 147, 157, 176,  73
	.byte	241, 176, 200, 105, 191,  13,  54,  87,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36, 110,  34,  95, 137,  77, 197, 230, 183, 245,  63, 194, 230,  21, 230,  52
	.byte	158, 109, 245,  97, 105,   2, 191, 147,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	102,  42,  69, 137, 126, 177,   0, 195,  12, 150, 132,  30, 175,  76, 203, 156
	.byte	 72, 129, 160,  65,  66,  70, 195,  75,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	237, 126, 109,  74,  52, 215, 211,  70, 132, 111, 181,  58,  98, 105,  96, 238
	.byte	 75,  59, 185, 120,  87, 247, 218, 130,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 78, 164,  19, 207,  56, 126,  99, 185, 113,  24, 164,  97, 159, 125,  48, 207
	.byte	243, 166,  69, 109,  81, 118,  83,  18,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 53, 165,  47, 116, 216,  26, 230,  37, 163, 116, 120, 102,  82, 216,  39,  81
	.byte	 65, 160, 236, 167,  13,   2,  40,  38,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 18, 198,  76, 158, 215, 109, 108, 204,  50, 250,  48, 240, 155, 185,  77, 199
	.byte	116,  92,  75, 111,  12,  59,  13, 252,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	187, 152,   5, 177, 184,  62, 249,  61,   2,  10, 142,   0, 172,  70,  29, 141
	.byte	 13,  23, 159,  67,   0, 136, 163,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 61,  46, 221, 204, 233, 111, 221,  16, 105, 251, 218, 143, 155, 158, 169, 112
	.byte	  6, 237,  84, 165, 212, 208,   1, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236, 195, 133, 235, 108, 120,  86, 206, 237,  59, 240, 143, 179,  66,  18, 182
	.byte	 36, 162,  39, 126,  31,  32, 248, 146,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	178, 169, 152, 140, 246, 240, 177, 246,  30, 100,  59, 143, 216, 224, 168, 254
	.byte	 73, 192,   4, 104, 191, 172, 188, 173,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	141,  98,  23, 170, 135, 194, 220,  49,  79, 208, 164, 140, 215, 220, 241,  17
	.byte	 70,  32,  41, 136, 188,   8, 154,  94,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	158, 189,   7, 186,  51, 200, 142,   4, 223, 178, 150, 184, 205, 132,  70, 249
	.byte	114, 228, 187, 104,  65,  15, 161, 234,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	146, 223,   9,  97,   5, 200,  74, 125,  30, 232, 243, 132,  83,  63, 243, 239
	.byte	187,  40,  86, 140, 195,  26, 220,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223, 158,  80,  62,   2, 104, 132, 138, 170, 152, 126, 209,  47, 119,  43,  66
	.byte	141, 193,  25, 223,  44, 171, 141, 110,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	185, 198, 222,  62,  20, 109,  79,  87, 219, 103, 104,  96, 154, 125, 243,  22
	.byte	  0, 153,  52, 241, 156,  12, 205,  59,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 63,  81, 186,   4, 220,  35, 226, 104, 173, 157,   1,   9, 224,  24, 253, 220
	.byte	 79,  23, 173,   1, 171,  62,  79, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 83,  76,  76,  99,  94,  57, 247,  85,  51,  72,  73, 147,  88,  62,  55, 225
	.byte	 84,  62, 167,  67, 184,  37,  23, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143, 207, 249, 187,  91, 135,   0, 130, 115, 243, 163, 199,  85, 117, 232,  35
	.byte	 95,  41, 154, 249, 233, 106, 250,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	173,   9, 228, 185,   2, 223, 239, 135, 150, 133, 232,  68,  82, 248,  27, 187
	.byte	 14, 188,   4,  97,  52, 189, 155, 218,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	205,  94, 189, 227,  67,  19,  83,  94,  15, 107, 237,   6,  73,  21, 235, 239
	.byte	160, 205,  58, 161,  47, 139, 144, 153,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	195, 248,  61, 138, 202,  55, 158,  88, 104, 222, 168,  96,  84,  66, 112,  92
	.byte	 83, 215,  58, 228,  17, 119, 228, 150,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 25,  40, 227, 215, 104, 181, 126, 107,  54, 235, 101, 111, 120, 189, 245, 159
	.byte	 84,  74, 205, 233, 123, 122, 218, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	121, 128, 219, 138,  94,  65, 254, 253,  47, 105,  64, 182,  16,  64,  86,  62
	.byte	 91, 252,  24, 248, 107,  33, 102, 254,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	130, 154, 248, 147, 139, 223,  59, 197, 249, 199,  29,  71,  34, 142,  53, 170
	.byte	221,  34, 171, 125,  36, 148, 175, 158,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	253,  94, 248,  70, 151,  17,   0, 140, 203,  79, 178, 126, 144, 200, 233, 173
	.byte	166, 249, 217, 103, 142, 198, 182, 177,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	148, 222, 217, 175, 149,  52, 178,   0, 168, 249,  37, 173, 254, 135, 148,  36
	.byte	 98, 219, 231,  69,  84, 170, 118, 166,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 27, 176, 255, 147, 159, 166,   4,  38, 137, 185,  51,  92,  78,  54,  24, 217
	.byte	 40, 203, 242, 246, 128, 200,  12,  78,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	176, 209,  45,  89,  98, 172,  56,  64,  26, 248, 195, 112,  75, 116,  14, 243
	.byte	193, 100, 120,  48, 117, 231,  84,  30,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	214, 207, 187, 253, 233, 133, 199,  81,  10, 191,  58, 223,  74,   7, 154, 243
	.byte	 11,  72,  87,  63,  35, 249,   1, 221,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	112, 137, 180, 194,  41, 218, 114, 169, 116,   6, 209,  38,  27,  62, 202, 255
	.byte	 25, 103, 148,  65, 226, 165, 106, 218,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 94, 183,  14, 216, 219,  59,  49, 227, 218, 163,   3, 238, 138, 102, 125, 184
	.byte	170, 214, 107,  60,  79, 124,  64,  54,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	195,  10, 244, 246,  77,  89, 207, 100, 253,  72,  17, 195,  19, 144, 132, 237
	.byte	 39, 205, 182, 107,  36, 200, 109,  35,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 92,  78,  76, 176, 207, 178, 121, 250, 153, 202, 171, 100, 254, 171,  67, 222
	.byte	 91, 173,  53,  85,  67, 199, 135, 236,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	165,  75,  11, 252, 152,  56, 117, 230, 108,  14,  54, 107, 194, 139, 130,  83
	.byte	168, 163, 143,  55, 183,   1, 211, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136, 242,   8,  51, 202,  53, 181, 238, 100,  28,  57, 223, 106,  45, 185, 170
	.byte	130, 149, 192, 116,  99, 200, 154, 243,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	162, 206, 102,  25, 170, 210, 150, 117, 119, 144, 216,  16, 176,  87, 197,  73
	.byte	 91, 207, 243,  72,  11, 161, 127,  57,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	220,  80, 226, 107, 248, 134, 186, 163,  17,  88,  94, 100,  12, 180,  44,   5
	.byte	212,  87, 251, 211, 156, 240,  85,  40,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 61,  95, 196,  82, 153, 209, 212,  47, 125, 163, 250,  16,  11, 126,  77,   5
	.byte	186,  56, 123,  44, 200, 253,  68, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	227, 145, 147, 243, 251, 107, 121,  62,  47, 129, 162, 213, 158, 251,  11, 109
	.byte	 81, 134, 118,  92, 194,  78,  24, 178,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  4,  34, 182, 129,  29, 199, 252, 154, 102, 151, 176,  68,  87, 255, 202, 254
	.byte	247, 221,  13,  82, 242,  44, 221,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 85, 126,  23,  89, 196,  24, 168, 138, 101,  13,  17, 205, 181, 170, 157, 242
	.byte	164, 238, 224, 228, 124, 146, 252, 153,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	136,  58, 115, 133,  10, 202,  63,  88,  98, 186, 111, 116,  96,  14, 166, 195
	.byte	131, 191, 132,  68, 144,  46, 124,  23,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116, 147, 110,  19, 164, 215,   1, 255,  63, 136,  72, 109, 171,  33, 169, 162
	.byte	222, 160,  86,  42, 136, 231,  63,  71,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 92, 234,  77, 186,  22, 131, 183, 214, 246, 161,  86,  36, 105, 214,  34,  39
	.byte	238, 127, 141, 164, 138, 116,  28,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188, 147, 245, 226, 102,  79,  31,  75,  31, 248,  95, 247,  11, 205,  47, 153
	.byte	246, 104, 146,   3, 255, 231, 235, 214,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	226,  47,  78,  90,  37, 107, 139, 113,  48,  64, 212,  17,  45,  16,  64,  50
	.byte	 15,  64, 189,  72,  59, 141,  53,  18,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	184, 133, 151,  56,  63,  74, 189, 208,  32, 190, 108,  55,  97, 134, 199,  96
	.byte	 24,  66,  12,   6,  49, 219, 135,  90,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	214,  18,  47, 114, 177, 197,  69, 254,  81, 143, 157, 229,  46,  32, 247, 148
	.byte	104, 240, 124, 238,   6,  34, 175,  24,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 45,  56, 222,  13, 222,  46,  97, 222, 174, 176, 220, 193,   5,  71, 158, 114
	.byte	 16, 226,  53,  25,   2, 138, 245,  68,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	192, 213,  64, 243, 169, 238, 242, 169, 219, 245, 157, 197,  87, 253,  47, 232
	.byte	248,   2, 127,   7, 233, 101, 140, 159,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10, 137, 192, 124,  43,  21, 255, 132, 176, 194, 101, 147,  88, 190,  94, 109
	.byte	 78, 117, 237, 224, 172,  79,  16,   1,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 81, 219, 217,  93,  59,  22, 142, 210, 244,  49, 104, 242, 205,   8, 108, 211
	.byte	  0, 218,  55, 234,  57,  61,  91,  59,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 89, 222,  52,  39, 191,  42,  27,  42,  55,  30, 245,  75, 209, 151, 216,   3
	.byte	 85, 173, 248,  39, 156, 193,  97,  42,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	129,  10, 107,   2, 132, 216,  45,   4, 167, 231, 147,  44,  99,   2, 113,  31
	.byte	158, 240,  45, 198, 135, 218, 196,  15,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	131, 255,  38, 135, 181,  83,  41, 125, 173,  70, 166, 230, 182,  11, 178, 197
	.byte	 69,  40, 123, 157, 209, 122,   5, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	239, 218, 168, 112,   3, 198, 243, 162, 213, 108, 193, 128, 130, 142, 239, 152
	.byte	187, 209, 236, 135,  67, 229,  34,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43, 104, 143, 122,  68, 119, 254, 224,  99, 167, 158,  37, 238, 106, 208,  78
	.byte	238,  25,   4, 176, 252,  81, 230,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 78, 181,   1, 169, 123, 216, 202, 111,   1, 202, 237, 130,  83, 188, 176, 221
	.byte	 12, 225,  47,  63, 207, 223, 138, 129,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	161, 240, 123,  85, 217, 102, 144,  49, 136,  77, 225, 131, 252, 164, 120,  46
	.byte	229, 134, 228, 174,  96,   4, 247,  64,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 87, 249, 215, 154, 218,  21, 207, 122, 153,  10, 215, 171,  96, 227, 218,  83
	.byte	233,  81, 241, 155, 119, 146, 139, 138,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 19, 244,  40,  31, 156,  55, 171, 248, 230,  50, 108,  25, 189,  51, 167,  98
	.byte	126, 205,  16, 113, 202, 202, 113,  67,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	234,  78, 158,  26, 177,   7, 115,  65, 192, 253, 110,  77, 197,  29,  67, 168
	.byte	120,  59, 184, 194,  37, 174,  60, 184,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 23, 114,  77, 104, 167, 213,  53, 113, 222,   6,  41, 146, 155,  63, 229, 203
	.byte	222, 246, 125,  73,  84, 105, 113,  86,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	223,  89, 202, 212, 235, 158, 141,  25, 205, 207, 181, 194,  75,  37,  40,  75
	.byte	 46,  79, 230, 156, 182,  31, 131,  92,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113,  89, 105, 203, 245, 142, 138,  66, 224, 102, 138, 103,  52,  52,   6,  43
	.byte	207, 101,  66, 235,  85,  43,  25,  64,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	172, 158, 220, 107,  64, 142, 223, 126, 130,  64, 188, 171, 164,  10, 135,  48
	.byte	202, 158,   2,   1, 119, 251,  54,  23,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	247,  12, 239, 160, 182, 142, 218, 117, 124, 222, 133, 206, 125,  62,  30, 208
	.byte	 82, 102,  14, 171, 241,  78, 156, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 61,  26,  56,  29,  91, 111, 206,  55, 131,  55,  80, 107,  85, 208, 153, 249
	.byte	 76, 221, 179, 152,  27, 108, 222,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 87, 219,  50, 129, 252,  29,  25, 152,  73, 134, 246, 176, 107,  36, 195, 150
	.byte	172,  52, 237, 168, 184,  52, 137, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	245, 194, 171, 197,  58, 144, 128, 211, 109,   0,  56, 176, 184,  37,  71, 220
	.byte	104, 118,  99,  63,  11,  33, 110, 124,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156, 186,  23, 240, 138, 162,  57, 205,  51,   8, 191, 221, 242, 130, 203,  83
	.byte	210,  50,  16, 149, 128, 249, 164, 204,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	207, 136,  66,  54,  44, 124,  21,  16,  90, 228, 161, 196, 250, 155,  59,  64
	.byte	 21,  19, 105,  43,  81,  11, 193, 161,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	156, 224, 180, 213, 237,  99, 144,  46,  53, 233,  25, 222,  82, 207,  57, 145
	.byte	 28, 191, 235,  47, 253, 168,  82,   8,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	157, 152, 155, 204, 129, 252,  78, 227, 225, 151, 249,  82,  35, 180, 166, 108
	.byte	241, 232,  91, 107, 194, 203, 214, 160,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  8, 102,   1, 218,  68,  98,  17,  64,  96,  32, 216, 104,  48, 108,  21,  21
	.byte	 97,  96, 222, 215,  36, 154, 236, 135,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123, 117, 153, 144,  16,  35, 161,  39,  92, 145,  34, 244, 247, 225, 200, 202
	.byte	 26,  88,  18,   3,  85, 198, 212, 255,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 89,  89,  99, 179, 185,   0,  72, 218, 142, 154, 183, 166, 165, 112,  37,   2
	.byte	 53, 159, 204, 236, 230, 188,  39, 179,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 96, 111, 105, 133, 210,  29, 222,   4,  19, 253, 214, 248, 242, 140,  16, 248
	.byte	 15, 119, 235, 162, 215,  86, 103, 112,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116, 149, 160,   1, 122, 194, 161,  77, 170, 133, 188, 210, 183, 190,   3,  62
	.byte	155,  44, 203,  69,  44, 188, 205, 202,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	115,  12, 168, 158,  90, 251, 213, 197, 145, 222, 116,  76, 122,  51, 143, 179
	.byte	216, 241, 133,  77,  95,  14, 220, 160,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	123,   7, 173, 141, 152,  67,  92,  72,  78,  34, 180, 143, 239, 250,  25, 177
	.byte	 22, 156, 123, 243, 235, 238,   3,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  0, 127,  13, 163,  40, 150, 136, 225,  23,  95, 159, 135, 219,  64, 176, 149
	.byte	 75, 241,  33,  79, 242,  32, 145,  78,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 16,  55,   3,  12,  32, 236, 165, 243,  84, 145, 139, 215, 227, 104, 182, 242
	.byte	 84, 108, 203,  84, 168, 239,  67,  68,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 121, 156,  88, 103, 117, 155, 235, 136, 161, 127,  84,  53, 153, 246, 185
	.byte	229,  38, 122, 177, 222,  93, 246, 245,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	207, 210, 225,  70, 231, 178,  77, 116, 249,  61, 148, 127,  98, 142, 138,  56
	.byte	 74, 168,  77,  50, 211, 253,  44, 228,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 72, 169,  29, 166,  25, 194,  93,  65, 183, 190, 120,  72, 126, 213, 244,  52
	.byte	 51,  82,  80,  87, 182, 251, 109,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	217, 141, 154, 254, 147, 127,  31, 237, 214, 222,  56,  75,  39, 213, 237, 226
	.byte	113,  59,  12, 251,  17, 119, 168,  68,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 99, 120,  14, 132, 220,  66, 248,  24,  47, 132, 177,  85,  76, 223, 178,  40
	.byte	253,  14,  54,  37, 211, 151, 164,  71,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	199,  17, 230,  21, 191, 205, 186,  21, 126,   3, 221, 174, 162, 111,   3, 109
	.byte	182, 145, 138, 240, 201,  35, 162,  83,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	174, 235, 106, 195, 134, 106, 162, 104, 133, 168, 224, 108,   8,  83, 188,  19
	.byte	201,  86,  31, 174, 116, 152,  84,  22,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	241, 241, 250, 191,  97, 196, 159, 205,  53, 179,  73, 121, 179, 133, 101, 123
	.byte	 75, 161,  63, 104, 114, 200, 193,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	162, 128, 143,  78, 191,   3,  39, 121, 162, 172, 200, 145,  59, 170,   8,  32
	.byte	 29, 112, 104, 233,  72, 181, 220, 121,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	174, 107, 192, 152, 123, 254,  51, 141,   0, 122, 138, 200, 220, 131,  13, 239
	.byte	 86,  79, 125, 173, 254, 217, 133,  56,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	168, 141,  15, 196, 111, 184, 157, 148,  94, 136,  98, 233,  52,  98, 248, 205
	.byte	100,  29, 110, 104, 124,   4, 188,  82,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 98, 207,  88, 112,  34, 206, 222,  59,  66, 243, 119, 151,  93, 189,  67,  86
	.byte	193,  85,  39, 138, 181, 146, 161,  21,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	218, 191, 177,  75,  71, 132, 105, 127, 221,  22, 254, 217,  40, 183,   2,  69
	.byte	185, 161, 103, 186, 181, 153, 217,  84,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 29,   2, 105,  90,  21, 240,  64,  73,  33, 183, 129, 226, 135,  75, 119,  55
	.byte	184,  11,  13, 174,  93, 115,  88,  86,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	150,  40,  50,  75, 205,  70,  77,  37, 123, 112,  37,  12, 156, 107,  98,  95
	.byte	 39,  98,  88,  72, 252, 231,  40, 213,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 77, 116, 131,  75,  29,  87, 234,  20,  67,  38,  96, 240,  58,  97, 225, 222
	.byte	211, 199,  47,  42,   8, 211, 211, 129,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	187, 252,  31,  99,  70, 244, 159,  21,  17, 238, 231, 235, 186, 136, 187, 120
	.byte	113, 227,  20, 228,  46, 246, 238, 226,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	209, 168, 207, 172, 173, 224,  66,   5, 185,  37, 198, 143, 137, 114,  39, 165
	.byte	124,  47, 157,  22, 179,   8, 219, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	237, 240,  36,  73, 239, 162, 238, 126,  40,  85, 247, 166,  31, 209,  67, 251
	.byte	187,  40, 190,  69,  12, 158, 123, 201,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 70, 220,  45,  10, 120, 202,  65, 236, 178, 244,  55, 150, 103,  86,  40,  88
	.byte	 21, 124, 182,  21,  95, 196,  77, 251,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  5, 153,  85, 121, 146, 236, 136, 244, 221, 184,  31, 247, 215, 149,  25, 157
	.byte	180, 222,  16, 114,  38,  33,  87, 254,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 28,  12,  87, 212, 102,  26, 224, 152, 113, 132,  53,   1, 206,  80, 117, 248
	.byte	 26,  92, 156, 135,  53,  11,  13, 128,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	226,  56, 106,  37,  77, 196, 224,  26, 169,   0, 187, 157, 190, 112,  44,  11
	.byte	 37, 154, 100,  35, 154,  52, 161,  91,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 91, 183,  28,  49, 131,  54, 229,  72,  39,  87, 153, 132, 176, 162,  30,  43
	.byte	  4,  56, 233,  11,  12, 128,  23, 231,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	117, 250, 106, 125, 174,  53, 219, 233, 241,  64, 142,  95, 143, 107, 240, 115
	.byte	233, 219,  87,  58, 245, 111, 138,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 69, 240,  47, 153,   0, 214,  48, 103, 172, 165,  71, 251, 202,  57, 242,  77
	.byte	178, 187,  51,  15, 111, 236, 239, 180,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	236, 138,  22, 231, 238, 176, 167, 203,  57, 231,  28,  38, 231,  47,  94, 201
	.byte	121,  94,  20,  67,  26, 117,  80,  38,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	230,  31,  21, 109, 158,  31,  44, 187,  80, 180,  89, 130, 202,  24, 210,  87
	.byte	197, 137, 247, 151, 138,  32, 222, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	108, 125, 102, 239, 158, 139, 167, 205,  15,  24, 189, 189, 158, 190, 174, 106
	.byte	 37, 168, 236, 151,  41,  69, 106, 235,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	188, 239, 111,  51, 244,  53,  46, 101, 173, 232,  58,  34,   6, 116, 161, 235
	.byte	225,  12, 117,  89,  77, 174, 129, 172,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 28, 242, 221, 123, 244, 209, 228, 166,   9, 188, 200,  81,  51,  26,  23,  72
	.byte	118, 149, 245, 239,   6,  96, 235,  80,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 34,  25, 153, 209, 220,  32,  52,  29,  33, 149,  68, 233,  36, 126, 205,  31
	.byte	218,  31, 241,  72, 238,  35, 118,  89,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 68, 252, 124, 251, 115, 249,  63, 125, 178, 167,  34, 110, 252,  27, 245, 190
	.byte	127, 153, 216, 119, 135, 177, 208, 119,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	194, 138,  90,  87,  23,  79, 155,   7,  28,  62, 188, 119,  46,  13,  54, 196
	.byte	127, 126,  71, 120,  15,  13, 183, 124,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 83, 214, 207,  45,  40,  49, 185, 166,  43,  31,  36, 106, 151, 239, 227,   9
	.byte	 40, 108,  58, 101, 216, 131,  57, 147,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	125, 177,  71, 148, 120,  34,  77,  97, 173, 217,  21,  37,  99,   6,  12,  99
	.byte	 48, 154,  99, 122, 149, 171, 105,  43,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 97,  40, 221,  64, 122, 193, 224, 250,  39,  24, 124, 205,  82,  65, 169, 240
	.byte	254, 141, 229, 209,  64, 155, 227,  76,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	254, 236,  41, 209,  30, 166,  36,  66,  73,  30,   6, 252,  85, 180, 111, 196
	.byte	129,  91, 157, 219, 108, 176,  25, 115,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170, 128, 166, 213, 181,  48, 233, 142, 104,   1, 192, 113,  29, 129,   4,  66
	.byte	 54, 197,  91,  50, 216,  23,  77, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 31,  51,  52, 253, 202, 164, 227, 234, 242, 220,  53,  41, 167,  35, 229, 221
	.byte	175, 140, 238,  89, 141, 238, 215,  81,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	170, 217,  85, 111,  22, 178, 190,  71,  92, 249, 251, 190,  67, 231, 253, 135
	.byte	142, 220, 227, 194,  48,  98, 177, 192,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 28, 181,  36, 208, 142,  87,  91, 181, 116,  30, 116,  23, 110, 239, 179, 112
	.byte	138, 132, 152, 171, 103,  40,  43,   5,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54, 123, 190, 185, 151,  46,  15,  97, 115,  88, 131, 228, 125, 210, 148, 204
	.byte	  1, 247, 142, 243,  36, 150, 106, 217,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 45,  43, 239, 171, 141, 252,  14,  47,  73, 120, 251, 180, 134, 175,  89, 136
	.byte	150, 210, 161, 158, 198, 200, 131, 151,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	147, 250,  35,  18, 233, 197, 155,  90,  83,   7, 167,  45, 124, 199, 149, 251
	.byte	147,  67, 249, 116, 167, 156,  52, 188,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 20,  95, 183,  88, 118, 120,  73, 177, 192, 199, 249,   2,  19,  33, 177, 120
	.byte	203,  70,  13, 192, 182,  42, 135,  22,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	141,  63, 104, 126, 254,  94, 140, 253, 144, 158, 247, 208, 237, 127,  71, 207
	.byte	244, 125,  37, 163, 164,  63, 152, 222,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 64,  15,  40,  85, 194, 105,  15, 112, 248, 171,  67, 245,  32,   8,  63,  65
	.byte	 31,  85,  23, 215, 210, 154,  53, 212,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	226, 116,  74, 159,  87,  82,  19,  13, 192,  58,  77,  55, 101, 205,  11, 170
	.byte	 31, 252,  47, 154,  50, 109, 209,  41,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	179, 107, 225, 204, 114, 158, 237, 173, 229, 250,  84,  60, 168, 121,  18, 178
	.byte	 92, 156,   9,  17, 190, 184, 163,  26,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	101,  90, 249,  76,  80, 103,  56, 136, 148, 197,  59,  17,  56, 189, 145,  65
	.byte	  1, 164, 121,  78, 160,  60, 217, 161,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	152, 218, 101, 145, 116, 206, 248, 241, 190, 226, 192, 237,  75,  12, 166, 222
	.byte	  4, 186, 222,  34, 111, 135, 113,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118,  70,  60, 214,   1,  87, 197, 171,  35, 243,   0,  50, 243, 131, 191, 115
	.byte	 10,  79,   6, 215,  29, 192, 126,  40,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 23,  70,  86,  12,  40,  75,  80, 120,  97, 129,   3,   9,  73, 196, 105, 102
	.byte	227, 153, 144, 154, 193,  65, 200, 238,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 26, 226, 210,  56, 208, 198, 112, 159,   9,  96, 122, 187,  47, 223, 143,  54
	.byte	 98, 153,  65,  50,  54, 172, 184,  55,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	151, 107,  55, 130,  31, 156, 180, 159, 149,  45, 212, 120, 225,  24,  55, 175
	.byte	134,  56, 253, 102, 219, 218, 125,  13,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 64, 167,  95,  21, 252, 165,  23, 187, 115, 190, 230,  28, 195,  66, 112,  11
	.byte	 45, 185, 161, 249, 234, 117, 214,  58,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  2,  84, 138, 169, 164, 208, 157, 148,  83, 160,  51,  13, 129,  37, 130,  51
	.byte	110, 151, 117,  76,  94, 178, 130, 173,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 62, 229, 180,  69,  24,   1,  54,  66,  48,  14,   8, 226, 217,  78, 190, 131
	.byte	219, 153,  91,  78, 203,  59, 227,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 46, 205,  15, 184,  62, 121, 245,  34,  74, 135, 110, 108, 113,  79,  67, 141
	.byte	223,  37, 126, 135,  48,  70, 125, 179,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 43,  68, 114,  88, 129, 212,  96, 132,  37,  75,  53,  46, 192, 200, 111, 197
	.byte	206, 224, 161, 207,  99, 120, 165, 208,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 70,  47, 253, 131,   5,   3, 245, 110,  77, 134, 151, 140,  81,  45,  50, 187
	.byte	 38, 145,  87,   4,  80, 117,   4, 237,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 68,   6,  47, 238, 175, 139,  53, 207, 184,  12, 119, 198,  99,  84, 156,  80
	.byte	136,  54,  21, 136, 212, 187, 199, 122,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 28, 140, 119, 105,  94,  76, 185, 124, 174,  37, 173, 255, 237, 186, 181, 244
	.byte	208,  15,  78, 237, 209,  14, 237,  92,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 58,  24, 203, 208, 122, 214, 251,  86, 237, 105, 142,  53,  77,  32,  92, 166
	.byte	 83, 216,  12,  30, 177,  36, 211,  62,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 22, 115, 252, 101, 219, 207, 192, 204,  36,  33,  61,  14, 181,  37, 228, 239
	.byte	149, 104, 251,   2,  58, 187, 110, 224,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 70, 232,  26, 251,   0, 248, 210,  37,  62, 137, 241, 252, 191,  70,  99,  10
	.byte	154,  68, 222, 104, 217,  23, 196,  16,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 49,  97, 160, 163,  26, 173,  86, 225, 136, 147,  54,  28,  72, 162, 207,   4
	.byte	170, 169,  16, 221,  15, 184, 127, 110,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	182, 228,  21,  56,  54, 193, 115, 174,  86, 100, 130, 149, 187,  32, 192, 101
	.byte	 18, 186, 152,  62, 186,  25, 168,  36,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 56,  84,  35, 166, 145, 194, 118, 110,  18, 106, 187,  36, 196, 118,  12, 234
	.byte	 43, 247,  79, 215,   0, 210,  10, 174,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 46,  21,  88,  94, 164,  17, 200, 108,  52,  67,   7,  41, 119,  40, 188, 164
	.byte	180,   5, 187, 152, 104, 124, 122, 155,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 70,  42,  56,  90, 119, 185,  31,  75, 239,  98, 124, 141, 130, 191, 209, 238
	.byte	181,  78,  32, 181, 147, 202,  47, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	219,  16,   3, 250, 153, 191, 212,  64,  50, 189,  81,  69, 237, 221,  65, 154
	.byte	171, 201, 240,  12, 151, 164, 151, 233,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 53, 239, 204, 169, 178,   0, 132,  45,  50, 170, 136, 126, 120, 105, 183,   9
	.byte	199,  99,  20, 178, 103, 241,  98,  14,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	125,  22,  87, 210, 118, 221, 117,  75, 112, 134,  73, 239, 224, 252,   5, 103
	.byte	149,  99, 209,   7,  89, 186,  13, 111,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 84,  65,  20, 212, 199, 181,  34, 180,   7,  58, 111,  15,  48, 248, 183, 136
	.byte	136,  63, 247, 201,  72,  93,  70,  68,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  4, 100,  80, 135, 176, 186,  51, 124,  81,  58,  39,  37, 166,  46, 186, 175
	.byte	208, 207,  59, 156, 230, 249, 136,  45,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 62,  12,  65, 141,  22,   2, 223, 231, 203, 141, 117, 198,  19, 165, 227,  57
	.byte	  8, 149, 191, 100,  43, 110,  47, 188,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	166, 180,  34,  73, 221, 131, 248, 160,  89,  59, 205,  11, 145, 158,  83, 229
	.byte	 85,   7, 214,  87, 247,   8,  61, 167,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	113,  21, 192, 148,  66, 157, 104, 227, 114,  95, 159,  60,  77,  90,  41,  92
	.byte	  3, 124, 195,  93, 187, 180,  37, 216,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248, 186, 193,  73, 160, 129, 150,  45, 218, 163, 238, 231,  64, 109,   1,  90
	.byte	138, 229, 215, 226,  82, 243, 225, 152,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153,  30, 168, 251, 209, 224, 230, 252,  45, 204, 100, 205,  76,  64, 152,  16
	.byte	188, 131,  88,  76,  29, 126,  10,  67,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	118,  91, 252,  28, 137, 252, 231, 110, 138, 125, 200,  65,  60,  40, 160, 232
	.byte	 24, 107, 111, 168,  28,   8,  66,  56,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	240, 209, 247,  26, 147,  64,  14, 112, 211, 208, 114, 122,  59,  81,  32, 123
	.byte	 87, 113, 206,  96, 122,  55, 179, 130,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	254,  90,  58,  36,  82, 243, 175, 229, 226, 138,  92, 137, 244,  25, 223,  55
	.byte	247, 129, 144, 101,  21,  76, 115, 129,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 70,  67,  35, 132, 138, 170, 223, 194,  49, 136, 220,  80, 238, 206,  73, 239
	.byte	114,  63, 130, 129,  21, 244,  42,  46,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 45, 236,  19,  97, 133, 160, 232, 238,  86, 165, 148,  92, 108, 202, 154,  34
	.byte	164, 173, 224, 114,  15,  42, 203, 230,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	152, 193, 207,  49, 127, 116, 159, 196,  63, 235, 255,  69, 229,  69,  23,  46
	.byte	188, 170, 180, 246, 149, 217,  46,  70,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	135,  65,  15, 100,  39, 217, 159, 206, 149, 238,  76, 122,   5, 137, 249,  10
	.byte	253, 165,  34,  64, 232, 177, 217,  30,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	210,   1,  65,  12, 167,  53, 144,  66,  54,  50,  10,  68,  66,  49, 202,  61
	.byte	138,  27,  88, 184, 139, 105, 115,  14,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	180, 150,  53, 159, 156, 230, 147, 101,  98,  54,  53, 148,  41,  47,   0,  80
	.byte	147, 255, 245, 213,  31,  17, 228,  35,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  6,  69, 235, 138,   9, 211, 109,  24,  34, 107, 186,  65,   0, 197, 216, 102
	.byte	 82, 214, 141, 187, 145,  68, 254, 126,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	114,  15, 210,  18, 206, 160, 153,   6,  49, 224, 231,  61,  87,  27, 172,  12
	.byte	 49, 108,  16, 116, 175,  54, 151, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	246, 213, 220,  24, 102, 187, 253, 226,  92, 186, 252, 239,  90,  10, 184, 243
	.byte	 46,  57,  70, 109,  88,  22,   1,  53,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 10, 123,  57,  92, 248,  37, 134,  32, 183,  21,   7, 247,  28, 193, 145,  71
	.byte	 41,  27,  94,  89, 208, 224, 112, 172,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 52,  88, 205, 146, 124, 121, 230, 232, 224, 141,   6, 241,   8, 216, 189, 133
	.byte	 83, 106, 192,   0, 176, 163,  31,  20,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 89, 215,  29, 218, 105, 136,  82, 254,  13,  90,  36,  24,  86, 111, 182, 144
	.byte	 26, 120, 151, 132,   4, 195,  74, 211,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	116, 114, 212, 239,  41,   6,  10, 197, 115, 186, 187, 239, 132, 163, 167, 234
	.byte	174, 122, 217,  37,  56, 137,  33, 153,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	204,   7, 183, 168, 241, 191, 175, 204,  50, 152, 128,  63, 225, 155, 219,  60
	.byte	247, 208,  75,  23, 214, 222, 183,  25,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 21,  18, 183, 147, 100,  55,  10,  53,  97, 100, 191, 187, 196, 120, 202, 112
	.byte	 78, 166, 103, 247, 232, 250,  67, 149,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	146,  52, 205, 136, 118, 190, 223, 228, 179, 122, 145, 220, 158,  35,  43, 205
	.byte	  8, 226, 139,  90, 189,  32, 247,  53,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	169,   4, 136,  92, 135, 173, 242, 254,  85,   4, 164, 192,  84,  62, 120, 134
	.byte	198, 166,   2,  17,  74, 102,  30,  28,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 77,  95, 197, 153,  64, 170,  33, 236, 129,  94, 118,  64, 215, 216,  39,  13
	.byte	 74, 170, 158,  89, 148, 190,  44, 223,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 54, 111,  96, 244, 228, 152, 109,   7,  26,   9, 153, 251, 154, 128, 243, 101
	.byte	 98, 114, 196,  98, 169, 212, 148,  53,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 36,   7,   1, 235, 117, 234,  27, 253,  22,   9,  85, 198, 163, 206, 145,  29
	.byte	215,  46, 114, 199,  58,  67,  63, 164,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	248, 169, 200, 216,  73, 112, 218,  69,  62, 199, 159,  28, 206,   5, 254,  95
	.byte	253, 178, 175, 182, 215,  93,  80,  36,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	239,  61, 215, 210, 181,  26, 122, 131, 146,  23, 160, 241,  81, 196,  26, 145
	.byte	 11, 177,   8,   8,  34, 200, 201, 125,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	249, 138, 124, 227, 173,  52, 139,  69, 154,  38, 101,  96, 203,  89,  88, 185
	.byte	172,  50, 147,  17,  32, 202, 168, 216,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	153, 198,  18,  79,  51, 109, 189,  44,  53,  60, 159, 219, 172,  94,  47,  20
	.byte	231,  97,   8, 186, 173, 196,  85,  53,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 20, 166, 160, 206,  71, 108,  29,  86, 251, 123, 170,  15, 253, 239, 104, 160
	.byte	110, 200, 144, 125, 164,  50, 178, 103,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	166, 134, 128, 161,  95,  48, 242,  29, 172,  98, 146,  39, 127, 235, 241, 199
	.byte	241,  13,  90,  84, 127, 137, 252, 156,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143, 106,  21, 222, 124, 103, 167, 131, 146, 144, 236, 164,  50, 240, 107,  43
	.byte	  8, 116, 145, 186, 190, 179, 203, 198,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  6, 162, 145, 192, 144,  58, 230,  53, 242,  92,  65,  13, 132, 112, 163,  33
	.byte	141, 156, 116, 174,  98, 130,  62,  49,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 38, 221,  28, 112, 178, 238,  19,  48, 143, 213,  91, 242,  84, 177, 196, 168
	.byte	211, 196, 236, 206, 111, 136, 242, 136,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	143,  11,  10, 200, 226, 206, 236, 122, 178, 200, 177,  40, 174,  14,  27,  30
	.byte	131,  70,  97, 138, 215, 206, 232, 166,   0,   0,   0,   0,   0,   0,   0,   0
G$r_c:
	.byte	 46, 109,  32, 235, 252,  81,  50, 181, 191, 132,  88, 218, 223, 209,  81,  43
	.byte	 32, 187, 174, 221, 211,  82, 102,  35,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 21, 146, 111,  74, 208,  78, 209, 166, 203,  21,   9,  78,   9, 245, 173, 182
	.byte	105, 147,  53, 229, 120, 139, 114, 200,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	 92, 180, 234, 195,  37, 164,  22,  43,  26, 165, 164, 218, 221, 194, 148, 114
	.byte	189, 246,   9,  50,  97, 231,  29,  52,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	160,  38, 125, 176,  35,  78, 213, 186, 189,  95,  32, 172,  46, 121, 155, 182
	.byte	 23,  91,  40, 178,  11, 138, 204,   4,   0,   0,   0,   0,   0,   0,   0,   0
G$bitmask_c:
	.byte	 36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36
	.byte	 73, 146,  36,  73, 146,  36,  73, 146,   0,   0,   0,   0,   0,   0,   0,   0
G$bitmask_b:
	.byte	146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146
	.byte	 36,  73, 146,  36,  73, 146,  36,  73,   0,   0,   0,   0,   0,   0,   0,   0
G$bitmask_a:
	.byte	 73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73, 146,  36,  73
	.byte	146,  36,  73, 146,  36,  73, 146,  36,   0,   0,   0,   0,   0,   0,   0,   0
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
G$zero_mask:
	.byte	255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255
	.byte	  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.ident	"Jasmin Compiler 2026.03.1"
