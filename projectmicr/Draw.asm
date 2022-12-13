.Model Small
.Stack 64
.Data

BoardWidth EQU 30

BoardHeight EQU 25

BoardFilename DB 'OQueen.bin', 0

BoardFilehandle DW ?

BoardData DB BoardWidth*BoardHeight dup(0)
orangeKnight1X Dw 30D
orangeKnight1Y Dw 00

orangeKnight2X Dw 180D
orangeKnight2Y Dw 00

orangeQueenX Dw 90D
orangeQueenY Dw 00

orangeKingX Dw 120D
orangeKingY Dw 00

orangeBishop1X Dw 60D
orangeBishop1Y Dw 00

orangeBishop2X Dw 150D
orangeBishop2Y Dw 00

orangeRook1X Dw 00
orangeRook1Y Dw 00

orangeRook2X Dw 210D
orangeRook2Y Dw 00

orangePawn1X Dw 00
orangePawn1Y Dw 25D

orangePawn2X Dw 30D
orangePawn2Y Dw 25D

orangePawn3X Dw 60D
orangePawn3Y Dw 25D

orangePawn4X DW 90D
orangePawn4Y DW 25D

orangePawn5X DW 120D
orangePawn5Y DW 25D

orangePawn6X DW 150D
orangePawn6Y DW 25D

orangePawn7X DW 180D
orangePawn7Y DW 25D

orangePawn8X DW 210D
orangePawn8Y DW 25D


;;--------------------------------;;
blueKnight1X Dw 30D
blueKnight1Y Dw 175D

blueKnight2X Dw 180D
blueKnight2Y Dw 175D

blueQueenX Dw 90D
blueQueenY Dw 175D

blueKingX Dw 120D
blueKingY Dw 175D

blueBishop1X Dw 60D
blueBishop1Y Dw 175D

blueBishop2X Dw 150D
blueBishop2Y Dw 175D

blueRook1X Dw 00
blueRook1Y Dw 175D

blueRook2X Dw 210D
blueRook2Y Dw 175D

bluePawn1X Dw 00
bluePawn1Y DW 150D

bluePawn2X DW 30D
bluePawn2Y DW 150D

bluePawn3X Dw 60D
bluePawn3Y Dw 150D

bluePawn4X Dw 90D
bluePawn4Y DW 150D

bluePawn5X DW 120D
bluePawn5Y DW 150D

bluePawn6X DW 150D
bluePawn6Y DW 150D

bluePawn7X DW 180D
bluePawn7Y DW 150D

bluePawn8X DW 210D
bluePawn8Y DW 150D
;;------------------------------;;




.Code
MAIN PROC FAR
              MOV  AX , @DATA
              MOV  DS , AX
    
              MOV  AH, 0
              MOV  AL, 13h
              INT  10h
	
              CALL OpenFile
              CALL ReadData
	
              LEA  BX , BoardData                 ; BL contains index at the current drawn pixel
	
              MOV  CX,0
              MOV  DX,0
              MOV  AH,0ch
	
    ; Drawing loop
    drawLoop: 
              MOV  AL,[BX]
              INT  10h
              INC  CX
              INC  BX
              CMP  CX,BoardWidth
              JNE  drawLoop
	
              MOV  CX , 0
              INC  DX
              CMP  DX , BoardHeight
              JNE  drawLoop

	
    ; Press any key to exit
              MOV  AH , 0
              INT  16h
    
              call CloseFile
    
    ;Change to Text MODE
              MOV  AH,0
              MOV  AL,03h
              INT  10h

    ; return control to operating system
              MOV  AH , 4ch
              INT  21H
    
MAIN ENDP




OpenFile PROC

    ; Open file

              MOV  AH, 3Dh
              MOV  AL, 0                            ; read only
              LEA  DX, BoardFilename
              INT  21h
    
    ; you should check carry flag to make sure it worked correctly
    ; carry = 0 -> successful , file handle -> AX
    ; carry = 1 -> failed , AX -> error code
     
              MOV  [BoardFilehandle], AX
    
              RET

OpenFile ENDP

ReadData PROC

              MOV  AH,3Fh
              MOV  BX, [BoardFilehandle]
              MOV  CX,BoardWidth*BoardHeight    ; number of bytes to read
              LEA  DX, BoardData
              INT  21h
              RET
ReadData ENDP


CloseFile PROC
              MOV  AH, 3Eh
              MOV  BX, [BoardFilehandle]

              INT  21h
              RET
CloseFile ENDP
END MAIN