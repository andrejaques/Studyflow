// Fetch 
// Utilizado para fazer requisições ao servidor
const fetch = require('node-fetch');

fetch('https://jsonplaceholder.typicode.com/todos/1')
    .then(responseStream => 
    {
        console.log(responseStream);
    });
