$(function(){
    $(document).ready(function(){
        $.getJSON("/user/getIntegral",function(res){
            console.log(res);
            $('#integral').append(res.integral);
        });
        $.getJSON("/init/initFinishedOrder",function(res){
            console.log(res);
            $("#finishedordertable").datagrid(res);
        });
// $.getJSON("/init/initUnfinishedOrder",function(res){
//     console.log(res);
//     $("#unfinishedordertable").datagrid(res);
// });
    })
});