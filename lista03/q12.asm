.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $8, $8, -1
	
	addi $9, $0, 0
	
	addi $10, $0, 1
	
	addi $11, $0, 0
	
	add $4, $0, $0
	addi $2, $0, 1
	syscall
	
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	
laco:
	beq $8, $12, fim
	
	add $11, $9, $10
	
	add $9, $0, $10
	add $10, $0, $11
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $12, $12, 1
	
	j laco
	
fim:
	addi $2, $0, 10
	syscall