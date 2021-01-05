                                                                    // Closure 

// É o escopo criado quando uma função é declarada, delimitado pelas {}. Esse escopo permite a função acessar e manipular variáveis externas à função, ... 
// mas não permite funções externas utilizarem variáveis internas desta função caso as mesas utilizem let ou const.

// Contexto léxico em ação!

let x = 'Global'

function fora() 
{
    let x = 'Local'
    function dentro() 
    {
        return x
    }
    return dentro
}

const minhaFuncao = fora()
console.log(minhaFuncao())
console.log(x)

console.log() // \n

                                                                    // Closure 

// É a ação que uma função ou objeto no escopo local realiza englobando todas as suas dependências, tanto dentro como no seu mesmo nível de escopo e extraíndo elas para um escopo maior.

function makeAdder(x) {
    return function(y) {
      return x + y;
    };
  }
  
  var add5 = makeAdder(5);
  var add10 = makeAdder(10);
  
  console.log(add5(2));  
  console.log(add10(2)); 

  /* In this example, we have defined a function makeAdder(x), that takes a single argument x, and returns a new function. The function it returns takes a single argument y, and returns the sum of x and y.

  In essence, makeAdder is a function factory. It creates functions that can add a specific value to their argument. In the above example, the function factory creates two new functions—one that adds five to its argument, and one that adds 10.
  
  add5 and add10 are both closures. They share the same function body definition, but store different lexical environments. In add5's lexical environment, x is 5, while in the lexical environment for add10, x is 10. */