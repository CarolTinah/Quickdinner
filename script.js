let menu = document.querySelector('#menu-bars');
let navbar = document.querySelector('.navbar');
let shoppingCart = document.querySelector('.shopping-cart');
let searchForm = document.querySelector('.search-form');
let likebtn = document.querySelector('.fa-heart');
let cart = document.querySelector('.shopping-cart')
let addbtn = document.querySelector('btn');

let buybutton = document.querySelector('#buy');

buybutton.onclick = () =>{
    window.alert("Your Order Has Been Placed");
    
}

menu.onclick = () =>{
  menu.classList.toggle('fa-times');
  navbar.classList.toggle('active');
}

let section = document.querySelectorAll('section');
let navLinks = document.querySelectorAll('header .navbar a');

window.onscroll = () =>{

  menu.classList.remove('fa-times');
  navbar.classList.remove('active');

  section.forEach(sec =>{

    let top = window.scrollY;
    let height = sec.offsetHeight;
    let offset = sec.offsetTop - 150;
    let id = sec.getAttribute('id');

    if(top >= offset && top < offset + height){
      navLinks.forEach(links =>{
        links.classList.remove('active');
        document.querySelector('header .navbar a[href*='+id+']').classList.add('active');
      });
    };

  });

}

document.querySelector('#search-icon').onclick = () =>{
   searchForm.classList.toggle('active');
    shoppingCart.classList.remove('active');
    loginForm.classList.remove('active');
    navbar.classList.remove('active');
}



document.querySelector('#cart-btn').onclick = () =>{
    shoppingCart.classList.toggle('active');
    searchForm.classList.remove('active');
    loginForm.classList.remove('active');
    navbar.classList.remove('active');
}

let loginForm = document.querySelector('.login-form');

document.querySelector('#login-btn').onclick = () =>{
    loginForm.classList.toggle('active');
    searchForm.classList.remove('active');
    shoppingCart.classList.remove('active');
    navbar.classList.remove('active');
}

//cart operation
if(document.readyState == 'loading'){
  document.addEventListener("DomContentLoaded", ready);
}else{
  ready();
}

function ready(){
  //remove item from cart
  var removeCartButton = document.getElementsByClassName('cart-remove')
  console.log(removeCartButton);
  for(var i = 0; i<removeCartButton.length; i++){
    var button = removeCartButton[i];
    button.addEventListener('click', removeCartItem)
  }
}

//remove cart item
function removeCartItem(event){
  var buttonClicked = event.target;
  buttonClicked.parentElement.remove();
}

//Add to cart
var addCart = document.getElementsByClassName('add-cart');
for(var i = 0; i<addCart.length; i++){
  var button = addCart[i];
  button.addEventListener('click', addCartClicked)
}

function addCartClicked(event){
  var button = event.target
  var shopProducts = button.parentElement;
  var title = shopProducts.getElementsByClassName('product-title')[0].innerText;
  var price = shopProducts.getElementsByClassName('price')[0].innerText;
 // var productImg = shopProducts.getElementsByClassName('product-img')[0].src;
  shoppingCart.classList.toggle('active');
  addProductToCart(title,price);
}

function addProductToCart(title, price){
  var cartShopBox = document.createElement('div');
  cartShopBox.classList.add('cart-box')
  var cartItems = document.getElementsByClassName('cart-content')[0];
  var cartItemNames = cartItems.getElementsByClassName('cart-product-title');
  for(var i = 0; i<cartItemNames.length; i++){
    if(cartItemNames[i].innerText == title){
      alert("you have already added this item to the cart");
      return;
    }
     
  }


  var cartBoxContent = `
                             <i class="fas fa-trash cart-remove"></i>
                            <img src="images/menu-9.jpg" alt="">
                            <div class="content">
                            <input type="hidden" name="">
                            <h3 class = "cart-product-title">${title}</h3>
                            <span class="price">${price}/-</span>                           
                            <input class="quantity" type = "number" name = "amount">
                            </div>`
  
  cartShopBox.innerHTML = cartBoxContent;
  cartItems.append(cartShopBox)
  //cartShopBox.getElementsByClassName('remove-cart')[0].addEventListener('click', removeCartItem)
  

}

 


//swipper js
var swiper = new Swiper(".home-slider", {
  spaceBetween: 30,
  centeredSlides: true,
  autoplay: {
    delay: 7500,
    disableOnInteraction: false,
  },
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
  loop:true,
});

var swiper = new Swiper(".review-slider", {
  spaceBetween: 20,
  centeredSlides: true,
  autoplay: {
    delay: 7500,
    disableOnInteraction: false,
  },
  loop:true,
  breakpoints: {
    0: {
        slidesPerView: 1,
    },
    640: {
      slidesPerView: 2,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});

function loader(){
  document.querySelector('.loader-container').classList.add('fade-out');
}

function fadeOut(){
  setInterval(loader, 3000);
}

window.onload = fadeOut;