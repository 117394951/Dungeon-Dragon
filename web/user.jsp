<%-- 
    Document   : user
    Created on : 20-Nov-2019, 13:39:14
    Author     : becca
--%>
<%@page import="com.bsapp.model.User"%>
<%@page import="java.util.Vector"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
				<h4><span>My Account</span></h4>
			</section>
                        <section class="main-content">
                    <div class="row">
                        <div class="span12">
                            <div class="accordion" id="accordion1">
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne">My Details</a>
                                    </div>
                                    <div id="collapseOne" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <div class="row-fluid">
                                                <div class="span6">
                                                    <h4>My Details</h4>
                                                    <form action="#" method="post" class="form-stacked">
                                                    <fieldset>
                                                    <div class="control-group">
                                                        <label class="control-label">Name:</label>
                                                        <div class="controls">
                                                            <input type="text" placeholder="Someday this will work..." class="input-xlarge">
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <div class="controls">
                                                            <button>Edit Details</button>
                                                        </div>
                                                    </div>		                            
                                                    <hr>
                                                    </fieldset>
                                                    </form>		
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Subscriptions</a>
                                    </div>
                                    <div id="collapseTwo" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <div class="row-fluid">
                                                <div class="span6">
                                                    <h4>Subscriptions</h4>
                                                    <form action="#" method="post" class="form-stacked">
                                                    <fieldset>
                                                    <div class="control-group">
                                                        <label class="control-label">Unsubscribe from the Dragon Dungeon newsletter?</label>
                                                        
                                                    </div>
                                                    <div class="control-group">
                                                        <div class="controls">
                                                            <button>Unsubscribe</button>
                                                        </div>
                                                    </div>		                            
                                                    <hr>
                                                    </fieldset>
                                                    </form>		
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapseThree">Order History</a>
                                    </div>
                                    <div id="collapseThree" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <div class="row-fluid">
                                                <div class="span6">
                                                    <h4>Recent order history</h4>
                                                    <form action="#" method="post" class="form-stacked">
                                                    <fieldset>
                                                    <div class="control-group">
                                                        <label class="control-label">Order #13799694</label>
                                                        <button>Track order</button>
                                                        <p>Ship to: <a href="#" class="user-menu"><%= user.getFirstName()%></a><br>
                                                            Order Total: €2,000 <br>
                                                            Order Status: delivered</p>
                                                        <button>Track Order</button>
                                                        <button>Reorder</button>
                                                    </div>
                                                    		                            
                                                    <hr>
                                                    </fieldset>
                                                    </form>		
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    
                                    <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion4" href="#collapseFour">My Wishlist</a>
                                    </div>
                                    <div id="collapseFour" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <div class="row-fluid">
                                                <div class="span6">
                                                    <h4>My Wishlist</h4>
                                                    <form action="#" method="post" class="form-stacked">
                                                    <fieldset>
                                                    <div class="control-group">
                                                        <label class="control-label">Product</label>
                                                        <div class="controls">
                                                            <input type="text" placeholder="Someday this will work..." class="input-xlarge">
                                                        </div>
                                                    </div>
                                                    		                            
                                                    <hr>
                                                    </fieldset>
                                                    </form>		
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            
                                
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
