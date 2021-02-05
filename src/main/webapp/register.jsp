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
<style>
    body{
        <%-- 뒷배경 색상 넣기--%>
        background: #f9d9ca;
    }
    <%-- 박스 테두리(각각의 음각, 양각, 굵기 별 거 다 있음) 만들어주기 [[[참고]]]]  <p class="solid">--%>
    p.solid{
        border: 5px solid #d18063;
        border-radius: 3px;
        /*border-style: solid;*/
        /*border-width: 5px;*/
        /*border-color: #d18063;*/

        /*정 기억하기 힘들면 우리가 마진 남겨먹는거 생각하자. 박스 마진 얼마나 남겨먹을거야?*/
        margin: 10px 700px 30px 700px;
        background-color: white;

/*
//Memo 현재 최대 문제점 : 화면 확대/축소 시 border가 고정이 아니라서 난리 부르스침
*/
        /*
        내용물과 보더(박스) 그 사이에 있는 패딩... 즉 내가 박스와 내용물 사이 간격을 얼마나 줄건지 정하는거
        진짜 맨날 get set 이거만하다가 꾸미니깐 너무 재미있다ㅠㅠ 못해도 재미있다ㅠㅠ
         */
        padding: 10px 50px 30px 50px;
    }
    h1{
        color: #d18063;
        text-align: center;
        letter-spacing: 3px;
        font-family: Impact;
        font-size: 80px;
    }
    /*
    //Memo 버튼 초기 색이 회색이야...ㅠㅠ
     */
    button:link, button:visited{
        background-color: #d18063;
        color: white;
        padding: 14px 25px;
        text-align: center;
    }
    button:hover, button:active{
        background-color: #917b56;
    }
</style>
<body>

<h1>Sign up</h1>

        <form action="registerAction.jsp" font-family="Lucida Blackletter">
            <p class="solid">
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
        <button type="submit" text-align="center">회원 가입</button><br>
            </p>
        </form>

</body>
</html>
