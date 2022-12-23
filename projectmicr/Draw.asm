.Model Medium
.386
.Stack 256
.Data

  PieceWidth         EQU 30

  PieceHeight        EQU 25

  BoardWidth         EQU 240

  BoardHeight        EQU 200
  ;;-------------------BOARD--------------------;;
  BoardFilename      DB  'metro.bin', 0
  BoardFilehandle    DW  ?
  BoardData          DB  BoardWidth*BoardHeight dup(0)
    
  ;;------------------ORANGEROOK----------------------;;
    
  oRookFilename      DB  'oRook.bin',0
  OROOKFILEHANDLE    DW  ?
  OROOKData          DB  PieceWidth*PieceHeight dup(0)

  ;;-------------------ORANGEKNIGHT-------------------;;
  oKnightFilename    DB  'oKnight.bin',0
  oKnightFILEHANDLE  DW  ?
  oKnightData        DB  PieceWidth*PieceHeight dup(0)

  ;;-------------------ORANGEBISHOP-------------------;;
  oBishopFilename    DB  'oBishop.bin',0
  oBishopFILEHANDLE  DW  ?
  oBishopData        DB  PieceWidth*PieceHeight dup(0)

  ;;-------------------ORANGEQUEEN-------------------;;
  oQueenFilename     DB  'oQueen.bin',0
  oQueenFILEHANDLE   DW  ?
  oQueenData         DB  PieceWidth*PieceHeight dup(0)

  ;;-------------------ORANGEKING-------------------;;
  oKingFilename      DB  'oKing.bin',0
  oKingFILEHANDLE    DW  ?
  oKingData          DB  PieceWidth*PieceHeight dup(0)

  ;;------------------ORANGEPAWN----------------------;;
    
  oPawnFilename      DB  'oPawn.bin',0
  OPawnFILEHANDLE    DW  ?
  OPAWNData          DB  PieceWidth*PieceHeight dup(0)


  ;;------------------BLUEROOK----------------------;;
    
  bRookFilename      DB  'bRook.bin',0
  BROOKFILEHANDLE    DW  ?
  BROOKData          DB  PieceWidth*PieceHeight dup(0)

  ;;-------------------BLUEKNIGHT-------------------;;
  bKnightFilename    DB  'bKnight.bin',0
  bKnightFILEHANDLE  DW  ?
  bKnightData        DB  PieceWidth*PieceHeight dup(0)

  ;;-------------------BLUEBISHOP-------------------;;
  bBishopFilename    DB  'bBishop.bin',0
  bBishopFILEHANDLE  DW  ?
  bBishopData        DB  PieceWidth*PieceHeight dup(0)

  ;;-------------------BLUEQUEEN-------------------;;
  bQueenFilename     DB  'bQueen.bin',0
  bQueenFILEHANDLE   DW  ?
  bQueenData         DB  PieceWidth*PieceHeight dup(0)

  ;;-------------------BLUEKING-------------------;;
  bKingFilename      DB  'bKing.bin',0
  bKingFILEHANDLE    DW  ?
  bKingData          DB  PieceWidth*PieceHeight dup(0)
  ;;-------------------BLUEPAWN-------------------;;
  bPawnFilename      DB  'bPawn.bin',0
  bPawnFILEHANDLE    DW  ?
  bPawnData          DB  PieceWidth*PieceHeight dup(0)

  ;;------------------------------------;;

  orangeKnight1X     Dw  30D
  orangeKnight1Y     Dw  00

  orangeKnight2X     Dw  180D
  orangeKnight2Y     Dw  00

  orangeQueenX       Dw  90D
  orangeQueenY       Dw  100

  orangeKingX        Dw  120D
  orangeKingY        Dw  125

  orangeBishop1X     Dw  90D
  orangeBishop1Y     Dw  50

  orangeBishop2X     Dw  150D
  orangeBishop2Y     Dw  00

  orangeRook1X       Dw  90
  orangeRook1Y       Dw  125

  orangeRook2X       Dw  210D
  orangeRook2Y       Dw  00

  orangePawn1X       Dw  00
  orangePawn1Y       Dw  25D

  orangePawn2X       Dw  30D
  orangePawn2Y       Dw  25D

  orangePawn3X       Dw  60D
  orangePawn3Y       Dw  25D

  orangePawn4X       DW  90D
  orangePawn4Y       DW  25D

  orangePawn5X       DW  120D
  orangePawn5Y       DW  25D

  orangePawn6X       DW  150D
  orangePawn6Y       DW  25D

  orangePawn7X       DW  180D
  orangePawn7Y       DW  25D

  orangePawn8X       DW  210D
  orangePawn8Y       DW  25D


  ;;--------------------------------;;
  blueKnight1X       Dw  60D
  blueKnight1Y       Dw  0D

  blueKnight2X       Dw  180D
  blueKnight2Y       Dw  175D

  blueQueenX         Dw  90D
  blueQueenY         Dw  175D

  blueKingX          Dw  120D
  blueKingY          Dw  175D

  blueBishop1X       Dw  60D
  blueBishop1Y       Dw  175D

  blueBishop2X       Dw  150D
  blueBishop2Y       Dw  175D

  blueRook1X         Dw  00
  blueRook1Y         Dw  175D

  blueRook2X         Dw  210D
  blueRook2Y         Dw  175D

  bluePawn1X         Dw  00
  bluePawn1Y         DW  150D

  bluePawn2X         DW  30D
  bluePawn2Y         DW  150D

  bluePawn3X         Dw  60D
  bluePawn3Y         Dw  150D

  bluePawn4X         Dw  90D
  bluePawn4Y         DW  150D

  bluePawn5X         DW  120D
  bluePawn5Y         DW  150D

  bluePawn6X         DW  150D
  bluePawn6Y         DW  150D

  bluePawn7X         DW  180D
  bluePawn7Y         DW  150D

  bluePawn8X         DW  210D
  bluePawn8Y         DW  150D
  donefirstmove      db  0
  ;;------------------------------;;
  HighlightedBlock1x DW  00D
  HighlightedBlock1Y DW  00D
  tempHBx            dw  0
  tempHBy            dw  0
  tempHBx1           dw  0
  tempHBy1           dw  0
  INDICATORBLOCKY    dw  0
  INDICATORBLOCKx    dw  0
  ;;-----------------------------------;;
  tempx              DW  ?
  tempy              dw  ?
  PressedQ           DW  00
.Code
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

  ;PRINTING EACH PIECE
PRINTBLUEROOK1 PROC

  ;;-------------------PRINTBLUEROOK1-------------------;;
                           CALL OpenFileBR
                           CALL ReadDataBR
                           LEA  BX ,BROOKData
                           MOV  CX,blueRook1X
                           MOV  DX,blueRook1y
                           mov  es,blueRook1X
                           mov  tempx,es
                           mov  es,BlueRook1Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPBR1:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent40
                           INT  10h
  transparent40:           
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopBR1
	
                           MOV  CX , blueRook1X
                           INC  DX
                           CMP  DX , tempy
                           JNE  drawLooPBR1
                           RET
PRINTBLUEROOK1 ENDP
  ;-------------------------------;
PRINTbluePAWN1 PROC
                           CALL OpenFilebP
                           CALL ReadDatabP
                           LEA  BX , bPAWNData
                           MOV  CX,bluePawn1X
                           MOV  DX,bluePawn1y
                
                           mov  es,bluePawn1X
                           mov  tempx,es
                           mov  es,bluePawn1Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPbp1:             
    
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent
                           INT  10h
  transparent:             
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopbp1
	
                           MOV  CX , bluePawn1X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPbp1
                           RET


PRINTbluePAWN1 ENDP
  ;-------------------------------;
PRINTORANGEPAWN1 PROC
                           CALL OpenFileOP
                           CALL ReadDataOP
                           LEA  BX , OPAWNData
                           MOV  CX,orangePawn1X
                           MOV  DX,orangePawn1y
                
                           mov  es,orangePawn1X
                           mov  tempx,es
                           mov  es,orangePawn1Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch

  ; Drawing loop
  drawLooPOp1:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent1
                           INT  10h
  transparent1:            
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOp1
	
                           MOV  CX , orangepawn1X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOp1
                           RET
PRINTORANGEPAWN1 ENDP
  ;-------------------------------;
