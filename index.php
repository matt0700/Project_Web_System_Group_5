<style>
  
.container1  {
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  height: 320px;
  width: 320px;
  background: #f2f2f2;
  overflow: hidden;
  border-radius: 20px;
  cursor: pointer;
  box-shadow: 0 0 20px 8px #d0d0d0;
}

.content {
  position: absolute;
  top: 50%;
  transform: translatey(-50%);
  text-align: justify;
  color: black;
  padding: 40px;
  font-family: 'Merriweather', serif;
}

h1 {
  font-weight: 900;
  text-align: center;
}

h3 {
  font-weight: 300;
}

.flap {
  width: 100%;
  height: 100%;
}

.flap::before {
  position: absolute;
  content: "";
  height: 100%;
  width: 50%;
  background: url("https://pbs.twimg.com/profile_images/1347260174176710658/2GfSZ1i__400x400.jpg") white;
  background-position: 100px;
  background-repeat: no-repeat;
  transition: 1s;
}

.flap::after {
  position: absolute;
  content: "";
  height: 100%;
  width: 50%;
  right: 0;
  background: url("https://pbs.twimg.com/profile_images/1347260174176710658/2GfSZ1i__400x400.jpg") white;
  background-position: -200px;
  background-repeat: no-repeat;
  transition: 1s;
}

.container1:hover .flap::after {
  transform: translatex(300px);
}

.container1:hover .flap::before{
  transform: translatex(-300px);
}

body {
	background: #262a2b;
}
.tilesWrap {
	padding: 0;
	margin: 50px auto;
	list-style: none;
	text-align: center;
}
.tilesWrap li {
	display: inline-block;
	width: 20%;
	min-width: 200px;
	max-width: 230px;
	padding: 80px 20px 40px;
	position: relative;
	vertical-align: top;
	margin: 10px;
	font-family: 'helvetica', san-serif;
	min-height: 25vh;
	background: #262a2b;
	border: 1px solid #252727;
	text-align: left;
}
.tilesWrap li h2 {
	font-size: 114px;
	margin: 0;
	position: absolute;
	opacity: 0.2;
	top: 50px;
	right: 10px;
	transition: all 0.3s ease-in-out;
}
.tilesWrap li h3 {
	font-size: 20px;
	color: #b7b7b7;
	margin-bottom: 5px;
}
.tilesWrap li p {
	font-size: 16px;
	line-height: 18px;
	color: #b7b7b7;
	margin-top: 5px;
}
.tilesWrap li button {
	background: transparent;
	border: 1px solid #b7b7b7;
	padding: 10px 20px;
	color: #b7b7b7;
	border-radius: 3px;
	position: relative;
	transition: all 0.3s ease-in-out;
	transform: translateY(-40px);
	opacity: 0;
	cursor: pointer;
	overflow: hidden;
}
.tilesWrap li button:before {
	content: '';
	position: absolute;
	height: 100%;
	width: 120%;
	background: #b7b7b7;
	top: 0;
	opacity: 0;
	left: -140px;
	border-radius: 0 20px 20px 0;
	z-index: -1;
	transition: all 0.3s ease-in-out;
	
}
.tilesWrap li:hover button {
	transform: translateY(5px);
	opacity: 1;
}
.tilesWrap li button:hover {
	color: #262a2b;
}
.tilesWrap li button:hover:before {
	left: 0;
	opacity: 1;
}
.tilesWrap li:hover h2 {
	top: 0px;
	opacity: 0.6;
}

