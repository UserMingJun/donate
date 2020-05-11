$(function(){
    $(document).ready(function(){
        $.getJSON("/shop/showCart",function(res){
            var str = null;
            var sum = 0;
            for(var i = 0; i < res.length; i++){
                str += "<tr>\n" +
                    "                                        <td class=\"cart_product_img\">\n" +
                    "                                            <img src=\""+ res[i].image.split("!")[0] +"\" alt=\"Product\">\n" +
                    "                                        </td>\n" +
                    "                                        <td class=\"cart_product_desc\">\n" +
                    "                                            <h5> "+ res[i].name +"</h5>\n" +
                    "                                        </td>\n" +
                    "                                        <td class=\"price\">\n" +
                    "                                            <span>"+ res[i].integral +"</span>\n" +
                    "                                        </td>\n" +
                    "                                        <td class=\"qty\">\n" +
                    "                                            <span>"+ res[i].quantity +"</span>\n" +
                    "                                            \n" +
                    "                                        </td>\n" +
                    "                                        <td class=\"qty\">" +
                    "                                           <a href='' onclick='deleteProduct("+ res[i].id +")'>" +
                    "                                               <button class='amado-btn-delete btn w-100'>删除</button>"+
                    "                                           </a>"+
                    "                                        </td>\n" +
                    "                                    </tr>"
                sum += (res[i].integral * res[i].quantity);
            }
            $("#cart_table").append(str);
            $("#sum_integral").html(sum);
            $("#total_integral").html(sum);
        });

    })
});


function checkOut() {
    var name = document.getElementById("name").value;
    var number = document.getElementById("number").value;
    var address = document.getElementById("address").value;
    if(name == 0 || number == 0 || address == 0){
        alert("请完整填写信息")
    }else if(!(/^[1][3,4,5,7,8][0-9]{9}$/).test(number)){
        alert("请输入正确手机号")
    }else {
        $.ajax({
            //几个参数需要注意一下
            type: "POST",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "/shop/checkout" ,//url
            data: {name:name,number:number,address:address},
            success: function (result) {
                // console.log(result);//打印服务端返回的数据(调试用)
                if (result.status == 100){
                    alert(result.message);
                    window.location = '/menu/shop_index';
                }else {
                    alert(result.message);
                }
            }
        });
    }

}

function deleteProduct(id) {
    $.ajax({
        //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "/shop/deleteProduct" ,//url
        data: {id:id},
        success: function (result) {
            console.log(result);//打印服务端返回的数据(调试用)
            if (result.status == 100){
                window.location = "/menu/shop_cart";
            } else {
                alert(result.message);
            }

        }
    });
}