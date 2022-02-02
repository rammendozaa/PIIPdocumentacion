-- table that keeps track of all of the soft skills topics in the system 
DROP TABLE IF EXISTS SOFT_SKILL_TOPIC;

CREATE TABLE SOFT_SKILL_TOPIC (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    description text NOT NULL,
    file_route text DEFAULT NULL,
    information text DEFAULT NULL,
    uploaded_by int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id), 
    CONSTRAINT fk_ssto_admi_1 FOREIGN KEY (uploaded_by) REFERENCES ADMINISTRATOR (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;