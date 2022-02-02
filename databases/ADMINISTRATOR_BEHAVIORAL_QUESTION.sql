-- table that keeps track of soft skill topics
DROP TABLE IF EXISTS ADMINISTRATOR_BEHAVIORAL_QUESTION;

CREATE TABLE ADMINISTRATOR_BEHAVIORAL_QUESTION (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    question_id int(11) unsigned NOT NULL,
    created_by int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    last_updated_by int(11) unsigned DEFAULT NULL,
    last_update_date timestamp DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_adbq_bequ_1 FOREIGN KEY (question_id) REFERENCES BEHAVIORAL_QUESTION (id),
    CONSTRAINT fk_adbq_admin_1 FOREIGN KEY (created_by) REFERENCES ADMINISTRATOR (id),
    CONSTRAINT fk_adbq_admin_2 FOREIGN KEY (last_updated_by) REFERENCES ADMINISTRATOR (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;