.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $9, $0, 0
	
	addi $10, $0, 0
	addi $11, $0, 0
	
laco:
	beq $9, $8, fim
	addi $9, $9, 1
	
	addi $2, $0, 5
	syscall
	add $12, $0, $2
	
	slt $13, $10, $12
	bne $13, $0, maior
	j laco
maior:
	add $10, $0, $12
	addi $11, $11, 1
	j laco
fim:
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall