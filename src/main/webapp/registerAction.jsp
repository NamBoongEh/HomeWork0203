<%@ page import="static codechobo.DAOTest2.insertUser" %>
<%@ page import="static codechobo.DAOTest4.selectUser" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="User" class="codechobo.User" scope="request"/>
<jsp:setProperty name="User" property="*"/>

<%--
  자바 코드로 바꾸면 이렇게 된다.
  (만약 객체가 없을 경우(있다면 그냥 바로 생성))
  User user = new User();
  request.setAttribute("user", user);
--%>
<%--
<jsp:setProperty name="User" property="*"/>
같은 코드

<jsp:setProperty name="User" property="id"/>
<jsp:setProperty name="User" property="name"/>
<jsp:setProperty name="User" property="pw"/>
<jsp:setProperty name="User" property="email"/>

    User.setId(request.getParameter("id"));
    User.setName(request.getParameter("name"));
    User.setPw(request.getParameter("pw"));
    User.setEmail(request.getParameter("email"));
--%>

<%--<c:set var="id" value="${param.id}"/>--%>
<%--<c:set var="name" value="${param.name}"/>--%>
<%--<c:set var="pw" value="${param.pw}"/>--%>
<%--<c:set var="email" value="${param.email}"/>--%>

<%
    String id = request.getParameter("id");
    System.out.println("getparameter로 받은 id의 값은" + id + "<----임");
    String name = request.getParameter("name");
    String pw = request.getParameter("pw");
    String email = request.getParameter("email");

    //하나라도 if문에 걸리면 뒤로 돌리기위한 스위치 역할
    boolean goback = true;

    // null 체크 확인
    if(id.equals("")){
        request.setAttribute("idNull", "ID를 입력해주세요.");
        System.out.println("id null 값 나왔음");
        goback = false;
    }
    if(name.equals("")){
        request.setAttribute("nameNull", "이름을 입력해주세요.");
        System.out.println("이름 null 값 나왔음");
        goback = false;
    }
    if(pw.equals("")){
        request.setAttribute("pwNull", "패스워드를 입력해주세요.");
        System.out.println("pw null 값 나왔음");
        goback = false;
    }
    if(email.equals("")) {
        request.setAttribute("emailNull", "이메일을 입력해주세요.");
        System.out.println("email null 값 나왔음");
        goback = false;
    }

    //id 중복 확인(id가 selectUser 메서드에서 같은 id가 있다면 true로, 없다면 false로 나온다.
    //true로 나올 경우 메세지를 출력해준다.
    if(selectUser(id)){
        request.setAttribute("idSame", "중복되는 아이디가 있습니다.");
        System.out.println("중복되는 아이디 있음");
        goback = false;
    }

    System.out.println("gdback은 " + goback);

    if(!goback){
%>
    <jsp:forward page="register.jsp"/>

<%}
    // setproperty 이후에 해야지 저장이 되어있는걸 가져 올 수 있지 않을까?
    insertUser(User);

    System.out.println("자바빈에 id 저장함 --->" + request.getParameter("id"));
    System.out.println("자바빈에 name 저장함 --->" + request.getParameter("name"));
    System.out.println("자바빈에 pw 저장함 --->" + request.getParameter("pw"));
    System.out.println("자바빈에 email 저장함 --->" + request.getParameter("email"));
%>

<jsp:forward page="userinfo.jsp"/>
