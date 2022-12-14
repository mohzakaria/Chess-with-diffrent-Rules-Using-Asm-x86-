.Model small
.Stack 64
.Data

    PieceWidth      EQU 30

    PieceHeight     EQU 25

    BoardWidth      EQU 240

    BoardHeight     EQU 200
;;-------------------BOARD--------------------;;
    BoardFilename   DB  'metro.bin', 0
    BoardFilehandle DW  ?
    BoardData       DB  BoardWidth*BoardHeight dup(0)
    
;;------------------ORANGEROOK----------------------;;    
    
    oRookFilename   DB  'oRook.bin',0
    OROOKFILEHANDLE DW  ?
    OROOKData       DB  PieceWidth*PieceHeight dup(0)

;;-------------------ORANGEKNIGHT-------------------;;
    oKnightFilename   DB  'oKnight.bin',0
    oKnightFILEHANDLE DW  ?
    oKnightData       DB  PieceWidth*PieceHeight dup(0)

;;-------------------ORANGEBISHOP-------------------;;
    oBishopFilename   DB  'oBishop.bin',0
    oBishopFILEHANDLE DW  ?
    oBishopData       DB  PieceWidth*PieceHeight dup(0)

;;-------------------ORANGEQUEEN-------------------;;
    oQueenFilename   DB  'oQueen.bin',0
    oQueenFILEHANDLE DW  ?
    oQueenData       DB  PieceWidth*PieceHeight dup(0)

;;-------------------ORANGEKING-------------------;;
    oKingFilename   DB  'oKing.bin',0
    oKingFILEHANDLE DW  ?
    oKingData       DB  PieceWidth*PieceHeight dup(0)

;;------------------ORANGEPAWN----------------------;;    
    
    oPawnFilename   DB  'oPawn.bin',0
    OPawnFILEHANDLE DW  ?
    OPAWNData       DB  PieceWidth*PieceHeight dup(0)


    ;;------------------BLUEROOK----------------------;;    
    
    bRookFilename   DB  'bRook.bin',0
    BROOKFILEHANDLE DW  ?
    BROOKData       DB  PieceWidth*PieceHeight dup(0)

;;-------------------BLUEKNIGHT-------------------;;
    bKnightFilename   DB  'bKnight.bin',0
    bKnightFILEHANDLE DW  ?
    bKnightData       DB  PieceWidth*PieceHeight dup(0)

;;-------------------BLUEBISHOP-------------------;;
    bBishopFilename   DB  'bBishop.bin',0
    bBishopFILEHANDLE DW  ?
    bBishopData       DB  PieceWidth*PieceHeight dup(0)

;;-------------------BLUEQUEEN-------------------;;
    bQueenFilename   DB  'bQueen.bin',0
    bQueenFILEHANDLE DW  ?
    bQueenData       DB  PieceWidth*PieceHeight dup(0)

;;-------------------BLUEKING-------------------;;
    bKingFilename   DB  'bKing.bin',0
    bKingFILEHANDLE DW  ?
    bKingData       DB  PieceWidth*PieceHeight dup(0)
