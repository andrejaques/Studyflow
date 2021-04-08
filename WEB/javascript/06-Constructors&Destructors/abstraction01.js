// referencia: Livro Eloquent JavaScript, cap5 - https://eloquentjavascript.net/05_higher_order.html

// Objetivo - Abstrair uma função que repete uma ação n vezes
// 1-Ser capaz de receber a quantidade de repetições
function repeat(n) {
  for (let i = 0; i < n; i++) {
    console.log(i);
  }
}
// 2-Ser capaz de receber uma ação e quantidades de repetições para essa ação
function repeatActionNtimes(n, action) {
  for (let i = 0; i < n; i++) {
    action(i);
  }
}

repeatActionNtimes(3, console.log);
// → 0
// → 1
// → 2

// 3-Definindo a ação a ser repetida durante a chamada da função
let labels = [];
repeatActionNtime (5, i => {
labels.push(`Unit ${i + 1}`);
});
console.log(labels);
// → ["Unit 1", "Unit 2", "Unit 3", "Unit 4", "Unit 5"]
// Agora vamos constuir uma função que imita forEach e do Filter (vide abstracting-hofs.js)
