<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="User" class="codechobo.User" scope="request"/>

당신의 아이디 ${User.id}<br>
당신의 이름 ${User.name}<br>
당신의 패스워드 ${User.pw}<br>
당신의 이메일 ${User.email}<br>

<%--<jsp:getProperty name="User" property="id"/>--%>
<%--<jsp:getProperty name="User" property="name"/>--%>
<%--<jsp:getProperty name="User" property="pw"/>--%>
<%--<jsp:getProperty name="User" property="email"/>--%>