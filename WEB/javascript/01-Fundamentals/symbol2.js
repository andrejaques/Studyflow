// Symbols com interator, split e toStringTag --- Introdução a Generator

const uniqueID = Symbol('Hello');

Symbol.iterator;
Symbol.split;
Symbol.toStringTag;

const arr = [1, 2, 3, 4];

const it = arr[Symbol.iterator]();

// percorrendo o array um a um.
/* console.log(it.next()); //{ value: 1, done: false }
console.log(it.next()); //{ value: 2, done: false }
console.log(it.next()); //{ value: 3, done: false }
console.log(it.next()); //{ value: 4, done: false }
console.log(it.next()); //{ value: undefined, done: true } */

console.log() // \n

// utilizando percorrer com while
while (true) 
{
    let { value, done} = it.next();

    if (done) 
    {
        break;
    }

    console.log(value);
}

console.log() // \n

// utilizando percorrer com ES6 (propriedades do array)
for (let value of arr) {
    console.log(value);
}

console.log() // \n

