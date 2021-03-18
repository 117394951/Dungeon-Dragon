<%-- 
    Document   : UserCheckout
    Created on : 20-Dec-2019, 15:45:33
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
                <h4><span>Check Out</span></h4>
            </section>	
            
            <section class="main-content">
                <div class="row">
                    <div class="span12">
                        <div class="accordion" id="accordion2">
                            
                            
                            <div class="accordion-group">
                                <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Account &amp; Billing Details</a>
                                </div>
                                    <div id="collapseTwo" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <div class="row-fluid">
                                                <div class="span6">
                                                    <h4>Your Personal Details</h4>
                                                    <div class="control-group">
                                                        <label class="control-label">First Name:</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="" class="input-xlarge">
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label">Last Name:</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="" class="input-xlarge">
                                                        </div>
                                                    </div>					  
                                                    <div class="control-group">
                                                        <label class="control-label"><span class="required">*</span>Email Address:</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="" class="input-xlarge">
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label">Telephone:</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="" class="input-xlarge">
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="span6">
                                                    <h4>Your Address</h4>
                                                    <div class="control-group">
                                                        <label class="control-label">Company</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="" class="input-xlarge">
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label">Company ID:</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="" class="input-xlarge">
                                                        </div>
                                                    </div>					  
                                                    <div class="control-group">
                                                        <label class="control-label"><span class="required">*</span> Address 1:</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="" class="input-xlarge">
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label">Address 2:</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="" class="input-xlarge">
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label"><span class="required">*</span> City:</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="" class="input-xlarge">
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label"><span class="required">*</span> Post Code:</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="" class="input-xlarge">
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label"><span class="required">*</span> Country:</label>
                                                        <div class="controls">
                                                            <select class="input-xlarge">
                                                                    <option value="1">Belgium</option>
                                                                    <option value="2">Denmark</option>
                                                                    <option value="3">France</option>
                                                                    <option value="4">Germany</option>
                                                                    <option value="5">Iceland</option>
                                                                    <option selected="selected" value="6">Ireland</option>
                                                                    <option value="7">Norway</option>
                                                                    <option value="8">Netherlands</option>
                                                                    <option value="9">Norway</option>
                                                                    <option value="10">Portugal</option>
                                                                    <option value="11">Spain</option>
                                                                    <option value="12">Sweden</option>
                                                                    <option value="13">United Kingdom</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label"><span class="required">*</span> Region:</label>
                                                        <div class="controls">
                                                            <select name="zone_id" class="input-xlarge">
                                                                    <option value=""> --- Please Select --- </option>
                                                                    <option value="20">Ballincollig</option>
                                                                    <option value="21">Bishopstown</option>
                                                                    <option value="22">Douglas</option>
                                                                    <option value="23">Togher</option>
                                                                    <option value="24">Wilton</option>
                                                            </select>
                                                        </div>
                                                        <button class="btn btn-inverse pull-right" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">Next</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                                <div class="accordion-group">
                                    <div class="accordion-heading">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">Payment</a>
                                    </div>
                                    <div id="collapseThree" class="accordion-body collapse">
                                        <div class="accordion-inner">
                                            <div class="row-fluid">
                                                <div class="control-group">
                                                    <label class="control-label"><span class="required">*</span>Card Number:</label>
                                                    <div class="controls">
                                                        <input type="text" placeholder="" class="input-xlarge">
                                                    </div>
                                                </div>		
                                                <div class="control-group">
                                                    <label class="control-label"><span class="required">*</span>CVV:</label>
                                                    <div class="controls">
                                                        <input type="text" placeholder="***" class="input-xsmall">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                       <label class="control-label"><span class="required">*</span>Expiry Date:</label>
                                                        <div class="controls">
                                                                <input type="date" id="expiry" name="expiry-date" class="input-medium"
                                                                value="2019-11-26"
                                                                min="2018-11-26" max="2028-12-31">                   
                                                        </div>
                                                </div>						
                                                <button class="btn btn-inverse pull-right" data-toggle="collapse" data-parent="#accordion2" href="#collapseFour">Next</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                                <div class="accordion-group">
                                <div class="accordion-heading">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFour">Confirm Order</a>
                                </div>
                                <div id="collapseFour" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <div class="row-fluid">
                                            <div class="control-group">
                                                <label for="textarea" class="control-label">Delivery Comments (eg. Do you have neighbours you trust with your dragon?)</label>
                                                <div class="controls">
                                                    <textarea rows="2" id="textarea" class="span12"></textarea>
                                                </div>
                                            </div>									
                                            <button class="btn btn-inverse pull-right" data-toggle="collapse" data-parent="#accordion2" href="#collapseFive">Confirm order</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-group">
                                <div class="accordion-heading">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFive">Order Confirmation</a>
                                </div>
                                <div id="collapseFive" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <div class="row-fluid">
                                            <div class="control-group">
                                                <h4>Order Number #12345 Confirmation. Thank you for purchasing. Your dragon is on the way to your address.</h4>
                                            </div>									
                                        </div>
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
            <script src="js/common.js"></script>
        </div>
    </body>
</html>