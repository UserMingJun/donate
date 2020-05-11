(function(jQuery){

    //给jQuery添加显示 表格的方法
    $.fn.datagrid = function(json){
        datagrid.load(json,this);
        return this;
    };

    var datagrid = {

        load:function(json,tableEle){
            datagrid.table.tableEle = tableEle;
            //初始化总记录数、页面要显示的最大记录数
            datagrid.initData(json);
            //创建表头
            datagrid.functions.createTableHead(tableEle);
            //创建表体
            datagrid.functions.createTableBody(tableEle);
            //创建表尾
            datagrid.functions.createTabelFoot(tableEle);
            //初始化表尾分页按钮
            datagrid.functions.createPaginationBtn();
            //初始化首页数据
            datagrid.pageBean.pageCode = 1;
            datagrid.functions.showData(datagrid.pageBean.pageCode);
            //初始化分页超链接事件
            datagrid.initPaginationEvent();
        },

        initPaginationEvent:function(){

            $("tfoot tr td ul li a").each(function(){
                if($(this).attr("href") == 'prev'){
                    $(this).click(function(){
                        datagrid.pageBean.pageCode--;
                        datagrid.functions.showData(datagrid.pageBean.pageCode);
                        return false;
                    });
                }else if($(this).attr("href") == 'next'){
                    $(this).click(function(){
                        datagrid.pageBean.pageCode++;
                        datagrid.functions.showData(datagrid.pageBean.pageCode);
                        return false;
                    });
                }else{
                    $(this).click(function(){
                        datagrid.pageBean.pageCode = parseInt($(this).attr("href"));
                        datagrid.functions.showData(datagrid.pageBean.pageCode);
                        return false;
                    });
                }


            });
        },

        initData:function(json){
            datagrid.data.total = json.total;
            datagrid.data.dataList = json.rows;
            datagrid.data.pageSize = json.pageSize;
            datagrid.pageBean.totalPage = datagrid.pageBean.getTotalPage();
        },

        functions:{
            createTableHead:function(tableEle){
                //创建表头
                var $thead = $("<thead></thead>");
                datagrid.table.$thead = $thead
                //得到其中一行数据
                var oneRow = datagrid.data.dataList[0];
                //遍历得到表头字段
                var $headtr = $("<tr></tr>");
                for(var field in oneRow){
                    //创建th标签，并将字段填入其中
                    var $th = $("<th></th>");
                    if (field != "id"){
                        $th.text(field);
                        //将th标签追加到tr标签中
                        $headtr.append($th);
                    }
                }
                // $headtr.append("操作");
                //将tr标签追加到thead标签中
                $thead.append($headtr);
                //将thead标签追加到表格中
                $(tableEle).append($thead);
            },
            createTableBody:function(tableEle){
                //创建tbody标签，将其追加到tableEle中
                $tbody = $("<tbody></tbody>");
                datagrid.table.$tbody = $tbody;
                $(tableEle).append($tbody);
            },
            createTabelFoot:function(tableEle){
                //创建tfoot标签
                $tfoot = $("<tfoot></tfoot>");
                datagrid.table.$tfoot = $tfoot;
                $(tableEle).append($tfoot);
            },
            showData:function(pageCode){
                //清空tbody中的数据
                $("tbody").empty();
                //每次显示数据时判断上一页下一页是否能点击
                datagrid.functions.checkPrevAndNext();
                //每次显示数据时高亮当前页码
                datagrid.functions.highlightPageCode();
                //初始化当前页码
                datagrid.pageBean.pageCode = pageCode;
                //根据当前页码获得要显示的起始行和结束行
                var beginRow = datagrid.pageBean.getBeginRow();
                var endRow = datagrid.pageBean.getEndRow();
                //遍历数据集合创建行tr
                var dataArr = datagrid.data.dataList;
                for(var i = beginRow ; i < endRow ; i++){
                    $tr = $("<tr></tr>");
                    //遍历每行数据的属性将数据填充到该行中
                    var oneRow = dataArr[i];
                    for(var field in oneRow){
                        $td = $("<td></td>");
                        var value = oneRow[field];
                        if (field != "id" && field != "操作" && field !="状态"){
                            $td.text(value);
                            $tr.append($td);
                        }
                        if (field == "操作" || field == "状态"){
                            $td.append(value);
                            $tr.append($td);
                        }
                    }
                    // $tr.append("<div class=\"table-data-feature\">"+
                    //     "<button  onclick='allOrderDelete("+ oneRow.id +")' class=\"item\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\">"+
                    //     "<i class=\"zmdi zmdi-delete\"></i>"+
                    //     "</button>"+
                    //     "</div>");
                    //将该行追加到tbody中
                    datagrid.table.$tbody.append($tr);
                }
            },
            createPaginationBtn:function(){
                $tr = $("<tr></tr>");
                $td = $("<td class='text-center'></td>");
                $td.attr("colspan",datagrid.table.$thead.children("tr").children("th").length+'');
                $ul = $("<ul class='pagination'></ul>");
                datagrid.table.$paginationUl = $ul;

                $prevli = $("<li><a href='prev'class=\"btn btn-outline-info\"><span>«</span></a></li>");
                $ul.append($prevli);

                var totalPage = datagrid.pageBean.totalPage;
                for(var i = 0 ; i < totalPage ; i++){
                    $li = $("<li class=\"btn btn-outline-info\"></li>");
                    $a = $("<a></a>");
                    $a.attr("href",i+1+'');
                    $a.text(i+1);
                    $li.append($a);
                    $ul.append($li);
                }

                $nextli = $("<li><a href='next' class=\"btn btn-outline-info\"><span>»</span></a></li>");
                $ul.append($nextli);

                $td.append($ul);
                $tr.append($td);
                datagrid.table.$tfoot.append($tr);
            },
            checkPrevAndNext:function(){
                if(datagrid.pageBean.pageCode == 1){
                    $("a[href='prev'").hide();
                }else if(datagrid.pageBean.pageCode == datagrid.pageBean.totalPage){
                    $("a[href='next'").hide();
                }else{
                    $("a[href='prev'").show();
                    $("a[href='next'").show();
                }
            },
            highlightPageCode:function(){
                $("tfoot tr td ul li").removeClass("active");
                $("tfoot tr td ul li a").each(function(){
                    if(datagrid.pageBean.pageCode == parseInt($(this).attr("href"))){
                        $(this).parent().addClass("active");
                    }
                });
            }
        },

        data:{ //在传入json是被初始化
            total:null,
            dataList:null,
            pageSize:null
        },

        table:{ //在加载表格框架时被初始化
            tableEle:null,
            $thead:null,
            $tbody:null,
            $tfoot:null,
            $paginationUl:null
        },

        pageBean:{ //在显示具体哪一页时被初始化
            pageCode:null,
            totalPage:null,
            getTotalPage:function(){
                var totalPage = datagrid.data.total % datagrid.data.pageSize;
                if(totalPage){
                    return parseInt(datagrid.data.total / datagrid.data.pageSize) + 1;
                }else{
                    return parseInt(datagrid.data.total / datagrid.data.pageSize);
                }
            },
            getBeginRow:function(){
                return (datagrid.pageBean.pageCode - 1)*datagrid.data.pageSize;
            },
            getEndRow:function(){
                return datagrid.pageBean.getBeginRow() + datagrid.data.pageSize;
            }
        }
    }

})(jQuery);