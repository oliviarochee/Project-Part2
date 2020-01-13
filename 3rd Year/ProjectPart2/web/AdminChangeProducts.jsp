<%-- 
    Document   : AdminChangeProducts
    Created on : 20 Nov 2019, 15:02:32
    Author     : oliviaroche
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>

        <title>Kiss | Homepage</title>
        <link rel="stylesheet" href="Resources/css/basics.css">
        <link rel="stylesheet" href="Resources/css/footer.css">
        <link rel="stylesheet" href="Resources/css/nav.css">
        <link rel = "stylesheet" href="Resources/css/homepage.css" type="text/css" >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <style>
            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                max-width: 300px;
                margin: auto;
                text-align: center;
                font-family: arial;
            }

            .price {
                color: black;
                font-size: 22px;
            }

            .card button {
                border: none;
                outline: 0;
                padding: 12px;
                color: hotpink;
                background-color: #000;
                text-align: center;
                cursor: pointer;
                width: 100%;
                font-size: 18px;
            }

            .card button:hover {
                opacity: 0.7;
            }
        </style>
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








            <c:url var="deleteUrl" value="/ProductManagementServlet">
                <c:param name="action" value="delete"/>
            </c:url>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Type</th>
                        <th>Description</th>
                        <th>Color</th>
                        <th>Unitcost</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${RKALLPRODUCTS}" var="product">    
                        <tr>
                            <td scope="row"><c:out value="${product.getProductID()}"/></td>
                            <td>${product.code}</td>
                            <td>${product.name}</td>
                            <td>${product.type}</td>
                            <td>${product.description}</td>
                            <td>${product.color}</td>
                            <td>${product.unitcost}</td>

                            <td><form action="/ProjectPart2/ProductManagementServlet?action=delete" method="POST">

                                    <input type="hidden" name="CODE" value="${product.code}"/>
                                    <button type="submit">Delete</button>    
                                </form></td>
                            <td><a class="btn btn-primary" href="<c:url value='/ProductManagementServlet?action=updateUserRedirect&id=${product.getProductID()}'/>" role="button">Update</a></td>

                        </tr>
                    </c:forEach>

                </tbody>

            </table>
            <p><a href="addProduct.jsp" class="btn btn-primary btn-large">Add New Product&raquo;</a></p>                


    </body>




</body>



<footer>
    <i class="fa fa-2x fa-facebook-square" aria-hidden="true"></i>
    <i class="fa fa-2x fab fa-instagram" aria-hidden="true"></i>
    <i class="fa fa-2x fab fa-twitter" aria-hidden="true"></i>
    <i class="fa fa-2x fas fa-envelope-square" aria-hidden="true"></i>
    <i class="fa fa-2x fas fa-address-book" aria-hidden="true"></i> 
</footer>
</html>