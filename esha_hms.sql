CREATE DATABASE hospital;
USE hospital;
DROP DATABASE HOSPITAL;
CREATE TABLE patients(
P_ID INT PRIMARY KEY,
P_Name VARCHAR(30), 
Gen VARCHAR(10), 
Age FLOAT, 
Address VARCHAR(100),
Email VARCHAR(30) DEFAULT('xyz@gmail.com'), 
DOB DATE, 
Phone_No BIGINT);

CREATE TABLE doctor(
D_ID INT PRIMARY KEY,
D_Name VARCHAR(30),
Gender VARCHAR(10),
Specialist VARCHAR(100),
Email VARCHAR(30) DEFAULT('xyz@gmail.com'),
Contact BIGINT);

CREATE TABLE appointment(
A_ID INT PRIMARY KEY,
P_ID INT,
D_ID INT,
Created_Date DATE,
A_Date_Time DATETIME,
Symptoms VARCHAR(40),
Concern VARCHAR(40),
Attends_Status ENUM('Confirmed','Cancelled','Did not attend','Completed','Rescheduled','Unconfirmed'),
FOREIGN KEY(D_ID) REFERENCES doctor(D_ID),
FOREIGN KEY(P_ID) REFERENCES patients(P_ID));

CREATE TABLE prescription(
Presc_ID INT PRIMARY KEY,
P_ID INT,
Med_Name VARCHAR(100),
Concern VARCHAR(40),
FOREIGN KEY(P_ID) REFERENCES patients(P_ID));

CREATE TABLE medicine(
M_ID INT PRIMARY KEY,
M_Name VARCHAR(100),
M_Type VARCHAR(50),
M_Price FLOAT);

CREATE TABLE medicineb(
P_ID INT,
Med_Name VARCHAR(100),
Total_Amount INT,
FOREIGN KEY(P_ID) REFERENCES patients(P_ID));

CREATE TABLE bill(
B_ID INT PRIMARY KEY,
P_ID INT,
D_ID INT,
Doc_Charges INT,
Sep_Charges INT,
FOREIGN KEY(P_ID) REFERENCES patients(P_ID),
FOREIGN KEY(D_ID) REFERENCES doctor(D_ID));

CREATE TABLE reports(
ID INT PRIMARY KEY,
Name VARCHAR(100),
Type VARCHAR(50),
Price FLOAT);

ALTER TABLE patients
MODIFY age INT;

ALTER TABLE bill
ADD Total_Charges INT;

ALTER TABLE reports
DROP COLUMN Type;

ALTER TABLE patients
CHANGE COLUMN Gen Gender VARCHAR(10);

ALTER TABLE medicineb
RENAME TO medicine_bill;

TRUNCATE TABLE reports;

DROP TABLE reports;

