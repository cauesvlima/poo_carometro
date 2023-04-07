<?php
    class Aluno{

    private $rm;
    private $cpf;
    private $rg;
    private $sobrenome;
    private $nome;
    private $nacionalidade;
    private $dtnasc;
    private $sexo;
    private $foto;
    private $responsavel;
    private $celularresp;
    private $logradouro;
    private $nomelog;
    private $numero;
    private $bairro;
    private $cidade;
    private $cep ;
    private $uf;
    private $pais;
    private $complemento;
    private $fonefixo;
    private $celular;
    private $email;
    private $statusalu;


    public function IniciaObj($rm, $cpf, $rg, $sobrenome, $nome, $nacionalidade, $dtnasc, $sexo, $foto, $responsavel, $celularresp, $logradouro,
     $nomelog, $numero, $bairro, $cidade, $cep , $uf, $pais, $complemento,
      $fonefixo, $celular, $email, $statusalu)
    {
        $this->rm =             $rm;
        $this->cpf =            $cpf;
        $this->rg =             $rg;
        $this->sobrenome=       $sobrenome;
        $this->nome =           $nome;
        $this->nacionalidade=   $nacionalidade;
        $this->dtnasc =         $dtnasc;
        $this->sexo =           $sexo;
        $this->foto =           $foto;
        $this->responsavel =    $responsavel;
        $this->celularresp =    $celularresp;
        $this->logradouro =     $logradouro;
        $this->nomelog =        $nomelog;
        $this->numero =         $numero;
        $this->bairro =         $bairro;
        $this->cidade =         $cidade;
        $this->cep  =           $cep;
        $this->uf =             $uf;
        $this->pais =           $pais;
        $this->complemento =    $complemento;
        $this->fonefixo =       $fonefixo;
        $this->celular =        $celular;
        $this->email =          $email;
        $this->statusalu =      $statusalu;

    }

    public function MostraObj(){
        echo '<br>'.$this->rm;
        echo '<br>'.$this->cpf;
        echo '<br>'.$this->rg;
        echo '<br>'.$this->sobrenome;
        echo '<br>'.$this->nome;
        echo '<br>'.$this->nacionalidade;
        echo '<br>'.$this->dtnasc;
        echo '<br>'.$this->sexo;
        echo '<br>'.$this->foto;
        echo '<br>'.$this->responsavel;
        echo '<br>'.$this->celularresp;
        echo '<br>'.$this->logradouro;
        echo '<br>'.$this->nomelog;
        echo '<br>'.$this->numero;
        echo '<br>'.$this->bairro;
        echo '<br>'.$this->cidade;
        echo '<br>'.$this->cep;
        echo '<br>'.$this->uf;
        echo '<br>'.$this->pais;
        echo '<br>'.$this->complemento;
        echo '<br>'.$this->fonefixo;
        echo '<br>'.$this->celular;
        echo '<br>'.$this->email;
        echo '<br>'.$this->statusalu;
    }
    
    public function IniciaObj2($rm, $cpf, $rg, $sobrenome, $nome)
    {
        $this->rm =             $rm;
        $this->cpf =            $cpf;
        $this->rg =             $rg;
        $this->sobrenome=       $sobrenome;
        $this->nome =           $nome;
    }

    public function MostraObj2(){
        echo  $this->rm;
        echo '<br>'.$this->cpf;
        echo '<br>'.$this->rg;
        echo '<br>'.$this->sobrenome;
        echo '<br>'.$this->nome;
    }

    public function ListaAlunoAtivo()
    {
        include_once('BancoDados.class.php');
        $consultaalunos= new BancoDados();
        $sql = "CALL p_consultaAlunoAtivo()";
        $list =$consultaalunos->ConsultaDados($sql);
        if($list)
        {
            return $list;
        }else
        {
            return false;
        }
}
}
?>

