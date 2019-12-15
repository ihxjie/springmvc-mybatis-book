<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix= "form" uri= "http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>
        /**
         * 转换成json字符串
         * @param $form
         */
        function getFormData($form) {
            var unindexed_array = $form.serializeArray();
            var indexed_array = {};

            $.map(unindexed_array, function (n, i) {
                indexed_array[n['name']] = n['value'];
            });
            return indexed_array;
        }

        /**
         * 后端发送AJAX
         */
        $(function () {
            $("#btn").click(function () {
                var arry = getFormData($("#form1"));
                alert(JSON.stringify(arry));
                $.ajax({
                    //json格式
                    url:"product/testAjax",
                    contentType:"application/json;charset=UTF-8",
                    data:JSON.stringify(arry),
                    dataType:"json",
                    type:"post",
                    success:function(data){
                        //data服务器端响应的json的数据，进行解析
                        alert(data+data.userId);
                        alert();
                        alert(data.userEmail);
                        alert(data.userPassword);
                    },
                    error:function () {
                        alert("失败");
                    }
                });
            });
        });
    </script>
</head>
<body>
<a href="product/list">分页查询</a>
<a href="product/sayHello">123</a>
<form id="form1">
    <input type="text" name="userId" id="userId">
    <input type="text" name="userEmail" id="userEmail">
    <input type="text" name="userPassword" id="userPassword">
    <button id="btn">发送ajax</button>
</form>
<a href="product/jsp">注册网页</a>
<a href="user/tologin">登陆网页</a>
<%--<h3>SpringMVC文件上传</h3>
<form action="${pageContext.request.contextPath}/test/fileUpload" method="post" enctype="multipart/form-data">
    选择文件：<input type="file" name="uploadFile" multiple="multiple" id="uploadFile"><br>
    <input type="submit" value="上传">
</form>--%>
<!-- enctype="multipart/form-data" 以二进制提交 -->
<form action="${pageContext.request.contextPath}/test/fileUpload" method="post" enctype="multipart/form-data">
    <!-- multiple="multiple" 设置可以同时选择多个文件 -->
    <input type="file" name="uploadFile" id="uploadFile" multiple="multiple" />
    <input type="submit" value="提交">
</form>
<a href="${pageContext.request.contextPath}/test/fileDownload?filename=实验01.doc">实验01.doc</a>

<form action="test/stu" method="post">
    name：<input type="text" name="name"><errors path="name"></errors><br>
    age：<input type="text" name="age"><br><errors path="age"></errors>
    gender：<input type="text" name="gender"><br>
    birth：<input type="text" name="birth"><errors path="birth"></errors>
    <input type="submit" value="提交" ><br>
</form>
<%--@elvariable id="JSR303Test" type="com.ex.model.JSR303Test"--%>
<form:form method="post" modelAttribute="JSR303Test">
    <form:errors path="*" cssClass="error" />
    <table>
        <tr>
            <td>Name</td>
            <td><form:input path="name" />
            </td>
            <td><form:errors path="name" cssClass="error" />
            </td>
        </tr>
        <tr>
            <td>email</td>
            <td><form:input path="age" />
            </td>
            <td><form:errors path="age" cssClass="error" />
            </td>
        </tr>

        <tr>
            <td colspan="3"><input type="submit" />
            </td>
        </tr>
    </table>
</form:form>

<%--<form:form ModelAttribute="JSR303Test" method="post" action="test/stu" >
    <table>
        <tr>
            <td>name:</td>
            <td><form:input path="name"/></td>
            <td><form:errors path="name" cssStyle= "color:red"/></td>
        </tr>
        <tr>
            <td>age:</td>
            <td><form:input path="age"/></td>
            <td><form:errors path="age" cssStyle= "color:red"/></td>
        </tr>
        <tr>
            <td>gender:</td>
            <td><form:input path="gender"/></td>
            <td><form:errors path="gender" cssStyle= "color:red"/></td>
        </tr>
        <tr>
            <td>birth:</td>
            <td><form:input path="birth"/></td>
            <td><form:errors path="birth" cssStyle= "color:red"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="提交"/></td>
        </tr>
    </table>
</form:form>--%>
</body>
</html>
