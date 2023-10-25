.data
	.word 1 0 5 -2 -5 7
.text
main:
	lui $8, 0x1001
	#B
	lw $9, 0($8)
	add $10, $0, $9
	lw $9, 4($8)
	add $10, $10, $9
	lw $9, 20($8)
	add $10, $10, $9
	
	#C
	addi $10, $0, 4
	sw $10, 16($8)
	
	#D
	addi $11, $0, 6
	
laco:
	beq $11, $0, fim
	addi $11, $11, -1
	
	lw $4, 0($8)
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $8, $8, 4
	
	j laco
fim: 
	addi $2, $0, 10
	syscall