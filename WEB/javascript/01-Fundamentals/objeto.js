/* objeto que atribui uma chave = valor pode ser utilizado como array */

// contexto geral
const prod1 = {}
prod1.nome = 'Celular Ultra Mega'
prod1.preco = 4998.90
prod1['Desconto Legal'] = 0.40 // evitar atributos com espaço

console.log(prod1)

const prod2 = {
    nome: 'Camisa Polo',
    preco: 79.90
}

console.log(prod2)

let user = {
    name: "Andre"
}

console.log() // \n

// Alterando a propriedade de um objeto
console.log(user)

user.name = "Outro nome"
console.log(user)

user['name'] = "Outro nome 2"
console.log(user)

const nameP = 'name'
user[nameP] = "Outro nome 3"
console.log(user)

// Criando uma propriedade
user.lastName = 'Jaques'
console.log(user)

// Deletando uma propriedade

delete user.name
console.log(user)