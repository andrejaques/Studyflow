// Podemos adicionar valores padroes para caso o atributo nao seja passado

const person = {
  name: 'João',
  lastName: 'Jr',
  age: 34,
};

const { nationality = 'Brazilian' } = person;
console.log(nationality); // Brazilian

console.log();
// Podendo ser feito na hora de desestruturar um array:
console.log();

const position2d = [1.0, 2.0];
const [x, y, z = 0] = position2d;

console.log(x); // 1
console.log(y); // 2
console.log(z); // 0