INSERT INTO patients VALUES
(101,'Kshitija Jadhav','Female',20,'271, S Bhagat Singh Rd, Nr G P O, Fort','kshitijajadhav@gmail.com','2003-10-10',9876543210),
(102,'Amar Navale','Male',8,'201, Shree Sai Dham, 90 Feet Road, Jhulelal Chowk, Ghatkoper (east)','amarnavale@gmail.com','2015-09-18',9123456789),
(103,'Sai Ahire','Male',17,'S V Road, Malad Shopping Centr Opp Bank Of Baroda, Goregaon (west)','saiahire@yahoo.com','2006-02-12',8765432109),
(104,'Sakshi Jadhav','Female',11,'1/1a, Shah Niwas, Zakaria Road, Malad(w)','sakshijadhav@gmail.com','2012-03-09',7654321098),
(105,'Hrishav Pandey','Male',38,'Ramanand Society, Gokhale Road, Naupada, Near Samarth Bhandar, Thane(w)','hrishavpandey@yahoo.com','1985-02-07',9871234567),
(106,'Sneha Gore','Female',13,'18, Lila Mandir, Pestom Sagar Rd-4, Opp Shoperstop, Chembur',NULL,'2010-09-09',8765123459),
(107,'Sapna Chandan','Female',14,'K K Marg, 560 Rasul Compound, Jacob Circle',NULL,'2009-07-25',7651234980),
(108,'Kartik Singh','Male',30,'15, Kesakaka Compound, I.b.patel Road, Kalbadevi','kartiksingh@yahoo.com','1993-03-17',9068858841),
(109,'     Sahil Yadav','Male',22,'19, Rajmahal Shopping Centre, Azad Road, Andheri (west)','sahilyadav@gmail.com','2001-04-19',7030821253),
(110,'Himanshu Singh','Male',6,'Silvadwel Ground Flo Silvadwel, 3 Silvadwel 447 Pitambar Lane, Mahim','himanshusingh22@gmail.com','2017-04-10',8432274925),
(111,'Dhanashree Pawar','Female',40,'Chandivali Indl Area, Off Saki Vihar Rd, Sakinaka, Andheri(e)',NULL,'1982-12-12',7958287004),
(112,'Shinchana Chandan','Female',34,'21, O/s Shahpur Gate, Ahemdabad','shinchanachandan@gmail.com','1998-11-14',6747321345),
(113,'Gauri Gonjari       ','Female',28,'Shop No 15, 52/52a, Corner Of Islampura Stree, Nanubahi Desai Rd, Khetwadi','gaurigonjari@gmail.com','1995-02-26',8378100153),
(114,'       Akshata Mane    ','Female',35,'11, G 4 Mahavir Mahal, 130 Garodia Nagar, Nr Patankar Park, Ghatkopar (east)','akshatamane@gmail.com','1989-08-11',9501228328),
(115,'Khushi Cheddha','Female',85,'412, 4th Floor, Laxmi Plaza, Link Rd, Laxmi Indl Est, Andheri (west)','khushicheddha@gmail.com','1938-08-01',7711956413),
(116,'Deepak Jadhav','Male',38,'69/6, Golde Wal Building, Bhandari Street, Girgaon','deepakjadhav@yahoo.com','1985-02-07',5916654562),
(117,'    Sahil Acharekar','Male',63,'C-75/2, 3rd Stage, Peenya Industrial Estate, Bangalore','sahilacharekar@yahoo.com','1960-08-13',7035443613),
(118,'Sahil Dalvi','Male',8,'4-1-602, Troop Bazar,Hyderabad',NULL,'2015-01-25',8086963081),
(119,'Sumit Pawar','Male',12,'E-2/293, Gotri,Vadodara','sumitpawar@yahoo.com','2011-08-22',7282587792),
(120,'Sakshi Panchal','Female',34,'5140, Main Bazar, Krishna Market, Pahar Ganj, Delhi','sakshipanchal@gmail.com','1986-11-01',8749513699),
(121,'         Arohi Shivkar     ','Female',56,'10, Soni Chambers, Ag Street, Opera House, Mumbai','arohishivkar@yahoo.com','1967-08-22',8704904943),
(122,'Tanvi Padyal','Female',15,'170, Khandelwal Bhavan, D N Road, Near Mcdonald \'s, Fort','tanvipadyal@gmail.com','2008-10-25',6649880009),
(123,'Taniya Singh','Female',24,'595, Deccan Gymkhana, Nandadeep, Pune','taniyasingh@yahoo.com','1999-09-11',8155690362),
(124,'Jayshree Ruia','Female',81,'71 A, Sutar Chawl, Kalbadevi, Mumbai','jayshreeruia@yahoo.com','1939-03-01',7937323848),
(125,'Janhavi Surve','Female',43,'29/a, 2nd Flr K H Road, K H Road','janhavisurve@gmail.com','1979-12-19',7521309772),
(126,'Bibek Majhi','Male',21,'3/24, Anand Nagar, Opp Rationing Office, Santacruz(e)',NULL,'2001-10-21',7978316842),
(127,'Deepa Swain         ','Female',15,'Gr Floor, Central Bldg 1, New Silk Bazar, Opp Kalbadevi Post Office, Kalbadevi',NULL,'2008-03-04',6492362499),
(128,'Neha Galbe','Female',38,'27, Gopinath Estate Part-2, Soni Ni Chali, B/h Swaminarayan Chamber, Odhav, Ahemdabad','nehagalbe@gmail.com','1998-02-24',7841790993),
(129,'Satvik Kamble','Male',47,'Shop No 13, Lawrence Shooping, Rt Vision Rd, Vasai (west)','satvikkamble@yahoo.com','1976-04-23',8915036611),
(130,'Pooja Singh','Female',20,'12, Darshan Udyog Bhavan, Andheri-kurla Road, Behind Ibp Petrol Pump, Andheri (west)','poojasingh@gmail.com','2003-06-14',7271944237),
(131,'Ganesh Bhosale','Male',66,'P-197,lake Town, Blk-b, On Jessore Road, Kolkata','ganeshbhosale@gmail.com','1957-10-07',7373651574),
(132,'Rup Bohra','Male',27,'Plot No 1a, 208, Siddhivinayak, Opp Central Facility Bldg, Vashi, Navi Mumbai','rupbohra@gmail.com','1996-07-10',8581270188),
(133,'Rahul Mondal','Male',40,'B 193 Phase 1, Delhi','rahulmondal@yahoo.com','1983-06-04',8654143546),
(134,'    Prathamesh Sawkare','Male',3,'A-164,165,166, Midc Phase I, Dombivli (east),Mumbai','prathameshsawkare@yahoo.com','2020-06-11',8231976473),
(135,'Shiva Shetty','Male',23,'25-a, Besant Street, Santacruz(w)','shivashetty@gmail.com','1999-04-13',+8559787466),
(136,'Ankit Kanchali','Male',55,'Shop No 11/f, Sheetal Apts, V N Purav Mrg, Narayan Ngr, Chunnabhatti, Mumbai','ankitkanchali@gmail.com','1990-08-10',8003954856),
(137,'Himanshu Singh','Male',35,'5-3-879/2, M J Market, Hyderabad','himanshusingh@yahoo.com','1987-07-12',7753089645),
(138,'Prajwal Poojari','Male',10,'1627, 41,  D N Nagar, Opp Police Station, Andheri (west)','prajwalpoojari@yahoo.com','2013-09-12',8725376288),
(139,'Ganesh Kanchali','Male',21,'14th Floor, Maker Chambers Iv, Nariman Point, Mumbai','ganeshkanchali@gmail.com','2002-09-30',8537183568),
(140,'Rahul Garg','Male',34,'1112 A, 43 Chiranjiv Tower, Delhi','rahulgarg@gmail.com','1988-11-30',8563354586),
(141,'Siddhi Deshmukh  ','Female',9,'96, Main Market, Badarpur, Delhi','siddhideshnukh.com','2014-04-19',9455508515);


