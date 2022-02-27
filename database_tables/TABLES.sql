-- table that has all the possible status of an assignment
DROP TABLE IF EXISTS DICT_ASSIGNMENT_STATUS;

CREATE TABLE DICT_ASSIGNMENT_STATUS (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    description varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has all of the categories of an assignment
DROP TABLE IF EXISTS DICT_CATEGORY;

CREATE TABLE DICT_CATEGORY (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    description varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has all the companies
DROP TABLE IF EXISTS DICT_COMPANY;

CREATE TABLE DICT_COMPANY (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    description varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has all the possible difficulties of an assignment
DROP TABLE IF EXISTS DICT_DIFFICULTY;

CREATE TABLE DICT_DIFFICULTY (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    description varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has all the possible status of an interview
DROP TABLE IF EXISTS DICT_INTERVIEW_STATUS;

CREATE TABLE DICT_INTERVIEW_STATUS (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    description varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has all the possible languages in the system
DROP TABLE IF EXISTS DICT_LANGUAGE;

CREATE TABLE DICT_LANGUAGE (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    description varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has all of the schools in the system
DROP TABLE IF EXISTS DICT_SCHOOL;

CREATE TABLE DICT_SCHOOL (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    description varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has all the possible status of company tracking
DROP TABLE IF EXISTS DICT_TRACKING_STATUS;

CREATE TABLE DICT_TRACKING_STATUS (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    description varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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


-- table that keeps track of all of the interviews
DROP TABLE IF EXISTS INTERVIEW;

CREATE TABLE INTERVIEW (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned NOT NULL,
    administrator_id int(11) unsigned DEFAULT NULL,
    language_id int(11) unsigned DEFAULT NULL,
    chosen_date timestamp DEFAULT NULL,
    interview_url text DEFAULT NULL,
    interview_code text DEFAULT NULL,
    feedback text DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_inte_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_inte_admi_1 FOREIGN KEY (administrator_id) REFERENCES ADMINISTRATOR (id),
    CONSTRAINT fk_inte_dila_1 FOREIGN KEY (language_id) REFERENCES DICT_LANGUAGE (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of the problems in the system
DROP TABLE IF EXISTS PROBLEM;

CREATE TABLE PROBLEM (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    description text NOT NULL,
    test_cases text NOT NULL,
    category_id int(11) unsigned NOT NULL,
    difficulty_id int(11) unsigned NOT NULL,
    uploaded_by int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id), 
    CONSTRAINT fk_prob_dica_1 FOREIGN KEY (category_id) REFERENCES DICT_CATEGORY (id),
    CONSTRAINT fk_prob_didi_1 FOREIGN KEY (difficulty_id) REFERENCES DICT_DIFFICULTY (id),
    CONSTRAINT fk_prob_admi_1 FOREIGN KEY (uploaded_by) REFERENCES ADMINISTRATOR (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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


-- table that keeps track of the soft skills questions in the system
DROP TABLE IF EXISTS BEHAVIORAL_QUESTION;

CREATE TABLE BEHAVIORAL_QUESTION(
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    question text DEFAULT NULL,
    file_route text DEFAULT NULL,
    information text DEFAULT NULL,
    uploaded_by int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    CONSTRAINT fk_bequ_admi_1 FOREIGN KEY (uploaded_by) REFERENCES ADMINISTRATOR (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of the progress of a behavioral question
DROP TABLE IF EXISTS USER_BEHAVIORAL_QUESTION;

CREATE TABLE USER_BEHAVIORAL_QUESTION (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    question_id int(11) unsigned NOT NULL,
    user_id int(11) unsigned NOT NULL,
    status_id int(11) unsigned NOT NULL,
    answer text DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_ubqu_bequ_1 FOREIGN KEY (question_id) REFERENCES BEHAVIORAL_QUESTION (id),
    CONSTRAINT fk_ubqu_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_ubqu_dias_1 FOREIGN KEY (status_id) REFERENCES DICT_ASSIGNMENT_STATUS (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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


-- table that keeps track of soft skill topics
DROP TABLE IF EXISTS ADMINISTRATOR_BEHAVIORAL_QUESTION;

CREATE TABLE ADMINISTRATOR_BEHAVIORAL_QUESTION (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    question_id int(11) unsigned NOT NULL,
    created_by int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    last_updated_by int(11) unsigned DEFAULT NULL,
    last_update_date timestamp DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_adbq_bequ_1 FOREIGN KEY (question_id) REFERENCES BEHAVIORAL_QUESTION (id),
    CONSTRAINT fk_adbq_admin_1 FOREIGN KEY (created_by) REFERENCES ADMINISTRATOR (id),
    CONSTRAINT fk_adbq_admin_2 FOREIGN KEY (last_updated_by) REFERENCES ADMINISTRATOR (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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


-- table that keeps track of soft skill topics
DROP TABLE IF EXISTS ADMINISTRATOR_PROGRAMMING_TOPIC;

CREATE TABLE ADMINISTRATOR_PROGRAMMING_TOPIC (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    topic_id int(11) unsigned NOT NULL,
    created_by int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    last_updated_by int(11) unsigned DEFAULT NULL,
    last_update_date timestamp DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_adpt_prto_1 FOREIGN KEY (topic_id) REFERENCES PROGRAMMING_TOPIC (id),
    CONSTRAINT fk_adpt_admin_1 FOREIGN KEY (created_by) REFERENCES ADMINISTRATOR (id),
    CONSTRAINT fk_adpt_admin_2 FOREIGN KEY (last_updated_by) REFERENCES ADMINISTRATOR (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of soft skill topics
DROP TABLE IF EXISTS ADMINISTRATOR_SOFT_SKILL_TOPIC;

CREATE TABLE ADMINISTRATOR_SOFT_SKILL_TOPIC (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    topic_id int(11) unsigned NOT NULL,
    created_by int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    last_updated_by int(11) unsigned DEFAULT NULL,
    last_update_date timestamp DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_asst_ssto_1 FOREIGN KEY (topic_id) REFERENCES SOFT_SKILL_TOPIC (id),
    CONSTRAINT fk_asst_admin_1 FOREIGN KEY (created_by) REFERENCES ADMINISTRATOR (id),
    CONSTRAINT fk_asst_admin_2 FOREIGN KEY (last_updated_by) REFERENCES ADMINISTRATOR (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of interview requests
DROP TABLE IF EXISTS INTERVIEW_REQUESTS;

CREATE TABLE INTERVIEW_REQUESTS (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    interview_id int(11) unsigned NOT NULL,
    language_id int(11) unsigned NOT NULL,
    chosen_date timestamp NOT NULL,
    PRIMARY KEY(id), 
    CONSTRAINT fk_inre_inte_1 FOREIGN KEY (interview_id) REFERENCES INTERVIEW (id),
    CONSTRAINT fk_inre_dila_1 FOREIGN KEY (language_id) REFERENCES DICT_LANGUAGE (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of the current status of an interview
DROP TABLE IF EXISTS INTERVIEW_STATUS;

CREATE TABLE INTERVIEW_STATUS (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    interview_id int(11) unsigned NOT NULL,
    status_id int(11) unsigned NOT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    CONSTRAINT fk_inst_inte_1 FOREIGN KEY (interview_id) REFERENCES INTERVIEW (id),
    CONSTRAINT fk_inst_dist_1 FOREIGN KEY (status_id) REFERENCES DICT_INTERVIEW_STATUS (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;