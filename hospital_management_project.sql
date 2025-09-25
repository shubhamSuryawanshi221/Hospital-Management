>> CREATE DATABASE hospital_db;
>> USE hospital_db;


>> CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    state VARCHAR(50)
);

>> CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    department VARCHAR(50)
);

>> CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

>> CREATE TABLE treatments (
    treatment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    diagnosis VARCHAR(100),
    treatment VARCHAR(100),
    cost DECIMAL(10,2),
    treatment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

>> CREATE TABLE billing (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    treatment_id INT,
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (treatment_id) REFERENCES treatments(treatment_id)
);

>>INSERT INTO doctors (name, specialization, department) VALUES ('Dr. A Sharma','Cardiology','Cardiology');
>>INSERT INTO doctors (name, specialization, department) VALUES ('Dr. B Patel','Neurology','Neurology');
>>INSERT INTO doctors (name, specialization, department) VALUES ('Dr. C Khan','Orthopedics','Orthopedics');
>>INSERT INTO doctors (name, specialization, department) VALUES ('Dr. D Mehta','Dermatology','Dermatology');
>>INSERT INTO doctors (name, specialization, department) VALUES ('Dr. E Nair','Pediatrics','Pediatrics');
>>INSERT INTO doctors (name, specialization, department) VALUES ('Dr. F Singh','Oncology','Oncology');
>>INSERT INTO doctors (name, specialization, department) VALUES ('Dr. G Reddy','General Medicine','General Medicine');
>>INSERT INTO doctors (name, specialization, department) VALUES ('Dr. H Choudhary','ENT','ENT');
>>INSERT INTO doctors (name, specialization, department) VALUES ('Dr. I Roy','Ophthalmology','Ophthalmology');
>>INSERT INTO doctors (name, specialization, department) VALUES ('Dr. J Gupta','Psychiatry','Psychiatry');

INSERT INTO patients (name, age, gender, city, state) VALUES ('Ankit Verma',32,'Male','Mumbai','Maharashtra');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Priya Iyer',28,'Female','Pune','Maharashtra');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Rahul Das',45,'Male','Kolkata','West Bengal');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Sneha Patil',35,'Female','Nagpur','Maharashtra');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Vikas Sharma',52,'Male','Delhi','Delhi');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Pooja Reddy',29,'Female','Hyderabad','Telangana');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Amit Joshi',41,'Male','Jaipur','Rajasthan');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Neha Singh',23,'Female','Lucknow','Uttar Pradesh');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Arjun Nair',38,'Male','Kochi','Kerala');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Meera Khan',47,'Female','Bengaluru','Karnataka');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Ravi Kumar',54,'Male','Chennai','Tamil Nadu');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Kavita Desai',30,'Female','Ahmedabad','Gujarat');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Mohit Bansal',27,'Male','Indore','Madhya Pradesh');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Sanya Malhotra',33,'Female','Bhopal','Madhya Pradesh');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Karan Kapoor',49,'Male','Delhi','Delhi');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Divya Jain',26,'Female','Mumbai','Maharashtra');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Harshita Yadav',37,'Female','Lucknow','Uttar Pradesh');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Rohit Shetty',42,'Male','Goa','Goa');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Ishita Shah',31,'Female','Surat','Gujarat');
INSERT INTO patients (name, age, gender, city, state) VALUES ('Aditya Thakur',36,'Male','Shimla','Himachal Pradesh');

INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (9,4,'2025-07-04','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (9,4,'Heart Disease','Bypass Surgery',150000,'2025-07-04');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (9,1,150000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (12,1,'2025-03-20','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (12,1,'Hypertension','Medication',5000,'2025-03-20');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (12,2,5000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (15,4,'2025-02-04','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (15,4,'Hypertension','Medication',5000,'2025-02-04');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (15,3,5000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (5,6,'2025-05-07','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (5,6,'Asthma','Inhaler',2500,'2025-05-07');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (5,4,2500,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (14,10,'2025-02-12','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (14,10,'Heart Disease','Bypass Surgery',150000,'2025-02-12');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (14,5,150000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (11,4,'2025-08-09','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (11,4,'Diabetes','Medication',3000,'2025-08-09');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (11,6,3000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (13,10,'2025-05-26','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (13,10,'Diabetes','Medication',3000,'2025-05-26');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (13,7,3000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (15,3,'2025-05-11','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (15,3,'Fracture','Bone Surgery',75000,'2025-05-11');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (15,8,75000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (13,6,'2025-02-10','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (13,6,'Anxiety','Counseling',4000,'2025-02-10');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (13,9,4000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (2,7,'2025-01-12','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (2,7,'Skin Allergy','Ointment',1500,'2025-01-12');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (2,10,1500,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (17,9,'2025-06-30','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (17,9,'Asthma','Inhaler',2500,'2025-06-30');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (17,11,2500,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (16,4,'2025-02-28','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (16,4,'Migraine','Medication',1800,'2025-02-28');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (16,12,1800,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (15,5,'2025-02-25','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (15,5,'Migraine','Medication',1800,'2025-02-25');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (15,13,1800,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (5,2,'2025-03-03','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (5,2,'Asthma','Inhaler',2500,'2025-03-03');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (5,14,2500,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (11,8,'2025-03-10','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (11,8,'Skin Allergy','Ointment',1500,'2025-03-10');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (11,15,1500,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (6,2,'2025-06-02','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (6,2,'Skin Allergy','Ointment',1500,'2025-06-02');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (6,16,1500,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (5,2,'2025-08-11','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (5,2,'Fracture','Bone Surgery',75000,'2025-08-11');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (5,17,75000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (16,8,'2025-04-02','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (16,8,'Fracture','Bone Surgery',75000,'2025-04-02');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (16,18,75000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (12,7,'2025-01-16','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (12,7,'Anxiety','Counseling',4000,'2025-01-16');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (12,19,4000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (4,4,'2025-04-25','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (4,4,'Anxiety','Counseling',4000,'2025-04-25');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (4,20,4000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (14,9,'2025-06-12','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (14,9,'Hypertension','Medication',5000,'2025-06-12');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (14,21,5000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (12,10,'2025-08-16','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (12,10,'Heart Disease','Bypass Surgery',150000,'2025-08-16');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (12,22,150000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (6,3,'2025-07-16','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (6,3,'Anxiety','Counseling',4000,'2025-07-16');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (6,23,4000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (12,2,'2025-08-16','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (12,2,'Heart Disease','Bypass Surgery',150000,'2025-08-16');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (12,24,150000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (3,3,'2025-08-08','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (3,3,'Migraine','Medication',1800,'2025-08-08');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (3,25,1800,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (11,1,'2025-07-24','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (11,1,'Skin Allergy','Ointment',1500,'2025-07-24');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (11,26,1500,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (17,8,'2025-03-15','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (17,8,'Hypertension','Medication',5000,'2025-03-15');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (17,27,5000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (7,5,'2025-06-08','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (7,5,'Migraine','Medication',1800,'2025-06-08');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (7,28,1800,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (1,1,'2025-06-27','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (1,1,'Cancer','Chemotherapy',120000,'2025-06-27');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (1,29,120000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (1,8,'2025-04-11','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (1,8,'Heart Disease','Bypass Surgery',150000,'2025-04-11');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (1,30,150000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (6,10,'2025-02-11','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (6,10,'Cancer','Chemotherapy',120000,'2025-02-11');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (6,31,120000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (17,10,'2025-04-29','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (17,10,'Flu','Medication',2000,'2025-04-29');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (17,32,2000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (1,7,'2025-04-18','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (1,7,'Cancer','Chemotherapy',120000,'2025-04-18');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (1,33,120000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (9,5,'2025-02-26','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (9,5,'Cancer','Chemotherapy',120000,'2025-02-26');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (9,34,120000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (4,6,'2025-06-27','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (4,6,'Skin Allergy','Ointment',1500,'2025-06-27');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (4,35,1500,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (11,4,'2025-01-23','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (11,4,'Asthma','Inhaler',2500,'2025-01-23');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (11,36,2500,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (10,7,'2025-06-02','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (10,7,'Asthma','Inhaler',2500,'2025-06-02');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (10,37,2500,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (20,3,'2025-08-31','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (20,3,'Asthma','Inhaler',2500,'2025-08-31');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (20,38,2500,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (5,2,'2025-08-13','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (5,2,'Skin Allergy','Ointment',1500,'2025-08-13');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (5,39,1500,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (2,4,'2025-01-28','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (2,4,'Migraine','Medication',1800,'2025-01-28');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (2,40,1800,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (19,6,'2025-01-27','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (19,6,'Asthma','Inhaler',2500,'2025-01-27');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (19,41,2500,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (10,8,'2025-03-15','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (10,8,'Hypertension','Medication',5000,'2025-03-15');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (10,42,5000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (14,3,'2025-01-30','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (14,3,'Anxiety','Counseling',4000,'2025-01-30');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (14,43,4000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (7,6,'2025-05-13','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (7,6,'Anxiety','Counseling',4000,'2025-05-13');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (7,44,4000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (19,4,'2025-03-02','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (19,4,'Cancer','Chemotherapy',120000,'2025-03-02');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (19,45,120000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (20,2,'2025-02-27','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (20,2,'Migraine','Medication',1800,'2025-02-27');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (20,46,1800,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (1,2,'2025-03-23','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (1,2,'Fracture','Bone Surgery',75000,'2025-03-23');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (1,47,75000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (7,5,'2025-08-17','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (7,5,'Anxiety','Counseling',4000,'2025-08-17');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (7,48,4000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (5,4,'2025-07-02','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (5,4,'Anxiety','Counseling',4000,'2025-07-02');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (5,49,4000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (2,1,'2025-06-26','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (2,1,'Flu','Medication',2000,'2025-06-26');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (2,50,2000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (8,6,'2025-07-01','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (8,6,'Flu','Medication',2000,'2025-07-01');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (8,51,2000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (11,6,'2025-04-08','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (11,6,'Fracture','Bone Surgery',75000,'2025-04-08');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (11,52,75000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (8,2,'2025-03-17','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (8,2,'Anxiety','Counseling',4000,'2025-03-17');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (8,53,4000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (10,5,'2025-01-08','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (10,5,'Anxiety','Counseling',4000,'2025-01-08');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (10,54,4000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (1,2,'2025-05-11','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (1,2,'Anxiety','Counseling',4000,'2025-05-11');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (1,55,4000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (7,3,'2025-04-20','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (7,3,'Heart Disease','Bypass Surgery',150000,'2025-04-20');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (7,56,150000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (7,3,'2025-08-08','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (7,3,'Skin Allergy','Ointment',1500,'2025-08-08');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (7,57,1500,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (20,4,'2025-01-13','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (20,4,'Asthma','Inhaler',2500,'2025-01-13');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (20,58,2500,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (1,10,'2025-06-02','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (1,10,'Anxiety','Counseling',4000,'2025-06-02');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (1,59,4000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (18,9,'2025-06-16','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (18,9,'Skin Allergy','Ointment',1500,'2025-06-16');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (18,60,1500,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (9,1,'2025-01-17','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (9,1,'Cancer','Chemotherapy',120000,'2025-01-17');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (9,61,120000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (6,9,'2025-05-22','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (6,9,'Flu','Medication',2000,'2025-05-22');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (6,62,2000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (3,4,'2025-06-13','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (3,4,'Anxiety','Counseling',4000,'2025-06-13');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (3,63,4000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (5,5,'2025-06-02','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (5,5,'Migraine','Medication',1800,'2025-06-02');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (5,64,1800,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (3,6,'2025-03-31','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (3,6,'Skin Allergy','Ointment',1500,'2025-03-31');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (3,65,1500,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (1,8,'2025-07-22','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (1,8,'Heart Disease','Bypass Surgery',150000,'2025-07-22');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (1,66,150000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (12,3,'2025-05-26','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (12,3,'Flu','Medication',2000,'2025-05-26');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (12,67,2000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (5,10,'2025-07-03','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (5,10,'Heart Disease','Bypass Surgery',150000,'2025-07-03');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (5,68,150000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (6,7,'2025-08-15','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (6,7,'Cancer','Chemotherapy',120000,'2025-08-15');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (6,69,120000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (14,1,'2025-01-01','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (14,1,'Hypertension','Medication',5000,'2025-01-01');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (14,70,5000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (3,9,'2025-05-05','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (3,9,'Heart Disease','Bypass Surgery',150000,'2025-05-05');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (3,71,150000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (15,1,'2025-08-14','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (15,1,'Fracture','Bone Surgery',75000,'2025-08-14');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (15,72,75000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (20,5,'2025-06-20','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (20,5,'Anxiety','Counseling',4000,'2025-06-20');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (20,73,4000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (1,5,'2025-08-25','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (1,5,'Cancer','Chemotherapy',120000,'2025-08-25');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (1,74,120000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (10,10,'2025-04-15','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (10,10,'Hypertension','Medication',5000,'2025-04-15');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (10,75,5000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (6,3,'2025-06-12','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (6,3,'Diabetes','Medication',3000,'2025-06-12');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (6,76,3000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (16,4,'2025-04-12','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (16,4,'Migraine','Medication',1800,'2025-04-12');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (16,77,1800,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (8,4,'2025-07-22','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (8,4,'Flu','Medication',2000,'2025-07-22');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (8,78,2000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (4,10,'2025-07-31','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (4,10,'Anxiety','Counseling',4000,'2025-07-31');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (4,79,4000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (7,5,'2025-02-07','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (7,5,'Diabetes','Medication',3000,'2025-02-07');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (7,80,3000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (11,1,'2025-08-31','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (11,1,'Migraine','Medication',1800,'2025-08-31');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (11,81,1800,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (9,3,'2025-05-17','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (9,3,'Fracture','Bone Surgery',75000,'2025-05-17');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (9,82,75000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (11,5,'2025-06-29','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (11,5,'Fracture','Bone Surgery',75000,'2025-06-29');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (11,83,75000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (19,4,'2025-02-15','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (19,4,'Flu','Medication',2000,'2025-02-15');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (19,84,2000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (10,9,'2025-03-06','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (10,9,'Heart Disease','Bypass Surgery',150000,'2025-03-06');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (10,85,150000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (12,8,'2025-08-24','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (12,8,'Skin Allergy','Ointment',1500,'2025-08-24');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (12,86,1500,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (15,9,'2025-04-11','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (15,9,'Cancer','Chemotherapy',120000,'2025-04-11');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (15,87,120000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (3,10,'2025-05-09','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (3,10,'Flu','Medication',2000,'2025-05-09');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (3,88,2000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (18,8,'2025-02-06','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (18,8,'Diabetes','Medication',3000,'2025-02-06');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (18,89,3000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (1,3,'2025-05-08','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (1,3,'Heart Disease','Bypass Surgery',150000,'2025-05-08');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (1,90,150000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (16,8,'2025-02-03','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (16,8,'Anxiety','Counseling',4000,'2025-02-03');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (16,91,4000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (6,2,'2025-04-29','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (6,2,'Fracture','Bone Surgery',75000,'2025-04-29');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (6,92,75000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (12,5,'2025-08-20','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (12,5,'Skin Allergy','Ointment',1500,'2025-08-20');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (12,93,1500,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (3,7,'2025-04-29','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (3,7,'Hypertension','Medication',5000,'2025-04-29');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (3,94,5000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (6,9,'2025-01-06','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (6,9,'Flu','Medication',2000,'2025-01-06');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (6,95,2000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (19,10,'2025-07-14','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (19,10,'Heart Disease','Bypass Surgery',150000,'2025-07-14');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (19,96,150000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (12,1,'2025-03-03','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (12,1,'Fracture','Bone Surgery',75000,'2025-03-03');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (12,97,75000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (20,8,'2025-06-22','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (20,8,'Asthma','Inhaler',2500,'2025-06-22');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (20,98,2500,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (7,2,'2025-01-09','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (7,2,'Hypertension','Medication',5000,'2025-01-09');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (7,99,5000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (7,5,'2025-08-16','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (7,5,'Anxiety','Counseling',4000,'2025-08-16');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (7,100,4000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (11,5,'2025-07-30','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (11,5,'Flu','Medication',2000,'2025-07-30');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (11,101,2000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (16,10,'2025-05-09','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (16,10,'Flu','Medication',2000,'2025-05-09');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (16,102,2000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (3,7,'2025-01-08','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (3,7,'Cancer','Chemotherapy',120000,'2025-01-08');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (3,103,120000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (1,7,'2025-03-03','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (1,7,'Diabetes','Medication',3000,'2025-03-03');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (1,104,3000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (7,6,'2025-05-24','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (7,6,'Anxiety','Counseling',4000,'2025-05-24');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (7,105,4000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (8,9,'2025-03-08','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (8,9,'Diabetes','Medication',3000,'2025-03-08');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (8,106,3000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (4,5,'2025-06-24','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (4,5,'Fracture','Bone Surgery',75000,'2025-06-24');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (4,107,75000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (10,3,'2025-08-08','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (10,3,'Anxiety','Counseling',4000,'2025-08-08');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (10,108,4000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (16,3,'2025-05-16','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (16,3,'Heart Disease','Bypass Surgery',150000,'2025-05-16');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (16,109,150000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (15,7,'2025-02-02','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (15,7,'Heart Disease','Bypass Surgery',150000,'2025-02-02');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (15,110,150000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (13,4,'2025-07-27','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (13,4,'Migraine','Medication',1800,'2025-07-27');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (13,111,1800,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (11,4,'2025-01-04','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (11,4,'Skin Allergy','Ointment',1500,'2025-01-04');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (11,112,1500,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (16,9,'2025-04-18','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (16,9,'Migraine','Medication',1800,'2025-04-18');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (16,113,1800,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (19,2,'2025-03-08','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (19,2,'Fracture','Bone Surgery',75000,'2025-03-08');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (19,114,75000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (2,8,'2025-06-08','Pending');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (2,8,'Anxiety','Counseling',4000,'2025-06-08');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (2,115,4000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (1,4,'2025-07-22','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (1,4,'Hypertension','Medication',5000,'2025-07-22');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (1,116,5000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (11,4,'2025-01-05','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (11,4,'Hypertension','Medication',5000,'2025-01-05');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (11,117,5000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (14,9,'2025-07-27','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (14,9,'Heart Disease','Bypass Surgery',150000,'2025-07-27');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (14,118,150000,'Pending');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (16,2,'2025-05-10','Completed');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (16,2,'Hypertension','Medication',5000,'2025-05-10');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (16,119,5000,'Paid');
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES (11,1,'2025-05-07','Cancelled');
INSERT INTO treatments (patient_id, doctor_id, diagnosis, treatment, cost, treatment_date) VALUES (11,1,'Anxiety','Counseling',4000,'2025-05-07');
INSERT INTO billing (patient_id, treatment_id, total_amount, payment_status) VALUES (11,120,4000,'Paid');
