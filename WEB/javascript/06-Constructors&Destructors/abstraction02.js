// referencia: Livro Eloquent JavaScript, cap5 - https://eloquentjavascript.net/05_higher_order.html

// --> definindo a função repeatActionNtimes
function repeatActionNtimes(n, action) {
  for (let i = 0; i < n; i++) {
    action(i);
  }
}
// -----------------------------------------
// Abstracting forEach
// Definindo uma função que recebe um teste lógico e uma função
// e quando o teste retona "true" a função é executada
function unless(test, then) {
    if (!test) then();
  }
  
  repeatActionNtimes(3, n => {
    unless(n % 2 == 1, () => {
      console.log(n, "é par");
    });
  });
  // → 0 é par
  // → 2 é par

// O código acima é similar a HOF forEach
  ["A", "B"].forEach(l => console.log(l));
// → A
// → B


// A variável abaixo será utilizada na abtração da função filter
var SCRIPTS = [
    {
      name: "Adlam",
      ranges: [[125184, 125259], [125264, 125274], [125278, 125280]],
      direction: "rtl",
      year: 1987,
      living: true,
      link: "https://en.wikipedia.org/wiki/Fula_alphabets#Adlam_alphabet"
    },
    {
      name: "Caucasian Albanian",
      ranges: [[66864, 66916], [66927, 66928]],
      direction: "ltr",
      year: 420,
      living: false,
      link: "https://en.wikipedia.org/wiki/Caucasian_Albanian_alphabet"
    }
];
// Abstraindo uma função que tem o mesmo funcionamento da HOF filter
function filter(array, test) {
    let passed = [];
    for (let element of array) {
      if (test(element)) {
        passed.push(element);
      }
    }
    return passed;
  }
  
  console.log(filter(SCRIPTS, script => script.living));
  // → [{name: "Adlam", …}, …]
// Agora veja como fica usando a HOF Filter
  console.log(SCRIPTS.filter(s => s.direction == "ttb"));
// → [{name: "Mongolian", …}, …]