.tilesWrap li:before {
	content: '';
	position: absolute;
	top: -2px;
	left: -2px;
	right: -2px;
	bottom: -2px;
	z-index: -1;
	background: #fff;
	transform: skew(2deg, 2deg);
}
.tilesWrap li:after {
	content: '';
	position: absolute;
	width: 40%;
	height: 100%;
	left: 0;
	top: 0;
	background: rgba(255, 255, 255, 0.02);
}
.tilesWrap li:nth-child(1):before {
	background: #C9FFBF;
background: -webkit-linear-gradient(to right, #FFAFBD, #C9FFBF);
background: linear-gradient(to right, #FFAFBD, #C9FFBF);
}
.tilesWrap li:nth-child(2):before {
	background: #f2709c;
background: -webkit-linear-gradient(to right, #ff9472, #f2709c);
background: linear-gradient(to right, #ff9472, #f2709c);
}
.tilesWrap li:nth-child(3):before {
	background: #c21500;
background: -webkit-linear-gradient(to right, #ffc500, #c21500);
background: linear-gradient(to right, #ffc500, #c21500);
}
.tilesWrap li:nth-child(4):before {
	background: #FC354C;
background: -webkit-linear-gradient(to right, #0ABFBC, #FC354C);
background: linear-gradient(to right, #0ABFBC, #FC354C);
}
.tilesWrap li:nth-child(5):before {
	background: #C9FFBF;
background: -webkit-linear-gradient(to right, #FFAFBD, #C9FFBF);
background: linear-gradient(to right, #FFAFBD, #C9FFBF);
}


.area {
  text-align: center;
  font-size: 6.5em;
  color: #fff;
  letter-spacing: -7px;
  font-weight: 700;
  text-transform: uppercase;
  animation: blur .75s ease-out infinite;
  text-shadow: 0px 0px 5px #fff, 0px 0px 7px #fff;
}

@keyframes blur {
  from {
    text-shadow:0px 0px 10px #fff,
      0px 0px 10px #000000, 
      0px 0px 25px #000000,
      0px 0px 25px #000000,
      0px 0px 25px #000000,
      0px 0px 25px #000000,
      0px 0px 25px #000000,
      0px 0px 25px #000000,
      0px 0px 50px #000000,
      0px 0px 50px #000000,
      0px 0px 50px #7B96B8,
      0px 0px 150px #7B96B8,
      0px 10px 100px #7B96B8,
      0px 10px 100px #7B96B8,
      0px 10px 100px #7B96B8,
      0px 10px 100px #7B96B8,
      0px -10px 100px #7B96B8,
      0px -10px 100px #7B96B8;
  }
}

.link {
	outline: none;
	text-decoration: none;
	position: relative;
	font-size: 5em;
	line-height: 1;
	color: #9e9ba4;
	display: inline-block;
}

.link--kukuri {
	text-transform: uppercase;
	font-weight: 900;
	overflow: hidden;
	line-height: 0.75;
	color: #b2b0a9;
}

.link--kukuri:hover {
	color: #b2b0a9;
}

.link--kukuri::after {
	content: '';
	position: absolute;gi
	height: 16px;
	width: 100%;
	top: 50%;
	margin-top: -8px;
	right: 0;
	background: #F9F9F9;
	transform: translate3d(-100%,0,0);
	transition: transform 0.4s;
	transition-timing-function: cubic-bezier(0.7,0,0.3,1);
}

.link--kukuri:hover::after {
	transform: translate3d(100%,0,0);
}

.link--kukuri::before {
	content: attr(data-letters);
	position: absolute;
	z-index: 2;
	overflow: hidden;
	color: #424242;
	white-space: nowrap;
	width: 0%;
	transition: width 0.4s 0.3s;
}

.link--kukuri:hover::before {
	width: 100%;
}
  </style>

<?php

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>


  <!-- Cover -->
  <main>
    <div class="hero">
      <a href="shop.php" class="btn1">VIEW SHOP
      </a>
    </div>


    <!-- Main -->
	<center>
	<div class="area">⚠ NEW ARRIVALS ⚠</div>
	</center>

    <div class="container1">
  <div class="content">
    <center>
    <h1>TODAY'S VOUCHER
	<br>
	(on selected items)
	</h1>
    <h3>LIKHAISTHEBEST</h3>
    <h3>LIKHAPAMORE</h3>
    <h3>SCHOOLSUPPLIES</h3>
    <h3>OFFICESUPPLIES</h3>
    <h3>BILINARITO</h3>
    </center>
  </div>
  <div class="flap"></div>
</div>



    <div id="content" class="container"><!-- container Starts -->

    <div class="row"><!-- row Starts -->

    <?php

    getPro();

    ?>

    </div><!-- row Ends -->

    </div><!-- container Ends -->

<center>
  <header>
    <hgroup>
    <a class="link link--kukuri" href="#" data-letters="TOP 5 HIGHEST SELLING PRODUCTS">TOP 5 HIGHEST SELLING PRODUCTS</a>
    </hgroup>
  </header>
 
  <ul class="tilesWrap">
	<li>
		<h2>01</h2>
		<h3>Pens</h3>
		<p>
    A writing instrument which scribbles ink onto surfaces such as paper, cloth or canvas to produce a shape. 
		</p>
		<button>Read more</button>
	</li>
	<li>
		<h2>02</h2>
		<h3>Bond Paper (by ream)</h3>
		<p>
    Is a high-quality, durable writing paper, similar to bank paper, but weighing more than 50 g/m2.
		</p>
		<button>Read more</button>
	</li>
	<li>
		<h2>03</h2>
		<h3>Permanent Markers</h3>
		<p>
		Is a type of marker pen that is used to create permanent or semi-permanent writing on an object.
		</p>
		<button>Read more</button>
	</li>
	<li>
		<h2>04</h2>
		<h3>Pad Paper</h3>
		<p>
		Is a stack of paper pages that are often ruled and used for things like taking notes or writing.
		</p>
		<button>Read more</button>
	</li>
  <li>
		<h2>05</h2>
		<h3>Yellow Paper</h3>
		<p>
    Made from High Grade Book Paper for smooth writing experience. Flexo ruled on both sides of the paper . Extra stiff back board for added writing support.
		</p>
		<button>Read more</button>
	</li>
</ul>
</center>

<center>
  <header>
    <hgroup>
	<a class="link link--kukuri" href="#" data-letters="TOP 5 LOWEST SELLING PRODUCTS">TOP 5 LOWEST SELLING PRODUCTS</a>
    </hgroup>
  </header>
 
  <ul class="tilesWrap">
	<li>
		<h2>01</h2>
		<h3>Cutting Mat</h3>
		<p>
    Protects your blade and table top. Has a “Self-healing” surface. Use both sides for extra lifetime.
		</p>
		<button>Read more</button>
	</li>
	<li>
		<h2>02</h2>
		<h3>Binders</h3>
		<p>
    We can provide you with high-quality binders made with recycled and plant-based plastics. It has a clear overlay with a non-glare finish on the front, back, and spine that allows for complete customization of the binder to create the ideal document holder.
		</p>
		<button>Read more</button>
	</li>
	<li>
		<h2>03</h2>
		<h3>One-hole Puncher</h3>
		<p>
    Is an office tool that is used to create holes in sheets of paper, often for the purpose of collecting the sheets in a binder or folder.
		</p>
		<button>Read more</button>
	</li>
	<li>
		<h2>04</h2>
		<h3>Protractor</h3>
		<p>
		A protractor is a tool used to measure angles.Most protractors measure angles in degrees (°).
		</p>
		<button>Read more</button>
	</li>
  <li>
		<h2>05</h2>
		<h3>Planner</h3>
		<p>
    Our beautifully crafted personal organizer features a silky-smooth, animal-friendly leatherette hard cover. We love focusing on quality, so we meticulously designed this personal daily planner, taking a scientific approach to productivity and success so that you can achieve your full potential.
		</p>
		<button>Read more</button>
	</li>
</ul>
</center>


    <!-- FOOTER -->
    <footer class="page-footer">

      <div class="footer-nav">
        <div class="container clearfix">


        <div class="footer-nav__col footer-nav__col--contacts">
				<div class="footer-nav__heading">CONTACT DETAILS</div>
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
            &copy; <?php echo date("Y");?> Likha School Supplies &trade;
          </div>

          <div class="developer">
            Developed by Group 5
          </div>

          <div class="designby">
            Designed by Group 5
          </div>

        </div>
      </div>
    </footer>
</body>

