.text
main:
	addi $8, $0, 6
	lui $9, 0x1001
	
laco:
	beq $8, $0, print
	addi $8, $8, -1
	
	addi $2, $0, 5
	syscall
	sw $2, 0($9)
	addi $9, $9, 4
	
	j laco
print:
	addi $9, $9, -24
	addi $8, $0, 6
lacopr:
	beq $8, $0, fim
	addi $8, $8, -1
	
	lw $4, 0($9)
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $9, $9, 4
	
	j lacopr
fim:
	addi $2, $0, 10
	syscall