-- table that keeps information on the user
DROP TABLE IF EXISTS USER;

CREATE TABLE USER (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    email varchar(255) DEFAULT NULL,
    password varchar(128) NOT NULL,
    dob timestamp DEFAULT NULL,
    first_name varchar(255) DEFAULT NULL,
    last_name varchar(255) DEFAULT NULL,
    school_id int(11) unsigned NOT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    CONSTRAINT fk_user_disc_1 FOREIGN KEY (school_id) REFERENCES DICT_SCHOOL (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;