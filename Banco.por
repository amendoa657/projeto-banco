programa {
  funcao inicio() {
    inteiro opcao , operacoes=0,quantidade
    real saldo=1000.00 , valor, valorDeInvestimentos[3] = {0.0086,0.0095,0.0057}

    cadeia extrato = "" , nomesDeInvestimentos[] = {"Selic","CDB","Poupan�a"}
    cadeia opcaoSaida
    
    escreva("Seleione uma op��o: \n")
    escreva("1 -> Saldo  R$",saldo,"\n2 -> Saque \n3 -> Deposito \n4 -> Extrato\n5 -> Investir\n0 -> Sair\n \n")
    escreva("Op��o: ")
    leia(opcao)

    enquanto(opcao!=0) {

      escolha(opcao) {
        caso 1:
          escreva("--------------------------------------------\n Seu saldo � igual a R$",saldo,"\n--------------------------------------------\n")
        pare
        caso 2:
          escreva("\nDigite o valor que deseja sacar: ")
          leia(valor)

          enquanto(valor<0) {
            escreva("O valor inserido � invalido! Tente novamente: ")
            leia(valor)
          }

          enquanto(saldo-valor<0) {
            escreva("Nao � possivel sacar esse valor, o seu saldo atual � de ",saldo,"Tente novamente: ")
            leia(valor)
          }

          saldo = saldo-valor
          extrato = extrato+"Foi realizado um saque de R$"+valor+"\n"
          operacoes++
        pare
        caso 3:
          escreva("\nDigite o valor que deseja depositar: ")
          leia(valor)

          enquanto(valor<0) {
            escreva("O valor inserido � invalido! Tente novamente: ")
            leia(valor)
          }

          saldo = saldo+valor
          escreva("Seu saldo � de ",saldo," agora!\n")
          extrato = extrato+"Foi realizado um deposito de R$"+valor+"\n"
          operacoes++
        pare
        caso 4:
          se(operacoes!=0) {
            escreva("--------------------------------------------\n",extrato,"--------------------------------------------\n")
          } senao {
            escreva("Ainda nao existem opera��es\n")
          }
        pare
        caso 5:
          escreva("\nigite o valor que deseja investir: ")
          leia(valor)
          se(valor>saldo) {
            pare
          }
          escreva("\nDigite a quantidade de meses que deseja investir: ")
          leia(quantidade)

          escreva("1 - Selic\n2 - CDB\n3 - Poupan�a\nSelecione qual investimento deseja: ")
          leia(opcao)

          para(inteiro j = 0;j<quantidade;j++) {

            valor=valor + valor*valorDeInvestimentos[opcao]
          }

          escreva("Seu rendimento � igual a ",valor)
          extrato = extrato+"Foi realizado um rendimento de R$"+valor+"utilizando o(a) "+"\n"
        pare
      }
      escreva("\n\nDeseja continuar? (sim ou nao): ")
      leia(opcaoSaida)

      se(opcaoSaida=="sim") {
        escreva("\nSeleione uma op��o: \n")
        escreva("1 -> Saldo  R$",saldo,"\n2 -> Saque \n3 -> Deposito \n4 -> Extrato\n5 -> Investir\n0 -> Sair\n \n")
        escreva("Op��o: ")
        leia(opcao)
      } senao se(opcaoSaida=="nao") {
          pare
      } senao {
        enquanto(opcaoSaida!="nao" ou opcaoSaida!="sim") {
          escreva("Resposta invalida! Digite novamente: ")
          leia(opcaoSaida)
        }
      }
    }
  }
}
