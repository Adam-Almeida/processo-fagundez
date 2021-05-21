# 

![](https://github.com/Adam-Almeida/estrutura-de-dados-II/blob/master/ADAMPERSONALGIT.png)

# 2021 - Processo- FAGUNDEZ
Repositório criado para versionamento dos arquivos utilizados no processo da FAGUNDEZ 2021 - A cópia de total ou parcial para utilização comercial não está aberta até que o processo seja finalizado.

Utilize o código apenas como estudo e base para o seu aprendizado.

> Atividades a serem realizadas.
> 
> - RESPOSTA DE QUESTINONÁRIO
> - LÓGICA DE PROGRAMAÇÃO
> - MATERIAL ESPECIFICO RELACIONADO A PHP
> - LÓGICA BÁSICA
> - LÓGICA MATEMÁTICA

> Atividades adicionais, que foram opção do avaliado.
> 
> - REPOSITÓRIO GIT
> - DESENVOLVIMENTO DE BANCO DE DADOS SEGUINDO MODELO DER DISCRIMINADO NA QUESTÃO
> - AMBIENTE LOCAL COM AS BUSCAS APRESENTADAS


## Sobre a Stack

> - PHP 7.4^
> - SQL

## Dependências

> - Composer
> - PHP 7.4^

## Ambiente Local

Editar as linhas do arquivo de acordo com o seu ambiente

:: DADOS DE CONFIGURAÇÃO DO BANCO DE DADOS ::

> Localização do arquivo :: source/Boot/<strong> Config.php </strong>
> 
> Importar o arquivo de banco de dados :: <strong> processo-fagundez.sql</strong>

```sh

define("CONF_DB_HOST", "localhost");
define("CONF_DB_USER", "root");
define("CONF_DB_PASS", "root");
define("CONF_DB_NAME", "processo-fagundez");

```

:: DADOS REFERENTE A URL PADRÃO DA APP ::

> Localização do arquivo :: source/Boot/<strong>Config.php</strong>

```sh

define("ROOT", "http://localhost:8080/processo-fagundez");

```
## Arquivo composer.json

> Localização do arquivo :: <strong>composer.json</strong>
> 
Deve ser realizado a atualização para que seja criado o autoload do projeto



