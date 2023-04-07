<?php
include_once('Aluno.class.php');
$aluno= new Aluno();
$aluno->IniciaObj2('400.289','123.456.789-08', '12 345 678-9', 'Lima', 'Cauê');
$aluno->MostraObj2();
?>