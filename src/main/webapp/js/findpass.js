function sendMail() {
    $.ajax({
        //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "/user/sendMail" ,//url
        data: $('#sendmailform').serialize(),
        success: function (result) {
            // console.log(result);//打印服务端返回的数据(调试用)
            if(result.status == 100){
                alert(result.message);
                location.href = "/menu/login";
            }else{
                alert(result.message);
                location.href = "/user/toFindPass";
            }
        }
    });
}

function updatePass() {
    $.ajax({
        //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "/user/updatePass" ,//url
        data: $('#updatepassform').serialize(),
        success: function (result) {
            // console.log(result);//打印服务端返回的数据(调试用)
            if(result.status == 100 || result.status == 200){
                alert(result.message);
                location.href = "/user/toUpdatePass";
            }else{
                alert(result.message);
                location.href = "/menu/login";
            }
        }
    });
}
