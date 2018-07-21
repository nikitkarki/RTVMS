CREATE TABLE driver_violations (
v_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
ticket_number INT(11) NOT NULL,
violation_id INT(11) NOT NULL,
FOREIGN KEY (ticket_number) REFERENCES user_ticket(ticketNumber),
FOREIGN KEY (violation_id) REFERENCES user_violations(violation_id)
);