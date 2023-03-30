# Booker

## Description

Booker is a modern, hotel booking platform that suits all your needs! Customers have the ability to search hotels by location, stars, hotel chain and more to find the perfect place to book a room at. Employees can view and edit the database through our intuitive UI, and can also set bookings to rentings in 1 click.

<img width="1384" alt="Home Screen" src="https://user-images.githubusercontent.com/90425027/228944008-fd21702a-c523-41d5-a188-04c81db08f72.png">
<img width="1384" alt="Hotel Search Page" src="https://user-images.githubusercontent.com/90425027/228944230-5cc4af9d-5886-40c5-9a40-9abe20b3425a.png">
<img width="1384" alt="Edit Database Page" src="https://user-images.githubusercontent.com/90425027/228944547-6a18b31d-908f-456e-8f59-ab5d0b988671.png">

## Details

- _This is a university project built as a proof of concept_
- Developed by Noah do Régo and Alex Clements
- Built with a PERN tech stack (Postgres, Express, React and Node.js)

## Installation

1. Clone the project from https://github.com/NoahdoRegoUO/E-Hotels_Application
   - Ask for access if you need permission
2. Install the required tools (Node.js, npm)
3. Install the required npm packages (react, express, pg and cors) with the command npm install
4. To start the front-end, navigate to src/e-hotels_frontend and run npm start in the terminal
5. To start the backend express server, navigate to src/server and run node index.js
   - [Set up username and password in Postgres if one does not exist]
6. You will then likely have to go to the db.js file (located in e-hotels_application\src\server) and edit your user/password.
7. In pgAdmin 4, under your “postgres” database (if it does not exist, create one), create a new schema with the exact name “ehotels_db” (without the quotations).
8. Run the following ddl files by copying and pasting the code in the pgAdmin query tool, in order:

- ddl_create_tables.sql
- ddl_set_foreign_keys.sql
- ddl_create_triggers.sql
- ddl_insert_sample_data.sql

9. You should now be able to successfully run and use the web application! (use the commands from step 3-4 again)
