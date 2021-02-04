<%@ page import="static codechobo.DAOTest6.selectAllUsers" %>
<%@ page import="codechobo.DAOTest6" %>
<%@ page import="codechobo.User" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    for(int i=0; i< selectAllUsers().size(); i++){
        System.out.println(selectAllUsers().get(i).toString());
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>listInfo</title>
</head>
<body>
    마이크 테스트중~<br>
    <%
        System.out.println(selectAllUsers().get(1));
    %>
    <br><+% selectAllUsers() 쓰면 주소값이 나옴.
</body>
</html>
