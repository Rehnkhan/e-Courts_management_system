# e-Courts Management System

## Overview
The eCourts Management System is a project aimed at digitalizing and automating the functioning of the judiciary in India. This system provides an integrated database to manage information related to court cases, enhancing efficiency, transparency, and accessibility.

## Technologies Used
- **Backend**: Node.js(express.js) 
- **Frontend**: HTML, CSS, JavaScript
- **Database**: MySQL

## Features
- **Digitalization of Case Records**: All case records are digitalized for easy access and management.
- **Automation of Court Processes**: Administrative tasks are automated to reduce manual effort and errors.
- **Enhanced Transparency**: Provides clear and accessible information to all stakeholders.
- **Efficient Case Management**: Streamlines case management to reduce backlog and improve resolution times.


## Getting Started
1. Clone the repository:
   ```
   git clone https://github.com/Rehnkhan/e-Courts_management_system.git

```

2. In your terminal 
```
cd e-Courts_management_system 
```

3. Install dependencies
```
npm install
```

4. Database Setup

Install XAMPP or WAMP (if not already installed).
Start the XAMPP/WAMP server.
Open phpMyAdmin (usually accessible at http://localhost/phpmyadmin/).
Create a new database named ecourtf.sql.
Import the provided database file (ecourtf.sql) into the newly created database.
Update the database connection details in server.js (host, username, password, database name).

5. Start the server
```
nodemon server.js
```

