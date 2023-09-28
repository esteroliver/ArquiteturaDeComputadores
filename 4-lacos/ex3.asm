.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2

bgt_dest:
	addi $8, $8, -1

	addi $9, $0, 1
	addi $10, $0, 10

	slt $11, $10, $8
	beq $11, $9, bgt_dest
# while (a < b) b -= 1;