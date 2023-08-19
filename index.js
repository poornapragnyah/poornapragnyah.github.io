var hello = document.querySelector("#title > div > div > div:nth-child(2) > div > button.btn.btn-primary.btn-lg.px-4.me-md-2");


hello.addEventListener('click',function(){
    alert("Heyy!")
});
  


var changeMoodBtn = document.querySelector("#title > div > div > div:nth-child(2) > div > button.btn.btn-outline-light.btn-lg.px-4");
var image = document.querySelector("#title > div > div > div.col-10.col-sm-8.col-lg-6 > img");
var mood = 0;
var imageUrls = ['img/p2.jpg','img/p1.jpg'];
function changeMood(){
    image.src = imageUrls[mood];
    console.log(imageUrls.length);
    mood = (mood + 1) % imageUrls.length;
}

changeMoodBtn.addEventListener('click',changeMood)

var scrollButton = document.getElementById('projectButton');

scrollButton.addEventListener('click', function() {
  // Scroll down to a specific position on the page
  window.scrollTo({
    top: 800, // Replace this with the desired scroll position
    behavior: 'smooth' // Use 'auto' for instant scroll
  });
});

