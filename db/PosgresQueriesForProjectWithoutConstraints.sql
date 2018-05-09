CREATE DATABASE mydb	
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA mydb
    AUTHORIZATION postgres;



-- students table
CREATE TABLE mydb.student
(
    id bigint NOT NULL,
    email character varying(256) NOT NULL Unique,
    firstname character varying(256),
    lastname character varying(256),
    password character varying(256) NOT NULL,
    PRIMARY KEY (id)
)

-- -----------------------------------------------------
-- Table `mydb`.`posts`
-- -----------------------------------------------------

    CREATE TABLE IF NOT EXISTS mydb.posts (
  ID Bigserial NOT NULL,
  content character varying(1000) NULL,
  date TIMESTAMP(6) WITHOUT TIME ZONE NOT NULL,
  courses_ID bigint NOT NULL,
  student_id bigint NOT NULL,
  PRIMARY KEY (ID)
  )
-- -----------------------------------------------------
-- Table `mydb`.`courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.courses (
  ID bigint NOT NULL ,
  abbr character varying(45) NOT NULL,
  course_title character varying(1000) NOT NULL,
  PRIMARY KEY (ID)
)
  

    -- -----------------------------------------------------
-- Table mydb.comments
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.comments (
  ID serial NOT NULL,
  date TIMESTAMP(6) WITHOUT TIME ZONE NOT NULL,
  content character varying(1000) NULL,
  student_id bigint NOT NULL,
  posts_ID bigint NOT NULL,
  PRIMARY KEY (ID)
  )

-- -----------------------------------------------------
-- Table mydb.messages
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.messages (
  ID serial NOT NULL,
  status BIGINT NULL,
  content character varying(1000) NULL,
  date TIMESTAMP(6) WITHOUT TIME ZONE NOT NULL,
  student_send BIGINT NOT NULL,
  chats_id bigint not null,
  PRIMARY KEY (ID))

-- -----------------------------------------------------
-- Table mydb.takes
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.takes (
  student_id bigint NOT NULL,
  courses_ID bigint NOT NULL,
  PRIMARY KEY (student_id, courses_ID))


-- -----------------------------------------------------
-- Table mydb.hasRelationship
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.hasRelationship (
  first_stud_id bigint NOT NULL,
  second_stud_id bigint NOT NULL,
  status bigint  NULL,
  active_stud_id bigint NULL,
  id serial not null,
  last_action TIMESTAMP(6) WITHOUT time zone not null,
  PRIMARY KEY (id)
)
   --