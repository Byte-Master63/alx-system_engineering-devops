# 0x14. MySQL

## 📌 Project Overview
This project focuses on database management using **MySQL**. It covers fundamental and advanced concepts, including database replication, primary keys, foreign keys, joins, and indexing.

## 🏗 Learning Objectives
By the end of this project, you should be able to:
- Understand the role of a **database** and **database management system (DBMS)**.
- Set up a **MySQL server** and execute **SQL queries**.
- Use **primary keys**, **foreign keys**, and **indexes** effectively.
- Perform **database replication** for redundancy and scaling.
- Optimize **query performance** and understand different **MySQL storage engines**.

## 📂 Project Files & Directories
| File/Directory      | Description |
|---------------------|-------------|
| `0-setup_mysql_server` | Script to install and configure MySQL on a server |
| `1-create_database_if_missing.sql` | SQL script to create a database if it doesn’t exist |
| `2-create_user.sql` | SQL script to create a new MySQL user |
| `3-privileges.sql` | SQL script to grant necessary privileges to a MySQL user |
| `4-mysql_replication` | Configuration setup for MySQL database replication |
| `5-filtering_temporary_tables.sql` | SQL script to filter unwanted temporary tables |
| `6-replication_status.sql` | SQL query to check the status of MySQL replication |

## ⚡️ Usage
### Install MySQL Server
```bash
sudo apt update
sudo apt install mysql-server

