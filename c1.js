function navigate(m){
    if(m==11)window.location='//templates//p1.html'
    if(m==12)window.location='//templates//case.html'
    if(m==9)return
    if(m==15)window.location='//location.html'
    }
function change_inner_content(m, t) {
    let main = document.getElementById("search_result")
    let divs = document.getElementById('search_nav').getElementsByTagName('div')
    for (let i = 0; i < divs.length; i++)
        divs[i].setAttribute('class', 'x')
    if (m == 1) {
        main.innerHTML = `<p>Court order:search by party name</p><br>
                    <p> </p>
                    <div>
                        <p>Petitioner/respondent</p>
                        <input type="text" name="cino6" id="cino6"required><br>
                        <p>capcha <br>
                        <input type="text">
                        </p>
                        
                        <button onclick="get_c1details()">GO</button>
                        <button>Reset</button>
                       
                    </div>
            
            

        </div>`
        t.className = 'seleccted_c1'
    }

    if (m == 2) {
        main.innerHTML = `<div>
                        <p>Case details</p>
                        <p>Enter Case number</p>
                        <input type="text"  name="cino7" id="cino7"required><br>
                        <div>
                            <button onclick="get_c2details()">GO</button>
                            <button>Reset</button>
                        </div>
                    </div>`
        t.className = 'seleccted_c1'
    }
    if (m == 3) {
        main.innerHTML = `<div>
                        <p>Court Orders</p>
                        <p>Enter court id</p>
                        <input type="text" name="cino8" id="cino8" required><br>
                        <div>
                            <button onclick="get_c3details()">GO</button>
                            <button>Reset</button>
                        </div>
                    </div>`
        t.className = 'seleccted_c1'
    }
    if (m == 4) {
        main.innerHTML = `<div>
                        <p>Order date</p>
                        <p>Enter case number</p>
                        <input type="text" name="cino9" id="cino9"required><br>
                        <div>
                            <button onclick="get_c4details()">GO</button>
                            <button>Reset</button>
                        </div>
                    </div>`
        t.className = 'seleccted_c1'
    }
}

async function get_c1details() {
    let c1 = document.getElementById('cino6').value
    let res = await fetch('/get_c1_details', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ c1: c1 })
    })
    res = await res.json()
    console.log(res)
    if (res.status == 'unable') {
        return 
    }
    let div = document.createElement('div')
    div.id='c1'

    div.innerHTML =  `<div>
    <h3 onclick="document.getElementById('c1').remove()">X</h3>
    <table id='c1_table'>
    <tr>
    <th>PartyID</th>
    <th>CaseNumber</th>
    <th>CourtID</th>
    <th>LawyerName</th>
    <th>Role</th>
    <th>ContactDetails</th>
    <th>Address</th>
    </tr>
    </table>
    </div>`
    document.body.append(div)
    let data=res.data
    let table1=document.getElementById('c1_table')
    for(let i of data){
        let tr=document.createElement('tr')
        tr.innerHTML=`
        <th>${i.PartyID}</th>
        <th>${i.CaseNumber}</th>
    <th>${i.CourtID}</th>
    <th>${i.Name}</th>
    <th>${i.Role}</th>
    <th>${i.ContactDetails}</th>
    <th>${i.Address}</th>`
    table1.append(tr)
    }
}
async function get_c2details() {
    let c2 = document.getElementById('cino7').value
    let res = await fetch('/get_c2_details', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ c2: c2 })
    })
    res = await res.json()
    console.log(res)
    if (res.status == 'unable') {
        return
    }
    let div = document.createElement('div')
    div.id='case'

    div.innerHTML =  `<div>
    <h3 onclick="document.getElementById('case').remove()">Case Details</h3>
    <table id='case_table'>
    <tr>
    <th>CaseID</th>
    <th>Case number</th>
    <th>Status</th>
    <th>Court ID</th>
    <th>Case type</th>
    <th>Filling details</th>
    </tr>
    </table>
    </div>`
    document.body.append(div)
    let data=res.data
    let table=document.getElementById('case_table')
    for(let i of data){
        let tr=document.createElement('tr')
        tr.innerHTML=`
        <th>${i.CaseID}</th>
    <th>${i.CaseNumber}</th>
    <th>${i.Status}</th>
    <th>${i.CourtID}</th>
    <th>${i.CaseDetails}</th>
    <th>${i.FilingDate}</th>
    `
    table.append(tr)
    }
}
async function get_c3details() {
    let c3 = document.getElementById('cino8').value
    let res = await fetch('/get_c3_details', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ c3: c3 })
    })
    res = await res.json()
    console.log(res)
    if (res.status == 'unable') {
        return
    }
    let div = document.createElement('div')
    div.id='case1'

    div.innerHTML =  `<div>
    <h3 onclick="document.getElementById('case1').remove()">Case Details</h3>
    <table id='case1_table'>
    <tr>
    <th>CourtID</th>
    <th>Court Name</th>
    <th>State</th>
    <th>District </th>
    <th>Contact Details</th>
    <th>Establishment date</th>
    </tr>
    </table>
    </div>`
    document.body.append(div)
    let data=res.data
    let table=document.getElementById('case1_table')
    for(let i of data){
        let tr=document.createElement('tr')
        tr.innerHTML=`
        <th>${i.CourtID}</th>
    <th>${i.CourtName}</th>
    <th>${i.STATE}</th>
    <th>${i.DISTRICT}</th>
    <th>${i.ContactDetails}</th>
    <th>${i.EstablishmentDate}</th>
    `
    table.append(tr)
    }
}
async function get_c4details() {
    let c4 = document.getElementById('cino9').value
    let res = await fetch('/get_c4_details', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ c4: c4 })
    })
    res = await res.json()
    console.log(res)
    if (res.status == 'unable') {
        return
    }
    let div = document.createElement('div')
    div.id='case2'

    div.innerHTML =  `<div>
    <h3 onclick="document.getElementById('case2').remove()">Case Details</h3>
    <table id='case2_table'>
    <tr>
    <th>Order Date</th>
    </tr>
    </table>
    </div>`
    document.body.append(div)
    let data=res.data
    let table=document.getElementById('case2_table')
    for(let i of data){
        let tr=document.createElement('tr')
        tr.innerHTML=`
        <th>${i.filingdate}</th>
    `
     table.append(tr)

     console.log(res.data)
    }
}