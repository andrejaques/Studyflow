/* funções básicas em cima de números */

const myNumber = 123.456789

// Transformando Número para String
console.log("Transformando Número para String")

const myNumberString = myNumber.toString()
console.log(myNumberString)

console.log() // \n

// Retorna número com limite de casas decimais
console.log("Retorna número com limite de casas decimais")

const oneDecimalNumber = myNumber.toFixed(1)
console.log(oneDecimalNumber)
const threeDecimalNumber = myNumber.toFixed(3)
console.log(threeDecimalNumber)

console.log() // \n

// Transforma uma string em float
console.log("Transforma uma string em float")

console.log(parseFloat(myNumberString))

console.log() // \n

// Transforma uma string em int
console.log("Transforma uma string em int")

console.log(parseInt(myNumberString))