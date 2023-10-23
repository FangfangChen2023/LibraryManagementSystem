<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Vogon
  Date: 2023/1/14
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Show All Books</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container text-center">
            <div class="row justify-content-center">
                <p class="fs-2">All Books</p>
            </div>

            <div class="row mb-5">
                <div class="col"></div>

                <div class="col-12">
                    <table class="table table-hover table-striped text-center">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">bookID</th>
                                <th scope="col">bookName</th>
                                <th scope="col">bookNum</th>
                                <th scope="col">detail</th>
                                <th scope="col">action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="book" items="${bookList}">
                                <tr>
                                    <th scope="row">${book.bookID}</th>
                                    <td>${book.bookName}</td>
                                    <td>${book.bookNum}</td>
                                    <td>${book.detail}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/books/toUpdate?id=${book.bookID}"
                                           class="text-decoration-none">update</a>
                                        &nbsp; | &nbsp;
                                        <a href="${pageContext.request.contextPath}/books/deletebook?id=${book.bookID}"
                                           class="text-decoration-none">delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <div class="col"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-2">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/books/toAddbook" role="button">add
                        a new book</a>
                </div>
                <div class="col-auto"></div>
            </div>

        </div>
    </body>
</html>
