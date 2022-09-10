#Tarun Chandrasekaran

#1 SECTION : INTRO :COMPILES

.data

	#get all the global messages and variables ready for use in the program
	zprint: .asciiz "0123456789"
	INTMSG: .asciiz "\nTic Tac Toe Arcade\n"
	CMOVE: .asciiz "\nComputer’s move\n\n"
	NUMIN: .asciiz "\nEnter number of square:"
	SMALLNUM: .asciiz "\nNumber too small\n"
	LARGENUM: .asciiz "\nNumber too large\n"
	GTIE: .asciiz "\nTie Game\n"
	WINMSG: .asciiz "\nWinner: "
	HORIZ: .asciiz "\n-----\n"
	VERT: .byte '|'
	X: .byte 'X'
	O: .byte 'O'
	NEWLINE: .byte '\n'

	.text
	.globl main

main:
	li  $v0,4 			
	la $a0, INTMSG 		#load and print intro message
	syscall				



#2 SECTION: PRINT BOARD: COMPILES

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal printBoard			# load and call printBoard function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		









	
#3 SECTION: GET THE COMPUTER FIRST SQUARE: COMPILES
	
	li $v0, 4			# Print computer move message
	la $a0, CMOVE		
	syscall	
					
	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			# call computer move function and add X to empty space
	jal MOVN			
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	lb $t0, X			
	sb $t0, 0($v0)			


#4 SECTION: PRINT BOARD: COMPILES

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal printBoard			# load and call printBoard function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		


#5 SECTION: GET THE 1ST HUMAN move: COMPILES
	
	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal MOVH			# call human move function and add O to empty space
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	lb $t1, O			
	sb $t1, 0($v0)			


#6 SECTION: PRINT THE BOARD: COMPILES

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal printBoard			# load and call printBoard function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		


#7 SECTION: GET THE COMPUTERS SECOND TIME: 
	
	li $v0, 4			
	la $a0, CMOVE		# Print computer move message
	syscall				
	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			# call computer move function and add X to empty space
	jal MOVN			
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	lb $t0, X			
	sb $t0, 0($v0)			


#8 SECTION: PRINT THE BOARD

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal printBoard			# load and call printBoard function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		



#9 SECTION: GET 2ND HUMAN move

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal MOVH			# call human move function and add O to empty space
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	lb $t1, O			
	sb $t1, 0($v0)			


#10 SECTION: PRINT THE BOARD

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal printBoard			# load and call printBoard function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		



#11 SECTION: GET 3ND COMPUTER move

	li $v0, 4			
	la $a0, CMOVE		# Print computer move message
	syscall				
	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			# call computer move function and add X to empty space
	jal MOVN			
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	lb $t0, X			
	sb $t0, 0($v0)			


#12 SECTION: PRINT THE BOARD

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal printBoard			# load and call printBoard function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		

#13 SECTION: CHECK FOR WINNER

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal WIN			#jump to WIN function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	bnez $v0, W			#when the value is zero there is a winner

#14 SECTION: GET 3rd HUMAN move

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal MOVH			# call human move function and add O to empty space
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	lb $t1, O			
	sb $t1, 0($v0)			

#15 SECTION: PRINT THE BOARD

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal printBoard			# load and call printBoard function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		


#16 SECTION: CHECK FOR WINNER

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal WIN			#jump to WIN function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	bnez $v0, W			#when the value is zero there is a winner

#17 SECTION: GET COMPUTER 4TH TIME

	li $v0, 4			
	la $a0, CMOVE		# Print computer move message
	syscall				
	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			# call computer move function and add X to empty space
	jal MOVN			
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	lb $t0, X			
	sb $t0, 0($v0)			

#18 SECTION: PRINT THE BOARD

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal printBoard			# load and call printBoard function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		






#19 SECTION: CHECK FOR WINNER

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal WIN			#jump to WIN function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	bnez $v0, W			#when the value is zero there is a winner

#20 SECTION: GET 4TH HUMAN move

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)				
	jal MOVH			# call human move function and add O to empty space
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4			
	lb $t1, O			
	sb $t1, 0($v0)			

#21 SECTION: PRINT THE BOARD

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal printBoard			# load and call printBoard function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		

#22 SECTION: CHECK FOR WINNER

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal WIN			#jump to WIN function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	bnez $v0, W			#when the value is zero there is a winner

#23 SECTION: GET COMPUTER 5TH TIME

	li $v0, 4			
	la $a0, CMOVE		# Print computer move message
	syscall				
	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			# call computer move function and add X to empty space
	jal MOVN			
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	lb $t0, X			
	sb $t0, 0($v0)			

#24 SECTION: PRINT THE BOARD

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal printBoard			# load and call printBoard function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		

#25 SECTION: CHECK FOR WINNER

	addiu $sp, $sp, -4		
	sw $ra, 4($sp)			
	jal WIN			#jump to WIN function
	lw $ra, 4($sp)			
	addiu $sp, $sp, 4		
	bnez $v0, W			#when the value is zero there is a winner

#26 SECTION: TIE GAME

T:	li $v0, 4			
	la $a0, GTIE			# tie message
	syscall
	li $v0, 10 
syscall
					# stop game

#27 SECTION: WIN GAME

W:
	move $t0, $v0			#save X or O if they won
	li  $v0, 4			
	la $a0, WINMSG			#winner message
	syscall
	move $a0, $t0			
	li $v0, 11			#print winning character
	syscall
	lb $a0, NEWLINE			
	syscall
	
	jr $ra


#28 SECTION: PRINT BOARD
printBoard:
	la $t0, zprint			
	lb $a0, 1($t0)			#load 1st square
	li $v0, 11
	syscall
	lb $a0, VERT			#print bar
	syscall
	lb $a0, 2($t0)			#load 2nd square
	syscall
	lb $a0, VERT			#print bar
	syscall
		lb $a0, 3($t0)		#load 3rd square
	syscall
	la $a0, HORIZ			#print dashes
	li $v0, 4
	syscall
	lb $a0, 4($t0)			#load 4th square
	li $v0, 11
	syscall
	lb $a0, VERT			#print bar
	syscall
	lb $a0, 5($t0)			#load 5th square
	syscall
	lb $a0, VERT			#print bar
	syscall
	lb $a0, 6($t0)			#load 6th square
	syscall
	la $a0, HORIZ			#print dashes
	li $v0, 4
	syscall
	lb $a0, 7($t0)			#load 7th square
	li $v0, 11
	syscall
	lb $a0, VERT			#print bar
	syscall
	lb $a0, 8($t0)			#load 8th square
	syscall
	lb $a0, VERT			#print bar
	syscall
		
	lb $a0, 9($t0)			#load 9th square
	syscall
	lb $a0, NEWLINE		#print new line
	syscall
	
	jr $ra

#29 SECTION: COMPUTER CHOOSING NEXT AVAIlaBLE SQUARE
GETN:
	la $t0, zprint			#board address get
MOVN:	addiu $t0, $t0, 1
	lb $t2, 0($t0)			#load byte
	lb $t1, X
	beq $t2, $t1, MOVN		#if X, move to another square
	lb $t1, O
	beq $t2, $t1, MOVN		#if O, move to another square
	move $v0, $t0
	
	jr $ra

#30 SECTION: HUMAN move GET NUMBER FROM [1,9] 

MOVH:
	la $a0, NUMIN
	li $v0, 4
	syscall
	li $v0, 5			#read in integer
	syscall
	li $t1, 1
	blt $v0, $t1, lessThanOne	#check if less than 1
	li $t1, 9
	bgt $v0, $t1, grThanNine	#check if greater than 9
	la $t0, zprint
	add $a0, $v0, $t0
	addiu $sp, $sp, -4
	sw $ra, 4($sp)
	jal SQOK
	lw $ra, 4($sp)
	addiu $sp, $sp, 4
	beqz $v0, MOVH
	jr $ra


	
lessThanOne:
	la $a0, SMALLNUM		#if number smaller than one, show this message
	li $v0, 4
	syscall
	j MOVH
grThanNine:
	la $a0, LARGENUM		#if number larger than nine, show this message
	li $v0, 4
	syscall
	j MOVH