PRINTORANGEROOK1 PROC
                           CALL OpenFileOR
                           CALL ReadDataOR
                           LEA  BX , OROOKData
                           MOV  CX,orangeRook1X
                           MOV  DX,orangeRook1y
                           mov  es,orangeRook1X
                           mov  tempx,es
                           mov  es,orangeRook1Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOR1:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent2
                           INT  10h
  transparent2:            
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOR1
	
                           MOV  CX , orangeRook1X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOR1
                           RET
PRINTORANGEROOK1 ENDP
  ;-------------------------------;
PRINTORANGEBISHOP1 PROC
                           CALL OpenFileOB
                           CALL ReadDataOB
                           LEA  BX , OBISHOPData
                           MOV  CX,orangebishop1X
                           MOV  DX,orangebishop1y
                           mov  es,orangebishop1X
                           mov  tempx,es
                           mov  es,orangeBishop1Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOB1:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent3
                           INT  10h
  transparent3:            
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOB1
	
                           MOV  CX , orangeBishop1X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOB1
                           RET
PRINTORANGEBISHOP1 ENDP
  ;----------------------------------;
PRINTORANGEBISHOP2 proc
                           CALL OpenFileOB
                           CALL ReadDataOB
                           LEA  BX , OBISHOPData
                           MOV  CX,orangebishop2X
                           MOV  DX,orangebishop2y
                           mov  es,orangebishop2X
                           mov  tempx,es
                           mov  es,orangeBishop2Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOB2:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent5
                           INT  10h
  transparent5:            
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOB2
	
                           MOV  CX , orangeBishop2X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOB2
                           RET
PRINTORANGEBISHOP2 ENDP
  ;--------------------------------;
PRINTORANGEROOK2 PROC


                           CALL OpenFileOR
                           CALL ReadDataOR
                           LEA  BX , OROOKData
                           MOV  CX,orangeRook2X
                           MOV  DX,orangeRook2y
                
                           mov  es,orangeRook2X
                           mov  tempx,es
                           mov  es,orangeRook2Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOR2:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent6
                           INT  10h
  transparent6:            
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOR2
	
                           MOV  CX , orangeRook2X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOR2
                           RET

PRINTORANGEROOK2 ENDP
  ;--------------------------------;
PRINTORANGEQUEEN PROC
                           CALL OpenFileOQ
                           CALL ReadDataOQ
                           LEA  BX , OQUEENData
                           MOV  CX,orangeQUEENX
                           MOV  DX,orangeQUEENy
                
                           mov  es,orangeQUEENX
                           mov  tempx,es
                           mov  es,orangeQUEENY
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOq:              
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent7
                           INT  10h
  transparent7:            
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOQ
	
                           MOV  CX , orangeQUEENX
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOq
                           RET
PRINTORANGEQUEEN ENDP
  ;--------------------------------;
PRINTORANGEKING PROC
                           CALL OpenFileOK
                           CALL ReadDataOK
                           LEA  BX , OKINGData
                           MOV  CX,orangeKINGX
                           MOV  DX,orangeKINGy
                
                           mov  es,orangeKINGX
                           mov  tempx,es
                           mov  es,orangeKINGY
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOk:              
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent8
                           INT  10h
  transparent8:            
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOk
	
                           MOV  CX , orangeKingX
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOk
                           RET

PRINTORANGEKING ENDP
  ;----------------------------------;
PRINTBLUEKnight2 PROC
                           CALL OpenFileBKn
                           CALL ReadDataBKn
                           LEA  BX ,BKNIGHTData
                           MOV  CX,blueKnight2X
                           MOV  DX,blueKnight2y
                           mov  es,blueKnight2X
                           mov  tempx,es
                           mov  es,BlueKnight2Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPBKn2:            
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent9
                           INT  10h
  transparent9:            
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopBKn2
	
                           MOV  CX , blueKnight2X
                           INC  DX
                           CMP  DX , tempy
                           JNE  drawLooPBKn2
                           RET

PRINTBLUEKnight2 ENDP
  ;-----------------------------------;
PRINTBLUEKing PROC

                           CALL OpenFileBK
                           CALL ReadDataBK
                           LEA  BX ,BKINGData
                           MOV  CX,blueKingX
                           MOV  DX,blueKingy
                           mov  es,blueKINGX
                           mov  tempx,es
                           mov  es,BlueKINGY
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPBk:              
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent10
                           INT  10h
  transparent10:           
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopBK
	
                           MOV  CX , blueKingX
                           INC  DX
                           CMP  DX , TEMPY
                           JNE  drawLooPBK
                           RET

PRINTBLUEKing ENDP
  ;-----------------------------------;
PRINTBLUEQUEEN PROC

                           CALL OpenFileBQ
                           CALL ReadDataBQ
                           LEA  BX ,BQUEENData
                           MOV  CX,blueQueenX
                           MOV  DX,blueQueeny
                           mov  es,blueQUEENX
                           mov  tempx,es
                           mov  es,BlueQUEENY
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPBQ:              
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent11
                           INT  10h
  transparent11:           
                           INC  CX
                           INC  BX
                           CMP  CX,TEMPX
                           JNE  drawLoopBQ
	
                           MOV  CX , blueQueenX
                           INC  DX
                           CMP  DX , TEMPY
                           JNE  drawLooPBQ
                           RET

PRINTBLUEQUEEN ENDP
  ;--------------------------------------;
PRINTBLUEBISHOP1 PROC
                           CALL OpenFileBB
                           CALL ReadDataBB
                           LEA  BX ,BBISHOPData
                           MOV  CX,blueBishop1X
                           MOV  DX,blueBishop1y
                           mov  es,blueBishop1X
                           mov  tempx,es
                           mov  es,BlueBishop1Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPBB1:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent12
                           INT  10h
  transparent12:           
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopBB1
	
                           MOV  CX , blueBishop1X
                           INC  DX
                           CMP  DX , tempy
                           JNE  drawLooPBB1
                           RET
PRINTBLUEBISHOP1 ENDP
  ;---------------------------------------;
PRINTORANGEKNIGHT1 PROC
                           CALL OpenFileOKN
                           CALL ReadDataOKN
                           LEA  BX , OKNIGHTData
                           MOV  CX,orangeKnight1X
                           MOV  DX,orangeKNIGHT1y
                
                           mov  es,orangeKNIGHT1X
                           mov  tempx,es
                           mov  es,orangeKNIGHT1Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOkn1:            
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent13
                           INT  10h
  transparent13:           
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOkn1
	
                           MOV  CX , orangeKnight1X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOkn1

PRINTORANGEKNIGHT1 ENDP
  ;------------------------------------;
PRINTORANGEKNIGHT2 PROC

                           CALL OpenFileOKN
                           CALL ReadDataOKN
                           LEA  BX , OKNIGHTData
                           MOV  CX,orangeKnight2X
                           MOV  DX,orangeKNIGHT2y
                
                           mov  es,orangeKNIGHT2X
                           mov  tempx,es
                           mov  es,orangeKNIGHT2Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOkn2:            
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent14
                           INT  10h
  transparent14:           
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOkn2
	
                           MOV  CX , orangeKnight2X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOkn2
                           RET
PRINTORANGEKNIGHT2 ENDP
  ;------------------------------------;
PRINTBLUEROOK2 proc

                           CALL OpenFileBR
                           CALL ReadDataBR
                           LEA  BX ,BROOKData
                           MOV  CX,blueRook2X
                           MOV  DX,blueRook2y
                           mov  es,blueRook2X
                           mov  tempx,es
                           mov  es,BlueRook2Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPBR2:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent15
                           INT  10h
  transparent15:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopBR2
	
                           MOV  CX , blueRook2X
                           INC  DX
                           CMP  DX , tempy
                           JNE  drawLooPBR2
                           RET


PRINTBLUEROOK2 ENDP
  ;-------------------------------------;
PRINTBLUEBISHOP2 PROC
                           CALL OpenFileBB
                           CALL ReadDataBB
                           LEA  BX ,BBISHOPData
                           MOV  CX,blueBishop2X
                           MOV  DX,blueBishop2y
                           mov  es,blueBishop2X
                           mov  tempx,es
                           mov  es,BlueBishop2Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPBB2:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent16
                           INT  10h
  transparent16:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopBB2
	
                           MOV  CX , blueBishop2X
                           INC  DX
                           CMP  DX , tempy
                           JNE  drawLooPBB2
                           RET


