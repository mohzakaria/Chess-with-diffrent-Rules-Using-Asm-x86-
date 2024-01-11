include macros.inc
.Model huge
.386
.Stack 256
.Data

 FirstName            db              "Please Enter Your Name:",'$'
  InDATA               db              30,?,30 dup('$')
  KeyToContinue        db              "Please Enter Key to continue",'$'
  CHECKSS                db              "CHECK",'$'
  startChatting        db              "To Start Chatting press F1",'$'
  startGame            db              "To Start The game press F2",'$'
  endProgram           db              "To End the program press ESC",'$'
  
  PieceWidth           EQU             30

  PieceHeight          EQU             25

  BoardWidth           EQU             240

  BoardHeight          EQU             200
  ;;-------------------powerup--------------------;;
  powerFilename        DB              'power.bin', 0
  powerFilehandle      DW              ?
  powerData            DB              PieceWidth*PieceHeight dup(0)
    
  ;;-------------------BOARD--------------------;;
  BoardFilename        DB              'metro.bin', 0
  BoardFilehandle      DW              ?
  BoardData            DB              BoardWidth*BoardHeight dup(0)
    
  ;;------------------ORANGEROOK----------------------;;
    
  oRookFilename        DB              'oRook.bin',0
  OROOKFILEHANDLE      DW              ?
  OROOKData            DB              PieceWidth*PieceHeight dup(0)

  ;;-------------------ORANGEKNIGHT-------------------;;
  oKnightFilename      DB              'oKnight.bin',0
  oKnightFILEHANDLE    DW              ?
  oKnightData          DB              PieceWidth*PieceHeight dup(0)

  ;;-------------------ORANGEBISHOP-------------------;;
  oBishopFilename      DB              'oBishop.bin',0
  oBishopFILEHANDLE    DW              ?
  oBishopData          DB              PieceWidth*PieceHeight dup(0)

  ;;-------------------ORANGEQUEEN-------------------;;
  oQueenFilename       DB              'oQueen.bin',0
  oQueenFILEHANDLE     DW              ?
  oQueenData           DB              PieceWidth*PieceHeight dup(0)

  ;;-------------------ORANGEKING-------------------;;
  oKingFilename        DB              'oKing.bin',0
  oKingFILEHANDLE      DW              ?
  oKingData            DB              PieceWidth*PieceHeight dup(0)

  ;;------------------ORANGEPAWN----------------------;;
    
  oPawnFilename        DB              'oPawn.bin',0
  OPawnFILEHANDLE      DW              ?
  OPAWNData            DB              PieceWidth*PieceHeight dup(0)


  ;;------------------BLUEROOK----------------------;;
    
  bRookFilename        DB              'bRook.bin',0
  BROOKFILEHANDLE      DW              ?
  BROOKData            DB              PieceWidth*PieceHeight dup(0)

  ;;-------------------BLUEKNIGHT-------------------;;
  bKnightFilename      DB              'bKnight.bin',0
  bKnightFILEHANDLE    DW              ?
  bKnightData          DB              PieceWidth*PieceHeight dup(0)

  ;;-------------------BLUEBISHOP-------------------;;
  bBishopFilename      DB              'bBishop.bin',0
  bBishopFILEHANDLE    DW              ?
  bBishopData          DB              PieceWidth*PieceHeight dup(0)

  ;;-------------------BLUEQUEEN-------------------;;
  bQueenFilename       DB              'bQueen.bin',0
  bQueenFILEHANDLE     DW              ?
  bQueenData           DB              PieceWidth*PieceHeight dup(0)

  ;;-------------------BLUEKING-------------------;;
  bKingFilename        DB              'bKing.bin',0
  bKingFILEHANDLE      DW              ?
  bKingData            DB              PieceWidth*PieceHeight dup(0)
  ;;-------------------BLUEPAWN-------------------;;
  bPawnFilename        DB              'bPawn.bin',0
  bPawnFILEHANDLE      DW              ?
  bPawnData            DB              PieceWidth*PieceHeight dup(0)

  ;;------------------------------------;;
  rValx                dw              120
  rvaly                dw              125
  poweruppicked        dw              1
  poweruptime          db              00
  
  ;;--------------------------------------;;
  orangeknight1sec     db              0
  orangeknight1min     db              0
  orangeKnight1X       Dw              30D
  orangeKnight1Y       Dw              00
  orangeKnight1isalive Dw              01
  OKnight1powerUp      DB             03

  orangeknight2sec     DB              0
  orangeknight2min     DB              0
  orangeKnight2X       Dw              180D
  orangeKnight2Y       Dw              00
  orangeKnight2isalive Dw              01
  orangeKnight         DB              'OR.Knight','$'
  OKnight2powerUp      DB             03

  orangeQUeensec       db              0
  orangeQUeenmin       db              0
  orangeQueenX         Dw              90D
  orangeQueenY         Dw              0
  orangeQueenisalive   Dw              01
  orangeQueen          DB              'OR.Queen','$'
  OQueenpowerUp        DB              03


  orangeKingsec        db              0
  orangeKingmin        db              0
  orangeKingX          Dw              120D
  orangeKingY          Dw              0
  orangeKingisalive    Dw              1
  orangeKing           db              'OR.King','$'
  OKingpowerUp         DB              03

  orangeBishop1sec     db              0
  orangeBishop1min     db              0
  orangeBishop1X       Dw              60D
  orangeBishop1Y       Dw              0
  orangeBishop1isalive Dw              1
  orangeBishop         db              'OR.Bishop','$'
  OBishop1powerUp      DB             03
 
  orangeBishop2sec     db              0
  orangeBishop2min     db              0
  orangeBishop2X       Dw              150D
  orangeBishop2Y       Dw              0
  orangeBishop2ISALIVE Dw              01
  OBishop2powerUp      DB              03


  orangerook1sec       db              0
  orangerook1min       db              0
  orangeRook1X         Dw              0
  orangeRook1Y         Dw              0
  orangeRook1isalive   Dw              01
  orangeRook           DB              'OR.Rook','$'
  ORook1powerUp        DB             03

  orangerook2sec       db              0
  orangerook2min       db              0
  orangeRook2X         Dw              210D
  orangeRook2Y         Dw              0
  orangeRook2isalive   Dw              01
  ORook2powerUp        DB              03

  orangepawn1sec       DB              0
  orangepawn1min       DB              0
  Opawn1move           DW              01
  orangePawn1X         Dw              00
  orangePawn1Y         Dw              25D
  orangePawn1isalive   Dw              01D
  orangePawn           DB              'OR.Pawn','$'
  OPawn1powerUp        DB              03
   
  orangepawn2sec       db              0
  orangepawn2min       db              0
  Opawn2move           DW              01
  orangePawn2X         Dw              30D
  orangePawn2Y         Dw              25D
  orangePawn2isalive   Dw              01D
  OPawn2powerUp        DB              03
  
  orangepawn3sec       db              0
  orangepawn3min       db              0
  Opawn3move           DW              01
  orangePawn3X         Dw              60D
  orangePawn3Y         Dw              25D
  orangePawn3isalive   Dw              01
  OPawn3powerUp        DB           03
   
  orangepawn4sec       db              0
  orangepawn4min       db              0
  Opawn4move           DW              01
  orangePawn4X         DW              90D
  orangePawn4Y         DW              25D
  orangePawn4isalive   DW              01
  OPawn4powerUp        DB           03

   
  orangepawn5sec       db              0
  orangepawn5min       db              0
  Opawn5move           DW              01
  orangePawn5X         DW              120D
  orangePawn5Y         DW              25D
  orangePawn5isalive   DW              01D
  OPawn5powerUp        DB              03
   
  orangepawn6sec       db              0
  orangepawn6min       db              0
  Opawn6move           DW              01
  orangePawn6X         DW              150D
  orangePawn6Y         DW              25D
  orangePawn6isalive   DW              01D
  OPawn6powerUp        DB              03
   
  orangepawn7sec       db              0
  orangepawn7min       db              0
  Opawn7move           dw              01
  orangePawn7X         DW              180D
  orangePawn7Y         DW              25D
  orangePawn7isalive   DW              01D
  OPawn7powerUp        DB              03

  orangepawn8sec       db              0
  orangepawn8min       db              0
  Opawn8move           DW              01
  orangePawn8X         DW              210D
  orangePawn8Y         DW              25D
  orangePawn8isalive   DW              01D
  OPawn8powerUp        DB              03


  ;;------------------------------------------------------------------------------------------------;;
  ;;......................................Blue Pieces Variables.....................................;;
  blueknight1sec       db              0
  blueknight1min       db              0
  blueKnight1X         Dw              30D
  blueKnight1Y         Dw              175D
  blueKnight1isalive   Dw              01D
  BKnight1powerUp      DB              03
  
  

  blueknight2sec       db              0
  blueknight2min       db              0
  blueKnight2X         Dw              180D
  blueKnight2Y         Dw              175D
  blueKnight2isalive   Dw              01D
  blueKnight           db              'blueKnight','$'
  BKnight2powerUp      DB              03


  blueQueensec         db              0
  blueQueenmin         db              0
  blueQueenX           Dw              90D
  blueQueenY           Dw              175D
  blueQueenisalive     Dw              01D
  bluequeen            db              'bluequeen','$'
  BQueenpowerUp        DB             03

  bluekingsec          db              0
  bluekingmin          db              0
  blueKingX            Dw              120D
  blueKingY            Dw              175D
  blueKingisalive      Dw              01D
  blueking             db              'blueKing','$'
  BKingpowerUp         DB             03


  blueBishop1sec       db              0
  blueBishop1min       db              0
  blueBishop1X         Dw              60D
  blueBishop1Y         Dw              175D
  blueBishop1isalive   Dw              01D
  BBishop1powerUp      DB              03


  bluebishop2sec       db              0
  bluebishop2min       db              0
  blueBishop2X         Dw              150D
  blueBishop2Y         Dw              175D
  blueBishop2isalive   Dw              01D
  bluebishop           db              'blueBishop','$'
  BBishop2powerUp      DB              03


  bluerook1sec         db              0
  bluerook1min         db              0
  blueRook1X           Dw              00
  blueRook1Y           Dw              175D
  blueRook1isalive     Dw              01D
  BRook1powerUp        DB              03

  bluerook2sec         db              0
  bluerook2min         db              0
  blueRook2X           Dw              210D
  blueRook2Y           Dw              175D
  blueRook2isalive     Dw              01D
  bluerook             db              'bluerook','$'
  BRook2powerUp        DB              03


  bluepawn1sec         db              0
  bluepawn1min         db              0
  Bpawn1move           dw              1
  bluePawn1X           Dw              00
  bluePawn1Y           DW              150D
  bluePawn1isalive     DW              01D
  BPawn1powerUp        DB              03
  

  bluepawn2sec         db              0
  bluepawn2min         db              0
  Bpawn2move           dw              1
  bluePawn2X           DW              30D
  bluePawn2Y           DW              150D
  bluePawn2isalive     DW              01D
   BPawn2powerUp       DB              03

  bluepawn3sec         db              0
  bluepawn3min         db              0
  Bpawn3move           dw              1
  bluePawn3X           Dw              60D
  bluePawn3Y           Dw              150D
  bluePawn3isalive     Dw              01D
   BPawn3powerUp       DB              03

  bluepawn4sec         db              0
  bluepawn4min         db              0
  Bpawn4move           dw              1
  bluePawn4X           Dw              90D
  bluePawn4Y           DW              150D
  bluePawn4isalive     DW              01D
   BPawn4powerUp       DB              03

  bluepawn5sec         db              0
  bluepawn5min         db              0
  Bpawn5move           dw              1
  bluePawn5X           DW              120D
  bluePawn5Y           DW              150D
  bluePawn5isalive     DW              01D
   BPawn5powerUp       DB              03

  bluepawn6sec         db              0
  bluepawn6min         db              0
  Bpawn6move           dw              1
  bluePawn6X           DW              150D
  bluePawn6Y           DW              150D
  bluePawn6isalive     DW              01D
   BPawn6powerUp       DB              03

  bluepawn7sec         db              0
  bluepawn7min         db              0
  Bpawn7move           dw              1
  bluePawn7X           DW              180D
  bluePawn7Y           DW              150D
  bluePawn7isalive     DW              01D
   BPawn7powerUp       DB              03

  bluepawn8sec         DB              0
  bluepawn8min         DB              0
  Bpawn8move           dw              1
  bluePawn8X           DW              210D
  bluePawn8Y           DW              150D
  bluePawn8isalive     DW              01D
  bluepawn             DB              'bluepawn','$'
   BPawn8powerUp       DB              03

  ;;------------------------------;;
  HighlightedBlock1x   DW              00D
  HighlightedBlock1Y   DW              00D
  HighlightedBlock2x   DW              00D
  HighlightedBlock2Y   DW              175D
  tempHBx              dw              0
  tempHBy              dw              0
  tempHBx3             dw              0
  tempHBy3             dw              0
  tempHBx1             dw              0
  tempHBy1             dw              0
  tempHBx2             dw              0
  tempHBy2             dw              0
  INDICATORBLOCKY      dw              0
  INDICATORBLOCKx      dw              0
  INDICATORBLOCKY2     dw              0
  INDICATORBLOCKx2     dw              0
  ;;-----------------------------------;;
  tempx                DW              ?
  tempy                dw              ?
  PressedO             DW              01
  PressedQ             DW              01
  storedlogicorangeX   DW              00
  storedlogicorangeY   DW              00
  storedlogicblueX     DW              00
  storedlogicblueY     DW              00
  STOREDCOLOR          DB              ?
  STOREDCOLOR2         DB              ?

                       selectedmessage db'SELECTED','$'
  mes                  db              'wait 3sec','$'
  mes2                  db              'wait 2sec','$'
  ORANGEWIN            DB              '     ORANGE WON','$'
  blueWIN              DB              '      blue WON','$'
  serialcomm           DB              'serial communication Send one byte', 0AH, 0DH, "$"
  value                db              0
  cols                 db              0
  rows                 db              1
  colr                 db              41
  rowr                 db              1
  line                 db              '----------','$'
  colschat                 db           1EH
  rowschat                 db          2H
  colrchat                 db          1EH
  rowrchat                 db          0DH

.Code
  ;;-----------BOARD FILE--------;;

OpenFile PROC

                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX, BoardFilename
                                INT            21h
                                MOV            [BoardFilehandle], AX
    
                                RET

OpenFile ENDP
   
ReadData PROC
                                MOV            AH,3Fh
                                MOV            BX, [BoardFilehandle]
                                MOV            CX,BoardWidth*BoardHeight
                                LEA            DX, BoardData
                                INT            21h
                                RET
ReadData ENDP
   
   
CloseFile PROC
                                MOV            AH, 3Eh
                                MOV            BX, [BoardFilehandle]

                                INT            21h
                                RET
CloseFile ENDP
   
  ;;-----------ORANGE ROOK FILES--------;;
   
OpenFileOR PROC

    

                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,oRookFilename
                                INT            21h
     
                                MOV            [OROOKFILEHANDLE], AX
    
                                RET

OpenFileOR ENDP
   
