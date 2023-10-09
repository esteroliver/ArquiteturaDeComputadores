.text
main:
	addi $2, $0, 5
	syscall
	addi $8, $2, 0 # n1
	
	addi $2, $0, 5
	syscall
	addi $9, $2, 0 # n2
	addi $9, $9, 1
	
	addi $10, $0, 0 # quantidade de números primos
	
inicio:
	add $11, $0, $0
	add $12, $0, $0
	beq $8, $9, fim # se n1 == n2, vá para o fim
laco:	
	addi $11, $11, 1
	slt $14, $8, $11
	bne $14, $0, acabou
	div $8, $11
	mfhi $13
	beq $13, $0, divisivel
	j laco
	 
divisivel:
	addi $12, $12, 1
	j laco
acabou: 
	addi $15, $0, 2
	beq $12, $15, primo
	addi $8, $8, 1
	j inicio
primo:
	addi $10, $10, 1
	addi $8, $8, 1
	j inicio
fim: 
	add $4, $10, $0
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall