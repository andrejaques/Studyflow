// Add default values to functions using EC6 
// PT - atribuir valores padrões para funções utilizando EC6

function multiply( a, b )
{
    return a * b
}

console.log(multiply(5, 5))
console.log(multiply(5, 0))
console.log(multiply(5)) // output NaN because the b is not defined. We can solve this problem using the next sample: 
// PT- A saída da um NaN porque b não foi definido (undefined) mas pode-se corrigir isso com o próximo exemplo:

console.log() // \n

function multiply2( c, d = 1) 
{
    return c * d
}

console.log(multiply2(5, 5))
console.log(multiply2(5, 0))
console.log(multiply2(5))

console.log() // \n

// It is possible do reference other parameter to the default value but this parameter needs to be declared before or in a upper scope (hoisting).
// PT - É possível referenciar outro parâmetro como valor padrão mas este deve ter sido declarado anteriormente ou em um escopo superior (hoisting).

function multiply3( e, f = e) 
{
    return e * f
}

console.log(multiply3(5, 5))
console.log(multiply3(5, 0))
console.log(multiply3(5))

console.log() // \n

// and using with an parameter that is not declared before or in a upper scope (hoisting), that will cause an error.
// PT - E usando a mesma função com um parametro que não foi declarado anteriormente ou em um escopo superior (hoisting), que causará um erro.

function multiply4( g, h = i) 
{
    
    return g * h
}

console.log(multiply4(5, 5))
console.log(multiply4(5, 0))
console.log(multiply4(5))

