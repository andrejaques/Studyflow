// Pode ser utilizado para destruir arrays ou objetos

//Arrays

let arr = ["Apple", "Banana", "Orange", ["Tomato"]];

let apple = arr[0];
let banana = arr[1];
let orange = arr[2];
let tomato = arr[3][0];

// Using Destructuring Assignment 

let [apple2, banana2, orange2, [tomato2]] = ["Apple", "Banana", "Orange", ["Tomato"]];

console.log(tomato)
console.log(tomato2)
console.log(banana)
console.log(banana2)

console.log() // \n


//Objetos

let arr3 = ['Apple', 'Orange'];
let obj = 
{
    name: 'Celso',
    props: 
    {
        age: 26
    }
};

let age = obj.props.age;

// Destructuring Assignment

let { props: { age: age2 } } = obj;

console.log(obj)
console.log(age2);
