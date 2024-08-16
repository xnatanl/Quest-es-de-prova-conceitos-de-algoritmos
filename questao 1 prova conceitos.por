programa
{
	inclua biblioteca Util --> u
	
	funcao preencherVetorManu(inteiro vetorPM[], inteiro tamanho)
	{
		para(inteiro i = 0; i<tamanho; i++)
		{
			escreva("Preencha o Índice ", i," do vetor\n")
			leia(vetorPM[i])
		}
	}
	
	funcao preencherVetorAuto(inteiro vetorPA[], inteiro tamanho)
	{
		para(inteiro i = 0; i<tamanho; i++)
		{
			vetorPA[i] = u.sorteia(0, 1000)
		}
	}

	funcao imprimirVetor(inteiro vetorI[], inteiro tamanho)
	{
		para(inteiro i = 0; i<tamanho; i++)
		{
			escreva("\nÍndice ", i, " = ", vetorI[i],"\n")
		} 
	}

	funcao imprimiMedia(inteiro vetorM[], inteiro tamanho)
	{
		real media = 0.0, somaValores = 0.0
		
		para(inteiro i = 0; i<tamanho; i++)
		{
			somaValores = somaValores + vetorM[i]
		}
		media = somaValores / tamanho
		
		escreva("A média dos valores é: ", media,"\n")
	}
	
	funcao inicio()
	{
		inteiro vetor[4], repetirMenu = 1
		cadeia menuOpt

		enquanto(repetirMenu == 1)
		{	
		
			escreva("\nMenu Principal\n")
			escreva("1- Preencher vetor manualmente\n")
			escreva("2- Preencher vetor automaticamente\n")
			escreva("3- Imprimir vetor\n")
			escreva("4- Imprimir a média dos valores\n")
			escreva("5- Encerrar\n")
			leia(menuOpt)
	
			se(menuOpt == "1"){
				preencherVetorManu(vetor, 4)
			}
			se(menuOpt == "2"){
				preencherVetorAuto(vetor, 4)	
			}
			se(menuOpt == "3"){
				imprimirVetor(vetor, 4)	
			}
			se(menuOpt == "4"){
				imprimiMedia(vetor, 4)	
			}
			se(menuOpt == "5"){
				repetirMenu = 0
			}
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 813; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */