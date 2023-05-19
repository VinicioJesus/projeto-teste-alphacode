<?php

$host = 'localhost';
$usuario = 'root';
$senha = 'root8462';
$banco = 'users';

// Conexão com o banco de dados usando PDO
try {
    $conn = new PDO("mysql:host=$host;dbname=$banco", $usuario, $senha);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo ("deu BOm");
} catch (PDOException $e) {
    // echo ("DEU RUIM");
    die("Falha na conexão com o banco de dados: " . $e->getMessage());
}
