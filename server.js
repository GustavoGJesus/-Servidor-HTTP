const server = require('./app');

const PORT = 3000;

server.listen(PORT, (error) => {
    if (error) {
        console.log(error);
    }

    console.log(`Servidor funcionando em  http://localhost:3000`);
    console.log(`Para desligar o servidor ctrl + c`)
})