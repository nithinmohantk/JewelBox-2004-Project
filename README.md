# JewelBox (2004) – Jewellery Shop Management System

About

JewelBox was conceived and built in 2004 as an MCA mid-term project to manage day‑to‑day operations of a jewellery shop: stock, pricing, purchases, sales/billing, and basic user access. It began as a classic VB6 + Microsoft Access desktop application and, as part of learning exercises, was subsequently ported/refactored into .NET (VB.NET and C#) and Java implementations with alternative database backends (SQL Server and MySQL via ODBC).

This repository preserves those iterations for reference and historical learning.

Repository structure

- JewelBox VB
  - Original implementation in Visual Basic 6.0 targeting a local desktop database (initially Microsoft Access).
  - Uses ADO (ActiveX Data Objects) for data access and VB6 Data/Forms for UI.
  - Suitable for single-user desktop or small LAN with shared DB.
- JewelBox VB_new
  - A refined iteration of the VB6 edition with UI and module cleanup and incremental feature additions.
  - Same technology baseline as “JewelBox VB,” intended to improve maintainability and UX.
- JewelBox VB.NET
  - Port to .NET Framework (1.1/2.0) using Windows Forms and ADO.NET.
  - Introduces clearer separation between UI, data access, and business rules compared to VB6.
- JewelBox C#.NET
  - C# WinForms counterpart on .NET Framework (1.1/2.0).
  - Mirrors the VB.NET structure with ADO.NET for data access and configurable connection strings.
- JewelBox VB MYSQL
  - Variant oriented to MySQL as the database via ODBC from a VB (classic) client.
  - Useful for demonstrating cross‑DB portability and ODBC connectivity patterns of the time.
- JewelBox Java
  - Java SE desktop client (Swing-based UI) using JDBC.
  - Intended to work with MySQL (via Connector/J) or JDBC‑ODBC bridge for experimentation.

- JewelBox.sql
  - Database DDL and stored procedures in Microsoft SQL Server T‑SQL syntax.
  - Defines core entities and CRUD for login/auth scaffolding.

What was used in 2004

- Desktop client technologies
  - Visual Basic 6.0 (VB6): Forms, Modules, ADO 2.x, MDAC 2.7/2.8
  - .NET Framework 1.1/2.0: Windows Forms, ADO.NET (DataSets/DataTables, Odbc/OleDb/SqlClient providers)
  - Java 1.4/5 (J2SE): Swing, JDBC
- Databases
  - Microsoft Access 2000/2003 (for the earliest VB6 iteration)
  - Microsoft SQL Server 2000/2005 (T‑SQL schema in JewelBox.sql)
  - MySQL 4/5 (accessed via ODBC or MySQL Connector/J)
- IDEs and tooling
  - Visual Studio 6.0 (VB6)
  - Visual Studio .NET 2003 / Visual Studio 2005
  - JDK 1.4/5.0, Ant/Javac (for Java build), MySQL ODBC driver and/or Connector/J

High-level architecture

- Desktop, thick‑client, 2‑tier topology (client app connects directly to the database).
- Layering inside the client:
  - Presentation: WinForms (VB.NET/C#), VB6 Forms, or Java Swing.
  - Business logic: validation, pricing/rate application, and simple rules embedded in forms/modules.
  - Data access: ADO (VB6) or ADO.NET (VB.NET/C#) or JDBC (Java), optionally via ODBC.
- Database layer:
  - Relational schema for stock, sales, purchase, billing, staff, and rates.
  - SQL Server T‑SQL script includes stored procedures for Login (insert/select/update/delete) and tables with appropriate collations.

Functional modules

- Master data: Item types, jewellery categories, salesmen/staff.
- Inventory & stock: Item intake, gross/net weight tracking, stone weight/amount, labour charges.
- Sales & billing: Billing entries with amount calculations and rate application.
- Purchases & receiving: Orders and receipts from suppliers; backorder tracking.
- Exchange/returns: Handling exchanges with rate adjustments.
- Pricing/rates: Daily rates for gold (22/24ct), silver, platinum.
- Security/login: Simple login table and stored procedures.

Data model at a glance (from JewelBox.sql)

- Tables (non-exhaustive)
  - Stock: Item details, weights, stone/labour costs, status, and jewellery type.
  - Sales: Sales transactions referencing items, bill numbers, salesmen, and amounts.
  - BILL: Billing records capturing bill type, amounts, timestamps, and customer info.
  - Purchase / Received: Purchase orders and receipts against orders.
  - Exchange: Records of item exchanges with weights and rates.
  - Rate: Daily precious metal rates (gold 22/24ct, silver, platinum).
  - SalesMan: Staff profiles and employment lifecycle fields.
  - StockLevel: Thresholds for reorder/safety/surplus danger levels.
  - Login: Simple credentials table used by Login* stored procedures.
- Stored procedures
  - LoginInsert, LoginSelect, LoginUpdate, LoginDelecte (typo preserved from original script).
- Notes
  - The script uses SQL Server collation SQL_Latin1_General_CP1_CI_AS and SQL Server DDL; run it on SQL Server (not MySQL) as-is.
  - The MySQL‑targeting variants typically mirror this schema conceptually but require MySQL‑specific DDL.

Building and running

- Common database setup
  - SQL Server
    - Create a database (e.g., JewelBox).
    - Execute JewelBox.sql on SQL Server 2000/2005 (or compatible).
    - Create a SQL login/user with appropriate permissions.
  - MySQL
    - Create a database and translate/port the schema (JewelBox.sql is T‑SQL; adjust data types and DDL accordingly).
    - Install and configure MySQL ODBC driver (for VB) or MySQL Connector/J (for Java).
- Visual Basic 6.0 (JewelBox VB / JewelBox VB_new / VB MYSQL)
  - Requirements: Windows (32‑bit recommended for driver compatibility), VB6 IDE, MDAC 2.8, Access drivers or MySQL ODBC.
  - Open the .vbp project file in VB6.
  - Update any hard‑coded connection strings/DSN names in code or configuration modules.
  - Build from IDE and run.
- .NET (JewelBox VB.NET / JewelBox C#.NET)
  - Requirements: .NET Framework 1.1 or 2.0; Visual Studio .NET 2003 or 2005.
  - Open the solution/project file (.sln/.vbproj/.csproj).
  - Update app.config connection strings (SqlClient for SQL Server, Odbc/OleDb for MySQL/Access).
  - Restore any missing references, build, and run.
- Java (JewelBox Java)
  - Requirements: JDK 1.4/5.0; MySQL Connector/J in the classpath (when using MySQL).
  - Compile sources (javac) and run the main class.
  - Configure JDBC URL, username, and password (e.g., in a properties file or constants).

Design considerations and constraints

- Targeted small shops with minimal concurrency; optimistic updates or last‑write‑wins in many flows.
- Desktop printing/forms assumed; limited concern for multi‑branch synchronization.
- Security model is basic (Login table); no password hashing in the original education-era implementation.
- Internationalization and Unicode handling depend on the platform/collation; SQL Server collation is explicitly set in DDL.

Known limitations and tips

- The provided SQL script is for SQL Server; for MySQL, port the DDL and remove SQL Server–specific features (collation syntax, money types, stored procedure syntax).
- Older ODBC and ADO stack components are easiest to run on a 32‑bit OS or with 32‑bit drivers.
- Connection strings may be embedded in code in some variants; search for “ConnectionString”, “DSN=”, “Provider=”, or “SqlConnection” to update.
- Legacy code style and controls reflect 2004‑era practices (DataSet/DataTable, DataGrid, tightly coupled forms).

License

See LICENSE in the repository root for licensing details.

Acknowledgements

- Built originally as an academic project in 2004 and extended across stacks to learn VB6, .NET, Java, and database portability.
- Thanks to the open-source communities around VB, .NET, Java, MySQL, and SQL Server that made learning and experimentation possible.