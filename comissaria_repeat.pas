// Exercicio da Aula 06 - 11/09/2013

{ Este programa auxilia uma empresa de Recrutamento e Selecao, a selecionar
  Comissarias de bordo.
  Os criterios para a selecao sao:

  a) Ser do Sexo Feminino (F)
  b) Ter Altura superior a 1.70 metros
  c) Ter Peso menor que 60 Kg.
  d) Possuir Curso Superior, ou caso nao possua ter
     Proficiencia em 3 ou mais Idiomas.

  Se a candidata for selecionada sera mostrada a mensagem:
    "Voce foi selecionada para entrevista.", caso contrario sera mostrada a mensagem:
     "Voce, nao atendeu todos os requisitos, Obrigado pela participacao."

  Cada candidato tem um Ficha de Selecao Numerada.

  O programa deve ser encerrado quando o Numero da Ficha de Selecao de
  candidato for Igual a Zero (isto ?, nao tem mais fichas para processar)
}

Program Seleciona_Comissarias_de_Bordo;
Uses CRT;

Var
    Sexo_Cand, CursoSup_Cand : Char;
    Altura_Cand, Peso_Cand : Real;
    Idiomas_Cand : Byte;
    Num_Ficha : Word;
    Atende_Criterios : Boolean;

Begin
    ClrScr;
    Writeln;
    Writeln('AEROAZULAO   -  << Processo Seletivo de Comissarias de Bordo >>');
    Writeln;


    Writeln('Informe Numero da Ficha da Candidata [0=FIM]');
    Readln(Num_Ficha);



    Writeln ('Sexo [F ou M]:');
    Readln (Sexo_Cand);
    Sexo_Cand := UPCASE (Sexo_Cand);

    IF (Sexo_Cand <> 'F') and (Sexo_Cand <> 'M') then
        Begin
                Writeln;
                Writeln ('Digite o sexo corretamente.');
                Writeln;
        End;

        Until (Sexo_Cand = 'F') or (Sexo_Cand = 'M');


    Repeat

    Writeln ('Informe a altura:');
    Readln (Altura_Cand);

    IF (Altura_Cand <= 0) then
        Begin
        Writeln;
        Writeln ('Altura deve ser maior que zero.');
        End;


    Until (Altura_Cand > 0);


          Writeln('Peso (em Kg):');
          Readln(Peso_Cand);



    Repeat

    Writeln('Curso Superior [S ou N]:');
    Readln(CursoSup_Cand);
    CursoSup_Cand := UPCASE(CursoSup_Cand);

    IF (CursoSup_Cand <> 'S') and (CursoSup_Cand <> 'N') then
        Begin
        Writeln;
        Writeln ('Digite S ou N.');
        End;

    Until (CursoSup_Cand = 'S') or (CursoSup_Cand = 'N');


    Writeln('Tem proficiencia em quantos Idiomas?');
          Readln(Idiomas_Cand);
          Writeln;

          Atende_Criterios := (Sexo_Cand   = 'F') and
                              (Altura_Cand > 1.70) and
                              (Peso_Cand   < 60) and
                              ((CursoSup_Cand = 'S') or (Idiomas_Cand > 2 ));

          ClrScr;
          Writeln('Resultado da Selecao:');

          IF Atende_Criterios then
             Writeln('Candidata No.: ',Num_Ficha,' - Voce foi selecionada para entrevista.')
          else
             Writeln('Candidata No.: ',Num_Ficha,' - Voce nao atendeu os requisitos da vaga, obrigado pela participacao.');

          Writeln;    Writeln('<< Pressione ENTER...');    Readln;

          ClrScr;
          Writeln;
          Writeln('AEROAZULAO   -  << Processo Seletivo de Comissarias de Bordo >>');
          Writeln;
          Writeln('Informe Numero da Ficha da Candidata [0=FIM]');
          Readln(Num_Ficha);



End.




