-- insert into CLients

INSERT INTO Clients
    (ClientID, FirstName, LastName,
     Email, RegistrationDate, ClientStatus)
VALUES
    (101, 'John', 'Smith',
     'john@example.com', '2026-01-10', 'Active'),

    (102, 'Sarah', 'Khan',
     'sarah@example.com', '2026-02-15', 'Active'),

    (103, 'Ali', 'Ahmed',
     'ali@example.com', '2026-03-20', 'Active'),

    (104, 'Emma', 'Wilson',
     'emma@example.com', '2026-04-05', 'Inactive'),

    (105, 'David', 'Brown',
     'david@example.com', '2026-05-12', 'Active');


-- Insert  into TradingAccounts
 INSERT INTO TradingAccounts
    (AccountID, ClientID, AccountType,
     AccountStatus, OpeningDate)
VALUES
    (5001, 101, 'Individual',
     'Active', '2026-01-12'),

    (5002, 101, 'Individual',
     'Closed', '2026-02-20'),

    (5003, 102, 'Individual',
        'Active', '2026-02-18'),

    (5004, 104, 'Individual', 'Closed', '2026-04-10');

--Insert into Stocks
  INSERT INTO Stocks
    (StockID, StockSymbol, CompanyName,
     Sector, Exchange)
VALUES
    (1, 'BHP', 'BHP Group',
     'Materials', 'ASX'),

    (2, 'CBA', 'Commonwealth Bank',
     'Financials', 'ASX'),

    (3, 'WES', 'Wesfarmers',
     'Consumer Staples', 'ASX'),

    (4, 'CSL', 'CSL Limited',
     'Health Care', 'ASX'),

    (5, 'WBC', 'Westpac Banking Corporation',
     'Financials', 'ASX');


-- Insert  into Orders

INSERT INTO Orders
    (OrderID, AccountID, StockID,OrderType, Quantity,
        OrderPrice, OrderDate, OrderStatus)
VALUES
    (10001,	5001,	1	,'Buy', 	100, 	45.50,	'2026-06-01 09:30',	'Executed'),

    (10002,	5003,	2	,'Sell',	50,	150.00,	'2026-06-01 10:15',	'Executed'),

    (10003,	5001,	3,	'Buy',	200,	75.00,	'2026-06-02 11:00',	'Partially Executed'),

    (10004,	5003,	1,	'Buy',	150	,46.00,	'2026-06-02 13:45',	'Cancelled'),

    (10005,	5001,	4,	'Sell',	75,	280.00,	'2026-06-03 14:20',	'Pending');



 --insert into  Trades
    INSERT INTO Trades
        (TradeID, OrderID, ExecutedQuantity, ExecutionPrice,ExecutionDate,
        BrokerageFee)
    VALUES
        (20001,	10001,	100,	45.50,	'2026-06-01 09:32',	4.55),
        (20002,	10002,	50,	150.00,	'2026-06-01 10:17',	7.50),
        (20003,	10003,	70,	75.00,	'2026-06-02 11:05',	5.25),
        (20004,	10003,	50,	75.20,	'2026-06-02 11:10',	3.76);
