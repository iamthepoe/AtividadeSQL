/* Usuario */

INSERT INTO usuario (nome, email, senha) VALUES ('Luca Poe', 'lucapoe@almeida.com', 'transcendentalboy2006'); /*Se cadastrar*/
SELECT * FROM usuario WHERE (email='lucapoe@almeida.com' and senha = 'transcendentalboy2006'); /*Login*/
(SELECT COUNT(*) FROM usuario WHERE email = 'lucapoe@almeida.com' > 0); /*Verificar se o email está cadastrado*/
UPDATE usuario SET senha = "aristotle1000" WHERE cd=1; /*Trocar senha*/
DELETE FROM usuario WHERE cd=1; /*Excluir conta*/

/*Categoria*/

SELECT * FROM categoria;

/*Jogo*/

INSERT INTO jogo (nome, id_usuario, id_categoria) VALUES("Luca Poe", x, x); /*Cadastrar jogo*/
SELECT * FROM jogo WHERE id_usuario = x; /*Listar jogos de um usuário*/
SELECT * FROM jogo WHERE id_categoria = x; /*Listar jogos de uma categoria*/
UPDATE jogo SET nome = "Jogo 1" WHERE cd=1; /*Editar jogo*/ 

/*Pergunta*/

INSERT INTO pergunta (nome, id_jogo) VALUES("AAA", x); /*Cadastro de pergunta*/
SELECT * FROM pergunta WHERE id_jogo = x; /*Listar todas as perguntas de um jogo*/
UPDATE pergunta SET nome = "BBB" WHERE cd=1; /*Editar pergunta*/ 
DELETE FROM pergunta WHERE cd=1; /*Excluir pergunta*/


/*Alternativa*/

INSERT INTO alternativa (texto, resposta, id_pergunta) VALUES("AAA", false, x); /*cadastro de alternativa*/
INSERT INTO alternativa (texto, resposta, id_pergunta) VALUES("BBB", true, x);
INSERT INTO alternativa (texto, resposta, id_pergunta) VALUES("CCC", false, x);
SELECT * FROM alternativa WHERE id_pergunta = x; /*todas as alternativas de uma pergunta*/
UPDATE alternativa SET texto = "AAAA" WHERE cd=1; /*Editar alternativa*/ 
DELETE FROM alternativa WHERE cd=1; /*Excluir alternativa*/

/*Ponto*/

INSERT INTO ponto (id_usuario, id_jogo, total) VALUES (x,x, 10); /*Cadastro*/
SELECT id_usuario FROM ponto WHERE total>0; /*Listar todos os usuários que ja jogaram um jogo*/
SELECT id_usuario FROM ponto WHERE Max(total); /*Usuário que teve maior número de acertos*/
(SELECT COUNT(*) FROM ponto WHERE total>0); /*Total de jogadores que já jogaram um jogo*/
