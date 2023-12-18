use plataforma_pda;

insert into administradores
(nome,idade,area,tipo_de_contrato,email,senha) values
('Cleber', 28, 'CEO', 'CNPJ', 'cleber_pda@gmail.com', 'pda1234'),
('Leticia', 30, 'cordenadora academica', 'PJ', 'leticia123@gmail.com', 'leticia123'),
('Rafael', 33, 'gestor de conhecimento', 'PJ', 'rafa773@gmail.com', 'rafa772'),
('Thauna', 22, 'gestora de conhecimento', 'PJ', 'thatha272@gmail.com', 'programadores');
insert into administradores 
(nome,idade,area,tipo_de_contrato,email,senha) values
('Ana', 25, 'gestora do discord', 'PJ', 'aninha123@gmail.com','ana543');

insert into turmas
(nome_da_turma,data_inicio,data_conclusao) values
('turma 1', '2020-06-01 12:00:00', '2021-05-01 12:00:00'),
('turma 2', '2021-06-01 12:00:00','2022-06-01 12:00:00'),
('turma 3', '2022-06-01 12:00:00','2023-06-01 12:00:00'),
('turma 4', '2023-06-01 12:00:00','2024-06-01 12:00:00'),
('turma 5','2024-06-01 12:00:00','2025-06-01 12:00:00');

insert into materias 
(carga_horaria,nome) values
( 2,'inglês' ),
(2,'soft skills'),
(4,'programação');
insert into materias 
(carga_horaria,nome) values
(3,'hardware'),
(2, 'história da programação');

insert into alunos
(nome_aluno,email_aluno,idade_aluno,senha_aluno,matricula_aluno,turmas_id_Turma)values
('Roberto', 'robertin123@gmail.com', 18, 'beto12', '00000111',4),
('Ingrid', 'ingrid2349@gmail.com', 21, 'ingrid12', '00000112', 4),
('Janine', 'janine455@gmail.com', 21, 'janine24', '00000113',4),
('Elzo', 'elzo02494@gmail.com', 19, 'elzo34i5', '00000114', 4),
('Daniel', 'daniel394@gmail.com', 17, 'daniel35', '00000115',4),
('Arthur', 'arthur123@gmail.com', 20, 'arthur34', '00000112', 1),
('Gael', 'gael123@gmail.com', 19, 'gael56', '00000113', 2),
('Théo', 'theo123@gmail.com', 22, 'theo7890', '00000114', 3),
('Heitor', 'heitor123@gmail.com', 21, 'heitor90', '00000115', 4),
('Ravi', 'ravi123@gmail.com', 18, 'ravi1234', '00000116', 1);
insert into alunos 
(nome_aluno,email_aluno,idade_aluno,senha_aluno,matricula_aluno,turmas_id_Turma)values
('Amanda', 'nanda123@gmail.com', 18, 'nanda12', '00000117', 1),
('Luíza', 'lulu123@gmail.com', 21, 'lulu1234', '00000118', 1),
('Ian', 'ian123@gmail.com', 17, 'ian1234', '00000119', 1),
('Eduardo', 'edu123@gmail.com', 20, 'edu1234', '00000120', 1),

('Sofia', 'sofia123@gmail.com', 15, 'sofia12', '00000121', 2),
('Rafael', 'rafa123@gmail.com', 18, 'rafa123', '00000122', 2),
('Emília', 'emi123@gmail.com', 16, 'emi1234', '00000123', 2),

('Helena', 'helena123@gmail.com', 19, 'lena1234', '00000124', 3),
('Caroline', 'carol123@gmail.com', 18, 'carol12', '00000125', 3),

('Mateus', 'mateus123@gmail.com', 17, 'mateus12', '00000126', 5),
('Léo', 'leo123@gmail.com', 19, 'leo1234', '00000127', 5),
('Dazy', 'dazy123@gmail.com', 21, 'dazy1234', '00000128', 5),
('Ashley', 'ashy123@gmail.com', 18, 'ashy1234', '00000129', 5)
;

