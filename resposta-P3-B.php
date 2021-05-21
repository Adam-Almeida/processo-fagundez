<?php

require __DIR__ . "/vendor/autoload.php";

use Source\Core\Connect;


//* PERGUNTA B
//* LOCALIZE O NOME E ENDEREÇO DOS ALUNOS E PROFESSORES DE CURITIBA

$query = " SELECT * FROM professor tp
           WHERE tp.cidade = 'Curitiba'
           UNION
           SELECT * FROM aluno ta
           WHERE ta.cidade = 'Curitiba'
          ";

$stmt = Connect::getInstance()->prepare($query);
$stmt->execute();
$resultados = (object)$stmt->fetchAll();

foreach ($resultados as $pessoa){
        echo
        "Nome: {$pessoa->nome_professor} </br>
        Endereço: {$pessoa->endereco}</br>
        Cidade: {$pessoa->cidade}</br></br>
        ";
}
