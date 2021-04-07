// sum text. You can use .join
const text = ['A', 'long', 'time', 'ago', 'in a', 'galaxy', 'far far', 'away...'];

const sentence = text.reduce((sumSet, currentValue) => `${sumSet} ${currentValue}`);
console.log(sentence);