INSERT INTO doctor VALUES
(1,'Ashish Prajapati','Male','Diabetes Mellitus','ashishprajapati@gmail.com',8273576473),
(2,'Sandeep Kadam','Male', 'Alzheimer\'s Disease','sandeepkadam@gmail.com', 7167316842),
(3,'Harish Bhachav', 'Male','Gastroesophageal Reflux Disease','harishbhachav@yahoo.com',8866904631),
(4,'Ravi Gowda', 'Male','Bacterial infections','ravigowda@gmail.com',8282127792),
(5,'Vivek Rane', 'Male','Rheumatoid Arthritis','vivekrane@yahoo.com',8473651574),
(6,'Trupti Tripathi','Female','Diabetes Mellitus','truptitripathi@gmail.com',7176963081),
(7,'Ankit Mishra', 'Male', 'Parkinson\'s Disease','ankitmishra@gmail.com',8193264303),
(8,'Jay Khamankar', 'Male', 'Cancer','jaykhamankar@gmail.com',7916198562),
(9,'Dipisha Wagh','Female','Ashtma','dipishawagh@gmail.com',8432197925),
(10,'Gurupreet Kaur', 'Female','Cancer','gurupreetkaur@yahoo.com',7580487033),
(11,'Aditya Sawant', 'Male','Cancer','adityasawant@gmail.com', 8951136697),
(12,'Sachin Karnavat', 'Male', 'Hepatitis C','sachinkarnavat@gmail.com', 8594754586),
(13,'Siddharth Patthak', 'Male','Ashtma','siddharthpatthak@gmail.com',7705186931),
(14,'Aaditya Tiwari', 'Male','Appendicitis','aadityatiwari@yahoo.com',7348918870),
(15,'Surbhi Pant', 'Female','Ovarian Cancer','surbhipant@yahoo.com',6316214359),
(16,'Mayur Parnar', 'Male','Alzheimer\'s Disease','mayurparmar@gmail.com',8204044053),
(17,'Jayesh Pandey', 'Male', 'Migraine','jayeshpandey@gmail.com',7444404721),
(18,'Vrushali Lale', 'Female','Influenza','vrushalilale@gmail.com',8537112568),
(19,'Preeti Jadhav', 'Female','Pneumonia','preetijadhav@gamil.com',7874259064),
(20,'Jyoti Parab', 'Female', 'Epilepsy','jyotiparab@yahoo.com',9916843210);

