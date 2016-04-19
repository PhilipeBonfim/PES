-- Pontifícia Universidade Católica do Rio de Janeiro - PUC-Rio
-- Princípios de Engenharia de Software - 2016.1
-- Trabalho 1
-- Philipe José da Silva Bonfim
--
-- CreateWordTableFromWordList.lua

function CreateWordTableFromWordList(WordListToBeUsed)
	--Inicia a leitura da tabela de palavras a ser lida e gera um arquivo contendo o comando para
	--gerar o array dessa tabela.
	local input = io.open(WordListToBeUsed, "r")
	local output = io.open(WordListToBeUsed .. ".lua", "w")
	
	--Inicio do comando a ser utilizado para gerar o array.
	local command = WordListToBeUsed .. " = {"
	
	-- Caractere das aspas, ""
	local quote = string.char(34)
	
	local first = false
	
	-- Para cada linha da tabela de palavras recebida(WordTableToBeUsed), adiciona essa palavra ao array para ser utilizada no programa.
	for line in input:lines() do
		local word = quote .. line .. quote
		
		if first == false then
			output.write(command .. word)
			first = true
		else
			output.write("," .. word)
		end
	end
	
	-- Fecha o array e termina declaração
	saida.write("}")
	
	-- Fecha os arquivos que foram abertos/criados
	io.close(input)
	io.close(output)
end
