<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Employee List</title>
</head>
<body>
    <h1>Employee List</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Position</th>
            <th>Phone Number</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="employee" items="${listEmployee}">
            <tr>
                <td><c:out value="${employee.id}" /></td>
                <td><c:out value="${employee.name}" /></td>
                <td><c:out value="${employee.post}" /></td>
                <td><c:out value="${employee.phoneNumber}" /></td>
                <td>
                    <a href="<%=request.getContextPath()%>/edit?id=<c:out value='${employee.id}' />">Edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="<%=request.getContextPath()%>/delete?id=<c:out value='${employee.id}' />">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="<%=request.getContextPath()%>/new">Add New Employee</a>
</body>
</html>
