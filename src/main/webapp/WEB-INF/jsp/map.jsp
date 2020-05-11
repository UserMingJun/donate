<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/15
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Map</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <script src="../js/mapscript/dist/echarts.js"></script>
    <script src="../js/mapscript/map/js/china.js"></script>
    <style>
        *{margin:0;padding:0}
        html,body{
            width:100%;
            height:100%;
        }
        #main{
            width:800px;
            height:600px;
            margin: 150px auto;
            border:1px solid #ddd;
        }
        /*默认长宽比0.75*/
    </style>
</head>
<body>
<div id="main">

</div>
<script type="text/javascript">
    var dataListClothes=[
        {name:"南海诸岛",value:0},
        {name: '北京', value: randomValue()},
        {name: '天津', value: randomValue()},
        {name: '上海', value: randomValue()},
        {name: '重庆', value: randomValue()},
        {name: '河北', value: randomValue()},
        {name: '河南', value: randomValue()},
        {name: '云南', value: randomValue()},
        {name: '辽宁', value: randomValue()},
        {name: '黑龙江', value: randomValue()},
        {name: '湖南', value: randomValue()},
        {name: '安徽', value: randomValue()},
        {name: '山东', value: randomValue()},
        {name: '新疆', value: randomValue()},
        {name: '江苏', value: randomValue()},
        {name: '浙江', value: randomValue()},
        {name: '江西', value: randomValue()},
        {name: '湖北', value: randomValue()},
        {name: '广西', value: randomValue()},
        {name: '甘肃', value: randomValue()},
        {name: '山西', value: randomValue()},
        {name: '内蒙古', value: randomValue()},
        {name: '陕西', value: randomValue()},
        {name: '吉林', value: randomValue()},
        {name: '福建', value: randomValue()},
        {name: '贵州', value: randomValue()},
        {name: '广东', value: randomValue()},
        {name: '青海', value: randomValue()},
        {name: '西藏', value: randomValue()},
        {name: '四川', value: randomValue()},
        {name: '宁夏', value: randomValue()},
        {name: '海南', value: randomValue()},
        {name: '台湾', value: randomValue()},
        {name: '香港', value: randomValue()},
        {name: '澳门', value: randomValue()}
    ]
    var myChart = echarts.init(document.getElementById('main'));
    function randomValue() {
        return Math.round(Math.random()*1000);
    }
    optionClothes = {
        tooltip: {
            formatter:function(paramsClothes,ticket, callback){
                return paramsClothes.seriesName+'<br />'+paramsClothes.name+'：'+paramsClothes.value
            },//数据格式化
        },
        visualMap: {
            min: 0,
            max: 1500,
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

    /*  setTimeout(function () {
          myChart.setOption({
              series : [
                  {
                      name: '信息量',
                      type: 'map',
                      geoIndex: 0,
                      data:dataList
                  }
              ]
          });
      },1000)*/
</script>
</body>
</html>