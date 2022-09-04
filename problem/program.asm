// Samuel Hernández Gómez
// 000418876
// samuel.hernandezg@upb.edu.co

(INICIO)
            @16400 //16384 
            D=A
            @PInicio//Tenemos un inicio para los contadores vertical
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
// Inicialización datos verticales finaliza
// Inicialización datos horizontales inicia


            @20480
            D=A
            @InicioClearH //Iniciamos los pixel de contadores para clear
            M=D

            @20512
            D=A
            @FinalClearH//Finalizamos los pixeles contadores para clear
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
        @FILLV
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


(FILLV)
        @512 //valor a pintar
        D=A
        @InicioClear
        A=M
        M=D
        @32 //SALTO
        D=A //SALTO
        @InicioClear
        M=M+D //salto 512
        //comprobar clear
        @FinalClear
        D=M
        @InicioClear
        D=D-M
        @FILL
        D;JGT
        //El fill está bueno
        @FILLH
        0;JMP


(FILLH)
        @512 //valor a pintar
        D=A
        @InicioClearH
        A=M
        M=-1
        @InicioClearH
        M=M+1 //salto 512
        //comprobar clear
        @FinalClearH
        D=M
        @InicioClearH
        D=D-M
        @FILLH
        D;JGT
        //El fill está bueno
        @INICIO
        0;JMP


(END)
        @END
        0;JMP
        


    




