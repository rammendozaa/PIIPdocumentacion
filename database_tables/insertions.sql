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
("hugomichelbl@gmail.com", "password", "1998-07-02", "Hugo Michel", "Barbosa Lopez", 1),
("no-super-alvaro@yahoo.com", "password", "1998-07-02", "Alvaro", "Mendoza Ramirez", 0),
("no-super-hugo@gmail.com", "password", "1998-07-02", "Hugo Michel", "Barbosa Lopez", 0);


INSERT INTO USER_ADMINISTRATOR (user_id, administrator_id)
VALUES 
(1, 1);

INSERT INTO INTERVIEW (user_id, administrator_id, language_id)
VALUES 
(1, 1, 1);

INSERT INTO PROBLEM (id, title, description, test_cases, tags, difficulty_id, is_active, created_date, url, time_limit, memory_limit, input, output, notes, source, solution)
VALUES
(1,'Remove Directed Edges','<p>You are given a directed acyclic graph, consisting of $$$n$$$ vertices and $$$m$$$ edges. The vertices are numbered from $$$1$$$ to $$$n$$$. There are no multiple edges and self-loops.</p><p>Let $$$\\mathit{in}_v$$$ be the number of incoming edges (indegree) and $$$\\mathit{out}_v$$$ be the number of outgoing edges (outdegree) of vertex $$$v$$$.</p><p>You are asked to remove some edges from the graph. Let the new degrees be $$$\\mathit{in\'}_v$$$ and $$$\\mathit{out\'}_v$$$.</p><p>You are only allowed to remove the edges if the following conditions hold for every vertex $$$v$$$: </p><ul> <li> $$$\\mathit{in\'}_v &lt; \\mathit{in}_v$$$ or $$$\\mathit{in\'}_v = \\mathit{in}_v = 0$$$; </li><li> $$$\\mathit{out\'}_v &lt; \\mathit{out}_v$$$ or $$$\\mathit{out\'}_v = \\mathit{out}_v = 0$$$. </li></ul><p>Let\'s call a set of vertices $$$S$$$ <span class=\"tex-font-style-it\">cute</span> if for each pair of vertices $$$v$$$ and $$$u$$$ ($$$v \\neq u$$$) such that $$$v \\in S$$$ and $$$u \\in S$$$, there exists a path either from $$$v$$$ to $$$u$$$ or from $$$u$$$ to $$$v$$$ over the non-removed edges.</p><p>What is the maximum possible size of a <span class=\"tex-font-style-it\">cute</span> set $$$S$$$ after you remove some edges from the graph and both indegrees and outdegrees of all vertices either decrease or remain equal to $$$0$$$?</p>','<style type=\"text/css\">.input, .output {border: 1px solid #888888;} .output {margin-bottom:1em;position:relative;top:-1px;} .output pre,.input pre {background-color:#EFEFEF;line-height:1.25em;margin:0;padding:0.25em;} .title {background-color:#FFFFFF;border-bottom: 1px solid #888888;font-family:arial;font-weight:bold;padding:0.25em;}</style><div class=\"input\"><div class=\"title\">Input</div><pre>\n3 3\n1 2\n2 3\n1 3\n</pre></div><div class=\"output\"><div class=\"title\">Output</div><pre>\n2\n</pre></div><div class=\"input\"><div class=\"title\">Input</div><pre>\n5 0\n</pre></div><div class=\"output\"><div class=\"title\">Output</div><pre>\n1\n</pre></div><div class=\"input\"><div class=\"title\">Input</div><pre>\n7 8\n7 1\n1 3\n6 2\n2 3\n7 2\n2 4\n7 3\n6 3\n</pre></div><div class=\"output\"><div class=\"title\">Output</div><pre>\n3\n</pre>','DP_Graphs_Greedy',1,1,'2022-05-04 21:01:32','https://codeforces.com/problemset/problem/1674/G','2','256','<p>The first line contains two integers $$$n$$$ and $$$m$$$ ($$$1 \\le n \\le 2 \\cdot 10^5$$$; $$$0 \\le m \\le 2 \\cdot 10^5$$$) — the number of vertices and the number of edges of the graph.</p><p>Each of the next $$$m$$$ lines contains two integers $$$v$$$ and $$$u$$$ ($$$1 \\le v, u \\le n$$$; $$$v \\neq u$$$) — the description of an edge.</p><p>The given edges form a valid directed acyclic graph. There are no multiple edges.</p>','<p>Print a single integer — the maximum possible size of a <span class=\"tex-font-style-it\">cute</span> set $$$S$$$ after you remove some edges from the graph and both indegrees and outdegrees of all vertices either decrease or remain equal to $$$0$$$.</p>','','<a style=\"color: black\" href=\"/contest/1674\">Codeforces Round #786 (Div. 3)</a>','There is no solution'),
(2,'Desktop Rearrangement','<p>Your friend Ivan asked you to help him rearrange his desktop. The desktop can be represented as a rectangle matrix of size $$$n \\times m$$$ consisting of characters \'<span class=\"tex-font-style-tt\">.</span>\' (empty cell of the desktop) and \'<span class=\"tex-font-style-tt\">*</span>\' (an icon).</p><p>The desktop is called <span class=\"tex-font-style-bf\">good</span> if all its icons are occupying some prefix of full columns and, possibly, the prefix of the next column (and there are no icons outside this figure). In other words, some amount of first columns will be filled with icons and, possibly, some amount of first cells of the next (after the last full column) column will be also filled with icons (and all the icons on the desktop belong to this figure). This is pretty much the same as the real life icons arrangement.</p><p>In one move, you can take one icon and move it to any empty cell in the desktop.</p><p>Ivan loves to add some icons to his desktop and remove them from it, so he is asking you to answer $$$q$$$ queries: what is the <span class=\"tex-font-style-bf\">minimum</span> number of moves required to make the desktop <span class=\"tex-font-style-bf\">good</span> after adding/removing one icon?</p><p>Note that <span class=\"tex-font-style-bf\">queries are permanent</span> and change the state of the desktop.</p>','<style type=\"text/css\">.input, .output {border: 1px solid #888888;} .output {margin-bottom:1em;position:relative;top:-1px;} .output pre,.input pre {background-color:#EFEFEF;line-height:1.25em;margin:0;padding:0.25em;} .title {background-color:#FFFFFF;border-bottom: 1px solid #888888;font-family:arial;font-weight:bold;padding:0.25em;}</style><div class=\"input\"><div class=\"title\">Input</div><pre>\n4 4 8\n..**\n.*..\n*...\n...*\n1 3\n2 3\n3 1\n2 3\n3 4\n4 3\n2 3\n2 2\n</pre></div><div class=\"output\"><div class=\"title\">Output</div><pre>\n3\n4\n4\n3\n4\n5\n5\n5\n</pre></div><div class=\"input\"><div class=\"title\">Input</div><pre>\n2 5 5\n*...*\n*****\n1 3\n2 2\n1 3\n1 5\n2 3\n</pre></div><div class=\"output\"><div class=\"title\">Output</div><pre>\n2\n3\n3\n3\n2\n</pre>','DP_Graphs_Greedy',1,1,'2022-05-04 21:01:33','https://codeforces.com/problemset/problem/1674/F','3','256','<p>The first line of the input contains three integers $$$n$$$, $$$m$$$ and $$$q$$$ ($$$1 \\le n, m \\le 1000; 1 \\le q \\le 2 \\cdot 10^5$$$) — the number of rows in the desktop, the number of columns in the desktop and the number of queries, respectively.</p><p>The next $$$n$$$ lines contain the description of the desktop. The $$$i$$$-th of them contains $$$m$$$ characters \'<span class=\"tex-font-style-tt\">.</span>\' and \'<span class=\"tex-font-style-tt\">*</span>\' — the description of the $$$i$$$-th row of the desktop.</p><p>The next $$$q$$$ lines describe queries. The $$$i$$$-th of them contains two integers $$$x_i$$$ and $$$y_i$$$ ($$$1 \\le x_i \\le n; 1 \\le y_i \\le m$$$) — the position of the cell which changes its state (if this cell contained the icon before, then this icon is removed, otherwise an icon appears in this cell).</p>','<p>Print $$$q$$$ integers. The $$$i$$$-th of them should be the <span class=\"tex-font-style-bf\">minimum</span> number of moves required to make the desktop <span class=\"tex-font-style-bf\">good</span> after applying the first $$$i$$$ queries.</p>','','<a style=\"color: black\" href=\"/contest/1674\">Codeforces Round #786 (Div. 3)</a>','There is no solution'),
(3,'Breaking the Wall','<p>Monocarp plays &quot;Rage of Empires II: Definitive Edition&quot; — a strategic computer game. Right now he\'s planning to attack his opponent in the game, but Monocarp\'s forces cannot enter the opponent\'s territory since the opponent has built a wall.</p><p>The wall consists of $$$n$$$ sections, aligned in a row. The $$$i$$$-th section initially has durability $$$a_i$$$. If durability of some section becomes $$$0$$$ or less, this section is considered broken.</p><p>To attack the opponent, Monocarp needs to break at least two sections of the wall (any two sections: possibly adjacent, possibly not). To do this, he plans to use an onager — a special siege weapon. The onager can be used to shoot any section of the wall; the shot deals $$$2$$$ damage to the target section and $$$1$$$ damage to adjacent sections. In other words, if the onager shoots at the section $$$x$$$, then the durability of the section $$$x$$$ decreases by $$$2$$$, and the durability of the sections $$$x - 1$$$ and $$$x + 1$$$ (if they exist) decreases by $$$1$$$ each. </p><p>Monocarp can shoot at any sections any number of times, <span class=\"tex-font-style-bf\">he can even shoot at broken sections</span>.</p><p>Monocarp wants to calculate the minimum number of onager shots needed to break at least two sections. Help him!</p>','<style type=\"text/css\">.input, .output {border: 1px solid #888888;} .output {margin-bottom:1em;position:relative;top:-1px;} .output pre,.input pre {background-color:#EFEFEF;line-height:1.25em;margin:0;padding:0.25em;} .title {background-color:#FFFFFF;border-bottom: 1px solid #888888;font-family:arial;font-weight:bold;padding:0.25em;}</style><div class=\"input\"><div class=\"title\">Input</div><pre>\n5\n20 10 30 10 20\n</pre></div><div class=\"output\"><div class=\"title\">Output</div><pre>\n10\n</pre></div><div class=\"input\"><div class=\"title\">Input</div><pre>\n3\n1 8 1\n</pre></div><div class=\"output\"><div class=\"title\">Output</div><pre>\n1\n</pre></div><div class=\"input\"><div class=\"title\">Input</div><pre>\n6\n7 6 6 8 5 8\n</pre></div><div class=\"output\"><div class=\"title\">Output</div><pre>\n4\n</pre></div><div class=\"input\"><div class=\"title\">Input</div><pre>\n6\n14 3 8 10 15 4\n</pre></div><div class=\"output\"><div class=\"title\">Output</div><pre>\n4\n</pre></div><div class=\"input\"><div class=\"title\">Input</div><pre>\n4\n1 100 100 1\n</pre></div><div class=\"output\"><div class=\"title\">Output</div><pre>\n2\n</pre></div><div class=\"input\"><div class=\"title\">Input</div><pre>\n3\n40 10 10\n</pre></div><div class=\"output\"><div class=\"title\">Output</div><pre>\n7\n</pre>','DP_Graphs_Greedy',1,1,'2022-05-04 21:01:35','https://codeforces.com/problemset/problem/1674/E','2','256','<p>The first line contains one integer $$$n$$$ ($$$2 \\le n \\le 2 \\cdot 10^5$$$) — the number of sections.</p><p>The second line contains the sequence of integers $$$a_1, a_2, \\dots, a_n$$$ ($$$1 \\le a_i \\le 10^6$$$), where $$$a_i$$$ is the initial durability of the $$$i$$$-th section.</p>','<p>Print one integer — the minimum number of onager shots needed to break at least two sections of the wall.</p>','','<a style=\"color: black\" href=\"/contest/1674\">Codeforces Round #786 (Div. 3)</a>','There is no solution'),
(4,'A-B-C Sort','<p>You are given three arrays $$$a$$$, $$$b$$$ and $$$c$$$. Initially, array $$$a$$$ consists of $$$n$$$ elements, arrays $$$b$$$ and $$$c$$$ are empty.</p><p>You are performing the following algorithm that consists of two steps: </p><ul> <li> Step $$$1$$$: while $$$a$$$ is not empty, you take <span class=\"tex-font-style-it\">the last element</span> from $$$a$$$ and move it <span class=\"tex-font-style-it\">in the middle</span> of array $$$b$$$. If $$$b$$$ currently has odd length, you can choose: place the element from $$$a$$$ to the left or to the right of the middle element of $$$b$$$. As a result, $$$a$$$ becomes empty and $$$b$$$ consists of $$$n$$$ elements. </li><li> Step $$$2$$$: while $$$b$$$ is not empty, you take <span class=\"tex-font-style-it\">the middle element</span> from $$$b$$$ and move it <span class=\"tex-font-style-it\">to the end</span> of array $$$c$$$. If $$$b$$$ currently has even length, you can choose which of two middle elements to take. As a result, $$$b$$$ becomes empty and $$$c$$$ now consists of $$$n$$$ elements. </li></ul> Refer to the Note section for examples.<p>Can you make array $$$c$$$ sorted in non-decreasing order?</p>','<style type=\"text/css\">.input, .output {border: 1px solid #888888;} .output {margin-bottom:1em;position:relative;top:-1px;} .output pre,.input pre {background-color:#EFEFEF;line-height:1.25em;margin:0;padding:0.25em;} .title {background-color:#FFFFFF;border-bottom: 1px solid #888888;font-family:arial;font-weight:bold;padding:0.25em;}</style><div class=\"input\"><div class=\"title\">Input</div><pre>\n3\n4\n3 1 5 3\n3\n3 2 1\n1\n7331\n</pre></div><div class=\"output\"><div class=\"title\">Output</div><pre>\nYES\nNO\nYES\n</pre>','DP_Graphs_Greedy',1,1,'2022-05-04 21:01:37','https://codeforces.com/problemset/problem/1674/D','2','256','<p>The first line contains a single integer $$$t$$$ ($$$1 \\le t \\le 2 \\cdot 10^4$$$) — the number of test cases. Next $$$t$$$ cases follow.</p><p>The first line of each test case contains the single integer $$$n$$$ ($$$1 \\le n \\le 2 \\cdot 10^5$$$) — the length of array $$$a$$$.</p><p>The second line of each test case contains $$$n$$$ integers $$$a_1, a_2, \\dots, a_n$$$ ($$$1 \\le a_i \\le 10^6$$$) — the array $$$a$$$ itself.</p><p>It\'s guaranteed that the sum of $$$n$$$ doesn\'t exceed $$$2 \\cdot 10^5$$$.</p>','<p>For each test, print <span class=\"tex-font-style-tt\">YES</span> (case-insensitive), if you can make array $$$c$$$ sorted in non-decreasing order. Otherwise, print <span class=\"tex-font-style-tt\">NO</span> (case-insensitive).</p>','','<a style=\"color: black\" href=\"/contest/1674\">Codeforces Round #786 (Div. 3)</a>','There is no solution');

