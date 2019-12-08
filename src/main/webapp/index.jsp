<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<form id="form1">
    <input type="text" name="userId" id="userId">
    <input type="text" name="userEmail" id="userEmail">
    <input type="text" name="userPassword" id="userPassword">
    <button id="btn">发送ajax</button>
</form>
</body>
</html>
