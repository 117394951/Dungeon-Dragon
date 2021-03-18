<%-- 
    Document   : UserProductDetails
    Created on : 20-Dec-2019, 15:39:13
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
                <h4><span>Product Detail</span></h4><br/>
                <h4><span>Dragon Marble Table</span></h4>
            </section>
            
            <section class="main-content">				
                <div class="row">						
                    <div class="span9">
                        <div class="row">
                            <div class="span4">
                                <a href="img/dragonTable.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 1"><img alt="" src="img/dragonTable.jpg"></a>												
                                <ul class="thumbnails small">								
                                    <li class="span1">
                                        <a href="img/zoom1.png" class="thumbnail" data-fancybox-group="group1" title="Description 2"><img src="img/zoom1.png" alt=""></a>
                                    </li>								
                                    <li class="span1">
                                        <a href="img/zoom2.png" class="thumbnail" data-fancybox-group="group1" title="Description 3"><img src="img/zoom2.png" alt=""></a>
                                    </li>													
                                    <li class="span1">
                                        <a href="img/zoom3.png" class="thumbnail" data-fancybox-group="group1" title="Description 4"><img src="img/zoom3.png" alt=""></a>
                                    </li>
                                    <li class="span1">
                                        <a href="img/zoom4.png" class="thumbnail" data-fancybox-group="group1" title="Description 5"><img src="img/zoom4.png" alt=""></a>
                                    </li>
                                </ul>
                            </div>
							
                            <div class="span5">
                                <address>
                                    <strong>Brand:</strong> <span>Seventh Avenue</span><br>
                                    <strong>Product Code:</strong> <span>Product 1</span><br>
                                    <strong>Availability:</strong> <span>1 Left in Stock</span><br>								
                                </address>									
                                <h4><strong>Price: $999.99</strong></h4>
                            </div>
                            
                            <div class="span5">
                                    <label class="checkbox">
                                        <input type="checkbox" value=""> Option one is this and that
                                    </label>
                                    <br/>
                                    <label class="checkbox">
                                        <input type="checkbox" value=""> Be sure to include why it's great
                                    </label>
                                    <p>&nbsp;</p>
                                    
                                        <label>Qty:</label>
                                        <input type="text" class="span1" placeholder="1">
                                        
                                        <br>
                                        
                                            <a href="UserCart.jsp" class="title"><strong>Add to Cart</strong></a>
                                        

                            </div>							
                        </div>               

                        
                        <div class="row">
                            <div class="span9">
                                <ul class="nav nav-tabs" id="myTab">
                                    <li class="active"><a href="#home">Description</a></li>
                                    <li class=""><a href="#profile">Additional Information</a></li>
                                </ul>							 
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home">Gem tones painted on an elaborate ornate stone carving. Portrays a mystical dragon approaching an amazing crystal-like stone. Crafted carefully by the stone craving manufacturers The Real Handmade, their eye to detail is displayed immensely. This side table has a double-pane glass acting as a table top. Sleek, modern and magical.</div>
                                    <div class="tab-pane" id="profile">
                                        <table class="table table-striped shop_attributes">	
                                            <tbody>
                                                <tr class="">
                                                    <th>Frame</th>
                                                    <td>Glued Double-Pane Glass on Marble Stone</td>
                                                </tr>		
                                                <tr class="alt">
                                                    <th>Colour</th>
                                                    <td>Turquoise, Purple</td>
                                                </tr>
                                                <tr class="alt">
                                                    <th>Dimensions</th>
                                                    <td>100cm X 50cm</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>							
                            </div>					
                            
                            <div class="span9">	
                                <br>
                                <h4 class="title">
                                        <span class="pull-left"><span class="text"><strong>Related</strong> Products</span></span>
                                        <span class="pull-right">
                                        <a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-1" data-slide="next"></a>
                                        </span>
                                </h4>
                                <div id="myCarousel-1" class="carousel slide">
                                    <div class="carousel-inner">
                                        <div class="active item">
                                            <ul class="thumbnails listing-products">
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <span class="sale_tag"></span>												
                                                        <p><a href="product_detail.html"><img src="img/dragonChair.jpg" alt="" /></a></p>
                                                        <a href="product_detail.html" class="title">Carved Rosewood Chair</a><br/>
                                                        <a href="products.html" class="category">Furniture</a>
                                                        <p class="price">$850.00</p>
                                                    </div>
                                                </li>
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <span class="sale_tag"></span>												
                                                        <p><a href="product_detail.html"><img src="img/dragonLamp.png" alt="" /></a></p>
                                                        <a href="product_detail.html" class="title">Crystal Cross Lamp</a><br/>
                                                        <a href="products.html" class="category">Furniture</a>
                                                        <p class="price">$460.00</p>
                                                    </div>
                                                </li>       
                                                <li class="span3">
                                                        <div class="product-box">												
                                                                <p><a href="product_detail.html"><img src="img/menMask.jpg" alt="" /></a></p>
                                                                <a href="product_detail.html" class="title">Purple Mask</a><br/>
                                                                <a href="products.html" class="category">Clothing</a>
                                                                <p class="price">$120.00</p>
                                                        </div>
                                                </li>												
                                            </ul>
                                        </div>
                                        
                                        <div class="item">
                                            <ul class="thumbnails listing-products">
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <span class="sale_tag"></span>												
                                                        <p><a href="product_detail.html"><img src="img/table2.jpg" alt="" /></a></p>
                                                        <a href="product_detail.html" class="title">Grey Stone Table</a><br/>
                                                        <a href="products.html" class="category">Furniture</a>
                                                        <p class="price">$420.00</p>
                                                    </div>
                                                </li>       
                                                <li class="span3">
                                                    <div class="product-box">												
                                                        <a href="product_detail.html"><img src="img/dragonTable2.jpg" alt="" /></a><br/>
                                                        <a href="product_detail.html" class="title">Green Crystal Table</a><br/>
                                                        <a href="products.html" class="category">Living Room</a>
                                                        <p class="price">$950.00</p>
                                                    </div>
                                                </li>
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <span class="sale_tag"></span>												
                                                        <a href="product_detail.html"><img alt="" src="img/box.jpg"></a><br/>
                                                        <a href="product_detail.html" class="title">Metal Trinket Box</a><br/>
                                                        <a href="products.html" class="category">Accessories</a>
                                                        <p class="price">$20.00</p>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="span3 col">
                        <div class="block">	
                            <ul class="nav nav-list">
                                <li class="nav-header">SUB CATEGORIES</li>
                                <li><a href="products.html">Clothing</a></li>
                                <li class="active"><a href="products.html">Furniture</a></li>
                                <li><a href="products.html">Art</a></li>
                            </ul>
                            <br/>
                            <ul class="nav nav-list below">
                                <li class="nav-header">MANUFACTURES</li>
                                <li><a href="products.html">Dragon Factory</a></li>
                                <li><a href="products.html">Dragon Stone</a></li>
                                <li><a href="products.html">Real Handmade</a></li>
                                <li><a href="products.html">Breakthru Designs</a></li>
                            </ul>
                        </div>
                        
                        <div class="block">
                            <h4 class="title">
                                <span class="pull-left"><span class="text">Randomize</span></span>
                                <span class="pull-right">
                                        <a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
                                </span>
                            </h4>
                            
                            <div class="carousel-inner">
                                <div class="active item">
                                    <ul class="thumbnails listing-products">
                                        <li class="span3">
                                            <div class="product-box">
                                                <span class="sale_tag"></span>												
                                                <img alt="" src="img/dragontable2.jpg"><br/>
                                                <a href="product_detail.html" class="title">Maine Tall Bookcase</a><br/>
                                                <a href="#" class="category">Living Room Furniture</a>
                                                <p class="price">$261</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="item">
                                    <ul class="thumbnails listing-products">
                                        <li class="span3">
                                            <div class="product-box">												
                                                <img alt="" src="img/silver.jpg"><br/>
                                                <a href="product_detail.html" class="title">Donnigthon Bench</a><br/>
                                                <a href="#" class="category">Living Room Furniture</a>
                                                <p class="price">$134</p>
                                            </div>
                                        </li>
                                    </ul>
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
		<script>
			$(function () {
				$('#myTab a:first').tab('show');
				$('#myTab a').click(function (e) {
					e.preventDefault();
					$(this).tab('show');
				})
			})
			$(document).ready(function() {
				$('.thumbnail').fancybox({
					openEffect  : 'none',
					closeEffect : 'none'
				});
				
				$('#myCarousel-2').carousel({
                    interval: 2500
                });								
			});
		</script>
    </body>
</html>
