CREATE TYPE appointment_status AS ENUM ('Scheduled', 'Completed', 'Canceled');
CREATE TABLE doctors(
                        id SERIAL PRIMARY KEY,
                        first_name VARCHAR(500),
                        last_name VARCHAR(500),
                        speciality VARCHAR(500),
                        phone_number NUMERIC,
                        email VARCHAR(300),
                        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE patients(
                         id SERIAL PRIMARY KEY,
                         first_name VARCHAR(500),
                         last_name VARCHAR(500),
                         date_of_birth DATE,
                         gender VARCHAR(100),
                         phone_number NUMERIC,
                         email VARCHAR(300),
                         created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE appointments(
                             id SERIAL PRIMARY KEY,
                             doctor_id INT REFERENCES doctors(id),
                             patient_id INT REFERENCES patients(id),
                             appointment_date DATE,
                             status appointment_status,
                             created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE medical_records(
                                id SERIAL PRIMARY KEY,
                                patients_id INT REFERENCES patients(id),
                                diagnosis VARCHAR(500),
                                treatment VARCHAR(500),
                                doctor_id INT REFERENCES doctors(id),
                                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE doctor_patient (
                                doctor_id INT REFERENCES doctors(id),
                                patient_id INT REFERENCES patients(id),
                                PRIMARY KEY (doctor_id, patient_id)
);