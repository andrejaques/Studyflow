// EventEmitter - pattern para desenvolvimento assincrono no node.js

const EventEmitter = require('events');

const emitter = new EventEmitter();

emitter.on('User logged', data =>
{
    console.log(data);
});

emitter.emit('User logged', { user: 'Joao da Silva'});


console.log()
// ou


class Users extends EventEmitter
{  
    userLogged(data)
    {
        this.emit('User logged', data);
    }
}

const users = new Users();

users.on('User logged', data => // users.on loga todos e user.once loga apenas o primeiro
{
    console.log(data);
});

users.userLogged({ user: 'Joao da Silva'})
users.userLogged({ user: 'Daniel de Souza'})

// classe poderosa que pode limitar o número de eventos dentro da classe e pode ou nao responder um evento por vez.