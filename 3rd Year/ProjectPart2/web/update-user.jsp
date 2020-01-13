<%-- 
    Document   : update-user
    Created on : 13-Jan-2020, 10:30:37
    Author     : 117477344
--%>
<%--
   Document   : UpdateUser
   Created on : 08-Jan-2020, 12:41:41
   Author     : emma
--%>

<%@page import="Models.User"%>
<%@page import="java.util.Vector"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
    <head> 
        <title>Kiss | Update User</title>
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
                     <li><a href="index.html">Logout</a></li>
                    <li><a href="Cart.jsp"><i class="fa fa-1x fas fa-shopping-bag" aria-hidden="true"></i></a></li>
                </ul>
            </div>


   <body>

     
                   <form action="<c:url value='/UserManagement?action=updateUserConfirm'/>" method = "POST">
                       <div>
                           <h2> <%= session.getAttribute("UPDATE_USER_ID")%>Update User ID</h2>
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
   
   
   
        <footer>
            <i class="fa fa-2x fa-facebook-square" aria-hidden="true"></i>
            <i class="fa fa-2x fab fa-instagram" aria-hidden="true"></i>
            <i class="fa fa-2x fab fa-twitter" aria-hidden="true"></i>
            <i class="fa fa-2x fas fa-envelope-square" aria-hidden="true"></i>
            <i class="fa fa-2x fas fa-address-book" aria-hidden="true"></i> 
        </footer>

</html>