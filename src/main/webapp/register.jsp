<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${idNull==null}">
</c:if>
<c:if test="${nameNull==null}">
</c:if>
<c:if test="${pwNull==null}">
</c:if>
<c:if test="${emailNull==null}">
</c:if>
<c:if test="${idSame==null}">
</c:if>

<%--<%--%>
<%--        //MEMO null값 있다는 메세지 출력하는 모음--%>
<%--        --%>
<%--        String idNull = (String)request.getAttribute("idNull");--%>
<%--        if(idNull==null)--%>
<%--                idNull = "";--%>
<%--        String nameNull = (String)request.getAttribute("nameNull");--%>
<%--        if(nameNull==null)--%>
<%--                nameNull = "";--%>
<%--        String pwNull = (String)request.getAttribute("pwNull");--%>
<%--        if(pwNull==null)--%>
<%--                pwNull = "";--%>
<%--        String emailNull = (String)request.getAttribute("emailNull");--%>
<%--        if(emailNull==null)--%>
<%--                emailNull = "";--%>
<%--        String idSame = (String)request.getAttribute("idSame");--%>
<%--        if(idSame==null)--%>
<%--                idSame = "";--%>
<%--%>--%>

<!DOCTYPE html>
<html>
<head>
    <title>register</title>
</head>
<body>
        <form action="registerAction.jsp">
        ID : <input type="text" name="id" value="" placeholder="회원가입하실 id를 적어주세요."><br>
                ${idNull}${idSame}<br>
                <%--
                <%=idNull%>
                <%=idSame%>
                --%>
        Name : <input type="text" name="name" value="" placeholder="본인 성명 기입"><br>
                ${nameNull}<br>
                <%--
                <%=nameNull%><br>
                --%>
        PW : <input type="text" name="pw" value="" placeholder="pw를 입력하세요."><br>
                ${pwNull}<br>
                <%--
                <%=pwNull%><br>
                --%>
        E-mail : <input type="text" name="email" value="" placeholder="email을 작성해주세요."><br>
                ${emailNull}<br>
                <%--
                <%=emailNull%><br>
                --%>
        <button type="submit">회원 가입</button>
        </form>
</body>
</html>
