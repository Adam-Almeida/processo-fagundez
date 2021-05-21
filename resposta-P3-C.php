<?php

require __DIR__ . "/vendor/autoload.php";

use Source\Core\Connect;


//* PERGUNTA C
//* LOCALIZE O NOME E ENDEREÇO DOS ALUNOS QUE NÃO CURSARAM NENHUMA DISIPLINA OFERECIDA EM 2010

$query = " SELECT nome FROM historico th
           INNER JOIN aluno ta
           ON th.ra = ta.ra
           WHERE th.ano != '2010'
          ";

$stmt = Connect::getInstance()->prepare($query);
$stmt->execute();
$resultados = (object)$stmt->fetchAll();

foreach ($resultados as $aluno){
    echo "Aluno: {$aluno->nome} </br>";
}
