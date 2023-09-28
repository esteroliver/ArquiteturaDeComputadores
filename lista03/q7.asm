.text
main:
	addi $10, $0, 0

laco:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	beq $8, $0, fim
	
	slt $9, $0, $8
	bne $9, $0, soma
	j laco
soma:
	add $10, $10, $8
	j laco
fim:
	add $4, $0, $10
	addi $2, $0, 1
	syscall