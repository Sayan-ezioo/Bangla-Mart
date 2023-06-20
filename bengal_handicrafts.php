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
   <title>ATTOJA | SHOPKART Shopping Website</title>
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="products">

<h4 class="biba1"><img src="images/bengal-handicrafts-v1-PhotoRoom.png-PhotoRoom.png" class="img3"><br>Bengal Handicrafts</h4>


   <form action="" method="GET">
      <div class="row row1">
         <select class="form-control" name="product_sort">
                <option value="default" <?php if(isset($_GET['product_sort']) && $_GET['product_sort'] == "default") {echo "selected" ; } ?>>Default</option>
                <option value="low-high" <?php if(isset($_GET['product_sort']) && $_GET['product_sort'] == "low-high") {echo "selected" ; } ?>>Price Low - High</option>
                <option value="high-low" <?php if(isset($_GET['product_sort']) && $_GET['product_sort'] == "high-low") {echo "selected" ; } ?>>Price High - Low</option>
                <option value="new" <?php if(isset($_GET['product_sort']) && $_GET['product_sort'] == "new") {echo "selected" ; } ?>>Newest</option>
                <option value="old" <?php if(isset($_GET['product_sort']) && $_GET['product_sort'] == "old") {echo "selected" ; } ?>>Oldest</option>
         </select>
         <button type="submit" class="btn2" id="basic-addon2"> Filter</button>
      </div>
    </form>

   <div class="box-container">

   <?php
    $sort_option="";
    if (isset ($_GET['product_sort']))
     {
        if ($_GET['product_sort'] == "low-high"){
           $sort_option= "`price` ASC";
        }elseif($_GET['product_sort'] == "high-low"){
           $sort_option= "`price` DESC";
        }
        elseif($_GET['product_sort'] == "new"){
           $sort_option= "`id` DESC";
        }
        elseif($_GET['product_sort'] == "old"){
           $sort_option= "`id` ASC";
        }   
        elseif($_GET['product_sort'] == "default"){
           $sort_option= "rand()";
        }   
    }
    else{
        $sort_option= "rand()";
    }
     $select_products = $conn->prepare("SELECT * FROM `products` WHERE `name` OR `details` LIKE '%bengal handicrafts%' order by $sort_option"); 
     $select_products->execute();
     if($select_products->rowCount() > 0){
      while($fetch_product = $select_products->fetch(PDO::FETCH_ASSOC)){
   ?>
   <form action="" method="post" class="box">
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
      echo '<p class="empty">no products found!</p>';
   }
   ?>

   </div>

</section>













<?php include 'components/footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>