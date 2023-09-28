.text
main:
	addi $10, $0, 10
	addi $9, $0, 0
	addi $8, $0, 0
	
leitura:
	beq $9, $10, fim
	addi $2, $0, 5
	syscall
	add $8, $8, $2
	addi $9, $9, 1
	j leitura
fim:
	add $4, $8, $0
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	