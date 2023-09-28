.text
main:
	addi $2, $0, 5
	syscall
	add $8, $2, $0
	
	addi $2, $0, 5
	syscall
	add $9, $2, $0
	
	addi $10, $0, 2
	
	addi $9, $9, 1
intervalo:
	beq $8, $9, fim
	div $8, $10
	mfhi $11
	beq $11, $0, output
	addi $8, $8, 1
	j intervalo
	
output:
	add $4, $8, $0
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $8, $8, 1
	j intervalo
fim:
	addi $2, $0, 10
	syscall
