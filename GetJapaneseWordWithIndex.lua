require "JWordtable.lua"

function GetJapaneseWordWithIndex (index)
	if(JWordtable[index] != nil)
		return JWordtable[index]
	else
		print("Não foi encontrado a referência da palavra na tabela de palavras em japonês.\n")
	end
end