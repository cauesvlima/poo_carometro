<?php
    include_once('classe/Usuario.class.php');
    /*$iduser=1;
    $nomeuser='Caue S. Lima';
    $loginuser='cauesvlima';
    $senhauser='teste01@';
    $niveluser='0';
    $statususer='0';*/


    /*$user= new Usuario();
    $user->IniciaObj($iduser, $nomeuser, $loginuser, $senhauser,$niveluser,$statususer);
    $user->MostraObj();*/

    $user1= new Usuario();
    $retornouser= $user1-> ListaUserAtivo();
    foreach($retornouser as $user){ /*Repete pela quantidade de usuarios*/
        $iduser = $user[0];
        $nomeuser = $user[1];
        $loginuser = $user[2];
        $senhauser = $user[3];
        $niveluser = $user[4];
        $statususer = $user[5];
        echo 'Código: '.$iduser.' | Nome do usuário: '.$nomeuser.'</br>';
    }
   
?>