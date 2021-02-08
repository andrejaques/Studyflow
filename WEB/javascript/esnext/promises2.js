// Promise refazendo callbackAdv - com tratamento de dados
/* Promise pode ter 03 estados.
01 - Pending - Esta em processo, só será resolvido depois do tempo determinado e executado da maneira correta (utilizando then).

02 - Fulfilled - 

03 - Rejected - 
*/

// É necessário adicionar uma função vazia para gerar a promise para elas serem executadas em seus devidos tempos.
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



