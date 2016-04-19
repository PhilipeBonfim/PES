-- Pontifícia Universidade Católica do Rio de Janeiro - PUC-Rio
-- Princípios de Engenharia de Software - 2016.1
-- Trabalho 1
-- Philipe José da Silva Bonfim
--
-- main.lua

require "CheckWordIndex"
require "CreateWordTableFromWordList"

function main()

-- Criação das listas das palavras a serem usadas.
	createWordTableFromWordList(WordTable)
	createWordTableFromWordList(JWordTable)

-- Mensagens explicando sobre o programa e como funciona.
	print("Bem vindo ao tradutor de portugues para japonês.\n")
	print("Insira uma palavra que deseja em português, para saber como se fala em japonês.\n")
	print("Para terminar o Programa basta escrever a palavra exit.São válidas palavras com acento e - .\n")
	
-- Loop do programa para poder continuar usando, ele é terminado ao inserir a palavra "exit".	
	while true do 
		local inputWord = io.read()
		if(inputWord == "exit") then 
			os.exit() 
		end
	
		local index = CheckWordIndex(inputWord)
		
-- Mensagem com a palavra escrita pelo usuário e a sua tradução em japonês.	
		print("A palavra " .. WordList[index] .. " se pronûncia " .. JWordList[index] .. " em japonês\n")
	end
end

main()
