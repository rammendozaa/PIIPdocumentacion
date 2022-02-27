-- table that keeps track of the progress of a behavioral question
DROP TABLE IF EXISTS USER_BEHAVIORAL_QUESTION;

CREATE TABLE USER_BEHAVIORAL_QUESTION (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    question_id int(11) unsigned NOT NULL,
    user_id int(11) unsigned NOT NULL,
    status_id int(11) unsigned NOT NULL,
    answer text DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_ubqu_bequ_1 FOREIGN KEY (question_id) REFERENCES BEHAVIORAL_QUESTION (id),
    CONSTRAINT fk_ubqu_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_ubqu_dias_1 FOREIGN KEY (status_id) REFERENCES DICT_ASSIGNMENT_STATUS (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;