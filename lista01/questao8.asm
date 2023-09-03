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
	
	addi $11, $0, 60
	
	mul $8, $8, $11
	mul $8, $8, $11
	add $10, $10, $8
	
	mul $9, $9, $11
	add $10, $10, $9
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall 
	
	