/* HTML Web Storage provê dois objetos para armazenamento de dados 
no cliente ( browser da pessoa), no formato de key/value de um modo 
mais intuitivo do que nos Cookies */

// localStorage - salva os dados sem data de expiração

console.log(localStorage.length) // não possui nada salvo, então o retorno é o valor: 0
localStorage.setItem("firstname", "Adam") //salva uma entrada com a key = "firstname" e value = "Adam"
localStorage.setItem("lastname", "Smith") //salva uma entrada com a key = "lastname" e value = "Smith"
console.log(localStorage.getItem("lastname")) // retorna o valor "Smith"
console.log(localStorage.length) // possui duas entradas, então o retorno é o valor: 2
localStorage.removeItem("lastname") // remove a entrada referente a key = "lastname"
console.log(localStorage.length) // possui uma entrada, então o retorno é o valor: 1
localStorage.clear() // limpa todas as entradas salvas em localStorage
console.log(localStorage.length) // não possui nada salvo, então o retorno é o valor: 0

// sessionStorage - salva os dados apenas para a sessão atual. 

console.log(sessionStorage.length) // não possui nada salvo, então o retorno é o valor: 0
sessionStorage.setItem("firstname", "Adam") //salva uma entrada com a key = "firstname" e value = "Adam"
sessionStorage.setItem("lastname", "Smith") //salva uma entrada com a key = "lastname" e value = "Smith"
console.log(sessionStorage.getItem("lastname")) // retorna o valor "Smith"
console.log(sessionStorage.length) // possui duas entradas, então o retorno é o valor: 2
sessionStorage.removeItem("lastname") // remove a entrada referente a key = "lastname"
console.log(sessionStorage.length) // possui uma entrada, então o retorno é o valor: 1
sessionStorage.clear() // limpa todas as entradas salvas em sessionStorage
console.log(sessionStorage.length) // não possui nada salvo, então o retorno é o valor: 0

// É possível salvar outras estruturas em localStorage e sessionStorage :

let demonstration = {
    name: "Test",
    since: 2015
}

storage.setItem("Test", JSON.stringify(demonstration))
let obj1 = JSON.parse(storage.getItem("Test"))
console.log(obj1) // { name: "Test", since: 2015 }

let classes = ["Knight", "Mage"]
storage.setItem("classes", JSON.stringify(classes))
let cls = JSON.parse(storage.getItem("classes"))
console.log(cls) // ["Knight", "Mage"]

