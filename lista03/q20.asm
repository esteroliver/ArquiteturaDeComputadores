# Questão 20
.text
main:
	addi $15, $0, 0 # picos = 0
	addi $2, $0, 5
	syscall
	addi $8, $2, -2 # quantidade de dados - 2
	
	addi $2, $0, 5 # primeiro dado
	syscall
	add $9, $0, $2
	add $24, $0, $2
	
	addi $2, $0, 5 # segundo dado
	syscall
	add $10, $0, $2
	add $25, $0, $2
loop:
	beq $8, $0, final1
	addi $8, $8, -1
	
	addi $2, $0, 5 # próximo dado
	syscall
	add $11, $2, $0
	
	# pico positivo : $9 < $10 > $11
	#		  $10 > $9 e $10 > $11
	slt $12, $9, $10
	slt $13, $11, $10
	and $14, $12, $13
	bne $0, $14, pico
	
	#trocando janela
	add $9, $0, $10
	add $10, $0, $11
	
	j loop
pico:
	addi $15, $15, 1
	
	#trocando janela
	add $9, $0, $10
	add $10, $0, $11
	
	j loop
final1:
	slt $12, $9, $10
	slt $13, $24, $10
	and $14, $12, $13
	bne $0, $14, penultimo_pico
	j final2
penultimo_pico:
	addi $15, $15, 1
final2: 
	slt $12, $10, $24
	slt $13, $25, $24
	and $14, $12, $13
	bne $0, $14, ultimo_pico
	j fim
ultimo_pico:
	addi $15, $15, 1
fim:
	add $4, $0, $15
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall