<%--
  Created by IntelliJ IDEA.
  User: xingj
  Date: 2019/12/8
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- enctype="multipart/form-data" 以二进制提交 -->
<form action="${pageContext.request.contextPath}/fileUpload" method="post" enctype="multipart/form-data">
    <!-- multiple="multiple" 设置可以同时选择多个文件 -->
    <input type="file" name="uploadFile" id="uploadFile" multiple="multiple" />
    <input type="submit" value="提交">
</form>
</body>
</html>
