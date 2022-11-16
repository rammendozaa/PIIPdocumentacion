INSERT INTO DICT_ACTIVITY_STATUS (id, name, description)
VALUES 
(1, "Created", "Not started yet"),
(2, "In progress", "Started"),
(3, "Pending", "Waiting for feedback"),
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

INSERT INTO DICT_COMPANY (id, name)
VALUES 
(1, "Facebook"),
(2, "Microsoft"),
(3, "Google"),
(4, "Amazon"),
(5, "Apple"),
(6, "Airbnb"),
(7, "Uber"),
(8, "Lyft"),
(9, "Twitter"),
(10, "Netflix"),
(11, "Tesla"),
(12, "Oracle"),
(13, "Twitch"),
(14, "Other");
  
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

INSERT INTO ADMINISTRATOR (email, password, dob, first_name, last_name, is_super)
VALUES 
("rammendozaa@yahoo.com", "password", "1998-07-02", "Alvaro", "Mendoza Ramirez", 1),
("hugomichelbl@gmail.com", "password", "1998-07-02", "Hugo Michel", "Barbosa Lopez", 1),
("no-super-alvaro@yahoo.com", "password", "1998-07-02", "Alvaro", "Mendoza Ramirez", 0),
("no-super-hugo@gmail.com", "password", "1998-07-02", "Hugo Michel", "Barbosa Lopez", 0);


INSERT INTO TEMPLATE (id, name, description, position)
VALUES 
(1, "Introduction", "This is the first template that users will see", 1),
(2, "Medium", "This is the first template that users will see", 1),
(3, "Advanced", "This is the first template that users will see", 1);

INSERT INTO QUESTIONNAIRE (id, title, description, total_questions)
VALUES 
(1000, "Placement quiz", "This is a quiz dedicated for placement", "32");

INSERT INTO QUESTIONNAIRE_QUESTION (questionnaire_id, question, answer, option_1, option_2, option_3)
VALUES
(1000,"What is a correct syntax to output 'Hello World' in C++?",
"cout << \"Hello World\";",
"Console.WriteLine(\"Hello World\");",
"System.out.println(\"Hello World\");",
"print (\"Hello World\");"),
(1000,"How do you insert COMMENTS in C++ code?",
"// This is a comment",
"/* This is a comment",
"# This is a comment",
"-> This is a comment"),
(1000,"Which data type is used to create a variable that should store text?",
"string",
"txt",
"String",
"myString"),
(1000, "How do you create a variable with the numeric value 5?",
"int x = 5;",
"x = 5;",
"double x = 5;",
"num x = 5"),
(1000,"How do you create a variable with the floating number 2.8?",
"double x = 2.8;",
"int x = 2.8;",
"byte x = 2.8;",
"x = 2.8;"),
(1000,"Which method can be used to find the length of a string?",
"length()",
"getLength()",
"getSize()",
"len()"),
(1000,"Which operator is used to add together two values?",
"+",
"*",
"plus",
"&"),
(1000,"Which operator can be used to compare two values?",
"==",
"<>",
"><",
"="),
(1000,"To declare an array in C++, define the variable type with:",
"[]",
"{}",
"()",
"createArray()"),
(1000,"Array indexes start with",
"0",
"1",
"2",
"3"),
(1000,"How do you create a function in C++?",
"functionName()",
"functionName[]",
"functionName.",
"(functionName)"),
(1000,"How do you call a function in C++",
"functionName();",
"(functionName)",
"functionName",
"functionName[];"),
(1000,"Which keyword is used to create a class in C++?",
"class",
"MyClass",
"class()",
"className"),
(1000,"What is the correct way to create an object called myObj of MyClass?",
"class myObj = new MyClass();",
"class MyClass = new myObj();",
"new myObj = MyClass();",
"MyClass myObj;"),
(1000,"Which operator is used to multiply numbers?",
"*",
"#",
"%",
"x"),
(1000,"How do you start writing an if statement in C++?",
"if (x > y)",
"if x > y:",
"if (x > y) then",
"if (x > y) else"),
(1000,"How do you write a loop in C++",
"while( x > y)",
"while x > y {",
"while x > y :",
"x > y while {"),
(1000,"What’s an algorithm?",
"A set of step-by-step instructions to resolve a problem",
"Patterns and trends used to solve a problem",
"A programming language",
"start method"),
(1000,"What are algorithms used for?",
"To plan out the solution to a problem",
"As a platform to program a solution",
"To test a solution to a problem",
"For fun"),
(1000,"How can an algorithm be represented?",
"As a flowchart or pseudocode",
"As a flowchart",
"As pseudocode",
"draw"),
(1000,"What is a flowchart?",
"A diagram that represents a set of instructions",
"A high-level language that has specific syntax",
"A way of describing a set of instructions that doesn’t use specific syntax",
"A drawing"),
(1000,"What is pseudocode?",
"A way of describing a set of instructions that doesn’t use specific syntax",
"A high-level language that has specific syntax",
"A diagram that represents a set of instructions",
"A sub variant of C++"),
(1000,"What’s the time, space complexity of the following code? 
for (i = 0; i < N; i++) { a = a + rand();}
for (j = 0; j < M; j++) { b = b + rand();}",
"O(N + M) time, O(1) space",
"O(N * M) time, O(1) space",
"O(N + M) time, O(N + M) space",
"O(N * M) time, O(N + M) space"),
(1000,"What is the time complexity of the following code:
int a = 0;
for (i = 0; i < N; i++) {
		for (j = N; j > i; j--) {
			a = a + i + j;
	}
}",
"O(N*N)",
"O(N)",
"O(N*log(N))",
"O(N * Sqrt(N))"),
(1000,"What is the time complexity of the following code:
int i, j, k = 0;
for (i = n / 2; i <= n; i++) {
    for (j = 2; j <= n; j = j * 2) {
        k = k + n / 2;
    }
}",
"O(NlogN)",
"O(N)",
"O(N^2)",
"O(N^2LogN)"),
(1000,"What does it mean when we say that an algorithm X is asymptotically more efficient than Y?",
"X will always be a better choice for large inputs",
"X will always be a better choice for small inputs",
"Y will always be a better choice for small inputs",
"X will always be a better choice for all inputs"),
(1000,"What is the time complexity of the following code:
int a = 0, i = N;
while (i > 0) {
    a += i;
    i /= 2;
}",
"O(log N)",
"O(N)",
"O(sqrt(N))",
"O(N/2)"),
(1000,"Which of the following best describes the useful criterion for comparing the efficiency of algorithms?",
"Both of the above",
"Time",
"Memory",
"None of the above"),
(1000,"How is time complexity measured?",
"By counting the number of primitive operations performed by the algorithm on given input size.",
"By counting the number of algorithms in an algorithm.",
"By counting the size of data input to the algorithm.",
"None of the above"),
(1000,"What will be the time complexity of the following code?",
"O(log K (N))",
"O(N)",
"O(K)",
"O(log N (K))"),
(1000,"What are soft skills?",
"All of the above",
"Soft skills are personality traits and behaviors that will help candidates get hired and succeed in their work.",
"Soft skills are abilities that relate to how you work and how you interact with other people.",
"None all of the above"),
(1000,"START is an acronym for ..",
"Situation or Task, Action, Result, Takeaway.",
"Situation or Task, Ability, Radiation, Takeaway.",
"Start or Task, Answers, Result, Takeaway.",
"Situation or Task, Action,Rail, Technique.");
