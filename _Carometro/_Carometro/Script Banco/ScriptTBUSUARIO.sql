CREATE TABLE `tb_usuario` (
  IdUser 	tinyint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NomeUser 	varchar(30) NOT NULL,
  LoginUser varchar(15) NOT NULL,
  SenhaUser varchar(8) NOT NULL,
  NivelUser char(2) NOT NULL, /*Vai indicar a acesso do usuario...*/
  StatusUser char(1) NOT NULL DEFAULT '0' /*O ZARO É O USUARIO ATIVO...*/
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_usuario` (`IdUser`,`NomeUser`,`LoginUser`,`SenhaUser`,`NivelUser`,`StatusUser`) VALUES
(1, 'Cauê S. Lima', 'cauesvlima', 'teste01@', '0', '0'),
(2, 'Heloísa S. Lima', 'heloslima', 'teste02@', '1', '0');

DELIMITER $$ /*PARA EXECUTAR APROCEDURE, O DELIMITADOR É $$*/
CREATE PROCEDURE p_consultaUserAtivo() NO SQL/*NO SQL SIGNIFICA QUE DENTRO DO PARETESES NÃO TEM PARAMETRO*/
BEGIN
    SELECT * FROM tb_usuario WHERE StatusUser=0 ORDER BY NomeUser;
END$$
DELIMITER;

DELIMITER $$ /*PARA EXECUTAR APROCEDURE, O DELIMITADOR É $$*/
CREATE PROCEDURE p_consultaLogaUser(IN p_LoginUser) NO SQL/*NO SQL SIGNIFICA QUE DENTRO DO PARETESES NÃO TEM PARAMETRO*/
BEGIN
    SELECT IdUser, LoginUser, SenhaUser, NivelUser, NomeUser FROM tb_usuario 
    WHERE LoginUser=p_LoginUser
    AND SenhaUser= p_SenhaUser 
    AND StatusUser = 0;
END$$
DELIMITER;

TESTES 
CALL p_insereUser(p_NomeUser,p_LoginUser, p_SenhaUser, p_NivelUser, p_StatusUser)
CALL p_insereUser('Lucas Lima', 'manito', 'teste@3', '1', '0')

DELIMITER $$
CREATE PROCEDURE p_insereUser (IN p_NomeUser varchar(30),
        IN p_LoginUser varchar(15),
        IN p_SenhaUser varchar(8),
        IN p_NivelUser char(2),
        IN p_StatusUser char(1))
BEGIN
    INSERT INTO tb_usuario(NomeUser,
            LoginUser,
            SenhaUser,
            NivelUser,
            StatusUser)
    VALUES(p_NomeUser,
        p_LoginUser,
        p_SenhaUser,
        p_NivelUser,
        p_StatusUser);

END$$
DELIMITER ;