;;-------------------BLUEPAWN-------------------;;
    bPawnFilename   DB  'bPawn.bin',0
    bPawnFILEHANDLE DW  ?
    bPawnData       DB  PieceWidth*PieceHeight dup(0)

    ;;------------------------------------;;
    orangeKnight1X  Dw  30D
    orangeKnight1Y  Dw  00

    orangeKnight2X  Dw  180D
    orangeKnight2Y  Dw  00

    orangeQueenX    Dw  90D
    orangeQueenY    Dw  00

    orangeKingX     Dw  120D
    orangeKingY     Dw  00

    orangeBishop1X  Dw  60D
    orangeBishop1Y  Dw  00

    orangeBishop2X  Dw  150D
    orangeBishop2Y  Dw  00

    orangeRook1X    Dw  00
    orangeRook1Y    Dw  00

    orangeRook2X    Dw  210D
    orangeRook2Y    Dw  00

    orangePawn1X    Dw  00
    orangePawn1Y    Dw  25D

    orangePawn2X    Dw  30D
    orangePawn2Y    Dw  25D

    orangePawn3X    Dw  60D
    orangePawn3Y    Dw  25D

    orangePawn4X    DW  90D
    orangePawn4Y    DW  25D

    orangePawn5X    DW  120D
    orangePawn5Y    DW  25D

    orangePawn6X    DW  150D
    orangePawn6Y    DW  25D

    orangePawn7X    DW  180D
    orangePawn7Y    DW  25D

    orangePawn8X    DW  210D
    orangePawn8Y    DW  25D


    ;;--------------------------------;;
    blueKnight1X    Dw  30D
    blueKnight1Y    Dw  175D

    blueKnight2X    Dw  180D
    blueKnight2Y    Dw  175D

    blueQueenX      Dw  90D
    blueQueenY      Dw  175D

    blueKingX       Dw  120D
    blueKingY       Dw  175D

    blueBishop1X    Dw  60D
    blueBishop1Y    Dw  175D

    blueBishop2X    Dw  150D
    blueBishop2Y    Dw  175D

    blueRook1X      Dw  00
    blueRook1Y      Dw  175D

    blueRook2X      Dw  210D
    blueRook2Y      Dw  175D

    bluePawn1X      Dw  00
    bluePawn1Y      DW  150D

    bluePawn2X      DW  30D
    bluePawn2Y      DW  150D

    bluePawn3X      Dw  60D
    bluePawn3Y      Dw  150D

    bluePawn4X      Dw  90D
    bluePawn4Y      DW  150D

    bluePawn5X      DW  120D
    bluePawn5Y      DW  150D

    bluePawn6X      DW  150D
    bluePawn6Y      DW  150D

    bluePawn7X      DW  180D
    bluePawn7Y      DW  150D

    bluePawn8X      DW  210D
    bluePawn8Y      DW  150D
    ;;------------------------------;;

tempx DW ?
tempy dw ?


.Code
MAIN PROC FAR
MOV  AX , @DATA
 MOV  DS , AX

CALL DRAWBOARD

MAIN ENDP

DRAWBOARD PROC 
;;---------------printboard----------------------;;
                MOV  AH, 0
                MOV  AL, 13h
                INT  10h
	
                CALL OpenFile
                CALL ReadData
	
                LEA  BX , BoardData 
	
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
	
                MOV  CX ,0
                INC  DX
                CMP  DX , BoardHeight
                JNE  drawLoop
;;---------------PRINT ORANGE ROOK1----------------------;;

                CALL OpenFileOR
                CALL ReadDataOR
                LEA  BX , OROOKData              
                MOV  CX,orangeRook1X
                MOV  DX,orangeRook1y
                mov es,orangeRook1X
                mov tempx,es
                mov es,orangeRook1Y
                mov tempy,es
                add tempx,30
                add tempy,25
                MOV  AH,0ch
	
    ; Drawing loop
    drawLooPOR1:
                MOV  AL,[BX]
                INT  10h
                INC  CX
                INC  BX
                CMP  CX,tempx
                JNE  drawLoopOR1
	
                MOV  CX , orangeRook1X
                INC  DX
                CMP  DX ,tempy
                JNE  drawLooPOR1

 ;;---------------PRINT ORANGE ROOK2----------------------;;

                CALL OpenFileOR
                CALL ReadDataOR
                LEA  BX , OROOKData              
                MOV  CX,orangeRook2X
                MOV  DX,orangeRook2y
                
                mov es,orangeRook2X
                mov tempx,es
                mov es,orangeRook2Y
                mov tempy,es
                add tempx,30
                add tempy,25

                MOV  AH,0ch
	
    ; Drawing loop
    drawLooPOR2:
                MOV  AL,[BX]
                INT  10h
                INC  CX
                INC  BX
                CMP  CX,tempx
                JNE  drawLoopOR2
	
                MOV  CX , orangeRook2X
                INC  DX
                CMP  DX ,tempy
                JNE  drawLooPOR2


         ;;-------------------PRINTBLUEROOK1-------------------;;
                CALL OpenFileBR
                CALL ReadDataBR
                LEA  BX ,BROOKData              
                MOV  CX,blueRook1X
                MOV  DX,blueRook1y
                mov es,blueRook1X
                mov tempx,es
                mov es,BlueRook1Y
                mov tempy,es
                add tempx,30
                add tempy,25
                MOV  AH,0ch
	
    ; Drawing loop
    drawLooPBR1:
                MOV  AL,[BX]
                INT  10h
                INC  CX
                INC  BX
                CMP  CX,tempx
                JNE  drawLoopBR1
	
                MOV  CX , blueRook1X
                INC  DX
                CMP  DX , tempy
                JNE  drawLooPBR1