PRINTBLUEBISHOP2 ENDP
  ;--------------------------------------;
PRINTBLUEKnight1 PROC

                           CALL OpenFileBKn
                           CALL ReadDataBKn
                           LEA  BX ,BKNIGHTData
                           MOV  CX,blueKnight1X
                           MOV  DX,blueKnight1y
                           mov  es,blueKnight1X
                           mov  tempx,es
                           mov  es,BlueKnight1Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPBKn1:            
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent17
                           INT  10h
  transparent17:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopBKn1
	
                           MOV  CX , blueKnight1X
                           INC  DX
                           CMP  DX , tempy
                           JNE  drawLooPBKn1

                           RET

PRINTBLUEKnight1 ENDP
  ;----------------------------------------;
PRINTORANGEPAWN2 PROC

                           CALL OpenFileOP
                           CALL ReadDataOP
                           LEA  BX , OPAWNData
                           MOV  CX,orangePawn2X
                           MOV  DX,orangePawn2y
                
                           mov  es,orangePawn2X
                           mov  tempx,es
                           mov  es,orangePawn2Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOp2:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent18
                           INT  10h
  transparent18:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOp2
	
                           MOV  CX , orangePawn2X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOp2
                           RET

PRINTORANGEPAWN2 ENDP
  ;---------------------------------------;

PRINTORANGEPAWN3 PROC
                           CALL OpenFileOP
                           CALL ReadDataOP
                           LEA  BX , OPAWNData
                           MOV  CX,orangePawn3X
                           MOV  DX,orangePawn3y
                
                           mov  es,orangePawn3X
                           mov  tempx,es
                           mov  es,orangePawn3Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOp3:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent19
                           INT  10h
  transparent19:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOp3
	
                           MOV  CX , orangepawn3X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOp3
                           RET

PRINTORANGEPAWN3 ENDP

  ;-------------------------------------;
PRINTORANGEPAWN4 PROC
  
                           CALL OpenFileOP
                           CALL ReadDataOP
                           LEA  BX , OPAWNData
                           MOV  CX,orangePawn4X
                           MOV  DX,orangePawn4y
                
                           mov  es,orangePawn4X
                           mov  tempx,es
                           mov  es,orangePawn4Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOp4:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent20
                           INT  10h
  transparent20:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOp4
	
                           MOV  CX , orangePawn4X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOp4
                           RET

PRINTORANGEPAWN4 ENDP

  ;---------------------------------------;
PRINTORANGEPAWN5 PROC
                           CALL OpenFileOP
                           CALL ReadDataOP
                           LEA  BX , OPAWNData
                           MOV  CX,orangePawn5X
                           MOV  DX,orangePawn5y
                
                           mov  es,orangePawn5X
                           mov  tempx,es
                           mov  es,orangePawn5Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOp5:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent21
                           INT  10h
  transparent21:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLooPOp5
	
                           MOV  CX , orangepawn5X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOp5
                           RET
PRINTORANGEPAWN5 ENDP
  ;----------------------------------------;
PRINTORANGEPAWN6 PROC
                           CALL OpenFileOP
                           CALL ReadDataOP
                           LEA  BX , OPAWNData
                           MOV  CX,orangePawn6X
                           MOV  DX,orangePawn6y
                
                           mov  es,orangePawn6X
                           mov  tempx,es
                           mov  es,orangePawn6Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOp6:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent22
                           INT  10h
  transparent22:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOp6
	
                           MOV  CX , orangePawn6X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOp6
                           RET



PRINTORANGEPAWN6 ENDP
  ;--------------------------------------------;
PRINTORANGEPAWN7 PROC
 
                           CALL OpenFileOP
                           CALL ReadDataOP
                           LEA  BX , OPAWNData
                           MOV  CX,orangePawn7X
                           MOV  DX,orangePawn7y
                
                           mov  es,orangePawn7X
                           mov  tempx,es
                           mov  es,orangePawn7Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOp7:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent23
                           INT  10h
  transparent23:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOp7
	
                           MOV  CX , orangepawn7X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOp7
                           RET


PRINTORANGEPAWN7 ENDP
  ;-------------------------------------------------;
PRINTORANGEPAWN8 PROC
 
                           CALL OpenFileOP
                           CALL ReadDataOP
                           LEA  BX , OPAWNData
                           MOV  CX,orangePawn8X
                           MOV  DX,orangePawn8y
                
                           mov  es,orangePawn8X
                           mov  tempx,es
                           mov  es,orangePawn8Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPOp8:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent24
                           INT  10h
  transparent24:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopOp8
	
                           MOV  CX , orangePawn8X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPOp8
                           RET



PRINTORANGEPAWN8 ENDP

  ;------------------------------------------------------;
PRINTBLUEPAWN2 PROC

                           CALL OpenFileBP
                           CALL ReadDataBP
                           LEA  BX , BPAWNData
                           MOV  CX,BLUEPawn2X
                           MOV  DX,bluePawn2y
                
                           mov  es,bluePawn2X
                           mov  tempx,es
                           mov  es,bluePawn2Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPbp2:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent25
                           INT  10h
  transparent25:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopbp2
	
                           MOV  CX , bluePawn2X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPbp2
                           RET


PRINTBLUEPAWN2 ENDP
  ;----------------------------------------------------------;
PRINTBLUEPAWN3 PROC

                           CALL OpenFilebP
                           CALL ReadDatabP
                           LEA  BX , bPAWNData
                           MOV  CX,bluePawn3X
                           MOV  DX,bluePawn3y
                
                           mov  es,bluePawn3X
                           mov  tempx,es
                           mov  es,bluePawn3Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPbp3:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent26
                           INT  10h
  transparent26:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopbp3
	
                           MOV  CX , bluepawn3X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPbp3
                           RET


PRINTBLUEPAWN3 ENDP
  ;----------------------------------------------------------;
PRINTBLUEPAWN4 PROC

                           CALL OpenFilebP
                           CALL ReadDatabP
                           LEA  BX , bPAWNData
                           MOV  CX,bluePawn4X
                           MOV  DX,bluePawn4y
                
                           mov  es,bluePawn4X
                           mov  tempx,es
                           mov  es,bluePawn4Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPbp4:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent27
                           INT  10h
  transparent27:           
               
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopbp4
	
                           MOV  CX , bluePawn4X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPbp4
                           RET


PRINTBLUEPAWN4 ENDP
  ;----------------------------------------------------------;
PRINTBLUEPAWN5 PROC
                           CALL OpenFilebP
                           CALL ReadDatabP
                           LEA  BX , bPAWNData
                           MOV  CX,bluePawn5X
                           MOV  DX,bluePawn5y
                
                           mov  es,bluePawn5X
                           mov  tempx,es
                           mov  es,bluePawn5Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPbp5:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent28
                           INT  10h
  transparent28:           
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLooPbp5
	
                           MOV  CX , bluepawn5X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPbp5
                           RET


PRINTBLUEPAWN5 ENDP
  ;----------------------------------------------------------;
PRINTBLUEPAWN6 PROC
                           CALL OpenFilebP
                           CALL ReadDatabP
                           LEA  BX , bPAWNData
                           MOV  CX,bluePawn6X
                           MOV  DX,bluePawn6y
                
                           mov  es,bluePawn6X
                           mov  tempx,es
                           mov  es,bluePawn6Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPbp6:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent29
                           INT  10h
  transparent29:           
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopbp6
	
                           MOV  CX , bluePawn6X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPbp6
                           RET


PRINTBLUEPAWN6 ENDP
  ;----------------------------------------------------------;
PRINTBLUEPAWN7 PROC
                           CALL OpenFilebP
                           CALL ReadDatabP
                           LEA  BX , bPAWNData
                           MOV  CX,bluePawn7X
                           MOV  DX,bluePawn7y
                
                           mov  es,bluePawn7X
                           mov  tempx,es
                           mov  es,bluePawn7Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPbp7:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent30
                           INT  10h
  transparent30:           
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopbp7
	
                           MOV  CX , bluepawn7X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPbp7
                           RET


PRINTBLUEPAWN7 ENDP
  ;----------------------------------------------------------;
