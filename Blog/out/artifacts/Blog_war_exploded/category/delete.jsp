<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Nhat
  Date: 6/25/2019
  Time: 10:03 AM
  Email: nhatnpa2508@gmail.com 
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>Delete Category</title>
    <meta charset="utf-8">
</head>
<style>
    table {
        border-collapse: collapse;
        width: 30%;
    }
    td, th {
        border: 1px solid #ddc785;
        text-align: left;
        padding: 6px;
    }
    tr:nth-child(even) {
        background-color: #dddddd;
    }
</style>
<body>
<div>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <h3 class="navbar-brand" href="#">Delete Category</h3>
    </nav><br>
</div>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<ul class="nav nav-pills flex-column">
    <li class="nav-item">
        <a href="/categories?action=list" class="nav-link bg-secondary"  style="color: aliceblue;">Back to Category list</a><br>
    </li>
</ul>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Category info</legend>
        <table>
            <tr>
                <td>ID: </td>
                <td><a name = "id" id = "id">${requestScope["category"].getId()}</a></td>
            </tr>
            <tr>
                <td>Name Category: </td>
                <td>${requestScope["category"].getNameCategories()}</td>
            </tr>
            <tr>
                <td>Date created: </td>
                <td>${requestScope["category"].getDateCreated()}</td>
            </tr>

        </table>
        <input style="margin-left: 13px;margin-top: 11px;" type="submit" value="Delete Category" class="btn btn-success"><br>
    </fieldset>
</form>
</body>
</html>
