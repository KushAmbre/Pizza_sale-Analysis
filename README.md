# 🍕 Pizza Sales Analysis Dashboard

This project provides a comprehensive **Sales Analysis Dashboard** for a fictional pizza company. The goal is to analyze total revenue, order trends, best-selling pizzas, category and size-wise performance, and time-based sales patterns using **SQL** and **Power BI**.

---

## 📊 Dashboard Overview

The interactive dashboard includes key business insights such as:

- **Total Revenue**: ₹817.86K
- **Average Order Value**: ₹38.31
- **Total Pizzas Sold**: 49,574
- **Total Orders**: 21,350
- **Average Pizzas per Order**: 2.32

---

## 📅 Business Insights

### **Business Days & Times**
- Orders peak on **weekends**, especially **Friday/Saturday evenings**.
- **July and January** see the highest monthly order volumes.

### **Sales Performance**
- **Classic** pizza category contributes the highest revenue and order volume.
- **Large** size pizzas contribute the most to total sales.

---

## 🔍 SQL Analysis

### Key Queries Used

| Analysis | SQL Logic |
|---------|-----------|
| **Total Revenue** | `SUM(total_price)` |
| **Average Order Value** | `SUM(total_price) / COUNT(DISTINCT order_id)` |
| **Total Pizzas Sold** | `SUM(quantity)` |
| **Total Orders** | `COUNT(DISTINCT order_id)` |
| **Avg Pizzas per Order** | `SUM(quantity) / COUNT(DISTINCT order_id)` |
| **Daily Trends** | `GROUP BY DATENAME(dw, order_date)` |
| **Monthly Trends** | `GROUP BY DATENAME(month, order_date)` |
| **Category-wise % Sales** | `GROUP BY pizza_category` |
| **Size-wise % Sales** | `GROUP BY pizza_size` |
| **Top 5 by Revenue** | `ORDER BY SUM(total_price) DESC` |
| **Top 5 by Quantity/Orders** | `ORDER BY SUM(quantity)` or `COUNT(order_id)` |

---

## 🧠 Insights Derived

### 🏆 Best Performers
- **Highest Revenue**: Thai Chicken Pizza (₹43K)
- **Most Sold (Quantity)**: Classic Deluxe Pizza (2.5K)
- **Most Orders**: Classic Deluxe Pizza (2.3K)

### ❌ Worst Performers
- **Lowest Revenue**: Brie Carre Pizza (₹12K)
- **Least Sold**: Brie Carre Pizza (490 units)
- **Least Ordered**: Brie Carre Pizza (480 orders)

---

## 🛠️ Tools Used

- **SQL Server** – Data extraction and business logic
- **Power BI** – Data visualization
- **Excel/CSV** – Source data management

---

## 📌 How to Use

1. Load the dataset (`pizza_sales.csv`) into your SQL Server.
2. Run the provided SQL queries to generate results.
3. Import the dataset into Power BI and use filters (e.g., date slider, pizza category).
4. View business KPIs, sales trends, and best/worst selling products.

---

## 📈 Sample Visuals

> ![Dashboard - Home](screenshot1.png)

> ![Dashboard - Best/Worst Sellers](screenshot2.png)
