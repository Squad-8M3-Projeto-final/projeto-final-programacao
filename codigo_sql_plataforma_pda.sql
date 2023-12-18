create database plataforma_PDA;
use plataforma_PDA;

create table administradores(
id_administrador integer not null auto_increment primary key,
nome varchar (45),
idade integer not null,
area varchar (45),
tipo_de_contrato varchar (45),
email varchar (45), 
senha varchar (45)
);

create table turmas (
id_Turma integer auto_increment not null primary key,
nome_da_turma varchar (45),
data_inicio datetime,
data_conclusao datetime
);
/* muddei a carga hoararia pra int*/
create table materias (
id_materia integer auto_increment not null primary key,
carga_horaria int,
nome varchar (45)
);

create table alunos (
id_aluno  integer auto_increment not null primary key,
nome_aluno varchar (45),
email_aluno varchar (45),
idade_aluno varchar (45),
senha_aluno char (8),
matricula_aluno char (8),
turmas_id_Turma INT not null,
foreign key (Turmas_id_Turma) references  Turmas (id_Turma)
);

create table facilitadores (
id_facilitador integer auto_increment not null primary key,
nome_facilitador varchar (45),
idade_facilitador  integer,
area_facilitador  varchar (45),
tipo_de_contrato varchar (45),
email_facilitador  varchar (45),
senha_facilitador  char (8),
turma_id integer not null,
foreign key (turma_id) references turmas(id_turma),
materia_id integer not null,
foreign key (materia_id) references materias(id_materia)
);

create table atividades (
id_atividade integer not null auto_increment primary key,
data_de_emissao datetime,
nota integer,
prazo_de_entrega datetime,
modulo varchar (20),
facilitador_id integer not null,
foreign key (facilitador_id) references facilitadores(id_facilitador),
materia_id integer not null,
foreign key (materia_id) references materias(id_materia),
aluno_id integer, 
foreign key (aluno_id) references alunos(id_aluno)
);

create table usuarios (
usuario_id integer not null auto_increment primary key,
facilitador_id integer,
foreign key (facilitador_id) references facilitadores(id_facilitador),
aluno_id integer ,
foreign key (aluno_id) references alunos(id_aluno),
administrador_id integer ,
foreign key (administrador_id) references administradores(id_administrador)
);

create table canais (
canal_id integer auto_increment not null primary key,
nome_canal varchar (45),
tema_canal text (200)
);

create table mensagens (
id_mensagem integer auto_increment not null primary key,
corpo text (500),
hora timestamp,
id_canal integer not null,
foreign key (id_canal) references canais(canal_id),
id_usuario integer not null,
foreign key(id_usuario) references usuarios(usuario_id)
);

create table video_chamada (
id_video_chamada integer not null auto_increment primary key,
data_video_chamada timestamp,
assunto text (500),
id_entrada char (10),
senha_entrada char (6),
duracao time,
anfitriao varchar (45)
);

create table video_chamada_has_usuarios (
id_video_chamada integer not null,
foreign key (id_video_chamada) references video_chamada (id_video_chamada),
id_usuario integer not null,
foreign key(id_usuario) references usuarios(usuario_id)
);

create table usuarios_has_canais (
id_usuario integer not null,
foreign key(id_usuario) references usuarios(usuario_id),
canal_id integer auto_increment not null,
foreign key (canal_id) references canais(canal_id)
);