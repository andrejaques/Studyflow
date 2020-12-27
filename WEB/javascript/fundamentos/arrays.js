/* conjunto de dados [dado0, dado1, dado2, ...., dadoN] */

// exemplo:
const notas = [7.7, 8.9, 6.3, 9.2]
console.log(notas[0], notas[3])
console.log(notas[4])

console.log() // \n

notas[4] = 10
console.log(notas)
console.log(notas.length)

console.log() // \n

notas.push({id: 3}, false, null, 'teste')
console.log(notas)

console.log() // \n

console.log(notas.pop())
delete notas[0]
console.log(notas)

console.log() // \n

console.log(typeof notas)



