require "Wordtable"

function GetWordIdexFromWordTable(word)
	for i = 1, table.getn(WordTable), 1 do
		if(WordTable[i] == word)
			return i;
		else
			print("Palavra não encontrada na tabela de palavras.");
		end
	end
end