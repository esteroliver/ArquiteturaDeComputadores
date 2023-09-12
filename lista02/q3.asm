.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	sub $10, $8, $9 # Se $8 > $9, $10 = 0. Se $9 > $8, $10 = 1
	srl $10, $10, 31 # bit de sinal
	addi $11, $0, 1 # registrador de comparação
	
	beq $10, $11, if 
	
	add $12, $0, $8
	sub $4, $8, $9
	
	j output
if: 
	add $12, $0, $9
	sub $4, $9, $8

output: 
	addi $2, $0, 1 # mostrar a diferença dos valores
	syscall
	
	addi $4, $0, '\n'
	
	addi $2, $0, 11
	syscall
	
	add $4, $0, $12
	
	addi $2, $0, 1 # mostrar o maior
	syscall
	
	addi $2, $0, 10
	syscall