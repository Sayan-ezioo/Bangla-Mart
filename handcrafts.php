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
   <title>HANDCRAFTED | SHOPKART Shopping Website</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<h4 class="biba1"><a href="attoja.php"><img src="images/Logo.png" class="img3"></h4></a>

<div class="swiper1 mySwiper">
      <div class="swiper-wrapper">
         <div class="swiper-slide"><a href="attoja.php"><img src="images\Screenshot 2023-04-19 105740.png"></div></a>
         <div class="swiper-slide"><a href="attoja.php"><img src="images\Slide deck 1.jpg"></div></a>
         <div class="swiper-slide"><a href="attoja.php"><img src="images\20230331_025208_0000.jpg"></div></a>
      
      </div>
      
</div>
<br> <br>




<section class="home-products">


   <div class="swiper products-slider">

   <div class="swiper-wrapper">

   <?php
     $select_products = $conn->prepare("SELECT * FROM `products` WHERE `name` OR `details` LIKE '%attoja%' order by rand() LIMIT 6 "); 
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

   <div class="btn3">
    <a href="attoja.php" class="shop-now">See More of This Brand &#8599</a>
   </div>

</section>

<br> <br> <hr color="black" width="100%" size="4px" > <br> <br>



<h4 class="biba1"><a href="biswa_bangla.php"><img src="images/5bdfd7bd314dd83c49eada89-480x480-PhotoRoom.png-PhotoRoom.png" class="img3"></h4></a>


<div class="swiper1 mySwiper">
      <div class="swiper-wrapper">
         <div class="swiper-slide"><a href="biswa_bangla.php"><img src="images\FAMILY_SET_1512x-PhotoRoom-Photo-PhotoRoom.webp"></div></a>
         <div class="swiper-slide"><a href="biswa_bangla.php"><img src="images\dhoti_kurta_banner_web_5b76b786-.webp"></div></a>
         <div class="swiper-slide"><a href="biswa_bangla.php"><img src="images\bb-front-banner1-2048x2048.webp"></div></a>
      </div>
      
   </div>
<br> <br>




<section class="home-products">


   <div class="swiper products-slider">

   <div class="swiper-wrapper">

   <?php
     $select_products = $conn->prepare("SELECT * FROM `products` WHERE `name` OR `details` LIKE '%biswa bangla%' order by rand() LIMIT 6 "); 
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

   <div class="btn3">
    <a href="biswa_bangla.php" class="shop-now">See More of This Brand &#8599</a>
   </div>

</section>

<br> <br> <hr color="black" width="100%" size="4px" > <br> <br>

<h4 class="biba1"><a href="bengal_handicrafts.php"><img src="images/bengal-handicrafts-v1-PhotoRoom.png-PhotoRoom.png" class="img3"></a><br>Bengal Handicrafts</h4>

<div class="swiper1 mySwiper">
      <div class="swiper-wrapper">
         <div class="swiper-slide"><a href="bengal_handicrafts.php"><img src="images\5cd51f2219b7aa35cdd8522a-2048x20.jpg"></div></a>
         <div class="swiper-slide"><a href="bengal_handicrafts.php"><img src="images\83954794186753061590646166.jpg"></div></a>
         <div class="swiper-slide"><a href="bengal_handicrafts.php"><img src="images\il_1080xN.3536535309_783p (1).jpg"></div></a>
         <div class="swiper-slide"><a href="bengal_handicrafts.php"><img src=" https://cdn.storehippo.com/s/5b6a944427919b3f710ceefa/614dadb0f6308bf61b3afb08/webp/5cd5213e8af4de368a21decd-2048x2048.jpg"></div></a>
      </div>
      
   </div>
<br> <br>


<section class="home-products">


   <div class="swiper products-slider">

   <div class="swiper-wrapper">

   <?php
     $select_products = $conn->prepare("SELECT * FROM `products` WHERE `name` OR `details` LIKE '%bengal handicrafts%' order by rand() LIMIT 6 "); 
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

   <div class="btn3">
    <a href="bengal_handicrafts.php" class="shop-now">See More of This Brand &#8599</a>
   </div>

</section>











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








   var swiper = new Swiper(".products-slider", {
   loop:true,
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












