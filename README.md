# PES

PUC-Rio - Princípios de Engenharia de Software
Trabalho 1 - 2016.1
Philipe josé da Silva Bonfim

#Tradutor - Português para Japonês

##Resumo
Um programa que indica, com caracteres da propria lingua portuguesa, como se fala uma palavra em japonês dado uma palavra em português.

##Arquivos
- CheckWordIndex.lua
- CreateWordTableFromWordList.lua
- WordTable
- JWordTable
- README.md
- main.lua

##Como Funciona
1. O programa inicia informando ao usuário como utiliza-lo, para fornecer uma palavra em português.
2. Ao receber uma palavra fornecida pelo usuário em português, ele faz uma busca na tabela de palavras cadastradas e pega o indice, caso nao seja encontrada, ele informa exibindo uma mensagem ao usuário.
3. Com esse indice, ele checa na tabela de traduções qual a tradução da palavra e exibe ao usuário junto com a palavra fornecida por ele.
4. Caso o usuário deseje continuar basta digitar uma nova palavra, e para terminar a execução do programa, basta digitar a palavra exit.
