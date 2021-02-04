<%@ page import="static codechobo.DAOTest6.selectAllUsers" %>
<%@ page import="codechobo.DAOTest6" %>
<%@ page import="codechobo.User" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    List<User> list = selectAllUsers();
    System.out.println("연결했으요~");
    System.out.println("이거입니다! ----> " + list.toString());

    String[] arr = list.toString().split(",");

    //split으로 찢어보자. 그 뒤에 또 " "를 찢어서 2차원 배열로 만들고, []는 replace로 없애자.
    for(int i=0; i<arr.length; i++){
        System.out.println(arr[i]);
    }
%>


<!DOCTYPE html>
<html>
<head>
    <title>listInfo</title>
</head>
<body>
    마이크 테스트중~<br>
    <br>
    <br><+% selectAllUsers() 쓰면 주소값이 나옴.
</body>
</html>
