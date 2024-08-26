// to display status html
function status(){

    fetch('/temp/casef.html')
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
    fetch('/temp/p1f.html')
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
fetch('/temp/c1f.html')
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
  fetch('/temp/locationf.html')
      .then(response => response.text())
      .then(html => {
          document.getElementById('showcontent').innerHTML = html;
      })
      .catch(error => {
          console.error('Error fetching component:', error);
      });  
  }