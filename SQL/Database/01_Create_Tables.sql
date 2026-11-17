--Create table Clients
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    RegistrationDate DATE,
    ClientStatus VARCHAR(20)
);

-- Create table TradingAccounts
CREATE TABLE TradingAccounts (
    AccountID INT PRIMARY KEY, 
    ClientID INT NOT  NULL,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    AccountType VARCHAR(30) NOT NULL,
    AccountStatus VARCHAR(20) NOT NULL,
    OpeningDate DATE NOT NULL
);

-- Create table Stocks
  CREATE TABLE Stocks (
                StockID INT PRIMARY KEY, 
                StockSymbol VARCHAR(10) NOT  NULL UNIQUE,
                CompanyName VARCHAR(100) NOT NULL,
                Sector VARCHAR(50),
                Exchange VARCHAR(20) NOT NULL,
                ListingDate DATE
             );

-- Create table Orders
 CREATE TABLE Orders (
    OrderID INT PRIMARY KEY, 
    AccountID INT NOT NULL,
    FOREIGN KEY (AccountID) REFERENCES TradingAccounts(AccountID),
     StockID INT NOT NULL,
    FOREIGN KEY (StockID) REFERENCES Stocks(StockID),
    OrderType VARCHAR(10) NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    OrderPrice DECIMAL(12,2) 
         CHECK (OrderPrice > 0),
    OrderDate	DATETIME2	NOT NULL,
    OrderStatus	VARCHAR(20)	NOT NULL
);

-- Create table Trades
CREATE TABLE Trades (
    TradeID INT PRIMARY KEY, 
    OrderID INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
     ExecutedQuantity	INT	NOT NULL 
           CHECK (ExecutedQuantity > 0) ,
     ExecutionPrice	DECIMAL(12,2)	NOT NULL
            CHECK (ExecutionPrice > 0),
     ExecutionDate	DATETIME2	NOT NULL,
     BrokerageFee	DECIMAL(12,2)	NOT NULL
              CHECK (BrokerageFee >= 0)
);

