<%-- 
    Document   : AdminUpdateProduct
    Created on : 22-Nov-2017, 15:34:16
    Author     : Aisling
--%>
<%@page import="com.bsapp.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<body>
    <div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
                                    <!-- If Admin user clciks the logo they will be brought to the AdminHome page -->
				<a href="adminHome.jsp" class="logo pull-left"><img src="img/HomeLogo.png" class="site_logo" alt=""></a>	
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
             <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3">
                    <div class="well sidebar-nav">
                        <ul class="nav nav-list">
                            <li><a href="UserManagement.jsp">User Management</a></li>
                            <li><a href="ProductAdmin.jsp">Product Management</a></li>
                        </ul>
                    </div><!--/.well -->
                </div><!--/span-->
                              <div class="span9">

    <h1>Update Product</h1>

    
        <form action="Product" method="POST">

            <label for="id"><b>ID:</b></label>
             <input type="text"  name="id" value="${CURRENT_PRODUCT.id}"/>
            

             <label for="name"><b>Product Name:</b></label>
            <input type="text"  name="name" value="${CURRENT_PRODUCT.name}"/>
            

            <label for="category"><b>Category:</b></label>
            <input type="text"  name="category" value="${CURRENT_PRODUCT.category}"/>
            

            <label for="description"><b>Product Description:</b></label>
            <input type="text"  name="description" value="${CURRENT_PRODUCT.description}"/>
            

            <label for="imageurl"><b>Image URL:</b></label>
            <input type="text"  name="imageurl" value="${CURRENT_PRODUCT.imageURL}"/>
            


            <input type="hidden" name="function" value="submitUpdateProduct"/>
            <input type="submit" class="button" value="Update Product" />
        </form>
  
</body>
</div>
             </div>
                  </div>
              </div> 
</html>
