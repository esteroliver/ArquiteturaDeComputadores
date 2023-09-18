.text
main:
	addi $2, $0, 5
	syscall
	addi $8, $2, 0 #idade
	
	addi $2, $0, 5
	syscall
	addi $9, $2, 0 #tempo de trabalho
	
	addi $10, $0, 65 #idade mínima
	addi $11, $0, 40 #tempo mínimo
	
	beq $8, $10, aposentado
	sub $12, $8, $10
	srl $12, $12, 31
	beq $12, $0, aposentado #verificando se é igual ou maior do que 65

	beq $9, $11, aposentado
	sub $12, $9, $11
	srl $12, $12, 31
	beq $12, $0, aposentado #verificando se é igual ou maior do que 40
	
	#verificando se tem pelo menos 60 e mais de 35
	
	addi $13, $0, 60
	addi $14, $0, 35
	
	beq $13, $8, aposentado2condicoes
	sub $12, $8, $13
	srl $12, $12, 31
	beq $12, $0, aposentado2condicoes
	
	addi $4, $0, 'N'
	
	j fim

aposentado2condicoes:
	sub $12, $9, $14
	srl $12, $12, 31
	beq $12, $0, aposentado
	
	addi $4, $0, 'N'
	
	j fim
	
aposentado:
	addi $4, $0, 'S'
	
fim:
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall