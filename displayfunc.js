function status(){

    fetch('/templates/example.html')
      .then(response => response.text())
      .then(html => {
          document.getElementById('showcontent').innerHTML = html;
      })
      .catch(error => {
          console.error('Error fetching component:', error);
      });
  }