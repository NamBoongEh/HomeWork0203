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

    //Memo 아이디 유효성검사 부분
    if(id.equals("")){
        request.setAttribute("idNull", "ID를 입력해주세요.");
        System.out.println("id null 값 나왔음");
        goback = false;
    }

    //아이디 중복 확인(id가 selectUser 메서드에서 같은 id가 있다면 true로, 없다면 false로 나온다.
    //true로 나올 경우 메세지를 출력해준다.
    if(selectUser(id)){
        request.setAttribute("idSame", "중복되는 아이디가 있습니다.");
        System.out.println("중복되는 아이디 있음");
        goback = false;
    }

    //아이디에 영어 소문자, 대문자, 숫자 외에는 못들어가게하기
    for(int i=0; i<id.length(); i++){
        if(!((48<=id.charAt(i) && id.charAt(i)<=57) || (65<=id.charAt(i) && id.charAt(i)<=90) || (97<=id.charAt(i) && id.charAt(i)<=122))){
            request.setAttribute("idCant", "ID는 영어 소문자, 대문자, 숫자만 가능합니다.");
            System.out.println("ID에 영어나 숫자 외에 다른거 넣는게 나왔음");
            goback = false;
            break;
        }
    }

    //Memo 이름 유효성검사 부분
    if(name.equals("")){
        request.setAttribute("nameNull", "이름을 입력해주세요.");
        System.out.println("이름 null 값 나왔음");
        goback = false;
    }
    else{
        //이름에 특수문자, 숫자가 들어갈 경우
        for(int i=0; i<name.length(); i++){
            if((33<=name.charAt(i) && name.charAt(i)<=64) || (91<=name.charAt(i) && name.charAt(i)<=96) || (123<=name.charAt(i) && name.charAt(i)<=125)){
                request.setAttribute("nameMake", "유효한 이름을 작성해주세요.");
                System.out.println("이름에 특수문자 또는 숫자 넣음");
                goback = false;
                break;
            }
        }
    }




    //Memo 패스워드 유효성검사 부분
    if(pw.equals("")){
        request.setAttribute("pwNull", "패스워드를 입력해주세요.");
        System.out.println("pw null 값 나왔음");
        goback = false;
    }
    else{
        //패스워드 길이 4~12로 맞추기
        if(!(4<=pw.length() && pw.length()<=12)){
            request.setAttribute("pwLength", "PW는 4~12 길이만 가능합니다.");
            System.out.println("PW 길이가 4보다 작거나 12보다 큼");
            goback = false;
        }
        else{
            //패스워드 소문자, 대문자, 숫자, 특수문자 4가지 중 2가지 이상 포함시키기
            int[] pwCheck = {0,0,0,0};

            for(int i=0; i<pw.length(); i++){
                //소문자
                if(97<=pw.charAt(i) && pw.charAt(i)<=122){
                    pwCheck[0] = 1;
                }
                //대문자
                if(65<=pw.charAt(i) && pw.charAt(i)<=90){
                    pwCheck[1] = 1;
                }
                //숫자
                if(48<=pw.charAt(i) && pw.charAt(i)<=57){
                    pwCheck[2] = 1;
                }
                //특수문자
                if((33<=pw.charAt(i) && pw.charAt(i)<=47) || (58<=pw.charAt(i) && pw.charAt(i)<=64) || (91<=pw.charAt(i) && pw.charAt(i)<=96) || (123<=pw.charAt(i) && pw.charAt(i)<=125)){
                    pwCheck[3] = 1;
                }
            }

            if((pwCheck[0]+pwCheck[1]+pwCheck[2]+pwCheck[3])<2){
                request.setAttribute("pwMake", "영어 소문자, 대문자, 특수문자, 숫자 중 2가지 이상을 포함해야합니다.");
                System.out.println("PW 제작조건 개무시함");
                goback = false;
            }
        }
    }


    //Memo 이메일 유효성검사 부분

    if(email.equals("")) {
        request.setAttribute("emailNull", "이메일을 입력해주세요.");
        System.out.println("email null 값 나왔음");
        goback = false;
    }
    else {
        //이메일 @ 포함 여부 확인
        if(!(email.contains("@"))) {
            request.setAttribute("emailGolbang", "유효한 형식의 이메일을 작성하여주시기 바랍니다.");
            System.out.println("이메일에 @가 없음");
            goback = false;
        }
    }

    //이메일 .com .net 외에 org도 있네 망했네

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
