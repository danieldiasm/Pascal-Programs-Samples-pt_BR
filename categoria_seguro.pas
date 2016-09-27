Program Cat_seguros;
Uses CRT;

Var
   codigo_cliente : Word;
   idade_cliente  : Byte;
   grupo_risco    : Char;
   categoria      : String;


Begin


    ClrScr;

    Gotoxy(25,02);   Writeln('>> SECURITY <<');
    Gotoxy(13,04);   Writeln('<< Determinador da categoria de seguro >>');



    Begin

// Tela de Entrada

         Gotoxy(12,06);   Writeln ('Dados do segurado:');

         Gotoxy(14,08);   Writeln('C¢digo ou [0=FIM]..........:');
         Gotoxy(14,09);   Writeln('Idade [Em Anos]............:');
         Gotoxy(14,10);   Writeln('Grupo de Risco.[B, M ou A].:');
         Gotoxy(02,23);   Writeln('Erro:');



// Entrada de Dados

        Gotoxy(42,08);   Readln(codigo_cliente);


While (codigo_cliente <> 0) Do

        Begin

         Gotoxy(42,09);   Readln(idade_cliente);

         While (idade_cliente < 21) or (idade_cliente > 65) Do
            Begin
               Gotoxy(08,23);   Writeln('Somente pessoas com idade entre 21 e 65 anos podem ser seguradas.');

               Gotoxy(42,09);   ClrEol;

               Gotoxy(42,09);   Readln(idade_cliente);

               Gotoxy(08,23);   ClrEol;

            End;

         Gotoxy(42,10);   Readln(grupo_risco);
                          grupo_risco := UPCASE(grupo_risco);

         While (grupo_risco <> 'B') and (grupo_risco <> 'M') and (grupo_risco <> 'A') Do
            Begin
               Gotoxy(08,23);
               Writeln('Grupo de Risco deve ser igual a B, M ou A');


               Gotoxy(42,10);   ClrEol;
               Readln(grupo_risco);
                      grupo_risco:= UPCASE(grupo_risco);

               Gotoxy(08,23);
               ClrEol;
            End;


//condi‡Æo de 21 a 30


            If (idade_cliente < 30 ) and (grupo_risco = 'B') then
                categoria := ('Cat 1')

                Else

            If (idade_cliente < 30 ) and (grupo_risco = 'M') then
                categoria := ('Cat 2')

                Else

            If (idade_cliente < 30 ) and (grupo_risco = 'A') then
                categoria := ('Cat 3')

                Else
// condi‡Æo de 31 a 50


            If (idade_cliente < 50 ) and (grupo_risco = 'B') then
                categoria := ('Cat - 4')

                Else

            If (idade_cliente < 50 ) and (grupo_risco = 'M') then
                categoria := ('Cat - 5')

                Else

            If (idade_cliente < 50 ) and (grupo_risco = 'A') then
                categoria := ('Cat - 6')

                Else
// condi‡Æo de 51 a 65


            If (idade_cliente < 65 ) and (grupo_risco = 'B') then
                categoria := ('Cat - 7')

                Else

            If (idade_cliente < 65 ) and (grupo_risco = 'M') then
                categoria := ('Cat - 8')

                Else

            If (idade_cliente < 65 ) and (grupo_risco = 'A') then
                categoria := ('Cat - 9');


// Saida de Dados

         ClrScr;

         Gotoxy(25,03);   Writeln('>> SECURITY <<');
         Gotoxy(10,04);   Writeln('<< Determinador da categoria de seguro >>');


         Gotoxy(13,07);   Writeln('C¢digo do segurado.: ', codigo_cliente);
         Gotoxy(13,08);   Writeln('Idade..............: ',idade_cliente);
         Gotoxy(13,09);   Writeln('Grupo de Risco:....: ',grupo_risco);
         Gotoxy(13,10);   Writeln('Categoria de Seguro: ',categoria);
         Gotoxy(01,23);    Writeln('<< Pressione ENTER para continuar...');    Readln;



ClrScr;

          Gotoxy(25,02);   Writeln('>> SECURITY <<');
          Gotoxy(13,04);   Writeln('<< Determinador da categoria de seguro >>');

          Gotoxy(12,06);   Writeln ('Dados do segurado:');

         Gotoxy(14,08);   Writeln('C¢digo ou [0=FIM]..........:');
         Gotoxy(14,09);   Writeln('Idade [Em Anos]............:');
         Gotoxy(14,10);   Writeln('Grupo de Risco.[B, M ou A].:');
         Gotoxy(02,23);   Writeln('Erro:');


         Gotoxy(42,08);   Readln(codigo_cliente);

        End;


      End;
End.
