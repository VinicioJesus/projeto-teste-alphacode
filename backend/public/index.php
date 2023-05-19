
<?php

require './vendor/autoload.php';


date_default_timezone_set('America/Sao_Paulo');

// header("Content-type: application/json");
// header("Access-Control-Allow-Origin: *");
// header("Access-Control-Allow-Headers: *");
// header("Access-Control-Allow-Methods: *");


// Permite ativar quais endereços de sites que poderão fazer requisições na API (* libera para todos os sites)
header('Access-Control-Allow-Origin: *');

// Permite ativar os métodos do protocolo HTTP que irão requisitar a API
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');

// Permite ativar o 'Content-Type' das requisições (formato de dados que será utilizado (JSON, XML, FORM/DATA, etc...))
header('Access-Control-Allow-Header: Content-Type');

// Permite liberar quais 'Content-Type' serão utilizados na API
header('Content-Type: application/json');

?>