INSERT INTO PROGRAMMING_TOPIC (id, title, description, topic_information, created_date, is_active)
VALUES
(1,'this is a title','this is a descritpion','{\"blocks\":[{\"key\":\"637gr\",\"text\":\"first thing\",\"type\":\"ordered-list-item\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{\"text-align\":\"start\"}},{\"key\":\"d5i1d\",\"text\":\"second thing\",\"type\":\"ordered-list-item\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}},{\"key\":\"25ei2\",\"text\":\"third thing\",\"type\":\"ordered-list-item\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}},{\"key\":\"ahe5a\",\"text\":\"uh\",\"type\":\"ordered-list-item\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}},{\"key\":\"93u54\",\"text\":\"this is a test for a algorithm\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[{\"offset\":0,\"length\":30,\"style\":\"color-rgb(0,0,0)\"},{\"offset\":0,\"length\":30,\"style\":\"fontfamily-PT Sans\\\", sans-serif\"},{\"offset\":10,\"length\":4,\"style\":\"fontfamily-Impact\"},{\"offset\":21,\"length\":9,\"style\":\"fontsize-11\"}],\"entityRanges\":[],\"data\":{\"text-align\":\"left\"}},{\"key\":\"csv9s\",\"text\":\"test 222\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[{\"offset\":0,\"length\":8,\"style\":\"color-rgb(0,0,0)\"},{\"offset\":0,\"length\":8,\"style\":\"fontfamily-PT Sans\\\", sans-serif\"},{\"offset\":5,\"length\":3,\"style\":\"fontsize-11\"}],\"entityRanges\":[],\"data\":{\"text-align\":\"left\"}}],\"entityMap\":{}}','2022-05-07 21:04:39',1);

