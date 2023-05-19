const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root8462',
  database: 'users'
});

connection.connect((err) => {
  if (err) {
    console.error('Erro ao conectar ao banco de dados:', err);
    return;
  }
  console.log('Conexão bem-sucedida ao banco de dados!');
});

// connection.query('SELECT * FROM users', (err, results) => {
//   if (err) {
//     console.error('Erro ao executar consulta:', err);
//     return;
//   }
//   console.log('Resultado da consulta:', results);
// });
module.exports = connection
