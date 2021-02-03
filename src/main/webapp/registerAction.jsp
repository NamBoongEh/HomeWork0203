<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="User" class="codechobo.User" scope="request"/>
<%--
  자바 코드로 바꾸면 이렇게 된다.
  (만약 객체가 없을 경우(있다면 그냥 바로 생성))
  User user = new User();
  request.setAttribute("user", user);
--%>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String pw = request.getParameter("pw");
    String email = request.getParameter("email");
%>


<jsp:setProperty name="User" property="*" />




<%
    System.out.println("자바빈에 id 저장함 --->" + request.getParameter("id"));
    System.out.println("자바빈에 name 저장함 --->" + request.getParameter("name"));
    System.out.println("자바빈에 pw 저장함 --->" + request.getParameter("pw"));
    System.out.println("자바빈에 email 저장함 --->" + request.getParameter("email"));
%>

<jsp:forward page="userinfo.jsp"/>