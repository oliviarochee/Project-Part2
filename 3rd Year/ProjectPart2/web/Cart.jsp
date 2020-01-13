<%-- 
    Document   : example
    Created on : 13 Nov 2019, 14:08:40
    Author     : oliviaroche
--%>


<%@page import="Models.LipProduct"%>
<%@page import="java.util.Vector"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    
    

        <title>Cart</title>
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
                    <li><a href="shop.jsp">Products</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="Cart.jsp"><i class="fa fa-1x fas fa-shopping-bag" aria-hidden="true"></i></a></li>
                </ul>
            </div>


   <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/carousel/">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap.bundle.min.js / bootstrap.bundle.js">
        <link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" >
<link href="css/bootstrap.css" rel="stylesheet">
        <style type="text/css">
            body {

                min-height: 100vh;
            }
             .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
                /* GLOBAL STYLES
        -------------------------------------------------- */
                /* Padding below the footer and lighter body text */

                body {
                    padding-top: 3rem;
                    padding-bottom: 3rem;
                    color: #5a5a5a;
                }


                /* CUSTOMIZE THE CAROUSEL
                -------------------------------------------------- */

                /* Carousel base class */
                .carousel {
                    margin-bottom: 4rem;
                }
                /* Since positioning the image, we need to help out the caption */
                .carousel-caption {
                    bottom: 3rem;
                    z-index: 10;
                }

                /* Declare heights because of positioning of img element */
                .carousel-item {
                    height: 32rem;
                }
                .carousel-item > img {
                    position: absolute;
                    top: 0;
                    left: 0;
                    min-width: 100%;
                    height: 32rem;
                }


                /* MARKETING CONTENT
                -------------------------------------------------- */

                /* Center align the text within the three columns below the carousel */
                .marketing .col-lg-4 {
                    margin-bottom: 1.5rem;
                    text-align: center;
                }
                .marketing h2 {
                    font-weight: 400;
                }
                .marketing .col-lg-4 p {
                    margin-right: .75rem;
                    margin-left: .75rem;
                }


                /* Featurettes
                ------------------------- */

                .featurette-divider {
                    margin: 5rem 0; /* Space out the Bootstrap <hr> more */
                }

                /* Thin out the marketing headings */
                .featurette-heading {
                    font-weight: 300;
                    line-height: 1;
                    letter-spacing: -.05rem;
                }


                /* RESPONSIVE CSS
                -------------------------------------------------- */

                @media (min-width: 40em) {
                    /* Bump up size of carousel content */
                    .carousel-caption p {
                        margin-bottom: 1.25rem;
                        font-size: 1.25rem;
                        line-height: 1.4;
                    }

                    .featurette-heading {
                        font-size: 50px;
                    }
                }

                @media (min-width: 62em) {
                    .featurette-heading {
                        margin-top: 7rem;
                    }
                }


            }
        </style>

    </head>

<body>

<h1>Your cart</h1>

<table>
  <tr>
    
    <th>Name</th>
    <th>Price</th>
    <th></th>
    <th>Amount</th>
 
    <th></th>
  </tr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="item" items="${cart.items}">
  <tr>

    <td>${item.product.name}</td>
    <td colspan="2">${item.product.unitcost}</td>
  
   
        <td>
      <form action="Cart" method="post">
        <input type="hidden" name="productCode" value="${item.product.code}">
        <input type=text name="quantity" value="${item.quantity}" id="quantity">
        <input type="submit" value="Update">
      </form>
    </td>
     <td>
      <form action="Cart" method="post">
        <input type="hidden" name="CODE"
               value="${item.product.code}">
        <input type="hidden" name="quantity"
               value="0">
        <input type="submit" value="Remove Item">
      </form>
    </td>
  </tr>
</c:forEach>
</table>

<p><b>To change the quantity</b>, enter the new quantity
      and click on the Update button.</p>

<form action="shop.jsp" method="post">
  <input type="hidden" name="action" value="shop">
  <input type="submit" value="Continue Shopping">
</form>

<form action="checkout.jsp" method="post">
  <input type="hidden" name="action" value="checkout">
  <input type="submit" value="Checkout">
</form>

 <footer>
            <i class="fa fa-2x fa-facebook-square" aria-hidden="true"></i>
            <i class="fa fa-2x fab fa-instagram" aria-hidden="true"></i>
            <i class="fa fa-2x fab fa-twitter" aria-hidden="true"></i>
            <i class="fa fa-2x fas fa-envelope-square" aria-hidden="true"></i>
            <i class="fa fa-2x fas fa-address-book" aria-hidden="true"></i> 
        </footer>
</body>
</html>