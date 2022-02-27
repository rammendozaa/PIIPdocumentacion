-- table that keeps track of all of the important URLs related to company application
DROP TABLE IF EXISTS COMPANY_TRACKING_LINKS;

CREATE TABLE COMPANY_TRACKING_LINKS (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    company_tracking_id int(11) unsigned NOT NULL,
    description varchar(255) NOT NULL,
    url varchar(1000) NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_cotl_cotr_1 FOREIGN KEY (company_tracking_id) REFERENCES COMPANY_TRACKING (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;