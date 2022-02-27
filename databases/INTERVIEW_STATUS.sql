-- table that keeps track of the current status of an interview
DROP TABLE IF EXISTS INTERVIEW_STATUS;

CREATE TABLE INTERVIEW_STATUS (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    interview_id int(11) unsigned NOT NULL,
    status_id int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    CONSTRAINT fk_inst_inte_1 FOREIGN KEY (interview_id) REFERENCES INTERVIEW (id),
    CONSTRAINT fk_inst_dist_1 FOREIGN KEY (status_id) REFERENCES DICT_INTERVIEW_STATUS (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;