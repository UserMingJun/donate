function submitApply() {
    var formData = new FormData();
    if ($("#apply_name")[0].value != null && $("#apply_number")[0].value != null && $("#apply_address")[0].value != null && $("#apply_detail")[0].value != null && $("#apply_file")[0].files[0] != null){
        formData.append("apply_name", $("#apply_name")[0].value);
        formData.append("apply_number", $("#apply_number")[0].value);
        formData.append("apply_address", $("#apply_address")[0].value);
        formData.append("apply_detail", $("#apply_detail")[0].value);
        formData.append("apply_file", $("#apply_file")[0].files[0]);
        $.ajax({
            //几个参数需要注意一下
            type: "POST",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "/apply/insertApply" ,//url
            processData: false,
            contentType: false,
            data: formData,
            success: function (result) {
                // console.log(result);//打印服务端返回的数据(调试用)
                if (result.status == 100) {
                    alert(result.message);
                    window.location.href = "/menu/index";
                }else{
                    alert(result.message);
                }
            }
        });
    }else{
        alert("请完整填写信息");
    }


}