SELECT p.*
FROM patients p
JOIN appointments a ON p.id = a.patient_id
WHERE a.doctor_id = 1;

SELECT d.id, d.first_name, d.last_name, COUNT(dp.patient_id) AS total_patients
FROM doctors d
JOIN doctor_patient dp ON d.id = dp.doctor_id
GROUP BY d.id;

--update
UPDATE appointments
SET status = 'Completed'
WHERE id = 3;

--delete
DELETE FROM patients
WHERE id = 2;

SELECT doctor_id
FROM doctor_patient
GROUP BY doctor_id
HAVING COUNT(patient_id) > 5;

SELECT patient_id
FROM medical_records
GROUP BY patient_id
HAVING COUNT(*) > 1;

SELECT TO_CHAR(appointment_date, 'YYYY-MM') AS month,
COUNT(*) AS total_appointments
FROM appointments
GROUP BY TO_CHAR(appointment_date, 'YYYY-MM');

--constraints to prevent duplicate entries

-- For doctors
ALTER TABLE doctors
ADD CONSTRAINT unique_doctor_email UNIQUE(email);
-- For patients
ALTER TABLE patients
ADD CONSTRAINT unique_patient_email UNIQUE(email);

-- an index on appointment_date
CREATE INDEX idx_appointment_date
ON appointments (appointment_date);

