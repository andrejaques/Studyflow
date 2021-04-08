// Enhanced Method to manage objects with EC6+
// Método melhorado para gerenciar objetos com o EC6+

let obj = 
{
    sum(a, b) // sum: function sum(a, b) {} -old version
    {
        return a + b;
    }
};

console.log(obj.sum(1, 5));

console.log() // \n

// other case

let propName = 'test';

let obj2 = 
{
    [propName + 'concat']: 'prop value'
}

console.log(obj2)