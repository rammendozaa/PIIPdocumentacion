-- table that has all of the schools in the system
DROP TABLE IF EXISTS DICT_SCHOOL;

CREATE TABLE DICT_SCHOOL (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    description varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;