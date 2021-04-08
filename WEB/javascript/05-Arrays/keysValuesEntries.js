/* Retorna um Array Iterator que contém as chaves e/ou valores para cada elemento do array*/
// keys retorna as chaves
// values os valores
// entries retorna os 2

const arr = [1, 2, 3, 4]
console.log(arr)

const arrIterator = arr.keys()

console.log() // \n

arrIterator.next()
// {value: 0, done: false}

arrIterator.next()
// {value: 1, done: false}

arrIterator.next()
// {value: 2, done: false}

arrIterator.next()
// {value: 3, done: false}
