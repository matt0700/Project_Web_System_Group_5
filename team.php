<style>
  .card{
    position: relative;
    width: 300px;
    height: 350px;
    background: #654321;
    margin: 0 auto;
    border-radius: 4px;
    box-shadow:0 2px 10px rgba(0,0,0,.2);
  }
  .card:before,
  .card:after
  {
    content:"";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border-radius: 4px;
    background: #000000;
    transition: 0.5s;
    z-index:-1;
  }
  .card:hover:before{
  transform: rotate(20deg);
  box-shadow: 0 2px 20px rgba(0,0,0,.2);
  }
  .card:hover:after{
  transform: rotate(10deg);
  box-shadow: 0 2px 20px rgba(0,0,0,.2);
  }
  .card .imgBx{
  position: absolute;
  top: 10px;
  left: 10px;
  bottom: 10px;
  right: 10px;
  background: #222;
  transition: 0.5s;
  z-index: 1;
  }
  
  .card:hover .imgBx
  {
    bottom: 80px;
  }

  .card .imgBx img{
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      object-fit: cover;
  }

  .card .details{
      position: absolute;
      left: 10px;
      right: 10px;
      bottom: 10px;
      height: 60px;
      text-align: center;
  }

  .card .details h2{
   margin: 0;
   padding: 0;
   font-weight: 600;
   font-size: 20px;
   color: #777;
   text-transform: uppercase;
  } 

  .card .details h2 span{
  font-weight: 500;
  font-size: 16px;
  color: #f38695;
  display: block;
  margin-top: 5px;
   } 
</style>


<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");


?>


  <!-- MAIN -->
  <main>
    <!-- HERO -->
    <div class="nero">
      <div class="nero__heading">
        <span class="nero__bold"> MEET </span> THE </span> TEAM
      </div>
      <p class="nero__text"></p>
    </div>

      <div class="card">
        <div class="imgBx">
            <img src="https://scontent.fmnl3-2.fna.fbcdn.net/v/t39.30808-6/280156838_1231463174065623_2122920702366333743_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHaerSYkzYooMsWqQcPd0j62UjDYpi02gjZSMNimLTaCFPlw1HIV2eDgLVPGjCpZSbG4NaPmrbiVq5fS9lH88r1&_nc_ohc=XQMZBCp1lY8AX9x-2ol&_nc_ht=scontent.fmnl3-2.fna&oh=00_AT-f6FKfJi5tdwSzar82s52QImFt20ApgWjNJUX_YjdTXw&oe=62A844B5" alt="images">
        </div>
        <div class="details">
            <h2>John Kenneth R. Rili</h2>
        </div>
      </div>
    
       <div class="card">
         <div class="imgBx">
            <img src="https://scontent.fmnl3-4.fna.fbcdn.net/v/t39.30808-6/281532270_7428386093898160_5898497843143231011_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEsdKtzKJp3IdVD7IjMMeIzQTqokqcXbtlBOqiSpxdu2clFsFMmJOzmQyYcGOyyGlLl3ZmKICTcOiK0Z79tT51r&_nc_ohc=mR9gveAhf9gAX-7GSN2&_nc_ht=scontent.fmnl3-4.fna&oh=00_AT9ZbOqTsFVqyZfdI58UQ_5d-btA_EFgkS-nlKj4qSs2ug&oe=62A9AD07" alt="images">
         </div>
         <div class="details">
            <h2>Matthew Y. Gatdula</h2>
          </div>
       </div>

       <div class="card">
         <div class="imgBx">
            <img src="https://scontent.fmnl3-4.fna.fbcdn.net/v/t1.6435-9/75233448_836539046749179_8994018876282896384_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=84a396&_nc_eui2=AeHs9GuHTRsMC00Rn8vFOWZVq6YrWTwAR0WrpitZPABHRQ9IJJrLRWgdSWFQkXwMibxQxJ1g-OEQWg11XdfR4AdO&_nc_ohc=RWeCqiM5gGMAX_FIcvO&_nc_ht=scontent.fmnl3-4.fna&oh=00_AT_u6H2JC1Gw8uRdRbbWe0s3MiC11R5I0wuQgBvGqcajXg&oe=62CB125B" alt="images">
         </div>
         <div class="details">
            <h2>Wilton John B. Padlan</h2>
          </div>
       </div>

       <div class="card">
         <div class="imgBx">
            <img src="https://scontent.fmnl3-4.fna.fbcdn.net/v/t39.30808-6/257821309_2983683855282939_6973995507527700646_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFuyrKXZLF69wEIfiNHuK_jcvbXqY0Phqdy9tepjQ-Gp85PCW4_ddcu_nAX8FvbDbl-eKBSaqGJLzDGJrHmBblE&_nc_ohc=IkRZeWduCWEAX-7Bbgr&_nc_ht=scontent.fmnl3-4.fna&oh=00_AT-Wp4CAP0FmGjzyXh5aVXlCCKv4b2s8MdQKvGGx3pXYIg&oe=62A9F963" alt="images">
         </div>
         <div class="details">
            <h2>Anny Neolicia G. Santillan</h2>
          </div>
       </div>

       <div class="card">
         <div class="imgBx">
            <img src="https://scontent.fmnl3-4.fna.fbcdn.net/v/t39.30808-6/285511394_5200316910048529_5239643100713255804_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGJ2b30IeM2ROcuQ-rqQ8o06QJ4Sxc9-MfpAnhLFz34x7XIKJw_bCKFEpq-0L3f5inZx8a0UL7RHfQRKkark4cB&_nc_ohc=jDewfB_3SXYAX_s8Rep&_nc_ht=scontent.fmnl3-4.fna&oh=00_AT9Hz8MrtEv-Hst_dyebK8aSqKTlV3ZEHLFME_zwzDp2cQ&oe=62A8D0E9" alt="images">
         </div>
         <div class="details">
            <h2>Christel S. Porcalla</h2>
          </div>
       </div>

	   <div class="card">
         <div class="imgBx">
            <img src="https://scontent.fmnl3-1.fna.fbcdn.net/v/t1.6435-9/149922062_5064893353583782_5482178548407109096_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeF3QFCmtH5pBxzB89Koy6hnRIML_TNbX85Egwv9M1tfztjjxc47vNXTxS_MTOdQin4MDZPtaSdU4ZmOQe7Y0_xa&_nc_ohc=OJFJROGs10oAX8LP4Eu&_nc_oc=AQkZBVdL5BybEctwtJJdk8RupMqrEki_PJJIDPntjKwVVZLh9qV6En09xzTUaPf0uOT1O0cZiaMz5DRkwEYDx4o5&_nc_ht=scontent.fmnl3-1.fna&oh=00_AT8QY88vFIxbNhu_TFI3h_V_asM2U0h_C3Tr0-Aes4TG3A&oe=62CB1E62" alt="images">
         </div>
         <div class="details">
            <h2>Janhnielle T. Pascua</h2>
          </div>
       </div>
</main>
