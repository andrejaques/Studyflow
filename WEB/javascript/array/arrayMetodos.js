/* Métodos básicos de manipulação de Array */ 

const charClasses = ["mage", "knight", "ranger", "druid", "rogue", "warrior", "priest"]

                        // Métodos de remover

// Função pop remove o último elemento do array

console.log("função pop remove o último elemento de um array")
charClasses.pop() 
console.log(charClasses)

console.log() // \n

// Função shift remove o primeiro elemento do array e retorna ele

console.log("função shift remove o primeiro elemento do array")
charClasses.shift() 
console.log(charClasses)

console.log() // \n

                        // Métodos de adicionar

// Função push adiciona um elemento ao final do Array

console.log("Função push adiciona um elemento ao final do Array")
charClasses.push('shaman')
console.log(charClasses)

console.log() // \n

// Função unshift adiciona um elemento ao início do Array

console.log("Função unshift adiciona um elemento ao início do Array")
charClasses.unshift('none')
console.log(charClasses)


console.log() // \n


                    // Função Slice cria um novo array a partir de partes de um array existente.

// Syntaxe: .slice(id(contido), id(ñ contido))
// posições negativas contado inversamente a partir do último

console.log() // \n

// Novo array de classes com exceção do id 1
console.log("Novo array de classes, com exceção do id 1")
const upgradedClasses = charClasses.slice(1)
console.log(upgradedClasses)

console.log() // \n

// novo array da classe id 1 ao id 3 
console.log("novo array da classe id 1 ao id 3 ")
const honradosClasses2 = charClasses.slice(1, 4)
console.log(honradosClasses2)


console.log() // \n


                    // Função splice pode adicionar e remover elementos

// Syntaxe: .splice(index, qnt de index para remover, objetos a serem adicionados...)

console.log("Função splice (index, qnt de index para remover, objetos a serem adicionados...)")

// Adicionar - utiliza o qnt de index para remover em 0.

console.log("Adicionar - utiliza o qnt de index para remover em 0.")
charClasses.splice(2, 0, 'Warlord', 'Guardian')
console.log(charClasses)

console.log() // \n

// Remover 2 indexes a partir do index 2

console.log("remover 2 indexes a partir do index 2")
charClasses.splice(2, 2) //
console.log(charClasses)