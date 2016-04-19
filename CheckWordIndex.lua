-- Pontifícia Universidade Católica do Rio de Janeiro - PUC-Rio
-- Princípios de Engenharia de Software - 2016.1
-- Trabalho 1
-- Philipe José da Silva Bonfim
--
-- CheckWordIndex.lua

--Tabela com as palavras em português
require "Wordtable"

--Método que recebe uma palavra e retorna o indice caso ela seja encontrada ou uma mensagem dizendo que não foi encontrada.
function GetWordIdexFromWordTable(word)
	for i = 1, table.getn(WordTable), 1 do
		if(WordTable[i] == word)
			return i
		else
			print("Palavra não encontrada na tabela de palavras.");
		end
	end
end
