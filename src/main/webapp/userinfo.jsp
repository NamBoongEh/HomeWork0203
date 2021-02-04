<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="User" class="codechobo.User" scope="request"/>

<jsp:getProperty name="User" property="id"/>
<jsp:getProperty name="User" property="name"/>
<jsp:getProperty name="User" property="pw"/>
<jsp:getProperty name="User" property="email"/>