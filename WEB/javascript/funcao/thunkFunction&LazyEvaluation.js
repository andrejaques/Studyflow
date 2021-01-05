                                                            // Lazy Evaluation

// Delay an action while another have been completed (assync method). Can be used with thunk function.
// Consists in use values inside one function (normaly using arrow function) to parameters to another function or variable, that will return something only when the inside function is completed. 

// PT - Retarda uma ação até que outra tenha sido completada (método assíncrono). Pode ser usada com uma função thunk.
// Consiste em passar valores dentro de uma função para uma variável ou função, com o intuito de retornar algo apenas quando a função interna for completada.

// Not lazy
let value = 1 + 1  // immediately evaluates to 2

// Lazy
let lazyValue = () => 1 + 1  // Evaluates to 2 when lazyValue is *invoked*

// Ex 02: A lazy function that is just called in some situations 

function randomNumber()  
{
    console.log('Generating a random number...') // this is just to show when this funtion is called otherwise could be with arrow function.

    return Math.round(Math.random() * 10)
}

function multiply(a, b = randomNumber()) // using defaul value function concept. This functions could be a Thunk Function depending of taked arguments.
{
    return a * b
}

console.log(multiply(5, 5))
console.log(multiply(5))
console.log(multiply(5))
console.log(multiply(1, 10))
console.log(multiply(1))


console.log() // \n
console.log() // \n


                                                                                // Thunk Function

// A function that takes no arguments or an Lazy Argument and return something.
// PT - Uma função que não recebe argumentos ou um lazy argument e retorna algo.

// Not lazy
let add = (x, y) => x + y
let result = add(1, 2)  // Immediately evaluates to 3
console.log(result)

console.log() // \n

// Lazy
let addLazy = (x, y) => () => x + y;
let resultLazy = addLazy(1, 2)  // Returns a thunk which *when evaluated* results in 3.
console.log(resultLazy())

console.log() // \n

// Assyncronous example: 

// Not lazy
let callApi = spec => fetch(spec.url, spec.options); // Immediately returns a Promise which will be fulfilled when the network response is processed.
let result2 = callApi({url: '/api', options: {}});

// Lazy
let callApiLazy = spec => () => fetch(spec.url, spec.options);
let result2Lazy = callApiLazy({url: '/api', options: {}}); // result is a thunk that when evaluated will return a Promise which will be fulfilled when the network response is processed.