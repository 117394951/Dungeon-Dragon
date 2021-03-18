<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dragon Dungeon E-Commerce</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet">      
		<link href="css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="css/flexslider.css" rel="stylesheet"/>
		<link href="css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="js/jquery-1.7.2.min.js"></script>
		<script src="js/bootstrap.min.js"></script>				
		<script src="js/superfish.js"></script>	
		<script src="js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
    </head>
	
    <body>		
			
        <!--Navigation Bar -->
        <div id="top-bar" class="container">
            <div class="row">
                <div class="span4">
                    <form method="POST" class="search_form">
                        <input type="text" class="input-block-level search-query" Placeholder="Search for your Dragon">
                    </form>
                </div>
                <div class="account pull-right">
                    <ul class="user-menu">				
                    <li><a href="register.html">My Account</a></li>
                    <li><a href="cart.html">My Cart</a></li>
                    <li><a href="checkout.html">Checkout</a></li>                    
                    <li><a href="./contact.html">Contact Us</a></li>
                    <li><a href="register.html">Log In</a></li>
                    </ul>
                </div>
            </div>
        </div>
        
        <div id="wrapper" class="container">
            <section class="navbar main-menu">
                <div class="navbar-inner main-menu">				
                    <a href="index.html" class="logo pull-left"><img src="img/dragon1.png" class="site_logo" alt=""></a>
                    <nav id="menu" class="pull-right">
                    <ul>
                        <li><a href="./products.html">Clothing</a>					
                            <ul>
                                <li><a href="./products.html">Womens</a></li>									
                                <li><a href="./products.html">Mens</a></li>
                                <li><a href="./products.html">Kids</a></li>									
                            </ul>
                        </li>															
                        <li><a href="./products.html">Furniture</a>					
                            <ul>
                                <li><a href="./products.html">Bed Room</a></li>									
                                <li><a href="./products.html">Living Room</a></li>
                                <li><a href="./products.html">Accessories</a></li>									
                            </ul>
                        </li>							
                        <li><a href="./products.html">Art</a>
                            <ul>									
                                <li><a href="./products.html">Canvas</a></li>
                                <li><a href="./products.html">Poster</a></li>
                                <li><a href="./products.html">Sculptures</a></li>
                            </ul>
                        </li>
                        <li><a href="./products.html">Most Popular</a></li>
                        <li><a href="./products.html">Latest Dragons</a></li>
                    </ul>
                    </nav>
                </div>
            </section>
            
            <section class="header_text sub">
                    <img class="pageBanner" src="img/artwork.jpg" alt="New products" >
                    <h4><span>Shopping Cart</span></h4>
            </section>
            
            <section class="main-content">				
                <div class="row">
                    <div class="span9">					
                        <h4 class="title"><span class="text"><strong>Your</strong> Cart</span></h4>
                            <table class="table table-striped">
                            <thead>
                                    <tr>
                                            <th>Remove</th>
                                            <th>Image</th>
                                            <th>Product Name</th>
                                            <th>Quantity</th>
                                            <th>Unit Price</th>
                                            <th>Total</th>
                                    </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="checkbox" value="option1"></td>
                                    <td><a href="product_detail.html"><img alt="" src="img/dragonLamp.png"></a></td>
                                    <td>Crystal Cross Lamp</td>
                                    <td><input type="text" placeholder="1" class="input-mini"></td>
                                    <td>$460.00</td>
                                    <td>$460.00</td>
                                </tr>			  
                                <tr>
                                    <td><input type="checkbox" value="option1"></td>
                                    <td><a href="product_detail.html"><img alt="" src="img/menMask.jpg"></a></td>
                                    <td>Purple Mask</td>
                                    <td><input type="text" placeholder="2" class="input-mini"></td>
                                    <td>$120.00</td>
                                    <td>$240.00</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" value="option1"></td>
                                    <td><a href="product_detail.html"><img alt="" src="img/dragonTable.jpg"></a></td>
                                    <td>Dragon Marble Table</td>
                                    <td><input type="text" placeholder="1" class="input-mini"></td>
                                    <td>$1,000.00</td>
                                    <td>$1,000.00</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td><strong>$1699.99</strong></td>
                                </tr>		  
                            </tbody>    
                            </table>

                            <h4>What would you like to do next?</h4>
                            <p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
                            <label class="radio">
                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                                Use Coupon Code
                            </label>
                            <label class="radio">
                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                Estimate Shipping &amp; Taxes
                            </label>
                            <hr>
                            <p class="cart-total right">
                                <strong>Sub-Total</strong>:	$1700.00<br>
                                <strong>Eco Tax (+2.00)</strong>: $2.00<br>
                                <strong>VAT (+17.5%)</strong>: $297.50<br>
                                <strong>Total</strong>: $1,969.50<br>
                            </p>
                            <hr/>
                            <p class="buttons center">				
                                <button class="btn" type="button">Update</button>
                                <button class="btn btn-inverse" type="submit" id="checkout">Checkout</button>
                            </p>					
                    </div>
                    
                    
                        
                        						
                        </div>
                    </div>
                </section>
            
                <section class="our_client">
                    <h4 class="title"><span class="text">Manufactures</span></h4>
                    <div class="row">					
                        <div class="span2">
                                <a href="#"><img alt="" src="img/comp1.png"></a>
                        </div>
                        <div class="span2">
                                <a href="#"><img alt="" src="img/comp3.jpg"></a>
                        </div>
                        <div class="span2">
                                <a href="#"><img alt="" src="img/comp2.jpg"></a>
                        </div>
                        <div class="span2">
                                <a href="#"><img alt="" src="img/comp4.jpg"></a>
                        </div>
                        <div class="span2">
                                <a href="#"><img alt="" src="img/comp5.jpg"></a>
                        </div>
                        <div class="span2">
                                <a href="#"><img alt="" src="img/comp6.png"></a>
                        </div>
                    </div>
                </section>
            
                <section id="footer-bar">
                    <div class="row">
                        <div class="span3">
                            <h4>Navigation</h4>
                            <ul class="nav">
                                <li><a href="./index.html">Homepage</a></li>  
                                <li><a href="./about.html">About Us</a></li>
                                <li><a href="./contact.html">Contact Us</a></li>
                                <li><a href="./cart.html">Your Cart</a></li>
                                <li><a href="./register.html">Login</a></li>							
                            </ul>					
                        </div>
                        <div class="span4">
                            <h4>My Account</h4>
                            <ul class="nav">
                                <li><a href="register.html">My Account</a></li>
                                <li><a href="#">Order History</a></li>
                                <li><a href="#">Wish List</a></li>
                            </ul>
                        </div>
                        <div class="span5">
                            <p class="logo"><img src="img/dragon1.png" class="site_logo" alt=""></p>
                            <p>If you can't be yourself, be a dragon.</p>
                        </div>
                    </div>	
                </section>
            
                <section id="copyright">
                        <span>Copyright 2013 bootstrappage template  All right reserved.</span>
                </section>
        </div>
        
        <script src="js/common.js"></script>
        <script>
                $(document).ready(function() {
                        $('#checkout').click(function (e) {
                                document.location.href = "checkout.html";
                        })
                });
        </script>		
    </body>
</html>
