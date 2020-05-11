
// $(function(){
//   $(document).ready(function(){
//     $.getJSON("/init/initSum",function(res){
//       console.log(res);
//       // $("h2").text(res.title)
//       $('#clothes_counter').html(res[0])
//       $('#book_counter').html(res[1])
//       $('#user_counter').html(res[2])
//       $('#order_counter').html(res[3])
//     });
//   })
// });


(function() {
  jQuery(function() {
    this.film_rolls || (this.film_rolls = []);
    this.film_rolls['film_roll_1'] = new FilmRoll({
      container: '#film_roll_1',
      height: 560
    });
    this.film_rolls['film_roll_2'] = new FilmRoll({
      container: '#film_roll_2',
      height: 190,
      prev: '#film_roll_2_left',
      next: '#film_roll_2_right'
    });
    this.film_rolls['film_roll_3'] = new FilmRoll({
      container: '#film_roll_3',
      height: 190,
      pager: false
    });
    return true;
  });
  //获得数据统计值
  $.getJSON("/init/initSum",function(res){
    // console.log(res);
    // $("h2").text(res.title)
    $('#clothes_counter').html(res[0])
    $('#book_counter').html(res[1])
    $('#user_counter').html(res[2])
    $('#order_counter').html(res[3])
  });

  //获得文章信息
  $.getJSON("/init/initArticle",function(res){
    // console.log(res);

    //grid内容
    $('#grid_img_one').attr('src', res[0].image);
    $('#grid_day_one').html(res[0].day+"日");
    $('#grid_month_year_one').append(res[0].month+"月 "+res[0].year+"年")
    $('#grid_title_one').html(res[0].title);
    $('#grid_content_one').html(res[0].content);

    $('#grid_img_two').attr('src', res[1].image);
    $('#grid_day_two').html(res[1].day+"日");
    $('#grid_month_year_two').append(res[1].month+"月 "+res[1].year+"年")
    $('#grid_title_two').html(res[1].title);
    $('#grid_content_two').html(res[1].content);

    $('#grid_img_three').attr('src', res[2].image);
    $('#grid_day_three').html(res[2].day+"日");
    $('#grid_month_year_three').append(res[2].month+"月 "+res[2].year+"年")
    $('#grid_title_three').html(res[2].title);
    $('#grid_content_three').html(res[2].content);

  //model内容
    $('#modal_title_one').html(res[0].title);
    $('#model_image_one').attr('src', res[0].image);
    $('#model_content_one').html(res[0].content);

    $('#modal_title_two').html(res[1].title);
    $('#model_image_two').attr('src', res[1].image);
    $('#model_content_two').html(res[1].content);

    $('#modal_title_three').html(res[2].title);
    $('#model_image_three').attr('src', res[2].image);
    $('#model_content_three').html(res[2].content);

  });

  $.getJSON("/init/initApply",function(res){
    console.log(res);
    var str = "";
    for (var i = 0; i < res.length; i++){
        str += "<li>\n" +
            "                        <div class=\"agileits_w3layouts_about_right\">\n" +
            // "                            <%--<img src=\"../images/5.png\" alt=\" \" class=\"img-responsive\"/>--%>\n" +
            "                            <h4>联系人："+ res[i].name +"</h4>\n" +
            "                            <h4>联系电话："+ res[i].number +"</h4>\n" +
            "                            <h4>捐赠地址："+ res[i].address +"</h4>\n" +
            "                            <p>情况说明:"+ res[i].detail +"</p>\n" +
            "                        </div>\n" +
            "                    </li>";
    }
    $("#slides").append(str);
  });



}).call(this);



