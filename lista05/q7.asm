.text
main:
	lui $8, 0x1001
	addi $9, $0, 10
	add $10, $0, $0 # quant negativos
	add $11, $0, $0 # soma positivos
	
laco:
	beq $9, $0, continue
	addi $9, $9, -1
	
	addi $2, $0, 5
	syscall
	sw $2, 0($8)
	addi $8, $8, 4

	j laco
continue:
	addi $8, $8, -40
	addi $9, $0, 10
verificar:
	beq $9, $0, fim
	addi $9, $9, -1

	lw $12, 0($8)
	slt $13, $12, $0
	bne $13, $0, negativo
	add $11, $11, $12
	
	addi $8, $8, 4
	
	j verificar
negativo:
	addi $10, $10, 1
	
	addi $8, $8, 4
	
	j verificar
fim:
	add $4, $10, $0
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $11, $0
	addi $2, $0, 1
	syscall