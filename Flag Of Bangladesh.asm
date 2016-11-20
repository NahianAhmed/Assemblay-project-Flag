

org  100h
.data

msgbd db '         National Flag Bangladesh$       '

jmp code



w equ 143
h equ 90




code:   mov ah, 0
        mov al, 13h 
        int 10h

    ;curcel  
      
msg:     db     '                   . " .       ', 0Dh,0Ah, 24h
msg1:    db     '                  .     .      ', 0Dh,0Ah, 24h
msg2:    db     '                   .   .        ', 0Dh,0Ah, 24h
msg4:    db     '                     "         ', 0Dh,0Ah, 24h
  

        ;;;;;;centering
  mov     ah, 2
  

  mov     dx,0Ah
  int 21h
  mov     dx,0Dh
  int 21h  
  mov     dx,0Ah
  int 21h
  mov     dx,0Dh
  int 21h
  mov     dx,0Ah
  int 21h
  mov     dx,0Dh
  int 21h
  mov     dx,0Ah
  int 21h
  mov     dx,0Dh
  int 21h
  mov     dx,0Ah
  int 21h
  mov     dx,0Dh
  int 21h
  mov     dx,0Ah
  int 21h
  mov     dx,0Dh
  int 21h
       ;;;;;;;;;;center
  mov     ah, 09h
  mov     dx, msg
         
        int     21h 
  mov     dx, msg1
         
        int     21h
  mov     dx, msg1
         
        int     21h 
  mov     dx, msg2
         
        int     21h
  mov     dx, msg4
         
        int     21h 
        
  mov     ah, 2
  mov     dx,0Ah
  int 21h
  mov     dx,0Dh
  int 21h  
  mov     dx,0Ah
  int 21h
  mov     dx,0Dh
  int 21h
  mov     dx,0Ah
  int 21h
  mov     dx,0Dh
  int 21h
  mov     dx,0Ah
  int 21h
  mov     dx,0Dh
  int 21h
  mov     dx,0Ah
  int 21h
  mov     dx,0Dh
  int 21h
  mov     dx,0Ah
  int 21h
  
  
  
  lea dx,msgbd
  mov ah,9
  int 21h
  
  
  
        
    ; draw upper line:    

    mov cx, 100+w  ; column
    mov dx, 20     ; row
    mov al, 4      ; red
u1: mov ah, 0ch    ; put pixel
    int 10h
    
    dec cx
    cmp cx, 100
    jae u1
 
            ; draw bottom line:

    mov cx, 100+w   ; column
    mov dx, 20+h   ; row
    mov al, 4     ;  red
u2: mov ah, 0ch    ; put pixel
    int 10h
    
    dec cx
    cmp cx, 100
    ja u2
 
;    draw left line:

    mov cx, 100    ; column
    mov dx, 20+h   ; row
    mov al, 4     ; red
u3: mov ah, 0ch    ; put pixel
    int 10h
    
    dec dx
    cmp dx, 20
    ja u3 
    
    
   ; draw right line:

    mov cx, 100+w  ; column
    mov dx, 20+h   ; row
    mov al, 4h     ; red
u4: mov ah, 0ch    ; put pixel
    int 10h
    
    dec dx
    cmp dx, 20
    ja u4     
 
    
       
    
  mov ah,00
  int 16h			


  mov ah,00
  mov al,03 ;text mode 3
  int 10h
  
  
  
  


ret

