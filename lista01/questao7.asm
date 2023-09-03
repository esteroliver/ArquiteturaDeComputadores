.text
main:
	addi $2, $0, 5
	syscall
	
	addi $8, $0, 10
	
	div $2, $8
	mfhi $9
	mflo $2
	div $2, $8
	mfhi $10
	mflo $2
	div $2, $8
	mfhi $11
	mflo $12
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	