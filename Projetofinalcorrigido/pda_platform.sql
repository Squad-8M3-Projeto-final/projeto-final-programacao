create database pda_platform;
use pda_platform;

create table tb_user (
  id_user integer auto_increment primary key,
  user_name varchar(45),
  user_email varchar(60),
  user_birth_date date,
  user_password char (8)
);

create table tb_administrator (
  id_user integer,
  adm_role varchar(45),
  contract_type enum('clt', 'pj', 'cnpj'),
  foreign key (id_user) references tb_user(id_user)
);

create table tb_class (
  id_class integer auto_increment primary key,
  class_name varchar(45),
  start_date date,
  conclusion_date date
);

create table tb_subject (
  id_subject integer auto_increment primary key,
  workload time,
  subject_name enum('programming', 'english', 'soft skills', 'hardware','programming history')
);

create table tb_student (
  id_user integer,
  student_registration char(8),
  id_class integer,
  foreign key (id_user) references tb_user(id_user),
  foreign key (id_class) references tb_class(id_class)
);

create table tb_facilitator (
  id_user integer,
  fac_training_area varchar(45),
  contract_type enum ('clt','pj','cnpj'),
  id_class integer,
  id_subject integer,
  foreign key (id_user) references tb_user(id_user),
  foreign key (id_class) references tb_class(id_class),
  foreign key (id_subject) references tb_subject(id_subject)
);

create table tb_activity (
  id_activity integer auto_increment primary key,
  issuance_date date,
  grade integer,
  deadline date,
  module char(2),
  id_facilitator integer,
  id_subject integer,
  id_student integer,
  foreign key (id_facilitator) references tb_facilitator(id_user),
  foreign key (id_subject) references tb_subject(id_subject),
  foreign key (id_student) references tb_student(id_user)
);

create table tb_channel (
  id_channel integer auto_increment primary key,
  channel_name varchar(45),
  channel_theme text(200)
);

create table tb_message (
  id_message integer auto_increment primary key,
  body text(500),
  message_time timestamp,
  id_channel integer,
  id_user integer,
  foreign key (id_channel) references tb_channel(id_channel),
  foreign key (id_user) references tb_user(id_user)
);

create table tb_video_call (
  id_video_call integer auto_increment primary key,
  call_date timestamp,
  call_subject varchar(250),
  entry char(10),
  entry_password char(6),
  duration time,
  id_host integer,
  id_co_host integer,
  foreign key (id_host) references tb_user(id_user),
  foreign key (id_co_host) references tb_user(id_user)
);

create table video_call_user_connection (
  id_video_call integer,
  foreign key (id_video_call) references tb_video_call(id_video_call),
  id_user integer,
  foreign key (id_user) references tb_user(id_user)
);

create table user__channel__connection (
  id_user integer,
  foreign key (id_user) references tb_user(id_user),
  id_channel integer,
  foreign key (id_channel) references tb_channel(id_channel)
);