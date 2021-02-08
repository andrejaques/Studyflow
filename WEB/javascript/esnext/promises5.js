// Promise race
// Para executar apenas a promise que resolver mais rápido

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
    }, 2000);
});

Promise.race([doSomeThingPromise(), doOtherThingPromise()])
    .then(data => 
        {
            console.log(data);
        });

// Apenas a segunda é retornada.
