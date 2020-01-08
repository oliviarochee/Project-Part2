
<%-- 
    Document   : shop
    Created on : 13 Nov 2019, 17:46:30
    Author     : oliviaroche
--%>
<%@page import="Models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

      

        <div class="w3-container w3-text-grey" id="jeans">
        </div>



        <div class="w3-row">
            <div class="w3-col l3 s6">

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/lipgloss1.png" style="width:100%">

                        <span class="w3-tag w3-display-topleft">New</span>
                        <div class="w3-display-middle w3-display-hover">
                            
                            <% User user = (User)session.getAttribute("SKUSER"); %> 
                            <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                            

                        </div>
                    </div>
                    <p>Charlotte Tilbury High Gloss (Nude)<br><b>$18.99</b></p>
                </div>

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/lipgloss2.png"  style="width:100%">

                        <div class="w3-display-middle w3-display-hover"> 
                            <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                         </div>
                    </div>
                    <p>Charlotte Tilbury Matte Gloss (Red)<br><b>$23.99</b></p>
                </div>
            </div>

            <div class="w3-col l3 s6">

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/lipliner3.png"  style="width:100%">
                        <div class="w3-display-middle w3-display-hover">
                             <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>Charlotte Tilbury Lipliner (Red)<br><b>$16.99</b></p>
                </div>

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/lipgloss6.png"  style="width:100%">
                        <span class="w3-tag w3-display-topleft">New</span>
                        <div class="w3-display-middle w3-display-hover">
                             <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>Huda Beauty Strobe Lipgloss (Peach Shimmer)<br><b>$20.50</b></p>
                </div>
            </div>

            <div class="w3-col l3 s6">
                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/lipgloss5.png"   style="width:100%">
                        <div class="w3-display-middle w3-display-hover">
                             <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>Nars Shimmer Gloss (Baby Pink)<br><b>$20.50</b></p>
                </div>

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/product2.png" style="width:100%">
                        <div class="w3-display-middle w3-display-hover">
                            <!--                                <span class="w3-tag w3-display-topleft">Sale</span>-->
                             <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>Charlotte Tilbury Matte Lipstick (Wine)<br><b class="w3-text-red">$14.99 SALE!!!</b></p>
                </div>
            </div>

            <div class="w3-col l3 s6">

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/product6.png" style="width:100%">
                        <div class="w3-display-middle w3-display-hover">
                           <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>NARS All Nighter lipstick (Peach)<br><b>$18.99</b></p>
                </div>

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/product7.png" style="width:100%">
                        <span class="w3-tag w3-display-topleft">New</span>
                        <div class="w3-display-middle w3-display-hover">
                            <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>Huda Beauty Velvet Teddy lipstick (Pink)<br><b>$24.99</b></p>
                </div>


            </div>
        </div>

        <div class="w3-row">
            <div class="w3-col l3 s6">

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/lipliner3.png" style="width:100%">
                        <span class="w3-tag w3-display-topleft">New</span>
                        <div class="w3-display-middle w3-display-hover">
                            <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>Charlotte Tilbury Lipliner (Red)<br><b>$18.99</b></p>
                </div>

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/lipliner7.png" style="width:100%">
                        <div class="w3-display-middle w3-display-hover">
                          <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>NARS Double Line lipliner (Red)<br><b>$23.99</b></p>
                </div>
            </div>

            <div class="w3-col l3 s6">

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/product3.png"  style="width:100%">
                        <div class="w3-display-middle w3-display-hover">
                             <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>Charlotte Tilbury Satin Lipstick (Red)<br><b>$16.99</b></p>
                </div>

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/lipliner4.png" style="width:100%">
                        <span class="w3-tag w3-display-topleft">New</span>
                        <div class="w3-display-middle w3-display-hover">
                            <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>Charlotte Tilbury Double Wear Lipliner (Chocolate)<br><b>$20.50</b></p>
                </div>
            </div>

            <div class="w3-col l3 s6">
                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/lipgloss6.png"  style="width:100%">
                        <div class="w3-display-middle w3-display-hover">
                          <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>Huda Beauty Double the Danger lip plumper (Party Glitter)<br><b>$20.50</b></p>
                </div>

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/lipgloss3.png" style="width:100%">
                        <div class="w3-display-middle w3-display-hover">
                            <!--                                <span class="w3-tag w3-display-topleft">Sale</span>-->
                     <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>Charlotte Tilbury Matte Long Wear Lipstick (Fuschia) <br><b class="w3-text-red">$14.99 SALE!!!</b></p>
                </div>
            </div>

            <div class="w3-col l3 s6">

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/product6.png" style="width:100%">
                        <div class="w3-display-middle w3-display-hover">
                           <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>NARS satin finish lipstick (Nude)<br><b>$18.99</b></p>
                </div>

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="Resources/products/lipliner6.png"  style="width:100%">
                        <span class="w3-tag w3-display-topleft">New</span>
                        <div class="w3-display-middle w3-display-hover">
                             <%   if (user != null) { %>
                            <a href="ProductZoom.jsp"><button class="view_product_btn">View Product</button></a><br>
                                <a href="Cart.jsp"><button class="add_cart_btn">Add To Cart<i class="fa fa-shopping-cart"></i></button></a>
                            <% } else { %>
                               <a href="login.jsp"><button class="view_product_btn"> Buy now <i class="fa fa-shopping-cart"></i></button></a>
                            <% } %>
                        </div>
                    </div>
                    <p>Huda Beauty Satin finish lipliner (Dark Pink)<br><b>$24.99</b></p>
                </div>


            </div>
        </div>
    </div>
    <footer>
        <i class="fa fa-2x fa-facebook-square" aria-hidden="true"></i>
        <i class="fa fa-2x fab fa-instagram" aria-hidden="true"></i>
        <i class="fa fa-2x fab fa-twitter" aria-hidden="true"></i>
        <i class="fa fa-2x fas fa-envelope-square"aria-hidden="true"></i>
        <i class="fa fa-2x fas fa-address-book" aria-hidden="true"></i> 

    </footer>

</body>
</html>
