.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	add $9, $0, 1 # valor para comparar o sinal
	srl $10, $8, 31 # pegando o valor do bit de sinal do $8
	
	beq $9, $10, negt
	
	sll $4, $8, 1
	
	j fim
	
negt:
	mul $4, $8, $8
	
fim:
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall 