.text
main:
	addi $9, $0, 0
	addi $8, $0, 0
	
laco:
	addi $2, $0, 5
	syscall
	add $10, $2, $0
	beq $10, $0, fim
	
	slt $11, $9, $10
	bne $11, $0, maior
	
	slt $11, $10, $8
	bne $11, $0, menor
	
	j laco
maior:	
	add $9, $0, $10
	j laco
	
menor: 
	add $8, $0, $10
	j laco
	
fim:
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall