-- table that keeps track of company applications for users
DROP TABLE IF EXISTS COMPANY_TRACKING;

CREATE TABLE COMPANY_TRACKING (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned NOT NULL,
    company_id int(11) unsigned NOT NULL,
    status_id int(11) unsigned NOT NULL,
    application_url varchar(255) DEFAULT NULL,
    interview_date timestamp DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_cotr_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_cotr_dico_1 FOREIGN KEY (company_id) REFERENCES DICT_COMPANY (id),
    CONSTRAINT fk_cotr_dtst_1 FOREIGN KEY (status_id) REFERENCES DICT_TRACKING_STATUS (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;