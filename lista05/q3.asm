.text
main:
	lui $8, 0x1001
	addi $9, $0, 8
	
laco:
	beq $9, $0, continue
	addi $2, $0, 5
	syscall
	sw $2, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j laco
continue:
	addi $2, $0, 5
	syscall
	add $10, $2, $0 # x
	add $24, $0, $10
	
	addi $2, $0, 5
	syscall
	add $11, $2, $0 # y
	
	
	addi $8, $8, -32
lacox:
	beq $10, $0, fimx
	
	addi $8, $8, 4
	
	addi $10, $10, -1
	j lacox
fimx:
	lw $10, 0($8)
	addi $12, $0, 4
	mul $13, $24, $12
	sub $8, $8, $13
lacoy:
	beq $11, $0, fimy
	
	addi $8, $8, 4
	
	addi $11, $11, -1
	j lacoy
fimy:
	lw $11, 0($8)
	
fim:
	add $4, $11, $10
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall