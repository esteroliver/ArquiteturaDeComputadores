.text
main:
	addi $2, $0, 5
	syscall
	add $8, $2, $0
	
	addi $2, $0, 5
	syscall
	
	mul $4, $8, $2
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall