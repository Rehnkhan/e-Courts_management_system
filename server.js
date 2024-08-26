const ex=require('express')
const cors=require('cors')
const multer=require('multer')
const fs=require('fs')
const disk=multer.diskStorage({
    destination:(req,file,cb)=>{
        return cb(null,'./images')
    },
    filename:(req,file,cb)=>{
        return cb(null,file.originalname)
    }
})
const image=multer({storage:disk})
const mysql=require('mysql2/promise')
const bodyParser = require('body-parser')
const pool=mysql.createPool({
    connectionLimit:10,
    host:'localhost',
    port:'3306',
    user:'root',
    password:'',
    database:'ecourt'
})
const app=ex()
app.use(cors({
    methods:'POST',
    origin:'*'
}))
app.use(ex.urlencoded({extended:true}))
app.use(ex.json())
app.use(bodyParser.json({limit:'50mb'}))
app.use(ex.static(__dirname))
app.get('/p1',(req,res)=>{
    res.sendFile(`${__dirname}/templates/p1.html`)
})

app.post('/login',image.single('pic'),async (req,res)=>{
    let result=await querydatabase('select max(court_id) as max from court')
    let a='dhcsac'
    let b=Buffer.from(a,'base64')
    fs.writeFileSync('./images/hdsc.png',b)
    let max=result.result[0].max
    let pic={pic:fs.readFileSync(`./images/${req.file.filename}`).toString('base64'),name:`${req.file.filename}`}

     result= await querydatabase('insert into court values(?,?,?,?,?,?)',[++max,req.body.name,req.body.location,JSON.stringify({
        ph:req.body.ph,email:req.body.email
     }),JSON.stringify({day:12,year:2004,month:3}),JSON.stringify(pic)])
     fs.unlinkSync(`./images/${req.file.filename}`)
    if(result.status=='err'){
        res.send('err')
        return
    }
    res.send('success')
})

app.get('/p',(req,res)=>{
    res.sendFile(__dirname+'/temp/index.html')
})

// app.get('/case', (req, res) => {
//     res.sendFile(__dirname + '/templates/case.html');
//   });

//   app.get('/filing', (req, res) => {
//     res.sendFile(__dirname + '/templates/filing.html');
//   });

//   app.get('/location', (req, res) => {
//     res.sendFile(__dirname + '/templates/location.html');
//   });

//   app.get('/c1', (req, res) => {
//     res.sendFile(__dirname + '/templates/c1.html');
//   });

//   app.get('/party', (req, res) => {
//     res.sendFile(__dirname + '/templates/party.html');
//   });

//   app.get('/status', (req, res) => {
//     res.sendFile(__dirname + '/templates/status.html');
//   });

  

//   templates\c1.html
// templates\party.html
// templates\status.html

app.post('/get_case_details',async (req,res)=>{
    let result=await querydatabase('select CaseNumber,Status,caseid,courtid from casee where CaseNumber=?',[req.body.cnr])
    if(result.status=='err'){
        res.json({status:'unable'})
        return
    }
    res.json({status:'done',data:result.result})
})


app.post('/get_party_details',async (req,res)=>{
    let result=await querydatabase('select p.*,c.CaseNumber from party p,casee c where p.name=? and c.CaseNumber="C/2022/002"',[req.body.party])
    if(result.status=='err'){
        res.json({status:'unable'})
        return
    }
    res.json({status:'done',data:result.result})
})
app.post('/get_case1_details',async (req,res)=>{
    let result=await querydatabase('select * from casee where CaseNumber=?;',[req.body.case1])
    if(result.status=='err'){
        res.json({status:'unable'})
        return
    }
    res.json({status:'done',data:result.result})
})

