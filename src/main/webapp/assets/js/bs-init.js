function picUpload() {
    var formData = new FormData($("#picUpload")[0]);
    $.ajax({
        type: "post",
        url: domainUrl + "/fileUpload",
        data: formData,
        cache: false,//文件不设置缓存
        processData: false,//数据不被转换为字符串
        contentType: false,//上传文件时使用，避免 JQuery 对其操作
        success:function (data) {
            $("#productPicture").val(data);
            $("#picture").attr('src',data)
        }
    })
}