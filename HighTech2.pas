//Programa elaborado por Daniel Dias de Moraes RA 178078131015
//Criado conforme diretrizes da lista de exerc¡cios #1 entrega 29-04-2015
//Materia de ALGORITIMOS Professor Francisco Brianchi
//FATEC Itu - Gestao de Tecnologia da Informacao

Program Reajuste_HighTech;

Uses CRT;

Var
   cod, codFun  : Word;
   nome, cargo  : String;
   tempoEmpresa : Byte;
   salAtual, valReaj, valAcres, salReaj : Real;

Begin
    //Splash Screen e inicio da entrada de dados
    ClrScr;
    Writeln;
    Writeln('    High Tech Informatica');
    Writeln('Calculadora de reajuste salarial');
    Writeln;
    Writeln;
    Writeln('Informe o codigo de funcionario [0 para SAIR]:');
    Readln(codFun);

    //Teste 0 para sair ANTES do WHILE.
        While (codFun <> 0) Do
          Begin

              //Recebe NOME do funcionario
              Writeln;
              Writeln('Informe o nome do funcionario:');
              Readln(nome);
                //Testa e recusa se o nome for vazio ou espaco
                While (nome = '') and (nome = ' ') Do
                   Begin
                     Writeln('Nome e necessario, informe corretamente.');
                     Readln(nome);
                   End;

              //Recebe o cargo do funcionario
              Writeln;
              Writeln('-------------------------------');
              Writeln('Tabela de cargos de funcionario');
              Writeln('Assistente Financeiro..........1');
              Writeln('Tecnico de Hardware............2');
              Writeln('Encarregado....................3');
              Writeln('Gerente........................4');
              Writeln('Diretor........................5');
              Writeln;
              Writeln('Informe o codigo de cargo:');
              Readln(cod);
                  //Testa se cargo recebeu uma entrada valida
                  While (cod < 0) or (cod > 5) do
                    Begin
                      Writeln('Informe o codigo corretamente.');
                      Readln(cod);
                    End;

              //Recebe o tempo empregado na empresa
              Writeln;
	      Writeln('Informe o tempo empregado na empresa em anos:');
              Readln(tempoEmpresa);
                //Testa e recusa se o tempo for igual ou inferior a 0
                While (tempoEmpresa <= 0) Do
                   Begin
                     Writeln('O tempo empregado deve ser superior a 0.');
                     Readln(tempoEmpresa);
                   End;

              //Recebe o valor do salario do funcionario
              Writeln;
              Writeln('Informe o salario atual:');
              Readln(salAtual);
                //Testa e recusa se o salario for menor ou igual 0
                While (salAtual <= 0) Do
                   Begin
                     Writeln('O salario atual deve ser maior que zero.');
                     Readln(salAtual);
                   End;

              //Define cargo e faz calculo conforme cargo e tempo
              If (cod = 1) then
                Begin
                  valReaj := (salAtual * (8.4 / 100));
                  cargo := ('Assistente Financeiro')
                End

              Else

 	      If (cod = 2) then
                Begin
                  valReaj := (salAtual * (7.6 / 100));
                  cargo := ('Tecnico de Hardware')
                End

              Else

 	      If (cod = 3) then
                Begin
                  valReaj := (salAtual * (6.5 / 100));
	          cargo := ('Encarregado')
                End

              Else


 	      If (cod = 4) then
                Begin
                  valReaj := (salAtual * (4.6 / 100));
	          cargo := ('Gerente')
                End

              Else

 	      If (cod = 5) then
                Begin
                  valReaj := (salAtual * (0 / 100));
	          cargo := ('Diretor')
                End;

// calculo de acrescimos de 1 a 10 anos para funcionario de 1 a 3

              If (tempoEmpresa >= 1) and ( tempoEmpresa <= 10 ) then
                Begin
                  If (cod = 1) then
                    valAcres := (salAtual * (1.0 / 100))
                  Else

                  If (cod = 2) then
                    valAcres := salAtual * (1.5 / 100)
                  Else

                  If (cod = 3) then
                    valAcres := salAtual * (2.0 / 100);
                  End
              Else

// calculo do bonus de 10 a 20 anos


                If (tempoEmpresa > 10) and ( tempoEmpresa <= 20 ) then
                  Begin

                    If (cod = 1) then
                      valAcres := salAtual * (2.0 / 100)
                    Else


                    If (cod = 2) then
                      valAcres := salAtual * (2.5 / 100)
                    Else


                    If (cod = 3) then
                      valAcres := salAtual * (3.0 / 100)
                  End
                Else


// calculo do bonus de > 20 anos


                If (tempoEmpresa > 20)then
                  Begin

                    If (cod = 1) then
                      valAcres := salAtual * (3.0 / 100)
                    Else

                    If (cod = 2) then
                      valAcres := salAtual * (3.5 / 100)
                    Else

                    If (cod = 3) then
                      valAcres := salAtual * (4.0 / 100);
                  End;

                 salReaj := (salAtual + valReaj + valAcres);


// Mostrar tudo o que foi coletado e calculado


    ClrScr;

    Writeln;
    Writeln ('Funcionario: ',nome,' - ',codFun);
    Writeln;
    Writeln ('Cargo:',cargo,' - Codigo:',cod);
    Writeln ('--------------------------');
    Writeln;
    Writeln;
    Writeln ('Tempo na empresa: ',tempoEmpresa,' anos');
    Writeln;
    Writeln ('Antigo salario:..........R$',salAtual:0:2);
    Writeln;
    Writeln ('Valor do reajuste:.......R$',valReaj:0:2);
    Writeln;
    Writeln ('Valor do acrescimo:......R$',valAcres:0:2);
    Writeln;
    Writeln ('__________________________________________');
    Writeln;
    Writeln ('Novo Salario: R$.........R$',salReaj:0:2);
    Writeln;
    Writeln;
    Writeln ('          <<  Pressione ENTER...  >> ');
    Readln;
    valReaj := 0;
    valAcres := 0;

    ClrScr;

    Writeln;
    Writeln('    High Tech Informatica');
    Writeln('Calculadora de reajuste salarial');
    Writeln;
    Writeln('Informe o codigo de funcionario [0 para SAIR]:');
    //Recebe o codigo do funcionario novamente ou 0 finaliza
    Readln(codFun);

   End;

End.




























