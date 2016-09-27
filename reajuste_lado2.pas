
Program Reajuste_Salarial;


Uses CRT;

Var
    codigo_funcionario: Byte;
    nome_funcionario: String;
    codigo_cargo: Byte;
    salario_atual: Real;
    tempo_empresa:Byte;
    p_reajuste: Real;
    vl_acrescimo: Real;
    salario_reaj: Real;
    continua: Char;




Begin


    Writeln('Informe o c¢digo do funcion rio[ 0 para sair] :');
    Readln(codigo_funcionario);


    While (codigo_funcionario <>  0 ) Do

        Begin

          Writeln('Nome do funcion rio:');
          Readln(nome_funcionario);


          While (nome_funcionario = ' ') Do
            Begin
               Writeln;
               Writeln('Nome do funcion rio ‚ obrigat¢rio!');
               Readln(nome_funcionario);
            End;


          Writeln('Informe o c¢digo do cargo[ 1 a 5]:');
          Readln(codigo_cargo);


          While (codigo_cargo = 0) or (codigo_cargo > 5 ) Do
            Begin
               Writeln;
               Writeln('Digite o c¢digo correto ( 1 a  5):');
            End;


          Writeln('Informe o sal rio atual:');
          Readln(salario_atual);


          While (salario_atual = 0) Do
            Begin
               Writeln;
               Writeln('Valor informado ‚ inv lido');
               Writeln;
               Readln(salario_atual);

            End;


          Writeln('Informe o tempo trabalho na empresa (em anos):');
          Readln(tempo_empresa);

          While (tempo_empresa = 0) Do
            Begin
               Writeln;
               Writeln('Tempo de empresa ‚ obrigat¢rio!');
               Writeln;
               Readln(tempo_empresa);

            End;

    If (codigo_cargo = 1) then
         p_reajuste := salario_atual * (10.8 / 100)

      Else

    If (codigo_cargo = 2) then
        p_reajuste := salario_atual * (9.6 / 100)

      Else

    If (codigo_cargo = 3) then
         p_reajuste := salario_atual * (8.7 / 100)

      Else

    If (codigo_cargo = 4) then
         p_reajuste := salario_atual * (4.2 / 100)

      Else

    If (codigo_cargo = 5) then
         p_reajuste := salario_atual * (0 / 100);


// fim da estrutura 1 - condicional por cargo


    If ( tempo_empresa < 10 ) and (codigo_cargo = 1) then
           vl_acrescimo := salario_atual * (1.5 / 100)
        Else

    If (tempo_empresa < 10 ) and (codigo_cargo = 2) then
           vl_acrescimo := salario_atual * (2.0 / 100)
        Else

    If (tempo_empresa < 10 ) and (codigo_cargo = 3) then
           vl_acrescimo := salario_atual * (2.5 / 100)
        Else

// fim dos 3 If para 1 a 10 anos


    If (tempo_empresa = 10)  or (tempo_empresa < 20 ) and (codigo_cargo = 1) then
           vl_acrescimo := salario_atual * (2.0 / 100)
        Else

    If (tempo_empresa = 10)  or (tempo_empresa < 20 ) and (codigo_cargo = 2) then
           vl_acrescimo := salario_atual * (2.5 / 100)
        Else

    If (tempo_empresa = 10)  or (tempo_empresa < 20 ) and (codigo_cargo = 3) then
           vl_acrescimo := salario_atual * (3.0 / 100)
        Else


// fim dos 3 If para 10 a 20 anos

   If (tempo_empresa > 20 ) and (codigo_cargo = 1) then
           vl_acrescimo := salario_atual * (2.5 / 100)
        Else

    If (tempo_empresa > 20 ) and (codigo_cargo = 2) then
           vl_acrescimo := salario_atual * (3.0 / 100)
        Else

    If (tempo_empresa > 20 ) and (codigo_cargo = 3) then
           vl_acrescimo := salario_atual * (3.5 / 100)
        Else


        salario_reaj := (salario_atual + p_reajuste + vl_acrescimo );

 // mostrar tudo o que foi coletado e calculado


    ClrScr;

    Writeln ('Funcion rio',codigo_funcionario,' - ',nome_funcionario);
    Writeln;
    Writeln ('Cargo:',codigo_cargo);
    Writeln;
    Writeln ('Tempo na empresa:',tempo_empresa,' anos');
    Writeln;
    Writeln ('Antigo sal rio:',salario_atual:0:2);
    Writeln;
    Writeln ('Valor do reajuste:',p_reajuste:0:2);
    Writeln;
    Writeln ('Valor do acr‚scimo:',vl_acrescimo:0:2);
    Writeln;
    Writeln ('Novo Sal rio:',salario_reaj:0:2);
    Writeln;


    Writeln (' Pressione ENTER... ');
    Readln;

    ClrScr;
    Writeln;
    Writeln('Informe c¢digo do funcion rio[ 0 para sair] :');
    Readln(codigo_funcionario);


End;







 End.





