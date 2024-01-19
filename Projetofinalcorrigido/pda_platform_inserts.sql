use pda_platform;

insert into tb_user
(user_name, user_email,user_birth_date, user_password) values
('Cleber','cleber_pda@gmail.com','1995-10-03','pda1234'),
('Leticia','leticia123@gmail.com','1993-10-03','le123'),
('Rafael','rafa773@gmail.com','1990-10-03','rafa772'),
('Thauna','thatha272@gmail.com','2001-10-03','tata12'),
('Ana','aninha123@gmail.com','1998-10-03','ana543'),
('Roberto','robertin123@gmail.com','2005-10-03','beto12'),
('Ingrid','ingrid2349@gmail.com','2002-10-03','ingrid12'),
('Janine','janine455@gmail.com','2002-10-03','janine24'),
('Elzo','elzo02494@gmail.com','2004-10-03','elzo34i5'),
('Daniel','daniel394@gmail.com','2006-10-03','daniel35'),
('Arthur','arthur123@gmail.com','2003-10-03','arthur34'),
('Gael','gael123@gmail.com','2004-10-03','gael56'),
('Théo','theo123@gmail.com','2001-10-03','theo7890'),
('Heitor','heitor123@gmail.com','2002-10-03','heitor90'),
('Ravi','ravi123@gmail.com','2005-10-03','ravi1234'),
('Amanda', 'nanda123@gmail.com','2005-10-03', 'nanda12'),
('Luíza', 'lulu123@gmail.com','2002-10-03', 'lulu1234'),
('Ian', 'ian123@gmail.com','2006-10-03', 'ian1234'),
('Eduardo', 'edu123@gmail.com','2003-10-03','edu1234'),
('Sofia', 'sofia123@gmail.com','2008-10-03','sofia12'),
('Rafael', 'rafa123@gmail.com','2005-10-03','rafa123'),
('Emília', 'emi123@gmail.com','2007-10-03','emi1234'),
('Helena','helena123@gmail.com','2004-10-03','lena1234'),
('Caroline','carol123@gmail.com','2005-10-03','carol12'),
('Mateus','mateus123@gmail.com','2006-10-03','mateus12'),
('Léo','leo123@gmail.com','2004-10-03','leo1234'),
('Dazy','dazy123@gmail.com','2002-10-03','dazy1234'),
('Ashley','ashy123@gmail.com','2005-10-03','ashy1234'),
('Beatriz','bea123@gmail.com','2000-10-03','bea1234'),
('Daniel','dan32536@gmail.com','1998-10-03','dani1234'),
('Filipe','filipe12@gmail.com','1991-10-03','lipe1234'),
('Catarina','catarina536@gmail.com','2001-10-03','cat12345'),
('Bruna','bruna4u5536@gmail.com','1999-10-03','bru12345');

insert into tb_administrator (adm_role, contract_type, id_user) values
( 'CEO', 'CNPJ',1),
('cordenadora academica', 'pj',2),
('gestor de conhecimento', 'pj',3),
('gestora de conhecimento', 'pj',4),
('gestora do discord', 'pj',5);
insert into tb_class
(class_name,start_date,conclusion_date) values
('turma 1','2020-06-01','2021-05-01'),
('turma 2','2021-06-01','2022-06-01'),
('turma 3','2022-06-01','2023-06-01'),
('turma 4','2023-06-01','2024-06-01'),
('turma 5','2024-06-01','2025-06-01');

insert into tb_student
(student_registration, id_user,id_class)values
('00000111',6,1),
('00000112',7,2),
('00000113',8,3),
('00000114',9,4),
('00000115',10,5),
('00000116',11,1),
('00000117',12,2),
('00000118',13,3),
('00000119',14,4),
('00000120',15,5),
('00000121',16,1),
('00000122',17,2),
('00000123',18,3),
('00000124',19,4),
('00000125',20,5),
('00000126',21,1),
('00000127',22,2),
('00000128',23,3),
('00000129',24,4),
('00000130',25,5),
('00000131',26,1),
('00000132',27,2),
('00000133',28,3);


insert into tb_subject
(workload,subject_name) values
('88:00:00','english' ),
('44:00:00','soft skills'),
('264:00:00','programming'),
('22:00:00','hardware'),
('22:00:00','programming history');

insert into tb_facilitator
(fac_training_area, contract_type, id_class, id_subject,id_user)values
('full stack mobile app developer pl', 'pj',4,3,29),
('full stack developer', 'pj',4,3,30),
('english teacher, english teachers trainer', 'pj',4,1,31),
('educator, ux writer, ux researcher', 'pj',4,1,32),
('psychologist, professional advisor', 'pj', 4,2,33);

insert into tb_activity
(issuance_date, grade,deadline,module,id_facilitator,id_subject, id_student)values
('2024-01-01',10,'2024-02-01','M1',29, 3, 7 ),
( '2024-03-01',9,'2024-04-01','M1',29, 3,11),
('2023-04-01',7,'2023-04-01','M1',29, 3, 24),
('2023-07-01',8,'2023-08-01','M1',29, 3, 20),
('2023-09-01',6,'2023-10-01','M1',31, 1,6),
('2023-11-01',8,'2020-12-01','M1',31, 1, 12),
('2023-01-01',5,'2023-02-01','M1',31, 1,7),
('2023-03-01',10,'2023-04-01','M1',31, 1, 8),
('2023-04-01',5,'2025-05-01','M1',33, 2,9),
('2023-06-01',9,'2023-07-01','M1',33, 2, 10);

insert into tb_channel
(channel_name,channel_theme) values
('introduce yourself', 'presentations'),
('warnings', 'announcements'),
('programming', 'programming class informations'),
('english','english class informations'),
('soft skills', 'soft skills class informations');

insert into tb_message
(body,message_time,id_channel,id_user) values
('Olá tudo bom? ','2023-01-01 12:00:00', 1, 1),
('hoje vai ter kahoot! ','2023-01-01 12:00:00', 2, 5),
('atividade da aula 6 eu não soube responder, alguém me ajuda?','2023-01-01 12:00:00', 3, 12),
('fiz minha atividade de inglês, já entreguei ','2023-01-01 12:00:00', 4, 14),
('muito importante essa dinamica do kamban','2023-01-01 12:00:00', 5, 19);

insert into  tb_video_call
(call_date,call_subject,entry,entry_password,duration,id_host,id_co_host) values
('2023-06-01 16:00:00','aula2 de programação', '1234567890', '123456','02:00:00', 29,30),
('2023-06-02 16:00:00','aula2 de programação', '1234567890', '123456','02:00:00', 29,30),
('2023-06-03 16:00:00','aula2 de programação', '1234567890', '123456','02:00:00', 29,30),
('2023-06-04 16:00:00','aula2 de ingles', '1234567890', '123456','02:00:00', 31,32),
('2023-06-05 16:00:00','aula2 de inglês', '1234567890', '123456','02:00:00', 31,32),
('2023-06-06 16:00:00','aula2 de softskils', '1234567890', '123456','02:00:00',33,33);

insert into video_call_user_connection
(id_video_call, id_user) values
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

insert into user__channel__connection
(id_user, id_channel ) values
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