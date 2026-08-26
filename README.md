## banking_customer_churn_analysis_and_predictive_modeling
Leveraging historical data to drive retention and protect revenue 

## Business Problem
In the highly competitive banking sector, customer retention is essential to sustaining profitability. Since acquiring new customers is considerably more costly than retaining existing ones, banks must prioritize effective retention strategies. However, many banks still lack structured, data-driven methods for proactively identifying customers who are at risk of churning.


## Objevtive
The main goal was to enable the bank to proactively identify customers at high risk of churn and implement more effective retention strategies. To achieve this, the project focused on the following objectives:

* Analyze historical customer and account data to identify the key factors driving customer churn.
* Statistically assess and validate the relationships between customer characteristics and churn behavior.
* Develop a machine learning model to predict the probability of customer churn.
* Create an interactive Tableau dashboard to provide actionable insights and support data-driven customer retention decisions.

## Data and Inputs
The project utilized structured relational banking data stored in SQL Server and organized into normalized tables. The primary data sources included:

* Demographic Table – Contains customer-level information such as age, gender, marital status, education, and income.
* Account Table – Contains account-related attributes, including account type, balance, tenure, and other banking activity indicators.
* Locations Table – Contains geographic information associated with customers, such as city, state, and country.

## Technical approach

The project followed a structured end-to-end analytical approach, combining data engineering, statistical analysis, machine learning, and business intelligence:

* **Data Modeling:** Designed a normalized relational data model linking Demographic, Account, and Location tables.
* **Database & EDA:** Developed an Entity-Relationship Diagram (ERD), implemented the schema in SQL Server, and conducted exploratory data analysis using advanced SQL queries.
* **Data Quality & Preprocessing:** Built reusable Python preprocessing functions to validate data types, identify missing values, assess categorical variables, and detect distribution anomalies and outliers.
* **Statistical Analysis:** Applied statistical hypothesis tests, including Independent Samples t-tests, Chi-Square Tests of Independence, and ANOVA, alongside effect-size measures to assess the significance and strength of relationships between variables and churn.
* **Feature Engineering:** Engineered relevant predictive features and applied appropriate feature-scaling techniques to prepare the data for machine learning.
* **Machine Learning:** Evaluated multiple classification algorithms to identify a strong baseline model for predicting customer churn.
* **Business Intelligence:** Developed an interactive Tableau dashboard aligned with stakeholder requirements to communicate key insights and support data-driven retention decisions.

## Key Skills Demonstrated

* **End-to-End Data Science:** Applied a complete data science workflow spanning SQL, Python, statistical inference, machine learning, and Tableau.
* **Data Modeling & SQL Analytics:** Designed relational data models and performed advanced SQL-based data analysis and exploration.
* **Statistical Inference:** Applied hypothesis testing and statistical methods to identify and validate relationships within a real-world business context.
* **Feature Engineering:** Developed and selected predictive features based on statistical evidence and business relevance.
* **Predictive Modeling:** Built and evaluated machine learning classification models to predict customer churn.
* **Business Intelligence & Visualization:** Designed interactive Tableau dashboards tailored to stakeholder requirements and decision-making needs.
* **Data-Driven Strategy:** Translated analytical findings into actionable insights to support customer retention and business strategy.
