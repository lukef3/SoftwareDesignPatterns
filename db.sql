DROP TABLE RentalItems;
DROP TABLE Rentals;
DROP TABLE Customers;
DROP TABLE Tools;
DROP TABLE Rates;

CREATE TABLE Rates
(CategoryCode char(2) NOT NULL,
CategoryDesc varchar2(20) NOT NULL,
Rate numeric (5,2) NOT NULL,
CONSTRAINT pk_Rates PRIMARY KEY (CategoryCode));
 
CREATE TABLE Tools
(ToolID numeric(4) NOT NULL,
CategoryCode char(2) NOT NULL,
ToolDescription varchar(50) NOT NULL,
ToolManufacturer varchar(50) NOT NULL,
ToolStatus char(1) NOT NULL,
CONSTRAINT pk_Tools PRIMARY KEY (ToolID),
CONSTRAINT fk_Tools FOREIGN KEY (CategoryCode) REFERENCES Rates);
 
CREATE TABLE Customers
(CustomerID numeric(4) NOT NULL,
Forename varchar(40) NOT NULL,
Surname varchar(40) NOT NULL,
Email varchar(300) NOT NULL,
Phone varchar(15) NOT NULL,
Eircode char(7) NOT NULL,
CONSTRAINT pk_Customers PRIMARY KEY (CustomerID));
 
CREATE TABLE Rentals
(RentalID numeric(4) NOT NULL,
CustomerID numeric(4) NOT NULL,
TransactionDate date NOT NULL,
TotalFee numeric(7,2) NOT NULL,
CONSTRAINT pk_Rentals PRIMARY KEY (RentalID),
CONSTRAINT fk_Rentals FOREIGN KEY (CustomerID) REFERENCES Customers);
 
CREATE TABLE RentalItems
(RentalID numeric(5) NOT NULL,
ToolID numeric(4) NOT NULL,
RentDate date NOT NULL,
ReturnDate date NOT NULL,
RentalFee numeric(9,2) NOT NULL,
CONSTRAINT pk_RentalItems PRIMARY KEY (RentalID, ToolID),
CONSTRAINT fk_Rentals_RentalID FOREIGN KEY (RentalID) REFERENCES Rentals,
CONSTRAINT fk_Rentals_ToolID FOREIGN KEY (ToolID) REFERENCES Tools);
 
INSERT INTO Rates VALUES('PD', 'Power Drill', 15);
INSERT INTO Rates VALUES('FS', 'Floor Saw', 20);
INSERT INTO Rates VALUES('BL', 'Boom Lift', 30);
INSERT INTO Rates VALUES('CM', 'Concrete Mixer', 25);
INSERT INTO Rates VALUES('CP', 'Compactor Plate', 35);
INSERT INTO Rates VALUES('SG', 'Stump Grinder', 40);
INSERT INTO Rates VALUES('CH', 'Chainsaw', 25);
INSERT INTO Rates VALUES('SC', 'Scaffolding', 50);
INSERT INTO Rates VALUES('EX', 'Excavator', 100);
 
INSERT INTO Tools VALUES(1, 'PD', 'Power Drill', 'DeWalt', 'I');
INSERT INTO Tools VALUES(2, 'FS', 'Floor Saw', 'DeWalt', 'I');
INSERT INTO Tools VALUES(3, 'BL', 'Boom Lift', 'Genie', 'I');
INSERT INTO Tools VALUES(4, 'CM', 'Concrete Mixer', 'Multiquip', 'I');
INSERT INTO Tools VALUES(5, 'CP', 'Compactor Plate', 'Wacker Neuson', 'I');
INSERT INTO Tools VALUES(6, 'PD', 'Power Drill', 'Makita', 'I');
INSERT INTO Tools VALUES(7, 'FS', 'Floor Saw', 'Husqvarna', 'I');
INSERT INTO Tools VALUES(8, 'BL', 'Boom Lift', 'JLG', 'I');
INSERT INTO Tools VALUES(9, 'CP', 'Compactor Plate', 'Bomag', 'I');
INSERT INTO Tools VALUES(10, 'CM', 'Concrete Mixer', 'Stone', 'I');
INSERT INTO Tools VALUES(11, 'SG', 'Stump Grinder', 'Vermeer', 'I');
INSERT INTO Tools VALUES(12, 'CH', 'Chainsaw', 'Stihl', 'I');
INSERT INTO Tools VALUES(13, 'SC', 'Scaffolding', 'Lynn', 'I');
INSERT INTO Tools VALUES(14, 'EX', 'Excavator', 'Caterpillar', 'I');

