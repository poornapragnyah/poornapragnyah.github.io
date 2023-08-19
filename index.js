//Hello
// var hello = document.querySelector("#title > div > div > div:nth-child(2) > div > button.btn.btn-primary.btn-lg.px-4.me-md-2");
// hello.addEventListener('click',function(){
//     alert("Heyy!")
// });

//Change mood
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

//Scroll down to project section
var scrollButton = document.getElementById('projectButton');
scrollButton.addEventListener('click', function() {
  window.scrollTo({
    top: 800, // Replace this with the desired scroll position
    behavior: 'smooth' // Use 'auto' for instant scroll
  });
});

//scroll up to the main section when "view" is clicked
var viewScroll = document.querySelectorAll(".viewBtn");
viewScroll.forEach(function(view){
    view.addEventListener('click',function(){
        window.scrollTo({
            top:0,
            behavior:'smooth'
        })
    })
});

var linkElements = document.querySelectorAll(".links1");
var popupEle = document.querySelector(".popup");

// Add click event listener to each link element
linkElements.forEach(function(link) {
  link.addEventListener("click", function() {
    popupEle.style.display = "block";
    if(link.classList.contains("heyy")){
        document.querySelector("body > div.popup > h2").innerHTML = "Heyy!"
        document.querySelector("body > div.popup > p").innerHTML = ""
    }   
    else if(link.classList.contains("socials")){
        document.querySelector("body > div.popup > h2").innerHTML = "I've taken the social media scenic route, avoiding the Twittering birds, Facebook walls, and Instagram filters!"
        document.querySelector("body > div.popup > p").innerHTML = ""
    }
    else if(link.classList.contains("resume")){
        document.querySelector("body > div.popup > h2").innerHTML = "Oops"
        document.querySelector("body > div.popup > p").innerHTML = "Looks like this part is missing:/"
    }
    

    setTimeout(function(){
        popupEle.style.display = "none";
        behavior='smooth';
    },4000)
  });
});

document.querySelector("#close").addEventListener("click", function() {
  popupEle.style.display = "none";
});


