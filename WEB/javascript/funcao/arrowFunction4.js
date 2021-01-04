// Using arrow function with objects 

const obj1 = 
    {   
        teste: 123,
        teste2: 456,
        teste3: 789
    }

console.log(obj1)

console.log() // \n

let obj2 = () => ({ test: "abc", test2: "def", test3: "ghi"})

console.log(obj2());


console.log() // \n

// Can not use arrow function with constructor function

function Car() {
    this.brand = 'Mercedez'
}

console.log(new Car());

console.log() // \n

/* let Car2 = () => {
    this.brand = 'BMW'
};

console.log (new Car2()) */ // R - Car2 is not a constructor




// Can not use arrow function with hoisting.
/* log('teste');

let log = value => {
    console.log(value)
} */  // Cannot access 'log' before initialization


