<%--
  Created by IntelliJ IDEA.
  User: C Y
  Date: 2020/7/3
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>猜数字小游戏</title>
  </head>
  <style type="text/css">
    body{
      position:absolute;
      left:10px;
      top:50px;
    }
    input{
      border:1px solid;
      margin:auto;
    }
  </style>
  <body>
  <%
    String message=(String) session.getAttribute("message");
    if (message!=null)
        out.println(message);
    if(session.isNew()||"you are right,reset random".equals(message))//是浏览器新建的会话session返回true
      session.setAttribute("randomNumber",(int)(Math.random()*100));
  %>
  <form action="compare.jsp" method="post">
    <table border="1" align="left">
      <tr>
        <td>欢迎来玩猜数字--</td>
      </tr>
      <tr>
        <td>请输入0-99:</td>
      </tr>
      <tr>
        <td><input type="text" name="userNumber"></td>
      </tr>
      <tr>
        <td align="center"><input type="submit" value="输入">
        <input type="reset" value="撤销">
        </td>
      </tr>
    </table>
  </form>

  </body>
</html>
