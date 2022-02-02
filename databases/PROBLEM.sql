-- table that keeps track of the problems in the system
DROP TABLE IF EXISTS PROBLEM;

CREATE TABLE PROBLEM (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    description text NOT NULL,
    test_cases text NOT NULL,
    category_id int(11) unsigned NOT NULL,
    difficulty_id int(11) unsigned NOT NULL,
    uploaded_by int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id), 
    CONSTRAINT fk_prob_dica_1 FOREIGN KEY (category_id) REFERENCES DICT_CATEGORY (id),
    CONSTRAINT fk_prob_didi_1 FOREIGN KEY (difficulty_id) REFERENCES DICT_DIFFICULTY (id),
    CONSTRAINT fk_prob_admi_1 FOREIGN KEY (uploaded_by) REFERENCES ADMINISTRATOR (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;