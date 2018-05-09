
    -- -----------------------------------------------------
-- Table mydb.posts
-- -----------------------------------------------------

ALTER TABLE mydb.posts
    ADD CONSTRAINT course_id_fkey FOREIGN KEY (courses_id)
    REFERENCES mydb.courses (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE mydb.posts
    ADD CONSTRAINT student_id_fkey FOREIGN KEY (student_id)
    REFERENCES mydb.student (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

    -- -----------------------------------------------------
-- Table mydb.COMMENTS
-- -----------------------------------------------------

    ALTER TABLE mydb.COMMENTS
    ADD CONSTRAINT fk_comments_student1 FOREIGN KEY (student_id)
    REFERENCES mydb.student (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE mydb.comments
    ADD CONSTRAINT comments_post_fk FOREIGN KEY (posts_id)
    REFERENCES mydb.posts (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


    -- -----------------------------------------------------
-- Table mydb.messages
-- -----------------------------------------------------

    ALTER TABLE mydb.messages
    ADD CONSTRAINT messages_student1_fk FOREIGN KEY (student_send)
    REFERENCES mydb.student (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE mydb.messages
    ADD CONSTRAINT messages_chat_fk FOREIGN KEY (chats_id)
    REFERENCES mydb.hasRelationship (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

    -- -----------------------------------------------------
-- Table mydb.takes
-- -----------------------------------------------------

    ALTER TABLE mydb.takes
    ADD CONSTRAINT student_has_courses_student_fk FOREIGN KEY (student_id)
    REFERENCES mydb.student (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE mydb.takes
    ADD CONSTRAINT student_has_courses_courses1_fk FOREIGN KEY (courses_ID)
    REFERENCES mydb.courses (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

    
    -- -----------------------------------------------------
-- Table mydb.hasRelationship
-- -----------------------------------------------------

    ALTER TABLE mydb.hasRelationship
    ADD CONSTRAINT fk_student_has_student_student1 FOREIGN KEY (first_stud_id)
    REFERENCES mydb.student (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE mydb.hasRelationship
    ADD CONSTRAINT fk_student_has_student_student2 FOREIGN KEY (second_stud_id)
    REFERENCES mydb.student (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;