PRINTBLUEPAWN8 PROC

                           CALL OpenFilebP
                           CALL ReadDatabP
                           LEA  BX , bPAWNData
                           MOV  CX,bluePawn8X
                           MOV  DX,bluePawn8y
                
                           mov  es,bluePawn8X
                           mov  tempx,es
                           mov  es,bluePawn8Y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25

                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPbp8:             
                           MOV  AL,[BX]
                           cmp  al,0fh
                           je   transparent31
                           INT  10h
  transparent31:           
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopbp8
	
                           MOV  CX , bluePawn8X
                           INC  DX
                           CMP  DX ,tempy
                           JNE  drawLooPbp8
                           RET

PRINTBLUEPAWN8 ENDP
  ;---------------------------------------------------------------;
  ;------------------------------------------------------------------------;;
DRAWORANGEPIECE PROC
                           push bx
                           push dx

                           mov  bx,tempHBx
                           mov  dx,tempHBy
 
                           cmp  bx,orangeBishop1X
                           jne  comparebishop2DRAW
 
                           cmp  dx, orangeBishop1Y
                           jne  comparebishop2DRAW
 
                           call PRINTORANGEBISHOP1
                           pop  dx
                           pop  bx
                           ret
 
  comparebishop2DRAW:      cmp  bx,orangeBishop2X
                           jne  notorangeBishopDRAW
 
                           cmp  dx, orangeBishop2Y
                           jne  notorangeBishopDRAW
 
                           call PRINTORANGEBISHOP2
                           pop  dx
                           pop  bx
                           ret
 
  notorangeBishopDRAW:     
 
  ;;---------------------------------------------------------------------;;
                           cmp  bx,orangeknight1X
                           jne  compareknight2DRAW
 
                           cmp  dx, orangeknight1Y
                           jne  compareknight2DRAW
 
                           CALL PRINTORANGEKNIGHT1
                           pop  dx
                           pop  bx
                           ret
 
  compareknight2DRAW:      cmp  bx,orangeknight2X
                           jne  notorangeknightDRAW
 
                           cmp  dx, orangeknight2Y
                           jne  notorangeknightDRAW
 
                           CALL PRINTORANGEKNIGHT2
                           pop  dx
                           pop  bx
                           ret
 
  notorangeknightDRAW:     
  ;;----------------------------------------------------------;;
                           cmp  bx,orangequeenX
                           jne  comparequeen2DRAW
 
                           cmp  dx, orangequeenY
                           jne  comparequeen2DRAW
 
                           CALL PRINTORANGEQUEEN
                           pop  dx
                           pop  bx
                           ret
 
  comparequeen2DRAW:       cmp  bx,orangequeenX
                           jne  notorangequeenDRAW
 
                           cmp  dx, orangequeenY
                           jne  notorangequeenDRAW
 
                           CALL PRINTORANGEQUEEN
                           pop  dx
                           pop  bx
                           ret
 
  notorangequeenDRAW:      
  ;;------------------------------------------------;;

 
                           cmp  bx,orangekingX
                           jne  notorangekingDRAW
 
                           cmp  dx, orangekingY
                           jne  notorangekingDRAW
 
                           CALL PRINTORANGEKing
                           pop  dx
                           pop  bx
                           ret
 
  notorangekingDRAW:       
  ;;-------------------------------------------------------;;
                           cmp  bx,orangerook1X
                           jne  comparerook2DRAW
 
                           cmp  dx, orangerook1Y
                           jne  comparerook2DRAW
 
                           CALL PRINTORANGEROOK1
 
                           pop  dx
                           pop  bx
                           ret
 
  comparerook2DRAW:        cmp  bx,orangerook2X
                           jne  notorangerookDRAW
 
                           cmp  dx, orangerook2Y
                           jne  notorangerookDRAW
 
                           CALL PRINTORANGEROOK2
                           pop  dx
                           pop  bx
                           ret
 
  notorangerookDRAW:       cmp  bx,orangePawn1X
                           jne  comparePawn2DRAW
 
                           cmp  dx, orangePawn1Y
                           jne  comparepawn2DRAW
 
                           CALL PRINTORANGEPAWN1
                           pop  dx
                           pop  bx
                           ret
 
  comparePawn2DRAW:        cmp  bx,orangePawn2X
                           jne  comparePawn3DRAW
 
                           cmp  dx, orangePAWN2Y
                           jne  comparePawn3DRAW
 
                           CALL PRINTORANGEPAWN2
                           pop  dx
                           pop  bx
                           ret
 
  comparePawn3DRAW:        cmp  bx,orangePawn3X
                           jne  comparePawn4DRAW
 
                           cmp  dx, orangePawn3Y
                           jne  comparepawn4DRAW
 
                           CALL PRINTORANGEPAWN3
                           pop  dx
                           pop  bx
                           ret
 
  comparePawn4DRAW:        cmp  bx,orangePawn4X
                           jne  comparePawn5DRAW
 
                           cmp  dx, orangePawn4Y
                           jne  comparePawn5DRAW
 
                           CALL PRINTORANGEPAWN4
                           pop  dx
                           pop  bx
                           ret
 
  comparePawn5DRAW:        cmp  bx,orangePawn5X
                           jne  comparePawn6DRAW
 
                           cmp  dx, orangePawn5Y
                           jne  comparepawn6DRAW
 
                           CALL PRINTORANGEPAWN5
                           pop  dx
                           pop  bx
                           ret
 
  comparePawn6DRAW:        cmp  bx,orangePawn6X
                           jne  comparePawn7DRAW
 
                           cmp  dx, orangepawn6Y
                           jne  comparePawn7DRAW
 
                           CALL PRINTORANGEPAWN6
                           pop  dx
                           pop  bx
                           ret
  comparePawn7DRAW:        cmp  bx,orangePawn7X
                           jne  comparePawn8DRAW
 
                           cmp  dx, orangePawn7Y
                           jne  comparepawn8DRAW
 
                           CALL PRINTORANGEPAWN7
                           pop  dx
                           pop  bx
                           ret
 
  comparePawn8DRAW:        cmp  bx,orangePawn8X
                           jne  notorangeDRAW
 
                           cmp  dx, orangepawn8Y
                           jne  notorangeDRAW
 
                           CALL PRINTORANGEPAWN8
                           pop  dx
                           pop  bx
                           ret
  notorangeDRAW:           
                           pop  dx
                           pop  bx
                           RET
DRAWORANGEPIECE ENDP

DRAWHIGHLIGHTEDBLOCK PROC
  ;;---------------------highlighted Tile------------;;
                           MOV  CX,HighlightedBlock1x
                           MOV  DX,HighlightedBlock1Y
                           mov  es,HighlightedBlock1x
                           mov  tempx,es
                           mov  es,HighlightedBlock1y
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPHB1:             
                           MOV  AL,13
                           INT  10h
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopHB1
	
                           MOV  CX , HighlightedBlock1x
                           INC  DX
                           CMP  DX , tempy
                           JNE  drawLooPHB1


DRAWHIGHLIGHTEDBLOCK ENDP
  ;---------------------------------------------------;
DRAWBLACKBLOCK PROC
                           MOV  CX,tempHBx
                           MOV  DX,tempHBy
                           mov  es,tempHBx
                           mov  tempx,es
                           mov  es,tempHBy
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPBB:              
                           MOV  AL,00
                           INT  10h
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLooPBB
	
                           MOV  CX , tempHBx
                           INC  DX
                           CMP  DX , tempy
                           JNE  drawLooPBB
                           ret
DRAWBLACKBLOCK ENDP
DRAWWHITEBLOCK PROC
                           MOV  CX,tempHBx
                           MOV  DX,tempHBy
                           mov  es,tempHBx
                           mov  tempx,es
                           mov  es,tempHBy
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPWB:              
                           MOV  AL,15
                           INT  10h
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLooPWB
	
                           MOV  CX , tempHBx
                           INC  DX
                           CMP  DX , tempy
                           JNE  drawLooPWB
                           ret
DRAWWHITEBLOCK ENDP
  ;------------------------------------------------------;
 
