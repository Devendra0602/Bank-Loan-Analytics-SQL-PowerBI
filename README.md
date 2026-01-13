# 📊 Bank Loan Analytics Dashboard | SQL & Power BI

## 📌 Project Overview
The **Bank Loan Analytics Dashboard** is an end-to-end data analytics project designed to analyze bank loan data and evaluate loan performance, repayment behavior, and credit risk.

The project uses **SQL Server** for data analysis and **Power BI** for interactive visualization, enabling stakeholders to monitor key loan metrics, compare good and bad loans, analyze trends over time, and drill down into individual loan records.

---

## 🎯 Business Objectives
- Analyze overall loan applications and funding performance  
- Evaluate repayment behavior and loan quality  
- Identify patterns in good vs bad loans  
- Track monthly trends in loan applications and disbursements  
- Enable loan-level analysis using drill-through functionality  

---

## 🛠 Tools & Technologies Used
- **SQL Server** – Data querying, aggregations, KPI calculations  
- **Power BI** – Interactive dashboards, DAX measures, drill-through  
- **Microsoft Excel** – Initial data exploration and validation  

---

## 🧮 SQL Analysis Summary
SQL was used to perform structured analysis and calculate key business metrics, including:

- **Key KPIs**
  - Total Loan Applications  
  - Total Funded Amount  
  - Total Amount Received  
  - Average Interest Rate  
  - Average Debt-to-Income (DTI)  

- **Time-Based Analysis**
  - Month-to-Date (MTD) and Previous Month-to-Date (PMTD) comparisons  
  - Monthly loan application trends  

- **Loan Quality Classification**
  - **Good Loans:** Fully Paid, Current  
  - **Bad Loans:** Charged Off  

- **Dimensional Analysis**
  - Loan Status  
  - State  
  - Purpose  
  - Employment Length  
  - Loan Term  
  - Home Ownership  

---

## 📈 Power BI Dashboard Preview

### 🔹 Summary Dashboard
Shows high-level KPIs, good vs bad loan comparison, and monthly trends.

![Summary Dashboard](images/summary.png)

---

### 🔹 Loan Overview & Analysis
Provides insights by loan purpose, term, employment length, and home ownership.

![Overview Dashboard](images/overview.png)

---

### 🔹 Loan Details Page
Displays individual loan records and supports drill-through analysis.

![Details Dashboard](images/details.png)

---

## 🧭 Drill-Through Functionality
Drill-through is implemented to allow users to:
- Right-click on summary visuals (e.g., loan status or category)
- Navigate to the **Details page**
- View loan-level records filtered based on the selected context  

This feature bridges high-level insights with granular data exploration.

---

## 📂 Project Structure
Bank-Loan-Analytics-SQL-PowerBI/
├── sql/
│ └── bank_loan_analysis.sql
├── powerbi/
│ └── Bank_Loan_Report.pbix
├── images/
│ ├── summary.png
│ ├── overview.png
│ └── details.png
└── README.md


---

## 📌 Key Insights
- Majority of loan applications fall under **good loan categories**  
- **Debt consolidation** is the most common loan purpose  
- Loan applications show consistent monthly trends  
- **Charged-off loans** generally have higher interest rates and DTI values  

---

## 🚀 Conclusion
This project demonstrates a complete **data analytics workflow**, from SQL-based data analysis to interactive Power BI reporting. It highlights how analytics can support **performance monitoring, risk assessment, and data-driven decision-making** in the banking domain.

---

📬 *Feel free to connect via GitHub or LinkedIn for feedback or collaboration.*
