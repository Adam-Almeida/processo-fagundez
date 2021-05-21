<?php

require __DIR__ . "/vendor/autoload.php";

use Source\Core\Connect;


//* PERGUNTA A
//* LOCALIZE O NOME E RA DOS ALUNOS DO PROFESSOR JOSÉ EM 2010 OU 2009 QUE TIVERAM AULAS COM
//* O PROFESSOR MARCOS EM ALGUM ANO

$query = " SELECT * FROM historico th
           INNER JOIN aluno ta
           ON th.ra = ta.ra
           INNER JOIN professor tp
           ON th.cod_professor = tp.cod_professor
           INNER JOIN turma tt
           ON tt.cod_professor = tp.cod_professor
           WHERE tp.nome_professor = 'José'
           AND tp.nome_professor = 'Marcos'
           AND th.ano = 2009 OR th.ano = 2010
          ";

$stmt = Connect::getInstance()->prepare($query);
$stmt->execute();
$alunos = (object)$stmt->fetchAll();

foreach ($alunos as $aluno){
    echo
    "RA: {$aluno->RA} </br>
    Aluno: {$aluno->nome}</br>
    ";
}
