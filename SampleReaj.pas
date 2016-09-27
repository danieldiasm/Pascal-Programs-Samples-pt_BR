//Programa criado por Ubermensch (DanielDiasM)
//daniel_diasm@hotmail.com

//Gestao da Tecnologia da Informacao, FATEC Itu SP - 2014
//Materia de Algoritimos - Prof. Bianchi

//O programa a seguir deve demonstrar o uso de CONDICAO e REPETICAO
//Utilizado o tema da sala de aula, porem comentado.

//      ----------========== LEMBRE-SE ========------------

// 1- SEMPRE RABISQUE UMA LOGICA NO PAPEL ANTES, MESMO SENDO PORCA!
// 2- FA€A UMA COLA COM O NOME DAS VARIAVEIS PARA ECONOMIZAR TEMPO.
// 3- Seque o programa, sem esculhambacao em nome de variavel.
// 4- Menos maiusculo, menos tempo jogado fora.
// 5- Reescreva este programa, so assim voce vai assimilar...


Program AjusteSalar;

Uses CRT;

//Sempre configure as variaveis de maneira limpa e organizada.

Var

//Repare que as variaveis de um tipo de dado podem ir todas em uma linha so.
NomeFun,CargoFun:String;

//Ou se for melhor para vc visualizar, faca em linhas separadas, organizado.
//Se necessario, de espacos para alinhar e identar, isso vale nota!

//Byte
CodCargo:Byte;

//Real
SalAtual:Real;
CodFun  :Real;
SalReaj :Real;
PorcReaj:Real;

//NAO FACA ISSO
Tempo:Byte;ValAcresc:Real;

Begin

ClrScr;

        //A estrutura de repeticao se da basicamente por:

        //SE (Condicao = valor) FACA
          //COMECAR
            //Script
          //FIM

       //Pode haver While dentro de While, If dentro de While
       //so lembre de identar para nao se perder dentro deles.




        //Passo 1 - Coletar codigo do funcionario ou sair

        Writeln ('Informe o CODIGO do funcionario [0 para SAIR].');
        Readln(CodFun);

        While   ( CodFun <> 0 ) do

                Begin
                ClrScr;

        //Passo 2 - Coletar nome do funcionario

                Writeln('Informe o NOME do funcionario.');
                Readln(NomeFun);

                     //While para informar o nome corretamente

                     //VEJA COM ATENCAO

                     //Enquanto (Testa Condicao) Faca
                     While (NomeFun = '') or (NomeFun = ' ') do

                     //Comeca
                       //Script
                     //Termina

                     Begin
                           ClrScr;
                           Writeln;
                           Writeln('NOME do funcionario e obrigatorio!');
                           Readln (NomeFun);
                     End;

        //Passo 3 - Coletar o cargo do funcionario

                ClrScr;

                Writeln ('Informe o codigo do CARGO [1 a 5].');
                Writeln ;
                Writeln ('1............Administrativo');
                Writeln ('2............Manufatura');
                Writeln ('3............Transporte');
                Writeln ('4............Manutencao');
                Writeln ('5............Provisao');
                Writeln;
                Readln(CodCargo);

                     //While para informar codigo correto
                     While (CodCargo = 0) or (CodCargo > 5) do
                        Begin
                           ClrScr;

                           Writeln('Digite o codigo corretamente [1 a 5]');
                           Writeln ('1............Administrativo');
                           Writeln ('2............Manufatura');
                           Writeln ('3............Transporte');
                           Writeln ('4............Manutencao');
                           Writeln ('5............Provisao');
                           Writeln;
                           Readln(CodCargo);
                        End;

        //Passo 4 - Obter salario atual
                ClrScr;

                Writeln('Informe o valor do salario atual.');
                Readln(SalAtual);

                    //While para salario zerado ou valor muito baixo
                    While (SalAtual < 100) or (SalAtual = 0) do
                        Begin
                           ClrScr;
                           Writeln('Informe o valor salarial corretamente.');
                           Readln(SalAtual);
                        End;

        //Passo 5 - Obter o tempo de casa do funcionario
                ClrScr;

                Writeln('Informe o tempo de registro em anos.');
                Readln(Tempo);

                    //While para evitar valor zerado
                    While (Tempo = 0) do
                      Begin
                      ClrScr;
                      Writeln ('Funcionarios com o tempo inferior a um ano');
                      Writeln ('nao estao inclusos no programa');
                      Writeln;
                      Writeln ('Informe o tempo de registro [Ou 0 para SAIR]');
                      Readln(Tempo);
                       //If criado para desistir do calculo ao deparar com a mensagem
                       If (Tempo = 0) then
                       Exit;

                      End;
//Aqui acabam as estruturas de repeticao-------------------------------------

                ClrScr;
                Writeln('Pressione ENTER para terminar...');
                Readln;
                Exit;

                End;




End.