app.post('/get_court_details',async (req,res)=>{
    let result=await querydatabase('select p.*,c.CaseNumber,l.Name,co.CourtID from party p,casee c,lawyer l,court co where p.name=? and c.CaseNumber="C/2022/002" and l.Name="Rajesh Kumar" and co.CourtID="1"',[req.body.court])
    if(result.status=='err'){
        res.json({status:'unable'})
        return
    }
    res.json({status:'done',data:result.result})
})
app.post('/get_lawyer_details',async (req,res)=>{
    let result=await querydatabase('select * from lawyer where LawyerID=?',[req.body.lawyer])
    if(result.status=='err'){
        res.json({status:'unable'})
        return
    }
    res.json({status:'done',data:result.result})
})

app.post('/get_location_details',async (req,res)=>{
    let result=await querydatabase('select CourtID,CourtName,ContactDetails from court where STATE="karnataka"and DISTRICT=? and EstablishmentDate like "19%";',[req.body.location])
    if(result.status=='err'){
        res.json({status:'unable'})
        return
    }
    res.json({status:'done',data:result.result})
})
app.post('/get_c1_details',async (req,res)=>{
    let result=await querydatabase('select p.*,c.CaseNumber,l.Name,co.CourtID from party p,casee c,lawyer l,court co where p.name=? and c.CaseNumber="C/2022/002" and l.Name="Rajesh Kumar" and co.CourtID="1"',[req.body.c1])
    if(result.status=='err'){
        res.json({status:'unable'})
        return
    }
    res.json({status:'done',data:result.result})
})
app.post('/get_c2_details',async (req,res)=>{
    let result=await querydatabase('select * from casee where CaseNumber=?;',[req.body.c2])
    if(result.status=='err'){
        res.json({status:'unable'})
        return
    }
    res.json({status:'done',data:result.result})
})
app.post('/get_c3_details',async (req,res)=>{
    let result=await querydatabase('select * from court where CourtID=?',[req.body.c3])
    if(result.status=='err'){
        res.json({status:'unable'})
        return
    }
    res.json({status:'done',data:result.result})
})
app.post('/get_c4_details',async (req,res)=>{
    let result=await querydatabase('select c.filingdate from casee c where c.CaseNumber=?;',[req.body.c4])
    if(result.status=='err'){
        res.json({status:'unable'})
        return
    }
    res.json({status:'done',data:result.result})
})



app.listen(3000,()=>{console.log('server started')})

async function x(){
    let result=await querydatabase('insert into court values(?,?,?,?,?)',[1,'name','shimoga',JSON.stringify({ph:1020304050,email:'babddhid@gmail.com'}),
JSON.stringify({day:12,year:2004,month:3})])
    console.log(result)
}

async function querydatabase(query,params){
    let connection= await pool.getConnection()
    if(!connection){
        console.log(connection)
        return {status:'err'}
    }
   try{
    let [result,fileds]=await connection.query(query,params)
    return {status:'ok',result:result}
   }
   catch(err){
        console.log(err)
        return {status:'err'}
   }
}

app.post('/custom-query', async (req, res) => {
    try {
        const { customQuery } = req.body;

        if (!customQuery) {
            return res.status(400).json({
                status: 'error',
                message: 'Please provide a custom query.',
            });
        }

        // Execute the custom query (you'll need to implement this logic)
        // For now, let's assume you have a function called executeCustomQuery
        const queryResult = await executeCustomQuery(customQuery);

        // Send the query result back to the frontend
        res.status(200).json({
            status: 'success',
            data: queryResult,
        });
    } catch (error) {
        console.error('Error executing custom query:', error);
        res.status(500).json({
            status: 'error',
            message: 'Something went wrong while executing the custom query.',
        });
    }
});

const getQueryData = async (data, to) => {
    document.querySelector(".loadingContainer").classList.toggle("loading");

    const arg = {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify(data),
    };

    try {
        const response = await fetch(`/custom-query${to}`, arg);
        const result = await response.json();

        if (result.code === 200 && result.data) {
            fillTable(result.data);
        } else if (result.code === 500) {
            throw new Error(result.message);
        } else {
            alert(result.message);
        }
    } catch (error) {
        console.log(error);
        alert("Something went wrong!!!\nPlease try again later!");
    }

    document.querySelector(".loadingContainer").classList.toggle("loading");
};
