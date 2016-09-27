//Programa elaborado por Daniel Dias de Moraes RA 178078131035
//Criado conforme diretrizes da lista de exerc¡cios #2 entrega 10-06-2015
//Materia de ALGORITIMOS Professor Francisco Brianchi
//FATEC Itu - Gestao de Tecnologia da Informacao

Program Casas_Baia;

Uses CRT;

Var

   Lin, Qtd_Clientes : Byte;

   ValTotal          : Real;
 
   Vet_Nome          : Array [1..15] Of String;

   Vet_Cidade        : Array [1..15] Of String;

   Vet_Venda         : Array [1..15] of Real;

   Status            : Array [1..15] of String;

   Vet_Valor, Vet_Desconto, Vet_Pagar   : Array [1..15] of Real;

Begin

   ClrScr;
   Gotoxy(34,02);   Writeln('Casas Baia Ltda');
   Gotoxy(18,04);   Writeln('<< Mapa Diario de Vendas - Status do Cliente >>');

// Entrada de dados:

   Gotoxy(20,06);   Writeln('Nome do Cliente ......:');
   Gotoxy(20,08);   Writeln('Cidade do Cliente ....:');
   Gotoxy(20,10);   Writeln('Valor Total da Venda .:');
   Gotoxy(03,23);   Writeln('Erro:');


   For Qtd_Clientes := 1 TO 14 Do //Repete por 15 vezes
     Begin

// Entradas e Validacao Nome:

        Repeat
          Gotoxy(43,06);   Readln(Vet_Nome[Qtd_Clientes]);
           If (Vet_Nome[Qtd_Clientes] = '') then
            Begin
             Gotoxy(08,23); Writeln ('Nome do Cliente - OBRIGATORIO');
             Gotoxy(43,06); ClrEol;
             Readln(Vet_Nome[Qtd_Clientes]);
            End;
        Until (Vet_Nome[Qtd_Clientes] <> '');

        Gotoxy(08,23); ClrEol;

// Entrada e Validacao Cidade:

        Repeat
          Gotoxy(43,08);   Readln(Vet_Cidade[Qtd_Clientes]);
           If (Vet_Cidade[Qtd_Clientes] = '') then
            Begin
             Gotoxy(08,23); Writeln ('Cidade do Cliente - OBRIGATORIO');
             Gotoxy(43,08); ClrEol;
             Readln(Vet_Cidade[Qtd_Clientes]);
            End;
        Until (Vet_Cidade[Qtd_Clientes] <> '' );

        Gotoxy(08,23); ClrEol;

// Entrada e Validacao Valor da Venda

        Repeat
          Gotoxy(43,10); Readln(Vet_Venda[Qtd_Clientes]);
           If (Vet_Venda[Qtd_Clientes] <= 0 ) then
            Begin
             Gotoxy(08,23); Writeln ('Valor nao pode ser Zero ou Negativo.');
             Gotoxy(43,10); ClrEol;
             Readln(Vet_Venda[Qtd_Clientes]);
            End;
        Until (Vet_Venda[Qtd_Clientes] > 0 );

        Gotoxy(08,23); ClrEol;

// Refresh - Limpa os campos

        Gotoxy(43,06);   ClrEol;
        Gotoxy(43,08);   ClrEol;
        Gotoxy(43,10);   ClrEol;

// Calculos

		IF (Vet_Venda[Qtd_Clientes] < 1000.99) then
		Begin
			Vet_Desconto[Qtd_Clientes] := Vet_Venda[Qtd_Clientes] * (0);
			Vet_Pagar[Qtd_Clientes]  := Vet_Venda[Qtd_Clientes] - Vet_Desconto[Qtd_Clientes];
			ValTotal:= ValTotal + Vet_Pagar[Qtd_Clientes];
			Status[Qtd_Clientes] := 'Regular';
        End
		 ELSE
			
			IF ((Vet_Venda[Qtd_Clientes] > 1001) and (Vet_Venda[Qtd_Clientes] < 3000.99)) then
				Begin
				Vet_Desconto[Qtd_Clientes] := Vet_Venda[Qtd_Clientes] * (3.5/100);
				Vet_Pagar[Qtd_Clientes] := Vet_Venda[Qtd_Clientes] - Vet_Desconto[Qtd_Clientes];
				ValTotal:= ValTotal + Vet_Pagar[Qtd_Clientes];
				Status[Qtd_Clientes] := 'Bom';
				End
			 ELSE
				
				IF ((Vet_Venda[Qtd_Clientes] > 3001) and (Vet_Venda[Qtd_Clientes] < 6000.99)) then
					Begin
					Vet_Desconto[Qtd_Clientes] := Vet_Venda[Qtd_Clientes] * (4.5/100);
					Vet_Pagar[Qtd_Clientes] := Vet_Venda[Qtd_Clientes] - Vet_Desconto[Qtd_Clientes];
					ValTotal:= ValTotal + Vet_Pagar[Qtd_Clientes];
					Status[Qtd_Clientes] := 'Especial';
				End
				
				 ELSE
					IF (Vet_Venda[Qtd_Clientes] > 6000.99) then
						Begin
						Vet_Desconto[Qtd_Clientes] := Vet_Venda[Qtd_Clientes] * (6.5/100);
						Vet_Pagar[Qtd_Clientes] := (Vet_Venda[Qtd_Clientes] - Vet_Desconto[Qtd_Clientes]);
						ValTotal:= ValTotal + Vet_Pagar[Qtd_Clientes];
						Status[Qtd_Clientes] := 'VIP'
					End;
   End;


// Saida de dados:

        ClrScr;

        Gotoxy(34,01);   Writeln('Casas Baia Ltda');
        Gotoxy(18,02);   Writeln('<< Mapa Diario de Vendas - Status do Cliente >>');
        Gotoxy(03,04);   Writeln('Nome do Cliente      Cidade         <<<<<    V A L O R E S    >>>>>  STATUS');
        Gotoxy(40,05);   Writeln('Tot.Venda  Desconto   A Pagar');
		Gotoxy(34,23);   Writeln('Valor Total Recebido...R$ ');

   Lin := 15;

   For Qtd_Clientes := 1 to 15 Do
     Begin
        Gotoxy(03,Lin);    Writeln(Vet_Nome[Qtd_Clientes]);
        Gotoxy(24,Lin);    Writeln(Vet_Cidade[Qtd_Clientes]);
        Gotoxy(40,Lin);    Writeln(Vet_Venda[Qtd_Clientes]:0:2);
        Gotoxy(51,Lin);    Writeln(Vet_Desconto[Qtd_Clientes]:0:2);
        Gotoxy(62,Lin);    Writeln(Vet_Pagar[Qtd_Clientes]:0:2);
		Gotoxy(72,Lin);    Writeln(Status[Qtd_Clientes]);
        Gotoxy(60,33) ;    Writeln(ValTotal:0:2);
        Inc(Lin);
     End;

        Gotoxy(01,24);   Writeln('<< Pressione ENTER...');   Readln;


End.


