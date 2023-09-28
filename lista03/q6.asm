.text
main:
	addi $9, $0, 0
	
laco:
	addi $2, $0, 5
	syscall
	
	add $8, $0, $2
	slt $11, $8, $0
	bne $11, $0, fim
	add $9, $9, $8
	
	j laco
fim:
	add $4, $0, $9
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall