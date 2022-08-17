<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<span><a href="${pageContext.request.contextPath }/jsp/addstudent.jsp">添加学生</a></span>
    <table>
        <thead>
            <tr>
                <th>学号</th>
                <th>姓名</th>
                <th>年龄</th>
                <th>性别</th>
                <th>电话</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${studentsList}" var="student">
                <tr>
                    <td>${student.studentCode}</td>
                    <td>
                        <a href="${pageContext.request.contextPath }/student/view?id=${student.id}">
                                ${student.studentName}</a>
                    </td>
                    <td>${student.age}</td>
                    <td>
                        <c:if test="${student.sex eq '1'}">男</c:if>
                        <c:if test="${student.sex eq '2'}">女</c:if>
                    </td>
                    <td>${student.phone}</td>
                    <td>
                        <span>
                            <a href="${pageContext.request.contextPath }/student/viewForUpdate?id=${student.id}">修改</a>
                        </span>
                        <span>
                            <a href="${pageContext.request.contextPath }/student/remove?id=${student.id}">删除</a>
                        </span>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
