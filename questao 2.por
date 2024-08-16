programa
{
	funcao cadeia mulherMaiorSalario(cadeia nome[], real salario[],inteiro genero[], inteiro tamanho) // nome da mulher com maior salario
	{
		inteiro indMaior = 0
		para(inteiro i = 0; i < tamanho; i++)
		{
			se(genero[i] == 2)
			{
				se(salario[i] > salario[0])
				{
					indMaior = i	
				}	
			}
		}
		retorne nome[indMaior]
	}
	funcao diferencaIdade(cadeia nome[], inteiro idade[], inteiro genero[], inteiro tamanho, inteiro &diferenca) // homem mais novo e mulher mais velha
	{
		inteiro hMaisNovo = 1000, mMaisVelha = 0, temp = 0, temp2 = 0
		para(inteiro i = 0; i < tamanho; i++)
		{
			se(genero[i] == 1)
			{
				se(idade[i] < hMaisNovo)
				{
					hMaisNovo = idade[i]
					temp = i
				}
			}
			se(genero[i] == 2)
			{
				se(idade[i] > mMaisVelha)
				{
					mMaisVelha = idade[i]
					temp2 = i
				}			
			}
		}	
		diferenca = idade[temp2] - idade[temp]	
	}
	funcao indiceMaiorSalario(real salario[], inteiro tamanho, inteiro &indMenorSalario, inteiro &indMaiorSalario) // indice onde ta o maior salario
	{
		real menorSalario = salario[0], maiorSalario = salario[0]
		para(inteiro i = 0; i < tamanho; i++)
		{
			se(salario[i] < menorSalario)
			{
				menorSalario = salario[i]
				indMenorSalario = i
			}
			se(salario[i] > maiorSalario)
			{
				maiorSalario = salario[i]
				indMaiorSalario = i
			}
		}	
	}
	funcao inicio()
	{
		cadeia nome[5]
		inteiro idade[5], genero[5], menorSalario = 0, maiorSalario = 0, diferenca = 0
		real salario[5]
		para(inteiro i = 0; i < 5; i++)
		{
			escreva("Informe:\n")
			escreva("Nome\n")
			leia(nome[i])
			escreva(nome[i], ", qual sua idade?\n")
			leia(idade[i])
			escreva(nome[i], ", qual seu gênero?\n1- Masculino\n2- Feminino\n")
			leia(genero[i])
			escreva(nome[i], ", qual seu salário?\n")
			leia(salario[i])
			escreva("\n")
		}
		mulherMaiorSalario(nome, salario, genero, 5)
		diferencaIdade(nome, idade, genero, 5, diferenca)
		indiceMaiorSalario(salario, 5, menorSalario, maiorSalario)

		escreva("Nome da mulher com maior salário é: ", mulherMaiorSalario(nome, salario, genero, 5), "\n")
		escreva("A diferença de idades entre o homem mais novo e a mulher mais velha é :", diferenca, "\n")
		escreva("O índice onde se encontra o menor salário é ", menorSalario, " e maior salario é: ", maiorSalario)	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 279; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */