select * from churn.train;

-- 1. Customer Distribution
select Churn, count(*) as total_customers from churn.train group by Churn;

-- 2. Top Churn Reasons
select Churn_Reason, count(*) as churn_count_cr from churn.train where Churn = "1"
group by Churn_Reason order by churn_count_cr Desc;

-- 3. Satisfaction vs Churn
select Satisfaction_Score, count(*) as churn_count_sc from churn.train 
where Churn = "1" Group by Satisfaction_Score order by Satisfaction_Score;

-- 4. Revenue Loss
select sum(Total_Revenue) as total_revenue_lost from churn.train where Churn = "1";

-- 5. High Value Customer Loss
select avg(CLTV) as avg_cltv_lost from churn.train where Churn = "1";

-- 6. Churn Rate by Contract
SELECT 
  Contract,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn='1' THEN 1 ELSE 0 END) AS churned_customers,
  ROUND(
    SUM(CASE WHEN Churn='1' THEN 1 ELSE 0 END)*100.0 / COUNT(*),2
  ) AS churn_rate
FROM churn.train
GROUP BY Contract;

-- 7. High Risk Customers
select count(*) from churn.train where Tenure_in_Months <6 and Satisfaction_Score <=2;
