find_max PROC


    MOV AX, [BX]  

    MOV DX, 1     
find_max_loop:
    CMP DX, CX    
    JE find_max_done

    CMP AX, [BX + DX * 2]  
    JGE find_max_continue  

    MOV AX, [BX + DX * 2]

find_max_continue:
    INC DX       
    JMP find_max_loop

find_max_done:
    RET
find_max ENDP
