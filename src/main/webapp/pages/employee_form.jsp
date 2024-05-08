<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Employee Form</title>
</head>
<body>
    <h1>Employee Form</h1>
    <form action="<%=request.getContextPath()%>/insert" method="post">
        <c:if test="${employee != null}">
            <input type="hidden" name="id" value="<c:out value='${employee.id}' />" />
        </c:if>
        <label>Name:</label>
        <input type="text" name="name" value="<c:out value='${employee != null ? employee.name : ""}' />" /><br>
        <label>Position:</label>
        <input type="text" name="post" value="<c:out value='${employee != null ? employee.post : ""}' />" /><br>
        <label>Phone Number:</label>
        <input type="text" name="phoneNumber" value="<c:out value='${employee != null ? employee.phoneNumber : ""}' />" /><br>
        <input type="submit" value="Save" />
    </form>
</body>
</html>
