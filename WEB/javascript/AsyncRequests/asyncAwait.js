// ES7 - Async / Await

const simpleFunc = async () => 
{
    return 12345;
};


console.log(simpleFunc()); // retorno de uma promise

simpleFunc().then(data => 
    {
        console.log(data);
    });

// tratando erros

const simpleFuncErr = async () => 
{
    throw new Error('Oh no!');
    return 12345;
};


console.log(simpleFuncErr()); 
simpleFuncErr().then(data => 
    {
        console.log(data);
    })
    .catch(err =>
        {
            console.log(err);
        })