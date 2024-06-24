#language: pt

Funcionalidade: Remoção de texto após símbolos

  Cenário: Remover texto após símbolo presente na string
    Dado que a string de entrada é "bananas, tomates # e ventiladores"
    E os símbolos a serem considerados são "#, !"
    Então a saída esperada é "bananas, tomates"

  Cenário: Remover texto após símbolo ausente na string
    Dado que a string de entrada é "o rato roeu a roupa $ do rei % de roma"
    E os símbolos a serem considerados são "%, !"
    Então a saída esperada é "o rato roeu a roupa $ do rei"

  Cenário: Remover texto após múltiplos símbolos na string
    Dado que a string de entrada é "the quick brown fox & jumped over * the lazy dog"
    E os símbolos a serem considerados são "&, *, %, !"
    Então a saída esperada é "the quick brown fox"
