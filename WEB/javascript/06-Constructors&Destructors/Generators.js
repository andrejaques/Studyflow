// Generators

// Gera um interation 

function* hello()
{
    console.log('Hello');
    yield 1;

    console.log('From');
    yield 2;

    console.log('Function!');
}

const it = hello();

console.log(it.next());
console.log(it.next());
console.log(it.next());

console.log () // \n

// Pode invocar um valor de fora
console.log("Can call a outside number")
function* hi()
{
    console.log('Hi');
    yield 1;

    console.log('From');
    const value = yield 2;

    console.log(value);
}

const ola = hi();

console.log(ola.next());
console.log(ola.next());
console.log(ola.next("Outside"));

console.log() // \n 


// Range de números infinitos
console.log("Infinity numbers range")
function* naturalNumbers() 
{
    let number = 0;
    while (true)
    {
        yield number;
        number++;
    }
}

const nit = naturalNumbers();

console.log(nit.next())
console.log(nit.next())
console.log(nit.next())
console.log(nit.next())
console.log(nit.next())
