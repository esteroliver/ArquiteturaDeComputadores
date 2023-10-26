.text
main:
	addi $9, $0, 9
	add $11, $0, $0 # maior
	
	addi $2, $0, 5
	syscall
	add $10, $2, $0 # menor
laco:
	beq $9, $0, fim
	addi $9, $9, -1
	
	addi $2, $0, 5
	syscall
	
	slt $12, $2, $10 # if ($2 < $10) $12 = 1 else $12 = 0
	bne $12, $0, menor
	
	slt $12, $2, $11 # if ($2 < $11) $12 = 1 else $12 = 0
	beq $12, $0, maior
	
	j laco
menor:
	add $10, $2, $0
	j laco
maior:
	add $11, $2, $0
	j laco
fim:
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall