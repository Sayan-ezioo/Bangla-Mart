<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

include 'components/wishlist_cart.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>BANGLAMART | Online Shopping Website </title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>



  <div class="swiper1 mySwiper">
      <div class="swiper-wrapper">
         <div class="swiper-slide"><img src="images\106752108257027411603217684 (1).jpg"></div>
         <div class="swiper-slide"><img src="https://www.thebengalstore.com/uploads/banner/212917273007863791603217756.jpg"></div>
         <div class="swiper-slide"><img src="https://storage.sg.content-cdn.io/in-resources/6c57599f-2c43-4c82-806a-e07c3410f5d3/Images/userimages/home-page-banners/1-1-23/in-ss23b.jpg"></div>
         <div class="swiper-slide"><img src="https://storage.sg.content-cdn.io/in-resources/6c57599f-2c43-4c82-806a-e07c3410f5d3/Images/userimages/home-page-banners/1-4-23/footwear_14aprl.jpg"></div>
         <div class="swiper-slide"><img src="https://cdn.storehippo.com/s/5b6a944427919b3f710ceefa/6188bafa34e082dc5159e978/webp/65565646464646646-2048x2048.webp"></div> 
     
      </div>
         <div class="swiper-button-next"></div>
         <div class="swiper-button-prev"></div>
   </div>
        

</div>

<section class="category">

   <h1 class="heading">shop by category</h1>

   <div class="swiper category-slider">

   <div class="swiper-wrapper">

   <a href="category.php?category=mens" class="swiper-slide slide">
      <img src="images/dressing.png" alt="">
      <h3>Men</h3>
   </a>


   <a href="category.php?category=kurti set" class="swiper-slide slide">
      <img src="images/woman-clothes.png" alt="">
      <h3>Kurti </h3>
   </a>

   <a href="category.php?category=Jewelry" class="swiper-slide slide">
      <img src="images/earrings.png" alt="">
      <h3>Handmade Jewelry</h3>
   </a>

   <a href="category.php?category=Saree" class="swiper-slide slide">
      <img src="images/sari.png" alt="">
      <h3>Sarees</h3>
   </a>

   <a href="category.php?category=women" class="swiper-slide slide">
      <img src="images/clothing.png" alt="">
      <h3>Women</h3>
   </a>

   <a href="category.php?category=bag" class="swiper-slide slide">
      <img src="images/bag.png" alt="">
      <h3>Bags</h3>
   </a>

   <a href="category.php?category=footwear" class="swiper-slide slide">
      <img src="images/shoes.png" alt="">
      <h3>Footwear</h3>
   </a>

   <a href="category.php?category=home decor" class="swiper-slide slide">
   <img src="images/shelf.png" alt="">
   <h3>Home Decor</h3>
   </a>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>

<section class="features1">
       
   <div class="container2">
       <h4>Featured Brand  : <hr color="black" width="15%" size="6px" align="left"> <br> <a href="biba.php"> <img src="images/Biba_logo_PNG2.png" class="img2"></a></h4> 
   </div>

 <br><br>

   <div class="video-wrap1">
      <a href="biba.php">
      <video src="images/biba.mp4" width="100%" controls muted autoplay loop id="video"></video></a>
   </div>
 <br>

   <div class="btn1">
    <a href="biba.php" class="shop-now">SHOP NOW  &#8599</a>
   </div>
   
</section>


<section class="home-products">

   <h1 class="heading">latest arrivals</h1>

   <div class="swiper products-slider">

   <div class="swiper-wrapper">

   <?php
     $select_products = $conn->prepare("SELECT * FROM `products` order by rand()  LIMIT 6 "); 
     $select_products->execute();
     if($select_products->rowCount() > 0){
      while($fetch_product = $select_products->fetch(PDO::FETCH_ASSOC)){
   ?>
   <form action="" method="post" class="swiper-slide slide">
      <input type="hidden" name="pid" value="<?= $fetch_product['id']; ?>">
      <input type="hidden" name="name" value="<?= $fetch_product['name']; ?>">
      <input type="hidden" name="price" value="<?= $fetch_product['price']; ?>">
      <input type="hidden" name="image" value="<?= $fetch_product['image_01']; ?>">
      <button class="fas fa-heart" type="submit" name="add_to_wishlist"></button>
      <a href="quick_view.php?pid=<?= $fetch_product['id']; ?>" class="fas fa-eye"></a>
      <img src="uploaded_img/<?= $fetch_product['image_01']; ?>" alt="">
      <div class="name"><?= $fetch_product['name']; ?></div>
      <div class="flex">
         <div class="price"><span>₹</span><?= $fetch_product['price']; ?><span>/-</span></div>
         <input type="number" name="qty" class="qty" min="1" max="99" onkeypress="if(this.value.length == 2) return false;" value="1">
      </div>
      <input type="submit" value="add to cart" class="btn" name="add_to_cart">
   </form>
   <?php
      }
   }else{
      echo '<p class="empty">no products added yet!</p>';
   }
   ?>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>
 <hr width="100%" color="black" size= "4px" align="center" margin = "auto">

 <br>

 <h1 class="heading">Shop by regions</h1>

 <br> 

 <h4 class="biba1">HOOGHLY</h4>


 <div class="swiper1 mySwiper1">
      <div class="swiper-wrapper">
         <div class="swiper-slide"><a href="hooghly.php"><img src="images\My project-1.jpg"></div></a>
         <div class="swiper-slide"><a href="hooghly.php"><img src="images\WhatsApp Image 2023-05-12 at 12.03.44.jpg"></div></a>
         <div class="swiper-slide"><a href="hooghly.php"><img src="images\WhatsApp Image 2023-05-12 at 12.13.19.jpg"></div></a>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
   </div>

   <br>
   <br>
   <br>
<br>
   <hr width="100%" color="black" size= "4px" align="center" margin = "auto">

  <br>



 <br> 

 <h4 class="biba1">NADIA</h4>


 <div class="swiper1 mySwiper1">
      <div class="swiper-wrapper">
         <div class="swiper-slide"><a href="nadia.php"><img src="images\Studio_Project_V1.png"></div></a>
         <div class="swiper-slide"><a href="nadia.php"><img src="images\2020070769.jpg"></div></a>
         <div class="swiper-slide"><a href="nadia.php"><img src="images\WhatsApp Image 2023-05-12 at 12.30.57.jpg"></div></a>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
   </div>

   <br>
   <br>
   <br>
   <br>

   <hr width="100%" color="black" size= "4px" align="center" margin = "auto">

  <br>



 <br> 

 <h4 class="biba1">BANKURA</h4>


 <div class="swiper1 mySwiper1">
      <div class="swiper-wrapper">
         <div class="swiper-slide"><a href="bankura.php"><img src="images\2020070631-1-PhotoRoom.jpg"></div></a>
         <div class="swiper-slide"><a href="bankura.php"><img src="images\2020070762.jpg"></div></a>
         <div class="swiper-slide"><a href="bankura.php"><img src="images\2020070763-1.jpg"></div></a>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
   </div>

   <br>
   <br>
   <br>
   <br>

   <hr width="100%" color="black" size= "4px" align="center" margin = "auto">

  <br>



 <br> 

 <h4 class="biba1">BIRBHUM</h4>


 <div class="swiper1 mySwiper1">
      <div class="swiper-wrapper">
         <div class="swiper-slide"><a href="birbhum.php"><img src="images\My project-3.jpg"></div></a>
         <div class="swiper-slide"><a href="birbhum.php"><img src="https://mediaindia.eu/wp-content/uploads/2020/03/84260aad1530fb0e1307d8a47104a820.jpg"></div></a>
         <div class="swiper-slide"><a href="birbhum.php"><img src="https://biswa-bangla.storehippo.com/s/5b6a944427919b3f710ceefa/6328624458f1a2c2117d08da/webp/b3-2048x2048.jpg"></div></a>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
   </div>


   <br>
   <br>
   <br>


<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>


<script src="js/script.js"></script>

<script>
    var swiper = new Swiper(".mySwiper", {
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 4000,
        disableOnInteraction: false,
      },
   
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
    

    var swiper = new Swiper(".mySwiper1", {
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 4600,
        disableOnInteraction: false,
      },
   
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });

   var swiper = new Swiper(".category-slider", {
      
      slidesPerView: 4,
      spaceBetween: 30,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      
   });




var swiper = new Swiper(".products-slider", {
   
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      550: {
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

</script>

</body>
</html>