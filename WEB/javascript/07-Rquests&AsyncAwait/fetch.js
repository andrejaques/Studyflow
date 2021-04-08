// Fetch 
// Utilizado para fazer requisições ao servidor
const fetch = require('node-fetch');

fetch('https://jsonplaceholder.typicode.com/todos/2')
    .then(responseStream => responseStream.json())
    .then(data => console.log(data))
    .catch(err => console.log("Erroooouuuu: ", err)); 
    


// fetch só da erro caso aconteça erro de rede.
// necessita filtrar os outros erros.

fetch('https://jsonplaceholder.typicode.com/todos/3')
    .then(responseStream2 => 
    {
        if (responseStream2.status === 200) 
        {
            return responseStream2.json();
        } 
        else
        {
            throw new Error('Request error');
        }
    })
    .then(data2 => console.log(data2))
    .catch(err2 => console.log("Erroooouuuu: ", err2)); 

