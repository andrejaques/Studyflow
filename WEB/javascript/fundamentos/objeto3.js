/* mais métodos para objetos */

// lembrete: objetos são compostos por chaves = valores.
const user = {
    name: "André",
    lastname: 'Jaques'
}

console.log("Lembrete!: objetos são compostos por chaves = valores!")

console.log(user)

console.log() // \n

// Recuperando as chaves de um objeto
console.log("Recuperando as chaves de um objeto")

console.log(Object.keys(user))

console.log() //\n

// Recuperando os valores das chaves do objeto
console.log("Recuperando os valores das chaves do objeto")

console.log(Object.values(user))

console.log() // \n

// Retornando um array de arrays contendo [chaves, valores]
console.log("Retornando um array de arrays contendo [chaves, valores]")

console.log(Object.entries(user))

console.log() // \n

// Unir ou adicionar propriedades de objetos
console.log("Unir ou adicionar propriedades de objetos")

console.log(Object.assign(user, {idade: 29}))
console.log(Object.assign({}, user, {altura: 1.81}))

console.log() // \n

// Prevenir alterações em um objeto
console.log("Prevenir alterações em um objeto")
const newObj = { name: "André"}
Object.freeze(newObj)

newObj.name = "Alterado"
delete newObj.name
console.log(newObj)