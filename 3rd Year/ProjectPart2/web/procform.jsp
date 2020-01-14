<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fmt:requestEncoding value="UTF-8" />
<html>
<fmt:setLocale value="${param.locale}"  />
<head>
    <fmt:bundle basename="app">
        <title><fmt:message key="appInfo"/></title>
    </head>
    <body>
        <h1><fmt:message key="appInfo"/></h1>
        <br>
        <table border="1">
            <tr>
                <td><fmt:message key="products"/></td>
                <td>${param.products}</td>
            </tr>
            <tr>
                <td><fmt:message key="contacts"/></td>
                <td>${param.contacts}</td>
            </tr>
            <tr>
                <td><fmt:message key="login"/></td>
                <td>${param.login}</td>
            </tr>
           
        </table>
    </body>
</fmt:bundle>

</html>











