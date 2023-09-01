.text 
main:
	addi $2, $0, 5
	syscall
	
	add $8, $2, $0
	addi $9, $0, 10
	
	div $8, $9
	mfhi $10
	mflo $8
	
	div $8, $9
	mfhi $11
	
	add $4, $10, $11
	mflo $12
	add $4, $4, $12
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall