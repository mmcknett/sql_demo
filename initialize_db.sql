CREATE TABLE employees (
  employee_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR,
  email VARCHAR UNIQUE,
  phone_number VARCHAR
);

CREATE TABLE referral (
	referral_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  description VARCHAR,
  employee_id INT,
  CONSTRAINT fk_employee FOREIGN KEY(employee_id) REFERENCES employees(employee_id)
);

-- Insert some demo employees.
INSERT INTO employees (name, email, phone_number) VALUES
	('Matt', 'mmcknett@cyvaer.com', '555-489-0999'),
  ('Mary', 'mary@exmaple.com', '555-293-1212');

-- Insert some demo referrals, referring to the employees.
INSERT INTO referral (description, employee_id) VALUES
  ('From Dr. Worden', 1),
  ('Another from Dr. Worden', 2),
  ('From Dr. Wong', 1),
  ('A second', 2),
  ('A third!', 2);
