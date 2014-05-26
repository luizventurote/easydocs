CREATE SCHEMA IF NOT EXISTS mydb DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE mydb ;

-- -----------------------------------------------------
-- Table professor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS professor (
  professor_id INT NOT NULL,
  nome VARCHAR(60) NOT NULL,
  email VARCHAR(45) NOT NULL,
  disciplina VARCHAR(30) NULL,
  acesso INT NOT NULL,
  PRIMARY KEY (professor_id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table aluno
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS aluno (
  aluno_id INT NOT NULL,
  nome VARCHAR(60) NOT NULL,
  email VARCHAR(45) NOT NULL,
  curso VARCHAR(30) NOT NULL,
  turma CHAR(5) NOT NULL,
  professor_id INT NOT NULL,
  PRIMARY KEY (aluno_id),
  CONSTRAINT fk_aluno_professor1
    FOREIGN KEY (professor_id)
    REFERENCES professor (professor_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table modelo
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS modelo (
  modelo_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  cabecalho TEXT NULL,
  descricao_capa TEXT NULL,
  PRIMARY KEY (modelo_id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table documento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS documento (
  documento_id INT NOT NULL,
  modelo_id INT NOT NULL,
  titulo VARCHAR(60) NOT NULL,
  PRIMARY KEY (documento_id),
  CONSTRAINT fk_documento_modelo1
    FOREIGN KEY (modelo_id)
    REFERENCES modelo (modelo_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table config
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS config (
  id_config INT NOT NULL AUTO_INCREMENT,
  value VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_config))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table aluno_documento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS aluno_documento (
  aluno_id INT NOT NULL,
  documento_id INT NOT NULL,
  PRIMARY KEY (aluno_id, documento_id),
  CONSTRAINT fk_aluno_has_documento_aluno
    FOREIGN KEY (aluno_id)
    REFERENCES aluno (aluno_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_aluno_has_documento_documento1
    FOREIGN KEY (documento_id)
    REFERENCES documento (documento_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table etapa
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS etapa (
  etapa_id INT NOT NULL AUTO_INCREMENT,
  indice CHAR(10) NOT NULL,
  titulo VARCHAR(100) NOT NULL,
  descricao TEXT NULL,
  PRIMARY KEY (etapa_id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table modelo_etapa
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS modelo_etapa (
  modelo_id INT NOT NULL,
  etapa_id INT NOT NULL,
  PRIMARY KEY (modelo_id, etapa_id),
  CONSTRAINT fk_modelo_has_etapa_modelo1
    FOREIGN KEY (modelo_id)
    REFERENCES modelo (modelo_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_modelo_has_etapa_etapa1
    FOREIGN KEY (etapa_id)
    REFERENCES etapa (etapa_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table documento_etapa
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS documento_etapa (
  documento_id INT NOT NULL,
  etapa_id INT NOT NULL,
  PRIMARY KEY (documento_id, etapa_id),
  CONSTRAINT fk_documento_has_etapa_documento1
    FOREIGN KEY (documento_id)
    REFERENCES documento (documento_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_documento_has_etapa_etapa1
    FOREIGN KEY (etapa_id)
    REFERENCES etapa (etapa_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table referencia
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS referencia (
  referencia_id INT NOT NULL AUTO_INCREMENT,
  documento_id INT NOT NULL,
  referencia_text TEXT NOT NULL,
  PRIMARY KEY (referencia_id),
  CONSTRAINT fk_referencia_documento1
    FOREIGN KEY (documento_id)
    REFERENCES documento (documento_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;