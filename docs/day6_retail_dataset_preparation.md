\# Day 6 — Retail Dataset Preparation



\## Objective



The objective of Day 6 is to understand and prepare the retail source data before building intermediate and mart models in dbt.



\## Current Source Entities



The current source entities are:



\- Sales

\- Products

\- Promotions



\## Sales Table



\### Model



`staging.stg\_sales`



\### Grain



One row represents one product sale transaction line.



\### Key Columns



\- sale\_id

\- customer\_id

\- product\_id

\- sale\_date



\### Measures



\- quantity

\- sales\_amount



\### Business Use



This table will be used to calculate revenue, quantity sold, customer purchasing activity, product performance, and sales trends.



\## Products Table



\### Model



`staging.stg\_products`



\### Grain



One row represents one product.



\### Key Columns



\- product\_id



\### Descriptive Columns



\- product\_name

\- category

\- price



\### Business Use



This table will be used to enrich sales data with product attributes such as name, category, and price.



\## Promotions Table



\### Model



`staging.stg\_promotions`



\### Grain



One row represents one promotion for a product within a date range.



\### Key Columns



\- promo\_id

\- product\_id

\- start\_date

\- end\_date



\### Business Use



This table will be used to identify whether sales occurred during promotional periods and to analyse promotion performance.



\## Table Relationships



Sales joins to Products using:



`sales.product\_id = products.product\_id`



Sales joins to Promotions using:



`sales.product\_id = promotions.product\_id`



and



`sales.sale\_date between promotions.start\_date and promotions.end\_date`



\## Data Quality Checks Performed



The following checks were performed:



\- Sales row count

\- Product row count

\- Promotion row count

\- Unique sale ID check

\- Unique product ID check

\- Date range check

\- Sales to product relationship check

\- Sales to promotion relationship check



\## Notes



The raw layer remains unchanged.



The staging layer is used for cleaned and standardised source data.



Intermediate and mart models will be built later in the roadmap.