INSERT INTO appointment VALUES
(10001,124,1,'2023-09-15','2023-09-19 15:00:00',' Increased thirst, frequent urination','Diabetes Mellitus','Did not attend'),
(10002,117,8,'2023-09-17','2023-09-17 13:00:00','Lumps and fatigue','Cancer','Completed'),
(10003,109,13,'2023-09-26','2023-09-27 19:30:00','coughing, shortness of breath','Asthma','Completed'),
(10004,130,5,'2023-09-26','2023-09-27 11:45:00','Joint pain, swelling','Rheumatoid Arthritis','Cancelled'),
(10005,107,1,'2023-09-30','2023-10-01 10:00:00','Severe headaches,nausea','Migraine',NULL),
(10006,111,12,'2023-10-02','2023-10-09 18:30:00','Memory loss, cognitive decline','Alzheimer\'s Disease','Completed'),
(10007,120,2,'2023-10-07','2023-10-15 11:30:00','Memory loss','Alzheimer\'s Disease','Unconfirmed'),
(10008,126,5,'2023-10-07','2023-10-08 19:00:00','Joint pain, stiffness','Rheumatoid Arthritis',NULL),
(10009,139,18,'2023-10-07','2023-10-12 12:25:00','Fever, cough, sore throat','Influenza','Completed'),
(10010,127,12,'2023-10-10','2023-10-14 17:00:00','Jaundice, fatigue, abdominal pain','Hepatitis C','Rescheduled'),
(10011,122,11,'2023-10-11','2023-10-20 13:00:00','Abdominal pain lower right side','Appendicitis','Unconfirmed'),
(10012,132,7,'2023-10-12','2023-10-16 12:15:00','Tremors, stiffness, bradykinesia','Parkinson\'s Disease','Confirmed');

