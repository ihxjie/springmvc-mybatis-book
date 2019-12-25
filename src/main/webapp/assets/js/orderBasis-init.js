
var pageNum = 1;
var pageSize = 5;
var keyword = "";

$(document).ready(function(){
    $("#pageSize").change(function () {
        pageSize = $(this).val();
        getOrderBasis();
    });
    $("#search-box").on('input',function () {
        keyword = $(this).val();
        getOrderBasis();
    });

    getOrderBasis();

});
function getNextPage() {
    pageNum += 1;
    getOrderBasis();
}
function getPreviousPage() {
    pageNum -= 1;
    getOrderBasis();
}

function getOrderBasis() {
    $.ajax({
        url:"orderBasis/getOrderBasis",
        type:"get",
        dataType:"json",
        data:{pageNum:pageNum,pageSize:pageSize,keyword:keyword},
        contentType : "application/json;charset=utf-8",
        success:function (data) {
            var list = data.list;
            var tbody = $("#dataTable").children("tbody");

            var tbodyHtml = "";
            $.each(list,function (idx,obj) {
                tbodyHtml += "<tr><td>" + obj.orderId;
                tbodyHtml += "</td><td>" + obj.orderMoney;
                tbodyHtml += "</td><td>" + obj.orderStatus;
                tbodyHtml += "</td><td>" + dateTrans(obj.orderTime);
                tbodyHtml += "</td><td>" + obj.userId;
                tbodyHtml += "</td><td><a class='btn btn-danger btn-icon-split' role='button' href='orderBasis/delete/" + obj.orderId +
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
function dateTrans(times) {
    let date = new Date(times);

    let  Y = date.getFullYear();

    let  M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) ;

    let  D = (date.getDate() < 10 ?'0'+ date.getDate() : date.getDate());

    let  H = date.getHours() < 10 ?'0'+ date.getHours() : date.getHours();

    let  Min = date.getMinutes() < 10 ?'0'+ date.getMinutes() : date.getMinutes();

    let  S = date.getSeconds() < 10 ?'0'+ date.getSeconds() : date.getSeconds();

    return Y + '-' + M + '-' + D + ' ' + H + ':' + Min + ':' + S;
}
