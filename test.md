##Preparations

During this test drive we will use DataSunrise and PostgreSQL database installed on the same Azure Virtual Machine. PGAdmin utility will be used to query the database.Configuring PGAdmin
1. Install PGAdmin utility on your PC. You can download it from the official web site: https://www.pgadmin.org/download/

2. Run PGAdmin. You will see only one “PostgreSQL” server in Object Browser tab. To connect to your database, you need to create a new server entry.

3. Click File -> Add Server to create a new server(Please refer "Add Server" image)

4. In the New Server Registration window, input some name into Name text field and input your Azure VM IP address into Host text field. Click OK to save the settings.(Please refer NewServerRegistration image)

5. Connect to your server: double-click its name in the list or right-click it and select Connect.(Please refer "connect" image)

###Creating a table for testing

For testing purposes we’ve created “customers” table mimicking a list of commercial company customers.This is how “customers” table looks like in PGAdmin.To create similar table, perform the following:

1. Run PGAdmin and connect to your database server (see previous subchapter).

2. Select your server and “postgres” database in the Object Browser tab and click “Execute Arbitrary SQL queries” button (marked with red arrow in the screenshot). A new window (Query) will appear.(Please refer "ObjectBroswer" image)

3. Paste the following code into the SQL Editor tab (see screenshot below) and press F5 to execute the query:

CREATE TABLE customers("Order" integer NOT NULL,'"First Name" text,"Last Name" text,"Address" text,"ZIP" text,"Email" text,"Card" character(20),CONSTRAINT customers_pkey PRIMARY KEY ("Order"));INSERT INTO customers VALUES (1223, 'Kathy', 'Abrams', '2 High Street, Wheeling', '32068', 'kittykatty@fugie.com', '4024-0071-8423-6700 ');INSERT INTO customers VALUES (4667, 'Alma', 'Wade', '21 Green Lane, Newport', '21771', 'almwa@nprt.com', '6011-0551-9875-8094 ');INSERT INTO customers VALUES (3427, 'Mary', 'Evans', '13 The Limes, Leighton', '10950', 'evensmary@hitmail.com', '4485-4392-7160-9980 ');
(please refer "SQL Editor" image)
