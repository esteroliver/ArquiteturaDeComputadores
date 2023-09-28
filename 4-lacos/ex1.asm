.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $10, $0, 10
teste:
	beq $10, $8, rotulo
	slt $11, $8, $10
	beq $11, $0, sai
rotulo:
	addi $8, $0, 1
	j teste
sai:
	addi $2, $0, 10
	syscall
# while (a <= b) a += 1;