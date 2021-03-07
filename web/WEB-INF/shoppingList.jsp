<%-- 
    Document   : shoppingList
    Created on : Feb 23, 2021, 2:07:33 PM
    Author     : Trevor Erixon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, ${sessionScope.username} <a href="ShoppingList?action=logout">Logout</a></p>

        <form name="addItemForm" action="" method="post">
            <h2>List</h2>
            Add item: <input type="text" name="newItem"><input type="submit" value="Add Item">
            <input type="hidden" name="action" value="add">
        </form>
        <form name="displayDeleteItemForm" action="" method="post">
            <ul>
                <c:forEach items="${itemList}" var="item">
                    <input type="radio" name="item" value="${item}">${item}
                </c:forEach>
            </ul>
            <input type="submit" value="Delete Item">
            <input type="hidden" name="action" value="delete">
        </form>
    </body>
</html>
