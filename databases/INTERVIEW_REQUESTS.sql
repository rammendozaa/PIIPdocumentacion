-- table that keeps track of interview requests
DROP TABLE IF EXISTS INTERVIEW_REQUESTS;

CREATE TABLE INTERVIEW_REQUESTS (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    interview_id int(11) unsigned NOT NULL,
    language_id int(11) unsigned NOT NULL,
    chosen_date timestamp NOT NULL,
    PRIMARY KEY(id), 
    CONSTRAINT fk_inre_inte_1 FOREIGN KEY (interview_id) REFERENCES INTERVIEW (id),
    CONSTRAINT fk_inre_dila_1 FOREIGN KEY (language_id) REFERENCES DICT_LANGUAGE (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;