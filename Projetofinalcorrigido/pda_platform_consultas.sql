use pda_platform;

select count(id_user) as total_students_major_age from tb_student where id_user 
in (select id_user from tb_user where user_birth_date <= '2005-12-31');
-- consulta a quantidade de alunos moior de idade na plataforma 

select user_birth_date, user_name,
timestampdiff (year, user_birth_date, current_date) as anos from tb_user where id_user in (select id_user from tb_student); 
-- consulta a idade dos alunos baseado na data de nascimento 

select avg((round(datediff(curdate(), u.user_birth_date) / 365.25))) as media_idade_students
from tb_user u inner join tb_student s on s.id_user = u.id_user;
-- consulta a média da idade dos alunos da plataforma 

select count(id_class) as total_students_class_1 from tb_student where id_class = 1;
select count(id_class) as total_students_class_2 from tb_student where id_class = 2;
select count(id_class) as total_students_class_3 from tb_student where id_class = 3;
select count(id_class) as total_students_class_4 from tb_student where id_class = 4;
select count(id_class) as total_students_class_5 from tb_student where id_class = 5;
-- consulta quantidade de alunos em cada turma

select user_name, id_user, user_email from tb_user where id_user in (select id_student from tb_activity where grade <= 7 and module = 'M1');
-- consulta os alunos que tiraram nota igual ou abaixo de 7 no modulo 1 
-- o email é pra confirmar se os dados foram puxados corretamente pela chave extrangeira

select count(id_student) as total_studants_grade from tb_activity where grade <  4 and module = 'M1';
select count(id_student) as total_students_grade from tb_activity where grade >= 4 and (grade < 7) and module = 'M1';
select count(id_student) as total_students_grade from tb_activity where grade >= 7 and (grade < 10) and module = 'M1';
select count(id_student) as total_students_grade from tb_activity where grade = 10 and module = 'M1';
-- consulta para puxar quantos alunos ficaram com nota menor que 4, entre 4 e 6, entre 7 e 9, e igual a 10, no módulo 1