<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="User" class="codechobo.User" scope="request"/>

<!DOCTYPE html>
<html>
<head>
    <title>userInfo</title>
</head>
<style>
    h3{
        color: white;
        background-color: #d18063;
        text-align: center;
        font-size: 300%;
        margin-left: 30%;
        margin-right: 30%;
    }
    body{
        background-image: url(image/rococo.PNG);
        background-repeat: no-repeat;
        background-size: cover;
    }
    p.solid{
        background-color: #f9d9ca;
        font-size: large;
        line-height: 150%;
        margin: 2% 30% 10% 30%;
        padding: 1%;
    }
</style>
<body>

<h3>회원가입을 축하드립니다</h3>

    <p class="solid">
        당신의 아이디는 ${User.id} 입니다.<br>
        당신의 이름은 ${User.name} 입니다.<br>
        당신의 패스워드는 ${User.pw} 입니다.<br>
        당신의 이메일은 ${User.email} 입니다.<br>
    </p>
<div style="background-color: white"> <jsp:include page="footer.jsp"/></div>
</body>
</html>




<%--<jsp:getProperty name="User" property="id"/>--%>
<%--<jsp:getProperty name="User" property="name"/>--%>
<%--<jsp:getProperty name="User" property="pw"/>--%>
<%--<jsp:getProperty name="User" property="email"/>--%>