DRAWCHESSBLOCK PROC
                           push AX
                           push dx
                           PUSH BX
                           PUSH CX
                           MOV  DX,00
                           MOV  BX,50D
                           MOV  CX,60D
                           mov  ax,tempHBy
                           div  BX
                           cmp  DX,0
                           jNE  evenrows
  oddrows:                 
                           mov  ax ,tempHBx
                           div  CX
                           cmp  DX,0
                           jNE  DRAWWHITE
  DRAWBLACK:               
                           CALL DRAWBLACKBLOCK
                           POP  CX
                           POP  BX
                           POP  DX
                           POP  AX
                           RET
  evenrows:                
                           MOV  DX,00
                           mov  ax ,tempHBx
                           div  CX
                           cmp  DX,0
                           jne  DRAWBLACK
  DRAWWHITE:               
                           CALL DRAWWHITEBLOCK
                           POP  CX
                           POP  BX
                           POP  DX
                           POP  AX
                           RET

DRAWCHESSBLOCK ENDP






DRAWBluePIECE PROC
                           push bx
                           push dx

                           mov  bx,tempHBx
                           mov  dx,tempHBy
 
                           cmp  bx,BlueBishop1X
                           jne  comparebishopB2DRAW
 
                           cmp  dx, BlueBishop1Y
                           jne  comparebishopB2DRAW
 
                           call PRINTBlueBISHOP1
                           pop  dx
                           pop  bx
                           ret
 
  comparebishopB2DRAW:     cmp  bx,BlueBishop2X
                           jne  notBlueBishopDRAW
 
                           cmp  dx, BlueBishop2Y
                           jne  notBlueBishopDRAW
 
                           call PRINTBlueBISHOP2
                           pop  dx
                           pop  bx
                           ret
 
  notBlueBishopDRAW:       
 
  ;;---------------------------------------------------------------------;;
                           cmp  bx,Blueknight1X
                           jne  compareknightB2DRAW
 
                           cmp  dx, Blueknight1Y
                           jne  compareknightB2DRAW
 
                           CALL PRINTBlueKNIGHT1
                           pop  dx
                           pop  bx
                           ret
 
  compareknightB2DRAW:     cmp  bx,Blueknight2X
                           jne  notBlueknightDRAW
 
                           cmp  dx, Blueknight2Y
                           jne  notBlueknightDRAW
 
                           CALL PRINTBlueKNIGHT2
                           pop  dx
                           pop  bx
                           ret
 
  notBlueknightDRAW:       
  ;;----------------------------------------------------------;;
                           cmp  bx,BluequeenX
                           jne  comparequeenB2DRAW
 
                           cmp  dx, BluequeenY
                           jne  comparequeenB2DRAW
 
                           CALL PRINTBlueQUEEN
                           pop  dx
                           pop  bx
                           ret
 
  comparequeenB2DRAW:      cmp  bx,BluequeenX
                           jne  notBluequeenDRAW
 
                           cmp  dx, BluequeenY
                           jne  notBluequeenDRAW
 
                           CALL PRINTBlueQUEEN
                           pop  dx
                           pop  bx
                           ret
 
  notBluequeenDRAW:        
  ;;------------------------------------------------;;

 
                           cmp  bx,BluekingX
                           jne  notBluekingDRAW
 
                           cmp  dx, BluekingY
                           jne  notBluekingDRAW
 
                           CALL PRINTBlueKing
                           pop  dx
                           pop  bx
                           ret
 
  notBluekingDRAW:         
  ;;-------------------------------------------------------;;
                           cmp  bx,Bluerook1X
                           jne  comparerookB2DRAW
 
                           cmp  dx, Bluerook1Y
                           jne  comparerookB2DRAW
 
                           CALL PRINTBlueROOK1
 
                           pop  dx
                           pop  bx
                           ret
 
  comparerookB2DRAW:       cmp  bx,Bluerook2X
                           jne  notBluerookDRAW
 
                           cmp  dx, Bluerook2Y
                           jne  notBluerookDRAW
 
                           CALL PRINTBlueROOK2
                           pop  dx
                           pop  bx
                           ret
 
  notBluerookDRAW:         cmp  bx,BluePawn1X
                           jne  comparePawnB2DRAW
 
                           cmp  dx, BluePawn1Y
                           jne  comparepawnB2DRAW
 
                           CALL PRINTBluePAWN1
                           pop  dx
                           pop  bx
                           ret
 
  comparePawnB2DRAW:       cmp  bx,BluePawn2X
                           jne  comparePawnB3DRAW
 
                           cmp  dx, BluePAWN2Y
                           jne  comparePawnB3DRAW
 
                           CALL PRINTBluePAWN2
                           pop  dx
                           pop  bx
                           ret
 
  comparePawnB3DRAW:       cmp  bx,BluePawn3X
                           jne  comparePawnB4DRAW
 
                           cmp  dx, BluePawn3Y
                           jne  comparepawnB4DRAW
 
                           CALL PRINTBluePAWN3
                           pop  dx
                           pop  bx
                           ret
 
  comparePawnB4DRAW:       cmp  bx,BluePawn4X
                           jne  comparePawnB5DRAW
 
                           cmp  dx, BluePawn4Y
                           jne  comparePawnB5DRAW
 
                           CALL PRINTBluePAWN4
                           pop  dx
                           pop  bx
                           ret
 
  comparePawnB5DRAW:       cmp  bx,BluePawn5X
                           jne  comparePawnB6DRAW
 
                           cmp  dx, BluePawn5Y
                           jne  comparepawnB6DRAW
 
                           CALL PRINTBluePAWN5
                           pop  dx
                           pop  bx
                           ret
 
  comparePawnB6DRAW:       cmp  bx,BluePawn6X
                           jne  comparePawnB7DRAW
 
                           cmp  dx, Bluepawn6Y
                           jne  comparePawnB7DRAW
 
                           CALL PRINTBluePAWN6
                           pop  dx
                           pop  bx
                           ret
  comparePawnB7DRAW:       cmp  bx,BluePawn7X
                           jne  comparePawnB8DRAW
 
                           cmp  dx, BluePawn7Y
                           jne  comparepawnB8DRAW
 
                           CALL PRINTBluePAWN7
                           pop  dx
                           pop  bx
                           ret
 
  comparePawnB8DRAW:       cmp  bx,BluePawn8X
                           jne  notBlueDRAW
 
                           cmp  dx, Bluepawn8Y
                           jne  notBlueDRAW
 
                           CALL PRINTBluePAWN8
                           pop  dx
                           pop  bx
                           ret
  notBlueDRAW:             
                           pop  dx
                           pop  bx
                           RET
DRAWBluePIECE ENDP
DRAWHIGHLIGHTEDINDICATOR PROC
                           push CX
                           push dx
                           MOV  CX,tempHBx
                           MOV  DX,tempHBy
                           mov  es,tempHBx
                           mov  tempx,es
                           mov  es,tempHBy
                           mov  tempy,es
                           add  tempx,30
                           add  tempy,25
                           MOV  AH,0ch
	
  ; Drawing loop
  drawLooPIB1:             
                           MOV  AL,12
                           INT  10h
                           INC  CX
                           INC  BX
                           CMP  CX,tempx
                           JNE  drawLoopIB1
	
                           MOV  CX , tempHBx
                           INC  DX
                           CMP  DX , tempy
                           JNE  drawLooPIB1
                           pop  dx
                           pop  cx

                           ret
DRAWHIGHLIGHTEDINDICATOR ENDP
orangerooklogic1 proc
                           push ax
                           push bx
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y
                           mov  tempHBx,ax
                           mov  temphby,bx
  repeatUprook:            
                           sub  temphby,25
                           cmp  temphby ,0
                           jl   restrook
                           call DRAWHIGHLIGHTEDINDICATOR
                           call DRAWBluePIECE
                           jmp  repeatuprook

                        
  restrook:                
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y
                           mov  tempHbx,ax
                           mov  temphby,bx
  ;;----------------------------------------------------------;;
  repeatdownrook:          
                       
                           add  temphby,25
 
                           
                           cmp  temphby ,175
                           jg   restrook1
                           call DRAWHIGHLIGHTEDINDICATOR
                           call DRAWBluePIECE
                           jmp  repeatdownrook

  restrook1:               
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y

                           mov  tempHbx,ax
                           mov  temphby,bx
  ;;------------------------------------------------------------;;;
  repeatrightrook:         
                      
                           add  temphbx,30

                           cmp  temphbx ,210
                           jg   restrook2
                           call DRAWHIGHLIGHTEDINDICATOR
                           jmp  repeatrightrook

  restrook2:               
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y


                           mov  tempHbx,ax
                           mov  temphby,bx
                          
  repeatleftrook:          
                      
                           sub  temphbx,30
  
                           
                           cmp  temphbx ,0
                           jl   finishrook
                           call DRAWHIGHLIGHTEDINDICATOR
                           jmp  repeatleftrook

  finishrook:              pop  bx
                           pop  ax
                           ret

