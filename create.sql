create table Professor(
IDProf int,
Nome VARCHAR(100),
Email VARCHAR(100),
primary key (IDProf)
);
create table Disciplina(
IDDisc int,
Nome VARCHAR(100),
primary key (IDDisc)
);
create table Aluno(
IDAluno int,
RA int,
Nome VARCHAR(100),
Termo int,
Curso VARCHAR(100),
Email VARCHAR(100),
primary key (IDAluno)
);
create table Monitor(
IDMonitor int,
Tipo VARCHAR(50),
Email VARCHAR(100),
primary key (IDMonitor)
);
create table Material(
IDMaterial int,
Nome VARCHAR(100),
Formato VARCHAR(50),
primary key (IDMaterial)
);
create table Monitoria(
IDMonitoria int,
Turno varchar(20),
IDProf int,
IDMonitor int,
IDDisc int,
primary key (IDMonitoria),
foreign key (IDProf) references Professor(IDProf),
foreign key (IDMonitor) references Monitor(IDMonitor),
foreign key (IDDisc) references Disciplina(IDDisc)
);
create table  Remoto(
IDSessaoR int,
link VARCHAR(100),
primary key (IDSessaoR)
);
create table Presencial(
IDSessao int,
Predio VARCHAR(20),
Andar int,
primary key (IDSessao)
);
create table Sala(
IDSala int,
Numero int,
IDSessao int,
primary key (IDSala),
foreign key (IDSessao) references Presencial(IDSessao)
);
create table RelacaoMonitorAlunoSessao(
IDAluno int,
IDMonitoria int,
IDSessao int,
IDSessaoR int,
data date,
horario time,
foreign key (IDAluno) references Aluno(IDAluno),
foreign key (IDMonitoria) references Monitoria(IDMonitoria),
foreign key (IDSessao) references Presencial(IDSessao),
foreign key (IDSessaoR) references Remoto(IDSessaoR)
);
create table RelacaoMonitoriaMaterial(
IDMonitoria int,
IDMaterial int,
foreign key (IDMonitoria) references Monitoria(IDMonitoria),
foreign key (IDMaterial) references Material(IDMaterial)
);
create table RelacaoMonitoriaMonitor(
IDMonitoria int,
IDMonitor int,
Semestre int,
Ano int,
foreign key (IDMonitoria) references Monitoria(IDMonitoria),
foreign key (IDMonitor) references Monitor(IDMonitor)
);
create table RelacaoProfessorDisc(
IDProf int,
IDDisc int,
foreign key (IDProf) references Professor(IDProf),
foreign key (IDDisc) references Disciplina(IDDisc)
);