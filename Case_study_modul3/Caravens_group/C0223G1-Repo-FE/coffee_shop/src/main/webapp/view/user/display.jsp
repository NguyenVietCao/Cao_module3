<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 6/3/2023
  Time: 11:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css"/>
</head>
<body>
    <c:import url="/navbar-admin.jsp"></c:import>
<div class="container">
    <form style="color: white; margin-top:9em" action="/User" method="post">
       <input type="email" name="email"  placeholder="Enter Email">
       <input type="text" name="phhone" placeholder="Enter Phone">
        <button class="rounded-3 bg-primary" type="submit">Search</button>
    </form>
    <table style="color: white" class="table table-striped col-lg-11">
        <tr>
            <th>STT</th>
            <th>user name</th>
            <th>password</th>
            <th>email</th>
            <th>phone number</th>
            <th>type user</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="user" items="${listUser}" varStatus="loop">
            <tr>
                <td><c:out value="${loop.count}"/></td>
                <td><c:out value="${user.userName}"/></td>
                <td><c:out value="${user.userPassword}"/></td>
                <td><c:out value="${user.userEmail}"/></td>
                <td><c:out value="${user.userPhoneNumber}"/></td>
                <td><c:out value="${user.typeUser.name}"/></td>
                <td>
                    <a class="text-decoration-none"  href="/User?action=edit&id=${user.id}">
                    <button type="button" class=" btn btn-warning text-white bg-warning rounded-3">
                        Edit
                    </button>
                    </a>
                </td>
                <td>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-danger rounded-3" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="remove(${user.id},'${user.userName}')">
                        Delete
                    </button>
                </td>
            </tr>

        </c:forEach>
    </table>
</div>


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Notification</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <h4>Are you sure delete this user with userName: <span style="color:red;" id="nameDelete"></span></h4>
                </div>
                <div class="modal-footer">
                    <form action="/User?action=delete" method="post">
                        <input type="hidden" name="idDelete" id="idDelete">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                        <button type="submit" class="btn btn-primary">Yes</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="jquery/jquery-3.5.1.min.js"></script>
    <script src="datatables/js/jquery.dataTables.min.js"></script>
    <script src="datatables/js/dataTables.bootstrap5.min.js"></script>
    <script src="bootstrap520/js/bootstrap.bundle.js"></script>
    <script>
       

        $(document).ready(function () {
            $('#tableStudent').dataTable({
                "dom": 'lrtip',
                "lengthChange": false,
                "pageLength": 2
            });
        });

        function remove(id, name) {
            document.getElementById("nameDelete").innerText = name;
            document.getElementById("idDelete").value = id;
        }
    </script>
</body>
</html>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
