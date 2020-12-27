/* funções básicas em cima de string */

// Retorna uma letra do texto
const texto = 'Texto de Exemplo'
console.log(texto[0])
console.log(texto[texto.length -1])

console.log() // \n

// Retorna o tamanho de uma string
const textSize = 'Texto de Exemplo'.length
console.log(textSize)

console.log() // \n

// Retorna um array quebrando a string por um delimitador
const splittedText = 'Texto de Exemplo'.split(' ') // foi usado o espaço
console.log(splittedText)

console.log() // \n

// Busca por um valor e substitui por outro
const replacedText = 'Texto de Exemplo'.replace('de Exemplo', 'Substituído')
console.log(replacedText)

console.log() // \n

// Retorna a "fatia" de um valor
const lastChar = 'Texto de Exemplo'.slice(-1)
console.log(lastChar)
const firstChar = 'Texto de Exemplo'.slice(0, 1) // (corte esquerdo fechado, corte direito aberto) 
console.log(firstChar)
const middleText = 'Texto de Exemplo'.slice(6, 8) // (fechado = incluso, aberto = ñ incluso)
console.log(middleText)

console.log() // \n

// Retorna N caracteres a partir de uma posição 
const fiveCharsCut = 'Texto de Exemplo'.substr(0, 5)
console.log(fiveCharsCut)
const twoCharsCut = 'Texto de Exemplo'.substr(6, 2)
console.log(twoCharsCut)
const sevenCahrsCut = 'Texto de Exemplo'.substr(-7, 7)
console.log(sevenCahrsCut)
