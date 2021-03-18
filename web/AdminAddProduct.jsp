<%-- 
    Document   : AdminAddProduct
    Created on : 22-Nov-2017, 10:47:35
    Author     : Aisling
--%>
<%@page import="java.util.Vector"%>
<%@page import="com.bsapp.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
		<title>Bootstrap E-commerce Templates</title>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            input[type=text], select {
                width: 50%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            input[type=submit] {
                width: 50%;
                background-color: #FFA500;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #FF8C00;
            }

            
            .button {
    background-color: #FFA500;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
        </style> 

    </style>
</head>
<%-- 
    Document   : admin
    Created on : 20-Nov-2019, 11:21:14
    Author     : becca
--%>
<%@page import="com.bsapp.model.Product"%>
<%@page import="java.util.Vector"%>
<%@page import="com.bsapp.model.User"%>
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
    
                <style>#products {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    font-style: italic;
    border-collapse: collapse;
    width: 100%;
    font-size:14px;
  
}

#products td, #products th {
    border: 1px solid #ddd;
    padding: 8px;
       
}

#products tr:nth-child(even){background-color: #FFFFFF; }

#products tr:hover {background-color: #FF8C00;
color: #FFFFFF;}

#products th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #FFA500;
    color: white;
}
.button {
    background-color: #FFA500;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
    </head>
    
    <body>
        
        <!--Navigation Bar -->
        <div id="top-bar" class="container">
            <div class="row">
                
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
                    
                </div>
            </section>	
            
            <br>            
            <section class="main-content">
                <div class="row-fluid">
                    <div class="span2">
                      <div class="well sidebar-nav">
                        <ul class="nav nav-list">
                          <li class="nav-header">User Tasks</li>
                          <li><a href="/Dragon_Dungeon/UserManagementServlet?action=List">User Management</a></li><br>
                          <li><a href="/Dragon_Dungeon/prodManagementServlet?action=List">Product Management</a></li>

                        </ul>
                      </div><!--/.well -->
                    </div><!--/span-->
                    
            <div class="row">         
            <div class="span9">
            <h4 class="title"><span class="text"> &nbsp; <strong>Add</strong> Product</span></h4>
                
            <div class="hero-unit">
                <% Vector<Product> allProducts = (Vector<Product>) session.getAttribute("SKALLPRODUCTS");%>
                <c:url var="postUrl" value="/prodManagementServlet">
                <c:param name="action" value="add"/>
                </c:url>
        
                <form action="${postUrl}" method="POST">
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="name" name="NAME" class="form-control" id="name">
                        </div>
                        <div class="form-group">
                            <label for="category">Category:</label>
                            <input type="category" name="CATEGORY"class="form-control" id="category">
                        </div>
                        <div class="form-group">
                            <label for="description">Description:</label>
                            <input type="description" name="DESCRIPTION" class="form-control" id="description">
                        </div>
                        <div class="form-group">
                            <label for="code">Code:</label>
                            <input type="code" name="CODE" class="form-control" id="code">
                        </div>
                        <button type="submit"  class="btn btn-default">Submit</button>
                    </form>
                    </div>
                </div><!--/span-->
              </div><!--/row-->
            </div>
        </section>  
            
            <section id="footer-bar">
                <div class="row">
                    <div class="span3">
                        <h4>Navigation</h4>
                        <ul class="nav">
                            <li><a href="./UserHome.jsp">Homepage</a></li>  
                            <li><a href="./register.html">Login</a></li>							
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
    
    </body>
    
</html>
