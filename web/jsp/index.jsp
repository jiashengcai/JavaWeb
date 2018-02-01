<%--
  Created by IntelliJ IDEA.
  User: cai
  Date: 2018/2/1
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%--
page指令
只能出现一次  重复出现将会覆盖
         import="" 引入使用类
         session="true" 指定所在页面是否使用session对象
         buffer="8kb" 指定到客户输出流的缓冲模式。如果为none则不缓冲
         autoFlush="true" true缓冲区满的时候，客户端输出被刷新 false  满的时候出现异常
         info="test page"关于jsp页面的信息可以用servlet.getServletInfo()获得
         isErrorPage="false"  表明当前是否为其他页的错误页面
         errorPage="index.jsp"  定义此页面出现异常时候所调用的页面
         isThreadSafe="true" 用来设置JSP文件是否能多线程调用。默认忽略 true 可以同时处理多个用户请求， false 一次只能处理一个用户请求
         pageEncoding="utf-8"  页面编码设置

@include  引用其他可以被jsp解析的文件  ，利于页面分解
--%>
<%@ page contentType="text/html;charset=UTF-8"
%>
<%@include file="../index.jsp"%>
<html>
<head>
    <title>计算</title>
</head>
<body>
<h1>计算1到100的和</h1>
<%
    int m=100,n=1;
    int sum=0;
    while (n<=m){
        sum+=n;
        n++;
    }
%>
<%--输出sum的值 输出表达式--%>
<%=sum%>
</body>
</html>
