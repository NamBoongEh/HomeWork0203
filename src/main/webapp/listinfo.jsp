<%@ page import="static codechobo.DAOTest6.selectAllUsers" %>
<%@ page import="codechobo.User" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
    List<User> list = selectAllUsers();
    System.out.println("연결했으요~");
//    System.out.println("이거입니다! ----> " + list.toString());
//
//    System.out.println(list.get(1) + "<--- get으로 받은거 여기입니다!");

    //split으로 찢어보자. 그 뒤에 또 " "를 찢어서 2차원 배열로 만들고, []는 replace로 없애자.
    //불가. replace로 안없어짐.
    //최악의 수단. 가능. " "로 먼저 찢고, ","를 ""로 변환.
    //Memo 정답!!!!!!!!!!!!! get으로 꺼내볼까? ( get으로 꺼낸다.)
    //   System.out.println(list.get(1) + "<--- get으로 받은거 여기입니다!");
    //   출력 화면 : ff22f3 1234 남궁성 aaa@aaa.com<--- get으로 받은거 여기입니다!

    //해결 get으로 이쁘게 나왔는데 이걸 어떻게 찢어야하나?
    // 지금 이 부분은 안하고 css에서 찢어서 이쁘게 칸마다 넣어야함.(즉 지금은 출력해서 화면에 보이기까지만 하면 됨)

    request.setAttribute("list", list);

    for(int i=0; i<list.size(); i++){
        System.out.println("이렇게 뽑아냈어요! ---> " + list.get(i));
        //get() 뒤에 다시 . 붙이고 .getId() .getPw() 를 쓰면 된다.
    }

%>


<!DOCTYPE html>
<html>
<head>
    <title>listInfo</title>
</head>
<body>

    <table border="1" align="center">
        <th>No.</th>
        <th>ID</th>
        <th>PW</th>
        <th>Name</th>
        <th>e-mail</th>

        <%--for(int i=0; i<list.size(); i++){
        --%>

        <c:forEach var="i" begin="0" end="${fn:length(list)-1}">
        <tr align="center"><!--줄 시작 -->
            <td>${i+1}</td>
            <td>${list[i].id}</td>
            <td>${list[i].pw}</td>
            <td>${list[i].name}</td>
            <td>${list[i].email}</td>

<%--            <td><%=list.get(i).getId()%></td>--%>
<%--            <td><%=list.get(i).getPw()%></td>--%>
<%--            <td><%=list.get(i).getName()%></td>--%>
<%--            <td><%=list.get(i).getEmail()%></td>--%>
        </tr><!--줄 끝-->
        </c:forEach>

        <%--}--%>
    </table>

    <%--
    <%for(int i=0; i<list.size(); i++){
        person = list.get(i).toString();
    %>
    <%=person%><br>
    <%}%>


    <br> 여기는 아이디 뽑아내는 테스트 <br>
    <%=list.get(1).getId()%>
    --%>
</body>
</html>