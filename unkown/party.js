// const express = require('express');
// const mysql = require('mysql');
// const app = express();
// const port = 5000;

// const connection = mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     password: '',
//     database: 'ecourt'
// });

// // Serve HTML file
// app.get('/', (req, res) => {
//     res.sendFile(__dirname + '/party.html');
// });

// // Route to fetch case details based on party name and registration year
// app.get('/caseDetails', (req, res) => {
//     const partyName = req.query.partyName;
//     const registrationYear = req.query.registrationYear;
//     const query = `
//     SELECT 
//         c.CaseNumber,
//         p.Name AS PartyName,
//         l.Name AS LawyerName,
//         j.Name AS JudgeName,
//         c.CaseDetails AS CaseType,
//         c.FilingDate,
//         c.Status AS CaseStatus,
//         h.HEARING_ID,
//         h.DATETIME AS HearingDateTime
//     FROM 
//         casee c
//     INNER JOIN 
//         partycasehearing pch ON c.CaseID = pch.CaseID
//     INNER JOIN 
//         party p ON pch.PartyID = p.PartyID
//     INNER JOIN 
//         lawyerpartycase lpc ON c.CaseID = lpc.CaseID
//     INNER JOIN 
//         lawyer l ON lpc.LawyerID = l.LawyerID
//     INNER JOIN 
//         judgecase jc ON c.CaseID = jc.CaseID
//     INNER JOIN 
//         judge j ON jc.JudgeID = j.JudgeID
//     LEFT JOIN 
//         hearing h ON c.CaseID = h.CASE_ID
//     WHERE 
//         p.Name = ?
//         AND YEAR(c.FilingDate) = ?;
//     `;

//     connection.query(query, [partyName, registrationYear], (error, results, fields) => {
//         if (error) {
//             console.error('Error fetching case details:', error);
//             res.status(500).send('Internal Server Error');
//         } else {
//             res.json(results);
//         }
//     });
// });

// app.listen(port, () => {
//     console.log(`Server is running on http://localhost:${port}`);
// });
