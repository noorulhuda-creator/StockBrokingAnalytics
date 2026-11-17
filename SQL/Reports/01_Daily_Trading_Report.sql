-- Report: Daily Trading Turnover and Brokerage Revenue
-- Purpose: Calculate the total value of executed trades and
-- brokerage revenue earned by Apex Securities for each trading day.
SELECT 
    CAST(ExecutionDate AS DATE) AS TradeDate,
    SUM(ExecutedQuantity * ExecutionPrice) AS DailyTurnover,
    SUM(BrokerageFee) AS DailyBrokerageRevenue 
FROM Trades
GROUP BY CAST(ExecutionDate AS DATE)
ORDER BY TradeDate asc;
