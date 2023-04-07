<?php
    class BancoDados{

    private $servidor;
	private $usuario;
	private $senha;
	private $banco;
	public $con;
    public $comando;

    public function Conecta()
    {
        $conexao = parse_ini_file('configuracao/carometro.ini');
        $this->servidor = $conexao ['servidor'];
        $this->banco = $conexao ['banco'];
        $this->usuario = $conexao ['usuario'];
        $this->senha = $conexao ['senha'];

        $this->con =@mysqli_connect ($this->servidor, $this->usuario, $this->senha, $this->banco);
        
    
        if(!$this->con){
            die ("Problemas com a conexão, contate o administrador!");
        } else{
            mysqli_query($this->con, "SET NAMES 'utf8'");
            mysqli_query($this->con, 'SET character_set_connection=utf8');
            mysqli_query($this->con, 'SET character_set_client=utf8');
            mysqli_query($this->con, 'SET character_set_results=utf8');
        }
    }
    public function Fecha(){
        mysqli_close($this->con);
        return;
    }

    public function ConsultaDados($sqlconsulta){
        $this->comando = $sqlconsulta;
        $this->Conecta();
        $result = mysqli_query($this->con, $this->comando); //Submeter a consulta no banco
        if(mysqli_num_rows($result))//Realização da consulta- verifica se hove algum retorno
        {
            $list= mysqli_fetch_all($result);//mysqli_fetch_all retorna o $result e atribui na variavel $list
            return $list;
        }
        $this->Fecha();
    }

    public function InsereDados($sqlinsere)
    {
        $this->comando= $sqlinsere;
        $this->Conecta();
        $result = mysqli_query($this->con, $this->comando);
        if($result){
            return TRUE;
        } else
        {
            return FALSE;
        }
        $this->Fecha();
    }
}


?>