INSERT INTO prescription VALUES
(5101,138,'HERCEPTIN 440MG INJ','Cancer'),
(5102,110,'Methotrexate Tablets Ip 2.5 Mg','Rheumatoid Arthritis'),
(5103,127,'Epclusa 400mg 100mg Tablet, Mavyret Glecaprevir Pibrentasvir 100 mg/40 mg','Hepatitis C'),
(5104,107,'Metformin 500 Mg Tablets','Diabetes Mellitus'),
(5105,123,'Suminat 50mg Strip Of 4 Tablets, West Coast Migraneed Migraine Oil - 100 ml','Migraine'),
(5106,106,'Melphalan 5 Mg Tablet','Ovarian Cancer'),
(5107,128,'HERCEPTIN 440MG INJ','Cancer'),
(5108,116,'Keytruda 100mg Vial Of 4ml Injection','Cancer'),
(5109,102,'Exelon 1.5mg Capsule 14\'S','Alzheimer\'s Disease'),
(5110,135,'Ibuprofen Tablets 400 Mg','Rheumatoid Arthritis'),
(5111,122,'HERCEPTIN 440MG INJ, Keytruda 100mg Vial Of 4ml Injection','Cancer'),
(5112,117,'Keytruda 100mg Vial Of 4ml Injection','Cancer'),
(5113,140,'Glupin Cr Sulfonylurea Glipizide','Diabetes Mellitus'),
(5114,111,'Zepatier Elbasvir & Grazoprevir 50mg/100mg','Hepatitis C'),
(5115,132,'Dopamine 200mg Injection','Parkinson\'s Disease'),
(5116,137,'Metformin 500 Mg Tablets','Diabetes Mellitus'),
(5117,105,'Suminat 50mg Strip Of 4 Tablets','Migraine'),
(5118,115,'HERCEPTIN 440MG INJ','Cancer'),
(5119,139,'Tamiflu 75mg Strip Of 10 Capsules','Influenza'),
(5120,136,'HERCEPTIN 440MG INJ, Keytruda 100mg Vial Of 4ml Injection','Cancer'),
(5121,121,'Formoterol Fumarate and Budesonide Inhaler','Ashtma'),
(5122,133,'Bronchodilator Asthalin 2mg','Ashtma'),
(5123,103,'Tamiflu 75mg Strip Of 10 Capsules','Influenza'),
(5124,134,'Mefenamic Acid Tablets 500MG','Bacterial infections'),
(5125,108,'Mefenamic Acid Tablets 500MG','Bacterial infections'),
(5126,131,'Insulin Injection, Metformin 500 Mg Tablets','Diabetes Mellitus'),
(5127,101,'Glupin Cr Sulfonylurea Glipizide','Diabetes Mellitus'),
(5128,114,'Insulin Injection, Glupin Cr Sulfonylurea Glipizide','Diabetes Mellitus'),
(5129,104,'Phenobarbital Tab 30 mg','Epilepsy'),
(5130,120,'Memantine Hydrochloride 10 Mg Tablets','Alzheimer\'s Disease'),
(5131,124,'Metformin 500 Mg Tablets','Diabetes Mellitus'),
(5132,118,'Phenobarbital Tab 30 mg','Epilepsy'),
(5133,113,'Amoxicillin 250 Mg','Bacterial infections'),
(5134,126,'Ibuprofen Tablets 400 Mg','Rheumatoid Artritis'), 
(5135,130,'Dopamine 200 mg Injection, Sinemet 125 mg Tablet','Parkinson\'s Disease'),
(5136,109,'Formoterol Fumarate and Budesonide Inhaler','Asthma'),
(5137,125,'Sipagel Antacid Tablets, Proton pump inhibitors','Gastroesophageal Reflux Disease'), 
(5138,129,'Keytruda 100mg Vial of 4ml Injection','Cancer'),
(5139,112,'Delafloxacin Baxdela 450mg Tablet','Pneumonia'),
(5140,119,'Invanz 1gm Injection, Linezolid 600 Mg Tablet','Pneumonia');

