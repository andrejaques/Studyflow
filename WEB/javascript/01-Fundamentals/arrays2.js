/* operações com arrays */ 

const users = ["André", "João", "Pedro", "Anna", "Elizabeth"]

const gender = {
    MAN:        Symbol('M'),
    WOMAN:      Symbol('W'),
    AGENDER:    Symbol('A'),
    DRAG:       Symbol('D'),
    TRANS:      Symbol('T'),
    BI:         Symbol('B'),
    MTF:        Symbol('MF'),
    FTM:        Symbol('FM')
}

const persons = [
    {
        name: "André",
        age: 29,
        gender: gender.MAN
    },
    {
        name: "João",
        age: 35,
        gender: gender.DRAG
    },
    {
        name: "Pedro",
        age: 22,
        gender: gender.FTM
    },
    {
        name: "Anna",
        age: 30,
        gender: gender.WOMAN
    },
    {
        name: "Elizabeth",
        age: 29,
        gender: gender.TRANS
    },
]

// Retornar a quantidade de itens de um array
console.log("Retornar a quantidade de itens de um array")

console.log(persons.lenght)

console.log() // \n

// Verificar se é array
console.log("Verificar se é array")

console.log(Array.isArray(persons))

console.log() // \n

/* métodos avançados, explicados melhor em arrays */

// Interar os itens do array
console.log("Interar os itens do array")

persons.forEach((person, index, arr) => {
    console.log(person.name, index, arr)
})

console.log() // \n

// Filtrar o array
console.log("Filtrar o array")

const drags = persons.filter(person => person.gender === gender.DRAG)
console.log(drags)

console.log() // \n

// Adicionar um atributo e retornar um novo array.
console.log("Adicionar um atributo e retornar um novo array")

const personsWithDiplom = persons.map(person => {
    person.graduate = 'Ciências da Computação'
    return person
})
console.log(personsWithDiplom)

console.log() // \n

// Transformar um array em um valor (soma das idades)
console.log("Transformar um array em um valor (soma das idades)")

const totalAge = persons.reduce((age, person) => {
    age += person.age;
    return age;
}, 0)
console.log(`A soma da idade dos ${users.length} usuários, é igual a ${totalAge} `)

console.log() // \n

// Aplicando multiplas operações
console.log("Aplicando multiplas operações")

const totalEvenAges = persons
                        .filter(person => person.age % 2 === 0) // somar todas as idades pares 
                        .reduce((age, person) => {
                            age += person.age
                            return age
                        }, 0)
console.log(totalEvenAges)