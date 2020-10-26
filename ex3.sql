use bd_funcionarios;

create table tb_alunoEscola(

id bigint auto_increment,
Nome varchar(255),
RA bigint,
Mae varchar(255),
Nota bigint,
Curso varchar(255),
Periodo varchar(255),
sala int,
primary key(id)
);

insert into tb_alunoEscola(nome, RA, Mae, Nota, Curso, Periodo, Sala) 
values ("Ricardo", 182, "Maria", 8, "Mecatronica", "Tarde", 1);
insert into tb_alunoEscola(nome, RA, Mae, Nota, Curso, Periodo, Sala)
values ("Carla", 183, "Joaquina", 10, "Enfermagem", "Manha", 2);
insert into tb_alunoEscola(nome, RA, Mae, Nota, Curso, Periodo, Sala)
values ("Rodrigo", 184, "Paula", 3, "Enfermagem", "Manha", 2);
insert into tb_alunoEscola(nome, RA, Mae, Nota, Curso, Periodo, Sala)
values ("Maura", 185, "Maria", 6, "Enfermagem", "Manha", 2);
insert into tb_alunoEscola(nome, RA, Mae, Nota, Curso, Periodo, Sala)
values ("Antony", 186, "Joana", 9, "Enfermagem", "Tarde", 1);

select *, Nota >= 7,Nota < 7 from tb_alunoEscola;

update tb_alunoEscola
set curso = ("Fisiologia")
where id = 4;
