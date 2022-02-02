-- table that keeps track of the soft skills questions in the system
DROP TABLE IF EXISTS BEHAVIORAL_QUESTION;

CREATE TABLE BEHAVIORAL_QUESTION(
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    question text DEFAULT NULL,
    file_route text DEFAULT NULL,
    information text DEFAULT NULL,
    uploaded_by int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    CONSTRAINT fk_bequ_admi_1 FOREIGN KEY (uploaded_by) REFERENCES ADMINISTRATOR (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;