<%--
  Created by IntelliJ IDEA.
  User: C Y
  Date: 2020/7/3
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!--指定对服务器响应进行重新编码的编码。-->
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String userNum=request.getParameter("userNumber");//String 类型
    int userNumber=(Integer) Integer.parseInt(userNum);
    int randomNumber=(Integer)session.getAttribute("randomNumber");//object类型转integer类型
    if (userNumber<=99&&userNumber>=0){
        if (userNumber==randomNumber){
            session.setAttribute("message","you are right,reset random");
            session.removeAttribute("randomNumber");
            response.sendRedirect("index.jsp");
        }
        if (userNumber>randomNumber){
            session.setAttribute("message","your input "+userNumber+" is large,reset input "+randomNumber);
            response.sendRedirect("index.jsp");
        }
     if (userNumber<randomNumber){
    session.setAttribute("message","your input "+userNumber+" is small,reset input "+randomNumber);
    response.sendRedirect("index.jsp");
    }
    }else{
        session.setAttribute("message","input error,reset input");
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>
