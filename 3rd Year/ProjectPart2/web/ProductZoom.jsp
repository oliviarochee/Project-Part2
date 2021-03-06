<%-- 
    Document   : ProductZoom
    Created on : 19 Nov 2019, 13:09:35
    Author     : oliviaroche
--%>
<%@page import="Models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="Resources/css/basics.css">
        <link rel="stylesheet" href="Resources/css/footer.css">
        <link rel="stylesheet" href="Resources/css/nav.css">
        <link rel = "stylesheet" href="Resources/css/shop.css" type="text/css" >
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="powderblue">
            <a href="index.html"><img src ="https://dewey.tailorbrands.com/production/brand_version_mockup_image/97/2380318097_dcfac23c-08e1-4f63-b3ef-355de277bd42.png?cb=1572954217"></a>
            <ul>
                <li><a href="shop.jsp">Products</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="Cart.jsp"><i class="fa fa-1x fas fa-shopping-bag" aria-hidden="true"></i></a></li>
            </ul>
        </div>


                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/lipgloss1.png" style="width:50%">

                        <span class="w3-tag w3-display-topleft">New</span>
                        <div class="w3-display-middle w3-display-hover">
                            
                            <% User user = (User)session.getAttribute("SKUSER"); %> 
                            <%   if (user != null) { %>
   <c:url var="checkoutUrl" value="/Cart">
                <c:param name="action" value="cart"/>
            </c:url>
                                 <form action="${checkoutUrl}" method="POST">
                                <input type="hidden" value="LP01" name="CODE">
                                <button class="add_cart_btn" type="submit">Add To Cart<i class="fa fa-shopping-cart"></i></button></form>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                            

                        </div>
                    </div>
                            
                    <p>Charlotte Tilbury High Gloss (Nude)<br><b>$18.99</b></p>
                </div>

  
        </body>
        
        
            <footer>
        <i class="fa fa-2x fa-facebook-square" aria-hidden="true"></i>
        <i class="fa fa-2x fab fa-instagram" aria-hidden="true"></i>
        <i class="fa fa-2x fab fa-twitter" aria-hidden="true"></i>
        <i class="fa fa-2x fas fa-envelope-square"aria-hidden="true"></i>
        <i class="fa fa-2x fas fa-address-book" aria-hidden="true"></i> 

    </footer>


</html>