;;-------------------PRINTBLUEROOK2-------------------;;
CALL OpenFileBR
                CALL ReadDataBR
                LEA  BX ,BROOKData              
                MOV  CX,blueRook2X
                MOV  DX,blueRook2y
                mov es,blueRook2X
                mov tempx,es
                mov es,BlueRook2Y
                mov tempy,es
                add tempx,30
                add tempy,25
                MOV  AH,0ch
	
    ; Drawing loop
    drawLooPBR2:
                MOV  AL,[BX]
                INT  10h
                INC  CX
                INC  BX
                CMP  CX,tempx
                JNE  drawLoopBR2
	
                MOV  CX , blueRook2X
                INC  DX
                CMP  DX , tempy
                JNE  drawLooPBR2

;;-------------------PRINTBLUEBISHOP1-------------------;;
CALL OpenFileBB
                CALL ReadDataBB
                LEA  BX ,BBISHOPData              
                MOV  CX,blueBishop1X
                MOV  DX,blueBishop1y
                mov es,blueBishop1X
                mov tempx,es
                mov es,BlueBishop1Y
                mov tempy,es
                add tempx,30
                add tempy,25
                MOV  AH,0ch
	
    ; Drawing loop
    drawLooPBB1:
                MOV  AL,[BX]
                INT  10h
                INC  CX
                INC  BX
                CMP  CX,tempx
                JNE  drawLoopBB1
	
                MOV  CX , blueBishop1X
                INC  DX
                CMP  DX , tempy
                JNE  drawLooPBB1

;;-------------------PRINTBLUEBISHOP2-------------------;;
CALL OpenFileBB
                CALL ReadDataBB
                LEA  BX ,BBISHOPData              
                MOV  CX,blueBishop2X
                MOV  DX,blueBishop2y
                mov es,blueBishop2X
                mov tempx,es
                mov es,BlueBishop2Y
                mov tempy,es
                add tempx,30
                add tempy,25
                MOV  AH,0ch
	
    ; Drawing loop
    drawLooPBB2:
                MOV  AL,[BX]
                INT  10h
                INC  CX
                INC  BX
                CMP  CX,tempx
                JNE  drawLoopBB2
	
                MOV  CX , blueBishop2X
                INC  DX
                CMP  DX , tempy
                JNE  drawLooPBB2



;;-------------------PRINTBLUEKnight1-------------------;;
CALL OpenFileBKn
                CALL ReadDataBKn
                LEA  BX ,BKNIGHTData              
                MOV  CX,blueKnight1X
                MOV  DX,blueKnight1y
                mov es,blueKnight1X
                mov tempx,es
                mov es,BlueKnight1Y
                mov tempy,es
                add tempx,30
                add tempy,25
                MOV  AH,0ch
	
    ; Drawing loop
    drawLooPBKn1:
                MOV  AL,[BX]
                INT  10h
                INC  CX
                INC  BX
                CMP  CX,tempx
                JNE  drawLoopBKn1
	
                MOV  CX , blueKnight1X
                INC  DX
                CMP  DX , tempy
                JNE  drawLooPBKn1

