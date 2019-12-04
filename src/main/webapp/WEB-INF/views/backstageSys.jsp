<%--
  Created by IntelliJ IDEA.
  User: xingj
  Date: 2019/12/1
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理系统</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/product/add">
    <input name="productName">
    <button type="submit">提交</button>
</form>

</body>
</html>
