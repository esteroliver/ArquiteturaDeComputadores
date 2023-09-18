.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # dia
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # m�s
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # ano
	
	#TESTAR SE � POSITIVO E DIFERENTE DE 0
	#comparando se o dia ou o m�s � igual a 0
	beq $8, $0, naovalido
	beq $9, $0, naovalido
	#pegando bit de sinal
	srl $11, $8, 31
	srl $12, $9, 31
	#se n�o for igual a 0, pula para naovalido
	bne $11, $0, naovalido 
	bne $12, $0, naovalido 
	
	#M�S MAIOR QUE 12
	addi $13, $0, 12
	sub $13, $13, $9
	srl $13, $13, 31
	bne $13, $0, naovalido
	
	#TESTAR SE OS DIAS DOS MESES � V�LIDO
	
	addi $20, $0, 2
	bne $20, $9, naoFev
	
	add $14, $0, 28
	sub $14, $14, $8
	srl $14, $14, 31
	bne $14, $0, naovalido
	# se $14 for positivo	
	addi $4, $0, 'S'
	j fim

naoFev:
	addi $14, $0, 8
	div $9, $14
	mflo $14 # quo(m�s/8)
	add $14, $9, $14 # m�s + quo(m�s/8)
	addi $15, $0, 1
	and $14, $14, $15 # comparando se o n�mero � impar ou par
	add $16, $0, 30
	add $14, $14, $16 # total de dias do m�s
	
	sub $14, $14, $8
	srl $14, $14, 31
	bne $14, $0, naovalido # se $8 > dias v�lidos, $14 = 1, e vai para o bloco naovalido
	
	# v�lido
	addi $4, $0, 'S'
	j fim
	
naovalido:
	addi $4, $0, 'N'
	j fim
	
fim:
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall