<%-- 
    Document   : shoppingList
    Created on : Feb 23, 2021, 2:07:33 PM
    Author     : Trevor Erixon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, ${sessionScope.username} <a href="ShoppingList?action=logout">Logout</a></p>
        
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
        <form name="addItemForm" action="" method="post">
            <h2>List</h2>
            Add item: <input type="text" name="item"><input type="submit" value="Add Item">
            <input type="hidden" name="action" value="add">
        </form>
        <form name="displayDeleteItemForm" action="" method="post">
            <ul>
                
                
            </ul>
            <input type="submit" value="Delete Item">
            <input type="hidden" name="action" value="delete">
        </form>
    </body>
</html>