orangerooklogic1 endp
orangePawnLogic1 proc

                           cmp  donefirstmove,1
                           je   oneTile

  PAWN1_OPTIONS:           

                           mov  es, HighlightedBlock1Y
                           mov  tempHBy, es
                           add  tempHBy,25
                           MOV  es,tempHBy
                           MOV  INDICATORBLOCKY,es
                           CALL DRAWHIGHLIGHTEDINDICATOR
                           add  tempHBy,25
                           MOV  es,tempHBy
                           MOV  INDICATORBLOCKY,es
                           CALL DRAWHIGHLIGHTEDINDICATOR
                           ret

  oneTile:                 

                           mov  tempHBy, es
                           add  tempHBy,25
                           ret

orangePawnLogic1 endp

orangekingLogic proc
                           push AX
                           push bx

                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y
                           mov  temphby,bx
                           mov  tempHBx,ax
                           add  tempHBx,30
                           cmp  temphbx,240
                           jl   draw1
                           jge  resetking1

  draw1:                   
                           call DRAWHIGHLIGHTEDINDICATOR
  resetking1:              
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y
                           mov  temphby,bx
                           mov  temphbx,ax
                           sub  tempHBx,30
                           cmp  temphbx,0
                           jge  draw2
                           jl   resetking2

                                                       
  draw2:                   
                           call DRAWHIGHLIGHTEDINDICATOR

  resetking2:              mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y
                           mov  temphbx,ax
                           mov  tempHBy, bx
                           sub  tempHBy ,25
                           cmp  temphby,0
                           jl   resetking3
                           jge  draw3
  draw3:                   
                           call DRAWHIGHLIGHTEDINDICATOR
  resetking3:              
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y
                           mov  temphbx,ax
                           mov  tempHBy, bx
                           add  tempHBy,25
                           cmp  temphby,200
                           jl   draw4
                           jge  resetking4
  draw4:                   
                           call DRAWHIGHLIGHTEDINDICATOR
  resetking4:              
             
                         

                           pop  bx
                           pop  ax
                           ret

orangekingLogic endp

orangequeenLogic proc
                           push AX
                           push bx

                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y

                           mov  tempHbx,ax
                           mov  temphby,bx
  ;;-----------------------------------------------------;;
  repeatUp:                
                           sub  temphby,25
                           cmp  temphby ,0
                           jl   rest
                           call DRAWHIGHLIGHTEDINDICATOR
                           jmp  repeatup

                        
  rest:                    
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y
                           mov  tempHbx,ax
                           mov  temphby,bx
  ;;----------------------------------------------------------;;
  repeatdown:              
                       
                           add  temphby,25
 
                           
                           cmp  temphby ,175
                           jg   rest1
                           call DRAWHIGHLIGHTEDINDICATOR
                           jmp  repeatdown

  rest1:                   
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y

                           mov  tempHbx,ax
                           mov  temphby,bx
  ;;------------------------------------------------------------;;;
  repeatright:             
                      
                           add  temphbx,30

                           cmp  temphbx ,210
                           jg   rest2
                           call DRAWHIGHLIGHTEDINDICATOR
                           jmp  repeatright

  rest2:                   
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y


                           mov  tempHbx,ax
                           mov  temphby,bx
  ;;-----------------------------------------------;;;


  repeatUpRightqueen:      add  tempHBx,30
                           sub  temphby, 25

                           cmp  temphbx,240
                           jg   rest4
 

                           cmp  temphby,0
                           jl   rest4

                           call DRAWHIGHLIGHTEDINDICATOR


                           jmp  repeatUpRightqueen
  ;;------------------------------------------------;;
  rest4:                   mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y
                           mov  tempHbx,ax
                           mov  temphby,bx
  repeatUpleftqueen:       
  
  
                           sub  tempHBx,30
                           sub  temphby, 25
                           cmp  temphbx,0
                           jl   rest5
  
                           cmp  temphby,0
                           jl   rest5
                           call DRAWHIGHLIGHTEDINDICATOR
                           jmp  repeatupleftqueen
  ;;-----------------------------------------------;;
  rest5:                   mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y
                           mov  tempHbx,ax
                           mov  temphby,bx
  repeatdownRightqueen:    
  
                           add  tempHBx,30
                           add  temphby, 25
  
                           cmp  temphbx,240
                           jge  rest6
  
                           cmp  temphby,200
                           jge  rest6
                           call DRAWHIGHLIGHTEDINDICATOR
                           jmp  repeatdownRightqueen
  ;;-------------------------------------------------;;
  rest6:                   mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y
                           mov  tempHbx,ax
                           mov  temphby,bx
  repeatdownleftqueen:     
                          
                           sub  tempHBx,30
                           add  tempHBy, 25

                           cmp  temphbx,0
                           jl   rest7
  
                           cmp  temphby,200
                           jge  rest7
                           call DRAWHIGHLIGHTEDINDICATOR
                           jMP  repeatdownleftqueen
  ;;------------------------------------------------;;
  rest7:                   mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1Y
                           mov  tempHbx,ax
                           mov  temphby,bx
  repeatleft:              
                      
                           sub  temphbx,30
  
                           
                           cmp  temphbx ,0
                           jl   finishqueen
                           call DRAWHIGHLIGHTEDINDICATOR
                           jmp  repeatleft
  finishqueen:             
                           pop  bx
                           pop  ax
                           ret

orangequeenlogic endp
  ;;--------------------------------------------------------------------------------------;;
orangeBishopLogic1 proc
                           push ax
                           push bx


                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1y

                           mov  tempHBx,ax
                           mov  tempHBy,bx
    

  repeatUpRight:           
                           add  tempHBx,30
                           sub  temphby, 25
       
                           cmp  temphbx,240
                           jg   reset1
 

  compareY1:               cmp  temphby,0
                           jl   reset1
                           CALL DRAWORANGEPIECE
                           JZ   RESET1
                           call DRAWHIGHLIGHTEDINDICATOR
                           call DRAWBluePIECE

                           jmp  repeatUpRight
                           

                           
  ;;--------------------------------------;;

  reset1:                  
  
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1y
                           mov  tempHBx,ax
                           mov  tempHBy,bx
  repeatUpleft:            
  
  
                           sub  tempHBx,30
                           sub  temphby, 25
                           cmp  temphbx,0
                           jl   reset2
  
  compareY2:               cmp  temphby,0
                           jl   reset2
                           CALL DRAWORANGEPIECE
                           jz   reset2
                           call DRAWHIGHLIGHTEDINDICATOR
                           call DRAWBluePIECE

                           jmp  repeatupleft

  
  
  ;;-------------------------------------------;;
  reset2:                  
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1y
                           mov  tempHBx,ax
                           mov  tempHBy,bx
  repeatdownRight:         
  
                           add  tempHBx,30
                           add  temphby, 25
  
                           cmp  temphbx,240
                           jge  reset3
  
  compareY3:               cmp  temphby,200
                           jge  reset3
                           CALL DRAWORANGEPIECE
                           JZ   RESET3
                           call DRAWHIGHLIGHTEDINDICATOR
                           call DRAWBluePIECE
                           jmp  repeatdownRight
  reset3:                  
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1y
                           mov  tempHBx,ax
                           mov  tempHBy,bx
  ;----------------------------------------------------;;
  repeatdownleft:          
                          
                           sub  tempHBx,30
                           add  tempHBy, 25

                           cmp  temphbx,0
                           jl   finish
  
  compareY4:               cmp  temphby,200
                           jge  finish
                           CALL DRAWORANGEPIECE
                           JZ   finish
                           call DRAWHIGHLIGHTEDINDICATOR
                           call DRAWBluePIECE
                           jMP  repeatdownleft
  
  finish:                  pop  bx
                           pop  ax
                           ret

