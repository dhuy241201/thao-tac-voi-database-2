EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

ALTER TABLE customers
ADD INDEX idx_customerName (customerName);

DELIMITER //
CREATE PROCEDURE findAllCustomer()
BEGIN
   SELECT * FROM customers;
END //
DELIMITER ;

CALL findAllCustomer();

DROP PROCEDURE findAllCustomer;

DELIMITER //
CREATE PROCEDURE findAllCustomer()
BEGIN
    SELECT * FROM customers WHERE customerNumber = 175;
END//
DELIMITER ;


DELIMITER //
CREATE PROCEDURE findCusById (IN cusNum INT(10))
BEGIN
    SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ;

CALL findCusById(124);

SELECT * FROM customers;

CREATE VIEW customer_view AS
    SELECT customerNumber, customerName, phone
FROM customers;

SELECT * FROM customer_view;

CREATE OR REPLACE VIEW customer_view AS

SELECT customerNumber, customerName, contactFirstName, contactLastName, phone

FROM customers

WHERE city = 'Nantes';