INSERT INTO SOFT_SKILL_TOPIC (id, title, description, topic_information, created_date, is_active)
VALUES
(1,'this is a title','this is a descritpion','{\"blocks\":[{\"key\":\"637gr\",\"text\":\"this is a \",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}},{\"key\":\"bjcu7\",\"text\":\"\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}},{\"key\":\"7htl9\",\"text\":\"\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}},{\"key\":\"9us8u\",\"text\":\"test for a soft skill\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[{\"offset\":0,\"length\":4,\"style\":\"fontfamily-Impact\"},{\"offset\":11,\"length\":4,\"style\":\"SUBSCRIPT\"}],\"entityRanges\":[],\"data\":{\"text-align\":\"center\"}},{\"key\":\"4vr55\",\"text\":\"\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{\"text-align\":\"center\"}},{\"key\":\"9eifa\",\"text\":\"topic \",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}},{\"key\":\"3uvss\",\"text\":\"\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}},{\"key\":\"dlpdg\",\"text\":\"test 222222\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[{\"offset\":5,\"length\":6,\"style\":\"SUPERSCRIPT\"}],\"entityRanges\":[],\"data\":{}}],\"entityMap\":{}}','2022-05-07 21:03:50',1);

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
(1, "Introduction", "This is the first template that users will see", 1),
(2, "Medium", "This is the first template that users will see", 1),
(3, "Advanced", "This is the first template that users will see", 1);

