.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	add $13, $0, $8
	sll $8, $8, 1
	add $8, $8, $13
	
	add $12, $0, $9
	sll $9, $9, 3 
	add $9, $9, $12
	
	add $11, $0, $10
	sll $10, $10, 4
	sub $10, $10, $11
	
	add $4, $10, $9
	add $4, $4, $8
	addi $14, $0, 27
	
	div $4, $14
	mflo $4
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall