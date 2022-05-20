-- table that has all the possible status of an assignment
DROP TABLE IF EXISTS DICT_ACTIVITY_STATUS;

CREATE TABLE DICT_ACTIVITY_STATUS (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    description varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has all the possible activities
DROP TABLE IF EXISTS DICT_ACTIVITY_TYPE;

CREATE TABLE DICT_ACTIVITY_TYPE (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    description varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- table that has all the possible interview types
DROP TABLE IF EXISTS DICT_INTERVIEW_TYPE;

CREATE TABLE DICT_INTERVIEW_TYPE (
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
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has all the possible difficulties of an assignment
DROP TABLE IF EXISTS DICT_DIFFICULTY;

CREATE TABLE DICT_DIFFICULTY (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has all the possible languages in the system
DROP TABLE IF EXISTS DICT_LANGUAGE;

CREATE TABLE DICT_LANGUAGE (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) DEFAULT NULL,
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
    password varchar(128) DEFAULT NULL,
    dob timestamp DEFAULT NULL,
    first_name varchar(255) DEFAULT NULL,
    last_name varchar(255) DEFAULT NULL,
    school_id int(11) unsigned DEFAULT NULL,
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
    password varchar(128) DEFAULT NULL,
    dob timestamp DEFAULT NULL,
    first_name varchar(255) DEFAULT NULL,
    last_name varchar(255) DEFAULT NULL,
    is_super tinyint(1) DEFAULT '0',
    is_active tinyint(1) NOT NULL DEFAULT '1',
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of user - mentor
DROP TABLE IF EXISTS USER_ADMINISTRATOR;

CREATE TABLE USER_ADMINISTRATOR (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned DEFAULT NULL,
    administrator_id int(11) unsigned DEFAULT NULL,
    is_graduate tinyint(1) NOT NULL DEFAULT '0',
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id),
    CONSTRAINT fk_usad_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_usad_admi_1 FOREIGN KEY (administrator_id) REFERENCES ADMINISTRATOR (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of all of the interviews
DROP TABLE IF EXISTS INTERVIEW;

CREATE TABLE INTERVIEW (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned NOT NULL,
    administrator_id int(11) unsigned DEFAULT NULL,
    language_id int(11) unsigned DEFAULT NULL,
    chosen_date timestamp DEFAULT NULL,
    interview_type_id int(11) unsigned DEFAULT '1',
    interview_url text DEFAULT NULL,
    interview_code text DEFAULT NULL,
    feedback text DEFAULT NULL,
    is_confirmed tinyint(1) NOT NULL DEFAULT '0',
    comment text DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    CONSTRAINT fk_inte_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_inte_admi_1 FOREIGN KEY (administrator_id) REFERENCES ADMINISTRATOR (id),
    CONSTRAINT fk_inte_dila_1 FOREIGN KEY (language_id) REFERENCES DICT_LANGUAGE (id),
    CONSTRAINT fk_inte_diit_1 FOREIGN KEY (interview_type_id) REFERENCES DICT_INTERVIEW_TYPE (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of the problems in the system
DROP TABLE IF EXISTS PROBLEM;

CREATE TABLE PROBLEM (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    title text DEFAULT NULL,
    description text DEFAULT NULL,
    test_cases text DEFAULT NULL,
    tags text DEFAULT NULL,
    difficulty_id int(11) unsigned DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    url text DEFAULT NULL,
    time_limit text DEFAULT NULL,
    memory_limit text DEFAULT NULL,
    input text DEFAULT NULL,
    output text DEFAULT NULL,
    notes text DEFAULT NULL,
    source text DEFAULT NULL,
    solution text DEFAULT NULL,
    PRIMARY KEY(id), 
    CONSTRAINT fk_prob_didi_1 FOREIGN KEY (difficulty_id) REFERENCES DICT_DIFFICULTY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- table that keeps track of all of the programming topics in the system 
DROP TABLE IF EXISTS PROGRAMMING_TOPIC;

CREATE TABLE PROGRAMMING_TOPIC (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    title varchar(100) DEFAULT NULL,
    description text DEFAULT NULL,
    topic_information text DEFAULT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of all of the soft skills topics in the system 
DROP TABLE IF EXISTS SOFT_SKILL_TOPIC;

CREATE TABLE SOFT_SKILL_TOPIC (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    title varchar(100) DEFAULT NULL,
    description text DEFAULT NULL,
    topic_information text DEFAULT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of the soft skills questions in the system
DROP TABLE IF EXISTS SOFT_SKILL_QUESTION;

CREATE TABLE SOFT_SKILL_QUESTION(
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    title varchar(100) DEFAULT NULL,
    question text DEFAULT NULL,
    soft_skill_topic_id int(11) unsigned DEFAULT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id),
    CONSTRAINT fk_ssqu_ssto_1 FOREIGN KEY (soft_skill_topic_id) REFERENCES SOFT_SKILL_TOPIC (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of the questionnaires uploaded
DROP TABLE IF EXISTS QUESTIONNAIRE;

CREATE TABLE QUESTIONNAIRE (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    title varchar(100) DEFAULT NULL,
    description text DEFAULT NULL,
    total_questions int(11) DEFAULT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS QUESTIONNAIRE_QUESTION;

CREATE TABLE QUESTIONNAIRE_QUESTION(
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    questionnaire_id int(11) unsigned DEFAULT NULL,
    question text DEFAULT NULL,
    answer text DEFAULT NULL,
    option_1 text DEFAULT NULL,
    option_2 text DEFAULT NULL,
    option_3 text DEFAULT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY (id),
    CONSTRAINT fk_ququ_ques_1 FOREIGN KEY (questionnaire_id) REFERENCES QUESTIONNAIRE (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of the progress of a behavioral question
DROP TABLE IF EXISTS USER_SOFT_SKILL_QUESTION;

CREATE TABLE USER_SOFT_SKILL_QUESTION (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    question_id int(11) unsigned DEFAULT NULL,
    user_id int(11) unsigned DEFAULT NULL,
    status_id int(11) unsigned DEFAULT '1',
    answer text DEFAULT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    finished_date timestamp DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_ubqu_bequ_1 FOREIGN KEY (question_id) REFERENCES SOFT_SKILL_QUESTION (id),
    CONSTRAINT fk_ubqu_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_ubqu_dias_1 FOREIGN KEY (status_id) REFERENCES DICT_ACTIVITY_STATUS (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has past and current status of a problem in relation to the user that is solving it
DROP TABLE IF EXISTS USER_PROBLEM;

CREATE TABLE USER_PROBLEM (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned DEFAULT NULL,
    problem_id int(11) unsigned DEFAULT NULL,
    status_id int(11) unsigned DEFAULT '1',
    code text DEFAULT NULL,
    submission_url text DEFAULT NULL,
    language_id int(11) unsigned DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    finished_date timestamp DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_uspr_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_uspr_prob_1 FOREIGN KEY (problem_id) REFERENCES PROBLEM (id),
    CONSTRAINT fk_uspr_dias_1 FOREIGN KEY (status_id) REFERENCES DICT_ACTIVITY_STATUS (id),
    CONSTRAINT fk_uspr_dila_1 FOREIGN KEY (language_id) REFERENCES DICT_LANGUAGE (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has past and current status of a problem in relation to the user that is solving it
DROP TABLE IF EXISTS USER_PROGRAMMING_TOPIC;

CREATE TABLE USER_PROGRAMMING_TOPIC (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned DEFAULT NULL,
    programming_topic_id int(11) unsigned DEFAULT NULL,
    status_id int(11) unsigned DEFAULT '1',
    is_active tinyint(1) NOT NULL DEFAULT '1',
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    finished_date timestamp DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_uspt_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_uspt_prto_1 FOREIGN KEY (programming_topic_id) REFERENCES PROGRAMMING_TOPIC (id),
    CONSTRAINT fk_uspt_dias_1 FOREIGN KEY (status_id) REFERENCES DICT_ACTIVITY_STATUS (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that has past and current status of a problem in relation to the user that is solving it
DROP TABLE IF EXISTS USER_SOFT_SKILL_TOPIC;

CREATE TABLE USER_SOFT_SKILL_TOPIC (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned DEFAULT NULL,
    soft_skill_topic_id int(11) unsigned DEFAULT NULL,
    status_id int(11) unsigned DEFAULT '1',
    is_active tinyint(1) NOT NULL DEFAULT '1',
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    finished_date timestamp DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_usst_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_usst_ssto_1 FOREIGN KEY (soft_skill_topic_id) REFERENCES SOFT_SKILL_TOPIC (id),
    CONSTRAINT fk_usst_dias_1 FOREIGN KEY (status_id) REFERENCES DICT_ACTIVITY_STATUS (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of the starting questionnaire
DROP TABLE IF EXISTS USER_QUESTIONNAIRE;

CREATE TABLE USER_QUESTIONNAIRE (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned DEFAULT NULL,
    questionnaire_id int(11) unsigned DEFAULT NULL,
    correct_answers int(11) unsigned DEFAULT NULL,
    percentage_score decimal(5, 2) DEFAULT NULL,
    answers text DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    status_id int(11) unsigned DEFAULT '1',
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    finished_date timestamp DEFAULT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_usqu_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_usqu_ques_1 FOREIGN KEY (questionnaire_id) REFERENCES QUESTIONNAIRE (id),
    CONSTRAINT fk_usqu_dias_1 FOREIGN KEY (status_id) REFERENCES DICT_ACTIVITY_STATUS (id)
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
    is_active tinyint(1) NOT NULL DEFAULT '1',
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
    description text NOT NULL,
    url text NOT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY(id),
    CONSTRAINT fk_cotl_cotr_1 FOREIGN KEY (company_tracking_id) REFERENCES COMPANY_TRACKING (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of templates
DROP TABLE IF EXISTS TEMPLATE;

CREATE TABLE TEMPLATE (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(100) DEFAULT NULL,
    description text DEFAULT NULL,
    position int(11) unsigned DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of the sections in a template
DROP TABLE IF EXISTS TEMPLATE_SECTION;

CREATE TABLE TEMPLATE_SECTION (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(100) DEFAULT NULL,
    description text DEFAULT NULL,
    position int(11) unsigned DEFAULT NULL,
    template_id int(11) unsigned DEFAULT NULL,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY (id),
    CONSTRAINT fk_tese_temp_1 FOREIGN KEY (template_id) REFERENCES TEMPLATE (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of template activities
DROP TABLE IF EXISTS TEMPLATE_ACTIVITY;

CREATE TABLE TEMPLATE_ACTIVITY (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(100) DEFAULT NULL,
    description text DEFAULT NULL,
    template_section_id int(11) unsigned DEFAULT NULL,
    activity_type_id int(11) unsigned DEFAULT NULL,
    position int(11) unsigned DEFAULT NULL,
    external_reference int(11) unsigned DEFAULT NULL COMMENT "CAN MAP TO PROBLEM, TOPIC, ETC.",
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY (id),
    CONSTRAINT fk_teac_tese_1 FOREIGN KEY (template_section_id) REFERENCES TEMPLATE_SECTION (id),
    CONSTRAINT fk_teac_daty_1 FOREIGN KEY (activity_type_id) REFERENCES DICT_ACTIVITY_TYPE (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of a user template progress
DROP TABLE IF EXISTS USER_TEMPLATE;

CREATE TABLE USER_TEMPLATE (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned DEFAULT NULL,
    template_id int(11) unsigned DEFAULT NULL,
    status_id int(11) unsigned DEFAULT '1',
    position int(11) unsigned DEFAULT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY (id),
    CONSTRAINT fk_uste_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_uste_temp_1 FOREIGN KEY (template_id) REFERENCES TEMPLATE (id),
    CONSTRAINT fk_uste_dast_1 FOREIGN KEY (status_id) REFERENCES DICT_ACTIVITY_STATUS (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- table that keeps track of a user template section progress
DROP TABLE IF EXISTS USER_TEMPLATE_SECTION;

CREATE TABLE USER_TEMPLATE_SECTION (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned DEFAULT NULL,
    template_section_id int(11) unsigned DEFAULT NULL,
    user_template_id int(11) unsigned DEFAULT NULL,
    status_id int(11) unsigned DEFAULT '1',
    position int(11) unsigned DEFAULT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    PRIMARY KEY (id),
    CONSTRAINT fk_usts_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_usts_tese_1 FOREIGN KEY (template_section_id) REFERENCES TEMPLATE_SECTION (id),
    CONSTRAINT fk_usts_uste_1 FOREIGN KEY (user_template_id) REFERENCES USER_TEMPLATE (id),
    CONSTRAINT fk_usts_dast_1 FOREIGN KEY (status_id) REFERENCES DICT_ACTIVITY_STATUS (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- table that keeps track of user template activities
DROP TABLE IF EXISTS USER_TEMPLATE_ACTIVITY;

CREATE TABLE USER_TEMPLATE_ACTIVITY (
    id int(11) unsigned NOT NULL AUTO_INCREMENT,
    user_id int(11) unsigned DEFAULT NULL,
    template_activity_id int(11) unsigned DEFAULT NULL,
    user_template_section_id int(11) unsigned DEFAULT NULL,
    status_id int(11) unsigned DEFAULT '1',
    external_reference int(11) unsigned DEFAULT NULL COMMENT "CAN MAP TO USER_PROBLEM, USER_TOPIC, INTERVIEW, ETC.",
    position int(11) unsigned DEFAULT NULL,
    created_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active tinyint(1) NOT NULL DEFAULT '1',
    finished_date timestamp DEFAULT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_usta_user_1 FOREIGN KEY (user_id) REFERENCES USER (id),
    CONSTRAINT fk_usta_uste_1 FOREIGN KEY (template_activity_id) REFERENCES TEMPLATE_ACTIVITY (id),
    CONSTRAINT fk_usta_usts_1 FOREIGN KEY (user_template_section_id) REFERENCES USER_TEMPLATE_SECTION (id),
    CONSTRAINT fk_usta_dast_1 FOREIGN KEY (status_id) REFERENCES DICT_ACTIVITY_STATUS (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;