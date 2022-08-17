<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    学号:${student.studentCode}<br>
    姓名:${student.studentName}<br>
    年龄:${student.age}<br>
    性别:
    <c:if test="${student.sex eq '1'}">男</c:if>
    <c:if test="${student.sex eq '2'}">女</c:if>
    <br>
    电话:${student.phone}<br>
</body>
</html>