INSERT INTO Customers VALUES (1, 'John', 'Joe', 'john.doe@email.com', '5551234', 'D01AB23');
INSERT INTO Customers VALUES (2, 'Jane', 'Smith', 'jane.smith@email.com', '5555678', 'D02CD45');
INSERT INTO Customers VALUES (3, 'Michael', 'Johnson', 'michael.johnson@email.com', '5559101', 'D03EF67');
INSERT INTO Customers VALUES (4, 'Emily', 'Wang', 'emily.wang@email.com', '5551212', 'D04GH89');
INSERT INTO Customers VALUES (5, 'David', 'Lee', 'david.lee@email.com', '5553434', 'D05IJ01');
  
INSERT INTO Rentals VALUES(1, 1, '21-JAN-23', 250);
INSERT INTO RentalItems VALUES(1, 1, '21-JAN-23', '24-JAN-23', 250);

INSERT INTO Rentals VALUES(2, 2, '01-FEB-23', 400);
INSERT INTO RentalItems VALUES(2, 5, '01-FEB-23', '05-FEB-23', 400);

INSERT INTO Rentals VALUES(3, 3, '15-MAR-23', 750);
INSERT INTO RentalItems VALUES(3, 8, '15-MAR-23', '22-MAR-23', 750);

INSERT INTO Rentals VALUES(4, 4, '10-APR-23', 300);
INSERT INTO RentalItems VALUES(4, 13, '10-APR-23', '13-APR-23', 300);

INSERT INTO Rentals VALUES(5, 5, '05-MAY-23', 550);
INSERT INTO RentalItems VALUES(5, 11, '05-MAY-23', '10-MAY-23', 550);

INSERT INTO Rentals VALUES(6, 1, '20-JUN-23', 150);
INSERT INTO RentalItems VALUES(6, 6, '20-JUN-23', '22-JUN-23', 150);

INSERT INTO Rentals VALUES(7, 3, '01-JUL-23', 900);
INSERT INTO RentalItems VALUES(7, 9, '01-JUL-23', '10-JUL-23', 900);

INSERT INTO Rentals VALUES(8, 2, '15-AUG-23', 350);
INSERT INTO RentalItems VALUES(8, 7, '15-AUG-23', '20-AUG-23', 350);

INSERT INTO Rentals VALUES(9, 4, '05-SEP-23', 500);
INSERT INTO RentalItems VALUES(9, 10, '05-SEP-23', '10-SEP-23', 500);

INSERT INTO Rentals VALUES(10, 5, '10-OCT-23', 600);
INSERT INTO RentalItems VALUES(10, 12, '10-OCT-23', '15-OCT-23', 600);

INSERT INTO Rentals VALUES(11, 1, '25-NOV-23', 200);
INSERT INTO RentalItems VALUES(11, 2, '25-NOV-23', '27-NOV-23', 250);


  
COMMIT;


/*Testing Queries*/

SELECT * FROM Tools WHERE CategoryCode = 'BL' AND ToolID NOT IN (SELECT ToolID FROM RentalItems WHERE RentDate <= '21-JAN-23' AND ReturnDate >= '22-JAN-23');
 
SELECT to_Char(TransactionDate,'Mon') AS MONTH, SUM(TotalFee) AS TOTAL
FROM Rentals
WHERE TransactionDate LIKE '%23'
GROUP BY to_Char(TransactionDate,'Mon'), to_Char(TransactionDate,'MM')
ORDER BY to_Char(TransactionDate,'MM');

SELECT to_Char(TransactionDate,'MM') , SUM(TotalFee) FROM Rentals GROUP BY to_Char(TransactionDate, 'MM') ORDER BY to_Char(TransactionDate, 'MM');

SELECT TO_CHAR(TransactionDate, 'MM') AS Month, COUNT(*) AS NumRentals FROM Rentals
JOIN RentalItems ON Rentals.RentalID = RentalItems.RentalID
JOIN Tools ON RentalItems.ToolID = Tools.ToolID
WHERE TransactionDate LIKE '%23' AND Tools.CategoryCode = 'PD'
GROUP BY TO_CHAR(TransactionDate, 'MM')
ORDER BY Month