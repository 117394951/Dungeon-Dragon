<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="com.bsapp.model.User"%>
<html lang="en">
    <c:set var="loc" value="en_US"/>
<c:if test="${!(empty param.locale)}">
    <c:set var="loc" value="${param.locale}"/>
</c:if>
<fmt:setLocale value="${loc}" />

<fmt:bundle basename="com.bsapp.utils/app">
    <fmt:setLocale value="${param.locale}"  />
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
                        <button type="button" background-color="#68F3FD" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                        Switch to French</button> 
                    <li><a href="./register.html">My Account</a></li>
                    <li><a href="UserCart.jsp">My Cart</a></li>
                    <li><a href="UserCheckout.jsp">Checkout</a></li>	
                    <li><a href="./contact.html">Contact Us</a></li>
                    <li><% User user = (User) session.getAttribute("SKUSER");%>
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
                    <a href="UserHome.jsp" class="logo pull-left"><img src="img/dragon1.png" class="site_logo" alt=""></a>
                    <nav id="menu" class="pull-right">
                    <ul>
                        <li><a href="./UserProducts.jsp"><fmt:message key="clothing"/></a>					
                            <ul>
                                <li><a href="./UserProducts.jsp">Womens</a></li>									
                                <li><a href="./UserProducts.jsp">Mens</a></li>
                                <li><a href="./UserProducts.jsp">Kids</a></li>									
                            </ul>
                        </li>															
                        <li><a href="./UserProducts.jsp"><fmt:message key="furniture"/></a>					
                            <ul>
                                <li><a href="./UserProducts.jsp">Bed Room</a></li>									
                                <li><a href="./UserProducts.jsp">Living Room</a></li>
                                <li><a href="./UserProducts.jsp">Accessories</a></li>									
                            </ul>
                        </li>							
                        <li><a href="./UserProducts.jsp"><fmt:message key="art"/></a>
                            <ul>									
                                <li><a href="./UserProducts.jsp">Canvas</a></li>
                                <li><a href="./UserProducts.jsp">Poster</a></li>
                                <li><a href="./UserProducts.jsp">Sculptures</a></li>
                            </ul>
                        </li>
                        <li><a href="./UserProducts.jsp"><fmt:message key="mostPopular"/></a></li>
                        <li><a href="./UserProducts.jsp"><fmt:message key="latestDragons"/></a></li>
                        <li></li>
                        
                            <!-- Button trigger modal -->


                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1"  role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Pick a Language</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <c:url value="UserHome.jsp" var="engURL">
                                <c:param name="locale" value="en_US"/>
                              </c:url>

                              <a href="${engURL}">
                                  <img src="https://media.giphy.com/media/Mh9fsz5AolnDq/giphy.gif" height="50" width="50"/>
                              </a>
                                <c:url value="UserHome.jsp" var="frenchURL">
                                  <c:param name="locale" value="fr_FR"/>
                               </c:url>

                               <a href="${frenchURL}"> 
                                    <img src="https://media.giphy.com/media/ErPDvrEYZYNOM/giphy.gif" height="50" width="50"/>
                               </a>
                          </div>
                          
                        </div>
                      </div>
                    </div>
                    </ul>
                    </nav>
                </div>
            </section>
            
            <section  class="homepage-slider" id="home-slider">
                <div class="flexslider">
                    <ul class="slides">
                        <li>
                            <img src="img/dragonChairbanner.jpg" alt="" />
                            <div class="intro">
                                    <h1>Mid season sale</h1>
                                    <p><span>Up to 50% Off</span></p>
                                    <p><span>On selected items online and in stores</span></p>
                            </div>
                        </li>
                        <li>
                            <img src="img/artwork.jpg" alt="" />
                            <div class="intro">
                                    <h1>New Season Wallpaper</h1>
                                    <p><span>Up to 20% off</span></p>
                            </div>
                        </li>
                    </ul>
                </div>			
            </section>
            <section class="header_text">
                    <b>If you can't be yourself, be a dragon! </b>
            </section>
            
            <section class="main-content">
                <div class="row">
                    <div class="span12">													
                        <div class="row">
                            <div class="span12">
                                <h4 class="title">
                                <span class="pull-left"><span class="text"><span class="line">Feature <strong>Products</strong></span></span></span>
                                <span class="pull-right">
                                        <a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
                                </span>
                                </h4>
                                <div id="myCarousel" class="myCarousel carousel slide">
                                    <div class="carousel-inner">
                                        <div class="active item">
                                            <ul class="thumbnails">												
                                                <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <p><a href="UserProductDetails.jsp"><img src="img/dragonTable.jpg" alt="" /></a></p>
                                                    <a href="UserProductDetails.jsp" class="title">Dragon Marble Table</a><br/>
                                                    <a href="UserProducts.jsp" class="category">Furniture</a>
                                                    <p class="price">$999.99</p>
                                                </div>
                                                </li>
                                                <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <p><a href="UserProductDetails.jsp"><img src="img/dragonPicture.jpg" alt="" /></a></p>
                                                    <a href="UserProductDetails.jsp" class="title">Mystical Oil Painting</a><br/>
                                                    <a href="UserProducts.jsp" class="category">Art</a>
                                                    <p class="price">$250.50</p>
                                                </div>
                                                </li>
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <p><a href="UserProductDetails.jsp"><img src="img/womenClothing.jpg" alt="" /></a></p>
                                                        <a href="UserProductDetails.jsp" class="title">Women's Dragon Fairy</a><br/>
                                                        <a href="UserProducts.jsp" class="category">Clothing</a>
                                                        <p class="price">$39.99</p>
                                                    </div>
                                                </li>
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <p><a href="UserProductDetails.jsp"><img src="img/dragonChair.jpg" alt="" /></a></p>
                                                        <a href="UserProductDetails.jsp" class="title">Carved Rosewood Chair</a><br/>
                                                        <a href="UserProducts.jsp" class="category">Furniture</a>
                                                        <p class="price">$850.00</p>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item">
                                            <ul class="thumbnails">
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <p><a href="UserProductDetails.jsp"><img src="img/childrenClothing.jpg" alt="" /></a></p>
                                                        <a href="UserProductDetails.jsp" class="title">Kid's Green Costume</a><br/>
                                                        <a href="UserProducts.jsp" class="category">Clothing</a>
                                                        <p class="price">$20.00</p>
                                                    </div>
                                                </li>
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <p><a href="UserProductDetails.jsp"><img src="img/dragonLamp.png" alt="" /></a></p>
                                                        <a href="UserProductDetails.jsp" class="title">Crystal Cross Lamp</a><br/>
                                                        <a href="UserProducts.jsp" class="category">Furniture</a>
                                                        <p class="price">$460.00</p>
                                                    </div>
                                                </li>
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <p><a href="UserProductDetails.jsp"><img src="img/poster2.jpg" alt="" /></a></p>
                                                        <a href="UserProductDetails.jsp" class="title">Magic Dragon Poster</a><br/>
                                                        <a href="UserProducts.jsp" class="category">Art</a>
                                                        <p class="price">$15.00</p>
                                                    </div>
                                                </li>
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <p><a href="UserProductDetails.jsp"><img src="img/menMask.jpg" alt="" /></a></p>
                                                        <a href="UserProductDetails.jsp" class="title">Purple Mask</a><br/>
                                                        <a href="UserProducts.jsp" class="category">Clothing</a>
                                                        <p class="price">$120.00</p>
                                                    </div>
                                                </li>																																	
                                            </ul>
                                        </div>
                                    </div>							
                                </div>
                            </div>						
                        </div>
                        <br/>
                        
                        <div class="row">
                        <div class="span12">
                            <h4 class="title">
                            <span class="pull-left"><span class="text"><span class="line">Latest <strong>Products</strong></span></span></span>
                            <span class="pull-right">
                                    <a class="left button" href="#myCarousel-2" data-slide="prev"></a><a class="right button" href="#myCarousel-2" data-slide="next"></a>
                            </span>
                            </h4>
                                <div id="myCarousel-2" class="myCarousel carousel slide">
                                    <div class="carousel-inner">
                                        <div class="active item">
                                            <ul class="thumbnails">												
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <span class="sale_tag"></span>
                                                        <p><a href="UserProductDetails.jsp"><img src="img/childrenClothing.jpg" alt="" /></a></p>
                                                        <a href="UserProductDetails.jsp" class="title">Kid's Green Costume</a><br/>
                                                        <a href="UserProducts.jsp" class="category">Clothing</a>
                                                        <p class="price">$20.00</p>
                                                    </div>
                                                </li>
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <p><a href="UserProductDetails.jsp"><img src="img/menMask.jpg" alt="" /></a></p>
                                                        <a href="UserProductDetails.jsp" class="title">Purple Mask</a><br/>
                                                        <a href="UserProducts.jsp" class="category">Clothing</a>
                                                        <p class="price">$120.00</p>
                                                    </div>
                                                </li>
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <p><a href="UserProductDetails.jsp"><img src="img/dragonPoster.jpg" alt="" /></a></p>
                                                        <a href="UserProductDetails.jsp" class="title">Chinese Style Poster</a><br/>
                                                        <a href="UserProducts.jsp" class="category">Art</a>
                                                        <p class="price">$15.00</p>
                                                    </div>
                                                </li>
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <p><a href="UserProductDetails.jsp"><img src="img/dragonLamp.png" alt="" /></a></p>
                                                        <a href="UserProductDetails.jsp" class="title">Crystal Cross Lamp</a><br/>
                                                        <a href="UserProducts.jsp" class="category">Furniture</a>
                                                        <p class="price">$460.00</p>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        
                                        <div class="item">
                                            <ul class="thumbnails">
                                                <li class="span3">
                                                        <div class="product-box">
                                                                <p><a href="UserProductDetails.jsp"><img src="img/dragonTable.jpg" alt="" /></a></p>
                                                                <a href="UserProductDetails.jsp" class="title">Dragon Marble Table</a><br/>
                                                                <a href="UserProducts.jsp" class="category">Furniture</a>
                                                                <p class="price">$999.99</p>
                                                        </div>
                                                </li>
                                                <li class="span3">
                                                        <div class="product-box">
                                                                <p><a href="UserProductDetails.jsp"><img src="img/menClothing.jpg" alt="" /></a></p>
                                                                <a href="UserProductDetails.jsp" class="title">Men's Dragon Warrior</a><br/>
                                                                <a href="UserProducts.jsp" class="category">Clothing</a>
                                                                <p class="price">$39.99</p>
                                                        </div>
                                                </li>
                                                <li class="span3">
                                                        <div class="product-box">
                                                                <p><a href="UserProductDetails.jsp"><img src="img/womenClothing2.jpg" alt="" /></a></p>
                                                                <a href="UserProductDetails.jsp" class="title">Women's Dragon Princess</a><br/>
                                                                <a href="UserProducts.jsp" class="category">Clothing</a>
                                                                <p class="price">$39.99</p>
                                                        </div>
                                                </li>
                                                <li class="span3">
                                                        <div class="product-box">
                                                                <p><a href="UserProductDetails.jsp"><img src="img/table2.jpg" alt="" /></a></p>
                                                                <a href="UserProductDetails.jsp" class="title">Grey Stone Table</a><br/>
                                                                <a href="UserProducts.jsp" class="category">Furniture</a>
                                                                <p class="price">$420.00</p>
                                                        </div>
                                                </li>																																	
                                            </ul>
                                        </div>
                                    </div>							
                                </div>
                            </div>						
                        </div>
                        
                        <div class="row feature_box">						
                            <div class="span4">
                                <div class="service">
                                    <div class="responsive">	
                                        <img src="img/feature_img_2.png" alt="" />
                                        <h4>UNCOMPROMISED <strong>QUALITY</strong></h4><
                                        <p>We are constantly updating our clothing, furniture and art by sourcing hot, trending and unique pieces from our loyal manufacturers. Design, durability and comfort are all key factors in building our collection.</p>									
                                    </div>
                                </div>
                            </div>
                            <div class="span4">	
                                <div class="service">
                                    <div class="customize">			
                                        <img src="img/feature_img_1.png" alt="" />
                                        <h4>FAST <strong>SHIPPING</strong></h4>
                                        <p>Many of our competitors source from wholesalers, which often causes long delays when you order a product. Because we source directly from the manufacturer, we have our collections in stock and ready for immediate delivery.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="span4">
                                <div class="service">
                                    <div class="support">	
                                        <img src="img/feature_img_3.png" alt="" />
                                        <h4>24/7 LIVE <strong>SUPPORT</strong></h4>
                                        <p>We are proud to have a dedicated customer service team whose job is to deliver the very best support to you, our customer.</p>
                                    </div>
                                </div>
                            </div>	
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
        </div>
            <script src="js/common.js"></script>
            <script src="js/jquery.flexslider-min.js"></script>
            <script type="text/javascript">
                    $(function() {
                            $(document).ready(function() {
                                    $('.flexslider').flexslider({
                                            animation: "fade",
                                            slideshowSpeed: 4000,
                                            animationSpeed: 600,
                                            controlNav: false,
                                            directionNav: true,
                                            controlsContainer: ".flex-container" // the container that holds the flexslider
                                    });
                            });
                    });
            </script>
    </body>
</fmt:bundle>
</html>
