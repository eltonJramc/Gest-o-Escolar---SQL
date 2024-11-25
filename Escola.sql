CREATE TABLE Alunos (
  ID_Aluno INT PRIMARY KEY,
  Nome_Aluno VARCHAR (100),
  Data_Nascimento_Aluno DATE,
  Gênero_Aluno VARCHAR (100),
  Endereco_Aluno VARCHAR (150),
  Telefone_Aluno VARCHAR (20)
  Email_Aluno VARCHAR (255)
  );
  
  CREATE TABLE Professores (
   ID_Professor INT PRIMARY KEY,
   Nome_Professor VARCHAR (100),
   Data_Nascimento_Professor DATE,
   Gênero_Professor VARCHAR (100),
   Telefone_Professor VARCHAR (20)
   Email_Professor VARCHAR (255)
  );
  
  CREATE TABLE Disciplinas (
   ID_Disciplina INT PRIMARY KEY,
   Nome_Disciplina VARCHAR (255),
   Descricao_Desciplina TEXT,
   Carga_Horária_Disciplina INT,
   id_professor INT,
   FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
  );
  
  CREATE TABLE Turmas (
  ID_Turma INT PRIMARY KEY,
  Nome_Turma VARCHAR (100),
  Ano_Letivo INT,
  id_professor INT,
  FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
  );

CREATE TABLE Turmas_Disciplinas (
  id_turma INT,
  id_disciplina INT,
  PRIMARY KEY (id_disciplina, id_turma),
  FOREIGN KEY (id_turma) REFERENCES Turmas (id_turma),
  FOREIGN KEY (id_disciplina) REFERENCES Disciplinas (id_disciplina)
);

CREATE TABLE Turmas_Alunos (
  id_turma INT,
  id_aluno INT,
  PRIMARY KEY (id_aluno, id_turma),
  FOREIGN KEY (id_turma) REFERENCES Turmas (id_turma),
  FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno)
);

CREATE TABLE Notas (
  id_Nota INT PRIMARY KEY,
  id_aluno INT,
  id_disciplina INT,
  Valor_Nota DECIMAL (5, 2),
  Data_Avaliação DATE,
  FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno),
  FOREIGN KEY (id_disciplina) REFERENCES Disciplinas (id_disciplina)
);