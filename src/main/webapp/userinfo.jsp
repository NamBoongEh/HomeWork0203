<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="User" class="codechobo.User" scope="request"/>
<jsp:getProperty name="User" property="id"/>
<jsp:getProperty name="User" property="name"/>
<jsp:getProperty name="User" property="pw"/>
<jsp:getProperty name="User" property="email"/>


<!DOCTYPE html>
<html>
<head>
    <title>userinfo</title>
</head>
<body>
    안녕 너의 아이디는 <%=User.getId()%> 이고, <br>
        너의 이름은 <%=User.getName()%> 이며, <br>
        너의 비번은 <%=User.getPw()%> 이지. <br>
        추가로 이메일은 <%=User.getEmail()%> 임! <br>

</body>
</html>