#31 SECTION: check if empty

SQOK:
	li $v0, 0		#see if a section is filled
	lb $t0, X
	lb $t1, 0($a0)
	beq $t0, $t1, NOK	#if X
	lb $t0, O
	beq $t0, $t1, NOK	#if O
	move $v0, $a0

NOK:
	 jr $ra

#32 SECTION: check winner

WIN:
	addiu $sp, $sp, -4
	sw $ra, 4($sp)
	jal ROW1		#check rows
	lw $ra, 4($sp)
	addiu $sp, $sp, 4
	bnez $v0, WINNER	#if not equal to zero, there is a winner
	addiu $sp, $sp, -4
	sw $ra, 4($sp)
	jal COL1		#check columns
	lw $ra, 4($sp)
	addiu $sp, $sp, 4
	bnez $v0, WINNER	#if not equal to zero, there is a winner
	addiu $sp, $sp, -4
	sw $ra, 4($sp)
	jal DIAG		#check diagonals
	lw $ra, 4($sp)
	addiu $sp, $sp, 4

WINNER:
	jr $ra



#33 SECTION: CHECK ROW 

ROW1:
	addiu $sp, $sp, -4
	sw $ra, 4($sp)
	li $a0, 1		#check row 1
	jal ROW3		#check functions
	bnez $v0, ROW2	#if not zero, winner
	li $a0, 2		#check row 2
	jal ROW3
	bnez $v0, ROW2
	li $a0, 3		#check row 3
	jal ROW3
	bnez $v0, ROW2
	li $v0, 0		#no row winners
ROW2:
	lw $ra, 4($sp)
	addiu $sp, $sp, 4
	jr $ra

#34 SECTION: CHECK COLUMNS

COL1:
	addiu $sp, $sp, -4
	sw $ra, 4($sp)
	li $a0, 1		#check column 1
	jal COL3		#check function
	bnez $v0, COL2	#if not zero, winner
	li $a0, 2		#check column 2
	jal COL3
	bnez $v0, COL2
	li $a0, 3		#check column 3
	jal COL3
	bnez $v0, COL2
	li $v0, 0		#no column winners
COL2:
	lw $ra, 4($sp)
	addiu $sp, $sp, 4
	jr $ra

#35 SECTION: CHECK ROW1 FOR WINNER

ROW3:
	li $v0, 0
	addiu $a0, $a0, -1
	li $t0, 3
	mul $t0, $t0, $a0
	la $t1, zprint			#load board address and components in that row
	addi $t1, $t1, 1
	add $t1, $t1, $t0
	lb $t2, 0($t1)
	lb $t3, 1($t1)
	bne $t2, $t3, ROW4		#check if row values are equal
	lb $t3, 2($t1)
	bne $t2, $t3, ROW4		#check if row values are equal
	move $v0, $t1

ROW4:
	jr $ra

#36 SECTION: CHECK COLUMNS FOR WINNER

COL3:
	li $v0, 0
	la $t0, zprint			#load board address and components in that column
	add $t0, $t0, $a0
	lb $t1, 0($t0)			#load three column values
	lb $t2, 3($t0)
	lb $t3, 6($t0)
	li $v0, 0
	
	bne $t1, $t2, COL4		#check if column values are equal
	bne $t1, $t3, COL4		#check if column values are equal
	move $v0, $t1

COL4:
	jr $ra





#37 SECTION: DIAGONAL

DIAG:
	li $v0, 0
	la $t0, zprint			#load board address and 3 diagonal values top-left bottom right
	lb $t1, 1($t0)
	lb $t2, 5($t0)
	lb $t3, 9($t0)
	bne $t1, $t2, DIAG2		#check if values equal
	bne $t1, $t3, DIAG2		#check if values equal
	move $v0, $t1
	jr $ra

DIAG2:
	lb $t1, 3($t0)			#load 3 diagonal values bottom left top-right
	lb $t2, 5($t0)
	lb $t3, 7($t0)
	bne $t1, $t2, DIAGN		#check if values equal
	bne $t1, $t3, DIAGN		#check if values equal
	move $v0, $t1

DIAGN:
	 jr $ra


