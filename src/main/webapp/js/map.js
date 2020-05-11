
function initClothesMap() {
    $.getJSON("/manage/initClothesMap",function(res){
        console.log(res);
        var arr= [['南海诸岛',0],['北京市',0],['天津市',0],['上海市',0],['重庆市',0],['河北省',0],['河南省',0],['云南省',0],['辽宁省',0],['黑龙江省',0],
            ['湖南省',0],['安徽省',0],['山东省',0],['新疆',0],['江苏省',0],['浙江省',0],['江西省',0],['湖北省',0],['广西',0],['甘肃省',0],['山西省',0],['内蒙古',0],['陕西省',0],['吉林省',0],['福建省',0],
            ['贵州省',0],['广东省',0],['青海省',0],['西藏',0],['四川省',0],['宁夏',0],['海南省',0],['台湾省',0],['香港',0],['澳门',0]];
        for (var i = 0; i < res.length; i++) {
            for (var j = 0; j <arr.length ; j++) {
                if (res[i].address == arr[j][0]){
                    arr[j][1] += res[i].sum;
                }
            }
        }
        var dataListClothes=[
            {name:"南海诸岛",value:arr[0][1]},
            {name: '北京', value: arr[1][1]},
            {name: '天津', value: arr[2][1]},
            {name: '上海', value: arr[3][1]},
            {name: '重庆', value: arr[4][1]},
            {name: '河北', value: arr[5][1]},
            {name: '河南', value: arr[6][1]},
            {name: '云南', value: arr[7][1]},
            {name: '辽宁', value: arr[8][1]},
            {name: '黑龙江', value: arr[9][1]},
            {name: '湖南', value: arr[10][1]},
            {name: '安徽', value: arr[11][1]},
            {name: '山东', value: arr[12][1]},
            {name: '新疆', value: arr[13][1]},
            {name: '江苏', value: arr[14][1]},
            {name: '浙江', value: arr[15][1]},
            {name: '江西', value: arr[16][1]},
            {name: '湖北', value: arr[17][1]},
            {name: '广西', value: arr[18][1]},
            {name: '甘肃', value: arr[19][1]},
            {name: '山西', value: arr[20][1]},
            {name: '内蒙古', value: arr[21][1]},
            {name: '陕西', value: arr[22][1]},
            {name: '吉林', value: arr[23][1]},
            {name: '福建', value: arr[24][1]},
            {name: '贵州', value: arr[25][1]},
            {name: '广东', value: arr[26][1]},
            {name: '青海', value: arr[27][1]},
            {name: '西藏', value: arr[28][1]},
            {name: '四川', value: arr[29][1]},
            {name: '宁夏', value: arr[30][1]},
            {name: '海南', value: arr[31][1]},
            {name: '台湾', value: arr[32][1]},
            {name: '香港', value: arr[33][1]},
            {name: '澳门', value: arr[34][1]}
        ]
        var myChart = echarts.init(document.getElementById('clothes_main'));
        optionClothes = {
            tooltip: {
                formatter:function(paramsClothes,ticket, callback){
                    return paramsClothes.seriesName+'<br />'+paramsClothes.name+'：'+paramsClothes.value +'kg'
                },//数据格式化
            },
            visualMap: {
                min: 0,
                max: 1000,
                left: 'left',
                top: 'bottom',
                text: ['高','低'],//取值范围的文字
                inRange: {
                    color: ['#e0ffff', '#006edd']//取值范围的颜色
                },
                show:true//图注
            },
            geo: {
                map: 'china',
                roam: false,//不开启缩放和平移
                zoom:1.23,//视角缩放比例
                label: {
                    normal: {
                        show: true,
                        fontSize:'10',
                        color: 'rgba(0,0,0,0.7)'
                    }
                },
                itemStyle: {
                    normal:{
                        borderColor: 'rgba(0, 0, 0, 0.2)'
                    },
                    emphasis:{
                        areaColor: '#F3B329',//鼠标选择区域颜色
                        shadowOffsetX: 0,
                        shadowOffsetY: 0,
                        shadowBlur: 20,
                        borderWidth: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            },
            series : [
                {
                    name: '捐赠衣服量',
                    type: 'map',
                    geoIndex: 0,
                    data:dataListClothes
                }
            ]
        };
        myChart.setOption(optionClothes);
        myChart.on('click', function (params) {
            alert(params.name);
        });



    });


}


function initBookMap() {
    $.getJSON("/manage/initBookMap",function(res){
        console.log(res);
        var arr= [['南海诸岛',0],['北京市',0],['天津市',0],['上海市',0],['重庆市',0],['河北省',0],['河南省',0],['云南省',0],['辽宁省',0],['黑龙江省',0],
            ['湖南省',0],['安徽省',0],['山东省',0],['新疆',0],['江苏省',0],['浙江省',0],['江西省',0],['湖北省',0],['广西',0],['甘肃省',0],['山西省',0],['内蒙古',0],['陕西省',0],['吉林省',0],['福建省',0],
            ['贵州省',0],['广东省',0],['青海省',0],['西藏',0],['四川省',0],['宁夏',0],['海南省',0],['台湾省',0],['香港',0],['澳门',0]];
        for (var i = 0; i < res.length; i++) {
            for (var j = 0; j <arr.length ; j++) {
                if (res[i].address == arr[j][0]){
                    arr[j][1] += res[i].sum;
                }
            }
        }
        var dataListBook=[
            {name:"南海诸岛",value:arr[0][1]},
            {name: '北京', value: arr[1][1]},
            {name: '天津', value: arr[2][1]},
            {name: '上海', value: arr[3][1]},
            {name: '重庆', value: arr[4][1]},
            {name: '河北', value: arr[5][1]},
            {name: '河南', value: arr[6][1]},
            {name: '云南', value: arr[7][1]},
            {name: '辽宁', value: arr[8][1]},
            {name: '黑龙江', value: arr[9][1]},
            {name: '湖南', value: arr[10][1]},
            {name: '安徽', value: arr[11][1]},
            {name: '山东', value: arr[12][1]},
            {name: '新疆', value: arr[13][1]},
            {name: '江苏', value: arr[14][1]},
            {name: '浙江', value: arr[15][1]},
            {name: '江西', value: arr[16][1]},
            {name: '湖北', value: arr[17][1]},
            {name: '广西', value: arr[18][1]},
            {name: '甘肃', value: arr[19][1]},
            {name: '山西', value: arr[20][1]},
            {name: '内蒙古', value: arr[21][1]},
            {name: '陕西', value: arr[22][1]},
            {name: '吉林', value: arr[23][1]},
            {name: '福建', value: arr[24][1]},
            {name: '贵州', value: arr[25][1]},
            {name: '广东', value: arr[26][1]},
            {name: '青海', value: arr[27][1]},
            {name: '西藏', value: arr[28][1]},
            {name: '四川', value: arr[29][1]},
            {name: '宁夏', value: arr[30][1]},
            {name: '海南', value: arr[31][1]},
            {name: '台湾', value: arr[32][1]},
            {name: '香港', value: arr[33][1]},
            {name: '澳门', value: arr[34][1]}
        ]
        var myChart = echarts.init(document.getElementById('book_main'));
        optionBook = {
            tooltip: {
                formatter:function(paramsClothes,ticket, callback){
                    return paramsClothes.seriesName+'<br />'+paramsClothes.name+'：'+paramsClothes.value + '本'
                },//数据格式化
            },
            visualMap: {
                min: 0,
                max: 1000,
                left: 'left',
                top: 'bottom',
                text: ['高','低'],//取值范围的文字
                inRange: {
                    color: ['#e0ffff', '#006edd']//取值范围的颜色
                },
                show:true//图注
            },
            geo: {
                map: 'china',
                roam: false,//不开启缩放和平移
                zoom:1.23,//视角缩放比例
                label: {
                    normal: {
                        show: true,
                        fontSize:'10',
                        color: 'rgba(0,0,0,0.7)'
                    }
                },
                itemStyle: {
                    normal:{
                        borderColor: 'rgba(0, 0, 0, 0.2)'
                    },
                    emphasis:{
                        areaColor: '#F3B329',//鼠标选择区域颜色
                        shadowOffsetX: 0,
                        shadowOffsetY: 0,
                        shadowBlur: 20,
                        borderWidth: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            },
            series : [
                {
                    name: '捐赠书籍量',
                    type: 'map',
                    geoIndex: 0,
                    data:dataListBook
                }
            ]
        };
        myChart.setOption(optionBook);
        myChart.on('click', function (params) {
            alert(params.name);
        });



    });


}



//
// <!-- Book-->
// var dataListBook=[
//     {name:"南海诸岛",value:0},
//     {name: '北京', value: randomValue()},
//     {name: '天津', value: randomValue()},
//     {name: '上海', value: randomValue()},
//     {name: '重庆', value: randomValue()},
//     {name: '河北', value: randomValue()},
//     {name: '河南', value: randomValue()},
//     {name: '云南', value: randomValue()},
//     {name: '辽宁', value: randomValue()},
//     {name: '黑龙江', value: randomValue()},
//     {name: '湖南', value: randomValue()},
//     {name: '安徽', value: randomValue()},
//     {name: '山东', value: randomValue()},
//     {name: '新疆', value: randomValue()},
//     {name: '江苏', value: randomValue()},
//     {name: '浙江', value: randomValue()},
//     {name: '江西', value: randomValue()},
//     {name: '湖北', value: randomValue()},
//     {name: '广西', value: randomValue()},
//     {name: '甘肃', value: randomValue()},
//     {name: '山西', value: randomValue()},
//     {name: '内蒙古', value: randomValue()},
//     {name: '陕西', value: randomValue()},
//     {name: '吉林', value: randomValue()},
//     {name: '福建', value: randomValue()},
//     {name: '贵州', value: randomValue()},
//     {name: '广东', value: randomValue()},
//     {name: '青海', value: randomValue()},
//     {name: '西藏', value: randomValue()},
//     {name: '四川', value: randomValue()},
//     {name: '宁夏', value: randomValue()},
//     {name: '海南', value: randomValue()},
//     {name: '台湾', value: randomValue()},
//     {name: '香港', value: randomValue()},
//     {name: '澳门', value: randomValue()}
// ]
// var myChart = echarts.init(document.getElementById('book_main'));
// function randomValue() {
//     return Math.round(Math.random()*1000);
// }
// optionBook = {
//     tooltip: {
//         formatter:function(paramsClothes,ticket, callback){
//             return paramsClothes.seriesName+'<br />'+paramsClothes.name+'：'+paramsClothes.value
//         },//数据格式化
//     },
//     visualMap: {
//         min: 0,
//         max: 1500,
//         left: 'left',
//         top: 'bottom',
//         text: ['高','低'],//取值范围的文字
//         inRange: {
//             color: ['#e0ffff', '#006edd']//取值范围的颜色
//         },
//         show:true//图注
//     },
//     geo: {
//         map: 'china',
//         roam: false,//不开启缩放和平移
//         zoom:1.23,//视角缩放比例
//         label: {
//             normal: {
//                 show: true,
//                 fontSize:'10',
//                 color: 'rgba(0,0,0,0.7)'
//             }
//         },
//         itemStyle: {
//             normal:{
//                 borderColor: 'rgba(0, 0, 0, 0.2)'
//             },
//             emphasis:{
//                 areaColor: '#F3B329',//鼠标选择区域颜色
//                 shadowOffsetX: 0,
//                 shadowOffsetY: 0,
//                 shadowBlur: 20,
//                 borderWidth: 0,
//                 shadowColor: 'rgba(0, 0, 0, 0.5)'
//             }
//         }
//     },
//     series : [
//         {
//             name: '捐赠书籍量',
//             type: 'map',
//             geoIndex: 0,
//             data:dataListBook
//         }
//     ]
// };
// myChart.setOption(optionBook);
// myChart.on('click', function (params) {
//     alert(params.name);
// });
