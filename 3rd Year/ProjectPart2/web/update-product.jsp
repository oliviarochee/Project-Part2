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
<html>
    
    <head> 
        <title>Kiss | Update product</title>
        <link rel="stylesheet" href="Resources/css/basics.css">
        <link rel="stylesheet" href="Resources/css/footer.css">
        <link rel="stylesheet" href="Resources/css/nav.css">
        <link rel = "stylesheet" href="Resources/css/homepage.css" type="text/css" >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    </head>

    <body> 
        <div class="biggestContainer">
            <div class="powderblue">
                <a href="index.html"><img src ="https://dewey.tailorbrands.com/production/brand_version_mockup_image/97/2380318097_dcfac23c-08e1-4f63-b3ef-355de277bd42.png?cb=1572954217"></a>
             <ul>
                     <li class="active"><a href="adminHome.jsp">Home</a></li>
                    <li><a href="UserManagement?action=List"> User Management</a></li>
                    <li><a href="ProductManagementServlet?action=List">Product Management</a></li>
                    <li><a href="Activity.jsp">Activity</a></li>
                       <li><a href="Stock.jsp">Stock</a></li>
                     <li><a href="index.html">Logout</a></li>
                    <li><a href="Cart.jsp"><i class="fa fa-1x fas fa-shopping-bag" aria-hidden="true"></i></a></li>
                </ul>
            </div>
   <body>

       <div class="navbar navbar-inverse navbar-fixed-top">
           <div class="navbar-inner">
               <div class="container-fluid">
                   <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                       <span class="icon-bar"></span>
                       <span class="icon-bar"></span>
                       <span class="icon-bar"></span>
                   </button>
              
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
       
                   <form action="<c:url value='/ProductManagementServlet?action=updateProductConfirm'/>" method = "POST">
                       <div>
                           <h2> Update Product</h2>
                           <input type="hidden" name="ID" value="<%= session.getAttribute("UPDATE_PRODUCT_ID")%>">
                       </div>
                       <div>
                           <label for="fname">Name:</label>
                           <input type="text"  name="NAME" value="<%= session.getAttribute("UPDATE_PRODUCT_NAME")%>"/>
                       </div>
                       <div>
                           <label for="lname">Type:</label>
                           <input type="text"  name="TYPE" value="<%= session.getAttribute("UPDATE_PRODUCT_TYPE")%>"/>
                       </div>
                       <div>
                           <label for="description">Colour:</label>
                           <input type="text"  name="COLOR" value="<%= session.getAttribute("UPDATE_PRODUCT_COLOR")%>"/>
                       </div>
                       
                       <div>
                           <label for="description">Description:</label>
                           <input type="text"  name="DESCRIPTION" value="<%= session.getAttribute("UPDATE_PRODUCT_DESCRIPTION")%>"/>
                       </div>
                       <div>
                           <label for="description">Cost:</label>
                           <input type="text"  name="COST" value="<%= session.getAttribute("UPDATE_PRODUCT_UNITCOST")%>"/>
                       </div>
                       <br/>
                       <br/>
                       <input type="hidden" name="CODE" value="<%= session.getAttribute("UPDATE_PRODUCT_CODE")%>"/>
                       <button type="submit" class="btn btn-primary">Update</button>
                   </form>
               </div>
           
         <footer>
            <i class="fa fa-2x fa-facebook-square" aria-hidden="true"></i>
            <i class="fa fa-2x fab fa-instagram" aria-hidden="true"></i>
            <i class="fa fa-2x fab fa-twitter" aria-hidden="true"></i>
            <i class="fa fa-2x fas fa-envelope-square" aria-hidden="true"></i>
            <i class="fa fa-2x fas fa-address-book" aria-hidden="true"></i> 
        </footer>

   </body>
</html>