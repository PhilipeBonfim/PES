-- Pontifícia Universidade Católica do Rio de Janeiro - PUC-Rio
-- Princípios de Engenharia de Software - 2016.1
-- Trabalho 1
-- Philipe José da Silva Bonfim
--
-- main.lua

require "CheckWordIndex"
require "CreateWordTableFromWordList"

function main()

	createWordTableFromWordList(WordList)
	createWordTableFromWordList(JWordList)

	print("Bem vindo ao tradutor de portugues para japonês.\n")
	print("Insira uma palavra que deseja em português, para saber como se fala em japonês.\n")
	print("Para terminar o Programa basta escrever a palavra exit.São válidas palavras com acento e - .\n")
	
	while true do 
		local inputWord = io.read()
		if(inputWord == "exit") then 
			os.exit() 
		end
	
		local index = CheckWordIndex(inputWord)
	
		print("A palavra " .. WordList[index] .. " se pronûncia " .. JWordList[index] .. " em japonês")
	end
end

main()
