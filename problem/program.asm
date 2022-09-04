// Samuel Hernández Gómez
// 000418876
// samuel.hernandezg@upb.edu.co

(INICIO)
            @16384
            D=A
            @PInicio//Tenemos un inicio para los contadores
            M=D
            @24576
            D=A
            @PFinal//Tenemos un final para los contadores
            M=D

            @PInicio
            D=M
            @InicioClear //Iniciamos los pixel de contadores para clear
            M=D

            @PFinal
            D=M
            @FinalClear//Finalizamos los pixeles contadores para clear
            M=D
            //Aquí empiezan las cosas del keyboard
        @84
        D=A
        @T
        M=D
        @67
        D=A
        @C
        M=D
        @KBD //keyboard
        D=M
        //Clear
        @C
        D=D-M
        @CLEAR
        D;JEQ
        //Pintar
        @KBD //keyboard
        D=M
        @T
        D=D-M
        @FILL
        D;JEQ
        @INICIO
        0;JMP



//

(CLEAR) 

        @InicioClear
        A=M
        M=0
        @InicioClear
        M=M+1
        //comprobar clear
        @FinalClear
        D=M
        @InicioClear
        D=D-M
        @CLEAR
        D;JGT
        //El clear está bueno
        @INICIO
        0;JMP


(FILL)
        @InicioClear
        A=M
        M=-1
        @InicioClear
        M=M+1
        //comprobar clear
        @FinalClear
        D=M
        @InicioClear
        D=D-M
        @FILL
        D;JGT
        //El fill está bueno
        @INICIO
        0;JMP

(END)
        @END
        0;JMP
        




