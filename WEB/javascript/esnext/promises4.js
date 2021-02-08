// Método para executar várias promises no mesmo tempo com retorno em um array único.

const doSomeThingPromise = () => new Promise((resolve, reject) => 
{
    setTimeout(function()
    {
        // did something
        resolve('First data');
    }, 2500);
});

const doOtherThingPromise = () => new Promise((resolve, reject) => 
{
    setTimeout(function()
    {
        // did other thing
        resolve('Second data');
    }, 2500);
});

Promise.all([doSomeThingPromise(), doOtherThingPromise()])
    .then(data => 
        {
            console.log(data);
        });

console.log() // \n

Promise.all([doSomeThingPromise(), doOtherThingPromise()])
    .then(data => 
        {
            console.log(data[0].split(''));
            console.log(data[1].split(''));
        })
    .catch(err =>  // realizando tratamento
        {
            console.log(err);
        });

// Ainda temos o problema do assincronismo entre as chamadas separadas de promisses.