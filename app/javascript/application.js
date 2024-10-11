// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

document.addEventListener('DOMContentLoaded', function() {
  const formToggleBtn = document.getElementById('form-toggle-btn');
  const listingForm = document.querySelector('.listing-form');

  formToggleBtn.addEventListener('click', function() {
    if (listingForm.style.display === 'none' || listingForm.style.display === '') {
      listingForm.style.display = 'block';
    } else {
      listingForm.style.display = 'none';
    }
  });
});
