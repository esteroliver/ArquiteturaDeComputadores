.text
main:
	lui $8, 0x1001
	addi $9, $0, 10
laco:
	beq $9, $0, fim
	addi $9, $9, -1
	
	addi $2, $0, 5
	syscall
	sw $2, 0($8)
	addi $8, $8, 4

	j laco	
fim:
	addi $9, $0, 10
laco2:
	addi $8, $8, -4
	beq $9, $0, fim2
	addi $9, $9, -1
	
	lw $4, 0($8)
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	j laco2
fim2:
	addi $2, $0, 10
	syscall