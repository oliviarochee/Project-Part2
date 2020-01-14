<%-- 
    Document   : AddProduct
    Created on : 09-Jan-2020, 12:31:57
    Author     : 117477344
--%>

<%--
    Document   : addProduct
    Created on : 08-Jan-2020, 17:47:13
    Author     : emma
--%>


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
                       <li><a href="Stock.jsp">Stock</a></li>
                     <li><a href="index.html">Logout</a></li>
                    <li><a href="Cart.jsp"><i class="fa fa-1x fas fa-shopping-bag" aria-hidden="true"></i></a></li>
                </ul>
            </div>

       
                    <c:url var="postUrl" value="/ProductManagementServlet">
                        <c:param name="action" value="add"/>
                    </c:url>

                    <form action="${postUrl}" method="POST">
                         <div class="form-group">
                            <label for="type">Code:</label>
                            <input type="type" name="CODE" class="form-control" id="type">
                        </div>
                        <div class="form-group">
                            <label for="Name">Product Name:</label>
                            <input type="name" name="NAME" class="form-control" id="name">
                        </div>
                         <div class="form-group">
                            <label for="type">Product Type:</label>
                            <input type="type" name="TYPE" class="form-control" id="type">
                        </div>
                        
                         <div class="form-group">
                            <label for="price">Image:</label>
                            <input type="price" name="IMAGE" class="form-control" id="image">
                        </div>
                        <div class="form-group">
                            <label for="price">Description:</label>
                            <input type="price" name="DESCRIPTION" class="form-control" id="image">
                        </div>
                         <div class="form-group">
                            <label for="price">Colour:</label>
                            <input type="price" name="COLOR" class="form-control" id="price">
                        </div>
                         <div class="form-group">
                            <label for="price">Price:</label>
                            <input type="price" name="PRICE" class="form-control" id="price">
                        </div>

                       
                      
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    <br/>

                    <!-- /.row -->

                </div>
            </div>


        </div><!--/span-->


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

