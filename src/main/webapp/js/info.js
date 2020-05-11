

(function() {
    $.getJSON("/user/getIntegral",function(res){
        console.log(res);
        $('#integral').append(res.integral);
    });
    $.getJSON("/init/initAllOrder",function(res){
        console.log(res);
        $("#allordertable").datagrid(res);
    });
    // $.getJSON("/init/initShopOrder",function(res){
    //     console.log(res);
    //     $("#shoptable").datagrid(res);
    // });
    // $.getJSON("/init/initFinishedOrder",function(res){
    //     console.log(res);
    //     $("#finishedordertable").datagrid(res);
    // });

}).call(this);