// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("DOMContentLoaded", function() {
    const buttons = document.querySelectorAll(".myButtonClass");
    buttons.forEach(function(button) {
      button.addEventListener("click", myFunction);
    });
  });

  
function myFunction() {
  alert("No Implementation");
}
