// Promise refazendo callbackAdv - com tratamento de dados
// Em casos de erro, o tratamento é feito com catch da seguinte maneira

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

doSomeThingPromise()
    .then(data => 
    {
        console.log(data);
        return doOtherThingPromise();
    })   
    .then(data2 => console.log(data2));

console.log() // \n


const doSomeThingPromiseError = () => new Promise((resolve, reject) => 
{
    setTimeout(function()
    {
        throw new Error("Something got wrong");
        // did something
        resolve('First data');
    }, 2500);
});

doSomeThingPromise()
    .then(data => 
    {
        console.log(data.split(''));
        return doOtherThingPromise();
    })   
    .then(data2 => 
    {
        console.log(data2.split(''));
        return doSomeThingPromiseError();
    })
    .then(data3 => console.log(data3))
    .catch(error => console.log(error));

// agora temos uma solução para tratamento de erros mas um erro de sincronia entre funções.
// Podemos tratar isso usando async await para uma função esperar ou nao a outra.