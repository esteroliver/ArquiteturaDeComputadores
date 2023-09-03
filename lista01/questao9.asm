.text
main:
	addi $2, $0, 5
	syscall
	
	addi $8, $0, 60
	
	div $2, $8
	mflo $2
	mfhi $9 #segundos
	div $2, $8
	mfhi $10 #minutos
	mflo $11 #horas
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall