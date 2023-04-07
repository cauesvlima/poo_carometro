<?php
    include_once('../classe/Usuario.class.php');
    $user1= new Usuario();
    $retornouser= $user1-> ListaUserAtivo();
    echo'<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mostra usuário</title>
        <style>
            table, th, td {
              border:1px solid black;
            }
            </style>
    </head>
    <body>
    
        <h2>Usuários ativos</h2>
    
    <table style="width:100%">
      <tr>
        <th>Id</th>
        <th>Nome</th>
        <th>Login</th>
        <th>Senha</th>
        <th>Nível</th>
        <th>Status</th>
      </tr>';
    foreach($retornouser as $user){ /*Repete pela quantidade de usuarios*/
        $iduser = $user[0];
        $nomeuser = $user[1];
        $loginuser = $user[2];
        $senhauser = $user[3];
        $niveluser = $user[4];
        $statususer = $user[5];
        echo '
        
  <tr>
    <td>'.$iduser.'</td>
    <td>'.$nomeuser.'</td>
    <td>'.$loginuser.'</td>
    <td>'.$senhauser.'</td>
    <td>'.$niveluser.'</td>
    <td>'.$statususer.'</td>
  </tr>';
    }
    echo '</table>';
   
?>