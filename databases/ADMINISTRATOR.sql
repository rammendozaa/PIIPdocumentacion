-- table to keep track of the system's administrators
DROP TABLE IF EXISTS ADMINISTRATOR;

CREATE TABLE ADMINISTRATOR (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    email varchar(255) DEFAULT NULL,
    password varchar(128) NOT NULL,
    dob timestamp DEFAULT NULL,
    first_name varchar(255) DEFAULT NULL,
    last_name varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;