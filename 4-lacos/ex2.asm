.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2

blet_dest: 
	addi $8, $8, -1
	
	addi $10, $0, 10
	beq $8, $10, blet_dest
	addi $9, $0, 1
	slt $11, $8, $10
	beq $11, $9, blet_dest

# while (a <= b) a -= 1;