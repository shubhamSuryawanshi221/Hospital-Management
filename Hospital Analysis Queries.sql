USE hospital_db;

-- 1. Top 5 doctors by number of patients
SELECT d.name AS doctor, d.specialization, COUNT(a.patient_id) AS total_patients
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id
ORDER BY total_patients DESC
LIMIT 5;

-- 2. Revenue per department
SELECT d.department, SUM(t.cost) AS total_revenue
FROM doctors d
JOIN treatments t ON d.doctor_id = t.doctor_id
GROUP BY d.department
ORDER BY total_revenue DESC;

-- 3. Most common diagnoses
SELECT diagnosis, COUNT(*) AS total_cases
FROM treatments
GROUP BY diagnosis
ORDER BY total_cases DESC
LIMIT 10;

-- 4. Monthly revenue trend
SELECT DATE_FORMAT(treatment_date, '%Y-%m') AS month, SUM(cost) AS revenue
FROM treatments
GROUP BY month
ORDER BY month;

-- 5. Patients by city
SELECT city, COUNT(*) AS total_patients
FROM patients
GROUP BY city
ORDER BY total_patients DESC;

-- 6. Payment status summary
SELECT payment_status, COUNT(*) AS total_payments, SUM(total_amount) AS total_value
FROM billing
GROUP BY payment_status;

-- 7. Top 5 treatments generating highest revenue
SELECT treatment, SUM(cost) AS total_revenue
FROM treatments
GROUP BY treatment
ORDER BY total_revenue DESC
LIMIT 5;

-- 8. Average treatment cost
SELECT AVG(cost) AS avg_treatment_cost
FROM treatments;

-- 9. Patients with most visits
SELECT patient_id, COUNT(*) AS visits
FROM appointments
GROUP BY patient_id
ORDER BY visits DESC
LIMIT 5;

-- 10. Doctor revenue contribution
SELECT d.name, SUM(t.cost) AS revenue_generated
FROM doctors d
JOIN treatments t ON d.doctor_id = t.doctor_id
GROUP BY d.name
ORDER BY revenue_generated DESC;

-- 11. Which doctors handle the most patients?
SELECT d.name AS doctor, COUNT(a.patient_id) AS total_patients
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id
ORDER BY total_patients DESC
LIMIT 5;

-- 12. What are the most common diagnoses?
SELECT diagnosis, COUNT(*) AS total_cases
FROM treatments
GROUP BY diagnosis
ORDER BY total_cases DESC
LIMIT 10;

-- 13. Which treatments generate the most revenue?
SELECT treatment, SUM(cost) AS total_revenue
FROM treatments
GROUP BY treatment
ORDER BY total_revenue DESC
LIMIT 5;

-- 14. What’s the monthly trend of patient visits?
SELECT DATE_FORMAT(appointment_date, '%Y-%m') AS month, COUNT(*) AS total_visits
FROM appointments
GROUP BY month
ORDER BY month;

-- 15. Which city/state has the highest number of patients?
-- By city
SELECT city, COUNT(*) AS total_patients
FROM patients
GROUP BY city
ORDER BY total_patients DESC
LIMIT 5;

-- By state
SELECT state, COUNT(*) AS total_patients
FROM patients
GROUP BY state
ORDER BY total_patients DESC
LIMIT 5;
