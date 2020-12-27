                                                    /* Operadores */

// Aritméticos
// Comparação
// Condicional
// Lógicos
// Spread

                                                /* operadores unários */
// recebem um único operando
operando1 operador
operador operando1 

x++
++x

                                /* delete */
delete a1

                                /* typeof */
typeof a1

                                                /* operadores binários */ 
// recebem dois operandos e um operador                             
operando1 operador operando2

1 + 2

                                /* in */
a1 in a // a1 está dentro de a?

                                /* Aritméticos */ 
// Operador binário. Retorna o inteiro restante da divisão dos dois operandos

17 % 3 // retorna 2

// Incremento (++) e Decremento (--)
++x
x++

const a = ++2 // 3
const b = 2++ // 2

--x
x--

// Negação (-) e Adição (+)
-3
+"3"    // retorna 3
+true   // retorna 1
+false  // retorna 0
-true   // retorna -1

// Operador de exponenciação (**)
2 ** 3      // retorna 8
10 ** -1    // retorna 0.1

// Operador de agrupamento ()
2 * (3 + 2)     // 


                        /* Operadores de Atribuição */
x = y

// Atribuição de adição
x = x + y // ou
x += y

// Atribuição de subtração
x = x - y // ou
x -= y

// Atribuição de multiplicação
x = x * y // ou
x *= y

// Atribuição de divisão
x = x / y // ou
x /= y

// Atribuição de resto
x = x % y // ou
x %= y


                            /* Operadores de Comparação */

// Igual (==)
// Retorna verdadeiro caso os operandos sejam iguals. 
"1" == a    // false
1 == "1"    // true

// Diferente (!=)
// Retorna verdadeiro caso os operandos sejam diferentes.
2 != "3"    // true

// Estritamente igual (===)
// Retorna verdadeiro caso os operandos sejam igual e do mesmo tipo
3 === a     // false
3 === "3"   // false
3 === 3     // true

// Estritamente diferente (!==)
// Retorna verdadeiro caso os operandos sejam diferentes e/ou não sejam do mesmo tipo
a !== 3     // true
3 !== "3"   // true
3 !== 3     // false

// Maior que (>)
// Retorna verdadeiro caso o operando da esquerda seja maior que o da direita
5 > 4   // true

// Maior que ou igual (>=)
// Retorna verdadeiro caso o operando da esquerda seja maior que ou igual o da direita
5 > 5   // true

// Menor que (<)
// Retorna verdadeiro caso o operando da esquerda seja menor que o da direita
5 < 4   // false
3 < 4   // true

// Menor que (<=)
// Retorna verdadeiro caso o operando da esquerda seja menor ou igual que o da direita
4 <= 4   // true


                                            /* Operadores Ternários */
// Recebe dois valores e uma condição ou duas condições e um valor

                        /* Operadores de condiional */
// Retorna valor 1 caso seja verdadeiro e valor 2 caso seja falso
condição ? valor1 : valor2

true ? 'Carro' : 'Bicicleta'        // Retorna "Carro"
false ? 'Carro' : 'Bicicleta'       // Retorna "Bicileta"

                        /* Operadores lógicos (&&) AND */
valor1 && valor2

let a1 = true && true;              // t && t retorna true
let a2 = true && false;             // t && f retorna false
let a3 = false && true;             // f && t retorna false
let a4 = "string1" && "string2";    // t && t retorna "string2"
let a5 = false && "string2";        // f && t retorna false
let a6 = "string1" && false;        // t && f retorna false


                        /* Operadores lógicos (||) OU */
valor1 || valor2

let a1 = true || true               // t || t retorna true
let a2 = false || true              // f || t retorna true
let a3 = true || false              // t || f retorna true
let a4 = "string1" || "string2"     // t || t retorna "string1"
let a5 = false || "string2"         // f || t retorna "string2"
let a6 = "string1" || false         // t || f retorna "string1"


                        /* Operadores não lógicos (!) NOT */
!valor1

let a1 = !true      // !t retorna false
let a2 = !false     // !f retorna true
let a3 = !"string"  // !t retorna false

" " ou 1 ou ['xyz'] // retornam verdadeiro
"" ou 0 ou []       // retornam falso

                        /* Operador transforma booleano (!!) */
let a1 = false && "string2"     // f && t retorna false
let a2 = !!false && "string2"   // !!f && t retorna "string2"



                                            /* SPREAD */

let mage = ['red mage', 'white mage', 'black mage']
let classes = ['knight', 'ranger', ...mage, 'priest', 'druid']

let classes = ['knight', 'ranger', 'red mage', 'white mage', 'black mage', 'priest', 'druid']
                    
function fn(x, y, z) { }
let args = [0, 1, 2]
fn(...args)
// logo x = 0, y = 1 e z = 2