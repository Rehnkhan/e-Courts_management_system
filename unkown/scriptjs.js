
document.addEventListener("DOMContentLoaded", function() {
    // Fetch case details by case number
    function fetchCaseDetailsByCaseNumber() {
        const caseNumber = document.getElementById("caseNumber").value;

        fetch(`/caseDetailsByCaseNumber?caseNumber=${encodeURIComponent(caseNumber)}`)
            .then(response => response.json())
            .then(data => displayCaseDetails(data, "caseDetailsByCaseNumber"))
            .catch(error => console.error("Error fetching case details:", error));
    }

    // Fetch case details by party name and registration year
    function fetchCaseDetailsByParty() {
        const partyName = document.getElementById("partyName").value;
        const registrationYear = document.getElementById("registrationYear").value;

        fetch(`/caseDetailsByParty?partyName=${encodeURIComponent(partyName)}&registrationYear=${encodeURIComponent(registrationYear)}`)
            .then(response => response.json())
            .then(data => displayCaseDetails(data, "caseDetailsByParty"))
            .catch(error => console.error("Error fetching case details:", error));
    }

    // Fetch lawyer details by lawyer ID or license number
    function fetchLawyerDetails() {
        const lawyerId = document.getElementById("lawyerId").value;
        const licenseNumber = document.getElementById("licenseNumber").value;

        fetch(`/lawyerDetails?lawyerId=${encodeURIComponent(lawyerId)}&licenseNumber=${encodeURIComponent(licenseNumber)}`)
            .then(response => response.json())
            .then(data => displayCaseDetails(data, "lawyerDetails"))
            .catch(error => console.error("Error fetching lawyer details:", error));
    }

    // Display case or lawyer details
    function displayCaseDetails(data, containerId) {
        const container = document.getElementById(containerId);
        container.innerHTML = ""; // Clear previous content

        // Check if data exists
        if (data.length === 0) {
            container.innerText = "No details found.";
            return;
        }

        // Create a table to display details
        const table = document.createElement("table");
        table.border = "1";
        table.style.borderCollapse = "collapse";

        // Create table headers
        const headers = Object.keys(data[0]);
        const headerRow = document.createElement("tr");
        headers.forEach(headerText => {
            const th = document.createElement("th");
            th.textContent = headerText;
            headerRow.appendChild(th);
        });
        table.appendChild(headerRow);

        // Populate table with details
        data.forEach(item => {
            const row = document.createElement("tr");
            Object.values(item).forEach(value => {
                const td = document.createElement("td");
                td.textContent = value;
                row.appendChild(td);
            });
            table.appendChild(row);
        });

        container.appendChild(table);
    }
});
