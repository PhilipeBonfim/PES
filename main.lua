
function main()

	createWordTableFromWordList(WordList)
	createWordTableFromWordList(JWordList)

	print("Bem vindo ao tradutor de portugues para japonês.\n")
	print("Insira uma palavra que deseja saber a tradução em japones")
	local inputWord = io.read()
	
	local index = CheckWordIndex(inputWord)
	