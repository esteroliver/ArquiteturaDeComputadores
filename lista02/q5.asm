.text
main:
	addi $2, $0, 5
	syscall
	addi $8, $2, 0
	
	addi $2, $0, 5
	syscall
	addi $9, $2, 0
	sll $9, $9, 1
	
	addi $2, $0, 5
	syscall
	addi $10, $2, 0
	sll $10, $10, 1
	add $10, $10, $2
	
	addi $11, $0, 6 # será utilizado para dividir a nota
	addi $12, $0, 60 # média para aprovação
	
	add $13, $8, $9
	add $13, $13, $10 # registrador 13 tem a soma de todas as notas
	
	div $13, $11 
	mflo $13 # média do aluno
	
	beq $13, $12, aprovado
	
	sub $14, $13, $12
	srl $14, $14, 31
	beq $14, $0, aprovado
	
	addi $4, $0, 'R'
	
	j fim
	
aprovado:
	addi $4, $0, 'A'

fim:
	addi $2, $0, 11
	syscall

	addi $2, $0, 10
	syscall