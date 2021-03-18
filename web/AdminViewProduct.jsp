<%-- 
    Document   : AdminViewProduct
    Created on : 22-Nov-2017, 15:36:09
    Author     : Aisling
--%>
<%@page import="com.bsapp.model.Product"%>
<%@page import="java.util.Vector"%>
<%@page import="com.bsapp.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
#products {
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
                <h4 class="title"><span class="text"> &nbsp; <strong>Product</strong> Management</span></h4> 
                <div class="hero-unit">               
                <% Vector<Product> allProducts = (Vector<Product>) session.getAttribute("SKALLPRODUCTS");%>        <p></p>
               <a href="<c:url value='/prodManagementServlet?action=addInit' />" class="btn btn-large">Add New Product&raquo;</a>                
                
               
                    <br><p><br><table class="table table-hover" >
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Description</th>
                            <th>Code</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${RKALLPRODUCTS}" var="tempProduct">
                            <tr>
                                <td scope="row"><c:out value="${tempProduct.getId()}"/></td>
                                <td>${tempProduct.name}"</td>
                                <td>${tempProduct.category}"</td>
                                <td>${tempProduct.description}"</td>
                                <td>${tempProduct.code}"</td>
                                <td><a href='prodManagementServlet?action=delete&name=${tempProduct.getName()}'>Delete</a> </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <hr/>
        </body>
        </div>
        </div>
            </div
             </div
           </div>
</div>
</html>