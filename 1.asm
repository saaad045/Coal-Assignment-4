.MODEL SMALL
.STACK 100h

.DATA
prompt_msg DB "Enter 10 characters: $"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    
    LEA DX, prompt_msg
    MOV AH, 9
    INT 21h

    
    MOV CX, 10

read_loop:
    MOV AH, 1 
    INT 21h
    PUSH AX   
    LOOP read_loop

    MOV CX, 10
print_loop:
    POP DX
    MOV AH, 2  
    INT 21h
    LOOP print_loop

    
    MOV AH, 4Ch
    INT 21h

MAIN ENDP
END MAIN