;;-------------------PRINTBLUEKnight2-------------------;;
CALL OpenFileBKn
                CALL ReadDataBKn
                LEA  BX ,BKNIGHTData              
                MOV  CX,blueKnight2X
                MOV  DX,blueKnight2y  
                mov es,blueKnight2X
                mov tempx,es
                mov es,BlueKnight2Y
                mov tempy,es
                add tempx,30
                add tempy,25

                MOV  AH,0ch
	
    ; Drawing loop
    drawLooPBKn2:
                MOV  AL,[BX]
                INT  10h
                INC  CX
                INC  BX
                CMP  CX,tempx
                JNE  drawLoopBKn2
	
                MOV  CX , blueKnight2X
                INC  DX
                CMP  DX , tempy
                JNE  drawLooPBKn2

;;-------------------PRINTBLUEQUEEN-------------------;;
CALL OpenFileBQ
                CALL ReadDataBQ
                LEA  BX ,BQUEENData              
                MOV  CX,blueQueenX
                MOV  DX,blueQueeny
                mov es,blueQUEENX
                mov tempx,es
                mov es,BlueQUEENY
                mov tempy,es
                add tempx,30
                add tempy,25
                MOV  AH,0ch
	
    ; Drawing loop
    drawLooPBQ:
                MOV  AL,[BX]
                INT  10h
                INC  CX
                INC  BX
                CMP  CX,TEMPX
                JNE  drawLoopBQ
	
                MOV  CX , blueQueenX
                INC  DX
                CMP  DX , TEMPY
                JNE  drawLooPBQ

;;-------------------PRINTBLUEKing-------------------;;
CALL OpenFileBK
                CALL ReadDataBK
                LEA  BX ,BKINGData              
                MOV  CX,blueKingX
                MOV  DX,blueKingy
                mov es,blueKINGX
                mov tempx,es
                mov es,BlueKINGY
                mov tempy,es
                add tempx,30
                add tempy,25
                MOV  AH,0ch
	
    ; Drawing loop
    drawLooPBk:
                MOV  AL,[BX]
                INT  10h
                INC  CX
                INC  BX
                CMP  CX,tempx
                JNE  drawLoopBK
	
                MOV  CX , blueKingX
                INC  DX
                CMP  DX , TEMPY
                JNE  drawLooPBK       
             	
    ; Press any key to exit
                MOV  AH , 0
                INT  16h
    
                call CloseFileOR
    
    ;Change to Text MODE
                MOV  AH,0
                MOV  AL,03h
                INT  10h

    ; return control to operating system
                MOV  AH , 4ch
                INT  21H

    
DRAWBOARD ENDP


;;-----------BOARD FILE--------;;

OpenFile PROC

                MOV  AH, 3Dh
                MOV  AL, 0                       
                LEA  DX, BoardFilename
                INT  21h
                    MOV  [BoardFilehandle], AX
    
                RET

OpenFile ENDP

ReadData PROC
                MOV  AH,3Fh
                MOV  BX, [BoardFilehandle]
                MOV  CX,BoardWidth*BoardHeight    
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

;;-----------ORANGE ROOK FILES--------;;

OpenFileOR PROC

    

                MOV  AH, 3Dh
                MOV  AL, 0                     
                LEA  DX,oRookFilename
                INT  21h
     
                MOV  [OROOKFILEHANDLE], AX
    
                RET

OpenFileOR ENDP

ReadDataOR PROC

                MOV  AH,3Fh
                MOV  BX, [OROOKFILEHANDLE]
                MOV  CX,PieceWidth*PieceHeight    
                LEA  DX, OROOKData
                INT  21h
                RET
ReadDataOR ENDP


CloseFileOR PROC
                MOV  AH, 3Eh
                MOV  BX, [OROOKFILEHANDLE]
                INT  21h
                RET
CloseFileOR ENDP


;;-----------ORANGE BISHOP FILES--------;;
OpenFileOB PROC

    

                MOV  AH, 3Dh
                MOV  AL, 0                     
                LEA  DX,obishopFilename
                INT  21h
     
                MOV  [oBishopFILEHANDLE], AX
    
                RET

OpenFileOB ENDP