INSERT INTO TEMPLATE_SECTION (id, name, description, position, template_id)
VALUES
(1, "Section 1", "The first section here", 1, 1);

INSERT INTO TEMPLATE_ACTIVITY (id, name, description, template_section_id, activity_type_id, position, external_reference)
VALUES 
(1, "Questionaire", "Solve this questionare so that we can assign you in the perfect step of this path", 1, 1, 1, 1);

INSERT INTO USER_TEMPLATE (user_id, template_id, status_id, position)
VALUES 
(1, 1, 1, 1);

INSERT INTO USER_TEMPLATE_SECTION (user_id, template_section_id, user_template_id, status_id, position)
VALUES
(1, 1, 1, 1, 1);

INSERT INTO USER_TEMPLATE_ACTIVITY (user_id, template_activity_id, user_template_section_id, status_id, position, external_reference)
VALUES 
(1, 1, 1, 1, 1, 1);

INSERT INTO QUESTIONNAIRE (id, title, description, total_questions)
VALUES
(1, "This is a questionnaire", "this is a description", 4),
(7, "This is a questionnaire", "this is a description", 4);

INSERT INTO QUESTIONNAIRE_QUESTION (questionnaire_id, question, answer, option_1, option_2, option_3)
VALUES
(7, "question 1?", "yes", "no", "maybe", "what is the question?"),
(7, "question 2?", "yes", "no", "maybe", "what is the question?"),
(7, "question 3?", "yes", "no", "maybe", "what is the question?"),
(7, "question 4?", "yes", "no", "maybe", "what is the question?"),
(1, "question 1?", "yes", "no", "maybe", "what is the question?"),
(1, "question 2?", "yes", "no", "maybe", "what is the question?"),
(1, "question 3?", "yes", "no", "maybe", "what is the question?"),
(1, "question 4?", "yes", "no", "maybe", "what is the question?");

INSERT INTO USER_QUESTIONNAIRE (user_id, questionnaire_id, correct_answers, percentage_score, status_id)
VALUES
(1, 1, 5, 50.00, 4);
