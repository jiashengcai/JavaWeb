<%--
  Created by IntelliJ IDEA.
  User: cai
  Date: 2018/2/1
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>其他</title>
</head>
<body>
Out(Javax.servlet.jsp.JspWriter)用于将内容写入JSP页面实例的输出流中,提供了几个方法使你能用于向浏览器回送输出结果。
<br>
pageContext(Javax.servlet.jsp.PageContext)描述了当前JSP页面的运行环境。可以返回JSP页面的其他隐式对象及其属性的访问,另外,它还实现将控制权从当前页面传输至其他页面的方法。
<br>
Session(javax.servlet.http.HttpSession)会话对象存储有关此会话的信息,也可以将属性赋给一个会话,每个属性都有名称和值。会话对象主要用于存储和检索属性值。
<br>
Application(javax.servle.ServletContext)存储了运行JSP页面的servlet以及在同一应用程序中的任何Web组件的上下文信息。
<br>
Page(Java.lang.Object)表示当前JSP页面的servlet实例
<br>
Config(javax.servlet.ServletConfig)该对象用于存取servlet实例的初始化参数。
<br>
Exception(Javax.lang.Throwable)在某个页面抛出异常时,将转发至JSP错误页面,提供此对象是为了在JSP中处理错误。只有在错误页面中才可使用<%@page isErrorPage=“true”%>
</body>
</html>
