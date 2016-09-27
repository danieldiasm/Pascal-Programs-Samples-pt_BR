//Programa Criado por Daniel 'Ubermensch' Dias de Moraes
//Gestao Tecnologia da Informacao - 2014

//O programa a seguir demonstra estruturas de repeticao e condicao


//Inicio do algoritimo
Program ReajustatorPRO9000;


Uses CRT;


//Variaveis, nao misture os tipos de dado para facilitar a leitura.
Var

//Pode ser representado em uma linha apenas, especificando o tipo
//de dado no final do argumento, exemplo--> dado:tipodado;

//Para a avaliacao do professor e importante o tipo de dado correto
//para o valor que vai nele, em termos praticos, para que o computador
//separe um montante de memoria correto para cada tipo de dado.
//Sem despercios de espa‡o, programas para Arduino sao bons exemplos.

nome_funcionario, descr_cargo:String;

    codigo-funcionario: Byte;nome_funcionario: String;   codigo_cargo: Byte;
    nome-funcionario: String;
    codigo-cargo: Byte;
    salario-atual: Real;
    tempo-empresa:Byte;
    p-reajuste: Real;
    vl-acrescimo: Real;
    salario-reaj: Real;
    descr-cargo: String;




Begin

    //
    Writeln('Informe o c¢digo do funcion rio[ 0 para sair] :');
    Readln(codigo-funcionario);


    While (codigo-funcionario <>  0 ) Do

        Begin

          Writeln('Nome do funcion rio:');
          Readln(nome-funcionario);


    While (nome-funcionario = ' ') Do
            Begin
               Writeln;
               Writeln('Nome do funcion rio ‚ obrigat¢rio!');
               Readln(nome-funcionario);
            End;


          Writeln('Informe o c¢digo do cargo[ 1 a 5]:');
          Readln(codigo-cargo);


    While (codigo-cargo = 0) or (codigo-cargo > 5 ) Do
            Begin
               Writeln;
               Writeln('Digite o c¢digo correto ( 1 a  5):');
            End;


          Writeln('Informe o sal rio atual:');
          Readln(salario-atual);


    While (salario-atual = 0) Do
            Begin
               Writeln;
               Writeln('Valor informado ‚ inv lido');
               Writeln;
               Readln(salario-atual);

            End;


          Writeln('Informe o tempo trabalho na empresa (em anos):');
          Readln(tempo-empresa);

    While (tempo-empresa = 0) Do
            Begin
               Writeln;
               Writeln('Tempo de empresa ‚ obrigat¢rio!');
               Writeln;
               Readln(tempo-empresa);

            End;

    If (codigo_cargo = 1) then
         p-reajuste := salario-atual * (10.8 / 100)

      Else

    If (codigo_cargo = 2) then
        p-reajuste := salario-atual * (9.6 / 100)

      Else

    If (codigo_cargo = 3) then
         p-reajuste := salario-atual * (8.7 / 100)

      Else

    If (codigo_cargo = 4) then
         p-reajuste := salario-atual * (4.2 / 100)

      Else

    If (codigo_cargo = 5) then
         p-reajuste := salario-atual * (0 / 100);


// fim da estrutura 1 - condicional por cargo


    If (tempo-empresa = 1) and ( tempo-empresa < 10 ) and (codigo-cargo = 1) then
           vl-acrescimo := salario_atual * (1.5 / 100)
        Else

    If (tempo-empresa = 1) and (tempo-empresa < 10 ) and (codigo-cargo = 2) then
           vl-acrescimo := salario-atual * (2.0 / 100)
        Else

    If (tempo-empresa = 1) and (tempo-empresa < 10 ) and (codigo-cargo = 3) then
           vl-acrescimo := salario-atual * (2.5 / 100)
        Else

// fim dos 3 If para 1 a 10 anos


    If (tempo-empresa = 10) and (tempo-empresa < 20 ) and (codigo-cargo = 1) then
           vl-acrescimo := salario-atual * (2.0 / 100)
        Else

    If (tempo-empresa = 10) and (tempo-empresa < 20 ) and (codigo-cargo = 2) then
           vl-acrescimo := salario-atual * (2.5 / 100)
        Else

    If (tempo-empresa = 10) and (tempo-empresa < 20 ) and (codigo-cargo = 3) then
           vl-acrescimo := salario-atual * (3.0 / 100)
        Else


// fim dos 3 If para 10 a 20 anos

   If (tempo-empresa > 20 ) and (codigo-cargo = 1) then
           vl-acrescimo := salario-atual * (2.5 / 100)
        Else

    If (tempo-empresa > 20 ) and (codigo-cargo = 2) then
           vl-acrescimo := salario-atual * (3.0 / 100)
        Else

    If (tempo-empresa > 20 ) and (codigo-cargo = 3) then
           vl-acrescimo := salario-atual * (3.5 / 100);


        salario-reaj := (salario-atual + p-reajuste + vl-acrescimo );


    If (codigo-cargo = 1 ) then

        descr-cargo := ('Auxiliar Administrativo');

    If (codigo-cargo = 2 ) then
        descr-cargo := ('T‚cnico de Hardware');

    If (codigo-cargo = 3 ) then
        descr-cargo := ('Encarregado');

    If (codigo-cargo = 4 ) then
        descr-cargo := ('Gerente');

    If (codigo-cargo = 5 ) then
        descr-cargo := ('Diretor');


 // mostrar tudo o que foi coletado e calculado


    ClrScr;

    Writeln ('Funcion rio ',codigo-funcionario,' - ',nome-funcionario);
    Writeln;
    Writeln ('Cargo: ',codigo-cargo, ' - ', descr-cargo);
    Writeln;
    Writeln ('Tempo na empresa: ',tempo-empresa,' anos');
    Writeln;
    Writeln ('Antigo sal rio: ',salario-atual:0:2);
    Writeln;
    Writeln ('Valor do reajuste: ',p-reajuste:0:2);
    Writeln;
    Writeln ('Valor do acr‚scimo: ',vl-acrescimo:0:2);
    Writeln;
    Writeln ('Novo Sal rio: ',salario-reaj:0:2);
    Writeln;


    Writeln (' Pressione ENTER... ');
    Readln;

    ClrScr;
    Writeln;
    Writeln('Informe c¢digo do funcion rio[ 0 para sair] :');
    Readln(codigo-funcionario);


End;
   End
