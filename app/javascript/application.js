// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

document.addEventListener('DOMContentLoaded', function() {
  const formToggleBtn = document.getElementById('form-toggle-btn');
  const listingForm = document.getElementById('toggle-form');

  formToggleBtn.addEventListener('click', function() {
    if (listingForm.style.display === 'none' || listingForm.style.display === '') {
      listingForm.style.display = 'block';
    } else {
      listingForm.style.display = 'none';
    }
  });
});

document.addEventListener('DOMContentLoaded', function() {
  const submitForm = document.getElementById('toggle-form');
  const sumbitOrderBox = document.querySelector(".order-confirm-box");

 submitForm.addEventListener('click', function() {
    if (sumbitOrderBox.style.display === 'none' || sumbitOrderBox.style.display === '') {
      sumbitOrderBox.style.display = 'block';
      submitForm.style.display = 'none';
    } else {
      submitForm.style.display = 'block';
      sumbitOrderBox.style.display = 'none';
    }
  });
});
