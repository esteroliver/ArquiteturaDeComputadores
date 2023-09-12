.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	sub $10, $8, $9 # subtrai $8 - $9
	srl $10, $10, 31 # se $8 > $9, $10 = 0. senao, $10 = 1 e $8 < $9
	
	addi $11, $0, 1
	
	beq $10, $11, men #if
	
	add $4, $0, $9 #else
	
	j fim #pula para o final, caso o else seja executado
	
men: # comandos do if
	add $4, $0, $8
	
fim:
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall