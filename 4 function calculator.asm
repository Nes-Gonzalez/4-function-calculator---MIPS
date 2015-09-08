
.data
welcome: .asciiz "Welcome to the 4 function calculator \n 1 - Addition \n 2 - Subtraction \n 3 - Multiplication \n 4 - Division \n 9 - Exit "
enterNumber: .asciiz "Please Enter a Number: "
newline: .asciiz "\n"
sumOf: .asciiz "The sum of "
comma: .asciiz " , "
commaAnd: .asciiz " ,and "
is: .asciiz " is "
yourNumber: .asciiz "Your number was: "
difference: .asciiz "Difference of "
product: .asciiz "Product of "
quotient: .asciiz "Quotent of "
remainder: .asciiz "with remainder: "
error: .asciiz "not a valid number, exiting... "

.text
.globl main
main:

loop:

	#printing newline
	li $v0,4
	la $a0,newline
	syscall

	#printing welcome
	li $v0,4
	la $a0,welcome
	syscall

	#printing newline
	li $v0,4
	la $a0,newline
	syscall

	#get int from user
	li $v0,5
	syscall

	#move number from user out of v0 to s0
	move $s0, $v0

	#branches
	beq $s0,9,exit
	beq $s0, 1, addition
	beq $s0, 2, subtraction
	beq $s0, 3, multiplication
	beq $s0, 4, division
	j errorExit

addition:

	#printing Enter Number
	li $v0,4
	la $a0,enterNumber
	syscall

	#get int from user
	li $v0,5
	syscall

	#move number from user out of v0 to temp0
	move $t0, $v0


	#printing Enter Number
	li $v0,4
	la $a0,enterNumber
	syscall

	#get int from user
	li $v0,5
	syscall

	#move number from user out of v0 to temp1
	move $t1, $v0

	#printing Enter Number
	li $v0,4
	la $a0,enterNumber
	syscall


	#get int from user
	li $v0,5
	syscall

	#move number from user out of v0 to temp2
	move $t2, $v0

	#printing Sum Of
	li $v0,4
	la $a0,sumOf
	syscall

	#print user number1
	li $v0,1
	move $a0,$t0
	syscall

	#printing comma
	li $v0,4
	la $a0,comma
	syscall

	#print user number2
	li $v0,1
	move $a0,$t1
	syscall

	#printing commaAnd
	li $v0,4
	la $a0,commaAnd
	syscall

	#print user number3
	li $v0,1
	move $a0,$t2
	syscall

	#printing is
	li $v0,4
	la $a0,is
	syscall

	#perform Addition
	add $t3,$t0,$t1
	add $t3,$t3,$t2

	#print user sum of numbers
	li $v0,1
	move $a0,$t3
	syscall

	#printing newline
	li $v0,4
	la $a0,newline
	syscall

	j loop

subtraction:


	#printing Enter Number
	li $v0,4
	la $a0,enterNumber
	syscall

	#get int from user
	li $v0,5
	syscall

	#move number from user out of v0 to temp0
	move $t0, $v0


	#printing Enter Number
	li $v0,4
	la $a0,enterNumber
	syscall

	#get int from user
	li $v0,5
	syscall

	#move number from user out of v0 to temp1
	move $t1, $v0

	#printing Enter Number
	li $v0,4
	la $a0,enterNumber
	syscall

	#get int from user
	li $v0,5
	syscall

	#move number from user out of v0 to temp2
	move $t2, $v0

	#printing Difference String
	li $v0,4
	la $a0,difference
	syscall

	#print user number1
	li $v0,1
	move $a0,$t0
	syscall

	#printing comma
	li $v0,4
	la $a0,comma
	syscall

	#print user number2
	li $v0,1
	move $a0,$t1
	syscall

	#printing commaAnd
	li $v0,4
	la $a0,commaAnd
	syscall

	#print user number3
	li $v0,1
	move $a0,$t2
	syscall

	#printing is
	li $v0,4
	la $a0,is
	syscall

	#perform subtraction and print
	neg $t4,$t1
	neg $t5,$t2
	add $t3,$t0,$t4
	add $t3,$t3,$t5
	li $v0,1
	move $a0,$t3
	syscall

	#printing newline
	li $v0,4
	la $a0,newline
	syscall

	j loop

multiplication:


	#printing Enter Number
	li $v0,4
	la $a0,enterNumber
	syscall

	#get int from user
	li $v0,5
	syscall

	#move number from user out of v0 to temp0
	move $t0, $v0


	#printing Enter Number
	li $v0,4
	la $a0,enterNumber
	syscall

	#get int from user
	li $v0,5
	syscall

	#move number from user out of v0 to temp1
	move $t1, $v0

	#printing Enter Number
	li $v0,4
	la $a0,enterNumber
	syscall

	#get int from user
	li $v0,5
	syscall

	#move number from user out of v0 to temp2
	move $t2, $v0

	#printing Product String
	li $v0,4
	la $a0,product
	syscall

	#print user number1
	li $v0,1
	move $a0,$t0
	syscall

	#printing comma
	li $v0,4
	la $a0,comma
	syscall

	#print user number2
	li $v0,1
	move $a0,$t1
	syscall

	#printing commaAnd
	li $v0,4
	la $a0,commaAnd
	syscall

	#print user number3
	li $v0,1
	move $a0,$t2
	syscall

	#printing is
	li $v0,4
	la $a0,is
	syscall

	#perform multiplication and print
	mul $t3,$t0,$t1
	mul $t3,$t3,$t2
	li $v0,1
	move $a0,$t3
	syscall

	#printing newline
	li $v0,4
	la $a0,newline
	syscall

	j loop

division:


	#printing Enter Number
	li $v0,4
	la $a0,enterNumber
	syscall

	#get int from user
	li $v0,5
	syscall

	#move number from user out of v0 to temp0
	move $t0, $v0


	#printing Enter Number
	li $v0,4
	la $a0,enterNumber
	syscall

	#get int from user
	li $v0,5
	syscall

	#move number from user out of v0 to temp1
	move $t1, $v0

	#printing Quotient String
	li $v0,4
	la $a0,quotient
	syscall

	#print user number1
	li $v0,1
	move $a0,$t0
	syscall

	#printing comma
	li $v0,4
	la $a0,comma
	syscall

	#print user number2
	li $v0,1
	move $a0,$t1
	syscall

	#printing is
	li $v0,4
	la $a0,is
	syscall

	#perform division and print
	div $t0,$t1
	mflo $t6
	mfhi $t7

	#printing lo
	li $v0,1
	move $a0,$t6
	syscall

	#printing newline
	li $v0,4
	la $a0,newline
	syscall

	#printing Remainder String
	li $v0,4
	la $a0,remainder
	syscall

	#printing hi
	li $v0,1
	move $a0,$t7
	syscall

	#printing newline
	li $v0,4
	la $a0,newline
	syscall

	j loop

exit:
	#exit sequence
	li $v0, 10
	syscall

errorExit:
	#printing error message
	li $v0,4
	la $a0,error
	syscall

	#exit sequence
	li $v0, 10
	syscall
