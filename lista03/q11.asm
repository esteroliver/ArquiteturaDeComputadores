.text
main:
	addi $8, $0, 11
	addi $9, $0, 13
	addi $10, $0, 17
	
	addi $2, $0, 5
	syscall
	add $11, $0, $2
laco:	
	div $11, $8
	mfhi $12
	beq $12, $0, divisivel
	
	div $11, $9
	mfhi $12
	beq $12, $0, divisivel
	
	div $11, $10
	mfhi $12
	beq $12, $0, divisivel
	
	addi $11, $11, 1
	j laco
divisivel:
	add $4, $0, $11
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall