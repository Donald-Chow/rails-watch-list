import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = [ "myDropdown" ]

  connect() {
    console.log('Navbar Connected');
  }

  dropNavbar() {
    console.log('dropping navBar');
    // document.getElementById("myDropdown").classList.toggle("show");
    this.myDropdownTarget.classList.toggle("show")
  }

  // Close the dropdown if the user clicks outside of it
  // window.onclick = function(e) {
  //   if (!e.target.matches('.dropbtn')) {
  //   var myDropdown = document.getElementById("myDropdown");
  //     if (myDropdown.classList.contains('show')) {
  //       myDropdown.classList.remove('show');
  //     }
  //   }
  // }
}
