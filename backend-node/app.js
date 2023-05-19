const express = require('express');
const app = express();

const createConnection = require('./db');

const cors = require('cors');


app.use(express.json())
app.use(express.urlencoded({ extended: false }))
app.use(cors())


app.get('/teste', async(req, res) => {
    createConnection.query('SELECT * FROM users', (err, results) => {
        if (!err)
            res.json(results);

        console.error(err)
    });
});

app.listen(3000, () => {
    console.log('Aplicativo rodando em: http://localhost:3000/')
})
