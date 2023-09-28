.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
laco:	
	beq $8, $9, fim
	sub $10, $9, $8
	
	add $9, $0, $8
	add $8, $0, $10
	j laco
fim:
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall