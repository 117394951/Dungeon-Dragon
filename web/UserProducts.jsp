<%-- 
    Document   : UserProducts
    Created on : 20-Dec-2019, 15:36:50
    Author     : becca
--%>
<%@page import="com.bsapp.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
                    <li><a href="./register.html">My Account</a></li>
                    <li><a href="UserCart.jsp">My Cart</a></li>
                    <li><a href="UserCheckout.jsp">Checkout</a></li>	
                    <li><a href="./contact.html">Contact Us</a></li>
                    <li>Logged in as 
                        <% User user = (User) session.getAttribute("SKUSER");%>
                        <% if (user!= null){
                            out.println("Logged in: " + user.getFirstName()); }
                            else { out.println("(Unregistered User)");} %></li>           
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
                        <li><a href="./UserProducts.jsp">Clothing</a>					
                            <ul>
                                <li><a href="./UserProducts.jsp">Womens</a></li>									
                                <li><a href="./UserProducts.jsp">Mens</a></li>
                                <li><a href="./UserProducts.jsp">Kids</a></li>									
                            </ul>
                        </li>															
                        <li><a href="./UserProducts.jsp">Furniture</a>					
                            <ul>
                                <li><a href="./UserProducts.jsp">Bed Room</a></li>									
                                <li><a href="./UserProducts.jsp">Living Room</a></li>
                                <li><a href="./UserProducts.jsp">Accessories</a></li>									
                            </ul>
                        </li>							
                        <li><a href="./UserProducts.jsp">Art</a>
                            <ul>									
                                <li><a href="./UserProducts.jsp">Canvas</a></li>
                                <li><a href="./UserProducts.jsp">Poster</a></li>
                                <li><a href="./UserProducts.jsp">Sculptures</a></li>
                            </ul>
                        </li>
                        <li><a href="./UserProducts.jsp">Most Popular</a></li>
                        <li><a href="./UserProducts.jsp">Latest Dragons</a></li>
                    </ul>
                    </nav>
                </div>
            </section>
            
			<section class="header_text sub">
			<img class="pageBanner" src="img/artwork.jpg" alt="New products" >
				<h4><span>New products</span></h4>
			</section>
            
			<section class="main-content">
				<div class="row">						
                                    <div class="span9">								
                                        <ul class="thumbnails listing-products">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <a href="UserProductDetails.jsp"><img src="img/dragonTable.jpg" alt="" /></a><br/>
                                                    <a href="UserProductDetails.jsp" class="title">Dragon Marble Table</a><br/>
                                                    <a href="UserProducts.jsp" class="category">Living Room</a>
                                                    <p class="price">$999.99</p>
                                                </div>
                                            </li>       
                                            <li class="span3">
                                                <div class="product-box">												
                                                    <a href="UserProductDetails.jsp"><img src="img/dragonChair.jpg" alt="" /></a><br/>
                                                    <a href="UserProductDetails.jsp" class="title">Carved Rosewood Chair</a><br/>
                                                    <a href="UserProducts.jsp" class="category">Living Room</a>
                                                    <p class="price">$850.00</p>
                                                </div>
                                            </li>
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>												
                                                    <a href="UserProductDetails.jsp"><img src="img/dragonLamp.png" alt="" /></a><br/>
                                                    <a href="UserProductDetails.jsp" class="title">Crystal Cross Lamp</a><br/>
                                                    <a href="UserProducts.jsp" class="category">Bed Room</a>
                                                    <p class="price">$460.00</p>
                                                </div>
                                            </li>
                                            <li class="span3">
                                                <div class="product-box">												
                                                    <span class="sale_tag"></span>
                                                    <a href="UserProductDetails.jsp"><img src="img/dragontable2.jpg" alt="" /></a><br/>
                                                    <a href="UserProductDetails.jsp" class="title">Green Crystal Table</a><br/>
                                                    <a href="UserProducts.jsp" class="category">Living Room</a>
                                                    <p class="price">$950.00</p>
                                                </div>
                                            </li>
                                            <li class="span3">
                                                <div class="product-box">     
                                                    <span class="sale_tag"></span>                                   												
                                                    <a href="UserProductDetails.jsp"><img src="img/table2.jpg" alt="" /></a><br/>
                                                    <a href="UserProductDetails.jsp" class="title">Grey Stone Table</a><br/>
                                                    <a href="UserProducts.jsp" class="category">Living Room</a>
                                                    <p class="price">$420.00</p>
                                                </div>
                                            </li>       
                                            <li class="span3">
                                                <div class="product-box">     
                                                    <span class="sale_tag"></span>                                   												
                                                    <a href="UserProductDetails.jsp"><img alt="" src="img/bedroom.jpg"></a><br/>
                                                    <a href="UserProductDetails.jsp" class="title">Chinese Red Bed Cover</a><br/>
                                                    <a href="UserProducts.jsp" class="category">Bed Room</a>
                                                    <p class="price">$40.00</p>
                                                </div>      
                                            </li>   
                                            <li class="span3">
                                                <div class="product-box">   
                                                    <span class="sale_tag"></span>                                     												
                                                    <a href="UserProductDetails.jsp"><img alt="" src="img/box.jpg"></a><br/>
                                                    <a href="UserProductDetails.jsp" class="title">Metal Trinket Box</a><br/>
                                                    <a href="UserProducts.jsp" class="category">Accessories</a>
                                                    <p class="price">$20.00</p>
                                                </div>
                                            </li>   
                                            <li class="span3">
                                                <div class="product-box">                                        												
                                                    <a href="UserProductDetails.jsp"><img alt="" src="img/rollHolder.jpg"></a><br/>
                                                    <a href="UserProductDetails.jsp" class="title">Toilet Roll Holder</a><br/>
                                                    <a href="UserProducts.jsp" class="category">Accessories</a>
                                                    <p class="price">$40.00</p>
                                                </div>
                                            </li>   

                                            <li class="span3">
                                                <div class="product-box">                                        												
                                                    <a href="UserProductDetails.jsp"><img alt="" src="img/silver.jpg"></a><br/>
                                                    <a href="UserProductDetails.jsp" class="title">Silver Table Ornament</a><br/>
                                                    <a href="UserProducts.jsp" class="category">Accessories</a>
                                                    <p class="price">$20.00</p>
                                                </div>
                                            </li>   
                                        </ul>								
                                        <hr>
                                        <div class="pagination pagination-small pagination-centered">
                                            <ul>
                                                <li><a href="#">Prev</a></li>
                                                <li class="active"><a href="#">1</a></li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">3</a></li>
                                                <li><a href="#">4</a></li>
                                                <li><a href="#">Next</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="span3 col">
                                        <div class="block">	
                                            <ul class="nav nav-list">
                                                <li class="nav-header">SUB CATEGORIES</li>
                                                <li><a href="UserProducts.jsp">Clothing</a></li>
                                                <li class="active"><a href="UserProducts.jsp">Furniture</a></li>
                                                <li><a href="UserProducts.jsp">Art</a></li>
                                            </ul>
                                            <br/>
                                            <ul class="nav nav-list below">
                                                <li class="nav-header">MANUFACTURES</li>
                                                <li><a href="UserProducts.jsp">Dragon Factory</a></li>
                                                <li><a href="UserProducts.jsp">Dragon Stone</a></li>
                                                <li><a href="UserProducts.jsp">Real Handmade</a></li>
                                                <li><a href="UserProducts.jsp">Breakthru Designs</a></li>
                                            </ul>
                                        </div>
                                        <div class="block">
                                            <h4 class="title">
                                            <span class="pull-left"><span class="text">Randomize</span></span>
                                            <span class="pull-right">
                                            <a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
                                            </span>
                                            </h4>
                                            <div id="myCarousel" class="carousel slide">
                                                <div class="carousel-inner">
                                                    <div class="active item">
                                                        <ul class="thumbnails listing-products">
                                                            <li class="span3">
                                                                <div class="product-box">
                                                                    <span class="sale_tag"></span>												
                                                                    <img alt="" src="img/dragontable2.jpg"><br/>
                                                                    <a href="UserProductDetails.jsp" class="title">Green Crystal Table</a><br/>
                                                                    <a href="UserProducts.jsp" class="category">Living Room</a>
                                                                    <p class="price">$950.00</p>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="item">
                                                        <ul class="thumbnails listing-products">
                                                            <li class="span3">
                                                                <div class="product-box">												
                                                                    <img alt="" src="img/silver.jpg"><br/>
                                                                    <a href="UserProductDetails.jsp" class="title">Silver Table Ornament</a><br/>
                                                                    <a href="UserProducts.jsp" class="category">Accessories</a>
                                                                    <p class="price">$20.00</p>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block">								
                                            <h4 class="title"><strong>Best</strong> Seller</h4>								
                                            <ul class="small-product">
                                                <li>
                                                    <a href="#" title="">
                                                    <img src="img/dragonLamp.png" alt=" ">
                                                    </a>
                                                    <a href="#">Crystal Cross</a>
                                                </li>
                                                <li>
                                                    <a href="#" title="">
                                                            <img src="img/dragonTable.jpg" alt=" ">
                                                    </a>
                                                    <a href="#">Dragon Table</a>
                                                </li>
                                                <li>
                                                    <a href="#" title="">
                                                            <img src="img/box.jpg" alt=" ">
                                                    </a>
                                                    <a href="#">Trinket Box</a>
                                                </li>   
                                            </ul>
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
                            <li><a href="./UserHome.jsp">Homepage</a></li>  
                            <li><a href="./contact.html">About Us</a></li>
                            <li><a href="./contact.html">Contact Us</a></li>
                            <li><a href="./UserCart.jsp">Your Cart</a></li>
                            <li><a href="./register.html">Login</a></li>							
                        </ul>					
                    </div>
                    <div class="span4">
                            <h4>My Account</h4>
                            <ul class="nav">
                                <li><a href="./register.html">My Account</a></li>
                                <li><a href="#">Order History</a></li>
                                <li><a href="#">Wish List</a></li>
                            </ul>
                    </div>
                    <div class="span5">
                            <p class="logo"><img src="img/dragon1.png" class="site_logo" alt=""></p>
                            <p>If you can't be a dragon, be yourself.</p>
                            <br/>
                    </div>					
                </div>	
            </section>
                    
            <section id="copyright">
                    <span>Copyright 2013 bootstrappage template  All right reserved.</span>
            </section>
            <script src="js/common.js"></script>
		</div>
    </body>
</html>