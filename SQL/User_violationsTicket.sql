CREATE TABLE user_violations (
violation_id INT(11) AUTO_INCREMENT PRIMARY KEY,
violationCharge INT(11) NOT NULL,
violationDescription VARCHAR(150) NOT NULL
);

ALTER table rtvms.user_violations
ADD COLUMN violation_type VARCHAR(45) AFTER violation_id;


CREATE TABLE user_ticket (
ticket_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
ticketNumber VARCHAR(45) NOT NULL,
firstName VARCHAR(30) NOT NULL,
lastName VARCHAR(30) NOT NULL,
dateOfBirth VARCHAR(15) NOT NULL,
issueDate VARCHAR(15) NOT NULL,
licenseNumber VARCHAR(30) NOT NULL,
violation INT(5) NOT NULL,
FOREIGN KEY (violation) REFERENCES user_violations(violation_id)
);

ALTER TABLE rtvms.user_ticket
ADD COLUMN driver_violation_id INT(11) NOT NULL,
ADD COLUMN ticket_paid VARCHAR(15) NOT NULL;

ALTER TABLE rtvms.user_ticket
ADD FOREIGN KEY (driver_violation_id) REFERENCES driver_violations(violation_id);