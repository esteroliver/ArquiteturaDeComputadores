.text
main:
	addi $2, $0, 12
	syscall
	
	addi $8, $2, -32
	
	add $4, $0, '\n'
	
	addi $2, $0, 11
	syscall
	
	add $4, $0, $8
	
	syscall
	
	addi $2, $0, 10
	syscall