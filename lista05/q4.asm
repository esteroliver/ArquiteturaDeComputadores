.text
main:
	lui $8, 0x1001
	addi $9, $0, 10
	addi $10, $0, 2
	addi $12, $0, 0
laco:
	addi $2, $0, 5
	syscall
	div $2, $10
	mfhi $11
	beq $11, $0, par
	addi $9, $9, -1
	bne $9, $0, laco
par:
	sw $2, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	addi $12, $12, 1
	bne $9, $0, laco
printquant:
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $13, $0, 4
	add $14, $0, $12
	mul $12, $12, $13
	sub $8, $8, $12
printnum:
	beq $14, $0, fim
	addi $14, $14, -1
	
	lw $4, 0($8)
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $8, $8, 4
	j printnum
fim:
	addi $2, $0, 10
	syscall
	