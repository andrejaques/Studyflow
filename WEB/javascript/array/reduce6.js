const assert = require('assert');

const classes = [
  { firstClass: 'Knight', secondClass01: 'Guardian', secondClass02: 'Gladiator' },
  { firstClass: 'Mage', secondClass01: 'Elementalist', secondClass02: 'Arcanist' },
  { firstClass: 'Ranger', secondClass01: 'Hunter', secondClass02: 'Sniper' },
  { firstClass: 'Rogue', secondClass01: 'Assassin', secondClass02: 'Stalker' },
  { firstClass: 'Druid', secondClass01: 'Beastmaster', secondClass02: 'Elderwood' },
];

const newClass = classes.reduce((previousAcc, currentValue) => {
  previousAcc[currentValue.firstClass] = currentValue.secondClass01 + ' , ' + currentValue.secondClass02;
  return previousAcc;
}, {});
// previousAcc[chave] = 'valor';

console.log(newClass);

console.log('----------------')

const newClass2 = classes.reduce((previousAcc, currentValue) => {
  previousAcc[currentValue.firstClass] = `${currentValue.secondClass01} , ${currentValue.secondClass02}`;
  return previousAcc;
}, {});

console.log(newClass2);
