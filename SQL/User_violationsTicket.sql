CREATE TABLE user_violations (
violation_id INT(11) AUTO_INCREMENT PRIMARY KEY,
violationCharge INT(11) NOT NULL,
violationDescription VARCHAR(150) NOT NULL
);

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