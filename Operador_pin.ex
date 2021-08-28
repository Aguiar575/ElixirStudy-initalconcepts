# = em elixir nao eh um operador de associacao
# eh um match operator, que faz parte do recurso de
# pattern matching
# ^ operator pina o valor na variavel, permitindo uma
# comparacao, se o valor for diferente do valor na variavel pinnada
# a variavel nao recebe associacao

x = 1
x = 4
# ocorre sem erros durante a execucao
^x = 5
# ocorre um erro durante a execucao

# exemplo palpavel
# se a variavel a der match com o primeiro numero da tupla
# a varievel b recebe o segundo numero da tupla
a = 1
{^a, b} = {1, 2}
#pass

{^a, b} = {2, 4}
#error



