
async function get_lodetails() {
    let location = document.getElementById('cino5').value
    let res = await fetch('/get_location_details', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ location: location })
    })
    res = await res.json()
    if (res.status == 'unable') {
        return 
    }
    let div = document.createElement('div')
    div.id='havgolla'

    div.innerHTML = `<div>
    <h3 onclick="document.getElementById('havgolla').remove()">Court Details</h3>
    <table id='havgolla_table'>
    
    </table>
    </div>`
    document.body.append(div)
    // let data=res.data
    // let table=document.getElementById('havgolla_table')
    // for(let i of data){
    //     let tr=document.createElement('tr')
    //     tr.innerHTML=`
    // <th>${i.CourtID}</th>
    // <th>${i.CourtName}</th>
    // <th>${i.ContactDetails}</th>
    // `
    // table.append(tr)
    // }

    const arr = res.data
            
    const tableElement = document.getElementById('json-table');
    const keys = Object.keys(arr[0]);
    
    // Create table header
    const headerRow = tableElement.insertRow();
    keys.forEach(key => {
        const th = document.createElement('th');
        th.textContent = key;
        headerRow.appendChild(th);
    });
    
    // Create table rows
    arr.forEach(item => {
        const row = tableElement.insertRow();
        keys.forEach(key => {
            const cell = row.insertCell();
            cell.textContent = item[key];
        });
    });

}