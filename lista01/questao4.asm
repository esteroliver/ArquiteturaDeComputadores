.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	
	sll $8, $8, 1
	sll $2, $2, 1
	add $2, $2, $2
	
	addi $9, $0, 5
	add $10, $8, $2
	div $10, $9
	mflo $4
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall