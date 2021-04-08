//Mesma lógica de default destruction mas aqui vc apenas passa um parametro com valor predefinido

const greeting = (user = 'usuário') => console.log(`Welcome ${user}!`);

greeting(); // // Welcome usuário!

