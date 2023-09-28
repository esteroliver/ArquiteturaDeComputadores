.text
main:
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	addi $8, $0, 1
	
teste:
	beq $10, $8, fim
	div $8, $9
	mfhi $11
	beq $11, $0, output
	addi $8, $8, 1
	j teste
output:
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $8, $8, 1
	j teste
fim:
	addi $2, $0, 10
	syscall