ReadDataOB PROC

                MOV  AH,3Fh
                MOV  BX, [oBishopFILEHANDLE]
                MOV  CX,PieceWidth*PieceHeight    
                LEA  DX, oBishopData
                INT  21h
                RET
ReadDataOB ENDP


CloseFileOB PROC
                MOV  AH, 3Eh
                MOV  BX, [oBishopFILEHANDLE]
                INT  21h
                RET
CloseFileOB ENDP
;;-----------ORANGE KNIGHT FILES--------;;
OpenFileOKn PROC

    

                MOV  AH, 3Dh
                MOV  AL, 0                     
                LEA  DX,oKnightFilename
                INT  21h
     
                MOV  [oKnightFILEHANDLE], AX
    
                RET

OpenFileOKn ENDP

ReadDataOKn PROC

                MOV  AH,3Fh
                MOV  BX, [oKnightFILEHANDLE]
                MOV  CX,PieceWidth*PieceHeight    
                LEA  DX, oKnightData
                INT  21h
                RET
ReadDataOKn ENDP


CloseFileOKn PROC
                MOV  AH, 3Eh
                MOV  BX, [oKnightFILEHANDLE]
                INT  21h
                RET
CloseFileOKn ENDP
;;-----------ORANGE KING FILES--------;;
OpenFileOK PROC

    

                MOV  AH, 3Dh
                MOV  AL, 0                     
                LEA  DX,oKingFilename
                INT  21h
     
                MOV  [oKingFILEHANDLE], AX
    
                RET

OpenFileOK ENDP

ReadDataOK PROC

                MOV  AH,3Fh
                MOV  BX, [oKingFILEHANDLE]
                MOV  CX,PieceWidth*PieceHeight    
                LEA  DX, oKingData
                INT  21h
                RET
ReadDataOK ENDP


CloseFileOK PROC
                MOV  AH, 3Eh
                MOV  BX, [oKingFILEHANDLE]
                INT  21h
                RET
CloseFileOK ENDP

;;-----------ORANGE QUEEN FILES--------;;
OpenFileOQ PROC

    

                MOV  AH, 3Dh
                MOV  AL, 0                     
                LEA  DX,oQueenFilename
                INT  21h
     
                MOV  [oQueenFILEHANDLE], AX
    
                RET

OpenFileOQ ENDP

ReadDataOQ PROC

                MOV  AH,3Fh
                MOV  BX, [oQueenFILEHANDLE]
                MOV  CX,PieceWidth*PieceHeight    
                LEA  DX, oQueenData
                INT  21h
                RET
ReadDataOQ ENDP


CloseFileOQ PROC
                MOV  AH, 3Eh
                MOV  BX, [oQueenFILEHANDLE]
                INT  21h
                RET
CloseFileOQ ENDP


;;-----------ORANGE PAWN FILES--------;;
OpenFileOP PROC

    

                MOV  AH, 3Dh
                MOV  AL, 0                     
                LEA  DX,oPawnFilename
                INT  21h
     
                MOV  [oPawnFILEHANDLE], AX
    
                RET

OpenFileOP ENDP

ReadDataOP PROC

                MOV  AH,3Fh
                MOV  BX, [oPawnFILEHANDLE]
                MOV  CX,PieceWidth*PieceHeight    
                LEA  DX, oPawnData
                INT  21h
                RET
ReadDataOP ENDP


CloseFileOP PROC
                MOV  AH, 3Eh
                MOV  BX, [oPawnFILEHANDLE]
                INT  21h
                RET
CloseFileOP ENDP

;;-----------BLUE ROOK FILES--------;;

OpenFileBR PROC

   

                MOV  AH, 3Dh
                MOV  AL, 0                    
                LEA  DX,bRookFilename
                INT  21h
     
                MOV  [BROOKFILEHANDLE], AX
   
                RET

OpenFileBR ENDP

ReadDataBR PROC

                MOV  AH,3Fh
                MOV  BX, [BROOKFILEHANDLE]
                MOV  CX,PieceWidth*PieceHeight    
                LEA  DX, BROOKData
                INT  21h
                RET
ReadDataBR ENDP


