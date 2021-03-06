<%--
  Created by IntelliJ IDEA.
  User: imsadan
  Date: 2019-10-22
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>仓库</title>
   <style type="text/css">
      #grid_list{
         text-align: center;
      }
   </style>
</head>
<body>
   <div class="col-xs-12">
      <div style="padding-top: 20px;">
         <table id="grid_list"></table>
         <div id="grid_list_page" style="width: 100%"></div>
      </div>
   </div>



   <script src="${ctx}/js/jquery.jqGrid.min.js"></script>
   <script type="text/javascript">
       $("#grid_list").jqGrid({
           url:'${ctx}/bs/information/data',
           datatype: "json",
           regional : 'cn',
           colNames:['序号','产品名称', '产品型号','数量','记录时间'],
           colModel:[
               {name:'id',index:'id', width:55},
               {name:'productName',index:'productName', width:200,sort:true},
               {name:'productModel',index:'productModel', width:200,sort:true},
               {name:'number',index:'number', width:100,sort:true},
               {name:'updateTime',index:'updateTime', width:150,sort:true}
           ],
           width:'100%',
           autowidth:true,
           height:'100%',
           pager:"#grid_list_page",
           rowNum:20,
           rowList:[20,30,50],
           viewrecords:true,
           jsonReader:{
               root:"dataList",
               page:"currPage",
               total:"totalPages",
               records:"totalCount",
               repeatitems: true,      //如果设为false，则jqGrid在解析json时，会根据name来搜索对应的数据元素（即可以json中元素可以不按顺序）；而所使用的name是来自于colModel中的name设定。
           },
           multiselect: true, //是否支持多选
           altRows: true,//隔行换色
       });
   </script>

</body>
</html>
