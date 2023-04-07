<?php
    class Usuario
    {
        private $iduser;
        private $nomeuser;
        private $loginuser;
        private $senhauser;
        private $niveluser;
        private $statususer;

    

    public function IniciaObj($iduser, $nomeuser, $loginuser, $senhauser,$niveluser,$statususer )
    {
        $this->iduser =         $iduser;
        $this->nomeuser =       $nomeuser;
        $this->loginuser =      $loginuser;
        $this->senhauser =      $senhauser;
        $this->niveluser =      $niveluser;
        $this->statususer =     $statususer;
        
    }

    public function MostraObj(){
        echo $this->        iduser;
        echo '<br>'.$this-> nomeuser;
        echo '<br>'.$this-> loginuser;
        echo '<br>'.$this-> senhauser;
        echo '<br>'.$this-> niveluser;
        echo '<br>'.$this-> statususer;
    }

    public function ListaUserAtivo()
    {
        include_once('BancoDados.class.php');
        $consultauser= new BancoDados();
        $sql = "CALL p_consultaUserAtivo()";
        $list =$consultauser->ConsultaDados($sql);
        if($list)
        {
            return $list;
        }else
        {
            return false;
        }
    }


    public function insereUser(){
        include_once('BancoDados.class.php');
        $novouser=new BancoDados();
        $sql = "CALL p_insereUser(
            $this->nomeuser;
            $this->loginuser;
            $this->senhauser;
            $this->niveluser;
            $this->statususer)";
    }

    public function loginUser(){
        include_once('BancoDados.class.php');
        $logauser= new BancoDados();
        $sql= "p_consultaLogaUser(
            $this->loginuser;
            $this->senhauser)";
    }
    }
?>