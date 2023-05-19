<?php

require 'vendor/autoload.php';

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;

require 'App/Config/database.php';

$app = AppFactory::create();

// Rota GET para obter a lista de usuários
$app->get('/users', function (Request $request, Response $response) use ($conn) {
    $users = (array) array();

    // Consulta para obter os usuários do banco de dados
    $query = "SELECT * FROM users";
    $stmt = $conn->query($query);

    // Verifica se houve resultados e os armazena em um array
    if ($stmt->rowCount() > 0) {
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $users[] = $row;
        }
    }
    // print_r(json_encode($users));
    // die;

    // echo count($users);

    // $users = ['teste' => '12355'];

    // print_r(json_encode((array) $teste));

    // die;

    // $json = json_encode(['batata' => 'quete']);

    // Retorna a lista de usuários como uma resposta JSON

    // return $response;
    $payload = json_encode($users);

    $response->getBody()->write($payload);
    return $response
        ->withHeader('Content-Type', 'application/json');
});

$app->run();