insert into facilitadores 
(nome_facilitador,idade_facilitador,area_facilitador,tipo_de_contrato,email_facilitador,senha_facilitador,turma_id,materia_id )values
('Beatriz', 23, 'Pogrmação', 'PJ', 'bea@gmail.com', 'beeeaa12',4,3),
('Daniel', 25, 'Programação', 'PJ', 'dan32536@gmail.com', 'dani1234',4,3),
('Filipe', 32, 'Lingua-inglesa', 'PJ', 'filipe12@gmail.com', 'lipe1234',4,1),
('Catarina', 22, 'Lingua-inglesa', 'PJ', 'catarina536@gmail.com', 'cat12345',4,1),
('Iasmim', 24, 'soft skills', 'PJ', 'iasmim4u5536@gmail.com', 'ias12345',4,2);

insert into atividades
(data_de_emissao, nota,prazo_de_entrega,modulo,facilitador_id ,materia_id, aluno_id)values
('2024-01-01 12:00:00',10,'2024-02-01 12:00:00','M1',1, 3, 1 ),
( '2024-03-01 12:00:00',9,'2024-04-01 12:00:00','M1',1, 3,2),
('2023-04-01 12:00:00',7,'2023-04-01 12:00:00','M1',2, 3, 3),
('2023-07-01 12:00:00',8,'2023-08-01 12:00:00','M1',2, 3, 4),
('2023-09-01 12:00:00',6,'2023-10-01 12:00:00','M1',3, 1,5),
('2023-11-01 12:00:00',8,'2020-12-01 12:00:00','M1',3, 1, 6),
('2023-01-01 12:00:00',5,'2023-02-01 12:00:00','M1',4, 1,7),
('2023-03-01 12:00:00',10,'2023-04-01 12:00:00','M1',4, 1, 8),
('2023-04-01 12:00:00',5,'2025-05-01 12:00:00','M1',5, 2,9),
('2023-06-01 12:00:00',9,'2023-07-01 12:00:00','M1',5, 2, 10);

insert into usuarios
(facilitador_id,aluno_id,administrador_id ) values
(null,null,1),
(null,null,2),
(null,null,3),
(null,null,4),
(1,null, null),
(2,null, null),
(3,null, null),
(4,null, null),
(5,null, null),
(null,1,null),
(null,2,null),
(null,3,null),
(null,4,null),
(null,5,null),
(null,6,null),
(null,7, null),
(null,8, null),
(null,9, null),
(null,10, null);

insert into canais
(nome_canal,tema_canal) values
('hora de falar', 'apresentação'),
('Fique atento', 'Avisos'),
('progamaçao', 'atividades de progamação'),
('inglês','english homework'),
( 'softskils', 'atividades de softskils');
insert into mensagens
(corpo,hora,id_canal,id_usuario) values
('Olá tudo bom? ','2023-01-01 12:00:00', 1, 1),
('hoje vai ter cahoot ','2023-01-01 12:00:00', 2, 5),
('atividade da aula 6 eu não soube repoder alguém me ajuda','2023-01-01 12:00:00', 3, 12),
('fiz minha atividade de  ','2023-01-01 12:00:00', 4, 14),
('muito importante essa dinamica do kamban','2023-01-01 12:00:00', 5, 19);

insert into  video_chamada
(data_video_chamada,assunto,id_entrada,senha_entrada,duracao,anfitriao) values
('2023-06-01 16:00:00','aula2 de programação', '1234567890', '123456','2:00:00', 'bia' ),
('2023-06-02 16:00:00','aula2 de programação', '1234567890', '123456','2:00:00', 'bia'),
('2023-06-03 16:00:00','aula2 de programação', '1234567890', '123456','2:00:00', 'bia'),
('2023-06-04 16:00:00','aula2 de ingles', '1234567890', '123456','2:00:00', 'felipe'),
('2023-06-05 16:00:00','aula2 de inglês', '1234567890', '123456','2:00:00', 'felipe'),
('2023-06-06 16:00:00','aula2 de softskils', '1234567890', '123456','2:00:00', 'iasmim');

insert into video_chamada_has_usuarios
(id_video_chamada, id_usuario) values
(1,6),
(1,10),
(1,11),
(1,12),
(1,13),
(1,14),
(1,15),
(1,16),
(1,17),
(1,18),
(1,19);
insert into usuarios_has_canais
(id_usuario, canal_id ) values
(6, 1),
(10, 1),
(11, 1),
(12, 2),
(13, 2),
(14, 3),
(15, 3),
(16, 4),
(17, 4),
(18, 5),
(19, 5);




