<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>register</title>
</head>
<body>
        <form action="registerAction.jsp">
        ID : <input type="text" name="id" value="" placeholder="회원가입하실 id를 적어주세요."><br>
        Name : <input type="text" name="name" value="" placeholder="본인 성명 기입"><br>
        PW : <input type="text" name="pw" value="" placeholder="pw를 입력하세요."><br>
        E-mail : <input type="text" name="email" value="" placeholder="본인확인을 위한 email을 작성해주세요."><br>
        <button type="submit">회원 가입</button>
        </form>
</body>
</html>
