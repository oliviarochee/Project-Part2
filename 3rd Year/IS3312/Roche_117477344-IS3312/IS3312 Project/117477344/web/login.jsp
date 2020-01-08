<%-- 
    Document   : login
    Created on : 13 Nov 2019, 13:15:59
    Author     : oliviaroche
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <title>Kiss | Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Resources/css/basics.css"/>
        <link rel="stylesheet" href="Resources/css/nav.css"/>
        <link rel="stylesheet" href="Resources/css/footer.css">
        <link rel="stylesheet" href="Resources/css/login.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body> 
        <div class="biggestContainer">

            <div class="powderblue">

                <a href="index.html"><img src ="https://dewey.tailorbrands.com/production/brand_version_mockup_image/97/2380318097_dcfac23c-08e1-4f63-b3ef-355de277bd42.png?cb=1572954217"></a>
                <ul>
                    <li><a href="shop.jsp">Products</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="Cart.jsp"><i class="fa fa-1x fas fa-shopping-bag" aria-hidden="true"></i></a></li>
                </ul>
            </div>

            <div class="container">
                <br/>

                <form class="form-signin" action="LoginServlet" method="POST">
                    <h4 class="form-signin-heading">Hey! Welcome back! </h4>
                    <div class = "Details"> 
                    <input type="text" class="input-block-level"  name="email" placeholder="Email address">
                    <input type="password" class="input-block-level" placeholder="Password" name="password">
                    </div>
                    <label class="checkbox">
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                    <div class="Buttons">
                    <button class="loginbtn" type="submit">Login in</button>
                    <button class="signupbtn" type="submit">Sign up</button>
                    </div>
                    <h4> Don't have an account? Join now to hear all the latest gossip from KISS and get sweet deals!</h4>
                </form>

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
