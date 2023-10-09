.text
main:
	addi $8, $0, 999
	addi $9, $0, 999
	
dados:
	addi $10, $0, 10 # vamos precisar desse valor com frequência
	addi $11, $0, 10000 # i
	addi $12, $0, 1 # n
	addi $13, $0, 10 # contador
	addi $14, $0, 0 # num_invertido
	mul $15, $8, $9 # num
	
	# ALGORITMO PARA PEGAR NÚMERO INVERTIDO
	# while (i > 0){
		# num_invertido += ((num%contador) * i) / n;
		# num -= num%contador;
		# contador *= 10;
		# n *= 10;
		# i = i/10;
	# }
laco:
	beq $11, $0, fim_laco
	
	div $15, $13
	mfhi $17
	sub $15, $15, $17
	mul $17, $17, $11
	div $17, $12
	mflo $17
	add $14, $14, $17
	
	mul $13, $13, $10
	mul $12, $12, $10
	div $11, $10
	mflo $11
	
	j laco
fim_laco:
	mul $15, $8, $9
	beq $14, $15, palindromos
	addi $8, $8, -1
	j dados
palindromos:
	add $4, $14, $0
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
