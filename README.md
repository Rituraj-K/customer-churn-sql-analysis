# Customer Experience & Churn Analysis using SQL

## Project Overview

This project analyzes customer churn data using SQL to identify key drivers of customer attrition, understand customer experience patterns, and quantify business impact in terms of revenue loss.

## Objective

To perform root cause analysis of customer churn and provide actionable insights to improve customer retention and business performance.

## Tools Used

* SQL (MySQL)
* Data Analysis

## Dataset

The dataset contains customer demographics, service usage, satisfaction scores, churn reasons, and financial metrics.

Data file: `data/train.csv`

## SQL Queries

All analysis queries are available in:
`sql/data_analysis_queries.sql`

## Key Analysis Performed

* Customer churn distribution analysis
* Root cause analysis using churn reasons
* Customer experience analysis using satisfaction scores
* Revenue impact analysis of churned customers
* Segmentation analysis across contract type and tenure
* Identification of high-risk and high-value customers

## Key Insights

* Churn is primarily driven by competitive factors such as better device offerings and pricing from competitors
* Customers with low satisfaction scores are significantly more likely to churn
* Total revenue loss due to churn is approximately **2.18M**
* High-value customers (CLTV) are also part of the churned segment
* New customers (low tenure) are more vulnerable to churn

## Business Recommendations

* Improve competitive positioning through better pricing and product offerings
* Enhance onboarding experience for new customers
* Target low-satisfaction customers with proactive retention strategies
* Bundle value-added services to improve customer engagement

## Conclusion

This project demonstrates how SQL can be used to extract actionable insights, perform root cause analysis, and support data-driven decision-making in customer retention strategies.
