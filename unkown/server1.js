// const express = require('express');
// const mysql = require('mysql');

// const app = express();

// // MySQL Connection Configuration
// const connection = mysql.createConnection({
//     host: 'localhost',
//     port:'5000',
//     user: '',
//     password: '',
//     database: 'dbms'
// });

// // Connect to MySQL
// connection.connect();

// // Serve HTML page
// app.get('/', (req, res) => {
//     res.sendFile(__dirname + '/p1.html');
// });

// // Route to fetch case details based on CaseID and CaseNumber
// app.get('/caseDetails', (req, res) => {
//     const caseID = req.query.id;
//     const caseNumber = req.query.number;
    
//     const sql = `SELECT * FROM casee WHERE CaseID = ? AND CaseNumber = ?`;
//     connection.query(sql, [caseID, caseNumber], (error, results) => {
//         if (error) {
//             console.error('Error fetching case details:', error);
//             res.status(500).send('Internal Server Error');
//         } else {
//             res.json(results);
//         }
//     });
// });

// app.post('/get_case_details',async (req,res)=>{
    
// })

// // Close the MySQL connection when the server is closed
// app.on('close', () => {
//     connection.end();
// });




// // Start the server
// const PORT = process.env.PORT || 5000;
// app.listen(PORT, () => {
//     console.log(`Server is running on port ${PORT}`);
// });
