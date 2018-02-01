<%--
  Created by IntelliJ IDEA.
  User: cai
  Date: 2018/2/1
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Response</title>
</head>
<body>
Response 对象对客户的请求做出动态响应， 向客户端发送数据
<table cellspacing="0" cellpadding="0">
    <tbody>
    <tr class="firstRow">
        <td valign="top" width="144" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:center;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">方法名</span>
            </p>
        </td>
        <td valign="top" width="284" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:center;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">说明</span>
            </p>
        </td>
    </tr>
    <tr>
        <td valign="top" width="144" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-family: &quot;Times New Roman&quot;; font-size: 18px;">addCookie</span>
            </p>
        </td>
        <td valign="top" width="284" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">添加一个<span style="font-family: &quot;Times New Roman&quot;;">Cookie</span>对象</span>
            </p>
        </td>
    </tr>
    <tr>
        <td valign="top" width="144" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-family: &quot;Times New Roman&quot;; font-size: 18px;">addHeader</span>
            </p>
        </td>
        <td valign="top" width="284" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">添加<span style="font-family: &quot;Times New Roman&quot;;">Http</span>文件指定名字头信息</span>
            </p>
        </td>
    </tr>
    <tr>
        <td valign="top" width="144" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-family: &quot;Times New Roman&quot;; font-size: 18px;">containsHeader</span>
            </p>
        </td>
        <td valign="top" width="284" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">判断指定名字<span style="font-family: &quot;Times New Roman&quot;;">Http</span>文件头信息是否存在</span>
            </p>
        </td>
    </tr>
    <tr>
        <td valign="top" width="144" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-family: &quot;Times New Roman&quot;; font-size: 18px;">encodeURL</span>
            </p>
        </td>
        <td valign="top" width="284" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">使用<span style="font-family: &quot;Times New Roman&quot;;">sessionid</span>封装<span style="font-family: &quot;Times New Roman&quot;;">URL</span></span>
            </p>
        </td>
    </tr>
    <tr>
        <td valign="top" width="144" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-family: &quot;Times New Roman&quot;; font-size: 18px;">flushBuffer</span>
            </p>
        </td>
        <td valign="top" width="284" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">强制把当前缓冲区内容发送到客户端</span>
            </p>
        </td>
    </tr>
    <tr>
        <td valign="top" width="144" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-family: &quot;Times New Roman&quot;; font-size: 18px;">getBufferSize</span>
            </p>
        </td>
        <td valign="top" width="284" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">返回缓冲区大小</span>
            </p>
        </td>
    </tr>
    <tr>
        <td valign="top" width="144" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-family: &quot;Times New Roman&quot;; font-size: 18px;">getOutputStream</span>
            </p>
        </td>
        <td valign="top" width="284" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">返回到客户端的输出流对象</span>
            </p>
        </td>
    </tr>
    <tr>
        <td valign="top" width="144" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-family: &quot;Times New Roman&quot;; font-size: 18px;">sendError</span>
            </p>
        </td>
        <td valign="top" width="284" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">向客户端发送错误信息</span>
            </p>
        </td>
    </tr>
    <tr>
        <td valign="top" width="144" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-family: &quot;Times New Roman&quot;; font-size: 18px;">sendRedirect</span>
            </p>
        </td>
        <td valign="top" width="284" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">把响应发送到另一个位置进行处理</span>
            </p>
        </td>
    </tr>
    <tr>
        <td valign="top" width="144" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-family: &quot;Times New Roman&quot;; font-size: 18px;">setContentType</span>
            </p>
        </td>
        <td valign="top" width="284" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">设置响应的<span style="font-family: &quot;Times New Roman&quot;;">MIME</span>类型</span>
            </p>
        </td>
    </tr>
    <tr>
        <td valign="top" width="144" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-family: &quot;Times New Roman&quot;; font-size: 18px;">setHeader</span>
            </p>
        </td>
        <td valign="top" width="284" style="border-color: silver; border-collapse: collapse; padding: 3px;">
            <p style="text-align:left;margin: 10px auto; line-height: 24px;">
                <span style="font-size: 18px;">设置指定名字的<span style="font-family: &quot;Times New Roman&quot;;">Http</span>文件头信息</span>
            </p>
        </td>
    </tr>
    </tbody>
</table>
<p>
    <br/>
</p>
</body>
</html>
