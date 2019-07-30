Comsc210 Lab Assignment 1

Hello World


#   Roger Williams University COMS210
#   My First Assembly Language Program
#   Author: <Your Name Here>
#   Program: Hello World
#
.data      

# This is the section of the program where we establish data components such 
# as prompts and responses to be displayed on the console. 

message:    .asciiz "hello world\n"   # Here is the message we will display

.text 

# This is the section of the program containing our executable code 
        .globl main   # declare a procedure main that can be referenced from other files (global)
main:                 # This is the marker for the first line of code

        la $a0,message  # here is the first line of code...
	                # first instruction: la - Load Address (message) into register $a0
			
			
        li $v0,4        # Next instruction: Load Immediate, value '4' into register $v0
        syscall         # Next instruction: execute the system call for Print String

        li $v0,10       # Next instruction: Load Immediate, value '10' into register $v0
        syscall         # Next Instruction: execute the system call for terminate program execution
	
