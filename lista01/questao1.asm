.text
main:
	addi $2, $0, 5
	syscall
	
	add $4, $0, $2
	sll $4, $4, 1
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall