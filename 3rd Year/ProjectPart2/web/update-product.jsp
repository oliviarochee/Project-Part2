<%-- 
    Document   : update-product
    Created on : 13-Jan-2020, 13:22:03
    Author     : 117477344
--%>
<%@page import="Models.User"%>
<%@page import="Models.LipProduct"%>
<%@page import="java.util.Vector"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
   <head>
       <meta charset="utf-8">
       <title>Bootstrap, from Twitter</title>
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <meta name="description" content="">
       <meta name="author" content="">

       <!-- Le styles -->
       <link href="css/bootstrap.css" rel="stylesheet">
       <style type="text/css">
           body {
               padding-top: 60px;
               padding-bottom: 40px;
           }
           .sidebar-nav {
               padding: 9px 0;
           }

           @media (max-width: 980px) {
               /* Enable use of floated navbar text */
               .navbar-text.pull-right {
                   float: none;
                   padding-left: 5px;
                   padding-right: 5px;
               }
           }
       </style>
       <link href="css/bootstrap-responsive.css" rel="stylesheet">

       <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
       <!--[if lt IE 9]>
         <script src="../assets/js/html5shiv.js"></script>
       <![endif]-->

       <!-- Fav and touch icons -->
       <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
       <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
       <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
       <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
       <link rel="shortcut icon" href="../assets/ico/favicon.png">
   </head>

   <body>

       <div class="navbar navbar-inverse navbar-fixed-top">
           <div class="navbar-inner">
               <div class="container-fluid">
                   <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                       <span class="icon-bar"></span>
                       <span class="icon-bar"></span>
                       <span class="icon-bar"></span>
                   </button>
                   <a class="brand" href="#">Project name</a>
                   <div class="nav-collapse collapse">
                       <p class="navbar-text pull-right">
                           <% User user = (User) session.getAttribute("SKUSER");%>
                           Logged in as <a href="#" class="navbar-link"><%= user.getFirstName()%></a>
                       </p>
                       <ul class="nav">
                           <li class="active"><a href="#">Home</a></li>
                           <li class="active"><a href="adminHome.jsp">Home</a></li>
                           <li><a href="UserManagement?action=List">Management</a></li>
                           <li><a href="ProductManagement?action=List">Product Management</a></li>
                           <li><a href="index.jsp">Logout</a></li>
                       </ul>
                   </div><!--/.nav-collapse -->
               </div>
           </div>
       </div>
       <div class="container-fluid">
           <div class="row-fluid">
               <div class="span3">
                   <div class="well sidebar-nav">
                       <ul class="nav nav-list">
                           <li class="nav-header">User Tasks</li>
                           <li class="active"><a href="UserManagement?action=List">User Management</a></li>
                           <li class="nav-header">Reports</li>
                           <li><a href="Stock.jsp">Stock</a></li>
                           <li><a href="Activity.jsp">User Activity</a></li>
                           <li><a href="Sales.jsp">Sales Activity</a></li>
                           <li class="nav-header">Test</li>
                           <li><a href="/BootStrapLogin/TestPage">Test Page</a></li>
                       </ul>
                   </div><!--/.well -->
               </div><!--/span-->
               <div class="span9">
                   <div class="hero-unit">
                   </div>
                   <form action="<c:url value='/UserManagement?action=updateUserConfirm'/>" method = "POST">
                       <div>
                           <h2> <%= session.getAttribute("UPDATE_PRODUCT_ID")%> - Product ID</h2>
                           <input type="hidden" name="id" value="<%= session.getAttribute("UPDATE_USER_ID")%>">
                       </div>
                       <div>
                           <label for="fname">First Name</label>
                           <input type="text"  name="fname" value="<%= session.getAttribute("UPDATE_USER_FNAME")%>"/>
                       </div>
                       <div>
                           <label for="lname">Last Name</label>
                           <input type="text"  name="lname" value="<%= session.getAttribute("UPDATE_USER_LNAME")%>"/>
                       </div>
                       <div>
                           <label for="description">Email</label>
                           <input type="text"  name="email" value="<%= session.getAttribute("UPDATE_USER_EMAIL")%>"/>
                       </div>
                       <br/>
                       <br/>
                       <button type="submit" class="btn btn-primary">Update</button>
                   </form>
               </div>
           </div>
       </div>
   </body>
</html>