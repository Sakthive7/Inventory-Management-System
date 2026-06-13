# Inventory Management System (IMS)

## 📌 Project Overview

The Inventory Management System (IMS) is a SQL-based database project developed using MySQL. It helps businesses manage products, categories, suppliers, stock levels, and inventory operations efficiently.

This project demonstrates database design, table relationships, CRUD operations, joins, views, stored procedures, triggers, and inventory management concepts.

---

## 🚀 Features

- Manage Product Categories
- Manage Suppliers
- Manage Products
- Inventory Stock Tracking
- Foreign Key Relationships
- CRUD Operations
- SQL Joins
- Aggregate Functions
- Views
- Stored Procedures
- Triggers
- Inventory Reports

---

## 🗂 Database Structure

### Categories
Stores product category information.

| Column | Data Type |
|----------|----------|
| category_id | INT |
| category_name | VARCHAR(100) |

### Suppliers
Stores supplier details.

| Column | Data Type |
|----------|----------|
| supplier_id | INT |
| supplier_name | VARCHAR(100) |
| contact_person | VARCHAR(100) |
| phone | VARCHAR(20) |
| email | VARCHAR(100) |

### Products
Stores product details and stock information.

| Column | Data Type |
|----------|----------|
| product_id | INT |
| product_name | VARCHAR(100) |
| category_id | INT |
| supplier_id | INT |
| unit_price | DECIMAL(10,2) |
| stock_qty | INT |
| reorder_level | INT |

---

## 🔗 Relationships

- One Category → Many Products
- One Supplier → Many Products

```sql
FOREIGN KEY (category_id)
REFERENCES Categories(category_id)

FOREIGN KEY (supplier_id)
REFERENCES Suppliers(supplier_id)
