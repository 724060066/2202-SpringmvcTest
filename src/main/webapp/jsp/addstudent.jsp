<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/student/insert" method="post">
    学号:<input type="text" name="studentCode"><br>
    姓名:<input type="text" name="studentName"><br>
    年龄:<input type="text" name="age"><br>
    性别:
    <span><input type="radio" name="sex" value="1" checked>男</span>
    <span><input type="radio" name="sex" value="2">女</span>
    <br>
    电话:<input type="text" name="phone"><br>
    <button type="submit">添加</button>
</form>
</body>
</html>