CloseFileBR PROC
                MOV  AH, 3Eh
                MOV  BX, [BROOKFILEHANDLE]
                INT  21h
                RET
CloseFileBR ENDP


;;-----------BLUE BISHOP FILES--------;;
OpenFileBB PROC

   

                MOV  AH, 3Dh
                MOV  AL, 0                    
                LEA  DX,bBishopFilename
                INT  21h
     
                MOV  [BBISHOPFILEHANDLE], AX
   
                RET

OpenFileBB ENDP

ReadDataBB PROC

                MOV  AH,3Fh
                MOV  BX, [BBISHOPFILEHANDLE]
                MOV  CX,PieceWidth*PieceHeight    
                LEA  DX, BBISHOPData
                INT  21h
                RET
ReadDataBB ENDP


CloseFileBB PROC
                MOV  AH, 3Eh
                MOV  BX, [BBISHOPFILEHANDLE]
                INT  21h
                RET
CloseFileBB ENDP
;;-----------BLUE QUEEN FILES--------;;
OpenFileBQ PROC

   

                MOV  AH, 3Dh
                MOV  AL, 0                    
                LEA  DX,bQueenFilename
                INT  21h
     
                MOV  [BQueenFILEHANDLE], AX
   
                RET

OpenFileBQ ENDP

ReadDataBQ PROC

                MOV  AH,3Fh
                MOV  BX, [BQUEENFILEHANDLE]
                MOV  CX,PieceWidth*PieceHeight    
                LEA  DX, BQUEENData
                INT  21h
                RET
ReadDataBQ ENDP


CloseFileBQ PROC
                MOV  AH, 3Eh
                MOV  BX, [BQUEENFILEHANDLE]
                INT  21h
                RET
CloseFileBQ ENDP
;;-----------BLUE KING FILES--------;;
OpenFileBK PROC

   

                MOV  AH, 3Dh
                MOV  AL, 0                    
                LEA  DX,bKingFilename
                INT  21h
     
                MOV  [BKINGFILEHANDLE], AX
   
                RET

OpenFileBK ENDP

ReadDataBK PROC

                MOV  AH,3Fh
                MOV  BX, [BKINGFILEHANDLE]
                MOV  CX,PieceWidth*PieceHeight    
                LEA  DX, BKINGData
                INT  21h
                RET
ReadDataBK ENDP


CloseFileBK PROC
                MOV  AH, 3Eh
                MOV  BX, [BKINGFILEHANDLE]
                INT  21h
                RET
CloseFileBK ENDP


;;-----------BLUE Knight FILES--------;;
OpenFileBKn PROC

   

                MOV  AH, 3Dh
                MOV  AL, 0                    
                LEA  DX,bknightFilename
                INT  21h
     
                MOV  [BKnightFILEHANDLE], AX
   
                RET

OpenFileBkn ENDP

ReadDataBkn PROC

                MOV  AH,3Fh
                MOV  BX, [BKnightFILEHANDLE]
                MOV  CX,PieceWidth*PieceHeight    
                LEA  DX, BknightData
                INT  21h
                RET
ReadDataBkn ENDP


CloseFileBkn PROC
                MOV  AH, 3Eh
                MOV  BX, [BKnightFILEHANDLE]
                INT  21h
                RET
CloseFileBkn ENDP


;;-----------BLUE Pawn FILES--------;;
OpenFileBP PROC

   

                MOV  AH, 3Dh
                MOV  AL, 0                    
                LEA  DX,bPawnFilename
                INT  21h
     
                MOV  [BPawnFILEHANDLE], AX
   
                RET

OpenFileBP ENDP

ReadDataBP PROC

                MOV  AH,3Fh
                MOV  BX, [BPawnFILEHANDLE]
                MOV  CX,PieceWidth*PieceHeight    
                LEA  DX, BPawnData
                INT  21h
                RET
ReadDataBP ENDP


CloseFileBP PROC
                MOV  AH, 3Eh
                MOV  BX, [BPAWNFILEHANDLE]
                INT  21h
                RET
CloseFileBP ENDP

END MAIN