orangeBishopLogic1 endp
  ;------------------------------------------------------;
orangeknightLogic1 PROC
                           push ax
                           push bx


                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1y

                           mov  tempHBx,ax
                           mov  tempHBy,bx
    

  OKL1:                    
                           add  tempHBx,30
                           sub  temphby, 50

                           cmp  temphbx,240
                           jg   OKL2
 

  compareOKL1:             
                           cmp  temphby,0
                           jl   OKL2

                           call DRAWHIGHLIGHTEDINDICATOR

  OKL2:                    
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1y
                           mov  tempHBx,ax
                           mov  tempHBy,bx

                           add  tempHBx,60
                           sub  temphby, 25

                           cmp  temphbx,240
                           jg   reset1OKL
 

  compareOKL2:             cmp  temphby,0
                           jl   reset1OKL

                           call DRAWHIGHLIGHTEDINDICATOR


                    
                           

                           
  ;;--------------------------------------;;

  reset1OKL:               
  
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1y
                           mov  tempHBx,ax
                           mov  tempHBy,bx
         
  
  
                           sub  tempHBx,30
                           sub  temphby, 50
                           cmp  temphbx,0
                           jl   OKL3
  
  compareOKL3:             cmp  temphby,0
                           jl   OKL3
                           call DRAWHIGHLIGHTEDINDICATOR
                         
  OKL3:                    
  
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1y
                           mov  tempHBx,ax
                           mov  tempHBy,bx
         
  
  
                           sub  tempHBx,60
                           sub  temphby, 25
                           cmp  temphbx,0
                           jl   OKL4
  
  compareOKL4:             cmp  temphby,0
                           jl   OKL4
                           call DRAWHIGHLIGHTEDINDICATOR
  
  
  ;;-------------------------------------------;;
  OKL4:                    
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1y
                           mov  tempHBx,ax
                           mov  tempHBy,bx
         
  
                           add  tempHBx,60
                           add  temphby, 25
  
                           cmp  temphbx,240
                           jg   OKL6
  
  compareOKL5:             cmp  temphby,200
                           jg   OKL6
                           call DRAWHIGHLIGHTEDINDICATOR

  OKL6:                    
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1y
                           mov  tempHBx,ax
                           mov  tempHBy,bx
         
  
                           add  tempHBx,30
                           add  temphby, 50
  
                           cmp  temphbx,240
                           jg   OKL7
  
  compareOKL6:             cmp  temphby,200
                           jg   OKL7
                           call DRAWHIGHLIGHTEDINDICATOR

  ;----------------------------------------------------;;
  OKL7:                    
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1y
                           mov  tempHBx,ax
                           mov  tempHBy,bx
                           sub  tempHBx,60
                           add  tempHBy, 25

                           cmp  temphbx,0
                           jl   OKL8
  
  compareOKL7:             cmp  temphby,200
                           jge  OKL8
                           call DRAWHIGHLIGHTEDINDICATOR
  OKL8:                    
                           mov  ax,HighlightedBlock1x
                           mov  bx,HighlightedBlock1y
                           mov  tempHBx,ax
                           mov  tempHBy,bx
                           sub  tempHBx,30
                           add  tempHBy, 50

                           cmp  temphbx,0
                           jl   YES
  
  compareOKL8:             cmp  temphby,200
                           jge  YES
                           call DRAWHIGHLIGHTEDINDICATOR
  
  YES:                     pop  bx
                           pop  ax
                           ret


orangeknightLogic1 ENDP
  ;-------------------------------------------------;
DeleteHighlightedBlock proc
                           push ax
                           push bx
                           push cx
                           push dx

                           mov  cx,0
                           mov  dx,0

  check:                   
                           mov  ah,0dh
                           int  10h

                           cmp  al ,12d
                           je   drawblock
            
  loopx:                   
                           add  cx,30
                           cmp  cx,240
                           jge  loopy
                           jl   check

  drawblock:               
                           mov  temphbx,cx
                           mov  temphby,dx

                           call DRAWCHESSBLOCK
                           call DRAWORANGEPIECE
                           call DRAWBLUEPIECE
                           jmp  loopx
  loopy:                   
                           mov  cx,0
                           add  dx,25
                           cmp  dx,200
                           jge  finishdelete
                           jl   check

 
  finishdelete:            
                           pop  dx
                           pop  cx
                           pop  bx
                           pop  AX
                           ret

DeleteHighlightedBlock endp

MovePiece proc
push ax
push bx
push cx
push dx






pop dx
pop cx
pop bx
pop ax
ret
movepiece endp

SELECTEDPIECE PROC
 
                           push bx
                           push dx

                           mov  bx,HighlightedBlock1x
                           mov  dx,HighlightedBlock1Y
 
                           cmp  bx,orangeBishop1X
                           jne  comparebishop2
 
                           cmp  dx, orangeBishop1Y
                           jne  comparebishop2
 
                           call orangeBishopLogic1
                           pop  dx
                           pop  bx
                           ret
 
  comparebishop2:          cmp  bx,orangeBishop2X
                           jne  notorangeBishop
 
                           cmp  dx, orangeBishop2Y
                           jne  notorangeBishop
 
  ;call orangeBishopLogic2
                           pop  dx
                           pop  bx
                           ret
 
  notorangeBishop:         
 
  ;;---------------------------------------------------------------------;;
                           cmp  bx,orangeknight1X
                           jne  compareknight2
 
                           cmp  dx, orangeknight1Y
                           jne  compareknight2
 
                           call orangeknightLogic1
                           pop  dx
                           pop  bx
                           ret
 
  compareknight2:          cmp  bx,orangeknight2X
                           jne  notorangeknight
 
                           cmp  dx, orangeknight2Y
                           jne  notorangeknight
 
  ;call orangeknightLogic2
                           pop  dx
                           pop  bx
                           ret
 
  notorangeknight:         
  ;;----------------------------------------------------------;;
                           cmp  bx,orangequeenX
                           jne  comparequeen2
 
                           cmp  dx, orangequeenY
                           jne  comparequeen2
 
                           call orangequeenLogic
                           pop  dx
                           pop  bx
                           ret
 
  comparequeen2:           cmp  bx,orangequeenX
                           jne  notorangequeen
 
                           cmp  dx, orangequeenY
                           jne  notorangequeen
 
  ;call orangequeenLogic
                           pop  dx
                           pop  bx
                           ret
 
  notorangequeen:          
  ;;------------------------------------------------;;
                           cmp  bx,orangekingX
                           jne  compareking2
 
                           cmp  dx, orangekingY
                           jne  compareking2
 
                           call orangekingLogic
                           pop  dx
                           pop  bx
                           ret
 
  compareking2:            cmp  bx,orangekingX
                           jne  notorangeking
 
                           cmp  dx, orangekingY
                           jne  notorangeking
 
  ;call orangekingLogic
                           pop  dx
                           pop  bx
                           ret
 
  notorangeking:           
  ;;-------------------------------------------------------;;
                           cmp  bx,orangerook1X
                           jne  comparerook2
 
                           cmp  dx, orangerook1Y
                           jne  comparerook2
 
                           call orangerookLogic1
                           pop  dx
                           pop  bx
                           ret
 
  comparerook2:            cmp  bx,orangerook2X
                           jne  notorangerook
 
                           cmp  dx, orangerook2Y
                           jne  notorangerook
 
  ;call orangerookLogic2
                           pop  dx
                           pop  bx
                           ret
 
  notorangerook:           cmp  bx,orangePawn1X
                           jne  comparePawn2
 
                           cmp  dx, orangePawn1Y
                           jne  comparepawn2
 
                           call orangePawnLogic1
                           pop  dx
                           pop  bx
                           ret
 
  comparePawn2:            cmp  bx,orangePawn2X
                           jne  comparePawn3
 
                           cmp  dx, orangeBishop2Y
                           jne  comparePawn3
 
  ;call orangePawnLogic2
                           pop  dx
                           pop  bx
                           ret
 
  comparePawn3:            cmp  bx,orangePawn3X
                           jne  comparePawn4
 
                           cmp  dx, orangePawn3Y
                           jne  comparepawn4
 
  ;call orangePawnLogic3
                           pop  dx
                           pop  bx
                           ret
 
  comparePawn4:            cmp  bx,orangePawn4X
                           jne  comparePawn5
 
                           cmp  dx, orangePawn4Y
                           jne  comparePawn5
 
  ;call orangePawnLogic4
                           pop  dx
                           pop  bx
                           ret
 
  comparePawn5:            cmp  bx,orangePawn5X
                           jne  comparePawn6
 
                           cmp  dx, orangePawn5Y
                           jne  comparepawn6
 
  ;call orangePawnLogic5
                           pop  dx
                           pop  bx
                           ret
 
  comparePawn6:            cmp  bx,orangePawn6X
                           jne  comparePawn7
 
                           cmp  dx, orangepawn6Y
                           jne  comparePawn7
 
  ;call orangePawnLogic6
                           pop  dx
                           pop  bx
                           ret
  comparePawn7:            cmp  bx,orangePawn7X
                           jne  comparePawn8
 
                           cmp  dx, orangePawn7Y
                           jne  comparepawn8
 
  ;call orangePawnLogic7
                           pop  dx
                           pop  bx
                           ret
 
  comparePawn8:            cmp  bx,orangePawn8X
                           jne  notorange
 
                           cmp  dx, orangepawn8Y
                           jne  notorange
 
  ;call orangePawnLogic8
                           pop  dx
                           push bx
                           ret
  notorange:               
  ;;-----------------------------------------------------------;;
                           pop  dx
                           pop  bx
