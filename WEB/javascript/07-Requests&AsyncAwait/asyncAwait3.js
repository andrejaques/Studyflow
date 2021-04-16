// Realizando funções assincronas sequenciais com await
const fetch = require('node-fetch');

const asyncTimer = () =>
    new Promise((resolve, reject) =>
    {
        setTimeout(() => 
        {
            resolve(12345);
        }, 3000);
    });

const simpleFunc = async () => 
{
    const data = await asyncTimer();
    const dataJSON = await fetch('https://jsonplaceholder.typicode.com/todos/5')
        .then(resStream => resStream.json());

    return dataJSON;
};

simpleFunc()
    .then(data =>
        {
            console.log(data);
        })
    .catch(err => 
        {
            console.log(err);
        });
