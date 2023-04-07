<?php
include_once('classe/Aluno.class.php');
$aluno= new Aluno();
$retornoaluno= $aluno->ListaAlunoAtivo();
if($retornoaluno)
{

    foreach($retornoaluno as $aluno){
            $rm = $aluno[0];
            $cpf = $aluno[1];
            $rg = $aluno[2];
            $sobrenome = $aluno[3];
            $nome = $aluno[4];
            
            echo 'RM: '.$rm.' | CPF: '.$cpf.' | RG: '.$rg. ' | Nome completo: '.$nome .' '.$sobrenome. '</br></hr></br>';
    }
}else{
    echo 'Não existe nenhum aluno cadastrado';
}
?>