ReadDataOR PROC

                                MOV            AH,3Fh
                                MOV            BX, [OROOKFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, OROOKData
                                INT            21h
                                RET
ReadDataOR ENDP
   
   
CloseFileOR PROC
                                MOV            AH, 3Eh
                                MOV            BX, [OROOKFILEHANDLE]
                                INT            21h
                                RET
CloseFileOR ENDP
      
OpenFilePU PROC

    

                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,PowerFilename
                                INT            21h
     
                                MOV            [PowerFILEHANDLE], AX
    
                                RET

OpenFilePU ENDP
   
ReadDataPU PROC

                                MOV            AH,3Fh
                                MOV            BX, [PowerFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, PowerData
                                INT            21h
                                RET
ReadDataPU ENDP
   
   
CloseFilePU PROC
                                MOV            AH, 3Eh
                                MOV            BX, [PowerFILEHANDLE]
                                INT            21h
                                RET
CloseFilePU ENDP
   
  ;;-----------ORANGE BISHOP FILES--------;;
OpenFileOB PROC

    

                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,obishopFilename
                                INT            21h
     
                                MOV            [oBishopFILEHANDLE], AX
    
                                RET

OpenFileOB ENDP

   
   
   
   
ReadDataOB PROC
   
                                MOV            AH,3Fh
                                MOV            BX, [oBishopFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, oBishopData
                                INT            21h
                                RET
ReadDataOB ENDP
   
   
CloseFileOB PROC
                                MOV            AH, 3Eh
                                MOV            BX, [oBishopFILEHANDLE]
                                INT            21h
                                RET
CloseFileOB ENDP
  ;;-----------ORANGE KNIGHT FILES--------;;
OpenFileOKn PROC
   
       
   
                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,oKnightFilename
                                INT            21h
        
                                MOV            [oKnightFILEHANDLE], AX
       
                                RET
   
OpenFileOKn ENDP
   
ReadDataOKn PROC
   
                                MOV            AH,3Fh
                                MOV            BX, [oKnightFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, oKnightData
                                INT            21h
                                RET
ReadDataOKn ENDP
   
   
CloseFileOKn PROC
                                MOV            AH, 3Eh
                                MOV            BX, [oKnightFILEHANDLE]
                                INT            21h
                                RET
CloseFileOKn ENDP
  ;;-----------ORANGE KING FILES--------;;
OpenFileOK PROC
   
       
   
                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,oKingFilename
                                INT            21h
        
                                MOV            [oKingFILEHANDLE], AX
       
                                RET
   
OpenFileOK ENDP
   
ReadDataOK PROC
   
                                MOV            AH,3Fh
                                MOV            BX, [oKingFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, oKingData
                                INT            21h
                                RET
ReadDataOK ENDP
   
   
CloseFileOK PROC
                                MOV            AH, 3Eh
                                MOV            BX, [oKingFILEHANDLE]
                                INT            21h
                                RET
CloseFileOK ENDP
   
  ;;-----------ORANGE QUEEN FILES--------;;
OpenFileOQ PROC
   
       
   
                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,oQueenFilename
                                INT            21h
        
                                MOV            [oQueenFILEHANDLE], AX
       
                                RET
   
OpenFileOQ ENDP
   
ReadDataOQ PROC
   
                                MOV            AH,3Fh
                                MOV            BX, [oQueenFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, oQueenData
                                INT            21h
                                RET
ReadDataOQ ENDP
   
   
CloseFileOQ PROC
                                MOV            AH, 3Eh
                                MOV            BX, [oQueenFILEHANDLE]
                                INT            21h
                                RET
CloseFileOQ ENDP
   
   
  ;;-----------ORANGE PAWN FILES--------;;
OpenFileOP PROC
   
       
   
                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,oPawnFilename
                                INT            21h
        
                                MOV            [oPawnFILEHANDLE], AX
       
                                RET
   
OpenFileOP ENDP
   
ReadDataOP PROC
   
                                MOV            AH,3Fh
                                MOV            BX, [oPawnFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, oPawnData
                                INT            21h
                                RET
ReadDataOP ENDP
   
   
CloseFileOP PROC
                                MOV            AH, 3Eh
                                MOV            BX, [oPawnFILEHANDLE]
                                INT            21h
                                RET
CloseFileOP ENDP
   
  ;;-----------BLUE ROOK FILES--------;;
   
OpenFileBR PROC
   
      
   
                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,bRookFilename
                                INT            21h
        
                                MOV            [BROOKFILEHANDLE], AX
      
                                RET
   
OpenFileBR ENDP
   
ReadDataBR PROC
   
                                MOV            AH,3Fh
                                MOV            BX, [BROOKFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, BROOKData
                                INT            21h
                                RET
ReadDataBR ENDP
   
   
CloseFileBR PROC
                                MOV            AH, 3Eh
                                MOV            BX, [BROOKFILEHANDLE]
                                INT            21h
                                RET
CloseFileBR ENDP
   
   
  ;;-----------BLUE BISHOP FILES--------;;
OpenFileBB PROC
   
      
   
                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,bBishopFilename
                                INT            21h
        
                                MOV            [BBISHOPFILEHANDLE], AX
      
                                RET
   
OpenFileBB ENDP
   
ReadDataBB PROC
   
                                MOV            AH,3Fh
                                MOV            BX, [BBISHOPFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, BBISHOPData
                                INT            21h
                                RET
ReadDataBB ENDP
   
   
CloseFileBB PROC
                                MOV            AH, 3Eh
                                MOV            BX, [BBISHOPFILEHANDLE]
                                INT            21h
                                RET
CloseFileBB ENDP
  ;;-----------BLUE QUEEN FILES--------;;
OpenFileBQ PROC
   
      
   
                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,bQueenFilename
                                INT            21h
        
                                MOV            [BQueenFILEHANDLE], AX
      
                                RET
   
OpenFileBQ ENDP
   
ReadDataBQ PROC
   
                                MOV            AH,3Fh
                                MOV            BX, [BQUEENFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, BQUEENData
                                INT            21h
                                RET
ReadDataBQ ENDP
   
   
CloseFileBQ PROC
                                MOV            AH, 3Eh
                                MOV            BX, [BQUEENFILEHANDLE]
                                INT            21h
                                RET
CloseFileBQ ENDP
  ;;-----------BLUE KING FILES--------;;
OpenFileBK PROC
   
      
   
                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,bKingFilename
                                INT            21h
        
                                MOV            [BKINGFILEHANDLE], AX
      
                                RET
   
OpenFileBK ENDP
   
ReadDataBK PROC
   
                                MOV            AH,3Fh
                                MOV            BX, [BKINGFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, BKINGData
                                INT            21h
                                RET
ReadDataBK ENDP
   
   
CloseFileBK PROC
                                MOV            AH, 3Eh
                                MOV            BX, [BKINGFILEHANDLE]
                                INT            21h
                                RET
CloseFileBK ENDP
   
   
  ;;-----------BLUE Knight FILES--------;;
OpenFileBKn PROC
   
      
   
                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,bknightFilename
                                INT            21h
        
                                MOV            [BKnightFILEHANDLE], AX
      
                                RET
   
OpenFileBkn ENDP
   
ReadDataBkn PROC
   
                                MOV            AH,3Fh
                                MOV            BX, [BKnightFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, BknightData
                                INT            21h
                                RET
ReadDataBkn ENDP
   
   
CloseFileBkn PROC
                                MOV            AH, 3Eh
                                MOV            BX, [BKnightFILEHANDLE]
                                INT            21h
                                RET
CloseFileBkn ENDP
   
   
  ;;-----------BLUE Pawn FILES--------;;
OpenFileBP PROC
   
      
   
                                MOV            AH, 3Dh
                                MOV            AL, 0
                                LEA            DX,bPawnFilename
                                INT            21h
        
                                MOV            [BPawnFILEHANDLE], AX
      
                                RET
   
OpenFileBP ENDP
   
ReadDataBP PROC
   
                                MOV            AH,3Fh
                                MOV            BX, [BPawnFILEHANDLE]
                                MOV            CX,PieceWidth*PieceHeight
                                LEA            DX, BPawnData
                                INT            21h
                                RET
ReadDataBP ENDP
   
   
CloseFileBP PROC
                                MOV            AH, 3Eh
                                MOV            BX, [BPAWNFILEHANDLE]
                                INT            21h
                                RET
CloseFileBP ENDP

  ;PRINTING EACH PIECE
    

PRINTBLUEROOK1 PROC
                                cmp            blueROOK1isalive,1
                                jne            dead19
  ;;-------------------PRINTBLUEROOK1-------------------;;
                                CALL           OpenFileBR
                                CALL           ReadDataBR
                                LEA            BX ,BROOKData
                                MOV            CX,blueRook1X
                                MOV            DX,blueRook1y
                                mov            es,blueRook1X
                                mov            tempx,es
                                mov            es,BlueRook1Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
	
  ; Drawing loop
  drawLooPBR1:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent40
                                INT            10h
  transparent40:                
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopBR1
	
                                MOV            CX , blueRook1X
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPBR1
  dead19:                       
                                RET
PRINTBLUEROOK1 ENDP



Printpowerup PROC
                                pusha
                                cmp            poweruppicked,1
                                jne            nodraw
  ;;-------------------PRINTBLUEROOK1-------------------;;
                                CALL           OpenFilepu
                                CALL           ReadDatapu
                                LEA            BX ,powerData
                                MOV            CX,rValx
                                MOV            DX,rValy
                                mov            es,rValx
                                mov            tempx,es
                                mov            es,rValy
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
  	
  ; Drawing loop
  drawLooPPU:                   
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent89855
                                INT            10h
  transparent89855:             
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLooppu
  	
                                MOV            CX , rValx
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPpu
  nodraw:                       popa
                                RET
Printpowerup ENDP

  ;-------------------------------;
PRINTbluePAWN1 PROC
                                cmp            bluePawn1isalive,1
                                jne            dead18
                                CALL           OpenFilebP
                                CALL           ReadDatabP
                                LEA            BX , bPAWNData
                                MOV            CX,bluePawn1X
                                MOV            DX,bluePawn1y
                
                                mov            es,bluePawn1X
                                mov            tempx,es
                                mov            es,bluePawn1Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25

                                MOV            AH,0ch
	
  ; Drawing loop
  drawLooPbp1:                  
    
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent
                                INT            10h
  transparent:                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopbp1
	
                                MOV            CX , bluePawn1X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPbp1
  dead18:                       
                                RET


PRINTbluePAWN1 ENDP
  ;-------------------------------;
PRINTORANGEPAWN1 PROC
                                cmp            orangepawn1isalive,1
                                jne            dead20

                              
                                CALL           OpenFileOP
                                CALL           ReadDataOP
                                LEA            BX , OPAWNData
                                MOV            CX,orangePawn1X
                                MOV            DX,orangePawn1y
                
                                mov            es,orangePawn1X
                                mov            tempx,es
                                mov            es,orangePawn1Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25

                                MOV            AH,0ch

  ; Drawing loop
  drawLooPOp1:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent1
                                INT            10h
  transparent1:                 
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOp1
	
                                MOV            CX , orangepawn1X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOp1
  dead20:                       
                                RET
PRINTORANGEPAWN1 ENDP
  ;-------------------------------;
PRINTORANGEROOK1 PROC
                                cmp            orangerook1isalive,1
                                jne            dead30
                                CALL           OpenFileOR
                                CALL           ReadDataOR
                                LEA            BX , OROOKData
                                MOV            CX,orangeRook1X
                                MOV            DX,orangeRook1y
                                mov            es,orangeRook1X
                                mov            tempx,es
                                mov            es,orangeRook1Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOR1:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent2
                                INT            10h
  transparent2:                 
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOR1
   	
                                MOV            CX , orangeRook1X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOR1
  dead30:                       
                                RET
PRINTORANGEROOK1 ENDP
  ;-------------------------------;
PRINTORANGEBISHOP1 PROC
                                cmp            orangebishop1isalive,1
                                jne            dead31
                                CALL           OpenFileOB
                                CALL           ReadDataOB
                                LEA            BX , OBISHOPData
                                MOV            CX,orangebishop1X
                                MOV            DX,orangebishop1y
                                mov            es,orangebishop1X
                                mov            tempx,es
                                mov            es,orangeBishop1Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOB1:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent3
                                INT            10h
  transparent3:                 
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOB1
   	
                                MOV            CX , orangeBishop1X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOB1
  dead31:                       
                                RET
PRINTORANGEBISHOP1 ENDP
  ;----------------------------------;
PRINTORANGEBISHOP2 proc
                                cmp            orangebishop2isalive,1
                                jne            dead32
                                CALL           OpenFileOB
                                CALL           ReadDataOB
                                LEA            BX , OBISHOPData
                                MOV            CX,orangebishop2X
                                MOV            DX,orangebishop2y
                                mov            es,orangebishop2X
                                mov            tempx,es
                                mov            es,orangeBishop2Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOB2:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent5
                                INT            10h
  transparent5:                 
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOB2
   	
                                MOV            CX , orangeBishop2X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOB2
  dead32:                       
                                RET
PRINTORANGEBISHOP2 ENDP
  ;--------------------------------;
PRINTORANGEROOK2 PROC
   
                                cmp            orangerook2isalive,1
                                jne            dead33
                                CALL           OpenFileOR
                                CALL           ReadDataOR
                                LEA            BX , OROOKData
                                MOV            CX,orangeRook2X
                                MOV            DX,orangeRook2y
                   
                                mov            es,orangeRook2X
                                mov            tempx,es
                                mov            es,orangeRook2Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOR2:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent6
                                INT            10h
  transparent6:                 
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOR2
   	
                                MOV            CX , orangeRook2X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOR2
  dead33:                       
                                RET
   
PRINTORANGEROOK2 ENDP
  ;--------------------------------;
PRINTORANGEQUEEN PROC
                                cmp            orangeQueenisalive,1
                                jne            dead34
                                CALL           OpenFileOQ
                                CALL           ReadDataOQ
                                LEA            BX , OQUEENData
                                MOV            CX,orangeQUEENX
                                MOV            DX,orangeQUEENy
                   
                                mov            es,orangeQUEENX
                                mov            tempx,es
                                mov            es,orangeQUEENY
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOq:                   
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent7
                                INT            10h
  transparent7:                 
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOQ
   	
                                MOV            CX , orangeQUEENX
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOq
  dead34:                       
                                RET
PRINTORANGEQUEEN ENDP
  ;--------------------------------;
PRINTORANGEKING PROC
                                cmp            orangekingisalive,1
                                jne            dead35
                                CALL           OpenFileOK
                                CALL           ReadDataOK
                                LEA            BX , OKINGData
                                MOV            CX,orangeKINGX
                                MOV            DX,orangeKINGy
                   
                                mov            es,orangeKINGX
                                mov            tempx,es
                                mov            es,orangeKINGY
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOk:                   
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent8
                                INT            10h
  transparent8:                 
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOk
   	
                                MOV            CX , orangeKingX
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOk
  dead35:                       
                                RET
   
PRINTORANGEKING ENDP
  ;----------------------------------;
PRINTBLUEKnight2 PROC
                                cmp            blueKnight2isalive,1
                                jne            dead17
                                CALL           OpenFileBKn
                                CALL           ReadDataBKn
                                LEA            BX ,BKNIGHTData
                                MOV            CX,blueKnight2X
                                MOV            DX,blueKnight2y
                                mov            es,blueKnight2X
                                mov            tempx,es
                                mov            es,BlueKnight2Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPBKn2:                 
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent9
                                INT            10h
  transparent9:                 
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopBKn2
   	
                                MOV            CX , blueKnight2X
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPBKn2
  DEAD17:                       
                                RET
   
PRINTBLUEKnight2 ENDP
  ;-----------------------------------;
PRINTBLUEKing PROC
   
                                cmp            blueKINGisalive,1
                                jne            dead16
                                CALL           OpenFileBK
                                CALL           ReadDataBK
                                LEA            BX ,BKINGData
                                MOV            CX,blueKingX
                                MOV            DX,blueKingy
                                mov            es,blueKINGX
                                mov            tempx,es
                                mov            es,BlueKINGY
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPBk:                   
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent10
                                INT            10h
  transparent10:                
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopBK
   	
                                MOV            CX , blueKingX
                                INC            DX
                                CMP            DX , TEMPY
                                JNE            drawLooPBK
  DEAD16:                       
                                RET
   
PRINTBLUEKing ENDP
  ;-----------------------------------;
PRINTBLUEQUEEN PROC
   
                                cmp            blueQUEENisalive,1
                                jne            dead15
                                CALL           OpenFileBQ
                                CALL           ReadDataBQ
                                LEA            BX ,BQUEENData
                                MOV            CX,blueQueenX
                                MOV            DX,blueQueeny
                                mov            es,blueQUEENX
                                mov            tempx,es
                                mov            es,BlueQUEENY
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPBQ:                   
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent11
                                INT            10h
  transparent11:                
                                INC            CX
                                INC            BX
                                CMP            CX,TEMPX
                                JNE            drawLoopBQ
   	
                                MOV            CX , blueQueenX
                                INC            DX
                                CMP            DX , TEMPY
                                JNE            drawLooPBQ
  DEAD15:                       
                                RET
   
PRINTBLUEQUEEN ENDP
  ;--------------------------------------;
PRINTBLUEBISHOP1 PROC
                                cmp            blueBISHOP1isalive,1
                                jne            dead14
                                CALL           OpenFileBB
                                CALL           ReadDataBB
                                LEA            BX ,BBISHOPData
                                MOV            CX,blueBishop1X
                                MOV            DX,blueBishop1y
                                mov            es,blueBishop1X
                                mov            tempx,es
                                mov            es,BlueBishop1Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPBB1:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent12
                                INT            10h
  transparent12:                
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopBB1
   	
                                MOV            CX , blueBishop1X
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPBB1
  DEAD14:                       
                                RET
PRINTBLUEBISHOP1 ENDP
  ;---------------------------------------;
PRINTORANGEKNIGHT1 PROC
                                cmp            orangeknight1isalive,1
                                jne            dead36
                                CALL           OpenFileOKN
                                CALL           ReadDataOKN
                                LEA            BX , OKNIGHTData
                                MOV            CX,orangeKnight1X
                                MOV            DX,orangeKNIGHT1y
                   
                                mov            es,orangeKNIGHT1X
                                mov            tempx,es
                                mov            es,orangeKNIGHT1Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOkn1:                 
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent13
                                INT            10h
  transparent13:                
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOkn1
   	
                                MOV            CX , orangeKnight1X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOkn1
  dead36:                       
                                ret
   
PRINTORANGEKNIGHT1 ENDP
  ;------------------------------------;
PRINTORANGEKNIGHT2 PROC
                                cmp            orangeknight2isalive,1
                                jne            dead37
                                CALL           OpenFileOKN
                                CALL           ReadDataOKN
                                LEA            BX , OKNIGHTData
                                MOV            CX,orangeKnight2X
                                MOV            DX,orangeKNIGHT2y
                   
                                mov            es,orangeKNIGHT2X
                                mov            tempx,es
                                mov            es,orangeKNIGHT2Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOkn2:                 
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent14
                                INT            10h
  transparent14:                
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOkn2
   	
                                MOV            CX , orangeKnight2X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOkn2
  dead37:                       
                                RET
PRINTORANGEKNIGHT2 ENDP
  ;------------------------------------;
PRINTBLUEROOK2 proc
   
                                cmp            blueROOK2isalive,1
                                jne            dead13
                                CALL           OpenFileBR
                                CALL           ReadDataBR
                                LEA            BX ,BROOKData
                                MOV            CX,blueRook2X
                                MOV            DX,blueRook2y
                                mov            es,blueRook2X
                                mov            tempx,es
                                mov            es,BlueRook2Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPBR2:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent15
                                INT            10h
  transparent15:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopBR2
   	
                                MOV            CX , blueRook2X
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPBR2
  dead13:                       
                                RET
   
   
PRINTBLUEROOK2 ENDP
  ;-------------------------------------;
PRINTBLUEBISHOP2 PROC
                                cmp            bluebishop2isalive,1
                                jne            dead12
                                CALL           OpenFileBB
                                CALL           ReadDataBB
                                LEA            BX ,BBISHOPData
                                MOV            CX,blueBishop2X
                                MOV            DX,blueBishop2y
                                mov            es,blueBishop2X
                                mov            tempx,es
                                mov            es,BlueBishop2Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPBB2:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent16
                                INT            10h
  transparent16:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopBB2
   	
                                MOV            CX , blueBishop2X
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPBB2
  dead12:                       
                                RET
   
   
PRINTBLUEBISHOP2 ENDP
  ;--------------------------------------;
PRINTBLUEKnight1 PROC
   
                                cmp            blueknight1isalive,1
                                jne            dead11
                                CALL           OpenFileBKn
                                CALL           ReadDataBKn
                                LEA            BX ,BKNIGHTData
                                MOV            CX,blueKnight1X
                                MOV            DX,blueKnight1y
                                mov            es,blueKnight1X
                                mov            tempx,es
                                mov            es,BlueKnight1Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPBKn1:                 
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent17
                                INT            10h
  transparent17:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopBKn1
   	
                                MOV            CX , blueKnight1X
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPBKn1
  dead11:                       
                                RET
   
PRINTBLUEKnight1 ENDP
  ;----------------------------------------;
PRINTORANGEPAWN2 PROC
                                cmp            orangepawn2isalive,1
                                jne            dead21
                                CALL           OpenFileOP
                                CALL           ReadDataOP
                                LEA            BX , OPAWNData
                                MOV            CX,orangePawn2X
                                MOV            DX,orangePawn2y
                   
                                mov            es,orangePawn2X
                                mov            tempx,es
                                mov            es,orangePawn2Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOp2:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent18
                                INT            10h
  transparent18:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOp2
   	
                                MOV            CX , orangePawn2X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOp2
  dead21:                       
                                RET
   
PRINTORANGEPAWN2 ENDP
  ;---------------------------------------;
   
PRINTORANGEPAWN3 PROC
                                cmp            orangepawn3isalive,1
                                jne            dead22
                                CALL           OpenFileOP
                                CALL           ReadDataOP
                                LEA            BX , OPAWNData
                                MOV            CX,orangePawn3X
                                MOV            DX,orangePawn3y
                   
                                mov            es,orangePawn3X
                                mov            tempx,es
                                mov            es,orangePawn3Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOp3:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent19
                                INT            10h
  transparent19:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOp3
   	
                                MOV            CX , orangepawn3X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOp3
  dead22:                       
                                RET
   
PRINTORANGEPAWN3 ENDP
   
  ;-------------------------------------;
PRINTORANGEPAWN4 PROC
                                cmp            orangepawn4isalive,1
                                jne            dead23
     
                                CALL           OpenFileOP
                                CALL           ReadDataOP
                                LEA            BX , OPAWNData
                                MOV            CX,orangePawn4X
                                MOV            DX,orangePawn4y
                   
                                mov            es,orangePawn4X
                                mov            tempx,es
                                mov            es,orangePawn4Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOp4:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent20
                                INT            10h
  transparent20:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOp4
   	
                                MOV            CX , orangePawn4X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOp4
  dead23:                       
                                RET
   
PRINTORANGEPAWN4 ENDP
   
  ;---------------------------------------;
PRINTORANGEPAWN5 PROC
                                cmp            orangepawn5isalive,1
                                jne            dead24
                                CALL           OpenFileOP
                                CALL           ReadDataOP
                                LEA            BX , OPAWNData
                                MOV            CX,orangePawn5X
                                MOV            DX,orangePawn5y
                   
                                mov            es,orangePawn5X
                                mov            tempx,es
                                mov            es,orangePawn5Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOp5:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent21
                                INT            10h
  transparent21:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLooPOp5
   	
                                MOV            CX , orangepawn5X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOp5
  dead24:                       
                                RET
PRINTORANGEPAWN5 ENDP
  ;----------------------------------------;
PRINTORANGEPAWN6 PROC
                                cmp            orangepawn6isalive,1
                                jne            dead25
     
                                CALL           OpenFileOP
                                CALL           ReadDataOP
                                LEA            BX , OPAWNData
                                MOV            CX,orangePawn6X
                                MOV            DX,orangePawn6y
                   
                                mov            es,orangePawn6X
                                mov            tempx,es
                                mov            es,orangePawn6Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOp6:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent22
                                INT            10h
  transparent22:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOp6
   	
                                MOV            CX , orangePawn6X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOp6
  dead25:                       
                                RET
   
   
   
PRINTORANGEPAWN6 ENDP
  ;--------------------------------------------;
PRINTORANGEPAWN7 PROC
   
                                cmp            orangepawn7isalive,1
                                jne            dead26
    
                                CALL           OpenFileOP
                                CALL           ReadDataOP
                                LEA            BX , OPAWNData
                                MOV            CX,orangePawn7X
                                MOV            DX,orangePawn7y
                   
                                mov            es,orangePawn7X
                                mov            tempx,es
                                mov            es,orangePawn7Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOp7:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent23
                                INT            10h
  transparent23:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOp7
   	
                                MOV            CX , orangepawn7X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOp7
  dead26:                       
                                RET
   
   
PRINTORANGEPAWN7 ENDP
  ;-------------------------------------------------;
PRINTORANGEPAWN8 PROC
                                cmp            orangepawn8isalive,1
                                jne            dead27
                                CALL           OpenFileOP
                                CALL           ReadDataOP
                                LEA            BX , OPAWNData
                                MOV            CX,orangePawn8X
                                MOV            DX,orangePawn8y
                   
                                mov            es,orangePawn8X
                                mov            tempx,es
                                mov            es,orangePawn8Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPOp8:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent24
                                INT            10h
  transparent24:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopOp8
   	
                                MOV            CX , orangePawn8X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPOp8
  dead27:                       
                                RET
   
   
   
PRINTORANGEPAWN8 ENDP
   
  ;------------------------------------------------------;
PRINTBLUEPAWN2 PROC
                                cmp            bluePawn2isalive,1
                                jne            dead1
                                CALL           OpenFileBP
                                CALL           ReadDataBP
                                LEA            BX , BPAWNData
                                MOV            CX,BLUEPawn2X
                                MOV            DX,bluePawn2y
                   
                                mov            es,bluePawn2X
                                mov            tempx,es
                                mov            es,bluePawn2Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPbp2:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent25
                                INT            10h
  transparent25:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopbp2
   	
                                MOV            CX , bluePawn2X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPbp2
  dead1:                        
                                RET
   
   
PRINTBLUEPAWN2 ENDP
  ;----------------------------------------------------------;
PRINTBLUEPAWN3 PROC
                                cmp            bluePawn3isalive,1
                                jne            dead2
                                CALL           OpenFilebP
                                CALL           ReadDatabP
                                LEA            BX , bPAWNData
                                MOV            CX,bluePawn3X
                                MOV            DX,bluePawn3y
                   
                                mov            es,bluePawn3X
                                mov            tempx,es
                                mov            es,bluePawn3Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPbp3:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent26
                                INT            10h
  transparent26:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopbp3
   	
                                MOV            CX , bluepawn3X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPbp3
  dead2:                        
                                RET
   
   
PRINTBLUEPAWN3 ENDP
  ;----------------------------------------------------------;
PRINTBLUEPAWN4 PROC
                                cmp            bluePawn4isalive,1
                                jne            dead3
                                CALL           OpenFilebP
                                CALL           ReadDatabP
                                LEA            BX , bPAWNData
                                MOV            CX,bluePawn4X
                                MOV            DX,bluePawn4y
                   
                                mov            es,bluePawn4X
                                mov            tempx,es
                                mov            es,bluePawn4Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPbp4:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent27
                                INT            10h
  transparent27:                
                  
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopbp4
   	
                                MOV            CX , bluePawn4X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPbp4
  dead3:                        
                                RET
   
   
PRINTBLUEPAWN4 ENDP
  ;----------------------------------------------------------;
PRINTBLUEPAWN5 PROC
                                cmp            bluePawn5isalive,1
                                jne            dead6
                                CALL           OpenFilebP
                                CALL           ReadDatabP
                                LEA            BX , bPAWNData
                                MOV            CX,bluePawn5X
                                MOV            DX,bluePawn5y
                   
                                mov            es,bluePawn5X
                                mov            tempx,es
                                mov            es,bluePawn5Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPbp5:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent28
                                INT            10h
  transparent28:                
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLooPbp5
   	
                                MOV            CX , bluepawn5X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPbp5
  dead6:                        
                                RET
   
   
PRINTBLUEPAWN5 ENDP
  ;----------------------------------------------------------;
PRINTBLUEPAWN6 PROC
                                cmp            bluePawn6isalive,1
                                jne            dead7
                                CALL           OpenFilebP
                                CALL           ReadDatabP
                                LEA            BX , bPAWNData
                                MOV            CX,bluePawn6X
                                MOV            DX,bluePawn6y
                   
                                mov            es,bluePawn6X
                                mov            tempx,es
                                mov            es,bluePawn6Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPbp6:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent29
                                INT            10h
  transparent29:                
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopbp6
   	
                                MOV            CX , bluePawn6X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPbp6
  dead7:                        
                                RET
   
   
PRINTBLUEPAWN6 ENDP
  ;----------------------------------------------------------;
PRINTBLUEPAWN7 PROC
                                cmp            bluePawn7isalive,1
                                jne            dead8
                                CALL           OpenFilebP
                                CALL           ReadDatabP
                                LEA            BX , bPAWNData
                                MOV            CX,bluePawn7X
                                MOV            DX,bluePawn7y
                   
                                mov            es,bluePawn7X
                                mov            tempx,es
                                mov            es,bluePawn7Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPbp7:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent30
                                INT            10h
  transparent30:                
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopbp7
   	
                                MOV            CX , bluepawn7X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPbp7
  dead8:                        
                                RET
   
   
PRINTBLUEPAWN7 ENDP
  ;----------------------------------------------------------;
PRINTBLUEPAWN8 PROC
                                cmp            bluePawn8isalive,1
                                jne            dead9
                                CALL           OpenFilebP
                                CALL           ReadDatabP
                                LEA            BX , bPAWNData
                                MOV            CX,bluePawn8X
                                MOV            DX,bluePawn8y
                   
                                mov            es,bluePawn8X
                                mov            tempx,es
                                mov            es,bluePawn8Y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
   
                                MOV            AH,0ch
   	
  ; Drawing loop
  drawLooPbp8:                  
                                MOV            AL,[BX]
                                cmp            al,0fh
                                je             transparent31
                                INT            10h
  transparent31:                
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopbp8
   	
                                MOV            CX , bluePawn8X
                                INC            DX
                                CMP            DX ,tempy
                                JNE            drawLooPbp8
  dead9:                        
                                RET
   
PRINTBLUEPAWN8 ENDP
  ;---------------------------------------------------------------;
  ;------------------------------------------------------------------------;;
DRAWORANGEPIECE PROC
                                push           bx
                                push           dx

                                mov            bx,tempHBx
                                mov            dx,tempHBy
 
                                cmp            bx,orangeBishop1X
                                jne            comparebishop2DRAW
 
                                cmp            dx, orangeBishop1Y
                                jne            comparebishop2DRAW
 
                                call           PRINTORANGEBISHOP1
                                pop            dx
                                pop            bx
                                ret
 
  comparebishop2DRAW:           cmp            bx,orangeBishop2X
                                jne            notorangeBishopDRAW
 
                                cmp            dx, orangeBishop2Y
                                jne            notorangeBishopDRAW
 
                                call           PRINTORANGEBISHOP2
                                pop            dx
                                pop            bx
                                ret
 
  notorangeBishopDRAW:          
 
  ;;---------------------------------------------------------------------;;
                                cmp            bx,orangeknight1X
                                jne            compareknight2DRAW
 
                                cmp            dx, orangeknight1Y
                                jne            compareknight2DRAW
 
                                CALL           PRINTORANGEKNIGHT1
                                pop            dx
                                pop            bx
                                ret
 
  compareknight2DRAW:           cmp            bx,orangeknight2X
                                jne            notorangeknightDRAW
 
                                cmp            dx, orangeknight2Y
                                jne            notorangeknightDRAW
 
                                CALL           PRINTORANGEKNIGHT2
                                pop            dx
                                pop            bx
                                ret
 
  notorangeknightDRAW:          
  ;;----------------------------------------------------------;;
                                cmp            bx,orangequeenX
                                jne            comparequeen2DRAW
 
                                cmp            dx, orangequeenY
                                jne            comparequeen2DRAW
 
                                CALL           PRINTORANGEQUEEN
                                pop            dx
                                pop            bx
                                ret
 
  comparequeen2DRAW:            cmp            bx,orangequeenX
                                jne            notorangequeenDRAW
 
                                cmp            dx, orangequeenY
                                jne            notorangequeenDRAW
 
                                CALL           PRINTORANGEQUEEN
                                pop            dx
                                pop            bx
                                ret
 
  notorangequeenDRAW:           
  ;;------------------------------------------------;;

 
                                cmp            bx,orangekingX
                                jne            notorangekingDRAW
 
                                cmp            dx, orangekingY
                                jne            notorangekingDRAW
 
                                CALL           PRINTORANGEKing
                                pop            dx
                                pop            bx
                                ret
 
  notorangekingDRAW:            
  ;;-------------------------------------------------------;;
                                cmp            bx,orangerook1X
                                jne            comparerook2DRAW
 
                                cmp            dx, orangerook1Y
                                jne            comparerook2DRAW
 
                                CALL           PRINTORANGEROOK1
 
                                pop            dx
                                pop            bx
                                ret
 
  comparerook2DRAW:             cmp            bx,orangerook2X
                                jne            notorangerookDRAW
 
                                cmp            dx, orangerook2Y
                                jne            notorangerookDRAW
 
                                CALL           PRINTORANGEROOK2
                                pop            dx
                                pop            bx
                                ret
 
  notorangerookDRAW:            cmp            bx,orangePawn1X
                                jne            comparePawn2DRAW
 
                                cmp            dx, orangePawn1Y
                                jne            comparepawn2DRAW
 
                                CALL           PRINTORANGEPAWN1
                                pop            dx
                                pop            bx
                                ret
 
  comparePawn2DRAW:             cmp            bx,orangePawn2X
                                jne            comparePawn3DRAW
 
                                cmp            dx, orangePAWN2Y
                                jne            comparePawn3DRAW
 
                                CALL           PRINTORANGEPAWN2
                                pop            dx
                                pop            bx
                                ret
 
  comparePawn3DRAW:             cmp            bx,orangePawn3X
                                jne            comparePawn4DRAW
 
                                cmp            dx, orangePawn3Y
                                jne            comparepawn4DRAW
 
                                CALL           PRINTORANGEPAWN3
                                pop            dx
                                pop            bx
                                ret
 
  comparePawn4DRAW:             cmp            bx,orangePawn4X
                                jne            comparePawn5DRAW
 
                                cmp            dx, orangePawn4Y
                                jne            comparePawn5DRAW
 
                                CALL           PRINTORANGEPAWN4
                                pop            dx
                                pop            bx
                                ret
 
  comparePawn5DRAW:             cmp            bx,orangePawn5X
                                jne            comparePawn6DRAW
 
                                cmp            dx, orangePawn5Y
                                jne            comparepawn6DRAW
 
                                CALL           PRINTORANGEPAWN5
                                pop            dx
                                pop            bx
                                ret
 
  comparePawn6DRAW:             cmp            bx,orangePawn6X
                                jne            comparePawn7DRAW
 
                                cmp            dx, orangepawn6Y
                                jne            comparePawn7DRAW
 
                                CALL           PRINTORANGEPAWN6
                                pop            dx
                                pop            bx
                                ret
  comparePawn7DRAW:             cmp            bx,orangePawn7X
                                jne            comparePawn8DRAW
 
                                cmp            dx, orangePawn7Y
                                jne            comparepawn8DRAW
 
                                CALL           PRINTORANGEPAWN7
                                pop            dx
                                pop            bx
                                ret
 
  comparePawn8DRAW:             cmp            bx,orangePawn8X
                                jne            notorangeDRAW
 
                                cmp            dx, orangepawn8Y
                                jne            notorangeDRAW
 
                                CALL           PRINTORANGEPAWN8
                                pop            dx
                                pop            bx
                                ret
  notorangeDRAW:                
                                pop            dx
                                pop            bx
                                RET
DRAWORANGEPIECE ENDP

DRAWHIGHLIGHTEDBLOCK2 proc
 
  ;;---------------------highlighted Tile------------;;
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                mov            es,HighlightedBlock2x
                                mov            tempx,es
                                mov            es,HighlightedBlock2y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
	
  ; Drawing loop
  drawLooPHB2:                  
                                MOV            AL,5
                                INT            10h
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopHB2
	
                                MOV            CX , HighlightedBlock2x
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPHB2

                                RET


DRAWHIGHLIGHTEDBLOCK2 ENDP

DRAWHIGHLIGHTEDBLOCK PROC
  ;;---------------------highlighted Tile------------;;
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                mov            es,HighlightedBlock1x
                                mov            tempx,es
                                mov            es,HighlightedBlock1y
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
	
  ; Drawing loop
  drawLooPHB1:                  
                                MOV            AL,13
                                INT            10h
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopHB1
	
                                MOV            CX , HighlightedBlock1x
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPHB1
                                RET

DRAWHIGHLIGHTEDBLOCK ENDP
  ;---------------------------------------------------;
CLEARSCREEN PROC
                                MOV            CX,0
                                MOV            DX,0

                                MOV            AH,0ch
	
  ; Drawing loop
  drawLooPCS:                   
                                MOV            AL,00
                                INT            10h
                                INC            CX
                                INC            BX
                                CMP            CX,320
                                JNE            drawLooPCS
	
                                MOV            CX ,0
                                INC            DX
                                CMP            DX , 200
                                JNE            drawLooPCS
                                ret
CLEARSCREEN ENDP

DRAWBLACKBLOCK PROC
                                MOV            CX,tempHBx
                                MOV            DX,tempHBy
                                mov            es,tempHBx
                                mov            tempx,es
                                mov            es,tempHBy
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
	
  ; Drawing loop
  drawLooPBB:                   
                                MOV            AL,00
                                INT            10h
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLooPBB
	
                                MOV            CX , tempHBx
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPBB
                                ret
DRAWBLACKBLOCK ENDP
DRAWWHITEBLOCK PROC
                                MOV            CX,tempHBx
                                MOV            DX,tempHBy
                                mov            es,tempHBx
                                mov            tempx,es
                                mov            es,tempHBy
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
	
  ; Drawing loop
  drawLooPWB:                   
                                MOV            AL,15
                                INT            10h
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLooPWB
	
                                MOV            CX , tempHBx
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPWB
                                ret
DRAWWHITEBLOCK ENDP
  ;------------------------------------------------------;
 
DRAWCHESSBLOCK PROC
                                push           AX
                                push           dx
                                PUSH           BX
                                PUSH           CX
                                MOV            DX,00
                                MOV            BX,50D
                                MOV            CX,60D
                                mov            ax,tempHBy
                                div            BX
                                cmp            DX,0
                                jNE            evenrows
  oddrows:                      
                                mov            ax ,tempHBx
                                div            CX
                                cmp            DX,0
                                jNE            DRAWWHITE
  DRAWBLACK:                    
                                CALL           DRAWBLACKBLOCK
                                POP            CX
                                POP            BX
                                POP            DX
                                POP            AX
                                RET
  evenrows:                     
                                MOV            DX,00
                                mov            ax ,tempHBx
                                div            CX
                                cmp            DX,0
                                jne            DRAWBLACK
  DRAWWHITE:                    
                                CALL           DRAWWHITEBLOCK
                                POP            CX
                                POP            BX
                                POP            DX
                                POP            AX
                                RET

DRAWCHESSBLOCK ENDP






DRAWBluePIECE PROC
                                push           bx
                                push           dx

                                mov            bx,tempHBx
                                mov            dx,tempHBy
 
                                cmp            bx,BlueBishop1X
                                jne            comparebishopB2DRAW
 
                                cmp            dx, BlueBishop1Y
                                jne            comparebishopB2DRAW
 
                                call           PRINTBlueBISHOP1
                                pop            dx
                                pop            bx
                                ret
 
  comparebishopB2DRAW:          cmp            bx,BlueBishop2X
                                jne            notBlueBishopDRAW
 
                                cmp            dx, BlueBishop2Y
                                jne            notBlueBishopDRAW
 
                                call           PRINTBlueBISHOP2
                                pop            dx
                                pop            bx
                                ret
 
  notBlueBishopDRAW:            
 
  ;;---------------------------------------------------------------------;;
                                cmp            bx,Blueknight1X
                                jne            compareknightB2DRAW
 
                                cmp            dx, Blueknight1Y
                                jne            compareknightB2DRAW
 
                                CALL           PRINTBlueKNIGHT1
                                pop            dx
                                pop            bx
                                ret
 
  compareknightB2DRAW:          cmp            bx,Blueknight2X
                                jne            notBlueknightDRAW
 
                                cmp            dx, Blueknight2Y
                                jne            notBlueknightDRAW
 
                                CALL           PRINTBlueKNIGHT2
                                pop            dx
                                pop            bx
                                ret
 
  notBlueknightDRAW:            
  ;;----------------------------------------------------------;;
                                cmp            bx,BluequeenX
                                jne            comparequeenB2DRAW
 
                                cmp            dx, BluequeenY
                                jne            comparequeenB2DRAW
 
                                CALL           PRINTBlueQUEEN
                                pop            dx
                                pop            bx
                                ret
 
  comparequeenB2DRAW:           cmp            bx,BluequeenX
                                jne            notBluequeenDRAW
 
                                cmp            dx, BluequeenY
                                jne            notBluequeenDRAW
 
                                CALL           PRINTBlueQUEEN
                                pop            dx
                                pop            bx
                                ret
 
  notBluequeenDRAW:             
  ;;------------------------------------------------;;

 
                                cmp            bx,BluekingX
                                jne            notBluekingDRAW
 
                                cmp            dx, BluekingY
                                jne            notBluekingDRAW
 
                                CALL           PRINTBlueKing
                                pop            dx
                                pop            bx
                                ret
 
  notBluekingDRAW:              
  ;;-------------------------------------------------------;;
                                cmp            bx,Bluerook1X
                                jne            comparerookB2DRAW
 
                                cmp            dx, Bluerook1Y
                                jne            comparerookB2DRAW
 
                                CALL           PRINTBlueROOK1
 
                                pop            dx
                                pop            bx
                                ret
 
  comparerookB2DRAW:            cmp            bx,Bluerook2X
                                jne            notBluerookDRAW
 
                                cmp            dx, Bluerook2Y
                                jne            notBluerookDRAW
 
                                CALL           PRINTBlueROOK2
                                pop            dx
                                pop            bx
                                ret
 
  notBluerookDRAW:              cmp            bx,BluePawn1X
                                jne            comparePawnB2DRAW
 
                                cmp            dx, BluePawn1Y
                                jne            comparepawnB2DRAW
 
                                CALL           PRINTBluePAWN1
                                pop            dx
                                pop            bx
                                ret
 
  comparePawnB2DRAW:            cmp            bx,BluePawn2X
                                jne            comparePawnB3DRAW
 
                                cmp            dx, BluePAWN2Y
                                jne            comparePawnB3DRAW
 
                                CALL           PRINTBluePAWN2
                                pop            dx
                                pop            bx
                                ret
 
  comparePawnB3DRAW:            cmp            bx,BluePawn3X
                                jne            comparePawnB4DRAW
 
                                cmp            dx, BluePawn3Y
                                jne            comparepawnB4DRAW
 
                                CALL           PRINTBluePAWN3
                                pop            dx
                                pop            bx
                                ret
 
  comparePawnB4DRAW:            cmp            bx,BluePawn4X
                                jne            comparePawnB5DRAW
 
                                cmp            dx, BluePawn4Y
                                jne            comparePawnB5DRAW
 
                                CALL           PRINTBluePAWN4
                                pop            dx
                                pop            bx
                                ret
 
  comparePawnB5DRAW:            cmp            bx,BluePawn5X
                                jne            comparePawnB6DRAW
 
                                cmp            dx, BluePawn5Y
                                jne            comparepawnB6DRAW
 
                                CALL           PRINTBluePAWN5
                                pop            dx
                                pop            bx
                                ret
 
  comparePawnB6DRAW:            cmp            bx,BluePawn6X
                                jne            comparePawnB7DRAW
 
                                cmp            dx, Bluepawn6Y
                                jne            comparePawnB7DRAW
 
                                CALL           PRINTBluePAWN6
                                pop            dx
                                pop            bx
                                ret
  comparePawnB7DRAW:            cmp            bx,BluePawn7X
                                jne            comparePawnB8DRAW
 
                                cmp            dx, BluePawn7Y
                                jne            comparepawnB8DRAW
 
                                CALL           PRINTBluePAWN7
                                pop            dx
                                pop            bx
                                ret
 
  comparePawnB8DRAW:            cmp            bx,BluePawn8X
                                jne            notBlueDRAW
 
                                cmp            dx, Bluepawn8Y
                                jne            notBlueDRAW
 
                                CALL           PRINTBluePAWN8
                                pop            dx
                                pop            bx
                                ret
  notBlueDRAW:                  
                                pop            dx
                                pop            bx
                                RET
DRAWBluePIECE ENDP
DRAWHIGHLIGHTEDINDICATOR PROC
                                push           CX
                                push           dx
                                MOV            CX,tempHBx
                                MOV            DX,tempHBy
                                mov            es,tempHBx
                                mov            tempx,es
                                mov            es,tempHBy
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
	
  ; Drawing loop
  drawLooPIB1:                  
                                MOV            AL,12
                                INT            10h
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopIB1
	
                                MOV            CX , tempHBx
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPIB1
                                pop            dx
                                pop            cx

                                ret
DRAWHIGHLIGHTEDINDICATOR ENDP
DRAWHIGHLIGHTEDINDICATOR2 PROC
                                push           CX
                                push           dx
                                MOV            CX,tempHBx
                                MOV            DX,tempHBy
                                mov            es,tempHBx
                                mov            tempx,es
                                mov            es,tempHBy
                                mov            tempy,es
                                add            tempx,30
                                add            tempy,25
                                MOV            AH,0ch
	
  ; Drawing loop
  drawLooPIB2:                  
                                MOV            AL,4
                                INT            10h
                                INC            CX
                                INC            BX
                                CMP            CX,tempx
                                JNE            drawLoopIB2
	
                                MOV            CX , tempHBx
                                INC            DX
                                CMP            DX , tempy
                                JNE            drawLooPIB2
                                pop            dx
                                pop            cx

                                ret
DRAWHIGHLIGHTEDINDICATOR2 ENDP
DeleteHighlightedBlock proc
                                push           ax
                                push           bx
                                push           cx
                                push           dx

                                mov            cx,0
                                mov            dx,0

  check:                        
                                mov            ah,0dh
                                int            10h

                                cmp            al ,12d
                                je             drawblock
            
  loopx:                        
                                add            cx,30
                                cmp            cx,240
                                jge            loopy
                                jl             check

  drawblock:                    
                                mov            temphbx,cx
                                mov            temphby,dx

                                call           DRAWCHESSBLOCK
                                call           DRAWORANGEPIECE
                                call           DRAWBLUEPIECE
                                jmp            loopx
  loopy:                        
                                mov            cx,0
                                add            dx,25
                                cmp            dx,200
                                jge            finishdelete
                                jl             check

 
  finishdelete:                 
                                pop            dx
                                pop            cx
                                pop            bx
                                pop            AX
                                ret

DeleteHighlightedBlock endp
DeleteHighlightedBlock2 proc
                                push           ax
                                push           bx
                                push           cx
                                push           dx

                                mov            cx,0
                                mov            dx,0

  check2:                       
                                mov            ah,0dh
                                int            10h

                                cmp            al ,4d
                                je             drawblock2
            
  loopx2:                       
                                add            cx,30
                                cmp            cx,240
                                jge            loopy2
                                jl             check2

  drawblock2:                   
                                mov            temphbx,cx
                                mov            temphby,dx

                                call           DRAWCHESSBLOCK
                                call           DRAWORANGEPIECE
                                call           DRAWBLUEPIECE
                                jmp            loopx2
  loopy2:                       
                                mov            cx,0
                                add            dx,25
                                cmp            dx,200
                                jge            finishdelete2
                                jl             check2

 
  finishdelete2:                
                                pop            dx
                                pop            cx
                                pop            bx
                                pop            AX
                                ret

DeleteHighlightedBlock2 endp
newblue PROC
 
                                push           bx
                                push           dx

                                mov            bx,storedlogicblueX
                                mov            dx,storedlogicblueY
 
                                cmp            bx,blueBishop1X
                                jne            kCbishop2
 
                                cmp            dx, blueBishop1Y
                                jne            kCbishop2
                           
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            blueBishop1X,bx
                                mov            blueBishop1Y,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            blueBishop1sec,dh
                                mov            blueBishop1min,cl
                                popa
                                call           PRINTblueBISHOP1
                    
                                pop            dx
                                pop            bx
                                ret
 
  kCbishop2:                    
  
                                cmp            bx,blueBishop2X
                                jne            notcblueBishop
 
                                cmp            dx, blueBishop2Y
                                jne            notcblueBishop
 
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            blueBishop2X,bx
                                mov            blueBishop2Y,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            blueBishop2sec,dh
                                mov            blueBishop2min,cl
                                popa
                                call           PRINTblueBISHOP2
                                pop            dx
                                pop            bx
                                ret
 
  notcblueBishop:               
 
  ;;---------------------------------------------------------------------;;
                                cmp            bx,blueknight1X
                                jne            kCknight2
 
                                cmp            dx, blueknight1Y
                                jne            kCknight2
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            blueknight1X,bx
                                mov            blueknight1Y,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            blueknight1sec,dh
                                mov            blueknight1min,cl
                                popa
                                call           PRINTblueknight1
                                pop            dx
                                pop            bx
                                ret
 
  kCknight2:                    cmp            bx,blueknight2X
                                jne            notcblueknight
 
                                cmp            dx, blueknight2Y
                                jne            notcblueknight
 
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            blueknight2X,bx
                                mov            blueknight2Y,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            blueknight2sec,dh
                                mov            blueknight2min,cl
                                popa
                                call           PRINTblueknight2
                                pop            dx
                                pop            bx
                                ret
  notcblueknight:               
  ;;----------------------------------------------------------;;
                                cmp            bx,bluequeenX
                                jne            kCqueen2
 
                                cmp            dx, bluequeenY
                                jne            kCqueen2
 
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluequeenx,bx
                                mov            bluequeenY,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            bluequeensec,dh
                                mov            bluequeenmin,cl
                                popa
                                call           PRINTbluequeen
                                pop            dx
                                pop            bx
                                ret
 
  kCqueen2:                     cmp            bx,bluequeenX
                                jne            notcbluequeen
 
                                cmp            dx, bluequeenY
                                jne            notcbluequeen
 
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluequeenx,bx
                                mov            bluequeeny,dx
                                call           PRINTbluequeen

                                pop            dx
                                pop            bx
                                ret
  notcbluequeen:                
  ;;------------------------------------------------;;
                                cmp            bx,bluekingX
                                jne            kCking2
 
                                cmp            dx, bluekingY
                                jne            kCking2
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluekingX,bx
                                mov            bluekingY,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            bluekingsec,dh
                                mov            bluekingmin,cl
                                popa
                                call           PRINTblueking
                                pop            dx
                                pop            bx
                                ret
 
  kCking2:                      cmp            bx,bluekingX
                                jne            notcblueking
 
                                cmp            dx, bluekingY
                                jne            notcblueking
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluekingX,bx
                                mov            bluekingY,dx
                                call           PRINTblueking
                                pop            dx
                                pop            bx
                                ret
  notcblueking:                 
  ;;-------------------------------------------------------;;
                                cmp            bx,bluerook1X
                                jne            kCrook2
 
                                cmp            dx, bluerook1Y
                                jne            kCrook2
 
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluerook1X,bx
                                mov            bluerook1Y,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            bluerook1sec,dh
                                mov            bluerook1min,cl
                                popa
                                call           PRINTbluerook1
                                pop            dx
                                pop            bx
                                ret
 
  kCrook2:                      cmp            bx,bluerook2X
                                jne            notcbluerook
 
                                cmp            dx, bluerook2Y
                                jne            notcbluerook
 
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluerook2X,bx
                                mov            bluerook2Y,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            bluerook2sec,dh
                                mov            bluerook2min,cl
                                popa
                                call           PRINTbluerook2
                                pop            dx
                                pop            bx
                                ret
  notcbluerook:                 cmp            bx,bluePawn1X
                                jne            kCPawn2
 
                                cmp            dx, bluePawn1Y
                                jne            kCpawn2
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluepawn1X,bx
                                mov            bluepawn1Y,dx
                                dec            Bpawn1move
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            bluepawn1sec,dh
                                mov            bluepawn1min,cl
                                popa
                                call           PRINTbluepawn1
                                pop            dx
                                pop            bx
                                ret
 
  kCPawn2:                      cmp            bx,bluePawn2X
                                jne            kCPawn3
 
                                cmp            dx, bluepawn2Y
                                jne            kCPawn3
 
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluepawn2X,bx
                                mov            bluepawn2Y,dx
                                dec            Bpawn2move
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            bluepawn2sec,dh
                                mov            bluepawn2min,cl
                                popa

                                call           PRINTbluepawn2
                                pop            dx
                                pop            bx
                                ret
 
  kCPawn3:                      cmp            bx,bluePawn3X
                                jne            kCPawn4
 
                                cmp            dx, bluePawn3Y
                                jne            kCpawn4
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluepawn3X,bx
                                mov            bluepawn3Y,dx
                                dec            Bpawn3move
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            bluepawn3sec,dh
                                mov            bluepawn3min,cl
                                popa
                                call           PRINTbluepawn3
                                pop            dx
                                pop            bx
                                ret
 
  kCPawn4:                      cmp            bx,bluePawn4X
                                jne            kCPawn5
 
                                cmp            dx, bluePawn4Y
                                jne            kCPawn5
 
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluepawn4X,bx
                                mov            bluepawn4Y,dx
                                dec            Bpawn4move
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            bluepawn4sec,dh
                                mov            bluepawn4min,cl
                                popa
                                call           PRINTbluepawn4
                                pop            dx
                                pop            bx
                                ret
 
  kCPawn5:                      cmp            bx,bluePawn5X
                                jne            kCPawn6
 
                                cmp            dx, bluePawn5Y
                                jne            kCpawn6
 
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluepawn5X,bx
                                mov            bluepawn5Y,dx
                                dec            Bpawn5move
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            bluepawn5sec,dh
                                mov            bluepawn5min,cl
                                popa
                                call           PRINTbluepawn5
                                pop            dx
                                pop            bx
                                ret
 
  kCPawn6:                      cmp            bx,bluePawn6X
                                jne            kCPawn7
 
                                cmp            dx, bluepawn6Y
                                jne            kCPawn7
 
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluepawn6X,bx
                                mov            bluepawn6Y,dx
                                dec            Bpawn6move
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            bluepawn6sec,dh
                                mov            bluepawn6min,cl
                                popa
                                call           PRINTbluepawn6
                                pop            dx
                                pop            bx
                                ret
  kCPawn7:                      cmp            bx,bluePawn7X
                                jne            kCPawn8
 
                                cmp            dx, bluePawn7Y
                                jne            kCpawn8
 
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluepawn7X,bx
                                mov            bluepawn7Y,dx
                                dec            Bpawn7move
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            bluepawn7sec,dh
                                mov            bluepawn7min,cl
                                popa
                                call           PRINTbluepawn7
                                pop            dx
                                pop            bx
                                ret
 
  kCPawn8:                      cmp            bx,bluePawn8X
                                jne            notcblue
 
                                cmp            dx, bluepawn8Y
                                jne            notcblue
 
                                mov            bx,HighlightedBlock2x
                                mov            dx, HighlightedBlock2Y
                                mov            bluepawn8X,bx
                                mov            bluepawn8Y,dx
                                dec            Bpawn8move
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            bluepawn8sec,dh
                                mov            bluepawn8min,cl
                                popa
                                call           PRINTbluepawn8

                                pop            dx
                                pop            bx
                                ret
  notcblue:                     
  ;;-----------------------------------------------------------;;
                                pop            dx
                                pop            bx
                                ret
newblue ENDP

neworange PROC
 
                                push           bx
                                push           dx

                                mov            bx,storedlogicorangeX
                                mov            dx,storedlogicorangeY
 
                                cmp            bx,orangeBishop1X
                                jne            Cbishop2
 
                                cmp            dx, orangeBishop1Y
                                jne            Cbishop2
                           
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangeBishop1X,bx
                                mov            orangeBishop1Y,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            orangeBishop1sec,dh
                                mov            orangeBishop1min,cl
                                popa
                                call           PRINTORANGEBISHOP1
                    
                                pop            dx
                                pop            bx
                                ret
 
  Cbishop2:                     cmp            bx,orangeBishop2X
                                jne            notcorangeBishop
 
                                cmp            dx, orangeBishop2Y
                                jne            notcorangeBishop
 
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangeBishop2X,bx
                                mov            orangeBishop2Y,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            orangeBishop2sec,dh
                                mov            orangeBishop2min,cl
                                popa

                                call           PRINTORANGEBISHOP2
                                pop            dx
                                pop            bx
                                ret
 
  notcorangeBishop:             
 
  ;;---------------------------------------------------------------------;;
                                cmp            bx,orangeknight1X
                                jne            Cknight2
 
                                cmp            dx, orangeknight1Y
                                jne            Cknight2
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangeknight1X,bx
                                mov            orangeknight1Y,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            orangeknight1sec,dh
                                mov            orangeknight1min,cl
                                popa
                                call           PRINTORANGEknight1
                                pop            dx
                                pop            bx
                                ret
 
  Cknight2:                     cmp            bx,orangeknight2X
                                jne            notcorangeknight
 
                                cmp            dx, orangeknight2Y
                                jne            notcorangeknight
 
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangeknight2X,bx
                                mov            orangeknight2Y,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            orangeknight2sec,dh
                                mov            orangeknight2min,cl
                                popa
                                call           PRINTORANGEknight2
                                pop            dx
                                pop            bx
                                ret
  notcorangeknight:             
  ;;----------------------------------------------------------;;
                                cmp            bx,orangequeenX
                                jne            Cqueen2
 
                                cmp            dx, orangequeenY
                                jne            Cqueen2
 
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangequeenx,bx
                                mov            orangequeenY,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            orangequeensec,dh
                                mov            orangequeenmin,cl
                                popa
                                call           PRINTORANGEqueen
                                pop            dx
                                pop            bx
                                ret
 
  Cqueen2:                      cmp            bx,orangequeenX
                                jne            notcorangequeen
 
                                cmp            dx, orangequeenY
                                jne            notcorangequeen
 
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangequeenx,bx
                                mov            orangequeeny,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            orangequeensec,dh
                                mov            orangequeenmin,cl
                                popa
                                call           PRINTORANGEqueen

                                pop            dx
                                pop            bx
                                ret
  notcorangequeen:              
  ;;------------------------------------------------;;
                                cmp            bx,orangekingX
                                jne            wCking2
 
                                cmp            dx, orangekingY
                                jne            wCking2
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangekingX,bx
                                mov            orangekingY,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            orangekingsec,dh
                                mov            orangekingmin,cl
                                popa
                                call           PRINTORANGEking
                                pop            dx
                                pop            bx
                                ret
 
  wCking2:                      cmp            bx,orangekingX
                                jne            notcorangeking
 
                                cmp            dx, orangekingY
                                jne            notcorangeking
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangekingX,bx
                                mov            orangekingY,dx
                                
  notcorangeking:               
  ;;-------------------------------------------------------;;
                                cmp            bx,orangerook1X
                                jne            Crook2
 
                                cmp            dx, orangerook1Y
                                jne            Crook2
 
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangerook1X,bx
                                mov            orangerook1Y,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            orangerook1sec,dh
                                mov            orangerook1min,cl
                                popa
                                call           PRINTORANGErook1
                                pop            dx
                                pop            bx
                                ret
 
  Crook2:                       cmp            bx,orangerook2X
                                jne            notcorangerook
 
                                cmp            dx, orangerook2Y
                                jne            notcorangerook
 
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangerook2X,bx
                                mov            orangerook2Y,dx
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            orangerook2sec,dh
                                mov            orangerook2min,cl
                                popa
                                call           PRINTORANGErook2
                                pop            dx
                                pop            bx
                                ret
  notcorangerook:               cmp            bx,orangePawn1X
                                jne            CPawn2
 
                                cmp            dx, orangePawn1Y
                                jne            Cpawn2
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangepawn1X,bx
                                mov            orangepawn1Y,dx
                                mov            Opawn1move,0
                                pusha
                                mov            ah,2Ch
                                int            21H
                                mov            orangepawn1sec,dh
                                mov            orangepawn1min,cl
                                popa
                                call           PRINTORANGEpawn1
                                pop            dx
                                pop            bx
                                ret
 
  CPawn2:                       cmp            bx,orangePawn2X
                                jne            CPawn3
 
                                cmp            dx, orangepawn2Y
                                jne            CPawn3
 
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangepawn2X,bx
                                mov            orangepawn2Y,dx
                                pusha
                                mov            Opawn2move,0
                                mov            ah,2Ch
                                int            21H
                                mov            orangepawn2sec,dh
                                mov            orangepawn2min,cl
                                popa
                                call           PRINTORANGEpawn2
                                pop            dx
                                pop            bx
                                ret
 
  CPawn3:                       cmp            bx,orangePawn3X
                                jne            CPawn4
 
                                cmp            dx, orangePawn3Y
                                jne            Cpawn4
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangepawn3X,bx
                                mov            orangepawn3Y,dx
                                pusha
                                mov            Opawn3move,0
                                mov            ah,2Ch
                                int            21H
                                mov            orangepawn3sec,dh
                                mov            orangepawn3min,cl
                                popa
                                call           PRINTORANGEpawn3
                                pop            dx
                                pop            bx
                                ret
 
  CPawn4:                       cmp            bx,orangePawn4X
                                jne            CPawn5
 
                                cmp            dx, orangePawn4Y
                                jne            CPawn5
 
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangepawn4X,bx
                                mov            orangepawn4Y,dx
                                pusha
                                mov            Opawn4move,0
                                mov            ah,2Ch
                                int            21H
                                mov            orangepawn4sec,dh
                                mov            orangepawn4min,cl
                                popa
                                call           PRINTORANGEpawn4
                                pop            dx
                                pop            bx
                                ret
 
  CPawn5:                       cmp            bx,orangePawn5X
                                jne            CPawn6
 
                                cmp            dx, orangePawn5Y
                                jne            Cpawn6
 
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangepawn5X,bx
                                mov            orangepawn5Y,dx
                                call           PRINTORANGEpawn5
                                pusha
                                mov            Opawn5move,0
                                mov            ah,2Ch
                                int            21H
                                mov            orangepawn5sec,dh
                                mov            orangepawn5min,cl
                                popa
                                pop            dx
                                pop            bx
                                ret
 
  CPawn6:                       cmp            bx,orangePawn6X
                                jne            CPawn7
 
                                cmp            dx, orangepawn6Y
                                jne            CPawn7
 
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangepawn6X,bx
                                mov            orangepawn6Y,dx
                                PUSHA
                                mov            Opawn6move,0
                                
                                mov            ah,2Ch
                                int            21H
                                mov            orangepawn6sec,dh
                                mov            orangepawn6min,cl
                                popa
                                call           PRINTORANGEpawn6
                                pop            dx
                                pop            bx
                                ret
  CPawn7:                       cmp            bx,orangePawn7X
                                jne            CPawn8
 
                                cmp            dx, orangePawn7Y
                                jne            Cpawn8
 
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangepawn7X,bx
                                mov            orangepawn7Y,dx
                                pusha
                                mov            Opawn7move,0
                                mov            ah,2Ch
                                int            21H
                                
                                mov            orangepawn7sec,dh
                                mov            orangepawn7min,cl
                                popa
                                call           PRINTORANGEpawn7
                                pop            dx
                                pop            bx
                                ret
 
  CPawn8:                       cmp            bx,orangePawn8X
                                jne            notcorange
 
                                cmp            dx, orangepawn8Y
                                jne            notcorange
 
                                mov            bx,HighlightedBlock1x
                                mov            dx, HighlightedBlock1Y
                                mov            orangepawn8X,bx
                                mov            orangepawn8Y,dx
                                pusha
                                mov            Opawn8move,0
                                mov            ah,2Ch
                                int            21H
                                mov            orangepawn8sec,dh
                                mov            orangepawn8min,cl
                                popa
                                call           PRINTORANGEpawn8

                                pop            dx
                                pop            bx
                                ret
  notcorange:                   
  ;;-----------------------------------------------------------;;
                                pop            dx
                                pop            bx
                                ret
neworange ENDP
copmareorange PROC
                               
                                push           bx
                                push           dx

                                mov            bx,HighlightedBlock2x
                                mov            dx,HighlightedBlock2Y
 
                                Cmp            bx,orangeBishop2X
                                jne            OCbishop2
 
                                Cmp            dx, orangeBishop2Y
                                jne            OCbishop2
                           
                                clearstatusbar
                                dec            orangeBishop2isalive
                                showmessage    orangeBishop

                    
                                pop            dx
                                pop            bx
                                ret
 
  OCbishop2:                    Cmp            bx,orangeBishop2X
                                jne            lnotcorangeBishop
 
                                Cmp            dx, orangeBishop2Y
                                jne            lnotcorangeBishop
                                
                                clearstatusbar
                                dec            orangeBishop2isalive
                                showmessage    orangeBishop

                                pop            dx
                                pop            bx
                                ret
 
  lnotcorangeBishop:            
 
  ;;---------------------------------------------------------------------;;
                                Cmp            bx,orangeknight1X
                                jne            OCknight2
 
                                Cmp            dx, orangeknight1Y
                                jne            OCknight2

                                clearstatusbar
                                dec            orangeknight1isalive
                                showmessage    orangeKnight

                                pop            dx
                                pop            bx
                                ret
 
  OCknight2:                    Cmp            bx,orangeknight2X
                                jne            lnotcorangeknight
 
                                Cmp            dx, orangeknight2Y
                                jne            lnotcorangeknight

                                clearstatusbar
                                dec            orangeknight2isalive
                                showmessage    orangeKnight

                                pop            dx
                                pop            bx
                                ret
  lnotcorangeknight:            
  ;;----------------------------------------------------------;;
                                Cmp            bx,orangequeenX
                                jne            OCqueen2
 
                                Cmp            dx, orangequeenY
                                jne            OCqueen2
 
                                clearstatusbar
                                dec            orangeQUEENisalive
                                showmessage    orangeQueen

                                pop            dx
                                pop            bx
                                ret
 
  OCqueen2:                     Cmp            bx,orangequeenX
                                jne            lnotcorangequeen
 
                                Cmp            dx, orangequeenY
                                jne            lnotcorangequeen
   
                                clearstatusbar
                                dec            orangeQUEENisalive
                                showmessage    orangeQueen

                                pop            dx
                                pop            bx
                                ret
  lnotcorangequeen: 
              
  ;;------------------------------------------------;;
                                Cmp            bx,orangekingX
                                jne            OCking2
 
                                Cmp            dx, orangekingY
                                jne            OCking2

                                clearstatusbar
                                dec            orangeKINGisalive
                                showmessage    orangeKing

                                CALL           CLEARSCREEN

                                mov            ah,2                           ;Cursor Setting
                                mov            dx,0A0Ah
                                int            10h
                                mov            ah,9h
                                mov            dx,offset bluewin
                                int            21h
                                jmp lnotcbluequeen
                                MOV            AH , 0
                                
                                INT            16h
                                
                                jmp            exit
                                
                                pop            dx
                                pop            bx
                                ret
 
  OCking2:                      Cmp            bx,orangekingX
                                jne            lnotcorangeking
 
                                Cmp            dx, orangekingY
                                jne            lnotcorangeking

                                clearstatusbar
                                dec            orangeKINGisalive
                                showmessage    orangeKing

                                pop            dx
                                pop            bx
                                ret
  lnotcorangeking:              
  ;;-------------------------------------------------------;;
                                Cmp            bx,orangerook1X
                                jne            OCrook2
 
                                Cmp            dx, orangerook1Y
                                jne            OCrook2

                                clearstatusbar
                                dec            orangeROOK1isalive
                                showmessage    orangeRook

                                pop            dx
                                pop            bx
                                ret
 
  OCrook2:                      Cmp            bx,orangerook2X
                                jne            lnotcorangerook
 
                                Cmp            dx, orangerook2Y
                                jne            lnotcorangerook

                                clearstatusbar
                                dec            orangeROOK2isalive
                                showmessage    orangeRook

                                pop            dx
                                pop            bx
                                ret
  lnotcorangerook:              Cmp            bx,orangePawn1X
                                jne            OCPawn2
 
                                Cmp            dx, orangePawn1Y
                                jne            OCPawn2

                                clearstatusbar
                                dec            orangePawn1isalive
                                showmessage    orangePawn

                                pop            dx
                                pop            bx
                                ret
 
  OCPawn2:                      Cmp            bx,orangePawn2X
                                jne            OCPawn3
 
                                Cmp            dx, orangepawn2Y
                                jne            OCPawn3

                                clearstatusbar
                                dec            orangePawn2isalive
                                showmessage    orangePawn
 
 
                                pop            dx
                                pop            bx
                                ret
 
  OCPawn3:                      Cmp            bx,orangePawn3X
                                jne            OCPawn4
 
                                Cmp            dx, orangePawn3Y
                                jne            OCPawn4

                                clearstatusbar
                                dec            orangePawn3isalive
                                showmessage    orangePawn

                                pop            dx
                                pop            bx
                                ret
 
  OCPawn4:                      Cmp            bx,orangePawn4X
                                jne            OCPawn5
 
                                Cmp            dx, orangePawn4Y
                                jne            OCPawn5

                                clearstatusbar
                                dec            orangePawn4isalive
                                showmessage    orangePawn
 
                                pop            dx
                                pop            bx
                                ret
 
  OCPawn5:                      Cmp            bx,orangePawn5X
                                jne            OCPawn6
 
                                Cmp            dx, orangePawn5Y
                                jne            OCpawn6
 
                                clearstatusbar
                                dec            orangePawn5isalive
                                showmessage    orangePawn

                                pop            dx
                                pop            bx
                                ret
 
  OCPawn6:                      Cmp            bx,orangePawn6X
                                jne            OCPawn7
 
                                Cmp            dx, orangepawn6Y
                                jne            OCPawn7

                                
                                clearstatusbar
                                dec            orangePawn6isalive
                                showmessage    orangePawn

                                pop            dx
                                pop            bx
                                ret
  OCPawn7:                      
                                Cmp            bx,orangePawn7X
                                jne            OCPawn8
 
                                Cmp            dx, orangePawn7Y
                                jne            OCpawn8

                                clearstatusbar
                                dec            orangePawn7isalive
                                showmessage    orangePawn

                                pop            dx
                                pop            bx
                                ret
 
  OCPawn8:                      Cmp            bx,orangePawn8X
                                jne            lnotcorange
 
                                Cmp            dx, orangepawn8Y
                                jne            lnotcorange
 
                                clearstatusbar
                                dec            orangePawn8isalive
                                showmessage    orangePawn

                                pop            dx
                                pop            bx
                                ret
  lnotcorange:                  
  ;;-----------------------------------------------------------;;
                                pop            dx
                                pop            bx
                                RET
copmareorange ENDP

copmareblue PROC
 
                                push           bx
                                push           dx

                                mov            bx,HighlightedBlock1x
                                mov            dx,HighlightedBlock1Y
 
                                Cmp            bx,blueBishop1X
                                jne            BCbishop2
 
                                Cmp            dx, blueBishop1Y
                                jne            BCbishop2
                           
                                clearstatusbar
                                dec            blueBishop1isalive
                                showmessage    blueBishop
                    
                                pop            dx
                                pop            bx
                                ret
 
  BCbishop2:                    Cmp            bx,blueBishop2X
                                jne            lnotcblueBishop
 
                                Cmp            dx, blueBishop2Y
                                jne            lnotcblueBishop
                                clearstatusbar
                                dec            blueBishop2isalive
                                showmessage    blueBishop

                                pop            dx
                                pop            bx
                                ret
 
  lnotcblueBishop:              
 
  ;;---------------------------------------------------------------------;;
                                Cmp            bx,blueknight1X
                                jne            BCknight2
 
                                Cmp            dx, blueknight1Y
                                jne            BCknight2
                                clearstatusbar
                                dec            blueknight1isalive
                                showmessage    blueknight
                                pop            dx
                                pop            bx
                                ret
 
  BCknight2:                    Cmp            bx,blueknight2X
                                jne            lnotcblueknight
 
                                Cmp            dx, blueknight2Y
                                jne            lnotcblueknight
                                clearstatusbar
                                dec            blueknight2isalive
                                showmessage    blueknight
                                pop            dx
                                pop            bx
                                ret
  lnotcblueknight:              
  ;;----------------------------------------------------------;;
                                Cmp            bx,bluequeenX
                                jne            BCqueen2
 
                                Cmp            dx, bluequeenY
                                jne            BCqueen2
                                clearstatusbar
                                dec            blueQUEENisalive
                                showmessage    bluequeen
                                pop            dx
                                pop            bx
                                ret
 
  BCqueen2:                     Cmp            bx,bluequeenX
                                jne            lnotcbluequeen
 
                                Cmp            dx, bluequeenY
                                jne            lnotcbluequeen
                                clearstatusbar
                                dec            blueQUEENisalive
                                showmessage    bluequeen
                                pop            dx
                                pop            bx
                                ret
  lnotcbluequeen:               
  ;;------------------------------------------------;;
                                Cmp            bx,bluekingX
                                jne            BCking2
 
                                Cmp            dx, bluekingY
                                jne            BCking2
                                dec            blueKINGisalive
                                showmessage    blueking
                                CALL           CLEARSCREEN

                                mov            ah,2                           ;Cursor Setting
                                mov            dx,0A0Ah
                                int            10h
                                mov            ah,9h
                                mov            dx,offset ORANGEWIN
                                int            21h
                                MOV            AH , 0
                                INT            16h
                                jmp            exit
                                pop            dx
                                pop            bx
                                ret
 
  BCking2:                      Cmp            bx,bluekingX
                                jne            lnotcblueking
                                
                                Cmp            dx, bluekingY
                                jne            lnotcblueking
                                
                                dec            blueKINGisalive
                                pop            dx
                                pop            bx
                                ret
  lnotcblueking:                
  ;;-------------------------------------------------------;;
                                Cmp            bx,bluerook1X
                                jne            BCrook2
 
                                Cmp            dx, bluerook1Y
                                jne            BCrook2
                                clearstatusbar
                                dec            blueROOK1isalive
                                showmessage    bluerook
                                pop            dx
                                pop            bx
                                ret
 
  BCrook2:                      Cmp            bx,bluerook2X
                                jne            lnotcbluerook
 
                                Cmp            dx, bluerook2Y
                                jne            lnotcbluerook
                                clearstatusbar
                                dec            blueROOK2isalive
                                showmessage    bluerook
                                pop            dx
                                pop            bx
                                ret
  lnotcbluerook:                Cmp            bx,bluePawn1X
                                jne            BCPawn2
 
                                Cmp            dx, bluePawn1Y
                                jne            BCpawn2
                                clearstatusbar
                                dec            bluePawn1isalive
                                showmessage    bluepawn
                                pop            dx
                                pop            bx
                                ret
 
  BCPawn2:                      Cmp            bx,bluePawn2X
                                jne            BCPawn3
 
                                Cmp            dx, bluePawn2y
                                jne            BCPawn3
                                clearstatusbar
                                dec            bluePawn2isalive
                                showmessage    bluepawn
 
 
                                pop            dx
                                pop            bx
                                ret
 
  BCPawn3:                      Cmp            bx,bluePawn3X
                                jne            BCPawn4
 
                                Cmp            dx, bluePawn3Y
                                jne            BCpawn4
                                clearstatusbar
                                dec            bluePawn3isalive
                                showmessage    bluepawn

                                pop            dx
                                pop            bx
                                ret
 
  BCPawn4:                      Cmp            bx,bluePawn4X
                                jne            BCPawn5
 
                                Cmp            dx, bluePawn4Y
                                jne            BCPawn5
                                clearstatusbar
                                dec            bluePawn4isalive
                                showmessage    bluepawn

 
                                pop            dx
                                pop            bx
                                ret
 
  BCPawn5:                      Cmp            bx,bluePawn5X
                                jne            BCPawn6
 
                                Cmp            dx, bluePawn5Y
                                jne            BCpawn6
                                clearstatusbar
                                dec            bluePawn5isalive
                                showmessage    bluepawn
                                pop            dx
                                pop            bx
                                ret
 
  BCPawn6:                      Cmp            bx,bluePawn6X
                                jne            BCPawn7
 
                                Cmp            dx, bluepawn6Y
                                jne            BCPawn7
                                clearstatusbar
                                dec            bluePawn6isalive
                                showmessage    bluepawn
                                pop            dx
                                pop            bx
                                ret
  BCPawn7:                      Cmp            bx,bluePawn7X
                                jne            BCPawn8
 
                                Cmp            dx, bluePawn7Y
                                jne            BCpawn8
                                clearstatusbar
                                dec            bluePawn7isalive
                                showmessage    bluepawn
                                pop            dx
                                pop            bx
                                ret
 
  BCPawn8:                      Cmp            bx,bluePawn8X
                                jne            lnotcblue
 
                                Cmp            dx, bluepawn8Y
                                jne            lnotcblue
                                clearstatusbar
                                dec            bluePawn8isalive
                                showmessage    bluepawn

                                pop            dx
                                pop            bx
                                ret
  lnotcblue:                    
  ;;-----------------------------------------------------------;;
                                pop            dx
                                pop            bx
                                RET
copmareblue ENDP
copmareorangePowerUp PROC
                               
                                push           bx
                                push           dx

                                mov            bx,rvalx
                                mov            dx,rvaly
 
                                Cmp            bx,orangeBishop2X
                                jne            OCbishop2Power
 
                                Cmp            dx, orangeBishop2Y
                                jne            OCbishop2Power
                           
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OBishop1powerUp,2
                                showmessage    orangeBishop

                    
                                pop            dx
                                pop            bx
                                ret
 
  OCbishop2Power:                    Cmp            bx,orangeBishop2X
                                jne            lnotcorangePowerBishopPower
 
                                Cmp            dx, orangeBishop2Y
                                jne            lnotcorangePowerBishopPower
                                
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OBishop2powerUp,2
                                showmessage    orangeBishop

                                pop            dx
                                pop            bx
                                ret
 
  lnotcorangePowerBishopPower:            
 
  ;;---------------------------------------------------------------------;;
                                Cmp            bx,orangeknight1X
                                jne            OCknight2Power
 
                                Cmp            dx, orangeknight1Y
                                jne            OCknight2Power

                                clearstatusbar
                               dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OKnight1powerUp,2
                                showmessage    orangeKnight

                                pop            dx
                                pop            bx
                                ret
 
  OCknight2Power:                    Cmp            bx,orangeknight2X
                                jne            lnotcorangePowerknightPower
 
                                Cmp            dx, orangeknight2Y
                                jne            lnotcorangePowerknightPower

                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OKnight2powerUp,2
                                showmessage    orangeKnight

                                pop            dx
                                pop            bx
                                ret
  lnotcorangePowerknightPower:            
  ;;----------------------------------------------------------;;
                                Cmp            bx,orangequeenX
                                jne            OCqueen2Power
 
                                Cmp            dx, orangequeenY
                                jne            OCqueen2Power
 
                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OQueenpowerUp,2
                                showmessage    orangeQueen

                                pop            dx
                                pop            bx
                                ret
 
  OCqueen2Power:                     Cmp            bx,orangequeenX
                                jne            lnotcorangePowerqueenPower
 
                                Cmp            dx, orangequeenY
                                jne            lnotcorangePowerqueenPower
   
                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OQueenpowerUp,2
                                showmessage    orangeQueen

                                pop            dx
                                pop            bx
                                ret
  lnotcorangePowerqueenPower:             
  ;;------------------------------------------------;;
                                Cmp            bx,orangekingX
                                jne            OCking2Power
 
                                Cmp            dx, orangekingY
                                jne            OCking2Power

                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OKingpowerUp,2
                                showmessage    orangeKing

                                CALL           CLEARSCREEN

                                mov            ah,2                           ;Cursor Setting
                                mov            dx,0000h
                                int            10h
                                mov            ah,9h
                                mov            dx,offset bluewin
                                int            21h
                                MOV            AH , 0
                                INT            16h
                                jmp            endgame
                                
                                pop            dx
                                pop            bx
                                ret
 
  OCking2Power:                 Cmp            bx,orangekingX
                                jne            lnotcorangePowerkingPower
 
                                Cmp            dx, orangekingY
                                jne            lnotcorangePowerkingPower

                                clearstatusbar
                                dec            orangeKINGisalive
                                showmessage    orangeKing

                                pop            dx
                                pop            bx
                                ret
  lnotcorangePowerkingPower:              
  ;;-------------------------------------------------------;;
                                Cmp            bx,orangerook1X
                                jne            OCrook2Power
 
                                Cmp            dx, orangerook1Y
                                jne            OCrook2Power

                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov ORook1powerUp,2
                                showmessage    orangeRook

                                pop            dx
                                pop            bx
                                ret
 
  OCrook2Power:                 Cmp            bx,orangerook2X
                                jne            lnotcorangePowerrookPower
 
                                Cmp            dx, orangerook2Y
                                jne            lnotcorangePowerrookPower

                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov ORook2powerUp,2
                                showmessage    orangeRook

                                pop            dx
                                pop            bx
                                ret
  lnotcorangePowerrookPower:         Cmp            bx,orangePawn1X
                                jne            OCPawn2Power
 
                                Cmp            dx, orangePawn1Y
                                jne            OCPawn2Power

                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OPawn1powerUp,2
                                showmessage    orangePawn

                                pop            dx
                                pop            bx
                                ret
 
  OCPawn2Power:                      Cmp            bx,orangePawn2X
                                jne            OCPawn3Power
 
                                Cmp            dx, orangepawn2Y
                                jne            OCPawn3Power

                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OPawn2powerUp,2
                                showmessage    orangePawn
 
 
                                pop            dx
                                pop            bx
                                ret
 
  OCPawn3Power:                      Cmp            bx,orangePawn3X
                                jne            OCPawn4Power
 
                                Cmp            dx, orangePawn3Y
                                jne            OCPawn4Power

                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OPawn3powerUp,2
                                showmessage    orangePawn

                                pop            dx
                                pop            bx
                                ret
 
  OCPawn4Power:                      Cmp            bx,orangePawn4X
                                jne            OCPawn5Power
 
                                Cmp            dx, orangePawn4Y
                                jne            OCPawn5Power

                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OPawn4powerUp,2
                                showmessage    orangePawn
 
                                pop            dx
                                pop            bx
                                ret
 
  OCPawn5Power:                      Cmp            bx,orangePawn5X
                                jne            OCPawn6Power
 
                                Cmp            dx, orangePawn5Y
                                jne            OCPawn6Power
 
                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OPawn5powerUp,2
                                showmessage    orangePawn

                                pop            dx
                                pop            bx
                                ret
 
  OCPawn6Power:                      Cmp            bx,orangePawn6X
                                jne            OCPawn7Power
 
                                Cmp            dx, orangepawn6Y
                                jne            OCPawn7Power

                                
                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OPawn6powerUp,2
                                showmessage    orangePawn

                                pop            dx
                                pop            bx
                                ret
  OCPawn7Power:                      
                                Cmp            bx,orangePawn7X
                                jne            OCPawn8Power
 
                                Cmp            dx, orangePawn7Y
                                jne            OCPawn8Power

                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OPawn7powerUp,2
                                showmessage    orangePawn

                                pop            dx
                                pop            bx
                                ret
 
  OCPawn8Power:                      Cmp            bx,orangePawn8X
                                jne            lnotcorangePower
 
                                Cmp            dx, orangepawn8Y
                                jne            lnotcorangePower
 
                                clearstatusbar
                                dec  poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov OPawn8powerUp,2
                                showmessage    orangePawn

                                pop            dx
                                pop            bx
                                ret
  lnotcorangePower:                  
  ;;-----------------------------------------------------------;;
                                pop            dx
                                pop            bx
                                RET
copmareorangePowerUp ENDP

copmarebluePowerUp PROC
 
                                push           bx
                                push           dx

                                mov            bx,rValx
                                mov            dx,rValy
 
                                Cmp            bx,blueBishop1X
                                jne            BCbishop2Power
 
                                Cmp            dx, blueBishop1Y
                                jne            BCbishop2Power
                           
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BBishop1powerUp,2
                                showmessage    blueBishop
                    
                                pop            dx
                                pop            bx
                                ret
 
  BCbishop2Power:                    Cmp            bx,blueBishop2X
                                jne            lnotcblueBishopPower
 
                                Cmp            dx, blueBishop2Y
                                jne            lnotcblueBishopPower
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BBishop2powerUp,2
                                showmessage    blueBishop

                                pop            dx
                                pop            bx
                                ret
 
  lnotcblueBishopPower:              
 
  ;;---------------------------------------------------------------------;;
                                Cmp            bx,blueknight1X
                                jne            BCknight2Power
 
                                Cmp            dx, blueknight1Y
                                jne            BCknight2Power
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BKnight1powerUp,2
                                showmessage    blueknight
                                pop            dx
                                pop            bx
                                ret
 
  BCknight2Power:                    Cmp            bx,blueknight2X
                                jne            lnotcblueknightPower
 
                                Cmp            dx, blueknight2Y
                                jne            lnotcblueknightPower
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BKnight2powerUp,2
                                showmessage    blueknight
                                pop            dx
                                pop            bx
                                ret
  lnotcblueknightPower:              
  ;;----------------------------------------------------------;;
                                Cmp            bx,bluequeenX
                                jne            BCqueen2Power
 
                                Cmp            dx, bluequeenY
                                jne            BCqueen2Power
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BQueenpowerUp,2
                                showmessage    bluequeen
                                pop            dx
                                pop            bx
                                ret
 
  BCqueen2Power:                     Cmp            bx,bluequeenX
                                jne            lnotcbluequeenPower
 
                                Cmp            dx, bluequeenY
                                jne            lnotcbluequeenPower
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BQueenpowerUp,2
                                showmessage    bluequeen
                                pop            dx
                                pop            bx
                                ret
  lnotcbluequeenPower:               
  ;;------------------------------------------------;;
                                Cmp            bx,bluekingX
                                jne            BCking2Power
 
                                Cmp            dx, bluekingY
                                jne            BCking2Power
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BKingpowerUp,2
                                showmessage    blueking
                                CALL           CLEARSCREEN

                                mov            ah,2                           ;Cursor Setting
                                mov            dx,0A0Ah
                                int            10h
                                mov            ah,9h
                                mov            dx,offset ORANGEWIN
                                int            21h
                                MOV            AH , 0
                                INT            16h
                                jmp            endgame
                                pop            dx
                                pop            bx
                                ret
 
  BCking2Power:                      Cmp            bx,bluekingX
                                jne            lnotcbluekingPower
                                
                                Cmp            dx, bluekingY
                                jne            lnotcbluekingPower
                                
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BKingpowerUp,2
                                pop            dx
                                pop            bx
                                ret
  lnotcbluekingPower:                
  ;;-------------------------------------------------------;;
                                Cmp            bx,bluerook1X
                                jne            BCrook2Power
 
                                Cmp            dx, bluerook1Y
                                jne            BCrook2Power
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BRook1powerUp,2
                                showmessage    bluerook
                                pop            dx
                                pop            bx
                                ret
 
  BCrook2Power:                      Cmp            bx,bluerook2X
                                jne            lnotcbluerookPower
 
                                Cmp            dx, bluerook2Y
                                jne            lnotcbluerookPower
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BRook2powerUp,2
                                showmessage    bluerook
                                pop            dx
                                pop            bx
                                ret
  lnotcbluerookPower:                Cmp            bx,bluePawn1X
                                jne            BCPawn2Power
 
                                Cmp            dx, bluePawn1Y
                                jne            BCPawn2Power
                                clearstatusbar
                               dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BPawn1powerUp,2
                                showmessage    bluepawn
                                pop            dx
                                pop            bx
                                ret
 
  BCPawn2Power:                      Cmp            bx,bluePawn2X
                                jne            BCPawn3Power
 
                                Cmp            dx, bluePawn2y
                                jne            BCPawn3Power
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BPawn2powerUp,2
                                showmessage    bluepawn
 
 
                                pop            dx
                                pop            bx
                                ret
 
  BCPawn3Power:                      Cmp            bx,bluePawn3X
                                jne            BCPawn4Power
 
                                Cmp            dx, bluePawn3Y
                                jne            BCPawn4Power
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BPawn3powerUp,2
                                showmessage    bluepawn

                                pop            dx
                                pop            bx
                                ret
 
  BCPawn4Power:                      Cmp            bx,bluePawn4X
                                jne            BCPawn5Power
 
                                Cmp            dx, bluePawn4Y
                                jne            BCPawn5Power
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BPawn4powerUp,2
                                showmessage    bluepawn

 
                                pop            dx
                                pop            bx
                                ret
 
  BCPawn5Power:                      Cmp            bx,bluePawn5X
                                jne            BCPawn6Power
 
                                Cmp            dx, bluePawn5Y
                                jne            BCPawn6Power
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BPawn5powerUp,2
                                showmessage    bluepawn
                                pop            dx
                                pop            bx
                                ret
 
  BCPawn6Power:                      Cmp            bx,bluePawn6X
                                jne            BCPawn7Power
 
                                Cmp            dx, bluepawn6Y
                                jne            BCPawn7Power
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BPawn6powerUp,2
                                showmessage    bluepawn
                                pop            dx
                                pop            bx
                                ret
  BCPawn7Power:                      Cmp            bx,bluePawn7X
                                jne            BCPawn8Power
 
                                Cmp            dx, bluePawn7Y
                                jne            BCPawn8Power
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BPawn7powerUp,2
                                showmessage    bluepawn
                                pop            dx
                                pop            bx
                                ret
 
  BCPawn8Power:                      Cmp            bx,bluePawn8X
                                jne            lnotcbluePower
 
                                Cmp            dx, bluepawn8Y
                                jne            lnotcbluePower
                                clearstatusbar
                                dec            poweruppicked
                                mov rvalx,1
                                mov rvaly,1
                                mov BPawn8powerUp,2
                                showmessage    bluepawn

                                pop            dx
                                pop            bx
                                ret
  lnotcbluePower:                    
  ;;-----------------------------------------------------------;;
                                pop            dx
                                pop            bx
                                RET
copmarebluePowerUp ENDP



movebluepiece proc
                                push           bx
                                push           dx
                              

                                CMP            STOREDCOLOR2,4d
                                JNE            DONTMOVE
   
  ;JE CHECKOPPEICE
                                call           newblue
                                call           copmareorange
                                call copmarebluePowerUp
                                mov            al, 1

                                PUSHA
                                mov            cx,storedlogicblueX
                                mov            dx,storedlogicblueY
                                mov            tempHBx,cx
                                mov            temphby,dx
                                call           DRAWCHESSBLOCK
                                popa
                                PUSHA
                                mov            cx,HighlightedBlock2x
                                mov            dx,HighlightedBlock2Y
                                mov            tempHBx,cx
                                mov            temphby,dx
                                call           DRAWCHESSBLOCK
                                call           DRAWbluePIECE
                                popa

  DONTMOVE:                     
                                CALL           DeleteHighlightedBlock2
                  
                                pop            dx
                                pop            bx
                           
                                RET

movebluepiece endp


moveorangepiece proc
                                push           bx
                                push           dx
                                CMP            STOREDCOLOR,12d
                                JNE            DONTMOVE2
   
  ;JE CHECKOPPEICE
                                call           neworange
                                call           copmareblue
                                call           copmareorangePowerUp
                                PUSHA
                                mov            cx,storedlogicorangeX
                                mov            dx,storedlogicorangeY
                                mov            tempHBx,cx
                                mov            temphby,dx
                                call           DRAWCHESSBLOCK
                                popa
                                PUSHA
                                mov            cx,HighlightedBlock1x
                                mov            dx,HighlightedBlock1Y
                                mov            tempHBx,cx
                                mov            temphby,dx
                                call           DRAWCHESSBLOCK
                                call           DRAWORANGEPIECE
                                popa

  DONTMOVE2:                    
                                CALL           DeleteHighlightedBlock
                  
                                pop            dx
                                pop            bx
                           
                                RET








moveorangepiece endp
orangerooklogic1 proc
                                push           ax
                                push           bx
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            tempHBx,ax
                                mov            temphby,bx
  repeatUprook:                 
                                sub            temphby,25
                                cmp            temphby ,0
                                jl             restrook
                                call           DRAWOrangePIECE
                                jz             restrook
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBluePIECE
                                jz             restrook
                                jmp            repeatuprook

                        
  restrook:                     
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;----------------------------------------------------------;;
  repeatdownrook:               
                       
                                add            temphby,25
                                cmp            temphby ,175
                                jg             restrook1
                                call           DRAWOrangePIECE
                                jz             restrook1
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBluePIECE
                                jz             restrook1
                                jmp            repeatdownrook

  restrook1:                    
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y

                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;------------------------------------------------------------;;;
  repeatrightrook:              
                      
                                add            temphbx,30

                                cmp            temphbx ,210
                                jg             restrook2
                                call           draworangepiece
                                jz             restrook2
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
                                jz             restrook2
                                jmp            repeatrightrook

  restrook2:                    
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y


                                mov            tempHbx,ax
                                mov            temphby,bx
                          
  repeatleftrook:               
                      
                                sub            temphbx,30
                                cmp            temphbx ,0
                                jl             finishrook
                                call           draworangepiece
                                jz             finishrook
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
                                jz             finishrook
                                jmp            repeatleftrook

  finishrook:                   pop            bx
                                pop            ax
                                ret

orangerooklogic1 endp
orangerooklogic2 proc
                                push           ax
                                push           bx
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            tempHBx,ax
                                mov            temphby,bx
  repeatUprook2:                
                                sub            temphby,25
                                cmp            temphby ,0
                                jl             restrook25
                                call           DRAWOrangePIECE
                                jz             restrook25
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBluePIECE
                                jz             restrook25
                                jmp            repeatUprook2

                        
  restrook25:                   
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;----------------------------------------------------------;;
  repeatdownrook2:              
                       
                                add            temphby,25
                                cmp            temphby ,175
                                jg             restrook22
                                call           DRAWOrangePIECE
                                jz             restrook22
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBluePIECE
                                jz             restrook22
                                jmp            repeatdownrook2

  restrook22:                   
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y

                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;------------------------------------------------------------;;;
  repeatrightrook2:             
                      
                                add            temphbx,30

                                cmp            temphbx ,210
                                jg             restrook23
                                call           draworangepiece
                                jz             restrook23
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
                                jz             restrook23
                                jmp            repeatrightrook2

  restrook23:                   
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y


                                mov            tempHbx,ax
                                mov            temphby,bx
                          
  repeatleftrook2:              
                      
                                sub            temphbx,30
                                cmp            temphbx ,0
                                jl             finishrook2
                                call           draworangepiece
                                jz             finishrook2
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
                                jz             finishrook2
                                jmp            repeatleftrook2

  finishrook2:                  pop            bx
                                pop            ax
                                ret

orangerooklogic2 endp
bluePawnLogic1 proc

                                PUSHA
                                cmp            Bpawn1move,1
                                jne            BoneTile

  BPAWN1_OPTIONS:               
                                pusha
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  BVERTICAL:                    SUB            tempHBy,25
                                CMP            tempHBy,0
                                jl             UpRightPawn1
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn1
                                CALL           DRAWorangePIECE
                                JZ             UpRightPawn1
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                Cmp            tempHBy,100
                                JZ             UpRightPawn1
                                jnz            BVERTICAL


  BoneTile:                     
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBy,25
                                CMP            tempHBy,0
                                jl             UpRightPawn1
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn1
                                CALL           DRAWOrangePIECE
                                JZ             UpRightPawn1
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                JZ             UpRightPawn1
                           

  UpRightPawn1:                 
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                Sub            temphby,25
                                cmp            tempHBx,240
                                jge            UpleftPawn1
                                cmp            tempHBy,0
                                jl             UpleftPawn1
                                call           DRAWorangePIECE
                                jnz            UpleftPawn1
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE



  UpleftPawn1:                  
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                sub            temphby,25
                                cmp            tempHBx,0
                                jl             Bsad
                                cmp            tempHBy,0
                                jl             Bsad
                                call           DRAWorangePIECE
                                jnz            Bsad
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE
  Bsad:                         
                                popa
                                ret

bluePawnLogic1 endp
  ;......................................................................;
bluePawnLogic2 proc

                                PUSHA
                                cmp            Bpawn2move,1
                                jne            BoneTile2

  BPAWN2_OPTIONS:               
                                pusha
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  BVERTICAL2:                   SUB            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn2
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn2
                                CALL           DRAWorangePIECE
                                JZ             UpRightPawn2
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                Cmp            tempHBy,100
                                JZ             UpRightPawn2
                                jnz            BVERTICAL2


  BoneTile2:                    
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn2
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn2
                                CALL           DRAWOrangePIECE
                                JZ             UpRightPawn2
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                JZ             UpRightPawn2
                           

  UpRightPawn2:                 
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                Sub            temphby,25
                                cmp            tempHBx,240
                                jge            UpleftPawn2
                                cmp            tempHBy,0
                                jl             UpleftPawn2
                                call           DRAWorangePIECE
                                jnz            UpleftPawn2
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE



  UpleftPawn2:                  
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                sub            temphby,25
                                cmp            tempHBx,0
                                jl             Bsad2
                                cmp            tempHBy,0
                                jl             Bsad2
                                call           DRAWorangePIECE
                                jnz            Bsad2
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE
  Bsad2:                        
                                popa
                                ret

bluePawnLogic2 endp

  ;...........................................;
bluePawnLogic3 proc

                                PUSHA
                                cmp            Bpawn3move,1
                                jne            BoneTile3

  BPAWN3_OPTIONS:               
                                pusha
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  BVERTICAL3:                   SUB            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn3
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn3
                                CALL           DRAWorangePIECE
                                JZ             UpRightPawn3
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                Cmp            tempHBy,100
                                JZ             UpRightPawn3
                                jnz            BVERTICAL3


  BoneTile3:                    
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn3
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn3
                                CALL           DRAWOrangePIECE
                                JZ             UpRightPawn3
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                JZ             UpRightPawn3
                           

  UpRightPawn3:                 
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                Sub            temphby,25
                                cmp            tempHBx,240
                                jge            UpleftPawn3
                                cmp            tempHBy,0
                                jl             UpleftPawn3
                                call           DRAWorangePIECE
                                jnz            UpleftPawn3
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE



  UpleftPawn3:                  
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                sub            temphby,25
                                cmp            tempHBx,0
                                jl             Bsad3
                                cmp            tempHBy,0
                                jl             Bsad3
                                call           DRAWorangePIECE
                                jnz            Bsad3
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE
  Bsad3:                        
                                popa
                                ret

bluePawnLogic3 endp

  ;...................................................................................;
bluePawnLogic4 proc

                                PUSHA
                                cmp            Bpawn4move,1
                                jne            BoneTile4

  BPAWN4_OPTIONS:               
                                pusha
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  BVERTICAL4:                   SUB            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn4
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn4
                                CALL           DRAWorangePIECE
                                JZ             UpRightPawn4
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                Cmp            tempHBy,100
                                JZ             UpRightPawn4
                                jnz            BVERTICAL4


  BoneTile4:                    
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn4
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn4
                                CALL           DRAWOrangePIECE
                                JZ             UpRightPawn4
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                JZ             UpRightPawn4
                           

  UpRightPawn4:                 
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                Sub            temphby,25
                                cmp            tempHBx,240
                                jge            UpleftPawn4
                                cmp            tempHBy,0
                                jl             UpleftPawn4
                                call           DRAWorangePIECE
                                jnz            UpleftPawn4
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE



  UpleftPawn4:                  
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                sub            temphby,25
                                cmp            tempHBx,0
                                jl             Bsad4
                                cmp            tempHBy,0
                                jl             Bsad4
                                call           DRAWorangePIECE
                                jnz            Bsad4
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE
  Bsad4:                        
                                popa
                                ret

bluePawnLogic4 endp

  ;.....................................................................;
bluePawnLogic5 proc

                                PUSHA
                                cmp            Bpawn5move,1
                                jne            BoneTile5

  BPAWN5_OPTIONS:               
                                pusha
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  BVERTICAL5:                   SUB            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn5
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn5
                                CALL           DRAWorangePIECE
                                JZ             UpRightPawn5
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                Cmp            tempHBy,100
                                JZ             UpRightPawn5
                                jnz            BVERTICAL5


  BoneTile5:                    
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn5
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn5
                                CALL           DRAWOrangePIECE
                                JZ             UpRightPawn5
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                JZ             UpRightPawn5
                           

  UpRightPawn5:                 
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                Sub            temphby,25
                                cmp            tempHBx,240
                                jge            UpleftPawn5
                                cmp            tempHBy,0
                                jl             UpleftPawn5
                                call           DRAWorangePIECE
                                jnz            UpleftPawn5
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE



  UpleftPawn5:                  
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                sub            temphby,25
                                cmp            tempHBx,0
                                jl             Bsad5
                                cmp            tempHBy,0
                                jl             Bsad5
                                call           DRAWorangePIECE
                                jnz            Bsad5
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE
  Bsad5:                        
                                popa
                                ret

bluePawnLogic5 endp
  ;...............................................................................;
bluePawnLogic6 proc

                                PUSHA
                                cmp            Bpawn6move,1
                                jne            BoneTile6

  BPAWN6_OPTIONS:               
                                pusha
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  BVERTICAL6:                   SUB            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn6
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn6
                                CALL           DRAWorangePIECE
                                JZ             UpRightPawn6
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                Cmp            tempHBy,100
                                JZ             UpRightPawn6
                                jnz            BVERTICAL6


  BoneTile6:                    
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn6
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn6
                                CALL           DRAWOrangePIECE
                                JZ             UpRightPawn6
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                JZ             UpRightPawn6
                           

  UpRightPawn6:                 
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                Sub            temphby,25
                                cmp            tempHBx,240
                                jge            UpleftPawn6
                                cmp            tempHBy,0
                                jl             UpleftPawn6
                                call           DRAWorangePIECE
                                jnz            UpleftPawn6
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE



  UpleftPawn6:                  
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                sub            temphby,25
                                cmp            tempHBx,0
                                jl             Bsad6
                                cmp            tempHBy,0
                                jl             Bsad6
                                call           DRAWorangePIECE
                                jnz            Bsad6
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE
  Bsad6:                        
                                popa
                                ret

bluePawnLogic6 endp
  ;..............................................................;
bluePawnLogic7 proc

                                PUSHA
                                cmp            Bpawn7move,1
                                jne            BoneTile7

  BPAWN7_OPTIONS:               
                                pusha
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  BVERTICAL7:                   SUB            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn7
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn7
                                CALL           DRAWorangePIECE
                                JZ             UpRightPawn7
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                Cmp            tempHBy,100
                                JZ             UpRightPawn7
                                jnz            BVERTICAL7


  BoneTile7:                    
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn7
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn7
                                CALL           DRAWOrangePIECE
                                JZ             UpRightPawn7
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                JZ             UpRightPawn7
                           

  UpRightPawn7:                 
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                Sub            temphby,25
                                cmp            tempHBx,240
                                jge            UpleftPawn7
                                cmp            tempHBy,0
                                jl             UpleftPawn7
                                call           DRAWorangePIECE
                                jnz            UpleftPawn7
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE



  UpleftPawn7:                  
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                sub            temphby,25
                                cmp            tempHBx,0
                                jl             Bsad7
                                cmp            tempHBy,0
                                jl             Bsad7
                                call           DRAWorangePIECE
                                jnz            Bsad7
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE
  Bsad7:                        
                                popa
                                ret

bluePawnLogic7 endp
  ;..............................................................................;
bluePawnLogic8 proc

                                PUSHA
                                cmp            Bpawn8move,1
                                jne            BoneTile8

  BPAWN8_OPTIONS:               
                                pusha
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  BVERTICAL8:                   SUB            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn8
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn8
                                CALL           DRAWorangePIECE
                                JZ             UpRightPawn8
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                Cmp            tempHBy,100
                                JZ             UpRightPawn8
                                jnz            BVERTICAL8


  BoneTile8:                    
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBy,25
                                CMP            tempHBy,0
                                JL             UpRightPawn8
                                CALL           DRAWBluePIECE
                                JZ             UpRightPawn8
                                CALL           DRAWOrangePIECE
                                JZ             UpRightPawn8
                                CALL           DRAWHIGHLIGHTEDINDICATOR2
                                JZ             UpRightPawn8
                           

  UpRightPawn8:                 
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                Sub            temphby,25
                                cmp            tempHBx,240
                                jge            UpleftPawn8
                                cmp            tempHBy,0
                                jl             UpleftPawn8
                                call           DRAWorangePIECE
                                jnz            UpleftPawn8
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE



  UpleftPawn8:                  
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                sub            temphby,25
                                cmp            tempHBx,0
                                jl             Bsad8
                                cmp            tempHBy,0
                                jl             Bsad8
                                call           DRAWorangePIECE
                                jnz            Bsad8
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWorangePIECE
  Bsad8:                        
                                popa
                                ret

bluePawnLogic8 endp
orangePawnLogic1 proc

                                PUSHA
                                cmp            Opawn1move,1
                           
                                jne            oneTile

  PAWN1_OPTIONS:                
                                pusha
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  VERTICAL:                     ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN1
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN1
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                Cmp            tempHBy,75
                                JZ             DOWNRIGHTPAWN1
                                jnz            VERTICAL


  oneTile:                      
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN1
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN1
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                JZ             DOWNRIGHTPAWN1
                           

  DOWNRIGHTPAWN1:               
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,240
                                jge            DOWNLEFTPAWN1
                                cmp            tempHBy,200
                                jge            DOWNLEFTPAWN1
                                call           DRAWbluePIECE
                                jnz            DOWNLEFTPAWN1
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE



  DOWNLEFTPAWN1:                
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,0
                                jl             sad
                                cmp            tempHBy,200
                                jge            sad
                                call           DRAWbluePIECE
                                jnz            sad
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
  sad:                          
                                popa
                                ret

orangePawnLogic1 endp
  ;;...........................................................................;;


orangePawnLogic2 proc
                                pusha
                                
                                cmp            Opawn2move,1
                           
                                jne            oneTile2

  PAWN2_OPTIONS:                
                                pusha
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  VERTICAL2:                    ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN2
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN2
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                Cmp            tempHBy,75
                                JZ             DOWNRIGHTPAWN2
                                jnz            VERTICAL2


  oneTile2:                     
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN2
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN2
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                JZ             DOWNRIGHTPAWN2
                           

  DOWNRIGHTPAWN2:               
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,240
                                jge            DOWNLEFTPAWN2
                                cmp            tempHBy,200
                                jge            DOWNLEFTPAWN2
                                call           DRAWbluePIECE
                                jnz            DOWNLEFTPAWN2
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE



  DOWNLEFTPAWN2:                
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,0
                                jl             sad2
                                cmp            tempHBy,200
                                jge            sad2
                                call           DRAWbluePIECE
                                jnz            sad2
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
  sad2:                         
                                popa
                                ret

orangePawnLogic2 endp



  ;;...........................................................................;;


orangePawnLogic3 proc

                                PUSHA
                                cmp            Opawn3move,1
                           
                                jne            oneTile3

  PAWN3_OPTIONS:                
                                pusha
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  VERTICAL3:                    ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN3
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN3
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                Cmp            tempHBy,75
                                JZ             DOWNRIGHTPAWN3
                                jnz            VERTICAL3


  oneTile3:                     
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN3
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN3
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                JZ             DOWNRIGHTPAWN3
                           

  DOWNRIGHTPAWN3:               
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,240
                                jge            DOWNLEFTPAWN3
                                cmp            tempHBy,200
                                jge            DOWNLEFTPAWN3
                                call           DRAWbluePIECE
                                jnz            DOWNLEFTPAWN3
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE



  DOWNLEFTPAWN3:                
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,0
                                jl             sad3
                                cmp            tempHBy,200
                                jge            sad3
                                call           DRAWbluePIECE
                                jnz            sad3
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
  sad3:                         
                                popa
                                ret

orangePawnLogic3 endp



  ;;...........................................................................;;


orangePawnLogic4 proc

                                PUSHA
                                cmp            Opawn4move,1
                           
                                jne            oneTile4

  PAWN4_OPTIONS:                
                                pusha
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  VERTICAL4:                    ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN4
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN4
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                Cmp            tempHBy,75
                                JZ             DOWNRIGHTPAWN4
                                jnz            VERTICAL4


  oneTile4:                     
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN4
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN4
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                JZ             DOWNRIGHTPAWN4
                           

  DOWNRIGHTPAWN4:               
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,240
                                jge            DOWNLEFTPAWN4
                                cmp            tempHBy,200
                                jge            DOWNLEFTPAWN4
                                call           DRAWbluePIECE
                                jnz            DOWNLEFTPAWN4
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE



  DOWNLEFTPAWN4:                
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,0
                                jl             sad4
                                cmp            tempHBy,200
                                jge            sad4
                                call           DRAWbluePIECE
                                jnz            sad4
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
  sad4:                         
                                popa
                                ret

orangePawnLogic4 endp


  ;;...........................................................................;;


orangePawnLogic5 proc

                                PUSHA
                                cmp            Opawn5move,1
                           
                                jne            oneTile5

  PAWN5_OPTIONS:                
                                pusha
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  VERTICAL5:                    ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN5
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN5
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                Cmp            tempHBy,75
                                JZ             DOWNRIGHTPAWN5
                                jnz            VERTICAL5


  oneTile5:                     
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN5
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN5
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                JZ             DOWNRIGHTPAWN5
                           

  DOWNRIGHTPAWN5:               
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,240
                                jge            DOWNLEFTPAWN5
                                cmp            tempHBy,200
                                jge            DOWNLEFTPAWN5
                                call           DRAWbluePIECE
                                jnz            DOWNLEFTPAWN5
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE



  DOWNLEFTPAWN5:                
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,0
                                jl             sad5
                                cmp            tempHBy,200
                                jge            sad5
                                call           DRAWbluePIECE
                                jnz            sad5
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
  sad5:                         
                                popa
                                ret

orangePawnLogic5 endp

orangePawnLogic6 proc

                                PUSHA
                                cmp            Opawn6move,1
                           
                                jne            oneTile6

  PAWN6_OPTIONS:                
                                pusha
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  VERTICAL6:                    ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN6
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN6
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                Cmp            tempHBy,75
                                JZ             DOWNRIGHTPAWN6
                                jnz            VERTICAL6


  oneTile6:                     
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN6
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN6
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                JZ             DOWNRIGHTPAWN6
                           

  DOWNRIGHTPAWN6:               
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,240
                                jge            DOWNLEFTPAWN6
                                cmp            tempHBy,200
                                jge            DOWNLEFTPAWN6
                                call           DRAWbluePIECE
                                jnz            DOWNLEFTPAWN6
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE



  DOWNLEFTPAWN6:                
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,0
                                jl             done6
                                cmp            tempHBy,200
                                jge            done6
                                call           DRAWbluePIECE
                                jnz            done6
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
  done6:                        
                                popa
                                ret

orangePawnLogic6 endp

  ;;...........................................................................;;


orangePawnLogic7 proc

                                PUSHA
                                cmp            Opawn7move,1
                           
                                jne            oneTile7

  PAWN7_OPTIONS:                
                                pusha
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA
  VERTICAL7:                    ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN7
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN7
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                Cmp            tempHBy,75
                                JZ             DOWNRIGHTPAWN7
                                jnz            VERTICAL7


  oneTile7:                     
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN7
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN7
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                JZ             DOWNRIGHTPAWN7
                           

  DOWNRIGHTPAWN7:               
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,240
                                jge            DOWNLEFTPAWN7
                                cmp            tempHBy,200
                                jge            DOWNLEFTPAWN7
                                call           DRAWbluePIECE
                                jnz            DOWNLEFTPAWN7
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE



  DOWNLEFTPAWN7:                
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,0
                                jl             done7
                                cmp            tempHBy,200
                                jge            done7
                                call           DRAWbluePIECE
                                jnz            done7
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
  done7:                        
                                popa
                                ret

orangePawnLogic7 endp

  ;;...........................................................................;;

orangePawnLogic8 proc

                                PUSHA
                                cmp            Opawn8move,1
                           
                                jne            oneTile8

  PAWN8_OPTIONS:                
                                pusha
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                POPA

  VERTICAL8:                    
 
                                ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN8
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN8
                               
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                                Cmp            tempHBy,75
                               
                                jnz            VERTICAL8
                                JZ             DOWNRIGHTPAWN8
                              


  oneTile8:                     
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                ADD            tempHBy,25
                                CALL           DRAWORANGEPIECE
                                JZ             DOWNRIGHTPAWN8
                                CALL           DRAWBLUEPIECE
                                JZ             DOWNRIGHTPAWN8
                                CALL           DRAWHIGHLIGHTEDINDICATOR
                        
                                JZ             DOWNRIGHTPAWN8
                           

  DOWNRIGHTPAWN8:               
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa

                                add            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,240
                                jge            DOWNLEFTPAWN8
                                cmp            tempHBy,200
                                jge            DOWNLEFTPAWN8
                                call           DRAWbluePIECE
                                jnz            DOWNLEFTPAWN8
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE



  DOWNLEFTPAWN8:                
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            tempHBy,DX
                                popa
                                sub            tempHBx,30
                                add            temphby,25
                                cmp            tempHBx,0
                                jl             done8
                                cmp            tempHBy,200
                                jge            done8
                                call           DRAWbluePIECE
                                jnz            done8
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
  done8:                        
                                popa
                                ret

orangePawnLogic8 endp
bluequeenLogic proc
                                push           AX
                                push           BX

                                mov            AX,HighlightedBlock2x
                                mov            BX,HighlightedBlock2Y

                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;-----------------------------------------------------;;
  repeatUpbluequeen:            
                                sub            temphby,25
                                cmp            temphby ,0
                                jl             restbluequeen
  ;call  DRAWHIGHLIGHTEDINDICATOR2
  ;jmp   repeatUpbluequeen

  comparebluequeen:             cmp            temphby,0
                                jl             restbluequeen
                                call           DRAWBluePIECE
                                JZ             restbluequeen
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                JZ             restbluequeen
                                jmp            repeatUpbluequeen

  restbluequeen:                
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;----------------------------------------------------------;;
  repeatdownbluequeen:          
                       
                                add            temphby,25
                                cmp            temphby ,175
                                jg             restbluequeen1
  ;call  DRAWHIGHLIGHTEDINDICATOR2
  ;jmp   repeatdownbluequeen

  comparebluequeen1:            cmp            temphby,0
                                jl             restbluequeen1
                                call           DRAWBluePIECE
                                JZ             restbluequeen1
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                JZ             restbluequeen1
                                jmp            repeatdownbluequeen
  restbluequeen1:               
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y

                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;------------------------------------------------------------;;;
  repeatrightblue:              
                      
                                add            temphbx,30
                                cmp            temphbx ,210
                                jg             restbluequeen2
  ;call  DRAWHIGHLIGHTEDINDICATOR2
  ;jmp   repeatrightblue

  ; comparebluequeen2:
                                cmp            temphbx,240
                                jge            restbluequeen2
                                call           DRAWBluePIECE
                                JZ             restbluequeen2
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                JZ             restbluequeen2
                                jmp            repeatrightblue

  restbluequeen2:               
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;-----------------------------------------------;;;


  repeatUpRightqueenblue:       add            tempHBx,30
                                sub            temphby, 25

                                cmp            temphbx,240
                                jge            rest4bluequeen
                                cmp            temphby,0
                                jl             rest4bluequeen
  ;call  DRAWHIGHLIGHTEDINDICATOR2
  ;jmp   repeatUpRightqueenblue
 
  comparebluequeen3:            cmp            temphby,0
                                jl             rest4bluequeen
                                call           DRAWBluePIECE
                                JZ             rest4bluequeen
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                JZ             rest4bluequeen
                                jmp            repeatUpRightqueenblue

  rest4bluequeen:               mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;------------------------------------------------;;
  repeatUpleftqueenblue:        
  
  
                                sub            tempHBx,30
                                sub            temphby, 25
                                cmp            temphbx,0
                                jl             rest5bluequeen
  
  comparebluequeen4:            cmp            temphby,0
                                jl             rest5bluequeen
                                call           DRAWBluePIECE
                                jz             rest5bluequeen
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                jz             rest5bluequeen
                                jmp            repeatUpleftqueenblue


                                cmp            temphby,0
                                jl             rest5bluequeen
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                jmp            repeatUpleftqueenblue
 
  rest5bluequeen:               mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;-----------------------------------------------;;
  repeatdownRightqueenblue:     
  
                                add            tempHBx,30
                                add            temphby, 25
                                cmp            temphbx,240
                                jge            rest6bluequeen
                                cmp            temphby,200
                                jge            rest6bluequeen
  ;call  DRAWHIGHLIGHTEDINDICATOR2
  ;jmp   repeatdownRightqueenblue

  comparebluequeen5:            cmp            temphby,200
                                jge            rest6bluequeen
                                call           DRAWBluePIECE
                                JZ             rest6bluequeen
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                JZ             rest6bluequeen
                                jmp            repeatdownRightqueenblue

  rest6bluequeen:               mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHbx,ax
                                mov            temphby,bx

  ;;-------------------------------------------------;;
  repeatdownleftqueenblue:      
                          
                                sub            tempHBx,30
                                add            tempHBy, 25
                                cmp            temphbx,0
                                jl             rest7bluequeen
                                cmp            temphby,200
                                jge            rest7bluequeen
  ;call  DRAWHIGHLIGHTEDINDICATOR2
  ;jMP   repeatdownleftqueenblue

  comparebluequeen6:            cmp            temphby,200
                                jge            rest7bluequeen
                                call           DRAWBluePIECE
                                JZ             rest7bluequeen
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                JZ             rest7bluequeen
                                jmp            repeatdownleftqueenblue


  rest7bluequeen:               mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;------------------------------------------------;;
  repeatleftqueenblue:          
                                sub            temphbx,30
                                cmp            temphbx ,0
                                jl             finishqueenblue
  ;call  DRAWHIGHLIGHTEDINDICATOR2
  ;jmp   repeatleftqueenblue

  comparebluequeen7:            
                                cmp            temphbx ,0
                                jl             finishqueenblue
                                call           DRAWBluePIECE
                                JZ             finishqueenblue
                                call           DRAWHIGHLIGHTEDINDICATOR2
  ;call  DRAWBluePIECE
                                CALL           DRAWORANGEPIECE
                                JZ             finishqueenblue
                                jmp            repeatleftqueenblue
  finishqueenblue:              
                                pop            bx
                                pop            ax
                                ret

bluequeenlogic endp

orangequeenLogic proc
                                push           AX
                                push           bx

                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y

                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;-----------------------------------------------------;;
  repeatUp:                     
                                sub            temphby,25
                                cmp            temphby ,0
                                jl             rest
                                call           draworangepiece
                                jz             rest
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
                                jz             rest
                                jmp            repeatup

                        
  rest:                         
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;----------------------------------------------------------;;
  repeatdown:                   
                       
                                add            temphby,25
                                cmp            temphby ,175
                                jg             rest1
                                call           draworangepiece
                                jz             rest1
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
                                jz             rest1
                                jmp            repeatdown

  rest1:                        
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y

                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;------------------------------------------------------------;;;
  repeatright:                  
                      
                                add            temphbx,30
                                cmp            temphbx ,210
                                jg             rest2
                                call           draworangepiece
                                jz             rest2
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
                                jz             rest2
                                jmp            repeatright

  rest2:                        
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y


                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;-----------------------------------------------;;;


  repeatUpRightqueen:           add            tempHBx,30
                                sub            temphby, 25

                                cmp            temphbx,240
                                jge            rest4
                                call           draworangepiece
                                jz             rest4
                                cmp            temphby,0
                                jl             rest4
                                call           draworangepiece
                                jz             rest4

                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
                                jz             rest4

                                jmp            repeatUpRightqueen
  ;;------------------------------------------------;;
  rest4:                        mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  repeatUpleftqueen:            
  
  
                                sub            tempHBx,30
                                sub            temphby, 25
                                cmp            temphbx,0
                                jl             rest5
                                call           draworangepiece
                                jz             rest5
  
                                cmp            temphby,0
                                jl             rest5
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
                                jz             rest5
                                jmp            repeatupleftqueen
  ;;-----------------------------------------------;;
  rest5:                        mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  repeatdownRightqueen:         
  
                                add            tempHBx,30
                                add            temphby, 25
  
                                cmp            temphbx,240
                                jge            rest6
                                call           draworangepiece
                                jz             rest6
                                cmp            temphby,200
                                jge            rest6
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
                                jz             rest6
                                jmp            repeatdownRightqueen
  ;;-------------------------------------------------;;
  rest6:                        mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  repeatdownleftqueen:          
                          
                                sub            tempHBx,30
                                add            tempHBy, 25

                                cmp            temphbx,0
                                jl             rest7
                                call           draworangepiece
                                jz             rest7
  
                                cmp            temphby,200
                                jge            rest7
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
                                jz             rest7
                                jMP            repeatdownleftqueen
  ;;------------------------------------------------;;
  rest7:                        mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  repeatleft:                   
                      
                                sub            temphbx,30
                                cmp            temphbx ,0
                                jl             finishqueen
                                call           draworangepiece
                                jz             finishqueen
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWbluePIECE
                                jz             finishqueen
                                jmp            repeatleft
  finishqueen:                  
                                pop            bx
                                pop            ax
                                ret

orangequeenlogic endp
  ;;--------------------------------------------------------------------------------------;;
orangeBishopLogic2 proc
                                push           ax
                                push           bx


                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y

                                mov            tempHBx,ax
                                mov            tempHBy,bx
    

  repeatUpRightobishop2:        
                                add            tempHBx,30
                                sub            temphby, 25
       
                                cmp            temphbx,240
                                jgE            resetobishop11
 

  compareobish2:                cmp            temphby,0
                                jl             resetobishop11
                                CALL           DRAWORANGEPIECE
                                JZ             resetobishop11
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBluePIECE
                                jz             resetobishop11
                                jmp            repeatUpRightobishop2
                    
                           

                           
  ;;--------------------------------------;;

  resetobishop11:               
  
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
  repeatUpleftorangebishop2:    
  
  
                                sub            tempHBx,30
                                sub            temphby, 25
                                cmp            temphbx,0
                                jl             resetorangebishop22
  
  compareY2ob:                  cmp            temphby,0
                                jl             resetorangebishop22
                                CALL           DRAWORANGEPIECE
                                jz             resetorangebishop22
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBluePIECE
                                jz             resetorangebishop22
                                jmp            repeatUpleftorangebishop2

  
  
  ;;-------------------------------------------;;
  resetorangebishop22:          
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
  repeatdownRightorangebishop22:
  
                                add            tempHBx,30
                                add            temphby, 25
  
                                cmp            temphbx,240
                                jge            resetorangebishop32
  
  compareY3ob2:                 cmp            temphby,200
                                jge            resetorangebishop32
                                CALL           DRAWORANGEPIECE
                                JZ             resetorangebishop32
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBluePIECE
                                jz             resetorangebishop32
                                jmp            repeatdownRightorangebishop22
  resetorangebishop32:          
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
  ;----------------------------------------------------;;
  repeatdownleftorangebishop2:  
                          
                                sub            tempHBx,30
                                add            tempHBy, 25

                                cmp            temphbx,0
                                jl             finishorangebishop2
                    
  
  compareY4ob2:                 cmp            temphby,200
                                jge            finishorangebishop2
                    
                                CALL           DRAWORANGEPIECE
                                JZ             finishorangebishop2
                    
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBluePIECE
                                jz             finishorangebishop2
                                jMP            repeatdownleftorangebishop2
  
  finishorangebishop2:          
                                pop            bx
                                pop            ax
                                MOV            tempHbx,250
                                MOV            tempHBy,170
                           

                                ret

orangeBishopLogic2 endp
orangeBishopLogic1 proc
                                push           ax
                                push           bx


                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y

                                mov            tempHBx,ax
                                mov            tempHBy,bx
    

  repeatUpRight:                
                                add            tempHBx,30
                                sub            temphby, 25
       
                                cmp            temphbx,240
                                jgE            reset1
 

  compareY1:                    cmp            temphby,0
                                jl             reset1
                                CALL           DRAWORANGEPIECE
                                JZ             RESET1
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBluePIECE
                                jz             reset1
                                jmp            repeatUpRight
                           

                           
  ;;--------------------------------------;;

  reset1:                       
  
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
  repeatUpleft:                 
  
  
                                sub            tempHBx,30
                                sub            temphby, 25
                                cmp            temphbx,0
                                jl             reset2
  
  compareY2:                    cmp            temphby,0
                                jl             reset2
                                CALL           DRAWORANGEPIECE
                                jz             reset2
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBluePIECE
                                jz             reset2
                                jmp            repeatupleft

  
  
  ;;-------------------------------------------;;
  reset2:                       
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
  repeatdownRight:              
  
                                add            tempHBx,30
                                add            temphby, 25
  
                                cmp            temphbx,240
                                jge            reset3
  
  compareY3:                    cmp            temphby,200
                                jge            reset3
                                CALL           DRAWORANGEPIECE
                                JZ             RESET3
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBluePIECE
                                jz             reset3
                                jmp            repeatdownRight
  reset3:                       
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
  ;----------------------------------------------------;;
  repeatdownleft:               
                          
                                sub            tempHBx,30
                                add            tempHBy, 25

                                cmp            temphbx,0
                                jl             finish
  
  compareY4:                    cmp            temphby,200
                                jge            finish
                                CALL           DRAWORANGEPIECE
                                JZ             finish
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBluePIECE
                                jz             finish
                                jMP            repeatdownleft
  
  finish:                       
                                pop            bx
                                pop            ax
                                MOV            tempHbx,250
                                MOV            tempHBy,170
                           

                                ret

orangeBishopLogic1 endp
  ;------------------------------------------------------;
  ;------------------------------------------------------;
BlueknightLogic1 PROC
                                push           ax
                                push           bx


                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y

                                mov            tempHBx,ax
                                mov            tempHBy,bx
    

  bKL1:                         
                                add            tempHBx,30
                                sub            temphby, 50

                                cmp            temphbx,210
                                jg             bKL2
 

  comparebKL1:                  
                                cmp            temphby,0
                                jl             bKL2
                                CALL           DRAWBluePIECE
                                JZ             bKL2
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                Call           DRAWorangePIECE

  bKL2:                         
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx

                                add            tempHBx,60
                                sub            temphby, 25

                                cmp            temphbx,210
                                jg             reset1bKL
 

  comparebKL2:                  cmp            temphby,0
                                jl             reset1bKL
                                CALL           DRAWBluePIECE
                                JZ             reset1bKL
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                Call           DRAWorangePIECE


                    
                           

                           
  ;;--------------------------------------;;

  reset1bKL:                    
  
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
  
                                sub            tempHBx,30
                                sub            temphby, 50
                                cmp            temphbx,0
                                jl             bKL3
  
  comparebKL3:                  cmp            temphby,0
                                jl             bKL3
                                CALL           DRAWBluePIECE
                                JZ             bkl3
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWorangePIECE
                         
  bKL3:                         
  
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
  
                                sub            tempHBx,60
                                sub            temphby, 25
                                cmp            temphbx,0
                                jl             bKL4
  
  comparebKL4:                  cmp            temphby,0
                                jl             bKL4
                                CALL           DRAWBluePIECE
                                JZ             bkl4
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWorangePIECE
  
  
  ;;-------------------------------------------;;
  bKL4:                         
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
                                add            tempHBx,60
                                add            temphby, 25
  
                                cmp            temphbx,210
                                jg             bKL6
  
  comparebKL5:                  cmp            temphby,175
                                jg             bKL6
                                CALL           DRAWBluePIECE
                                JZ             bkl6
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWorangePIECE

  bKL6:                         
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
                                add            tempHBx,30
                                add            temphby, 50
  
                                cmp            temphbx,210
                                jg             bKL7
  
  comparebKL6:                  cmp            temphby,175
                                jg             bKL7
                                CALL           DRAWBluePIECE
                                JZ             bkl7
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWorangePIECE

  ;----------------------------------------------------;;
  bKL7:                         
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
                                sub            tempHBx,60
                                add            tempHBy, 25

                                cmp            temphbx,0
                                jl             bKL8
  
  comparebKL7:                  cmp            temphby,175
                                jge            bKL8
                                CALL           DRAWBluePIECE
                                JZ             bkl8
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWorangePIECE
  bKL8:                         
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
                                sub            tempHBx,30
                                add            tempHBy, 50

                                cmp            temphbx,0
                                jl             BlueYES
  
  comparebKL8:                  cmp            temphby,175
                                jg             BlueYES
                                CALL           DRAWBluePIECE
                                JZ             BlueYes
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWorangePIECE
  
  BlueYES:                      pop            bx
                                pop            ax
                                ret


BlueknightLogic1 ENDP
BlueknightLogic2 PROC
                                push           ax
                                push           bx


                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y

                                mov            tempHBx,ax
                                mov            tempHBy,bx
    

  bbKL1:                        
                                add            tempHBx,30
                                sub            temphby, 50

                                cmp            temphbx,20
                                jg             bbKL2
 

  comparebbKL1:                 
                                cmp            temphby,0
                                jl             bbKL2
                                CALL           DRAWBluePIECE
                                JZ             bbKL2
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                Call           DRAWorangePIECE

  bbKL2:                        
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx

                                add            tempHBx,60
                                sub            temphby, 25

                                cmp            temphbx,210
                                jg             reset1bbKL
 

  comparebbKL2:                 cmp            temphby,0
                                jl             reset1bbKL
                                CALL           DRAWBluePIECE
                                JZ             reset1bbKL
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                Call           DRAWorangePIECE


                    
                           

                           
  ;;--------------------------------------;;

  reset1bbKL:                   
  
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
  
                                sub            tempHBx,30
                                sub            temphby, 50
                                cmp            temphbx,0
                                jl             bbKL3
  
  comparebbKL3:                 cmp            temphby,0
                                jl             bbKL3
                                CALL           DRAWBluePIECE
                                JZ             bbkl3
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWorangePIECE
                         
  bbKL3:                        
  
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
  
                                sub            tempHBx,60
                                sub            temphby, 25
                                cmp            temphbx,0
                                jl             bbKL4
  
  comparebbKL4:                 cmp            temphby,0
                                jl             bbKL4
                                CALL           DRAWBluePIECE
                                JZ             bbkl4
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWorangePIECE
  
  
  ;;-------------------------------------------;;
  bbKL4:                        
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
                                add            tempHBx,60
                                add            temphby, 25
  
                                cmp            temphbx,210
                                jg             bbKL6
  
  comparebbKL5:                 cmp            temphby,175
                                jg             bbKL6
                                CALL           DRAWBluePIECE
                                JZ             bbkl6
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWorangePIECE

  bbKL6:                        
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
                                add            tempHBx,30
                                add            temphby, 50
  
                                cmp            temphbx,210
                                jg             bbKL7
  
  comparebbKL6:                 cmp            temphby,175
                                jg             bbKL7
                                CALL           DRAWBluePIECE
                                JZ             bbkl7
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWorangePIECE

  ;----------------------------------------------------;;
  bbKL7:                        
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
                                sub            tempHBx,60
                                add            tempHBy, 25

                                cmp            temphbx,0
                                jl             bbKL8
  
  comparebbKL7:                 cmp            temphby,175
                                jge            bbKL8
                                CALL           DRAWBluePIECE
                                JZ             bbkl8
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWorangePIECE
  bbKL8:                        
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
                                sub            tempHBx,30
                                add            tempHBy, 50

                                cmp            temphbx,0
                                jl             BlueNo
  
  comparebbKL8:                 cmp            temphby,175
                                jg             BlueNo
                                CALL           DRAWBluePIECE
                                JZ             BlueNo
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWorangePIECE
  
  BlueNo:                       pop            bx
                                pop            ax
                                ret


BlueknightLogic2 ENDP


orangekingLogic proc
                                push           AX
                                push           bx

                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            temphby,bx
                                mov            tempHBx,ax
                                add            tempHBx,30
                                cmp            temphbx,240
                                jl             bdraw189
                                jge            BLUEresetking1111

  bdraw189:                     
                                call           DRAWorangePIECE
                                jz             BLUEresetking1111
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBLUEPIECE

  BLUEresetking1111:            
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            temphby,bx
                                mov            temphbx,ax
                                sub            tempHBx,30
                                cmp            temphbx,0
                                jge            bdraw2567
                                jl             BLUEresetking2134

                                                       
  bdraw2567:                    
                                call           DRAWorangePIECE
                                jz             BLUEresetking2134
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBLUEPIECE

  BLUEresetking2134:            mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            temphbx,ax
                                mov            tempHBy,bx
                                sub            tempHBy ,25
                                cmp            temphby,0
                                jl             BLUEresetking3333
                                jge            bdraw3754
  bdraw3754:                    
                                call           DRAWorangePIECE
                                jz             BLUEresetking3333
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBLUEPIECE
  BLUEresetking3333:            
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            temphbx,ax
                                mov            tempHBy,bx
                                add            tempHBy,25
                                cmp            temphby,200
                                jl             bdraw4325
                                jge            BLUEresetking3424
  bdraw4325:                    
                                call           DRAWorangePIECE
                                jz             BLUEresetking3424
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBLUEPIECE
  BLUEresetking3424:            
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            temphbx,ax
                                mov            tempHBy, bx
                                add            temphbx,30
                                sub            temphby,25
                                cmp            temphbx,240
                                jge            BLUEresetking5111
             
                                cmp            temphby,0
                                jl             BLUEresetking5111
                           

  bdraw8768:                    
                                call           DRAWorangePIECE
                                jz             BLUEresetking5111
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBLUEPIECE

  BLUEresetking5111:            mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            temphbx,ax
                                mov            tempHBy, bx
                                sub            temphbx,30
                                sub            temphby,25
                                cmp            temphbx,0
                                jl             BLUEresetking699
           
                                cmp            temphby,0
                                jl             BLUEresetking699
                           

  bdraw5786:                    
                                call           DRAWorangePIECE
                                jz             BLUEresetking699
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBLUEPIECE
  BLUEresetking699:             
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            temphbx,ax
                                mov            tempHBy, bx
                                sub            temphbx,30
                                add            temphby,25
                                cmp            temphbx,0
                                jl             BLUEresetking71
            
                                cmp            temphby,175
                                jg             BLUEresetking71
                           
  bdraw60:                      
                                call           DRAWorangePIECE
                                jz             BLUEresetking71
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBLUEPIECE

  BLUEresetking71:              
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1Y
                                mov            temphbx,ax
                                mov            tempHBy, bx
                                add            temphbx,30
                                add            temphby,25
                                cmp            temphbx,240
                                jge            finishking22
             
                                cmp            temphby,175
                                jg             finishking22
                           
  bdraw79:                      
                                call           DRAWorangePIECE
                                jz             finishking22
                                call           DRAWHIGHLIGHTEDINDICATOR
                                call           DRAWBLUEPIECE
                                jz             finishking22
  finishking22:                 
                                pop            bx
                                pop            ax
                                ret

orangekingLogic endp
orangeknightLogic1 PROC
                                push           ax
                                push           bx


                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y

                                mov            tempHBx,ax
                                mov            tempHBy,bx
    

  OKL1:                         
                                add            tempHBx,30
                                sub            temphby, 50

                                cmp            temphbx,210
                                jg             OKL2
 

  compareOKL1:                  
                                cmp            temphby,0
                                jl             OKL2
                                CALL           DRAWORANGEPIECE
                                JZ             OKL2
                                call           DRAWHIGHLIGHTEDINDICATOR
                                Call           DRAWbluePIECE

  OKL2:                         
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx

                                add            tempHBx,60
                                sub            temphby, 25

                                cmp            temphbx,210
                                jg             reset1OKL
 

  compareOKL2:                  cmp            temphby,0
                                jl             reset1OKL
                                CALL           DRAWORANGEPIECE
                                JZ             reset1OKL
                                call           DRAWHIGHLIGHTEDINDICATOR
                                Call           DRAWbluePIECE


                    
                           

                           
  ;;--------------------------------------;;

  reset1OKL:                    
  
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
  
                                sub            tempHBx,30
                                sub            temphby, 50
                                cmp            temphbx,0
                                jl             OKL3
  
  compareOKL3:                  cmp            temphby,0
                                jl             OKL3
                                CALL           DRAWORANGEPIECE
                                JZ             okl3
                                call           DRAWHIGHLIGHTEDINDICATOR
                                CALL           DRAWbluePIECE
                         
  OKL3:                         
  
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
  
                                sub            tempHBx,60
                                sub            temphby, 25
                                cmp            temphbx,0
                                jl             OKL4
  
  compareOKL4:                  cmp            temphby,0
                                jl             OKL4
                                CALL           DRAWORANGEPIECE
                                JZ             okl4
                                call           DRAWHIGHLIGHTEDINDICATOR
                                CALL           DRAWbluePIECE
  
  
  ;;-------------------------------------------;;
  OKL4:                         
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
                                add            tempHBx,60
                                add            temphby, 25
  
                                cmp            temphbx,210
                                jg             OKL6
  
  compareOKL5:                  cmp            temphby,175
                                jg             OKL6
                                CALL           DRAWORANGEPIECE
                                JZ             okl6
                                call           DRAWHIGHLIGHTEDINDICATOR
                                CALL           DRAWbluePIECE

  OKL6:                         
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
                                add            tempHBx,30
                                add            temphby, 50
  
                                cmp            temphbx,210
                                jg             OKL7
  
  compareOKL6:                  cmp            temphby,175
                                jg             OKL7
                                CALL           DRAWORANGEPIECE
                                JZ             okl7
                                call           DRAWHIGHLIGHTEDINDICATOR
                                CALL           DRAWbluePIECE

  ;----------------------------------------------------;;
  OKL7:                         
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
                                sub            tempHBx,60
                                add            tempHBy, 25

                                cmp            temphbx,0
                                jl             OKL8
  
  compareOKL7:                  cmp            temphby,175
                                jge            OKL8
                                CALL           DRAWORANGEPIECE
                                JZ             okl8
                                call           DRAWHIGHLIGHTEDINDICATOR
                                CALL           DRAWbluePIECE
  OKL8:                         
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
                                sub            tempHBx,30
                                add            tempHBy, 50

                                cmp            temphbx,0
                                jl             YES
  
  compareOKL8:                  cmp            temphby,175
                                jg             YES
                                CALL           DRAWORANGEPIECE
                                JZ             Yes
                                call           DRAWHIGHLIGHTEDINDICATOR
                                CALL           DRAWbluePIECE
  
  YES:                          pop            bx
                                pop            ax
                                ret


orangeknightLogic1 ENDP
orangeknightLogic2 PROC
                                push           ax
                                push           bx


                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y

                                mov            tempHBx,ax
                                mov            tempHBy,bx
    

  oOKL1:                        
                                add            tempHBx,30
                                sub            temphby, 50

                                cmp            temphbx,210
                                jg             oOKL2
 

  compareoOKL1:                 
                                cmp            temphby,0
                                jl             oOKL2
                                CALL           DRAWORANGEPIECE
                                JZ             oOKL2
                                call           DRAWHIGHLIGHTEDINDICATOR
                                Call           DRAWbluePIECE

  oOKL2:                        
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx

                                add            tempHBx,60
                                sub            temphby, 25

                                cmp            temphbx,210
                                jg             reset1oOKL
 

  compareoOKL2:                 cmp            temphby,0
                                jl             reset1oOKL
                                CALL           DRAWORANGEPIECE
                                JZ             reset1oOKL
                                call           DRAWHIGHLIGHTEDINDICATOR
                                Call           DRAWbluePIECE


                    
                           

                           
  ;;--------------------------------------;;

  reset1oOKL:                   
  
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
  
                                sub            tempHBx,30
                                sub            temphby, 50
                                cmp            temphbx,0
                                jl             oOKL3
  
  compareoOKL3:                 cmp            temphby,0
                                jl             oOKL3
                                CALL           DRAWORANGEPIECE
                                JZ             ookl3
                                call           DRAWHIGHLIGHTEDINDICATOR
                                CALL           DRAWbluePIECE
                         
  oOKL3:                        
  
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
  
                                sub            tempHBx,60
                                sub            temphby, 25
                                cmp            temphbx,0
                                jl             oOKL4
  
  compareoOKL4:                 cmp            temphby,0
                                jl             oOKL4
                                CALL           DRAWORANGEPIECE
                                JZ             ookl4
                                call           DRAWHIGHLIGHTEDINDICATOR
                                CALL           DRAWbluePIECE
  
  
  ;;-------------------------------------------;;
  oOKL4:                        
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
                                add            tempHBx,60
                                add            temphby, 25
  
                                cmp            temphbx,210
                                jg             oOKL6
  
  compareoOKL5:                 cmp            temphby,175
                                jg             oOKL6
                                CALL           DRAWORANGEPIECE
                                JZ             ookl6
                                call           DRAWHIGHLIGHTEDINDICATOR
                                CALL           DRAWbluePIECE

  oOKL6:                        
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
         
  
                                add            tempHBx,30
                                add            temphby, 50
  
                                cmp            temphbx,210
                                jg             oOKL7
  
  compareoOKL6:                 cmp            temphby,175
                                jg             oOKL7
                                CALL           DRAWORANGEPIECE
                                JZ             ookl7
                                call           DRAWHIGHLIGHTEDINDICATOR
                                CALL           DRAWbluePIECE

  ;----------------------------------------------------;;
  oOKL7:                        
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
                                sub            tempHBx,60
                                add            tempHBy, 25

                                cmp            temphbx,0
                                jl             oOKL8
  
  compareoOKL7:                 cmp            temphby,175
                                jge            oOKL8
                                CALL           DRAWORANGEPIECE
                                JZ             ookl8
                                call           DRAWHIGHLIGHTEDINDICATOR
                                CALL           DRAWbluePIECE
  oOKL8:                        
                                mov            ax,HighlightedBlock1x
                                mov            bx,HighlightedBlock1y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
                                sub            tempHBx,30
                                add            tempHBy, 50

                                cmp            temphbx,0
                                jl             No
  
  compareoOKL8:                 cmp            temphby,175
                                jg             No
                                CALL           DRAWORANGEPIECE
                                JZ             No
                                call           DRAWHIGHLIGHTEDINDICATOR
                                CALL           DRAWbluePIECE
  
  No:                           pop            bx
                                pop            ax
                                ret


orangeknightLogic2 ENDP
  ;-------------------------------------------------
  ;-------------------------------------------------;
BLUEBishopLogic1 proc
                                push           ax
                                push           bx


                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y

                                mov            tempHBx,ax
                                mov            tempHBy,bx
    

  repeatuprightbluebishop1:     
                                add            tempHBx,30
                                sub            temphby, 25
       
                                cmp            temphbx,240
                                jgE            resetbluebishop11
 

  comparebluebishopy11:         cmp            temphby,0
                                jl             resetbluebishop11
                                call           DRAWBluePIECE
                                JZ             resetbluebishop11
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                JZ             resetbluebishop11
                                jmp            repeatuprightbluebishop1
                           

                           
  ;;--------------------------------------;;

  resetbluebishop11:            
  
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
  repeatupleftbluebishop1:      
  
  
                                sub            tempHBx,30
                                sub            temphby, 25
                                cmp            temphbx,0
                                jl             resetbluebishop12
  
  comparebluebishop:            cmp            temphby,0
                                jl             resetbluebishop12
                                call           DRAWBluePIECE
                                jz             resetbluebishop12
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                jz             resetbluebishop12
                                jmp            repeatupleftbluebishop1

  
  
  ;;-------------------------------------------;;
  resetbluebishop12:            
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
  repeatdownrightbluebishop1:   
  
                                add            tempHBx,30
                                add            temphby, 25
  
                                cmp            temphbx,240
                                jge            reset3bluebishop11
  
  compareYb3:                   cmp            temphby,200
                                jge            reset3bluebishop11
                                call           DRAWBluePIECE
                                JZ             reset3bluebishop11
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                JZ             reset3bluebishop11
                                jmp            repeatdownrightbluebishop1
  reset3bluebishop11:           
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
  ;----------------------------------------------------;;
  repeatdownleftbluebishop11:   
                          
                                sub            tempHBx,30
                                add            tempHBy, 25

                                cmp            temphbx,0
                                jl             finishbluebishop1
  
  compareYb4:                   cmp            temphby,200
                                jge            finishbluebishop1
                                call           DRAWBluePIECE
                           
                                JZ             finishbluebishop1
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                JZ             finishbluebishop1
                                jMP            repeatdownleftbluebishop11
  
  finishbluebishop1:            
                                pop            bx
                                pop            ax
                                MOV            tempHbx,250
                                MOV            tempHBy,170
                           

                                ret

blueBishopLogic1 endp
BLUEBishopLogic2 proc
                                push           ax
                                push           bx


                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y

                                mov            tempHBx,ax
                                mov            tempHBy,bx
    

  repeatuprightbluebishop12:    
                                add            tempHBx,30
                                sub            temphby, 25
       
                                cmp            temphbx,240
                                jgE            resetbluebishop223
 

  comparebluebishop23y12:       cmp            temphby,0
                                jl             resetbluebishop223
                           
                                call           DRAWBluePIECE
                                JZ             resetbluebishop223
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                JZ             resetbluebishop223

                                jmp            repeatuprightbluebishop12
                           

                           
  ;;--------------------------------------;;

  resetbluebishop223:           
  
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
  repeatupleftbluebishop2:      
  
  
                                sub            tempHBx,30
                                sub            temphby, 25
                                cmp            temphbx,0
                                jl             resetbluebishop2234
  
  comparebluebishop23:          cmp            temphby,0
                                jl             resetbluebishop2234
                           
                                call           DRAWBluePIECE
                                jz             resetbluebishop2234
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                jz             resetbluebishop2234

                                jmp            repeatupleftbluebishop2

  
  
  ;;-------------------------------------------;;
  resetbluebishop2234:          
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
  repeatdownrightbluebishop2:   
  
                                add            tempHBx,30
                                add            temphby, 25
  
                                cmp            temphbx,240
                                jge            reset3bluebishop22
  
  comparebishop23y:             cmp            temphby,200
                                jge            reset3bluebishop22
                                call           DRAWBluePIECE
                                JZ             reset3bluebishop22
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                JZ             reset3bluebishop22
                                jmp            repeatdownrightbluebishop2
  reset3bluebishop22:           
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2y
                                mov            tempHBx,ax
                                mov            tempHBy,bx
  ;----------------------------------------------------;;
  repeatdownleftbluebishop22:   
                          
                                sub            tempHBx,30
                                add            tempHBy, 25

                                cmp            temphbx,0
                                jl             finishbluebishop2
  
  comparebishop2y4:             cmp            temphby,200
                                jge            finishbluebishop2
                                call           DRAWBluePIECE
                           
                                JZ             finishbluebishop2
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                CALL           DRAWORANGEPIECE
                                JZ             finishbluebishop2
                                jMP            repeatdownleftbluebishop22
  
  finishbluebishop2:            
                                pop            bx
                                pop            ax
                                MOV            tempHbx,250
                                MOV            tempHBy,170
                           

                                ret

blueBishopLogic2 endp
bluekingLogic proc
                                push           AX
                                push           bx

                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            temphby,bx
                                mov            tempHBx,ax
                                add            tempHBx,30
                                cmp            temphbx,240
                                jl             draw189
                                jge            resetking1111

  draw189:                      
                                call           DRAWbluePIECE
                                jz             resetking1111
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWORANGEPIECE

  resetking1111:                
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            temphby,bx
                                mov            temphbx,ax
                                sub            tempHBx,30
                                cmp            temphbx,0
                                jge            draw2567
                                jl             resetking2134

                                                       
  draw2567:                     
                                call           DRAWbluePIECE
                                jz             resetking2134
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWORANGEPIECE

  resetking2134:                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            temphbx,ax
                                mov            tempHBy,bx
                                sub            tempHBy ,25
                                cmp            temphby,0
                                jl             resetking3333
                                jge            draw3754
  draw3754:                     
                                call           DRAWbluePIECE
                                jz             resetking3333
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWORANGEPIECE
  resetking3333:                
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            temphbx,ax
                                mov            tempHBy,bx
                                add            tempHBy,25
                                cmp            temphby,200
                                jl             draw4325
                                jge            resetking3424
  draw4325:                     
                                call           DRAWbluePIECE
                                jz             resetking3424
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWORANGEPIECE
  resetking3424:                
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            temphbx,ax
                                mov            tempHBy, bx
                                add            temphbx,30
                                sub            temphby,25
                                cmp            temphbx,240
                                jge            resetking5111
             
                                cmp            temphby,0
                                jge            draw8768
                           

  draw8768:                     
                                call           DRAWbluePIECE
                                jz             resetking5111
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWORANGEPIECE

  resetking5111:                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            temphbx,ax
                                mov            tempHBy, bx
                                sub            temphbx,30
                                sub            temphby,25
                                cmp            temphbx,0
                                jl             resetking699
           
                                cmp            temphby,0
                                jge            draw5786
                           

  draw5786:                     
                                call           DRAWbluePIECE
                                jz             resetking699
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWORANGEPIECE
  resetking699:                 
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            temphbx,ax
                                mov            tempHBy, bx
                                sub            temphbx,30
                                add            temphby,25
                                cmp            temphbx,0
                                jl             resetking71
            
                                cmp            temphby,175
                                jg             resetking71
                           
  draw60:                       
                                call           DRAWbluePIECE
                                jz             resetking71
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWORANGEPIECE

  resetking71:                  
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            temphbx,ax
                                mov            tempHBy, bx
                                add            temphbx,30
                                add            temphby,25
                                cmp            temphbx,240
                                jge            finishking222
             
                                cmp            temphby,175
                                jg             finishking222
                           
  draw79:                       
                                call           DRAWbluePIECE
                                jz             finishking222
                                call           DRAWHIGHLIGHTEDINDICATOR2
                                call           DRAWORANGEPIECE
                                jz             finishking222
  finishking222:                
                                pop            bx
                                pop            ax
                                ret

bluekingLogic endp
bluerooklogic1 proc
                                push           ax                             ;putting current location into tempx and tempy to use them in drawing
                                push           bx
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHBx,ax
                                mov            temphby,bx
  repeatUprook200:              
                                sub            temphby,25                     ;moving upwards cell by cell
                                cmp            temphby ,0                     ;until reached top
                                CALL           DRAWBLUEPIECE
                                JE             restrook300                    ;end of procedure as all sides of motion have been considered
                                call           DRAWHIGHLIGHTEDINDICATOR2      ;Draw the box with highlighting color red
                                call           DRAWORANGEPIECE                ;if drawn highlighted indicator Draw the piece on top of it again
                                jE             restrook300                    ;repeat again until you reach a stop
                                JMP            repeatUprook200                ;repeat again until you reach a stop

                        
  restrook300:                                                                ;Returning to Selected piece position
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;----------------------------------------------------------;;
  repeatdownrook200:            
                       
                                add            temphby,25                     ;moving downwards cell by cell
                                cmp            temphby ,175                   ;until you reach bottom limit of the board
                                jg             restrook301                    ;if exceeded the bottom border return
                                CALL           DRAWBLUEPIECE
                                JE             restrook301                    ;end of procedure as all sides of motion have been considered
                                call           DRAWHIGHLIGHTEDINDICATOR2      ;Draw the box with highlighting color red
                                call           DRAWORANGEPIECE                ;if drawn highlighted indicator Draw the piece on top of it again
                                jE             restrook301                    ;repeat again until you reach a stop
                                JMP            repeatdownrook200              ;repeat again until you reach a stop

  restrook301:                                                                ;Returning to Selected piece position
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;------------------------------------------------------------;;;
  repeatrightrook200:           
                      
                                add            temphbx,30                     ;moving right cell by cell
                                cmp            temphbx ,210                   ;until you reach right limit of the board
                                jg             restrook302                    ;if exceeded the right border return
                                CALL           DRAWBLUEPIECE
                                JE             restrook302                    ;end of procedure as all sides of motion have been considered
                                call           DRAWHIGHLIGHTEDINDICATOR2      ;Draw the box with highlighting color red
                                call           DRAWORANGEPIECE                ;if drawn highlighted indicator Draw the piece on top of it again
                                jE             restrook302                    ;repeat again until you reach a stop
                                JMP            repeatrightrook200             ;repeat again until you reach a stop

  restrook302:                  
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHbx,ax
                                mov            temphby,bx
                          
  repeatleftrook200:            
                      
                                sub            temphbx,30                     ;moving left cell by cell
                                cmp            temphbx ,0                     ;until you reach the bottom border of the board
                                jl             finishrook300
                                CALL           DRAWBLUEPIECE
                                JE             finishrook300                  ;end of procedure as all sides of motion have been considered
                                call           DRAWHIGHLIGHTEDINDICATOR2      ;Draw the box with highlighting color red
                                call           DRAWORANGEPIECE                ;if drawn highlighted indicator Draw the piece on top of it again
                                jE             finishrook300                  ;repeat again until you reach a stop
                                JMP            repeatleftrook200
  finishrook300:                pop            bx
                                pop            ax
                                ret

bluerooklogic1 endp
bluerooklogic2 proc
                                push           ax                             ;putting current location into tempx and tempy to use them in drawing
                                push           bx
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHBx,ax
                                mov            temphby,bx
  repeatUprook400:              
                                sub            temphby,25                     ;moving upwards cell by cell
                                cmp            temphby ,0                     ;until reached top
                                CALL           DRAWBLUEPIECE
                                JE             restrook600                    ;end of procedure as all sides of motion have been considered
                                call           DRAWHIGHLIGHTEDINDICATOR2      ;Draw the box with highlighting color red
                                call           DRAWORANGEPIECE                ;if drawn highlighted indicator Draw the piece on top of it again
                                jE             restrook600                    ;repeat again until you reach a stop
                                JMP            repeatUprook400                ;repeat again until you reach a stop

                        
  restrook600:                                                                ;Returning to Selected piece position
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;----------------------------------------------------------;;
  repeatdownrook400:            
                       
                                add            temphby,25                     ;moving downwards cell by cell
                                cmp            temphby ,175                   ;until you reach bottom limit of the board
                                jg             restrook601                    ;if exceeded the bottom border return
                                CALL           DRAWBLUEPIECE
                                JE             restrook601                    ;end of procedure as all sides of motion have been considered
                                call           DRAWHIGHLIGHTEDINDICATOR2      ;Draw the box with highlighting color red
                                call           DRAWORANGEPIECE                ;if drawn highlighted indicator Draw the piece on top of it again
                                jE             restrook601                    ;repeat again until you reach a stop
                                JMP            repeatdownrook400              ;repeat again until you reach a stop

  restrook601:                                                                ;Returning to Selected piece position
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHbx,ax
                                mov            temphby,bx
  ;;------------------------------------------------------------;;;
  repeatrightrook400:           
                      
                                add            temphbx,30                     ;moving right cell by cell
                                cmp            temphbx ,210                   ;until you reach right limit of the board
                                jg             restrook602                    ;if exceeded the right border return
                                CALL           DRAWBLUEPIECE
                                JE             restrook602                    ;end of procedure as all sides of motion have been considered
                                call           DRAWHIGHLIGHTEDINDICATOR2      ;Draw the box with highlighting color red
                                call           DRAWORANGEPIECE                ;if drawn highlighted indicator Draw the piece on top of it again
                                jE             restrook602                    ;repeat again until you reach a stop
                                JMP            repeatrightrook400             ;repeat again until you reach a stop

  restrook602:                  
                                mov            ax,HighlightedBlock2x
                                mov            bx,HighlightedBlock2Y
                                mov            tempHbx,ax
                                mov            temphby,bx
                          
  repeatleftrook400:            
                      
                                sub            temphbx,30                     ;moving left cell by cell
                                cmp            temphbx ,0                     ;until you reach the bottom border of the board
                                jl             finishrook300
                                CALL           DRAWBLUEPIECE
                                JE             finishrook300                  ;end of procedure as all sides of motion have been considered
                                call           DRAWHIGHLIGHTEDINDICATOR2      ;Draw the box with highlighting color red
                                call           DRAWORANGEPIECE                ;if drawn highlighted indicator Draw the piece on top of it again
                                jE             finishrook300                  ;repeat again until you reach a stop
                                JMP            repeatleftrook400
  finishrook600:                pop            bx
                                pop            ax
                                ret

bluerooklogic2 endp
SELECTEDPIECE PROC
 
                                push           bx
                                push           dx

                                mov            bx,HighlightedBlock1x
                                mov            dx,HighlightedBlock1Y
 
                                cmp            bx,orangeBishop1X
                                jne            comparebishop2
 
                                cmp            dx, orangeBishop1Y
                                jne            comparebishop2
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangeBishop1min
                                jg             Orangelogic100
                                sub            dh,orangeBishop1sec
                                cmp            dh,OBishop1powerUp
                                jl             omessageBishop2
  Orangelogic100:               
                                clearstatusbar
                                showmessage    selectedmessage
                                
                                call           orangeBishopLogic1
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  omessageBishop2:              
                                cmp OBishop1powerUp,2
                                je  omessageBishop2twosec
                                
                                showmessage    mes
                               dec PressedQ
                                popa
                             
                                pop            dx
                                pop            bx
                                ret
  omessageBishop2twosec:
                                showmessage    mes2
dec PressedQ
                                popa
                             
                                pop            dx
                                pop            bx
                                ret
 
  comparebishop2:               cmp            bx,orangeBishop2X
                                jne            notorangeBishop
 
                                cmp            dx, orangeBishop2Y
                                jne            notorangeBishop

                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangeBishop2min
                                jg             Orangelogic
                                sub            dh,orangeBishop2sec
                                cmp            dh,OBishop2powerUp
                                jl             omessageBishop1
  Orangelogic:                  
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangeBishopLogic2
                                popa
                                pop            dx
                                pop            bx
                                ret
  omessageBishop1:              
                                cmp OBishop2powerUp,2
                                je  omessageBishop1twosec
                                showmessage    mes
dec PressedQ
                                popa
                             
                                pop            dx
                                pop            bx
                                ret
omessageBishop1twosec:
                                showmessage    mes2
dec PressedQ
                                popa
                             
                                pop            dx
                                pop            bx
                                ret                                
 
  notorangeBishop:              
 
  ;;---------------------------------------------------------------------;;
                                cmp            bx,orangeknight1X
                                jne            compareknight2
 
                                cmp            dx, orangeknight1Y
                                jne            compareknight2
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangeknight1min
                                jg             Orangelogic101
                                sub            dh,orangeknight1sec
                                cmp            dh,OKnight1powerUp
                                jl             omessageknight1
  Orangelogic101:               
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangeknightLogic1
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  omessageknight1:              
                                cmp OKnight1powerUp,2
                                je  omessageknight1twosec
                                showmessage    mes
dec PressedQ
                                popa
                             
                                pop            dx
                                pop            bx
                                ret
 omessageknight1twosec:         showmessage    mes2
dec PressedQ
                                popa
                             
                                pop            dx
                                pop            bx
                                ret
 
  compareknight2:               cmp            bx,orangeknight2X
                                jne            notorangeknight
 
                                cmp            dx, orangeknight2Y
                                jne            notorangeknight

                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangeknight2min
                                jg             orangeKnlogic
                                sub            dh,orangeknight2sec
                                cmp            dh,OKnight2powerUp
                                jl             messageknight2
  orangeKnlogic:                
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangeknightLogic2
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  messageknight2:               
                                cmp OKnight2powerUp,2
                                je  omessageknight2twosec
                                showmessage    mes
dec PressedQ
                                popa
 
                               
                                pop            dx
                                pop            bx
                                ret
omessageknight2twosec:          showmessage    mes2
dec PressedQ
                                popa
 
                               
                                pop            dx
                                pop            bx
                                ret
 
  notorangeknight:              
  ;;----------------------------------------------------------;;
                                cmp            bx,orangequeenX
                                jne            comparequeen2
 
                                cmp            dx, orangequeenY
                                jne            comparequeen2

                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangequeenmin
                                jg             orangeqnlogic
                                sub            dh,orangequeensec
                                cmp            dh,OQueenpowerUp
                                jl             messagequeen
  orangeqnlogic:                
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangequeenLogic
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  messagequeen:                 
                                cmp OQueenpowerUp,2
                                je  omessageQueentwosec
                                showmessage    mes
dec PressedQ
                                popa
 
 
                               
                                pop            dx
                                pop            bx
                                ret
omessageQueentwosec:            showmessage    mes2
dec PressedQ
                                popa
 
 
                               
                                pop            dx
                                pop            bx
                                ret                    
 
  comparequeen2:                cmp            bx,orangequeenX
                                jne            notorangequeen
 
                                cmp            dx, orangequeenY
                                jne            notorangequeen
 
  ;call orangequeenLogic
                                pop            dx
                                pop            bx
                                ret
 
  notorangequeen:               
  ;;------------------------------------------------;;
                                cmp            bx,orangekingX
                                jne            compareking2
 
                                cmp            dx, orangekingY
                                jne            compareking2


                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangekingmin
                                jg             orangekilogic
                                sub            dh,orangekingsec
                                cmp            dh,OKingpowerUp
                                jl             messageking
  orangekilogic:                
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangekingLogic
                                popa
                                pop            dx
                                pop            bx
                                ret
  messageking:                  
                                cmp OKingpowerUp,2
                                je  omessageKingtwosec
                                showmessage    mes
dec PressedQ
                                popa
                                pop            dx
                                pop            bx
                                ret
omessageKingtwosec:             showmessage    mes2
dec PressedQ
                                popa
                                pop            dx
                                pop            bx
                                ret
 
  compareking2:                 cmp            bx,orangekingX
                                jne            notorangeking
 
                                cmp            dx, orangekingY
                                jne            notorangeking
 
  ;call orangekingLogic
                                pop            dx
                                pop            bx
                                ret
 
  notorangeking:                
  ;;-------------------------------------------------------;;
                                cmp            bx,orangerook1X
                                jne            comparerook2
 
                                cmp            dx, orangerook1Y
                                jne            comparerook2


                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangerook1min
                                jg             orangero1logic
                                sub            dh,orangerook1sec
                                cmp            dh,ORook1powerUp
                                jl             messagero1
  orangero1logic:               
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangerookLogic1
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  messagero1:                   
                                cmp ORook1powerUp,2
                                je  omessageRook1twosec
                                showmessage    mes
dec PressedQ
                                popa
                               
                              
                                pop            dx
                                pop            bx
                                ret
omessageRook1twosec:            showmessage    mes2
dec PressedQ
                                popa
                               
                              
                                pop            dx
                                pop            bx
                                ret
 
  comparerook2:                 cmp            bx,orangerook2X
                                jne            notorangerook
 
                                cmp            dx, orangerook2Y
                                jne            notorangerook


                                
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangerook2min
                                jg             orangero2logic
                                sub            dh,orangerook2sec
                                cmp            dh,ORook2powerUp
                                jl             messagero2
  orangero2logic:               
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangerookLogic2
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  messagero2:                   
                                cmp ORook2powerUp,2
                                je  omessageRook2twosec
                                showmessage    mes
dec PressedQ
                                popa
 
                                pop            dx
                                pop            bx
                                ret
omessageRook2twosec:            showmessage    mes2
dec PressedQ
                                popa
 
                                pop            dx
                                pop            bx
                                ret
 
  notorangerook:                cmp            bx,orangePawn1X
                                jne            comparePawn2
 
                                cmp            dx, orangePawn1Y
                                jne            comparepawn2
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangepawn1min
                                jg             logic
                                sub            dh,orangepawn1sec
                                cmp            dh,OPawn1powerUp
                                jl             messagepawn1
  logic:                        
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangePawnLogic1
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  messagepawn1:                 
                                cmp OPawn1powerUp,2
                                je  omessagePawn1twosec
                                showmessage    mes
dec PressedQ
                                popa
                                pop            dx
                                pop            bx
                                ret
omessagePawn1twosec:            showmessage    mes2
dec PressedQ
                                popa
                                pop            dx
                                pop            bx
                                ret                                
 
  comparePawn2:                 cmp            bx,orangePawn2X
                                jne            comparePawn3
 
                                cmp            dx, orangepawn2Y
                                jne            comparePawn3



                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangepawn2min
                                jg             ORlogicpw2
                                sub            dh,orangepawn2sec
                                cmp            dh,OPawn2powerUp
                                jl             messagepawn2
  ORlogicpw2:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangePawnLogic2
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  messagepawn2:                 
                                cmp OPawn2powerUp,2
                                je  omessagePawn2twosec
                                showmessage    mes
dec PressedQ
                                popa
 
  
                                pop            dx
                                pop            bx
                                ret 
omessagePawn2twosec:            showmessage    mes2
dec PressedQ
                                popa
 
  
                                pop            dx
                                pop            bx
                                ret
 
  comparePawn3:                 cmp            bx,orangePawn3X
                                jne            comparePawn4
 
                                cmp            dx, orangePawn3Y
                                jne            comparepawn4

                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangepawn3min
                                jg             ORlogicpw3
                                sub            dh,orangepawn3sec
                                cmp            dh,OPawn3powerUp
                                jl             messagepawn3
  ORlogicpw3:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangePawnLogic3
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  messagepawn3:                 
                                cmp OPawn3powerUp,2
                                je  omessagePawn3twosec
                                showmessage    mes
dec PressedQ
                                popa
 
                                pop            dx
                                pop            bx
                                ret
 omessagePawn3twosec:           showmessage    mes2
dec PressedQ
                                popa
 
                                pop            dx
                                pop            bx
                                ret
  comparePawn4:                 cmp            bx,orangePawn4X
                                jne            comparePawn5
 
                                cmp            dx, orangePawn4Y
                                jne            comparePawn5


                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangepawn4min
                                jg             ORlogicpw4
                                sub            dh,orangepawn4sec
                                cmp            dh,OPawn4powerUp
                                jl             messagepawn4
  ORlogicpw4:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangePawnLogic4
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  messagepawn4:                 
                                cmp OPawn4powerUp,2
                                je  omessagePawn4twosec 
                                showmessage    mes
dec PressedQ
                                popa
 
                                pop            dx
                                pop            bx
                                ret
 omessagePawn4twosec:           showmessage    mes2
dec PressedQ
                                popa
 
                                pop            dx
                                pop            bx
                                ret
  comparePawn5:                 cmp            bx,orangePawn5X
                                jne            comparePawn6
 
                                cmp            dx, orangePawn5Y
                                jne            comparepawn6

                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangepawn5min
                                jg             ORlogicpw5
                                sub            dh,orangepawn5sec
                                cmp            dh,OPawn5powerUp
                                jl             messagepawn5
  ORlogicpw5:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangePawnLogic5
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  messagepawn5:                 
                                
                                cmp OPawn5powerUp,2
                                je  messagepawn5twosec
                                showmessage    mes
dec PressedQ
                                popa
 
 
                                pop            dx
                                pop            bx
                                ret
 messagepawn5twosec:           showmessage    mes2
dec PressedQ
                                popa
 
 
                                pop            dx
                                pop            bx
                                ret                                
 
  comparePawn6:                 cmp            bx,orangePawn6X
                                jne            comparePawn7
 
                                cmp            dx, orangepawn6Y
                                jne            comparePawn7

                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangepawn6min
                                jg             ORlogicpw6
                                sub            dh,orangepawn6sec
                                cmp            dh,OPawn6powerUp
                                jl             messagepawn6
  ORlogicpw6:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangePawnLogic6
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  messagepawn6:                 
                                cmp OPawn6powerUp,2
                                je  omessagePawn6twosec 
                                showmessage    mes
dec PressedQ
                                popa
 
                                pop            dx
                                pop            bx
                                ret
omessagePawn6twosec:            showmessage    mes2
dec PressedQ
                                popa
 
                                pop            dx
                                pop            bx
                                ret                    
  comparePawn7:                 cmp            bx,orangePawn7X
                                jne            comparePawn8
 
                                cmp            dx, orangePawn7Y
                                jne            comparepawn8

                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangepawn7min
                                jg             ORlogicpw7
                                sub            dh,orangepawn7sec
                                cmp            dh,OPawn7powerUp
                                jl             messagepawn7
  ORlogicpw7:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangePawnLogic7
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  messagepawn7:                 
                                cmp OPawn7powerUp,2
                                je  omessagePawn7twosec
                                showmessage    mes
dec PressedQ
                                popa
 
                                pop            dx
                                pop            bx
                                ret
omessagePawn7twosec:            showmessage  mes2
dec PressedQ
                                popa
 
                                pop            dx
                                pop            bx
                                ret
 
  comparePawn8:                 cmp            bx,orangePawn8X
                                jne            notorange
 
                                cmp            dx, orangepawn8Y
                                jne            notorange


                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,orangepawn8min
                                jg             ORlogicpw8
                                sub            dh,orangepawn8sec
                                cmp            dh,OPawn8powerUp
                                jl             messagepawn8
  ORlogicpw8:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           orangePawnLogic8
                                popa
                                pop            dx
                                pop            bx
                                
                                ret
  messagepawn8:                 
                                cmp OPawn8powerUp,2
                                je  omessagePawn8twosec
                                showmessage    mes
dec PressedQ
                                popa
 
                                pop            dx
                                pop            bx
                                ret
omessagePawn8twosec:           showmessage    mes2
dec PressedQ
                                popa
 
                                pop            dx
                                pop            bx
                                ret                     
  notorange:                    
  dec PressedQ
  ;;-----------------------------------------------------------;;
                                pop            dx
                                pop            bx
                                ret
SELECTEDPIECE ENDP

SELECTEDPIECEBLUE PROC
 
                                push           bx
                                push           dx

                                mov            bx,HighlightedBlock2x
                                mov            dx,HighlightedBlock2Y
 
                                cmp            bx,blueBishop1X
                                jne            comparebluebishop2
 
                                cmp            dx, blueBishop1Y
                                jne            comparebluebishop2
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEBISHOP1min
                                jg             BLUElogic
                                sub            dh,BLUEBISHOP1sec
                                cmp            dh,BBishop1powerUp
                                jl             bmessageBISHOP1
  BLUElogic:                    
                                clearstatusbar
                                showmessage    selectedmessage
                                call           blueBishopLogic1
                                popa
                                pop            dx
                                pop            bx
                                ret
  bmessageBISHOP1:              
                                cmp BBishop1powerUp,2
                                je  bmessageBishop1twosec
                                showmessage    mes
dec PressedO
                                popa
                                pop            dx
                                pop            bx
                                ret
 bmessageBishop1twosec:         showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret


  comparebluebishop2:           cmp            bx,blueBishop2X
                                jne            notblueBishop
 
                                cmp            dx, blueBishop2Y
                                jne            notblueBishop
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEBISHOP2min
                                jg             BLUElogic1
                                sub            dh,BLUEBISHOP2sec
                                cmp            dh,BBishop2powerUp
                                jl             messageBISHOP2
  BLUElogic1:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           blueBishopLogic2
                                popa
                                pop            dx
                                pop            bx
                                ret
                                
                                
  messageBISHOP2:               
                                cmp BBishop2powerUp,2
                                je  bmessageBishop2twosec
                                showmessage    mes
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
 
 bmessageBishop2twosec:        showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
 
  notblueBishop:                
 
  ;;---------------------------------------------------------------------;;
                                cmp            bx,blueknight1X
                                jne            compareblueknight2
 
                                cmp            dx, blueknight1Y
                                jne            compareblueknight2
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEKNIGHT1min
                                jg             BLUElogic2
                                sub            dh,BLUEKNIGHT1sec
                                cmp            dh,BKnight1powerUp
                                jl             messageKNIGHT1
  BLUElogic2:                   
                                clearstatusbar
                                showmessage    selectedmessage
 
                                call           blueknightLogic1
                                popa
                                pop            dx
                                pop            bx
                                ret
  messageKNIGHT1:               
                                cmp BKnight1powerUp,2
                                je  bmessageKnight1twosec
                                showmessage    mes
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
  bmessageKnight1twosec:        showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret


  compareblueknight2:           cmp            bx,blueknight2X
                                jne            notblueknight
 
                                cmp            dx, blueknight2Y
                                jne            notblueknight
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEKNIGHT2min
                                jg             BLUElogic3
                                sub            dh,BLUEKNIGHT2sec
                                cmp            dh,BKnight2powerUp
                                jl             bmessageKNIGHT2
  BLUElogic3:                   
                                clearstatusbar
                                showmessage    selectedmessage
 
                                call           blueknightLogic2
                                POPA
                                pop            dx
                                pop            bx
                                ret
  bmessageKNIGHT2:              
                               cmp BKnight2powerUp,2
                                je  bmessageKnight2twosec 
                                showmessage    mes
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
   bmessageKnight2twosec:       showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
  notblueknight:                
  ;;----------------------------------------------------------;;
                                cmp            bx,bluequeenX
                                jne            comparebluequeen2
 
                                cmp            dx, bluequeenY
                                jne            comparebluequeen2
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEQueenmin
                                jg             BLUElogic4
                                sub            dh,BLUEqueensec
                                cmp            dh,BQueenpowerUp
                                jl             messageBlueQueen
  BLUElogic4:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           bluequeenLogic
                                POPA
                                pop            dx
                                pop            bx
                                ret
  messageBlueQueen:             cmp BQueenpowerUp,2
                                je  bmessageQueentwosec
                                showmessage    mes
                                dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
bmessageQueentwosec:            showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
  comparebluequeen2:            cmp            bx,bluequeenX
                                jne            notbluequeen
 
                                cmp            dx, bluequeenY
                                jne            notbluequeen
 
  ;call bluequeenLogic
                                pop            dx
                                pop            bx
                                ret
 
  notbluequeen:                 
  ;;------------------------------------------------;;
                                cmp            bx,bluekingX
                                jne            compareblueking2
 
                                cmp            dx, bluekingY
                                jne            compareblueking2
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEKingmin
                                jg             BLUElogic5
                                sub            dh,BLUEKingsec
                                cmp            dh,BKingpowerUp
                                jl             messageBlueking
  BLUElogic5:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           bluekingLogic
                                POPA
                                pop            dx
                                pop            bx
                                ret
  messageBlueking:              
                                cmp BKingpowerUp,2
                                je  bmessageKingtwosec
                                showmessage    mes
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
 bmessageKingtwosec:            showmessage    mes2
 dec Pressedo

                                popa
                                pop            dx
                                pop            bx
                                ret
  compareblueking2:             cmp            bx,bluekingX
                                jne            notblueking
 
                                cmp            dx, bluekingY
                                jne            notblueking
 
                                call           bluekingLogic
                                pop            dx
                                pop            bx
                                ret
 
  notblueking:                  
  ;;-------------------------------------------------------;;
                                cmp            bx,bluerook1X
                                jne            comparebluerook2
 
                                cmp            dx, bluerook1Y
                                jne            comparebluerook2
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUErook1min
                                jg             BLUElogic6
                                sub            dh,BLUErook1sec
                                cmp            dh,BRook1powerUp
                                jl             messageBluerook1
  BLUElogic6:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           bluerookLogic1
                                ;call           bluerookLogicND1
                                POPA
                                pop            dx
                                pop            bx
                                ret
  messageBluerook1:             
                                cmp BRook1powerUp,2
                                je  bmessageRook1twosec
                                showmessage    mes
                                dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
bmessageRook1twosec:            showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret

  comparebluerook2:             cmp            bx,bluerook2X
                                jne            notbluerook
 
                                cmp            dx, bluerook2Y
                                jne            notbluerook
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUErook2min
                                jg             BLUElogic7
                                sub            dh,BLUErook2sec
                                cmp            dh,BRook2powerUp
                                jl             messageBluerook2
  BLUElogic7:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           bluerookLogic2
                                POPA
                                pop            dx
                                pop            bx
                                ret
  messageBluerook2:             
                                cmp BRook2powerUp,2
                                je  bmessageRook2twosec
                                showmessage    mes
                                dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
bmessageRook2twosec:            showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret                    


  notbluerook:                  
                                
                                cmp            bx,bluePawn1X
                                jne            comparebluePawn2
 
                                cmp            dx, bluePawn1Y
                                jne            comparebluepawn2
                                
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEpawn1min
                                jg             BLUElogic8
                                sub            dh,BLUEpawn1sec
                                cmp            dh,BPawn1powerUp
                                jl             messageBluepawn1
  BLUElogic8:                   
                                clearstatusbar
                                showmessage    selectedmessage
                                call           bluePawnLogic1
                                POPA
                                pop            dx
                                pop            bx
                                ret
  messageBluepawn1:             
                                cmp BPawn1powerUp,2
                                je  bmessagePawn1twosec
                                showmessage    mes
                                dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
bmessagePawn1twosec:            showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret                                
 
  comparebluePawn2:             cmp            bx,bluePawn2X
                                jne            comparebluePawn3
 
                                cmp            dx, bluepawn2Y
                                jne            comparebluePawn3
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEpawn2min
                                jg             BLUElogic9
                                sub            dh,BLUEpawn2sec
                                cmp            dh,BPawn2powerUp
                                jl             messageBluepawn2
  BLUElogic9:                   
                                clearstatusbar
                                showmessage    selectedmessage
 
                                call           bluePawnLogic2
                                POPA
                                pop            dx
                                pop            bx
                                ret
  messageBluepawn2:             
                                cmp BPawn2powerUp,2
                                je  bmessagePawn2twosec
                                showmessage    mes
                                dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
bmessagePawn2twosec:            showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
  comparebluePawn3:             cmp            bx,bluePawn3X
                                jne            comparebluePawn4
 
                                cmp            dx, bluePawn3Y
                                jne            comparebluepawn4
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEpawn3min
                                jg             BLUElogic10
                                sub            dh,BLUEpawn3sec
                                cmp            dh,BPawn3powerUp
                                jl             messageBluepawn3
  BLUElogic10:                  
                                clearstatusbar
                                showmessage    selectedmessage
 
                                call           bluePawnLogic3
                                POPA
                                pop            dx
                                pop            bx
                                ret
  messageBluepawn3:             
                                cmp BPawn3powerUp,2
                                je  bmessagePawn3twosec
                                showmessage    mes
                                dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
bmessagePawn3twosec:            showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret

  comparebluePawn4:             cmp            bx,bluePawn4X
                                jne            comparebluePawn5
 
                                cmp            dx, bluePawn4Y
                                jne            comparebluePawn5
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEpawn4min
                                jg             BLUElogic11
                                sub            dh,BLUEpawn4sec
                                cmp            dh,BPawn4powerUp
                                jl             messageBluepawn4
  BLUElogic11:                  
                                clearstatusbar
                                showmessage    selectedmessage
 
                                call           bluePawnLogic4
                                POPA
                                pop            dx
                                pop            bx
                                ret
  messageBluepawn4:             
                               cmp BPawn4powerUp,2
                                je  bmessagePawn4twosec
                                showmessage    mes
                                dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
 bmessagePawn4twosec:           showmessage    mes2
 dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
  comparebluePawn5:             cmp            bx,bluePawn5X
                                jne            comparebluePawn6
 
                                cmp            dx, bluePawn5Y
                                jne            comparebluepawn6
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEpawn5min
                                jg             BLUElogic12
                                sub            dh,BLUEpawn5sec
                                cmp            dh,BPawn5powerUp
                                jl             messageBluepawn5
  BLUElogic12:                  
                                clearstatusbar
                                showmessage    selectedmessage
 
                                call           bluePawnLogic5
                                POPA
                                pop            dx
                                pop            bx
                                ret
  messageBluepawn5:             
                                cmp BPawn5powerUp,2
                                je  bmessagePawn5twosec
                                showmessage    mes
                                dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
 bmessagePawn5twosec:           showmessage    mes2
 dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
  comparebluePawn6:             cmp            bx,bluePawn6X
                                jne            comparebluePawn7
 
                                cmp            dx, bluepawn6Y
                                jne            comparebluePawn7
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEpawn6min
                                jg             BLUElogic13
                                sub            dh,BLUEpawn6sec
                                cmp            dh,BPawn6powerUp
                                jl             messageBluepawn6
  BLUElogic13:                  
                                clearstatusbar
                                showmessage    selectedmessage
 
                                call           bluePawnLogic6
                                POPA
                                pop            dx
                                pop            bx
                                ret
  messageBluepawn6:             
                                cmp BPawn6powerUp,2
                                je  bmessagePawn6twosec
                                showmessage    mes
                                dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
bmessagePawn6twosec:            showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret                                
  comparebluePawn7:             cmp            bx,bluePawn7X
                                jne            comparebluePawn8
 
                                cmp            dx, bluePawn7Y
                                jne            comparebluepawn8
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEpawn7min
                                jg             BLUElogic14
                                sub            dh,BLUEpawn7sec
                                cmp            dh,BPawn7powerUp
                                jl             messageBluepawn7
  BLUElogic14:                  
                                clearstatusbar
                                showmessage    selectedmessage
 
                                call           bluePawnLogic7
                                POPA
                                pop            dx
                                pop            bx
                                ret
  messageBluepawn7:             
                               cmp BPawn7powerUp,2
                                je  bmessagePawn7twosec
                                showmessage    mes
                                dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
bmessagePawn7twosec:            showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret

                              
                               
 
  comparebluePawn8:             cmp            bx,bluePawn8X
                                jne            notblue
 
                                cmp            dx, bluepawn8Y
                                jne            notblue
                                pusha
                                mov            ah,2Ch
                                int            21H
                                cmp            cl,BLUEpawn8min
                                jg             BLUElogic15
                                sub            dh,BLUEpawn8sec
                                cmp            dh,BPawn8powerUp
                                jl             messageBluepawn8
  BLUElogic15:                  
                                clearstatusbar
                                showmessage    selectedmessage
 
                                call           bluePawnLogic8
                                POPA
                                pop            dx
                                pop            bx
                                ret
  messageBluepawn8:             
                                cmp BPawn8powerUp,2
                                je  bmessagePawn8twosec
                                showmessage    mes
                                dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
bmessagePawn8twosec:            showmessage    mes2
dec Pressedo
                                popa
                                pop            dx
                                pop            bx
                                ret
  notblue:                      
  ;;-----------------------------------------------------------;;
                                dec Pressedo
                                pop            dx
                                pop            bx
SELECTEDPIECEBLUE ENDP


moveHighlightedBlock PROC
  ;======================================================================
  ; initinalize COM
  ;Set Divisor Latch Access Bit
                                mov            dx,3fbh                        ; Line Control Register
                                mov            al,10000000b                   ;Set Divisor Latch Access Bit
                                out            dx,al                          ;Out it
  ;Set LSB byte of the Baud Rate Divisor Latch register.
                                mov            dx,3f8h
                                mov            al,0ch
                                out            dx,al

  ;Set MSB byte of the Baud Rate Divisor Latch register.
                                mov            dx,3f9h
                                mov            al,00h
                                out            dx,al

  ;Set port configuration
                                mov            dx,3fbh
                                mov            al,00011011b
                                out            dx,al
  ;=======================================================================
 
  AGAIN:                
          
                              ;pusha
                               ;mov ah,2Ch
                                ;int 21H
                               ;cmp poweruptime,cl
                               ;je skiprandom
                               ;mov poweruptime,cl 
                               ;RandomVariable 
                               ;call Printpowerup
                               ;skiprandom:
                               ;mov poweruppicked,1
                               ;popa
                                mov            ah,1
                                int            16h
                                jz             readdatablock
                                mov            ah,0
                                int            16h
                                mov            value,al

                                
                                cmp            al,36h
                                je             moveRIGHT2
                                cmp            al,38h
                                je             moveUP2
                                cmp            al,34h
                                je             movELEFT2
                                cmp            al,35h
                                je             moveDOWN2
                                cmp            al,37h
                                je             select2
                                cmp            al,6dh
                                je             resetelboard2
                                cmp            AL,27D
                                je             endgame
                                jMP            chatingame

                                
                  
    
  moveRIGHT2:                   PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            temphby,dx
                                popa
                                CMP            HighlightedBlock2x,210
                                je             label12
                                ADD            HighlightedBlock2x,30
                                ADD            HighlightedBlock2Y,0
                                push           cx
                                push           dx
                                mov            cx,HighlightedBlock2x
                                mov            tempHBx2,cx
                                mov            dx,HighlightedBlock2Y
                                mov            tempHBy2,dx
                                pop            dx
                                pop            cx
                                jmp            done2
  label12:                      
                                mov            tempHBx,180
                                JMP            DONE2

  movEUP2:                      
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            temphby,dx
                                popa
                                CMP            HighlightedBlock2y,0
                                je             label13
                                ADD            HighlightedBlock2x,0
                                sub            HighlightedBlock2Y,25
                                push           cx
                                push           dx
                                mov            cx,HighlightedBlock2x
                                mov            tempHBx2,cx
                                mov            dx,HighlightedBlock2Y
                                mov            tempHBy2,dx
                                pop            dx
                                pop            cx
                                jmp            done2
  label13:                      
                           
                                mov            tempHBy,25
                                JMP            DONE2
 
 
  moveLEFT2:                    
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            temphby,dx
                                popa
                                CMP            HighlightedBlock2x,0
                                je             label121
                                sub            HighlightedBlock2x,30
                                ADD            HighlightedBlock2Y,0
                                push           cx
                                push           dx
                                mov            cx,HighlightedBlock2x
                                mov            tempHBx2,cx
                                mov            dx,HighlightedBlock2Y
                                mov            tempHBy2,dx
                                pop            dx
                                pop            cx
                                jmp            done2
  label121:                     
                                mov            tempHBx,30
                                JMP            DONE2
  moveDOWN2:                    
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            temphby,dx
                                popa
                                CMP            HighlightedBlock2y,175
                                je             label14
                                ADD            HighlightedBlock2x,0
                                ADD            HighlightedBlock2Y,25
                                push           cx
                                push           dx
                                mov            cx,HighlightedBlock2x
                                mov            tempHBx2,cx
                                mov            dx,HighlightedBlock2Y
                                mov            tempHBy2,dx
                                pop            dx
                                pop            cx
                                jmp            done2
  label14:                      
                                mov            tempHBy,150
                                JMP            DONE2
                        

  done2:                        
            ;showmessageline line
                                MOV            AH,0DH
                                push           cx
                                push           dx
                                MOV            CX,tempHBx2
                                MOV            DX,tempHBy2
                                INT            10h
                                MOV            STOREDCOLOR2,AL


                                POP            CX
                                POP            DX


                                call           DRAWHIGHLIGHTEDBLOCK2
                                call           DRAWCHESSBLOCK
                                call           Printpowerup
                  
                                CALL           DRAWORANGEPIECE
                                CALL           DRAWBLUEPIECE
                               
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            temphby,dx
                                popa
                                CALL           DRAWORANGEPIECE
                                CALL           DRAWBLUEPIECE
                              
                                pusha
  ;Check that Transmitter Holding Register is Empty
                                mov            dx , 3FDH                      ; Line Status Register
  AGAINhb:                      
                                In             al , dx                        ;Read Line Status
                                AND            al , 00100000b
                                JZ             AGAINhb

  ;If empty put the VALUE in Transmit data register
                                mov            dx , 3F8H                      ; Transmit data register
                                mov            al,value
                                out            dx, al

  Readdatablock:                
  ;Check that Data Ready
                                mov            dx , 3FDH                      ; Line Status Register
                            
                                in             al,dx
                                AND            al , 1
                                JZ             zico

                                mov            dx , 03F8H
                                in             al,dx
                                cmp            al,36H
                                je             moveRIGHT1
                                cmp            al,35H
                                je             moveUP1
                                cmp            al,34H
                                je             movELEFT1
                                cmp            al,38H
                                je             moveDOWN1

                                cmp            al,37h
                                je             select1
                                jmp            mohamedzakaria

                        
                              

  moveRIGHT1:                   
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            temphby,dx
                                popa
                                CMP            HighlightedBlock1x,210
                                je             label1
                                ADD            HighlightedBlock1x,30
                                ADD            HighlightedBlock1Y,0
                                push           cx
                                push           dx
                                mov            cx,HighlightedBlock1x
                                mov            tempHBx1,cx
                                mov            dx,HighlightedBlock1Y
                                mov            tempHBy1,dx
                                pop            dx
                                pop            cx
                                jmp            done
  label1:                       
                                mov            tempHBx,180
                                JMP            DONE

  movEUP1:                      

                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            temphby,dx
                                popa
                                CMP            HighlightedBlock1y,0
                                je             label3
                                ADD            HighlightedBlock1x,0
                                sub            HighlightedBlock1Y,25
                                push           cx
                                push           dx
                                mov            cx,HighlightedBlock1x
                                mov            tempHBx1,cx
                                mov            dx,HighlightedBlock1Y
                                mov            tempHBy1,dx
                                pop            dx
                                pop            cx
                                jmp            done
  label3:                       
                           
                                mov            tempHBy,25
                                JMP            DONE
 
 
  moveLEFT1:                    
                           
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            temphby,dx
                                popa
                                CMP            HighlightedBlock1x,0
                                je             label2
                                sub            HighlightedBlock1x,30
                                ADD            HighlightedBlock1Y,0
                                push           cx
                                push           dx
                                mov            cx,HighlightedBlock1x
                                mov            tempHBx1,cx
                                mov            dx,HighlightedBlock1Y
                                mov            tempHBy1,dx
                                pop            dx
                                pop            cx
                                jmp            done
  label2:                       
                                mov            tempHBx,30
                                JMP            DONE
  moveDOWN1:                    
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            temphby,dx
                                popa
                                CMP            HighlightedBlock1y,175
                                je             label4
                                ADD            HighlightedBlock1x,0
                                ADD            HighlightedBlock1Y,25
                                push           cx
                                push           dx
                                mov            cx,HighlightedBlock1x
                                mov            tempHBx1,cx
                                mov            dx,HighlightedBlock1Y
                                mov            tempHBy1,dx
                                pop            dx
                                pop            cx
                                jmp            done
  label4:                       
                                mov            tempHBy,150
                                JMP            DONE

  done:                         
                               
                                MOV            AH,0DH
                                push           cx
                                push           dx
                                MOV            CX,tempHBx1
                                MOV            DX,tempHBy1
                                INT            10h
                                MOV            STOREDCOLOR,AL


                                POP            CX
                                POP            DX


                                call           DRAWHIGHLIGHTEDBLOCK
                                call           DRAWCHESSBLOCK
                                call           Printpowerup
                  
                                CALL           DRAWORANGEPIECE
                                CALL           DRAWBLUEPIECE
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            temphby,dx
                                popa
                                CALL           DRAWORANGEPIECE
                                CALL           DRAWBLUEPIECE
                                PUSHA
                                MOV            AX,HighlightedBlock1x
                                MOV            BX,HighlightedBlock1Y
                                CMP            PressedQ,1
                                JE             zico
                                MOV            CX,storedlogicorangeX
                                MOV            DX, storedlogicorangeY
                                MOV            HighlightedBlock1x,CX
                                MOV            HighlightedBlock1Y,DX
                                CALL           SELECTEDPIECE
                                call           Printpowerup
                         
                           
                                MOV            HighlightedBlock1x,AX
                                MOV            HighlightedBlock1Y,BX
                                call           DRAWHIGHLIGHTEDBLOCK
                                call           Printpowerup
                                POPA
                                PUSHA
                                MOV            CX,HighlightedBlock1x
                                MOV            DX,HighlightedBlock1Y
                                MOV            tempHBx,CX
                                MOV            temphby,dx
                                popa
                                CALL           DRAWBLUEPIECE
                                CALL           DRAWORANGEPIECE
                           
                                jmp            zico
 Select:                       PUSHA
               
                                cmp            PressedQ,1
                                je             SelectOPiece
                                call           moveorangepiece
                                dec            PressedQ
                                POPA
                                call           Printpowerup
                                jmp            zico
                 
  SelectOPiece:                 call           SELECTEDPIECE
                                mov            CX,HighlightedBlock1x
                                MOV            storedlogicorangeX,CX
                                mov            DX,HighlightedBlock1Y
                                MOV            storedlogicorangeY,DX
                                inc            PressedQ
                                call           Printpowerup
                                jmp            zico



                                popa

  
                 
  

  zico:                       PUSHA
                                MOV            AX,HighlightedBlock2x
                                MOV            BX,HighlightedBlock2Y
                                CMP            PressedO,1
                                JE             AGAIN
                                MOV            CX,storedlogicblueX
                                MOV            DX, storedlogicblueY
                                MOV            HighlightedBlock2x,CX
                                MOV            HighlightedBlock2Y,DX
                                CALL           SELECTEDPIECEBLUE
                                call           Printpowerup
                         
                           
                                MOV            HighlightedBlock2x,AX
                                MOV            HighlightedBlock2Y,BX
                                call           DRAWHIGHLIGHTEDBLOCK2
                                call           Printpowerup
                                POPA
                                PUSHA
                                MOV            CX,HighlightedBlock2x
                                MOV            DX,HighlightedBlock2Y
                                MOV            tempHBx,CX
                                MOV            temphby,dx
                                popa
                                CALL           DRAWBLUEPIECE
                                CALL           DRAWORANGEPIECE
                                
                           
                                jmp            again



   
  select2: 
                                                   
   PUSHA
               
                                cmp            PressedO,1
                                je             SelectbPiece
                                call           movebluepiece
                                dec            PressedO
                                jmp zakaria
                               
                 
  SelectbPiece:                 call           SELECTEDPIECEBLUE
                                mov            CX,HighlightedBlock2x
                                MOV            storedlogicblueX,CX
                                mov            DX,HighlightedBlock2Y
                                MOV            storedlogicblueY,DX
                                inc            PressedO
                                call           Printpowerup
                                jmp            zakaria
popa
zakaria:
pusha
  ;Check that Transmitter Holding Register is Empty
                                mov            dx , 3FDH                      ; Line Status Register
  AGAINhb1:                      
                                In             al , dx                        ;Read Line Status
                                AND            al , 00100000b
                                JZ             AGAINhb1

  ;If empty put the VALUE in Transmit data register
                                mov            dx , 3F8H                      ; Transmit data register
                                mov            al,value
                                out            dx, al

  Readdatablock1:                
  ;Check that Data Ready
                                mov            dx , 3FDH                      ; Line Status Register
                            
                                in             al,dx
                                AND            al , 1
                                JZ             again

                                mov            dx , 03F8H
                                in             al,dx
                               
                                
                                
                                cmp            al,37h
                                je             select1
                                Select1:  
                                 PUSHA
               
                                cmp            PressedQ,1
                                je             SelectOPiece1
                                call           moveorangepiece
                                dec            PressedQ
                                POPA
                                call           Printpowerup
                                jmp            again
                                SelectOPiece1:              
                                call           SELECTEDPIECE
                                mov            CX,HighlightedBlock1x
                                MOV            storedlogicorangeX,CX
                                mov            DX,HighlightedBlock1Y
                                MOV            storedlogicorangeY,DX
                                inc            Pressedq
                                call           Printpowerup
                                jmp            again



                                popa

  resetelboard2:                
                                call           DeleteHighlightedBlock2
                                cmp            PressedO,1
                                je             skip
                                dec            PressedO



                                
 
  chatingame:
                                cmp            rowschat,0bh
                                jnz            noscroll1
                                scrollup       021eh,0b27h
                                mov            rowschat, 0ah
                                mov            colschat,1eh
                                noscroll1:
                                mov            dl, colschat
                                mov            dh, rowschat
                                mov            ah,2
                                int            10h
                                inc            dl
                                cmp            dl, 27h
                                jne            skip50
                                mov            dl,1EH
                                inc            dh
                                skip50:                        
                                cmp            dh,0bh
                                jne            skip70
                                skip70:
                                mov            colschat, dl
                                mov            rowschat, dh
                                mov            cl, al
                                mov            ah,0
                                int            16h
                                
                                cmp            al, 13d

                                jne            skipenter
                                mov            dl, colschat
                                mov            dh, rowschat
                                mov            ah,2
                                inc            dh
                                mov            dl, 0
                                mov            colschat,dl
                                mov            rowschat, dh
                                int            10h
                                skipenter:
                              
                                cmp            al,27d
                                je             exit
                                mov            ah,2
                                mov            dl, al
                                int            21h
                                
 pusha
  ;Check that Transmitter Holding Register is Empty
                                mov            dx , 3FDH                      ; Line Status Register
  AGAINenter:                      
                                In             al , dx                        ;Read Line Status
                                AND            al , 00100000b
                                JZ             AGAINenter

  ;If empty put the VALUE in Transmit data register
                                mov            dx , 3F8H                      ; Transmit data register
                                mov            al,value
                                out            dx , al

  Readdataenter:                   
  ;Check that Data Ready
                                mov            dx , 3FDH                      ; Line Status Register
  CHK:                          in             al , dx
                                AND            al , 1
                                JZ             again
  ;If Ready read the VALUE in Receive data register
                                                  
                                
                                mov            dx , 03F8H
                                in             al , dx
                                

mohamedzakaria:
             PUSHA
                                cmp            rowrchat,0fh
                                jnz            noscrollR1
                                scrollup       0d1eh,1027h
                                mov            rowrchat, 0fh
                                mov            colrchat,1eh
  noscrollR1:                    
                                POPA
    
                                cmp            al, 13d
                                jne            skip40
                                mov            dl, colrchat
                                mov            dh, rowrchat
                                mov            ah,2
                                inc            dh
                                mov            dl, 1EH
                                mov            colrchat,dl
                                mov            rowrchat, dh
                                int            10h
  skip40:                        
                                mov            VALUE , al
                                cmp            al,27d
                                jz             exit

                                mov            dl, colrchat
                                mov            dh, rowrchat
                                mov            ah,2
                                int            10h
                                inc            dl
                                cmp            dl, 27h
                                je            skip20
                                mov            dl,1eh
                                inc            dh

  skip20:                        
                                mov            colrchat, dl
                                mov            rowrchat, dh
                                mov            ah, 02
                                mov            dl, value
                                int            21h
                                jmp            again


popa

 

  skip:                         
                                jmp            again

                                RET
moveHighlightedBlock ENDP



  ;-------------------------------------------;




DRAWBOARD PROC
  ;;---------------printboard----------------------;;
                                MOV            AH, 0
                                MOV            AL, 13h
                                INT            10h
         
                                CALL           OpenFile
                                CALL           ReadData
	
                                LEA            BX , BoardData
	
                                MOV            CX,0
                                MOV            DX,0
                                MOV            AH,0ch
	
  ; Drawing loop
 
  drawLoop100:                  
                                MOV            AL,[BX]
                                INT            10h
                                INC            CX
                                INC            BX
                                CMP            CX,BoardWidth
                                JNE            drawLoop100
	
                                MOV            CX ,0
                                INC            DX
                                CMP            DX , BoardHeight
                                JNE            drawLoop100
                                call           Printpowerup
                                
  ;--------------------------------------------------------;
                                CALL           PRINTORANGEQUEEN
                                CALL           PRINTORANGEKING
                                CALL           PRINTBLUEKnight1
                                CALL           PRINTBLUEQUEEN
                                CALL           PRINTBLUEKing
                                CALL           PRINTBLUEBISHOP1
                                CALL           PRINTBLUEROOK1
                                CALL           PRINTbluePAWN1
                                CALL           PRINTORANGEPAWN1
                                CALL           PRINTORANGEKNIGHT1
                                CALL           PRINTORANGEROOK1
                                CALL           PRINTORANGEBISHOP1
                                call           PRINTORANGEBISHOP2
                                CALL           PRINTORANGEROOK2
                                 
                                
                                CALL           PRINTBLUEKnight2

                      
                                CALL           PRINTORANGEKNIGHT2
                                CALL           PRINTBLUEROOK2
                                CALL           PRINTBLUEBISHOP2
                       
                                CALL           PRINTORANGEPAWN2
                                CALL           PRINTORANGEPAWN3
                                CALL           PRINTORANGEPAWN4
                                CALL           PRINTORANGEPAWN5
                                CALL           PRINTORANGEPAWN6
                                CALL           PRINTORANGEPAWN7
                                CALL           PRINTORANGEPAWN8
                                CALL           PRINTBLUEPAWN2
                                CALL           PRINTBLUEPAWN3
                                CALL           PRINTBLUEPAWN4
                                CALL           PRINTBLUEPAWN5
                                CALL           PRINTBLUEPAWN6
                                CALL           PRINTBLUEPAWN7
                                CALL           PRINTBLUEPAWN8
                                
                                
  ;push ax
  ;push dx
  ;
  ;mov ah,2
  ;mov dh, 40d
  ;mov dl, 1eh
  ;push dx
  ;int 10h
  ;DrawingloopG:
  ;        pop dx
  ;        push dx
  ;        cmp dh, 2eh
  ;        jae endSplitScreenG
  ;        int 10h
  ;        mov ah,2
  ;        mov dl, '-'
  ;        int 21h
  ;jmp DrawingloopG
  ;
  ;endSplitScreenG:
  ;pop dx
  ;pop ax
                                                                
                                
                                
                                
    
  ;;------------------------------------------------------------;;
  loop1:                        




                                call           moveHighlightedBlock

                                jmp            loop1

             
 
             	
  ; Press any key to exit
                                MOV            AH , 0
                                INT            16h
    
                                call           CloseFileOR
    
  ;Change to Text MODE
                                MOV            AH,0
                                MOV            AL,03h
                                INT            10h

  ; return control to operating system
                                MOV            AH , 4ch
                                INT            21H

    
DRAWBOARD ENDP





MAIN PROC FAR
                                MOV            AX , @DATA
                                MOV            DS , AX
                                

  Endgame:                      
  
                                mov            ah,0                           ; Graphics Mode
                                mov            al,12h
                                int            10h
                                mov            ah,9h                          ;First Message
                                mov            dx,offset FirstName
                                int            21h
                                mov            ah,2                           ;Cursor Setting
                                mov            dx,0A00h
                                int            10h

                                mov            ah,9h
                                mov            dx,offset KeyToContinue
                                int            21h

                                mov            ah,2                           ;Cursor Setting
                                mov            dx,0100h
                                int            10h

                                mov            ah,0AH                         ;Entering NAme
                                mov            dx,offset InDATA
                                int            21h
                            


  ; mov ah,2
  ; mov dx,0506h
  ; int 10h

                                mov            ah,0
                                mov            al,12h
                                int            10h

                                mov            ah,2
                                mov            dx,0519h
                                int            10h

                                mov            ah,9h
                                mov            dx,offset startChatting
                                int            21h


                                mov            ah,2
                                mov            dx,0A19h
                                int            10h

                                mov            ah,9h
                                mov            dx,offset startGame
                                int            21h

                                mov            ah,2
                                mov            dx,0F19h
                                int            10h

                                mov            ah,9h
                                mov            dx,offset endProgram
                                int            21h

  selectagain:                  
                                mov            ah,0
                                int            16h

                                CMP            AL,30h
                                JE             Start

                                cmp            al,31h
                                je             chat

                                cmp            AL,27D
                                JE             ENDEND

                                jmp            selectagain

  chat:                         
                                mov            ah,0
                                mov            al,12h
                                mov            bh,0
                                int            10h
                                mov            ah,9h
                                mov            dx,offset InDATA+2
                                int            21h



  ;======================================================================
  ; initinalize COM
  ;Set Divisor Latch Access Bit
                                mov            dx,3fbh                        ; Line Control Register
                                mov            al,10000000b                   ;Set Divisor Latch Access Bit
                                out            dx,al                          ;Out it
  ;Set LSB byte of the Baud Rate Divisor Latch register.
                                mov            dx,3f8h
                                mov            al,0ch
                                out            dx,al

  ;Set MSB byte of the Baud Rate Divisor Latch register.
                                mov            dx,3f9h
                                mov            al,00h
                                out            dx,al

  ;Set port configuration
                                mov            dx,3fbh
                                mov            al,00011011b
                                out            dx,al
  ;=======================================================================

  ;call SplitScreen
                                push           ax
                                push           dx

                                mov            ah,2
                                mov            dh, 00d
                                mov            dl, 40d
                                push           dx
                                int            10h
  Drawingloop:                  
                                pop            dx
                                mov            dl,40d
                                inc            dh
                                push           dx
                                cmp            dh, 28d
                                jae            endSplitScreen
                                int            10h
                                mov            ah,2
                                mov            dl, '|'
                                int            21h
                                jmp            Drawingloop

  endSplitScreen:               
                                pop            dx
                                pop            ax
  ;================================
                                mov            ah,2
                                mov            dh, 00d
                                mov            dl, 00d
                                int            10h

  Mainloop:                     
   
                                cmp            rows,24d
                                jnz            noscroll
                                scrollup       0101h,1826h
                                mov            rows, 17h
                                mov            cols,01h
  noscroll:                     

    
                                mov            ah,1
                                int            16h
                                jz             Readdata81
    
                                mov            dl, cols
                                mov            dh, rows
                                mov            ah,2
                                int            10h
                                inc            dl
                                cmp            dl, 40d
                                jne            skip5
                                mov            dl,0
                                inc            dh

  skip5:                        
                                cmp            dh,80
                                jne            skip7

                                mov            ah, 7                          ; http://www.ctyme.com/intr/rb-0097.htm
                                mov            al, 1                          ; number of lines to scroll
                                mov            bh, 0                          ; attribute
                                mov            ch, 0                          ; row top
                                mov            cl, 0                          ; col left
                                mov            dh, 25                         ; row bottom
                                mov            dl, 80                         ; col right
                                int            10h

  skip7:                        
                                mov            cols, dl
                                mov            rows, dh
                                mov            cl, al
                                mov            ah,0
                                int            16h

  ;     cmp AL,08h ;backspace
  ;      jnz clearletter
  ;
  ;      dec cols
  ;      pusha
  ;      MOV AH,2
  ;	     MOV BH,0
  ;      mov dl, cols
  ;      mov dh, rows
  ;      INT 10H
  ;      popa
  ;      pusha
  ;      MOV AH, 2
  ;      MOV DL,0h
  ;      INT 21H
  ;      popa
  ;   clearletter:

                                cmp            al, 13d

                                jne            skip81
                                mov            dl, cols
                                mov            dh, rows
                                mov            ah,2
                                inc            dh
                                mov            dl, 0
                                mov            cols,dl
                                mov            rows, dh
                                int            10h
  skip81:                       
     



                                cmp            al,27d
                                je             exit


    

                                mov            ah,2
                                mov            dl, al
                                int            21h

  ;Check that Transmitter Holding Register is Empty
                                mov            dx , 3FDH                      ; Line Status Register
  AGAIN81:                      
                                In             al , dx                        ;Read Line Status
                                AND            al , 00100000b
                                JZ             AGAIN81

  ;If empty put the VALUE in Transmit data register
                                mov            dx , 3F8H                      ; Transmit data register
                                mov            al,cl
                                out            dx , al

  Readdata81:                   
  ;Check that Data Ready
                                mov            dx , 3FDH                      ; Line Status Register
                            in             al , dx
                                AND            al , 1
                                JZ             MainLoop

  ;If Ready read the VALUE in Receive data register
                                PUSHA
                                cmp            rowR,24d
                                jnz            noscrollR
                                scrollup       0129h,184Eh
                                mov            rowr, 17h
                                mov            colr,29h
  noscrollR:                    
                                POPA
                                mov            dx , 03F8H
                                in             al , dx
       


                                cmp            al, 13d
                                jne            skip4
                                mov            dl, colr
                                mov            dh, rowr
                                mov            ah,2
                                inc            dh
                                mov            dl, 41
                                mov            colr,dl
                                mov            rowr, dh
                                int            10h
  skip4:                        
                                mov            VALUE , al
                                cmp            al,27d
                                jz             exit

                                mov            dl, colr
                                mov            dh, rowr
                                mov            ah,2
                                int            10h
                                inc            dl
                                cmp            dl, 80d
                                jne            skip2
                                mov            dl,41
                                inc            dh

  skip2:                        
                                mov            colr, dl
                                mov            rowr, dh
                                mov            ah, 02
                                mov            dl, value
                                int            21h
                                jmp            Mainloop


  exit:                         
                                mov            ah, 4ch
                                int            21h



  Start:                        
                                CALL           DRAWBOARD
                     
  ENDEND:                       
                                mov            ah,0
                                mov            al,12h
                                int            10h
            

MAIN ENDP
END MAIN
