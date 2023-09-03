.text
main:
	addi $2, $0, 5
	syscall
	
	addi $8, $0, 10
	
	div $2, $8
	mfhi $9
	mflo $10
	div $10, $8
	mfhi $11
	mflo $12
	
	add $4, $11, $12
	add $4, $4, $9
	addi $2, $0, 1
	syscall 