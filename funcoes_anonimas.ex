# funcoes anonimas nao possuem nome.
# sao passadas para outras funcoes
# funcoes anonimas sao definidas como:
# fn() -> end

sum = fn(a, b) -> a + b end

# chamando a funcao
sum.(2, 3)

# taquigafria para funcoes anonimas
sum = &(&1 + &2)
