/* Cookies são salvos no formato chave-valor . 
Quando o navegador faz a requisição ao servidor para acessar uma 
página Web, os cookies dessa página são adicionados à requisição. 
Dessa forma, o servidor tem acesso aos dados do usuário */

// Para criar um cookie, você só precisa de atribuir à propriedade document.cookie uma string contendo o nome e o valor do que se pretende armazenar:
document.cookie = "email=andrejaques.dev@gmail.com";

// Por definição, o cookie é deletado quando fechamos o navegador. Para que isso não aconteça, você pode adicionar uma data para expiração como no exemplo abaixo:
document.cookie = "email=andrejaques.dev@gmail.com; expires=Thu, 17 Dec 2023 12:00:00 UTC";

// Você pode adicionar também o parâmetro path que dirá ao navegador qual caminho o cookie que você criou pertence. Por padrão, o cookie pertence à página atual.
document.cookie = "email=andrejaques.dev@gmail.com; expires=Thu, 17 Dec 2023 12:00:00 UTC; path=/";

// O Javascript permite com que você atribua document.cookie a uma variável. Assim, você conseguirá ler as informações que estão armazenadas.
const myCookie = document.cookie;
console.log(myCookie); // email=andrejaques.dev@gmail.com

// O valor do cookie pode ser alterado da mesma forma que foi criado.
document.cookie = "Hello World";

// O cookie pode ser deletado atribuindo uma tada de expiração que já passou.
document.cookie = "Hello World; expires=Tue, 01 Dec 2015 12:00:00 UTC;"