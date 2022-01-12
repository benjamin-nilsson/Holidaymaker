--
-- File generated with SQLiteStudio v3.3.3 on ons jan 12 14:55:33 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Bookings
DROP TABLE IF EXISTS Bookings;

CREATE TABLE Bookings (
    BookingID     INTEGER     PRIMARY KEY
                              NOT NULL,
    CustomerID    INTEGER (6) NOT NULL
                              REFERENCES Customers (CustomerID),
    RoomID        INTEGER (5) NOT NULL
                              REFERENCES Rooms (RoomID),
    MealPackageID INTEGER (3) REFERENCES MealPackages (MealPackageID) 
                              NOT NULL,
    CheckInDate   DATE        NOT NULL,
    CheckOutDate  DATE        NOT NULL,
    ExtraBed      INTEGER (2),
    TotalPrice    INTEGER (6) NOT NULL
);

INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (2, 2, 2, 3, '2022-02-01', '2022-02-04', 1, 575);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (4, 4, 4, 3, '2022-04-09', '2022-04-17', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (5, 5, 5, 2, '2022-05-08', '2022-05-14', 1, 505);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (6, 6, 6, 1, '2022-08-08', '2022-08-18', 0, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (8, 8, 8, 1, '2022-08-13', '2022-08-18', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (9, 9, 9, 2, '2022-12-26', '2022-12-30', 0, 630);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (10, 10, 10, 1, '2022-12-24', '2022-12-29', 1, 275);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (11, 11, 11, 3, '2022-08-10', '2022-08-19', 1, 525);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (12, 12, 12, 2, '2022-03-08', '2022-03-14', 0, 730);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (13, 13, 13, 1, '2022-01-27', '2022-02-03', 1, 175);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (14, 14, 14, 2, '2022-02-16', '2022-02-22', 0, 430);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (15, 15, 15, 3, '2022-12-03', '2022-12-08', 0, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (16, 16, 16, 1, '2022-05-05', '2022-05-14', 1, 275);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (17, 17, 17, 3, '2022-10-07', '2022-10-15', 1, 575);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (18, 18, 18, 2, '2022-08-16', '2022-08-19', 1, 555);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (19, 19, 19, 1, '2022-05-07', '2022-05-13', 0, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (20, 20, 20, 2, '2022-10-07', '2022-10-12', 0, 480);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (21, 21, 21, 3, '2022-02-27', '2022-03-03', 1, 725);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (22, 22, 22, 3, '2022-04-09', '2022-04-19', 1, 375);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (23, 23, 23, 2, '2022-02-24', '2022-03-01', 0, 330);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (24, 24, 24, 1, '2022-08-24', '2022-09-02', 1, 625);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (25, 25, 25, 2, '2022-10-01', '2022-10-04', 1, 305);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (26, 26, 26, 3, '2022-08-11', '2022-08-15', 1, 525);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (28, 28, 28, 2, '2022-12-27', '2023-01-05', 0, 180);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (30, 30, 30, 3, '2022-10-26', '2022-10-28', 0, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (31, 31, 31, 2, '2022-10-07', '2022-10-08', 0, 280);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (32, 32, 32, 3, '2022-01-20', '2022-01-21', 1, 575);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (33, 33, 33, 1, '2022-09-01', '2022-09-01', 1, 525);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (34, 34, 34, 3, '2022-11-22', '2022-11-28', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (36, 36, 36, 1, '2022-04-23', '2022-04-25', 1, 675);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (37, 37, 37, 3, '2022-01-30', '2022-02-04', 1, 375);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (39, 39, 39, 1, '2022-03-11', '2022-03-19', 0, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (40, 40, 40, 1, '2022-05-04', '2022-05-10', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (41, 41, 41, 2, '2022-10-03', '2022-10-06', 0, 480);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (42, 42, 42, 3, '2022-10-04', '2022-10-13', 0, 750);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (43, 43, 43, 1, '2022-08-18', '2022-08-21', 1, 175);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (44, 44, 44, 3, '2022-11-01', '2022-11-01', 0, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (45, 45, 45, 2, '2022-11-29', '2022-12-03', 0, 680);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (46, 46, 46, 1, '2022-01-14', '2022-01-21', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (47, 47, 47, 2, '2022-08-01', '2022-08-11', 1, 555);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (48, 48, 48, 3, '2022-04-07', '2022-04-11', 0, 550);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (49, 49, 49, 1, '2022-11-08', '2022-11-16', 1, 225);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (50, 50, 50, 3, '2022-04-11', '2022-04-18', 1, 525);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (51, 51, 51, 2, '2021-12-31', '2022-01-10', 0, 680);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (52, 52, 52, 1, '2022-02-09', '2022-02-12', 1, 325);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (53, 53, 53, 2, '2022-11-09', '2022-11-13', 1, 355);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (54, 54, 54, 3, '2022-10-27', '2022-10-31', 1, 675);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (56, 56, 56, 1, '2022-01-27', '2022-02-06', 1, 475);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (57, 57, 57, 2, '2022-11-30', '2022-12-09', 1, 755);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (59, 59, 59, 1, '2022-12-19', '2022-12-23', 1, 425);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (60, 60, 60, 2, '2022-03-18', '2022-03-27', 0, 680);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (61, 61, 61, 3, '2022-10-14', '2022-10-19', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (62, 62, 62, 2, '2022-11-05', '2022-11-08', 1, 555);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (63, 63, 63, 1, '2022-10-23', '2022-10-26', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (65, 65, 65, 3, '2022-04-11', '2022-04-20', 1, 525);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (66, 66, 66, 2, '2022-09-03', '2022-09-10', 1, 705);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (68, 68, 68, 3, '2022-11-16', '2022-11-24', 1, 375);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (69, 69, 69, 1, '2022-08-01', '2022-08-02', 0, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (70, 70, 70, 1, '2022-04-28', '2022-05-08', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (71, 71, 71, 2, '2022-08-15', '2022-08-21', 1, 505);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (72, 72, 72, 3, '2022-04-20', '2022-04-27', 0, 750);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (73, 73, 73, 2, '2022-03-02', '2022-03-03', 1, 205);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (74, 74, 74, 1, '2022-05-05', '2022-05-10', 0, 400);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (75, 75, 75, 3, '2022-11-13', '2022-11-21', 1, 725);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (77, 77, 77, 1, '2022-01-20', '2022-01-29', 1, 525);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (78, 78, 78, 2, '2022-01-22', '2022-01-29', 1, 555);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (79, 79, 79, 2, '2022-05-31', '2022-06-09', 1, 255);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (80, 80, 80, 3, '2022-10-29', '2022-11-06', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (82, 82, 82, 3, '2022-12-13', '2022-12-14', 1, 375);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (84, 84, 84, 1, '2022-04-12', '2022-04-17', 1, 625);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (85, 85, 85, 3, '2022-04-01', '2022-04-07', 1, 325);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (86, 86, 86, 2, '2022-03-11', '2022-03-20', 1, 505);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (87, 87, 87, 1, '2022-05-31', '2022-05-31', 1, 725);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (89, 89, 89, 3, '2022-01-11', '2022-01-13', 1, 475);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (90, 90, 90, 1, '2022-12-04', '2022-12-13', 0, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (91, 91, 91, 2, '2022-10-11', '2022-10-15', 1, 305);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (92, 92, 92, 3, '2022-02-27', '2022-02-27', 1, 575);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (93, 93, 93, 1, '2022-10-14', '2022-10-23', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (94, 94, 94, 2, '2022-01-10', '2022-01-13', 1, 255);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (95, 95, 95, 3, '2022-11-05', '2022-11-11', 1, 525);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (96, 96, 96, 1, '2022-02-18', '2022-02-19', 1, 675);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (97, 97, 97, 3, '2022-02-06', '2022-02-16', 0, 350);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (98, 98, 98, 2, '2022-01-01', '2022-01-03', 1, 355);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (99, 99, 99, 1, '2022-11-05', '2022-11-12', 0, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (100, 100, 100, 2, '2022-09-06', '2022-09-12', 0, 280);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (101, 101, 101, 1, '2022-10-10', '2022-10-14', 0, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (102, 102, 102, 3, '2022-01-16', '2022-01-21', 1, 775);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (103, 103, 103, 3, '2022-09-25', '2022-10-03', 1, 225);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (104, 104, 104, 1, '2022-02-15', '2022-02-24', 1, 425);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (105, 105, 105, 2, '2022-05-13', '2022-05-22', 1, 705);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (108, 108, 108, 2, '2022-01-19', '2022-01-22', 0, 530);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (109, 109, 109, 2, '2022-01-28', '2022-02-02', 0, 230);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (110, 110, 110, 1, '2022-05-12', '2022-05-17', 0, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (111, 111, 111, 3, '2022-02-13', '2022-02-19', 1, 725);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (112, 112, 112, 3, '2022-02-17', '2022-02-20', 1, 375);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (113, 113, 113, 1, '2022-12-21', '2022-12-28', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (114, 114, 114, 2, '2022-04-11', '2022-04-12', 1, 655);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (115, 115, 115, 2, '2022-11-15', '2022-11-24', 0, 280);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (116, 116, 116, 3, '2022-04-25', '2022-04-30', 1, 525);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (117, 117, 117, 1, '2022-03-09', '2022-03-10', 1, 725);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (118, 118, 118, 3, '2022-03-10', '2022-03-11', 0, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (119, 119, 119, 2, '2022-01-08', '2022-01-17', 1, 455);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (120, 120, 120, 1, '2022-03-28', '2022-03-30', 1, 675);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (121, 121, 121, 2, '2022-01-07', '2022-01-12', 0, 280);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (122, 122, 122, 1, '2022-12-05', '2022-12-08', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (124, 124, 124, 3, '2022-08-18', '2022-08-21', 1, 275);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (125, 125, 125, 1, '2022-03-27', '2022-04-02', 0, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (126, 126, 126, 2, '2022-05-26', '2022-05-29', 1, 705);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (127, 127, 127, 3, '2022-12-16', '2022-12-20', 0, 350);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (128, 128, 128, 1, '2022-03-20', '2022-03-24', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (130, 130, 130, 1, '2022-12-20', '2022-12-27', 1, 275);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (131, 131, 131, 2, '2022-01-07', '2022-01-07', 1, 505);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (133, 133, 133, 2, '2022-11-13', '2022-11-13', 1, 205);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (134, 134, 134, 3, '2022-08-09', '2022-08-13', 1, 475);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (135, 135, 135, 1, '2022-04-21', '2022-04-22', 1, 675);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (136, 136, 136, 2, '2022-03-11', '2022-03-18', 0, 280);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (138, 138, 138, 1, '2022-03-16', '2022-03-23', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (139, 139, 139, 1, '2022-11-20', '2022-11-24', 1, 225);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (140, 140, 140, 2, '2022-11-29', '2022-12-03', 1, 505);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (141, 141, 141, 3, '2022-12-09', '2022-12-18', 0, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (142, 142, 142, 3, '2022-03-29', '2022-04-04', 0, 350);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (143, 143, 143, 2, '2022-01-09', '2022-01-14', 1, 355);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (144, 144, 144, 1, '2022-03-22', '2022-03-23', 0, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (145, 145, 145, 1, '2022-05-24', '2022-05-29', 1, 275);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (146, 146, 146, 2, '2022-10-02', '2022-10-06', 0, 480);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (147, 147, 147, 3, '2022-10-17', '2022-10-20', 1, 775);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (148, 148, 148, 1, '2022-08-21', '2022-08-25', 0, 150);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (149, 149, 149, 2, '2022-12-24', '2022-12-31', 0, 430);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (150, 150, 150, 3, '2022-09-13', '2022-09-17', 0, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (151, 1, 5, 2, '2022-01-01', '2022-01-10', 1, 565);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (152, 1, 1, 1, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (153, 2, 2, 2, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (154, 3, 3, 3, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (155, 4, 4, 1, '2022-06-01', '2022-06-07', 0, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (156, 5, 5, 3, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (157, 6, 6, 2, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (158, 7, 7, 2, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (159, 8, 8, 1, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (160, 9, 9, 3, '2022-06-01', '2022-06-07', 0, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (161, 10, 10, 1, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (162, 11, 11, 3, '2022-06-01', '2022-06-07', 0, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (163, 12, 12, 2, '2022-06-01', '2022-06-07', 1, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (164, 13, 13, 3, '2022-06-01', '2022-06-07', 1, 150);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (165, 14, 14, 1, '2022-06-01', '2022-06-07', 1, 400);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (166, 15, 15, 2, '2022-06-01', '2022-06-07', 0, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (167, 16, 16, 1, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (168, 17, 17, 2, '2022-06-01', '2022-06-07', 1, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (169, 18, 18, 3, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (170, 19, 19, 2, '2022-06-01', '2022-06-07', 1, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (171, 20, 20, 1, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (172, 21, 21, 3, '2022-06-01', '2022-06-07', 0, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (173, 22, 22, 3, '2022-06-01', '2022-06-07', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (174, 23, 23, 1, '2022-06-01', '2022-06-07', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (175, 24, 24, 2, '2022-06-01', '2022-06-07', 0, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (176, 25, 25, 3, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (177, 26, 26, 2, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (178, 27, 27, 1, '2022-06-01', '2022-06-07', 1, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (179, 28, 28, 3, '2022-06-01', '2022-06-07', 1, 150);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (180, 29, 29, 1, '2022-06-01', '2022-06-07', 1, 400);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (181, 30, 30, 2, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (182, 31, 31, 3, '2022-06-01', '2022-06-07', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (183, 32, 32, 1, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (184, 33, 33, 2, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (185, 34, 34, 3, '2022-06-01', '2022-06-07', 1, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (186, 35, 35, 1, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (187, 36, 36, 2, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (188, 37, 37, 3, '2022-06-01', '2022-06-07', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (189, 38, 38, 1, '2022-06-01', '2022-06-07', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (190, 39, 39, 2, '2022-06-01', '2022-06-07', 1, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (191, 40, 40, 3, '2022-06-01', '2022-06-07', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (192, 41, 41, 2, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (193, 42, 42, 1, '2022-06-01', '2022-06-07', 0, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (194, 43, 43, 1, '2022-06-01', '2022-06-07', 1, 150);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (195, 44, 44, 3, '2022-06-01', '2022-06-07', 0, 400);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (196, 45, 45, 2, '2022-06-01', '2022-06-07', 0, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (197, 46, 46, 2, '2022-06-01', '2022-06-07', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (198, 47, 47, 3, '2022-06-01', '2022-06-07', 1, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (199, 48, 48, 1, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (200, 49, 49, 2, '2022-06-01', '2022-06-07', 0, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (201, 50, 50, 1, '2022-06-01', '2022-06-07', 0, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (202, 51, 51, 3, '2022-06-01', '2022-06-07', 0, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (203, 52, 52, 2, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (204, 53, 53, 3, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (205, 54, 54, 1, '2022-06-01', '2022-06-07', 0, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (206, 55, 55, 2, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (207, 56, 56, 3, '2022-06-01', '2022-06-07', 0, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (208, 57, 57, 1, '2022-06-01', '2022-06-07', 1, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (209, 58, 58, 2, '2022-06-01', '2022-06-07', 0, 150);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (210, 59, 59, 1, '2022-06-01', '2022-06-07', 1, 400);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (211, 60, 60, 3, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (212, 61, 61, 3, '2022-06-01', '2022-06-07', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (213, 62, 62, 2, '2022-06-01', '2022-06-07', 1, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (214, 63, 63, 1, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (215, 64, 64, 1, '2022-06-01', '2022-06-07', 1, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (216, 65, 65, 3, '2022-06-01', '2022-06-07', 0, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (217, 66, 66, 2, '2022-06-01', '2022-06-07', 0, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (218, 67, 67, 2, '2022-06-01', '2022-06-07', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (219, 68, 68, 1, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (220, 69, 69, 3, '2022-06-01', '2022-06-07', 1, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (221, 70, 70, 2, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (222, 71, 71, 3, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (223, 72, 72, 1, '2022-06-01', '2022-06-07', 1, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (224, 73, 73, 2, '2022-06-01', '2022-06-07', 0, 150);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (225, 74, 74, 1, '2022-06-01', '2022-06-07', 1, 400);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (226, 75, 75, 3, '2022-06-01', '2022-06-07', 0, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (227, 76, 76, 2, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (228, 77, 77, 3, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (229, 78, 78, 1, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (230, 79, 79, 2, '2022-06-01', '2022-06-07', 1, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (231, 80, 80, 1, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (232, 81, 81, 3, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (233, 82, 82, 2, '2022-06-01', '2022-06-07', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (234, 83, 83, 1, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (235, 84, 84, 3, '2022-06-01', '2022-06-07', 0, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (236, 85, 85, 2, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (237, 86, 86, 1, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (238, 87, 87, 3, '2022-06-01', '2022-06-07', 1, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (239, 88, 88, 2, '2022-06-01', '2022-06-07', 0, 150);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (240, 89, 89, 1, '2022-06-01', '2022-06-07', 0, 400);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (241, 90, 90, 3, '2022-06-01', '2022-06-07', 0, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (242, 91, 91, 2, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (243, 92, 92, 1, '2022-06-01', '2022-06-07', 1, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (244, 93, 93, 3, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (245, 94, 94, 2, '2022-06-01', '2022-06-07', 0, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (246, 95, 95, 3, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (247, 96, 96, 1, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (248, 97, 97, 2, '2022-06-01', '2022-06-07', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (249, 98, 98, 3, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (250, 99, 99, 1, '2022-06-01', '2022-06-07', 0, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (251, 100, 100, 1, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (252, 101, 101, 3, '2022-06-01', '2022-06-07', 0, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (253, 102, 102, 2, '2022-06-01', '2022-06-07', 0, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (254, 103, 103, 2, '2022-06-01', '2022-06-07', 0, 150);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (255, 104, 104, 3, '2022-06-01', '2022-06-07', 0, 400);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (256, 105, 105, 1, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (257, 106, 106, 2, '2022-06-01', '2022-06-07', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (258, 107, 107, 1, '2022-06-01', '2022-06-07', 1, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (259, 108, 108, 3, '2022-06-01', '2022-06-07', 1, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (260, 109, 109, 1, '2022-06-01', '2022-06-07', 1, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (261, 110, 110, 3, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (262, 111, 111, 2, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (263, 112, 112, 1, '2022-06-01', '2022-06-07', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (264, 113, 113, 2, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (265, 114, 114, 3, '2022-06-01', '2022-06-07', 1, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (266, 115, 115, 2, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (267, 116, 116, 1, '2022-06-01', '2022-06-07', 0, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (268, 117, 117, 3, '2022-06-01', '2022-06-07', 1, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (269, 118, 118, 2, '2022-06-01', '2022-06-07', 0, 150);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (270, 119, 119, 3, '2022-06-01', '2022-06-07', 1, 400);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (271, 120, 120, 1, '2022-06-01', '2022-06-07', 0, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (272, 121, 121, 2, '2022-06-01', '2022-06-07', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (273, 122, 122, 3, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (274, 123, 123, 1, '2022-06-01', '2022-06-07', 1, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (275, 124, 124, 3, '2022-06-01', '2022-06-07', 1, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (276, 125, 125, 1, '2022-06-01', '2022-06-07', 0, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (277, 126, 126, 2, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (278, 127, 127, 2, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (279, 128, 128, 3, '2022-06-01', '2022-06-07', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (280, 129, 129, 1, '2022-06-01', '2022-06-07', 1, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (281, 130, 130, 3, '2022-06-01', '2022-06-07', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (282, 131, 131, 2, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (283, 132, 132, 1, '2022-06-01', '2022-06-07', 1, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (284, 133, 133, 3, '2022-06-01', '2022-06-07', 0, 150);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (285, 134, 134, 1, '2022-06-01', '2022-06-07', 1, 400);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (286, 135, 135, 2, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (287, 136, 136, 2, '2022-06-01', '2022-06-07', 0, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (288, 137, 137, 3, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (289, 138, 138, 1, '2022-06-01', '2022-06-07', 1, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (290, 139, 139, 3, '2022-06-01', '2022-06-07', 1, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (291, 140, 140, 1, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (292, 141, 141, 2, '2022-06-01', '2022-06-07', 0, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (293, 142, 142, 2, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (294, 143, 143, 3, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (295, 144, 144, 1, '2022-06-01', '2022-06-07', 0, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (296, 145, 145, 1, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (297, 146, 146, 3, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (298, 147, 147, 2, '2022-06-01', '2022-06-07', 1, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (299, 148, 148, 3, '2022-06-01', '2022-06-07', 1, 150);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (300, 149, 149, 2, '2022-06-01', '2022-06-07', 1, 400);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (301, 150, 150, 1, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (302, 1, 151, 3, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (303, 2, 152, 2, '2022-06-01', '2022-06-07', 0, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (304, 3, 153, 1, '2022-06-01', '2022-06-07', 1, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (305, 4, 154, 2, '2022-06-01', '2022-06-07', 1, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (306, 5, 155, 3, '2022-06-01', '2022-06-07', 0, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (307, 6, 156, 1, '2022-06-01', '2022-06-07', 0, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (308, 7, 157, 1, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (309, 8, 158, 2, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (310, 9, 159, 3, '2022-06-01', '2022-06-07', 0, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (311, 10, 160, 3, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (312, 11, 161, 2, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (313, 12, 162, 1, '2022-06-01', '2022-06-07', 1, 700);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (314, 13, 163, 2, '2022-06-01', '2022-06-07', 1, 150);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (315, 14, 164, 1, '2022-06-01', '2022-06-07', 0, 400);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (316, 15, 165, 3, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (317, 16, 166, 2, '2022-06-01', '2022-06-07', 1, 250);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (318, 17, 167, 1, '2022-06-01', '2022-06-07', 1, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (319, 18, 168, 3, '2022-06-01', '2022-06-07', 1, 500);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (320, 19, 169, 1, '2022-06-01', '2022-06-07', 1, 200);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (321, 20, 170, 2, '2022-06-01', '2022-06-07', 1, 450);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (322, 21, 171, 3, '2022-06-01', '2022-06-07', 1, 650);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (323, 22, 172, 3, '2022-06-01', '2022-06-07', 0, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (324, 23, 173, 2, '2022-06-01', '2022-06-07', 1, 300);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (325, 24, 174, 1, '2022-06-01', '2022-06-07', 1, 600);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (328, 25, 175, 2, '2022-06-01', '2022-06-07', 1, 1705);
INSERT INTO Bookings (BookingID, CustomerID, RoomID, MealPackageID, CheckInDate, CheckOutDate, ExtraBed, TotalPrice) VALUES (329, 151, 165, 3, '2022-03-22', '2022-03-25', 1, 2125);

-- Table: Cities
DROP TABLE IF EXISTS Cities;

CREATE TABLE Cities (
    CityID    INTEGER      PRIMARY KEY
                           NOT NULL,
    CountryID INTEGER (3)  REFERENCES Country (CountryID) 
                           NOT NULL,
    CityName  VARCHAR (45) NOT NULL
);

INSERT INTO Cities (CityID, CountryID, CityName) VALUES (1, 1, 'Dubai');
INSERT INTO Cities (CityID, CountryID, CityName) VALUES (2, 2, 'Gothenburg');
INSERT INTO Cities (CityID, CountryID, CityName) VALUES (3, 3, 'Tokyo');

-- Table: Companies
DROP TABLE IF EXISTS Companies;

CREATE TABLE Companies (
    CompanyID  INTEGER       PRIMARY KEY
                             NOT NULL,
    CustomerID VARCHAR (5)   REFERENCES Customers (CustomerID) 
                             NOT NULL,
    FullName   VARCHAR (50)  NOT NULL,
    Email      VARCHAR (255),
    Phone      VARCHAR (50)  NOT NULL,
    Birthdate  DATE          NOT NULL
);

INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (1, '99', 'Talya Craney', 'tcraney0@diigo.com', '948-218-7137', '2001-06-23');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (2, '103', 'Edd Attwater', 'eattwater1@moonfruit.com', '637-179-2157', '1982-12-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (3, '143', 'Kory Pendleberry', 'kpendleberry2@skype.com', '899-369-2303', '1974-11-24');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (4, '111', 'Jordan Woolhouse', 'jwoolhouse3@spiegel.de', '305-632-1956', '1995-05-26');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (5, '44', 'Elle Comi', 'ecomi4@squidoo.com', '642-985-8697', '1982-01-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (6, '62', 'Ursulina Flemmich', 'uflemmich5@nasa.gov', '607-741-7001', '1976-02-15');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (7, '65', 'Leslie Swaffer', 'lswaffer6@360.cn', '233-133-6459', '1985-05-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (8, '68', 'Onida Formilli', 'oformilli7@sfgate.com', '347-394-3811', '1971-07-12');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (9, '64', 'Audry Lindegard', 'alindegard8@un.org', '169-482-7550', '1993-04-01');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (10, '14', 'Colver Abramowitz', 'cabramowitz9@elegantthemes.com', '139-997-5394', '1990-01-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (11, '106', 'Heddi Heugle', 'hheuglea@twitter.com', '847-651-9551', '1980-01-31');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (12, '55', 'Dannie Farnfield', 'dfarnfieldb@devhub.com', '223-956-2118', '1972-12-21');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (13, '4', 'Olenka Engelmann', 'oengelmannc@who.int', '237-550-2709', '1974-09-05');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (14, '41', 'Elmira Bridgland', 'ebridglandd@unblog.fr', '446-739-1612', '1992-11-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (15, '128', 'Leeland Leathe', 'lleathee@unc.edu', '148-795-1274', '1971-12-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (16, '38', 'Robenia Rivalland', 'rrivallandf@plala.or.jp', '287-922-2527', '1989-05-27');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (17, '121', 'Rodolphe Reitenbach', 'rreitenbachg@blog.com', '363-314-8665', '2000-01-02');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (18, '136', 'Beth Gooderridge', 'bgooderridgeh@tinyurl.com', '876-595-2315', '1997-10-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (19, '134', 'Ashton Childes', 'achildesi@sogou.com', '529-563-3924', '1973-12-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (20, '48', 'Matti Durnill', 'mdurnillj@booking.com', '734-963-4208', '1977-11-21');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (21, '59', 'Bar Altree', 'baltreek@elegantthemes.com', '445-387-2700', '2000-10-03');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (22, '91', 'Loni Grzegorczyk', 'lgrzegorczykl@sbwire.com', '683-338-7384', '1993-02-11');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (23, '75', 'Sherwood Nolot', 'snolotm@webmd.com', '272-605-2533', '1978-02-14');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (24, '107', 'Petey Mullen', 'pmullenn@networksolutions.com', '671-658-6522', '1976-10-03');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (25, '94', 'Kiersten Vivian', 'kviviano@tmall.com', '138-169-0795', '1989-10-24');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (26, '82', 'Courtenay McCall', 'cmccallp@wiley.com', '656-524-4782', '1993-04-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (27, '120', 'Rasia Kiessel', 'rkiesselq@cafepress.com', '861-435-4308', '1987-04-21');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (28, '1', 'Reginald Sheehy', 'rsheehyr@icio.us', '721-810-3186', '1983-02-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (29, '88', 'Berkly Wickrath', 'bwickraths@so-net.ne.jp', '317-735-2763', '1994-09-18');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (30, '77', 'Ellary Rosenhaus', 'erosenhaust@guardian.co.uk', '499-579-5322', '1991-05-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (31, '46', 'Jourdain Cardenosa', 'jcardenosau@edublogs.org', '325-350-1736', '1988-12-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (32, '49', 'Hedvig Barbrook', 'hbarbrookv@mozilla.org', '167-469-5575', '1971-11-07');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (33, '148', 'Kimbell Aggus', 'kaggusw@issuu.com', '806-823-3103', '1974-02-13');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (34, '73', 'Carmella Tease', 'cteasex@oaic.gov.au', '443-156-8568', '1996-01-28');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (35, '145', 'Ammamaria Japp', 'ajappy@nih.gov', '586-885-0907', '1978-12-27');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (36, '79', 'Mathilde Felten', 'mfeltenz@w3.org', '778-732-3960', '1998-02-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (37, '40', 'Maximo Chaperlin', 'mchaperlin10@shutterfly.com', '823-914-8386', '1993-11-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (38, '61', 'Ladonna Loving', 'lloving11@state.tx.us', '823-934-6288', '2003-06-15');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (39, '66', 'Ansel Brocklebank', 'abrocklebank12@reddit.com', '228-781-5844', '1999-10-02');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (40, '140', 'Vittorio Menico', 'vmenico13@shareasale.com', '252-494-5879', '1978-10-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (41, '23', 'Chelsea Pauleau', 'cpauleau14@sogou.com', '642-975-4605', '1978-12-29');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (42, '11', 'Barbe Matignon', 'bmatignon15@people.com.cn', '561-163-0784', '1994-04-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (43, '18', 'Charline Ewles', 'cewles16@canalblog.com', '981-849-0882', '2003-04-05');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (44, '123', 'Kingston Jewess', 'kjewess17@timesonline.co.uk', '365-803-1544', '1981-01-07');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (45, '96', 'Shea Proffitt', 'sproffitt18@furl.net', '990-577-7651', '1992-11-14');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (46, '100', 'Dulsea Vinnicombe', 'dvinnicombe19@biblegateway.com', '531-729-7660', '1997-05-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (47, '12', 'Rochester McTurk', 'rmcturk1a@usnews.com', '775-126-4969', '1977-10-05');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (48, '7', 'Kris Crowdson', 'kcrowdson1b@fema.gov', '465-605-8835', '1994-07-13');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (49, '89', 'Willis Danilovich', 'wdanilovich1c@seesaa.net', '723-531-6081', '1976-10-16');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (50, '125', 'Kermie Allcroft', 'kallcroft1d@ucoz.com', '272-398-6534', '2001-01-27');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (51, '109', 'Alyosha Cicchinelli', 'acicchinelli1e@zdnet.com', '344-793-9496', '1999-11-13');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (52, '118', 'Micaela Marquiss', 'mmarquiss1f@google.co.jp', '864-717-7866', '1992-03-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (53, '56', 'Bernette Hurkett', 'bhurkett1g@intel.com', '438-337-0602', '1979-08-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (54, '34', 'Meghan Royste', 'mroyste1h@free.fr', '933-210-1935', '1971-05-27');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (55, '67', 'Tomkin Parysowna', 'tparysowna1i@spiegel.de', '805-884-6623', '1970-11-27');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (56, '126', 'Beilul Chellingworth', 'bchellingworth1j@bloomberg.com', '208-576-0088', '1996-09-14');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (57, '36', 'Sampson Simeoni', 'ssimeoni1k@aol.com', '517-946-4398', '1995-07-12');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (58, '122', 'Joyous McKearnen', 'jmckearnen1l@jugem.jp', '261-133-0295', '1989-01-07');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (59, '26', 'Tessi Crowne', 'tcrowne1m@unc.edu', '566-672-3145', '1992-05-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (60, '110', 'Marieann Wride', 'mwride1n@thetimes.co.uk', '139-698-9327', '1996-09-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (61, '39', 'Gaston See', 'gsee1o@jiathis.com', '541-195-8422', '1990-08-21');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (62, '104', 'Ryan Vel', 'rvel1p@youku.com', '129-944-8137', '1999-12-11');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (63, '108', 'Gale McGiven', 'gmcgiven1q@freewebs.com', '860-530-0240', '1974-02-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (64, '13', 'Angil Peace', 'apeace1r@nytimes.com', '200-996-8715', '1995-03-16');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (65, '98', 'Raffarty Halliberton', 'rhalliberton1s@youtube.com', '578-380-7230', '1996-12-02');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (66, '129', 'Micky Duffer', 'mduffer1t@opensource.org', '620-807-3358', '1987-09-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (67, '90', 'Chelsey Prangnell', 'cprangnell1u@parallels.com', '467-512-1268', '1990-10-02');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (68, '45', 'Mia Vanichev', 'mvanichev1v@hhs.gov', '801-676-9505', '2003-05-05');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (69, '33', 'Aleen Pendlebery', 'apendlebery1w@altervista.org', '794-892-7106', '1979-11-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (70, '87', 'Astra Giraudou', 'agiraudou1x@nydailynews.com', '173-211-6956', '1986-09-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (71, '127', 'Prudy Krink', 'pkrink1y@wix.com', '920-643-3465', '1972-09-13');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (72, '113', 'Isahella Meindl', 'imeindl1z@friendfeed.com', '821-600-5853', '1997-03-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (73, '97', 'Clare Valsler', 'cvalsler20@patch.com', '896-360-5616', '1997-02-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (74, '135', 'Clair Chatterton', 'cchatterton21@posterous.com', '352-741-6421', '2002-01-02');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (75, '74', 'Thorsten Berzon', 'tberzon22@infoseek.co.jp', '282-148-3052', '1978-07-01');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (76, '60', 'Brigham Elcott', 'belcott23@sfgate.com', '870-678-1871', '2000-08-07');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (77, '93', 'Una Crake', 'ucrake24@scientificamerican.com', '440-994-4493', '1973-01-05');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (78, '50', 'Travis Marrow', 'tmarrow25@uol.com.br', '715-327-3848', '1985-11-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (79, '22', 'Marjory Cleghorn', 'mcleghorn26@shop-pro.jp', '244-463-3735', '1992-02-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (80, '149', 'Vito Osmund', 'vosmund27@census.gov', '171-591-9377', '1985-06-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (81, '144', 'Irene Le Surf', 'ile28@ycombinator.com', '725-703-6563', '1975-07-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (82, '17', 'Chery Kingsford', 'ckingsford29@upenn.edu', '251-385-5509', '2000-09-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (83, '35', 'Leanor Kemster', 'lkemster2a@cargocollective.com', '552-322-4662', '1973-07-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (84, '132', 'Alain Nanni', 'ananni2b@mapquest.com', '213-368-1653', '1972-06-05');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (85, '27', 'Ranique Pain', 'rpain2c@nifty.com', '265-753-5579', '1982-05-13');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (86, '72', 'Lawry Carr', 'lcarr2d@cdc.gov', '395-875-5185', '1971-09-10');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (87, '5', 'Andrey Sante', 'asante2e@mozilla.com', '663-102-7797', '2002-03-23');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (88, '95', 'Amelie Gerbel', 'agerbel2f@jimdo.com', '230-879-5164', '1982-07-03');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (89, '142', 'Massimiliano Gelder', 'mgelder2g@smugmug.com', '696-518-5266', '1991-05-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (90, '19', 'Carce Glanton', 'cglanton2h@nasa.gov', '354-780-3077', '1979-05-26');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (91, '101', 'Evania Mantrup', 'emantrup2i@webnode.com', '237-131-7756', '1995-06-03');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (92, '58', 'Bessie Creane', 'bcreane2j@posterous.com', '490-220-1280', '2002-12-12');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (93, '10', 'Blondy Dangerfield', 'bdangerfield2k@google.co.jp', '939-480-9016', '1975-08-02');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (94, '150', 'Meade Elizabeth', 'melizabeth2l@indiatimes.com', '534-375-1738', '2001-04-12');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (95, '119', 'Cale Cormack', 'ccormack2m@xinhuanet.com', '868-607-4971', '2001-11-18');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (96, '84', 'Ethelind Mulvey', 'emulvey2n@addthis.com', '764-764-6380', '1972-08-31');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (97, '42', 'Kelcey Balazin', 'kbalazin2o@hugedomains.com', '303-777-4116', '1984-01-31');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (98, '78', 'Simon Bilfoot', 'sbilfoot2p@forbes.com', '564-810-0763', '1990-10-31');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (99, '69', 'Javier Radnage', 'jradnage2q@ibm.com', '756-215-0732', '1973-08-15');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (100, '116', 'Whitney Gingles', 'wgingles2r@businessweek.com', '279-349-1037', '1973-05-03');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (101, '114', 'Betsey Bonny', 'bbonny2s@unblog.fr', '713-183-2513', '1993-04-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (102, '133', 'Arman Ivimey', 'aivimey2t@wikimedia.org', '641-340-1021', '1997-02-15');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (103, '28', 'Rhianon Gregan', 'rgregan2u@house.gov', '672-368-3561', '2001-11-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (104, '138', 'Sara Monnery', 'smonnery2v@hibu.com', '463-159-9808', '1973-12-16');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (105, '57', 'Veriee Favel', 'vfavel2w@alexa.com', '445-758-8419', '1971-06-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (106, '2', 'Caroline Doughty', 'cdoughty2x@dmoz.org', '257-162-4599', '1998-02-07');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (107, '25', 'Nari Althrope', 'nalthrope2y@surveymonkey.com', '577-611-8837', '1979-03-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (108, '54', 'Marquita Attwood', 'mattwood2z@addtoany.com', '180-806-7069', '1996-01-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (109, '16', 'Zenia Vaudin', 'zvaudin30@theglobeandmail.com', '683-438-0085', '1998-01-16');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (110, '52', 'Porter Anney', 'panney31@blogger.com', '612-595-2387', '1974-02-10');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (111, '37', 'Hilary O'' Bee', 'ho32@devhub.com', '461-876-3392', '1985-12-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (112, '32', 'Brannon Lebond', 'blebond33@canalblog.com', '552-228-7361', '2002-02-12');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (113, '20', 'Kenon Burtenshaw', 'kburtenshaw34@ycombinator.com', '722-588-5705', '2001-07-31');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (114, '86', 'Roxy Willavize', 'rwillavize35@sfgate.com', '470-333-5429', '2003-08-05');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (115, '43', 'Hendrik Kenna', 'hkenna36@boston.com', '344-387-7009', '1998-09-14');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (116, '47', 'Mona Dallaghan', 'mdallaghan37@ox.ac.uk', '339-304-1467', '1995-10-15');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (117, '70', 'Fowler Sailor', 'fsailor38@eventbrite.com', '951-675-9140', '1989-10-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (118, '51', 'Sax Gibberd', 'sgibberd39@over-blog.com', '985-984-3515', '1977-12-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (119, '21', 'Doralynne Seaman', 'dseaman3a@ed.gov', '113-425-5054', '1983-09-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (120, '76', 'Florance Kubicek', 'fkubicek3b@naver.com', '302-989-4729', '1989-04-11');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (121, '3', 'Darb Schimon', 'dschimon3c@newyorker.com', '118-382-0088', '1989-04-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (122, '112', 'Pietra Newland', 'pnewland3d@exblog.jp', '231-546-0224', '1996-02-18');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (123, '130', 'Garwin Joly', 'gjoly3e@mashable.com', '651-176-7305', '1993-02-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (124, '71', 'Ara Kevern', 'akevern3f@phoca.cz', '867-459-1474', '1988-03-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (125, '92', 'Tracey Mufford', 'tmufford3g@freewebs.com', '903-214-9149', '1972-01-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (126, '83', 'Ellwood Vivians', 'evivians3h@umn.edu', '460-664-4392', '1988-05-11');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (127, '80', 'Kaine Gothrup', 'kgothrup3i@whitehouse.gov', '271-165-9757', '1996-04-02');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (128, '24', 'Malory Nanson', 'mnanson3j@vistaprint.com', '396-353-3329', '1997-01-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (129, '8', 'Riobard Atack', 'ratack3k@reverbnation.com', '314-433-5476', '2001-11-16');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (130, '15', 'Shandeigh Shayler', 'sshayler3l@chicagotribune.com', '250-214-7392', '1990-03-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (131, '117', 'Hillard Spittall', 'hspittall3m@bbb.org', '136-663-5491', '1982-05-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (132, '29', 'Eddi Edsell', 'eedsell3n@springer.com', '349-745-9134', '1980-01-31');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (133, '147', 'Amalie Yushkov', 'ayushkov3o@live.com', '989-736-8647', '2002-05-15');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (134, '115', 'Shaun Pietsma', 'spietsma3p@pen.io', '839-309-9607', '2003-04-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (135, '9', 'Barbey Searston', 'bsearston3q@mashable.com', '167-200-5987', '1988-04-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (136, '6', 'Calv Basindale', 'cbasindale3r@ask.com', '606-425-1647', '1985-03-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (137, '131', 'Inge Harron', 'iharron3s@is.gd', '325-370-1615', '1977-08-13');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (138, '105', 'Gussy Foort', 'gfoort3t@elegantthemes.com', '289-765-3136', '1994-09-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (139, '124', 'Kristyn Kalkofer', 'kkalkofer3u@craigslist.org', '215-664-3922', '2002-09-21');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (140, '141', 'Lavinia Concannon', 'lconcannon3v@xing.com', '405-899-7658', '1970-07-03');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (141, '146', 'Agneta Madeley', 'amadeley3w@tumblr.com', '201-348-6011', '1999-12-15');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (142, '139', 'Morlee Philott', 'mphilott3x@microsoft.com', '882-531-8463', '1976-04-26');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (143, '102', 'Jermaine Skedgell', 'jskedgell3y@jalbum.net', '118-857-5941', '1988-02-12');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (144, '53', 'Emanuel Isaacson', 'eisaacson3z@vinaora.com', '768-690-0475', '1976-06-16');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (145, '8', 'Laurice Ivakhno', 'livakhno40@auda.org.au', '206-670-3878', '1990-04-21');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (146, '57', 'Willow Bridgeman', 'wbridgeman41@seattletimes.com', '872-561-6894', '1986-10-31');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (147, '4', 'Wilburt Lindbergh', 'wlindbergh42@nydailynews.com', '908-948-9396', '1986-04-13');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (148, '133', 'Eugenio Fitchen', 'efitchen43@ovh.net', '878-947-2164', '1988-11-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (149, '74', 'Gregory Smitherman', 'gsmitherman44@dailymail.co.uk', '606-655-7923', '1993-04-12');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (150, '50', 'Valeda Donovin', 'vdonovin45@apache.org', '995-973-6994', '1993-04-27');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (151, '116', 'Silvana Ellick', 'sellick46@is.gd', '439-874-2262', '1976-06-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (152, '16', 'Lesley Albany', 'lalbany47@ibm.com', '243-312-7261', '2002-08-01');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (153, '13', 'Betteanne Halliberton', 'bhalliberton48@wikispaces.com', '785-385-6022', '1981-08-05');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (154, '26', 'Grethel Clinnick', 'gclinnick49@wordpress.org', '603-521-3787', '1995-12-12');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (155, '97', 'Jacquenette Barnby', 'jbarnby4a@wikispaces.com', '115-343-8342', '1989-08-18');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (156, '150', 'Haroun Gosling', 'hgosling4b@slate.com', '530-937-2021', '1974-02-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (157, '139', 'Verla Lilion', 'vlilion4c@nps.gov', '124-100-3071', '1985-09-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (158, '22', 'Adela Peller', 'apeller4d@livejournal.com', '649-692-8039', '1980-06-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (159, '7', 'Rollo Daveley', 'rdaveley4e@foxnews.com', '875-744-5128', '1984-06-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (160, '137', 'Baxie de Quesne', 'bde4f@mozilla.com', '781-953-3698', '1980-02-27');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (161, '72', 'Seward Elphinston', 'selphinston4g@wired.com', '647-105-0760', '1978-04-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (162, '18', 'Serge Reolfo', 'sreolfo4h@google.fr', '414-851-5347', '1981-12-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (163, '41', 'Aleece Kinglesyd', 'akinglesyd4i@phoca.cz', '409-278-0634', '1997-08-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (164, '104', 'Karalee Laytham', 'klaytham4j@rakuten.co.jp', '136-860-7075', '1977-11-21');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (165, '132', 'Carena Jina', 'cjina4k@fotki.com', '924-817-3787', '1981-12-13');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (166, '106', 'Geri Longmire', 'glongmire4l@freewebs.com', '948-447-7596', '1981-11-16');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (167, '24', 'Curran Meaney', 'cmeaney4m@tmall.com', '707-223-5691', '1970-12-24');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (168, '96', 'Bonita Pennicott', 'bpennicott4n@about.me', '207-423-4220', '1981-12-28');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (169, '2', 'Myron Loughman', 'mloughman4o@princeton.edu', '502-934-7668', '1993-04-21');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (170, '46', 'Alphonso Koene', 'akoene4p@tripod.com', '237-487-1137', '1986-10-28');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (171, '79', 'Mattheus Picken', 'mpicken4q@purevolume.com', '796-604-4064', '1997-10-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (172, '43', 'Adelaida Saby', 'asaby4r@google.co.jp', '995-589-1596', '1970-07-01');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (173, '48', 'Kelsey McGriele', 'kmcgriele4s@stanford.edu', '977-130-9093', '1984-02-29');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (174, '88', 'Isobel Ferby', 'iferby4t@ft.com', '854-213-2592', '1982-11-30');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (175, '39', 'Cassandra Moodey', 'cmoodey4u@biblegateway.com', '931-881-1012', '1988-02-15');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (176, '40', 'El Robard', 'erobard4v@wsj.com', '311-918-4760', '1987-06-10');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (177, '56', 'Kerianne Regitz', 'kregitz4w@vkontakte.ru', '816-778-6313', '1987-05-29');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (178, '64', 'Nedi Marmyon', 'nmarmyon4x@ow.ly', '649-908-6891', '1978-11-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (179, '55', 'Salvador Proughten', 'sproughten4y@icq.com', '959-333-2538', '1989-06-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (180, '65', 'Rodie Glyn', 'rglyn4z@prnewswire.com', '585-961-9130', '1979-07-24');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (181, '115', 'Claresta De Carlo', 'cde50@latimes.com', '499-581-2047', '1991-06-18');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (182, '42', 'Nap Ryan', 'nryan51@mozilla.org', '424-533-8199', '1970-06-26');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (183, '84', 'Weider Wethered', 'wwethered52@51.la', '305-919-7101', '1997-04-27');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (184, '125', 'Laryssa Brounfield', 'lbrounfield53@blogtalkradio.com', '781-942-0124', '1996-03-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (185, '29', 'Margalit Crossfield', 'mcrossfield54@pen.io', '331-857-4084', '1982-01-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (186, '99', 'Kipp O''Docherty', 'kodocherty55@domainmarket.com', '795-892-6882', '1991-01-10');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (187, '134', 'Jinny Greber', 'jgreber56@yellowpages.com', '608-277-7373', '2001-06-11');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (188, '83', 'Kylie Han', 'khan57@biglobe.ne.jp', '297-330-2980', '1970-03-07');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (189, '73', 'Fidel Southerns', 'fsoutherns58@istockphoto.com', '621-360-3197', '2002-07-30');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (190, '141', 'Tatiania Kinde', 'tkinde59@merriam-webster.com', '914-675-9370', '1977-08-23');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (191, '69', 'Rodger Orrum', 'rorrum5a@homestead.com', '891-679-4595', '1986-02-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (192, '108', 'Derk Johansen', 'djohansen5b@census.gov', '829-908-0607', '1989-05-01');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (193, '19', 'Hazel Rodwell', 'hrodwell5c@hhs.gov', '474-674-9358', '1997-06-29');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (194, '119', 'Turner Ginity', 'tginity5d@toplist.cz', '607-132-4868', '1995-03-12');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (195, '11', 'Catlee Porker', 'cporker5e@icio.us', '984-150-2094', '1976-11-29');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (196, '58', 'Valeria Gascoyen', 'vgascoyen5f@abc.net.au', '837-961-1932', '1991-02-07');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (197, '113', 'Curr Hirche', 'chirche5g@discovery.com', '698-646-1247', '1998-02-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (198, '21', 'Ilario Clemon', 'iclemon5h@aboutads.info', '181-944-6434', '1998-02-03');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (199, '101', 'Laurice Finnemore', 'lfinnemore5i@noaa.gov', '187-714-2633', '1990-06-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (200, '131', 'Lewes Arthan', 'larthan5j@bloglines.com', '877-285-3405', '1984-02-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (201, '37', 'Barnaby Huie', 'bhuie5k@youku.com', '106-637-9749', '1991-05-11');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (202, '111', 'Cathie Beauchamp', 'cbeauchamp5l@prnewswire.com', '514-379-4022', '1980-06-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (203, '117', 'Eleonora Line', 'eline5m@wired.com', '198-575-1193', '2001-03-30');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (204, '53', 'Christoffer Giffkins', 'cgiffkins5n@npr.org', '567-936-9695', '1987-04-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (205, '95', 'Kattie Favel', 'kfavel5o@xing.com', '994-210-3304', '1990-01-13');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (206, '129', 'Virgie Kaesmans', 'vkaesmans5p@cnbc.com', '290-155-6512', '1993-10-21');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (207, '86', 'Arin Brouwer', 'abrouwer5q@timesonline.co.uk', '347-817-8282', '1987-07-26');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (208, '105', 'Felicity Trask', 'ftrask5r@ca.gov', '775-693-5340', '2002-07-13');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (209, '138', 'Carilyn Rentoll', 'crentoll5s@wikipedia.org', '359-293-2126', '1984-03-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (210, '121', 'Ned Kildahl', 'nkildahl5t@independent.co.uk', '174-846-6295', '1986-11-18');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (211, '93', 'Almeta Dyson', 'adyson5u@google.nl', '449-723-9282', '1993-01-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (212, '81', 'Helga Abley', 'habley5v@dmoz.org', '723-199-8078', '1995-11-27');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (213, '1', 'Gertruda Awdry', 'gawdry5w@vinaora.com', '778-499-7834', '1971-10-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (214, '49', 'Margie Guiton', 'mguiton5x@gov.uk', '933-157-2065', '2003-09-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (215, '124', 'Janella Aire', 'jaire5y@phpbb.com', '823-982-6250', '1997-01-01');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (216, '120', 'Dev Commins', 'dcommins5z@istockphoto.com', '276-335-0520', '1996-08-26');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (217, '140', 'Finn Tester', 'ftester60@webeden.co.uk', '972-112-9723', '1983-02-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (218, '27', 'Sholom Cranidge', 'scranidge61@nps.gov', '554-870-3760', '1973-11-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (219, '68', 'Jamie Wigan', 'jwigan62@shutterfly.com', '264-835-9718', '1979-03-11');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (220, '20', 'Gerrilee Yorke', 'gyorke63@gnu.org', '556-691-7899', '1974-03-11');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (221, '94', 'Georg Pillington', 'gpillington64@lycos.com', '822-749-9661', '1999-02-24');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (222, '51', 'Ilsa Floyd', 'ifloyd65@dedecms.com', '899-190-0117', '1994-09-01');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (223, '89', 'Francoise Lutwyche', 'flutwyche66@mapy.cz', '444-257-9837', '1999-05-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (224, '67', 'Aloise Cauley', 'acauley67@simplemachines.org', '475-994-5643', '1999-06-27');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (225, '80', 'Alistair Brunn', 'abrunn68@wsj.com', '354-947-3251', '1990-08-01');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (226, '148', 'Cherry Christol', 'cchristol69@hubpages.com', '306-477-3707', '1976-04-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (227, '66', 'Rab Ivison', 'rivison6a@ucsd.edu', '460-129-7795', '1973-11-03');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (228, '5', 'Rozanna Wickerson', 'rwickerson6b@squarespace.com', '748-967-8603', '1990-11-27');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (229, '87', 'Beatrix Kunath', 'bkunath6c@tumblr.com', '652-246-1982', '1999-07-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (230, '59', 'Aloysius Scard', 'ascard6d@dot.gov', '436-375-0926', '1989-12-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (231, '44', 'Dniren Mannering', 'dmannering6e@google.ru', '672-881-2042', '2001-06-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (232, '145', 'Huntington Lapwood', 'hlapwood6f@tuttocitta.it', '911-821-1385', '1990-12-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (233, '12', 'Parke Snap', 'psnap6g@shareasale.com', '995-450-9756', '1971-02-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (234, '135', 'Raoul Sprouls', 'rsprouls6h@webnode.com', '834-855-5433', '1981-12-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (235, '103', 'Melisa Maiden', 'mmaiden6i@surveymonkey.com', '903-475-9585', '1970-02-02');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (236, '23', 'Berkly Niset', 'bniset6j@live.com', '407-544-2923', '1997-09-14');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (237, '130', 'Verina Bourgeois', 'vbourgeois6k@51.la', '745-535-2863', '1982-02-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (238, '33', 'Marcy Borgnol', 'mborgnol6l@utexas.edu', '215-215-2795', '1984-03-28');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (239, '123', 'Aubrette Fantini', 'afantini6m@etsy.com', '671-846-0687', '1979-02-13');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (240, '61', 'Juli Peterson', 'jpeterson6n@so-net.ne.jp', '574-317-9911', '1970-08-26');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (241, '100', 'Bailey Dugget', 'bdugget6o@phoca.cz', '710-273-9042', '1993-02-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (242, '76', 'Dolley Lohering', 'dlohering6p@dropbox.com', '380-595-0713', '1979-09-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (243, '31', 'Aleta O''Heyne', 'aoheyne6q@stanford.edu', '569-481-5777', '1988-12-23');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (244, '14', 'Susana Luquet', 'sluquet6r@gnu.org', '494-793-4884', '1998-01-12');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (245, '78', 'Nikos Gable', 'ngable6s@washington.edu', '428-583-1725', '2003-06-01');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (246, '126', 'Kaela Axton', 'kaxton6t@ucsd.edu', '775-393-0658', '1979-10-28');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (247, '91', 'Dolf Carcas', 'dcarcas6u@ycombinator.com', '240-265-5969', '2003-08-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (248, '122', 'Gregoire Fealey', 'gfealey6v@google.fr', '182-556-9146', '2000-06-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (249, '77', 'Jaymie Hardistry', 'jhardistry6w@mozilla.org', '381-218-3069', '2001-04-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (250, '25', 'Sophronia MacEntee', 'smacentee6x@sciencedaily.com', '719-897-3067', '1970-07-21');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (251, '143', 'Noella Alty', 'nalty6y@ed.gov', '486-140-2870', '2002-08-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (252, '128', 'Giffie Donisthorpe', 'gdonisthorpe6z@omniture.com', '145-441-6010', '1994-10-15');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (253, '63', 'Carry Halfpenny', 'chalfpenny70@prlog.org', '476-960-7807', '1990-07-28');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (254, '35', 'Arther Cradock', 'acradock71@google.pl', '214-416-2213', '1985-07-18');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (255, '6', 'Christine Karet', 'ckaret72@reddit.com', '584-259-5298', '1987-06-28');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (256, '114', 'August Ruby', 'aruby73@is.gd', '335-878-2367', '1981-12-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (257, '102', 'Conrade McAirt', 'cmcairt74@vistaprint.com', '779-145-1122', '1972-04-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (258, '75', 'Jdavie Hallan', 'jhallan75@yelp.com', '812-584-3185', '1975-03-13');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (259, '82', 'Allyson Embery', 'aembery76@google.pl', '822-870-2759', '1984-06-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (260, '54', 'Renell Habbes', 'rhabbes77@aol.com', '164-535-6446', '1980-11-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (261, '10', 'Jacklin Ewan', 'jewan78@networksolutions.com', '867-228-9762', '2002-07-11');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (262, '36', 'Ingrid Paddington', 'ipaddington79@umn.edu', '711-300-1061', '1989-11-28');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (263, '70', 'Gloria Sunner', 'gsunner7a@list-manage.com', '358-669-1146', '1996-05-16');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (264, '142', 'Madella Fritzer', 'mfritzer7b@addthis.com', '956-235-8348', '1979-01-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (265, '15', 'Addia Hurne', 'ahurne7c@squarespace.com', '306-463-1978', '1970-05-14');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (266, '32', 'Shelden Becks', 'sbecks7d@google.ca', '259-601-8584', '1982-08-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (267, '52', 'Kimble Alcock', 'kalcock7e@xinhuanet.com', '733-677-5881', '1998-03-24');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (268, '9', 'Umberto Meech', 'umeech7f@amazon.co.jp', '166-430-6118', '1972-08-28');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (269, '28', 'Shep Tomkowicz', 'stomkowicz7g@noaa.gov', '758-139-7599', '1992-03-10');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (270, '47', 'Glynda Tenby', 'gtenby7h@instagram.com', '468-305-1479', '1998-09-03');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (271, '90', 'Jude Malacrida', 'jmalacrida7i@phpbb.com', '190-889-8322', '1996-10-21');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (272, '118', 'Trescha Campany', 'tcampany7j@goo.ne.jp', '751-987-6480', '2003-09-05');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (273, '85', 'Sigismundo Perfili', 'sperfili7k@illinois.edu', '713-145-1778', '1984-01-14');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (274, '3', 'Taite Tampion', 'ttampion7l@blog.com', '555-553-6537', '1977-04-23');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (275, '60', 'Ingaberg Eddies', 'ieddies7m@fema.gov', '942-136-8979', '2001-08-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (276, '144', 'Terrel Stickels', 'tstickels7n@accuweather.com', '203-430-6061', '1973-10-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (277, '146', 'Kirsten Stening', 'kstening7o@dailymotion.com', '490-405-7824', '1978-05-26');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (278, '38', 'Donnie Mabley', 'dmabley7p@zdnet.com', '142-942-7833', '1987-01-05');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (279, '127', 'Anetta Jertz', 'ajertz7q@salon.com', '200-147-0541', '1974-08-24');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (280, '30', 'Dieter Hynam', 'dhynam7r@cpanel.net', '524-220-0365', '1976-02-23');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (281, '17', 'Sebastien Hupe', 'shupe7s@toplist.cz', '948-794-1406', '1998-02-21');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (282, '110', 'Johannes Lermouth', 'jlermouth7t@umn.edu', '483-259-6141', '1979-04-28');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (283, '34', 'Merci Vanacci', 'mvanacci7u@php.net', '431-408-5199', '1970-01-30');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (284, '92', 'Daphne Greenacre', 'dgreenacre7v@rakuten.co.jp', '562-933-5113', '1980-12-24');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (285, '109', 'Sela Sommerville', 'ssommerville7w@xinhuanet.com', '716-765-7245', '1986-05-26');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (286, '149', 'Belle Churchill', 'bchurchill7x@hostgator.com', '214-288-5866', '1996-11-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (287, '71', 'Orland Danilishin', 'odanilishin7y@behance.net', '611-909-3999', '1980-07-18');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (288, '107', 'Danika Sizland', 'dsizland7z@elegantthemes.com', '681-112-5471', '1998-01-04');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (289, '45', 'Waiter Porson', 'wporson80@a8.net', '642-159-1078', '1995-07-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (290, '128', 'Farlee Mulliss', 'fmulliss81@blogs.com', '174-577-4161', '1970-04-01');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (291, '52', 'Jannel Bridge', 'jbridge82@ifeng.com', '734-355-6161', '1981-05-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (292, '22', 'Cliff Boothebie', 'cboothebie83@digg.com', '585-475-1606', '1977-03-03');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (293, '77', 'Murdock Aston', 'maston84@pinterest.com', '673-541-2126', '2002-09-14');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (294, '3', 'Mayor Stothert', 'mstothert85@earthlink.net', '705-508-8189', '2002-12-14');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (295, '11', 'Letitia Flanders', 'lflanders86@wp.com', '529-505-5335', '1979-05-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (296, '2', 'Nikolaos Hoggan', 'nhoggan87@disqus.com', '236-692-4077', '1976-09-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (297, '38', 'Noelyn Liddington', 'nliddington88@devhub.com', '760-899-9804', '1977-07-10');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (298, '55', 'Dorian Sturton', 'dsturton89@quantcast.com', '262-493-1030', '1995-07-02');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (299, '64', 'Clemmy Scholfield', 'cscholfield8a@pagesperso-orange.fr', '759-102-4345', '2001-03-16');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (300, '78', 'Bertrando Scatcher', 'bscatcher8b@upenn.edu', '994-594-1382', '1978-04-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (301, '50', 'Jim Goggin', 'jgoggin8c@cisco.com', '389-274-4856', '1972-10-30');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (302, '150', 'Doy Sazio', 'dsazio8d@whitehouse.gov', '792-643-2739', '1991-05-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (303, '135', 'Ninette Fentem', 'nfentem8e@nih.gov', '568-371-8051', '2003-01-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (304, '32', 'Fawnia Osmon', 'fosmon8f@cafepress.com', '298-854-8055', '1972-01-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (305, '108', 'Kimble Moss', 'kmoss8g@acquirethisname.com', '915-581-3451', '1999-10-26');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (306, '127', 'Shayna Josef', 'sjosef8h@shinystat.com', '873-855-5779', '1978-05-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (307, '29', 'Sanford Frantz', 'sfrantz8i@exblog.jp', '907-696-6668', '1988-10-24');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (308, '132', 'Dov Wemes', 'dwemes8j@networkadvertising.org', '763-351-7736', '1993-02-22');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (309, '124', 'Cheston Rappport', 'crappport8k@cargocollective.com', '252-355-0582', '1977-04-16');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (310, '8', 'Herbert Gasker', 'hgasker8l@wordpress.com', '984-659-4998', '1990-06-18');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (311, '60', 'Launce McIlharga', 'lmcilharga8m@fda.gov', '765-753-2186', '1998-05-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (312, '145', 'Millicent Spensly', 'mspensly8n@cafepress.com', '421-719-4909', '2001-10-18');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (313, '27', 'Sammie Steggals', 'ssteggals8o@tiny.cc', '430-980-1540', '1990-02-17');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (314, '49', 'Becka Gallamore', 'bgallamore8p@artisteer.com', '552-445-4486', '1979-09-15');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (315, '110', 'Lishe Ayshford', 'layshford8q@icq.com', '655-264-4643', '2000-12-18');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (316, '65', 'Alysa Colnett', 'acolnett8r@cbc.ca', '481-577-6838', '2002-09-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (317, '87', 'Gilbert Whittenbury', 'gwhittenbury8s@tamu.edu', '964-378-4362', '1999-05-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (318, '136', 'Helsa Lazenby', 'hlazenby8t@dagondesign.com', '220-953-4971', '1998-04-10');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (319, '59', 'Cherida Benoist', 'cbenoist8u@cyberchimps.com', '350-811-8496', '1990-06-02');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (320, '125', 'Valma Gligorijevic', 'vgligorijevic8v@github.io', '570-344-3349', '1984-06-12');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (321, '113', 'Sophey Ohrt', 'sohrt8w@dedecms.com', '232-928-8474', '2001-07-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (322, '95', 'Chryste Gervaise', 'cgervaise8x@cafepress.com', '746-992-5820', '1992-06-20');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (323, '109', 'Hurley Faux', 'hfaux8y@goo.ne.jp', '715-755-9960', '1992-07-25');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (324, '58', 'Cart Dommerque', 'cdommerque8z@odnoklassniki.ru', '543-720-9627', '1979-07-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (325, '41', 'Hershel Bumpus', 'hbumpus90@house.gov', '245-280-7067', '1979-12-08');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (326, '21', 'Marven Plum', 'mplum91@hatena.ne.jp', '737-861-3386', '1990-03-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (327, '37', 'Torrence Belle', 'tbelle92@ustream.tv', '879-730-0706', '1978-12-03');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (328, '102', 'Gena Jannasch', 'gjannasch93@microsoft.com', '568-720-1972', '1976-06-01');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (329, '142', 'Yasmeen Jellard', 'yjellard94@ebay.com', '637-201-7970', '1981-06-26');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (330, '103', 'Nicolai Trayford', 'ntrayford95@washingtonpost.com', '311-623-1871', '1978-11-30');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (331, '44', 'Terrance McHale', 'tmchale96@tuttocitta.it', '661-268-7780', '1976-01-09');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (332, '62', 'Kat Bindon', 'kbindon97@e-recht24.de', '903-420-8488', '1982-09-26');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (333, '46', 'Brnaby Boorer', 'bboorer98@mlb.com', '765-246-7867', '1976-10-03');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (334, '130', 'Hakeem Cleynman', 'hcleynman99@163.com', '920-128-0726', '2001-05-19');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (335, '36', 'Deedee Raynor', 'draynor9a@abc.net.au', '991-604-1623', '1978-04-14');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (336, '71', 'Dorrie Rosling', 'drosling9b@ustream.tv', '363-661-4746', '1979-07-28');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (337, '97', 'Naoma Brumby', 'nbrumby9c@seesaa.net', '117-475-8534', '1970-03-18');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (338, '134', 'Lela Shrubb', 'lshrubb9d@tripod.com', '999-918-6594', '1979-11-07');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (339, '7', 'Pepi Colgan', 'pcolgan9e@dell.com', '639-457-1824', '1988-07-06');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (340, '4', 'Lonni Bluett', 'lbluett9f@engadget.com', '693-819-4681', '2003-01-31');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (341, '24', 'Rice Tunkin', 'rtunkin9g@smugmug.com', '746-227-7079', '1992-05-07');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (342, '75', 'Cyndia Horche', 'chorche9h@unblog.fr', '989-462-7482', '1979-06-16');
INSERT INTO Companies (CompanyID, CustomerID, FullName, Email, Phone, Birthdate) VALUES (343, '25', 'Nari Althrope', 'nalthrope2y@surverymonkey.com', '577-611-8837', '1979-03-17');

-- Table: Country
DROP TABLE IF EXISTS Country;

CREATE TABLE Country (
    CountryID   INTEGER      NOT NULL
                             PRIMARY KEY,
    CountryName VARCHAR (45) NOT NULL
);

INSERT INTO Country (CountryID, CountryName) VALUES (1, 'United Arab Emirates');
INSERT INTO Country (CountryID, CountryName) VALUES (2, 'Sweden');
INSERT INTO Country (CountryID, CountryName) VALUES (3, 'Japan');

-- Table: Customers
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    CustomerID INTEGER      PRIMARY KEY
                            NOT NULL,
    FullName   VARCHAR (50) NOT NULL,
    Birthdate  DATE         NOT NULL,
    Phone      VARCHAR (50) NOT NULL,
    Email      VARCHAR (50) NOT NULL
);

INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (1, 'Ive MacAdie', '1984-08-30', '261-895-2606', 'imacadie0@utexas.edu');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (2, 'Doralynne Charle', '1972-09-08', '377-356-3898', 'dcharle1@google.com.hk');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (3, 'Caye Alman', '1976-04-20', '307-176-0436', 'calman2@dropbox.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (4, 'Bearnard Fedynski', '1988-10-19', '745-409-6933', 'bfedynski3@cpanel.net');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (5, 'Josie Gairdner', '1997-07-12', '145-222-7451', 'jgairdner4@ow.ly');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (6, 'Maje Morgan', '1981-02-18', '219-791-1120', 'mmorgan5@indiatimes.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (7, 'Rosalia Krzysztof', '1970-08-05', '977-521-3713', 'rkrzysztof6@cmu.edu');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (8, 'Alfy Tredgold', '1988-12-30', '329-425-2257', 'atredgold7@mediafire.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (9, 'Alonzo August', '1994-09-10', '383-421-3019', 'aaugust8@examiner.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (10, 'Erie Pordall', '1992-06-21', '530-535-6597', 'epordall9@wikispaces.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (11, 'Silvana Blumson', '1997-06-15', '994-358-5623', 'sblumsona@toplist.cz');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (12, 'Trisha Brandoni', '1997-01-04', '527-347-9675', 'tbrandonib@i2i.jp');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (13, 'Melicent Howbrook', '1982-01-13', '881-453-9797', 'mhowbrookc@phoca.cz');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (14, 'Raff Titterell', '1979-09-03', '353-717-8693', 'rtitterelld@phpbb.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (15, 'Tatiana Jouen', '2003-09-30', '894-708-6737', 'tjouene@amazon.co.uk');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (16, 'Berky Barwack', '1980-09-20', '106-300-2827', 'bbarwackf@hhs.gov');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (17, 'Florida Hazlehurst', '1993-11-14', '392-679-6668', 'fhazlehurstg@goo.ne.jp');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (18, 'Marj Dyte', '1986-02-20', '995-202-4064', 'mdyteh@nih.gov');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (19, 'Rosetta Patey', '1993-04-24', '774-163-5009', 'rpateyi@nbcnews.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (20, 'Natal Dennett', '1989-05-13', '729-695-3354', 'ndennettj@macromedia.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (21, 'Smitty Seneschal', '1981-11-15', '723-327-0888', 'sseneschalk@bing.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (22, 'Linnell Huish', '1978-09-27', '119-187-1391', 'lhuishl@over-blog.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (23, 'Leupold Millhouse', '1984-05-27', '357-662-8107', 'lmillhousem@usgs.gov');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (24, 'Valle Chick', '2002-09-13', '982-297-1804', 'vchickn@washingtonpost.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (25, 'Ede Rove', '1972-12-24', '877-377-5870', 'eroveo@goo.gl');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (26, 'Adel De Giorgis', '2002-12-24', '743-752-9779', 'adep@epa.gov');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (27, 'Valera Allsobrook', '1974-10-20', '317-301-3017', 'vallsobrookq@dion.ne.jp');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (28, 'Alice McKeag', '1989-10-24', '661-572-6531', 'amckeagr@utexas.edu');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (29, 'Moll Linge', '1987-10-10', '329-301-2728', 'mlinges@hostgator.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (30, 'Rodd Darrach', '1991-11-01', '649-145-8278', 'rdarracht@omniture.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (31, 'Jaine McCarrell', '1990-11-07', '950-671-8558', 'jmccarrellu@biglobe.ne.jp');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (32, 'Nickola McMearty', '1980-02-26', '447-228-9139', 'nmcmeartyv@deviantart.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (33, 'Thurstan Gjerde', '1981-12-29', '451-490-3560', 'tgjerdew@apache.org');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (34, 'Grissel Tough', '1970-05-09', '154-721-1554', 'gtoughx@yahoo.co.jp');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (35, 'Tate Thorbon', '1997-07-09', '425-587-8467', 'tthorbony@biglobe.ne.jp');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (36, 'Pearl Rudledge', '1972-04-07', '315-178-8527', 'prudledgez@wiley.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (37, 'Kelsey Blucher', '2002-04-20', '125-444-2475', 'kblucher10@pen.io');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (38, 'Jan Perren', '2003-03-24', '781-171-7250', 'jperren11@slate.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (39, 'Kean Ranklin', '1971-11-29', '836-481-8808', 'kranklin12@desdev.cn');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (40, 'Nickolas Ekkel', '1990-12-17', '686-239-7702', 'nekkel13@about.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (41, 'Hank Lennon', '1994-05-27', '874-478-3142', 'hlennon14@fastcompany.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (42, 'Bennett Silverthorn', '1982-08-21', '800-292-3566', 'bsilverthorn15@marketwatch.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (43, 'Kimbell Britian', '1991-12-07', '600-887-8546', 'kbritian16@purevolume.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (44, 'Elsworth Gaber', '1981-08-03', '264-847-8045', 'egaber17@ovh.net');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (45, 'Janis Adair', '1979-07-08', '445-863-2846', 'jadair18@china.com.cn');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (46, 'Nariko Hains', '1975-04-08', '746-888-8936', 'nhains19@de.vu');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (47, 'Templeton Tizard', '1996-03-18', '280-261-3855', 'ttizard1a@prlog.org');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (48, 'Mendel Gobolos', '1996-12-14', '420-511-4298', 'mgobolos1b@guardian.co.uk');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (49, 'Jaclin Connell', '1988-08-30', '513-161-7161', 'jconnell1c@marriott.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (50, 'Konstance Blabey', '1996-10-16', '486-757-2786', 'kblabey1d@netvibes.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (51, 'Bryce Elcott', '1994-01-29', '205-912-1901', 'belcott1e@accuweather.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (52, 'Conant Yvens', '2002-05-20', '133-255-7064', 'cyvens1f@xing.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (53, 'Ramona Henriques', '1995-09-29', '977-895-9832', 'rhenriques1g@icio.us');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (54, 'Avie Timmes', '1981-12-25', '852-349-2346', 'atimmes1h@ebay.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (55, 'Atlante Skellington', '1987-07-27', '510-829-9597', 'askellington1i@ustream.tv');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (56, 'Karol Mapplethorpe', '1975-03-16', '192-298-9358', 'kmapplethorpe1j@jalbum.net');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (57, 'Elizabet Smeeth', '1993-07-07', '427-966-2631', 'esmeeth1k@hubpages.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (58, 'Adelheid Craighall', '2000-07-04', '939-241-4634', 'acraighall1l@studiopress.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (59, 'Kippie Izen', '1995-12-12', '763-200-0485', 'kizen1m@mysql.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (60, 'Idette Feedome', '1988-10-24', '314-786-5132', 'ifeedome1n@answers.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (61, 'Nathaniel Huey', '1971-01-23', '122-289-1559', 'nhuey1o@mail.ru');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (62, 'Nolly Brandsen', '2002-07-19', '608-667-3343', 'nbrandsen1p@purevolume.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (63, 'Howard Learmouth', '1995-02-09', '287-102-6855', 'hlearmouth1q@jugem.jp');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (64, 'Sorcha Featherstone', '1988-09-24', '396-894-3064', 'sfeatherstone1r@walmart.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (65, 'Ronni Coveney', '1987-02-08', '513-867-6755', 'rcoveney1s@wired.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (66, 'Zabrina Copes', '1986-11-22', '512-309-4414', 'zcopes1t@networkadvertising.org');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (67, 'Budd Leipoldt', '2003-02-23', '797-440-8903', 'bleipoldt1u@dagondesign.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (68, 'Alain Kerwood', '1976-03-11', '695-102-9564', 'akerwood1v@craigslist.org');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (69, 'Karin Bambrick', '1998-08-07', '249-214-0215', 'kbambrick1w@wikimedia.org');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (70, 'Sanders Camble', '1975-03-23', '688-132-2485', 'scamble1x@princeton.edu');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (71, 'Titus Bainbridge', '1986-07-09', '258-788-8611', 'tbainbridge1y@ibm.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (72, 'Kelli Baglan', '1986-09-15', '110-549-0152', 'kbaglan1z@fda.gov');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (73, 'Dennie Huxtable', '1993-10-02', '157-219-7723', 'dhuxtable20@indiatimes.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (74, 'Dael Goublier', '2002-11-02', '636-914-7069', 'dgoublier21@wikipedia.org');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (75, 'Gilberto Peabody', '1978-07-02', '888-523-9297', 'gpeabody22@reverbnation.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (76, 'Aharon Guilfoyle', '1997-02-19', '688-664-7570', 'aguilfoyle23@reverbnation.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (77, 'Alidia Gebuhr', '2001-02-28', '316-955-3617', 'agebuhr24@telegraph.co.uk');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (78, 'Auria Aitcheson', '2003-03-22', '268-682-1485', 'aaitcheson25@sakura.ne.jp');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (79, 'Abraham Brandom', '1971-01-30', '523-817-8363', 'abrandom26@ebay.co.uk');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (80, 'Ernestus Moreside', '2000-09-10', '989-418-0109', 'emoreside27@chicagotribune.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (81, 'Adolpho Patman', '1975-05-20', '405-980-2238', 'apatman28@skyrock.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (82, 'Dav Storror', '2001-02-21', '131-844-2949', 'dstorror29@unicef.org');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (83, 'Binny Zanardii', '1973-05-05', '319-108-4966', 'bzanardii2a@squarespace.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (84, 'Whitby Sangster', '1995-07-18', '560-942-3609', 'wsangster2b@engadget.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (85, 'Gertie Rigby', '2003-06-24', '652-831-6461', 'grigby2c@deviantart.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (86, 'Marni Korf', '1998-04-15', '456-788-8216', 'mkorf2d@unicef.org');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (87, 'Taryn Honeywood', '1976-01-29', '288-689-4849', 'thoneywood2e@jigsy.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (88, 'Gav Kobes', '1997-05-05', '113-734-9145', 'gkobes2f@mit.edu');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (89, 'Hilliary Tromans', '1997-04-15', '918-178-0429', 'htromans2g@netlog.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (90, 'Beckie Shreeve', '1986-09-12', '793-452-2678', 'bshreeve2h@devhub.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (91, 'Reider Adamowicz', '1973-08-02', '184-465-0465', 'radamowicz2i@shinystat.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (92, 'Ilario Tant', '1988-07-19', '331-321-2503', 'itant2j@sfgate.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (93, 'Rodrique McIlvaney', '2003-04-15', '415-492-6000', 'rmcilvaney2k@tripadvisor.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (94, 'Ebony Gaythor', '2002-06-20', '243-607-1993', 'egaythor2l@gravatar.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (95, 'Aubrey Landis', '1984-11-08', '647-850-9282', 'alandis2m@opensource.org');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (96, 'Lesly Kepling', '2001-03-31', '845-734-3894', 'lkepling2n@infoseek.co.jp');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (97, 'Elvin De Roeck', '1981-12-15', '716-913-9277', 'ede2o@fastcompany.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (98, 'Griffy Birkby', '1986-08-02', '412-218-3611', 'gbirkby2p@over-blog.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (99, 'Dot Giottoi', '2000-12-24', '291-117-9266', 'dgiottoi2q@tinypic.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (100, 'Dyna Blakeney', '1991-08-17', '979-903-2412', 'dblakeney2r@rediff.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (101, 'Joelynn Di Ruggero', '1981-06-29', '420-943-9444', 'jdi2s@whitehouse.gov');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (102, 'Jeff Konig', '1981-01-22', '138-603-4702', 'jkonig2t@symantec.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (103, 'Shannen Fullun', '1981-01-02', '134-912-0202', 'sfullun2u@a8.net');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (104, 'Danie Henstridge', '1982-01-13', '828-616-0267', 'dhenstridge2v@ustream.tv');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (105, 'Ailyn Kubas', '1981-11-13', '822-254-4614', 'akubas2w@noaa.gov');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (106, 'Lennard Cattermull', '1979-11-28', '552-390-6126', 'lcattermull2x@cnet.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (107, 'Libbey Worthy', '1997-07-16', '922-279-4588', 'lworthy2y@imgur.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (108, 'Mimi Issitt', '1973-11-18', '466-358-8619', 'missitt2z@arizona.edu');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (109, 'Gillan McAviy', '1998-10-10', '484-498-3258', 'gmcaviy30@mac.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (110, 'Leanor Raphael', '1986-12-12', '331-109-1604', 'lraphael31@usnews.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (111, 'Ringo Allott', '1995-07-22', '885-697-7856', 'rallott32@issuu.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (112, 'Hans Mc Cahey', '1970-09-21', '874-564-8879', 'hmc33@google.ca');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (113, 'Field Raynor', '1999-01-28', '125-291-2994', 'fraynor34@theglobeandmail.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (114, 'Aimee Demelt', '2000-07-15', '363-256-8038', 'ademelt35@ebay.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (115, 'Hailey Sey', '1979-05-20', '328-535-3977', 'hsey36@com.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (116, 'Edlin Goldster', '1979-07-06', '173-851-2772', 'egoldster37@networksolutions.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (117, 'Adaline Crier', '1989-06-03', '891-883-4120', 'acrier38@tripod.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (118, 'Corine Shalcras', '1989-02-07', '200-349-8330', 'cshalcras39@ucla.edu');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (119, 'Jewelle Meffin', '1976-04-17', '531-645-8972', 'jmeffin3a@hibu.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (120, 'Catlaina Puller', '1990-12-09', '255-828-3771', 'cpuller3b@list-manage.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (121, 'Carin Point', '1995-03-10', '706-728-9267', 'cpoint3c@umich.edu');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (122, 'Hallie Leason', '1995-12-30', '541-923-1429', 'hleason3d@elpais.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (123, 'Abbe Ivatt', '1974-06-07', '778-662-6448', 'aivatt3e@rediff.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (124, 'Katalin Cherryman', '1983-12-15', '549-490-4446', 'kcherryman3f@fda.gov');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (125, 'Leland Lote', '1970-12-12', '698-849-9793', 'llote3g@aol.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (126, 'Maire Easum', '1989-01-01', '518-397-9744', 'measum3h@guardian.co.uk');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (127, 'Zacharia Lusty', '2002-10-16', '134-841-8834', 'zlusty3i@state.gov');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (128, 'Collie Verrico', '2002-03-25', '157-737-3249', 'cverrico3j@constantcontact.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (129, 'Leticia Grewer', '1977-10-31', '102-916-2575', 'lgrewer3k@cnn.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (130, 'Tamas Leon', '1992-06-22', '864-712-0195', 'tleon3l@i2i.jp');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (131, 'Porter Marzellano', '1982-03-12', '362-690-3546', 'pmarzellano3m@jigsy.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (132, 'Bevvy Panting', '1983-10-22', '172-716-2831', 'bpanting3n@theatlantic.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (133, 'Kerk Padson', '1996-12-11', '960-471-2544', 'kpadson3o@vkontakte.ru');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (134, 'Corrie Tassel', '1979-06-25', '480-217-6537', 'ctassel3p@flickr.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (135, 'Lyell Mannion', '1972-01-02', '556-788-1753', 'lmannion3q@about.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (136, 'Corby Hagstone', '1985-06-01', '132-247-8490', 'chagstone3r@huffingtonpost.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (137, 'Allayne Pibsworth', '1978-09-19', '195-319-6288', 'apibsworth3s@cmu.edu');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (138, 'Sigismondo Spadollini', '1998-03-30', '404-559-6783', 'sspadollini3t@creativecommons.org');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (139, 'Sascha Caddens', '1995-09-30', '532-546-0162', 'scaddens3u@gravatar.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (140, 'Patric Ferretti', '1982-08-12', '890-692-2977', 'pferretti3v@wordpress.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (141, 'Morna Macvain', '1994-07-27', '435-632-4017', 'mmacvain3w@vimeo.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (142, 'Uriel Lippini', '1998-01-16', '218-604-6262', 'ulippini3x@nbcnews.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (143, 'Nariko Teanby', '1986-03-25', '699-554-6610', 'nteanby3y@ebay.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (144, 'Roch Pavel', '1971-08-24', '645-927-5325', 'rpavel3z@merriam-webster.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (145, 'Rici Labusch', '1986-11-30', '900-377-2163', 'rlabusch40@wikispaces.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (146, 'Franz Chazelas', '1991-12-07', '637-711-1726', 'fchazelas41@slate.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (147, 'Veronika Callear', '1973-02-02', '717-538-0010', 'vcallear42@i2i.jp');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (148, 'Henka Le Grys', '1984-12-06', '764-214-0390', 'hle43@umich.edu');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (149, 'Ellissa McCahill', '1999-02-11', '981-244-3000', 'emccahill44@blog.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (150, 'Shayne Pyatt', '1986-01-22', '151-378-2027', 'spyatt45@friendfeed.com');
INSERT INTO Customers (CustomerID, FullName, Birthdate, Phone, Email) VALUES (151, 'Benjamin Nilsson', '1997-09-12', '070-123-1234', 'asdas@gmail.com');

-- Table: Hotels
DROP TABLE IF EXISTS Hotels;

CREATE TABLE Hotels (
    HotelID              INTEGER      PRIMARY KEY
                                      NOT NULL,
    HotelName            VARCHAR (50) NOT NULL,
    City                 INTEGER (5)  REFERENCES Cities (CityID) 
                                      NOT NULL,
    Rating               INT,
    Rooms                INT,
    DistanceToCentre     INT,
    DistanceToBeach      INT,
    Pool                 BOOLEAN      NOT NULL,
    KidsClub             BOOLEAN      NOT NULL,
    EveningEntertainment BOOLEAN      NOT NULL,
    Restaurant           BOOLEAN      NOT NULL
);

INSERT INTO Hotels (HotelID, HotelName, City, Rating, Rooms, DistanceToCentre, DistanceToBeach, Pool, KidsClub, EveningEntertainment, Restaurant) VALUES (1, 'Feedfire', 1, 6, 35, 5, 7, 1, 1, 1, 0);
INSERT INTO Hotels (HotelID, HotelName, City, Rating, Rooms, DistanceToCentre, DistanceToBeach, Pool, KidsClub, EveningEntertainment, Restaurant) VALUES (2, 'Miboo', 1, 7, 35, 1, 4, 0, 0, 1, 0);
INSERT INTO Hotels (HotelID, HotelName, City, Rating, Rooms, DistanceToCentre, DistanceToBeach, Pool, KidsClub, EveningEntertainment, Restaurant) VALUES (3, 'Viva', 2, 4, 35, 4, 20, 1, 0, 0, 1);
INSERT INTO Hotels (HotelID, HotelName, City, Rating, Rooms, DistanceToCentre, DistanceToBeach, Pool, KidsClub, EveningEntertainment, Restaurant) VALUES (4, 'Dazzlesphere', 3, 5, 35, 7, 32, 1, 1, 0, 0);
INSERT INTO Hotels (HotelID, HotelName, City, Rating, Rooms, DistanceToCentre, DistanceToBeach, Pool, KidsClub, EveningEntertainment, Restaurant) VALUES (5, 'Voonte', 3, 6, 35, 9, 4, 1, 1, 1, 1);

-- Table: MealPackages
DROP TABLE IF EXISTS MealPackages;

CREATE TABLE MealPackages (
    MealPackageID    INTEGER     PRIMARY KEY
                                 NOT NULL,
    MealPackagePrice VARCHAR (2),
    MealPackage      VARCHAR (9) 
);

INSERT INTO MealPackages (MealPackageID, MealPackagePrice, MealPackage) VALUES (1, '0', 'No Meal');
INSERT INTO MealPackages (MealPackageID, MealPackagePrice, MealPackage) VALUES (2, '30', 'Half Meal');
INSERT INTO MealPackages (MealPackageID, MealPackagePrice, MealPackage) VALUES (3, '50', 'Full Meal');

-- Table: Rooms
DROP TABLE IF EXISTS Rooms;

CREATE TABLE Rooms (
    RoomID     INTEGER      PRIMARY KEY
                            NOT NULL,
    HotelID    VARCHAR (10) REFERENCES Hotels (HotelID) 
                            NOT NULL,
    RoomSpecID VARCHAR (2)  REFERENCES RoomSpecs (SpecID) 
                            NOT NULL,
    RoomNumber VARCHAR (50) NOT NULL,
    RoomPrice  VARCHAR (10) NOT NULL
);

INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (1, '1', '1', '1', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (2, '2', '2', '1', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (3, '3', '3', '1', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (4, '4', '1', '1', '200');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (5, '5', '2', '1', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (6, '1', '3', '2', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (7, '2', '1', '2', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (8, '3', '2', '2', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (9, '4', '3', '2', '600');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (10, '5', '1', '2', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (11, '1', '2', '3', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (12, '2', '3', '3', '700');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (13, '3', '1', '3', '150');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (14, '4', '2', '3', '400');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (15, '5', '3', '3', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (16, '1', '1', '4', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (17, '2', '2', '4', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (18, '3', '3', '4', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (19, '4', '1', '4', '200');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (20, '5', '2', '4', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (21, '1', '3', '5', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (22, '2', '1', '5', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (23, '3', '2', '5', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (24, '4', '3', '5', '600');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (25, '5', '1', '5', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (26, '1', '2', '6', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (27, '2', '3', '6', '700');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (28, '3', '1', '6', '150');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (29, '4', '2', '6', '400');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (30, '5', '3', '6', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (31, '1', '1', '7', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (32, '2', '2', '7', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (33, '3', '3', '7', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (34, '4', '1', '7', '200');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (35, '5', '2', '7', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (36, '1', '3', '8', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (37, '2', '1', '8', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (38, '3', '2', '8', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (39, '4', '3', '8', '600');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (40, '5', '1', '8', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (41, '1', '2', '9', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (42, '2', '3', '9', '700');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (43, '3', '1', '9', '150');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (44, '4', '2', '9', '400');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (45, '5', '3', '9', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (46, '1', '1', '10', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (47, '2', '2', '10', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (48, '3', '3', '10', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (49, '4', '1', '10', '200');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (50, '5', '2', '10', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (51, '1', '3', '11', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (52, '2', '1', '11', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (53, '3', '2', '11', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (54, '4', '3', '11', '600');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (55, '5', '1', '11', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (56, '1', '2', '12', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (57, '2', '3', '12', '700');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (58, '3', '1', '12', '150');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (59, '4', '2', '12', '400');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (60, '5', '3', '12', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (61, '1', '1', '13', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (62, '2', '2', '13', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (63, '3', '3', '13', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (64, '4', '1', '13', '200');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (65, '5', '2', '13', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (66, '1', '3', '14', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (67, '2', '1', '14', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (68, '3', '2', '14', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (69, '4', '3', '14', '600');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (70, '5', '1', '14', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (71, '1', '2', '15', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (72, '2', '3', '15', '700');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (73, '3', '1', '15', '150');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (74, '4', '2', '15', '400');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (75, '5', '3', '15', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (76, '1', '1', '16', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (77, '2', '2', '16', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (78, '3', '3', '16', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (79, '4', '1', '16', '200');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (80, '5', '2', '16', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (81, '1', '3', '17', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (82, '2', '1', '17', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (83, '3', '2', '17', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (84, '4', '3', '17', '600');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (85, '5', '1', '17', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (86, '1', '2', '18', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (87, '2', '3', '18', '700');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (88, '3', '1', '18', '150');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (89, '4', '2', '18', '400');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (90, '5', '3', '18', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (91, '1', '1', '19', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (92, '2', '2', '19', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (93, '3', '3', '19', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (94, '4', '1', '19', '200');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (95, '5', '2', '19', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (96, '1', '3', '20', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (97, '2', '1', '20', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (98, '3', '2', '20', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (99, '4', '3', '20', '600');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (100, '5', '1', '20', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (101, '1', '2', '21', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (102, '2', '3', '21', '700');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (103, '3', '1', '21', '150');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (104, '4', '2', '21', '400');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (105, '5', '3', '21', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (106, '1', '1', '22', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (107, '2', '2', '22', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (108, '3', '3', '22', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (109, '4', '1', '22', '200');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (110, '5', '2', '22', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (111, '1', '3', '23', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (112, '2', '1', '23', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (113, '3', '2', '23', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (114, '4', '3', '23', '600');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (115, '5', '1', '23', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (116, '1', '2', '24', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (117, '2', '3', '24', '700');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (118, '3', '1', '24', '150');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (119, '4', '2', '24', '400');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (120, '5', '3', '24', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (121, '1', '1', '25', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (122, '2', '2', '25', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (123, '3', '3', '25', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (124, '4', '1', '25', '200');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (125, '5', '2', '25', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (126, '1', '3', '26', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (127, '2', '1', '26', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (128, '3', '2', '26', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (129, '4', '3', '26', '600');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (130, '5', '1', '26', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (131, '1', '2', '27', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (132, '2', '3', '27', '700');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (133, '3', '1', '27', '150');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (134, '4', '2', '27', '400');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (135, '5', '3', '27', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (136, '1', '1', '28', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (137, '2', '2', '28', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (138, '3', '3', '28', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (139, '4', '1', '28', '200');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (140, '5', '2', '28', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (141, '1', '3', '29', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (142, '2', '1', '29', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (143, '3', '2', '29', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (144, '4', '3', '29', '600');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (145, '5', '1', '29', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (146, '1', '2', '30', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (147, '2', '3', '30', '700');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (148, '3', '1', '30', '150');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (149, '4', '2', '30', '400');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (150, '5', '3', '30', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (151, '1', '1', '31', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (152, '2', '2', '31', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (153, '3', '3', '31', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (154, '4', '1', '31', '200');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (155, '5', '2', '31', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (156, '1', '3', '32', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (157, '2', '1', '32', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (158, '3', '2', '32', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (159, '4', '3', '32', '600');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (160, '5', '1', '32', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (161, '1', '2', '33', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (162, '2', '3', '33', '700');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (163, '3', '1', '33', '150');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (164, '4', '2', '33', '400');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (165, '5', '3', '33', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (166, '1', '1', '34', '250');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (167, '2', '2', '34', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (168, '3', '3', '34', '500');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (169, '4', '1', '34', '200');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (170, '5', '2', '34', '450');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (171, '1', '3', '35', '650');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (172, '2', '1', '35', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (173, '3', '2', '35', '300');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (174, '4', '3', '35', '600');
INSERT INTO Rooms (RoomID, HotelID, RoomSpecID, RoomNumber, RoomPrice) VALUES (175, '5', '1', '35', '250');

-- Table: RoomSpecs
DROP TABLE IF EXISTS RoomSpecs;

CREATE TABLE RoomSpecs (
    SpecID       INTEGER     PRIMARY KEY
                             NOT NULL,
    RoomType     VARCHAR (6) NOT NULL,
    NumberOfBeds INT (2)     NOT NULL
);

INSERT INTO RoomSpecs (SpecID, RoomType, NumberOfBeds) VALUES (1, 'Single', 2);
INSERT INTO RoomSpecs (SpecID, RoomType, NumberOfBeds) VALUES (2, 'Double', 3);
INSERT INTO RoomSpecs (SpecID, RoomType, NumberOfBeds) VALUES (3, 'Suite', 5);

-- View: AvailableRooms
DROP VIEW IF EXISTS AvailableRooms;
CREATE VIEW AvailableRooms AS
    SELECT r.RoomID,
           h.HotelName,
           h.Rating,
           c.CityName,
           co.CountryName,
           rs.RoomType,
           rs.NumberOfBeds,
           h.DistanceToCentre,
           h.DistanceToBeach,
           r.RoomPrice,
           h.Pool,
           h.KidsClub,
           h.EveningEntertainment,
           h.Restaurant
      FROM Rooms r
           JOIN
           Hotels h USING (
               HotelID
           )
           JOIN
           RoomSpecs rs ON r.RoomSpecID = rs.SpecID
           JOIN
           Cities c ON h.city = c.CityID
           JOIN
           Country co USING (
               CountryID
           );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
