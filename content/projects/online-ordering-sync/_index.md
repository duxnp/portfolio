---
title: Online Ordering Sync
---

## Tech

- C#
- SQL Server
- MySQL
- .NET MySQL Connector

## Problem

When I took over development of this website from the previous developers, they had an very rudimentary process for updating the database.

Some data existed in their accounting system database. This included customers, product prices, vendors, and some other tables. For each table they would manually run a query to select the table contents, wait for the results, then export it to Excel. Sometimes the source table schema didn’t match the destination table. In these cases, the data would be manually altered then saved. In the case of customer data, one needed to determine if there were any new customers since the last update then create new website accounts for them.

Some data existed only in Excel workbooks. This included product specifications that the accounting system wasn’t designed to store. Excel of course has no knowledge of the database schema. Therefore, it has no way to maintain data integrity. You could spend time correcting the source Excel file to make sure all the data fit into the table properly, but someone could undo all that work by changing just one of the thousands of cells. Suddenly the file won’t import properly anymore.

As each Excel file was finished being prepared for the website database, it would be uploaded via a form on the website. A PHP script would then read the file contents and insert it into the database one row at a time. This would often fail if the uploaded file didn't match the table schema or one of the values didn't have the correct data type. This would leave the affected table in an incomplete state.

As you can imagine, this process was excruciating.

## Solution

I created a C# console app to handle the various synchronization tasks. Generally it would grab the data from whatever the source happened to be, retrieve schema information from the website database, then automatically correct any problems with the source data. Then it would use the BulkLoader from .NET MySQL Connector to bulk load the data to a temporary table in the website database. If no errors were encountered, the live table would be swapped with the temporary table.

A solution like this also allows you to add special easily reproducible steps for certain tables. For example, the customer sync step has extra logic to check for new customers that have no website account yet.

An update process that originally took several hours was reduced to several minutes.

## Example Console Output

```
UPDATING CUSTOMERS
------------------
9001 active customers found.
9001 rows bulk loaded into [customers].
2 new customers without a login.

UPDATING PRICES
---------------
Found 13086 active items.
13086 rows bulk loaded into [items].

UPDATING PRODUCTS
---------------
Found metadata for 179 columns
Found 1818 products
Send [products] data to web...
1818 rows bulk loaded into [products]

UPDATING OTHER TABLES
---------------------
Updating [tax] table...
Get [tax] data...
27 records found in [tax].
Send [tax] data to web...
27 rows bulk loaded into [tax]

```
