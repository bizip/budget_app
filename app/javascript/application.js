// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@fortawesome/fontawesome-free"

let divbtn = document.getElementById("nav_btn");
divbtn.addEventListener("click", () => {
    let popup = document.getElementById('popup');
    if (popup.style.display === "none"){
        popup.style.display="flex"
    }else{
        popup.style.display="none"

    }
})

let popup = document.getElementById('popup');
popup.addEventListener("click", ()=>{
    popup.style.display="none"
})