INSERT INTO medicine VALUES
(501,'Insulin Injection','Diabetes Mellitus',120),
(502,'Metformin 500 Mg Tablets','Diabetes Mellitus',150),
(503,'Glupin Cr Sulfonylurea Glipizide','Diabetes Mellitus',85),
(504,'Keytruda 100mg Vial Of 4ml Injection','Cancer',35475),
(505,'HERCEPTIN 440MG INJ','Cancer',40000),
(506,'Cefton 1g injection','Appendicitis',64.31),
(507,'Exelon 1.5mg Capsule 14\'S','Alzheimer\'s Disease',794.50),
(508,'Memantine Hydrochloride 10 Mg Tablets','Alzheimer\'s Disease',100),
(509,'Methotrexate Tablets Ip 2.5 Mg','Rheumatoid Arthritis',49.22),
(510,'Ibuprofen Tablets 400 Mg','Rheumatoid Arthritis',70),
(511,'Tamiflu 75mg Strip Of 10 Capsules','Influenza',1096.50),
(512,'Suminat 50mg Strip Of 4 Tablets','Migraine',54.60),
(513,'West Coast Migraneed Migraine Oil - 100 ml','Migraine',279),
(514,'Migraine Ayurvedic Management 30 Days Pack','Migraine',5225),
(515,'Sipagel Antacid Tablets','Gastroesophageal Reflux Disease',290),
(516,'Proton pump inhibitors','Gastroesophageal Reflux Disease',58.9),
(517,'Sinemet 125mg Tablet','Parkinson\'s Disease',97),
(518,'Dopamine 200mg Injection','Parkinson\'s Disease',20.2),
(519,'Lamotrigine Tab 25 mg','Epilepsy',297.66),
(520,'Phenobarbital Tab 30 mg','Epilepsy',58.29),
(521,'Zepatier Elbasvir & Grazoprevir 50mg/100mg','Hepatitis C',1000),
(522,'Mavyret Glecaprevir Pibrentasvir 100 mg/40 mg','Hepatitis C',13055),
(523,'Epclusa 400mg 100mg Tablet','Hepatitis C',6160),
(524,'Remicade, 100 mg','Crohn\'s Disease',14000),
(525,'Delafloxacin Baxdela 450mg Tablet','Pneumonia',1952.02),
(526,'Zithromax Azithromycin 500 Mg','Pneumonia',100),
(527,'Aztreonam 1gm Injection, 1000 mg','Pneumonia',1099),
(528,'Invanz 1gm Injection','Pneumonia',2623.84),
(529,'Linezolid 600 Mg Tablet 10','Pneumonia',314.93),
(530,'Melphalan 5 Mg Tablet','Ovarian Cancer',3930),
(531,'Bevacirel 100mg /4ml Bevacizumab Injection','Ovarian Cancer',5000),
(532,'Cisplatin 50 Mg Injection','Ovarian Cancer',250),
(533,'Doxorubicin Hydrochloride Injection','Ovarian Cancer',3282.65),
(534,'Amoxicillin 250 Mg','Bacterial infections',24.14),
(535,'Mefenamic Acid Tablets 500MG','Bacterial infections',300),
(536,'Bronchodilator Asthalin 2mg','Ashtma',41.85),
(537,'Formoterol Fumarate and Budesonide Inhaler','Ashtma',373.60);

INSERT INTO medicine_bill VALUES
(106,'Melphalan 5 Mg Tablet',3930),
(134,'Mefenamic Acid Tablets 500MG',300),
(107,'Metformin 500 Mg Tablets',150),
(123,'Suminat 50mg Strip Of 4 Tablets, West Coast Migraneed Migraine Oil - 100 ml',333.6),
(110,'Methotrexate Tablets Ip 2.5 Mg',49.22),
(114,'Insulin Injection, Glupin Cr Sulfonylurea Glipizide',205),
(102,'Exelon 1.5mg Capsule 14\'S',794.50),
(135,'Ibuprofen Tablets 400 Mg',70),
(118,'Phenobarbital Tab 30 mg',58.29),
(111,'Zepatier Elbasvir & Grazoprevir 50mg/100mg',1000),
(140,'Glupin Cr Sulfonylurea Glipizide',85),
(130,'Dopamine 200 mg Injection, Sinemet 125 mg Tablet',20.2),
(127,'Epclusa 400mg 100mg Tablet, Mavyret Glecaprevir Pibrentasvir 100 mg/40 mg',19215),
(121,'Formoterol Fumarate and Budesonide Inhaler',373.60),
(112,'Delafloxacin Baxdela 450mg Tablet',1952.02),
(130,'Dopamine 200 mg Injection, Sinemet 125 mg Tablet',20.2),
(139,'Tamiflu 75mg Strip Of 10 Capsules',1096.50),
(136,'HERCEPTIN 440MG INJ, Keytruda 100mg Vial Of 4ml Injection',75475),
(125,'Sipagel Antacid Tablets, Proton pump inhibitors',348.9),
(119,'Invanz 1gm Injection, Linezolid 600 Mg Tablet',2623.84);

