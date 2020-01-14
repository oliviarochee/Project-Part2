<%-- 
    Document   : AddUser
    Created on : 09-Jan-2020, 12:31:33
    Author     : 117477344
--%>

<%@page import="Models.User"%>
<%@page import="java.util.Vector"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <%@page import="Models.LipProduct"%>
<%@page import="java.util.Vector"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        
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
                    
                    <div class="nav-collapse collapse">
                        <p class="navbar-text pull-right">
                            <% User user = (User) session.getAttribute("SKUSER");%>
                            Logged in as <a href="#" class="navbar-link"><%= user.getFirstName()%></a>
                        </p>
                       
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3">
                    <div class="well sidebar-nav">
                        
                    </div><!--/.well -->
                </div><!--/span-->
                <div class="span9">
                    <div class="hero-unit">

                    </div>
                    <c:url var="postUrl" value="/UserManagement">
                        <c:param name="action" value="add"/>
                    </c:url>

                    <form action="${postUrl}" method="POST">
                        <div class="form-group">
                            <label for="email">Email Address:</label>
                            <input type="email" name="EMAIL" class="form-control" id="email">
                        </div>
                        <div class="form-group">
                            <label for="pwd">Password:</label>
                            <input type="password" name="PASSWORD" class="form-control" id="pwd">
                        </div>
                        <div class="form-group">
                            <label for="fname">First Name:</label>
                            <input type="fname" name="FNAME" class="form-control" id="fname">
                        </div>
                        <div class="form-group">
                            <label for="lname">Last Name:</label>
                            <input type="lname" name="LNAME" class="form-control" id="lname">
                        </div>
                        <div class="form-group">
                            <label for="usertype">User Type:</label>
                            <input type="usertype" name="USERTYPE" class="form-control" id="usertype">
                        </div>
                      
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    <br/>

                    <!-- /.row -->

                </div>
            </div>


        </div>
    </div>

    <hr>

     <footer>
        <i class="fa fa-2x fa-facebook-square" aria-hidden="true"></i>
        <i class="fa fa-2x fab fa-instagram" aria-hidden="true"></i>
        <i class="fa fa-2x fab fa-twitter" aria-hidden="true"></i>
        <i class="fa fa-2x fas fa-envelope-square"aria-hidden="true"></i>
        <i class="fa fa-2x fas fa-address-book" aria-hidden="true"></i> 

    </footer>



</body>
</html>


