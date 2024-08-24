
// const express = require('express');
// const mysql = require('mysql');

// const app = express();
// app.use(express.json());

// // MySQL Connection Configuration
// const connection = mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     password: '',
//     database: 'ecourt'
// });

// // Connect to MySQL
// connection.connect();

// // Serve HTML page
// app.get('/', (req, res) => {
//     res.sendFile(__dirname + '/index.html');
// });

// // Route to fetch case details by case number
// app.get('/caseDetailsByCaseNumber', (req, res) => {
//     const caseNumber = req.query.caseNumber;
//     const query = `SELECT c.CaseNumber, p.Name AS PartyName, l.Name AS LawyerName, j.Name AS JudgeName, c.CaseDetails AS CaseType, c.FilingDate, c.Status AS CaseStatus, h.HEARING_ID, h.DATETIME AS HearingDateTime FROM casee c INNER JOIN partycasehearing pch ON c.CaseID = pch.CaseID INNER JOIN party p ON pch.PartyID = p.PartyID INNER JOIN lawyerpartycase lpc ON c.CaseID = lpc.CaseID INNER JOIN lawyer l ON lpc.LawyerID = l.LawyerID INNER JOIN judgecase jc ON c.CaseID = jc.CaseID INNER JOIN judge j ON jc.JudgeID = j.JudgeID LEFT JOIN hearing h ON c.CaseID = h.CASE_ID WHERE c.CaseNumber = ?`;

//     connection.query(query, [caseNumber], (error, results) => {
//         if (error) {
//             console.error('Error fetching case details:', error);
//             res.status(500).send('Internal Server Error');
//         } else {
//             res.json(results);
//         }
//     });
// });

// // Route to fetch case details by party name and registration year
// app.get('/caseDetailsByParty', (req, res) => {
//     const partyName = req.query.partyName;
//     const registrationYear = req.query.registrationYear;
//     const query = `SELECT c.CaseNumber, p.Name AS PartyName, l.Name AS LawyerName, j.Name AS JudgeName, c.CaseDetails AS CaseType, c.FilingDate, c.Status AS CaseStatus, h.HEARING_ID, h.DATETIME AS HearingDateTime FROM casee c INNER JOIN partycasehearing pch ON c.CaseID = pch.CaseID INNER JOIN party p ON pch.PartyID = p.PartyID INNER JOIN lawyerpartycase lpc ON c.CaseID = lpc.CaseID INNER JOIN lawyer l ON lpc.LawyerID = l.LawyerID INNER JOIN judgecase jc ON c.CaseID = jc.CaseID INNER JOIN judge j ON jc.JudgeID = j.JudgeID LEFT JOIN hearing h ON c.CaseID = h.CASE_ID WHERE p.Name = ? AND YEAR(p.RegistrationDate) = ?`;

//     connection.query(query, [partyName, registrationYear], (error, results) => {
//         if (error) {
//             console.error('Error fetching case details:', error);
//             res.status(500).send('Internal Server Error');
//         } else {
//             res.json(results);
//         }
//     });
// });

// // Route to fetch lawyer details by lawyer ID or license number
// app.get('/lawyerDetails', (req, res) => {
//     const lawyerId = req.query.lawyerId;
//     const licenseNumber = req.query.licenseNumber;
//     const query = `SELECT l.LawyerID, l.Name AS LawyerName, l.PracticeArea, l.GMAIL AS Email, l.LicenseNumber, c.CaseID, c.CaseNumber, c.CaseDetails AS CaseType, c.FilingDate, c.Status AS CaseStatus FROM lawyer l LEFT JOIN lawyerpartycase lpc ON l.LawyerID = lpc.LawyerID LEFT JOIN casee c ON lpc.CaseID = c.CaseID WHERE l.LawyerID = ? OR l.LicenseNumber = ?`;

//     connection.query(query, [lawyerId, licenseNumber], (error, results) => {
//         if (error) {
//             console.error('Error fetching lawyer details:', error);
//             res.status(500).send('Internal Server Error');
//         } else {
//             res.json(results);
//         }
//     });
// });

// // Start the server
// const PORT = process.env.PORT || 3000;
// app.listen(PORT, () => {
//     console.log(`Server is running on port ${PORT}`);
// });