INSERT INTO bill(B_ID,P_ID,D_ID,Doc_Charges,Sep_Charges) VALUES
(901,101,1,1500,45000),
(902,102,16,1500,11880),
(903,103,18,1000,2500),
(904,104,20,2000,75000),
(905,105,17,2000,35000),
(906,106,15,2250,75000),
(907,107,1,1500,43500),
(908,108,4,1500,20000),
(909,109,13,1000,5000),
(910,110,6,1500,38500),
(911,111,12,1600,3000),
(912,112,19,1500,10500),
(913,113,4,1500,26000),
(914,114,6,1500,60000),
(915,115,10,2000,4499),
(916,116,11,2000,45000),
(917,117,8,2000,65500),
(918,118,20,2000,80000),
(919,119,19,1500,95000),
(920,120,2,1500,8880),
(921,121,9,2000,15000),
(922,122,11,2000,57900),
(923,123,17,2000,20000),
(924,124,1,1500,45000),
(925,125,3,2000,75500),
(926,126,5,2100,4550),
(927,127,12,1600,3750),
(928,128,8,2000,65500),
(929,129,10,2000,5400),
(930,130,7,1500,605000),
(931,131,1,1500,48000),
(932,132,7,1500,458900),
(933,133,13,1000,5000),
(934,134,4,1500,39500),
(935,135,5,2100,4550),
(936,136,10,2000,3999),
(937,137,1,1500,65500),
(938,138,14,1000,45000),
(939,139,18,1000,2500),
(940,140,1,1500,62000);

DELETE FROM patients
WHERE P_ID = 141;

UPDATE patients
SET DOB = '2020-01-10' 
WHERE Email = 'prathameshsawkare@yahoo.com';

SELECT P_Name as Patient_Name FROM patients;

SELECT * FROM patients WHERE Email IS NULL;

SELECT * FROM appointment WHERE Attends_Status IS NOT NULL;

SELECT * FROM patients WHERE P_Name LIKE '%h_';

SELECT M_Name, M_Price FROM Medicine WHERE M_Price BETWEEN 5000 AND 15000;

SELECT * FROM patients WHERE Address LIKE '%Malad%' OR Address LIKE '%Andheri%';

SELECT P_Name FROM patients WHERE Gender = "Female" AND P_Name LIKE '%Singh';

SELECT * FROM doctor having Specialist IN ('Asthma','Cancer');

SELECT * FROM appointment WHERE NOT Concern = 'Diabetes Mellitus';

SELECT * FROM patients WHERE Age < 15;

SELECT * FROM appointment where A_Date_Time > '2023-09-30';

SELECT * FROM bill where Doc_Charges <= 1500;

SELECT * FROM bill where Doc_Charges >= 2000;

SELECT * FROM appointment WHERE Concern != 'Alzheimer\'s Disease';

SELECT * FROM patients WHERE P_ID = 121;

SELECT Doc_Charges + Sep_Charges as Total_Bill FROM bill;

SELECT (3000-535) AS Subtraction;

SELECT (97*53) AS Multiplication;

SELECT (64%9) AS REMAINDER;

SELECT (590/3) AS Division;

SELECT CONCAT(P_Name,'-',P_ID) FROM patients;

SELECT LOWER(D_Name) FROM doctor;

