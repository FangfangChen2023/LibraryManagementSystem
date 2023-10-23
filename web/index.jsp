<%--
  Created by IntelliJ IDEA.
  User: Vogon
  Date: 2023/1/14
  Time: 0:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container text-center justify-content-center align-items-center">
            <P class="h1">Library Management System</P>
            <nav class="nav flex-column">
                <a class="nav-link" href="${pageContext.request.contextPath}/books/allbooks">Show Book List</a>
                <a class="nav-link" href="${pageContext.request.contextPath}/books/toAddbook">Add a New Book</a>
            </nav>
        </div>
    </body>
</html>
