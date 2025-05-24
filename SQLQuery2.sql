Select Gender,Count(Gender) as Total_Count,
Cast(Count(Gender)*100.0/ (Select Count(*) From stg_Churn) As Decimal(10,2)) As Percentage
From stg_Churn
Group By Gender

Select Contract,Count(Contract) As Total_count,
Cast(Count(Contract)*100.0 / (Select Count(*) From stg_churn) As Decimal(10,2)) As Percentage
From stg_Churn
Group By Contract

Select Customer_Status , Count(Customer_Status) as Total_Count, Sum(Total_Revenue) as Total_Rev,
Sum(Total_Revenue) / (Select Sum(Total_Revenue) From stg_Churn) *100 as Rev_Percentage
From stg_Churn
Group By Customer_Status

Select State,Count(State) As Total_Count,
Cast(Count(State)*100.0 / (Select Count(*) From stg_Churn) As Decimal (10,2)) As Percentage
From stg_Churn
Group By State
Order By Percentage Desc


Select * from prod_Churn