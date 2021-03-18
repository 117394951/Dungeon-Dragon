<%-- 
    Document   : admin
    Created on : 20-Nov-2019, 11:21:14
    Author     : becca
--%>
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

                                <h4 class="title"><span class="text"> &nbsp; <strong>User</strong> Management</span></h4>
                                
                        <div class="hero-unit">
                       <% Vector<User> allUsers = (Vector<User>) session.getAttribute("SKALLUSERS");%>
                       <a href="<c:url value='/UserManagementServlet?action=addInit' />" class="btn btn-large">Add New User&raquo;</a>
                       <br><p><br><table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${RKALLUSERS}" var="tempuser">    
                                    <tr>
                                        <td scope="row"><c:out value="${tempuser.getId()}"/></td>
                                        <td>${tempuser.firstName}"</td>
                                        <td>${tempuser.lastName}"</td>
                                        <td>${tempuser.email}"</td>
                                        <td><a href='UserManagementServlet?action=delete&email=${tempuser.getEmail()}'>Delete</a> </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
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
