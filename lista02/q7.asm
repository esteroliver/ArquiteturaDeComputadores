.text
main:
	addi $2, $0, 5
	syscall
	addi $8, $2, 0
	
	addi $9, $0, 400
	div $8, $9
	mfhi $10
	beq $10, $0, bis
	
	addi $9, $0, 100
	div $8, $9
	mfhi $10
	beq $10, $0, naobis
	
	addi $9, $0, 4
	div $8, $9
	mfhi $10
	beq $10, $0, bis
	
	j naobis
bis:
	addi $4, $0, 'S'
	j fim

naobis:
	addi $4, $0, 'N'
	j fim

fim:
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall