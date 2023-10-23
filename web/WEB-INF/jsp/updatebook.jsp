<%--
  Created by IntelliJ IDEA.
  User: Vogon
  Date: 2023/1/15
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Update a Book</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container text-center justify-content-center align-items-center">
            <div class="row justify-content-md-center">
                <div class="col">
                    <p class="fs-2">Update a Book</p>
                </div>
            </div>
            <div class="row justify-content-md-center">
                <form action="${pageContext.request.contextPath}/books/updatebook" method="get">

                    <input type="hidden" name="bookID" value="${book.bookID}"/>

                    <div class="row mb-3">
                        <label class="col-form-label col-2">book's Name</label>
                        <div class="col-7">
                            <input type="text" class="form-control" name="bookName" value="${book.bookName}" required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-form-label col-2">book's Number</label>
                        <div class="col-7">
                            <input type="text" class="form-control" name="bookNum" value="${book.bookNum}" required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-form-label col-2">book's detail</label>
                        <div class="col-7">
                            <input type="text" class="form-control" name="detail" value="${book.detail}" required>
                        </div>
                    </div>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-3">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </li>
                        <li class="nav-item mb-3">
                            <a class="nav-link" href="${pageContext.request.contextPath}/">Back to Home</a>
                        </li>
                        <li class="nav-item mb-3">
                            <a class="nav-link" href="${pageContext.request.contextPath}/books/allbooks">Back to book
                                list</a>
                        </li>
                    </ul>

                </form>
            </div>
        </div>
        </div>
    </body>
</html>
