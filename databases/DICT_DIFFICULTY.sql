-- table that has all the possible difficulties of an assignment
DROP TABLE IF EXISTS DICT_DIFFICULTY;

CREATE TABLE DICT_DIFFICULTY (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    description varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;