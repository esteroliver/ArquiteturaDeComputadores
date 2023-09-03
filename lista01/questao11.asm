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
	mflo $11
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	add $4, $0, $10
	syscall
	
	add $4, $0, $11
	syscall
	
	addi $2, $0, 10
	syscall