<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/student/updateStudentById" method="post">
    <input type="hidden" name="method" value="update">
    <input type="hidden" name="id" value="${student.id}">
    学号:<input type="text" name="studentCode" value="${student.studentCode}"><br>
    姓名:<input type="text" name="studentName" value="${student.studentName}"><br>
    年龄:<input type="text" name="age" value="${student.age}"><br>
    性别:
    <c:if test="${student.sex eq '1'}">
        <span><input type="radio" name="sex" value="1" checked>男</span>
        <span><input type="radio" name="sex" value="2">女</span>
    </c:if>
    <c:if test="${student.sex eq '2'}">
        <span><input type="radio" name="sex" value="1">男</span>
        <span><input type="radio" name="sex" value="2" checked>女</span>
    </c:if><br>
    电话:<input type="text" name="phone" value="${student.phone}"><br>
    <button type="submit">修改</button>
</form>
</body>
</html>