SELECTEDPIECE ENDP




moveHighlightedBlock PROC
  AGAIN:                   


                           MOV  AH , 0
                           INT  16h
                           MOV  ES,HighlightedBlock1x
                           MOV  tempHBx,ES
                           MOV  ES,HighlightedBlock1Y
                           MOV  tempHBy,ES
                           cmp  al,64H
                           je   moveRIGHT1
                           cmp  al,77H
                           je   moveUP1
                           cmp  al,61H
                           je   movELEFT1
                           cmp  al,73H
                           je   moveDOWN1
                           cmp  al,71h
                           je   select
                           cmp  al,78h
                           je   resetelboard
                           jMP  Again

  moveRIGHT1:              
                           push cx
                           push dx
                           CMP  HighlightedBlock1x,210
                           je   label1
                           ADD  HighlightedBlock1x,30
                           ADD  HighlightedBlock1Y,0
                           mov  cx,HighlightedBlock1x
                           mov  tempHBx1,cx
                           mov  dx,HighlightedBlock1Y
                           mov  tempHBy1,dx
                           pop  dx
                           pop  cx
                           jmp  done
  label1:                  
                           mov  cx,HighlightedBlock1x
                           mov  tempHBx1,cx
                           mov  dx,HighlightedBlock1Y
                           mov  tempHBy1,dx
                           pop  dx
                           pop  cx
                           mov  tempHBy,180
                           JMP  DONE

  movEUP1:                 
                           push cx
                           push dx
                           CMP  HighlightedBlock1y,0
                           je   label3
                           ADD  HighlightedBlock1x,0
                           sub  HighlightedBlock1Y,25
                           mov  cx,HighlightedBlock1x
                           mov  tempHBx1,cx
                           mov  dx,HighlightedBlock1Y
                           mov  tempHBy1,dx
                           pop  dx
                           pop  cx
                           jmp  done
  label3:                  
                           mov  cx,HighlightedBlock1x
                           mov  tempHBx1,cx
                           mov  dx,HighlightedBlock1Y
                           mov  tempHBy1,dx
                           pop  dx
                           pop  cx
                           mov  tempHBy,25
                           JMP  DONE
 
 
  moveLEFT1:               
                           push cx
                           push dx
                           CMP  HighlightedBlock1x,0
                           je   label2
                           sub  HighlightedBlock1x,30
                           ADD  HighlightedBlock1Y,0
                           mov  cx,HighlightedBlock1x
                           mov  tempHBx1,cx
                           mov  dx,HighlightedBlock1Y
                           mov  tempHBy1,dx
                           pop  dx
                           pop  cx
                           jmp  done
  label2:                  
                           mov  tempHBx,30
                           JMP  DONE
  moveDOWN1:               
                           push cx
                           push dx
                           CMP  HighlightedBlock1y,175
                           je   label4
                           ADD  HighlightedBlock1x,0
                           ADD  HighlightedBlock1Y,25
                           mov  cx,HighlightedBlock1x
                           mov  tempHBx1,cx
                           mov  dx,HighlightedBlock1Y
                           mov  tempHBy1,dx
                           pop  dx
                           pop  cx
                           jmp  done
  label4:                  
                           mov  cx,HighlightedBlock1x
                           mov  tempHBx1,cx
                           mov  dx,HighlightedBlock1Y
                           mov  tempHBy1,dx
                           pop  dx
                           pop  cx
                           mov  tempHBy,150
                           JMP  DONE
                
                
                
  done:                    
                           CMP  PressedQ,1
                           JZ   Select
                
                           mov  cx,tempHBx1
                           mov  dx,tempHBy1


                           mov  AH ,0Dh

                           int  10h
                           cmp  al,12d
                           jnz  chessblock
                           call DRAWHIGHLIGHTEDBLOCK
                           call DRAWHIGHLIGHTEDINDICATOR
                           jmp  marly
                
            
  chessblock:              
                           call DRAWHIGHLIGHTEDBLOCK
                           call DRAWCHESSBLOCK
  marly:                   
                           CALL DRAWORANGEPIECE
                           CALL DRAWBLUEPIECE
                           MOV  ES,HighlightedBlock1x
                           MOV  tempHBx,ES
                           MOV  ES,HighlightedBlock1Y
                           MOV  tempHBy,ES
                           CALL DRAWORANGEPIECE
                           CALL DRAWBLUEPIECE
                
                           jmp  again

  Select:                  
                 
                           call SELECTEDPIECE
                           jmp  again


  resetelboard:            
                           call DeleteHighlightedBlock
                           dec  PressedQ
                           jmp  again

                           RET
moveHighlightedBlock ENDP

  ;-------------------------------------------;




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
 
  drawLoop100:             
                           MOV  AL,[BX]
                           INT  10h
                           INC  CX
                           INC  BX
                           CMP  CX,BoardWidth
                           JNE  drawLoop100
	
                           MOV  CX ,0
                           INC  DX
                           CMP  DX , BoardHeight
                           JNE  drawLoop100

  ;--------------------------------------------------------;
                           CALL PRINTORANGEQUEEN
                           CALL PRINTORANGEKING
                           CALL PRINTBLUEKnight1
                           CALL PRINTBLUEQUEEN
                           CALL PRINTBLUEKing
                           CALL PRINTBLUEBISHOP1
                           CALL DRAWHIGHLIGHTEDBLOCK
                           CALL PRINTBLUEROOK1
                           CALL PRINTbluePAWN1
                           CALL PRINTORANGEPAWN1
                           CALL PRINTORANGEKNIGHT1
                           CALL PRINTORANGEROOK1
                           CALL PRINTORANGEBISHOP1
                           call PRINTORANGEBISHOP2
                           CALL PRINTORANGEROOK2
                      
                       
                           CALL PRINTBLUEKnight2
                       
                      
                           CALL PRINTORANGEKNIGHT2
                           CALL PRINTBLUEROOK2
                           CALL PRINTBLUEBISHOP2
                       
                           CALL PRINTORANGEPAWN2
                           CALL PRINTORANGEPAWN3
                           CALL PRINTORANGEPAWN4
                           CALL PRINTORANGEPAWN5
                           CALL PRINTORANGEPAWN6
                           CALL PRINTORANGEPAWN7
                           CALL PRINTORANGEPAWN8
                           CALL PRINTBLUEPAWN2
                           CALL PRINTBLUEPAWN3
                           CALL PRINTBLUEPAWN4
                           CALL PRINTBLUEPAWN5
                           CALL PRINTBLUEPAWN6
                           CALL PRINTBLUEPAWN7
                           CALL PRINTBLUEPAWN8


    
  ;;------------------------------------------------------------;;
  loop1:                   
                         
                           call moveHighlightedBlock
                           jmp  loop1

             
 
             	
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





MAIN PROC FAR
                           MOV  AX , @DATA
                           MOV  DS , AX
                           CALL DRAWBOARD
                     

MAIN ENDP
END MAIN
