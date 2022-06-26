MODULE Module1
        PERS tooldata Marcador:=[TRUE,[[0,-0.174,150.662],[0.981957062,0.189104012,0,0]],[0.1,[0.001,0,66.262],[1,0,0,0],0,0,0]];
    TASK PERS wobjdata Tablero:=[FALSE,TRUE,"",[[186.9,-412.1,71.2],[0.683012702,-0.183012702,-0.183012702,-0.683012702]],[[0,0,0],[1,0,0,0]]];
    CONST robtarget Target_Up:=[[140,125,150],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_A1:=[[145,210,0],[0,0,1,0],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_A2:=[[265,170,0],[0,0,1,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_A3:=[[145,130,0],[0,0,1,0],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_Home:=[[636.768770631,-0.174,604.169],[0.490978531,0.094552006,0.850399762,-0.163768878],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_E1:=[[145,30,0],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_E2:=[[145,110,0],[0,0,1,0],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_E3:=[[265,110,0],[0,0,1,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_E4:=[[265,30,0],[0,0,1,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_C1:=[[90,85,0],[0,0,1,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_C2:=[[130,125,0],[0,0,1,0],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_C3:=[[90,165,0],[0,0,1,0],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_C4:=[[50,165,0],[0,0,1,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_C5:=[[10,125,0],[0,0,1,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_C6:=[[50,85,0],[0,0,1,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_LineA:=[[205,190,0],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_LineA_End:=[[205,150,0],[0,0,1,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_LineE:=[[205,110,0],[0,0,1,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_LineE_End:=[[205,40,0],[0,0,1,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: maaar
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    PROC main()
        !Add your code here
        Path_A;
        Path_E;
        Path_C;
        Path_Lines;
    ENDPROC
    PROC Path_A()
        MoveJ Target_Home,v400,fine,Marcador\WObj:=wobj0;
        MoveJ Target_Up,v400,fine,Marcador\WObj:=Tablero;
        MoveJ Target_A1,v400,fine,Marcador\WObj:=Tablero;
        MoveL Target_A2,v400,fine,Marcador\WObj:=Tablero;
        MoveL Target_A3,v400,fine,Marcador\WObj:=Tablero;
        MoveJ Target_Up,v400,fine,Marcador\WObj:=Tablero;
    ENDPROC
    PROC Path_E()
        MoveL Target_E1,v400,fine,Marcador\WObj:=Tablero;
        MoveL Target_E2,v400,fine,Marcador\WObj:=Tablero;
        MoveL Target_E3,v400,fine,Marcador\WObj:=Tablero;
        MoveL Target_E4,v400,fine,Marcador\WObj:=Tablero;
        MoveJ Target_Up,v400,fine,Marcador\WObj:=Tablero;
    ENDPROC
    PROC Path_C()
        MoveL Target_C1,v400,fine,Marcador\WObj:=Tablero;
        MoveC Target_C2,Target_C3,v400,fine,Marcador\WObj:=Tablero;
        MoveL Target_C4,v400,fine,Marcador\WObj:=Tablero;
        MoveC Target_C5,Target_C6,v400,fine,Marcador\WObj:=Tablero;
        MoveJ Target_Up,v400,fine,Marcador\WObj:=Tablero;
    ENDPROC
    PROC Path_Lines()
        MoveL Target_LineA,v400,fine,Marcador\WObj:=Tablero;
        MoveL Target_LineA_End,v400,fine,Marcador\WObj:=Tablero;
        MoveJ Target_Up,v400,fine,Marcador\WObj:=Tablero;
        MoveL Target_LineE,v400,fine,Marcador\WObj:=Tablero;
        MoveL Target_LineE_End,v400,fine,Marcador\WObj:=Tablero;
        MoveJ Target_Up,v400,fine,Marcador\WObj:=Tablero;
        MoveJ Target_Home,v400,fine,Marcador\WObj:=wobj0;
    ENDPROC
ENDMODULE