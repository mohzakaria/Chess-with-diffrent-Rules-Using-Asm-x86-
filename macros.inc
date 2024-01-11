showmessage MACRO MyMessage
               mov ah,2
               mov dx,001eh
               int 10h 
                mov ah,9h
                mov dx,offset MyMessage
                int 21h 
               
ENDM showmessage
showmessageline MACRO MyMessageline
               mov ah,2
               mov dx,0c1eh
               int 10h 
                mov ah,9h
                mov dx,offset MyMessageline
                int 21h 
               
ENDM showmessageline

clearstatusbar macro
pusha
mov ax,0600h
mov bh,00
mov cx,001eh
mov dx,012eH
int 10h 
popa
endm clearstatusbar


RandomVariable macro 


    randomAgain: 
   mov dx,0
    
    mov ah,0h ; interrupts to get system time
   
    int 1ah ; CX:DX now hold number of clock ticks since midnight
    
    mov ax,dx
    
    xor dx,dx
    
    mov cx,6
    
    div cx ; here dx contains the remainder of the division - from 0 to 9
    
    add dx,1
    
    mov rValx,dx ; call interrupt to display a value in DL
    cmp rValx,8D
    jg randomAgain
    mov bx,30
    
    mov al,dl
    mov ah,0
    mul bx
    mov rValx,ax
   
   ;-----------------------------------------------------------------------------------------    
    randomAgain2:
     mov dx,0
    mov ah,0h ; interrupts to get system time
    
    int 1ah ; CX:DX now hold number of clock ticks since midnight
    
    mov ax,dx
    
    xor dx,dx
    
    mov cx,6
    
    div cx ; here dx contains the remainder of the division - from 0 to 9
    
    add dx,1
    
    mov rValy,dx

    cmp rValy,8D
    jg randomAgain2
    
    mov bx,25
    mov al,dl
    mov ah,0
    mul bx
    mov rvaly,ax

    mov poweruppicked,1
  
    
endm RandomVariable



scrollup MACRO up,down
    pusha
    mov ax,0601h
    mov bh,00
    mov cx,up
    mov dx,down
    int 10h
    popa
ENDM scrollup

MIRROR MACRO INPUT
CMP INPUT,175
JNZ AWEL
MOV HighlightedBlock1y,00
AWEL:
CMP INPUT,150
JNZ TANI
MOV HighlightedBlock1y,25
TANI:
CMP INPUT,125
JNZ TALATA
MOV HighlightedBlock1y,50
TALATA:
CMP INPUT,100
JNZ ARBA
MOV HighlightedBlock1y,75
ARBA:
CMP INPUT,75
JNZ KHAMSA
MOV HighlightedBlock1y,100
KHAMSA:
CMP INPUT,50
JNZ Six
MOV HighlightedBlock1y,125
Six:
CMP INPUT,25
JNZ SEVEN
MOV HighlightedBlock1y,150
SEVEN:
CMP INPUT,00
JNZ EIGHT
MOV HighlightedBlock1y,175
EIGHT:
ENDM MIRROR