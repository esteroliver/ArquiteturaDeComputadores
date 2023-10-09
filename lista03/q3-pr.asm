.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $8, $8, 1
	addi $9, $0, 1
	add $10, $0, 1
	
laco1:
	slt $11, $10, $8
	add $12, $10, $0
	bne $11, $0, laco2
	beq $11, $0, fim
laco2:
	beq $12, $0, laco3
	addi $12, $12, -1
	add $4, $9, $0
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $9, $9, 1
	j laco2
laco3:
	addi $10, $10, 1
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j laco1
fim:
	addi $2, $0, 10
	syscall
