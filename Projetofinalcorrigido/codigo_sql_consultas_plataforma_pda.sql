use plataforma_pda;
select * from pda_platform.tb_student;
/*união de chave id_user e estudante e turma */
select u.*, c.id_class, c.class_name, s.student_registration, s.id_user
from
    tb_user u
    inner join tb_student s on u.id_user = s.id_user
    inner join tb_class c on s.id_class = c.id_class;

/*média das idades dos alunos*/
use pda_platform;
select
    avg((round(datediff(curdate(), u.user_birth_date) / 365.25))) as media_idade_studants
from
    tb_user u
    inner join tb_student s on s.id_user = u.id_user;

 /*idade dos alunos*/
use pda_platform;
select
    u.id_user,
    u.user_name,
	u.user_birth_date,
    s.student_registration,
    datediff(curdate(), u.user_birth_date) as idade_em_dias,
    round(datediff(curdate(), u.user_birth_date) / 365.25) as idade_studant 
from
    tb_user u
    inner join tb_student s on s.id_user = u.id_user
limit 0, 28;

/*alunos  maior que 18*/
select
    count(*) as total_alunos_maior_que_18
from
    tb_user u
    inner join tb_student s on s.id_user = u.id_user
where
    datediff(curdate(), u.user_birth_date) / 365.25 > 18;

/*quantos alunos tem cada tuma*/
select 
count(*) as total_alunos_turma
from
   tb_user u
    inner join tb_student s on u.id_user = s.id_user
    inner join tb_class c on s.id_class = c.id_class
where
/* aqui escolhe a turma*/
c.class_name = 'turma 2';
select
count(*) as total_alunos_nota
from
   tb_user
    inner join tb_student s on tb_user.id_user = s.id_user
    inner join  tb_activity a on s.id_user = a.id_student
where
/* aqui escolhe a nota*/
a.grade <= 6;
