/*  O que são e criando objetos */

// O que é objeto e o que é função
console.log(typeof Object)
console.log(typeof new Object)

console.log() // \n

const Cliente = function() {}
console.log(typeof Cliente)
console.log(typeof new Cliente)

console.log() // \n

class Produto {} // ES 2015 (ES6)
console.log(typeof Produto)
console.log(typeof new Produto())

