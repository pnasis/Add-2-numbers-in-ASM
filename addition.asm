.data  # Data segment 
msg: .ascii "The result is "

.text  # Code segment
# Load integers into registers
li $t0, 10
li $t1, 15

# Add integers
add $t2, $t0, $t1

# Print message
la $a0, msg #Argument to print string
li $v0, 4  #Set up print string syscall
syscall

# Print result
move $a0, $t2 #Copy register
li $v0, 1 #Set up print int syscall
syscall

# Exit
li $v0, 10 #Set up exit syscall
syscall
