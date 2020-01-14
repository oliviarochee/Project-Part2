
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html> 
    <c:set var="loc" value="en_US"/>
<c:if test="${!(empty param.locale)}">
    <c:set var="loc" value="${param.locale}"/>
</c:if>
<fmt:setLocale value="${loc}" />

<fmt:bundle basename="app">
 
    <head> 
               <title><fmt:message key="Home"/></title>
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
            <form action="${formActionURL}" method="post">
                <ul>
                    <li><a href="shop.jsp"><fmt:message key="products"/></a></li>
                    <li><a href="contact.jsp"><fmt:message key="contacts"/></a></li>
                    <li><a href="login.jsp"><fmt:message key="login"/></a></li>
                    <li><a href="Cart.jsp"><i class="fa fa-1x fas fa-shopping-bag" aria-hidden="true"></i></a></li>
                </ul>
            </div>
</form>
            <div class="w3-content w3-section" style="max-width:500px">
                <img class="mySlides w3-animate-top" src="https://www.temptalia.com/wp-content/uploads/2017/06/huda-beauty_snobby_001_product-760x625.jpg" style="width:100%">
                <img class="mySlides w3-animate-bottom" src="https://www.ogerio.com/wp-content/uploads/2018/01/4.VIDEO-STAR-1.jpg" style="width:100%">
                <img class="mySlides w3-animate-top" src="https://images-na.ssl-images-amazon.com/images/I/51a3dNMm68L._SY355_.jpg" style="width:100%">
                <img class="mySlides w3-animate-bottom" src="https://www.narscosmetics.co.uk/dw/image/v2/BCMQ_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dw427bd544/hi-res/0607845010081.jpg?sw=856&sh=750&sm=fit" style="width:100%">
            </div>


        </div>

        <footer>
            <i class="fa fa-2x fa-facebook-square" aria-hidden="true"></i>
            <i class="fa fa-2x fab fa-instagram" aria-hidden="true"></i>
            <i class="fa fa-2x fab fa-twitter" aria-hidden="true"></i>
            <i class="fa fa-2x fas fa-envelope-square" aria-hidden="true"></i>
            <i class="fa fa-2x fas fa-address-book" aria-hidden="true"></i> 
        </footer>

        <script src="Resources/js/slides/slidesAuto.js"></script>
    </body>
    </fmt:bundle>
</html>
