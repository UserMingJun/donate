function allOrderDelete(i){
    $.ajax({
        //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "/manage/allOrderDelete" ,//url
        data: { deleteValue:i},
        success: function (result) {
            console.log(result);//打印服务端返回的数据(调试用)
            if (result.status == 100){
                alert(result.message);
                window.location.href = "/menu/manage";
            } else{
                alert(result.message);
            }
        }
    });
}

function userDelete(i){
    $.ajax({
        //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "/manage/userDelete" ,//url
        data: { deleteUserId:i},
        success: function (result) {
            console.log(result);//打印服务端返回的数据(调试用)
            if (result.status == 100){
                alert(result.message);
                window.location.href = "/manage/manage_user";
            } else{
                alert(result.message);
            }
        }
    });
}

function articleDelete(i){
    $.ajax({
        //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "/manage/articleDelete" ,//url
        data: { deleteArticleId:i},
        success: function (result) {
            console.log(result);//打印服务端返回的数据(调试用)
            if (result.status == 100){
                alert(result.message);
                window.location.href = "/menu/manage_article";
            } else{
                alert(result.message);
            }
        }
    });
}

function applyDelete(i){
    $.ajax({
        //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "/manage/applyDelete" ,//url
        data: { deleteApplyId:i},
        success: function (result) {
            console.log(result);//打印服务端返回的数据(调试用)
            if (result.status == 100){
                alert(result.message);
                window.location.href = "/menu/manage_apply";
            } else{
                alert(result.message);
            }

        }
    });
}