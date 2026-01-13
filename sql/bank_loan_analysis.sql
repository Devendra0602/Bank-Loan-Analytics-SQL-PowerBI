select * from bank_loan_data

--
select count(id) as Total_loan_Applications
from bank_loan_data

select count(id) as MTD_Total_loan_Applications
from bank_loan_data
where MONTH(issue_date) = 12 

select count(id) as PMTD_Total_loan_Applications
from bank_loan_data
where MONTH(issue_date) = 11 

--
select sum(loan_amount) as Total_Funded_Amount
from bank_loan_data

select sum(loan_amount) as MTM_Total_Funded_Amount
from bank_loan_data
where MONTH(issue_date) = 12 

select sum(loan_amount) as PMTM_Total_Funded_Amount
from bank_loan_data
where MONTH(issue_date) = 11

--
select sum(total_payment) as Total_Amount_Received
from bank_loan_data

select sum(total_payment) as MTD_Total_Amount_Received
from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date)=2021

select sum(total_payment) as PMTD_Total_Amount_Received
from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date)=2021

--
select round(avg(int_rate)*100,2 )as Avg_Interest_Rate
from bank_loan_data

select round(avg(int_rate)*100,2 )as MTD_Avg_Interest_Rate
from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date)=2021

select round(avg(int_rate)*100,2 )as PMTD_Avg_Interest_Rate
from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date)=2021

--
select round(avg(dti)*100,2 )as Avg_Interest_Rate
from bank_loan_data

select round(avg(dti)*100,2 )as MTD_Avg_Interest_Rate
from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date)=2021

select round(avg(dti)*100,2 )as PMTD_Avg_Interest_Rate
from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date)=2021

--
select (count(case when loan_status='Fully Paid' or loan_status='Current' then id end)*100.0)
/
count(id) as Good_loan_Percentage
from bank_loan_data

select COUNT(id) as Good_loan_Application
from bank_loan_data
where loan_status in ('Fully Paid' , 'Current')

select sum(loan_amount) as Good_loan_Funded_Amount
from bank_loan_data
where loan_status in ('Fully Paid' , 'Current')

select sum(total_payment)as Good_loan_Total_Amount_Received
from bank_loan_data
where loan_status in ('Fully Paid' , 'Current')

--
select (count(case when loan_status='Charged Off' then id end )*100.0) /
count(id) as bad_loan_Percentage
from bank_loan_data

select COUNT(id) as Bad_loan_Applications
from bank_loan_data
where loan_status ='Charged Off'

select sum(loan_amount) as Bad_loan_Funded_Amount
from bank_loan_data
where loan_status ='Charged Off'

select sum(total_payment) as Bad_loan_Funded_Amount
from bank_loan_data
where loan_status ='Charged Off'

--
SELECT
    loan_status,
    COUNT(id) AS LoanCount,
    SUM(total_payment) AS Total_Amount_Received,
    SUM(loan_amount) AS Total_Funded_Amount,
    AVG(int_rate * 100) AS Interest_Rate,
    AVG(dti * 100) AS DTI
FROM
    bank_loan_data
GROUP BY
    loan_status

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status

--
SELECT 
	MONTH(issue_date) AS Month_Nunber, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

--
SELECT address_state, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP By address_state
order by Total_Loan_Applications desc

--
select term,
COUNT(id) AS Total_Loan_Applications,
SUM(loan_amount) AS Total_Funded_Amount,
SUM(total_payment) AS Total_Amount_Received
from bank_loan_data
group by term

--
select emp_length,
COUNT(id) AS Total_Loan_Applications,
SUM(loan_amount) AS Total_Funded_Amount,
SUM(total_payment) AS Total_Amount_Received
from bank_loan_data
group by emp_length
order by emp_length

--
select purpose,
COUNT(id) AS Total_Loan_Applications,
SUM(loan_amount) AS Total_Funded_Amount,
SUM(total_payment) AS Total_Amount_Received
from bank_loan_data
group by purpose
order by Total_Loan_Applications desc
--
select home_ownership,
COUNT(id) AS Total_Loan_Applications,
SUM(loan_amount) AS Total_Funded_Amount,
SUM(total_payment) AS Total_Amount_Received
from bank_loan_data
group by home_ownership
order by Total_Loan_Applications desc