INSERT INTO DICT_ACTIVITY_STATUS (id, name, description)
VALUES 
(1, "Created", "Not started yet"),
(2, "In progress", "Started"),
(3, "Waiting", "Waiting for feedback"),
(4, "Finished", "Finished");

INSERT INTO DICT_ACTIVITY_TYPE (id, name, description)
VALUES 
(1, "Problem", "Solve a problem"),
(2, "ProgrammingTopic", "Read a specific topic"),
(3, "SoftSkillQuestion", "Answer a soft skill question"),
(4, "SoftSkillTopic", "Read a specific soft skill topic"),
(5, "Interview", "Take an interview"),
(6, "Questionnaire", "First questionnaire");

INSERT INTO DICT_INTERVIEW_TYPE (id, name, description)
VALUES 
(1, "One on one", "Mentor interview"),
(2, "Mock", "Mock interview");

INSERT INTO DICT_CATEGORY (id, name, description)
VALUES 
(1, "DP", "Dynamic Programming");

INSERT INTO DICT_COMPANY (id, name)
VALUES 
(1, "Facebook"),
(2, "Microsoft"),
(3, "Google"),
(4, "Amazon"),
(5, "Apple");

INSERT INTO DICT_DIFFICULTY (id, name)
VALUES 
(1, "Very easy"),
(2, "Easy"),
(3, "Medium"),
(4, "Hard"),
(5, "Very hard");

INSERT INTO DICT_LANGUAGE (id, name)
VALUES 
(1, "C++"),
(2, "C"),
(3, "Java"),
(4, "Python"),
(5, "Javascript");


INSERT INTO DICT_SCHOOL (name, description)
VALUES 
("CICS MILPA ALTA", "CICS MILPA ALTA"),
("CICS UST", "CICS UST"),
("ENCB", "ENCB"),
("ENMH", "ENMH"),
("ESCA SANTO TOMAS", "ESCA SANTO TOMAS"),
("ESCA TEPEPAN", "ESCA TEPEPAN"),
("ESCOM", "ESCOM"),
("ESE", "ESE"),
("ESEO", "ESEO"),
("ESFM", "ESFM"),
("ESIA TECAMACHALCO", "ESIA TECAMACHALCO"),
("ESIA TICOMAN", "ESIA TICOMAN"),
("ESIA-ZAC", "ESIA-ZAC"),
("ESIME AZCAPOTZALCO", "ESIME AZCAPOTZALCO"),
("ESIME CULHUACAN", "ESIME CULHUACAN"),
("ESIME TICOMAN", "ESIME TICOMAN"),
("ESIME ZACATENCO", "ESIME ZACATENCO"),
("ESIQIE", "ESIQIE"),
("ESIT", "ESIT"),
("ESM", "ESM"),
("EST", "EST"),
("UPIBI", "UPIBI"),
("UPIICSA", "UPIICSA"),
("UPIIG", "UPIIG"),
("UPIITA", "UPIITA"),
("UPIIZ", "UPIIZ"),
("ENBA", "ENBA"),
("UPIIH", "UPIIH"),
("UPIIP", "UPIIP"),
("UPIIC", "UPIIC"),
("UPIEM", "UPIEM"),
("UPIIT", "UPIIT"),
("CECyT 1", "CECyT 1"),
("CECyT 2", "CECyT 2"),
("CECyT 3", "CECyT 3"),
("CECyT 4", "CECyT 4"),
("CECyT 5", "CECyT 5"),
("CECyT 6", "CECyT 6"),
("CECyT 7", "CECyT 7"),
("CECyT 8", "CECyT 8"),
("CECyT 9", "CECyT 9"),
("CECyT 10", "CECyT 10"),
("CECyT 11", "CECyT 11"),
("CECyT 12", "CECyT 12"),
("CECyT 13", "CECyT 13"),
("CECyT 14", "CECyT 14"),
("CECyT 15", "CECyT 15"),
("CECyT 16", "CECyT 16"),
("CECyT 17", "CECyT 17"),
("CECyT 18", "CECyT 18"),
("CECyT 19", "CECyT 19"),
("CET 1", "CET 1");


