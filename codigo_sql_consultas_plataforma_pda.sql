use plataforma_pda;

select count(idade_aluno) as total_alunos_maior_idade from alunos where idade_aluno >= 18;
-- consulta a quantidade de alunos moior de idade na plataforma 

select sum(idade_aluno) / count(id_aluno) as media_idade_alunos from alunos;
-- consulta a média da idade dos alunos da plataforma

select count(turmas_id_turma) as total_alunos_turma_1 from alunos where turmas_id_turma = 1;
select count(turmas_id_turma) as total_alunos_turma_2 from alunos where turmas_id_turma = 2;
select count(turmas_id_turma) as total_alunos_turma_3 from alunos where turmas_id_turma = 3;
select count(turmas_id_turma) as total_alunos_turma_4 from alunos where turmas_id_turma = 4;
select count(turmas_id_turma) as total_alunos_turma_5 from alunos where turmas_id_turma = 5;
-- consulta quantidade de alunos em cada turma

select nome_aluno from alunos where id_aluno in (select aluno_id from atividades where atividades.nota <= 7 and atividades.modulo = 'M1');
-- consulta para puxar o nome dos alunos que tiraram nota igual ou abaixo de 7 no modulo 1 

select count(aluno_id) as total_alunos_nota_4 from atividades where nota <  4 and modulo = 'M1';
select count(aluno_id) as total_alunos_nota_4 from atividades where nota >= 4 and (nota < 7) and modulo = 'M1';
select count(aluno_id) as total_alunos_nota_4 from atividades where nota >= 7 and (nota < 10) and modulo = 'M1';
select count(aluno_id) as total_alunos_nota_4 from atividades where nota = 10 and modulo = 'M1';
-- consulta para puxar quantos alunos ficaram com nota menor que 4, entre 4 e 6, entre 7 e 9, e igual a 10, no módulo 1