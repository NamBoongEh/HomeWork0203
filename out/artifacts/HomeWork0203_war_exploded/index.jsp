<%--
  Created by IntelliJ IDEA.
  User: Nam
  Date: 2021-02-03
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript">
    function punch() {
        var td = document.getElementById("punch");
        var n = Number(td.innerHTML);
        td.innerHTML = n + 1;
    }
</script>
<body>
    <jsp:include page="menu.jsp"/>

<div style="text-align: center">
    <input type="image" name="tomcat" title="이 홈페이지 갈비지 홈페이지다옹~" src="image/tomcat.png" onclick="punch()"/><br>
    개때리고싶은 톰캣 때려주기<br>
</div>
        <table border="1" align="absmiddle" style="margin: auto; text-align: center;">
            <th>지금까지 때린 횟수</th>
            <tr>
                <td id="punch">0</td>
            </tr>
        </table>

    <jsp:include page="footer.jsp"/>
</body>
</html>
