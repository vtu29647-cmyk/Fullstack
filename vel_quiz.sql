-- ============================================================
-- Quiz Engine Database
-- Run: mysql -u root -p < vel_quiz.sql
-- ============================================================

CREATE DATABASE IF NOT EXISTS vel_quiz;
USE vel_quiz;

-- ─── Tables ──────────────────────────────────────────────────
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id    INT AUTO_INCREMENT PRIMARY KEY,
  name  VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE subjects (
  id   INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE questions (
  id         INT AUTO_INCREMENT PRIMARY KEY,
  subject_id INT NOT NULL,
  question   TEXT NOT NULL,
  option1    VARCHAR(255) NOT NULL,
  option2    VARCHAR(255) NOT NULL,
  option3    VARCHAR(255) NOT NULL,
  option4    VARCHAR(255) NOT NULL,
  answer     VARCHAR(255) NOT NULL,
  FOREIGN KEY (subject_id) REFERENCES subjects(id)
);

-- ─── Subjects ────────────────────────────────────────────────
INSERT INTO subjects (name) VALUES
('Frontend Development'),
('Backend Development'),
('Java Programming'),
('Python Programming'),
('C Programming'),
('Data Structures'),
('Computer Networks'),
('Database Management Systems'),
('Operating Systems'),
('Web Development Fundamentals'),
('Artificial Intelligence'),
('Cyber Security'),
('Software Engineering'),
('Cloud Computing'),
('Internet of Things');

-- ─── Questions: Frontend Development (id=1) ──────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(1, 'Which HTML tag is used to define an internal style sheet?', '<script>', '<style>', '<css>', '<link>', '<style>'),
(1, 'Which CSS property controls the text size?', 'font-style', 'text-size', 'font-size', 'text-style', 'font-size'),
(1, 'What does CSS stand for?', 'Creative Style Sheets', 'Cascading Style Sheets', 'Computer Style Sheets', 'Colorful Style Sheets', 'Cascading Style Sheets'),
(1, 'Which HTML attribute is used to define inline styles?', 'styles', 'class', 'style', 'font', 'style'),
(1, 'What is the correct JavaScript syntax to change the content of an element with id="demo"?', 'document.getElement("demo").innerHTML = "Hello";', 'document.getElementById("demo").innerHTML = "Hello";', '#demo.innerHTML = "Hello";', 'document.getElementByName("demo").innerHTML = "Hello";', 'document.getElementById("demo").innerHTML = "Hello";'),
(1, 'Which HTML element is used to specify a footer for a document?', '<bottom>', '<footer>', '<section>', '<aside>', '<footer>'),
(1, 'What is the default display value of a <div> element?', 'inline', 'inline-block', 'block', 'flex', 'block'),
(1, 'Which CSS property is used to change the background color?', 'color', 'bgcolor', 'background-color', 'background', 'background-color'),
(1, 'How do you add a comment in CSS?', '// this is a comment', '/* this is a comment */', '# this is a comment', '<!-- this is a comment -->', '/* this is a comment */'),
(1, 'Which HTML tag creates a hyperlink?', '<link>', '<a>', '<href>', '<nav>', '<a>'),
(1, 'What does the z-index CSS property control?', 'Zoom level', 'Stacking order of elements', 'Element size', 'Text alignment', 'Stacking order of elements'),
(1, 'Which CSS unit is relative to the font size of the root element?', 'em', 'px', 'rem', 'vh', 'rem'),
(1, 'What is Flexbox used for in CSS?', 'Adding animations', 'Creating one-dimensional layouts', 'Adding hover effects', 'Changing font styles', 'Creating one-dimensional layouts'),
(1, 'Which JavaScript method is used to select an element by its class name?', 'getElementById()', 'getElementsByClassName()', 'querySelector()', 'getByClass()', 'getElementsByClassName()'),
(1, 'What does the "box model" in CSS consist of?', 'Content, margin, border, padding', 'Width, height, color, font', 'Display, position, float, clear', 'Top, right, bottom, left', 'Content, margin, border, padding');

-- ─── Questions: Backend Development (id=2) ───────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(2, 'What does REST stand for?', 'Remote Execution State Transfer', 'Representational State Transfer', 'Reliable State Transfer', 'Resource State Transfer', 'Representational State Transfer'),
(2, 'Which HTTP method is used to retrieve data from a server?', 'POST', 'PUT', 'GET', 'DELETE', 'GET'),
(2, 'What is Node.js?', 'A JavaScript frontend framework', 'A JavaScript runtime built on Chrome V8', 'A CSS preprocessor', 'A database system', 'A JavaScript runtime built on Chrome V8'),
(2, 'Which status code indicates a successful HTTP response?', '404', '500', '302', '200', '200'),
(2, 'What is middleware in Express.js?', 'A database connector', 'Functions that execute during the request-response cycle', 'A templating engine', 'A frontend component', 'Functions that execute during the request-response cycle'),
(2, 'What does JSON stand for?', 'JavaScript Object Navigation', 'Java Standard Object Notation', 'JavaScript Object Notation', 'Java Script Online Notation', 'JavaScript Object Notation'),
(2, 'Which HTTP status code means "Not Found"?', '400', '401', '403', '404', '404'),
(2, 'What is an API?', 'Application Programming Interface', 'Automated Processing Interface', 'Application Process Integration', 'Advanced Programming Index', 'Application Programming Interface'),
(2, 'Which command installs a Node.js package?', 'node install', 'npm install', 'node get', 'pkg install', 'npm install'),
(2, 'What is the purpose of the package.json file in Node.js?', 'Stores CSS styles', 'Defines project metadata and dependencies', 'Contains database queries', 'Manages HTML templates', 'Defines project metadata and dependencies'),
(2, 'What does CRUD stand for?', 'Create, Read, Update, Delete', 'Connect, Run, Use, Deploy', 'Create, Run, Undo, Delete', 'Copy, Read, Undo, Deploy', 'Create, Read, Update, Delete'),
(2, 'Which module in Node.js is used to create a web server?', 'fs', 'path', 'http', 'url', 'http'),
(2, 'What is JWT used for?', 'Database management', 'Authentication and authorization', 'CSS styling', 'HTML templating', 'Authentication and authorization'),
(2, 'What is the purpose of the .env file?', 'Store HTML templates', 'Store environment variables', 'Store CSS styles', 'Store database tables', 'Store environment variables'),
(2, 'Which HTTP method is used to update existing data?', 'GET', 'POST', 'PUT', 'DELETE', 'PUT');

-- ─── Questions: Java Programming (id=3) ──────────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(3, 'What is the correct way to declare a variable in Java?', 'variable x = 5;', 'int x = 5;', 'x = 5;', 'declare x = 5;', 'int x = 5;'),
(3, 'Which keyword is used to create a class in Java?', 'object', 'type', 'class', 'struct', 'class'),
(3, 'What is the size of an int data type in Java?', '8 bits', '16 bits', '32 bits', '64 bits', '32 bits'),
(3, 'Which method is the entry point of a Java program?', 'start()', 'run()', 'main()', 'init()', 'main()'),
(3, 'What does JVM stand for?', 'Java Virtual Machine', 'Java Variable Method', 'Java Value Manager', 'Java Visual Mode', 'Java Virtual Machine'),
(3, 'Which keyword is used to inherit a class in Java?', 'implement', 'extends', 'inherits', 'using', 'extends'),
(3, 'What is the output of: System.out.println(10 / 3);', '3.33', '3', '4', '10/3', '3'),
(3, 'Which collection does NOT allow duplicate elements in Java?', 'ArrayList', 'LinkedList', 'Set', 'Vector', 'Set'),
(3, 'What keyword prevents a method from being overridden?', 'static', 'abstract', 'final', 'private', 'final'),
(3, 'What does OOP stand for?', 'Object Oriented Programming', 'Open Ordered Processing', 'Object Output Processing', 'Ordered Object Program', 'Object Oriented Programming'),
(3, 'Which access modifier makes a member accessible only within its class?', 'public', 'protected', 'default', 'private', 'private'),
(3, 'What is a constructor in Java?', 'A method that returns a value', 'A special method called when an object is created', 'A static block of code', 'A method to destroy objects', 'A special method called when an object is created'),
(3, 'Which keyword is used to handle exceptions in Java?', 'catch', 'error', 'handle', 'except', 'catch'),
(3, 'What is an interface in Java?', 'A class with only static methods', 'A blueprint with abstract methods', 'A type of array', 'A built-in Java class', 'A blueprint with abstract methods'),
(3, 'What is the default value of a boolean in Java?', 'true', 'false', '0', 'null', 'false');

-- ─── Questions: Python Programming (id=4) ────────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(4, 'What is the correct syntax to output "Hello World" in Python?', 'echo("Hello World")', 'print("Hello World")', 'console.log("Hello World")', 'println("Hello World")', 'print("Hello World")'),
(4, 'Which symbol is used for single-line comments in Python?', '//', '/*', '#', '--', '#'),
(4, 'What data type is the result of: type(3.14)?', 'int', 'float', 'double', 'decimal', 'float'),
(4, 'How do you create a list in Python?', 'list = {1, 2, 3}', 'list = (1, 2, 3)', 'list = [1, 2, 3]', 'list = <1, 2, 3>', 'list = [1, 2, 3]'),
(4, 'Which keyword is used to define a function in Python?', 'function', 'func', 'def', 'define', 'def'),
(4, 'What does len() do in Python?', 'Returns the last element', 'Returns the length of an object', 'Deletes an element', 'Converts to list', 'Returns the length of an object'),
(4, 'Which of these is a Python tuple?', '[1, 2, 3]', '{1, 2, 3}', '(1, 2, 3)', '<1, 2, 3>', '(1, 2, 3)'),
(4, 'How do you start a for loop in Python?', 'for i in range(10):', 'for (i=0; i<10; i++)', 'loop i from 0 to 10:', 'foreach i in 10:', 'for i in range(10):'),
(4, 'What is the Python keyword to check membership in a list?', 'contains', 'has', 'in', 'includes', 'in'),
(4, 'Which function converts a string to an integer in Python?', 'toInt()', 'Integer()', 'int()', 'str()', 'int()'),
(4, 'What does the "self" keyword represent in a Python class?', 'The class itself', 'The current instance of the class', 'A global variable', 'The parent class', 'The current instance of the class'),
(4, 'Which Python library is used for data analysis?', 'NumPy', 'Pandas', 'Matplotlib', 'SciPy', 'Pandas'),
(4, 'What is a dictionary in Python?', 'An ordered list', 'A set of unique values', 'A key-value pair collection', 'An immutable sequence', 'A key-value pair collection'),
(4, 'What is the output of: print(2 ** 3)?', '6', '8', '9', '5', '8'),
(4, 'Which statement is used to handle exceptions in Python?', 'catch', 'try-except', 'error-handle', 'try-catch', 'try-except');

-- ─── Questions: C Programming (id=5) ─────────────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(5, 'Which header file is required for printf() and scanf()?', 'stdlib.h', 'math.h', 'stdio.h', 'string.h', 'stdio.h'),
(5, 'What is the correct syntax to declare a pointer in C?', 'int ptr;', 'int &ptr;', 'int *ptr;', 'pointer int ptr;', 'int *ptr;'),
(5, 'What does the & operator do in C?', 'Bitwise AND', 'Returns the address of a variable', 'Dereferences a pointer', 'Logical AND', 'Returns the address of a variable'),
(5, 'What is the size of a char data type in C?', '2 bytes', '4 bytes', '1 byte', '8 bytes', '1 byte'),
(5, 'Which loop is guaranteed to execute at least once?', 'for', 'while', 'do-while', 'foreach', 'do-while'),
(5, 'What does malloc() do in C?', 'Frees memory', 'Allocates dynamic memory', 'Copies memory', 'Initializes variables', 'Allocates dynamic memory'),
(5, 'What is the output of: printf("%d", 5 % 2)?', '2', '0', '1', '2.5', '1'),
(5, 'Which keyword is used to define a constant in C?', 'constant', 'static', 'const', 'define', 'const'),
(5, 'What is a null pointer in C?', 'A pointer to zero address', 'A pointer that points to nothing (NULL)', 'A pointer to a string', 'An uninitialized pointer', 'A pointer that points to nothing (NULL)'),
(5, 'How are strings terminated in C?', 'With a space', 'With a newline', 'With a null character \\0', 'With a semicolon', 'With a null character \\0'),
(5, 'What is the purpose of the return statement in C?', 'Ends the program', 'Returns a value from a function', 'Breaks a loop', 'Continues a loop', 'Returns a value from a function'),
(5, 'Which operator is used to access structure members through a pointer?', '.', '->', '::', '&', '->'),
(5, 'What does the continue statement do in a loop?', 'Exits the loop', 'Skips the current iteration', 'Restarts the loop', 'Pauses execution', 'Skips the current iteration'),
(5, 'What is a struct in C?', 'A built-in function', 'A user-defined data type grouping variables', 'A type of pointer', 'A control statement', 'A user-defined data type grouping variables'),
(5, 'What is the difference between == and = in C?', 'No difference', '== assigns, = compares', '== compares, = assigns', 'Both assign', '== compares, = assigns');

-- ─── Questions: Data Structures (id=6) ───────────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(6, 'What is a stack?', 'FIFO data structure', 'LIFO data structure', 'Random access structure', 'Sorted list', 'LIFO data structure'),
(6, 'What is the time complexity of binary search?', 'O(n)', 'O(n²)', 'O(log n)', 'O(1)', 'O(log n)'),
(6, 'What is a queue?', 'LIFO data structure', 'FIFO data structure', 'Sorted tree', 'Hash table', 'FIFO data structure'),
(6, 'Which data structure uses nodes with pointers in a chain?', 'Array', 'Stack', 'Linked List', 'Queue', 'Linked List'),
(6, 'What is the worst-case time complexity of bubble sort?', 'O(n log n)', 'O(n)', 'O(n²)', 'O(log n)', 'O(n²)'),
(6, 'In a binary tree, each node can have at most how many children?', '1', '2', '3', 'Unlimited', '2'),
(6, 'What is a hash table used for?', 'Sorting data', 'Fast key-value lookups', 'Storing sorted lists', 'Graph traversal', 'Fast key-value lookups'),
(6, 'Which traversal visits: left, root, right?', 'Pre-order', 'Post-order', 'In-order', 'Level-order', 'In-order'),
(6, 'What does DFS stand for?', 'Data File System', 'Depth First Search', 'Direct File Search', 'Dynamic First Sort', 'Depth First Search'),
(6, 'What is a heap?', 'A sorted linked list', 'A complete binary tree with heap property', 'A type of hash table', 'A balanced BST', 'A complete binary tree with heap property'),
(6, 'What is the time complexity of accessing an element in an array?', 'O(n)', 'O(log n)', 'O(1)', 'O(n²)', 'O(1)'),
(6, 'What is the difference between a stack and a queue?', 'Stack is FIFO, queue is LIFO', 'Stack is LIFO, queue is FIFO', 'Both are FIFO', 'Both are LIFO', 'Stack is LIFO, queue is FIFO'),
(6, 'Which algorithm is used to find the shortest path in a graph?', 'Bubble Sort', 'Binary Search', 'Dijkstra\'s Algorithm', 'Quick Sort', 'Dijkstra\'s Algorithm'),
(6, 'What is a doubly linked list?', 'A list with two heads', 'A list where nodes have pointers to both next and previous', 'A list sorted in two directions', 'A circular list', 'A list where nodes have pointers to both next and previous'),
(6, 'What is the space complexity of merge sort?', 'O(1)', 'O(log n)', 'O(n)', 'O(n²)', 'O(n)');

-- ─── Questions: Computer Networks (id=7) ─────────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(7, 'What does HTTP stand for?', 'HyperText Transfer Protocol', 'High Transfer Text Protocol', 'HyperText Transport Program', 'Hyper Transfer Technology Protocol', 'HyperText Transfer Protocol'),
(7, 'Which layer of the OSI model handles routing?', 'Data Link Layer', 'Transport Layer', 'Network Layer', 'Session Layer', 'Network Layer'),
(7, 'What does IP stand for?', 'Internet Program', 'Internal Protocol', 'Internet Protocol', 'Intranet Process', 'Internet Protocol'),
(7, 'What is the default port for HTTPS?', '80', '21', '443', '8080', '443'),
(7, 'What does DNS stand for?', 'Data Network Service', 'Domain Name System', 'Dynamic Network Standard', 'Direct Name Server', 'Domain Name System'),
(7, 'What is the purpose of a router?', 'To connect devices in a LAN', 'To route packets between networks', 'To amplify Wi-Fi signals', 'To assign IP addresses', 'To route packets between networks'),
(7, 'How many layers does the OSI model have?', '5', '6', '7', '8', '7'),
(7, 'What does MAC address stand for?', 'Machine Access Code', 'Media Access Control', 'Multiple Access Channel', 'Main Access Controller', 'Media Access Control'),
(7, 'What is the purpose of DHCP?', 'Encrypts data', 'Automatically assigns IP addresses', 'Resolves domain names', 'Routes packets', 'Automatically assigns IP addresses'),
(7, 'Which protocol is used for sending emails?', 'FTP', 'HTTP', 'SMTP', 'DNS', 'SMTP'),
(7, 'What is a subnet mask used for?', 'Encrypting network traffic', 'Dividing IP addresses into network and host portions', 'Assigning MAC addresses', 'Routing between LANs', 'Dividing IP addresses into network and host portions'),
(7, 'What is the difference between TCP and UDP?', 'TCP is faster, UDP is reliable', 'TCP is reliable and connection-oriented, UDP is faster and connectionless', 'No difference', 'UDP is reliable, TCP is connectionless', 'TCP is reliable and connection-oriented, UDP is faster and connectionless'),
(7, 'What does FTP stand for?', 'Fast Transfer Protocol', 'File Transfer Protocol', 'Format Text Protocol', 'File Transport Program', 'File Transfer Protocol'),
(7, 'What is a firewall?', 'A physical barrier for servers', 'A security system that monitors network traffic', 'A type of router', 'A wireless access point', 'A security system that monitors network traffic'),
(7, 'Which IP address range is reserved for private networks?', '8.8.8.0/24', '192.168.0.0/16', '172.32.0.0/16', '10.255.0.0/8', '192.168.0.0/16');

-- ─── Questions: DBMS (id=8) ──────────────────────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(8, 'What does SQL stand for?', 'Structured Query Language', 'Simple Query Language', 'Standard Question Language', 'Stored Query Logic', 'Structured Query Language'),
(8, 'Which SQL command retrieves data from a table?', 'INSERT', 'UPDATE', 'SELECT', 'DELETE', 'SELECT'),
(8, 'What is a primary key?', 'A key that links two tables', 'A unique identifier for each row in a table', 'A foreign key reference', 'An indexed column', 'A unique identifier for each row in a table'),
(8, 'Which SQL clause filters the results of a query?', 'ORDER BY', 'GROUP BY', 'WHERE', 'HAVING', 'WHERE'),
(8, 'What is a foreign key?', 'A primary key in another table', 'A key that references the primary key of another table', 'A duplicate row identifier', 'An auto-increment key', 'A key that references the primary key of another table'),
(8, 'What does normalization do in a database?', 'Speeds up queries', 'Reduces data redundancy and improves integrity', 'Adds more tables', 'Encrypts data', 'Reduces data redundancy and improves integrity'),
(8, 'Which SQL command adds new records to a table?', 'ADD', 'UPDATE', 'INSERT INTO', 'CREATE', 'INSERT INTO'),
(8, 'What is a JOIN in SQL?', 'Splits a table into two', 'Combines rows from two or more tables', 'Deletes duplicate rows', 'Sorts a table', 'Combines rows from two or more tables'),
(8, 'What does ACID stand for in databases?', 'Atomicity, Consistency, Isolation, Durability', 'Accuracy, Consistency, Integrity, Data', 'Access, Control, Index, Delete', 'Atomicity, Control, Isolation, Data', 'Atomicity, Consistency, Isolation, Durability'),
(8, 'Which SQL aggregate function counts the number of rows?', 'SUM()', 'AVG()', 'COUNT()', 'MAX()', 'COUNT()'),
(8, 'What is an index in a database?', 'A primary key', 'A data structure that improves query speed', 'A foreign key', 'A table constraint', 'A data structure that improves query speed'),
(8, 'What is the difference between DELETE and TRUNCATE?', 'No difference', 'DELETE removes specific rows, TRUNCATE removes all rows faster', 'TRUNCATE removes specific rows', 'DELETE is faster than TRUNCATE', 'DELETE removes specific rows, TRUNCATE removes all rows faster'),
(8, 'What does GROUP BY do in SQL?', 'Sorts the result set', 'Groups rows with the same values together', 'Joins two tables', 'Filters rows', 'Groups rows with the same values together'),
(8, 'What is a view in SQL?', 'A physical copy of a table', 'A virtual table based on a SELECT query', 'An index on a table', 'A stored procedure', 'A virtual table based on a SELECT query'),
(8, 'Which command removes a table from the database?', 'DELETE TABLE', 'REMOVE TABLE', 'DROP TABLE', 'CLEAR TABLE', 'DROP TABLE');

-- ─── Questions: Operating Systems (id=9) ─────────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(9, 'What is the kernel?', 'A user application', 'The core of the operating system', 'A file system', 'A device driver', 'The core of the operating system'),
(9, 'What is a process?', 'A stored program', 'A program in execution', 'A file on disk', 'A system call', 'A program in execution'),
(9, 'What does CPU scheduling do?', 'Manages memory', 'Decides the order in which processes use the CPU', 'Handles I/O', 'Manages files', 'Decides the order in which processes use the CPU'),
(9, 'What is a deadlock?', 'A crashed process', 'When processes wait indefinitely for resources held by each other', 'A memory leak', 'A CPU overload', 'When processes wait indefinitely for resources held by each other'),
(9, 'What is virtual memory?', 'RAM installed on a GPU', 'A technique that uses disk space as extended RAM', 'Cache memory', 'ROM storage', 'A technique that uses disk space as extended RAM'),
(9, 'What is a thread?', 'A separate process', 'The smallest unit of execution within a process', 'A system call', 'An I/O operation', 'The smallest unit of execution within a process'),
(9, 'What does FIFO stand for in CPU scheduling?', 'First In First Out', 'Fast Input Fast Output', 'First Input First Operation', 'Fixed In Fixed Order', 'First In First Out'),
(9, 'What is paging in operating systems?', 'Swapping processes to disk', 'Dividing memory into fixed-size frames and mapping logical pages to them', 'Sorting processes by priority', 'Loading a program into RAM', 'Dividing memory into fixed-size frames and mapping logical pages to them'),
(9, 'What is semaphore used for in OS?', 'Memory management', 'Synchronization between processes', 'File management', 'CPU scheduling', 'Synchronization between processes'),
(9, 'What is a system call?', 'A function call in user code', 'An interface between user programs and the OS kernel', 'A hardware interrupt', 'A network request', 'An interface between user programs and the OS kernel'),
(9, 'What does RAM stand for?', 'Read Access Memory', 'Random Access Memory', 'Rapid Application Memory', 'Run All Memory', 'Random Access Memory'),
(9, 'What is the difference between process and thread?', 'No difference', 'A process has its own memory; threads share memory within a process', 'Thread has its own memory; processes share memory', 'Both share memory', 'A process has its own memory; threads share memory within a process'),
(9, 'What is context switching?', 'Changing OS settings', 'Saving and restoring state when switching between processes', 'Switching between user accounts', 'Changing CPU frequency', 'Saving and restoring state when switching between processes'),
(9, 'What is a file system?', 'A collection of processes', 'A method for organizing and storing files on disk', 'A memory management unit', 'A type of CPU scheduler', 'A method for organizing and storing files on disk'),
(9, 'Which scheduling algorithm gives priority to the shortest job?', 'FIFO', 'Round Robin', 'Shortest Job First', 'Priority Scheduling', 'Shortest Job First');

-- ─── Questions: Web Development Fundamentals (id=10) ─────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(10, 'What does URL stand for?', 'Uniform Resource Locator', 'Universal Resource Link', 'Uniform Routing Logic', 'Universal Record Locator', 'Uniform Resource Locator'),
(10, 'What is the purpose of HTML?', 'To style web pages', 'To define the structure of web pages', 'To make pages interactive', 'To manage databases', 'To define the structure of web pages'),
(10, 'What does the <head> tag contain?', 'Visible page content', 'Page metadata and links to resources', 'Navigation menus', 'Footer information', 'Page metadata and links to resources'),
(10, 'What is a web browser?', 'A web server', 'Software to access and display web pages', 'A programming language', 'A database', 'Software to access and display web pages'),
(10, 'What is responsive web design?', 'Fast loading websites', 'Design that adapts to different screen sizes', 'Animated web pages', 'Secure websites', 'Design that adapts to different screen sizes'),
(10, 'What is the difference between GET and POST?', 'No difference', 'GET sends data in URL, POST sends data in body', 'POST sends data in URL, GET in body', 'GET is secure, POST is not', 'GET sends data in URL, POST sends data in body'),
(10, 'What does the alt attribute in an <img> tag do?', 'Sets image size', 'Provides alternative text for an image', 'Links the image', 'Styles the image', 'Provides alternative text for an image'),
(10, 'What is a cookie in web development?', 'A type of web page', 'Small data stored in the browser by a website', 'A CSS style rule', 'An HTTP method', 'Small data stored in the browser by a website'),
(10, 'What is the purpose of JavaScript in web development?', 'To structure the page', 'To style the page', 'To add interactivity to web pages', 'To store data', 'To add interactivity to web pages'),
(10, 'What does HTTPS provide over HTTP?', 'Faster loading', 'Encrypted and secure communication', 'Larger file transfers', 'Better caching', 'Encrypted and secure communication'),
(10, 'What is a CDN?', 'Content Delivery Network', 'Central Database Node', 'Code Development Network', 'Client Domain Name', 'Content Delivery Network'),
(10, 'What is localStorage in browsers?', 'Server-side storage', 'Client-side key-value storage that persists after browser close', 'A database', 'A cookie type', 'Client-side key-value storage that persists after browser close'),
(10, 'What is the DOM?', 'Document Object Model', 'Data Object Management', 'Document Output Method', 'Dynamic Object Model', 'Document Object Model'),
(10, 'What tag is used to include JavaScript in HTML?', '<js>', '<javascript>', '<script>', '<code>', '<script>'),
(10, 'What is an API in web development?', 'A type of database', 'An interface allowing applications to communicate', 'A CSS framework', 'A web browser feature', 'An interface allowing applications to communicate');

-- ─── Questions: Artificial Intelligence (id=11) ──────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(11, 'What does AI stand for?', 'Automated Integration', 'Artificial Intelligence', 'Advanced Interface', 'Automated Instruction', 'Artificial Intelligence'),
(11, 'What is machine learning?', 'Programming computers explicitly', 'Systems that learn from data without being explicitly programmed', 'A type of database', 'A hardware component', 'Systems that learn from data without being explicitly programmed'),
(11, 'What is a neural network?', 'A computer network', 'A model inspired by the human brain with interconnected nodes', 'A type of database', 'An operating system', 'A model inspired by the human brain with interconnected nodes'),
(11, 'What is supervised learning?', 'Learning without labeled data', 'Learning from labeled training data', 'Learning through rewards', 'Unsupervised clustering', 'Learning from labeled training data'),
(11, 'What is NLP?', 'Network Layer Protocol', 'Natural Language Processing', 'Neural Logic Processing', 'Node Level Program', 'Natural Language Processing'),
(11, 'What is overfitting in machine learning?', 'Model is too simple', 'Model performs well on training data but poorly on new data', 'Model has too few parameters', 'Model trains too slowly', 'Model performs well on training data but poorly on new data'),
(11, 'What is a training dataset?', 'Data used to evaluate a model', 'Data used to train and teach a model', 'Data used in production', 'Random sample data', 'Data used to train and teach a model'),
(11, 'What is deep learning?', 'A simple ML algorithm', 'Machine learning using multi-layered neural networks', 'A data preprocessing technique', 'A type of database query', 'Machine learning using multi-layered neural networks'),
(11, 'What is reinforcement learning?', 'Learning from labeled data', 'Learning by taking actions and receiving rewards or penalties', 'Clustering unlabeled data', 'Learning by copying examples', 'Learning by taking actions and receiving rewards or penalties'),
(11, 'What is a decision tree?', 'A type of neural network', 'A flowchart-like model used for classification', 'A sorting algorithm', 'A graph data structure', 'A flowchart-like model used for classification'),
(11, 'What does CNN stand for in deep learning?', 'Computer Neural Network', 'Convolutional Neural Network', 'Cyclic Node Network', 'Conditional Neuron Network', 'Convolutional Neural Network'),
(11, 'What is the Turing Test?', 'A hardware benchmark', 'A test of a machine\'s ability to exhibit intelligent behavior', 'A programming challenge', 'A network speed test', 'A test of a machine\'s ability to exhibit intelligent behavior'),
(11, 'What is clustering in machine learning?', 'A supervised classification method', 'Grouping similar data points without labels', 'A feature selection method', 'A neural network type', 'Grouping similar data points without labels'),
(11, 'What is a confusion matrix used for?', 'Data preprocessing', 'Evaluating classification model performance', 'Feature engineering', 'Training neural networks', 'Evaluating classification model performance'),
(11, 'What is the purpose of activation functions in neural networks?', 'To store weights', 'To introduce non-linearity', 'To normalize input data', 'To compute gradients', 'To introduce non-linearity');

-- ─── Questions: Cyber Security (id=12) ───────────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(12, 'What is a firewall?', 'A physical server', 'A system that monitors and controls network traffic based on rules', 'An encryption algorithm', 'A type of virus', 'A system that monitors and controls network traffic based on rules'),
(12, 'What does encryption do?', 'Deletes data', 'Converts data into an unreadable format to protect it', 'Speeds up data transfer', 'Compresses data', 'Converts data into an unreadable format to protect it'),
(12, 'What is phishing?', 'A network protocol', 'A fraudulent attempt to steal sensitive information', 'A type of firewall', 'A vulnerability scan', 'A fraudulent attempt to steal sensitive information'),
(12, 'What is a VPN?', 'Virtual Private Network', 'Virtual Program Node', 'Variable Port Number', 'Verified Protocol Network', 'Virtual Private Network'),
(12, 'What is SQL injection?', 'A database query method', 'An attack that injects malicious SQL code into queries', 'A database optimization technique', 'A type of encryption', 'An attack that injects malicious SQL code into queries'),
(12, 'What is two-factor authentication?', 'Two separate passwords', 'A security process requiring two forms of verification', 'A type of encryption', 'A biometric method only', 'A security process requiring two forms of verification'),
(12, 'What is a DDoS attack?', 'A data duplication method', 'Overwhelming a server with traffic to make it unavailable', 'A DNS poisoning attack', 'A decryption method', 'Overwhelming a server with traffic to make it unavailable'),
(12, 'What does HTTPS ensure?', 'Faster page loads', 'Encrypted communication between browser and server', 'Better SEO ranking', 'Larger file uploads', 'Encrypted communication between browser and server'),
(12, 'What is malware?', 'A type of firewall', 'Malicious software designed to harm systems', 'A network protocol', 'A security certificate', 'Malicious software designed to harm systems'),
(12, 'What is a zero-day vulnerability?', 'A known and patched bug', 'A flaw unknown to the vendor with no available fix', 'A daily security update', 'A type of password', 'A flaw unknown to the vendor with no available fix'),
(12, 'What is penetration testing?', 'Testing network speed', 'Simulating cyberattacks to identify vulnerabilities', 'Installing firewalls', 'Scanning for viruses', 'Simulating cyberattacks to identify vulnerabilities'),
(12, 'What is ransomware?', 'Adware', 'Malware that encrypts files and demands payment for decryption', 'A type of firewall', 'A network sniffer', 'Malware that encrypts files and demands payment for decryption'),
(12, 'What is the CIA triad in security?', 'Central Intelligence Agency protocol', 'Confidentiality, Integrity, Availability', 'Cyber, Internet, Access', 'Code, Integration, Authentication', 'Confidentiality, Integrity, Availability'),
(12, 'What is a brute force attack?', 'A physical attack on servers', 'Trying all possible combinations to crack passwords', 'A SQL injection method', 'A phishing technique', 'Trying all possible combinations to crack passwords'),
(12, 'What is HTTPS port number?', '80', '21', '443', '3306', '443');

-- ─── Questions: Software Engineering (id=13) ─────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(13, 'What is SDLC?', 'Software Design Language Cycle', 'Software Development Life Cycle', 'System Design Lifecycle', 'Software Debug Loop Cycle', 'Software Development Life Cycle'),
(13, 'What is Agile methodology?', 'A waterfall model', 'An iterative approach to software development', 'A testing framework', 'A deployment tool', 'An iterative approach to software development'),
(13, 'What is a use case diagram?', 'A database schema', 'A UML diagram showing interactions between users and system', 'A network diagram', 'A flowchart for algorithms', 'A UML diagram showing interactions between users and system'),
(13, 'What does version control do?', 'Manages server uptime', 'Tracks changes to code over time', 'Deploys applications', 'Monitors performance', 'Tracks changes to code over time'),
(13, 'What is a software requirement specification?', 'The final test report', 'A document describing software requirements', 'The deployment plan', 'The source code', 'A document describing software requirements'),
(13, 'What is the waterfall model?', 'Iterative development', 'A sequential software development process', 'A cloud architecture pattern', 'An Agile framework', 'A sequential software development process'),
(13, 'What is unit testing?', 'Testing the entire application', 'Testing individual components or functions in isolation', 'Integration testing', 'Performance testing', 'Testing individual components or functions in isolation'),
(13, 'What is refactoring?', 'Rewriting from scratch', 'Restructuring existing code without changing its behavior', 'Adding new features', 'Deploying code', 'Restructuring existing code without changing its behavior'),
(13, 'What does Git do?', 'Deploys web apps', 'Tracks changes and manages source code versions', 'Tests software', 'Compiles code', 'Tracks changes and manages source code versions'),
(13, 'What is a design pattern?', 'A UI template', 'A reusable solution to a commonly occurring software design problem', 'A database schema', 'A test plan', 'A reusable solution to a commonly occurring software design problem'),
(13, 'What is the purpose of code review?', 'To delete old code', 'To catch bugs and improve code quality through peer examination', 'To deploy code', 'To compile code', 'To catch bugs and improve code quality through peer examination'),
(13, 'What is CI/CD?', 'Code Inspection / Code Delivery', 'Continuous Integration / Continuous Delivery', 'Code Index / Code Deploy', 'Component Interface / Code Design', 'Continuous Integration / Continuous Delivery'),
(13, 'What is a sprint in Scrum?', 'A code deployment', 'A fixed time period for completing a set of tasks', 'A testing phase', 'A type of meeting', 'A fixed time period for completing a set of tasks'),
(13, 'What is coupling in software design?', 'The process of linking modules', 'The degree of interdependence between software modules', 'A testing technique', 'A deployment strategy', 'The degree of interdependence between software modules'),
(13, 'What does MVC stand for?', 'Module View Controller', 'Model View Controller', 'Multiple View Component', 'Model Variable Control', 'Model View Controller');

-- ─── Questions: Cloud Computing (id=14) ──────────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(14, 'What is cloud computing?', 'Local server hosting', 'Delivery of computing services over the internet', 'A type of operating system', 'A programming language', 'Delivery of computing services over the internet'),
(14, 'What does IaaS stand for?', 'Internet as a Service', 'Infrastructure as a Service', 'Integration as a Service', 'Interface as a Software', 'Infrastructure as a Service'),
(14, 'What is AWS?', 'Automated Web Services', 'Amazon Web Services', 'Advanced Wireless System', 'Application Web Suite', 'Amazon Web Services'),
(14, 'What is SaaS?', 'Software as a Service', 'System as a Service', 'Storage as a Service', 'Security as a Service', 'Software as a Service'),
(14, 'What is scalability in cloud computing?', 'The ability to reduce costs', 'The ability to increase or decrease resources based on demand', 'The ability to secure data', 'The ability to switch providers', 'The ability to increase or decrease resources based on demand'),
(14, 'What is a virtual machine?', 'A physical computer', 'An emulation of a physical computer running on a host', 'A cloud storage unit', 'A network switch', 'An emulation of a physical computer running on a host'),
(14, 'What is Docker used for?', 'Network management', 'Containerizing applications for consistent deployment', 'Database management', 'Writing cloud scripts', 'Containerizing applications for consistent deployment'),
(14, 'What is the difference between public and private cloud?', 'No difference', 'Public cloud is shared; private cloud is dedicated to one organization', 'Private cloud is cheaper', 'Public cloud is more secure', 'Public cloud is shared; private cloud is dedicated to one organization'),
(14, 'What is serverless computing?', 'Computing without a CPU', 'Running applications without managing the underlying server infrastructure', 'Offline computing', 'A type of virtual machine', 'Running applications without managing the underlying server infrastructure'),
(14, 'What is Kubernetes?', 'A cloud database', 'A container orchestration system', 'A virtual machine', 'A cloud storage service', 'A container orchestration system'),
(14, 'What does PaaS stand for?', 'Program as a Service', 'Platform as a Service', 'Process as a System', 'Protocol as a Service', 'Platform as a Service'),
(14, 'What is a CDN in cloud context?', 'Cloud Data Node', 'A network of servers delivering content to users based on geographic location', 'Central Database Network', 'Cloud Distribution Node', 'A network of servers delivering content to users based on geographic location'),
(14, 'What is load balancing?', 'Equalizing cloud costs', 'Distributing incoming traffic across multiple servers', 'Balancing storage usage', 'A type of encryption', 'Distributing incoming traffic across multiple servers'),
(14, 'What is object storage?', 'A type of RAM', 'Storage for unstructured data as objects with metadata', 'A database table', 'A file system', 'Storage for unstructured data as objects with metadata'),
(14, 'Which company provides Azure cloud services?', 'Google', 'Amazon', 'Microsoft', 'IBM', 'Microsoft');

-- ─── Questions: Internet of Things (id=15) ───────────────────
INSERT INTO questions (subject_id, question, option1, option2, option3, option4, answer) VALUES
(15, 'What does IoT stand for?', 'Internet of Technology', 'Internet of Things', 'Integration of Technology', 'Interface of Things', 'Internet of Things'),
(15, 'What is a sensor in IoT?', 'A networking device', 'A device that detects physical input and converts it to data', 'A cloud server', 'A microprocessor', 'A device that detects physical input and converts it to data'),
(15, 'Which protocol is commonly used in IoT messaging?', 'HTTP', 'FTP', 'MQTT', 'SMTP', 'MQTT'),
(15, 'What is an actuator in IoT?', 'A sensor', 'A device that takes action based on received data', 'A network router', 'A cloud service', 'A device that takes action based on received data'),
(15, 'What is the Arduino platform?', 'A cloud provider', 'An open-source microcontroller platform for IoT projects', 'An operating system', 'A programming language', 'An open-source microcontroller platform for IoT projects'),
(15, 'What is the Raspberry Pi?', 'A cloud server', 'A small single-board computer for IoT and education', 'A type of sensor', 'A networking protocol', 'A small single-board computer for IoT and education'),
(15, 'What is edge computing in IoT?', 'Computing done at cloud data centers', 'Processing data close to the source rather than in the cloud', 'Storing data on USB edges', 'Network edge security', 'Processing data close to the source rather than in the cloud'),
(15, 'What is a gateway in IoT?', 'A web server', 'A device that connects IoT devices to the internet or cloud', 'An end device', 'A type of sensor', 'A device that connects IoT devices to the internet or cloud'),
(15, 'What is machine-to-machine (M2M) communication?', 'Human to computer communication', 'Direct communication between devices without human intervention', 'Manual data entry between systems', 'A type of cloud service', 'Direct communication between devices without human intervention'),
(15, 'Which wireless technology is used for short-range IoT communication?', 'LTE', 'Satellite', 'Bluetooth', 'Fiber optic', 'Bluetooth'),
(15, 'What is a smart home?', 'A house with expensive appliances', 'A home with IoT-connected devices for automation and control', 'A house near a data center', 'A home with fast internet', 'A home with IoT-connected devices for automation and control'),
(15, 'What does RFID stand for?', 'Radio Frequency Identification', 'Remote File ID', 'Rapid Frequency Integration Device', 'Radio Format Input Device', 'Radio Frequency Identification'),
(15, 'What is IPv6 important for in IoT?', 'Faster processing', 'It provides a vastly larger address space for billions of devices', 'Better security only', 'Wireless communication', 'It provides a vastly larger address space for billions of devices'),
(15, 'What is a digital twin in IoT?', 'A backup device', 'A virtual model replicating a physical object for monitoring', 'A duplicate sensor', 'A cloned network', 'A virtual model replicating a physical object for monitoring'),
(15, 'What is the main challenge in IoT security?', 'High cost of sensors', 'Many devices have limited computing power for strong security measures', 'Lack of internet access', 'Too few devices', 'Many devices have limited computing power for strong security measures');

