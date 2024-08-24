var express=require('express');
var router=express.Router();
var database=require('../dbms')
router.get("/",function(request,response,next)
{
var query=" SELECT c.CaseNumber,p.Name AS PartyName,l.Name AS LawyerName,j.Name AS JudgeName,c.CaseDetails AS CaseType,c.FilingDate,c.Status AS CaseStatus,h.HEARING_ID,h.DATETIME AS HearingDateTime FROM `casee` c INNER JOIN `partycasehearing` pch ON c.CaseID = pch.CaseID INNER JOIN `party` p ON pch.PartyID = p.PartyID INNER JOIN `lawyerpartycase` lpc ON c.CaseID = lpc.CaseID INNER JOIN `lawyer` l ON lpc.LawyerID = l.LawyerID INNER JOIN `judgecase` jc ON c.CaseID = jc.CaseID INNER JOIN  `judge` j ON jc.JudgeID = j.JudgeID LEFT JOIN `hearing` h ON c.CaseID = h.CASE_ID WHERE c.CaseNumber = 'C/2022/010';"
database.query(query,function(error,data){
    if(error){
throw error;
    }
    else{
response.render('')

    }
});

});
module.exports=router;