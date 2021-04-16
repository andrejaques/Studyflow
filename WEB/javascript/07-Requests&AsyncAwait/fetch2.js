// fetch pode receber outros paramentros, modificando o método da operação. Default é get;

fetch('https://jsonplaceholder.typicode.com/todos/3', 
{
    method: 'post',
    body: JSON.stringify
})

// dependendo do que for enviar, pode ser feito um body diferente.

