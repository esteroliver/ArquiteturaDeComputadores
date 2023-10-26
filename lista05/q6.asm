.text
main:
	lui $8, 0x1001
	addi $9, $0, 6
	addi $10, $0, 2
	
verificarpar:
	beq $9, $0, continue
	addi $2, $0, 5
	syscall
	
	div $2, $10
	mfhi $11
	beq $11, $0, par
	j verificarpar
par:
	addi $9, $9, -1
	sw $2, 0($8)
	addi $8, $8, 4
	j verificarpar
continue:
	 addi $9, $0, 6
	 addi $8, $8, -4
print:
	beq $9, $0, fim
	addi $9, $9, -1
	
	lw $4, 0($8)
	addi $8, $8, -4
	addi $2, $0, 1
	syscall
	
	addi $4, $0 '\n'
	addi $2, $0, 11
	syscall
	
	j print
fim:
	addi $2, $0, 10
	syscall