--DQL Consulta 
USE SPMedicalGroupM;

--quantidade de usuários
SELECT COUNT (Email)
FROM Usuarios;

SELECT CRM, Nome, Usuarios.Email, Especializacao.Titulo as Especialidade, Clinica.NomeFantasia, Clinica.CNPJ, Clinica.RazaoSocial, Enderecos.Rua, Enderecos.Numero, Enderecos.CEP
FROM Medicos
INNER JOIN Usuarios ON Medicos.ID_Usuario = Usuarios.ID_Usuario
INNER JOIN Especializacao ON Medicos.ID_Especializacao = Especializacao.ID_Especializacao
INNER JOIN Clinica ON Medicos.ID_Clinica = Clinica.ID_Clinica
INNER JOIN Enderecos ON Clinica.ID_Endereco = Enderecos.ID_Endereco;

SELECT Nome, Email, DataNacimento, Telefone, RG, CPF, Enderecos.Rua, Enderecos.Numero, Enderecos.Cidade, Enderecos.Estado, Enderecos.CEP
FROM Prontuarios
INNER JOIN Usuarios ON Prontuarios.ID_Usuario = Usuarios.ID_Usuario
INNER JOIN Enderecos ON Prontuarios.ID_Endereco = Enderecos.ID_Endereco;

SELECT * FROM Especializacao;
SELECT * FROM TipoUsuario;
SELECT * FROM Enderecos;
SELECT * FROM Situacao;
SELECT * FROM Clinica;
SELECT * FROM Usuarios;
SELECT * FROM Prontuarios;
SELECT * FROM Medicos;
SELECT * FROM Consulta;

--Select medicos
SELECT CRM, Nome, Usuarios.Email, Especializacao.Titulo as Especialidade, Clinica.NomeFantasia, Clinica.CNPJ, Clinica.RazaoSocial, Enderecos.Rua, Enderecos.Numero, Enderecos.CEP
FROM Medicos
INNER JOIN Usuarios ON Medicos.ID_Usuario = Usuarios.ID_Usuario
INNER JOIN Especializacao ON Medicos.ID_Especializacao = Especializacao.ID_Especializacao
INNER JOIN Clinica ON Medicos.ID_Clinica = Clinica.ID_Clinica
INNER JOIN Enderecos ON Clinica.ID_Endereco = Enderecos.ID_Endereco;

--Select usuarios
SELECT Email, Senha, TipoUsuario.Titulo as TipoUsuario
FROM Usuarios
INNER JOIN TipoUsuario ON Usuarios.ID_TipoUsuario = TipoUsuario.ID_TipoUsuario;

--quantidade de usuários (requisito vermelho)
SELECT COUNT (ID_Usuario) FROM Usuarios;

--Select consulta (requisito vermelho)
SELECT Prontuarios.Nome as Prontuario, Prontuarios.RG, Medicos.Nome as Medico, Especializacao.Titulo as Especializacao, Clinica.NomeFantasia, Clinica.RazaoSocial,
DataConsulta, Descricao, Situacao.Titulo as Situacao, Enderecos.Rua, Enderecos.Numero, Enderecos.CEP
FROM Consulta
INNER JOIN Prontuarios ON Consulta.ID_Prontuario = Prontuarios.ID_Prontuario
INNER JOIN Medicos ON Consulta.ID_Medico = Medicos.ID_Medico
INNER JOIN Especializacao ON Medicos.ID_Especializacao = Especializacao.ID_Especializacao
INNER JOIN Clinica ON Medicos.ID_Clinica = Clinica.ID_Clinica
INNER JOIN Enderecos ON Clinica.ID_Endereco = Enderecos.ID_Endereco
INNER JOIN Situacao ON Consulta.ID_Situacao = Situacao.ID_Situacao;

