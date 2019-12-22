
var pageNum = 1;
var pageSize = 5;
var keyword = "";

$(document).ready(function(){
    $("#pageSize").change(function () {
        pageSize = $(this).val();
        getUser();
    });
    $("#search-box").on('input',function () {
        keyword = $(this).val();
        getUser();
    });

    getUser();

});
function getNextPage() {
    pageNum += 1;
    getUser();
}
function getPreviousPage() {
    pageNum -= 1;
    getUser();
}

function getUser() {
    $.ajax({
        url:"user/getUser",
        type:"get",
        dataType:"json",
        data:{pageNum:pageNum,pageSize:pageSize,keyword:keyword},
        contentType : "application/json;charset=utf-8",
        success:function (data) {
            var list = data.list;
            var tbody = $("#dataTable").children("tbody");

            var tbodyHtml = "";
            $.each(list,function (idx,obj) {
                tbodyHtml += "<tr><td>" + obj.userEmail;
                tbodyHtml += "</td><td>" + obj.userPassword;
                tbodyHtml += "</td><td><a class='btn btn-danger btn-icon-split' role='button' href='user/delete/" + obj.userId +
                    "'><span class='text-white icon'><i class='fas fa-trash'></i></span></a>";
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
