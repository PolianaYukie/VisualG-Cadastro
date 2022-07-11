Algoritmo "BlueSky Cadastro"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/07/2022
Var
// Seção de Declarações das variáveis 
nomep: vetor[0..4] de caractere
ida: vetor[0..4] de inteiro
volta: vetor[0..4] de inteiro
saida: vetor[0..4] de caractere
destino: vetor[0..4] de caractere
op, nome: caractere
i,j,s: inteiro

procedimento inicializa()

Inicio

 enquanto op<>"3" faca

escreval("============================================================")
escreval("-----------------------Seja Bem Vindo!----------------------")
escreval("-----------------BlueSky Agencia de Viagens-----------------")
escreval("============================================================")
escreval("-----------------------Menu Principal-----------------------")
escreval("============================================================")
escreval("(1)Cadastro Cliente")
escreval("(2)buscar cliente")
escreval("(3)sair")
escreva("opção:")
leia(op)

se op="1" entao
  limpatela
  se s=10 entao
  escreval("limite de cadastro atingido")
  senao
   cadastro_cliente()
  fimse
  fimse
  
  se op="2" entao
  limpatela
  buscar_cliente()
  fimse
  
  se op="3" entao
  para i de 0 ate 4 faca
  nomep[i]<-"x"
  fimpara
  limpatela
  escreval("Obrigada, volte Sempre")
  fimse
  fimenquanto
fimprocedimento
  
  procedimento cadastro_cliente()
  inicio
  para i de 0 ate 4 faca
  se (nomep[i]="") entao
  escreval("Nome Completo: ")
  leia(nomep[i])
  escreva("Local de Saída: " )
  leia(saida[i])
  escreval ("Data de Ida (DDMMAAAA): ")
  leia(ida[i])
  escreva("Local de Destino: ")
  leia(destino[i])
  escreval ("Data de volta(DDMMAAAA): ")
  leia(volta[i])
     escreval("Cliente Cadastrado com Sucesso!")
  voltar_menu()
   s<-s+1
     limpatela
     fimse
     fimpara
   escreval("Limite de Passagens Atingido")
fimprocedimento

 procedimento voltar_menu()
  inicio
  escreva("voltar para o menu (S/N)")
  leia(op)
  se op="s" entao
  i<-i+1
  limpatela
  inicializa()
  senao
  limpatela
  cadastro_cliente
  fimse
 fimprocedimento

  procedimento buscar_cliente()
  inicio
  j<-0
  escreva("Digite seu Primeiro Nome: ")
  leia(nome)
  para i de 0 ate 4 faca
  se nome=nomep[i] entao
  escreval("Nome:",nomep[i])
  escreval("Cidade de origem:",saida[i])
  escreval("Local de Destino:",destino[i])
  j<-j+1
  fimse
  fimpara
  se j=0 entao
  escreval("Cliente Inexistente")
  fimse
  voltar_menus()
  limpatela
  fimprocedimento
  
  procedimento voltar_menus()

  inicio
  escreva("Voltar para o menu (S/N)")
  leia(op)
  se op="s" entao
  limpatela
  senao
  limpatela
  buscar_cliente()
  fimse
  fimprocedimento

  inicio
  inicializa()
  
    Fimalgoritmo
