-- table that has past and current status of a problem in relation to the user that is solving it
DROP TABLE IF EXISTS USER_PROBLEM;

CREATE TABLE USER_PROBLEM (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned NOT NULL,
    problem_id int(11) unsigned NOT NULL,
    status_id int(11) unsigned NOT NULL,
    code text DEFAULT NULL,
    language_id int(11) unsigned NOT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    CONSTRAINT fk_uspr_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_uspr_prob_1 FOREIGN KEY (problem_id) REFERENCES PROBLEM (id),
    CONSTRAINT fk_uspr_dias_1 FOREIGN KEY (status_id) REFERENCES DICT_ASSIGNMENT_STATUS (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;