// app/assets/javascripts/recipes.js

document.addEventListener('DOMContentLoaded', function () {
  const publicToggle = document.getElementById('public-toggle');

  publicToggle.addEventListener('change', function () {
    const url = this.dataset.url; // Get the URL from data attribute
    const checked = this.checked; // Get the checkbox state

    // Send an AJAX request to toggle the public attribute
    fetch(url, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content'), // Include the CSRF token
      },
      body: JSON.stringify({ public: checked }), // Send the new state
    })
      .then((response) => response.json())
      .then((data) => {
        // Handle the response or update UI if needed
        console.log(data);
      })
      .catch((error) => {
        console.error('Error:', error);
      });
  });
});
