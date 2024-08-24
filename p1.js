

async function get_details() {
    let cnr = document.getElementById('cino').value
    let res = await fetch('/get_case_details', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ cnr: cnr })
    })
    res = await res.json()
    console.log(res);
    if (res.status == 'unable') {
        return
    }
    let div = document.createElement('div')
    div.id='havgolla'

    div.innerHTML = `<div>
    <h3 onclick="document.getElementById('havgolla').remove();">Case Details</h3>
    <table id='havgolla_table' class="table table-dark">
    <tr>
    <th>CaseID</th>
    <th>Case number</th>
    <th>status</th>
    <th>Court ID</th>
    </tr>
    </table>
    </div>`
    document.body.append(div)
    let data=res.data
    let table=document.getElementById('havgolla_table')
    for(let i of data){
        let tr=document.createElement('tr')
        tr.innerHTML=`
        <th>${i.caseid}</th>
    <th>${i.CaseNumber}</th>
    <th>${i.Status}</th>
    <th>${i.courtid}</th>`
    table.append(tr)

    // const arr = result.data
            
    // const tableElement = document.getElementById('json-table');
    // const keys = Object.keys(arr[0]);
    
    // // Create table header
    // const headerRow = tableElement.insertRow();
    // keys.forEach(key => {
    //     const th = document.createElement('th');
    //     th.textContent = key;
    //     headerRow.appendChild(th);
    // });
    
    // // Create table rows
    // arr.forEach(item => {
    //     const row = tableElement.insertRow();
    //     keys.forEach(key => {
    //         const cell = row.insertCell();
    //         cell.textContent = item[key];
    //     });
    // });


    }
}

//custom query

// const customQuery = (req, res) => {
//     console.log(req.body);
  
//     try {
//       const { customQuery } = req.body;
  
//       if (!customQuery) {
//         return res.status(403).send({
//           status: "failure",
//           message: "Please provide a custom query!!!",
//           code: 403,
//         });
//       }
  
//       console.log(customQuery);
  
//       connection.query(customQuery, function (error, results) {
//         if (error) throw error;
//         // console.log({results});
//         if (results.length == 0) {
//           return res.send({
//             status: "success",
//             code: 200,
//             data: {
//               properties: [],
//               values: [],
//             },
//           });
//         } else {
//           return res.send({
//             status: "success",
//             code: 200,
//             data: {
//               properties: Object.getOwnPropertyNames(results[0]),
//               values: results,
//             },
//           });
//         }
//       });
//     } catch (err) {
//       console.log(err);
//       return res.status(500).send({
//         message: "Something went Wrong!!!",
//         status: "failure",
//         code: 500,
//       });
//     }
//   };

//   const setCustomQueryForm = () => {
//     const customQueryForm = document.querySelector("#customQueryForm");
  
//     customQueryForm.addEventListener("submit", (e) => {
//       e.preventDefault();
  
//       const customQueryInfo = {
//         customQuery: customQueryForm.customQuery.value,
//       };
  
//       getQueryData(customQueryInfo, "custom");
//     });
//   };




