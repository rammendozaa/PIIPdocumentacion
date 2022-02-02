-- table that keeps track of all of the programming topics in the system 
DROP TABLE IF EXISTS PROGRAMMING_TOPIC;

CREATE TABLE PROGRAMMING_TOPIC (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    description text NOT NULL,
    file_route text DEFAULT NULL,
    information text DEFAULT NULL,
    uploaded_by int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id), 
    CONSTRAINT fk_prto_admi_1 FOREIGN KEY (uploaded_by) REFERENCES ADMINISTRATOR (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;