SELECT UPPER(Specialist) FROM doctor;

SELECT REPLACE(M_Name,'r','R') FROM medicine;

SELECT REVERSE(M_Type) FROM medicine;

SELECT LENGTH(M_Type) FROM medicine;

SELECT INSTR(Med_Name,',') FROM prescription;

SELECT SUBSTR(Med_Name,1,7) FROM prescription;

SELECT LTRIM(P_Name) FROM patients;

SELECT RTRIM(P_Name) FROM patients;

SELECT TRIM(P_Name) FROM patients;

SELECT ABS(-102);

SELECT MOD(31,3);

SELECT CEIL(Total_Amount) FROM medicine_bill;

SELECT FLOOR(Total_Amount) FROM medicine_bill;

SELECT TRUNCATE(Total_Amount,1) FROM medicine_bill;

SELECT EXP(4);

SELECT POW(8,6);

SELECT SQRT(324);

SELECT CURDATE();

SELECT NOW();

SELECT SYSDATE();

SELECT LAST_DAY(DOB) FROM patients;

SELECT DATE_FORMAT(DOB,'%D %b %Y') FROM patients;

SELECT DATEDIFF(CURDATE(),DOB) FROM patients;

SELECT MONTH(DOB) FROM patients;

SELECT YEAR(DOB) FROM patients;

SELECT SUM(Total_Amount) FROM medicine_bill;

SELECT AVG(Total_Amount) FROM medicine_bill;

SELECT MIN(Total_Amount) FROM medicine_bill;

SELECT MAX(Total_Amount) FROM medicine_bill;

SELECT COUNT(*) FROM doctor;

SELECT COUNT(*), Specialist FROM doctor GROUP BY Specialist;

SELECT COUNT(*), Specialist FROM doctor GROUP BY Specialist HAVING COUNT(*) >1;

SELECT * FROM doctor ORDER BY D_Name;

SELECT * FROM doctor ORDER BY Specialist DESC;

SELECT * FROM medicine_bill WHERE Total_Amount>500 LIMIT 5;

SELECT D_ID AS 'Patients and Doctors ID' , D_Name AS 'Patients and Doctors NAME'FROM doctor
UNION
SELECT P_ID, P_Name FROM patients;
 
 -- single row sub-query
SELECT P_ID, P_NAME FROM patients WHERE P_ID=(
SELECT P_ID FROM medicine_bill WHERE Total_Amount=(
SELECT MAX(Total_Amount) FROM medicine_bill WHERE Total_Amount<10000));

-- multiple row sub-query - 
SELECT D_Name, Specialist FROM doctor WHERE D_ID IN (SELECT D_ID FROM bill WHERE Doc_Charges=2000);

-- multiple column sub-query
SELECT * FROM appointment WHERE (P_ID, D_ID) IN (SELECT P_ID,D_ID FROM bill WHERE Sep_Charges > 40000);

-- INNER JOIN
SELECT Appointment.A_ID, Appointment.Concern, Medicine_bill.Med_Name FROM appointment
INNER JOIN
Medicine_bill
ON
Appointment.P_ID = Medicine_bill.P_ID
WHERE Appointment.D_ID NOT IN (5,15,20);

-- OUTER JOIN
-- LEFT OUTER JOIN

SELECT Bill.D_ID, Appointment.Created_Date, Appointment.Concern FROM Bill
LEFT OUTER JOIN
Appointment
ON
Appointment.P_ID=Bill.P_ID;

-- RIGHT OUTER JOIN

SELECT Appointment.Concern, Patients.P_ID, Patients.P_Name FROM Appointment
RIGHT OUTER JOIN
Patients
ON Appointment.P_ID=Patients.P_ID;

-- Cross Join
SELECT Appointment.A_ID, Appointment.P_ID, Medicine.M_Type FROM Medicine
CROSS JOIN
Appointment
ON 
Appointment.Concern=Medicine.M_Type;
