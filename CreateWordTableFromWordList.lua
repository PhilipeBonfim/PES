-- Pontifícia Universidade Católica do Rio de Janeiro - PUC-Rio
-- Princípios de Engenharia de Software - 2016.1
-- Trabalho 1
-- Philipe José da Silva Bonfim
--
-- CreateWordTableFromWordList.lua

function CreateWordTableFromWordList(WordListToBeUsed)
	--Inicia a leitura da tabela de palavras e gera um arquivo contendo o comando para gerar as tabelas.
	local input = io.open(WordListToBeUsed, "r")
	local output = io.open(WordListToBeUsed .. ".lua", "w")

	--Inicio do comando a ser utilizado para gerar o array.
	local command = WordListToBeUsed .. " = {"

	-- Caractere das aspas, ""
	local quote = string.char(34)

	local first = true

	-- Para cada linha da tabela de palavras recebida(WordTableToBeUsed), adiciona essa palavra ao array para ser utilizada no programa.
	for line in input:lines() do
		local word = quote .. line .. quote

		if first == true then
			output:write(command .. word)
			first = false
		else
			output:write("," .. word)
		end
	end

	-- Fecha o array e termina declaração
	output:write("}")

	-- Fecha os arquivos que foram abertos/criados
	io.close(input)
	io.close(output)
end
