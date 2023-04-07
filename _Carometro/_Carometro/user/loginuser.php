<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login usuário</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>


            <div class="col-12 card-body px-5 py-5 row mt-5 ">
                <h1>Login usuário</h1>
                <hr>
                <form action="loginuser.php" method="post" enctype="multipart/form-data">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Digite o login do usuário</label>
    <input type="text" class="form-control" id="exampleInputtext" aria-describedby="emailHelp" name="login">
    <div id="emailHelp" class="form-text"></div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Senha do usuário</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="senha">
  </div>
  
  <button type="submit" class="btn btn-primary" name="enviar">Enviar</button>
  <button type="reset" class="btn btn-primary">Limpar</button>
  <hr>
</form>
</div>
<?php
if(isset($_POST['enviar'])){
include_once('../classe/Usuario.class.php');
$user1= new Usuario();
$logauser= $user1-> loginUser();


/*
$login=$_POST['login'];
$senha=$_POST['senha'];

if($login==$loginuser[0] && $senha==$senhauser[0] || $login==$loginuser[1] && $senha==$senhauser[1] ){
    echo"Login e senha válidos";
}else{
    echo"Login ou senha inválidos";
}*/
}

?>

</body>
</html>


