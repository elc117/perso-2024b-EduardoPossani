# IA em haskell e seus diferenciais
*Aluno: Eduardo Possani/
Curso: Engenharia de computação*

## Jogo de advinhação de numeros
Este projeto implementa um jogo de adivinhação de números em Haskell, uma linguagem funcional pura que oferece diversas vantagens no desenvolvimento de inteligência artificial (IA). O projeto foi desenvolvido como parte de um trabalho acadêmico sobre os diferenciais de Haskell no campo de IA.

# Descrição do projeto
O programa usa um algoritmo de busca binária para adivinhar o número pensado pelo usuário, com perguntas do tipo "maior", "menor" ou "igual". A lógica de adivinhação ilustra o uso de recursão e expressões condicionais em Haskell, mostrando como a linguagem facilita a implementação de IA com código simples e conciso.

# Funcionamento
1. O usuário pensa em um número entre 1 e 100.
2. O programa tenta adivinhar o número com base nas respostas do usuário.
3. Com cada resposta, o intervalo é reduzido até que o número seja encontrado.

# Executando o Projeto
Para rodar o projeto, é necessário ter o Stack instalado. Siga os passos abaixo:

1. Clone o repositório e entre no diretório do projeto:
```haskell
-- git clone <URL_DO_REPOSITORIO>
cd guessing-game
```
2. Instale as dependências e execute o projeto:

```haskell
-- stack build
stack run
```

Nota: Durante o desenvolvimento, houve dificuldades para compilar e executar o código com o Stack. A configuração do arquivo stack.yaml e as dependências podem exigir ajustes específicos para rodar corretamente em diferentes ambientes.

# Diferenciais de Haskell na IA
## 1. Linguagem Funcional Pura
Haskell é uma linguagem funcional pura, onde funções são "cidadãos de primeira classe". Isso facilita a implementação de algoritmos de IA de forma declarativa e reduz efeitos colaterais no código, tornando-o mais previsível e fácil de testar.
## Segurança e Tipagem Forte
A tipagem estática de Haskell ajuda a evitar erros comuns em IA, como inconsistências de dados e operações inválidas. O sistema de tipos robusto do Haskell verifica o código durante a compilação, melhorando a segurança e confiabilidade.
## Inferência de Tipos e Simplicidade
Com a inferência de tipos, Haskell simplifica a sintaxe, reduzindo a necessidade de anotar tipos explicitamente, o que torna o desenvolvimento de IA mais ágil e o código mais legível.
## Linguagem Declarativa e Expressiva
A abordagem declarativa de Haskell permite expressar algoritmos de IA de maneira concisa e clara, facilitando a compreensão da lógica subjacente e o uso de padrões funcionais, como recursão e composição.
## Eficiência com Lazy Evaluation
A avaliação preguiçosa (lazy evaluation) permite que Haskell otimize o uso de memória e processamento, avaliando expressões apenas quando necessário. Isso pode ser útil em algoritmos de IA que trabalham com grandes conjuntos de dados ou cálculos intensivos.
# Conclusão
Haskell oferece um ambiente seguro e eficiente para o desenvolvimento de IA. Suas características funcionais, tipagem forte e otimizações automáticas tornam-no uma opção interessante para explorar novas abordagens e modelos em inteligência artificial.
# Referencias
Chat gpt