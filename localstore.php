<style>
:root {
    --red: hsl(0, 78%, 62%);
    --cyan: hsl(180, 62%, 55%);
    --orange: hsl(34, 97%, 64%);
    --blue: hsl(212, 86%, 64%);
    --varyDarkBlue: hsl(234, 12%, 34%);
    --grayishBlue: hsl(229, 6%, 66%);
    --veryLightGray: hsl(0, 0%, 98%);
    --weight1: 200;
    --weight2: 400;
    --weight3: 600;
}

.attribution { 
    font-size: 11px; text-align: center; 
}
.attribution a { 
    color: hsl(228, 45%, 44%); 
}

h1:first-of-type {
    font-weight: var(--weight1);
    color: var(--varyDarkBlue);

}

h1:last-of-type {
    color: var(--varyDarkBlue);
}

@media (max-width: 400px) {
    h1 {
        font-size: 1.5rem;
    }
}

.header {
    text-align: center;
    line-height: 0.8;
    margin-bottom: 50px;
    margin-top: 100px;
}

.header p {
    margin: 0 auto;
    line-height: 2;
    color: var(--grayishBlue);
}


.box p {
    color: var(--grayishBlue);
}

.box {
    border-radius: 5px;
    box-shadow: 0px 30px 40px -20px var(--grayishBlue);
    padding: 30px;
    margin: 20px;  
}

img {
    float: right;
}

@media (max-width: 450px) {
    .box {
        height: 200px;
    }
}

@media (max-width: 950px) and (min-width: 450px) {
    .box {
        text-align: center;
        height: 180px;
    }
}

.cyan {
    border-top: 3px solid var(--cyan);
}
.red {
    border-top: 3px solid var(--red);
}
.blue {
    border-top: 3px solid var(--blue);
}
.orange {
    border-top: 3px solid var(--orange);
}

h2 {
    color: var(--varyDarkBlue);
    font-weight: var(--weight3);
}


@media (min-width: 950px) {
    .row1-container {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    
    .row2-container {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .box-down {
        position: relative;
        top: 150px;
    }
    .box {
        width: 50%;
     
    }
    .header p {
        width: 30%;
    }
    
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
        <span class="nero__bold"> ABOUT </span> THE </span> STORE
      </div>
      <p class="nero__text"></p>
      </div>

	  <div class="row1-container">
    <div class="box box-down cyan">
      <h2>Aims</h2>
      <p>Our goal is to establish a highly dependable school supply business brand that will distribute a wide range of teaching resources that are not only high in quality but also reasonably priced for consumers.</p>
      <img src="https://assets.codepen.io/2301174/icon-supervisor.svg" alt="">
    </div>

    <div class="box red">
      <h2>Our Story</h2>
      <p>Likha School Supplies is a newly established shop in Manila, Philippines that offers low-cost educational commodities to customers. It gained its popularity due to its convenience, especially now during a pandemic when everything is done online. They provide a wide range of school supplies needed for the students in town that are very high-quality despite their cheap selling price. Aside from that, they also focus on the services they offer, constantly improving and maintaining their highest standard of customer service. The people behind this create programs for the development and overall advancement of the shop. Part of their objective is to support and bring knowledge to those students within their reach, particularly the underprivileged ones, through education empowerment.
          Likha School Supplies is owned by a group of young entrepreneurs who aspired to be successful in life at an early age. These individuals cultivate mutually beneficial relationships for the welfare and progress of the company, and all of their efforts are concentrated on supplying their customers with high-quality tools that will accompany them in their success.</p>
      <img src="https://assets.codepen.io/2301174/icon-team-builder.svg" alt="">
    </div>

    <div class="box box-down blue">
      <h2>Target Buyers</h2>
      <p>The target market of this e-commerce is students and teachers. It will provide both students and teachers with high quality and long-lasting products throughout their academic journey.</p>
      <img src="https://assets.codepen.io/2301174/icon-calculator.svg" alt="">
    </div>
  </div>
 
<footer class="page-footer">

	<div class="footer-nav">
		<div class="container clearfix">

			<div class="footer-nav__col footer-nav__col--contacts">
				<div class="footer-nav__heading">Contact Details</div>
				<address class="address">
				Head Office: 3054 Corner Lot. Sampaloc, Manila, Philippines.
			</address>
				<div class="telephone">
					Telephone:
					<a class="telephone__number" href="tel:8736300">8736300</a>
				</div>
				<div class="email">
					Email Address:
					<a href="mailto:likha@gmail.com" class="email__address">likha@gmail.com</a>
				</div>
			</div>
		</div>
	</div>

	<div class="page-footer__subline">
		<div class="container clearfix">

			<div class="copyright">
				&copy;2022 Likha School Supplies&trade;
			</div>

			<div class="developer">
				Developed by: Group 5
			</div>

			<div class="designby">
				Designed by: Group 5
			</div>
		</div>
	</div>
</footer>
