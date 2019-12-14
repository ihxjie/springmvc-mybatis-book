
var pageNum = 1;
var pageSize = 5;

$(document).ready(function(){
	$("#pageSize").change(function () {
		pageSize = $(this).val();
		getProducts();
	});

	getProducts();

});
function getNextPage() {
	pageNum += 1;
	getProducts();
}
function getPreviousPage() {
	pageNum -= 1;
	getProducts();
}
function getProducts() {
	$.ajax({
		url:"product/getProducts",
		type:"get",
		dataType:"json",
		data:{pageNum:pageNum,pageSize:pageSize},
		contentType : "application/json;charset=utf-8",
		success:function (data) {
			var list = data.list;
			var tbody = $("#dataTable").children("tbody");

			var tbodyHtml = "";
			$.each(list,function (idx,obj) {
				tbodyHtml += "<tr><td>" + obj.productName;
				tbodyHtml += "</td><td>" + obj.productOriginalPrice;
				tbodyHtml += "</td><td>" + obj.productCurrentPrice;
				tbodyHtml += "</td><td>" + obj.productStock;
				tbodyHtml += "</td><td>" + obj.productPicture;
				tbodyHtml += "</td><td>" + obj.typeId;
				tbodyHtml += "</td><td><a class='btn btn-primary btn-icon-split' role='button' href='product/" + obj.productId +
					"'><span class='text-white icon'><i class='fas fa-edit'></i></span></a>";
				tbodyHtml += "</td><tr>";
			});
			tbody.html(tbodyHtml);

			$("#page-num").children("a").text(pageNum);
			$("#dataTable_info").text("展示了 " + data.startRow + " 到 " + data.endRow + " 条数据，共 " + data.size + " 条");
			if (data.hasPreviousPage){
				$("#previous-page").removeClass("disabled");
			}else {
				$("#previous-page").addClass("disabled");
			}
			if (data.hasNextPage){
				$("#next-page").removeClass("disabled");
			}else {
				$("#next-page").addClass("disabled");
			}
		}
	})
}
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
function ReplaceControl(obj) {
	var newObject = document.createElement('input');
	newObject.value = obj.innerText;
	newObject.setAttribute("type","text");
	newObject.setAttribute("onblur","RestoreControl(this)");
	newObject.style.height = "98%";
	newObject.size = newObject.value.length;
	//插入替换后的Input
	obj.parentNode.appendChild(newObject);
	//删除表单原控件
	//obj.removeNode();
	obj.parentNode.removeChild(obj);
	newObject.focus();
}
function RestoreControl(obj) {
	var newObject = document.createElement('span');
	newObject.innerText = obj.value;
	newObject.setAttribute("ondblclick","ReplaceControl(this)");
	obj.parentNode.appendChild(newObject);
	obj.parentNode.removeChild(obj);

}