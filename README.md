# 🐀 Airbnb NYC & Rats – SQL Database Project

## 📌 Overview
This project explores the relationship between Airbnb listings in New York City and external factors such as rat sightings.  
We built a **SQL database** from scratch, connected multiple datasets, and performed analyses to uncover insights about pricing, neighborhood patterns, and ownership concentration.

The final deliverable is this GitHub repository, which includes:
- Database schema (`.sql`)
- Entity Relationship Diagram (ERD)
- SQL queries
- Python code for analysis & reporting

---

## 🔧 Data Pipeline

1. **Acquisition**
   - Airbnb listings dataset (NYC).
   - Rat sightings dataset from NYC open data.

2. **Transformation**
   - Cleaning and normalization of Airbnb attributes (prices, room types, availability).
   - Mapping Airbnb listings to neighborhoods via coordinates.
   - Aggregating rat counts per neighborhood.

3. **Loading**
   - All datasets imported into a SQL database.
   - Created normalized schema with **5 main tables**:
     - `Apartments`
     - `Hosts`
     - `Location`
     - `Neighbourhoods`
     - `Rats`

4. **Analysis**
   - Pricing baselines by neighborhood group and room type.
   - Cross-analysis between rat density and Airbnb prices.
   - Ownership concentration ("Airbnb barons").

5. **Reporting**
   - Python visualizations (matplotlib, seaborn).

---

## 🗂 Repository Structure

- `database/schema.sql` → final schema export.
- `database/erd.png` → entity relationship diagram.
- `database/queries.sql` → SQL queries used.
- `python/` → all analysis code wrapped in functions.

---

## 📊 Entity Relationship Diagram

![ERD](Airbnb_ny-ERD.png)

---

