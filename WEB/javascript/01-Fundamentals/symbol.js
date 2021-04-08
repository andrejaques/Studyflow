/* Symbol é um dado primitivo, usado para identificar objetos */

const symbol1 = Symbol()
const symbol2 = Symbol()

// Symbols são únicos
console.log("Symbols são únicos")
console.log(symbol1 === symbol2)
console.log( Symbol('XYZ') === Symbol('XYZ'))

console.log() // \n

// Prevenir conflitos entre nomes de propriedades
console.log("Prevenir conflitos entre nomes de propriedades")
const nameSymbol01 = Symbol('name')
const nameSymbol02 = Symbol('name')

const user = {
    [nameSymbol01]: 'André',
    [nameSymbol02]: 'Another',
    lastName: 'Jaques'
}

console.log(user)

console.log() // \n

// Symbols criam propriedades que não são enumeradas (enumerables)
console.log("Symbols criam propriedades que não são enumeradas (enumerables)")

for (const i in user) { // não consegue acessar symbols com estruturas padrões de repetição
    if (user.hasOwnProperty(i)) {
        console.log(`Valor de I ${i}: ${user[i]}`)
    }
}

console.log(Object.keys(user))
console.log(Object.values(user))

console.log() // \n

// Exibir symbols de um objeto
console.log("Exibir symbols de um objeto")

console.log(Object.getOwnPropertySymbols(user))

console.log() // \n

// Acessando todas as propriedades do objeto
console.log("Acessando todas as propriedades do objeto")
console.log(Reflect.ownKeys(user))

console.log() // \n

// Criar um enum
console.log("Criar um enum")

const directions = {
    Up   : Symbol( 'UP' ),
    DOWN : Symbol( 'DOWN' ),
    LEFT : Symbol( 'LEFT' ),
    RIGHT: Symbol( 'RIGHT' )
}


