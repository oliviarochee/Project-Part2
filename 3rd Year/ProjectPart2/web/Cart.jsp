<%-- 
    Document   : example
    Created on : 13 Nov 2019, 14:08:40
    Author     : oliviaroche
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Resources/css/nav.css">
        <link rel="stylesheet" href="Resources/css/footer.css">
        <link rel="stylesheet" href="Resources/css/cart.css">
        <link rel="stylesheet" href="Resources/css/basics.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway|Roboto&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Kiss | Cart</title>
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
            <div class="bigContainer">
                <div class="one">
                    <div class="containers">
                        <h3 class="attribute">Product</h3>
                        <h3 class="attribute">Price</h3>
                        <h3 class="attribute">Quantity</h3>
                        <h3 class="attribute">Remove</h3>
                    </div>
                    <div class="containers">
                        <h3 class="attribute"></h3>
                        <h3 class="attribute"></h3>
                        <a href=""><i class="fa fa-2x fa-trash attribute" aria-hidden="true" ></i></a>
                    </div>
                    <div class="containers">
                        <h3 class="attribute"></h3>
                        <h3 class="attribute"></h3>
                        <h3 class="attribute"></h3>
                        <a href=""><i class="fa fa-2x fa-trash attribute" aria-hidden="true" ></i></a>
                    </div>
                    <div class="containers">
                        <h3 class="attribute"></h3>
                        <h3 class="attribute"></h3>
                        <h3 class="attribute"></h3>
                        <a href=""><i class="fa fa-2x fa-trash attribute" aria-hidden="true" ></i></a>
                    </div>
                </div>
                <div class="two">
                    <div class="secondContainers thirdContainer">
                        <div class="smallContainers">
                            <div class="summaryTitle">
                                <h3>COUPON CODE</h3>
                            </div>
                            <div class="details">
                                <p>If you have a coupon code, please enter it in the box below</p>
                            </div>
                            <div class="apply-coupon">
                                <input type="text" name="coupon-code" id="" placeholder="Apply Coupon"><span><a href="" class="apply-cp-button"><i class="fa fa-2x fa-gift" aria-hidden="true"></i>Apply Coupon</a></span>
                            </div>
                        </div>
                        <div class="smallContainers">
                            <div class="summaryTitle">
                                <h3>INSTRUCTIONS FOR SELLER</h3>
                            </div>
                            <div class="details">
                                <p>If you have some information for the seller you can leave them in the box below</p>
                            </div>
                            <div class="seller-info">
                                <textarea class="seller-notes" rows="6" cols="50"></textarea>
                            </div>

                        </div>
                    </div>
                    <div class="secondContainers">
                        <div class="summaryTitle">
                            <h3>Order Summary</h3>
                        </div>
                        <div class="details">
                            <p>Shipping and additional costs are calculated based on values you have entered.</p>
                        </div>
                        <div class="order-summary">

                        </div>
                        <div class="summary-button">
                            <a href="" class="checkout_button">Proceed to Checkout</a>
                        </div>
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
