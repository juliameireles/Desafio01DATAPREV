const express = require ('express');
const mysql = require('mysql'); //troquei configuração do mysql



const app = express();

const connection = mysql.createConnection({
    host:'db',
    user:'root',
    password: 'desafio01',
    database: 'listalivros',
    connectTimeout: 10000 
});

connection.connect();

app.get('/livros', function(req,res) {
    connection.query('SELECT * FROM livros',function (error,results){
        if(error){
            return res.status(500).json({ error: "Erro ao buscar livros." });
        };

        res.send(results.map(item => ({titulo: item.titulo, preco:item.preco} )));
   
    });

});



app.listen(9001,'0.0.0.0',function(){
    console.log('Escutando na porta 9001');
})