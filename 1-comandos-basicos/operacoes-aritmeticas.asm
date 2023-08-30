.text 
main: 
addi $8, $0, 5 # $8 < $0 + 5
addi $10, $0, 8 # $10 < $0 + 8
add $9, $8, $10 # $9 < 5 + 8 ($8 + $10)

sub $11, $9, $8 # $11 < 13 - 5 ($9 - $8)

mul $10, $8, $9

div $10, $11
mfhi $12 # mover o resto da divisão para o registrador 12
mflo $13 # mover o quoficiente da divisão para o registrador 13