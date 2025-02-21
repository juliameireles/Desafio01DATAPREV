const express = require('express');
const mysql = require('mysql2');

const app = express();

const pool = mysql.createPool({
    connectionLimit: 10,
    host: "db",
    user: "root",
    password: "desafio01",
    database: "listalivros",
    connectTimeout: 10000,
    waitForConnections: true,
});

// Endpoint para testar se a API está no ar
app.get('/', (req, res) => {
    res.json({ message: "API funcionando corretamente!" });
});

// Endpoint para buscar os livros
app.get('/livros', (req, res) => {
    pool.query('SELECT * FROM livros', (error, results) => {
        if (error) {
            console.error("Erro ao buscar livros:", error);
            return res.status(500).json({ error: "Erro ao buscar livros." });
        }

        res.json(results);
    });
});

app.listen(9001, '0.0.0.0', () => {
    console.log('API rodando na porta 9001');
});
