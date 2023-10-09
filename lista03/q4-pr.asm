.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # casos de teste
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # n
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # m
	
	
laco:
	beq $8, $0, fim
	addi $8, $8, -1
	
	addi $2, $0, 5
	syscall
	add $11, $0, $2 # x
	
	addi $2, $0, 5
	syscall
	add $12, $0, $2 # y
	
	# verificando igualdade
	beq $11, $9, iguais
	beq $12, $10, iguais
	
	slt $13, $11, $9 # verificando se x é menor que n
	slt $14, $12, $10 # verificando se y é menor que m
	
	bne $13, $0, x_menor
	beq $13, $0, x_maior
iguais:
	# DV
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'V'
	addi $2, $0, 11
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j laco
x_menor:
	bne $14, $0, y_menor
	# NO
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall	
	j laco
y_menor: 
	# SO
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j laco
x_maior:
	beq $14, $0, y_maior
	# SE
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'E'
	addi $2, $0, 11
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j laco
y_maior:
	# NE
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'E'
	addi $2, $0, 11
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j laco
fim:
	addi $2, $0, 10
	syscall