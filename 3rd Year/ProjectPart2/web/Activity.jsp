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

                <div class="w3-container">
                    <div class="w3-display-container">
                        <img src="https://i.stack.imgur.com/cVOK9.jpg" style="width:50%">

                        <span class="w3-tag w3-display-topleft">New</span>
                        <div class="w3-display-middle w3-display-hover">
                            
                           

                        </div>
                    </div>
                            
                    <p>Activity Levels on 21/01/2020</p>
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