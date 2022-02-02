-- table that keeps track of the problems updated and added by administrators
DROP TABLE IF EXISTS ADMINISTRATOR_PROBLEM;

CREATE TABLE ADMINISTRATOR_PROBLEM (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    problem_id int(11) unsigned NOT NULL,
    created_by int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    last_updated_by int(11) unsigned DEFAULT NULL,
    last_update_date timestamp DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_adpr_prob_1 FOREIGN KEY (problem_id) REFERENCES PROBLEM (id),
    CONSTRAINT fk_adpr_admin_1 FOREIGN KEY (created_by) REFERENCES ADMINISTRATOR (id),
    CONSTRAINT fk_adpr_admin_2 FOREIGN KEY (last_updated_by) REFERENCES ADMINISTRATOR (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;