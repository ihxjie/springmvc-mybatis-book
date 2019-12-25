function send() {
    var formData = new FormData($("#productForm")[0]);
    if (formData.get("productId") !== ""){
        $.ajax({
            url: domainUrl + "/product/update",
            data: formData,
            type: "post",
            cache: false,//文件不设置缓存
            processData: false,//数据不被转换为字符串
            contentType: false,//上传文件时使用，避免 JQuery 对其操作
            success:function (data) {
                alert("商品信息修改成功");
                window.location.href = domainUrl + "/ProductBackstageSys";
            }
        })
    }else {
        $.ajax({
            url: domainUrl + "/product/add",
            data: formData,
            type: "post",
            cache: false,//文件不设置缓存
            processData: false,//数据不被转换为字符串
            contentType: false,//上传文件时使用，避免 JQuery 对其操作
            success:function (data) {
                alert("商品信息增加成功");
                window.location.href = domainUrl + "/ProductBackstageSys";
            }
        })

    }

}