INSERT INTO DICT_TRACKING_STATUS (id, name, description)
VALUES 
(1, "Not applied", "Have not applied to company"),
(2, "Applied", "Has applied to company"),
(3, "Coding Challenge", "Solving coding challenge"),
(4, "Interviewing", "Going through interviews"),
(5, "Accepted", "Recevied offer"),
(6, "Rejected", "Not accepted");

INSERT INTO USER (email, password, dob, first_name, last_name, school_id)
VALUES 
("amendozar1300@alumno.ipn.mx", "password", "1998-07-02", "Alvaro", "Mendoza Ramirez", 1);

INSERT INTO ADMINISTRATOR (email, password, dob, first_name, last_name, is_super)
VALUES 
("rammendozaa@yahoo.com", "password", "1998-07-02", "Alvaro", "Mendoza Ramirez", 1),
("hugomichelbl@gmail.com", "password", "1998-07-02", "Hugo Michel", "Barbosa Lopez", 1);


INSERT INTO USER_ADMINISTRATOR (user_id, administrator_id)
VALUES 
(1, 1);

INSERT INTO INTERVIEW (user_id, administrator_id, language_id)
VALUES 
(1, 1, 1);

INSERT INTO PROBLEM (title, description, test_cases, category_id, difficulty_id, url)
VALUES
("Fibonacci Armi", "King Cambyses loves Fibonacci numbers. He has several armies. Today he wants to make a new army for himself and he wants the number of men in this army to be the n-th Fibonacci number.", "input: 2output: 2", 1, 1, "https://codeforces.com/problemset/problem/72/G");

INSERT INTO PROGRAMMING_TOPIC (title, description)
VALUES 
("Dynamic Programming", "Fibonacci sequence can be calculated using dynamic programming");

INSERT INTO SOFT_SKILL_TOPIC (title, description)
VALUES 
("STAR Method", "By following the STAR Method you can structure a story by highlighting the most important events");

INSERT INTO SOFT_SKILL_QUESTION (id, title, question)
VALUES 
(1, "Start Method Q1", "Tell me a story of a time when you took ownership");

INSERT INTO USER_SOFT_SKILL_QUESTION (question_id, user_id, status_id, answer)
VALUES 
(1, 1, 1, "I have never taken ownership");

INSERT INTO USER_PROBLEM (user_id, problem_id, status_id, language_id)
VALUES 
(1, 1, 1, 1);

INSERT INTO USER_PROGRAMMING_TOPIC (user_id, programming_topic_id, status_id)
VALUES 
(1, 1, 1);

INSERT INTO USER_SOFT_SKILL_TOPIC (user_id, soft_skill_topic_id, status_id)
VALUES 
(1, 1, 1);

INSERT INTO COMPANY_TRACKING (user_id, company_id, status_id, application_url)
VALUES 
(1, 1, 1, "https://www.metacareers.com/");

INSERT INTO COMPANY_TRACKING_LINKS (company_tracking_id, description, url)
VALUES 
(1, "Meta openings", "https://www.metacareers.com/jobs");

INSERT INTO TEMPLATE (id, name, description, position)
VALUES 
(1, "Introduction", "This is the first template that users will see", 1);

INSERT INTO TEMPLATE_SECTION (id, name, description, position, template_id)
VALUES
(1, "Section 1", "The first section here", 1, 1);

INSERT INTO TEMPLATE_ACTIVITY (id, name, description, template_section_id, activity_type_id, position, external_reference)
VALUES 
(1, "Questionaire", "Solve this questionare so that we can assign you in the perfect step of this path", 1, 1, 1, 1);

INSERT INTO USER_TEMPLATE (user_id, template_id, status_id)
VALUES 
(1, 1, 1);

INSERT INTO USER_TEMPLATE_SECTION (user_id, template_section_id, status_id)
VALUES
(1, 1, 1);

INSERT INTO USER_TEMPLATE_ACTIVITY (template_activity_id, status_id, external_reference)
VALUES 
(1, 1, 1);

INSERT INTO QUESTIONNAIRE (title, total_questions)
VALUES
("This is a questionnaire", 10);

INSERT INTO USER_QUESTIONNAIRE (user_id, questionnaire_id, correct_answers, percentage_score, status_id)
VALUES
(1, 1, 5, 50.00, 4);
