.text
main:
	addi $8, $0, 999
	addi $9, $0, 999
	
laco:
	mul $10, $8, $9
	addi $11, $0, 0
	addi $9, $9, -1
	
inverter:
	slt $14, $10, $0
	bne $14, $0, final
	addi $12, $0, 10
	div $10, $12
	mfhi $13
	mul $11, $11, $12
	add $11, $11, $13
	mflo $10
	j inverter
final:
	beq $11, $10, fim
	addi $15, $15, 1
	j laco
fim:
	add $4, $11, $0
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall