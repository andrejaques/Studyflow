// Pode ser utilizado para destruir arrays ou objetos

//Arrays

var arr = ["Apple", "Banana", "Orange", ["Tomato"]];

var apple = arr[0];
var banana = arr[1];
var orange = arr[2];
var tomato = arr[3][0];

// Using Destructuring Assignment 

var [apple2, banana2, orange2, [tomato2]] = ["Apple", "Banana", "Orange", ["Tomato"]];

console.log(tomato)
console.log(tomato2)
console.log(banana)
console.log(banana2)

console.log() // \n


//Objetos

var arr3 = ['Apple', 'Orange'];
var obj = 
{
    name: 'Celso',
    props: 
    {
        age: 26
    }
};

var age = obj.props.age;

// Destructuring Assignment

var [apple2] = arr3;
var { props: { age: age2 } } = obj;

console.log(obj)
console.log(age2);