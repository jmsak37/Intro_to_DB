:: 1. Authors table & columns
findstr /I /C:"CREATE TABLE AUTHORS" alx_book_store.sql
findstr /I /C:"AUTHOR_ID"             alx_book_store.sql
findstr /I /C:"AUTHOR_NAME"           alx_book_store.sql

:: 2. Books table & foreign key to Authors
findstr /I /C:"CREATE TABLE BOOKS"    alx_book_store.sql
findstr /I /C:"BOOK_ID"               alx_book_store.sql
findstr /I /C:"TITLE"                 alx_book_store.sql
findstr /I /C:"AUTHOR_ID"             alx_book_store.sql
findstr /I /C:"FOREIGN KEY.*AUTHOR_ID" alx_book_store.sql

:: 3. Customers table
findstr /I /C:"CREATE TABLE CUSTOMERS" alx_book_store.sql
findstr /I /C:"CUSTOMER_ID"            alx_book_store.sql
findstr /I /C:"CUSTOMER_NAME"          alx_book_store.sql

:: 4. Orders table & foreign key to Customers
findstr /I /C:"CREATE TABLE ORDERS"    alx_book_store.sql
findstr /I /C:"ORDER_ID"               alx_book_store.sql
findstr /I /C:"CUSTOMER_ID"            alx_book_store.sql
findstr /I /C:"FOREIGN KEY.*CUSTOMER_ID" alx_book_store.sql

:: 5. Order_Details table & FKs to Orders and Books
findstr /I /C:"CREATE TABLE ORDER_DETAILS" alx_book_store.sql
findstr /I /C:"ORDERDETAILID"               alx_book_store.sql
findstr /I /C:"ORDER_ID"                    alx_book_store.sql
findstr /I /C:"BOOK_ID"                     alx_book_store.sql
findstr /I /C:"FOREIGN KEY.*ORDER_ID"       alx_book_store.sql
findstr /I /C:"FOREIGN KEY.*BOOK_ID"        alx_book_store.sql
