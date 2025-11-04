# 🚕 OLA Rider Retention Strategy : Data Analysis Project

_Analyze ride-hailing data to understand key factors influencing booking success, cancellation rates, and revenue, ultimately leading to a data-driven Rider Retention Strategy for OLA in Bengaluru._

  ![Image](https://github.com/user-attachments/assets/f771dec2-aa66-48b4-be37-b8de32ec71c8)

---

## 📌 Table of Contents
- <a href="#overview">Overview</a>
- <a href="#business-problem">Business Problem</a>
- <a href="#dataset">Dataset</a>
- <a href="#tools--technologies">Tools & Technologies</a>
- <a href="#project-structure">Project Structure</a>
- <a href="#data-cleaning--preparation">Data Cleaning & Preparation</a>
- <a href="#exploratory-data-analysis-eda">Key Analytical Areas</a>
- <a href="#research-questions--key-findings">Research Questions & Key Findings</a>
- <a href="#dashboard">Dashboard</a>
- <a href="#how-to-run-this-project">Data Flow & Linkage</a>
- <a href="#final-recommendations">Final Recommendations</a>
- <a href="#author--contact">Author & Contact</a>

---
<h2><a class="anchor" id="overview"></a>Overview</h2>

This project analyzes **100,000 rows** of OLA ride-hailing data to evaluate key operational metrics, including booking success rates, cancellation causes, and vehicle performance. The insights derived from this analysis are used to formulate a data-driven strategy aimed at significantly improving both **rider and driver retention**.

---
<h2><a class="anchor" id="🛑 The Core Business Problem"></a>Business Problem</h2>

High cancellation rates (both customer and driver-initiated) and inconsistent service quality directly impact OLA's revenue and market share. The analysis aims to address the following pain points:
- **Revenue Leakage:** Unsuccessful bookings (cancellations and incomplete rides) result in lost revenue opportunities.
- **Customer Churn:** Frequent or unexplained cancellations lead to customer dissatisfaction and a high probability of customers switching to competitors.
- **Driver Dissatisfaction:** Inefficient routing, low ratings, or unfair cancellation penalties can lead to driver churn, reducing the overall fleet supply.
- **ISub-optimal Fleet Performance:** Lack of clarity on which vehicle types (e.g., Mini, Sedan, Prime) are most profitable or efficient prevents optimized resource allocation and pricing.

---
<h2><a class="anchor" id="🔎Key Analytical Areas Addressed by the OLA Project"></a>Key Analytical Areas </h2>

High cancellation rates (both customer and driver-initiated) and inconsistent service quality directly impact OLA's revenue and market share. The analysis aims to address the following pain points::
- **💰 Sales Trends Analysis:** Evaluation of historical booking patterns (Ride Volume and Total Booking Value) to understand overall revenue health and growth.
- **🚗 Vehicle Type Performance:** Analysis of vehicle-specific metrics (performance, distance, and booking value impact) to optimize fleet utilization and pricing.
- **❌ Cancellation Analysis:** Pinpointing the primary reasons for customer and driver-initiated cancellations to identify friction points and reduce revenue l
- **⭐ Ratings and Quality Analysis:** Comparing Customer and Driver ratings to diagnose service quality gaps and target specific areas for improvement.
- **🌍 Geospatial & Time-Series Dependency:** Investigation of ride demand, cancellation spikes, and successful bookings across different geographic regions and time-based factors (e.g., peak hours, weekends, seasonal weather).
---
<h2><a class="anchor" id="dataset"></a>Dataset</h2>

- Multiple CSV files located in `/data/` folder (sales, vendors, inventory)
- Summary table created from ingested data and used for analysis

---

<h2><a class="anchor" id="tools--technologies"></a>Tools & Technologies</h2>

- **Google Sheet** -  ( Used for basic data manipulation, cleanup, and filtering the initial dataset )
- **SQL** -  ( Complex data transformation, including the use of Common Table Expressions (CTEs), Joins, and advanced Filtering to create analytical views (e.g., aggregating cancellation reasons )
- **Power BI** -  ( Creation of the final interactive dashboard and Key Performance Indicator (KPI) tracking )
- **GitHub** -  ( Repository for storing all project files, including SQL scripts and the Power BI file )

---
<h2><a class="anchor" id="project-structure"></a>Project Structure</h2>

```
OLA-Rider-Retention-Strategy/
├── README.md                                 (The main project documentation file)
├── Ola_Analytics_Dashboard.pbix              (The final, interactive Power BI file)
├── Ola_Data_Queries.sql                      (Contains all SQL transformation, aggregation, and View creation scripts)
├── Source_Data/
│   └── OLA_Booking_Data.csv                  (The raw 100,000 row dataset)
└── Visualizations/                           (Snapshots of key dashboard sections)
    ├── Ola_Dashboards_Full_View.jpg          
    ├── Ola_Performance_Summary.png           (Visual for Step 1: Overall Performance)
    ├── Ola_Vehicle_Metrics.png               (Visual for Step 2: Vehicle Type Breakdown)
    ├── Ola_Revenue_Trends.png                (Visual for Step 3: Revenue Insights)
    ├── Ola_Cancellations_Analysis.png        (Visual for Step 4: Cancellation Analysis)
    └── Ola_Ratings_Overview.png              (Visual for Step 5: Ratings Overview)
```
<h2><a class="anchor" id="exploratory-data-analysis-eda"></a>📈 OLA Bookings and Cancellation Metrics</h2>

**🎯 Core Volume & Value :**
- **Total Bookings:** $\text{100,000}$ (Total number of ride requests received).
- **Total Booking Value:** $\text{26.97M}$ (Total revenue generated from all successful bookings).
- **Successful Rides:** $\text{26,924}$ ($\text{100,000}$ Total Bookings minus $\text{73,076}$ Total Cancellations).

**❌ Cancellation Breakdown :**
- **Total Cancellations:** $\text{73,076}$ (Total count of rides canceled, both driver and customer).
- **Driver-Cancelled Rides:** $\text{45,416}$ (Represents $\text{62.15\%}$ of all cancellations, making it the primary cause of lost revenue).
- **Customer-Cancelled Rides:** $\text{22,530}$ (The count of rides canceled by the customer).

**⭐ Service Quality Metrics:**
- **Overall Driver Rating:** $\text{4.30}$
- **Overall Customer Rating:** $\text{4.01}$
---
