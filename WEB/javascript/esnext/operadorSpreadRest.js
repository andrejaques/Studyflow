// operador ... rest(juntar) / spread(espalhar)
// Utilizar o ... rest ou ... spread em um parâmetro.

// usar rest com parâmetro de função

// usar spread com objeto
const funcionario = { nome: 'Maria', salario: 12348.99 }
const clone = { ativo: true, ...funcionario }
console.log(clone)

// usar spread com array
const grupoA = ['João', 'Pedro', 'Gloria']
const grupoFinal = ['Maria', ...grupoA, 'Rafaela']
console.log(grupoFinal)

console.log() // \n 


// Exemplo 02 para Rest
// Temos uma função simples de soma e precisamos transformar ela para uma função onde soma todos os valores independente da quantidade passada.

function sum(a, b)
{
    return a + b;
}
console.log(sum(5, 5));

console.log() // \n

// Função com Rest operator

function sumRest(...args)
{
    return args.reduce((total, value) => total + value, 0);
}

console.log(sumRest(2, 5, 10, 15));

console.log() // \n

// Função com Spread
// pode ser utilizado em strings, arrays, objects e objetos iteraveis.

const text = "A Sample of Text"

function textSpread(...argsSpread) 
{
    console.log(argsSpread)
}

textSpread(...text);

