--Doctors table data
INSERT INTO doctors (first_name, last_name, speciality, phone_number, email, created_at)
VALUES
    ('Alice', 'Mugisha', 'Cardiology', '0788123456', 'alice@example.com', CURRENT_TIMESTAMP),
    ('John', 'Doe', 'Pediatrics', '0788234567', 'john@example.com', CURRENT_TIMESTAMP),
    ('Sara', 'Smith', 'Neurology', '0788345678', 'sara@example.com', CURRENT_TIMESTAMP),
    ('Mutabazi', 'Dermatology', '0788678900', 'kevin@example.com', CURRENT_TIMESTAMP),
    ('Linda', 'Mukamana', 'Oncology', '0788789011', 'linda@example.com', CURRENT_TIMESTAMP);

--Patients table data
INSERT INTO patients (first_name, last_name, date_of_birth, gender, phone_number, email, created_at)
VALUES
    ('Emmy', 'Uwase', '1990-05-12', 'Male', '0788123000', 'emmy@example.com', CURRENT_TIMESTAMP),
    ('Grace', 'Nkunda', '1985-08-23', 'Female', '0788456000', 'grace@example.com', CURRENT_TIMESTAMP),
    ('Eric', 'Niyonzima', '1995-02-18', 'Male', '0788567000', 'eric@example.com', CURRENT_TIMESTAMP),
    ('Diane', 'Uwimana', '1992-07-10', 'Female', '0788900001', 'diane@example.com', CURRENT_TIMESTAMP),
    ('Brian', 'Habimana', '1991-04-25', 'Male', '0788900002', 'brian@example.com', CURRENT_TIMESTAMP),
    ('Ange', 'Uwera', '1998-12-30', 'Female', '0788900003', 'ange@example.com', CURRENT_TIMESTAMP),
    ('Ethan', 'Kamanzi', '1988-11-14', 'Male', '0788900004', 'ethan@example.com', CURRENT_TIMESTAMP),
    ('Joan', 'Nirere', '1996-06-09', 'Female', '0788900005', 'joan@example.com', CURRENT_TIMESTAMP),
    ('Tom', 'Niyitegeka', '1990-01-20', 'Male', '0788900006', 'tom@example.com', CURRENT_TIMESTAMP),
    ('Kelly', 'Ingabire', '1993-09-05', 'Female', '0788900007', 'kelly@example.com', CURRENT_TIMESTAMP),
    ('Isaac', 'Rukundo', '1987-03-16', 'Male', '0788900008', 'isaac@example.com', CURRENT_TIMESTAMP),
    ('Marie', 'Mukantwali', '1989-08-22', 'Female', '0788900009', 'marie@example.com', CURRENT_TIMESTAMP),
    ('Jules', 'Bizimana', '1994-04-01', 'Male', '0788900010', 'jules@example.com', CURRENT_TIMESTAMP),
    ('Hope', 'Uwase', '1997-10-28', 'Female', '0788900011', 'hope@example.com', CURRENT_TIMESTAMP),
    ('Theo', 'Nshimiyimana', '1986-12-03', 'Male', '0788900012', 'theo@example.com', CURRENT_TIMESTAMP);

--Appointment table data
INSERT INTO appointments (doctor_id, patient_id, appointment_date, status, created_at)
VALUES
    (1, 1, '2025-05-20 10:00:00', 'Scheduled', CURRENT_TIMESTAMP),
    (2, 2, '2025-05-21 11:00:00', 'Completed', CURRENT_TIMESTAMP),
    (3, 3, '2025-05-22 09:30:00', 'Canceled', CURRENT_TIMESTAMP),
    (1, 4, '2025-05-23 09:00:00', 'Scheduled', CURRENT_TIMESTAMP),
    (2, 5, '2025-05-24 14:00:00', 'Completed', CURRENT_TIMESTAMP),
    (3, 6, '2025-05-25 10:30:00', 'Scheduled', CURRENT_TIMESTAMP),
    (4, 7, '2025-05-26 08:00:00', 'Canceled', CURRENT_TIMESTAMP),
    (5, 8, '2025-05-27 13:45:00', 'Scheduled', CURRENT_TIMESTAMP),
    (1, 9, '2025-05-28 11:15:00', 'Completed', CURRENT_TIMESTAMP),
    (2, 10, '2025-05-29 15:00:00', 'Scheduled', CURRENT_TIMESTAMP),
    (3, 11, '2025-05-30 09:45:00', 'Scheduled', CURRENT_TIMESTAMP),
    (4, 12, '2025-05-31 16:30:00', 'Canceled', CURRENT_TIMESTAMP),
    (5, 13, '2025-06-01 10:00:00', 'Completed', CURRENT_TIMESTAMP),
    (1, 14, '2025-06-02 13:00:00', 'Scheduled', CURRENT_TIMESTAMP),
    (2, 15, '2025-06-03 08:30:00', 'Scheduled', CURRENT_TIMESTAMP);

--medical_records data
INSERT INTO medical_records (patients_id, diagnosis, treatment, doctor_id, created_at)
VALUES
    (1, 'Hypertension', 'Medication and diet changes', 1, CURRENT_TIMESTAMP),
    (2, 'Asthma', 'Inhalers and monitoring', 2, CURRENT_TIMESTAMP),
    (3, 'Migraine', 'Pain relief and rest', 3, CURRENT_TIMESTAMP),
    (4, 'Flu', 'Rest and hydration', 1, CURRENT_TIMESTAMP),
    (5, 'Diabetes', 'Insulin and diet', 2, CURRENT_TIMESTAMP),
    (6, 'Broken Arm', 'Cast and therapy', 3, CURRENT_TIMESTAMP),
    (7, 'Allergy', 'Antihistamines', 4, CURRENT_TIMESTAMP),
    (8, 'Back Pain', 'Physio and meds', 5, CURRENT_TIMESTAMP),
    (9, 'Cold', 'Rest and fluids', 1, CURRENT_TIMESTAMP),
    (10, 'Hypertension', 'Medication', 2, CURRENT_TIMESTAMP),
    (11, 'Depression', 'Therapy', 3, CURRENT_TIMESTAMP),
    (12, 'Fever', 'Paracetamol', 4, CURRENT_TIMESTAMP),
    (13, 'Cough', 'Cough syrup', 5, CURRENT_TIMESTAMP),
    (14, 'Ulcer', 'Antacids and diet', 1, CURRENT_TIMESTAMP),
    (15, 'Sprained Ankle', 'Ice and rest', 2, CURRENT_TIMESTAMP);

--Patient to doctor data
INSERT INTO doctor_patient (doctor_id, patient_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(2, 1),
(1, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(1, 8),
(2, 9),
(3, 10),
(4, 11),
(5, 12),
(1, 13),
(2, 14),
(3, 15),
(4, 2),
(5, 1);

