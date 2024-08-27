// to display status html
function status(){

    fetch('/templates/casef.html')
      .then(response => response.text())
      .then(html => {
          document.getElementById('showcontent').innerHTML = html;
      })
      .catch(error => {
          console.error('Error fetching component:', error);
      });
  }

  // to display cnr html
function CNR(){
    fetch('/templates/p1f.html')
    .then(response => response.text())
    .then(html => {
        document.getElementById('showcontent').innerHTML = html;
    })
    .catch(error => {
        console.error('Error fetching component:', error);
    });
  }

  // to display orders html
function orders(){
fetch('/templates/c1f.html')
      .then(response => response.text())
      .then(html => {
          document.getElementById('showcontent').innerHTML = html;
      })
      .catch(error => {
          console.error('Error fetching component:', error);
      });
  }

// to display location html

function locations(){
  fetch('/templates/locationf.html')
      .then(response => response.text())
      .then(html => {
          document.getElementById('showcontent').innerHTML = html;
      })
      .catch(error => {
          console.error('Error fetching component:', error);
      });  
  }