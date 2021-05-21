<?php

require __DIR__ . "/vendor/autoload.php";

use Source\Core\Connect;


//* PERGUNTA D
//* FORNEÇA O NOME DOS PROFESSORES QUE SOMENTE LECIONARAMMATÉRIAS CUJA CARGA HORÁRIA FOI INFERIOR A 60 HORAS

$query = " SELECT * FROM turma tt
           INNER JOIN professor tp
           ON tt.cod_professor = tp.cod_professor
           INNER JOIN disciplina td
           ON tt.cod_disciplina = td.cod_disciplina
           WHERE td.carga_horaria < '60'
          ";

$stmt = Connect::getInstance()->prepare($query);
$stmt->execute();
$resultados = (object)$stmt->fetchAll();

foreach ($resultados as $professor){
    echo "Professor: {$professor->nome_professor} </br>";
}
