-- table that keeps track of all of the interviews
DROP TABLE IF EXISTS INTERVIEW;

CREATE TABLE INTERVIEW (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned NOT NULL,
    administrator_id int(11) unsigned DEFAULT NULL,
    language_id int(11) unsigned DEFAULT NULL,
    chosen_date timestamp DEFAULT NULL,
    interview_url text DEFAULT NULL,
    interview_code text DEFAULT NULL,
    feedback text DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_inte_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_inte_admi_1 FOREIGN KEY (administrator_id) REFERENCES ADMINISTRATOR (id),
    CONSTRAINT fk_inte_dila_1 FOREIGN KEY (language_id) REFERENCES DICT_LANGUAGE (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;