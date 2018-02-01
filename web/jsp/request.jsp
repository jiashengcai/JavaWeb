<%@ page import="java.lang.annotation.Target" %><%--
  Created by IntelliJ IDEA.
  User: cai
  Date: 2018/2/1
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page
        contentType="text/html;charset=UTF-8"
        language="java"
        errorPage=""
        pageEncoding="UTF-8"
%>
<%--
request 封装了用户提交给服务器的所有信息 通过request对象获取这些信息
--%>
<html>
<head>
    <title>request测试页面</title>
</head>
<body>
<form name="test" method="post" action="request.jsp">
    <BR>用户名<input name="username" type="text" >
    <BR>密码<input name="password" type="password">
    <input type="submit">
</form>
</body>


    <%
    //解决获取字段中存在中文乱码情况
    request.setCharacterEncoding("UTF-8");

%>
<%=request.getParameter("username")%>
<%=request.getParameter("password")%>
<%=request.getProtocol()%>
<%=request.getServletPath()%>
<%=request.getContentLength()%>
<%=request.getMethod()%>
<%=request.getHeader("user-agent")%>
<%=request.getRemoteAddr()%>
<%=request.getServerName()%>
