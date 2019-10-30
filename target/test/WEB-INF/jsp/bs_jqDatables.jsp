<%--
  Created by IntelliJ IDEA.
  User: imsadan
  Date: 2019-10-29
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>JQ Datable</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/jquery-ui.min.css"/>
</head>
<body>
    <div class="col-xs-12">
        <div style="padding-top: 20px;">
            <button class="btn btn-white btn-info btn-bold"  style="margin-bottom: 10px;" id="edit_list">
                <i class="ace-icon fa fa-pencil bigger-120 blue"></i>
                编辑
            </button><br/>
            <label>产品名称</label>
            <input id="search_pName" type="text" placeholder="产品型号查询" autocomplete="off"/>
            <label>产品型号</label>
            <input id="search_pModel" type="text" placeholder="产品型号查询" autocomplete="off"/>
            <button class="btn btn-white btn-info btn-bold" id="search_param">
                <i class="ace-icon fa fa-search bigger-120 blue"></i>
                查询
            </button>
            <div style="padding-top: 10px;"></div>
            <table id="table" class="table table-striped table-bordered table-hover">
            </table>
        </div>
    </div>

    <!--做提示框使用 -->
    <div id="dialog-confirm" class="hide">
        <p class="bigger-110 bolder center grey">是否删除？删除后不可恢复</p>
    </div>

    <script src="${ctx}/js/jquery.dataTables.min.js"></script>
    <script src="${ctx}/js/jquery.dataTables.bootstrap.min.js"></script>
    <script src="${ctx}/js/dataTables.buttons.min.js"></script>
    <script src="${ctx}/js/dataTables.select.min.js"></script>
    <script src="${ctx}/js/jquery-ui.min.js"></script>
    <script src="${ctx}/js/jquery.ui.touch-punch.min.js"></script>
    <script type="text/javascript">
        var myTable = $('#table').dataTable({
            columns: [
                { "sTitle":"序号","mDataProp":"id","sClass": "center" },
                { "sTitle": "产品名称" ,"mDataProp":"productName","sClass": "center" ,
                    render: function(data) {
                        if (data.length > 15) {
                            return data.substr(0, 15) + '...';
                        } else {
                            return data ;
                        }
                    }
                },
                { "sTitle": "产品型号" ,"mDataProp":"productModel","sClass": "center" },
                { "sTitle": "数量", "mDataProp":"number","sClass": "center" },
                {
                    "sTitle": "记录时间","mDataProp":"updateTime",
                    "sClass": "center"
                },
                {"sTitle": "操作","data":null,"sClass": "center","render":function (data,type,row,meta) {
                    var html="";
                    html +='<div class="btn-group btn-corner">';
                    html +='<button class="btn btn-sm btn-success" onclick="showTb('+row.id+')"><i class="ace-icon fa fa-pencil-square-o"></i>查看原单</button>';
                    html +='<button class="btn btn-sm btn-danger" onclick="deleteTb('+row.id+')"><i class="ace-icon fa fa-trash-o"></i>删除</button>';
                    html +='</div>';
                    return html;
                 }}
            ],
            "oLanguage": { //国际化配置
                "sProcessing" : "正在获取数据，请稍后...",
                "sLengthMenu" : "显示 _MENU_ 条",
                "sZeroRecords" : "没有您要搜索的内容",
                "sInfo" : "从 _START_ 到  _END_ 条记录 总记录数为 _TOTAL_ 条",
                "sInfoEmpty" : "记录数为0",
                "sInfoFiltered" : "(全部记录数 _MAX_ 条)",
                "sInfoPostFix" : "",
                "sSearch" : "搜索",
                "sUrl" : "",
                "oPaginate": {
                    "sFirst" : "第一页",
                    "sPrevious" : "上一页",
                    "sNext" : "下一页",
                    "sLast" : "最后一页"
                }
            },
            select : {
                style : 'multi'
            },
            "bFilter":false,
            "bPaginage":true,
            "bProcessing":false,
            "bLengthChange":false,// 每行显示记录数
            "iDisplayLength":25, // 每页显示行数
            "sPaginationType" : "full_numbers",  //分页形式，数字的
            "bInfo" : true,
            "serverSide": true,//交由服务端处理 开启
            "ajax": function(data,callback,settings){
                var param = {};
                param.draw = data.draw;
                param.limit = data.length;//页面显示记录条数，在页面显示每页显示多少项的时候
                param.start = data.start;//开始的记录序号
                param.page = (data.start / data.length)+1;
                param.searchName = $("#search_pName").val();
                param.searchModel = $("#search_pModel").val();
                $.ajax({
                    url: "${ctx}/bs/information/data",
                    type: "POST",
                    dataType:"json",
                    data: param,
                    "success":function (result) {
                        //回调函数(数据渲染)
                       callback(result);
                    }
                });

            }
        });

        var table = $('#table').DataTable();
        //查询
        $("#search_param").click(function () {
            table.ajax.reload();
        });

        //外部的编辑
        $("#edit_list").click(function () {
            var tb = table.rows(['.selected']).data();
            if (tb.length == 0){
               alert("请选择条目");
               return;
            } else if (tb.length > 1){
               alert("请选择1个条目");
               return;
            }
            console.log(tb[0].id)
        });

        //删除
        function deleteTb(temp){

            $( "#dialog-confirm" ).removeClass('hide').dialog({
                resizable: false,
                width: '320',
                modal: true,
                title: '条目操作',
                title_html: true,
                buttons: [
                    {
                        html: "<i class='ace-icon fa fa-trash-o bigger-110'></i>&nbsp;删除",
                        "class" : "btn btn-danger btn-minier",
                        click: function() {
                            console.log(temp)
                            $( this ).dialog( "close" );
                        }
                    }
                ]
            });
        }
        //行内编辑
        function showTb(temp){
            console.log(temp)
        }


    </script>
</body>
</html>
